@interface CLBHIDInterface
+ (id)sharedInstance;
- (CLBHIDInterface)init;
- (void)dealloc;
- (void)updateDeferringRulesForScene:(id)a3;
@end

@implementation CLBHIDInterface

+ (id)sharedInstance
{
  if (qword_100331138 != -1)
  {
    sub_1002853A0();
  }

  v3 = qword_100331130;

  return v3;
}

- (CLBHIDInterface)init
{
  v37.receiver = self;
  v37.super_class = CLBHIDInterface;
  v2 = [(CLBHIDInterface *)&v37 init];
  if (v2)
  {
    v3 = +[BKSHIDEventDispatchingTarget systemTarget];
    v4 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultSystemPredicate];
    v5 = [v4 descriptors];
    v6 = [v5 mutableCopy];

    v7 = [BKSHIDEventDescriptor descriptorWithEventType:10];
    [v6 addObject:v7];

    [v4 setDescriptors:v6];
    v8 = +[BKSHIDEventDispatchingTarget keyboardFocusTarget];
    v9 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultFocusPredicate];
    v36 = +[FBDisplayManager mainConfiguration];
    v10 = [v36 hardwareIdentifier];
    v35 = v10;
    if (v10)
    {
      v11 = v10;
      v33 = v6;
      v34 = v3;
      v12 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
      v13 = [BKSHIDEventDisplay displayWithHardwareIdentifier:v11];
      [v12 setAssociatedDisplay:v13];

      v14 = [NSSet setWithObject:v12];
      [v4 setSenderDescriptors:v14];
      [v9 setSenderDescriptors:v14];
      v15 = +[UIDevice currentDevice];
      v16 = [v15 userInterfaceIdiom];

      if (v16 == 2)
      {
        v17 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:12 usage:128];
        v31 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:1 usage:134];
        v18 = [NSSet setWithObjects:v17, v31, 0];
        v19 = [v4 descriptors];
        v32 = v8;
        v20 = [v19 mutableCopy];

        [v20 minusSet:v18];
        [v4 setDescriptors:v20];
        v21 = [v9 descriptors];
        v22 = [v21 mutableCopy];

        [v22 unionSet:v18];
        [v9 setDescriptors:v22];

        v8 = v32;
      }

      v6 = v33;
      v3 = v34;
    }

    else
    {
      [v4 setSenderDescriptors:0];
      [v9 setSenderDescriptors:0];
    }

    v23 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v4 toTarget:v3];
    v24 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v9 toTarget:v8];
    v25 = +[BKSHIDEventDeliveryManager sharedInstance];
    v38[0] = v23;
    v38[1] = v24;
    [NSArray arrayWithObjects:v38 count:2];
    v27 = v26 = v8;
    v28 = [v25 dispatchDiscreteEventsForReason:@"WhiteBoard!" withRules:v27];
    eventDispatchingAssertion = v2->_eventDispatchingAssertion;
    v2->_eventDispatchingAssertion = v28;
  }

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_eventDispatchingAssertion invalidate];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableDictionary *)self->_sceneIdentifierToDeferringAssertion allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) invalidate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_sceneIdentifierToDeferringAssertion removeAllObjects];
  v8.receiver = self;
  v8.super_class = CLBHIDInterface;
  [(CLBHIDInterface *)&v8 dealloc];
}

- (void)updateDeferringRulesForScene:(id)a3
{
  v4 = a3;
  v5 = +[BKSHIDEventDeliveryManager sharedInstance];
  v6 = [v5 transactionAssertionWithReason:@"updateDeferringRulesForScene:"];
  v7 = [v4 identifier];
  v8 = [(NSMutableDictionary *)self->_sceneIdentifierToDeferringAssertion objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    [v8 invalidate];
  }

  v10 = [v4 clientHandle];
  v11 = [v10 processHandle];

  if (v11)
  {
    v12 = [v11 pid];
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if ([v4 isValid] && (objc_msgSend(v4, "settings"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isForeground"), v13, v14) && v12 != -1)
  {
    v34 = v5;
    v32 = objc_alloc_init(BKSMutableHIDEventDeferringTarget);
    [v32 setPid:v12];
    v33 = [v4 layerManager];
    if (v33)
    {
      v31 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = [v33 layers];
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v35 + 1) + 8 * i) contextID];
            if (v20)
            {
              v21 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:v20];
              [v32 setToken:v21];

              goto LABEL_21;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v6 = v31;
    }

    v22 = objc_alloc_init(BKSMutableHIDEventDeferringPredicate);
    v23 = [v4 settings];
    v24 = [v23 displayConfiguration];
    v25 = [v24 hardwareIdentifier];

    if ([v25 length])
    {
      v26 = [BKSHIDEventDisplay displayWithHardwareIdentifier:v25];
      [v22 setDisplay:v26];
    }

    v27 = [v34 deferEventsMatchingPredicate:v22 toTarget:v32 withReason:@"scene!"];
    sceneIdentifierToDeferringAssertion = self->_sceneIdentifierToDeferringAssertion;
    if (!sceneIdentifierToDeferringAssertion)
    {
      v29 = objc_alloc_init(NSMutableDictionary);
      v30 = self->_sceneIdentifierToDeferringAssertion;
      self->_sceneIdentifierToDeferringAssertion = v29;

      sceneIdentifierToDeferringAssertion = self->_sceneIdentifierToDeferringAssertion;
    }

    [(NSMutableDictionary *)sceneIdentifierToDeferringAssertion setObject:v27 forKeyedSubscript:v7];

    v5 = v34;
  }

  else
  {
    [(NSMutableDictionary *)self->_sceneIdentifierToDeferringAssertion removeObjectForKey:v7];
  }

  [v6 invalidate];
}

@end