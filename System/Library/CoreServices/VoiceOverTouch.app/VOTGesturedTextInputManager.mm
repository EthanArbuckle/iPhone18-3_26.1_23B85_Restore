@interface VOTGesturedTextInputManager
- (BOOL)_isInHomeScreen:(id)screen;
- (BOOL)_performWordBackspaceForElement:(id)element;
- (BOOL)_processRawInputEvent:(id)event forElement:(id)element withAttributes:(id)attributes;
- (BOOL)_processRotorEvent:(id)event;
- (BOOL)_processSearchEvent:(id)event forElement:(id)element;
- (BOOL)_processWebRotorEvent:(id)event;
- (BOOL)isBackspaceEvent:(id)event;
- (BOOL)isNextBrailleTableEvent:(id)event;
- (BOOL)isNextKeyboardLanguageEvent:(id)event;
- (BOOL)isNextSuggestionEvent:(id)event;
- (BOOL)isPreviousSuggestionEvent:(id)event;
- (BOOL)isReturnKeyEvent:(id)event;
- (BOOL)isSelectItemEvent:(id)event;
- (BOOL)isSpaceEvent:(id)event;
- (BOOL)isWordBackspaceEvent:(id)event;
- (BOOL)processEvent:(id)event;
- (BOOL)processTapWithFingerCount:(unint64_t)count;
- (VOTGesturedTextInputManager)init;
- (VOTGesturedTextInputManagerDelegate)delegate;
- (id)_stringByDeletingFromCurrentInputStringIfNeeded;
- (id)currentElementAttributes;
- (id)nameSearcherEntriesPassingSearchFrom:(id)from;
- (int64_t)valueChangeOriginator;
- (unint64_t)_numberOfCharactersToDeleteStartingAtIndex:(unint64_t)index toDesiredLength:(unint64_t)length fromString:(id)string;
- (unint64_t)_numberOfCharactersToDeleteToDesiredLength:(unint64_t)length fromString:(id)string;
- (void)_deleteFromCurrentInputStringIfNeeded;
- (void)_prepareNameSearcherForElement:(id)element;
- (void)_updateLocalizedResources;
- (void)appendString:(id)string;
- (void)applyNextSuggestionToElement:(id)element;
- (void)applyPreviousSuggestionToElement:(id)element;
- (void)inputSpaceForElement:(id)element;
- (void)itemSource:(id)source didFilter:(id)filter didSwitchFocus:(id)focus focusedValue:(id)value;
- (void)itemSource:(id)source didSelect:(id)select;
- (void)pressReturnKeyForElement:(id)element;
- (void)sendCarriageReturnForElement:(id)element;
- (void)updateWithString:(id)string;
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

- (BOOL)processTapWithFingerCount:(unint64_t)count
{
  nameSearcherMonitorElement = [(VOTGesturedTextInputManager *)self nameSearcherMonitorElement];
  if ([nameSearcherMonitorElement doesHaveTraits:kAXLaunchIconTrait])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [nameSearcherMonitorElement doesHaveTraits:kAXFolderIconTrait] ^ 1;
  }

  return v4;
}

- (void)appendString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    currentInputString = [(VOTGesturedTextInputManager *)self currentInputString];
    v5 = [currentInputString stringByAppendingString:stringCopy];
    [(VOTGesturedTextInputManager *)self updateWithString:v5];
  }
}

- (void)updateWithString:(id)string
{
  stringCopy = string;
  v5 = VOTLogHandwriting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = stringCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Update string: %@", buf, 0xCu);
  }

  v6 = +[VOTUserEventManager sharedInstance];
  [v6 userEventOccurred];

  delegate = [(VOTGesturedTextInputManager *)self delegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055260;
  v9[3] = &unk_1001C8BF8;
  v10 = stringCopy;
  selfCopy = self;
  v8 = stringCopy;
  [delegate gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v9];
}

- (id)currentElementAttributes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100055880;
  v11 = sub_100055890;
  v12 = 0;
  delegate = [(VOTGesturedTextInputManager *)self delegate];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100055898;
  v6[3] = &unk_1001C8C20;
  v6[4] = &v7;
  [delegate gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)processEvent:(id)event
{
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  command = [eventCopy command];
  if ([command isEqualToString:kVOTEventCommandSearchRotorLeft])
  {

    goto LABEL_4;
  }

  command2 = [eventCopy command];
  v7 = [command2 isEqualToString:kVOTEventCommandSearchRotorRight];

  if (v7)
  {
LABEL_4:
    if (![(VOTGesturedTextInputManager *)self shouldAllowRotorEvents])
    {
      *(v18 + 24) = 1;
    }

    goto LABEL_10;
  }

  command3 = [eventCopy command];
  if ([command3 isEqualToString:kVOTEventCommandEscape])
  {
  }

  else
  {
    command4 = [eventCopy command];
    v10 = [command4 isEqualToString:kVOTEventCommandBSIExit];

    if ((v10 & 1) == 0)
    {
      delegate = [(VOTGesturedTextInputManager *)self delegate];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100055AC0;
      v14[3] = &unk_1001C8C48;
      v14[4] = self;
      v15 = eventCopy;
      v16 = &v17;
      [delegate gesturedTextInputManager:self accessCurrentGesturedTextInputElement:v14];
    }
  }

LABEL_10:
  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)inputSpaceForElement:(id)element
{
  elementCopy = element;
  [elementCopy insertText:@" " source:{-[VOTGesturedTextInputManager valueChangeOriginator](self, "valueChangeOriginator")}];

  [(VOTGesturedTextInputManager *)self clearCurrentString];
}

- (void)pressReturnKeyForElement:(id)element
{
  [element activateKeyboardReturnKey];

  [(VOTGesturedTextInputManager *)self clearCurrentString];
}

- (void)sendCarriageReturnForElement:(id)element
{
  [element handwritingSendCarriageReturn];

  [(VOTGesturedTextInputManager *)self clearCurrentString];
}

- (BOOL)_processWebRotorEvent:(id)event
{
  eventCopy = event;
  if ([(VOTGesturedTextInputManager *)self isNextSuggestionEvent:eventCopy])
  {
    v5 = 1;
  }

  else
  {
    if (![(VOTGesturedTextInputManager *)self isPreviousSuggestionEvent:eventCopy])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = 2;
  }

  delegate = [(VOTGesturedTextInputManager *)self delegate];
  [delegate gesturedTextInputManager:self moveToElementMatchingRotorType:-[VOTGesturedTextInputManager rotorType](self inDirection:{"rotorType"), v5}];

  v7 = 1;
LABEL_7:

  return v7;
}

- (void)_deleteFromCurrentInputStringIfNeeded
{
  currentInputString = [(VOTGesturedTextInputManager *)self currentInputString];
  v4 = [currentInputString length];

  if (v4)
  {
    _stringByDeletingFromCurrentInputStringIfNeeded = [(VOTGesturedTextInputManager *)self _stringByDeletingFromCurrentInputStringIfNeeded];
    [(VOTGesturedTextInputManager *)self setCurrentInputString:_stringByDeletingFromCurrentInputStringIfNeeded];
  }
}

- (id)_stringByDeletingFromCurrentInputStringIfNeeded
{
  currentInputString = [(VOTGesturedTextInputManager *)self currentInputString];
  v4 = [currentInputString length];

  if (v4)
  {
    currentInputString2 = [(VOTGesturedTextInputManager *)self currentInputString];
    currentInputString3 = [(VOTGesturedTextInputManager *)self currentInputString];
    currentInputString4 = [(VOTGesturedTextInputManager *)self currentInputString];
    v8 = [currentInputString2 substringToIndex:{objc_msgSend(currentInputString3, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(currentInputString4, "length") - 1)}];
  }

  else
  {
    v8 = &stru_1001CBF90;
  }

  return v8;
}

- (BOOL)_performWordBackspaceForElement:(id)element
{
  elementCopy = element;
  selectedTextRange = [elementCopy selectedTextRange];
  if (selectedTextRange == 0x7FFFFFFF || v6 != 0)
  {
    goto LABEL_10;
  }

  v8 = selectedTextRange;
  [elementCopy updateValue];
  value = [elementCopy value];
  v10 = [value ax_wordFromPosition:v8 inDirection:1];
  if (v10 == 0x7FFFFFFF || !v11)
  {

LABEL_10:
    value = +[VOTOutputManager outputManager];
    v13 = +[VOSOutputEvent BoundaryEncountered];
    [value sendEvent:v13];

    v12 = 0;
    goto LABEL_11;
  }

  [elementCopy replaceCharactersAtCursor:-[VOTGesturedTextInputManager _numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:](self withString:"_numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:" source:{v8, v10, value), &stru_1001CBF90, -[VOTGesturedTextInputManager valueChangeOriginator](self, "valueChangeOriginator")}];
  [(VOTGesturedTextInputManager *)self clearCurrentString];
  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)_processRawInputEvent:(id)event forElement:(id)element withAttributes:(id)attributes
{
  eventCopy = event;
  elementCopy = element;
  attributesCopy = attributes;
  if ([(VOTGesturedTextInputManager *)self isReturnKeyEvent:eventCopy])
  {
    [(VOTGesturedTextInputManager *)self pressReturnKeyForElement:elementCopy];
  }

  else
  {
    if (![(VOTGesturedTextInputManager *)self isSpaceEvent:eventCopy])
    {
      if ([(VOTGesturedTextInputManager *)self isBackspaceEvent:eventCopy])
      {
        if (![(VOTGesturedTextInputManager *)self performCustomBackspace])
        {
          if ([attributesCopy canDeleteCharacter])
          {
            [elementCopy deleteCharacterAtCursorWithSource:{-[VOTGesturedTextInputManager valueChangeOriginator](self, "valueChangeOriginator")}];
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

      if ([(VOTGesturedTextInputManager *)self isWordBackspaceEvent:eventCopy])
      {
        if ([(VOTGesturedTextInputManager *)self performCustomWordBackspace]|| [(VOTGesturedTextInputManager *)self _performWordBackspaceForElement:elementCopy])
        {
          [(VOTGesturedTextInputManager *)self didInputWordBackspace];
          goto LABEL_5;
        }
      }

      else
      {
        if ([(VOTGesturedTextInputManager *)self isPreviousSuggestionEvent:eventCopy])
        {
          [(VOTGesturedTextInputManager *)self applyPreviousSuggestionToElement:elementCopy];
          goto LABEL_5;
        }

        if ([(VOTGesturedTextInputManager *)self isNextSuggestionEvent:eventCopy])
        {
          [(VOTGesturedTextInputManager *)self applyNextSuggestionToElement:elementCopy];
          goto LABEL_5;
        }

        if ([(VOTGesturedTextInputManager *)self isNextKeyboardLanguageEvent:eventCopy])
        {
          performNextKeyboardLanguage = [(VOTGesturedTextInputManager *)self performNextKeyboardLanguage];
          goto LABEL_6;
        }
      }

      performNextKeyboardLanguage = 0;
      goto LABEL_6;
    }

    [(VOTGesturedTextInputManager *)self inputSpaceForElement:elementCopy];
  }

LABEL_5:
  performNextKeyboardLanguage = 1;
LABEL_6:

  return performNextKeyboardLanguage;
}

- (void)_prepareNameSearcherForElement:(id)element
{
  elementCopy = element;
  nameSearcher = [(VOTGesturedTextInputManager *)self nameSearcher];

  if (!nameSearcher)
  {
    if ([(VOTGesturedTextInputManager *)self _isInHomeScreen:elementCopy])
    {
      v5 = -[VOTNameSearcherAppSource initWithLaunchContext:]([VOTNameSearcherAppSource alloc], "initWithLaunchContext:", [elementCopy isInAppSwitcher]);
      v6 = [[VOTNameSearcher alloc] initWithDelegate:self itemSource:v5 filter:self];
      [(VOTGesturedTextInputManager *)self setNameSearcher:v6];

      [(VOTGesturedTextInputManager *)self hintForAppLaunch];
    }

    else
    {
      v5 = [[VOTNameSearcherElementSource alloc] initWithElement:elementCopy];
      v7 = [[VOTNameSearcher alloc] initWithDelegate:self itemSource:v5 filter:self];
      [(VOTGesturedTextInputManager *)self setNameSearcher:v7];

      [(VOTGesturedTextInputManager *)self hintForItemChooser];
    }
    v8 = ;
    [(VOTGesturedTextInputManager *)self setNameSearcherHint:v8];
  }
}

- (BOOL)_isInHomeScreen:(id)screen
{
  screenCopy = screen;
  application = [screenCopy application];
  if ([application isSpringBoard])
  {
    isSpringBoard = 1;
  }

  else
  {
    immediateRemoteParent = [screenCopy immediateRemoteParent];
    application2 = [immediateRemoteParent application];
    isSpringBoard = [application2 isSpringBoard];
  }

  v8 = +[AXSpringBoardServer server];
  v9 = [v8 isScreenLockedWithPasscode:0];

  return isSpringBoard & (v9 ^ 1);
}

- (BOOL)_processSearchEvent:(id)event forElement:(id)element
{
  eventCopy = event;
  if (![(VOTGesturedTextInputManager *)self isNextSuggestionEvent:eventCopy])
  {
    if ([(VOTGesturedTextInputManager *)self isPreviousSuggestionEvent:eventCopy])
    {
      nameSearcher = [(VOTGesturedTextInputManager *)self nameSearcher];
      [nameSearcher focusOnPreviousMatchingItem];
      goto LABEL_5;
    }

    if ([(VOTGesturedTextInputManager *)self isSpaceEvent:eventCopy])
    {
      [(VOTGesturedTextInputManager *)self flushCharacterBuffer];
      goto LABEL_6;
    }

    if ([(VOTGesturedTextInputManager *)self isBackspaceEvent:eventCopy])
    {
      if (![(VOTGesturedTextInputManager *)self performCustomBackspace])
      {
        _stringByDeletingFromCurrentInputStringIfNeeded = [(VOTGesturedTextInputManager *)self _stringByDeletingFromCurrentInputStringIfNeeded];
        [(VOTGesturedTextInputManager *)self setPendingInputString:_stringByDeletingFromCurrentInputStringIfNeeded];

        nameSearcher2 = [(VOTGesturedTextInputManager *)self nameSearcher];
        [nameSearcher2 updateMatchingItems];

        [(VOTGesturedTextInputManager *)self _deleteFromCurrentInputStringIfNeeded];
      }

      goto LABEL_6;
    }

    if ([(VOTGesturedTextInputManager *)self isSelectItemEvent:eventCopy])
    {
      nameSearcher3 = [(VOTGesturedTextInputManager *)self nameSearcher];
      [nameSearcher3 selectFocusedItem];

      [(VOTGesturedTextInputManager *)self clearCurrentString];
      goto LABEL_6;
    }

    if ([(VOTGesturedTextInputManager *)self isNextKeyboardLanguageEvent:eventCopy])
    {
      performNextKeyboardLanguage = [(VOTGesturedTextInputManager *)self performNextKeyboardLanguage];
      goto LABEL_7;
    }

    command = [eventCopy command];
    if (([command isEqualToString:kVOTEventCommandSearchRotorLeft] & 1) == 0)
    {
      command2 = [eventCopy command];
      if (([command2 isEqualToString:kVOTEventCommandSearchRotorRight] & 1) == 0)
      {
        command3 = [eventCopy command];
        if (([command3 isEqualToString:kVOTEventCommandEscape] & 1) == 0)
        {
          command4 = [eventCopy command];
          if (([command4 isEqualToString:kVOTEventCommandNextTextSegment] & 1) == 0)
          {
            command5 = [eventCopy command];
            if (([command5 isEqualToString:kVOTEventCommandPreviousTextSegment] & 1) == 0)
            {
              command6 = [eventCopy command];
              if (([command6 isEqualToString:kVOTEventCommandSelectRight] & 1) == 0)
              {
                command7 = [eventCopy command];
                if (([command7 isEqualToString:kVOTEventCommandSelectLeft] & 1) == 0)
                {
                  command8 = [eventCopy command];
                  if (([command8 isEqualToString:kVOTEventCommandBSIExit] & 1) == 0)
                  {
                    command9 = [eventCopy command];
                    if (([command9 isEqualToString:kVOTEventCommandBSIPreviousRotor] & 1) == 0)
                    {
                      command10 = [eventCopy command];
                      if (([command10 isEqualToString:kVOTEventCommandBSINextRotor] & 1) == 0)
                      {
                        command11 = [eventCopy command];
                        v22 = [command11 isEqualToString:kVOTEventCommandBSIEscape];

                        if ((v22 & 1) == 0)
                        {
                          goto LABEL_6;
                        }

LABEL_37:
                        performNextKeyboardLanguage = 0;
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

  nameSearcher = [(VOTGesturedTextInputManager *)self nameSearcher];
  [nameSearcher focusOnNextMatchingItem];
LABEL_5:

LABEL_6:
  performNextKeyboardLanguage = 1;
LABEL_7:

  return performNextKeyboardLanguage;
}

- (BOOL)_processRotorEvent:(id)event
{
  eventCopy = event;
  if ([(VOTGesturedTextInputManager *)self isRotorLeftEvent:eventCopy])
  {
    v5 = VOTSharedWorkspace;
    v6 = &kVOTEventCommandSearchRotorLeft;
LABEL_5:
    v7 = [VOTEvent internalEventWithCommand:*v6 info:0];
    [v5 dispatchCommand:v7];
LABEL_13:

    goto LABEL_14;
  }

  if ([(VOTGesturedTextInputManager *)self isRotorRightEvent:eventCopy])
  {
    v5 = VOTSharedWorkspace;
    v6 = &kVOTEventCommandSearchRotorRight;
    goto LABEL_5;
  }

  if ([(VOTGesturedTextInputManager *)self isRotorDownEvent:eventCopy])
  {
    v8 = VOTSharedWorkspace;
    v9 = &kVOTEventCommandSearchRotorDown;
LABEL_12:
    v7 = [VOTEvent internalEventWithCommand:*v9 info:0];
    [v8 dispatchCommand:v7 bypassGesturedInput:1];
    goto LABEL_13;
  }

  if ([(VOTGesturedTextInputManager *)self isRotorUpEvent:eventCopy])
  {
    v8 = VOTSharedWorkspace;
    v9 = &kVOTEventCommandSearchRotorUp;
    goto LABEL_12;
  }

  if ([(VOTGesturedTextInputManager *)self isTextSelectionForwardEvent:eventCopy])
  {
    v8 = VOTSharedWorkspace;
    v9 = &kVOTEventCommandSimpleTap;
    goto LABEL_12;
  }

  if (![(VOTGesturedTextInputManager *)self isTextSelectionBackwardEvent:eventCopy])
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

      lowercaseString = v5;
LABEL_10:

      goto LABEL_11;
    }

    v8 = [VOTRotor stringForRotorType:qword_10017E250[v2]];
    lowercaseString = [v8 lowercaseString];

    v9 = [lowercaseString length];
    if (v9 < 1)
    {
      goto LABEL_10;
    }

    v10 = v9;
    v11 = 0;
    while (1)
    {
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C", [lowercaseString characterAtIndex:v11]);
      allKeys = [v15 allKeys];
      v13 = [allKeys containsObject:0];

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

- (unint64_t)_numberOfCharactersToDeleteToDesiredLength:(unint64_t)length fromString:(id)string
{
  stringCopy = string;
  v7 = -[VOTGesturedTextInputManager _numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:](self, "_numberOfCharactersToDeleteStartingAtIndex:toDesiredLength:fromString:", [stringCopy length], length, stringCopy);

  return v7;
}

- (unint64_t)_numberOfCharactersToDeleteStartingAtIndex:(unint64_t)index toDesiredLength:(unint64_t)length fromString:(id)string
{
  stringCopy = string;
  if (length >= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:{length, v14, v15, v16}];
      v11 = v10;
      if (v9 != length)
      {
        v12 = [NSNumber numberWithUnsignedInteger:length];
        v17.location = v9;
        v17.length = v11;
        NSStringFromRange(v17);
        v16 = v15 = v12;
        v14 = stringCopy;
        _AXAssert();
      }

      length = v9 + v11;
      ++v8;
    }

    while (v9 + v11 < index);
  }

  return v8;
}

- (void)itemSource:(id)source didFilter:(id)filter didSwitchFocus:(id)focus focusedValue:(id)value
{
  sourceCopy = source;
  filterCopy = filter;
  focusCopy = focus;
  valueCopy = value;
  pendingInputString = [(VOTGesturedTextInputManager *)self pendingInputString];
  v14 = objc_alloc_init(VOTOutputRequest);
  currentInputString = [(VOTGesturedTextInputManager *)self currentInputString];
  outputForLatestInput = [(VOTGesturedTextInputManager *)self outputForLatestInput];
  v17 = outputForLatestInput;
  if (outputForLatestInput)
  {
    v18 = v14;
    v14 = outputForLatestInput;
  }

  else
  {
    if ([currentInputString length] && !objc_msgSend(pendingInputString, "hasPrefix:", currentInputString))
    {
      if (![pendingInputString length])
      {
        goto LABEL_10;
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%C", [pendingInputString characterAtIndex:{objc_msgSend(pendingInputString, "length") - 1}]);
    }

    else
    {
      v19 = [pendingInputString substringFromIndex:{objc_msgSend(currentInputString, "length")}];
    }

    v18 = v19;
    v20 = [(VOTOutputRequest *)v14 addString:v19];
  }

LABEL_10:
  if (filterCopy)
  {
    v21 = [sourceCopy messageForMatchingItemsCount:{objc_msgSend(filterCopy, "integerValue")}];
    v22 = [(VOTOutputRequest *)v14 addString:v21];
  }

  if (focusCopy)
  {
    v23 = [(VOTOutputRequest *)v14 addString:focusCopy];
    if (valueCopy)
    {
      v24 = [(VOTOutputRequest *)v14 addString:valueCopy];
    }

    if ([VOTSharedWorkspace hintsEnabled])
    {
      nameSearcherHint = [(VOTGesturedTextInputManager *)self nameSearcherHint];
      if ([nameSearcherHint length])
      {
        LODWORD(v26) = 1061997773;
        [(VOTOutputRequest *)v14 addPause:v26];
        v27 = [(VOTOutputRequest *)v14 addString:nameSearcherHint];
      }
    }
  }

  [(VOTOutputRequest *)v14 send];
}

- (void)itemSource:(id)source didSelect:(id)select
{
  sourceCopy = source;
  selectCopy = select;
  if (selectCopy)
  {
    [sourceCopy selectSpeechDelay];
    v10 = sourceCopy;
    v11 = selectCopy;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    messageForNoMatchingItems = [sourceCopy messageForNoMatchingItems];
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];
    v9 = sub_1000095FC(messageForNoMatchingItems, 1, selectedLanguage);
  }
}

- (id)nameSearcherEntriesPassingSearchFrom:(id)from
{
  fromCopy = from;
  pendingInputString = [(VOTGesturedTextInputManager *)self pendingInputString];
  pendingInputString2 = [(VOTGesturedTextInputManager *)self pendingInputString];

  if (!pendingInputString2)
  {
    currentInputString = [(VOTGesturedTextInputManager *)self currentInputString];

    pendingInputString = currentInputString;
  }

  if ([pendingInputString length])
  {
    v19 = fromCopy;
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = fromCopy;
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
          name = [v13 name];
          lowercaseString = [name lowercaseString];
          lowercaseString2 = [pendingInputString lowercaseString];
          v17 = [lowercaseString hasPrefix:lowercaseString2];

          if (v17)
          {
            [v20 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    fromCopy = v19;
  }

  else
  {
    v20 = fromCopy;
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

- (BOOL)isSpaceEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isBackspaceEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isWordBackspaceEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isReturnKeyEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isNextSuggestionEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isPreviousSuggestionEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isSelectItemEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isNextKeyboardLanguageEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isNextBrailleTableEvent:(id)event
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)applyNextSuggestionToElement:(id)element
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();

  NSRequestConcreteImplementation();
}

- (void)applyPreviousSuggestionToElement:(id)element
{
  sub_100057B64();
  objc_opt_class();
  sub_100057B54();

  NSRequestConcreteImplementation();
}

@end