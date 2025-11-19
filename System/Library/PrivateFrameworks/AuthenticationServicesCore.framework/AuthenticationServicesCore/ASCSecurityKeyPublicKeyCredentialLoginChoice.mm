@interface ASCSecurityKeyPublicKeyCredentialLoginChoice
- (ASCSecurityKeyPublicKeyCredentialLoginChoice)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithKind:(int64_t)a3 name:(id)a4 displayName:(id)a5 identifier:(id)a6 publicKeyCredentialOperationUUID:(id)a7;
- (id)initRegistrationChoiceWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCSecurityKeyPublicKeyCredentialLoginChoice

- (id)initRegistrationChoiceWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 userName];
  v6 = [v4 userDisplayName];

  v7 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self _initWithKind:0 name:v5 displayName:v6 identifier:0 publicKeyCredentialOperationUUID:0];
  return v7;
}

- (id)_initWithKind:(int64_t)a3 name:(id)a4 displayName:(id)a5 identifier:(id)a6 publicKeyCredentialOperationUUID:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = ASCSecurityKeyPublicKeyCredentialLoginChoice;
  v16 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)&v26 init];
  v17 = v16;
  if (v16)
  {
    v16->_credentialKind = a3;
    v18 = [v12 copy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [v13 copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    v22 = [v14 copy];
    identifier = v17->_identifier;
    v17->_identifier = v22;

    objc_storeStrong(&v17->_publicKeyCredentialOperationUUID, a7);
    v24 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    credentialKind = self->_credentialKind;
    if (credentialKind == v5[3])
    {
      if ((credentialKind | 2) == 2)
      {
        v8 = 1;
LABEL_11:

        goto LABEL_12;
      }

      publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
      v10 = [v5 publicKeyCredentialOperationUUID];
      LODWORD(publicKeyCredentialOperationUUID) = WBSIsEqual();

      if (publicKeyCredentialOperationUUID && [(NSString *)self->_name isEqualToString:v6[1]]&& [(NSString *)self->_displayName isEqualToString:v6[2]])
      {
        identifier = self->_identifier;
        v12 = [v6 identifier];
        v8 = WBSIsEqual();

        goto LABEL_11;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v6 = a3;
  [v6 encodeObject:name forKey:@"name"];
  [v6 encodeObject:self->_displayName forKey:@"displayName"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_credentialKind];
  [v6 encodeObject:v5 forKey:@"credentialKind"];

  [v6 encodeObject:self->_publicKeyCredentialOperationUUID forKey:@"publicKeyCredentialOperationUUID"];
}

- (ASCSecurityKeyPublicKeyCredentialLoginChoice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialKind"];
  v9 = [v8 integerValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyCredentialOperationUUID"];

  if (v9 == 2)
  {
    v11 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self initAssertionPlaceholderChoice];
  }

  else if (v9 == 1)
  {
    v11 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self initWithName:v5 displayName:v6 identifier:v7 publicKeyCredentialOperationUUID:v10];
  }

  else
  {
    if (v9)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v11 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self _initWithKind:0 name:v5 displayName:v6 identifier:0 publicKeyCredentialOperationUUID:0];
  }

  self = v11;
  v12 = self;
LABEL_9:

  return v12;
}

@end