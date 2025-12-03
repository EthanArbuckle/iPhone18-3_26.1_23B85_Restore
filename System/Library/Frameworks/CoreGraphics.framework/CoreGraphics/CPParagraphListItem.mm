@interface CPParagraphListItem
- (CPParagraphListItem)init;
- (void)addParagraph:(id)paragraph;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
@end

@implementation CPParagraphListItem

- (void)addParagraph:(id)paragraph
{
  CFArrayAppendValue(self->paragraphs, paragraph);
  listItem = [paragraph listItem];
  if (listItem)
  {
    v6 = listItem;
    if (listItem != self)
    {
      do
      {
        list = [v6 list];
        parentItem = [list parentItem];
        if (parentItem == v6)
        {
          v9 = 0;
        }

        else
        {
          v9 = parentItem;
        }

        if (v9)
        {
          v10 = v9 == self;
        }

        else
        {
          v10 = 1;
        }

        v6 = parentItem;
      }

      while (!v10);
      if (!v9)
      {

        [list setParentItem:self];
      }
    }
  }

  else
  {

    [paragraph setListItem:self];
  }
}

- (void)dealloc
{
  [(CPParagraphListItem *)self dispose];

  v3.receiver = self;
  v3.super_class = CPParagraphListItem;
  [(CPParagraphListItem *)&v3 dealloc];
}

- (void)finalize
{
  [(CPParagraphListItem *)self dispose];
  v3.receiver = self;
  v3.super_class = CPParagraphListItem;
  [(CPParagraphListItem *)&v3 finalize];
}

- (void)dispose
{
  paragraphs = self->paragraphs;
  if (paragraphs)
  {
    CFRelease(paragraphs);
    self->paragraphs = 0;
  }
}

- (CPParagraphListItem)init
{
  v4.receiver = self;
  v4.super_class = CPParagraphListItem;
  v2 = [(CPParagraphListItem *)&v4 init];
  if (v2)
  {
    v2->paragraphs = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  }

  return v2;
}

@end