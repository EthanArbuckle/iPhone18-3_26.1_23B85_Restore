@interface ASPasskeyAssertionCredential
+ (ASPasskeyAssertionCredential)credentialWithUserHandle:(NSData *)userHandle relyingParty:(NSString *)relyingParty signature:(NSData *)signature clientDataHash:(NSData *)clientDataHash authenticatorData:(NSData *)authenticatorData credentialID:(NSData *)credentialID;
- (ASPasskeyAssertionCredential)initWithCoder:(id)a3;
- (ASPasskeyAssertionCredential)initWithUserHandle:(id)a3 relyingParty:(id)a4 signature:(id)a5 clientDataHash:(id)a6 authenticatorData:(id)a7 credentialID:(id)a8 extensionOutput:(id)a9;
- (BOOL)_validateWithError:(id *)a3;
- (_TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs)coreExtensions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyAssertionCredential

- (ASPasskeyAssertionCredential)initWithUserHandle:(id)a3 relyingParty:(id)a4 signature:(id)a5 clientDataHash:(id)a6 authenticatorData:(id)a7 credentialID:(id)a8 extensionOutput:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v39.receiver = self;
  v39.super_class = ASPasskeyAssertionCredential;
  v22 = [(ASPasskeyAssertionCredential *)&v39 init];
  if (v22)
  {
    v23 = [v15 copy];
    userHandle = v22->_userHandle;
    v22->_userHandle = v23;

    v25 = [v16 copy];
    relyingParty = v22->_relyingParty;
    v22->_relyingParty = v25;

    v27 = [v17 copy];
    signature = v22->_signature;
    v22->_signature = v27;

    v29 = [v18 copy];
    clientDataHash = v22->_clientDataHash;
    v22->_clientDataHash = v29;

    v31 = [v19 copy];
    authenticatorData = v22->_authenticatorData;
    v22->_authenticatorData = v31;

    v33 = [v20 copy];
    credentialID = v22->_credentialID;
    v22->_credentialID = v33;

    v35 = [v21 copy];
    extensionOutput = v22->_extensionOutput;
    v22->_extensionOutput = v35;

    v37 = v22;
  }

  return v22;
}

+ (ASPasskeyAssertionCredential)credentialWithUserHandle:(NSData *)userHandle relyingParty:(NSString *)relyingParty signature:(NSData *)signature clientDataHash:(NSData *)clientDataHash authenticatorData:(NSData *)authenticatorData credentialID:(NSData *)credentialID
{
  v14 = credentialID;
  v15 = authenticatorData;
  v16 = clientDataHash;
  v17 = signature;
  v18 = relyingParty;
  v19 = userHandle;
  v20 = [[a1 alloc] initWithUserHandle:v19 relyingParty:v18 signature:v17 clientDataHash:v16 authenticatorData:v15 credentialID:v14];

  return v20;
}

- (ASPasskeyAssertionCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticatorData"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionOutput"];

  v12 = [(ASPasskeyAssertionCredential *)self initWithUserHandle:v5 relyingParty:v6 signature:v7 clientDataHash:v8 authenticatorData:v9 credentialID:v10 extensionOutput:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  userHandle = self->_userHandle;
  v5 = a3;
  [v5 encodeObject:userHandle forKey:@"userHandle"];
  [v5 encodeObject:self->_relyingParty forKey:@"relyingParty"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [v5 encodeObject:self->_authenticatorData forKey:@"authenticatorData"];
  [v5 encodeObject:self->_credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_extensionOutput forKey:@"extensionOutput"];
}

- (BOOL)_validateWithError:(id *)a3
{
  v3 = self;
  sub_1B1D275F4();

  return 1;
}

- (_TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs)coreExtensions
{
  v2 = [(ASPasskeyAssertionCredential *)self extensionOutput];
  if (v2)
  {
    v3 = v2;
    v4 = *(&v2->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end