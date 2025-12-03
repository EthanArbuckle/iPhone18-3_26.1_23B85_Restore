@interface ASPasskeyAssertionCredential
+ (ASPasskeyAssertionCredential)credentialWithUserHandle:(NSData *)userHandle relyingParty:(NSString *)relyingParty signature:(NSData *)signature clientDataHash:(NSData *)clientDataHash authenticatorData:(NSData *)authenticatorData credentialID:(NSData *)credentialID;
- (ASPasskeyAssertionCredential)initWithCoder:(id)coder;
- (ASPasskeyAssertionCredential)initWithUserHandle:(id)handle relyingParty:(id)party signature:(id)signature clientDataHash:(id)hash authenticatorData:(id)data credentialID:(id)d extensionOutput:(id)output;
- (BOOL)_validateWithError:(id *)error;
- (_TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs)coreExtensions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPasskeyAssertionCredential

- (ASPasskeyAssertionCredential)initWithUserHandle:(id)handle relyingParty:(id)party signature:(id)signature clientDataHash:(id)hash authenticatorData:(id)data credentialID:(id)d extensionOutput:(id)output
{
  handleCopy = handle;
  partyCopy = party;
  signatureCopy = signature;
  hashCopy = hash;
  dataCopy = data;
  dCopy = d;
  outputCopy = output;
  v39.receiver = self;
  v39.super_class = ASPasskeyAssertionCredential;
  v22 = [(ASPasskeyAssertionCredential *)&v39 init];
  if (v22)
  {
    v23 = [handleCopy copy];
    userHandle = v22->_userHandle;
    v22->_userHandle = v23;

    v25 = [partyCopy copy];
    relyingParty = v22->_relyingParty;
    v22->_relyingParty = v25;

    v27 = [signatureCopy copy];
    signature = v22->_signature;
    v22->_signature = v27;

    v29 = [hashCopy copy];
    clientDataHash = v22->_clientDataHash;
    v22->_clientDataHash = v29;

    v31 = [dataCopy copy];
    authenticatorData = v22->_authenticatorData;
    v22->_authenticatorData = v31;

    v33 = [dCopy copy];
    credentialID = v22->_credentialID;
    v22->_credentialID = v33;

    v35 = [outputCopy copy];
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
  v20 = [[self alloc] initWithUserHandle:v19 relyingParty:v18 signature:v17 clientDataHash:v16 authenticatorData:v15 credentialID:v14];

  return v20;
}

- (ASPasskeyAssertionCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticatorData"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionOutput"];

  v12 = [(ASPasskeyAssertionCredential *)self initWithUserHandle:v5 relyingParty:v6 signature:v7 clientDataHash:v8 authenticatorData:v9 credentialID:v10 extensionOutput:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  userHandle = self->_userHandle;
  coderCopy = coder;
  [coderCopy encodeObject:userHandle forKey:@"userHandle"];
  [coderCopy encodeObject:self->_relyingParty forKey:@"relyingParty"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_authenticatorData forKey:@"authenticatorData"];
  [coderCopy encodeObject:self->_credentialID forKey:@"credentialID"];
  [coderCopy encodeObject:self->_extensionOutput forKey:@"extensionOutput"];
}

- (BOOL)_validateWithError:(id *)error
{
  selfCopy = self;
  sub_1B1D275F4();

  return 1;
}

- (_TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs)coreExtensions
{
  extensionOutput = [(ASPasskeyAssertionCredential *)self extensionOutput];
  if (extensionOutput)
  {
    v3 = extensionOutput;
    v4 = *(&extensionOutput->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end