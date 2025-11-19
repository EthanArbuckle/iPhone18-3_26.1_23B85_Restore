@interface THModelBodyTextInfo
- (THWPStorage)bodyStorage;
- (void)dealloc;
- (void)setColumnStyle:(id)a3;
- (void)setLineHints:(id)a3;
@end

@implementation THModelBodyTextInfo

- (void)setColumnStyle:(id)a3
{
  [(THModelBodyTextInfo *)self willModify];
  v5 = a3;

  self->mColumnStyle = a3;
}

- (void)setLineHints:(id)a3
{
  [(THModelBodyTextInfo *)self willModify];
  v5 = a3;

  self->mLineHints = a3;
}

- (THWPStorage)bodyStorage
{
  v2 = [(THModelBodyTextInfo *)self parentInfo];

  return [v2 bodyStorage];
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