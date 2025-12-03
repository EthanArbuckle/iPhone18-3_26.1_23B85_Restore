@interface TKSmartCardToken
- (TKSmartCardToken)initWithSmartCard:(TKSmartCard *)smartCard AID:(NSData *)AID instanceID:(NSString *)instanceID tokenDriver:(TKSmartCardTokenDriver *)tokenDriver;
@end

@implementation TKSmartCardToken

- (TKSmartCardToken)initWithSmartCard:(TKSmartCard *)smartCard AID:(NSData *)AID instanceID:(NSString *)instanceID tokenDriver:(TKSmartCardTokenDriver *)tokenDriver
{
  v10 = smartCard;
  v11 = AID;
  v20.receiver = self;
  v20.super_class = TKSmartCardToken;
  v12 = [(TKToken *)&v20 initWithTokenDriver:tokenDriver instanceID:instanceID];
  if (v12)
  {
    slot = [(TKSmartCard *)v10 slot];
    makeSmartCard = [slot makeSmartCard];
    v15 = v12->_smartCard;
    v12->_smartCard = makeSmartCard;

    objc_storeStrong(&v12->_AID, AID);
    v16 = [TKTokenKeychainContents alloc];
    configuration = [(TKToken *)v12 configuration];
    v18 = [(TKTokenKeychainContents *)v16 initWithConfiguration:configuration];
    [(TKToken *)v12 setKeychainContents:v18];

    [(TKSmartCardToken *)v12 setProprietaryCardUsage:0];
  }

  return v12;
}

@end