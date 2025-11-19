@interface SRSuggestionsViewControllerAccessibility
- (void)didShowSuggestionsForSuggestionsView:(id)a3;
@end

@implementation SRSuggestionsViewControllerAccessibility

- (void)didShowSuggestionsForSuggestionsView:(id)a3
{
  v21.receiver = self;
  v21.super_class = SRSuggestionsViewControllerAccessibility;
  v3 = a3;
  [(SRSuggestionsViewControllerAccessibility *)&v21 didShowSuggestionsForSuggestionsView:v3];
  v4 = [MEMORY[0x29EDC7C40] mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 accessibilityFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  LODWORD(v3) = CGRectIntersectsRect(v22, v23);

  if (v3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end