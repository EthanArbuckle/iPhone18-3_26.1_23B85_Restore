@interface SRSuggestionsViewControllerAccessibility
- (void)didShowSuggestionsForSuggestionsView:(id)view;
@end

@implementation SRSuggestionsViewControllerAccessibility

- (void)didShowSuggestionsForSuggestionsView:(id)view
{
  v21.receiver = self;
  v21.super_class = SRSuggestionsViewControllerAccessibility;
  viewCopy = view;
  [(SRSuggestionsViewControllerAccessibility *)&v21 didShowSuggestionsForSuggestionsView:viewCopy];
  mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [viewCopy accessibilityFrame];
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
  LODWORD(viewCopy) = CGRectIntersectsRect(v22, v23);

  if (viewCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end