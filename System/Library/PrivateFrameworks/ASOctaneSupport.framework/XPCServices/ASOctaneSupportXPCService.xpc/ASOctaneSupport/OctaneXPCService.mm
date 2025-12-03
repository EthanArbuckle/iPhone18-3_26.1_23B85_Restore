@interface OctaneXPCService
- (void)buyProductWithConfiguration:(id)configuration withReply:(id)reply;
- (void)completePriceConsentRequestWithResponse:(BOOL)response transactionIdentifier:(unint64_t)identifier forBundleID:(NSString *)d withReply:(id)reply;
- (void)expireOrRenewSubscriptionWithIdentifier:(id)identifier expire:(BOOL)expire forBundleID:(id)d withReply:(id)reply;
- (void)generateSKANPostbackSignature:(id)signature withReply:(id)reply;
- (void)getPortWithReply:(id)reply;
- (void)messageOfTypeForBundleID:(id)d messageReason:(id)reason withReply:(id)reply;
- (void)registerForEventOfType:(int64_t)type filterData:(id)data withReply:(id)reply;
- (void)setStringValue:(id)value forIdentifier:(unint64_t)identifier forBundleID:(id)d withReply:(id)reply;
- (void)startPriceIncreaseForTransactionID:(unint64_t)d bundleID:(NSString *)iD needsConsent:(BOOL)consent withReply:(id)reply;
- (void)unregisterForEventWithIdentifier:(id)identifier;
- (void)validateSKAdNetworkSignature:(id)signature withPublicKey:(id)key source:(int64_t)source andParameters:(id)parameters forBundleID:(id)d withReply:(id)reply;
@end

@implementation OctaneXPCService

- (void)expireOrRenewSubscriptionWithIdentifier:(id)identifier expire:(BOOL)expire forBundleID:(id)d withReply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = sub_1001F6B58();
  v11 = v10;
  v12 = sub_1001F6B58();
  v14 = v13;
  _Block_copy(v8);
  selfCopy = self;
  sub_100182BF0(v9, v11, expire, v12, v14, selfCopy, v8);
  _Block_release(v8);
}

- (void)getPortWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_100182D6C(selfCopy, v4);
  _Block_release(v4);
}

- (void)setStringValue:(id)value forIdentifier:(unint64_t)identifier forBundleID:(id)d withReply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = sub_1001F6B58();
  v11 = v10;
  v12 = sub_1001F6B58();
  v14 = v13;
  _Block_copy(v8);
  selfCopy = self;
  sub_100183594(v9, v11, identifier, v12, v14, selfCopy, v8);
  _Block_release(v8);
}

- (void)registerForEventOfType:(int64_t)type filterData:(id)data withReply:(id)reply
{
  v8 = _Block_copy(reply);
  dataCopy = data;
  selfCopy = self;
  v10 = sub_1001F63C8();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  sub_100183758(type, v10, v12, sub_10018D90C, v13);

  sub_10003A380(v10, v12);
}

- (void)unregisterForEventWithIdentifier:(id)identifier
{
  v4 = sub_1001F6578();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F6558();
  selfCopy = self;
  sub_100183C90(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)messageOfTypeForBundleID:(id)d messageReason:(id)reason withReply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = sub_1001F6B58();
  v10 = v9;
  _Block_copy(v7);
  reasonCopy = reason;
  selfCopy = self;
  sub_1001841A4(v8, v10, reasonCopy, selfCopy, v7);
  _Block_release(v7);
}

- (void)startPriceIncreaseForTransactionID:(unint64_t)d bundleID:(NSString *)iD needsConsent:(BOOL)consent withReply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = d;
  *(v11 + 24) = iD;
  *(v11 + 32) = consent;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  iDCopy = iD;
  selfCopy = self;

  sub_1001849F4(&unk_100213B78, v11);
}

- (void)completePriceConsentRequestWithResponse:(BOOL)response transactionIdentifier:(unint64_t)identifier forBundleID:(NSString *)d withReply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = response;
  *(v11 + 24) = identifier;
  *(v11 + 32) = d;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  dCopy = d;
  selfCopy = self;

  sub_1001849F4(&unk_100213B48, v11);
}

- (void)validateSKAdNetworkSignature:(id)signature withPublicKey:(id)key source:(int64_t)source andParameters:(id)parameters forBundleID:(id)d withReply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = sub_1001F6B58();
  v13 = v12;
  v14 = sub_1001F6B58();
  v16 = v15;
  v17 = sub_1001F6998();
  v18 = sub_1001F6B58();
  v20 = v19;
  _Block_copy(v10);
  selfCopy = self;
  sub_100184D48(v11, v13, v14, v16, source, v17, v18, v20, selfCopy, v10);
  _Block_release(v10);
}

- (void)generateSKANPostbackSignature:(id)signature withReply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_1001F6998();
  _Block_copy(v5);
  selfCopy = self;
  sub_100184F54(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)buyProductWithConfiguration:(id)configuration withReply:(id)reply
{
  v6 = _Block_copy(reply);
  configurationCopy = configuration;
  selfCopy = self;
  v8 = sub_1001F63C8();
  v10 = v9;

  _Block_copy(v6);
  sub_1001853A4(v8, v10, selfCopy, v6);
  _Block_release(v6);
  sub_10003A380(v8, v10);
}

@end