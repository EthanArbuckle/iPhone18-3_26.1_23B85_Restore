@interface LPCaptionRowPresentationProperties
- (BOOL)hasAnyContent;
- (LPCaptionPresentationProperties)leading;
- (LPCaptionPresentationProperties)trailing;
- (LPCaptionRowPresentationProperties)init;
- (id)left;
- (id)right;
- (void)applyToAllCaptions:(id)a3;
@end

@implementation LPCaptionRowPresentationProperties

- (LPCaptionRowPresentationProperties)init
{
  v6.receiver = self;
  v6.super_class = LPCaptionRowPresentationProperties;
  v2 = [(LPCaptionRowPresentationProperties *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (LPCaptionPresentationProperties)leading
{
  leading = self->_leading;
  if (!leading)
  {
    v4 = objc_alloc_init(LPCaptionPresentationProperties);
    v5 = self->_leading;
    self->_leading = v4;

    leading = self->_leading;
  }

  return leading;
}

- (LPCaptionPresentationProperties)trailing
{
  trailing = self->_trailing;
  if (!trailing)
  {
    v4 = objc_alloc_init(LPCaptionPresentationProperties);
    v5 = self->_trailing;
    self->_trailing = v4;

    trailing = self->_trailing;
  }

  return trailing;
}

- (id)left
{
  if (appIsLTR())
  {
    [(LPCaptionRowPresentationProperties *)self leading];
  }

  else
  {
    [(LPCaptionRowPresentationProperties *)self trailing];
  }
  v3 = ;

  return v3;
}

- (id)right
{
  if (appIsLTR())
  {
    [(LPCaptionRowPresentationProperties *)self trailing];
  }

  else
  {
    [(LPCaptionRowPresentationProperties *)self leading];
  }
  v3 = ;

  return v3;
}

- (BOOL)hasAnyContent
{
  v3 = [(LPCaptionPresentationProperties *)self->_leading text];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(LPCaptionPresentationProperties *)self->_trailing text];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (void)applyToAllCaptions:(id)a3
{
  v4 = a3;
  v4[2](v4, self->_leading);
  v4[2](v4, self->_trailing);
}

@end