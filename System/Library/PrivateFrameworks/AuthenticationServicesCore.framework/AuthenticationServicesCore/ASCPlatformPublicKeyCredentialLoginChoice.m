@interface ASCPlatformPublicKeyCredentialLoginChoice
- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCoder:(id)a3;
- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCredentialIdentity:(id)a3 publicKeyCredentialOperationUUID:(id)a4 clientDataHash:(id)a5 userVerificationPreference:(id)a6 supportedAlgorithms:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSharedCredential;
- (NSString)localizedCredentialProviderName;
- (id)_initAsRegistrationChoice:(BOOL)a3 withName:(id)a4 displayName:(id)a5 customTitle:(id)a6 identifier:(id)a7 userHandle:(id)a8 relyingPartyIdentifier:(id)a9 publicKeyCredentialOperationUUID:(id)a10 externalCredentialProviderName:(id)a11 externalCredentialProviderBundleID:(id)a12 supportedAlgorithms:(id)a13 excludedCredentials:(id)a14 groupID:(id)a15 groupName:(id)a16;
- (id)initRegistrationChoiceWithOptions:(id)a3;
- (id)initRegistrationChoiceWithOptions:(id)a3 externalCredentialProviderName:(id)a4 externalCredentialProviderBundleID:(id)a5;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPlatformPublicKeyCredentialLoginChoice

- (id)_initAsRegistrationChoice:(BOOL)a3 withName:(id)a4 displayName:(id)a5 customTitle:(id)a6 identifier:(id)a7 userHandle:(id)a8 relyingPartyIdentifier:(id)a9 publicKeyCredentialOperationUUID:(id)a10 externalCredentialProviderName:(id)a11 externalCredentialProviderBundleID:(id)a12 supportedAlgorithms:(id)a13 excludedCredentials:(id)a14 groupID:(id)a15 groupName:(id)a16
{
  v62 = a4;
  v61 = a5;
  v20 = a6;
  v63 = a7;
  v21 = a8;
  v22 = a9;
  v60 = a10;
  v23 = a11;
  v24 = v21;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v64.receiver = self;
  v64.super_class = ASCPlatformPublicKeyCredentialLoginChoice;
  v30 = [(ASCPlatformPublicKeyCredentialLoginChoice *)&v64 init];
  v31 = v30;
  if (v30)
  {
    v30->_isRegistrationRequest = a3;
    v32 = [v62 copy];
    name = v31->_name;
    v31->_name = v32;

    v34 = [v61 copy];
    displayName = v31->_displayName;
    v31->_displayName = v34;

    v36 = [v63 copy];
    identifier = v31->_identifier;
    v31->_identifier = v36;

    v38 = [v24 copy];
    userHandle = v31->_userHandle;
    v31->_userHandle = v38;

    v40 = [v22 copy];
    relyingPartyIdentifier = v31->_relyingPartyIdentifier;
    v31->_relyingPartyIdentifier = v40;

    objc_storeStrong(&v31->_publicKeyCredentialOperationUUID, a10);
    v42 = [v20 length];
    if (v42)
    {
      v42 = [v20 copy];
    }

    customTitle = v31->_customTitle;
    v31->_customTitle = v42;

    v44 = [v23 copy];
    externalCredentialProviderName = v31->_externalCredentialProviderName;
    v31->_externalCredentialProviderName = v44;

    v46 = [v25 copy];
    externalCredentialProviderBundleID = v31->_externalCredentialProviderBundleID;
    v31->_externalCredentialProviderBundleID = v46;

    v48 = [v26 copy];
    supportedAlgorithms = v31->_supportedAlgorithms;
    v31->_supportedAlgorithms = v48;

    v50 = [v27 copy];
    excludedCredentials = v31->_excludedCredentials;
    v31->_excludedCredentials = v50;

    v52 = [v28 copy];
    groupID = v31->_groupID;
    v31->_groupID = v52;

    v54 = [v29 copy];
    groupName = v31->_groupName;
    v31->_groupName = v54;

    v56 = v31;
  }

  return v31;
}

- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCredentialIdentity:(id)a3 publicKeyCredentialOperationUUID:(id)a4 clientDataHash:(id)a5 userVerificationPreference:(id)a6 supportedAlgorithms:(id)a7
{
  v12 = a3;
  v42 = a5;
  v41 = a6;
  v13 = a7;
  v14 = a4;
  v15 = [v12 user];
  v16 = [v12 user];
  v17 = objc_alloc(MEMORY[0x1E69C89D8]);
  v18 = [v12 credentialID];
  v19 = [v17 initWithCredentialID:v18 groupID:&stru_1F41A3CA0];
  v20 = [v12 userHandle];
  v21 = [v12 serviceIdentifier];
  v22 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self initWithName:v15 displayName:v16 customTitle:0 identifier:v19 userHandle:v20 relyingPartyIdentifier:v21 publicKeyCredentialOperationUUID:v14 groupID:0 groupName:0];

  if (v22)
  {
    v23 = [v12 copy];
    credentialIdentity = v22->_credentialIdentity;
    v22->_credentialIdentity = v23;

    v25 = [v12 owningExtensionState];
    v26 = [v25 localizedDisplayName];
    v27 = [v26 copy];
    externalCredentialProviderName = v22->_externalCredentialProviderName;
    v22->_externalCredentialProviderName = v27;

    v29 = [v12 owningExtensionState];
    v30 = [v29 providerBundleID];
    v31 = [v30 copy];
    externalCredentialProviderBundleID = v22->_externalCredentialProviderBundleID;
    v22->_externalCredentialProviderBundleID = v31;

    v33 = [v42 copy];
    clientDataHash = v22->_clientDataHash;
    v22->_clientDataHash = v33;

    v35 = [v41 copy];
    userVerificationPreference = v22->_userVerificationPreference;
    v22->_userVerificationPreference = v35;

    v37 = [v13 copy];
    supportedAlgorithms = v22->_supportedAlgorithms;
    v22->_supportedAlgorithms = v37;

    v39 = v22;
  }

  return v22;
}

- (id)initRegistrationChoiceWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 userName];
  v6 = [v4 userDisplayName];
  v7 = [v4 userIdentifier];
  v8 = [v7 base64EncodedStringWithOptions:0];
  v9 = [v4 relyingPartyIdentifier];
  v10 = [v4 supportedAlgorithmIdentifiers];
  v11 = [v4 excludedCredentials];

  v12 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self _initAsRegistrationChoice:1 withName:v5 displayName:v6 customTitle:0 identifier:0 userHandle:v8 relyingPartyIdentifier:v9 publicKeyCredentialOperationUUID:0 externalCredentialProviderName:0 externalCredentialProviderBundleID:0 supportedAlgorithms:v10 excludedCredentials:v11 groupID:0 groupName:0];
  return v12;
}

- (id)initRegistrationChoiceWithOptions:(id)a3 externalCredentialProviderName:(id)a4 externalCredentialProviderBundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self initRegistrationChoiceWithOptions:v8];
  if (v11)
  {
    v12 = [v9 copy];
    v13 = v11[10];
    v11[10] = v12;

    v14 = [v10 copy];
    v15 = v11[11];
    v11[11] = v14;

    v16 = [v8 clientDataHash];
    v17 = [v16 copy];
    v18 = v11[12];
    v11[12] = v17;

    v19 = [v8 userVerificationPreference];
    v20 = [v19 copy];
    v21 = v11[13];
    v11[13] = v20;

    v22 = [v8 supportedAlgorithmIdentifiers];
    v23 = [v22 copy];
    v24 = v11[14];
    v11[14] = v23;

    v25 = [v8 excludedCredentials];
    v26 = [v25 copy];
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
  v2 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self groupID];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    publicKeyCredentialOperationUUID = self->_publicKeyCredentialOperationUUID;
    v7 = [v5 publicKeyCredentialOperationUUID];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self externalCredentialProviderName];
  if (v5 && (v6 = v5, [v4 externalCredentialProviderName], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v13 = -1;
  }

  else
  {
    v8 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self externalCredentialProviderName];
    if (v8)
    {

LABEL_5:
      v9 = [(ASCPlatformPublicKeyCredentialLoginChoice *)self credentialIdentity];
      v10 = [v4 credentialIdentity];
      v11 = v10;
      if (v9 && v10)
      {
        v12 = [v9 rank];
        if (v12 > [v11 rank])
        {
          v13 = -1;
LABEL_15:

          goto LABEL_16;
        }

        v15 = [v9 rank];
        if (v15 < [v11 rank])
        {
          v13 = 1;
          goto LABEL_15;
        }
      }

      v13 = 0;
      goto LABEL_15;
    }

    v14 = [v4 externalCredentialProviderName];

    if (!v14)
    {
      goto LABEL_5;
    }

    v13 = 1;
  }

LABEL_16:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v6 = a3;
  [v6 encodeObject:name forKey:@"name"];
  [v6 encodeObject:self->_displayName forKey:@"displayName"];
  [v6 encodeObject:self->_customTitle forKey:@"customTitle"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRegistrationRequest];
  [v6 encodeObject:v5 forKey:@"registrationRequestIndicator"];

  [v6 encodeObject:self->_userHandle forKey:@"userHandle"];
  [v6 encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v6 encodeObject:self->_publicKeyCredentialOperationUUID forKey:@"publicKeyCredentialOperationUUID"];
  [v6 encodeObject:self->_credentialIdentity forKey:@"credentialIdentity"];
  [v6 encodeObject:self->_externalCredentialProviderName forKey:@"externalCredentialProviderName"];
  [v6 encodeObject:self->_externalCredentialProviderBundleID forKey:@"externalCredentialProviderBundleID"];
  [v6 encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [v6 encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [v6 encodeObject:self->_supportedAlgorithms forKey:@"supportedAlgorithms"];
  [v6 encodeObject:self->_excludedCredentials forKey:@"excludedCredentials"];
  [v6 encodeObject:self->_groupID forKey:@"groupID"];
  [v6 encodeObject:self->_groupName forKey:@"groupName"];
}

- (ASCPlatformPublicKeyCredentialLoginChoice)initWithCoder:(id)a3
{
  v3 = a3;
  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"customTitle"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"registrationRequestIndicator"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyCredentialOperationUUID"];
  obj = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"externalCredentialProviderName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"externalCredentialProviderBundleID"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v8 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedAlgorithms"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"excludedCredentials"];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];

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