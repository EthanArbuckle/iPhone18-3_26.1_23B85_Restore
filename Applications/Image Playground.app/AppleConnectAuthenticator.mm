@interface AppleConnectAuthenticator
- (void)authenticateIfNeededWithCompletion:(id)completion;
@end

@implementation AppleConnectAuthenticator

- (void)authenticateIfNeededWithCompletion:(id)completion
{
  v5 = (*(*(sub_1000026DC(&qword_100018B58, &qword_100010DF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  selfCopy = self;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy;
  v13[5] = sub_100004B10;
  v13[6] = v9;
  sub_100004530(0, 0, v7, &unk_100010E08, v13);
}

@end