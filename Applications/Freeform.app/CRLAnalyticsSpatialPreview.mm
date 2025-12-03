@interface CRLAnalyticsSpatialPreview
+ (void)sendSpatialPreviewAnalyticsWithPreviewItem:(id)item isSharedWithSpatialParticipants:(BOOL)participants;
- (_TtC8Freeform26CRLAnalyticsSpatialPreview)init;
@end

@implementation CRLAnalyticsSpatialPreview

+ (void)sendSpatialPreviewAnalyticsWithPreviewItem:(id)item isSharedWithSpatialParticipants:(BOOL)participants
{
  itemCopy = item;
  sub_1012CC54C(itemCopy, participants);
}

- (_TtC8Freeform26CRLAnalyticsSpatialPreview)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLAnalyticsSpatialPreview();
  return [(CRLAnalyticsSpatialPreview *)&v3 init];
}

@end