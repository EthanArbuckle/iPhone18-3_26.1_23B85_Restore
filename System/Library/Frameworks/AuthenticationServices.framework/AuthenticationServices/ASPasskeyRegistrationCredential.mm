@interface ASPasskeyRegistrationCredential
+ (ASPasskeyRegistrationCredential)credentialWithRelyingParty:(NSString *)relyingParty clientDataHash:(NSData *)clientDataHash credentialID:(NSData *)credentialID attestationObject:(NSData *)attestationObject;
+ (NSArray)_defaultTransports;
- (ASPasskeyRegistrationCredential)initWithCoder:(id)coder;
- (ASPasskeyRegistrationCredential)initWithRelyingParty:(NSString *)relyingParty clientDataHash:(NSData *)clientDataHash credentialID:(NSData *)credentialID attestationObject:(NSData *)attestationObject;
- (ASPasskeyRegistrationCredential)initWithRelyingParty:(id)party clientDataHash:(id)hash credentialID:(id)d attestationObject:(id)object extensionOutput:(id)output;
- (BOOL)_validateWithError:(id *)error;
- (_TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs)coreExtensions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (ASPasskeyRegistrationCredential)initWithRelyingParty:(id)party clientDataHash:(id)hash credentialID:(id)d attestationObject:(id)object extensionOutput:(id)output
{
  outputCopy = output;
  v13 = [(ASPasskeyRegistrationCredential *)self initWithRelyingParty:party clientDataHash:hash credentialID:d attestationObject:object];
  if (v13)
  {
    v14 = [outputCopy copy];
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
  v14 = [[self alloc] initWithRelyingParty:v13 clientDataHash:v12 credentialID:v11 attestationObject:v10];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  relyingParty = self->_relyingParty;
  clientDataHash = self->_clientDataHash;
  credentialID = self->_credentialID;
  attestationObject = self->_attestationObject;

  return [v4 initWithRelyingParty:relyingParty clientDataHash:clientDataHash credentialID:credentialID attestationObject:attestationObject];
}

- (void)encodeWithCoder:(id)coder
{
  relyingParty = self->_relyingParty;
  coderCopy = coder;
  [coderCopy encodeObject:relyingParty forKey:@"relyingParty"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_credentialID forKey:@"credentialID"];
  [coderCopy encodeObject:self->_attestationObject forKey:@"attestationObject"];
  [coderCopy encodeObject:self->_extensionOutput forKey:@"extensionOutput"];
}

- (ASPasskeyRegistrationCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestationObject"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionOutput"];

  v10 = [(ASPasskeyRegistrationCredential *)self initWithRelyingParty:v5 clientDataHash:v6 credentialID:v7 attestationObject:v8 extensionOutput:v9];
  return v10;
}

+ (NSArray)_defaultTransports
{
  sub_1B1D2B13C();
  v2 = sub_1B1D7BEDC();

  return v2;
}

- (BOOL)_validateWithError:(id *)error
{
  selfCopy = self;
  sub_1B1D2A1F4();

  return 1;
}

- (_TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs)coreExtensions
{
  extensionOutput = [(ASPasskeyRegistrationCredential *)self extensionOutput];
  if (extensionOutput)
  {
    v3 = extensionOutput;
    v4 = *(&extensionOutput->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionOutput_coreExtensions);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end