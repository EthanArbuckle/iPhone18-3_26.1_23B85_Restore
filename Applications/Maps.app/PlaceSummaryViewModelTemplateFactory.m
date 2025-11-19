@interface PlaceSummaryViewModelTemplateFactory
+ (id)addAPlaceAutocompleteViewModel;
+ (id)addAPlaceSearchViewModel;
+ (id)venueViewModelWithSearchResult:(id)a3 metadata:(id)a4 labelContext:(unint64_t)a5;
+ (id)viewModelWithCompletion:(id)a3 metadata:(id)a4 currentLocation:(id)a5 userLocationSearchResult:(id)a6 highlightType:(id)a7 availableWidth:(double)a8 clientSourceType:(int64_t)a9 allowsTappableUnits:(BOOL)a10 searchAlongRoute:(BOOL)a11;
+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)a3 highlightConfiguration:(id)a4 availableWidth:(double)a5 currentLocation:(id)a6 searchAlongRoute:(BOOL)a7;
+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)a3 highlightConfiguration:(id)a4 availableWidth:(double)a5 currentLocation:(id)a6 searchAlongRoute:(BOOL)a7 recentUnit:(BOOL)a8;
+ (id)viewModelWithHistoryEntrySearch:(id)a3 highlightConfiguration:(id)a4 searchAlongRoute:(BOOL)a5;
+ (id)viewModelWithHistoryEntrySearch:(id)a3 highlightConfiguration:(id)a4 searchAlongRoute:(BOOL)a5 recentUnit:(BOOL)a6;
+ (id)viewModelWithSearchResult:(id)a3 highlightConfiguration:(id)a4 currentLocation:(id)a5 availableWidth:(double)a6 searchAlongRoute:(BOOL)a7;
+ (id)viewModelWithSearchResult:(id)a3 metadata:(id)a4 currentLocation:(id)a5 searchAlongRoute:(BOOL)a6 openAt:(id)a7;
+ (id)viewModelWithUserRoute:(id)a3 highlightConfiguration:(id)a4 currentLocation:(id)a5;
+ (void)updateDistanceViewModelWithCurrentLocation:(id)a3 mapItem:(id)a4 template:(id)a5 searchAlongTheRoute:(BOOL)a6;
- (_TtC4Maps36PlaceSummaryViewModelTemplateFactory)init;
@end

@implementation PlaceSummaryViewModelTemplateFactory

+ (id)venueViewModelWithSearchResult:(id)a3 metadata:(id)a4 labelContext:(unint64_t)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = sub_1002DCBF4(v8, a5);

  return v10;
}

+ (id)viewModelWithSearchResult:(id)a3 metadata:(id)a4 currentLocation:(id)a5 searchAlongRoute:(BOOL)a6 openAt:(id)a7
{
  v8 = a6;
  swift_getObjCClassMetadata();
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  sub_1002C2368(v12, a4, a5, v8, a7);
  v17 = v16;

  return v17;
}

+ (id)viewModelWithCompletion:(id)a3 metadata:(id)a4 currentLocation:(id)a5 userLocationSearchResult:(id)a6 highlightType:(id)a7 availableWidth:(double)a8 clientSourceType:(int64_t)a9 allowsTappableUnits:(BOOL)a10 searchAlongRoute:(BOOL)a11
{
  swift_getObjCClassMetadata();
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  sub_1002C33E8(v17, a4, a5, a6, v21, a9, a10, a11, a8);
  v23 = v22;

  return v23;
}

+ (id)viewModelWithHistoryEntrySearch:(id)a3 highlightConfiguration:(id)a4 searchAlongRoute:(BOOL)a5
{
  v5 = a5;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = sub_1002C44FC(a3, v8, v5, 1);
  swift_unknownObjectRelease();

  return v9;
}

+ (id)viewModelWithHistoryEntrySearch:(id)a3 highlightConfiguration:(id)a4 searchAlongRoute:(BOOL)a5 recentUnit:(BOOL)a6
{
  v7 = a5;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = sub_1002C44FC(a3, v10, v7, a6);
  swift_unknownObjectRelease();

  return v11;
}

+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)a3 highlightConfiguration:(id)a4 availableWidth:(double)a5 currentLocation:(id)a6 searchAlongRoute:(BOOL)a7
{
  v7 = a7;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = a6;
  v14 = sub_1002C58A8(a3, v12, a6, v7, 1, a5);
  swift_unknownObjectRelease();

  return v14;
}

+ (id)viewModelWithHistoryEntryPlaceDisplay:(id)a3 highlightConfiguration:(id)a4 availableWidth:(double)a5 currentLocation:(id)a6 searchAlongRoute:(BOOL)a7 recentUnit:(BOOL)a8
{
  v9 = a7;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v14 = a4;
  v15 = a6;
  v16 = sub_1002C58A8(a3, v14, a6, v9, a8, a5);
  swift_unknownObjectRelease();

  return v16;
}

+ (id)viewModelWithSearchResult:(id)a3 highlightConfiguration:(id)a4 currentLocation:(id)a5 availableWidth:(double)a6 searchAlongRoute:(BOOL)a7
{
  v7 = a7;
  swift_getObjCClassMetadata();
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = sub_1002C9DFC(v12, v13, a5, v7, a6);

  return v15;
}

+ (id)viewModelWithUserRoute:(id)a3 highlightConfiguration:(id)a4 currentLocation:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1002CC0E0(v8, v9, a5);

  return v11;
}

+ (id)addAPlaceAutocompleteViewModel
{
  swift_getObjCClassMetadata();
  v2 = sub_1002CD644(1);

  return v2;
}

+ (id)addAPlaceSearchViewModel
{
  swift_getObjCClassMetadata();
  v2 = sub_1002CD644(2);

  return v2;
}

- (_TtC4Maps36PlaceSummaryViewModelTemplateFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceSummaryViewModelTemplateFactory();
  return [(PlaceSummaryViewModelTemplateFactory *)&v3 init];
}

+ (void)updateDistanceViewModelWithCurrentLocation:(id)a3 mapItem:(id)a4 template:(id)a5 searchAlongTheRoute:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  sub_1002E20E0(a3, v11, v12, a6);
}

@end