@interface DynamicTypeTextView
- (UIFont)font;
- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)setFont:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicTypeTextView

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicTypeTextView();
  v2 = [(DynamicTypeTextView *)&v4 font];

  return v2;
}

- (void)setFont:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DynamicTypeTextView();
  v4 = a3;
  v5 = v9.receiver;
  [(DynamicTypeTextView *)&v9 setFont:v4];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = -256;
  sub_236890(v6);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_236B38(a3);
}

- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  return [(DynamicTypeTextView *)&v11 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews19DynamicTypeTextView)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(DynamicTypeTextView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end