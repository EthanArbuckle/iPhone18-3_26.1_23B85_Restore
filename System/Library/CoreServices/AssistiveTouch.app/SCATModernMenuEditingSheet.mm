@interface SCATModernMenuEditingSheet
- (BOOL)_adjustSelectionForTextElement:(id)element direction:(unint64_t)direction unit:(unint64_t)unit selectedRange:(_NSRange)range startingRangeForSelection:(_NSRange)selection;
- (BOOL)shouldUpdateMenuItem:(id)item;
- (SCATModernMenuEditingSheet)initWithMenu:(id)menu;
- (_NSRange)startingRangeForSelection;
- (id)alternateTipElement;
- (id)makeMenuItemsIfNeeded;
- (void)_handleCompletedCutCopyPasteOperationForTextElement:(id)element;
- (void)_moveCursorForTextElement:(id)element direction:(unint64_t)direction unit:(unint64_t)unit;
- (void)_selectNoneForTextElement:(id)element;
- (void)_selectWordForTextElement:(id)element;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuEditingSheet

- (SCATModernMenuEditingSheet)initWithMenu:(id)menu
{
  menuCopy = menu;
  v7.receiver = self;
  v7.super_class = SCATModernMenuEditingSheet;
  v5 = [(SCATModernMenuSheet *)&v7 initWithMenu:menuCopy];
  if (v5)
  {
    [menuCopy slidePopoverToPosition:6];
  }

  return v5;
}

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  menu = [(SCATModernMenuSheet *)self menu];
  textElement = [menu textElement];

  traits = [textElement traits];
  v7 = kAXIsEditingTrait & traits;
  menu2 = [(SCATModernMenuSheet *)self menu];
  textElement2 = [menu2 textElement];
  textOperations = [textElement2 textOperations];

  if (([textOperations containsObject:kAXTextOperationActionSelectAll] & 1) != 0 || (objc_msgSend(textElement, "selectedTextRange"), v11))
  {
    v12 = sub_100042B24(@"EDIT-SELECT-ALL");
    v13 = [SCATModernMenuItem itemWithIdentifier:@"edit_selectAll" delegate:self title:v12 imageName:0 activateBehavior:3];
    [v3 addObject:v13];

    v14 = sub_100042B24(@"EDIT_SELECT_WORD");
    v15 = [SCATModernMenuItem itemWithIdentifier:@"select_word_or_none" delegate:self title:v14 imageName:0 activateBehavior:3];

    [v3 addObject:v15];
    [(SCATModernMenuEditingSheet *)self setSelectWordOrNoneItem:v15];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  if (v7 || [textOperations containsObject:kAXTextOperationActionCut])
  {
    v18 = sub_100042B24(@"EDIT-CUT");
    v19 = [SCATModernMenuItem itemWithIdentifier:@"edit_cut" delegate:self title:v18 imageName:0 activateBehavior:v17];
    [v3 addObject:v19];
  }

  if ((v16 & 1) != 0 || [textOperations containsObject:kAXTextOperationActionCopy])
  {
    v20 = sub_100042B24(@"EDIT-COPY");
    v21 = [SCATModernMenuItem itemWithIdentifier:@"edit_copy" delegate:self title:v20 imageName:0 activateBehavior:v17];
    [v3 addObject:v21];
  }

  if (v7 || [textOperations containsObject:kAXTextOperationActionPaste])
  {
    v22 = sub_100042B24(@"EDIT-PASTE");
    v23 = [SCATModernMenuItem itemWithIdentifier:@"edit_paste" delegate:self title:v22 imageName:0 activateBehavior:v17];
    [v3 addObject:v23];
  }

  if ([textOperations containsObject:kAXTextOperationActionWritingTools])
  {
    v24 = sub_100042B24(@"WRITING_TOOLS");
    v25 = [SCATModernMenuItem itemWithIdentifier:@"edit_writing_tools" delegate:self title:v24 imageName:@"apple.writing.tools" activateBehavior:0];
    [v3 addObject:v25];
  }

  v26 = v16 ^ 1;
  if (v7)
  {
    v27 = v16 ^ 1;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v28 = [SCATModernMenuItem itemWithIdentifier:@"selection_mode_toggle" delegate:self title:0 imageName:0 activateBehavior:3];
    [v3 addObject:v28];
    [(SCATModernMenuEditingSheet *)self setSelectionModeToggleItem:v28];

LABEL_26:
    v29 = [(SCATModernMenuEditingSheet *)self _identifierForTextMovementDirection:1 unit:0];
    v30 = sub_100042B24(@"EDIT_BACKWARD_CHAR");
    v31 = [SCATModernMenuItem itemWithIdentifier:v29 delegate:self title:v30 imageName:@"SCATIcon_edit_previousCharacter" activateBehavior:3];
    [v3 addObject:v31];

    v32 = [(SCATModernMenuEditingSheet *)self _identifierForTextMovementDirection:0 unit:0];
    v33 = sub_100042B24(@"EDIT_FORWARD_CHAR");
    v34 = [SCATModernMenuItem itemWithIdentifier:v32 delegate:self title:v33 imageName:@"SCATIcon_edit_nextCharacter" activateBehavior:3];
    [v3 addObject:v34];

    v35 = [(SCATModernMenuEditingSheet *)self _identifierForTextMovementDirection:1 unit:1];
    v36 = sub_100042B24(@"EDIT_BACKWARD_WORD");
    v37 = [SCATModernMenuItem itemWithIdentifier:v35 delegate:self title:v36 imageName:@"SCATIcon_edit_previousWord" activateBehavior:3];
    [v3 addObject:v37];

    v38 = [(SCATModernMenuEditingSheet *)self _identifierForTextMovementDirection:0 unit:1];
    v39 = sub_100042B24(@"EDIT_FORWARD_WORD");
    v40 = [SCATModernMenuItem itemWithIdentifier:v38 delegate:self title:v39 imageName:@"SCATIcon_edit_nextWord" activateBehavior:3];
    [v3 addObject:v40];

    v41 = [(SCATModernMenuEditingSheet *)self _identifierForTextMovementDirection:1 unit:2];
    v42 = sub_100042B24(@"EDIT_BACKWARD_LINE");
    v43 = [SCATModernMenuItem itemWithIdentifier:v41 delegate:self title:v42 imageName:@"SCATIcon_edit_previousLine" activateBehavior:3];
    [v3 addObject:v43];

    v44 = [(SCATModernMenuEditingSheet *)self _identifierForTextMovementDirection:0 unit:2];
    v45 = sub_100042B24(@"EDIT_FORWARD_LINE");
    v46 = [SCATModernMenuItem itemWithIdentifier:v44 delegate:self title:v45 imageName:@"SCATIcon_edit_nextLine" activateBehavior:3];
    [v3 addObject:v46];

    if (!v7)
    {
      [(SCATModernMenuEditingSheet *)self setSelectionModeOn:1];
      [(SCATModernMenuEditingSheet *)self setStartingRangeForSelection:0, 0];
    }

    goto LABEL_28;
  }

  if (v7)
  {
    v26 = 0;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:

  return v3;
}

- (id)alternateTipElement
{
  menu = [(SCATModernMenuSheet *)self menu];
  textElement = [menu textElement];

  return textElement;
}

- (BOOL)shouldUpdateMenuItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  if ([identifier isEqualToString:@"selection_mode_toggle"])
  {
    selectionModeOn = [(SCATModernMenuEditingSheet *)self selectionModeOn];
    v7 = selectionModeOn == 0;
    if (selectionModeOn)
    {
      v8 = @"EDIT_DISABLE_SELECT";
    }

    else
    {
      v8 = @"EDIT_ENABLE_SELECT";
    }

    if (v7)
    {
      v9 = @"SCATIcon_edit_startSelection";
    }

    else
    {
      v9 = @"SCATIcon_edit_endSelection";
    }

LABEL_15:
    v14 = sub_100042B24(v8);
    [itemCopy setTitle:v14];
    [itemCopy setImageName:v9];

    goto LABEL_16;
  }

  if ([identifier isEqualToString:@"select_word_or_none"])
  {
    menu = [(SCATModernMenuSheet *)self menu];
    textElement = [menu textElement];
    [textElement selectedTextRange];
    v13 = v12;

    if (v13)
    {
      v8 = @"EDIT_SELECT_NONE";
    }

    else
    {
      v8 = @"EDIT_SELECT_WORD";
    }

    if (v13)
    {
      v9 = @"SCATIcon_edit_deselect";
    }

    else
    {
      v9 = @"SCATIcon_edit_selectWord";
    }

    goto LABEL_15;
  }

LABEL_16:

  return 1;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  menu = [(SCATModernMenuSheet *)self menu];
  textElement = [menu textElement];

  if ([identifier isEqualToString:@"edit_cut"])
  {
    v8 = &kAXTextOperationActionCut;
LABEL_5:
    [textElement performAction:2012 withValue:*v8];
    [(SCATModernMenuEditingSheet *)self _handleCompletedCutCopyPasteOperationForTextElement:textElement];
    goto LABEL_6;
  }

  if ([identifier isEqualToString:@"edit_copy"])
  {
    v8 = &kAXTextOperationActionCopy;
    goto LABEL_5;
  }

  if ([identifier isEqualToString:@"edit_paste"])
  {
    v9 = +[UIPasteboard generalPasteboard];
    uiElement = [textElement uiElement];
    v11 = [uiElement numberWithAXAttribute:3065];
    longLongValue = [v11 longLongValue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000AD39C;
    v24[3] = &unk_1001D69D8;
    v25 = textElement;
    selfCopy = self;
    [v9 _requestSecurePasteAuthenticationMessageWithContext:0x7EC07AF570CAADBCLL forClientVersionedPID:longLongValue completionBlock:v24];
  }

  else if ([identifier isEqualToString:@"edit_selectAll"])
  {
    [(SCATModernMenuEditingSheet *)self _selectNoneForTextElement:textElement];
    [textElement performAction:2012 withValue:kAXTextOperationActionSelectAll];
    selectWordOrNoneItem = [(SCATModernMenuEditingSheet *)self selectWordOrNoneItem];
    [selectWordOrNoneItem updateItem];
  }

  else if ([identifier isEqualToString:@"select_word_or_none"])
  {
    [textElement selectedTextRange];
    if (v14)
    {
      [(SCATModernMenuEditingSheet *)self _selectNoneForTextElement:textElement];
    }

    else
    {
      [(SCATModernMenuEditingSheet *)self _selectWordForTextElement:textElement];
    }
  }

  else if ([identifier hasPrefix:@"move_"])
  {
    v15 = [identifier substringWithRange:{objc_msgSend(@"move_", "length"), 1}];
    integerValue = [v15 integerValue];

    v17 = [identifier substringWithRange:{objc_msgSend(@"move_", "length") + 2, 1}];
    integerValue2 = [v17 integerValue];

    [(SCATModernMenuEditingSheet *)self _moveCursorForTextElement:textElement direction:integerValue unit:integerValue2];
  }

  else if ([identifier isEqualToString:@"selection_mode_toggle"])
  {
    [(SCATModernMenuEditingSheet *)self setSelectionModeOn:[(SCATModernMenuEditingSheet *)self selectionModeOn]^ 1];
    if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
    {
      menu2 = [(SCATModernMenuSheet *)self menu];
      textElement2 = [menu2 textElement];
      selectedTextRange = [textElement2 selectedTextRange];
      [(SCATModernMenuEditingSheet *)self setStartingRangeForSelection:selectedTextRange, v22];

      if ([(SCATModernMenuEditingSheet *)self startingRangeForSelection]== 0x7FFFFFFF)
      {
        [(SCATModernMenuEditingSheet *)self setStartingRangeForSelection:0, 0];
      }
    }
  }

  else if ([identifier isEqualToString:@"edit_writing_tools"])
  {
    [textElement performAction:2012 withValue:kAXTextOperationActionWritingTools];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = SCATModernMenuEditingSheet;
    [(SCATModernMenuSheet *)&v23 menuItemWasActivated:activatedCopy];
  }

LABEL_6:
}

- (BOOL)_adjustSelectionForTextElement:(id)element direction:(unint64_t)direction unit:(unint64_t)unit selectedRange:(_NSRange)range startingRangeForSelection:(_NSRange)selection
{
  length = range.length;
  location = range.location;
  elementCopy = element;
  if (selection.location == 0x7FFFFFFF)
  {
    _AXAssert();
  }

  if (location + length > selection.location)
  {
    location += length;
  }

  uiElement = [elementCopy uiElement];
  v13 = [uiElement nextCursorRangeInDirection:direction unit:unit outputRange:0 currentCursorRange:location outputStyleSpeakToRight:{0, 0}];
  v15 = v14;

  if (v13 != 0x7FFFFFFF)
  {
    v16 = v13 + v15 - selection.location;
    if (v13 >= selection.location)
    {
      v17 = selection.location;
    }

    else
    {
      v17 = v13;
    }

    if (v13 >= selection.location)
    {
      v18 = v16;
    }

    else
    {
      v18 = selection.location + selection.length - v13;
    }

    [elementCopy performAction:2012 withValue:kAXTextOperationActionSelect];
    [elementCopy setSelectedTextRange:{v17, v18}];
  }

  return v13 != 0x7FFFFFFF;
}

- (void)_moveCursorForTextElement:(id)element direction:(unint64_t)direction unit:(unint64_t)unit
{
  elementCopy = element;
  if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
  {
    if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
    {
      selectedTextRange = [elementCopy selectedTextRange];
      v10 = v9;
      startingRangeForSelection = [(SCATModernMenuEditingSheet *)self startingRangeForSelection];
      [(SCATModernMenuEditingSheet *)self _adjustSelectionForTextElement:elementCopy direction:direction unit:unit selectedRange:selectedTextRange startingRangeForSelection:v10, startingRangeForSelection, v12];
    }
  }

  else
  {
    uiElement = [elementCopy uiElement];
    v14 = [uiElement nextCursorRangeInDirection:direction unit:unit outputRange:0 currentCursorRange:0x7FFFFFFFLL outputStyleSpeakToRight:{0, 0}];
    v16 = v15;

    if (v14 != 0x7FFFFFFF)
    {
      [elementCopy setSelectedTextRange:{v14, v16}];
    }
  }

  selectWordOrNoneItem = [(SCATModernMenuEditingSheet *)self selectWordOrNoneItem];
  [selectWordOrNoneItem updateItem];
}

- (void)_selectNoneForTextElement:(id)element
{
  elementCopy = element;
  selectedTextRange = [elementCopy selectedTextRange];
  if (v5)
  {
    v6 = selectedTextRange;
    if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
    {
      [(SCATModernMenuEditingSheet *)self setStartingRangeForSelection:v6, 0];
    }

    [elementCopy setSelectedTextRange:{v6, 0}];
  }
}

- (void)_selectWordForTextElement:(id)element
{
  elementCopy = element;
  traits = [elementCopy traits];
  if ((kAXIsEditingTrait & traits) != 0)
  {
    selectedTextRange = [elementCopy selectedTextRange];
  }

  else
  {
    selectedTextRange = 0;
  }

  if (![(SCATModernMenuEditingSheet *)self _adjustSelectionForTextElement:elementCopy direction:0 unit:1 selectedRange:selectedTextRange startingRangeForSelection:0, selectedTextRange, 0])
  {
    [(SCATModernMenuEditingSheet *)self _adjustSelectionForTextElement:elementCopy direction:1 unit:1 selectedRange:selectedTextRange startingRangeForSelection:0, selectedTextRange, 0];
  }
}

- (void)_handleCompletedCutCopyPasteOperationForTextElement:(id)element
{
  if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
  {
    [(SCATModernMenuEditingSheet *)self setSelectionModeOn:0];
    selectionModeToggleItem = [(SCATModernMenuEditingSheet *)self selectionModeToggleItem];
    [selectionModeToggleItem updateItem];
  }
}

- (_NSRange)startingRangeForSelection
{
  p_startingRangeForSelection = &self->_startingRangeForSelection;
  location = self->_startingRangeForSelection.location;
  length = p_startingRangeForSelection->length;
  result.length = length;
  result.location = location;
  return result;
}

@end