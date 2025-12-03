@interface UIButton
- (CGRect)crl_deprecatedBackgroundRectForBounds:(CGRect)bounds;
- (CGRect)crl_deprecatedContentRectForBounds:(CGRect)bounds;
- (CGRect)crl_deprecatedImageRectForContentRect:(CGRect)rect;
- (CGRect)crl_deprecatedTitleRectForContentRect:(CGRect)rect;
- (UIEdgeInsets)crl_deprecatedContentEdgeInsets;
- (UIEdgeInsets)crl_deprecatedImageEdgeInsets;
- (UIEdgeInsets)crl_deprecatedTitleEdgeInsets;
@end

@implementation UIButton

- (UIEdgeInsets)crl_deprecatedContentEdgeInsets
{
  [(UIButton *)self contentEdgeInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)crl_deprecatedTitleEdgeInsets
{
  [(UIButton *)self titleEdgeInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)crl_deprecatedImageEdgeInsets
{
  [(UIButton *)self imageEdgeInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)crl_deprecatedBackgroundRectForBounds:(CGRect)bounds
{
  [(UIButton *)self backgroundRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)crl_deprecatedContentRectForBounds:(CGRect)bounds
{
  [(UIButton *)self contentRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)crl_deprecatedTitleRectForContentRect:(CGRect)rect
{
  [(UIButton *)self titleRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)crl_deprecatedImageRectForContentRect:(CGRect)rect
{
  [(UIButton *)self imageRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end