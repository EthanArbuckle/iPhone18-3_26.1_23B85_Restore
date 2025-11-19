@interface NotificationBadgeView
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplication21NotificationBadgeView)initWithCoder:(id)a3;
- (_TtC16MusicApplication21NotificationBadgeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)setValue:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation NotificationBadgeView

- (_TtC16MusicApplication21NotificationBadgeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel;
  *(&self->super.super.super.isa + v5) = sub_311A8();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)setValue:(int64_t)a3
{
  v4 = self;
  sub_30D14(a3);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NotificationBadgeView();
  [(NotificationBadgeView *)&v6 frame];
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
  v8 = type metadata accessor for NotificationBadgeView();
  v11.receiver = self;
  v11.super_class = v8;
  v9 = self;
  [(NotificationBadgeView *)&v11 frame];
  v10.receiver = v9;
  v10.super_class = v8;
  [(NotificationBadgeView *)&v10 setFrame:x, y, width, height];
  type metadata accessor for CGSize(0);
  [(NotificationBadgeView *)v9 frame];
  if (sub_AB38D0())
  {
    sub_312AC();
    sub_3137C();
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for NotificationBadgeView();
  v2 = v11.receiver;
  [(NotificationBadgeView *)&v11 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*&v2[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView] setFrame:?];
  [*&v2[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel] setFrame:{v4, v6, v8, v10}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  [(NotificationBadgeView *)v5 intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  type metadata accessor for CGSize(0);
  v10 = sub_AB38D0();

  if (v10)
  {
    if (v7 >= width)
    {
      v11 = width;
    }

    else
    {
      v11 = v7;
    }

    if (v9 >= height)
    {
      v9 = height;
    }

    if (v9 > v11)
    {
      v7 = v9;
    }

    else
    {
      v7 = v11;
    }
  }

  v12 = v7;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel);
  v3 = self;
  [v2 sizeThatFits:{0.0, 0.0}];
  v5 = v4;
  v6 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_style);
  if (v6)
  {
    if (v6 == &dword_0 + 1)
    {
      v7 = 16.0;
      v8 = 16.0;
    }

    else
    {
      [*(&v3->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_style) lineHeight];
      v7 = v9;
      [v6 lineHeight];
      v8 = v10;
    }
  }

  else
  {
    v7 = 24.0;
    v8 = 24.0;
  }

  if (v5 >= v7)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NotificationBadgeView();
  v2 = v3.receiver;
  [(NotificationBadgeView *)&v3 tintColorDidChange];
  sub_312AC();
}

- (_TtC16MusicApplication21NotificationBadgeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end