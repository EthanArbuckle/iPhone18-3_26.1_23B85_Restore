@interface SpeakThisEventProcessor
- (BOOL)_handleEvent:(id)a3;
- (SpeakThisEventProcessorDelegate)delegate;
- (id)contextForDisplayID:(unint64_t)a3;
- (unsigned)contextIdForActiveDisplay;
- (void)addEventContextForWindow:(id)a3;
- (void)dealloc;
- (void)removeEventContextForContextID:(unsigned int)a3;
@end

@implementation SpeakThisEventProcessor

- (void)dealloc
{
  [(NSMutableSet *)self->_eventContexts removeAllObjects];
  v3.receiver = self;
  v3.super_class = SpeakThisEventProcessor;
  [(SpeakThisEventProcessor *)&v3 dealloc];
}

- (void)addEventContextForWindow:(id)a3
{
  v4 = a3;
  if (!self->_eventContexts)
  {
    v5 = +[NSMutableSet set];
    eventContexts = self->_eventContexts;
    self->_eventContexts = v5;
  }

  v7 = [v4 _contextId];
  v8 = [v4 screen];
  v9 = [v8 displayIdentity];
  v10 = [v9 displayID];

  v11 = [v4 screen];
  v12 = [v11 displayConfiguration];
  v13 = [v12 hardwareIdentifier];

  v14 = [[SpeakThisEventContext alloc] initWithDisplayID:v10 contextID:v7 displayHardwareID:v13];
  [(NSMutableSet *)self->_eventContexts addObject:v14];
  v15 = AXLogSpeakScreen();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1BBDC(v7, v15);
  }
}

- (void)removeEventContextForContextID:(unsigned int)a3
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
      if ([v10 contextID] == a3)
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
      sub_1BC54(a3, v12);
    }
  }

  else
  {
LABEL_9:

LABEL_14:
    v11 = AXLogSpeakScreen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1BCCC(a3, v11);
    }
  }
}

- (id)contextForDisplayID:(unint64_t)a3
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
        if ([v9 displayID] == a3)
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
          v9 = [v8 contextID];
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

  v9 = -1;
LABEL_11:

  return v9;
}

- (BOOL)_handleEvent:(id)a3
{
  v4 = a3;
  v5 = [(SpeakThisEventProcessor *)self delegate];
  [v5 speakThisUIFrameWithEventProcessor:self];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 denormalizedEventRepresentation:0 descale:1];

  v15 = [v14 handInfo];
  v16 = [v15 paths];
  v17 = [v16 firstObject];
  [v17 pathLocation];
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

  v25 = [v14 keyInfo];
  [v25 translateKeycode];

  v26 = [v14 keyInfo];
  if (![v26 keyDown])
  {
    goto LABEL_10;
  }

  v27 = [v14 keyInfo];
  if ([v27 modifierState] != 2)
  {

LABEL_10:
    goto LABEL_11;
  }

  v28 = [v14 keyInfo];
  v29 = [v28 keyCode];

  if (v29 == 41)
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
  v31 = [(SpeakThisEventProcessor *)self delegate];
  v32 = [v31 isInSpeakUnderFingerModeWithEventProcessor:self];

  if (!v32)
  {
    goto LABEL_21;
  }

  v33 = [v14 handInfo];
  if ([v33 eventType] == 6)
  {
    goto LABEL_15;
  }

  v34 = [v14 handInfo];
  if ([v34 eventType] == 10)
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

  v36 = [v14 handInfo];
  v37 = [v36 eventType];

  if (v37 == 9)
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