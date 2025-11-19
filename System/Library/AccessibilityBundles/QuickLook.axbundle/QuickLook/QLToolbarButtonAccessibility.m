@interface QLToolbarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)barButtonWithTarget:(id)a3 action:(SEL)a4 maxSize:(CGSize)a5;
@end

@implementation QLToolbarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLToolbarButton" hasInstanceMethod:@"barButtonWithTarget: action: maxSize:" withFullSignature:{"@", "@", ":", "{CGSize=dd}", 0}];
  [v3 validateClass:@"QLToolbarButton" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
}

- (id)barButtonWithTarget:(id)a3 action:(SEL)a4 maxSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v26.receiver = self;
  v26.super_class = QLToolbarButtonAccessibility;
  v10 = [(QLToolbarButtonAccessibility *)&v26 barButtonWithTarget:v9 action:a4 maxSize:width, height];
  LOBYTE(location) = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v12 = [v11 customView];

  v13 = [(QLToolbarButtonAccessibility *)self safeStringForKey:@"identifier"];
  if (([v13 isEqualToString:@"QLInlineMarkup"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"QLOverlayMarkupButtonAccessibilityIdentifier"))
  {
    v14 = accessibilityLocalizedString(@"markup.button");
    [(QLToolbarButtonAccessibility *)self setAccessibilityLabel:v14];

    objc_initWeak(&location, self);
    [v10 _setAccessibilityTraitsBlock:&__block_literal_global_0];
    v20 = MEMORY[0x29EDCA5F8];
    v21 = 3221225472;
    v22 = __67__QLToolbarButtonAccessibility_barButtonWithTarget_action_maxSize___block_invoke_2;
    v23 = &unk_29F2EF9F0;
    objc_copyWeak(&v24, &location);
    [v10 _setAccessibilityValueBlock:&v20];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    goto LABEL_15;
  }

  if ([v13 isEqualToString:@"QLMarkupRedo"])
  {
    v15 = @"redo.button";
  }

  else if ([v13 isEqualToString:@"QLMarkupUndo"])
  {
    v15 = @"undo.button";
  }

  else if ([v13 isEqualToString:@"QLMarkupUndoAll"])
  {
    v15 = @"undo.all.button";
  }

  else if ([v13 isEqualToString:@"QLMediaItemViewControllerBarTrimButtonAccessibilityIdentifier"])
  {
    v15 = @"ql.trim";
  }

  else
  {
    if (![v13 isEqualToString:@"QLMediaItemViewControllerBarRotateRightButtonAccessibilityIdentifier"])
    {
      goto LABEL_15;
    }

    v15 = @"ql.rotate.right";
  }

  v16 = accessibilityLocalizedString(v15);
  [(QLToolbarButtonAccessibility *)self setAccessibilityLabel:v16];

LABEL_15:
  v17 = [(QLToolbarButtonAccessibility *)self accessibilityLabel:v20];
  [v12 setAccessibilityLabel:v17];

  v18 = [(QLToolbarButtonAccessibility *)self accessibilityLabel];
  [v10 setAccessibilityLabel:v18];

  return v10;
}

__CFString *__67__QLToolbarButtonAccessibility_barButtonWithTarget_action_maxSize___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"selected"])
  {
    v2 = @"1";
  }

  else
  {
    v2 = @"0";
  }

  v3 = v2;

  return v2;
}

@end