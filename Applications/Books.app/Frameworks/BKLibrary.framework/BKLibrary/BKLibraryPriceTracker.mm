@interface BKLibraryPriceTracker
- (BKLibraryPriceTracker)init;
- (BKLibraryPriceTracker)initWithLibraryManager:(id)manager bdsPriceTracker:(id)tracker;
- (void)setNeedsConfigurationUpdate;
@end

@implementation BKLibraryPriceTracker

- (BKLibraryPriceTracker)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKLibraryPriceTracker)initWithLibraryManager:(id)manager bdsPriceTracker:(id)tracker
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  return PriceTracker.init(libraryManager:bdsPriceTracker:)(managerCopy, tracker);
}

- (void)setNeedsConfigurationUpdate
{
  v3 = sub_70674(&qword_EF620, &qword_A5C38);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_9218C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_7C7A8(0, 0, v6, &unk_A5DD8, v8);
}

@end