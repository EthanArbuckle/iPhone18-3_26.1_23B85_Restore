@interface AAOBCustodianInvitationModel
- (AAOBCustodianInvitationModel)initWithCoder:(id)a3;
- (AAOBCustodianInvitationModel)initWithCustodianshipInfo:(id)a3;
- (AAOBCustodianInvitationModel)initWithType:(int64_t)a3 ownerHandle:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)detailsTextWithFirstName:(id)a3 fullName:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAOBCustodianInvitationModel

- (AAOBCustodianInvitationModel)initWithType:(int64_t)a3 ownerHandle:(id)a4
{
  v4 = a4;
  v51 = a4;
  v52.receiver = self;
  v52.super_class = AAOBCustodianInvitationModel;
  v7 = [(AAOBCustodianInvitationModel *)&v52 init];
  v8 = v7;
  if (v7)
  {
    imageName = v7->_imageName;
    v7->_imageName = @"recovery_contact_shield";

    v10 = 40;
    v8->_type = a3;
    v11 = 16;
    v12 = 24;
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_16;
        }

        v48 = v4;
        v49 = @"INELIGIBLE_CUSTODIAN_LEARN_URL";
        v13 = @"LEARN_MORE_ELIPSES";
        v50 = @"ADDED_AS_MANAGE_BUTTON";
        v45 = 56;
        v46 = @"ADDED_AS_CONFIRM_BUTTON";
        v47 = 48;
        v10 = 40;
        v11 = 16;
        v12 = 24;
        v17 = @"ADDED_AS_DETAIL_TEXT";
        [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AppleAccount", @"ADDED_AS_CONTACT_TITLE"}];
      }

      else
      {
        v48 = v4;
        v49 = @"INELIGIBLE_CUSTODIAN_LEARN_URL";
        v13 = @"LEARN_MORE_ELIPSES";
        v50 = @"INVITED_OTHER_DECLINE_BUTTON";
        v45 = 56;
        v46 = @"INVITED_OTHER_CONFIRM_BUTTON";
        v47 = 48;
        v17 = @"INVITED_OTHER_DETAIL_TEXT";
        [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AppleAccount", @"INVITED_OTHER_CONTACT_TITLE"}];
      }
    }

    else
    {
      v13 = @"OK";
      v14 = 32;
      if (a3 == 2)
      {
        v49 = @"INVITED_OTHER_CONTACT_ACCEPTED_MANAGE_BUTTON";
        v50 = @"INVITED_OTHER_CONTACT_ACCEPTED_TITLE";
        v18 = @"INVITED_OTHER_CONTACT_ACCEPTED_DETAIL_TEXT";
LABEL_14:
        v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v32 = [v31 localizedStringForKey:v18 value:0 table:@"Localizable"];
        v33 = *(&v8->super.isa + v12);
        *(&v8->super.isa + v12) = v32;

        v12 = v11;
        v15 = v13;
        v11 = v14;
        v16 = v10;
        goto LABEL_15;
      }

      if (a3 != 3)
      {
        if (a3 == 4)
        {
          v15 = @"DECLINED_CUSTODIAN_TITLE";
          v49 = @"OK";
          v50 = @"DECLINED_CUSTODIAN_DETAILS";
          v16 = 32;
LABEL_15:
          v34 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
          v35 = [v34 localizedStringForKey:v50 value:0 table:@"Localizable"];
          v36 = *(&v8->super.isa + v12);
          *(&v8->super.isa + v12) = v35;

          v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
          v38 = [v37 localizedStringForKey:v15 value:0 table:@"Localizable"];
          v39 = *(&v8->super.isa + v11);
          *(&v8->super.isa + v11) = v38;

          v40 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
          v41 = [v40 localizedStringForKey:v49 value:0 table:@"Localizable"];
          v42 = *(&v8->super.isa + v16);
          *(&v8->super.isa + v16) = v41;
        }

LABEL_16:
        objc_storeStrong(&v8->_ownerHandle, v4);
        goto LABEL_17;
      }

      v48 = v4;
      v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v20 = [v19 localizedStringForKey:@"INELIGIBLE_CUSTODIAN_DETAILS" value:0 table:@"Localizable"];
      detailText = v8->_detailText;
      v8->_detailText = v20;

      v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v23 = [v22 localizedStringForKey:@"INELIGIBLE_CUSTODIAN_TITLE" value:0 table:@"Localizable"];
      title = v8->_title;
      v8->_title = v23;

      v13 = @"DECLINED_CUSTODIAN_TITLE";
      v45 = 32;
      v46 = @"OK";
      v47 = 16;
      v10 = 24;
      v11 = 56;
      v12 = 48;
      v49 = @"OK";
      v50 = @"DECLINED_CUSTODIAN_DETAILS";
      v17 = @"INELIGIBLE_CUSTODIAN_LEARN";
      [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AppleAccount", @"INELIGIBLE_CUSTODIAN_LEARN_URL"}];
    }
    v25 = ;
    v26 = [v25 localizedStringForKey:v17 value:0 table:@"Localizable"];
    v27 = *(&v8->super.isa + v12);
    *(&v8->super.isa + v12) = v26;

    v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v29 = [v28 localizedStringForKey:v44 value:0 table:@"Localizable"];
    v30 = *(&v8->super.isa + v11);
    *(&v8->super.isa + v11) = v29;

    v12 = 32;
    v11 = v10;
    v10 = v45;
    v18 = v46;
    v14 = v47;
    v4 = v48;
    goto LABEL_14;
  }

LABEL_17:

  return v8;
}

- (AAOBCustodianInvitationModel)initWithCustodianshipInfo:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = AAOBCustodianInvitationModel;
  v6 = [(AAOBCustodianInvitationModel *)&v44 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  imageName = v6->_imageName;
  v6->_imageName = @"recovery_contact_shield";

  v9 = [v5 status];
  v10 = 32;
  v11 = 16;
  v12 = 24;
  if (v9 > 3)
  {
    v13 = @"OK";
    if (v9 == 4)
    {
      v41 = 4;
      obj = a3;
      v43 = v5;
      v40 = @"DECLINED_CUSTODIAN_TITLE";
      v26 = @"DECLINED_CUSTODIAN_DETAILS";
      goto LABEL_13;
    }

    if (v9 != 5)
    {
      goto LABEL_14;
    }

    obj = a3;
    v43 = v5;
    v39 = @"OK";
    v40 = @"INELIGIBLE_CUSTODIAN_LEARN";
    v15 = @"INELIGIBLE_CUSTODIAN_TITLE";
    v41 = 3;
    v16 = @"INELIGIBLE_CUSTODIAN_DETAILS";
LABEL_10:
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v21 = [v20 localizedStringForKey:v16 value:0 table:@"Localizable"];
    v22 = *(&v7->super.isa + v12);
    *(&v7->super.isa + v12) = v21;

    v14 = 56;
    v12 = v11;
    v11 = v10;
    v10 = 48;
    v13 = @"INELIGIBLE_CUSTODIAN_LEARN_URL";
    goto LABEL_11;
  }

  if (v9 == 1)
  {
    obj = a3;
    v43 = v5;
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v18 = [v17 localizedStringForKey:@"INVITED_OTHER_DETAIL_TEXT" value:0 table:@"Localizable"];
    detailText = v7->_detailText;
    v7->_detailText = v18;

    v40 = @"LEARN_MORE_ELIPSES";
    v41 = 0;
    v39 = @"INVITED_OTHER_DECLINE_BUTTON";
    v15 = @"INVITED_OTHER_CONFIRM_BUTTON";
    v10 = 40;
    v11 = 32;
    v12 = 16;
    v16 = @"INVITED_OTHER_CONTACT_TITLE";
    goto LABEL_10;
  }

  if (v9 == 2)
  {
    obj = a3;
    v43 = v5;
    v13 = @"ADDED_AS_MANAGE_BUTTON";
    v39 = @"ADDED_AS_CONTACT_TITLE";
    v40 = @"ADDED_AS_CONFIRM_BUTTON";
    v41 = 1;
    v14 = 40;
    v15 = @"ADDED_AS_DETAIL_TEXT";
LABEL_11:
    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v24 = [v23 localizedStringForKey:v15 value:0 table:@"Localizable"];
    v25 = *(&v7->super.isa + v12);
    *(&v7->super.isa + v12) = v24;

    v26 = v39;
    v12 = v11;
    v11 = v10;
    v10 = v14;
LABEL_13:
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v28 = [v27 localizedStringForKey:v26 value:0 table:@"Localizable"];
    v29 = *(&v7->super.isa + v12);
    *(&v7->super.isa + v12) = v28;

    v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v31 = [v30 localizedStringForKey:v40 value:0 table:@"Localizable"];
    v32 = *(&v7->super.isa + v11);
    *(&v7->super.isa + v11) = v31;

    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v34 = [v33 localizedStringForKey:v13 value:0 table:@"Localizable"];
    v35 = *(&v7->super.isa + v10);
    *(&v7->super.isa + v10) = v34;

    v5 = v43;
    v36 = [v43 ownerHandle];
    ownerHandle = v7->_ownerHandle;
    v7->_ownerHandle = v36;

    objc_storeStrong(&v7->_custodianshipInfo, obj);
    v7->_type = v41;
  }

LABEL_14:

  return v7;
}

- (id)detailsTextWithFirstName:(id)a3 fullName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAOBCustodianInvitationModel *)self type];
  v9 = &stru_1F2EF6280;
  if (v8 <= 1)
  {
    if (!v8)
    {
      v10 = MEMORY[0x1E696AEC0];
      detailText = self->_detailText;
      v15 = v6;
      goto LABEL_11;
    }

    if (v8 != 1)
    {
      goto LABEL_14;
    }

LABEL_8:
    v10 = MEMORY[0x1E696AEC0];
    detailText = self->_detailText;
LABEL_11:
    v14 = v6;
LABEL_12:
    v12 = [v10 stringWithFormat:detailText, v7, v14, v15];
    goto LABEL_13;
  }

  if (v8 == 2)
  {
    goto LABEL_8;
  }

  if (v8 != 3)
  {
    if (v8 != 4)
    {
      goto LABEL_14;
    }

    v10 = MEMORY[0x1E696AEC0];
    detailText = self->_detailText;
    goto LABEL_12;
  }

  v12 = self->_detailText;
LABEL_13:
  v9 = v12;
LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  imageName = self->_imageName;
  v5 = a3;
  [v5 encodeObject:imageName forKey:@"_imageName"];
  [v5 encodeObject:self->_title forKey:@"_title"];
  [v5 encodeObject:self->_detailText forKey:@"_detailText"];
  [v5 encodeObject:self->_primaryButton forKey:@" _primaryButton"];
  [v5 encodeObject:self->_secondaryButton forKey:@"_secondaryButton"];
  [v5 encodeObject:self->_helpLinkTitle forKey:@"_helpLinkTitle"];
  [v5 encodeObject:self->_helpLinkURL forKey:@"_helpLinkURL"];
  [v5 encodeObject:self->_ownerHandle forKey:@"_ownerHandle"];
  [v5 encodeObject:self->_recipientHandle forKey:@"_recipientHandle"];
  [v5 encodeObject:self->_custodianshipInfo forKey:@"_custodianshipInfo"];
}

- (AAOBCustodianInvitationModel)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AAOBCustodianInvitationModel;
  v5 = [(AAOBCustodianInvitationModel *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@" _primaryButton"];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryButton"];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkTitle"];
    helpLinkTitle = v5->_helpLinkTitle;
    v5->_helpLinkTitle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkURL"];
    helpLinkURL = v5->_helpLinkURL;
    v5->_helpLinkURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ownerHandle"];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recipientHandle"];
    recipientHandle = v5->_recipientHandle;
    v5->_recipientHandle = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianshipInfo"];
    custodianshipInfo = v5->_custodianshipInfo;
    v5->_custodianshipInfo = v24;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AAOBCustodianInvitationModel);
  v5 = [(NSString *)self->_imageName copy];
  imageName = v4->_imageName;
  v4->_imageName = v5;

  v7 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v7;

  v9 = [(NSString *)self->_detailText copy];
  detailText = v4->_detailText;
  v4->_detailText = v9;

  v11 = [(NSString *)self->_primaryButton copy];
  primaryButton = v4->_primaryButton;
  v4->_primaryButton = v11;

  v13 = [(NSString *)self->_secondaryButton copy];
  secondaryButton = v4->_secondaryButton;
  v4->_secondaryButton = v13;

  v15 = [(NSString *)self->_helpLinkTitle copy];
  helpLinkTitle = v4->_helpLinkTitle;
  v4->_helpLinkTitle = v15;

  v17 = [(NSString *)self->_helpLinkURL copy];
  helpLinkURL = v4->_helpLinkURL;
  v4->_helpLinkURL = v17;

  v19 = [(NSString *)self->_ownerHandle copy];
  ownerHandle = v4->_ownerHandle;
  v4->_ownerHandle = v19;

  v21 = [(NSString *)self->_recipientHandle copy];
  recipientHandle = v4->_recipientHandle;
  v4->_recipientHandle = v21;

  v23 = [(AACustodianshipInfo *)self->_custodianshipInfo copy];
  custodianshipInfo = v4->_custodianshipInfo;
  v4->_custodianshipInfo = v23;

  return v4;
}

- (NSString)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = [(AAOBCustodianInvitationModel *)self imageName];
  v3 = [(AAOBCustodianInvitationModel *)self title];
  v4 = [(AAOBCustodianInvitationModel *)self detailText];
  v5 = [(AAOBCustodianInvitationModel *)self primaryButton];
  v6 = [(AAOBCustodianInvitationModel *)self secondaryButton];
  v7 = [(AAOBCustodianInvitationModel *)self helpLinkTitle];
  v8 = [(AAOBCustodianInvitationModel *)self helpLinkURL];
  v9 = [(AAOBCustodianInvitationModel *)self ownerHandle];
  v10 = [(AAOBCustodianInvitationModel *)self recipientHandle];
  v11 = [(AAOBCustodianInvitationModel *)self custodianshipInfo];
  v12 = [v15 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\nrecipientHandle: %@\ncustodianshipInfo: %@\n", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end