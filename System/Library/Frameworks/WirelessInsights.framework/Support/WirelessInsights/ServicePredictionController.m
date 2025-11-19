@interface ServicePredictionController
- (_TtC17wirelessinsightsd27ServicePredictionController)init;
- (void)handleLocationAuthorizationUpdate:(BOOL)a3;
- (void)handleLocationUpdate:(id)a3;
@end

@implementation ServicePredictionController

- (void)handleLocationUpdate:(id)a3
{
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = a3;

  [v9 latitude];
  v11 = v10;
  [v9 longitude];
  v13 = [objc_allocWithZone(CLLocation) initWithLatitude:v11 longitude:v12];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v13;
  v16 = v13;
  sub_100176B80(0, 0, v8, &unk_10024D4F0, v15);
}

- (void)handleLocationAuthorizationUpdate:(BOOL)a3
{
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  if (!a3)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = self;

    sub_100176B80(0, 0, v8, &unk_10024D4E8, v10);
  }
}

- (_TtC17wirelessinsightsd27ServicePredictionController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end