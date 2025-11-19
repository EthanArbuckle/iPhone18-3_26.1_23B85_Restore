@interface UIViewController
- (CGSize)pageContainerSize;
- (UIEdgeInsets)pageMarginInsets;
@end

@implementation UIViewController

- (CGSize)pageContainerSize
{
  v2 = self;
  v3 = [(UIViewController *)v2 view];
  if (v3)
  {
    v6 = v3;
    [(UIView *)v3 bounds];
    v8 = v7;
    v10 = v9;

    v4 = v8;
    v5 = v10;
  }

  else
  {
    __break(1u);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (UIEdgeInsets)pageMarginInsets
{
  v2 = self;
  [(UIViewController *)v2 pageContainerSize];
  StandardGridSpec.basePageMargin(for:)();
  v4 = v3;

  v5 = 0.0;
  v6 = 0.0;
  v7 = v4;
  v8 = v4;
  result.right = v8;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

@end