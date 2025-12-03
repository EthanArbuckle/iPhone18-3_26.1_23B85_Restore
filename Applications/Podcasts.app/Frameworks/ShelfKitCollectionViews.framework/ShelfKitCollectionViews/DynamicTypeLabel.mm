@interface DynamicTypeLabel
- (UIFont)font;
- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithFrame:(CGRect)frame;
- (void)setFont:(id)font;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicTypeLabel

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicTypeLabel();
  font = [(DynamicTypeLabel *)&v4 font];

  return font;
}

- (void)setFont:(id)font
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DynamicTypeLabel();
  fontCopy = font;
  v5 = v9.receiver;
  [(DynamicTypeLabel *)&v9 setFont:fontCopy];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = -256;
  sub_235E5C(v6);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2361DC(change);
}

- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  *(v7 + 44) = -256;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DynamicTypeLabel();
  return [(DynamicTypeLabel *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews16DynamicTypeLabel_fontUseCase;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 44) = -256;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DynamicTypeLabel();
  coderCopy = coder;
  v6 = [(DynamicTypeLabel *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end