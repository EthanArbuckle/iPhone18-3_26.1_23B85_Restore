@interface AAUIOBInvitationSentViewModel
- (AAUIOBInvitationSentViewModel)initWithModel:(id)a3;
- (AAUIOBInvitationSentViewModel)initWithType:(int64_t)a3 recipientHandle:(id)a4;
- (void)_setupAAUIOBWelcomeControllerProtocolProperties;
@end

@implementation AAUIOBInvitationSentViewModel

- (AAUIOBInvitationSentViewModel)initWithType:(int64_t)a3 recipientHandle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUIOBInvitationSentViewModel;
  v4 = [(AAOBInvitationSentModel *)&v7 initWithType:a3 recipientHandle:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUIOBInvitationSentViewModel *)v4 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (AAUIOBInvitationSentViewModel)initWithModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AAUIOBInvitationSentViewModel;
  v5 = [(AAUIOBInvitationSentViewModel *)&v12 init];
  if (v5)
  {
    v6 = [v4 detailText];
    [(AAOBInvitationSentModel *)v5 setDetailText:v6];

    v7 = [v4 title];
    [(AAOBInvitationSentModel *)v5 setTitle:v7];

    v8 = [v4 primaryButton];
    [(AAOBInvitationSentModel *)v5 setPrimaryButton:v8];

    v9 = [v4 secondaryButton];
    [(AAOBInvitationSentModel *)v5 setSecondaryButton:v9];

    v10 = [v4 recipientHandle];
    [(AAOBInvitationSentModel *)v5 setRecipientHandle:v10];

    [(AAUIOBInvitationSentViewModel *)v5 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (void)_setupAAUIOBWelcomeControllerProtocolProperties
{
  v3 = MEMORY[0x1E698B930];
  v4 = [(AAOBInvitationSentModel *)self recipientHandle];
  v9 = [v3 contactInfoForHandle:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(AAOBInvitationSentModel *)self detailText];
  v7 = [v9 displayName];
  v8 = [v5 stringWithFormat:v6, v7];
  [(AAOBInvitationSentModel *)self setDetailText:v8];

  self->_contentViewLayout = 2;
}

@end