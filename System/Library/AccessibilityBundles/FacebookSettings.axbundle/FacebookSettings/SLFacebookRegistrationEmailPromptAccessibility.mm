@interface SLFacebookRegistrationEmailPromptAccessibility
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v11.receiver = self;
  v11.super_class = SLFacebookRegistrationEmailPromptAccessibility;
  v6 = [(SLFacebookRegistrationEmailPromptAccessibility *)&v11 tableView:view titleForFooterInSection:?];
  v7 = v6;
  if (!section && [v6 isEqualToString:@" "])
  {
    v8 = [(SLFacebookRegistrationEmailPromptAccessibility *)self safeValueForKey:@"_orLabel"];
    accessibilityLabel = [v8 accessibilityLabel];

    v7 = accessibilityLabel;
  }

  return v7;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  v12.receiver = self;
  v12.super_class = SLFacebookRegistrationEmailPromptAccessibility;
  string = [(SLFacebookRegistrationEmailPromptAccessibility *)&v12 textField:fieldCopy shouldChangeCharactersInRange:location replacementString:length, string];
  if (!string && [fieldCopy tag] == 1)
  {
    MEMORY[0x29C2D5C80](*MEMORY[0x29EDC7458]);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], 0);
  }

  return string;
}

@end