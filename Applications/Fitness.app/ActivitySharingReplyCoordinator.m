@interface ActivitySharingReplyCoordinator
- (void)refreshReplyOptions;
@end

@implementation ActivitySharingReplyCoordinator

- (void)refreshReplyOptions
{
  v3 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_10026E198(0, 0, v5, &unk_1006D2C58, v7);
}

@end