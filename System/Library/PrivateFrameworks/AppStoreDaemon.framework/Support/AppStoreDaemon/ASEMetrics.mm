@interface ASEMetrics
- (_TtC9appstored10ASEMetrics)init;
- (_TtC9appstored10ASEMetrics)initWithType:(int64_t)type bag:(id)bag;
- (void)enqueueEvent:(AMSMetricsEvent *)event flushEvents:(BOOL)events completionHandler:(id)handler;
- (void)enqueueEvents:(NSArray *)events flushEvents:(BOOL)flushEvents completionHandler:(id)handler;
- (void)flushWithCompletionHandler:(id)handler;
@end

@implementation ASEMetrics

- (_TtC9appstored10ASEMetrics)initWithType:(int64_t)type bag:(id)bag
{
  ObjectType = swift_getObjectType();
  sub_1000056D0(bag + OBJC_IVAR___Bag_bag, &v11);
  bagCopy = bag;
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&unk_10059CE80);
  swift_dynamicCast();
  v8 = objc_allocWithZone(ObjectType);
  v9 = sub_100101074(type, v12);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)enqueueEvent:(AMSMetricsEvent *)event flushEvents:(BOOL)events completionHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = event;
  *(v13 + 24) = events;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100436B78;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100436B80;
  v16[5] = v15;
  eventCopy = event;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_100436B88, v16);
}

- (void)enqueueEvents:(NSArray *)events flushEvents:(BOOL)flushEvents completionHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = events;
  *(v13 + 24) = flushEvents;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100436B58;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100436B60;
  v16[5] = v15;
  eventsCopy = events;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_100436B68, v16);
}

- (void)flushWithCompletionHandler:(id)handler
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
  v11[4] = &unk_100436B48;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored10ASEMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end