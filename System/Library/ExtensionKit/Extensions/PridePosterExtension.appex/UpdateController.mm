@interface UpdateController
- (_TtC20PridePosterExtension16UpdateController)init;
- (void)updateDescriptors:(NSDictionary *)a3 withSessionInfo:(PRUpdatingSessionInfo *)a4 completion:(id)a5;
@end

@implementation UpdateController

- (void)updateDescriptors:(NSDictionary *)a3 withSessionInfo:(PRUpdatingSessionInfo *)a4 completion:(id)a5
{
  v9 = (*(*(sub_100002398(&qword_10003C328, &qword_100026338) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10002354C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100026348;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100026358;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_100002984(0, 0, v11, &unk_100026368, v16);
}

- (_TtC20PridePosterExtension16UpdateController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateController();
  return [(UpdateController *)&v3 init];
}

@end