@interface ASPasskeyRegistrationCredential
+ (ASPasskeyRegistrationCredential)credentialWithRelyingParty:(NSString *)relyingParty clientDataHash:(NSData *)clientDataHash credentialID:(NSData *)credentialID attestationObject:(NSData *)attestationObject;
+ (NSArray)_defaultTransports;
- (ASPasskeyRegistrationCredential)initWithCoder:(id)a3;
- (ASPasskeyRegistrationCredential)initWithRelyingParty:(NSString *)relyingParty clientDataHash:(NSData *)clientDataHash credentialID:(NSData *)credentialID attestationObject:(NSData *)attestationObject;
- (ASPasskeyRegistrationCredential)initWithRelyingParty:(id)a3 clientDataHash:(id)a4 credentialID:(id)a5 attestationObject:(id)a6 extensionOutput:(id)a7;
- (BOOL)_validateWithError:(id *)a3;
- (_TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs)coreExtensions;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyRegistrationCredential

- (ASPasskeyRegistrationCredential)initWithRelyingParty:(NSString *)relyingParty clientDataHash:(NSData *)clientDataHash credentialID:(NSData *)credentialID attestationObject:(NSData *)attestationObject
{
  v10 = relyingParty;
  v11 = clientDataHash;
  v12 = credentialID;
  v13 = attestationObject;
  v25.receiver = self;
  v25.super_class = ASPasskeyRegistrationCredential;
  v14 = [(ASPasskeyRegistrationCredential *)&v25 init];
  if (v14)
  {
    v15 = [(NSString *)v10 copy];
    v16 = v14->_relyingParty;
    v14->_relyingParty = v15;

    v17 = [(NSData *)v11 copy];
    v18 = v14->_clientDataHash;
    v14->_clientDataHash = v17;

    v19 = [(NSData *)v12 copy];
    v20 = v14->_credentialID;
    v14->_credentialID = v19;

    v21 = [(NSData *)v13 copy];
    v22 = v14->_attestationObject;
    v14->_attestationObject = v21;

    v23 = v14;
  }

  return v14;
}

- (ASPasskeyRegistrationCredential)initWithRelyingParty:(id)a3 clientDataHash:(id)a4 credentialID:(id)a5 attestationObject:(id)a6 extensionOutput:(id)a7
{
  v12 = a7;
  v13 = [(ASPasskeyRegistrationCredential *)self initWithRelyingParty:a3 clientDataHash:a4 credentialID:a5 attestationObject:a6];
  if (v13)
  {
    v14 = [v12 copy];
    extensionOutput = v13->_extensionOutput;
    v13->_extensionOutput = v14;

    v16 = v13;
  }

  return v13;
}

+ (ASPasskeyRegistrationCredential)credentialWithRelyingParty:(NSString *)relyingParty clientDataHash:(NSData *)clientDataHash credentialID:(NSData *)credentialID attestationObject:(NSData *)attestationObject
{
  v10 = attestationObject;
  v11 = credentialID;
  v12 = clientDataHash;
  v13 = relyingParty;
  v14 = [[a1 alloc] initWithRelyingParty:v13 clientDataHash:v12 credentialID:v11 attestationObject:v10];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  relyingParty = self->_relyingParty;
  clientDataHash = self->_clientDataHash;
  credentialID = self->_credentialID;
  attestationObject = self->_attestationObject;

  return [v4 initWithRelyingParty:relyingParty clientDataHash:clientDataHash credentialID:credentialID attestationObject:attestationObject];
}

- (void)encodeWithCoder:(id)a3
{
  relyingParty = self->_relyingParty;
  v5 = a3;
  [v5 encodeObject:relyingParty forKey:@"relyingParty"];
  [v5 encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [v5 encodeObject:self->_credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_attestationObject forKey:@"attestationObject"];
  [v5 encodeObject:self->_extensionOutput forKey:@"extensionOutput"];
}

- (ASPasskeyRegistrationCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attestationObject"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionOutput"];

  v10 = [(ASPasskeyRegistrationCredential *)self initWithRelyingParty:v5 clientDataHash:v6 credentialID:v7 attestationObject:v8 extensionOutput:v9];
  return v10;
}

+ (NSArray)_defaultTransports
{
  sub_1B1D2B13C();
  v2 = sub_1B1D7BEDC();

  return v2;
}

- (BOOL)_validateWithError:(id *)a3
{
  v3 = self;
  sub_1B1D2A1F4();

  return 1;
}

- (_TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs)coreExtensions
{
  v2 = [(ASPasskeyRegistrationCredential *)self extensionOutput];
  if (v2)
  {
    v3 = v2;
    v4 = *(&v2->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end