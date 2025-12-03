@interface VOTHandwritingManager
+ (VOTHandwritingManager)sharedInstance;
- (BOOL)isBackspaceEvent:(id)event;
- (BOOL)isNextKeyboardLanguageEvent:(id)event;
- (BOOL)isNextSuggestionEvent:(id)event;
- (BOOL)isPreviousSuggestionEvent:(id)event;
- (BOOL)isReturnKeyEvent:(id)event;
- (BOOL)isSelectItemEvent:(id)event;
- (BOOL)isSpaceEvent:(id)event;
- (BOOL)isWordBackspaceEvent:(id)event;
- (BOOL)processEvent:(id)event;
- (BOOL)processTapWithFingerCount:(unint64_t)count;
- (CGPoint)_localizePoint:(CGPoint)point forOrientation:(int64_t)orientation;
- (VOTHandwritingManager)init;
- (id)_adjustRecognizedStringForActiveCharacterMode:(id)mode;
- (id)_characterModesForCharacterModeMask:(unint64_t)mask;
- (id)_characterSetForHandwritingMode:(unint64_t)mode;
- (id)_diacriticsForCharacter:(id)character;
- (void)_announceActiveCharacterMode;
- (void)_applyAlternateSuggestionToElement:(id)element inDirection:(BOOL)direction;
- (void)_nextActiveCharacterSet;
- (void)_previousActiveCharacterSet;
- (void)_promoteCommaToBeginningOfListIfNeeded:(id)needed;
- (void)_resetAlternateCharacterSuggestions;
- (void)_updateActiveCharacterSetFromCharacterMode:(unint64_t)mode allowedCharacterModes:(unint64_t)modes announceChange:(BOOL)change;
- (void)addPointToSession:(CGPoint)session;
- (void)announceActiveCharacterModeWithDelay:(BOOL)delay;
- (void)cancelAnnounceActiveCharacterMode;
- (void)dealloc;
- (void)endCurrentStroke;
- (void)recognizeAndResetSession;
- (void)resetSession;
- (void)setActive:(BOOL)active;
- (void)updateCharacterModesWithHandwritingAttributes:(id)attributes;
@end

@implementation VOTHandwritingManager

+ (VOTHandwritingManager)sharedInstance
{
  if (qword_1001FEFE0 != -1)
  {
    sub_100130F84();
  }

  v3 = qword_1001FEFD8;

  return v3;
}

- (VOTHandwritingManager)init
{
  v20.receiver = self;
  v20.super_class = VOTHandwritingManager;
  v2 = [(VOTGesturedTextInputManager *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_create("handwiting-access-queue", 0);
    [(VOTHandwritingManager *)v2 setEngineAccessQueue:v3];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v4 = qword_1001FF008;
    v25 = qword_1001FF008;
    if (!qword_1001FF008)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10010DEF0;
      v21[3] = &unk_1001C8370;
      v21[4] = &v22;
      sub_10010DEF0(v21);
      v4 = v23[3];
    }

    v5 = v4;
    _Block_object_dispose(&v22, 8);
    v6 = objc_alloc_init(v4);
    [(VOTHandwritingManager *)v2 setRecognitionCanvas:v6];
    engineAccessQueue = [(VOTHandwritingManager *)v2 engineAccessQueue];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10010B7B0;
    v18 = &unk_1001C76E8;
    v8 = v2;
    v19 = v8;
    dispatch_async(engineAccessQueue, &v15);

    v9 = [AXDispatchTimer alloc];
    v10 = [v9 initWithTargetSerialQueue:{&_dispatch_main_q, v15, v16, v17, v18}];
    [(VOTHandwritingManager *)v8 setAnnounceCharacterModeTimer:v10];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 pathForResource:@"VOTHandwritingReplacements" ofType:@"plist"];

    v13 = [NSDictionary dictionaryWithContentsOfFile:v12];
    [(VOTHandwritingManager *)v8 setReplacements:v13];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"VOTRotorChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = VOTHandwritingManager;
  [(VOTHandwritingManager *)&v4 dealloc];
}

- (void)endCurrentStroke
{
  recognitionCanvas = [(VOTHandwritingManager *)self recognitionCanvas];
  [recognitionCanvas endStroke];
}

- (void)addPointToSession:(CGPoint)session
{
  -[VOTHandwritingManager _localizePoint:forOrientation:](self, "_localizePoint:forOrientation:", [VOTSharedWorkspace deviceOrientation], session.x, session.y);
  v5 = v4;
  v7 = v6;
  recognitionCanvas = [(VOTHandwritingManager *)self recognitionCanvas];
  [recognitionCanvas addPoint:{v5, v7}];

  recognitionCanvas2 = [(VOTHandwritingManager *)self recognitionCanvas];
  pointCount = [recognitionCanvas2 pointCount];

  if (!pointCount)
  {

    [(VOTHandwritingManager *)self cancelAnnounceActiveCharacterMode];
  }
}

- (void)recognizeAndResetSession
{
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10010C390;
  v66 = sub_10010C3A0;
  v67 = 0;
  [(VOTHandwritingManager *)self _resetAlternateCharacterSuggestions];
  recognitionCanvas = [(VOTHandwritingManager *)self recognitionCanvas];
  v4 = [recognitionCanvas pointCount] < 5;

  if (v4)
  {
    if ([(VOTHandwritingManager *)self characterMode]!= 8)
    {
      goto LABEL_44;
    }

    v5 = v63[5];
    v63[5] = @".";

    v6 = [NSMutableOrderedSet orderedSetWithObjects:@".", @", ", @"", @"'", @"", 0];;
    [(VOTHandwritingManager *)self setAlternateSuggestions:v6];
  }

  else
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_10010C390;
    v60 = sub_10010C3A0;
    v61 = 0;
    engineAccessQueue = [(VOTHandwritingManager *)self engineAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010C3A8;
    block[3] = &unk_1001CACF0;
    block[4] = self;
    block[5] = &v56;
    dispatch_sync(engineAccessQueue, block);

    v8 = +[NSMutableArray array];
    v9 = VOTLogHandwriting();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

    if (v10)
    {
      v11 = VOTLogHandwriting();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100131034(v11);
      }

      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v51 = 0u;
      v12 = v57[5];
      v13 = [v12 countByEnumeratingWithState:&v51 objects:v75 count:16];
      if (v13)
      {
        v14 = *v52;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v52 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v51 + 1) + 8 * i);
            v17 = VOTLogHandwriting();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              string = [v16 string];
              [v16 score];
              v19 = [NSNumber numberWithDouble:?];
              *buf = 134218499;
              v70 = v16;
              v71 = 2113;
              v72 = string;
              v73 = 2114;
              v74 = v19;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "  result<%p>:%{private}@ score:%{public}@", buf, 0x20u);
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v51 objects:v75 count:16];
        }

        while (v13);
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = v57[5];
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v68 count:16];
    if (v21)
    {
      v22 = *v48;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v47 + 1) + 8 * j);
          [v24 score];
          v26 = v25;
          [(VOTHandwritingManager *)self _recognitionThresholdForCharacterMode];
          if (v26 >= v27)
          {
            string2 = [v24 string];
            v29 = [string2 length] > 1;

            if (v29)
            {
              string3 = [v24 string];
              _AXAssert();
            }

            string4 = [v24 string];
            [v8 addObject:string4];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v47 objects:v68 count:16];
      }

      while (v21);
    }

    [(VOTHandwritingManager *)self _promoteCommaToBeginningOfListIfNeeded:v8];
    if ([v8 count])
    {
      v31 = [v8 objectAtIndex:0];
      v32 = v63[5];
      v63[5] = v31;

      v33 = [NSMutableOrderedSet orderedSetWithObject:v63[5]];
      [(VOTHandwritingManager *)self setAlternateSuggestions:v33];

      alternateSuggestions = [(VOTHandwritingManager *)self alternateSuggestions];
      [alternateSuggestions addObjectsFromArray:v8];

      v35 = [(VOTHandwritingManager *)self _adjustRecognizedStringForActiveCharacterMode:v63[5]];
      v36 = v63[5];
      v63[5] = v35;
    }

    if (v63[5])
    {
      v37 = [(VOTHandwritingManager *)self _diacriticsForCharacter:?];
      if ([v37 count])
      {
        alternateSuggestions2 = [(VOTHandwritingManager *)self alternateSuggestions];
        v39 = [alternateSuggestions2 count] == 0;

        if (v39)
        {
          alternateSuggestions3 = [NSMutableOrderedSet orderedSetWithArray:v37];
          [(VOTHandwritingManager *)self setAlternateSuggestions:alternateSuggestions3];
        }

        else
        {
          alternateSuggestions3 = [(VOTHandwritingManager *)self alternateSuggestions];
          [alternateSuggestions3 addObjectsFromArray:v37];
        }
      }
    }

    _Block_object_dispose(&v56, 8);
  }

  if ([v63[5] length])
  {
    v41 = [v63[5] characterAtIndex:0];
    engineAccessQueue2 = [(VOTHandwritingManager *)self engineAccessQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10010C45C;
    v45[3] = &unk_1001CB530;
    v46 = v41;
    v45[4] = self;
    v45[5] = &v62;
    dispatch_sync(engineAccessQueue2, v45);
  }

  if (v63[5])
  {
    [(VOTGesturedTextInputManager *)self appendString:?];
  }

  else
  {
    v43 = sub_1000511CC(off_1001FDDD0, @"handwrite.notrecognized", 0);
    [VOTOutputRequest sendRequestWithString:v43];
  }

  [(VOTHandwritingManager *)self resetSession];
LABEL_44:
  _Block_object_dispose(&v62, 8);
}

- (void)resetSession
{
  recognitionCanvas = [(VOTHandwritingManager *)self recognitionCanvas];
  [recognitionCanvas clear];

  [(VOTHandwritingManager *)self setState:0];
}

- (BOOL)processEvent:(id)event
{
  eventCopy = event;
  if ([(VOTHandwritingManager *)self state]== 4)
  {
    command = [eventCopy command];
    if ([command isEqualToString:kVOTEventCommandSimpleTap])
    {
    }

    else
    {
      command2 = [eventCopy command];
      v7 = [command2 isEqualToString:kVOTEventCommandGesturedTextInputLaunchApp];

      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  command3 = [eventCopy command];
  v9 = [command3 isEqualToString:kVOTEventCommandHandwritingNextActiveCharacterSet];

  if (!v9)
  {
    command4 = [eventCopy command];
    v11 = [command4 isEqualToString:kVOTEventCommandHandwritingPreviousActiveCharacterSet];

    if (v11)
    {
      [(VOTHandwritingManager *)self _previousActiveCharacterSet];
      goto LABEL_16;
    }

    command5 = [eventCopy command];
    v13 = [command5 isEqualToString:kVOTEventCommandHandwritingAnnounceActiveCharacterSet];

    if (v13)
    {
      [(VOTHandwritingManager *)self _announceActiveCharacterMode];
      goto LABEL_16;
    }

    v16.receiver = self;
    v16.super_class = VOTHandwritingManager;
    if ([(VOTGesturedTextInputManager *)&v16 processEvent:eventCopy])
    {
      if ([(VOTHandwritingManager *)self isSpaceEvent:eventCopy]|| [(VOTHandwritingManager *)self isBackspaceEvent:eventCopy]|| [(VOTHandwritingManager *)self isReturnKeyEvent:eventCopy])
      {
        [(VOTHandwritingManager *)self _resetAlternateCharacterSuggestions];
      }

      goto LABEL_16;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_17;
  }

  [(VOTHandwritingManager *)self _nextActiveCharacterSet];
LABEL_16:
  v14 = 1;
LABEL_17:

  return v14;
}

- (void)announceActiveCharacterModeWithDelay:(BOOL)delay
{
  if (delay)
  {
    announceCharacterModeTimer = [(VOTHandwritingManager *)self announceCharacterModeTimer];
    [announceCharacterModeTimer cancel];

    announceCharacterModeTimer2 = [(VOTHandwritingManager *)self announceCharacterModeTimer];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010C83C;
    v6[3] = &unk_1001C76E8;
    v6[4] = self;
    [announceCharacterModeTimer2 afterDelay:v6 processBlock:1.0];
  }

  else
  {

    [(VOTHandwritingManager *)self _announceActiveCharacterMode];
  }
}

- (void)cancelAnnounceActiveCharacterMode
{
  announceCharacterModeTimer = [(VOTHandwritingManager *)self announceCharacterModeTimer];
  [announceCharacterModeTimer cancel];
}

- (void)updateCharacterModesWithHandwritingAttributes:(id)attributes
{
  attributesCopy = attributes;
  preferredCharacterSet = [attributesCopy preferredCharacterSet];
  allowedCharacterSets = [attributesCopy allowedCharacterSets];

  [(VOTHandwritingManager *)self _updateActiveCharacterSetFromCharacterMode:preferredCharacterSet allowedCharacterModes:allowedCharacterSets announceChange:0];
}

- (BOOL)processTapWithFingerCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = VOTHandwritingManager;
  result = [(VOTGesturedTextInputManager *)&v5 processTapWithFingerCount:?];
  if (count == 3)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSpaceEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputInsertSpace];

  return v4;
}

- (BOOL)isBackspaceEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputBackspace];

  return v4;
}

- (BOOL)isWordBackspaceEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputDeleteWord];

  return v4;
}

- (BOOL)isReturnKeyEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputPerformReturnEquivalent];

  return v4;
}

- (BOOL)isNextSuggestionEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputNextSuggestion];

  return v4;
}

- (BOOL)isPreviousSuggestionEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputPreviousSuggestion];

  return v4;
}

- (BOOL)isSelectItemEvent:(id)event
{
  eventCopy = event;
  command = [eventCopy command];
  if ([command isEqualToString:kVOTEventCommandSimpleTap])
  {
    v5 = 1;
  }

  else
  {
    command2 = [eventCopy command];
    v5 = [command2 isEqualToString:kVOTEventCommandGesturedTextInputLaunchApp];
  }

  return v5;
}

- (BOOL)isNextKeyboardLanguageEvent:(id)event
{
  command = [event command];
  v4 = [command isEqualToString:kVOTEventCommandGesturedTextInputNextKeyboardLanguage];

  return v4;
}

- (id)_diacriticsForCharacter:(id)character
{
  characterCopy = character;
  if (qword_1001FEFE8 != -1)
  {
    sub_100131078();
  }

  v4 = sub_10010D028();

  if (v4)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v5 = off_1001FF038;
    v24 = off_1001FF038;
    if (!off_1001FF038)
    {
      v6 = sub_10010E160();
      v22[3] = dlsym(v6, "UIKeyboardGetCurrentInputMode");
      off_1001FF038 = v22[3];
      v5 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v5)
    {
      sub_100131104();
    }

    v7 = v5();
    if (!v7)
    {
      v8 = [AXSafeClassFromString() safeValueForKey:@"sharedInputModeController"];
      v9 = [v8 safeValueForKey:@"suggestedInputModesForPreferredLanguages"];
      firstObject = [v9 firstObject];
      v11 = __UIAccessibilitySafeClass();

      v12 = [v11 safeValueForKey:@"identifier"];
      if (v12)
      {
        v7 = v12;
      }

      else
      {
        v7 = @"en_US@hw=US;sw=QWERTY";
      }
    }

    v13 = characterCopy;
    v14 = v7;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v15 = off_1001FF040;
    v24 = off_1001FF040;
    if (!off_1001FF040)
    {
      v16 = sub_10010E160();
      v22[3] = dlsym(v16, "UIKeyboardRomanAccentVariants");
      off_1001FF040 = v22[3];
      v15 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v15)
    {
      sub_10013108C();
    }

    v17 = v15(v13, v14, 7);

    v18 = sub_10010D028();
    v19 = [v17 objectForKey:v18];
  }

  else
  {
    v14 = VOTLogHandwriting();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10013117C(v14);
    }

    v19 = 0;
  }

  return v19;
}

- (void)_promoteCommaToBeginningOfListIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy count])
  {
    v3 = [neededCopy objectAtIndex:0];
    v4 = objc_msgSend(@"?>%"), "rangeOfString:", v3);

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [neededCopy removeObject:{@", "}];
      [neededCopy insertObject:@" atIndex:{", 0}];
    }
  }
}

- (void)_resetAlternateCharacterSuggestions
{
  [(VOTHandwritingManager *)self setCurrentAlternateSuggestion:0];

  [(VOTHandwritingManager *)self setAlternateSuggestions:0];
}

- (void)_announceActiveCharacterMode
{
  v2 = [(VOTHandwritingManager *)self characterMode]- 2;
  if (v2 > 6)
  {
    v3 = @"handwrite.lowercase";
  }

  else
  {
    v3 = *(&off_1001CB5C0 + v2);
  }

  v4 = sub_1000511CC(off_1001FDDD0, v3, 0);
  [VOTOutputRequest sendRequestWithString:v4];
}

- (void)_applyAlternateSuggestionToElement:(id)element inDirection:(BOOL)direction
{
  directionCopy = direction;
  elementCopy = element;
  alternateSuggestions = [(VOTHandwritingManager *)self alternateSuggestions];
  v7 = [alternateSuggestions count];

  if (v7)
  {
    currentAlternateSuggestion = [(VOTHandwritingManager *)self currentAlternateSuggestion];
    v9 = (currentAlternateSuggestion - 1);
    if (!currentAlternateSuggestion)
    {
      v9 = v7 - 1;
    }

    if (currentAlternateSuggestion == v7 - 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = currentAlternateSuggestion + 1;
    }

    if (directionCopy)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    alternateSuggestions2 = [(VOTHandwritingManager *)self alternateSuggestions];
    v13 = [alternateSuggestions2 objectAtIndex:v11];

    [elementCopy replaceCharactersAtCursor:1 withString:v13 source:4];
    [VOTOutputRequest sendRequestWithString:v13];
    [(VOTHandwritingManager *)self setCurrentAlternateSuggestion:v11];
  }

  else
  {
    v13 = +[VOTOutputManager outputManager];
    v14 = +[VOSOutputEvent BoundaryEncountered];
    [v13 sendEvent:v14];
  }
}

- (id)_characterModesForCharacterModeMask:(unint64_t)mask
{
  maskCopy = mask;
  v4 = +[NSMutableArray array];
  v5 = v4;
  if (maskCopy)
  {
    [v4 addObject:&off_1001DAE20];
    if ((maskCopy & 2) == 0)
    {
LABEL_3:
      if ((maskCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((maskCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:&off_1001DAE38];
  if ((maskCopy & 4) == 0)
  {
LABEL_4:
    if ((maskCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v5 addObject:&off_1001DAE50];
  if ((maskCopy & 8) != 0)
  {
LABEL_5:
    [v5 addObject:&off_1001DAE68];
  }

LABEL_6:

  return v5;
}

- (id)_characterSetForHandwritingMode:(unint64_t)mode
{
  switch(mode)
  {
    case 2uLL:
      v5 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
      v6 = [v5 objectForKey:NSLocaleExemplarCharacterSet];
      v4 = [v6 mutableCopy];

      v7 = +[NSCharacterSet uppercaseLetterCharacterSet];
      break;
    case 8uLL:
      v3 = +[AXLanguageManager commonPunctuationCharacters];
      goto LABEL_6;
    case 4uLL:
      v3 = +[NSCharacterSet decimalDigitCharacterSet];
LABEL_6:
      v4 = v3;
      goto LABEL_10;
    default:
      v5 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
      v8 = [v5 objectForKey:NSLocaleExemplarCharacterSet];
      v4 = [v8 mutableCopy];

      v7 = +[NSCharacterSet lowercaseLetterCharacterSet];
      break;
  }

  v9 = v7;
  [v4 formIntersectionWithCharacterSet:v7];

LABEL_10:

  return v4;
}

- (void)_updateActiveCharacterSetFromCharacterMode:(unint64_t)mode allowedCharacterModes:(unint64_t)modes announceChange:(BOOL)change
{
  changeCopy = change;
  if (!modes)
  {
    _AXAssert();
  }

  [(VOTHandwritingManager *)self setAllowedCharacterModes:modes];
  v9 = [(VOTHandwritingManager *)self _characterModesForCharacterModeMask:modes];
  if ((mode & ~modes) != 0)
  {
    v10 = VOTLogHandwriting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      modeCopy = mode;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Preferred handwriting character mode (%lu) is not among allowed character modes. Choosing a suitable substitue", buf, 0xCu);
    }

    firstObject = [v9 firstObject];
    mode = [firstObject intValue];
  }

  [(VOTHandwritingManager *)self setCharacterMode:mode];
  engineAccessQueue = [(VOTHandwritingManager *)self engineAccessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010D75C;
  v13[3] = &unk_1001C7900;
  v13[4] = self;
  v13[5] = mode;
  dispatch_sync(engineAccessQueue, v13);

  if (changeCopy)
  {
    [(VOTHandwritingManager *)self _announceActiveCharacterMode];
  }
}

- (void)_previousActiveCharacterSet
{
  v8 = [NSNumber numberWithUnsignedInteger:[(VOTHandwritingManager *)self characterMode]];
  v3 = [(VOTHandwritingManager *)self _characterModesForCharacterModeMask:[(VOTHandwritingManager *)self allowedCharacterModes]];
  characterMode = [(VOTHandwritingManager *)self characterMode];
  v5 = [v3 indexOfObject:v8];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    if ([v3 count] >= 2)
    {
      if (v6)
      {
        [v3 objectAtIndex:v6 - 1];
      }

      else
      {
        [v3 lastObject];
      }
      v7 = ;
      characterMode = [v7 intValue];
    }
  }

  [(VOTHandwritingManager *)self _updateActiveCharacterSetFromCharacterMode:characterMode allowedCharacterModes:[(VOTHandwritingManager *)self allowedCharacterModes] announceChange:1];
}

- (void)_nextActiveCharacterSet
{
  v8 = [NSNumber numberWithUnsignedInteger:[(VOTHandwritingManager *)self characterMode]];
  v3 = [(VOTHandwritingManager *)self _characterModesForCharacterModeMask:[(VOTHandwritingManager *)self allowedCharacterModes]];
  characterMode = [(VOTHandwritingManager *)self characterMode];
  v5 = [v3 indexOfObject:v8];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    if ([v3 count] >= 2)
    {
      if (v6 == [v3 count] - 1)
      {
        [v3 firstObject];
      }

      else
      {
        [v3 objectAtIndex:v6 + 1];
      }
      v7 = ;
      characterMode = [v7 intValue];
    }
  }

  [(VOTHandwritingManager *)self _updateActiveCharacterSetFromCharacterMode:characterMode allowedCharacterModes:[(VOTHandwritingManager *)self allowedCharacterModes] announceChange:1];
}

- (id)_adjustRecognizedStringForActiveCharacterMode:(id)mode
{
  modeCopy = mode;
  characterMode = [(VOTHandwritingManager *)self characterMode];
  v6 = 0;
  if (characterMode <= 3)
  {
    if (characterMode == 1)
    {
      replacements = [(VOTHandwritingManager *)self replacements];
      v6 = [replacements objectForKey:@"lowercase"];

      v8 = [v6 objectForKey:modeCopy];

      if (v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = modeCopy;
      }

      lowercaseString = [v14 lowercaseString];
      goto LABEL_19;
    }

    if (characterMode == 2)
    {
      replacements2 = [(VOTHandwritingManager *)self replacements];
      v6 = [replacements2 objectForKey:@"uppercase"];

      v8 = [v6 objectForKey:modeCopy];

      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = modeCopy;
      }

      lowercaseString = [v9 uppercaseString];
LABEL_19:
      v15 = lowercaseString;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  if (characterMode == 4)
  {
    replacements3 = [(VOTHandwritingManager *)self replacements];
    v11 = replacements3;
    v12 = @"numbers";
  }

  else
  {
    if (characterMode != 8)
    {
LABEL_9:
      v8 = modeCopy;
      goto LABEL_21;
    }

    replacements3 = [(VOTHandwritingManager *)self replacements];
    v11 = replacements3;
    v12 = @"punctuation";
  }

  v6 = [replacements3 objectForKey:v12];

  v8 = [v6 objectForKey:modeCopy];

  if (v8)
  {
    v15 = v8;
    v8 = v15;
LABEL_20:

    modeCopy = v15;
  }

LABEL_21:
  v17 = modeCopy;

  return modeCopy;
}

- (CGPoint)_localizePoint:(CGPoint)point forOrientation:(int64_t)orientation
{
  y = point.y;
  x = point.x;
  if (qword_1001FF000 != -1)
  {
    sub_100131238();
  }

  switch(orientation)
  {
    case 2:
      v7 = *(&xmmword_1001FEFF0 + 1) - y;
      y = *&xmmword_1001FEFF0 - x;
      break;
    case 4:
      y = *(&xmmword_1001FEFF0 + 1) - y;
      v7 = x;
      break;
    case 3:
      v7 = *&xmmword_1001FEFF0 - x;
      break;
    default:
      v7 = y;
      y = x;
      break;
  }

  v8 = y;
  result.y = v7;
  result.x = v8;
  return result;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  isActive = [(VOTGesturedTextInputManager *)self isActive];
  v7.receiver = self;
  v7.super_class = VOTHandwritingManager;
  [(VOTGesturedTextInputManager *)&v7 setActive:activeCopy];
  if (!isActive || activeCopy)
  {
    if (!(isActive & 1 | !activeCopy))
    {
      [(VOTHandwritingManager *)self _resetAlternateCharacterSuggestions];
    }
  }

  else
  {
    announceCharacterModeTimer = [(VOTHandwritingManager *)self announceCharacterModeTimer];
    [announceCharacterModeTimer cancel];
  }
}

@end