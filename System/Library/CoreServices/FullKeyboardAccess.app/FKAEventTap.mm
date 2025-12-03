@interface FKAEventTap
- (BOOL)_handleEventRepresentation:(id)representation;
- (FKAEventTap)init;
- (FKAEventTapDelegate)delegate;
- (id)_keyboardEventForEventRepresentation:(id)representation;
- (void)_repostEventRepresentation:(id)representation;
- (void)_updateForContinuityStateChange;
- (void)dealloc;
- (void)repostDownAndUpForKeyboardEvent:(id)event;
@end

@implementation FKAEventTap

- (FKAEventTap)init
{
  v21.receiver = self;
  v21.super_class = FKAEventTap;
  v2 = [(FKAEventTap *)&v21 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[NSMutableDictionary dictionary];
    keyCodesToUnicodeCharacters = v2->_keyCodesToUnicodeCharacters;
    v2->_keyCodesToUnicodeCharacters = v3;

    v5 = +[NSMutableDictionary dictionary];
    keyCodesToBackupUnicodeCharacters = v2->_keyCodesToBackupUnicodeCharacters;
    v2->_keyCodesToBackupUnicodeCharacters = v5;

    v7 = +[NSMutableDictionary dictionary];
    keyCodesToDownEventRepresentations = v2->_keyCodesToDownEventRepresentations;
    v2->_keyCodesToDownEventRepresentations = v7;

    v9 = +[NSMutableSet set];
    keyCodesRequiringRepostForUpEvent = v2->_keyCodesRequiringRepostForUpEvent;
    v2->_keyCodesRequiringRepostForUpEvent = v9;

    +[AXEventKeyInfoRepresentation prepareForKeycodeTranslation];
    v11 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"FKAEventTap" HIDEventTapPriority:20 systemEventTapIdentifier:0 systemEventTapPriority:0];
    eventProcessor = v2->_eventProcessor;
    v2->_eventProcessor = v11;

    [(AXEventProcessor *)v2->_eventProcessor setHIDEventFilterMask:2];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100003B7C;
    v18 = &unk_100028768;
    objc_copyWeak(&v19, &location);
    [(AXEventProcessor *)v2->_eventProcessor setHIDEventHandler:&v15];
    [(AXEventProcessor *)v2->_eventProcessor beginHandlingHIDEventsForReason:@"FKAEventTap", v15, v16, v17, v18];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100003BD0, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(FKAEventTap *)v2 _updateForContinuityStateChange];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(AXEventProcessor *)self->_eventProcessor endHandlingHIDEventsForReason:@"FKAEventTap"];
  [(AXEventProcessor *)self->_eventProcessor cleanup];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = FKAEventTap;
  [(FKAEventTap *)&v4 dealloc];
}

- (BOOL)_handleEventRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy senderID] == 0x8000000817319378 || (objc_msgSend(representationCopy, "keyInfo"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || objc_msgSend(representationCopy, "senderID") == 0x8000000817319373)
  {
    v6 = 0;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003DA0;
    v8[3] = &unk_100028790;
    v8[4] = self;
    v9 = representationCopy;
    dispatch_async(&_dispatch_main_q, v8);

    v6 = 1;
  }

  return v6;
}

- (void)repostDownAndUpForKeyboardEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = FKALogCommon();
  v7 = v6;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = eventCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Reposting %@", &v14, 0xCu);
    }

    v7 = eventCopy;
    if (([v7 isDownEvent]& 1) == 0)
    {
      keyCodesToDownEventRepresentations = [(FKAEventTap *)self keyCodesToDownEventRepresentations];
      v9 = [NSNumber numberWithUnsignedInteger:[v7 keyCode]];
      v10 = [keyCodesToDownEventRepresentations objectForKeyedSubscript:v9];

      [(FKAEventTap *)self _repostEventRepresentation:v10];
    }

    eventRepresentation = [v7 eventRepresentation];
    [(FKAEventTap *)self _repostEventRepresentation:eventRepresentation];

    if ([v7 isDownEvent])
    {
      keyCodesRequiringRepostForUpEvent = [(FKAEventTap *)self keyCodesRequiringRepostForUpEvent];
      v13 = [NSNumber numberWithUnsignedInteger:[v7 keyCode]];
      [keyCodesRequiringRepostForUpEvent addObject:v13];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100014174(eventCopy, v7);
  }
}

- (void)_repostEventRepresentation:(id)representation
{
  v4 = [representation copy];
  [v4 setUseOriginalHIDTime:1];
  v3 = +[AXEventTapManager sharedManager];
  [v3 sendHIDSystemEvent:v4 senderID:0x8000000817319378];
}

- (id)_keyboardEventForEventRepresentation:(id)representation
{
  representationCopy = representation;
  keyInfo = [representationCopy keyInfo];
  keyInfo2 = [representationCopy keyInfo];

  if (keyInfo2)
  {
    if (keyInfo)
    {
LABEL_3:
      [keyInfo translateKeycode];
      keyCode = [keyInfo keyCode];
      keyDown = [keyInfo keyDown];
      v9 = objc_opt_new();
      [v9 setEventRepresentation:representationCopy];
      [v9 setKeyCode:keyCode];
      [v9 setIsDownEvent:keyDown];
      gsModifierState = [keyInfo gsModifierState];
      [v9 setIsLeftCommandDown:HIWORD(gsModifierState) & 1];
      [v9 setIsRightCommandDown:HIBYTE(gsModifierState) & 1];
      [v9 setIsLeftOptionDown:(gsModifierState >> 19) & 1];
      [v9 setIsRightOptionDown:(gsModifierState >> 22) & 1];
      [v9 setIsLeftControlDown:(gsModifierState >> 20) & 1];
      [v9 setIsRightControlDown:(gsModifierState >> 23) & 1];
      [v9 setIsLeftShiftDown:(gsModifierState >> 17) & 1];
      [v9 setIsRightShiftDown:(gsModifierState >> 21) & 1];
      [v9 setIsFnDown:{(objc_msgSend(keyInfo, "modifierState") >> 6) & 1}];
      v11 = [NSNumber numberWithUnsignedInteger:keyCode];
      if (keyDown)
      {
        unmodifiedInput = [keyInfo unmodifiedInput];
        backupUnmodifiedInput = [keyInfo backupUnmodifiedInput];
        keyCodesToUnicodeCharacters = [(FKAEventTap *)self keyCodesToUnicodeCharacters];
        [keyCodesToUnicodeCharacters setObject:unmodifiedInput forKeyedSubscript:v11];

        keyCodesToBackupUnicodeCharacters = [(FKAEventTap *)self keyCodesToBackupUnicodeCharacters];
        [keyCodesToBackupUnicodeCharacters setObject:backupUnmodifiedInput forKeyedSubscript:v11];

        keyCodesToDownEventRepresentations = [(FKAEventTap *)self keyCodesToDownEventRepresentations];
        [keyCodesToDownEventRepresentations setObject:representationCopy forKeyedSubscript:v11];
      }

      else
      {
        keyCodesToUnicodeCharacters2 = [(FKAEventTap *)self keyCodesToUnicodeCharacters];
        unmodifiedInput = [keyCodesToUnicodeCharacters2 objectForKeyedSubscript:v11];

        keyCodesToDownEventRepresentations = [(FKAEventTap *)self keyCodesToBackupUnicodeCharacters];
        backupUnmodifiedInput = [keyCodesToDownEventRepresentations objectForKeyedSubscript:v11];
      }

      [v9 setUnicodeCharacter:unmodifiedInput];
      [v9 setBackupUnicodeCharacter:backupUnmodifiedInput];
      [v9 setIsRepeatEvent:0];
      [v9 setIsModifierChangedEvent:0];

      goto LABEL_11;
    }
  }

  else
  {
    v17 = FKALogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1000141EC(v17);
    }

    if (keyInfo)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_updateForContinuityStateChange
{
  v2 = +[AXSpringBoardServer server];
  isContinuitySessionActive = [v2 isContinuitySessionActive];

  v4 = +[AXEventTapManager sharedManager];
  [v4 setIgnoreEventsForContinuitySession:isContinuitySessionActive];

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (isContinuitySessionActive)
    {
      v6 = @"YES";
    }

    v7 = 136315394;
    v8 = "[FKAEventTap _updateForContinuityStateChange]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s isContinuitySessionActive: %@", &v7, 0x16u);
  }
}

- (FKAEventTapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end