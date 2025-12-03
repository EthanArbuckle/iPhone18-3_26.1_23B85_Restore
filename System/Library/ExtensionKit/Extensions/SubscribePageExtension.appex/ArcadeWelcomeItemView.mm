@interface ArcadeWelcomeItemView
- (CGRect)frame;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension21ArcadeWelcomeItemView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArcadeWelcomeItemView

- (_TtC22SubscribePageExtension21ArcadeWelcomeItemView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artwork) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkLoader) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(ArcadeWelcomeItemView *)&v6 frame];
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
  ObjectType = swift_getObjectType();
  v22.receiver = self;
  v22.super_class = ObjectType;
  selfCopy = self;
  [(ArcadeWelcomeItemView *)&v22 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v21.receiver = selfCopy;
  v21.super_class = ObjectType;
  [(ArcadeWelcomeItemView *)&v21 setFrame:x, y, width, height];
  v20.receiver = selfCopy;
  v20.super_class = ObjectType;
  [(ArcadeWelcomeItemView *)&v20 frame];
  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  if (CGRectEqualToRect(v23, v25))
  {
    v18 = 0;
  }

  else
  {
    v19.receiver = selfCopy;
    v19.super_class = ObjectType;
    [(ArcadeWelcomeItemView *)&v19 frame];
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = 0.0;
    v26.size.height = 0.0;
    v18 = !CGRectEqualToRect(v24, v26);
  }

  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork) = v18;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10049762C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_100497E00(in, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10049833C(change);
}

@end