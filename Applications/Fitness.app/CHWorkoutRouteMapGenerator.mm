@interface CHWorkoutRouteMapGenerator
- (CHWorkoutRouteMapGenerator)init;
- (CHWorkoutRouteMapGenerator)initWithPathRendererClass:(Class)class;
- (void)setLocationReadings:(id)readings;
- (void)setMapSize:(CGSize)size;
- (void)setMapSnapshotter:(id)snapshotter;
- (void)snapshotWithSize:(CGSize)size lineWidth:(double)width traitCollection:(id)collection insets:(UIEdgeInsets)insets completion:(id)completion;
@end

@implementation CHWorkoutRouteMapGenerator

- (void)setLocationReadings:(id)readings
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings);
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings) = readings;
  readingsCopy = readings;
}

- (void)setMapSnapshotter:(id)snapshotter
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter);
  *(&self->super.isa + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter) = snapshotter;
  snapshotterCopy = snapshotter;
}

- (CHWorkoutRouteMapGenerator)initWithPathRendererClass:(Class)class
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

- (void)setMapSize:(CGSize)size
{
  v3 = (self + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize);
  *v3 = size;
  LOBYTE(v3[1].width) = 0;
}

- (void)snapshotWithSize:(CGSize)size lineWidth:(double)width traitCollection:(id)collection insets:(UIEdgeInsets)insets completion:(id)completion
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v16 = _Block_copy(completion);
  _Block_copy(v16);
  collectionCopy = collection;
  selfCopy = self;
  sub_1005D9F98(collectionCopy, selfCopy, v16, width, height, width, top, left, bottom, right);
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