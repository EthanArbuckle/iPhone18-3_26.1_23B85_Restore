@interface CHCatalogItemViewModel
- (BOOL)isSeymourGuidedRunWorkout;
- (BOOL)isSeymourGuidedWalkWorkout;
- (BOOL)isSeymourPairedWorkout;
- (CHCatalogItemViewModel)init;
- (NSString)description;
@end

@implementation CHCatalogItemViewModel

- (BOOL)isSeymourPairedWorkout
{
  selfCopy = self;
  v3 = sub_1003A6330();

  return v3 & 1;
}

- (BOOL)isSeymourGuidedWalkWorkout
{
  selfCopy = self;
  v3 = sub_1003A6370();

  return v3 & 1;
}

- (BOOL)isSeymourGuidedRunWorkout
{
  selfCopy = self;
  v3 = sub_1003A6458();

  return v3 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_1003A662C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CHCatalogItemViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end