@interface CPList
- (BOOL)containsParagraph:(id)a3;
- (CGRect)spacer;
- (CPList)init;
- (void)addItem:(id)a3;
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

- (BOOL)containsParagraph:(id)a3
{
  v4 = [a3 listItem];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 list];
      LOBYTE(v4) = v6 == self;
      if (v6 == self)
      {
        break;
      }

      v7 = [(CPList *)v6 parentItem];
      LOBYTE(v4) = 0;
      if (!v7)
      {
        break;
      }

      v8 = v7 == v5;
      v5 = v7;
    }

    while (!v8);
  }

  return v4;
}

- (void)addItem:(id)a3
{
  CFArrayAppendValue(self->items, a3);

  [a3 setList:self];
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