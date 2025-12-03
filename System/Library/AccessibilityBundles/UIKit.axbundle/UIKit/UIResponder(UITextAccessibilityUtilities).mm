@interface UIResponder(UITextAccessibilityUtilities)
- (id)_accessibilityTextOperations;
- (uint64_t)_accessibilityBeginUndoableTextInsertion;
- (uint64_t)_accessibilityEndUndoableTextInsertion;
- (uint64_t)_accessibilityHasTextOperations;
@end

@implementation UIResponder(UITextAccessibilityUtilities)

- (uint64_t)_accessibilityHasTextOperations
{
  selfCopy = self;
  v10 = a2;
  if (AXIgnoresTextOperations())
  {
    v12 = 0;
  }

  else
  {
    v5 = 1;
    if (AXRequestingClient() != 3)
    {
      v5 = AXRequestingClient() == 4;
    }

    v9 = v5;
    _accessibilityTextViewTextOperationResponder = [selfCopy _accessibilityTextViewTextOperationResponder];
    if (objc_opt_respondsToSelector() & 1) != 0 && (([_accessibilityTextViewTextOperationResponder canPerformAction:sel_copy_ withSender:0] & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel_select_, 0) & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel_captureTextFromCamera_, 0) & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel_cut_, 0) & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel_selectAll_, 0) & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel__define_, 0) & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel__share_, 0) & 1) != 0 || v9 && (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel_paste_, 0) & 1) != 0 || !v9 && (objc_opt_respondsToSelector()))
    {
      v12 = 1;
      v7 = 1;
    }

    else if (objc_opt_respondsToSelector() & 1) != 0 && (-[UIResponder _accessibilitySupportsRichTextEditing](selfCopy) & 1) != 0 && (([_accessibilityTextViewTextOperationResponder canPerformAction:sel_toggleItalics_ withSender:0] & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel_toggleBoldface_, 0) & 1) != 0 || (objc_msgSend(_accessibilityTextViewTextOperationResponder, "canPerformAction:withSender:", sel_toggleUnderline_, 0)))
    {
      v12 = 1;
      v7 = 1;
    }

    else
    {
      accessibilityMenuActions = [_accessibilityTextViewTextOperationResponder accessibilityMenuActions];
      v4 = [accessibilityMenuActions count];
      MEMORY[0x29EDC9740](accessibilityMenuActions);
      if (v4)
      {
        v12 = 1;
        v7 = 1;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ((location = [_accessibilityTextViewTextOperationResponder undoManager], (objc_msgSend(location, "canUndo") & 1) == 0) && (objc_msgSend(location, "canRedo") & 1) == 0 ? (v7 = 0) : (v12 = 1, v7 = 1), objc_storeStrong(&location, 0), !v7))
        {
          v12 = 0;
          v7 = 1;
        }
      }
    }

    objc_storeStrong(&_accessibilityTextViewTextOperationResponder, 0);
  }

  return v12 & 1;
}

- (id)_accessibilityTextOperations
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector() & 1) != 0 || (v2 = [v11[0] _accessibilityTextViewTextOperationResponder], v3 = v11[0], v11[0] = v2, MEMORY[0x29EDC9740](v3), (objc_opt_respondsToSelector()))
  {
    array = [MEMORY[0x29EDB8DE8] array];
    accessibilityMenuActions = [v11[0] accessibilityMenuActions];
    if ([accessibilityMenuActions count])
    {
      [array addObjectsFromArray:accessibilityMenuActions];
    }

    if ([v11[0] canPerformAction:sel_captureTextFromCamera_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC68]];
    }

    if ([v11[0] canPerformAction:sel_copy_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC18]];
    }

    if ([v11[0] canPerformAction:sel_select_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC70]];
    }

    if ([v11[0] canPerformAction:sel_cut_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC20]];
    }

    if ([v11[0] canPerformAction:sel_paste_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC50]];
    }

    if ([v11[0] canPerformAction:sel_delete_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC38]];
    }

    if ([v11[0] canPerformAction:sel__promptForReplace_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC60]];
    }

    if ([v11[0] canPerformAction:sel_selectAll_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC78]];
    }

    if ([v11[0] canPerformAction:sel__define_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC30]];
    }

    if ([v11[0] canPerformAction:sel__share_ withSender:0] & 1) != 0 || (objc_msgSend(v11[0], "canPerformAction:withSender:", sel_share_, 0))
    {
      [array addObject:*MEMORY[0x29EDBDC80]];
    }

    _accessibilitySupportsRichTextEditing = [(UIResponder *)selfCopy _accessibilitySupportsRichTextEditing];
    if (_accessibilitySupportsRichTextEditing & 1) != 0 && ([v11[0] canPerformAction:sel_toggleItalics_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC48]];
    }

    if (_accessibilitySupportsRichTextEditing & 1) != 0 && ([v11[0] canPerformAction:sel_toggleBoldface_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDC10]];
    }

    if (_accessibilitySupportsRichTextEditing & 1) != 0 && ([v11[0] canPerformAction:sel_toggleUnderline_ withSender:0])
    {
      [array addObject:*MEMORY[0x29EDBDCA0]];
    }

    if ([MEMORY[0x29EDC7DE0] isWritingToolsAvailable] & 1) != 0 && (objc_msgSend(v11[0], "canPerformAction:withSender:", sel_showWritingTools_, 0))
    {
      [array addObject:*MEMORY[0x29EDBDCB0]];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      location = [v11[0] undoManager];
      if ([location canUndo])
      {
        [array addObject:*MEMORY[0x29EDBDCA8]];
      }

      if ([location canRedo])
      {
        [array addObject:*MEMORY[0x29EDBDC58]];
      }

      objc_storeStrong(&location, 0);
    }

    if (_AXSQuickSpeakEnabled())
    {
      if ([v11[0] canPerformAction:sel__accessibilitySpeak_ withSender:0] & 1) != 0 || (objc_msgSend(v11[0], "canPerformAction:withSender:", sel__accessibilitySpeakLanguageSelection_, 0))
      {
        [array addObject:*MEMORY[0x29EDBDC88]];
      }

      else if ([v11[0] canPerformAction:sel__accessibilitySpeakSentence_ withSender:0])
      {
        [array addObject:*MEMORY[0x29EDBDC90]];
      }

      else if ([v11[0] canPerformAction:sel__accessibilitySpeakSpellOut_ withSender:0])
      {
        [array addObject:*MEMORY[0x29EDBDC98]];
      }
    }

    v13 = MEMORY[0x29EDC9748](array);
    v10 = 1;
    objc_storeStrong(&accessibilityMenuActions, 0);
    objc_storeStrong(&array, 0);
  }

  else
  {
    v13 = 0;
    v10 = 1;
  }

  objc_storeStrong(v11, 0);
  v4 = v13;

  return v4;
}

- (uint64_t)_accessibilityBeginUndoableTextInsertion
{
  selfCopy = self;
  v7 = a2;
  v6 = 0;
  _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    location = [_accessibilityTextViewTextOperationResponder undoManager];
    NSClassFromString(&cfstr_Uitextundomana.isa);
    if (objc_opt_isKindOfClass())
    {
      [location beginUndoGrouping];
      v6 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  v3 = v6;
  objc_storeStrong(&_accessibilityTextViewTextOperationResponder, 0);
  return v3 & 1;
}

- (uint64_t)_accessibilityEndUndoableTextInsertion
{
  selfCopy = self;
  v7 = a2;
  v6 = 0;
  _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    location = [_accessibilityTextViewTextOperationResponder undoManager];
    NSClassFromString(&cfstr_Uitextundomana.isa);
    if ((objc_opt_isKindOfClass() & 1) != 0 && [location groupingLevel] > 0)
    {
      [location endUndoGrouping];
      v6 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  v3 = v6;
  objc_storeStrong(&_accessibilityTextViewTextOperationResponder, 0);
  return v3 & 1;
}

@end