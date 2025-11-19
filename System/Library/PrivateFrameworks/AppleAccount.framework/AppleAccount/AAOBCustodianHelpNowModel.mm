@interface AAOBCustodianHelpNowModel
- (AAOBCustodianHelpNowModel)initWithCoder:(id)a3;
- (AAOBCustodianHelpNowModel)initWithRecoveryCode:(id)a3 ownerName:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAOBCustodianHelpNowModel

- (AAOBCustodianHelpNowModel)initWithRecoveryCode:(id)a3 ownerName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = AAOBCustodianHelpNowModel;
  v9 = [(AAOBCustodianHelpNowModel *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recoveryCode, a3);
    objc_storeStrong(&v10->_ownerName, a4);
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v12 = [v11 localizedStringForKey:@"CUSTODIAN_HELP_NOW_TITLE" value:0 table:@"Localizable"];
    title = v10->_title;
    v10->_title = v12;

    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v15 = [v14 localizedStringForKey:@"CUSTODIAN_HELP_NOW_TEXT" value:0 table:@"Localizable"];
    detailText = v10->_detailText;
    v10->_detailText = v15;

    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v18 = [v17 localizedStringForKey:@"CUSTODIAN_HELP_NOW_DONE_BUTTON" value:0 table:@"Localizable"];
    primaryButton = v10->_primaryButton;
    v10->_primaryButton = v18;

    helpLinkTitle = v10->_helpLinkTitle;
    v10->_helpLinkTitle = 0;

    helpLinkURL = v10->_helpLinkURL;
    v10->_helpLinkURL = 0;

    imageName = v10->_imageName;
    v10->_imageName = @"recovery_contact_shield";
  }

  return v10;
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
  [v5 encodeObject:self->_recoveryCode forKey:@"_recoveryCode"];
  [v5 encodeObject:self->_ownerName forKey:@"_ownerName"];
}

- (AAOBCustodianHelpNowModel)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AAOBCustodianHelpNowModel;
  v5 = [(AAOBCustodianHelpNowModel *)&v25 init];
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

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recoveryCode"];
    recoveryCode = v5->_recoveryCode;
    v5->_recoveryCode = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ownerName"];
    ownerName = v5->_ownerName;
    v5->_ownerName = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AAOBCustodianHelpNowModel);
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

  v19 = [(NSString *)self->_recoveryCode copy];
  recoveryCode = v4->_recoveryCode;
  v4->_recoveryCode = v19;

  v21 = [(NSString *)self->_ownerName copy];
  ownerName = v4->_ownerName;
  v4->_ownerName = v21;

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AAOBCustodianHelpNowModel *)self imageName];
  v5 = [(AAOBCustodianHelpNowModel *)self title];
  v6 = [(AAOBCustodianHelpNowModel *)self detailText];
  v7 = [(AAOBCustodianHelpNowModel *)self primaryButton];
  v8 = [(AAOBCustodianHelpNowModel *)self secondaryButton];
  v9 = [(AAOBCustodianHelpNowModel *)self helpLinkTitle];
  v10 = [(AAOBCustodianHelpNowModel *)self helpLinkURL];
  v11 = [(AAOBCustodianHelpNowModel *)self recoveryCode];
  v12 = [v3 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nrecoveryCode: %@\n", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end