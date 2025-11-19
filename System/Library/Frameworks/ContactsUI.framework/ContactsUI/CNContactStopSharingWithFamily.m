@interface CNContactStopSharingWithFamily
- (BOOL)canPerformAction;
- (id)title;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactStopSharingWithFamily

- (void)performActionWithSender:(id)a3
{
  v4 = *MEMORY[0x1E6996488];
  v5 = [(CNContactAction *)self mutableContact];
  [v5 setDowntimeWhitelist:v4];

  v6 = [(CNContactAction *)self delegate];
  [v6 actionDidFinish:self];
}

- (BOOL)canPerformAction
{
  v3 = [(CNContactStopSharingWithFamily *)self familySharedContainerExists];
  if (v3)
  {
    v4 = MEMORY[0x1E695CE70];
    v5 = [(CNContactAction *)self contact];
    LOBYTE(v4) = [v4 isWhitelistedContact:v5];

    LOBYTE(v3) = v4;
  }

  return v3;
}

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"REMOVE_FROM_DOWNTIME_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end