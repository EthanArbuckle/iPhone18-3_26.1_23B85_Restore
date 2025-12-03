@interface ASCPlatformPublicKeyCredentialLoginChoice
- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCoder:(id)coder;
- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCredentialIdentity:(id)identity publicKeyCredentialOperationUUID:(id)d clientDataHash:(id)hash userVerificationPreference:(id)preference supportedAlgorithms:(id)algorithms;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSharedCredential;
- (NSString)localizedCredentialProviderName;
- (id)_initAsRegistrationChoice:(BOOL)choice withName:(id)name displayName:(id)displayName customTitle:(id)title identifier:(id)identifier userHandle:(id)handle relyingPartyIdentifier:(id)partyIdentifier publicKeyCredentialOperationUUID:(id)self0 externalCredentialProviderName:(id)self1 externalCredentialProviderBundleID:(id)self2 supportedAlgorithms:(id)self3 excludedCredentials:(id)self4 groupID:(id)self5 groupName:(id)self6;
- (id)initRegistrationChoiceWithOptions:(id)options;
- (id)initRegistrationChoiceWithOptions:(id)options externalCredentialProviderName:(id)name externalCredentialProviderBundleID:(id)d;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPlatformPublicKeyCredentialLoginChoice

- (id)_initAsRegistrationChoice:(BOOL)choice withName:(id)name displayName:(id)displayName customTitle:(id)title identifier:(id)identifier userHandle:(id)handle relyingPartyIdentifier:(id)partyIdentifier publicKeyCredentialOperationUUID:(id)self0 externalCredentialProviderName:(id)self1 externalCredentialProviderBundleID:(id)self2 supportedAlgorithms:(id)self3 excludedCredentials:(id)self4 groupID:(id)self5 groupName:(id)self6
{
  nameCopy = name;
  displayNameCopy = displayName;
  titleCopy = title;
  identifierCopy = identifier;
  handleCopy = handle;
  partyIdentifierCopy = partyIdentifier;
  dCopy = d;
  providerNameCopy = providerName;
  v24 = handleCopy;
  iDCopy = iD;
  algorithmsCopy = algorithms;
  credentialsCopy = credentials;
  groupIDCopy = groupID;
  groupNameCopy = groupName;
  v64.receiver = self;
  v64.super_class = ASCPlatformPublicKeyCredentialLoginChoice;
  v30 = [(ASCPlatformPublicKeyCredentialLoginChoice *)&v64 init];
  v31 = v30;
  if (v30)
  {
    v30->_isRegistrationRequest = choice;
    v32 = [nameCopy copy];
    name = v31->_name;
    v31->_name = v32;

    v34 = [displayNameCopy copy];
    displayName = v31->_displayName;
    v31->_displayName = v34;

    v36 = [identifierCopy copy];
    identifier = v31->_identifier;
    v31->_identifier = v36;

    v38 = [v24 copy];
    userHandle = v31->_userHandle;
    v31->_userHandle = v38;

    v40 = [partyIdentifierCopy copy];
    relyingPartyIdentifier = v31->_relyingPartyIdentifier;
    v31->_relyingPartyIdentifier = v40;

    objc_storeStrong(&v31->_publicKeyCredentialOperationUUID, d);
    v42 = [titleCopy length];
    if (v42)
    {
      v42 = [titleCopy copy];
    }

    customTitle = v31->_customTitle;
    v31->_customTitle = v42;

    v44 = [providerNameCopy copy];
    externalCredentialProviderName = v31->_externalCredentialProviderName;
    v31->_externalCredentialProviderName = v44;

    v46 = [iDCopy copy];
    externalCredentialProviderBundleID = v31->_externalCredentialProviderBundleID;
    v31->_externalCredentialProviderBundleID = v46;

    v48 = [algorithmsCopy copy];
    supportedAlgorithms = v31->_supportedAlgorithms;
    v31->_supportedAlgorithms = v48;

    v50 = [credentialsCopy copy];
    excludedCredentials = v31->_excludedCredentials;
    v31->_excludedCredentials = v50;

    v52 = [groupIDCopy copy];
    groupID = v31->_groupID;
    v31->_groupID = v52;

    v54 = [groupNameCopy copy];
    groupName = v31->_groupName;
    v31->_groupName = v54;

    v56 = v31;
  }

  return v31;
}

- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCredentialIdentity:(id)identity publicKeyCredentialOperationUUID:(id)d clientDataHash:(id)hash userVerificationPreference:(id)preference supportedAlgorithms:(id)algorithms
{
  identityCopy = identity;
  hashCopy = hash;
  preferenceCopy = preference;
  algorithmsCopy = algorithms;
  dCopy = d;
  user = [identityCopy user];
  user2 = [identityCopy user];
  v17 = objc_alloc(MEMORY[0x1E69C89D8]);
  credentialID = [identityCopy credentialID];
  v19 = [v17 initWithCredentialID:credentialID groupID:&stru_1F41A3CA0];
  userHandle = [identityCopy userHandle];
  serviceIdentifier = [identityCopy serviceIdentifier];
  v22 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self initWithName:user displayName:user2 customTitle:0 identifier:v19 userHandle:userHandle relyingPartyIdentifier:serviceIdentifier publicKeyCredentialOperationUUID:dCopy groupID:0 groupName:0];

  if (v22)
  {
    v23 = [identityCopy copy];
    credentialIdentity = v22->_credentialIdentity;
    v22->_credentialIdentity = v23;

    owningExtensionState = [identityCopy owningExtensionState];
    localizedDisplayName = [owningExtensionState localizedDisplayName];
    v27 = [localizedDisplayName copy];
    externalCredentialProviderName = v22->_externalCredentialProviderName;
    v22->_externalCredentialProviderName = v27;

    owningExtensionState2 = [identityCopy owningExtensionState];
    providerBundleID = [owningExtensionState2 providerBundleID];
    v31 = [providerBundleID copy];
    externalCredentialProviderBundleID = v22->_externalCredentialProviderBundleID;
    v22->_externalCredentialProviderBundleID = v31;

    v33 = [hashCopy copy];
    clientDataHash = v22->_clientDataHash;
    v22->_clientDataHash = v33;

    v35 = [preferenceCopy copy];
    userVerificationPreference = v22->_userVerificationPreference;
    v22->_userVerificationPreference = v35;

    v37 = [algorithmsCopy copy];
    supportedAlgorithms = v22->_supportedAlgorithms;
    v22->_supportedAlgorithms = v37;

    v39 = v22;
  }

  return v22;
}

- (id)initRegistrationChoiceWithOptions:(id)options
{
  optionsCopy = options;
  userName = [optionsCopy userName];
  userDisplayName = [optionsCopy userDisplayName];
  userIdentifier = [optionsCopy userIdentifier];
  v8 = [userIdentifier base64EncodedStringWithOptions:0];
  relyingPartyIdentifier = [optionsCopy relyingPartyIdentifier];
  supportedAlgorithmIdentifiers = [optionsCopy supportedAlgorithmIdentifiers];
  excludedCredentials = [optionsCopy excludedCredentials];

  v12 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self _initAsRegistrationChoice:1 withName:userName displayName:userDisplayName customTitle:0 identifier:0 userHandle:v8 relyingPartyIdentifier:relyingPartyIdentifier publicKeyCredentialOperationUUID:0 externalCredentialProviderName:0 externalCredentialProviderBundleID:0 supportedAlgorithms:supportedAlgorithmIdentifiers excludedCredentials:excludedCredentials groupID:0 groupName:0];
  return v12;
}

- (id)initRegistrationChoiceWithOptions:(id)options externalCredentialProviderName:(id)name externalCredentialProviderBundleID:(id)d
{
  optionsCopy = options;
  nameCopy = name;
  dCopy = d;
  v11 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self initRegistrationChoiceWithOptions:optionsCopy];
  if (v11)
  {
    v12 = [nameCopy copy];
    v13 = v11[10];
    v11[10] = v12;

    v14 = [dCopy copy];
    v15 = v11[11];
    v11[11] = v14;

    clientDataHash = [optionsCopy clientDataHash];
    v17 = [clientDataHash copy];
    v18 = v11[12];
    v11[12] = v17;

    userVerificationPreference = [optionsCopy userVerificationPreference];
    v20 = [userVerificationPreference copy];
    v21 = v11[13];
    v11[13] = v20;

    supportedAlgorithmIdentifiers = [optionsCopy supportedAlgorithmIdentifiers];
    v23 = [supportedAlgorithmIdentifiers copy];
    v24 = v11[14];
    v11[14] = v23;

    excludedCredentials = [optionsCopy excludedCredentials];
    v26 = [excludedCredentials copy];
    v27 = v11[15];
    v11[15] = v26;

    v28 = v11;
  }

  return v11;
}

- (NSString)localizedCredentialProviderName
{
  externalCredentialProviderName = self->_externalCredentialProviderName;
  if (externalCredentialProviderName)
  {
    v3 = externalCredentialProviderName;
  }

  else
  {
    v3 = _WBSLocalizedString();
  }

  return v3;
}

- (BOOL)isSharedCredential
{
  groupID = [(ASCPlatformPublicKeyCredentialLoginChoice *)self groupID];
  v3 = [groupID length] != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
    publicKeyCredentialOperationUUID = [v5 publicKeyCredentialOperationUUID];
    LODWORD(publicKeyCredentialOperationUUID) = WBSIsEqual();

    if (!publicKeyCredentialOperationUUID)
    {
      goto LABEL_18;
    }

    if (self->_isRegistrationRequest != v5[8])
    {
      goto LABEL_18;
    }

    if (![(NSString *)self->_name isEqualToString:*(v5 + 2)])
    {
      goto LABEL_18;
    }

    if (![(NSString *)self->_displayName isEqualToString:*(v5 + 3)])
    {
      goto LABEL_18;
    }

    identifier = self->_identifier;
    v9 = *(v5 + 7);
    if (!WBSIsEqual())
    {
      goto LABEL_18;
    }

    if (![(NSString *)self->_relyingPartyIdentifier isEqualToString:*(v5 + 6)])
    {
      goto LABEL_18;
    }

    credentialIdentity = self->_credentialIdentity;
    v11 = *(v5 + 9);
    if (!WBSIsEqual())
    {
      goto LABEL_18;
    }

    externalCredentialProviderName = self->_externalCredentialProviderName;
    v13 = *(v5 + 10);
    if (!WBSIsEqual())
    {
      goto LABEL_18;
    }

    externalCredentialProviderBundleID = self->_externalCredentialProviderBundleID;
    v15 = *(v5 + 11);
    if (!WBSIsEqual())
    {
      goto LABEL_18;
    }

    clientDataHash = self->_clientDataHash;
    v17 = *(v5 + 12);
    if (!WBSIsEqual())
    {
      goto LABEL_18;
    }

    userVerificationPreference = self->_userVerificationPreference;
    v19 = *(v5 + 13);
    if (!WBSIsEqual())
    {
      goto LABEL_18;
    }

    supportedAlgorithms = self->_supportedAlgorithms;
    v21 = *(v5 + 14);
    if (WBSIsEqual() && (excludedCredentials = self->_excludedCredentials, v23 = *(v5 + 15), WBSIsEqual()) && (groupID = self->_groupID, v25 = *(v5 + 16), WBSIsEqual()))
    {
      groupName = self->_groupName;
      v27 = *(v5 + 17);
      v28 = WBSIsEqual();
    }

    else
    {
LABEL_18:
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  externalCredentialProviderName = [(ASCPlatformPublicKeyCredentialLoginChoice *)self externalCredentialProviderName];
  if (externalCredentialProviderName && (v6 = externalCredentialProviderName, [compareCopy externalCredentialProviderName], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v13 = -1;
  }

  else
  {
    externalCredentialProviderName2 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self externalCredentialProviderName];
    if (externalCredentialProviderName2)
    {

LABEL_5:
      credentialIdentity = [(ASCPlatformPublicKeyCredentialLoginChoice *)self credentialIdentity];
      credentialIdentity2 = [compareCopy credentialIdentity];
      v11 = credentialIdentity2;
      if (credentialIdentity && credentialIdentity2)
      {
        rank = [credentialIdentity rank];
        if (rank > [v11 rank])
        {
          v13 = -1;
LABEL_15:

          goto LABEL_16;
        }

        rank2 = [credentialIdentity rank];
        if (rank2 < [v11 rank])
        {
          v13 = 1;
          goto LABEL_15;
        }
      }

      v13 = 0;
      goto LABEL_15;
    }

    externalCredentialProviderName3 = [compareCopy externalCredentialProviderName];

    if (!externalCredentialProviderName3)
    {
      goto LABEL_5;
    }

    v13 = 1;
  }

LABEL_16:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_customTitle forKey:@"customTitle"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRegistrationRequest];
  [coderCopy encodeObject:v5 forKey:@"registrationRequestIndicator"];

  [coderCopy encodeObject:self->_userHandle forKey:@"userHandle"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_publicKeyCredentialOperationUUID forKey:@"publicKeyCredentialOperationUUID"];
  [coderCopy encodeObject:self->_credentialIdentity forKey:@"credentialIdentity"];
  [coderCopy encodeObject:self->_externalCredentialProviderName forKey:@"externalCredentialProviderName"];
  [coderCopy encodeObject:self->_externalCredentialProviderBundleID forKey:@"externalCredentialProviderBundleID"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [coderCopy encodeObject:self->_supportedAlgorithms forKey:@"supportedAlgorithms"];
  [coderCopy encodeObject:self->_excludedCredentials forKey:@"excludedCredentials"];
  [coderCopy encodeObject:self->_groupID forKey:@"groupID"];
  [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
}

- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customTitle"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registrationRequestIndicator"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyCredentialOperationUUID"];
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalCredentialProviderName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalCredentialProviderBundleID"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedAlgorithms"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"excludedCredentials"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];

  v15 = -[ASCPlatformPublicKeyCredentialLoginChoice _initAsRegistrationChoice:withName:displayName:customTitle:identifier:userHandle:relyingPartyIdentifier:publicKeyCredentialOperationUUID:externalCredentialProviderName:externalCredentialProviderBundleID:supportedAlgorithms:excludedCredentials:groupID:groupName:](self, "_initAsRegistrationChoice:withName:displayName:customTitle:identifier:userHandle:relyingPartyIdentifier:publicKeyCredentialOperationUUID:externalCredentialProviderName:externalCredentialProviderBundleID:supportedAlgorithms:excludedCredentials:groupID:groupName:", [v4 BOOLValue], v27, v28, v26, v25, v19, v5, v6, v7, v8, v12, v13, v14);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 9, obj);
    objc_storeStrong(&v16->_clientDataHash, v23);
    objc_storeStrong(&v16->_userVerificationPreference, v22);
    v17 = v16;
  }

  return v16;
}

@end