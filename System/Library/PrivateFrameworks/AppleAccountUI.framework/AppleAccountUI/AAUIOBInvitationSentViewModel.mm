@interface AAUIOBInvitationSentViewModel
- (AAUIOBInvitationSentViewModel)initWithModel:(id)model;
- (AAUIOBInvitationSentViewModel)initWithType:(int64_t)type recipientHandle:(id)handle;
- (void)_setupAAUIOBWelcomeControllerProtocolProperties;
@end

@implementation AAUIOBInvitationSentViewModel

- (AAUIOBInvitationSentViewModel)initWithType:(int64_t)type recipientHandle:(id)handle
{
  v7.receiver = self;
  v7.super_class = AAUIOBInvitationSentViewModel;
  v4 = [(AAOBInvitationSentModel *)&v7 initWithType:type recipientHandle:handle];
  v5 = v4;
  if (v4)
  {
    [(AAUIOBInvitationSentViewModel *)v4 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (AAUIOBInvitationSentViewModel)initWithModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = AAUIOBInvitationSentViewModel;
  v5 = [(AAUIOBInvitationSentViewModel *)&v12 init];
  if (v5)
  {
    detailText = [modelCopy detailText];
    [(AAOBInvitationSentModel *)v5 setDetailText:detailText];

    title = [modelCopy title];
    [(AAOBInvitationSentModel *)v5 setTitle:title];

    primaryButton = [modelCopy primaryButton];
    [(AAOBInvitationSentModel *)v5 setPrimaryButton:primaryButton];

    secondaryButton = [modelCopy secondaryButton];
    [(AAOBInvitationSentModel *)v5 setSecondaryButton:secondaryButton];

    recipientHandle = [modelCopy recipientHandle];
    [(AAOBInvitationSentModel *)v5 setRecipientHandle:recipientHandle];

    [(AAUIOBInvitationSentViewModel *)v5 _setupAAUIOBWelcomeControllerProtocolProperties];
  }

  return v5;
}

- (void)_setupAAUIOBWelcomeControllerProtocolProperties
{
  v3 = MEMORY[0x1E698B930];
  recipientHandle = [(AAOBInvitationSentModel *)self recipientHandle];
  v9 = [v3 contactInfoForHandle:recipientHandle];

  v5 = MEMORY[0x1E696AEC0];
  detailText = [(AAOBInvitationSentModel *)self detailText];
  displayName = [v9 displayName];
  v8 = [v5 stringWithFormat:detailText, displayName];
  [(AAOBInvitationSentModel *)self setDetailText:v8];

  self->_contentViewLayout = 2;
}

@end