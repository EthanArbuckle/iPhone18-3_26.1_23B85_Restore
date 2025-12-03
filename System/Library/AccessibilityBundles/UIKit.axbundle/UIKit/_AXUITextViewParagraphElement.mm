@interface _AXUITextViewParagraphElement
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint:(id)point;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityValue;
- (uint64_t)_accessibilityContent;
- (uint64_t)initWithAccessibilityContainer:(uint64_t)container textRange:(uint64_t)range links:(void *)links;
- (uint64_t)links;
- (uint64_t)textRange;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)setAccessibilityRespondsToUserInteraction:(BOOL)interaction;
- (void)setLinks:(uint64_t)links;
- (void)set_accessibilityContent:(uint64_t)content;
@end

@implementation _AXUITextViewParagraphElement

- (uint64_t)links
{
  if (self)
  {
    return *(self + 64);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)initWithAccessibilityContainer:(uint64_t)container textRange:(uint64_t)range links:(void *)links
{
  v45 = *MEMORY[0x29EDCA608];
  *&v42 = container;
  *(&v42 + 1) = range;
  selfCopy = self;
  location = 0;
  objc_storeStrong(&location, a2);
  v39 = 0;
  objc_storeStrong(&v39, links);
  if (selfCopy)
  {
    v5 = selfCopy;
    selfCopy = 0;
    v37.receiver = v5;
    v37.super_class = _AXUITextViewParagraphElement;
    selfCopy = objc_msgSendSuper2(&v37, sel_initWithAccessibilityContainer_, location);
    objc_storeStrong(&selfCopy, selfCopy);
    if (selfCopy)
    {
      *(selfCopy + 72) = v42;
      objc_storeStrong(selfCopy + 8, v39);
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
          [v36 setAccessibilityContainer:selfCopy];
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
      v17.receiver = selfCopy;
      v17.super_class = _AXUITextViewParagraphElement;
      v18 = objc_msgSendSuper2(&v17, sel_accessibilityTraits, v6) | *MEMORY[0x29EDC7FD0];
      if ([location isSelectable])
      {
        v18 |= *MEMORY[0x29EDBDC00];
      }

      [selfCopy setAccessibilityTraits:v18];
    }

    v43 = MEMORY[0x29EDC9748](selfCopy);
    v38 = 1;
  }

  else
  {
    v43 = 0;
    v38 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v43;
}

- (void)setLinks:(uint64_t)links
{
  if (links)
  {
    objc_storeStrong((links + 64), a2);
  }
}

- (void)set_accessibilityContent:(uint64_t)content
{
  if (content)
  {
    objc_storeStrong((content + 48), a2);
  }
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v5 = a2;
  if (AXDoesRequestingClientDeserveAutomation())
  {
    _accessibilityContent = [(_AXUITextViewParagraphElement *)selfCopy _accessibilityContent];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _AXUITextViewParagraphElement;
    _accessibilityContent = [(_AXUITextViewParagraphElement *)&v4 accessibilityLabel];
  }

  v2 = _accessibilityContent;

  return v2;
}

- (uint64_t)_accessibilityContent
{
  if (self)
  {
    return *(self + 48);
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
    _accessibilityContent = 0;
  }

  else
  {
    _accessibilityContent = [(_AXUITextViewParagraphElement *)self _accessibilityContent];
  }

  return _accessibilityContent;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  selfCopy = self;
  v17[1] = a2;
  v16 = 0;
  accessibilityContainer = [(_AXUITextViewParagraphElement *)self accessibilityContainer];
  v15 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17[0] = v14;
  _accessibilitySelectedTextRange = [v14 _accessibilitySelectedTextRange];
  v13 = v2;
  if (([v17[0] isEditable] & 1) == 0)
  {
    text = [v17[0] text];
    v8 = [text length];
    MEMORY[0x29EDC9740](text);
    if (_accessibilitySelectedTextRange == v8)
    {
      _accessibilitySelectedTextRange = 0;
    }
  }

  if (_accessibilitySelectedTextRange < selfCopy->_textRange.location || (length = selfCopy->_textRange.length, location = selfCopy->_textRange.location, v22 = length, _accessibilitySelectedTextRange > location + length))
  {
    v10.receiver = selfCopy;
    v10.super_class = _AXUITextViewParagraphElement;
    _accessibilitySelectedTextRange2 = [(_AXUITextViewParagraphElement *)&v10 _accessibilitySelectedTextRange];
    v20 = v4;
    v11 = 1;
  }

  else
  {
    v24 = (_accessibilitySelectedTextRange - selfCopy->_textRange.location);
    v23 = v13;
    v25 = v24;
    v26 = v13;
    _accessibilitySelectedTextRange2 = v24;
    v20 = v13;
    v11 = 1;
  }

  objc_storeStrong(v17, 0);
  v5 = _accessibilitySelectedTextRange2;
  v6 = v20;
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  rangeCopy = range;
  selfCopy = self;
  v9[1] = a2;
  v8 = 0;
  accessibilityContainer = [(_AXUITextViewParagraphElement *)self accessibilityContainer];
  v7 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  [v6 _accessibilitySelectedTextRange];
  if (!v3)
  {
    [v9[0] select:selfCopy];
  }

  rangeCopy.location += selfCopy->_textRange.location;
  accessibilityContainer2 = [(_AXUITextViewParagraphElement *)selfCopy accessibilityContainer];
  [accessibilityContainer2 _accessibilitySetSelectedTextRange:{rangeCopy.location, rangeCopy.length}];
  MEMORY[0x29EDC9740](accessibilityContainer2);
  objc_storeStrong(v9, 0);
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  if (self->__accessibilityRespondsToUserInteractionOverride)
  {
    return [(NSNumber *)self->__accessibilityRespondsToUserInteractionOverride BOOLValue];
  }

  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = 0;
  if ([mEMORY[0x29EDBDFA0] assistiveTouchScannerSpeechEnabled])
  {
    v4 = AXRequestingClient() == 4;
  }

  v5 = v4;
  MEMORY[0x29EDC9740](mEMORY[0x29EDBDFA0]);
  return v5;
}

- (void)setAccessibilityRespondsToUserInteraction:(BOOL)interaction
{
  v3 = [MEMORY[0x29EDBA070] numberWithBool:interaction];
  accessibilityRespondsToUserInteractionOverride = self->__accessibilityRespondsToUserInteractionOverride;
  self->__accessibilityRespondsToUserInteractionOverride = v3;
  MEMORY[0x29EDC9740](accessibilityRespondsToUserInteractionOverride);
}

- (CGPoint)accessibilityActivationPoint:(id)point
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, point);
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
  selfCopy = self;
  v8 = a2;
  links = [(_AXUITextViewParagraphElement *)self links];
  v6 = [links count];
  *&v2 = MEMORY[0x29EDC9740](links).n128_u64[0];
  if (v6 == 1)
  {
    accessibilityHint = accessibilityLocalizedString(@"hint.activate.embedded.link");
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = _AXUITextViewParagraphElement;
    accessibilityHint = [(_AXUITextViewParagraphElement *)&v7 accessibilityHint];
  }

  v3 = accessibilityHint;

  return v3;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v4 = a2;
  if (AXRequestingClient() == 5)
  {
    return 0;
  }

  if (AXRequestingClient() == 7 && _AXSCommandAndControlEnabled())
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = _AXUITextViewParagraphElement;
  return [(_AXUITextViewParagraphElement *)&v3 isAccessibilityElement];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  v27 = *MEMORY[0x29EDCA608];
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  if (!AXDoesRequestingClientDeserveAutomation())
  {
    goto LABEL_12;
  }

  memset(__b, 0, sizeof(__b));
  obj = [(_AXUITextViewParagraphElement *)selfCopy links];
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
      _accessibilityParentView = [(_AXUITextViewParagraphElement *)selfCopy _accessibilityParentView];
      UIAccessibilityPointForPoint();
      point.x = v4;
      point.y = v5;
      *&v6 = MEMORY[0x29EDC9740](_accessibilityParentView).n128_u64[0];
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
    v16.receiver = selfCopy;
    v16.super_class = _AXUITextViewParagraphElement;
    v25 = [(_AXUITextViewParagraphElement *)&v16 _accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    v17 = 1;
  }

  objc_storeStrong(location, 0);
  v7 = v25;

  return v7;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v20[1] = a2;
  v19 = 0;
  objc_opt_class();
  accessibilityContainer = [(_AXUITextViewParagraphElement *)selfCopy accessibilityContainer];
  v18 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v17 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v18, 0);
  v20[0] = v17;
  if (v17)
  {
    v11 = v20[0];
    textRange = [(_AXUITextViewParagraphElement *)selfCopy textRange];
    v16 = v2;
    [v11 _accessibilityBoundsForRange:{textRange, v2}];
  }

  else
  {
    v13.receiver = selfCopy;
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
  if (self)
  {
    return *(self + 72);
  }

  else
  {
    *&v2 = 0;
  }

  return v2;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v18[1] = a2;
  v17 = 0;
  objc_opt_class();
  accessibilityContainer = [(_AXUITextViewParagraphElement *)selfCopy accessibilityContainer];
  v16 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18[0] = v15;
  if (v15)
  {
    links = [(_AXUITextViewParagraphElement *)selfCopy links];
    v9 = [links count];
    MEMORY[0x29EDC9740](links);
    if (v9)
    {
      v5 = v18[0];
      links2 = [(_AXUITextViewParagraphElement *)selfCopy links];
      firstObject = [links2 firstObject];
      accessibilityActivate = [(UITextViewAccessibility *)v5 _accessibilityActivateLink:firstObject]& 1;
      MEMORY[0x29EDC9740](firstObject);
      MEMORY[0x29EDC9740](links2);
    }

    else
    {
      v4 = v18[0];
      textRange = [(_AXUITextViewParagraphElement *)selfCopy textRange];
      v13 = v2;
      accessibilityActivate = [v4 _accessibilityActivateParagraphInTextViewRange:{textRange, v2}] & 1;
    }

    v14 = 1;
  }

  else
  {
    v11.receiver = selfCopy;
    v11.super_class = _AXUITextViewParagraphElement;
    accessibilityActivate = [(_AXUITextViewParagraphElement *)&v11 accessibilityActivate];
    v14 = 1;
  }

  objc_storeStrong(v18, 0);
  return accessibilityActivate & 1;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v8 = a2;
  v6.receiver = self;
  v6.super_class = _AXUITextViewParagraphElement;
  accessibilityTraits = [(_AXUITextViewParagraphElement *)&v6 accessibilityTraits];
  location = [(_AXUITextViewParagraphElement *)selfCopy accessibilityContainer];
  accessibilityTraits2 = [location accessibilityTraits];
  if ((accessibilityTraits2 & *MEMORY[0x29EDC7F80]) != 0)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F80];
  }

  v4 = accessibilityTraits;
  objc_storeStrong(&location, 0);
  return v4;
}

- (id)accessibilityLanguage
{
  selfCopy = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  accessibilityContainer = [(_AXUITextViewParagraphElement *)selfCopy accessibilityContainer];
  v8 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  if (v7)
  {
    accessibilityLanguage = [v10[0] accessibilityLanguage];
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _AXUITextViewParagraphElement;
    accessibilityLanguage = [(_AXUITextViewParagraphElement *)&v5 accessibilityLanguage];
  }

  v6 = 1;
  objc_storeStrong(v10, 0);
  v2 = accessibilityLanguage;

  return v2;
}

@end