@interface ASCPasswordLoginChoice
- (ASCPasswordLoginChoice)initWithCoder:(id)a3;
- (ASCPasswordLoginChoice)initWithUsername:(id)a3 site:(id)a4 externalCredentialIdentity:(id)a5 customTitle:(id)a6 groupName:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSharedCredential;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPasswordLoginChoice

- (ASCPasswordLoginChoice)initWithUsername:(id)a3 site:(id)a4 externalCredentialIdentity:(id)a5 customTitle:(id)a6 groupName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = ASCPasswordLoginChoice;
  v17 = [(ASCPasswordLoginChoice *)&v32 init];
  if (v17)
  {
    v18 = [v12 copy];
    username = v17->_username;
    v17->_username = v18;

    v20 = [v13 copy];
    site = v17->_site;
    v17->_site = v20;

    v22 = [v14 owningExtensionState];
    v23 = [v22 providerBundleID];

    v24 = [v23 copy];
    providerBundleIdentifier = v17->_providerBundleIdentifier;
    v17->_providerBundleIdentifier = v24;

    objc_storeStrong(&v17->_externalCredentialIdentity, a5);
    v26 = [v15 length];
    if (v26)
    {
      v26 = [v15 copy];
    }

    customTitle = v17->_customTitle;
    v17->_customTitle = v26;

    v28 = [v16 length];
    if (v28)
    {
      v28 = [v16 copy];
    }

    groupName = v17->_groupName;
    v17->_groupName = v28;

    v30 = v17;
  }

  return v17;
}

- (BOOL)isSharedCredential
{
  v2 = [(ASCPasswordLoginChoice *)self groupName];
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
    v6 = [(NSString *)self->_username isEqualToString:v5[1]]&& self->_externalCredentialIdentity == v5[5] && [(NSString *)self->_site isEqualToString:v5[2]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  username = self->_username;
  v5 = a3;
  [v5 encodeObject:username forKey:@"passwordLoginChoiceUsername"];
  [v5 encodeObject:self->_site forKey:@"passwordLoginChoiceSite"];
  [v5 encodeObject:self->_customTitle forKey:@"passwordLoginChoiceCustomTitle"];
  [v5 encodeObject:self->_groupName forKey:@"passwordLoginChoiceGroupNameKey"];
  [v5 encodeObject:self->_externalCredentialIdentity forKey:@"externalPasswordIdentity"];
  [v5 encodeObject:self->_providerBundleIdentifier forKey:@"providerBundleIdentifier"];
}

- (ASCPasswordLoginChoice)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ASCPasswordLoginChoice;
  v5 = [(ASCPasswordLoginChoice *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceUsername"];
    username = v5->_username;
    v5->_username = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceSite"];
    site = v5->_site;
    v5->_site = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceCustomTitle"];
    customTitle = v5->_customTitle;
    v5->_customTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceGroupNameKey"];
    groupName = v5->_groupName;
    v5->_groupName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalPasswordIdentity"];
    externalCredentialIdentity = v5->_externalCredentialIdentity;
    v5->_externalCredentialIdentity = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v16;

    v18 = v5;
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (-[ASCPasswordLoginChoice isExternal](self, "isExternal") && ![v4 isExternal])
  {
    goto LABEL_9;
  }

  if (!-[ASCPasswordLoginChoice isExternal](self, "isExternal") && ([v4 isExternal] & 1) != 0)
  {
    goto LABEL_5;
  }

  if (!-[ASCPasswordLoginChoice isExternal](self, "isExternal") || ![v4 isExternal])
  {
    goto LABEL_11;
  }

  v6 = [(SFCredentialIdentity *)self->_externalCredentialIdentity rank];
  v7 = [v4 externalCredentialIdentity];
  v8 = [v7 rank];

  if (v6 > v8)
  {
LABEL_9:
    v5 = -1;
    goto LABEL_12;
  }

  v9 = [(SFCredentialIdentity *)self->_externalCredentialIdentity rank];
  v10 = [v4 externalCredentialIdentity];
  v11 = [v10 rank];

  if (v9 >= v11)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v5 = 1;
LABEL_12:

  return v5;
}

@end