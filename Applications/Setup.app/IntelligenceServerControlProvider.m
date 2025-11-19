@interface IntelligenceServerControlProvider
- (_TtC5Setup33IntelligenceServerControlProvider)init;
- (void)isFeatureEnabledFromCache:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation IntelligenceServerControlProvider

- (void)isFeatureEnabledFromCache:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100297BF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100297310;
  v14[5] = v13;
  v15 = self;
  sub_100063A28(0, 0, v9, &unk_1002979A0, v14);
}

- (_TtC5Setup33IntelligenceServerControlProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntelligenceServerControlProvider();
  return [(IntelligenceServerControlProvider *)&v3 init];
}

@end