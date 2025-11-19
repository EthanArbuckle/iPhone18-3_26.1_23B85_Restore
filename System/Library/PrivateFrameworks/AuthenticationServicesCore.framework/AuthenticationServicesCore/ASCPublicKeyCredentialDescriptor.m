@interface ASCPublicKeyCredentialDescriptor
+ (NSData)magicCredentialID;
- (ASCPublicKeyCredentialDescriptor)initWithCoder:(id)a3;
- (ASCPublicKeyCredentialDescriptor)initWithCredentialID:(id)a3 transports:(id)a4;
- (BOOL)hasCABLETransport;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPublicKeyCredentialDescriptor

+ (NSData)magicCredentialID
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"QVbUFRZmiAZxElbC0CKP7zL/RGE=" options:0];

  return v2;
}

- (ASCPublicKeyCredentialDescriptor)initWithCredentialID:(id)a3 transports:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ASCPublicKeyCredentialDescriptor;
  v8 = [(ASCPublicKeyCredentialDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    credentialID = v8->_credentialID;
    v8->_credentialID = v9;

    v11 = [v7 copy];
    transports = v8->_transports;
    v8->_transports = v11;

    v13 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ASCPublicKeyCredentialDescriptor *)self credentialID];
  v6 = [(ASCPublicKeyCredentialDescriptor *)self transports];
  v7 = [v4 initWithCredentialID:v5 transports:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[ASCPublicKeyCredentialDescriptor credentialID](self, "credentialID"), v5 = objc_claimAutoreleasedReturnValue(), [v4 credentialID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToData:", v6), v6, v5, v7))
  {
    v8 = [(ASCPublicKeyCredentialDescriptor *)self transports];
    v9 = [v4 transports];
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
    v5 = [objc_opt_class() cableTransports];
    v6 = [v4 intersectsSet:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (ASCPublicKeyCredentialDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"transports"];

  v10 = [(ASCPublicKeyCredentialDescriptor *)self initWithCredentialID:v5 transports:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCPublicKeyCredentialDescriptor *)self credentialID];
  [v4 encodeObject:v5 forKey:@"credentialID"];

  v6 = [(ASCPublicKeyCredentialDescriptor *)self transports];
  [v4 encodeObject:v6 forKey:@"transports"];
}

@end