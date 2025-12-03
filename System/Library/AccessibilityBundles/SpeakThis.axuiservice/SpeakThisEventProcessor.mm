@interface SpeakThisEventProcessor
- (BOOL)_handleEvent:(id)event;
- (SpeakThisEventProcessorDelegate)delegate;
- (id)contextForDisplayID:(unint64_t)d;
- (unsigned)contextIdForActiveDisplay;
- (void)addEventContextForWindow:(id)window;
- (void)dealloc;
- (void)removeEventContextForContextID:(unsigned int)d;
@end

@implementation SpeakThisEventProcessor

- (void)dealloc
{
  [(NSMutableSet *)self->_eventContexts removeAllObjects];
  v3.receiver = self;
  v3.super_class = SpeakThisEventProcessor;
  [(SpeakThisEventProcessor *)&v3 dealloc];
}

- (void)addEventContextForWindow:(id)window
{
  windowCopy = window;
  if (!self->_eventContexts)
  {
    v5 = +[NSMutableSet set];
    eventContexts = self->_eventContexts;
    self->_eventContexts = v5;
  }

  _contextId = [windowCopy _contextId];
  screen = [windowCopy screen];
  displayIdentity = [screen displayIdentity];
  displayID = [displayIdentity displayID];

  screen2 = [windowCopy screen];
  displayConfiguration = [screen2 displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];

  v14 = [[SpeakThisEventContext alloc] initWithDisplayID:displayID contextID:_contextId displayHardwareID:hardwareIdentifier];
  [(NSMutableSet *)self->_eventContexts addObject:v14];
  v15 = AXLogSpeakScreen();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1BBDC(_contextId, v15);
  }
}

- (void)removeEventContextForContextID:(unsigned int)d
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_eventContexts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 contextID] == d)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_14;
    }

    [(NSMutableSet *)self->_eventContexts removeObject:v11];
    v12 = AXLogSpeakScreen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1BC54(d, v12);
    }
  }

  else
  {
LABEL_9:

LABEL_14:
    v11 = AXLogSpeakScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1BCCC(d, v11);
    }
  }
}

- (id)contextForDisplayID:(unint64_t)d
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_eventContexts;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 displayID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (unsigned)contextIdForActiveDisplay
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_eventContexts;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 displayID] == self->_activeDisplayId)
        {
          contextID = [v8 contextID];
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  contextID = -1;
LABEL_11:

  return contextID;
}

- (BOOL)_handleEvent:(id)event
{
  eventCopy = event;
  delegate = [(SpeakThisEventProcessor *)self delegate];
  [delegate speakThisUIFrameWithEventProcessor:self];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [eventCopy denormalizedEventRepresentation:0 descale:1];

  handInfo = [v14 handInfo];
  paths = [handInfo paths];
  firstObject = [paths firstObject];
  [firstObject pathLocation];
  v19 = v18;
  v21 = v20;

  v43.origin.x = v7;
  v43.origin.y = v9;
  v43.size.width = v11;
  v43.size.height = v13;
  v42.x = v19;
  v42.y = v21;
  if (CGRectContainsPoint(v43, v42) && [v14 type] == 3001 && self->_disableSystemGesturesAssertion)
  {
    v22 = [AXAssertion assertionWithType:AXAssertionTypeDisableSystemGestures identifier:@"User is interacting with speech controller"];
    disableSystemGesturesAssertion = self->_disableSystemGesturesAssertion;
    self->_disableSystemGesturesAssertion = v22;

LABEL_21:
    v35 = 0;
    goto LABEL_22;
  }

  v24 = self->_disableSystemGesturesAssertion;
  self->_disableSystemGesturesAssertion = 0;

  keyInfo = [v14 keyInfo];
  [keyInfo translateKeycode];

  keyInfo2 = [v14 keyInfo];
  if (![keyInfo2 keyDown])
  {
    goto LABEL_10;
  }

  keyInfo3 = [v14 keyInfo];
  if ([keyInfo3 modifierState] != 2)
  {

LABEL_10:
    goto LABEL_11;
  }

  keyInfo4 = [v14 keyInfo];
  keyCode = [keyInfo4 keyCode];

  if (keyCode == 41)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_17FD0;
    v41[3] = &unk_30AF0;
    v41[4] = self;
    v30 = v41;
    goto LABEL_17;
  }

LABEL_11:
  delegate2 = [(SpeakThisEventProcessor *)self delegate];
  v32 = [delegate2 isInSpeakUnderFingerModeWithEventProcessor:self];

  if (!v32)
  {
    goto LABEL_21;
  }

  handInfo2 = [v14 handInfo];
  if ([handInfo2 eventType] == 6)
  {
    goto LABEL_15;
  }

  handInfo3 = [v14 handInfo];
  if ([handInfo3 eventType] == 10)
  {

LABEL_15:
LABEL_16:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18050;
    block[3] = &unk_30AF0;
    block[4] = self;
    v30 = block;
    goto LABEL_17;
  }

  handInfo4 = [v14 handInfo];
  eventType = [handInfo4 eventType];

  if (eventType == 9)
  {
    goto LABEL_16;
  }

  if ([v14 type] != 3001)
  {
    goto LABEL_21;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_180A4;
  v39[3] = &unk_310C8;
  v39[4] = self;
  *&v39[5] = v19;
  *&v39[6] = v21;
  v30 = v39;
LABEL_17:
  dispatch_async(&_dispatch_main_q, v30);
  v35 = 1;
LABEL_22:

  return v35;
}

- (SpeakThisEventProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end