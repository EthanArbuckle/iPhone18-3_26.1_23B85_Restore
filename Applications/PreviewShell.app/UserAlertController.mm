@interface UserAlertController
- (void)alertService:(id)service wantsDismissalForAlert:(id)alert;
- (void)alertService:(id)service wantsPresentationForAlert:(id)alert preferredPresentationStyle:(int64_t)style;
@end

@implementation UserAlertController

- (void)alertService:(id)service wantsPresentationForAlert:(id)alert preferredPresentationStyle:(int64_t)style
{
  v7 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  alertCopy = alert;
  selfCopy = self;
  v14 = alertCopy;
  v15 = selfCopy;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v14;
  v17[5] = v15;
  sub_10002D668(0, 0, v10, &unk_10004E348, v17);
}

- (void)alertService:(id)service wantsDismissalForAlert:(id)alert
{
  v6 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  alertCopy = alert;
  selfCopy = self;
  v13 = alertCopy;
  v14 = selfCopy;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = v14;
  sub_10002D668(0, 0, v9, &unk_10004E338, v16);
}

@end