@interface DynamicTypeTextView
- (UIFont)font;
- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)setFont:(id)font;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicTypeTextView

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicTypeTextView();
  font = [(DynamicTypeTextView *)&v4 font];

  return font;
}

- (void)setFont:(id)font
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DynamicTypeTextView();
  fontCopy = font;
  v5 = v9.receiver;
  [(DynamicTypeTextView *)&v9 setFont:fontCopy];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = -256;
  sub_236890(v6);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_236B38(change);
}

- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  *(v9 + 44) = -256;
  v11.receiver = self;
  v11.super_class = type metadata accessor for DynamicTypeTextView();
  return [(DynamicTypeTextView *)&v11 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews19DynamicTypeTextView_fontUseCase;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 44) = -256;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DynamicTypeTextView();
  coderCopy = coder;
  v6 = [(DynamicTypeTextView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end