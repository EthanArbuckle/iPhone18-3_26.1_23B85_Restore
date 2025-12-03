@interface VideoCallViewCoordinator
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)inCallSceneSessionIdentifier;
- (UIImage)audioRouteGlyphForDevice;
- (id)audioRouteGlyphFor:(id)for;
- (id)audioRouteGlyphFor:(id)for buttonStyle:(int64_t)style;
- (id)audioRouteMenu;
- (id)bottomControlsViewForViewController:(id)controller;
- (id)callParticipantLabelsViewForViewController:(id)controller;
- (void)bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID:(id)d;
- (void)bannerPresentationManagerRequestToPresentBanner:(id)banner;
- (void)bannerPresentationManagerUpdatedControlsManagerCallUUID:(id)d;
- (void)setAudioRouteGlyphForDevice:(id)device;
@end

@implementation VideoCallViewCoordinator

- (id)audioRouteMenu
{
  v2 = _s13InCallService15ScoreControllerC8delegateAA0dE8Delegate_pSgvpfi_0();

  return v2;
}

- (id)audioRouteGlyphFor:(id)for
{
  v3 = _s13InCallService15ScoreControllerC8delegateAA0dE8Delegate_pSgvpfi_0();

  return v3;
}

- (id)audioRouteGlyphFor:(id)for buttonStyle:(int64_t)style
{
  v4 = _s13InCallService15ScoreControllerC8delegateAA0dE8Delegate_pSgvpfi_0();

  return v4;
}

- (UIImage)audioRouteGlyphForDevice
{
  v2 = sub_10016F600();

  return v2;
}

- (void)setAudioRouteGlyphForDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_10016F68C(device);
}

- (id)callParticipantLabelsViewForViewController:(id)controller
{
  v3 = _s13InCallService15ScoreControllerC8delegateAA0dE8Delegate_pSgvpfi_0();

  return v3;
}

- (id)bottomControlsViewForViewController:(id)controller
{
  v3 = _s13InCallService15ScoreControllerC8delegateAA0dE8Delegate_pSgvpfi_0();

  return v3;
}

- (void)bannerPresentationManagerRequestToPresentBanner:(id)banner
{
  v3 = _Block_copy(banner);
  *(swift_allocObject() + 16) = v3;
  iPadAudioCallViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)(sub_10016D258);
}

- (void)bannerPresentationManagerUpdatedControlsManagerCallUUID:(id)d
{
  v4 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v10 - v6;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = 1;
  }

  sub_100006848(v7, v9, 1, v8);
  iPadAudioCallViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)(v7);
  sub_1000306A4(v7, &qword_1003AAB40);
}

- (void)bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID:(id)d
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  iPadAudioCallViewController.peoplePickerRequestedUnknownContactPopover(for:sourceView:sourceRect:)(v7);
  (*(v4 + 8))(v7, v3);
}

- (NSString)inCallSceneSessionIdentifier
{
  sub_10016FC20();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSSet)backgroundActivitiesToSuppress
{
  variable initialization expression of MuteControlService.cancellables();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  sub_1001708B8(&qword_1003AA4A8, type metadata accessor for STBackgroundActivityIdentifier);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end