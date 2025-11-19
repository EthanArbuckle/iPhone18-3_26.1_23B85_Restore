@interface CRLSharedHighlightController
- (void)highlightCenterHighlightsDidChange:(id)a3;
- (void)iCloudStatusDidChangeWithNotification:(id)a3;
@end

@implementation CRLSharedHighlightController

- (void)iCloudStatusDidChangeWithNotification:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = qword_1019F2098;
  v9 = a3;
  v10 = self;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.crlDefault;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "iCloud status changed. Updating highlights.", 43, 2, _swiftEmptyArrayStorage);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v10;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_10064191C(0, 0, v7, &unk_10146D6A8, v16);
}

- (void)highlightCenterHighlightsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005F0E70(v4);
}

@end