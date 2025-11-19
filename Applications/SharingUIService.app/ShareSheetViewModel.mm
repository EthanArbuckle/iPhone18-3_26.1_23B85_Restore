@interface ShareSheetViewModel
- (NSArray)metadataValues;
- (NSArray)urlSandboxExtensions;
- (NSDictionary)activitiesByUUID;
- (_TtC16SharingUIService19ShareSheetViewModel)init;
- (void)setActivitiesByUUID:(id)a3;
- (void)setCollaborationFooterViewModel:(id)a3;
- (void)setCustomHeaderButtonColor:(id)a3;
- (void)setCustomHeaderButtonTitle:(id)a3;
- (void)setCustomViewController:(id)a3;
- (void)setCustomViewControllerSectionHeightWrapper:(id)a3;
- (void)setCustomViewControllerVerticalInsetWrapper:(id)a3;
- (void)setMetadataValues:(id)a3;
- (void)setNearbyCountSlotID:(id)a3;
- (void)setUrlSandboxExtensions:(id)a3;
@end

@implementation ShareSheetViewModel

- (NSArray)metadataValues
{
  v2 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_metadataValues);
  sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setMetadataValues:(id)a3
{
  sub_10000A598(0, &unk_100046C90, LPLinkMetadata_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_metadataValues);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_metadataValues) = v4;
}

- (NSArray)urlSandboxExtensions
{
  if (*(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions))
  {
    v2 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions);

    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)setUrlSandboxExtensions:(id)a3
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_urlSandboxExtensions) = v4;
}

- (void)setCustomHeaderButtonTitle:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonTitle);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonTitle) = a3;
  v3 = a3;
}

- (void)setCustomHeaderButtonColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonColor);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customHeaderButtonColor) = a3;
  v3 = a3;
}

- (void)setCollaborationFooterViewModel:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_collaborationFooterViewModel);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_collaborationFooterViewModel) = a3;
  v3 = a3;
}

- (void)setCustomViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewController);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewController) = a3;
  v3 = a3;
}

- (void)setCustomViewControllerVerticalInsetWrapper:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerVerticalInsetWrapper);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerVerticalInsetWrapper) = a3;
  v3 = a3;
}

- (void)setCustomViewControllerSectionHeightWrapper:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerSectionHeightWrapper);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_customViewControllerSectionHeightWrapper) = a3;
  v3 = a3;
}

- (void)setNearbyCountSlotID:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_nearbyCountSlotID);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_nearbyCountSlotID) = a3;
  v3 = a3;
}

- (NSDictionary)activitiesByUUID
{
  v2 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_activitiesByUUID);
  type metadata accessor for UUID();
  sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
  sub_1000129E4();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setActivitiesByUUID:(id)a3
{
  type metadata accessor for UUID();
  sub_10000A598(0, &unk_100047A10, UIActivity_ptr);
  sub_1000129E4();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_activitiesByUUID);
  *(self + OBJC_IVAR____TtC16SharingUIService19ShareSheetViewModel_activitiesByUUID) = v4;
}

- (_TtC16SharingUIService19ShareSheetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end