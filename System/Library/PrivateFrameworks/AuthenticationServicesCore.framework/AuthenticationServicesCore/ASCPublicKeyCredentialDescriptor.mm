@interface ASCPublicKeyCredentialDescriptor
+ (NSData)magicCredentialID;
- (ASCPublicKeyCredentialDescriptor)initWithCoder:(id)coder;
- (ASCPublicKeyCredentialDescriptor)initWithCredentialID:(id)d transports:(id)transports;
- (BOOL)hasCABLETransport;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPublicKeyCredentialDescriptor

+ (NSData)magicCredentialID
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"QVbUFRZmiAZxElbC0CKP7zL/RGE=" options:0];

  return v2;
}

- (ASCPublicKeyCredentialDescriptor)initWithCredentialID:(id)d transports:(id)transports
{
  dCopy = d;
  transportsCopy = transports;
  v15.receiver = self;
  v15.super_class = ASCPublicKeyCredentialDescriptor;
  v8 = [(ASCPublicKeyCredentialDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [dCopy copy];
    credentialID = v8->_credentialID;
    v8->_credentialID = v9;

    v11 = [transportsCopy copy];
    transports = v8->_transports;
    v8->_transports = v11;

    v13 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  credentialID = [(ASCPublicKeyCredentialDescriptor *)self credentialID];
  transports = [(ASCPublicKeyCredentialDescriptor *)self transports];
  v7 = [v4 initWithCredentialID:credentialID transports:transports];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[ASCPublicKeyCredentialDescriptor credentialID](self, "credentialID"), v5 = objc_claimAutoreleasedReturnValue(), [equalCopy credentialID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToData:", v6), v6, v5, v7))
  {
    transports = [(ASCPublicKeyCredentialDescriptor *)self transports];
    transports2 = [equalCopy transports];
    v10 = WBSIsEqual();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasCABLETransport
{
  v3 = [(NSArray *)self->_transports count];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:self->_transports];
    cableTransports = [objc_opt_class() cableTransports];
    v6 = [v4 intersectsSet:cableTransports];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (ASCPublicKeyCredentialDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"transports"];

  v10 = [(ASCPublicKeyCredentialDescriptor *)self initWithCredentialID:v5 transports:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  credentialID = [(ASCPublicKeyCredentialDescriptor *)self credentialID];
  [coderCopy encodeObject:credentialID forKey:@"credentialID"];

  transports = [(ASCPublicKeyCredentialDescriptor *)self transports];
  [coderCopy encodeObject:transports forKey:@"transports"];
}

@end