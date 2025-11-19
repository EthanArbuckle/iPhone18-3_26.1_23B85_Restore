@interface UIButton
- (CGRect)crl_deprecatedBackgroundRectForBounds:(CGRect)a3;
- (CGRect)crl_deprecatedContentRectForBounds:(CGRect)a3;
- (CGRect)crl_deprecatedImageRectForContentRect:(CGRect)a3;
- (CGRect)crl_deprecatedTitleRectForContentRect:(CGRect)a3;
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

- (CGRect)crl_deprecatedBackgroundRectForBounds:(CGRect)a3
{
  [(UIButton *)self backgroundRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)crl_deprecatedContentRectForBounds:(CGRect)a3
{
  [(UIButton *)self contentRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)crl_deprecatedTitleRectForContentRect:(CGRect)a3
{
  [(UIButton *)self titleRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)crl_deprecatedImageRectForContentRect:(CGRect)a3
{
  [(UIButton *)self imageRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end