@interface MediaAssetGridView
- (void)playAction:(id)a3;
@end

@implementation MediaAssetGridView

- (void)playAction:(id)a3
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_1003E9628(0, 0, v6, &unk_100952E20, v10);
}

@end