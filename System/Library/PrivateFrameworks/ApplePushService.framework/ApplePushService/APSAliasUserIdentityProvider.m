@interface APSAliasUserIdentityProvider
- (APSAliasUserIdentityProvider)init;
- (APSAliasUserIdentityProvider)initWithMainUserIdentityProvider:(id)a3;
- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 dataToSign:(id)a5 time:(id)a6 useIDSNonceVersion:(BOOL)a7 nonceOut:(id *)a8 signatureOut:(id *)a9;
- (id)errorsSinceLastSuccessfulServerPresence;
- (id)fetchVMHostCertsAndSignData:(id)a3 error:(id *)a4;
- (void)checkIdentityIsAvailable:(id)a3 hasExistingToken:(BOOL)a4;
- (void)debugForceDeleteIdentity:(id)a3;
- (void)fetchClientIdentityWithReason:(unint64_t)a3 hasExistingToken:(BOOL)a4 completionHandler:(id)a5;
- (void)forceIdentityRefresh:(id)a3;
- (void)noteInvalidServerPresence;
- (void)noteServerBagUpdate:(id)a3 finishedProcessingServerBagUpdateBlock:(id)a4;
- (void)preloadIdentity:(id)a3;
- (void)setIdentityAvailabilityDidChangeBlock:(id)a3;
@end

@implementation APSAliasUserIdentityProvider

- (APSAliasUserIdentityProvider)initWithMainUserIdentityProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AliasUserIdentityProvider();
  swift_unknownObjectRetain();
  return [(APSAliasUserIdentityProvider *)&v4 init];
}

- (APSAliasUserIdentityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)checkIdentityIsAvailable:(id)a3 hasExistingToken:(BOOL)a4
{
  v4 = _Block_copy(a3);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)noteServerBagUpdate:(id)a3 finishedProcessingServerBagUpdateBlock:(id)a4
{
  v4 = _Block_copy(a4);
  v4[2]();

  _Block_release(v4);
}

- (void)fetchClientIdentityWithReason:(unint64_t)a3 hasExistingToken:(BOOL)a4 completionHandler:(id)a5
{
  v5 = _Block_copy(a5);
  if (v5)
  {
    v6 = v5;
    _Block_copy(v5);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v6)[2](v6, 0, isa, 0);

    _Block_release(v6);

    _Block_release(v6);
  }
}

- (void)forceIdentityRefresh:(id)a3
{
  v5 = (*(*(sub_1000C8C30(&unk_1001BCA60, &qword_10015D240) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10015D018;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10015D020;
  v12[5] = v11;
  v13 = self;
  sub_1000C8384(0, 0, v7, &unk_10015D028, v12);
}

- (void)preloadIdentity:(id)a3
{
  v5 = (*(*(sub_1000C8C30(&unk_1001BCA60, &qword_10015D240) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10015CFF8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10015D000;
  v12[5] = v11;
  v13 = self;
  sub_1000C8384(0, 0, v7, &unk_10015D008, v12);
}

- (id)errorsSinceLastSuccessfulServerPresence
{
  sub_1000C8C30(&unk_1001BD030, &qword_10015D290);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)noteInvalidServerPresence
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider);
  if (v2)
  {
    [v2 noteInvalidServerPresence];
  }

  else
  {
    __break(1u);
  }
}

- (void)setIdentityAvailabilityDidChangeBlock:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {

    _Block_release(v3);
  }
}

- (id)fetchVMHostCertsAndSignData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_1000C8AD0();
  sub_100006D20(v7, v9);

  return v10;
}

- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 dataToSign:(id)a5 time:(id)a6 useIDSNonceVersion:(BOOL)a7 nonceOut:(id *)a8 signatureOut:(id *)a9
{
  if (a5)
  {
    v9 = a5;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006D20(v10, v11);
  }

  return 0;
}

- (void)debugForceDeleteIdentity:(id)a3
{
  v5 = (*(*(sub_1000C8C30(&unk_1001BCA60, &qword_10015D240) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10015CFA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10015CFB8;
  v12[5] = v11;
  v13 = self;
  sub_1000C8384(0, 0, v7, &unk_10015CFC8, v12);
}

@end