@interface ArtworkView
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (NSString)accessibilityTitle;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setAccessibilityTitle:(id)title;
- (void)setBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
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

- (void)setAccessibilityTitle:(id)title
{
  if (title)
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
  clearColor = [objc_opt_self() clearColor];

  return clearColor;
}

- (void)setBackgroundColor:(id)color
{
  v4 = *(self + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor);
  *(self + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_internalBackgroundColor) = color;
  colorCopy = color;
  selfCopy = self;

  sub_2D294();
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
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