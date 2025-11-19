@interface UIApplicationShortcutIcon(ContactsUI)
+ (id)iconWithContact:()ContactsUI;
@end

@implementation UIApplicationShortcutIcon(ContactsUI)

+ (id)iconWithContact:()ContactsUI
{
  v4 = a3;
  v5 = [v4 hasBeenPersisted];
  v6 = objc_alloc(MEMORY[0x1E69D41A8]);
  if (v5)
  {
    v7 = [v4 identifier];

    v8 = [v6 initWithContactIdentifier:v7];
  }

  else
  {
    v7 = [v4 givenName];
    v9 = [v4 familyName];

    v8 = [v6 initWithFirstName:v7 lastName:v9];
  }

  v10 = [[a1 alloc] initWithSBSApplicationShortcutIcon:v8];

  return v10;
}

@end