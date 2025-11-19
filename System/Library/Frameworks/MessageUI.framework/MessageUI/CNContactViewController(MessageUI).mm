@interface CNContactViewController(MessageUI)
+ (id)_mf_viewControllerForUnknownContactWithEmailAddress:()MessageUI;
@end

@implementation CNContactViewController(MessageUI)

+ (id)_mf_viewControllerForUnknownContactWithEmailAddress:()MessageUI
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v3];
  v5 = [v4 displayName];
  v6 = [v5 ec_personNameComponents];

  v7 = [MEMORY[0x1E695CD58] em_contactWithPersonNameComponents:v6 emailAddress:v3 emailAddressLabel:0];
  v8 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v7];
  v9 = [MEMORY[0x1E695CD80] stringFromContact:v7 style:0];
  if (![v9 length])
  {
    [v8 setPrimaryPropertyKey:*MEMORY[0x1E695C208]];
  }

  return v8;
}

@end