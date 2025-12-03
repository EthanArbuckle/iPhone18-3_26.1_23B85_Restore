@interface AKSignInWithAppleDaemonService
- (AKSignInWithAppleDaemonService)init;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)cancelAppIconRequestForClientID:(NSString *)d completion:(id)completion;
- (void)configureExportedInterface:(id)interface;
- (void)deleteAllItemsFromDepartedGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)fetchAccountsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)fetchAppIconForClientID:(NSString *)d iconSize:(CGSize)size completion:(id)completion;
- (void)fetchEULAForClientID:(NSString *)d completion:(id)completion;
- (void)fetchSharedGroupsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)fetchSignInWithApplePrivateEmailCountWithCompletion:(id)completion;
- (void)leaveGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)participantRemovedWithContext:(AKSignInWithAppleRequestContext *)context participantID:(NSString *)d completion:(id)completion;
- (void)performHealthCheckWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)performTokenRotationWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)revokeAcccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)shareAccountWithContext:(AKSignInWithAppleRequestContext *)context withGroup:(AKSignInWithAppleAccountShareInfo *)group completion:(id)completion;
- (void)unshareAccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
@end

@implementation AKSignInWithAppleDaemonService

- (void)configureExportedInterface:(id)interface
{
  interfaceCopy = interface;
  selfCopy = self;
  _s3akd28SignInWithAppleDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0();
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for SignInWithAppleDaemonService();
  connectionCopy = connection;
  v5 = v11.receiver;
  v6 = [(AKSignInWithAppleDaemonService *)&v11 shouldAcceptNewConnection:connectionCopy];
  if (v6)
  {
    v7 = objc_allocWithZone(AKClient);
    v8 = [v7 initWithConnection:{connectionCopy, v11.receiver, v11.super_class}];

    v9 = *&v5[OBJC_IVAR___AKSignInWithAppleDaemonService_client];
    *&v5[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = v8;

    v5 = v9;
  }

  else
  {
  }

  return v6;
}

- (AKSignInWithAppleDaemonService)init
{
  *&self->AAFService_opaque[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SignInWithAppleDaemonService();
  return [(AKSignInWithAppleDaemonService *)&v3 init];
}

- (void)fetchAccountsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029FA38;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029FA40;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029FA48, v15);
}

- (void)fetchEULAForClientID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029FA18;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029FA20;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029FA28, v15);
}

- (void)revokeAcccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029F9F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029FA00;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029FA08, v15);
}

- (void)fetchAppIconForClientID:(NSString *)d iconSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v10 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 2) = d;
  v15[3] = width;
  v15[4] = height;
  *(v15 + 5) = v14;
  *(v15 + 6) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029F9D8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10029F9E0;
  v18[5] = v17;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v13, &unk_10029F9E8, v18);
}

- (void)cancelAppIconRequestForClientID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F9B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F9C0;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F9C8, v15);
}

- (void)shareAccountWithContext:(AKSignInWithAppleRequestContext *)context withGroup:(AKSignInWithAppleAccountShareInfo *)group completion:(id)completion
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = context;
  v14[3] = group;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029F998;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029F9A0;
  v17[5] = v16;
  contextCopy = context;
  groupCopy = group;
  selfCopy = self;
  sub_100244978(0, 0, v12, &unk_10029F9A8, v17);
}

- (void)unshareAccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029F978;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F980;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F988, v15);
}

- (void)leaveGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029F958;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F960;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F968, v15);
}

- (void)deleteAllItemsFromDepartedGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029F938;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F940;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F948, v15);
}

- (void)participantRemovedWithContext:(AKSignInWithAppleRequestContext *)context participantID:(NSString *)d completion:(id)completion
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = context;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029F918;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029F920;
  v17[5] = v16;
  contextCopy = context;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v12, &unk_10029F928, v17);
}

- (void)fetchSharedGroupsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029F8F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F900;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F908, v15);
}

- (void)performTokenRotationWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029F8D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F8E0;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v10, &unk_10029F8E8, v15);
}

- (void)performHealthCheckWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
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
  v14[4] = &unk_10029F8C8;
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

- (void)fetchSignInWithApplePrivateEmailCountWithCompletion:(id)completion
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F880;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029C6A0;
  v13[5] = v12;
  selfCopy = self;
  sub_100244978(0, 0, v8, &unk_10029CEE0, v13);
}

@end