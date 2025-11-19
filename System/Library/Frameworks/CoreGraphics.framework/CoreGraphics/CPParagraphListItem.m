@interface CPParagraphListItem
- (CPParagraphListItem)init;
- (void)addParagraph:(id)a3;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
@end

@implementation CPParagraphListItem

- (void)addParagraph:(id)a3
{
  CFArrayAppendValue(self->paragraphs, a3);
  v5 = [a3 listItem];
  if (v5)
  {
    v6 = v5;
    if (v5 != self)
    {
      do
      {
        v7 = [v6 list];
        v8 = [v7 parentItem];
        if (v8 == v6)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        if (v9)
        {
          v10 = v9 == self;
        }

        else
        {
          v10 = 1;
        }

        v6 = v8;
      }

      while (!v10);
      if (!v9)
      {

        [v7 setParentItem:self];
      }
    }
  }

  else
  {

    [a3 setListItem:self];
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