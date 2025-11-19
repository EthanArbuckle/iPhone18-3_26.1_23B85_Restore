@interface SUWebViewAccessibility
- (BOOL)_accessibilitySUWebViewIsScrollAncestor;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)accessibilityScrollRightPage;
@end

@implementation SUWebViewAccessibility

- (BOOL)_accessibilitySUWebViewIsScrollAncestor
{
  v3 = [NSClassFromString(&cfstr_Suclientcontro.isa) safeValueForKey:@"sharedController"];
  v4 = [v3 safeValueForKey:@"rootViewController"];
  NSClassFromString(&cfstr_Sutabbarcontro.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 safeValueForKey:@"overlayBackgroundViewController"];
    NSClassFromString(&cfstr_Suoverlaybackg.isa);
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 safeValueForKey:@"_viewControllers"];
      v7 = [v6 count];

      if (v7 > 1)
      {

        v8 = 1;
        goto LABEL_6;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = SUWebViewAccessibility;
  v8 = [(SUWebViewAccessibility *)&v10 _accessibilityIsScrollAncestor];
LABEL_6:

  return v8;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v10[2] = *MEMORY[0x29EDCA608];
  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  v9[0] = @"key";
  v9[1] = @"direction";
  v10[0] = @"scroll";
  v5 = [MEMORY[0x29EDBA070] numberWithInteger:a3];
  v10[1] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 postNotificationName:@"AXActionForWebNotification" object:0 userInfo:v6];

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 postNotificationName:@"AXActionForWebNotification" object:0 userInfo:&unk_2A23C7250];

  return 0;
}

- (BOOL)accessibilityScrollRightPage
{
  v3 = [NSClassFromString(&cfstr_Suclientcontro.isa) safeValueForKey:@"sharedController"];
  v4 = [v3 safeValueForKey:@"rootViewController"];
  NSClassFromString(&cfstr_Sutabbarcontro.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = [v4 safeValueForKey:@"overlayBackgroundViewController"];
  NSClassFromString(&cfstr_Suoverlaybackg.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:

LABEL_6:
    v19.receiver = self;
    v19.super_class = SUWebViewAccessibility;
    v8 = [(SUWebViewAccessibility *)&v19 accessibilityScrollRightPage];
    goto LABEL_7;
  }

  v6 = [v5 safeValueForKey:@"_viewControllers"];
  v7 = [v6 count];
  if (v7 < 2)
  {

    goto LABEL_5;
  }

  v10 = v7;
  v11 = [v5 safeValueForKey:@"_selectedViewControllerIndex"];
  v12 = [v11 integerValue];

  v13 = [v6 objectAtIndex:v12];
  [v5 dismissOverlay:v13 animated:1];

  if (v10 == 2)
  {
    v14 = &stru_2A23C4500;
  }

  else
  {
    v15 = MEMORY[0x29EDBA0F8];
    v16 = accessibilityLocalizedString(@"scroll.popup.summary");
    v17 = AXFormatInteger();
    v18 = AXFormatInteger();
    v14 = [v15 stringWithFormat:v16, v17, v18];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], v14);

  v8 = 1;
LABEL_7:

  return v8;
}

@end