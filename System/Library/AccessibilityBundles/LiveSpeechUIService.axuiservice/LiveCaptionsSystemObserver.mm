@interface LiveCaptionsSystemObserver
- (void)guidedAccessStatusChanged:(id)changed;
@end

@implementation LiveCaptionsSystemObserver

- (void)guidedAccessStatusChanged:(id)changed
{
  v3 = sub_B8FF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B8FC0();
  sub_BB320();
  v7 = AXLogLiveTranscription();
  if (v7)
  {
    v8 = v7;
    sub_B99F0();

    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    AXLTCaptionsProvider.clearCaptionsForGuidedAccess()();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }
}

@end