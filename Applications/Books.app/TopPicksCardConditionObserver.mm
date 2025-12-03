@interface TopPicksCardConditionObserver
- (_TtC5Books29TopPicksCardConditionObserver)init;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
@end

@implementation TopPicksCardConditionObserver

- (_TtC5Books29TopPicksCardConditionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  selfCopy = self;
  sub_1003457A0(0, 0, v7, &unk_10082A9C8, v9);
}

@end