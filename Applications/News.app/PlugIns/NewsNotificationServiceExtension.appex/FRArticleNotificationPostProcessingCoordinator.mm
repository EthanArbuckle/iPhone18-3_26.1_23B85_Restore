@interface FRArticleNotificationPostProcessingCoordinator
- (void)notificationArrived:(UNNotificationContent *)arrived completionHandler:(id)handler;
@end

@implementation FRArticleNotificationPostProcessingCoordinator

- (void)notificationArrived:(UNNotificationContent *)arrived completionHandler:(id)handler
{
  v7 = (*(*(sub_100007C4C(&qword_100029B78, &qword_10001EDF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = arrived;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10001AC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10001EE70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10001EE80;
  v14[5] = v13;
  arrivedCopy = arrived;
  selfCopy = self;
  sub_10000AAC8(0, 0, v9, &unk_10001EE90, v14);
}

@end