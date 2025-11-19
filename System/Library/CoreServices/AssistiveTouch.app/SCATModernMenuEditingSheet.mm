@interface SCATModernMenuEditingSheet
- (BOOL)_adjustSelectionForTextElement:(id)a3 direction:(unint64_t)a4 unit:(unint64_t)a5 selectedRange:(_NSRange)a6 startingRangeForSelection:(_NSRange)a7;
- (BOOL)shouldUpdateMenuItem:(id)a3;
- (SCATModernMenuEditingSheet)initWithMenu:(id)a3;
- (_NSRange)startingRangeForSelection;
- (id)alternateTipElement;
- (id)makeMenuItemsIfNeeded;
- (void)_handleCompletedCutCopyPasteOperationForTextElement:(id)a3;
- (void)_moveCursorForTextElement:(id)a3 direction:(unint64_t)a4 unit:(unint64_t)a5;
- (void)_selectNoneForTextElement:(id)a3;
- (void)_selectWordForTextElement:(id)a3;
- (void)menuItemWasActivated:(id)a3;
@end

@implementation SCATModernMenuEditingSheet

- (SCATModernMenuEditingSheet)initWithMenu:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SCATModernMenuEditingSheet;
  v5 = [(SCATModernMenuSheet *)&v7 initWithMenu:v4];
  if (v5)
  {
    [v4 slidePopoverToPosition:6];
  }

  return v5;
}

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = [(SCATModernMenuSheet *)self menu];
  v5 = [v4 textElement];

  v6 = [v5 traits];
  v7 = kAXIsEditingTrait & v6;
  v8 = [(SCATModernMenuSheet *)self menu];
  v9 = [v8 textElement];
  v10 = [v9 textOperations];

  if (([v10 containsObject:kAXTextOperationActionSelectAll] & 1) != 0 || (objc_msgSend(v5, "selectedTextRange"), v11))
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

  if (v7 || [v10 containsObject:kAXTextOperationActionCut])
  {
    v18 = sub_100042B24(@"EDIT-CUT");
    v19 = [SCATModernMenuItem itemWithIdentifier:@"edit_cut" delegate:self title:v18 imageName:0 activateBehavior:v17];
    [v3 addObject:v19];
  }

  if ((v16 & 1) != 0 || [v10 containsObject:kAXTextOperationActionCopy])
  {
    v20 = sub_100042B24(@"EDIT-COPY");
    v21 = [SCATModernMenuItem itemWithIdentifier:@"edit_copy" delegate:self title:v20 imageName:0 activateBehavior:v17];
    [v3 addObject:v21];
  }

  if (v7 || [v10 containsObject:kAXTextOperationActionPaste])
  {
    v22 = sub_100042B24(@"EDIT-PASTE");
    v23 = [SCATModernMenuItem itemWithIdentifier:@"edit_paste" delegate:self title:v22 imageName:0 activateBehavior:v17];
    [v3 addObject:v23];
  }

  if ([v10 containsObject:kAXTextOperationActionWritingTools])
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
  v2 = [(SCATModernMenuSheet *)self menu];
  v3 = [v2 textElement];

  return v3;
}

- (BOOL)shouldUpdateMenuItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"selection_mode_toggle"])
  {
    v6 = [(SCATModernMenuEditingSheet *)self selectionModeOn];
    v7 = v6 == 0;
    if (v6)
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
    [v4 setTitle:v14];
    [v4 setImageName:v9];

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"select_word_or_none"])
  {
    v10 = [(SCATModernMenuSheet *)self menu];
    v11 = [v10 textElement];
    [v11 selectedTextRange];
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

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(SCATModernMenuSheet *)self menu];
  v7 = [v6 textElement];

  if ([v5 isEqualToString:@"edit_cut"])
  {
    v8 = &kAXTextOperationActionCut;
LABEL_5:
    [v7 performAction:2012 withValue:*v8];
    [(SCATModernMenuEditingSheet *)self _handleCompletedCutCopyPasteOperationForTextElement:v7];
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"edit_copy"])
  {
    v8 = &kAXTextOperationActionCopy;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"edit_paste"])
  {
    v9 = +[UIPasteboard generalPasteboard];
    v10 = [v7 uiElement];
    v11 = [v10 numberWithAXAttribute:3065];
    v12 = [v11 longLongValue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000AD39C;
    v24[3] = &unk_1001D69D8;
    v25 = v7;
    v26 = self;
    [v9 _requestSecurePasteAuthenticationMessageWithContext:0x7EC07AF570CAADBCLL forClientVersionedPID:v12 completionBlock:v24];
  }

  else if ([v5 isEqualToString:@"edit_selectAll"])
  {
    [(SCATModernMenuEditingSheet *)self _selectNoneForTextElement:v7];
    [v7 performAction:2012 withValue:kAXTextOperationActionSelectAll];
    v13 = [(SCATModernMenuEditingSheet *)self selectWordOrNoneItem];
    [v13 updateItem];
  }

  else if ([v5 isEqualToString:@"select_word_or_none"])
  {
    [v7 selectedTextRange];
    if (v14)
    {
      [(SCATModernMenuEditingSheet *)self _selectNoneForTextElement:v7];
    }

    else
    {
      [(SCATModernMenuEditingSheet *)self _selectWordForTextElement:v7];
    }
  }

  else if ([v5 hasPrefix:@"move_"])
  {
    v15 = [v5 substringWithRange:{objc_msgSend(@"move_", "length"), 1}];
    v16 = [v15 integerValue];

    v17 = [v5 substringWithRange:{objc_msgSend(@"move_", "length") + 2, 1}];
    v18 = [v17 integerValue];

    [(SCATModernMenuEditingSheet *)self _moveCursorForTextElement:v7 direction:v16 unit:v18];
  }

  else if ([v5 isEqualToString:@"selection_mode_toggle"])
  {
    [(SCATModernMenuEditingSheet *)self setSelectionModeOn:[(SCATModernMenuEditingSheet *)self selectionModeOn]^ 1];
    if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
    {
      v19 = [(SCATModernMenuSheet *)self menu];
      v20 = [v19 textElement];
      v21 = [v20 selectedTextRange];
      [(SCATModernMenuEditingSheet *)self setStartingRangeForSelection:v21, v22];

      if ([(SCATModernMenuEditingSheet *)self startingRangeForSelection]== 0x7FFFFFFF)
      {
        [(SCATModernMenuEditingSheet *)self setStartingRangeForSelection:0, 0];
      }
    }
  }

  else if ([v5 isEqualToString:@"edit_writing_tools"])
  {
    [v7 performAction:2012 withValue:kAXTextOperationActionWritingTools];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = SCATModernMenuEditingSheet;
    [(SCATModernMenuSheet *)&v23 menuItemWasActivated:v4];
  }

LABEL_6:
}

- (BOOL)_adjustSelectionForTextElement:(id)a3 direction:(unint64_t)a4 unit:(unint64_t)a5 selectedRange:(_NSRange)a6 startingRangeForSelection:(_NSRange)a7
{
  length = a6.length;
  location = a6.location;
  v11 = a3;
  if (a7.location == 0x7FFFFFFF)
  {
    _AXAssert();
  }

  if (location + length > a7.location)
  {
    location += length;
  }

  v12 = [v11 uiElement];
  v13 = [v12 nextCursorRangeInDirection:a4 unit:a5 outputRange:0 currentCursorRange:location outputStyleSpeakToRight:{0, 0}];
  v15 = v14;

  if (v13 != 0x7FFFFFFF)
  {
    v16 = v13 + v15 - a7.location;
    if (v13 >= a7.location)
    {
      v17 = a7.location;
    }

    else
    {
      v17 = v13;
    }

    if (v13 >= a7.location)
    {
      v18 = v16;
    }

    else
    {
      v18 = a7.location + a7.length - v13;
    }

    [v11 performAction:2012 withValue:kAXTextOperationActionSelect];
    [v11 setSelectedTextRange:{v17, v18}];
  }

  return v13 != 0x7FFFFFFF;
}

- (void)_moveCursorForTextElement:(id)a3 direction:(unint64_t)a4 unit:(unint64_t)a5
{
  v18 = a3;
  if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
  {
    if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
    {
      v8 = [v18 selectedTextRange];
      v10 = v9;
      v11 = [(SCATModernMenuEditingSheet *)self startingRangeForSelection];
      [(SCATModernMenuEditingSheet *)self _adjustSelectionForTextElement:v18 direction:a4 unit:a5 selectedRange:v8 startingRangeForSelection:v10, v11, v12];
    }
  }

  else
  {
    v13 = [v18 uiElement];
    v14 = [v13 nextCursorRangeInDirection:a4 unit:a5 outputRange:0 currentCursorRange:0x7FFFFFFFLL outputStyleSpeakToRight:{0, 0}];
    v16 = v15;

    if (v14 != 0x7FFFFFFF)
    {
      [v18 setSelectedTextRange:{v14, v16}];
    }
  }

  v17 = [(SCATModernMenuEditingSheet *)self selectWordOrNoneItem];
  [v17 updateItem];
}

- (void)_selectNoneForTextElement:(id)a3
{
  v7 = a3;
  v4 = [v7 selectedTextRange];
  if (v5)
  {
    v6 = v4;
    if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
    {
      [(SCATModernMenuEditingSheet *)self setStartingRangeForSelection:v6, 0];
    }

    [v7 setSelectedTextRange:{v6, 0}];
  }
}

- (void)_selectWordForTextElement:(id)a3
{
  v6 = a3;
  v4 = [v6 traits];
  if ((kAXIsEditingTrait & v4) != 0)
  {
    v5 = [v6 selectedTextRange];
  }

  else
  {
    v5 = 0;
  }

  if (![(SCATModernMenuEditingSheet *)self _adjustSelectionForTextElement:v6 direction:0 unit:1 selectedRange:v5 startingRangeForSelection:0, v5, 0])
  {
    [(SCATModernMenuEditingSheet *)self _adjustSelectionForTextElement:v6 direction:1 unit:1 selectedRange:v5 startingRangeForSelection:0, v5, 0];
  }
}

- (void)_handleCompletedCutCopyPasteOperationForTextElement:(id)a3
{
  if ([(SCATModernMenuEditingSheet *)self selectionModeOn])
  {
    [(SCATModernMenuEditingSheet *)self setSelectionModeOn:0];
    v4 = [(SCATModernMenuEditingSheet *)self selectionModeToggleItem];
    [v4 updateItem];
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