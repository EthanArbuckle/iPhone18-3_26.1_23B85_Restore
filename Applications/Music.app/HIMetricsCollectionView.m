@interface HIMetricsCollectionView
- (CGRect)frame;
- (_TtC5Music23HIMetricsCollectionView)initWithCoder:(id)a3;
- (_TtC5Music23HIMetricsCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)safeAreaInsetsDidChange;
- (void)setFrame:(CGRect)a3;
@end

@implementation HIMetricsCollectionView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(HIMetricsCollectionView *)&v6 frame];
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
  v19.receiver = self;
  v19.super_class = ObjectType;
  v9 = self;
  [(HIMetricsCollectionView *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v9;
  v18.super_class = ObjectType;
  [(HIMetricsCollectionView *)&v18 setFrame:x, y, width, height];
  sub_1001891B4(v11, v13, v15, v17);
}

- (void)safeAreaInsetsDidChange
{
  v2 = self;
  sub_100189464();
}

- (_TtC5Music23HIMetricsCollectionView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music23HIMetricsCollectionView____lazy_storage___artworkMetricsProvider);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC5Music23HIMetricsCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end