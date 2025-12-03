@interface SFAccountPickerConfiguration
- ($115C4C562B26FF47E01F9F4EA65B5887)connectedAppAuditToken;
- (BOOL)shouldAllowAddingNewPasswords;
- (SFAccountPickerConfiguration)init;
- (void)setConnectedAppAuditToken:(id *)token;
@end

@implementation SFAccountPickerConfiguration

- (SFAccountPickerConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SFAccountPickerConfiguration;
  v2 = [(SFAccountPickerConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldShowGeneratedPasswordsForDomain = 1;
    v4 = v2;
  }

  return v3;
}

- (BOOL)shouldAllowAddingNewPasswords
{
  shouldEnableAddingNewPasswordsIfPossible = [(SFAccountPickerConfiguration *)self shouldEnableAddingNewPasswordsIfPossible];
  if (shouldEnableAddingNewPasswordsIfPossible)
  {
    v3 = MEMORY[0x1E69B1B18];

    LOBYTE(shouldEnableAddingNewPasswordsIfPossible) = [v3 shouldAllowAddingNewPasswords];
  }

  return shouldEnableAddingNewPasswordsIfPossible;
}

- (void)setConnectedAppAuditToken:(id *)token
{
  self->_hasAuditToken = 1;
  v3 = *token->var0;
  *&self->_connectedAppAuditToken.val[4] = *&token->var0[4];
  *self->_connectedAppAuditToken.val = v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)connectedAppAuditToken
{
  v3 = *&self[5].var0[2];
  *retstr->var0 = *&self[4].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

@end