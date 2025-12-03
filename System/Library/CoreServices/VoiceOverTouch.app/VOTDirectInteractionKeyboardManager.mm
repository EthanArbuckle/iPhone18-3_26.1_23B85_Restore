@interface VOTDirectInteractionKeyboardManager
- (BOOL)isEmojiKey;
- (BOOL)isEmojiKeyboard;
- (BOOL)processEvent:(id)event;
- (CGRect)gestureKeyboardRegion;
- (VOTDirectInteractionKeyboardManager)init;
- (VOTGestureKeyboardDelegate)delegate;
- (void)_handleCommitTyping:(id)typing;
- (void)_handleDelete:(id)delete;
- (void)_handleKeyboardSelection:(id)selection;
- (void)_handleKeyplaneSelection:(id)selection;
- (void)_handleShift:(id)shift;
- (void)_handleShiftLock:(id)lock;
- (void)_handleSuggestionSelection:(id)selection;
- (void)_handleTypingEnter:(id)enter;
- (void)_handleTypingPeriod:(id)period;
- (void)_initializeDispatchTable;
- (void)_processEvent:(id)event;
- (void)_updateKeyboardElement;
- (void)_updateTypingMode;
- (void)dealloc;
- (void)screenChange:(id)change;
- (void)setInDirectInteractionTypingMode:(BOOL)mode;
- (void)updateKeyboardElement;
- (void)updateTypingMode;
@end

@implementation VOTDirectInteractionKeyboardManager

- (VOTDirectInteractionKeyboardManager)init
{
  v12.receiver = self;
  v12.super_class = VOTDirectInteractionKeyboardManager;
  v2 = [(VOTDirectInteractionKeyboardManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXAccessQueue);
    dispatchAccessQueue = v2->_dispatchAccessQueue;
    v2->_dispatchAccessQueue = v3;

    [(VOTDirectInteractionKeyboardManager *)v2 _initializeDispatchTable];
    v5 = v2->_dispatchAccessQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E5440;
    v10[3] = &unk_1001C76E8;
    v6 = v2;
    v11 = v6;
    [(AXAccessQueue *)v5 afterDelay:v10 processWritingBlock:1.0];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"screenChange:" name:@"UpdateElement" object:0];

    v8 = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VOTDirectInteractionKeyboardManager;
  [(VOTDirectInteractionKeyboardManager *)&v4 dealloc];
}

- (void)_initializeDispatchTable
{
  v3 = objc_alloc_init(NSMutableDictionary);
  dispatchTable = self->_dispatchTable;
  self->_dispatchTable = v3;

  v5 = self->_dispatchTable;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000E5960;
  v37[3] = &unk_1001CADC8;
  v37[4] = self;
  v6 = objc_retainBlock(v37);
  [(NSMutableDictionary *)v5 setObject:v6 forKey:kVOTEventCommandGestureTypingShiftLock];

  v7 = self->_dispatchTable;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000E596C;
  v36[3] = &unk_1001CADC8;
  v36[4] = self;
  v8 = objc_retainBlock(v36);
  [(NSMutableDictionary *)v7 setObject:v8 forKey:kVOTEventCommandGestureTypingShift];

  v9 = self->_dispatchTable;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000E5978;
  v35[3] = &unk_1001CADC8;
  v35[4] = self;
  v10 = objc_retainBlock(v35);
  [(NSMutableDictionary *)v9 setObject:v10 forKey:kVOTEventCommandGestureTypingTypeEnter];

  v11 = self->_dispatchTable;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000E5984;
  v34[3] = &unk_1001CADC8;
  v34[4] = self;
  v12 = objc_retainBlock(v34);
  [(NSMutableDictionary *)v11 setObject:v12 forKey:kVOTEventCommandGestureTypingTypePeriod];

  v13 = self->_dispatchTable;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000E5990;
  v33[3] = &unk_1001CADC8;
  v33[4] = self;
  v14 = objc_retainBlock(v33);
  [(NSMutableDictionary *)v13 setObject:v14 forKey:kVOTEventCommandGestureTypingCommitTyping];

  v15 = self->_dispatchTable;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000E599C;
  v32[3] = &unk_1001CADC8;
  v32[4] = self;
  v16 = objc_retainBlock(v32);
  [(NSMutableDictionary *)v15 setObject:v16 forKey:kVOTEventCommandGestureTypingDelete];

  v17 = self->_dispatchTable;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000E59A8;
  v31[3] = &unk_1001CADC8;
  v31[4] = self;
  v18 = objc_retainBlock(v31);
  [(NSMutableDictionary *)v17 setObject:v18 forKey:kVOTEventCommandGestureTypingNextSuggestion];

  v19 = self->_dispatchTable;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000E59B4;
  v30[3] = &unk_1001CADC8;
  v30[4] = self;
  v20 = objc_retainBlock(v30);
  [(NSMutableDictionary *)v19 setObject:v20 forKey:kVOTEventCommandGestureTypingPreviousSuggestion];

  v21 = self->_dispatchTable;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000E59C0;
  v29[3] = &unk_1001CADC8;
  v29[4] = self;
  v22 = objc_retainBlock(v29);
  [(NSMutableDictionary *)v21 setObject:v22 forKey:kVOTEventCommandGestureTypingNextKeyplane];

  v23 = self->_dispatchTable;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E59CC;
  v28[3] = &unk_1001CADC8;
  v28[4] = self;
  v24 = objc_retainBlock(v28);
  [(NSMutableDictionary *)v23 setObject:v24 forKey:kVOTEventCommandGestureTypingPreviousKeyplane];

  v25 = self->_dispatchTable;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000E59D8;
  v27[3] = &unk_1001CADC8;
  v27[4] = self;
  v26 = objc_retainBlock(v27);
  [(NSMutableDictionary *)v25 setObject:v26 forKey:kVOTEventCommandGestureTypingNextInternationalKeyboard];
}

- (void)screenChange:(id)change
{
  [(VOTDirectInteractionKeyboardManager *)self updateKeyboardElement];

  [(VOTDirectInteractionKeyboardManager *)self updateTypingMode];
}

- (void)updateTypingMode
{
  dispatchAccessQueue = self->_dispatchAccessQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E5A90;
  v3[3] = &unk_1001C76E8;
  v3[4] = self;
  [(AXAccessQueue *)dispatchAccessQueue performAsynchronousWritingBlock:v3];
}

- (void)_updateKeyboardElement
{
  keyboardElement = self->_keyboardElement;
  self->_keyboardElement = 0;

  [(VOTDirectInteractionKeyboardManager *)self _updateTypingMode];
}

- (void)updateKeyboardElement
{
  dispatchAccessQueue = self->_dispatchAccessQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E5B4C;
  v3[3] = &unk_1001C76E8;
  v3[4] = self;
  [(AXAccessQueue *)dispatchAccessQueue performAsynchronousWritingBlock:v3];
}

- (void)_updateTypingMode
{
  if ([VOTSharedWorkspace typingMode] != 2)
  {
    v16 = 0;
    goto LABEL_40;
  }

  p_keyboardElement = &self->_keyboardElement;
  [(VOTElement *)self->_keyboardElement updateWindowContextId];
  v4 = VOTLogKeyboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *p_keyboardElement;
    *buf = 138477827;
    v43 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got keyboard element: %{private}@", buf, 0xCu);
  }

  v6 = *p_keyboardElement;
  if (*p_keyboardElement)
  {
    isValid = [v6 isValid];
    v6 = *p_keyboardElement;
    if (isValid)
    {
      if ([v6 windowContextId])
      {
        goto LABEL_30;
      }

      v6 = *p_keyboardElement;
    }
  }

  *p_keyboardElement = 0;

  v8 = +[VOTWorkspace sharedWorkspace];
  focusedApplications = [v8 focusedApplications];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = focusedApplications;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        activeKeyboard = [*(*(&v38 + 1) + 8 * i) activeKeyboard];
        if (activeKeyboard)
        {
          v17 = *p_keyboardElement;
          *p_keyboardElement = activeKeyboard;

          goto LABEL_19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  delegate = [(VOTDirectInteractionKeyboardManager *)self delegate];
  currentElement = [delegate currentElement];

  if ([(VOTDirectInteractionKeyboardManager *)self isEmojiKeyboard]&& [(VOTDirectInteractionKeyboardManager *)self isEmojiKey])
  {
    activeKeyboard2 = [currentElement activeKeyboard];
    if (activeKeyboard2)
    {
      objc_storeStrong(&self->_keyboardElement, activeKeyboard2);
    }
  }

  if (*p_keyboardElement || ([currentElement activeKeyboard], v21 = objc_claimAutoreleasedReturnValue(), v22 = *p_keyboardElement, *p_keyboardElement = v21, v22, *p_keyboardElement))
  {
    currentElement2 = currentElement;
  }

  else
  {
    currentElement2 = [VOTSharedWorkspace currentElement];

    remoteParent = [currentElement2 remoteParent];

    if (remoteParent)
    {
      application = [currentElement2 application];
      activeKeyboard3 = [application activeKeyboard];
      v37 = *p_keyboardElement;
      *p_keyboardElement = activeKeyboard3;
    }
  }

  if ([*p_keyboardElement isRemoteElement])
  {
    activeKeyboard4 = [*p_keyboardElement activeKeyboard];
    v25 = *p_keyboardElement;
    *p_keyboardElement = activeKeyboard4;
  }

LABEL_30:
  v26 = VOTLogKeyboard();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *p_keyboardElement;
    application2 = [*p_keyboardElement application];
    isSoftwareKeyboardActive = [application2 isSoftwareKeyboardActive];
    isSoftwareKeyboardMimic = [*p_keyboardElement isSoftwareKeyboardMimic];
    *buf = 138412802;
    v43 = v27;
    v44 = 1024;
    v45 = isSoftwareKeyboardActive;
    v46 = 1024;
    v47 = isSoftwareKeyboardMimic;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Got gesture keyboard: %@ [SW active: %d, IsMimic: %d]", buf, 0x18u);
  }

  application3 = [*p_keyboardElement application];
  if ([application3 isSoftwareKeyboardActive])
  {
  }

  else
  {
    isSoftwareKeyboardMimic2 = [*p_keyboardElement isSoftwareKeyboardMimic];

    if ((isSoftwareKeyboardMimic2 & 1) == 0)
    {
      v16 = 0;
      goto LABEL_37;
    }
  }

  [*p_keyboardElement updateFrame];
  v16 = 1;
LABEL_37:
  v33 = VOTLogKeyboard();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v43) = v16;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Is in mode: %d", buf, 8u);
  }

LABEL_40:
  [(VOTDirectInteractionKeyboardManager *)self setInDirectInteractionTypingMode:v16];
}

- (void)setInDirectInteractionTypingMode:(BOOL)mode
{
  self->_inDirectInteractionTypingMode = mode;
  delegate = [(VOTDirectInteractionKeyboardManager *)self delegate];
  [delegate directInteractionModeStatus:self->_inDirectInteractionTypingMode];
}

- (BOOL)isEmojiKey
{
  delegate = [(VOTDirectInteractionKeyboardManager *)self delegate];
  currentElement = [delegate currentElement];
  bundleIdentifier = [currentElement bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.StickerKit.StickerPickerService"];

  return v5;
}

- (BOOL)isEmojiKeyboard
{
  v2 = +[VOTWorkspace sharedWorkspace];
  focusedApplications = [v2 focusedApplications];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = focusedApplications;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) isKeyboardEmojiInputMode])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (CGRect)gestureKeyboardRegion
{
  [(VOTElement *)self->_keyboardElement frameForDirectInteraction];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = VOTLogKeyboard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    keyboardElement = self->_keyboardElement;
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    v13 = NSStringFromRect(v26);
    *buf = 138412546;
    v23 = keyboardElement;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Gesture KB frame: %@ %@", buf, 0x16u);
  }

  v27.origin.x = CGRectZero.origin.x;
  v27.origin.y = CGRectZero.origin.y;
  v27.size.width = CGRectZero.size.width;
  v27.size.height = CGRectZero.size.height;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  if (CGRectEqualToRect(v27, v29))
  {
    [(VOTElement *)self->_keyboardElement frameForDirectInteraction];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)processEvent:(id)event
{
  eventCopy = event;
  if ((self->_inDirectInteractionTypingMode || (_AXAssert(), self->_inDirectInteractionTypingMode)) && ([eventCopy command], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", kVOTEventCommandGestureTypingType), v5, v6))
  {
    v7 = [eventCopy objectForIndex:115];
    [v7 pointValue];
    v9 = v8;
    v11 = v10;

    v12 = +[VOTElement systemWideElement];
    [v12 performSimpleTapAtPoint:-[VOTElement windowContextId](self->_keyboardElement withForce:"windowContextId") withContextId:0 withDelay:v9 forElement:{v11, 0.0, 0.0}];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_processEvent:(id)event
{
  eventCopy = event;
  dispatchTable = self->_dispatchTable;
  v8 = eventCopy;
  command = [eventCopy command];
  v7 = [(NSMutableDictionary *)dispatchTable objectForKey:command];

  if (v7)
  {
    (v7)[2](v7, v8);
  }
}

- (void)_handleSuggestionSelection:(id)selection
{
  command = [selection command];
  v5 = [command isEqualToString:kVOTEventCommandGestureTypingNextSuggestion];

  if (v5)
  {
    v6 = 2606;
  }

  else
  {
    v6 = 2607;
  }

  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  [uiElement performAXAction:v6];
}

- (void)_handleKeyplaneSelection:(id)selection
{
  command = [selection command];
  v5 = [command isEqualToString:kVOTEventCommandGestureTypingNextKeyplane];

  if (v5)
  {
    v6 = 2602;
  }

  else
  {
    v6 = 2603;
  }

  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  [uiElement performAXAction:v6];
}

- (void)_handleKeyboardSelection:(id)selection
{
  command = [selection command];
  v5 = [command isEqualToString:kVOTEventCommandGestureTypingNextInternationalKeyboard];

  if (v5)
  {
    v6 = 2608;
  }

  else
  {
    v6 = 0;
  }

  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  [uiElement performAXAction:v6];
}

- (void)_handleDelete:(id)delete
{
  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  [uiElement performAXAction:2601];
}

- (void)_handleShiftLock:(id)lock
{
  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  [uiElement performAXAction:2610];
}

- (void)_handleShift:(id)shift
{
  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  [uiElement performAXAction:2609];
}

- (void)_handleTypingEnter:(id)enter
{
  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  v4 = [NSString stringWithFormat:@"\n"];
  [uiElement performAXAction:2605 withValue:v4];
}

- (void)_handleTypingPeriod:(id)period
{
  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  v4 = [NSString stringWithFormat:@"."];
  [uiElement performAXAction:2605 withValue:v4];
}

- (void)_handleCommitTyping:(id)typing
{
  keyboardElement = [(VOTDirectInteractionKeyboardManager *)self keyboardElement];
  uiElement = [keyboardElement uiElement];
  [uiElement performAXAction:2604];
}

- (VOTGestureKeyboardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end