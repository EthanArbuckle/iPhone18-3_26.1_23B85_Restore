@interface BuddyGMAvailabilityProvider
- (_TtC5Setup27BuddyGMAvailabilityProvider)init;
- (void)fetchLatestAvailabilityStatusWithCompletionHandler:(id)handler;
@end

@implementation BuddyGMAvailabilityProvider

- (void)fetchLatestAvailabilityStatusWithCompletionHandler:(id)handler
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100298A70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100297310;
  v12[5] = v11;
  selfCopy = self;
  sub_100063A28(0, 0, v7, &unk_1002979A0, v12);
}

- (_TtC5Setup27BuddyGMAvailabilityProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BuddyGMAvailabilityProvider();
  return [(BuddyGMAvailabilityProvider *)&v3 init];
}

@end