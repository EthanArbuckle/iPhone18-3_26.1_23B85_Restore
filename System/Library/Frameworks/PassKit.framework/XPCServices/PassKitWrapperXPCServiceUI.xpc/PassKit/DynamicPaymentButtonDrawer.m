@interface DynamicPaymentButtonDrawer
- (_TtC26PassKitWrapperXPCServiceUI26DynamicPaymentButtonDrawer)init;
- (void)getImageWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5 reply:(id)a6;
@end

@implementation DynamicPaymentButtonDrawer

- (void)getImageWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5 reply:(id)a6
{
  v9 = sub_100002218(&qword_100010BB0, &qword_1000075E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a6);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = sub_100006D00();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;
  v16[5] = a3;
  v16[6] = sub_1000061DC;
  v16[7] = v14;
  v17 = a3;
  v18 = a4;
  sub_100002F20(0, 0, v12, &unk_100007680, v16);
}

- (_TtC26PassKitWrapperXPCServiceUI26DynamicPaymentButtonDrawer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DynamicPaymentButtonDrawer();
  return [(DynamicPaymentButtonDrawer *)&v3 init];
}

@end