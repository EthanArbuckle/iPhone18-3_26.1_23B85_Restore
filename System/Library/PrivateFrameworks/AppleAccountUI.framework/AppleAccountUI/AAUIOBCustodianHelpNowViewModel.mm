@interface AAUIOBCustodianHelpNowViewModel
- (AAUIOBCustodianHelpNowViewModel)initWithModel:(id)model;
- (AAUIOBCustodianHelpNowViewModel)initWithRecoveryCode:(id)code ownerName:(id)name;
- (void)_setupAAUIOBWelcomeControllerProtocolProperties;
@end

@implementation AAUIOBCustodianHelpNowViewModel

- (AAUIOBCustodianHelpNowViewModel)initWithRecoveryCode:(id)code ownerName:(id)name
{
  v7.receiver = self;
  v7.super_class = AAUIOBCustodianHelpNowViewModel;
  v4 = [(AAOBCustodianHelpNowModel *)&v7 initWithRecoveryCode:code ownerName:name];
  v5 = v4;
  if (v4)
  {
    [(AAUIOBCustodianHelpNowViewModel *)v4 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (AAUIOBCustodianHelpNowViewModel)initWithModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = AAUIOBCustodianHelpNowViewModel;
  v5 = [(AAUIOBCustodianHelpNowViewModel *)&v15 init];
  if (v5)
  {
    detailText = [modelCopy detailText];
    [(AAUIOBCustodianHelpNowViewModel *)v5 setDetailText:detailText];

    title = [modelCopy title];
    [(AAUIOBCustodianHelpNowViewModel *)v5 setTitle:title];

    primaryButton = [modelCopy primaryButton];
    [(AAOBCustodianHelpNowModel *)v5 setPrimaryButton:primaryButton];

    secondaryButton = [modelCopy secondaryButton];
    [(AAOBCustodianHelpNowModel *)v5 setSecondaryButton:secondaryButton];

    imageName = [modelCopy imageName];
    [(AAUIOBCustodianHelpNowViewModel *)v5 setImageName:imageName];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = modelCopy;
      recoveryCode = [v11 recoveryCode];
      [(AAOBCustodianHelpNowModel *)v5 setRecoveryCode:recoveryCode];

      ownerName = [v11 ownerName];

      [(AAOBCustodianHelpNowModel *)v5 setOwnerName:ownerName];
    }

    [(AAUIOBCustodianHelpNowViewModel *)v5 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (void)_setupAAUIOBWelcomeControllerProtocolProperties
{
  imageName = [(AAUIOBCustodianHelpNowViewModel *)self imageName];
  v4 = [imageName length];

  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    imageName2 = [(AAUIOBCustodianHelpNowViewModel *)self imageName];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v5 imageNamed:imageName2 inBundle:v7];
    [(AAUIOBCustodianHelpNowViewModel *)self setImage:v8];
  }

  v9 = MEMORY[0x1E696AEC0];
  detailText = [(AAUIOBCustodianHelpNowViewModel *)self detailText];
  ownerName = [(AAOBCustodianHelpNowModel *)self ownerName];
  ownerName2 = [(AAOBCustodianHelpNowModel *)self ownerName];
  v13 = [v9 stringWithFormat:detailText, ownerName, ownerName2];
  detailText = self->_detailText;
  self->_detailText = v13;

  v15 = [AAUICustodianHelpCodeView alloc];
  v16 = [(AAUICustodianHelpCodeView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  recoveryCode = [(AAOBCustodianHelpNowModel *)self recoveryCode];
  [(UIView *)v16 setText:recoveryCode];

  contentView = self->_contentView;
  self->_contentView = v16;

  self->_contentViewLayout = 2;
}

@end