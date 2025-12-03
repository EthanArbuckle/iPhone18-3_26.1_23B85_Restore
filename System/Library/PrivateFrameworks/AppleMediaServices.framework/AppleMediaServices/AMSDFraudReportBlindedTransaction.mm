@interface AMSDFraudReportBlindedTransaction
- (AMSDFraudReportBlindedTransaction)initWithTDMToken:(id)token pks:(id)pks keyID:(id)d;
@end

@implementation AMSDFraudReportBlindedTransaction

- (AMSDFraudReportBlindedTransaction)initWithTDMToken:(id)token pks:(id)pks keyID:(id)d
{
  tokenCopy = token;
  pksCopy = pks;
  dCopy = d;
  if (!tokenCopy || !pksCopy)
  {
    v23 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"tdmToken and pks must both be non-nil" userInfo:0];
    objc_exception_throw(v23);
  }

  v12 = dCopy;
  v24.receiver = self;
  v24.super_class = AMSDFraudReportBlindedTransaction;
  v13 = [(AMSDFraudReportBlindedTransaction *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_tdmToken, token);
    blindedElement = [tokenCopy blindedElement];
    v16 = [blindedElement base64EncodedStringWithOptions:0];
    blindedMessage = v14->_blindedMessage;
    v14->_blindedMessage = v16;

    v18 = [v12 base64EncodedStringWithOptions:0];
    keyID = v14->_keyID;
    v14->_keyID = v18;

    v20 = [pksCopy copy];
    pks = v14->_pks;
    v14->_pks = v20;
  }

  return v14;
}

@end