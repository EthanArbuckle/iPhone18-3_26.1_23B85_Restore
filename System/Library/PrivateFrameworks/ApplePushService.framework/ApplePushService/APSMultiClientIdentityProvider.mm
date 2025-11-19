@interface APSMultiClientIdentityProvider
- (APSMultiClientIdentityProvider)init;
- (APSMultiClientIdentityProvider)initWithPushTokenInKeychain:(id)a3 legacyIdentityProvider:(id)a4 delegate:(id)a5;
- (APSMultiClientIdentityProviderDelegate)delegate;
- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 dataToSign:(id)a5 time:(id)a6 useIDSNonceVersion:(BOOL)a7 nonceOut:(id *)a8 signatureOut:(id *)a9;
- (BOOL)hasUnderlyingIdentityChanged;
- (BOOL)isReadyToFetchIdentity;
- (BOOL)supportsFetchingVMHostCerts;
- (id)errorsSinceLastSuccessfulServerPresence;
- (id)fetchVMHostCertsAndSignData:(id)a3 error:(id *)a4;
- (id)identityAvailabilityDidChangeBlock;
- (int)flagsForPresence;
- (int64_t)currentTokenType;
- (unint64_t)identityStatus;
- (unint64_t)signatureTypeForSigning;
- (void)checkIdentityIsAvailable:(id)a3 hasExistingToken:(BOOL)a4;
- (void)debugForceDeleteIdentity:(id)a3;
- (void)debugForceIdentitySwap;
- (void)fetchClientIdentityWithReason:(unint64_t)a3 hasExistingToken:(BOOL)a4 completionHandler:(id)a5;
- (void)forceIdentityRefresh:(id)a3;
- (void)noteInvalidServerPresence;
- (void)notePushTokenLost;
- (void)noteServerBagUpdate:(id)a3 finishedProcessingServerBagUpdateBlock:(id)a4;
- (void)noteValidServerPresence;
- (void)preloadIdentity:(id)a3;
- (void)setIdentityAvailabilityDidChangeBlock:(id)a3;
@end

@implementation APSMultiClientIdentityProvider

- (APSMultiClientIdentityProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)identityAvailabilityDidChangeBlock
{
  v2 = (self + OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D8DD0;
    aBlock[3] = &unk_10018AE88;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIdentityAvailabilityDidChangeBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000D8DCC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_10001C894(v7);
}

- (APSMultiClientIdentityProvider)initWithPushTokenInKeychain:(id)a3 legacyIdentityProvider:(id)a4 delegate:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1000D4A7C(a3, a4);
  return result;
}

- (APSMultiClientIdentityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)checkIdentityIsAvailable:(id)a3 hasExistingToken:(BOOL)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_1000D5CEC(sub_1000D8DCC, v7, a4);
}

- (void)fetchClientIdentityWithReason:(unint64_t)a3 hasExistingToken:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = swift_allocObject();
    v10 = sub_1000D89F0;
    *(v8 + 16) = sub_1000D89F0;
    *(v8 + 24) = v9;

    v11 = sub_1000D8DA8;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = self;
  sub_1000D5488(a3, a4, 1, v11, v8);

  sub_10001C894(v10);

  sub_10001C894(v11);
}

- (void)forceIdentityRefresh:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000D8D98;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1000D77D0(v7, v6, &unk_10018AC38, &selRef_forceIdentityRefresh_);
  sub_10001C894(v7);
}

- (void)preloadIdentity:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000D89D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1000D628C(v7, v6);
  sub_10001C894(v7);
}

- (void)notePushTokenLost
{
  v2 = self;
  sub_1000D64D4();
}

- (id)errorsSinceLastSuccessfulServerPresence
{
  v3 = OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors;
  result = swift_beginAccess();
  if (*(self + v3))
  {

    sub_1000C8C30(&unk_1001BD030, &qword_10015D290);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v5.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)noteValidServerPresence
{
  v2 = self;
  sub_1000D66AC();
}

- (int)flagsForPresence
{
  v2 = self;
  v3 = sub_1000D6970();

  return v3;
}

- (unint64_t)signatureTypeForSigning
{
  v2 = self;
  v3 = sub_1000D68C0(&selRef_signatureTypeForSigning);

  return v3;
}

- (int64_t)currentTokenType
{
  v2 = self;
  v3 = sub_1000D68C0(&selRef_currentTokenType);

  return v3;
}

- (unint64_t)identityStatus
{
  if ((*(self + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8) & 1) == 0)
  {
    return *(self + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState);
  }

  __break(1u);
  return self;
}

- (BOOL)isReadyToFetchIdentity
{
  v2 = self;
  v3 = sub_1000D68C0(&selRef_isReadyToFetchIdentity);

  return v3 & 1;
}

- (BOOL)hasUnderlyingIdentityChanged
{
  v2 = self;
  v3 = sub_1000D68C0(&selRef_hasUnderlyingIdentityChanged);

  return v3 & 1;
}

- (BOOL)supportsFetchingVMHostCerts
{
  v2 = self;
  v3 = sub_1000D68C0(&selRef_supportsFetchingVMHostCerts);

  return v3 & 1;
}

- (id)fetchVMHostCertsAndSignData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_1000D6B38();
  sub_100006D20(v7, v9);

  return v10;
}

- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 dataToSign:(id)a5 time:(id)a6 useIDSNonceVersion:(BOOL)a7 nonceOut:(id *)a8 signatureOut:(id *)a9
{
  v12 = a5;
  if (a5)
  {
    v16 = a3;
    v17 = a4;
    v18 = a6;
    v19 = self;
    v20 = v12;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v23 = a3;
    v24 = a4;
    v25 = a6;
    v26 = self;
    v22 = 0xF000000000000000;
  }

  v27 = sub_1000D6D74(a3, a4, v12, v22, a6, a7, a8, a9);
  sub_1000D89C4(v12, v22);

  return v27 & 1;
}

- (void)noteServerBagUpdate:(id)a3 finishedProcessingServerBagUpdateBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1000D8294(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)noteInvalidServerPresence
{
  v2 = self;
  sub_1000D7548();
}

- (void)debugForceIdentitySwap
{
  v2 = self;
  sub_1000D57A0(5);
}

- (void)debugForceDeleteIdentity:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000D89B4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1000D77D0(v7, v6, &unk_10018AC88, &selRef_debugForceDeleteIdentity_);
  sub_10001C894(v7);
}

@end