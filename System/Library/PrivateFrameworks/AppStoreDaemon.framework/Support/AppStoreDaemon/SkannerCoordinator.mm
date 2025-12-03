@interface SkannerCoordinator
+ (_TtC9appstored18SkannerCoordinator)sharedInstance;
- (_TtC9appstored18SkannerCoordinator)init;
- (void)completeStoryForAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler;
- (void)flushPendingEventsWithCompletionHandler:(id)handler;
- (void)logEvent:(_TtC9appstored12SkannerEvent *)event forAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler;
- (void)logEvent:(_TtC9appstored12SkannerEvent *)event forAdvertisedAppAdamID:(int64_t)d synchronizeWithSnout:(BOOL)snout completionHandler:(id)handler;
- (void)logEvents:(NSArray *)events forAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler;
- (void)startStoryIfNeededWith:(_TtC9appstored12SkannerEvent *)with forAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler;
@end

@implementation SkannerCoordinator

+ (_TtC9appstored18SkannerCoordinator)sharedInstance
{
  if (qword_10059B4B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB0E0;

  return v3;
}

- (void)startStoryIfNeededWith:(_TtC9appstored12SkannerEvent *)with forAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = with;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100435EA0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100435EA8;
  v16[5] = v15;
  withCopy = with;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_100435EB0, v16);
}

- (void)logEvent:(_TtC9appstored12SkannerEvent *)event forAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = event;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100435E80;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100435E88;
  v16[5] = v15;
  eventCopy = event;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_100435E90, v16);
}

- (void)logEvent:(_TtC9appstored12SkannerEvent *)event forAdvertisedAppAdamID:(int64_t)d synchronizeWithSnout:(BOOL)snout completionHandler:(id)handler
{
  v11 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = event;
  *(v15 + 24) = d;
  *(v15 + 32) = snout;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100435E38;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100435E40;
  v18[5] = v17;
  eventCopy = event;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v13, &unk_100435E48, v18);
}

- (void)logEvents:(NSArray *)events forAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = events;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100435E10;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100435E18;
  v16[5] = v15;
  eventsCopy = events;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_100435E20, v16);
}

- (void)completeStoryForAdvertisedAppAdamID:(int64_t)d completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100435DE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100435DE8;
  v14[5] = v13;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_100435DF0, v14);
}

- (void)flushPendingEventsWithCompletionHandler:(id)handler
{
  v5 = sub_100085D40(&qword_10059C3E0);
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
  v11[4] = &unk_100435DD0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored18SkannerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end