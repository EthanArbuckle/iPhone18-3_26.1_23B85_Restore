@interface APSMultiClientIdentityProvider
- (APSMultiClientIdentityProvider)init;
- (APSMultiClientIdentityProvider)initWithPushTokenInKeychain:(id)keychain legacyIdentityProvider:(id)provider delegate:(id)delegate;
- (APSMultiClientIdentityProviderDelegate)delegate;
- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey dataToSign:(id)sign time:(id)time useIDSNonceVersion:(BOOL)version nonceOut:(id *)out signatureOut:(id *)signatureOut;
- (BOOL)hasUnderlyingIdentityChanged;
- (BOOL)isReadyToFetchIdentity;
- (BOOL)supportsFetchingVMHostCerts;
- (id)errorsSinceLastSuccessfulServerPresence;
- (id)fetchVMHostCertsAndSignData:(id)data error:(id *)error;
- (id)identityAvailabilityDidChangeBlock;
- (int)flagsForPresence;
- (int64_t)currentTokenType;
- (unint64_t)identityStatus;
- (unint64_t)signatureTypeForSigning;
- (void)checkIdentityIsAvailable:(id)available hasExistingToken:(BOOL)token;
- (void)debugForceDeleteIdentity:(id)identity;
- (void)debugForceIdentitySwap;
- (void)fetchClientIdentityWithReason:(unint64_t)reason hasExistingToken:(BOOL)token completionHandler:(id)handler;
- (void)forceIdentityRefresh:(id)refresh;
- (void)noteInvalidServerPresence;
- (void)notePushTokenLost;
- (void)noteServerBagUpdate:(id)update finishedProcessingServerBagUpdateBlock:(id)block;
- (void)noteValidServerPresence;
- (void)preloadIdentity:(id)identity;
- (void)setIdentityAvailabilityDidChangeBlock:(id)block;
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

- (void)setIdentityAvailabilityDidChangeBlock:(id)block
{
  v4 = _Block_copy(block);
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
  selfCopy = self;
  sub_10001C894(v7);
}

- (APSMultiClientIdentityProvider)initWithPushTokenInKeychain:(id)keychain legacyIdentityProvider:(id)provider delegate:(id)delegate
{
  keychainCopy = keychain;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1000D4A7C(keychain, provider);
  return result;
}

- (APSMultiClientIdentityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)checkIdentityIsAvailable:(id)available hasExistingToken:(BOOL)token
{
  v6 = _Block_copy(available);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_1000D5CEC(sub_1000D8DCC, v7, token);
}

- (void)fetchClientIdentityWithReason:(unint64_t)reason hasExistingToken:(BOOL)token completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1000D5488(reason, token, 1, v11, v8);

  sub_10001C894(v10);

  sub_10001C894(v11);
}

- (void)forceIdentityRefresh:(id)refresh
{
  v4 = _Block_copy(refresh);
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

  selfCopy = self;
  sub_1000D77D0(v7, v6, &unk_10018AC38, &selRef_forceIdentityRefresh_);
  sub_10001C894(v7);
}

- (void)preloadIdentity:(id)identity
{
  v4 = _Block_copy(identity);
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

  selfCopy = self;
  sub_1000D628C(v7, v6);
  sub_10001C894(v7);
}

- (void)notePushTokenLost
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1000D66AC();
}

- (int)flagsForPresence
{
  selfCopy = self;
  v3 = sub_1000D6970();

  return v3;
}

- (unint64_t)signatureTypeForSigning
{
  selfCopy = self;
  v3 = sub_1000D68C0(&selRef_signatureTypeForSigning);

  return v3;
}

- (int64_t)currentTokenType
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1000D68C0(&selRef_isReadyToFetchIdentity);

  return v3 & 1;
}

- (BOOL)hasUnderlyingIdentityChanged
{
  selfCopy = self;
  v3 = sub_1000D68C0(&selRef_hasUnderlyingIdentityChanged);

  return v3 & 1;
}

- (BOOL)supportsFetchingVMHostCerts
{
  selfCopy = self;
  v3 = sub_1000D68C0(&selRef_supportsFetchingVMHostCerts);

  return v3 & 1;
}

- (id)fetchVMHostCertsAndSignData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_1000D6B38();
  sub_100006D20(v7, v9);

  return v10;
}

- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey dataToSign:(id)sign time:(id)time useIDSNonceVersion:(BOOL)version nonceOut:(id *)out signatureOut:(id *)signatureOut
{
  signCopy = sign;
  if (sign)
  {
    keyCopy = key;
    privateKeyCopy = privateKey;
    timeCopy = time;
    selfCopy = self;
    v20 = signCopy;
    signCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    keyCopy2 = key;
    privateKeyCopy2 = privateKey;
    timeCopy2 = time;
    selfCopy2 = self;
    v22 = 0xF000000000000000;
  }

  v27 = sub_1000D6D74(key, privateKey, signCopy, v22, time, version, out, signatureOut);
  sub_1000D89C4(signCopy, v22);

  return v27 & 1;
}

- (void)noteServerBagUpdate:(id)update finishedProcessingServerBagUpdateBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  updateCopy = update;
  selfCopy = self;
  sub_1000D8294(updateCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)noteInvalidServerPresence
{
  selfCopy = self;
  sub_1000D7548();
}

- (void)debugForceIdentitySwap
{
  selfCopy = self;
  sub_1000D57A0(5);
}

- (void)debugForceDeleteIdentity:(id)identity
{
  v4 = _Block_copy(identity);
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

  selfCopy = self;
  sub_1000D77D0(v7, v6, &unk_10018AC88, &selRef_debugForceDeleteIdentity_);
  sub_10001C894(v7);
}

@end