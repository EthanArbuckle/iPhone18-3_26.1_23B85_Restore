@interface CNEditInAppAction
- (CNEditInAppAction)initWithContact:(id)a3 activityManager:(id)a4;
- (id)title;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNEditInAppAction

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"EDIT_IN_APP_ACTION" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)performActionWithSender:(id)a3
{
  v5 = [(CNEditInAppAction *)self activityManager];
  v4 = [(CNContactAction *)self contact];
  [v5 publishRequestToEditContact:v4];
}

- (CNEditInAppAction)initWithContact:(id)a3 activityManager:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CNEditInAppAction;
  v8 = [(CNContactAction *)&v12 initWithContact:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_activityManager, a4);
    v10 = v9;
  }

  return v9;
}

@end