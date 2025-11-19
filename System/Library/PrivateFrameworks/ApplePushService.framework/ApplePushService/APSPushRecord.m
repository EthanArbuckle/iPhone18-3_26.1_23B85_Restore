@interface APSPushRecord
- (APSPushRecord)initWithToken:(id)a3 timestamp:(id)a4 payloadHash:(id)a5;
@end

@implementation APSPushRecord

- (APSPushRecord)initWithToken:(id)a3 timestamp:(id)a4 payloadHash:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = APSPushRecord;
  v12 = [(APSPushRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_token, a3);
    objc_storeStrong(&v13->_timestamp, a4);
    objc_storeStrong(&v13->_payloadHash, a5);
  }

  return v13;
}

@end