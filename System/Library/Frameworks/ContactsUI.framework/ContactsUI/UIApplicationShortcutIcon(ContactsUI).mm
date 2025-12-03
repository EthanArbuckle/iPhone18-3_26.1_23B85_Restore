@interface UIApplicationShortcutIcon(ContactsUI)
+ (id)iconWithContact:()ContactsUI;
@end

@implementation UIApplicationShortcutIcon(ContactsUI)

+ (id)iconWithContact:()ContactsUI
{
  v4 = a3;
  hasBeenPersisted = [v4 hasBeenPersisted];
  v6 = objc_alloc(MEMORY[0x1E69D41A8]);
  if (hasBeenPersisted)
  {
    identifier = [v4 identifier];

    v8 = [v6 initWithContactIdentifier:identifier];
  }

  else
  {
    identifier = [v4 givenName];
    familyName = [v4 familyName];

    v8 = [v6 initWithFirstName:identifier lastName:familyName];
  }

  v10 = [[self alloc] initWithSBSApplicationShortcutIcon:v8];

  return v10;
}

@end