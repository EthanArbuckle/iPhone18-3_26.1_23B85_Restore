@interface _AXUITextViewParagraphElement
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint:(id)a3;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityValue;
- (uint64_t)_accessibilityContent;
- (uint64_t)initWithAccessibilityContainer:(uint64_t)a3 textRange:(uint64_t)a4 links:(void *)a5;
- (uint64_t)links;
- (uint64_t)textRange;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)setAccessibilityRespondsToUserInteraction:(BOOL)a3;
- (void)setLinks:(uint64_t)a1;
- (void)set_accessibilityContent:(uint64_t)a1;
@end

@implementation _AXUITextViewParagraphElement

- (uint64_t)links
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)initWithAccessibilityContainer:(uint64_t)a3 textRange:(uint64_t)a4 links:(void *)a5
{
  v45 = *MEMORY[0x29EDCA608];
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v41 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  if (v41)
  {
    v5 = v41;
    v41 = 0;
    v37.receiver = v5;
    v37.super_class = _AXUITextViewParagraphElement;
    v41 = objc_msgSendSuper2(&v37, sel_initWithAccessibilityContainer_, location);
    objc_storeStrong(&v41, v41);
    if (v41)
    {
      *(v41 + 72) = v42;
      objc_storeStrong(v41 + 8, v39);
      memset(__b, 0, sizeof(__b));
      v14 = MEMORY[0x29EDC9748](v39);
      v15 = [v14 countByEnumeratingWithState:__b objects:v44 count:16];
      if (v15)
      {
        v11 = *__b[2];
        v12 = 0;
        v13 = v15;
        while (1)
        {
          v10 = v12;
          if (*__b[2] != v11)
          {
            objc_enumerationMutation(v14);
          }

          v36 = *(__b[1] + 8 * v12);
          [v36 setAccessibilityContainer:v41];
          objc_initWeak(&v34, v36);
          objc_initWeak(&from, location);
          v9 = v36;
          v26 = MEMORY[0x29EDCA5F8];
          v27 = -1073741824;
          v28 = 0;
          v29 = __80___AXUITextViewParagraphElement_initWithAccessibilityContainer_textRange_links___block_invoke;
          v30 = &unk_29F30E068;
          objc_copyWeak(&v31, &from);
          objc_copyWeak(&v32, &v34);
          [v9 _setAccessibilityFrameBlock:&v26];
          v8 = v36;
          v19 = MEMORY[0x29EDCA5F8];
          v20 = -1073741824;
          v21 = 0;
          v22 = __80___AXUITextViewParagraphElement_initWithAccessibilityContainer_textRange_links___block_invoke_2;
          v23 = &unk_29F30DFC8;
          objc_copyWeak(&v24, &from);
          objc_copyWeak(&v25, &v34);
          [v8 _setAccessibilityActivateBlock:&v19];
          objc_destroyWeak(&v25);
          objc_destroyWeak(&v24);
          objc_destroyWeak(&v32);
          objc_destroyWeak(&v31);
          objc_destroyWeak(&from);
          objc_destroyWeak(&v34);
          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [v14 countByEnumeratingWithState:__b objects:v44 count:16];
            if (!v13)
            {
              break;
            }
          }
        }
      }

      *&v6 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      v17.receiver = v41;
      v17.super_class = _AXUITextViewParagraphElement;
      v18 = objc_msgSendSuper2(&v17, sel_accessibilityTraits, v6) | *MEMORY[0x29EDC7FD0];
      if ([location isSelectable])
      {
        v18 |= *MEMORY[0x29EDBDC00];
      }

      [v41 setAccessibilityTraits:v18];
    }

    v43 = MEMORY[0x29EDC9748](v41);
    v38 = 1;
  }

  else
  {
    v43 = 0;
    v38 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v41, 0);
  return v43;
}

- (void)setLinks:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (void)set_accessibilityContent:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (id)accessibilityLabel
{
  v6 = self;
  v5 = a2;
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v7 = [(_AXUITextViewParagraphElement *)v6 _accessibilityContent];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = _AXUITextViewParagraphElement;
    v7 = [(_AXUITextViewParagraphElement *)&v4 accessibilityLabel];
  }

  v2 = v7;

  return v2;
}

- (uint64_t)_accessibilityContent
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityValue
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_AXUITextViewParagraphElement *)self _accessibilityContent];
  }

  return v4;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v18 = self;
  v17[1] = a2;
  v16 = 0;
  v9 = [(_AXUITextViewParagraphElement *)self accessibilityContainer];
  v15 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v9);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17[0] = v14;
  v12 = [v14 _accessibilitySelectedTextRange];
  v13 = v2;
  if (([v17[0] isEditable] & 1) == 0)
  {
    v7 = [v17[0] text];
    v8 = [v7 length];
    MEMORY[0x29EDC9740](v7);
    if (v12 == v8)
    {
      v12 = 0;
    }
  }

  if (v12 < v18->_textRange.location || (length = v18->_textRange.length, location = v18->_textRange.location, v22 = length, v12 > location + length))
  {
    v10.receiver = v18;
    v10.super_class = _AXUITextViewParagraphElement;
    v19 = [(_AXUITextViewParagraphElement *)&v10 _accessibilitySelectedTextRange];
    v20 = v4;
    v11 = 1;
  }

  else
  {
    v24 = (v12 - v18->_textRange.location);
    v23 = v13;
    v25 = v24;
    v26 = v13;
    v19 = v24;
    v20 = v13;
    v11 = 1;
  }

  objc_storeStrong(v17, 0);
  v5 = v19;
  v6 = v20;
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v11 = a3;
  v10 = self;
  v9[1] = a2;
  v8 = 0;
  v5 = [(_AXUITextViewParagraphElement *)self accessibilityContainer];
  v7 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v5);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  [v6 _accessibilitySelectedTextRange];
  if (!v3)
  {
    [v9[0] select:v10];
  }

  v11.location += v10->_textRange.location;
  v4 = [(_AXUITextViewParagraphElement *)v10 accessibilityContainer];
  [v4 _accessibilitySetSelectedTextRange:{v11.location, v11.length}];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(v9, 0);
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  if (self->__accessibilityRespondsToUserInteractionOverride)
  {
    return [(NSNumber *)self->__accessibilityRespondsToUserInteractionOverride BOOLValue];
  }

  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = 0;
  if ([v3 assistiveTouchScannerSpeechEnabled])
  {
    v4 = AXRequestingClient() == 4;
  }

  v5 = v4;
  MEMORY[0x29EDC9740](v3);
  return v5;
}

- (void)setAccessibilityRespondsToUserInteraction:(BOOL)a3
{
  v3 = [MEMORY[0x29EDBA070] numberWithBool:a3];
  accessibilityRespondsToUserInteractionOverride = self->__accessibilityRespondsToUserInteractionOverride;
  self->__accessibilityRespondsToUserInteractionOverride = v3;
  MEMORY[0x29EDC9740](accessibilityRespondsToUserInteractionOverride);
}

- (CGPoint)accessibilityActivationPoint:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] accessibilityFrame];
  AX_CGRectGetCenter();
  v8 = v3;
  v9 = v4;
  objc_storeStrong(location, 0);
  v5 = v8;
  v6 = v9;
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)accessibilityHint
{
  v9 = self;
  v8 = a2;
  v5 = [(_AXUITextViewParagraphElement *)self links];
  v6 = [v5 count];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6 == 1)
  {
    v10 = accessibilityLocalizedString(@"hint.activate.embedded.link");
  }

  else
  {
    v7.receiver = v9;
    v7.super_class = _AXUITextViewParagraphElement;
    v10 = [(_AXUITextViewParagraphElement *)&v7 accessibilityHint];
  }

  v3 = v10;

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v5 = self;
  v4 = a2;
  if (AXRequestingClient() == 5)
  {
    return 0;
  }

  if (AXRequestingClient() == 7 && _AXSCommandAndControlEnabled())
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = _AXUITextViewParagraphElement;
  return [(_AXUITextViewParagraphElement *)&v3 isAccessibilityElement];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v27 = *MEMORY[0x29EDCA608];
  v24 = a3;
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (!AXDoesRequestingClientDeserveAutomation())
  {
    goto LABEL_12;
  }

  memset(__b, 0, sizeof(__b));
  obj = [(_AXUITextViewParagraphElement *)v23 links];
  v15 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v12);
      v9 = [(_AXUITextViewParagraphElement *)v23 _accessibilityParentView];
      UIAccessibilityPointForPoint();
      point.x = v4;
      point.y = v5;
      *&v6 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      [v21 accessibilityFrame];
      rect = v29;
      if (CGRectContainsPoint(v29, point))
      {
        break;
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v13)
        {
          goto LABEL_10;
        }
      }
    }

    v25 = MEMORY[0x29EDC9748](v21);
    v17 = 1;
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v17)
  {
LABEL_12:
    v16.receiver = v23;
    v16.super_class = _AXUITextViewParagraphElement;
    v25 = [(_AXUITextViewParagraphElement *)&v16 _accessibilityHitTest:location[0] withEvent:v24.x, v24.y];
    v17 = 1;
  }

  objc_storeStrong(location, 0);
  v7 = v25;

  return v7;
}

- (CGRect)accessibilityFrame
{
  v21 = self;
  v20[1] = a2;
  v19 = 0;
  objc_opt_class();
  v12 = [(_AXUITextViewParagraphElement *)v21 accessibilityContainer];
  v18 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v12);
  v17 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v18, 0);
  v20[0] = v17;
  if (v17)
  {
    v11 = v20[0];
    v15 = [(_AXUITextViewParagraphElement *)v21 textRange];
    v16 = v2;
    [v11 _accessibilityBoundsForRange:{v15, v2}];
  }

  else
  {
    v13.receiver = v21;
    v13.super_class = _AXUITextViewParagraphElement;
    [(_AXUITextViewParagraphElement *)&v13 accessibilityFrame];
  }

  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v14 = 1;
  objc_storeStrong(v20, 0);
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (uint64_t)textRange
{
  if (a1)
  {
    return *(a1 + 72);
  }

  else
  {
    *&v2 = 0;
  }

  return v2;
}

- (BOOL)accessibilityActivate
{
  v19 = self;
  v18[1] = a2;
  v17 = 0;
  objc_opt_class();
  v10 = [(_AXUITextViewParagraphElement *)v19 accessibilityContainer];
  v16 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v10);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18[0] = v15;
  if (v15)
  {
    v8 = [(_AXUITextViewParagraphElement *)v19 links];
    v9 = [v8 count];
    MEMORY[0x29EDC9740](v8);
    if (v9)
    {
      v5 = v18[0];
      v7 = [(_AXUITextViewParagraphElement *)v19 links];
      v6 = [v7 firstObject];
      v20 = [(UITextViewAccessibility *)v5 _accessibilityActivateLink:v6]& 1;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
    }

    else
    {
      v4 = v18[0];
      v12 = [(_AXUITextViewParagraphElement *)v19 textRange];
      v13 = v2;
      v20 = [v4 _accessibilityActivateParagraphInTextViewRange:{v12, v2}] & 1;
    }

    v14 = 1;
  }

  else
  {
    v11.receiver = v19;
    v11.super_class = _AXUITextViewParagraphElement;
    v20 = [(_AXUITextViewParagraphElement *)&v11 accessibilityActivate];
    v14 = 1;
  }

  objc_storeStrong(v18, 0);
  return v20 & 1;
}

- (unint64_t)accessibilityTraits
{
  v9 = self;
  v8 = a2;
  v6.receiver = self;
  v6.super_class = _AXUITextViewParagraphElement;
  v7 = [(_AXUITextViewParagraphElement *)&v6 accessibilityTraits];
  location = [(_AXUITextViewParagraphElement *)v9 accessibilityContainer];
  v2 = [location accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC7F80]) != 0)
  {
    v7 |= *MEMORY[0x29EDC7F80];
  }

  v4 = v7;
  objc_storeStrong(&location, 0);
  return v4;
}

- (id)accessibilityLanguage
{
  v11 = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v4 = [(_AXUITextViewParagraphElement *)v11 accessibilityContainer];
  v8 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v4);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  if (v7)
  {
    v12 = [v10[0] accessibilityLanguage];
  }

  else
  {
    v5.receiver = v11;
    v5.super_class = _AXUITextViewParagraphElement;
    v12 = [(_AXUITextViewParagraphElement *)&v5 accessibilityLanguage];
  }

  v6 = 1;
  objc_storeStrong(v10, 0);
  v2 = v12;

  return v2;
}

@end