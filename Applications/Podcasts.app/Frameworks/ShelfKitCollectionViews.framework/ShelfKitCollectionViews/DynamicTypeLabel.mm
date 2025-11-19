@interface DynamicTypeLabel
- (UIFont)font;
- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithFrame:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicTypeLabel

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicTypeLabel();
  v2 = [(DynamicTypeLabel *)&v4 font];

  return v2;
}

- (void)setFont:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DynamicTypeLabel();
  v4 = a3;
  v5 = v9.receiver;
  [(DynamicTypeLabel *)&v9 setFont:v4];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = -256;
  sub_235E5C(v6);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2361DC(a3);
}

- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(DynamicTypeLabel *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end