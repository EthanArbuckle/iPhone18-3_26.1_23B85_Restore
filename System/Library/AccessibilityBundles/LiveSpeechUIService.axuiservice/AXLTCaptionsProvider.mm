@interface AXLTCaptionsProvider
+ (AXLTCaptionsProvider)shared;
- (void)addPlaceholder;
- (void)allActiveCallsEnded;
- (void)callConnected;
- (void)clearOldCaptionsIfNeeded;
- (void)mediaPlayingDidChange:(id)a3;
- (void)screenLockStateChanged:(BOOL)a3;
@end

@implementation AXLTCaptionsProvider

+ (AXLTCaptionsProvider)shared
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  v3 = static AXLTCaptionsProvider.shared;

  return v3;
}

- (void)clearOldCaptionsIfNeeded
{
  v2 = self;
  sub_53DE8();
}

- (void)mediaPlayingDidChange:(id)a3
{
  v5 = sub_2E50(&qword_FA558);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_B8FC0();
    v8 = sub_B8FF0();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_B8FF0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_55890(v7);

  sub_C5E8(v7, &qword_FA558);
}

- (void)addPlaceholder
{
  v2 = self;
  sub_58980();
}

- (void)screenLockStateChanged:(BOOL)a3
{
  v3 = self;
  _s19LiveSpeechUIService20AXLTCaptionsProviderC22screenLockStateChangedyySbF_0();
}

- (void)callConnected
{
  v2 = self;
  AXLTCaptionsProvider.callConnected()();
}

- (void)allActiveCallsEnded
{
  v2 = self;
  AXLTCaptionsProvider.allActiveCallsEnded()();
}

@end