@interface ASCSecurityKeyPublicKeyCredentialLoginChoice
- (ASCSecurityKeyPublicKeyCredentialLoginChoice)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithKind:(int64_t)kind name:(id)name displayName:(id)displayName identifier:(id)identifier publicKeyCredentialOperationUUID:(id)d;
- (id)initRegistrationChoiceWithOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCSecurityKeyPublicKeyCredentialLoginChoice

- (id)initRegistrationChoiceWithOptions:(id)options
{
  optionsCopy = options;
  userName = [optionsCopy userName];
  userDisplayName = [optionsCopy userDisplayName];

  v7 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self _initWithKind:0 name:userName displayName:userDisplayName identifier:0 publicKeyCredentialOperationUUID:0];
  return v7;
}

- (id)_initWithKind:(int64_t)kind name:(id)name displayName:(id)displayName identifier:(id)identifier publicKeyCredentialOperationUUID:(id)d
{
  nameCopy = name;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = ASCSecurityKeyPublicKeyCredentialLoginChoice;
  v16 = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)&v26 init];
  v17 = v16;
  if (v16)
  {
    v16->_credentialKind = kind;
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [displayNameCopy copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    v22 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v22;

    objc_storeStrong(&v17->_publicKeyCredentialOperationUUID, d);
    v24 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
      publicKeyCredentialOperationUUID = [v5 publicKeyCredentialOperationUUID];
      LODWORD(publicKeyCredentialOperationUUID) = WBSIsEqual();

      if (publicKeyCredentialOperationUUID && [(NSString *)self->_name isEqualToString:v6[1]]&& [(NSString *)self->_displayName isEqualToString:v6[2]])
      {
        identifier = self->_identifier;
        identifier = [v6 identifier];
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

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_credentialKind];
  [coderCopy encodeObject:v5 forKey:@"credentialKind"];

  [coderCopy encodeObject:self->_publicKeyCredentialOperationUUID forKey:@"publicKeyCredentialOperationUUID"];
}

- (ASCSecurityKeyPublicKeyCredentialLoginChoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialKind"];
  integerValue = [v8 integerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyCredentialOperationUUID"];

  if (integerValue == 2)
  {
    initAssertionPlaceholderChoice = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self initAssertionPlaceholderChoice];
  }

  else if (integerValue == 1)
  {
    initAssertionPlaceholderChoice = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self initWithName:v5 displayName:v6 identifier:v7 publicKeyCredentialOperationUUID:v10];
  }

  else
  {
    if (integerValue)
    {
      selfCopy = 0;
      goto LABEL_9;
    }

    initAssertionPlaceholderChoice = [(ASCSecurityKeyPublicKeyCredentialLoginChoice *)self _initWithKind:0 name:v5 displayName:v6 identifier:0 publicKeyCredentialOperationUUID:0];
  }

  self = initAssertionPlaceholderChoice;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

@end