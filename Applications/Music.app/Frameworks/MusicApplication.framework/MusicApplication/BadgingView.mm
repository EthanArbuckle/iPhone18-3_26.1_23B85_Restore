@interface BadgingView
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC16MusicApplication11BadgingView)initWithCoder:(id)coder;
- (_TtC16MusicApplication11BadgingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation BadgingView

- (_TtC16MusicApplication11BadgingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC16MusicApplication11BadgingView)initWithCoder:(id)coder
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_2800DC();
}

@end