@interface IconArtworkGridView
- (CGRect)frame;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension19IconArtworkGridView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation IconArtworkGridView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(IconArtworkGridView *)&v6 frame];
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
  [(IconArtworkGridView *)&v22 frame];
  v11 = v10;
  v13 = v12;
  v21.receiver = selfCopy;
  v21.super_class = ObjectType;
  [(IconArtworkGridView *)&v21 setFrame:x, y, width, height];
  v20.receiver = selfCopy;
  v20.super_class = ObjectType;
  [(IconArtworkGridView *)&v20 frame];
  if (v11 != v15 || v13 != v14)
  {
    sub_1001FF4E0();
    v19.receiver = selfCopy;
    v19.super_class = ObjectType;
    [(IconArtworkGridView *)&v19 frame];
    sub_1001FF650(v17, v18);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001FFA40();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_1001811E4(self + v7, v18);
  selfCopy = self;

  v10 = sub_100157E3C(v9);

  v22 = v10;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  sub_100200258(v18);
  if (v13)
  {
    v14 = width;
  }

  else
  {
    v14 = v11;
  }

  if (v13)
  {
    v15 = height;
  }

  else
  {
    v15 = v12;
  }

  v16 = 0.0;
  v17 = v15;
  result.var3 = v16;
  result.var2 = v17;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (_TtC22SubscribePageExtension19IconArtworkGridView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end