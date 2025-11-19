@interface ASPublicKeyCredentialBase
- (ASPublicKeyCredentialBase)initWithCoder:(id)a3;
- (ASPublicKeyCredentialBase)initWithCredentialID:(id)a3 rawClientDataJSON:(id)a4 attachment:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPublicKeyCredentialBase

- (ASPublicKeyCredentialBase)initWithCredentialID:(id)a3 rawClientDataJSON:(id)a4 attachment:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = ASPublicKeyCredentialBase;
  v10 = [(ASPublicKeyCredentialBase *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    credentialID = v10->_credentialID;
    v10->_credentialID = v11;

    v13 = [v9 copy];
    rawClientDataJSON = v10->_rawClientDataJSON;
    v10->_rawClientDataJSON = v13;

    v10->_attachment = a5;
    v15 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  rawClientDataJSON = self->_rawClientDataJSON;
  credentialID = self->_credentialID;
  attachment = self->_attachment;

  return [v4 initWithCredentialID:credentialID rawClientDataJSON:rawClientDataJSON attachment:attachment];
}

- (void)encodeWithCoder:(id)a3
{
  credentialID = self->_credentialID;
  v5 = a3;
  [v5 encodeObject:credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_rawClientDataJSON forKey:@"rawClientDataJSON"];
  [v5 encodeInteger:self->_attachment forKey:@"attachment"];
}

- (ASPublicKeyCredentialBase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v7 = [v4 decodeIntegerForKey:@"attachment"];

  v8 = [(ASPublicKeyCredentialBase *)self initWithCredentialID:v5 rawClientDataJSON:v6 attachment:v7];
  return v8;
}

@end