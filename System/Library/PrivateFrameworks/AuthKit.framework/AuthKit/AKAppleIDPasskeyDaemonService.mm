@interface AKAppleIDPasskeyDaemonService
- (AKAppleIDPasskeyDaemonService)init;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)appleIDPasskeyStatusWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
- (void)configureExportedInterface:(id)interface;
- (void)setupAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
- (void)unenrollAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
- (void)verifyAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
@end

@implementation AKAppleIDPasskeyDaemonService

- (void)configureExportedInterface:(id)interface
{
  interfaceCopy = interface;
  selfCopy = self;
  _s3akd27AppleIDPasskeyDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0();
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  connectionCopy = connection;
  v5 = v11.receiver;
  v6 = [(AKAppleIDPasskeyDaemonService *)&v11 shouldAcceptNewConnection:connectionCopy];
  if (v6)
  {
    v7 = objc_allocWithZone(AKClient);
    v8 = [v7 initWithConnection:{connectionCopy, v11.receiver, v11.super_class}];

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

- (void)setupAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
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
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029DE28, v15);
}

- (void)verifyAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
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
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029DE08, v15);
}

- (void)unenrollAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
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
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029DDE8, v15);
}

- (void)appleIDPasskeyStatusWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
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
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029CEE0, v15);
}

@end