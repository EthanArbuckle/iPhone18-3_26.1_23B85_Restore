@interface AALocalContactInfo
- (AALocalContactInfo)initWithCoder:(id)coder;
- (AALocalContactInfo)initWithFamilyDSID:(id)d firstName:(id)name lastName:(id)lastName fullName:(id)fullName appleID:(id)iD familyMemberType:(id)type isChild:(BOOL)child;
- (AALocalContactInfo)initWithHandle:(id)handle contact:(id)contact;
- (AALocalContactInfo)initWithHandle:(id)handle firstName:(id)name lastName:(id)lastName;
- (BOOL)_isEqualToLocalContact:(id)contact;
- (BOOL)isEqual:(id)equal;
- (id)_detailsTextForContactType;
- (id)_fullNameFromFirstName:(id)name lastName:(id)lastName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayName;
- (id)firstNameOrHandleForDisplay;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AALocalContactInfo

- (AALocalContactInfo)initWithHandle:(id)handle firstName:(id)name lastName:(id)lastName
{
  handleCopy = handle;
  nameCopy = name;
  lastNameCopy = lastName;
  v17.receiver = self;
  v17.super_class = AALocalContactInfo;
  v12 = [(AALocalContactInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handle, handle);
    objc_storeStrong(&v13->_firstName, name);
    objc_storeStrong(&v13->_lastName, lastName);
    v14 = [(AALocalContactInfo *)v13 _fullNameFromFirstName:nameCopy lastName:lastNameCopy];
    fullName = v13->_fullName;
    v13->_fullName = v14;
  }

  return v13;
}

- (AALocalContactInfo)initWithHandle:(id)handle contact:(id)contact
{
  v26 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    givenName = [contactCopy givenName];
    familyName = [contactCopy familyName];
    v20 = 138740483;
    v21 = givenName;
    v22 = 2117;
    v23 = familyName;
    v24 = 2112;
    v25 = handleCopy;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Local contact First name :%{sensitive}@  lastname: %{sensitive}@ handle %@", &v20, 0x20u);
  }

  givenName2 = [contactCopy givenName];
  familyName2 = [contactCopy familyName];
  v13 = [(AALocalContactInfo *)self initWithHandle:handleCopy firstName:givenName2 lastName:familyName2];

  if (v13)
  {
    thumbnailImageData = [contactCopy thumbnailImageData];
    imageData = v13->_imageData;
    v13->_imageData = thumbnailImageData;

    imageData = [contactCopy imageData];
    imageDataFull = v13->_imageDataFull;
    v13->_imageDataFull = imageData;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (AALocalContactInfo)initWithFamilyDSID:(id)d firstName:(id)name lastName:(id)lastName fullName:(id)fullName appleID:(id)iD familyMemberType:(id)type isChild:(BOOL)child
{
  dCopy = d;
  fullNameCopy = fullName;
  typeCopy = type;
  v19 = [(AALocalContactInfo *)self initWithHandle:iD firstName:name lastName:lastName];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_fullName, fullName);
    objc_storeStrong(&v20->_familyDSID, d);
    objc_storeStrong(&v20->_familyMemberType, type);
    v20->_contactType |= 0x10uLL;
    v20->_isChild = child;
  }

  return v20;
}

- (AALocalContactInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AALocalContactInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    v17 = v5->_imageData;
    v5->_imageData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_familyDSID"];
    familyDSID = v5->_familyDSID;
    v5->_familyDSID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_familyMemberType"];
    familyMemberType = v5->_familyMemberType;
    v5->_familyMemberType = v20;

    v5->_isChild = [coderCopy decodeBoolForKey:@"_isChild"];
    v5->_contactType = [coderCopy decodeIntegerForKey:@"_contactType"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v22;

    v5->_trustedContactStatus = [coderCopy decodeIntegerForKey:@"_trustedContactStatus"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_inheritanceContactInfo"];
    inheritanceContactInfo = v5->_inheritanceContactInfo;
    v5->_inheritanceContactInfo = v24;

    v5->_isAcceptedAndShared = [coderCopy decodeBoolForKey:@"_isAcceptedAndShared"];
    v5->_isIdMSConfirmed = [coderCopy decodeBoolForKey:@"_isIdMSConfirmed"];
    v5->_preflightStatus = [coderCopy decodeIntegerForKey:@"_preflightStatus"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"_handle"];
  [coderCopy encodeObject:self->_fullName forKey:@"_fullName"];
  [coderCopy encodeObject:self->_firstName forKey:@"_firstName"];
  [coderCopy encodeObject:self->_lastName forKey:@"_lastName"];
  [coderCopy encodeObject:self->_imageData forKey:@"_imageData"];
  [coderCopy encodeObject:self->_imageDataFull forKey:@"_imageDataFull"];
  [coderCopy encodeObject:self->_familyDSID forKey:@"_familyDSID"];
  [coderCopy encodeObject:self->_familyMemberType forKey:@"_familyMemberType"];
  [coderCopy encodeBool:self->_isChild forKey:@"_isChild"];
  [coderCopy encodeInteger:self->_contactType forKey:@"_contactType"];
  [coderCopy encodeObject:self->_custodianID forKey:@"_custodianID"];
  [coderCopy encodeInteger:self->_trustedContactStatus forKey:@"_trustedContactStatus"];
  [coderCopy encodeObject:self->_inheritanceContactInfo forKey:@"_inheritanceContactInfo"];
  [coderCopy encodeBool:self->_isAcceptedAndShared forKey:@"_isAcceptedAndShared"];
  [coderCopy encodeBool:self->_isIdMSConfirmed forKey:@"_isIdMSConfirmed"];
  [coderCopy encodeInteger:self->_preflightStatus forKey:@"_preflightStatus"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_handle copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(NSString *)self->_fullName copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(NSString *)self->_firstName copy];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(NSString *)self->_lastName copy];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  v13 = [(NSData *)self->_imageData copy];
  v14 = *(v4 + 64);
  *(v4 + 64) = v13;

  v15 = [(NSData *)self->_imageDataFull copy];
  v16 = *(v4 + 72);
  *(v4 + 72) = v15;

  v17 = [(NSNumber *)self->_familyDSID copy];
  v18 = *(v4 + 48);
  *(v4 + 48) = v17;

  v19 = [(NSString *)self->_familyMemberType copy];
  v20 = *(v4 + 56);
  *(v4 + 56) = v19;

  *(v4 + 8) = self->_isChild;
  *(v4 + 80) = self->_contactType;
  v21 = [(NSUUID *)self->_custodianID copy];
  v22 = *(v4 + 88);
  *(v4 + 88) = v21;

  *(v4 + 96) = self->_trustedContactStatus;
  if ((self->_contactType & 0xC) != 0)
  {
    v23 = [(AAInheritanceContactInfo *)self->_inheritanceContactInfo copy];
    v24 = *(v4 + 112);
    *(v4 + 112) = v23;
  }

  *(v4 + 9) = self->_isAcceptedAndShared;
  *(v4 + 10) = self->_isIdMSConfirmed;
  *(v4 + 104) = self->_preflightStatus;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AALocalContactInfo *)self _isEqualToLocalContact:equalCopy];

  return v5;
}

- (id)displayName
{
  fullName = [(AALocalContactInfo *)self fullName];
  v4 = [fullName length];

  if (v4)
  {
    fullName2 = [(AALocalContactInfo *)self fullName];
  }

  else
  {
    handle = [(AALocalContactInfo *)self handle];
    v7 = [handle length];

    if (v7)
    {
      [(AALocalContactInfo *)self handle];
    }

    else
    {
      [(AALocalContactInfo *)self firstName];
    }
    fullName2 = ;
  }

  return fullName2;
}

- (id)firstNameOrHandleForDisplay
{
  firstName = [(AALocalContactInfo *)self firstName];
  v4 = [firstName length];

  if (v4)
  {
    [(AALocalContactInfo *)self firstName];
  }

  else
  {
    [(AALocalContactInfo *)self handle];
  }
  v5 = ;

  return v5;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isChild)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isAcceptedAndShared)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_isIdMSConfirmed)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<LocalContactInfo: CustodianID: %@, status: %ld, handle: %@, familyDSID: %@, familyMemberType: %@, isChild: %@, acceptedAndShared: %@, serverConfirmed: %@>", *&self->_custodianID, self->_handle, self->_familyDSID, self->_familyMemberType, v3, v4, v2];
}

- (id)_fullNameFromFirstName:(id)name lastName:(id)lastName
{
  v5 = MEMORY[0x1E696ADF0];
  lastNameCopy = lastName;
  nameCopy = name;
  v8 = objc_alloc_init(v5);
  [v8 setGivenName:nameCopy];

  [v8 setFamilyName:lastNameCopy];
  v9 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v8 style:2 options:0];

  return v9;
}

- (BOOL)_isEqualToLocalContact:(id)contact
{
  contactCopy = contact;
  handle = [(AALocalContactInfo *)self handle];
  lowercaseString = [handle lowercaseString];
  handle2 = [contactCopy handle];

  lowercaseString2 = [handle2 lowercaseString];
  v9 = [lowercaseString isEqualToString:lowercaseString2];

  return v9;
}

- (id)_detailsTextForContactType
{
  contactType = self->_contactType;
  if (contactType)
  {
    trustedContactStatus = [(AALocalContactInfo *)self trustedContactStatus];
    familyMemberType = 0;
    if (trustedContactStatus <= 2)
    {
      if (trustedContactStatus == 1)
      {
        v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v5 = v4;
        v6 = @"ACCOUNT_RECOVERY_CONTACT_STATUS_PENDING";
        goto LABEL_26;
      }

      if (trustedContactStatus != 2)
      {
        goto LABEL_27;
      }

      if ([(AALocalContactInfo *)self preflightStatus])
      {
LABEL_14:
        if (![(AALocalContactInfo *)self isAcceptedAndShared]|| ![(AALocalContactInfo *)self isIdMSConfirmed])
        {
          v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
          v5 = v4;
          v6 = @"ACCOUNT_RECOVERY_CONTACT_STATUS_ACCEPTED_BUT_SHARE_PENDING";
          goto LABEL_26;
        }

LABEL_23:
        familyMemberType = 0;
        goto LABEL_27;
      }

LABEL_22:
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v5 = v4;
      v6 = @"ACCOUNT_RECOVERY_CONTACT_STATUS_NOT_REACHABLE";
      goto LABEL_26;
    }

LABEL_17:
    if (trustedContactStatus != 3)
    {
      if (trustedContactStatus != 4)
      {
        goto LABEL_27;
      }

      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v5 = v4;
      v6 = @"ACCOUNT_RECOVERY_CONTACT_SETUP_DECLINED";
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if ((contactType & 2) != 0)
  {
    trustedContactStatus = [(AALocalContactInfo *)self trustedContactStatus];
    familyMemberType = 0;
    if (trustedContactStatus <= 2)
    {
      if (trustedContactStatus == 1)
      {
        v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v5 = v4;
        v6 = @"ACCOUNT_RECOVERY_CONTACT_SETUP_INVITATION_NOT_ACCEPTED";
        goto LABEL_26;
      }

      if (trustedContactStatus != 2)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if ((contactType & 4) == 0 || [(AALocalContactInfo *)self trustedContactStatus]!= 1)
  {
    if ([(AALocalContactInfo *)self isFamilyMember])
    {
      familyMemberType = [(AALocalContactInfo *)self familyMemberType];
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = v4;
  v6 = @"ACCOUNT_BENEFICIARY_CONTACT_STATUS_PENDING";
LABEL_26:
  familyMemberType = [v4 localizedStringForKey:v6 value:0 table:@"Localizable"];

LABEL_27:

  return familyMemberType;
}

@end