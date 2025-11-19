@interface AXLTCaptionsProvider
+ (AXLTCaptionsProvider)shared;
- (void)addPlaceholder;
- (void)cleanCaptions;
- (void)cleanOldestCaptionsIfNeeded;
- (void)handleAudioSessionInterruptionWithNotification:(id)a3;
- (void)handleAudioSessionResetWithNotification:(id)a3;
- (void)phoneCallListenerCallConnected:(id)a3 callID:(id)a4;
- (void)phoneCallListenerCallEnded:(id)a3 callID:(id)a4;
- (void)screenLockStateChanged:(BOOL)a3;
- (void)startTranscribing;
- (void)startTranscribing:(int64_t)a3 :(int64_t)a4;
- (void)stopTranscribing;
@end

@implementation AXLTCaptionsProvider

+ (AXLTCaptionsProvider)shared
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v3 = static AXLTCaptionsProvider.shared;

  return v3;
}

- (void)startTranscribing
{
  v2 = self;
  AXLTCaptionsProvider.startTranscribing()();
}

- (void)startTranscribing:(int64_t)a3 :(int64_t)a4
{
  v6 = self;
  AXLTCaptionsProvider.startTranscribing(_:_:)(a3, a4);
}

- (void)stopTranscribing
{
  v2 = self;
  AXLTCaptionsProvider.stopTranscribing()();
}

- (void)cleanCaptions
{
  v2 = self;
  static os_log_type_t.debug.getter();
  v3 = AXLogLiveTranscription();
  if (v3)
  {
    v4 = v3;
    os_log(_:dso:log:_:_:)();

    swift_getKeyPath();
    swift_getKeyPath();
    v5 = static Published.subscript.modify();
    v7 = *v6;
    *v6 = &_swiftEmptyArrayStorage;

    v5(&v8, 0);

    sub_10002D910(0, 0);
  }

  else
  {
    __break(1u);
  }
}

- (void)cleanOldestCaptionsIfNeeded
{
  v2 = self;
  sub_10002EF30();
}

- (void)handleAudioSessionInterruptionWithNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100032A88(v7);
  (*(v4 + 8))(v7, v3);
}

- (void)handleAudioSessionResetWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10002FB3C(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)addPlaceholder
{
  v2 = self;
  sub_100030684();
}

- (void)phoneCallListenerCallConnected:(id)a3 callID:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  static os_log_type_t.default.getter();
  v13 = AXLogLiveTranscription();
  if (v13)
  {
    v14 = v13;
    os_log(_:dso:log:_:_:)();

    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v15 = static AXLTSettingsManager.shared;
    v16 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
    swift_beginAccess();
    if (*(v15 + v16) == 1)
    {
      AXLTCaptionsProvider.stopTranscribing()();
      AXLTCaptionsProvider.startTranscribing()();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

- (void)phoneCallListenerCallEnded:(id)a3 callID:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  static os_log_type_t.default.getter();
  v13 = AXLogLiveTranscription();
  if (v13)
  {
    v14 = v13;
    os_log(_:dso:log:_:_:)();

    if (*(&v12->super.isa + OBJC_IVAR___AXLTCaptionsProvider_activePid) == -2)
    {
      sub_100030DCC();
      AXLTCaptionsProvider.stopTranscribing()();
      AXLTCaptionsProvider.startTranscribing()();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

- (void)screenLockStateChanged:(BOOL)a3
{
  v4 = self;
  AXLTCaptionsProvider.screenLockStateChanged(_:)(a3);
}

@end