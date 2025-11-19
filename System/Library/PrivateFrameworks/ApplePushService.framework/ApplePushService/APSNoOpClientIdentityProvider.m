@interface APSNoOpClientIdentityProvider
- (APSNoOpClientIdentityProvider)init;
- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 dataToSign:(id)a5 time:(id)a6 useIDSNonceVersion:(BOOL)a7 nonceOut:(id *)a8 signatureOut:(id *)a9;
- (id)errorsSinceLastSuccessfulServerPresence;
- (id)fetchVMHostCertsAndSignData:(id)a3 error:(id *)a4;
- (void)checkIdentityIsAvailable:(id)a3 hasExistingToken:(BOOL)a4;
- (void)debugForceDeleteIdentity:(id)a3;
- (void)fetchClientIdentityWithReason:(unint64_t)a3 hasExistingToken:(BOOL)a4 completionHandler:(id)a5;
- (void)forceIdentityRefresh:(id)a3;
- (void)noteServerBagUpdate:(id)a3 finishedProcessingServerBagUpdateBlock:(id)a4;
- (void)preloadIdentity:(id)a3;
- (void)setIdentityAvailabilityDidChangeBlock:(id)a3;
@end

@implementation APSNoOpClientIdentityProvider

- (APSNoOpClientIdentityProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NoOpClientIdentityProvider();
  return [(APSNoOpClientIdentityProvider *)&v3 init];
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
  v5 = sub_1000C8C30(&unk_1001BCA60, &qword_10015D240);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10015D2C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10015D2C8;
  v14[5] = v13;
  v15 = self;
  sub_1000C8384(0, 0, v9, &unk_10015D2D0, v14);
}

- (void)preloadIdentity:(id)a3
{
  v5 = sub_1000C8C30(&unk_1001BCA60, &qword_10015D240);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10015D2A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10015D2A8;
  v14[5] = v13;
  v15 = self;
  sub_1000C8384(0, 0, v9, &unk_10015D2B0, v14);
}

- (id)errorsSinceLastSuccessfulServerPresence
{
  sub_1000C8C30(&unk_1001BD030, &qword_10015D290);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
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

- (void)setIdentityAvailabilityDidChangeBlock:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {

    _Block_release(v3);
  }
}

- (void)debugForceDeleteIdentity:(id)a3
{
  v5 = sub_1000C8C30(&unk_1001BCA60, &qword_10015D240);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10015D250;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10015D260;
  v14[5] = v13;
  v15 = self;
  sub_1000C8384(0, 0, v9, &unk_10015D270, v14);
}

@end