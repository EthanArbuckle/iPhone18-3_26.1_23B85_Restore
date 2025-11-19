@interface AAUIOBCustodianHelpNowViewModel
- (AAUIOBCustodianHelpNowViewModel)initWithModel:(id)a3;
- (AAUIOBCustodianHelpNowViewModel)initWithRecoveryCode:(id)a3 ownerName:(id)a4;
- (void)_setupAAUIOBWelcomeControllerProtocolProperties;
@end

@implementation AAUIOBCustodianHelpNowViewModel

- (AAUIOBCustodianHelpNowViewModel)initWithRecoveryCode:(id)a3 ownerName:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUIOBCustodianHelpNowViewModel;
  v4 = [(AAOBCustodianHelpNowModel *)&v7 initWithRecoveryCode:a3 ownerName:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUIOBCustodianHelpNowViewModel *)v4 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (AAUIOBCustodianHelpNowViewModel)initWithModel:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AAUIOBCustodianHelpNowViewModel;
  v5 = [(AAUIOBCustodianHelpNowViewModel *)&v15 init];
  if (v5)
  {
    v6 = [v4 detailText];
    [(AAUIOBCustodianHelpNowViewModel *)v5 setDetailText:v6];

    v7 = [v4 title];
    [(AAUIOBCustodianHelpNowViewModel *)v5 setTitle:v7];

    v8 = [v4 primaryButton];
    [(AAOBCustodianHelpNowModel *)v5 setPrimaryButton:v8];

    v9 = [v4 secondaryButton];
    [(AAOBCustodianHelpNowModel *)v5 setSecondaryButton:v9];

    v10 = [v4 imageName];
    [(AAUIOBCustodianHelpNowViewModel *)v5 setImageName:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
      v12 = [v11 recoveryCode];
      [(AAOBCustodianHelpNowModel *)v5 setRecoveryCode:v12];

      v13 = [v11 ownerName];

      [(AAOBCustodianHelpNowModel *)v5 setOwnerName:v13];
    }

    [(AAUIOBCustodianHelpNowViewModel *)v5 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (void)_setupAAUIOBWelcomeControllerProtocolProperties
{
  v3 = [(AAUIOBCustodianHelpNowViewModel *)self imageName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [(AAUIOBCustodianHelpNowViewModel *)self imageName];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v5 imageNamed:v6 inBundle:v7];
    [(AAUIOBCustodianHelpNowViewModel *)self setImage:v8];
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(AAUIOBCustodianHelpNowViewModel *)self detailText];
  v11 = [(AAOBCustodianHelpNowModel *)self ownerName];
  v12 = [(AAOBCustodianHelpNowModel *)self ownerName];
  v13 = [v9 stringWithFormat:v10, v11, v12];
  detailText = self->_detailText;
  self->_detailText = v13;

  v15 = [AAUICustodianHelpCodeView alloc];
  v16 = [(AAUICustodianHelpCodeView *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(AAOBCustodianHelpNowModel *)self recoveryCode];
  [(UIView *)v16 setText:v17];

  contentView = self->_contentView;
  self->_contentView = v16;

  self->_contentViewLayout = 2;
}

@end