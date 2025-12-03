@interface ASCPasswordLoginChoice
- (ASCPasswordLoginChoice)initWithCoder:(id)coder;
- (ASCPasswordLoginChoice)initWithUsername:(id)username site:(id)site externalCredentialIdentity:(id)identity customTitle:(id)title groupName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSharedCredential;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPasswordLoginChoice

- (ASCPasswordLoginChoice)initWithUsername:(id)username site:(id)site externalCredentialIdentity:(id)identity customTitle:(id)title groupName:(id)name
{
  usernameCopy = username;
  siteCopy = site;
  identityCopy = identity;
  titleCopy = title;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = ASCPasswordLoginChoice;
  v17 = [(ASCPasswordLoginChoice *)&v32 init];
  if (v17)
  {
    v18 = [usernameCopy copy];
    username = v17->_username;
    v17->_username = v18;

    v20 = [siteCopy copy];
    site = v17->_site;
    v17->_site = v20;

    owningExtensionState = [identityCopy owningExtensionState];
    providerBundleID = [owningExtensionState providerBundleID];

    v24 = [providerBundleID copy];
    providerBundleIdentifier = v17->_providerBundleIdentifier;
    v17->_providerBundleIdentifier = v24;

    objc_storeStrong(&v17->_externalCredentialIdentity, identity);
    v26 = [titleCopy length];
    if (v26)
    {
      v26 = [titleCopy copy];
    }

    customTitle = v17->_customTitle;
    v17->_customTitle = v26;

    v28 = [nameCopy length];
    if (v28)
    {
      v28 = [nameCopy copy];
    }

    groupName = v17->_groupName;
    v17->_groupName = v28;

    v30 = v17;
  }

  return v17;
}

- (BOOL)isSharedCredential
{
  groupName = [(ASCPasswordLoginChoice *)self groupName];
  v3 = [groupName length] != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(NSString *)self->_username isEqualToString:v5[1]]&& self->_externalCredentialIdentity == v5[5] && [(NSString *)self->_site isEqualToString:v5[2]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  username = self->_username;
  coderCopy = coder;
  [coderCopy encodeObject:username forKey:@"passwordLoginChoiceUsername"];
  [coderCopy encodeObject:self->_site forKey:@"passwordLoginChoiceSite"];
  [coderCopy encodeObject:self->_customTitle forKey:@"passwordLoginChoiceCustomTitle"];
  [coderCopy encodeObject:self->_groupName forKey:@"passwordLoginChoiceGroupNameKey"];
  [coderCopy encodeObject:self->_externalCredentialIdentity forKey:@"externalPasswordIdentity"];
  [coderCopy encodeObject:self->_providerBundleIdentifier forKey:@"providerBundleIdentifier"];
}

- (ASCPasswordLoginChoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ASCPasswordLoginChoice;
  v5 = [(ASCPasswordLoginChoice *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceUsername"];
    username = v5->_username;
    v5->_username = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceSite"];
    site = v5->_site;
    v5->_site = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceCustomTitle"];
    customTitle = v5->_customTitle;
    v5->_customTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passwordLoginChoiceGroupNameKey"];
    groupName = v5->_groupName;
    v5->_groupName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalPasswordIdentity"];
    externalCredentialIdentity = v5->_externalCredentialIdentity;
    v5->_externalCredentialIdentity = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v16;

    v18 = v5;
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (-[ASCPasswordLoginChoice isExternal](self, "isExternal") && ![compareCopy isExternal])
  {
    goto LABEL_9;
  }

  if (!-[ASCPasswordLoginChoice isExternal](self, "isExternal") && ([compareCopy isExternal] & 1) != 0)
  {
    goto LABEL_5;
  }

  if (!-[ASCPasswordLoginChoice isExternal](self, "isExternal") || ![compareCopy isExternal])
  {
    goto LABEL_11;
  }

  rank = [(SFCredentialIdentity *)self->_externalCredentialIdentity rank];
  externalCredentialIdentity = [compareCopy externalCredentialIdentity];
  rank2 = [externalCredentialIdentity rank];

  if (rank > rank2)
  {
LABEL_9:
    v5 = -1;
    goto LABEL_12;
  }

  rank3 = [(SFCredentialIdentity *)self->_externalCredentialIdentity rank];
  externalCredentialIdentity2 = [compareCopy externalCredentialIdentity];
  rank4 = [externalCredentialIdentity2 rank];

  if (rank3 >= rank4)
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