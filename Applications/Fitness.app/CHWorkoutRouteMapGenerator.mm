@interface CHWorkoutRouteMapGenerator
- (CHWorkoutRouteMapGenerator)init;
- (CHWorkoutRouteMapGenerator)initWithPathRendererClass:(Class)a3;
- (void)setLocationReadings:(id)a3;
- (void)setMapSize:(CGSize)a3;
- (void)setMapSnapshotter:(id)a3;
- (void)snapshotWithSize:(CGSize)a3 lineWidth:(double)a4 traitCollection:(id)a5 insets:(UIEdgeInsets)a6 completion:(id)a7;
@end

@implementation CHWorkoutRouteMapGenerator

- (void)setLocationReadings:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings);
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings) = a3;
  v3 = a3;
}

- (void)setMapSnapshotter:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter);
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter) = a3;
  v3 = a3;
}

- (CHWorkoutRouteMapGenerator)initWithPathRendererClass:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive) = 0;
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_pinWidth) = 0x402E000000000000;
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings) = 0;
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter) = 0;
  v5 = self + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_pathRendererClass) = ObjCClassMetadata;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutRouteMapGenerator();
  return [(CHWorkoutRouteMapGenerator *)&v7 init];
}

- (void)setMapSize:(CGSize)a3
{
  v3 = (self + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize);
  *v3 = a3;
  LOBYTE(v3[1].width) = 0;
}

- (void)snapshotWithSize:(CGSize)a3 lineWidth:(double)a4 traitCollection:(id)a5 insets:(UIEdgeInsets)a6 completion:(id)a7
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  height = a3.height;
  width = a3.width;
  v16 = _Block_copy(a7);
  _Block_copy(v16);
  v17 = a5;
  v18 = self;
  sub_1005D9F98(v17, v18, v16, width, height, a4, top, left, bottom, right);
  _Block_release(v16);
  _Block_release(v16);
}

- (CHWorkoutRouteMapGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end