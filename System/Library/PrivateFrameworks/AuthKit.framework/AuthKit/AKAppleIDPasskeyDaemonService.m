@interface AKAppleIDPasskeyDaemonService
- (AKAppleIDPasskeyDaemonService)init;
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (void)appleIDPasskeyStatusWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4;
- (void)configureExportedInterface:(id)a3;
- (void)setupAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4;
- (void)unenrollAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4;
- (void)verifyAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4;
@end

@implementation AKAppleIDPasskeyDaemonService

- (void)configureExportedInterface:(id)a3
{
  v4 = a3;
  v5 = self;
  _s3akd27AppleIDPasskeyDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0();
}

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  v4 = a3;
  v5 = v11.receiver;
  v6 = [(AKAppleIDPasskeyDaemonService *)&v11 shouldAcceptNewConnection:v4];
  if (v6)
  {
    v7 = objc_allocWithZone(AKClient);
    v8 = [v7 initWithConnection:{v4, v11.receiver, v11.super_class}];

    v9 = *&v5[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client];
    *&v5[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = v8;

    v5 = v9;
  }

  else
  {
  }

  return v6;
}

- (AKAppleIDPasskeyDaemonService)init
{
  *&self->AAFService_opaque[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  return [(AKAppleIDPasskeyDaemonService *)&v3 init];
}

- (void)setupAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DE18;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029DE20;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029DE28, v15);
}

- (void)verifyAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DDF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029DE00;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029DE08, v15);
}

- (void)unenrollAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DDD8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029DDE0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029DDE8, v15);
}

- (void)appleIDPasskeyStatusWithContext:(AKAppleIDPasskeySetupContext *)a3 completion:(id)a4
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DDB0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029C6A0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

@end