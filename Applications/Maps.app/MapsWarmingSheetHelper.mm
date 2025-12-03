@interface MapsWarmingSheetHelper
+ (void)isVisitedPlacesAuthorizedWithCompletion:(id)completion;
- (_TtC4Maps22MapsWarmingSheetHelper)init;
@end

@implementation MapsWarmingSheetHelper

+ (void)isVisitedPlacesAuthorizedWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  sub_10033B540(sub_10033D4D0, v4);
}

- (_TtC4Maps22MapsWarmingSheetHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsWarmingSheetHelper();
  return [(MapsWarmingSheetHelper *)&v3 init];
}

@end