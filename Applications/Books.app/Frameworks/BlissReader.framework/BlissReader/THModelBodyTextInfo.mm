@interface THModelBodyTextInfo
- (THWPStorage)bodyStorage;
- (void)dealloc;
- (void)setColumnStyle:(id)style;
- (void)setLineHints:(id)hints;
@end

@implementation THModelBodyTextInfo

- (void)setColumnStyle:(id)style
{
  [(THModelBodyTextInfo *)self willModify];
  styleCopy = style;

  self->mColumnStyle = style;
}

- (void)setLineHints:(id)hints
{
  [(THModelBodyTextInfo *)self willModify];
  hintsCopy = hints;

  self->mLineHints = hints;
}

- (THWPStorage)bodyStorage
{
  parentInfo = [(THModelBodyTextInfo *)self parentInfo];

  return [parentInfo bodyStorage];
}

- (void)dealloc
{
  self->mColumnStyle = 0;

  self->mLineHints = 0;
  v3.receiver = self;
  v3.super_class = THModelBodyTextInfo;
  [(THModelBodyTextInfo *)&v3 dealloc];
}

@end