@interface AAUIOBCustodianInvitationModel
- (AAUIOBCustodianInvitationModel)initWithModel:(id)model;
- (AAUIOBCustodianInvitationModel)initWithType:(int64_t)type initiatorsHandle:(id)handle;
- (NSString)description;
- (void)_setupAAUIOBWelcomeControllerProtocolProperties;
@end

@implementation AAUIOBCustodianInvitationModel

- (AAUIOBCustodianInvitationModel)initWithType:(int64_t)type initiatorsHandle:(id)handle
{
  v7.receiver = self;
  v7.super_class = AAUIOBCustodianInvitationModel;
  v4 = [(AAOBCustodianInvitationModel *)&v7 initWithType:type ownerHandle:handle];
  v5 = v4;
  if (v4)
  {
    [(AAUIOBCustodianInvitationModel *)v4 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (AAUIOBCustodianInvitationModel)initWithModel:(id)model
{
  modelCopy = model;
  v16.receiver = self;
  v16.super_class = AAUIOBCustodianInvitationModel;
  v5 = [(AAUIOBCustodianInvitationModel *)&v16 init];
  if (v5)
  {
    -[AAOBCustodianInvitationModel setType:](v5, "setType:", [modelCopy type]);
    detailText = [modelCopy detailText];
    [(AAOBCustodianInvitationModel *)v5 setDetailText:detailText];

    title = [modelCopy title];
    [(AAOBCustodianInvitationModel *)v5 setTitle:title];

    primaryButton = [modelCopy primaryButton];
    [(AAOBCustodianInvitationModel *)v5 setPrimaryButton:primaryButton];

    secondaryButton = [modelCopy secondaryButton];
    [(AAOBCustodianInvitationModel *)v5 setSecondaryButton:secondaryButton];

    ownerHandle = [modelCopy ownerHandle];
    [(AAOBCustodianInvitationModel *)v5 setOwnerHandle:ownerHandle];

    custodianshipInfo = [modelCopy custodianshipInfo];
    [(AAOBCustodianInvitationModel *)v5 setCustodianshipInfo:custodianshipInfo];

    helpLinkTitle = [modelCopy helpLinkTitle];
    [(AAOBCustodianInvitationModel *)v5 setHelpLinkTitle:helpLinkTitle];

    helpLinkURL = [modelCopy helpLinkURL];
    [(AAOBCustodianInvitationModel *)v5 setHelpLinkURL:helpLinkURL];

    imageName = [modelCopy imageName];
    [(AAOBCustodianInvitationModel *)v5 setImageName:imageName];

    [(AAUIOBCustodianInvitationModel *)v5 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (void)_setupAAUIOBWelcomeControllerProtocolProperties
{
  v3 = MEMORY[0x1E698B930];
  ownerHandle = [(AAOBCustodianInvitationModel *)self ownerHandle];
  v14 = [v3 contactInfoForHandle:ownerHandle];

  v5 = [MEMORY[0x1E698B930] firstNameForLocalContactInfo:v14];
  displayName = [v14 displayName];
  v7 = [(AAOBCustodianInvitationModel *)self detailsTextWithFirstName:v5 fullName:displayName];
  [(AAOBCustodianInvitationModel *)self setDetailText:v7];

  self->_contentViewLayout = 2;
  imageName = [(AAOBCustodianInvitationModel *)self imageName];
  v9 = [imageName length];

  if (v9)
  {
    v10 = MEMORY[0x1E69DCAB8];
    imageName2 = [(AAOBCustodianInvitationModel *)self imageName];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v10 imageNamed:imageName2 inBundle:v12];
    [(AAUIOBCustodianInvitationModel *)self setImage:v13];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  imageName = [(AAOBCustodianInvitationModel *)self imageName];
  title = [(AAOBCustodianInvitationModel *)self title];
  detailText = [(AAOBCustodianInvitationModel *)self detailText];
  primaryButton = [(AAOBCustodianInvitationModel *)self primaryButton];
  secondaryButton = [(AAOBCustodianInvitationModel *)self secondaryButton];
  helpLinkURL = [(AAOBCustodianInvitationModel *)self helpLinkURL];
  helpLinkTitle = [(AAOBCustodianInvitationModel *)self helpLinkTitle];
  ownerHandle = [(AAOBCustodianInvitationModel *)self ownerHandle];
  recipientHandle = [(AAOBCustodianInvitationModel *)self recipientHandle];
  v13 = [v3 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\nrecipientHandle: %@\n", imageName, title, detailText, primaryButton, secondaryButton, helpLinkURL, helpLinkTitle, ownerHandle, recipientHandle];

  return v13;
}

@end