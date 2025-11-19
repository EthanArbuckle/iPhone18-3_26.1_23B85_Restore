@interface BadgingView
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplication11BadgingView)initWithCoder:(id)a3;
- (_TtC16MusicApplication11BadgingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation BadgingView

- (_TtC16MusicApplication11BadgingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle) = UIFontTextStyleSubheadline;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_itemLabels) = _swiftEmptyArrayStorage;
  v10.receiver = self;
  v10.super_class = type metadata accessor for BadgingView();
  v8 = UIFontTextStyleSubheadline;
  return [(BadgingView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication11BadgingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle) = UIFontTextStyleSubheadline;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication11BadgingView_itemLabels) = _swiftEmptyArrayStorage;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  sub_27FA54(self, a2, &selRef_frame);
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
  sub_27FB20(&selRef_frame, &selRef_setFrame_, x, y, width, height);
}

- (CGRect)bounds
{
  sub_27FA54(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_27FB20(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BadgingView();
  v2 = v4.receiver;
  [(BadgingView *)&v4 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler];
  if (v3)
  {

    v3(v2);
    sub_17654(v3);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_27FD08(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2800DC();
}

@end