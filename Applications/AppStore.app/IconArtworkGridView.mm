@interface IconArtworkGridView
- (CGRect)frame;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC8AppStore19IconArtworkGridView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
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
  [(IconArtworkGridView *)&v22 frame];
  v11 = v10;
  v13 = v12;
  v21.receiver = v9;
  v21.super_class = ObjectType;
  [(IconArtworkGridView *)&v21 setFrame:x, y, width, height];
  v20.receiver = v9;
  v20.super_class = ObjectType;
  [(IconArtworkGridView *)&v20 frame];
  if (v11 != v15 || v13 != v14)
  {
    sub_100097F0C();
    v19.receiver = v9;
    v19.super_class = ObjectType;
    [(IconArtworkGridView *)&v19 frame];
    sub_10009807C(v17, v18);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10009846C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_100098C84(self + v7, v18);
  v8 = self;

  v10 = sub_1002A51C0(v9);

  v22 = v10;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  sub_100098CE0(v18);
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

- (_TtC8AppStore19IconArtworkGridView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end