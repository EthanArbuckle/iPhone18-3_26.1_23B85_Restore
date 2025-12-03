@interface HIMetricsCollectionView
- (CGRect)frame;
- (_TtC5Music23HIMetricsCollectionView)initWithCoder:(id)coder;
- (_TtC5Music23HIMetricsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)safeAreaInsetsDidChange;
- (void)setFrame:(CGRect)frame;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v19.receiver = self;
  v19.super_class = ObjectType;
  selfCopy = self;
  [(HIMetricsCollectionView *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = ObjectType;
  [(HIMetricsCollectionView *)&v18 setFrame:x, y, width, height];
  sub_1001891B4(v11, v13, v15, v17);
}

- (void)safeAreaInsetsDidChange
{
  selfCopy = self;
  sub_100189464();
}

- (_TtC5Music23HIMetricsCollectionView)initWithCoder:(id)coder
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

- (_TtC5Music23HIMetricsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end