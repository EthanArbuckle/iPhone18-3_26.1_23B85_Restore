@interface SUUIWebDocumentViewAccessibility
- (BOOL)accessibilityScrollRightPage;
@end

@implementation SUUIWebDocumentViewAccessibility

- (BOOL)accessibilityScrollRightPage
{
  v3 = [(SUUIWebDocumentViewAccessibility *)self safeValueForKey:@"_scroller"];
  [v3 _accessibilityContentSize];
  v5 = v4;
  [v3 visibleBounds];
  if (v3 && v5 != v6)
  {
    goto LABEL_9;
  }

  v7 = [NSClassFromString(&cfstr_Suclientcontro.isa) safeValueForKey:@"sharedController"];
  v8 = [v7 safeValueForKey:@"rootViewController"];
  NSClassFromString(&cfstr_Sutabbarcontro.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v23.receiver = self;
    v23.super_class = SUUIWebDocumentViewAccessibility;
    accessibilityScrollRightPage = [(SUUIWebDocumentViewAccessibility *)&v23 accessibilityScrollRightPage];
    goto LABEL_10;
  }

  v9 = [v8 safeValueForKey:@"overlayBackgroundViewController"];
  NSClassFromString(&cfstr_Suoverlaybackg.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v10 = [v9 safeValueForKey:@"_viewControllers"];
  v11 = [v10 count];
  if (v11 < 2)
  {

    goto LABEL_7;
  }

  v14 = v11;
  v15 = [v9 safeValueForKey:@"_selectedViewControllerIndex"];
  integerValue = [v15 integerValue];

  v17 = [v10 objectAtIndex:integerValue];
  [v9 dismissOverlay:v17 animated:1];

  if (v14 == 2)
  {
    v18 = &stru_2A23C4500;
  }

  else
  {
    v19 = MEMORY[0x29EDBA0F8];
    v20 = accessibilityLocalizedString(@"scroll.popup.summary");
    v21 = AXFormatInteger();
    v22 = AXFormatInteger();
    v18 = [v19 stringWithFormat:v20, v21, v22];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], v18);

  accessibilityScrollRightPage = 1;
LABEL_10:

  return accessibilityScrollRightPage;
}

@end