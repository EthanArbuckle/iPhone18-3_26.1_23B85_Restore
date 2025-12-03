@interface SpotlightUtilities
+ (CSSearchableIndex)searchableIndex;
+ (void)deleteAllSearchableItemsFromLegacyIndex;
+ (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler;
+ (void)reindexAllSearchableItemsWithSpotlightDelegate:(NSCoreDataCoreSpotlightDelegate *)delegate completionHandler:(id)handler;
+ (void)setDisableSearchInSpotlightFlagWithDisableSearchInSpotlight:(BOOL)spotlight completionHandler:(id)handler;
- (_TtC15JournalSettings18SpotlightUtilities)init;
@end

@implementation SpotlightUtilities

+ (CSSearchableIndex)searchableIndex
{
  v2 = objc_allocWithZone(CSSearchableIndex);
  v3 = NSFileProtectionCompleteUnlessOpen;
  v4 = sub_90550();
  v5 = sub_90550();
  v6 = [v2 initWithName:v4 protectionClass:v3 bundleIdentifier:v5];

  return v6;
}

+ (void)setDisableSearchInSpotlightFlagWithDisableSearchInSpotlight:(BOOL)spotlight completionHandler:(id)handler
{
  v7 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = spotlight;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_90880();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_9C988;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_9C990;
  v14[5] = v13;
  sub_76A34(0, 0, v9, &unk_9C998, v14);
}

+ (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler
{
  v5 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_90880();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_9C960;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_9C968;
  v12[5] = v11;
  sub_76A34(0, 0, v7, &unk_9C970, v12);
}

+ (void)reindexAllSearchableItemsWithSpotlightDelegate:(NSCoreDataCoreSpotlightDelegate *)delegate completionHandler:(id)handler
{
  v7 = sub_3A90(&qword_C8820);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = delegate;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_90880();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_9C910;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_9C920;
  v14[5] = v13;
  delegateCopy = delegate;
  sub_76A34(0, 0, v9, &unk_9C930, v14);
}

- (_TtC15JournalSettings18SpotlightUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SpotlightUtilities();
  return [(SpotlightUtilities *)&v3 init];
}

+ (void)deleteAllSearchableItemsFromLegacyIndex
{
  v0 = objc_allocWithZone(CSSearchableIndex);
  v1 = sub_90550();
  v2 = sub_90550();
  v7 = [v0 initWithName:v1 bundleIdentifier:v2];

  [v7 deleteAllSearchableItemsWithCompletionHandler:0];
  if (qword_C3A60 != -1)
  {
    swift_once();
  }

  v3 = sub_900D0();
  sub_7FF0(v3, qword_C81C0);
  v4 = sub_900B0();
  v5 = sub_90A80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "SpotlightUtilities.deleteAllSearchableItemsFromLegacyIndex finished", v6, 2u);
  }
}

@end