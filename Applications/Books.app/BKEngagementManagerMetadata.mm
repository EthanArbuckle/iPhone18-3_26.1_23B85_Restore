@interface BKEngagementManagerMetadata
- (BKEngagementManagerMetadata)init;
- (NSDictionary)propertyCounts;
- (void)setPropertyCounts:(id)counts;
@end

@implementation BKEngagementManagerMetadata

- (NSDictionary)propertyCounts
{
  swift_beginAccess();

  v2.super.isa = sub_1007A2024().super.isa;

  return v2.super.isa;
}

- (void)setPropertyCounts:(id)counts
{
  v4 = sub_1007A2044();
  v5 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BKEngagementManagerMetadata)init
{
  *(self + OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts) = _swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitSuccessTimestamp;
  v4 = sub_100796BB4();
  v5 = *(*(v4 - 8) + 56);
  v5(self + v3, 1, 1, v4);
  *(self + OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitError) = 0;
  v5(self + OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitErrorTimestamp, 1, 1, v4);
  v5(self + OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitSuccessTimestamp, 1, 1, v4);
  *(self + OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitError) = 0;
  v5(self + OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitErrorTimestamp, 1, 1, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for EngagementManagerMetadata();
  return [(BKEngagementManagerMetadata *)&v7 init];
}

@end