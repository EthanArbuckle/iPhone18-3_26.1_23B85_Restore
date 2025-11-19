@interface OctaneXPCService
- (void)buyProductWithConfiguration:(id)a3 withReply:(id)a4;
- (void)completePriceConsentRequestWithResponse:(BOOL)a3 transactionIdentifier:(unint64_t)a4 forBundleID:(NSString *)a5 withReply:(id)a6;
- (void)expireOrRenewSubscriptionWithIdentifier:(id)a3 expire:(BOOL)a4 forBundleID:(id)a5 withReply:(id)a6;
- (void)generateSKANPostbackSignature:(id)a3 withReply:(id)a4;
- (void)getPortWithReply:(id)a3;
- (void)messageOfTypeForBundleID:(id)a3 messageReason:(id)a4 withReply:(id)a5;
- (void)registerForEventOfType:(int64_t)a3 filterData:(id)a4 withReply:(id)a5;
- (void)setStringValue:(id)a3 forIdentifier:(unint64_t)a4 forBundleID:(id)a5 withReply:(id)a6;
- (void)startPriceIncreaseForTransactionID:(unint64_t)a3 bundleID:(NSString *)a4 needsConsent:(BOOL)a5 withReply:(id)a6;
- (void)unregisterForEventWithIdentifier:(id)a3;
- (void)validateSKAdNetworkSignature:(id)a3 withPublicKey:(id)a4 source:(int64_t)a5 andParameters:(id)a6 forBundleID:(id)a7 withReply:(id)a8;
@end

@implementation OctaneXPCService

- (void)expireOrRenewSubscriptionWithIdentifier:(id)a3 expire:(BOOL)a4 forBundleID:(id)a5 withReply:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_1001F6B58();
  v11 = v10;
  v12 = sub_1001F6B58();
  v14 = v13;
  _Block_copy(v8);
  v15 = self;
  sub_100182BF0(v9, v11, a4, v12, v14, v15, v8);
  _Block_release(v8);
}

- (void)getPortWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100182D6C(v5, v4);
  _Block_release(v4);
}

- (void)setStringValue:(id)a3 forIdentifier:(unint64_t)a4 forBundleID:(id)a5 withReply:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_1001F6B58();
  v11 = v10;
  v12 = sub_1001F6B58();
  v14 = v13;
  _Block_copy(v8);
  v15 = self;
  sub_100183594(v9, v11, a4, v12, v14, v15, v8);
  _Block_release(v8);
}

- (void)registerForEventOfType:(int64_t)a3 filterData:(id)a4 withReply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a4;
  v14 = self;
  v10 = sub_1001F63C8();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  sub_100183758(a3, v10, v12, sub_10018D90C, v13);

  sub_10003A380(v10, v12);
}

- (void)unregisterForEventWithIdentifier:(id)a3
{
  v4 = sub_1001F6578();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F6558();
  v9 = self;
  sub_100183C90(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)messageOfTypeForBundleID:(id)a3 messageReason:(id)a4 withReply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1001F6B58();
  v10 = v9;
  _Block_copy(v7);
  v11 = a4;
  v12 = self;
  sub_1001841A4(v8, v10, v11, v12, v7);
  _Block_release(v7);
}

- (void)startPriceIncreaseForTransactionID:(unint64_t)a3 bundleID:(NSString *)a4 needsConsent:(BOOL)a5 withReply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  v12 = a4;
  v13 = self;

  sub_1001849F4(&unk_100213B78, v11);
}

- (void)completePriceConsentRequestWithResponse:(BOOL)a3 transactionIdentifier:(unint64_t)a4 forBundleID:(NSString *)a5 withReply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  v12 = a5;
  v13 = self;

  sub_1001849F4(&unk_100213B48, v11);
}

- (void)validateSKAdNetworkSignature:(id)a3 withPublicKey:(id)a4 source:(int64_t)a5 andParameters:(id)a6 forBundleID:(id)a7 withReply:(id)a8
{
  v10 = _Block_copy(a8);
  v11 = sub_1001F6B58();
  v13 = v12;
  v14 = sub_1001F6B58();
  v16 = v15;
  v17 = sub_1001F6998();
  v18 = sub_1001F6B58();
  v20 = v19;
  _Block_copy(v10);
  v21 = self;
  sub_100184D48(v11, v13, v14, v16, a5, v17, v18, v20, v21, v10);
  _Block_release(v10);
}

- (void)generateSKANPostbackSignature:(id)a3 withReply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1001F6998();
  _Block_copy(v5);
  v7 = self;
  sub_100184F54(v6, v7, v5);
  _Block_release(v5);
}

- (void)buyProductWithConfiguration:(id)a3 withReply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_1001F63C8();
  v10 = v9;

  _Block_copy(v6);
  sub_1001853A4(v8, v10, v11, v6);
  _Block_release(v6);
  sub_10003A380(v8, v10);
}

@end