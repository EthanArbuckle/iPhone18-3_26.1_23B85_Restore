@interface APSPushRecord
- (APSPushRecord)initWithToken:(id)token timestamp:(id)timestamp payloadHash:(id)hash;
@end

@implementation APSPushRecord

- (APSPushRecord)initWithToken:(id)token timestamp:(id)timestamp payloadHash:(id)hash
{
  tokenCopy = token;
  timestampCopy = timestamp;
  hashCopy = hash;
  v15.receiver = self;
  v15.super_class = APSPushRecord;
  v12 = [(APSPushRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_token, token);
    objc_storeStrong(&v13->_timestamp, timestamp);
    objc_storeStrong(&v13->_payloadHash, hash);
  }

  return v13;
}

@end