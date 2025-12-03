@interface CNContactStopSharingWithFamily
- (BOOL)canPerformAction;
- (id)title;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactStopSharingWithFamily

- (void)performActionWithSender:(id)sender
{
  v4 = *MEMORY[0x1E6996488];
  mutableContact = [(CNContactAction *)self mutableContact];
  [mutableContact setDowntimeWhitelist:v4];

  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];
}

- (BOOL)canPerformAction
{
  familySharedContainerExists = [(CNContactStopSharingWithFamily *)self familySharedContainerExists];
  if (familySharedContainerExists)
  {
    v4 = MEMORY[0x1E695CE70];
    contact = [(CNContactAction *)self contact];
    LOBYTE(v4) = [v4 isWhitelistedContact:contact];

    LOBYTE(familySharedContainerExists) = v4;
  }

  return familySharedContainerExists;
}

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"REMOVE_FROM_DOWNTIME_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end