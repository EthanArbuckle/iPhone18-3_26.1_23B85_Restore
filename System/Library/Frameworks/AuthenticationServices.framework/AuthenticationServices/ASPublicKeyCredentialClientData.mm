@interface ASPublicKeyCredentialClientData
- (ASPublicKeyCredentialClientData)initWithChallenge:(NSData *)challenge origin:(NSString *)origin;
- (id)jsonForOperationType:(unint64_t)type;
@end

@implementation ASPublicKeyCredentialClientData

- (ASPublicKeyCredentialClientData)initWithChallenge:(NSData *)challenge origin:(NSString *)origin
{
  v6 = challenge;
  v7 = origin;
  v15.receiver = self;
  v15.super_class = ASPublicKeyCredentialClientData;
  v8 = [(ASPublicKeyCredentialClientData *)&v15 init];
  if (v8)
  {
    v9 = [(NSData *)v6 copy];
    v10 = v8->_challenge;
    v8->_challenge = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_origin;
    v8->_origin = v11;

    v13 = v8;
  }

  return v8;
}

- (id)jsonForOperationType:(unint64_t)type
{
  selfCopy = self;
  v5 = sub_1B1D2C0CC(type);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v5, v7);
    v8 = v9;
  }

  return v8;
}

@end