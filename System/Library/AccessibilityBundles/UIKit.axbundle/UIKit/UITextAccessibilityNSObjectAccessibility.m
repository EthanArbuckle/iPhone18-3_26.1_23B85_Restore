@interface UITextAccessibilityNSObjectAccessibility
- (uint64_t)_accessibilityFontTraitEnabled:(void *)a3 enabledValue:;
- (void)_accessibilityBold;
- (void)_accessibilityCopy;
- (void)_accessibilityCut;
- (void)_accessibilityDefine;
- (void)_accessibilityDelete;
- (void)_accessibilityItalic;
- (void)_accessibilityMoveDown;
- (void)_accessibilityMoveUp;
- (void)_accessibilityPaste;
- (void)_accessibilityPostStyleOptionStatus:(uint64_t)a1;
- (void)_accessibilityRedo;
- (void)_accessibilityReplace;
- (void)_accessibilityScanText;
- (void)_accessibilitySelect;
- (void)_accessibilitySelectAll;
- (void)_accessibilityShare;
- (void)_accessibilityShowWritingTools;
- (void)_accessibilitySpeak;
- (void)_accessibilitySpeakSentence;
- (void)_accessibilitySpeakSpellOut;
- (void)_accessibilityUnderline;
- (void)_accessibilityUndo;
@end

@implementation UITextAccessibilityNSObjectAccessibility

- (void)_accessibilityCopy
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_copy_ withSender:0])
  {
    [location[0] copy:0];
  }

  else
  {
    v2 = [MEMORY[0x29EDC7B08] activeInstance];
    [v2 copyOperation];
    MEMORY[0x29EDC9740](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityScanText
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_captureTextFromCamera_ withSender:0])
  {
    [location[0] captureTextFromCamera:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityCut
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_cut_ withSender:0])
  {
    [location[0] cut:0];
  }

  else
  {
    v2 = [MEMORY[0x29EDC7B08] activeInstance];
    [v2 cutOperation];
    MEMORY[0x29EDC9740](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilitySelect
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_select_ withSender:0])
  {
    [location[0] select:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityDelete
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_delete_ withSender:0])
  {
    [location[0] delete:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityReplace
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location[0] _promptForReplace:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityPaste
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_paste_ withSender:0])
  {
    [location[0] paste:0];
  }

  else
  {
    v2 = [MEMORY[0x29EDC7B08] activeInstance];
    [v2 pasteOperation];
    MEMORY[0x29EDC9740](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityDefine
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_lookup_ withSender:0])
  {
    [location[0] performSelector:sel_lookup_ withObject:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityShare
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_share_ withSender:0])
  {
    [location[0] performSelector:sel_share_ withObject:0];
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel__share_ withSender:0])
  {
    [location[0] performSelector:sel__share_ withObject:0];
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)_accessibilityFontTraitEnabled:(void *)a3 enabledValue:
{
  v30 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  if (v30)
  {
    v26 = [v30 _accessibilityTextViewTextOperationResponder];
    v25 = 0;
    if ([v26 _accessibilityIsWebDocumentView])
    {
      v3 = [v26 safeValueForKey:@"_webView"];
      v4 = v25;
      v25 = v3;
      v14 = [v3 typingStyle];
      v7 = [v14 getPropertyValue:location];
      v31 = [v7 isEqualToString:v28] & 1;
      MEMORY[0x29EDC9740](v7);
      v27 = 1;
      objc_storeStrong(&v14, 0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v23 = 0;
        objc_opt_class();
        v12 = [v26 safeValueForKey:@"attributedText"];
        v22 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v12);
        v21 = MEMORY[0x29EDC9748](v22);
        objc_storeStrong(&v22, 0);
        v24 = v21;
        v5 = objc_alloc(MEMORY[0x29EDBD7E8]);
        v20 = [v5 initWithStringOrAttributedString:v24];
        v19 = [v20 coalescedFontAttributes];
        v17 = 0;
        objc_opt_class();
        v11 = [v19 objectForKeyedSubscript:*MEMORY[0x29EDC7638]];
        v16 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v11);
        v15 = MEMORY[0x29EDC9748](v16);
        objc_storeStrong(&v16, 0);
        v18 = v15;
        if ([v28 isEqualToString:@"bold"])
        {
          v10 = [v18 fontDescriptor];
          v31 = ([v10 symbolicTraits] & 2) == 2;
          MEMORY[0x29EDC9740](v10);
          v27 = 1;
        }

        else if ([v28 isEqualToString:@"italic"])
        {
          v9 = [v18 fontDescriptor];
          v31 = ([v9 symbolicTraits] & 1) == 1;
          MEMORY[0x29EDC9740](v9);
          v27 = 1;
        }

        else
        {
          if ([v28 isEqualToString:@"underline"])
          {
            v8 = [v19 objectForKeyedSubscript:*MEMORY[0x29EDC7670]];
            v31 = [v8 intValue] > 0;
            MEMORY[0x29EDC9740](v8);
          }

          else
          {
            v31 = 0;
          }

          v27 = 1;
        }

        objc_storeStrong(&v18, 0);
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v24, 0);
      }

      else
      {
        v31 = 0;
        v27 = 1;
      }
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v31 = 0;
    v27 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  return v31 & 1;
}

- (void)_accessibilityPostStyleOptionStatus:(uint64_t)a1
{
  v5 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v5)
  {
    argument = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:location];
    [argument setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD978]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
    objc_storeStrong(&argument, 0);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)_accessibilityBold
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v8[0] canPerformAction:sel_toggleBoldface_ withSender:0])
  {
    [v8[0] performSelector:sel_toggleBoldface_ withObject:0];
    v5 = 0;
    v3 = 0;
    if (([(UITextAccessibilityNSObjectAccessibility *)v9 _accessibilityFontTraitEnabled:@"bold" enabledValue:?]& 1) != 0)
    {
      v6 = accessibilityLocalizedString(@"bold.enabled");
      v5 = 1;
      v2 = MEMORY[0x29EDC9748](v6);
    }

    else
    {
      v4 = accessibilityLocalizedString(@"bold.disabled");
      v3 = 1;
      v2 = MEMORY[0x29EDC9748](v4);
    }

    v7 = v2;
    if (v3)
    {
      MEMORY[0x29EDC9740](v4);
    }

    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }

    [(UITextAccessibilityNSObjectAccessibility *)v9 _accessibilityPostStyleOptionStatus:v7];
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v8, 0);
}

- (void)_accessibilityItalic
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v8[0] canPerformAction:sel_toggleItalics_ withSender:0])
  {
    [v8[0] performSelector:sel_toggleItalics_ withObject:0];
    v5 = 0;
    v3 = 0;
    if (([(UITextAccessibilityNSObjectAccessibility *)v9 _accessibilityFontTraitEnabled:@"italic" enabledValue:?]& 1) != 0)
    {
      v6 = accessibilityLocalizedString(@"italic.enabled");
      v5 = 1;
      v2 = MEMORY[0x29EDC9748](v6);
    }

    else
    {
      v4 = accessibilityLocalizedString(@"italic.disabled");
      v3 = 1;
      v2 = MEMORY[0x29EDC9748](v4);
    }

    v7 = v2;
    if (v3)
    {
      MEMORY[0x29EDC9740](v4);
    }

    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }

    [(UITextAccessibilityNSObjectAccessibility *)v9 _accessibilityPostStyleOptionStatus:v7];
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v8, 0);
}

- (void)_accessibilitySpeakSentence
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel__accessibilitySpeakSentence_ withSender:0])
  {
    [location[0] performSelector:sel__accessibilitySpeakSentence_ withObject:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilitySpeakSpellOut
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel__accessibilitySpeakSpellOut_ withSender:0])
  {
    [location[0] performSelector:sel__accessibilitySpeakSpellOut_ withObject:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilitySpeak
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel__accessibilitySpeak_ withSender:0])
  {
    [location[0] performSelector:sel__accessibilitySpeak_ withObject:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityUnderline
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v8[0] canPerformAction:sel_toggleUnderline_ withSender:0])
  {
    [v8[0] performSelector:sel_toggleUnderline_ withObject:0];
    v5 = 0;
    v3 = 0;
    if (([(UITextAccessibilityNSObjectAccessibility *)v9 _accessibilityFontTraitEnabled:@"underline" enabledValue:?]& 1) != 0)
    {
      v6 = accessibilityLocalizedString(@"underline.enabled");
      v5 = 1;
      v2 = MEMORY[0x29EDC9748](v6);
    }

    else
    {
      v4 = accessibilityLocalizedString(@"underline.disabled");
      v3 = 1;
      v2 = MEMORY[0x29EDC9748](v4);
    }

    v7 = v2;
    if (v3)
    {
      MEMORY[0x29EDC9740](v4);
    }

    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }

    [(UITextAccessibilityNSObjectAccessibility *)v9 _accessibilityPostStyleOptionStatus:v7];
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v8, 0);
}

- (void)_accessibilitySelectAll
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_selectAll_ withSender:0])
  {
    [location[0] selectAll:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityMoveUp
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel__moveUp_withHistory_ withSender:0])
  {
    AXPerformSafeBlock();
  }

  objc_storeStrong(location, 0);
}

double __64__UITextAccessibilityNSObjectAccessibility__accessibilityMoveUp__block_invoke()
{
  v1 = [MEMORY[0x29EDC7B08] activeInstance];
  [v1 performTextOperationActionSelector:NSSelectorFromString(&cfstr_Moveup.isa)];
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

- (void)_accessibilityMoveDown
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel__moveDown_withHistory_ withSender:0])
  {
    AXPerformSafeBlock();
  }

  objc_storeStrong(location, 0);
}

double __66__UITextAccessibilityNSObjectAccessibility__accessibilityMoveDown__block_invoke()
{
  v1 = [MEMORY[0x29EDC7B08] activeInstance];
  [v1 performTextOperationActionSelector:NSSelectorFromString(&cfstr_Movedown.isa)];
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

- (void)_accessibilityUndo
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [location[0] undoManager];
    [v2 undo];
    MEMORY[0x29EDC9740](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityRedo
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [location[0] undoManager];
    [v2 redo];
    MEMORY[0x29EDC9740](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)_accessibilityShowWritingTools
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextAccessibilityNSObjectAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canPerformAction:sel_showWritingTools_ withSender:0])
  {
    [location[0] showWritingTools:0];
  }

  objc_storeStrong(location, 0);
}

@end