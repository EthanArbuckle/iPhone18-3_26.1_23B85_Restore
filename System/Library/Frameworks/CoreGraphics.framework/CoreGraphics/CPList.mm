@interface CPList
- (BOOL)containsParagraph:(id)paragraph;
- (CGRect)spacer;
- (CPList)init;
- (void)addItem:(id)item;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
@end

@implementation CPList

- (CGRect)spacer
{
  x = self->spacer.origin.x;
  y = self->spacer.origin.y;
  width = self->spacer.size.width;
  height = self->spacer.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)containsParagraph:(id)paragraph
{
  listItem = [paragraph listItem];
  if (listItem)
  {
    v5 = listItem;
    do
    {
      list = [v5 list];
      LOBYTE(listItem) = list == self;
      if (list == self)
      {
        break;
      }

      parentItem = [(CPList *)list parentItem];
      LOBYTE(listItem) = 0;
      if (!parentItem)
      {
        break;
      }

      v8 = parentItem == v5;
      v5 = parentItem;
    }

    while (!v8);
  }

  return listItem;
}

- (void)addItem:(id)item
{
  CFArrayAppendValue(self->items, item);

  [item setList:self];
}

- (void)dealloc
{
  [(CPList *)self dispose];

  v3.receiver = self;
  v3.super_class = CPList;
  [(CPList *)&v3 dealloc];
}

- (void)finalize
{
  [(CPList *)self dispose];
  v3.receiver = self;
  v3.super_class = CPList;
  [(CPList *)&v3 finalize];
}

- (void)dispose
{
  items = self->items;
  if (items)
  {
    CFRelease(items);
    self->items = 0;
  }
}

- (CPList)init
{
  v4.receiver = self;
  v4.super_class = CPList;
  v2 = [(CPList *)&v4 init];
  if (v2)
  {
    v2->items = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  }

  return v2;
}

@end