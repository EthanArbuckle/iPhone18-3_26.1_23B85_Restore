@interface AXLTCaptionsProvider
+ (AXLTCaptionsProvider)shared;
- (void)addPlaceholder;
- (void)allActiveCallsEnded;
- (void)callConnected;
- (void)clearOldCaptionsIfNeeded;
- (void)mediaPlayingDidChange:(id)change;
- (void)screenLockStateChanged:(BOOL)changed;
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
  selfCopy = self;
  sub_53DE8();
}

- (void)mediaPlayingDidChange:(id)change
{
  v5 = sub_2E50(&qword_FA558);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (change)
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

  selfCopy = self;
  sub_55890(v7);

  sub_C5E8(v7, &qword_FA558);
}

- (void)addPlaceholder
{
  selfCopy = self;
  sub_58980();
}

- (void)screenLockStateChanged:(BOOL)changed
{
  selfCopy = self;
  _s19LiveSpeechUIService20AXLTCaptionsProviderC22screenLockStateChangedyySbF_0();
}

- (void)callConnected
{
  selfCopy = self;
  AXLTCaptionsProvider.callConnected()();
}

- (void)allActiveCallsEnded
{
  selfCopy = self;
  AXLTCaptionsProvider.allActiveCallsEnded()();
}

@end