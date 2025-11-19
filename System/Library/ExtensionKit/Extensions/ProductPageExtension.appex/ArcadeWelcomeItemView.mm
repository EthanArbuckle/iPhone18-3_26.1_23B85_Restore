@interface ArcadeWelcomeItemView
- (CGRect)frame;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC20ProductPageExtension21ArcadeWelcomeItemView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ArcadeWelcomeItemView

- (_TtC20ProductPageExtension21ArcadeWelcomeItemView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artwork) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkLoader) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork) = 0;
  result = sub_10077156C();
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v22.receiver = self;
  v22.super_class = ObjectType;
  v9 = self;
  [(ArcadeWelcomeItemView *)&v22 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v21.receiver = v9;
  v21.super_class = ObjectType;
  [(ArcadeWelcomeItemView *)&v21 setFrame:x, y, width, height];
  v20.receiver = v9;
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
    v19.receiver = v9;
    v19.super_class = ObjectType;
    [(ArcadeWelcomeItemView *)&v19 frame];
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = 0.0;
    v26.size.height = 0.0;
    v18 = !CGRectEqualToRect(v24, v26);
  }

  *(&v9->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork) = v18;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1002EDEB4();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_1002EE688(a4, width, height);
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1002EEBC4(a3);
}

@end