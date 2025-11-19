@interface CAMSystemOverlayTipManager
+ (BOOL)anyTipPendingOrAvailable;
- (CAMSystemOverlayTipManager)init;
- (void)recordCaptureEvent;
- (void)recordMenuVisibleEvent;
- (void)recordSliderVisibleEvent;
- (void)setControlsCountParameter:(unint64_t)a3;
- (void)startTipObservationForViewController:(id)a3 sourceItem:(id)a4;
- (void)stopTipObservation;
@end

@implementation CAMSystemOverlayTipManager

+ (BOOL)anyTipPendingOrAvailable
{
  v2 = type metadata accessor for Tips.Status();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0xD000000000000014;
  v12[1] = 0x8000000100041FD0;
  sub_10001B21C();
  Tip.status.getter();
  v7 = (*(v3 + 88))(v6, v2);
  v8 = v7;
  v9 = enum case for Tips.Status.invalidated(_:);
  if (v7 == enum case for Tips.Status.invalidated(_:))
  {
    goto LABEL_7;
  }

  if (v7 != enum case for Tips.Status.pending(_:) && v7 != enum case for Tips.Status.available(_:))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
    (*(v3 + 8))(v6, v2);
  }

  return v8 != v9;
}

- (void)startTipObservationForViewController:(id)a3 sourceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100018668();
}

- (void)stopTipObservation
{
  v2 = self;
  sub_100019950();
}

- (void)recordSliderVisibleEvent
{
  if (qword_10005F4F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100017000(&qword_10005F7A8, &qword_100040098);
  sub_100016DD8(v2, qword_100061620);
  Tips.Event.sendDonation<>(_:)();
}

- (void)recordMenuVisibleEvent
{
  v2 = self;
  sub_100019AC0();
}

- (void)setControlsCountParameter:(unint64_t)a3
{
  if (qword_10005F508 != -1)
  {
    swift_once();
  }

  v3 = sub_100017000(&qword_10005F798, &qword_100040088);
  sub_100016DD8(v3, qword_100061668);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
}

- (CAMSystemOverlayTipManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CAMSystemOverlayTipManager_isPortraitOrientation) = 0;
  v4 = (&self->super.isa + OBJC_IVAR___CAMSystemOverlayTipManager_menuTip);
  *v4 = 0xD000000000000014;
  v4[1] = 0x8000000100041FD0;
  *(&self->super.isa + OBJC_IVAR___CAMSystemOverlayTipManager_tipObservationTask) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CAMSystemOverlayTipManager *)&v6 init];
}

- (void)recordCaptureEvent
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  swift_unknownObjectRelease();
  v2 = objc_allocWithZone(BMDiscoverabilitySignals);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithContentIdentifier:v3 context:0 osBuild:0 userInfo:0];

  v5 = [v1 source];
  [v5 sendEvent:v4];
}

@end