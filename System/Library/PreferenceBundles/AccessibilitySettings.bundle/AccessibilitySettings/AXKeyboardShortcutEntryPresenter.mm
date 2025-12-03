@interface AXKeyboardShortcutEntryPresenter
+ (AXKeyboardShortcutEntryPresenter)presenterWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock;
- (id)_handleEndingEventCaptureIfNeededWithKeyChord:(id)chord;
- (id)_initWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)_endHandlingHIDEventsIfBrailleDeviceConnected;
- (void)_handleKeyDown:(id)down keyInfo:(id)info;
- (void)_snarfKeyboardEvent:(id)event;
- (void)dealloc;
- (void)presentWithController:(id)controller initialKeyChord:(id)chord;
- (void)setHasEndedEventCapture:(BOOL)capture;
- (void)setKeyChord:(id)chord;
@end

@implementation AXKeyboardShortcutEntryPresenter

+ (AXKeyboardShortcutEntryPresenter)presenterWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock
{
  cancelBlockCopy = cancelBlock;
  blockCopy = block;
  specifierCopy = specifier;
  v11 = [[self alloc] _initWithSpecifier:specifierCopy selectionBlock:blockCopy cancelBlock:cancelBlockCopy];

  return v11;
}

- (id)_initWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock
{
  specifierCopy = specifier;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  v21.receiver = self;
  v21.super_class = AXKeyboardShortcutEntryPresenter;
  v12 = [(AXKeyboardShortcutEntryPresenter *)&v21 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_specifier, specifier);
    [p_isa setUserSelectedKeyChordBlock:blockCopy];
    [p_isa setUserCanceledKeyChordSelectionBlock:cancelBlockCopy];
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

- (void)setKeyChord:(id)chord
{
  chordCopy = chord;
  if ([(AXKeyboardShortcutEntryPresenter *)self shouldAllowEndingEventCapture])
  {
    v5 = [(AXKeyboardShortcutEntryPresenter *)self _handleEndingEventCaptureIfNeededWithKeyChord:chordCopy];

    chordCopy = v5;
  }

  keyChord = self->_keyChord;
  self->_keyChord = chordCopy;
  v8 = chordCopy;

  if (v8)
  {
    shouldAllowClearingKeyChord = 1;
  }

  else
  {
    shouldAllowClearingKeyChord = [(AXKeyboardShortcutEntryPresenter *)self shouldAllowClearingKeyChord];
  }

  [(UIAlertAction *)self->_doneAction setEnabled:shouldAllowClearingKeyChord];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController updateWithKeyChord:v8 shouldSpeakChange:1];
}

- (void)setHasEndedEventCapture:(BOOL)capture
{
  if (self->_hasEndedEventCapture != capture)
  {
    self->_hasEndedEventCapture = capture;
    [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setHasEndedEventCapture:?];
  }
}

- (void)presentWithController:(id)controller initialKeyChord:(id)chord
{
  controllerCopy = controller;
  chordCopy = chord;
  v8 = settingsLocString(@"KEYBOARD_SHORTCUT", @"Accessibility");
  v9 = [AXKeyboardShortcutEntryViewController alertControllerWithTitle:v8 message:0 preferredStyle:1];
  shortcutEntryViewController = self->_shortcutEntryViewController;
  self->_shortcutEntryViewController = v9;

  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setSpecifier:self->_specifier];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setPresenter:self];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setShouldAllowTabAsModifier:[(AXKeyboardShortcutEntryPresenter *)self shouldAllowTabAsModifier]];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setShouldAllowEndingEventCapture:[(AXKeyboardShortcutEntryPresenter *)self shouldAllowEndingEventCapture]];
  [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController setHasEndedEventCapture:[(AXKeyboardShortcutEntryPresenter *)self hasEndedEventCapture]];
  if (chordCopy)
  {
    [(AXKeyboardShortcutEntryViewController *)self->_shortcutEntryViewController updateWithKeyChord:chordCopy shouldSpeakChange:0];
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
  [controllerCopy presentViewController:self->_shortcutEntryViewController animated:1 completion:0];
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

- (id)_handleEndingEventCaptureIfNeededWithKeyChord:(id)chord
{
  chordCopy = chord;
  recentKeyChords = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];

  if (!recentKeyChords)
  {
    v6 = +[NSMutableArray array];
    [(AXKeyboardShortcutEntryPresenter *)self setRecentKeyChords:v6];
  }

  recentKeyChords2 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
  v8 = recentKeyChords2;
  if (chordCopy)
  {
    [recentKeyChords2 addObject:chordCopy];
  }

  else
  {
    v9 = +[NSNull null];
    [v8 addObject:v9];
  }

  recentKeyChords3 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
  v11 = [recentKeyChords3 count];

  if (v11 >= 4)
  {
    recentKeyChords4 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
    recentKeyChords5 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
    [recentKeyChords4 removeObjectsInRange:{0, objc_msgSend(recentKeyChords5, "count") - 3}];
  }

  keys = [chordCopy keys];
  v15 = [keys isEqualToArray:&off_27CBC0];

  if (v15)
  {
    v16 = +[NSDate date];
    if (-[AXSSKeyChord isEqual:](self->_keyChord, "isEqual:", chordCopy) && (-[AXKeyboardShortcutEntryPresenter timeOfLastSpaceKey](self, "timeOfLastSpaceKey"), (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, -[AXKeyboardShortcutEntryPresenter timeOfLastSpaceKey](self, "timeOfLastSpaceKey"), v19 = objc_claimAutoreleasedReturnValue(), [v16 timeIntervalSinceDate:v19], v21 = v20, v19, v18, v21 < 0.5))
    {
      [(AXKeyboardShortcutEntryPresenter *)self setHasEndedEventCapture:[(AXKeyboardShortcutEntryPresenter *)self hasEndedEventCapture]^ 1];
      recentKeyChords6 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
      v23 = [recentKeyChords6 count];

      if (v23 >= 3)
      {
        recentKeyChords7 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
        recentKeyChords8 = [(AXKeyboardShortcutEntryPresenter *)self recentKeyChords];
        v26 = [recentKeyChords7 objectAtIndexedSubscript:{objc_msgSend(recentKeyChords8, "count") - 3}];

        v27 = +[NSNull null];
        LODWORD(recentKeyChords7) = [v26 isEqual:v27];

        if (!recentKeyChords7)
        {
          v28 = 0;
          goto LABEL_17;
        }

        chordCopy = v26;
      }

      v28 = 0;
      v26 = 0;
    }

    else
    {
      v28 = v16;
      v26 = chordCopy;
    }

LABEL_17:
    [(AXKeyboardShortcutEntryPresenter *)self setTimeOfLastSpaceKey:v28];

    chordCopy = v26;
  }

  return chordCopy;
}

- (void)_snarfKeyboardEvent:(id)event
{
  eventCopy = event;
  keyInfo = [eventCopy keyInfo];
  [keyInfo translateKeycode];
  type = [eventCopy type];
  if (type == 11)
  {
    if ([keyInfo keyCode] == 43)
    {
      if ([(AXKeyboardShortcutEntryPresenter *)self shouldAllowTabAsModifier])
      {
        tabKeyChord = [(AXKeyboardShortcutEntryPresenter *)self tabKeyChord];

        if (tabKeyChord)
        {
          tabKeyChord2 = [(AXKeyboardShortcutEntryPresenter *)self tabKeyChord];
          [(AXKeyboardShortcutEntryPresenter *)self setKeyChord:tabKeyChord2];

          [(AXKeyboardShortcutEntryPresenter *)self setTabKeyChord:0];
        }
      }

      [(AXKeyboardShortcutEntryPresenter *)self setIsTabDown:0];
    }
  }

  else if (type == 10)
  {
    if ([keyInfo keyCode] == 43)
    {
      [(AXKeyboardShortcutEntryPresenter *)self setIsTabDown:1];
    }

    [(AXKeyboardShortcutEntryPresenter *)self _handleKeyDown:eventCopy keyInfo:keyInfo];
  }
}

- (void)_handleKeyDown:(id)down keyInfo:(id)info
{
  downCopy = down;
  filteredKeyModifiers = self->_filteredKeyModifiers;
  infoCopy = info;
  [infoCopy setModifierState:{objc_msgSend(infoCopy, "modifierState") & ~filteredKeyModifiers}];
  unmodifiedInput = [infoCopy unmodifiedInput];

  if ([unmodifiedInput length])
  {
    v9 = [AXSSKeyChord keyChordWithEvent:downCopy];
    if ([(AXKeyboardShortcutEntryPresenter *)self shouldAllowTabAsModifier])
    {
      if ([(AXKeyboardShortcutEntryPresenter *)self isTabDown])
      {
        keys = [v9 keys];
        v11 = [keys containsObject:@"⇥"];

        if ((v11 & 1) == 0)
        {
          keys2 = [v9 keys];
          v13 = [keys2 arrayByAddingObject:@"⇥"];
          v14 = [AXSSKeyChord keyChordWithKeys:v13];

          v9 = v14;
        }
      }

      keys3 = [v9 keys];
      if ([keys3 count] == &dword_0 + 1)
      {
        keys4 = [v9 keys];
        v17 = [keys4 containsObject:@"⇥"];

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