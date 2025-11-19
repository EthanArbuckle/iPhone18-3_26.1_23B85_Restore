@interface CNContactShareWithFamilyAction
- (BOOL)canPerformAction;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactShareWithFamilyAction

- (void)performActionWithSender:(id)a3
{
  v4 = *MEMORY[0x1E6996480];
  v5 = [(CNContactAction *)self mutableContact];
  [v5 setDowntimeWhitelist:v4];

  v6 = [(CNContactAction *)self delegate];
  [v6 actionDidFinish:self];
}

- (BOOL)canPerformAction
{
  v3 = [(CNContactShareWithFamilyAction *)self familySharedContainerExists];
  if (v3)
  {
    v4 = MEMORY[0x1E695CE70];
    v5 = [(CNContactAction *)self contact];
    LOBYTE(v4) = [v4 isWhitelistedContact:v5];

    LOBYTE(v3) = v4 ^ 1;
  }

  return v3;
}

@end