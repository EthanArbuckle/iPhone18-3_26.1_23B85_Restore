@interface SLFacebookRegistrationEmailPromptAccessibility
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation SLFacebookRegistrationEmailPromptAccessibility

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SLFacebookRegistrationEmailPromptAccessibility;
  [(SLFacebookRegistrationEmailPromptAccessibility *)&v4 viewWillLayoutSubviews];
  v3 = [(SLFacebookRegistrationEmailPromptAccessibility *)self safeValueForKey:@"_orLabel"];
  [v3 setIsAccessibilityElement:0];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = SLFacebookRegistrationEmailPromptAccessibility;
  v6 = [(SLFacebookRegistrationEmailPromptAccessibility *)&v11 tableView:a3 titleForFooterInSection:?];
  v7 = v6;
  if (!a4 && [v6 isEqualToString:@" "])
  {
    v8 = [(SLFacebookRegistrationEmailPromptAccessibility *)self safeValueForKey:@"_orLabel"];
    v9 = [v8 accessibilityLabel];

    v7 = v9;
  }

  return v7;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v12.receiver = self;
  v12.super_class = SLFacebookRegistrationEmailPromptAccessibility;
  v10 = [(SLFacebookRegistrationEmailPromptAccessibility *)&v12 textField:v9 shouldChangeCharactersInRange:location replacementString:length, a5];
  if (!v10 && [v9 tag] == 1)
  {
    MEMORY[0x29C2D5C80](*MEMORY[0x29EDC7458]);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], 0);
  }

  return v10;
}

@end