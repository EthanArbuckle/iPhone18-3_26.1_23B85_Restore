@interface AMSDFraudReportBlindedTransaction
- (AMSDFraudReportBlindedTransaction)initWithTDMToken:(id)a3 pks:(id)a4 keyID:(id)a5;
@end

@implementation AMSDFraudReportBlindedTransaction

- (AMSDFraudReportBlindedTransaction)initWithTDMToken:(id)a3 pks:(id)a4 keyID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 || !v10)
  {
    v23 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"tdmToken and pks must both be non-nil" userInfo:0];
    objc_exception_throw(v23);
  }

  v12 = v11;
  v24.receiver = self;
  v24.super_class = AMSDFraudReportBlindedTransaction;
  v13 = [(AMSDFraudReportBlindedTransaction *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_tdmToken, a3);
    v15 = [v9 blindedElement];
    v16 = [v15 base64EncodedStringWithOptions:0];
    blindedMessage = v14->_blindedMessage;
    v14->_blindedMessage = v16;

    v18 = [v12 base64EncodedStringWithOptions:0];
    keyID = v14->_keyID;
    v14->_keyID = v18;

    v20 = [v10 copy];
    pks = v14->_pks;
    v14->_pks = v20;
  }

  return v14;
}

@end