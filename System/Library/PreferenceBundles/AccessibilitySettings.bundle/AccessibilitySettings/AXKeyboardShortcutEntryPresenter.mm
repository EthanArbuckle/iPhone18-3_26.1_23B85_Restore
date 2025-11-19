@interface AXKeyboardShortcutEntryPresenter
+ (AXKeyboardShortcutEntryPresenter)presenterWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5;
- (id)_handleEndingEventCaptureIfNeededWithKeyChord:(id)a3;
- (id)_initWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5;
- (void)_endHandlingHIDEventsIfBrailleDeviceConnected;
- (void)_handleKeyDown:(id)a3 keyInfo:(id)a4;
- (void)_snarfKeyboardEvent:(id)a3;
- (void)dealloc;
- (void)presentWithController:(id)a3 initialKeyChord:(id)a4;
- (void)setHasEndedEventCapture:(BOOL)a3;
- (void)setKeyChord:(id)a3;
@end

@implementation AXKeyboardShortcutEntryPresenter

+ (AXKeyboardShortcutEntryPresenter)presenterWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithSpecifier:v10 selectionBlock:v9 cancelBlock:v8];

  return v11;
}

- (id)_initWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = AXKeyboardShortcutEntryPresenter;
  v12 = [(AXKeyboardShortcutEntryPresenter *)&v21 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_specifier, a3);
    [p_isa setUserSelectedKeyChordBlock:v10];
    [p_isa setUserCanceledKeyChordSelectionBlock:v11];
    v14 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"VOTKeyboardShortcutEntry" HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:0];
    v15 = p_isa[4];
    p_isa[4] = v14;

    [p_isa[4] setShouldNotifyUserEventOccurred:1];
    [p_isa[4] setHIDEventFilterMask:2];
    objc_initWeak(&location, p_isa);
    v16 = p_isa[4];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __82__AXKeyboardShortcutEntryPresenter__initWithSpecifier_selectionBlock_cancelBlock___block_invoke;
    v18[3] = &unk_255B30;
    objc_copyWeak(&v19, &location);
    [v16 setHIDEventHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return p_isa;
}

uint64_t __82__AXKeyboardShortcutEntryPresenter__initWithSpecifier_selectionBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained hasEndedEventCapture] & 1) != 0 || objc_msgSend(v3, "type") - 10 > 2)
  {
    v5 = 0;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __82__AXKeyboardShortcutEntryPresenter__initWithSpecifier_selectionBlock_cancelBlock___block_invoke_2;
    v7[3] = &unk_255538;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(&_dispatch_main_q, v7);

    v5 = 1;
  }

  return v5;
}

- (void)dealloc
{
  [(AXEventProcessor *)self->_keyboardEventProcessor cleanup];
  [(AXEventProcessor *)self->_keyboardEventProcessor endHandlingHIDEventsForReason:@"UserEnteringKeyboardShortcut"];
  v3.receiver = self;
  v3.super_class = AXKeyboardShortcutEntryPresenter;
  [(AXKeyboardShortcutEntryPresenter *)&v3 dealloc];
}

- (void)setKeyChord:(id)a3
{
  v4 = a3;
  if ([(AXKeyboardShortcutEntryPresenter *)self shouldAllowEndingEventCapture])
  {
    v5 = [(AXKeyboardShortcutEntryPresenter *)self _handleEndingEventCaptureIfNeededWithKeyChord:v4];

    v4 = v5;
  }

  keyChord = self->_keyChord;
  self->_keyChord = v4;
  v8 = v4;

  if (v8)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(AXKeyboardShortcutEntryPresenter *)self shouldAllowClearingKeyChord];
  }

  [(UIAlertAction *)self->_doneAction setEnabled:v7];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController updateWithKeyChord:v8 shouldSpeakChange:1];
}

- (void)setHasEndedEventCapture:(BOOL)a3
{
  if (self->_hasEndedEventCapture != a3)
  {
    self->_hasEndedEventCapture = a3;
    [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setHasEndedEventCapture:?];
  }
}

- (void)presentWithController:(id)a3 initialKeyChord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = settingsLocString(@"KEYBOARD_SHORTCUT", @"Accessibility");
  v9 = [AXKeyboardShortcutEntryViewController alertControllerWithTitle:v8 message:0 preferredStyle:1];
  shortcutEntryViewController = self->_shortcutEntryViewController;
  self->_shortcutEntryViewController = v9;

  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setSpecifier:self->_specifier];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setPresenter:self];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setShouldAllowTabAsModifier:[(AXKeyboardShortcutEntryPresenter *)self shouldAllowTabAsModifier]];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setShouldAllowEndingEventCapture:[(AXKeyboardShortcutEntryPresenter *)self shouldAllowEndingEventCapture]];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setHasEndedEventCapture:[(AXKeyboardShortcutEntryPresenter *)self hasEndedEventCapture]];
  if (v7)
  {
    [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController updateWithKeyChord:v7 shouldSpeakChange:0];
  }

  objc_initWeak(&location, self);
  if ([(AXKeyboardShortcutEntryPresenter *)self shouldAllowClearingKeyChord])
  {
    v11 = settingsLocString(@"KEYBOARD_SHORTCUT_CLEAR", @"Accessibility");
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __74__AXKeyboardShortcutEntryPresenter_presentWithController_initialKeyChord___block_invoke;
    v27[3] = &unk_255BF8;
    objc_copyWeak(&v28, &location);
    v12 = [UIAlertAction _actionWithTitle:v11 image:0 style:2 handler:v27 shouldDismissHandler:&__block_literal_global_42];

    [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController addAction:v12];
    objc_destroyWeak(&v28);
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 1;
  }

  v15 = settingsLocString(@"CANCEL", @"Accessibility");
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __74__AXKeyboardShortcutEntryPresenter_presentWithController_initialKeyChord___block_invoke_3;
  v25[3] = &unk_255BF8;
  objc_copyWeak(&v26, &location);
  v16 = [UIAlertAction _actionWithTitle:v15 image:0 style:v13 handler:v25 shouldDismissHandler:&__block_literal_global_311_0];

  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController addAction:v16];
  v17 = settingsLocString(@"DONE", @"Accessibility");
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = __74__AXKeyboardShortcutEntryPresenter_presentWithController_initialKeyChord___block_invoke_5;
  v23 = &unk_255BF8;
  objc_copyWeak(&v24, &location);
  v18 = [UIAlertAction _actionWithTitle:v17 image:0 style:v14 handler:&v20 shouldDismissHandler:&__block_literal_global_316];
  doneAction = self->_doneAction;
  self->_doneAction = v18;

  [(UIAlertAction *)self->_doneAction setEnabled:0, v20, v21, v22, v23];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController addAction:self->_doneAction];
  [(AXEventProcessor *)self->_keyboardEventProcessor beginHandlingHIDEventsForReason:@"UserEnteringKeyboardShortcut"];
  [v6 presentViewController:self->_shortcutEntryViewController animated:1 completion:0];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __74__AXKeyboardShortcutEntryPresenter_presentWithController_initialKeyChord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSSKeyChord nullKeyChord];
  [WeakRetained setKeyChord:v1];

  v2 = [WeakRetained userSelectedKeyChordBlock];

  if (v2)
  {
    v3 = [WeakRetained userSelectedKeyChordBlock];
    v4 = [WeakRetained keyChord];
    (v3)[2](v3, v4);
  }
}

void __74__AXKeyboardShortcutEntryPresenter_presentWithController_initialKeyChord___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained userCanceledKeyChordSelectionBlock];

  if (v1)
  {
    v2 = [WeakRetained userCanceledKeyChordSelectionBlock];
    v2[2]();
  }
}

void __74__AXKeyboardShortcutEntryPresenter_presentWithController_initialKeyChord___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained userSelectedKeyChordBlock];

  if (v1)
  {
    v2 = [WeakRetained userSelectedKeyChordBlock];
    v3 = [WeakRetained keyChord];
    (v2)[2](v2, v3);
  }
}

- (id)_handleEndingEventCaptureIfNeededWithKeyChord:(id)a3
{
  v4 = a3;
  v5 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];

  if (!v5)
  {
    v6 = +[NSMutableArray array];
    [(AXKeyboardShortcutEntryPresenter *)self setRecentKeyChords:v6];
  }

  v7 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v4];
  }

  else
  {
    v9 = +[NSNull null];
    [v8 addObject:v9];
  }

  v10 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
  v11 = [v10 count];

  if (v11 >= 4)
  {
    v12 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
    v13 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
    [v12 removeObjectsInRange:{0, objc_msgSend(v13, "count") - 3}];
  }

  v14 = [v4 keys];
  v15 = [v14 isEqualToArray:&off_27CBC0];

  if (v15)
  {
    v16 = +[NSDate date];
    if (-[AXSSKeyChord isEqual:](self->_keyChord, "isEqual:", v4) && (-[AXKeyboardShortcutEntryPresenter timeOfLastSpaceKey](self, "timeOfLastSpaceKey"), (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, -[AXKeyboardShortcutEntryPresenter timeOfLastSpaceKey](self, "timeOfLastSpaceKey"), v19 = objc_claimAutoreleasedReturnValue(), [v16 timeIntervalSinceDate:v19], v21 = v20, v19, v18, v21 < 0.5))
    {
      [(AXKeyboardShortcutEntryPresenter *)self setHasEndedEventCapture:[(AXKeyboardShortcutEntryPresenter *)self hasEndedEventCapture]^ 1];
      v22 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
      v23 = [v22 count];

      if (v23 >= 3)
      {
        v24 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
        v25 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
        v26 = [v24 objectAtIndexedSubscript:{objc_msgSend(v25, "count") - 3}];

        v27 = +[NSNull null];
        LODWORD(v24) = [v26 isEqual:v27];

        if (!v24)
        {
          v28 = 0;
          goto LABEL_17;
        }

        v4 = v26;
      }

      v28 = 0;
      v26 = 0;
    }

    else
    {
      v28 = v16;
      v26 = v4;
    }

LABEL_17:
    [(AXKeyboardShortcutEntryPresenter *)self setTimeOfLastSpaceKey:v28];

    v4 = v26;
  }

  return v4;
}

- (void)_snarfKeyboardEvent:(id)a3
{
  v8 = a3;
  v4 = [v8 keyInfo];
  [v4 translateKeycode];
  v5 = [v8 type];
  if (v5 == 11)
  {
    if ([v4 keyCode] == 43)
    {
      if ([(AXKeyboardShortcutEntryPresenter *)self shouldAllowTabAsModifier])
      {
        v6 = [(AXKeyboardShortcutEntryPresenter *)self tabKeyChord];

        if (v6)
        {
          v7 = [(AXKeyboardShortcutEntryPresenter *)self tabKeyChord];
          [(AXKeyboardShortcutEntryPresenter *)self setKeyChord:v7];

          [(AXKeyboardShortcutEntryPresenter *)self setTabKeyChord:0];
        }
      }

      [(AXKeyboardShortcutEntryPresenter *)self setIsTabDown:0];
    }
  }

  else if (v5 == 10)
  {
    if ([v4 keyCode] == 43)
    {
      [(AXKeyboardShortcutEntryPresenter *)self setIsTabDown:1];
    }

    [(AXKeyboardShortcutEntryPresenter *)self _handleKeyDown:v8 keyInfo:v4];
  }
}

- (void)_handleKeyDown:(id)a3 keyInfo:(id)a4
{
  v18 = a3;
  filteredKeyModifiers = self->_filteredKeyModifiers;
  v7 = a4;
  [v7 setModifierState:{objc_msgSend(v7, "modifierState") & ~filteredKeyModifiers}];
  v8 = [v7 unmodifiedInput];

  if ([v8 length])
  {
    v9 = [AXSSKeyChord keyChordWithEvent:v18];
    if ([(AXKeyboardShortcutEntryPresenter *)self shouldAllowTabAsModifier])
    {
      if ([(AXKeyboardShortcutEntryPresenter *)self isTabDown])
      {
        v10 = [v9 keys];
        v11 = [v10 containsObject:@"⇥"];

        if ((v11 & 1) == 0)
        {
          v12 = [v9 keys];
          v13 = [v12 arrayByAddingObject:@"⇥"];
          v14 = [AXSSKeyChord keyChordWithKeys:v13];

          v9 = v14;
        }
      }

      v15 = [v9 keys];
      if ([v15 count] == &dword_0 + 1)
      {
        v16 = [v9 keys];
        v17 = [v16 containsObject:@"⇥"];

        if (v17)
        {
          [(AXKeyboardShortcutEntryPresenter *)self setTabKeyChord:v9];
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
      }

      [(AXKeyboardShortcutEntryPresenter *)self setTabKeyChord:0];
    }

    [(AXKeyboardShortcutEntryPresenter *)self setKeyChord:v9];
    [(AXKeyboardShortcutEntryPresenter *)self _endHandlingHIDEventsIfBrailleDeviceConnected];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_endHandlingHIDEventsIfBrailleDeviceConnected
{
  if (_AXSBrailleInputDeviceConnected())
  {
    [(AXEventProcessor *)self->_keyboardEventProcessor cleanup];
    keyboardEventProcessor = self->_keyboardEventProcessor;

    [(AXEventProcessor *)keyboardEventProcessor endHandlingHIDEventsForReason:@"UserEnteringKeyboardShortcut"];
  }
}

@end