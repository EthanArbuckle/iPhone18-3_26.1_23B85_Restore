@interface CNEditInAppAction
- (CNEditInAppAction)initWithContact:(id)contact activityManager:(id)manager;
- (id)title;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNEditInAppAction

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"EDIT_IN_APP_ACTION" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)performActionWithSender:(id)sender
{
  activityManager = [(CNEditInAppAction *)self activityManager];
  contact = [(CNContactAction *)self contact];
  [activityManager publishRequestToEditContact:contact];
}

- (CNEditInAppAction)initWithContact:(id)contact activityManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = CNEditInAppAction;
  v8 = [(CNContactAction *)&v12 initWithContact:contact];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_activityManager, manager);
    v10 = v9;
  }

  return v9;
}

@end