@interface BKBookReaderInteractionCoordinator
- (BKBookReaderInteractionCoordinator)init;
- (void)setWindow:(id)a3;
@end

@implementation BKBookReaderInteractionCoordinator

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker);
  v7 = *(v4 + 16);
  *(v4 + 16) = a3;
  v5 = a3;
  v6 = self;
  sub_10001DA04(v7);
}

- (BKBookReaderInteractionCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end