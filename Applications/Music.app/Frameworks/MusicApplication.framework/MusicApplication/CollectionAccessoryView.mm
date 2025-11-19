@interface CollectionAccessoryView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)title;
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation CollectionAccessoryView

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title);
  *v8 = v5;
  v8[1] = v6;
  v9 = a3;
  v10 = self;

  v11 = v10 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents;
  swift_beginAccess();
  v12 = *(v11 + 1);
  swift_beginAccess();
  *(v12 + 112) = v5;
  *(v12 + 120) = v7;

  sub_2EB704();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_D3A68(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(self + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView);
  v3 = self;
  [v2 sizeThatFits:{0.0, 0.0}];
  v5 = v4;
  v7 = v6;
  [*(v3 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView) sizeThatFits:{0.0, 0.0}];
  v9 = v8;
  v11 = v10;

  v12 = v5 + v9 + 8.0;
  if (v11 > v7)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_D3C38();
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CollectionAccessoryView();
  v2 = v6.receiver;
  [(CollectionAccessoryView *)&v6 tintColorDidChange];
  v3 = [v2 tintColor];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor];
    *&v2[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor] = v3;
    v5 = v3;
    sub_D392C();
  }

  else
  {
    __break(1u);
  }
}

@end