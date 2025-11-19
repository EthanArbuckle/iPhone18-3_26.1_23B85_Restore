@interface ArtworkView
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (NSString)accessibilityTitle;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setAccessibilityTitle:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation ArtworkView

- (NSString)accessibilityTitle
{
  if (*(self + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle + 8))
  {

    v2 = sub_30C098();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_30C0D8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle);
  *v6 = v4;
  v6[1] = v5;
}

- (UIColor)backgroundColor
{
  v2 = [objc_opt_self() clearColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor);
  *(self + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor) = a3;
  v5 = a3;
  v6 = self;

  sub_2D294();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2D844();
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ArtworkView();
  [(ArtworkView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_2DD8C(x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  [*(self + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end