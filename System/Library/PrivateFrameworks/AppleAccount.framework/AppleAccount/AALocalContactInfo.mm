@interface AALocalContactInfo
- (AALocalContactInfo)initWithCoder:(id)a3;
- (AALocalContactInfo)initWithFamilyDSID:(id)a3 firstName:(id)a4 lastName:(id)a5 fullName:(id)a6 appleID:(id)a7 familyMemberType:(id)a8 isChild:(BOOL)a9;
- (AALocalContactInfo)initWithHandle:(id)a3 contact:(id)a4;
- (AALocalContactInfo)initWithHandle:(id)a3 firstName:(id)a4 lastName:(id)a5;
- (BOOL)_isEqualToLocalContact:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_detailsTextForContactType;
- (id)_fullNameFromFirstName:(id)a3 lastName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayName;
- (id)firstNameOrHandleForDisplay;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AALocalContactInfo

- (AALocalContactInfo)initWithHandle:(id)a3 firstName:(id)a4 lastName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AALocalContactInfo;
  v12 = [(AALocalContactInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handle, a3);
    objc_storeStrong(&v13->_firstName, a4);
    objc_storeStrong(&v13->_lastName, a5);
    v14 = [(AALocalContactInfo *)v13 _fullNameFromFirstName:v10 lastName:v11];
    fullName = v13->_fullName;
    v13->_fullName = v14;
  }

  return v13;
}

- (AALocalContactInfo)initWithHandle:(id)a3 contact:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 givenName];
    v10 = [v7 familyName];
    v20 = 138740483;
    v21 = v9;
    v22 = 2117;
    v23 = v10;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Local contact First name :%{sensitive}@  lastname: %{sensitive}@ handle %@", &v20, 0x20u);
  }

  v11 = [v7 givenName];
  v12 = [v7 familyName];
  v13 = [(AALocalContactInfo *)self initWithHandle:v6 firstName:v11 lastName:v12];

  if (v13)
  {
    v14 = [v7 thumbnailImageData];
    imageData = v13->_imageData;
    v13->_imageData = v14;

    v16 = [v7 imageData];
    imageDataFull = v13->_imageDataFull;
    v13->_imageDataFull = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (AALocalContactInfo)initWithFamilyDSID:(id)a3 firstName:(id)a4 lastName:(id)a5 fullName:(id)a6 appleID:(id)a7 familyMemberType:(id)a8 isChild:(BOOL)a9
{
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v19 = [(AALocalContactInfo *)self initWithHandle:a7 firstName:a4 lastName:a5];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_fullName, a6);
    objc_storeStrong(&v20->_familyDSID, a3);
    objc_storeStrong(&v20->_familyMemberType, a8);
    v20->_contactType |= 0x10uLL;
    v20->_isChild = a9;
  }

  return v20;
}

- (AALocalContactInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AALocalContactInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    v17 = v5->_imageData;
    v5->_imageData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_familyDSID"];
    familyDSID = v5->_familyDSID;
    v5->_familyDSID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_familyMemberType"];
    familyMemberType = v5->_familyMemberType;
    v5->_familyMemberType = v20;

    v5->_isChild = [v4 decodeBoolForKey:@"_isChild"];
    v5->_contactType = [v4 decodeIntegerForKey:@"_contactType"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v22;

    v5->_trustedContactStatus = [v4 decodeIntegerForKey:@"_trustedContactStatus"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_inheritanceContactInfo"];
    inheritanceContactInfo = v5->_inheritanceContactInfo;
    v5->_inheritanceContactInfo = v24;

    v5->_isAcceptedAndShared = [v4 decodeBoolForKey:@"_isAcceptedAndShared"];
    v5->_isIdMSConfirmed = [v4 decodeBoolForKey:@"_isIdMSConfirmed"];
    v5->_preflightStatus = [v4 decodeIntegerForKey:@"_preflightStatus"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"_handle"];
  [v5 encodeObject:self->_fullName forKey:@"_fullName"];
  [v5 encodeObject:self->_firstName forKey:@"_firstName"];
  [v5 encodeObject:self->_lastName forKey:@"_lastName"];
  [v5 encodeObject:self->_imageData forKey:@"_imageData"];
  [v5 encodeObject:self->_imageDataFull forKey:@"_imageDataFull"];
  [v5 encodeObject:self->_familyDSID forKey:@"_familyDSID"];
  [v5 encodeObject:self->_familyMemberType forKey:@"_familyMemberType"];
  [v5 encodeBool:self->_isChild forKey:@"_isChild"];
  [v5 encodeInteger:self->_contactType forKey:@"_contactType"];
  [v5 encodeObject:self->_custodianID forKey:@"_custodianID"];
  [v5 encodeInteger:self->_trustedContactStatus forKey:@"_trustedContactStatus"];
  [v5 encodeObject:self->_inheritanceContactInfo forKey:@"_inheritanceContactInfo"];
  [v5 encodeBool:self->_isAcceptedAndShared forKey:@"_isAcceptedAndShared"];
  [v5 encodeBool:self->_isIdMSConfirmed forKey:@"_isIdMSConfirmed"];
  [v5 encodeInteger:self->_preflightStatus forKey:@"_preflightStatus"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AALocalContactInfo *)self _isEqualToLocalContact:v4];

  return v5;
}

- (id)displayName
{
  v3 = [(AALocalContactInfo *)self fullName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(AALocalContactInfo *)self fullName];
  }

  else
  {
    v6 = [(AALocalContactInfo *)self handle];
    v7 = [v6 length];

    if (v7)
    {
      [(AALocalContactInfo *)self handle];
    }

    else
    {
      [(AALocalContactInfo *)self firstName];
    }
    v5 = ;
  }

  return v5;
}

- (id)firstNameOrHandleForDisplay
{
  v3 = [(AALocalContactInfo *)self firstName];
  v4 = [v3 length];

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

- (id)_fullNameFromFirstName:(id)a3 lastName:(id)a4
{
  v5 = MEMORY[0x1E696ADF0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setGivenName:v7];

  [v8 setFamilyName:v6];
  v9 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v8 style:2 options:0];

  return v9;
}

- (BOOL)_isEqualToLocalContact:(id)a3
{
  v4 = a3;
  v5 = [(AALocalContactInfo *)self handle];
  v6 = [v5 lowercaseString];
  v7 = [v4 handle];

  v8 = [v7 lowercaseString];
  v9 = [v6 isEqualToString:v8];

  return v9;
}

- (id)_detailsTextForContactType
{
  contactType = self->_contactType;
  if (contactType)
  {
    v7 = [(AALocalContactInfo *)self trustedContactStatus];
    v8 = 0;
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v5 = v4;
        v6 = @"ACCOUNT_RECOVERY_CONTACT_STATUS_PENDING";
        goto LABEL_26;
      }

      if (v7 != 2)
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
        v8 = 0;
        goto LABEL_27;
      }

LABEL_22:
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v5 = v4;
      v6 = @"ACCOUNT_RECOVERY_CONTACT_STATUS_NOT_REACHABLE";
      goto LABEL_26;
    }

LABEL_17:
    if (v7 != 3)
    {
      if (v7 != 4)
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
    v7 = [(AALocalContactInfo *)self trustedContactStatus];
    v8 = 0;
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v5 = v4;
        v6 = @"ACCOUNT_RECOVERY_CONTACT_SETUP_INVITATION_NOT_ACCEPTED";
        goto LABEL_26;
      }

      if (v7 != 2)
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
      v8 = [(AALocalContactInfo *)self familyMemberType];
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = v4;
  v6 = @"ACCOUNT_BENEFICIARY_CONTACT_STATUS_PENDING";
LABEL_26:
  v8 = [v4 localizedStringForKey:v6 value:0 table:@"Localizable"];

LABEL_27:

  return v8;
}

@end