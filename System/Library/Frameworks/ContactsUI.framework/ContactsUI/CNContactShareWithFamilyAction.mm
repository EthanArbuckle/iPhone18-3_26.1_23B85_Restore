@interface CNContactShareWithFamilyAction
- (BOOL)canPerformAction;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactShareWithFamilyAction

- (void)performActionWithSender:(id)sender
{
  v4 = *MEMORY[0x1E6996480];
  mutableContact = [(CNContactAction *)self mutableContact];
  [mutableContact setDowntimeWhitelist:v4];

  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];
}

- (BOOL)canPerformAction
{
  familySharedContainerExists = [(CNContactShareWithFamilyAction *)self familySharedContainerExists];
  if (familySharedContainerExists)
  {
    v4 = MEMORY[0x1E695CE70];
    contact = [(CNContactAction *)self contact];
    LOBYTE(v4) = [v4 isWhitelistedContact:contact];

    LOBYTE(familySharedContainerExists) = v4 ^ 1;
  }

  return familySharedContainerExists;
}

@end