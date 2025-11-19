@interface SpotlightUtilities
+ (CSSearchableIndex)searchableIndex;
+ (void)deleteAllSearchableItemsFromLegacyIndex;
+ (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3;
+ (void)reindexAllSearchableItemsWithSpotlightDelegate:(NSCoreDataCoreSpotlightDelegate *)a3 completionHandler:(id)a4;
+ (void)setDisableSearchInSpotlightFlagWithDisableSearchInSpotlight:(BOOL)a3 completionHandler:(id)a4;
- (_TtC21JournalShareExtension18SpotlightUtilities)init;
@end

@implementation SpotlightUtilities

+ (CSSearchableIndex)searchableIndex
{
  v2 = objc_allocWithZone(CSSearchableIndex);
  v3 = NSFileProtectionCompleteUnlessOpen;
  v4 = sub_100100F94();
  v5 = sub_100100F94();
  v6 = [v2 initWithName:v4 protectionClass:v3 bundleIdentifier:v5];

  return v6;
}

+ (void)setDisableSearchInSpotlightFlagWithDisableSearchInSpotlight:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
  v12 = sub_100101324();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10010E388;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10010E390;
  v14[5] = v13;
  sub_10008E9C8(0, 0, v9, &unk_10010E398, v14);
}

+ (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3
{
  v5 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_100101324();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10010E360;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10010E368;
  v12[5] = v11;
  sub_10008E9C8(0, 0, v7, &unk_10010E370, v12);
}

+ (void)reindexAllSearchableItemsWithSpotlightDelegate:(NSCoreDataCoreSpotlightDelegate *)a3 completionHandler:(id)a4
{
  v7 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_100101324();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10010E308;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10010E318;
  v14[5] = v13;
  v15 = a3;
  sub_10008E9C8(0, 0, v9, &unk_10010E328, v14);
}

- (_TtC21JournalShareExtension18SpotlightUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SpotlightUtilities();
  return [(SpotlightUtilities *)&v3 init];
}

+ (void)deleteAllSearchableItemsFromLegacyIndex
{
  v0 = objc_allocWithZone(CSSearchableIndex);
  v1 = sub_100100F94();
  v2 = sub_100100F94();
  v7 = [v0 initWithName:v1 bundleIdentifier:v2];

  [v7 deleteAllSearchableItemsWithCompletionHandler:0];
  if (qword_10014B7A0 != -1)
  {
    swift_once();
  }

  v3 = sub_100100AE4();
  sub_100003D38(v3, qword_10014EF18);
  v4 = sub_100100AC4();
  v5 = sub_1001015D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SpotlightUtilities.deleteAllSearchableItemsFromLegacyIndex finished", v6, 2u);
  }
}

@end