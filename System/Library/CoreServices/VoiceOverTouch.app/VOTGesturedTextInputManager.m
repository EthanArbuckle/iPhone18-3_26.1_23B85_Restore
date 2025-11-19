@interface VOTGesturedTextInputManager
- (BOOL)_isInHomeScreen:(id)a3;
- (BOOL)_performWordBackspaceForElement:(id)a3;
- (BOOL)_processRawInputEvent:(id)a3 forElement:(id)a4 withAttributes:(id)a5;
- (BOOL)_processRotorEvent:(id)a3;
- (BOOL)_processSearchEvent:(id)a3 forElement:(id)a4;
- (BOOL)_processWebRotorEvent:(id)a3;
- (BOOL)isBackspaceEvent:(id)a3;
- (BOOL)isNextBrailleTableEvent:(id)a3;
- (BOOL)isNextKeyboardLanguageEvent:(id)a3;
- (BOOL)isNextSuggestionEvent:(id)a3;
- (BOOL)isPreviousSuggestionEvent:(id)a3;
- (BOOL)isReturnKeyEvent:(id)a3;
- (BOOL)isSelectItemEvent:(id)a3;
- (BOOL)isSpaceEvent:(id)a3;
- (BOOL)isWordBackspaceEvent:(id)a3;
- (BOOL)processEvent:(id)a3;
- (BOOL)processTapWithFingerCount:(unint64_t)a3;
- (VOTGesturedTextInputManager)init;
- (VOTGesturedTextInputManagerDelegate)delegate;
- (id)_stringByDeletingFromCurrentInputStringIfNeeded;
- (id)currentElementAttributes;
- (id)nameSearcherEntriesPassingSearchFrom:(id)a3;
- (int64_t)valueChangeOriginator;
- (unint64_t)_numberOfCharactersToDeleteStartingAtIndex:(unint64_t)a3 toDesiredLength:(unint64_t)a4 fromString:(id)a5;
- (unint64_t)_numberOfCharactersToDeleteToDesiredLength:(unint64_t)a3 fromString:(id)a4;
- (void)_deleteFromCurrentInputStringIfNeeded;
- (void)_prepareNameSearcherForElement:(id)a3;
- (void)_updateLocalizedResources;
- (void)appendString:(id)a3;
- (void)applyNextSuggestionToElement:(id)a3;
- (void)applyPreviousSuggestionToElement:(id)a3;
- (void)inputSpaceForElement:(id)a3;
- (void)itemSource:(id)a3 didFilter:(id)a4 didSwitchFocus:(id)a5 focusedValue:(id)a6;
- (void)itemSource:(id)a3 didSelect:(id)a4;
- (void)pressReturnKeyForElement:(id)a3;
- (void)sendCarriageReturnForElement:(id)a3;
- (void)updateWithString:(id)a3;
@end

@implementation VOTGesturedTextInputManager

- (VOTGesturedTextInputManager)init
{
  v5.receiver = self;
  v5.super_class = VOTGesturedTextInputManager;
  v2 = [(VOTGesturedTextInputManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VOTGesturedTextInputManager *)v2 setRotorType:9];
    [(VOTGesturedTextInputManager *)v3 setCurrentInputString:&stru_1001CBF90];
    [(VOTGesturedTextInputManager *)v3 _updateLocalizedResources];
  }

  return v3;
}

- (BOOL)processTapWithFingerCount:(unint64_t)a3
{
  v3 = [(VOTGesturedTextInputManager *)self nameSearcherMonitorElement];
  if ([v3 doesHaveTraits:kAXLaunchIconTrait])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 doesHaveTraits:kAXFolderIconTrait] ^ 1;
  }

  return v4;
}

- (void)appendString:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(VOTGesturedTextInputManager *)self currentInputString];
    v5 = [v4 stringByAppendingString:v6];
    [(VOTGesturedTextInputManager *)self updateWithString:v5];
  }
}

- (void)updateWithString:(id)a3
{
  v4 = a3;
  v5 = VOTLogHandwriting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Update string: %@", buf, 0xCu);
  }

  v6 = +[VOTUserEventManager sharedInstance];
  [v6 userEventOccurred];

  v7 = [(VOTGesturedTextInputManager *)self delegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055260;
  v9[3] = &unk_1001C8BF8;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v9];
}

- (id)currentElementAttributes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100055880;
  v11 = sub_100055890;
  v12 = 0;
  v3 = [(VOTGesturedTextInputManager *)self delegate];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055898;
  v6[3] = &unk_1001C8C20;
  v6[4] = &v7;
  [v3 gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)processEvent:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = [v4 command];
  if ([v5 isEqualToString:kVOTEventCommandSearchRotorLeft])
  {

    goto LABEL_4;
  }

  v6 = [v4 command];
  v7 = [v6 isEqualToString:kVOTEventCommandSearchRotorRight];

  if (v7)
  {
LABEL_4:
    if (![(VOTGesturedTextInputManager *)self shouldAllowRotorEvents])
    {
      *(v18 + 24) = 1;
    }

    goto LABEL_10;
  }

  v8 = [v4 command];
  if ([v8 isEqualToString:kVOTEventCommandEscape])
  {
  }

  else
  {
    v9 = [v4 command];
    v10 = [v9 isEqualToString:kVOTEventCommandBSIExit];

    if ((v10 & 1) == 0)
    {
      v11 = [(VOTGesturedTextInputManager *)self delegate];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100055AC0;
      v14[3] = &unk_1001C8C48;
      v14[4] = self;
      v15 = v4;
      v16 = &v17;
      [v11 gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v14];
    }
  }

LABEL_10:
  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)inputSpaceForElement:(id)a3
{
  v4 = a3;
  [v4 insertText:@" " source:{-[VOTGesturedTextInputManager valueChangeOriginator](self, "valueChangeOriginator")}];

  [(VOTGesturedTextInputManager *)self clearCurrentString];
}

- (void)pressReturnKeyForElement:(id)a3
{
  [a3 activateKeyboardReturnKey];

  [(VOTGesturedTextInputManager *)self clearCurrentString];
}

- (void)sendCarriageReturnForElement:(id)a3
{
  [a3 handwritingSendCarriageReturn];

  [(VOTGesturedTextInputManager *)self clearCurrentString];
}

- (BOOL)_processWebRotorEvent:(id)a3
{
  v4 = a3;
  if ([(VOTGesturedTextInputManager *)self isNextSuggestionEvent:v4])
  {
    v5 = 1;
  }

  else
  {
    if (![(VOTGesturedTextInputManager *)self isPreviousSuggestionEvent:v4])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = 2;
  }

  v6 = [(VOTGesturedTextInputManager *)self delegate];
  [v6 gesturedTextInputManager:self moveToElementMatchingRotorType:-[VOTGesturedTextInputManager rotorType](self inDirection:{"rotorType"), v5}];

  v7 = 1;
LABEL_7:

  return v7;
}

- (void)_deleteFromCurrentInputStringIfNeeded
{
  v3 = [(VOTGesturedTextInputManager *)self currentInputString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(VOTGesturedTextInputManager *)self _stringByDeletingFromCurrentInputStringIfNeeded];
    [(VOTGesturedTextInputManager *)self setCurrentInputString:v5];
  }
}

- (id)_stringByDeletingFromCurrentInputStringIfNeeded
{
  v3 = [(VOTGesturedTextInputManager *)self currentInputString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(VOTGesturedTextInputManager *)self currentInputString];
    v6 = [(VOTGesturedTextInputManager *)self currentInputString];
    v7 = [(VOTGesturedTextInputManager *)self currentInputString];
    v8 = [v5 substringToIndex:{objc_msgSend(v6, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(v7, "length") - 1)}];
  }

  else
  {
    v8 = &stru_1001CBF90;
  }

  return v8;
}

- (BOOL)_performWordBackspaceForElement:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedTextRange];
  if (v5 == 0x7FFFFFFF || v6 != 0)
  {
    goto LABEL_10;
  }

  v8 = v5;
  [v4 updateValue];
  v9 = [v4 value];
  v10 = [v9 ax_wordFromPosition:v8 inDirection:1];
  if (v10 == 0x7FFFFFFF || !v11)
  {

LABEL_10:
    v9 = +[VOTOutputManager outputManager];
    v13 = +[VOSOutputEvent BoundaryEncountered];
    [v9 sendEvent:v13];

    v12 = 0;
    goto LABEL_11;
  }

  [v4 replaceCharactersAtCursor:-[VOTGesturedTextInputManager _numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:](self withString:"_numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:" source:{v8, v10, v9), &stru_1001CBF90, -[VOTGesturedTextInputManager valueChangeOriginator](self, "valueChangeOriginator")}];
  [(VOTGesturedTextInputManager *)self clearCurrentString];
  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)_processRawInputEvent:(id)a3 forElement:(id)a4 withAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(VOTGesturedTextInputManager *)self isReturnKeyEvent:v8])
  {
    [(VOTGesturedTextInputManager *)self pressReturnKeyForElement:v9];
  }

  else
  {
    if (![(VOTGesturedTextInputManager *)self isSpaceEvent:v8])
    {
      if ([(VOTGesturedTextInputManager *)self isBackspaceEvent:v8])
      {
        if (![(VOTGesturedTextInputManager *)self performCustomBackspace])
        {
          if ([v10 canDeleteCharacter])
          {
            [v9 deleteCharacterAtCursorWithSource:{-[VOTGesturedTextInputManager valueChangeOriginator](self, "valueChangeOriginator")}];
            [(VOTGesturedTextInputManager *)self _deleteFromCurrentInputStringIfNeeded];
            [(VOTGesturedTextInputManager *)self didInputBackspace];
          }

          else
          {
            v13 = +[VOTOutputManager outputManager];
            v14 = +[VOSOutputEvent BoundaryEncountered];
            [v13 sendEvent:v14];
          }
        }

        goto LABEL_5;
      }

      if ([(VOTGesturedTextInputManager *)self isWordBackspaceEvent:v8])
      {
        if ([(VOTGesturedTextInputManager *)self performCustomWordBackspace]|| [(VOTGesturedTextInputManager *)self _performWordBackspaceForElement:v9])
        {
          [(VOTGesturedTextInputManager *)self didInputWordBackspace];
          goto LABEL_5;
        }
      }

      else
      {
        if ([(VOTGesturedTextInputManager *)self isPreviousSuggestionEvent:v8])
        {
          [(VOTGesturedTextInputManager *)self applyPreviousSuggestionToElement:v9];
          goto LABEL_5;
        }

        if ([(VOTGesturedTextInputManager *)self isNextSuggestionEvent:v8])
        {
          [(VOTGesturedTextInputManager *)self applyNextSuggestionToElement:v9];
          goto LABEL_5;
        }

        if ([(VOTGesturedTextInputManager *)self isNextKeyboardLanguageEvent:v8])
        {
          v11 = [(VOTGesturedTextInputManager *)self performNextKeyboardLanguage];
          goto LABEL_6;
        }
      }

      v11 = 0;
      goto LABEL_6;
    }

    [(VOTGesturedTextInputManager *)self inputSpaceForElement:v9];
  }

LABEL_5:
  v11 = 1;
LABEL_6:

  return v11;
}

- (void)_prepareNameSearcherForElement:(id)a3
{
  v9 = a3;
  v4 = [(VOTGesturedTextInputManager *)self nameSearcher];

  if (!v4)
  {
    if ([(VOTGesturedTextInputManager *)self _isInHomeScreen:v9])
    {
      v5 = -[VOTNameSearcherAppSource initWithLaunchContext:]([VOTNameSearcherAppSource alloc], "initWithLaunchContext:", [v9 isInAppSwitcher]);
      v6 = [[VOTNameSearcher alloc] initWithDelegate:self itemSource:v5 filter:self];
      [(VOTGesturedTextInputManager *)self setNameSearcher:v6];

      [(VOTGesturedTextInputManager *)self hintForAppLaunch];
    }

    else
    {
      v5 = [[VOTNameSearcherElementSource alloc] initWithElement:v9];
      v7 = [[VOTNameSearcher alloc] initWithDelegate:self itemSource:v5 filter:self];
      [(VOTGesturedTextInputManager *)self setNameSearcher:v7];

      [(VOTGesturedTextInputManager *)self hintForItemChooser];
    }
    v8 = ;
    [(VOTGesturedTextInputManager *)self setNameSearcherHint:v8];
  }
}

- (BOOL)_isInHomeScreen:(id)a3
{
  v3 = a3;
  v4 = [v3 application];
  if ([v4 isSpringBoard])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 immediateRemoteParent];
    v7 = [v6 application];
    v5 = [v7 isSpringBoard];
  }

  v8 = +[AXSpringBoardServer server];
  v9 = [v8 isScreenLockedWithPasscode:0];

  return v5 & (v9 ^ 1);
}

- (BOOL)_processSearchEvent:(id)a3 forElement:(id)a4
{
  v5 = a3;
  if (![(VOTGesturedTextInputManager *)self isNextSuggestionEvent:v5])
  {
    if ([(VOTGesturedTextInputManager *)self isPreviousSuggestionEvent:v5])
    {
      v6 = [(VOTGesturedTextInputManager *)self nameSearcher];
      [v6 focusOnPreviousMatchingItem];
      goto LABEL_5;
    }

    if ([(VOTGesturedTextInputManager *)self isSpaceEvent:v5])
    {
      [(VOTGesturedTextInputManager *)self flushCharacterBuffer];
      goto LABEL_6;
    }

    if ([(VOTGesturedTextInputManager *)self isBackspaceEvent:v5])
    {
      if (![(VOTGesturedTextInputManager *)self performCustomBackspace])
      {
        v9 = [(VOTGesturedTextInputManager *)self _stringByDeletingFromCurrentInputStringIfNeeded];
        [(VOTGesturedTextInputManager *)self setPendingInputString:v9];

        v10 = [(VOTGesturedTextInputManager *)self nameSearcher];
        [v10 updateMatchingItems];

        [(VOTGesturedTextInputManager *)self _deleteFromCurrentInputStringIfNeeded];
      }

      goto LABEL_6;
    }

    if ([(VOTGesturedTextInputManager *)self isSelectItemEvent:v5])
    {
      v11 = [(VOTGesturedTextInputManager *)self nameSearcher];
      [v11 selectFocusedItem];

      [(VOTGesturedTextInputManager *)self clearCurrentString];
      goto LABEL_6;
    }

    if ([(VOTGesturedTextInputManager *)self isNextKeyboardLanguageEvent:v5])
    {
      v7 = [(VOTGesturedTextInputManager *)self performNextKeyboardLanguage];
      goto LABEL_7;
    }

    v12 = [v5 command];
    if (([v12 isEqualToString:kVOTEventCommandSearchRotorLeft] & 1) == 0)
    {
      v13 = [v5 command];
      if (([v13 isEqualToString:kVOTEventCommandSearchRotorRight] & 1) == 0)
      {
        v14 = [v5 command];
        if (([v14 isEqualToString:kVOTEventCommandEscape] & 1) == 0)
        {
          v15 = [v5 command];
          if (([v15 isEqualToString:kVOTEventCommandNextTextSegment] & 1) == 0)
          {
            v16 = [v5 command];
            if (([v16 isEqualToString:kVOTEventCommandPreviousTextSegment] & 1) == 0)
            {
              v17 = [v5 command];
              if (([v17 isEqualToString:kVOTEventCommandSelectRight] & 1) == 0)
              {
                v18 = [v5 command];
                if (([v18 isEqualToString:kVOTEventCommandSelectLeft] & 1) == 0)
                {
                  v19 = [v5 command];
                  if (([v19 isEqualToString:kVOTEventCommandBSIExit] & 1) == 0)
                  {
                    v20 = [v5 command];
                    if (([v20 isEqualToString:kVOTEventCommandBSIPreviousRotor] & 1) == 0)
                    {
                      v23 = [v5 command];
                      if (([v23 isEqualToString:kVOTEventCommandBSINextRotor] & 1) == 0)
                      {
                        v21 = [v5 command];
                        v22 = [v21 isEqualToString:kVOTEventCommandBSIEscape];

                        if ((v22 & 1) == 0)
                        {
                          goto LABEL_6;
                        }

LABEL_37:
                        v7 = 0;
                        goto LABEL_7;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_37;
  }

  v6 = [(VOTGesturedTextInputManager *)self nameSearcher];
  [v6 focusOnNextMatchingItem];
LABEL_5:

LABEL_6:
  v7 = 1;
LABEL_7:

  return v7;
}

- (BOOL)_processRotorEvent:(id)a3
{
  v4 = a3;
  if ([(VOTGesturedTextInputManager *)self isRotorLeftEvent:v4])
  {
    v5 = VOTSharedWorkspace;
    v6 = &kVOTEventCommandSearchRotorLeft;
LABEL_5:
    v7 = [VOTEvent internalEventWithCommand:*v6 info:0];
    [v5 dispatchCommand:v7];
LABEL_13:

    goto LABEL_14;
  }

  if ([(VOTGesturedTextInputManager *)self isRotorRightEvent:v4])
  {
    v5 = VOTSharedWorkspace;
    v6 = &kVOTEventCommandSearchRotorRight;
    goto LABEL_5;
  }

  if ([(VOTGesturedTextInputManager *)self isRotorDownEvent:v4])
  {
    v8 = VOTSharedWorkspace;
    v9 = &kVOTEventCommandSearchRotorDown;
LABEL_12:
    v7 = [VOTEvent internalEventWithCommand:*v9 info:0];
    [v8 dispatchCommand:v7 bypassGesturedInput:1];
    goto LABEL_13;
  }

  if ([(VOTGesturedTextInputManager *)self isRotorUpEvent:v4])
  {
    v8 = VOTSharedWorkspace;
    v9 = &kVOTEventCommandSearchRotorUp;
    goto LABEL_12;
  }

  if ([(VOTGesturedTextInputManager *)self isTextSelectionForwardEvent:v4])
  {
    v8 = VOTSharedWorkspace;
    v9 = &kVOTEventCommandSimpleTap;
    goto LABEL_12;
  }

  if (![(VOTGesturedTextInputManager *)self isTextSelectionBackwardEvent:v4])
  {
    v10 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v10 = 1;
LABEL_15:

  return v10;
}

- (void)_updateLocalizedResources
{
  v15 = +[NSMutableDictionary dictionary];
  v2 = 0;
  v3 = &dispatch_queue_create_ptr;
  do
  {
    v4 = qword_10017E250[v2];
    if ((v4 - 45) < 6)
    {
      v5 = off_1001C8C90[v4 - 45];
LABEL_4:
      v6 = [v3[448] numberWithInteger:v4];
      [v15 setObject:v6 forKey:v5];

      v7 = v5;
LABEL_10:

      goto LABEL_11;
    }

    v8 = [VOTRotor stringForRotorType:qword_10017E250[v2]];
    v7 = [v8 lowercaseString];

    v9 = [v7 length];
    if (v9 < 1)
    {
      goto LABEL_10;
    }

    v10 = v9;
    v11 = 0;
    while (1)
    {
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C", [v7 characterAtIndex:v11]);
      v12 = [v15 allKeys];
      v13 = [v12 containsObject:0];

      if (!v13)
      {
        break;
      }

      if (v10 == ++v11)
      {
        v3 = &dispatch_queue_create_ptr;
        goto LABEL_10;
      }
    }

    v3 = &dispatch_queue_create_ptr;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_11:
    ++v2;
  }

  while (v2 != 14);
  [(VOTGesturedTextInputManager *)self setLocalizedWebRotorMap:v15];
}

- (unint64_t)_numberOfCharactersToDeleteToDesiredLength:(unint64_t)a3 fromString:(id)a4
{
  v6 = a4;
  v7 = -[VOTGesturedTextInputManager _numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:](self, "_numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:", [v6 length], a3, v6);

  return v7;
}

- (unint64_t)_numberOfCharactersToDeleteStartingAtIndex:(unint64_t)a3 toDesiredLength:(unint64_t)a4 fromString:(id)a5
{
  v7 = a5;
  if (a4 >= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = [v7 rangeOfComposedCharacterSequenceAtIndex:{a4, v14, v15, v16}];
      v11 = v10;
      if (v9 != a4)
      {
        v12 = [NSNumber numberWithUnsignedInteger:a4];
        v17.location = v9;
        v17.length = v11;
        NSStringFromRange(v17);
        v16 = v15 = v12;
        v14 = v7;
        _AXAssert();
      }

      a4 = v9 + v11;
      ++v8;
    }

    while (v9 + v11 < a3);
  }

  return v8;
}

- (void)itemSource:(id)a3 didFilter:(id)a4 didSwitchFocus:(id)a5 focusedValue:(id)a6
{
  v28 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(VOTGesturedTextInputManager *)self pendingInputString];
  v14 = objc_alloc_init(VOTOutputRequest);
  v15 = [(VOTGesturedTextInputManager *)self currentInputString];
  v16 = [(VOTGesturedTextInputManager *)self outputForLatestInput];
  v17 = v16;
  if (v16)
  {
    v18 = v14;
    v14 = v16;
  }

  else
  {
    if ([v15 length] && !objc_msgSend(v13, "hasPrefix:", v15))
    {
      if (![v13 length])
      {
        goto LABEL_10;
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C", [v13 characterAtIndex:{objc_msgSend(v13, "length") - 1}]);
    }

    else
    {
      v19 = [v13 substringFromIndex:{objc_msgSend(v15, "length")}];
    }

    v18 = v19;
    v20 = [(VOTOutputRequest *)v14 addString:v19];
  }

LABEL_10:
  if (v10)
  {
    v21 = [v28 messageForMatchingItemsCount:{objc_msgSend(v10, "integerValue")}];
    v22 = [(VOTOutputRequest *)v14 addString:v21];
  }

  if (v11)
  {
    v23 = [(VOTOutputRequest *)v14 addString:v11];
    if (v12)
    {
      v24 = [(VOTOutputRequest *)v14 addString:v12];
    }

    if ([VOTSharedWorkspace hintsEnabled])
    {
      v25 = [(VOTGesturedTextInputManager *)self nameSearcherHint];
      if ([v25 length])
      {
        LODWORD(v26) = 1061997773;
        [(VOTOutputRequest *)v14 addPause:v26];
        v27 = [(VOTOutputRequest *)v14 addString:v25];
      }
    }
  }

  [(VOTOutputRequest *)v14 send];
}

- (void)itemSource:(id)a3 didSelect:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    [v5 selectSpeechDelay];
    v10 = v5;
    v11 = v6;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v7 = [v5 messageForNoMatchingItems];
    v8 = [VOTSharedWorkspace selectedLanguage];
    v9 = sub_1000095FC(v7, 1, v8);
  }
}

- (id)nameSearcherEntriesPassingSearchFrom:(id)a3
{
  v4 = a3;
  v5 = [(VOTGesturedTextInputManager *)self pendingInputString];
  v6 = [(VOTGesturedTextInputManager *)self pendingInputString];

  if (!v6)
  {
    v7 = [(VOTGesturedTextInputManager *)self currentInputString];

    v5 = v7;
  }

  if ([v5 length])
  {
    v19 = v4;
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 name];
          v15 = [v14 lowercaseString];
          v16 = [v5 lowercaseString];
          v17 = [v15 hasPrefix:v16];

          if (v17)
          {
            [v20 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v4 = v19;
  }

  else
  {
    v20 = v4;
  }

  return v20;
}

- (VOTGesturedTextInputManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)valueChangeOriginator
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isSpaceEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isBackspaceEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isWordBackspaceEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isReturnKeyEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isNextSuggestionEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isPreviousSuggestionEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isSelectItemEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isNextKeyboardLanguageEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isNextBrailleTableEvent:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)applyNextSuggestionToElement:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();

  NSRequestConcreteImplementation();
}

- (void)applyPreviousSuggestionToElement:(id)a3
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();

  NSRequestConcreteImplementation();
}

@end