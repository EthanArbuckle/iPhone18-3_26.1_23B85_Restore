@interface ASPublicKeyCredentialBase
- (ASPublicKeyCredentialBase)initWithCoder:(id)coder;
- (ASPublicKeyCredentialBase)initWithCredentialID:(id)d rawClientDataJSON:(id)n attachment:(int64_t)attachment;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPublicKeyCredentialBase

- (ASPublicKeyCredentialBase)initWithCredentialID:(id)d rawClientDataJSON:(id)n attachment:(int64_t)attachment
{
  dCopy = d;
  nCopy = n;
  v17.receiver = self;
  v17.super_class = ASPublicKeyCredentialBase;
  v10 = [(ASPublicKeyCredentialBase *)&v17 init];
  if (v10)
  {
    v11 = [dCopy copy];
    credentialID = v10->_credentialID;
    v10->_credentialID = v11;

    v13 = [nCopy copy];
    rawClientDataJSON = v10->_rawClientDataJSON;
    v10->_rawClientDataJSON = v13;

    v10->_attachment = attachment;
    v15 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  rawClientDataJSON = self->_rawClientDataJSON;
  credentialID = self->_credentialID;
  attachment = self->_attachment;

  return [v4 initWithCredentialID:credentialID rawClientDataJSON:rawClientDataJSON attachment:attachment];
}

- (void)encodeWithCoder:(id)coder
{
  credentialID = self->_credentialID;
  coderCopy = coder;
  [coderCopy encodeObject:credentialID forKey:@"credentialID"];
  [coderCopy encodeObject:self->_rawClientDataJSON forKey:@"rawClientDataJSON"];
  [coderCopy encodeInteger:self->_attachment forKey:@"attachment"];
}

- (ASPublicKeyCredentialBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v7 = [coderCopy decodeIntegerForKey:@"attachment"];

  v8 = [(ASPublicKeyCredentialBase *)self initWithCredentialID:v5 rawClientDataJSON:v6 attachment:v7];
  return v8;
}

@end