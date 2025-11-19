@interface VOTOutputRequest
+ (BOOL)setCopyLastOutputRequestEnabled:(BOOL)a3;
+ (id)createRequest;
+ (id)lastRequest;
+ (id)previousRequests;
+ (id)stringShouldSeparateDueToLanguage:(id)a3 language:(id)a4 keyboardLanguageHint:(id)a5;
+ (void)addPreviousRequests:(id)a3;
+ (void)clearPreviousRequests;
+ (void)initialize;
+ (void)sendRequestWithString:(id)a3 shouldQueue:(BOOL)a4;
+ (void)setRequestEnqueuedBlock:(id)a3;
- (BOOL)hasSameOutputAs:(id)a3;
- (NSNumber)brailleAlertTimeout;
- (VOTOutputRequest)init;
- (VOTOutputRequestCompletionProtocol)completionDelegate;
- (_NSRange)brailleLineRange;
- (id)_addAXOutputActions:(id)a3 atIndex:(unint64_t)a4;
- (id)actionStringAtIndex:(int64_t)a3;
- (id)addAttributedString:(id)a3 withLanguage:(id)a4 category:(id)a5;
- (id)addString:(id)a3;
- (id)addString:(id)a3 brailleString:(id)a4 breakWords:(BOOL)a5 withLanguage:(id)a6 atIndex:(int64_t)a7 category:(id)a8;
- (id)addString:(id)a3 brailleString:(id)a4 withLanguage:(id)a5;
- (id)addString:(id)a3 category:(id)a4;
- (id)addString:(id)a3 withLanguage:(id)a4;
- (id)addString:(id)a3 withLanguage:(id)a4 category:(id)a5;
- (id)combinedActionString;
- (id)combinedOriginalString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)numberOfActionsWithString:(id)a3;
- (void)_handleAttachmentInRequest:(__AXUIElement *)a3;
- (void)_mergeActionsStartingAtIndex:(unint64_t)a3;
- (void)addNotificationEvent:(unsigned int)a3 forDelegate:(id)a4;
- (void)addOutputEvent:(id)a3 toFirstActionMatchingCategory:(id)a4;
- (void)addPause:(float)a3;
- (void)addSound:(id)a3;
- (void)addTVElement:(id)a3 servesAsHeader:(BOOL)a4 filterWithAspectMask:(BOOL)a5;
- (void)removeActions;
- (void)removeActionsWithHelper:(id)a3;
- (void)removeLastActionWithString:(id)a3;
- (void)send;
- (void)setCannotBeInterrupted:(BOOL)a3;
@end

@implementation VOTOutputRequest

+ (void)initialize
{
  if (qword_1001FE988 != -1)
  {
    sub_100127A80();
  }
}

- (VOTOutputRequest)init
{
  v7.receiver = self;
  v7.super_class = VOTOutputRequest;
  v2 = [(VOTOutputRequest *)&v7 init];
  if (v2)
  {
    v3 = [objc_allocWithZone(NSMutableArray) init];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 18) = 0;
    objc_storeWeak(v2 + 18, 0);
    *(v2 + 168) = xmmword_10017E080;
    v5 = v2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VOTOutputRequest);
  v5 = objc_opt_new();
  outputActions = v4->_outputActions;
  v4->_outputActions = v5;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_outputActions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = v4->_outputActions;
        v13 = [*(*(&v19 + 1) + 8 * v11) copy];
        [(NSMutableArray *)v12 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = [(NSString *)self->_language copy];
  language = v4->_language;
  v4->_language = v14;

  v16 = [(NSArray *)self->_elementHeadersForOutput copy];
  elementHeadersForOutput = v4->_elementHeadersForOutput;
  v4->_elementHeadersForOutput = v16;

  v4->_generatesBraille = self->_generatesBraille;
  v4->_brailleType = self->_brailleType;
  v4->_doesNotInterrupt = self->_doesNotInterrupt;
  v4->_cannotBeInterrupted = self->_cannotBeInterrupted;
  return v4;
}

+ (id)createRequest
{
  v2 = objc_allocWithZone(VOTOutputRequest);

  return [v2 init];
}

+ (void)setRequestEnqueuedBlock:(id)a3
{
  v3 = qword_1001FE9A0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_100127A94();
  }

  [qword_1001FE990 lock];
  v5 = objc_retainBlock(v4);

  v6 = qword_1001FE998;
  qword_1001FE998 = v5;

  v7 = qword_1001FE990;

  [v7 unlock];
}

+ (void)sendRequestWithString:(id)a3 shouldQueue:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v5 = [objc_allocWithZone(VOTOutputRequest) init];
  v6 = v5;
  if (v4)
  {
    [v5 setDoesNotInterrupt:1];
  }

  v7 = [v6 addString:v8];
  [v6 send];
}

+ (void)clearPreviousRequests
{
  [qword_1001FE978 lock];
  [qword_1001FE980 removeAllObjects];
  v2 = qword_1001FE978;

  [v2 unlock];
}

+ (id)previousRequests
{
  [qword_1001FE978 lock];
  v2 = [qword_1001FE980 reverseObjectEnumerator];
  v3 = [v2 allObjects];

  [qword_1001FE978 unlock];

  return v3;
}

+ (id)lastRequest
{
  [qword_1001FE978 lock];
  v2 = [qword_1001FE980 reverseObjectEnumerator];
  v3 = [v2 nextObject];

  [qword_1001FE978 unlock];

  return v3;
}

+ (void)addPreviousRequests:(id)a3
{
  v3 = qword_1001FE978;
  v4 = a3;
  [v3 lock];
  [qword_1001FE980 axSafelyAddObjectsFromArray:v4];

  v5 = qword_1001FE978;

  [v5 unlock];
}

- (void)removeActions
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_outputActions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setOutputRequest:{0, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_outputActions removeAllObjects];
}

- (void)removeActionsWithHelper:(id)a3
{
  v4 = a3;
  v5 = [(VOTOutputRequest *)self outputActions];
  v6 = [v5 mutableCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004ACC;
  v9[3] = &unk_1001C7598;
  v10 = v4;
  v7 = v4;
  v8 = [v6 indexesOfObjectsPassingTest:v9];
  [v6 removeObjectsAtIndexes:v8];

  [(NSMutableArray *)self->_outputActions setArray:v6];
}

- (void)removeLastActionWithString:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableArray *)self->_outputActions reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v10 string];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_13;
    }

    [v13 setOutputRequest:0];
    [(NSMutableArray *)self->_outputActions removeObject:v13];
    v5 = v13;
  }

LABEL_12:

LABEL_13:
}

- (unint64_t)numberOfActionsWithString:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_outputActions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) string];
        v12 = [v11 isEqualToString:v4];

        v8 += v12;
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (VOTOutputRequestCompletionProtocol)completionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_completionDelegate);

  return WeakRetained;
}

+ (BOOL)setCopyLastOutputRequestEnabled:(BOOL)a3
{
  result = byte_1001FE9A8;
  byte_1001FE9A8 = a3;
  return result;
}

- (void)send
{
  +[NSDate timeIntervalSinceReferenceDate];
  self->_sendTimestamp = v3;
  [qword_1001FE978 lock];
  v4 = qword_1001FE980;
  if (byte_1001FE9A8)
  {
    v5 = [(VOTOutputRequest *)self copy];
    [v4 addObject:v5];
  }

  else
  {
    [qword_1001FE980 addObject:self];
  }

  v6 = _AXSAutomationEnabled();
  v7 = [qword_1001FE980 count];
  if (v6)
  {
    v8 = 100;
  }

  else
  {
    v8 = 10;
  }

  if (v7 > v8)
  {
    v9 = [qword_1001FE980 count] - v8;
    v10 = [qword_1001FE980 subarrayWithRange:{0, v9}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v52;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v51 + 1) + 8 * i);
          [v15 setFinishedSuccessfully:0];
          v16 = [v15 completionDelegate];
          [v16 outputRequestFinished:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v12);
    }

    [qword_1001FE980 removeObjectsInRange:{0, v9}];
  }

  [qword_1001FE978 unlock];
  if (_AXSAutomationEnabled())
  {
    v17 = +[NSDistributedNotificationCenter defaultCenter];
    [v17 postNotificationName:@"VoiceOverEventOccurred" object:@"DidProcessOutputRequest"];
  }

  if ([VOTSharedWorkspace inUnitTestMode])
  {
    [qword_1001FE990 lock];
    if (qword_1001FE998)
    {
      v18 = _Block_copy(qword_1001FE998);
      [qword_1001FE990 unlock];
      if (v18)
      {
        (v18)[2](v18, self);
      }
    }

    else
    {
      [qword_1001FE990 unlock];
    }
  }

  if (qword_1001FF130 < 1)
  {
    if ([(NSMutableArray *)self->_outputActions count])
    {
      if (([VOTSharedWorkspace outputDisabled] & 1) == 0)
      {
        v45 = +[NSMutableString string];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v19 = self->_outputActions;
        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v48;
          do
          {
            for (j = 0; j != v21; j = j + 1)
            {
              if (*v48 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v47 + 1) + 8 * j);
              [v24 setOutputRequest:self];
              if (![v24 component])
              {
                if (self->_generatesBraille && [v24 generatesBraille])
                {
                  v25 = [v24 brailleString];
                  v26 = v25;
                  if (v25)
                  {
                    v27 = v25;
                  }

                  else
                  {
                    v27 = [v24 string];
                  }

                  v28 = v27;

                  [v45 appendFormat:@"%@ ", v28];
                }

                if ([v24 performPunctuationTranslation])
                {
                  v29 = [v24 string];
                  v30 = [v24 replaceCommas];
                  v31 = [v24 objectForVariant:15];
                  v32 = sub_100052340(v29, v30, v31);
                  [v24 setString:v32];
                }
              }
            }

            v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v21);
        }

        if (self->_generatesBraille)
        {
          v33 = [[VOTOutputAction alloc] initWithString:v45];
          [(VOTOutputAction *)v33 setComponent:3];
          [(VOTOutputAction *)v33 setSynchronization:1];
          [(VOTOutputAction *)v33 setOutputRequest:self];
          if (self->_brailleType)
          {
            v34 = [NSNumber numberWithUnsignedInt:?];
            [(VOTOutputAction *)v33 setObject:v34 forVariant:34];
          }

          WeakRetained = objc_loadWeakRetained(&self->_brailleAlertTimeout);

          if (WeakRetained)
          {
            v36 = objc_loadWeakRetained(&self->_brailleAlertTimeout);
            [(VOTOutputAction *)v33 setObject:v36 forVariant:36];
          }

          if (self->_brailleLineRange.location || self->_brailleLineRange.length != 0x7FFFFFFF)
          {
            v37 = [NSValue valueWithRange:?];
            [(VOTOutputAction *)v33 setObject:v37 forVariant:35];
          }

          [(NSMutableArray *)self->_outputActions addObject:v33];
        }

        if ([(VOTOutputRequest *)self limitToComponentType])
        {
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_1000054B8;
          v46[3] = &unk_1001C75C0;
          v46[4] = self;
          [(VOTOutputRequest *)self removeActionsWithHelper:v46];
        }

        v38 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:2];
        v39 = [objc_allocWithZone(AXIndexMap) init];
        [v39 setObject:v38 forIndex:1];
        [v39 setObject:self forIndex:14];
        v40 = +[VOTOutputManager outputManager];
        [v40 handleEvent:v39];

        if ([(VOTOutputRequest *)self lastSystemRequest])
        {
          v41 = +[VOTOutputManager outputManager];
          [v41 shutdown];
        }
      }
    }

    else
    {
      [(VOTOutputRequest *)self setFinishedSuccessfully:1];
      v42 = [(VOTOutputRequest *)self completionDelegate];
      [v42 outputRequestFinished:self];

      v43 = [(VOTOutputRequest *)self completionBlock];

      if (v43)
      {
        v44 = [(VOTOutputRequest *)self completionBlock];
        (v44)[2](v44, self);
      }
    }
  }

  else
  {
    --qword_1001FF130;
  }
}

- (BOOL)hasSameOutputAs:(id)a3
{
  v4 = a3;
  v5 = [(VOTOutputRequest *)self outputActions];
  v6 = [v4 outputActions];
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      v21 = v5;
      v22 = v4;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = v6;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (!v14)
          {

LABEL_21:
            v19 = 0;
            v5 = v21;
            v4 = v22;
            goto LABEL_22;
          }

          v15 = v14;
          v16 = 0;
          v17 = *v25;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v16 |= [v12 hasSameOutputAs:*(*(&v24 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);

          if ((v16 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        v19 = 1;
        v5 = v21;
        v4 = v22;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 1;
    }

LABEL_22:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)addOutputEvent:(id)a3 toFirstActionMatchingCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_outputActions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 objectForVariant:{86, v15}];
        if ([v7 isEqual:v14])
        {
          [v13 addOutputEvent:v6];

          goto LABEL_11;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)actionStringAtIndex:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_outputActions objectAtIndex:a3];
  v4 = [v3 string];

  return v4;
}

- (id)combinedActionString
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000059B8;
  v10 = sub_1000059C8;
  v11 = 0;
  outputActions = self->_outputActions;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000059D0;
  v5[3] = &unk_1001C75E8;
  v5[4] = &v6;
  [(NSMutableArray *)outputActions enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)combinedOriginalString
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000059B8;
  v10 = sub_1000059C8;
  v11 = 0;
  outputActions = self->_outputActions;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005B74;
  v5[3] = &unk_1001C75E8;
  v5[4] = &v6;
  [(NSMutableArray *)outputActions enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_handleAttachmentInRequest:(__AXUIElement *)a3
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [VOTElement elementWithUIElement:a3];
    }

    else
    {
      objc_opt_class();
      __UIAccessibilityCastAsClass();
    }
    v6 = ;
  }

  else
  {
    v5 = [AXUIElement uiElementWithAXElement:a3];
    v6 = [VOTElement elementWithUIElement:v5];
  }

  [v6 addTextualInformationToRequest:self options:0xC11004000 dataPackage:0];
}

- (id)addAttributedString:(id)a3 withLanguage:(id)a4 category:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v108 = [(VOTOutputRequest *)self addString:v8 withLanguage:v9 category:v10];
    goto LABEL_97;
  }

  if (![v8 length])
  {
    v108 = 0;
    goto LABEL_97;
  }

  v11 = [v8 copy];

  v12 = +[NSMutableDictionary dictionary];
  v13 = AXUIAccessibilitySpeechAttributePhonemeSubstitution;
  v14 = [v11 length];
  v121[0] = _NSConcreteStackBlock;
  v121[1] = 3221225472;
  v121[2] = sub_100006A70;
  v121[3] = &unk_1001C7610;
  v15 = v12;
  v122 = v15;
  v8 = v11;
  v123 = v8;
  [v8 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v121}];
  v127 = v13;
  v16 = [NSArray arrayWithObjects:&v127 count:1];
  [v8 removeAttributes:v16];

  if ([v15 count])
  {
    [v8 setAttribute:v15 forKey:v13];
  }

  v102 = v15;
  v17 = [(VOTOutputRequest *)self outputActions];
  v101 = [v17 count];

  v119 = 0;
  v120 = 0;
  v103 = [v8 length];
  v108 = +[NSMutableArray array];
  v18 = 0;
  v104 = UIAccessibilityTokenBrailleOverride;
  v19 = 0;
  v105 = v8;
  v106 = v10;
  while (1)
  {
    v20 = [v8 attributesAtIndex:v19 effectiveRange:&v119];
    v21 = v20;
    if (v119 == 0x7FFFFFFFFFFFFFFFLL)
    {

      goto LABEL_96;
    }

    v112 = v18;
    v22 = [v8 substringWithRange:{v119, v120}];
    v23 = +[AXSubsystemVoiceOver sharedInstance];
    v24 = [v23 ignoreLogging];

    if ((v24 & 1) == 0)
    {
      v25 = +[AXSubsystemVoiceOver identifier];
      v26 = AXLoggerForFacility();

      v27 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = AXColorizeFormatLog();
        v99 = v119;
        v100 = v120;
        v97 = v22;
        v98 = v21;
        v29 = _AXStringForArgs();
        if (os_log_type_enabled(v26, v27))
        {
          *buf = 138543362;
          v126 = v29;
          _os_log_impl(&_mh_execute_header, v26, v27, "%{public}@", buf, 0xCu);
        }

        v10 = v106;
      }
    }

    v30 = v119;
    v31 = [v21 objectForKey:{UIAccessibilityTokenLiteralTextRanges, v97, v98, v99, v100}];
    v32 = v31;
    v111 = v31;
    if (v9)
    {
      if (v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v33 = [v21 objectForKey:UIAccessibilityTokenLanguage];
      if (v33 || ([v21 objectForKey:UIAccessibilityTokenOverrideLanguage], (v33 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v21, "objectForKey:", @"accessibilityLanguage"), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_20:
        v9 = &stru_1001CBF90;
        goto LABEL_21;
      }

      if (v32)
      {
        goto LABEL_20;
      }

      v9 = 0;
    }

LABEL_21:
    v34 = [(VOTOutputRequest *)self outputActions];
    v35 = [v34 count];

    v113 = v22;
    v36 = [v113 rangeOfString:v113];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    v38 = [v21 objectForKey:UIAccessibilityTokenListItemLabel];

    if (v38 && &v37[v30] != 0x7FFFFFFFFFFFFFFFLL && v119 == &v37[v30])
    {
      v39 = [v21 objectForKey:UIAccessibilityTokenListItemIdentifier];
      v40 = [v39 unsignedIntegerValue];
      if (v40 != [v112 unsignedIntegerValue])
      {
        v41 = v39;

        v42 = [v21 objectForKey:UIAccessibilityTokenListItemLabel];
        v43 = [AXAttributedString axAttributedStringWithString:v42];

        v10 = v106;
        [v43 setAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch];
        v44 = [(VOTOutputRequest *)self addAttributedString:v43 withLanguage:0 category:v106];

        v112 = v41;
      }
    }

    v45 = [v21 objectForKeyedSubscript:v104];
    v46 = [v21 allKeys];
    [v113 removeAttributes:v46];

    v110 = v45;
    v109 = [(VOTOutputRequest *)self addString:v113 brailleString:v45 breakWords:0 withLanguage:v9 atIndex:0x7FFFFFFFFFFFFFFFLL category:v10];
    [v108 axSafelyAddObjectsFromArray:?];
    v47 = [(VOTOutputRequest *)self outputActions];
    v48 = [v47 count];

    if ([v21 count])
    {
      v107 = v9;
      v49 = [(VOTOutputRequest *)self outputActions];
      v50 = [v49 subarrayWithRange:{v35, v48 - v35}];

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      obj = v50;
      v51 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
      if (!v51)
      {
        goto LABEL_86;
      }

      v52 = v51;
      v53 = *v116;
      while (1)
      {
        for (i = 0; i != v52; i = i + 1)
        {
          if (*v116 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v115 + 1) + 8 * i);
          v56 = [AXOutputRequest addAttributesToAction:v55 fromDictionary:v21];
          v57 = [v55 objectForVariant:53];

          if (v57)
          {
            v58 = sub_1000511CC(off_1001FDDD0, @"element.header.text.nolevel", 0);
            v59 = [AXAttributedString axAttributedStringWithString:v58];

            [v59 setAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch];
            v60 = [(VOTOutputRequest *)self addAttributedString:v59 withLanguage:0];
          }

          v61 = [v55 objectForVariant:52];

          if (v61)
          {
            v62 = sub_1000511CC(off_1001FDDD0, @"element.link.text", 0);
            v63 = [AXAttributedString axAttributedStringWithString:v62];

            v64 = +[AXSettings sharedInstance];
            v65 = [v64 voiceOverLinkFeedback];

            if ((v65 & 2) != 0)
            {
              v66 = [(VOTOutputRequest *)self addAttributedString:v63 withLanguage:0];
              v67 = [(VOTOutputRequest *)self lastAction];
              [v67 setIsVoiceOverGeneratedContent:1];

              if ((v65 & 8) != 0)
              {
                [v55 setObject:&off_1001D9910 forVariant:32];
              }

              v68 = [(VOTOutputRequest *)self lastAction];
              [v68 setGeneratesBraille:(v65 >> 4) & 1];
            }

            if ((v65 & 4) != 0)
            {
              v69 = [(VOTOutputRequest *)self lastAction];
              [v69 setObject:@"Sounds/LinkBegin.aiff" forVariant:75];
            }
          }

          v70 = [v55 objectForVariant:62];

          if (v70)
          {
            v71 = [v55 objectForVariant:62];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v72 = v71;
LABEL_49:
              v73 = v72;
              if (v72)
              {
                v74 = [AXAttributedString axAttributedStringWithString:v72];
                [v74 setAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch];
                v75 = [(VOTOutputRequest *)self addAttributedString:v74 withLanguage:0];
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v71 BOOLValue])
              {
                v72 = sub_1000511CC(off_1001FDDD0, @"highlighted", 0);
                goto LABEL_49;
              }
            }
          }

          v76 = [v55 objectForVariant:85];

          if (v76)
          {
            v77 = [v55 objectForVariant:85];
            [(VOTOutputRequest *)self _handleAttachmentInRequest:v77];
          }

          v78 = [v55 objectForVariant:88];

          if (v78)
          {
            v79 = +[AXSettings sharedInstance];
            v80 = [v79 voiceOverInlineTextCompletionAppearanceFeedback];

            if ([VOTSharedWorkspace typingPitchChangeEnabled])
            {
              if ((v80 & 8) != 0)
              {
                [v55 setObject:UIAccessibilityTokenLowPitch forVariant:32];
              }
            }
          }

          v81 = [v55 objectForVariant:30];
          if (v81)
          {
            [v55 removeObjectForVariant:30];
            v82 = [v81 isEqualToString:UIAccessibilityTokenSpeakLiteralPunctuation];
            v83 = &AXSSVoiceOverPunctuationGroupAll;
            if ((v82 & 1) != 0 || (v84 = [v81 isEqualToString:UIAccessibilityTokenSpeakNoPunctuation], v83 = &AXSSVoiceOverPunctuationGroupNone, v84))
            {
              v85 = [VOTSharedWorkspace punctuationGroupForUUID:*v83];
              [v55 setObject:v85 forVariant:30];
            }
          }

          v86 = [v55 objectForVariant:32];

          if (v86)
          {
            if (![VOTSharedWorkspace typingPitchChangeEnabled])
            {
              [v55 removeObjectForVariant:32];
              goto LABEL_84;
            }

            v87 = [v55 objectForVariant:32];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v88 = v87;
              if ([v88 isEqualToString:UIAccessibilityTokenHighPitch])
              {
                LODWORD(v89) = 1.5;
                goto LABEL_77;
              }

              if ([v88 isEqualToString:UIAccessibilityTokenLowPitch])
              {
                LODWORD(v89) = 0.75;
LABEL_77:
                v95 = [NSNumber numberWithFloat:v89];
                [v55 setObject:v95 forVariant:32];

LABEL_82:
LABEL_83:

                goto LABEL_84;
              }

              if (![v88 isEqualToString:UIAccessibilityTokenPlaceholder])
              {
                v97 = v88;
                _AXAssert();
              }

              v93 = v55;
              v94 = &off_1001D9910;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_83;
              }

              [v87 floatValue];
              v91 = v90;
              if (v91 > 2.0)
              {
                v91 = 2.0;
              }

              v92 = fmax(v91, 0.0);
              *&v92 = v92;
              v88 = [NSNumber numberWithFloat:v92];
              v93 = v55;
              v94 = v88;
            }

            [v93 setObject:v94 forVariant:{32, v97}];
            goto LABEL_82;
          }

LABEL_84:
        }

        v52 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
        if (!v52)
        {
LABEL_86:

          v10 = v106;
          v9 = v107;
          break;
        }
      }
    }

    v119 += v120;

    v19 = v119;
    if (v119 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v8 = v105;
    v18 = v112;
    if (v119 >= v103)
    {
      goto LABEL_96;
    }
  }

  v8 = v105;
  v18 = v112;
LABEL_96:
  [(VOTOutputRequest *)self _mergeActionsStartingAtIndex:&v101[-(v101 > 0)]];

LABEL_97:

  return v108;
}

- (id)_addAXOutputActions:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(NSMutableArray *)self->_outputActions count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [[VOTOutputAction alloc] initWithAXAction:*(*(&v20 + 1) + 8 * i)];
        [(VOTOutputAction *)v13 setOutputRequest:self];
        v14 = [VOTSharedWorkspace applicationForCurrentElement];
        v15 = [v14 bundleIdentifier];
        [(VOTOutputAction *)v13 setObject:v15 forVariant:43];

        [v7 addObject:v13];
        v16 = [(NSMutableArray *)self->_outputActions count];
        outputActions = self->_outputActions;
        if (a4 >= v16)
        {
          [(NSMutableArray *)outputActions addObject:v13];
        }

        else
        {
          [(NSMutableArray *)outputActions insertObject:v13 atIndex:a4];
        }

        a4 += [(NSMutableArray *)self->_outputActions count]- v8;
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_mergeActionsStartingAtIndex:(unint64_t)a3
{
  v43 = a3;
  v4 = a3 + 1;
  if (a3 + 1 <= [(NSMutableArray *)self->_outputActions count])
  {
    v38 = self;
    v44 = [(VOTOutputRequest *)self outputActions];
    v40 = [v44 count];
    v5 = objc_alloc_init(NSMutableIndexSet);
    v6 = 0;
    do
    {
      [v5 addIndex:v6++];
    }

    while (v4 != v6);
    v39 = v5;
    v41 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    if (v4 < v40)
    {
      do
      {
        v7 = [v44 objectAtIndexedSubscript:v43];
        v8 = [v7 outputVariants];

        v9 = [v44 objectAtIndexedSubscript:v4];
        v10 = [v9 outputVariants];

        if (v8)
        {
          v42 = [v8 copy];
          [v42 addObjectsFromIndexMap:v10];
        }

        else
        {
          v42 = [v10 copy];
        }

        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 1;
        v11 = +[NSMutableSet set];
        v12 = [v42 indexes];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100007230;
        v45[3] = &unk_1001C7638;
        v13 = v8;
        v46 = v13;
        v14 = v10;
        v47 = v14;
        v15 = v11;
        v48 = v15;
        v49 = &v50;
        [v12 enumerateIndexesUsingBlock:v45];

        v16 = [v44 objectAtIndexedSubscript:v43];
        v17 = [v16 string];
        v18 = [v17 stringByTrimmingCharactersInSet:v41];
        v19 = [v18 length];

        v20 = [v44 objectAtIndexedSubscript:v4];
        v21 = [v20 string];
        v22 = [v21 stringByTrimmingCharactersInSet:v41];

        v23 = [v22 length];
        v24 = [v15 ax_filteredSetUsingBlock:&stru_1001C7678];
        v25 = ([v24 count] | v23) == 0;
        if (v19 != 0 && (v51[3] & 1) != 0 && v23 != 0 || v25)
        {
          if ([v22 length])
          {
            v26 = [v44 objectAtIndexedSubscript:v43];
            v27 = [v26 string];

            if ([v27 length])
            {
              v28 = [v41 characterIsMember:{objc_msgSend(v27, "characterAtIndex:", objc_msgSend(v27, "length") - 1)}];
              v29 = @" ";
              if (v28)
              {
                v29 = &stru_1001CBF90;
              }
            }

            else
            {
              v29 = @" ";
            }

            v30 = [NSString stringWithFormat:@"%@%@", v29, v22];
            v31 = [v44 objectAtIndexedSubscript:v43];
            v32 = [v31 objectForVariant:54];

            if (v32)
            {
              v33 = v22;

              v30 = v33;
            }

            v34 = [v27 stringByAppendingString:v30];
            v35 = [v44 objectAtIndexedSubscript:v43];
            [v35 setString:v34 overrideOriginalString:1];
          }
        }

        else
        {
          [v39 addIndex:v4];
          v43 = v4;
        }

        ++v4;

        _Block_object_dispose(&v50, 8);
      }

      while (v40 != v4);
    }

    v36 = [v44 objectsAtIndexes:v39];
    v37 = [v36 count];
    if (v37 < [v44 count])
    {
      [(VOTOutputRequest *)v38 removeActions];
      [(NSMutableArray *)v38->_outputActions addObjectsFromArray:v36];
    }
  }
}

- (id)addString:(id)a3
{
  v4 = a3;
  if ([v4 isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:v4];
  }

  else
  {
    [(VOTOutputRequest *)self addString:v4 breakWords:0 withLanguage:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
  }
  v5 = ;

  return v5;
}

- (id)addString:(id)a3 withLanguage:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:v7 withLanguage:v6];
  }

  else
  {
    [(VOTOutputRequest *)self addString:v7 breakWords:0 withLanguage:v6 atIndex:0x7FFFFFFFFFFFFFFFLL];
  }
  v8 = ;

  return v8;
}

- (id)addString:(id)a3 brailleString:(id)a4 withLanguage:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isAXAttributedString])
  {
    v11 = UIAccessibilityTokenBrailleOverride;
    v12 = v8;
    [v12 setAttribute:v10 forKey:v11];

    v13 = [(VOTOutputRequest *)self addAttributedString:v12 withLanguage:v9];
    v10 = v12;
  }

  else
  {
    v13 = [(VOTOutputRequest *)self addString:v8 brailleString:v10 breakWords:0 withLanguage:v9 atIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v13;
}

- (id)addString:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:v7 withLanguage:0 category:v6];
  }

  else
  {
    [(VOTOutputRequest *)self addString:v7 breakWords:0 withLanguage:0 atIndex:0x7FFFFFFFFFFFFFFFLL category:v6];
  }
  v8 = ;

  return v8;
}

- (id)addString:(id)a3 withLanguage:(id)a4 category:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v10 isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:v10 withLanguage:v9 category:v8];
  }

  else
  {
    [(VOTOutputRequest *)self addString:v10 breakWords:0 withLanguage:v9 atIndex:0x7FFFFFFFFFFFFFFFLL category:v8];
  }
  v11 = ;

  return v11;
}

+ (id)stringShouldSeparateDueToLanguage:(id)a3 language:(id)a4 keyboardLanguageHint:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [v7 length];
  v136 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v129 = +[NSMutableCharacterSet punctuationCharacterSet];
  v125 = +[NSCharacterSet decimalDigitCharacterSet];
  v131 = [NSCharacterSet characterSetWithCharactersInString:@"ー"];
  if (v8)
  {
    v12 = +[AXLanguageManager sharedInstance];
    v13 = [v12 dialectForLanguageID:v8];

    v133 = v8;
  }

  else
  {
    v14 = [VOTSharedWorkspace selectedLanguage];

    if (v14)
    {
      v15 = +[AXLanguageManager sharedInstance];
      v16 = [VOTSharedWorkspace selectedLanguage];
      v13 = [v15 dialectForLanguageID:v16];
    }

    else
    {
      v15 = +[VOTOutputManager outputManager];
      v13 = [v15 currentLanguageMap];
    }

    v17 = [VOTSharedWorkspace selectedLanguage];
    v18 = v17;
    if (v17)
    {
      v133 = v17;
    }

    else
    {
      v133 = [VOTSharedWorkspace systemSpokenLanguage];
    }
  }

  v130 = +[AXLanguageManager sharedInstance];
  v145 = v13;
  v19 = [v13 specificLanguageID];
  v128 = sub_1000379BC(v19);
  v126 = sub_100037A14();
  v123 = v19;
  if ([v19 hasPrefix:@"he"])
  {
    [v129 removeCharactersInString:@"-"];
  }

  v127 = v10;
  v124 = v8;
  v135 = objc_alloc_init(AXIndexMap);
  if (v11 >= 1)
  {
    v149 = 0;
    v137 = v7;
    v138 = 0;
    BYTE4(v134) = 0;
    v20 = 0;
    v21 = 0;
    v22 = v13;
    v132 = v11;
    while (1)
    {
      v146 = v20;
      v23 = [v7 rangeOfComposedCharacterSequenceAtIndex:v21];
      v20 = [v7 substringWithRange:{v23, v24}];
      v25 = [v20 characterAtIndex:0];
      if ([v20 length] == 1)
      {
        if ([v136 characterIsMember:v25])
        {
          BYTE4(v134) &= v128 ^ 1;
LABEL_18:
          v26 = v20;
          v27 = v146;
          goto LABEL_170;
        }

        if ([v129 characterIsMember:v25])
        {
          goto LABEL_18;
        }
      }

      v150 = v21;
      v28 = sub_100037AA8();
      v29 = [v28 characterIsMember:v25];

      v30 = sub_100037A1C();
      v151 = v25;
      v31 = [v30 characterIsMember:v25];

      v139 = v20;
      if ((sub_1000511D4(v22, v133, v20) & 1) != 0 || (v29 & 1) != 0 || v31)
      {
        if ((v128 & v29 & 1) != 0 || v126 && v31)
        {
          if ((v134 & 0x100000000) != 0)
          {
            LODWORD(v134) = 0;
            goto LABEL_61;
          }

          v33 = [v146 characterAtIndex:0];
          v34 = v25;
          if (v146)
          {
            v35 = v33;
            if (([v136 characterIsMember:v33] & 1) == 0 && (objc_msgSend(v129, "characterIsMember:", v35) & 1) == 0 && v35 != 8207 && (objc_msgSend(v125, "characterIsMember:", v25) & 1) == 0 && !objc_msgSend(v129, "characterIsMember:", v25))
            {
              v134 = 0;
              v140 = 0;
              v32 = 1;
              goto LABEL_76;
            }
          }

          v36 = +[NSMutableString string];
          v37 = v150;
          if (v150 >= v11)
          {
            v38 = 0;
          }

          else
          {
            v38 = 0;
            while (1)
            {
              v39 = [v7 characterAtIndex:v37];
              v40 = [v136 characterIsMember:v39];
              if (v40)
              {
                if (v38)
                {
                  break;
                }

                v38 = [v36 mutableCopy];
              }

              v41 = sub_100037AA8();
              v42 = v40 | [v41 characterIsMember:v39];

              if (v42 != 1)
              {
                break;
              }

              if (v38)
              {
                [(__CFString *)v38 appendFormat:@"%C", v39];
              }

              else
              {
                [v36 appendFormat:@"%C", v39];
              }

              if (v11 == ++v37)
              {
                v37 = v11;
                break;
              }
            }
          }

          v43 = +[AXLanguageManager doNotTranslateWords];
          if (([v43 containsObject:v36] & 1) != 0 || objc_msgSend(v43, "containsObject:", v38))
          {
            if ([v36 isEqualToString:@"VoiceOver"])
            {
              v140 = 0;
              v134 = 1;
              v32 = 1;
              v22 = v145;
              goto LABEL_74;
            }

            if (v150 >= 1)
            {
              v141 = [v7 substringWithRange:{v138, v150 - v138}];
              v181[0] = @"string";
              v181[1] = @"language";
              v182[0] = v141;
              v44 = v149;
              if (!v149)
              {
                v121 = +[NSNull null];
                v44 = v121;
              }

              v182[1] = v44;
              v45 = [NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:2];
              [v127 addObject:v45];

              if (!v149)
              {
              }
            }

            v138 = v150;
            LODWORD(v134) = 1;
            v149 = @"en-US";
            v150 = v37 - 1;
          }

          else
          {
            LODWORD(v134) = 0;
          }

          v22 = v145;
LABEL_61:
          v46 = [VOTSharedWorkspace languageRotorItems];
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v36 = v46;
          v47 = [v36 countByEnumeratingWithState:&v165 objects:v180 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v166;
            while (2)
            {
              for (i = 0; i != v48; i = i + 1)
              {
                if (*v166 != v49)
                {
                  objc_enumerationMutation(v36);
                }

                v51 = *(*(&v165 + 1) + 8 * i);
                v52 = [v51 objectForKeyedSubscript:@"RotorItem"];
                v53 = AXLanguageCanonicalFormToGeneralLanguage();
                v54 = [v53 hasPrefix:@"en"];

                if (v54)
                {
                  v38 = [v51 objectForKeyedSubscript:@"RotorItem"];
                  goto LABEL_71;
                }
              }

              v48 = [v36 countByEnumeratingWithState:&v165 objects:v180 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }

            v38 = @"en-US";
LABEL_71:
            v7 = v137;
            v22 = v145;
            v11 = v132;
          }

          else
          {
            v38 = @"en-US";
          }

          v43 = +[AXLanguageManager sharedInstance];
          v140 = [v43 dialectForLanguageID:v38];
          v32 = 0;
          BYTE4(v134) = 1;
LABEL_74:

          v20 = v139;
          goto LABEL_75;
        }

        LODWORD(v134) = 0;
        v140 = 0;
        v32 = 1;
      }

      else
      {
        LODWORD(v134) = 0;
        v32 = 0;
        v140 = 0;
      }

LABEL_75:
      v34 = v151;
LABEL_76:
      if (sub_100051298(v34) && !sub_100051288(v34))
      {
        v56 = +[VOTOutputManager outputManager];
        v55 = [v56 replacesCharacterAsPunctuation:v34];
      }

      else
      {
        v55 = 0;
      }

      v57 = [NSNumber numberWithBool:(v32 ^ 1) & v55];
      [v135 setObject:v57 forIndex:v150];

      v58 = v20;
      if ((v32 | v55) & 1) == 0 && (AXLanguageIsSpeakableEmojiString() & 1) == 0 && !sub_100051A24(v150, v7) || ([v131 characterIsMember:v151])
      {
        v59 = +[NSMutableArray array];
        v60 = [VOTSharedWorkspace languageRotorItems];
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v61 = v60;
        v62 = [v61 countByEnumeratingWithState:&v161 objects:v175 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v162;
          do
          {
            for (j = 0; j != v63; j = j + 1)
            {
              if (*v162 != v64)
              {
                objc_enumerationMutation(v61);
              }

              v66 = *(*(&v161 + 1) + 8 * j);
              v67 = [v66 objectForKeyedSubscript:@"Enabled"];
              v68 = [v67 BOOLValue];

              if (v68)
              {
                v69 = [v66 objectForKeyedSubscript:@"RotorItem"];
                if (v69)
                {
                  [v59 addObject:v69];
                }
              }
            }

            v63 = [v61 countByEnumeratingWithState:&v161 objects:v175 count:16];
          }

          while (v63);
        }

        v70 = v140;

        if (!(v9 | v140))
        {
          v71 = v151;
          v72 = [v130 dialectsThatCanSpeakCharacter:v151 overridePreferredLanguages:v59];
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          v160 = 0u;
          v73 = v72;
          v74 = [v73 countByEnumeratingWithState:&v157 objects:v174 count:16];
          if (v74)
          {
            v75 = v74;
            v76 = *v158;
            do
            {
              v77 = 0;
              v142 = v75;
              do
              {
                if (*v158 != v76)
                {
                  objc_enumerationMutation(v73);
                }

                v78 = *(*(&v157 + 1) + 8 * v77);
                if (([v78 isDialectSecondaryForCharacter:v71] & 1) == 0)
                {
                  v79 = [v78 langMap];
                  if (![v79 isWestern])
                  {
                    goto LABEL_131;
                  }

                  v80 = v73;
                  v81 = [v145 langMap];
                  if (![v81 isWestern] || v150 <= 0)
                  {

                    v73 = v80;
LABEL_131:

LABEL_132:
                    v70 = v78;
LABEL_133:

LABEL_134:
                    v22 = v145;

                    if (!v70)
                    {
                      goto LABEL_167;
                    }

LABEL_135:
                    v96 = [v70 specificLanguageID];
                    if ([v149 isEqualToString:v96])
                    {
                      v21 = v138;
                      goto LABEL_163;
                    }

                    if (v149)
                    {
                    }

                    else
                    {
                      v97 = [v22 isEqual:v70];

                      if (v97)
                      {
                        goto LABEL_164;
                      }
                    }

                    v21 = v150;
                    if (v150 < 1)
                    {
                      v138 = v150;
                      goto LABEL_165;
                    }

                    v98 = v138;
                    v144 = v70;
                    if (v150 <= v138)
                    {
                      goto LABEL_156;
                    }

                    v99 = v150;
                    v100 = v150;
                    while (1)
                    {
                      v101 = [v135 objectForIndex:--v100];
                      v102 = [v101 BOOLValue];

                      if (!v102)
                      {
                        v21 = v99;
                        v98 = v138;
                        goto LABEL_156;
                      }

                      v152 = [v137 rangeOfComposedCharacterSequenceAtIndex:v100];
                      v103 = [v137 substringWithRange:?];
                      v104 = [v103 characterAtIndex:0];
                      [v70 speakableCharacters];
                      v106 = v105 = v70;
                      if (v106 && ([v105 canSpeakCharacter:v104] & 1) == 0)
                      {
                        v107 = [v105 canSpeakString:v103];

                        if ((v107 & 1) == 0)
                        {

                          v21 = v99;
                          v98 = v138;
                          v70 = v144;
LABEL_156:
                          if (v21 == v98)
                          {
                            v22 = v145;
                            goto LABEL_164;
                          }

                          v96 = [v137 substringWithRange:?];
                          v172[0] = v96;
                          v171[0] = @"string";
                          v171[1] = @"language";
                          v108 = v149;
                          v22 = v145;
                          if (!v149)
                          {
                            v122 = +[NSNull null];
                            v108 = v122;
                          }

                          v172[1] = v108;
                          v109 = [NSDictionary dictionaryWithObjects:v172 forKeys:v171 count:2];
                          [v127 addObject:v109];

                          if (!v149)
                          {
                          }

                          v70 = v144;
LABEL_163:

                          v138 = v21;
LABEL_164:
                          v21 = v150;
LABEL_165:
                          if (([v70 isEqual:v22] & 1) == 0)
                          {
                            v110 = [v70 specificLanguageID];

                            v149 = v110;
LABEL_167:
                            v21 = v150;
                          }

LABEL_168:

                          v20 = v139;
LABEL_169:

                          v27 = v70;
                          v7 = v137;
                          v11 = v132;
                          goto LABEL_170;
                        }
                      }

                      else
                      {
                      }

                      v21 = v152;
                      v99 = v152;
                      v98 = v138;
                      v70 = v144;
                      if (v100 <= v138)
                      {
                        goto LABEL_156;
                      }
                    }
                  }

                  [v78 specificLanguageID];
                  v83 = v82 = v76;
                  v147 = [v149 isEqual:v83];

                  v76 = v82;
                  v73 = v80;
                  v75 = v142;
                  if (v147)
                  {
                    goto LABEL_132;
                  }
                }

                v77 = v77 + 1;
                v71 = v151;
              }

              while (v75 != v77);
              v75 = [v73 countByEnumeratingWithState:&v157 objects:v174 count:16];
            }

            while (v75);
          }

          v70 = 0;
          goto LABEL_133;
        }

        v22 = v145;
        v85 = v151;
        if (v140)
        {
          goto LABEL_135;
        }

        v86 = [v130 dialectsThatCanSpeakCharacter:v151 overridePreferredLanguages:v59];
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v73 = v86;
        v148 = [v73 countByEnumeratingWithState:&v153 objects:v173 count:16];
        if (v148)
        {
          v87 = *v154;
          v143 = *v154;
          do
          {
            for (k = 0; k != v148; k = k + 1)
            {
              if (*v154 != v87)
              {
                objc_enumerationMutation(v73);
              }

              v89 = *(*(&v153 + 1) + 8 * k);
              if (([v89 isDialectSecondaryForCharacter:v85] & 1) == 0)
              {
                v90 = v73;
                v91 = [v89 langMap];
                v92 = [v91 generalLanguageID];
                if ([v92 isEqual:v9])
                {

                  v73 = v90;
LABEL_152:
                  v70 = v89;

                  if (v70)
                  {
                    goto LABEL_134;
                  }

LABEL_153:
                  v70 = [v73 firstObject];
                  goto LABEL_134;
                }

                v93 = [v89 specificLanguageID];
                v94 = [v93 isEqualToString:v9];

                v85 = v151;
                v73 = v90;
                v87 = v143;
                if (v94)
                {
                  goto LABEL_152;
                }
              }
            }

            v148 = [v73 countByEnumeratingWithState:&v153 objects:v173 count:16];
          }

          while (v148);
        }

        goto LABEL_153;
      }

      if (v149)
      {
        v84 = [v130 dialectForLanguageID:?];
        v59 = v84;
        v70 = v140;
        if (((v32 ^ 1) & v55) == 0 || ([v84 canSpeakCharacter:v151] & 1) == 0 && (objc_msgSend(v59, "canSpeakString:", v58) & 1) == 0)
        {
          v61 = [v137 substringWithRange:{v138, v150 - v138}];
          v178[0] = @"string";
          v178[1] = @"language";
          v179[0] = v61;
          v179[1] = v149;
          v95 = [NSDictionary dictionaryWithObjects:v179 forKeys:v178 count:2];
          [v127 addObject:v95];

          v21 = v150;
          v149 = 0;
          v138 = v150;
          goto LABEL_168;
        }

        v21 = v150;
        goto LABEL_169;
      }

      if (v134)
      {
        v21 = v150;
        v59 = [v7 substringWithRange:{v138, v150 - v138}];
        v176[0] = @"string";
        v176[1] = @"skipsUnpronounceable";
        v177[0] = v59;
        v177[1] = &__kCFBooleanTrue;
        v61 = [NSDictionary dictionaryWithObjects:v177 forKeys:v176 count:2];
        [v127 addObject:v61];
        v149 = 0;
        v138 = v150;
        v70 = v140;
        goto LABEL_168;
      }

      v149 = 0;
      v27 = v140;
      v21 = v150;
LABEL_170:

      if (++v21 >= v11)
      {
        goto LABEL_173;
      }
    }
  }

  v20 = 0;
  v138 = 0;
  v149 = 0;
LABEL_173:
  if (v149 | v127)
  {
    v111 = v124;
    v112 = v9;
    if (v11 == 1)
    {
      v113 = sub_100051298([v7 characterAtIndex:0]);
      if (!v9 && v113)
      {

        v149 = 0;
      }
    }

    if (v11 == v138)
    {
      v114 = v123;
    }

    else
    {
      v116 = [v7 substringWithRange:{v138, v11 - v138}];
      v169[0] = @"string";
      v169[1] = @"language";
      v170[0] = v116;
      v117 = v149;
      v114 = v123;
      if (!v149)
      {
        v117 = +[NSNull null];
      }

      v170[1] = v117;
      v118 = [NSDictionary dictionaryWithObjects:v170 forKeys:v169 count:2];
      [v127 addObject:v118];

      if (!v149)
      {
      }
    }

    v115 = v149;
  }

  else
  {
    v115 = 0;
    v114 = v123;
    v111 = v124;
    v112 = v9;
  }

  v119 = v127;

  return v127;
}

- (void)addPause:(float)a3
{
  v7 = [objc_allocWithZone(VOTOutputAction) initWithString:&stru_1001CBF90];
  *&v5 = a3;
  v6 = [NSNumber numberWithFloat:v5];
  [v7 setObject:v6 forVariant:38];

  [v7 setOutputRequest:self];
  [(NSMutableArray *)self->_outputActions addObject:v7];
}

- (id)addString:(id)a3 brailleString:(id)a4 breakWords:(BOOL)a5 withLanguage:(id)a6 atIndex:(int64_t)a7 category:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  if (!v14)
  {
    v23 = 0;
    goto LABEL_43;
  }

  if (v16)
  {
    goto LABEL_8;
  }

  v18 = objc_opt_class();
  v19 = [(VOTOutputRequest *)self keyboardLanguageHint];
  v20 = [v18 stringShouldSeparateDueToLanguage:v14 language:0 keyboardLanguageHint:v19];

  v21 = [AXOutputRequest processStringsAndLanguages:v20 brailleString:v15 breakWords:v11 withLanguage:0 atIndex:a7 category:v17];
  v22 = v21;
  if (!v21 || ![v21 count])
  {

LABEL_8:
    if (self->_sendsToDisplay)
    {
      v24 = [objc_allocWithZone(VOTOutputAction) initWithTextDisplay:v14];
      [v24 setOutputRequest:self];
      [v24 setObject:v17 forVariant:86];
      v25 = [NSNumber numberWithInteger:self->_textDisplayDirection];
      [v24 setObject:v25 forVariant:11];
      v26 = [(NSMutableArray *)self->_outputActions count];
      outputActions = self->_outputActions;
      if (v26 <= a7)
      {
        [(NSMutableArray *)outputActions addObject:v24];
      }

      else
      {
        [(NSMutableArray *)outputActions insertObject:v24 atIndex:a7];
      }
    }

    else
    {
      v24 = 0;
    }

    if ([v14 length] >= 0x3E9 && v11)
    {
      v41 = v15;
      v28 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v23 = objc_opt_new();
      if ([v14 length] < 0x3E9)
      {
LABEL_34:
        v32 = v24;
      }

      else
      {
        v29 = v14;
        while (2)
        {
          v30 = 1000;
          while (([v28 characterIsMember:{objc_msgSend(v29, "characterAtIndex:", v30)}] & 1) == 0)
          {
            if (--v30 == -1)
            {
              v30 = [v29 length];
              if (v30 < 0)
              {
                v14 = v29;
                goto LABEL_34;
              }

              break;
            }
          }

          v31 = [v29 substringToIndex:v30];
          v32 = [objc_allocWithZone(VOTOutputAction) initWithString:v31];

          [v32 setObject:v17 forVariant:86];
          [v32 setOutputRequest:self];
          [v32 setWasDivided:1];
          [v32 setObject:v16 forVariant:15];
          [(NSMutableArray *)self->_outputActions addObject:v32];
          [v23 addObject:v32];
          v33 = v30 + 1;
          if (v33 >= [v29 length])
          {

            v14 = v29;
          }

          else
          {
            v14 = [v29 substringFromIndex:v33];

            v29 = v14;
            v24 = v32;
            if ([v14 length] > 0x3E8)
            {
              continue;
            }
          }

          break;
        }
      }

      if ([v14 length])
      {
        v34 = [objc_allocWithZone(VOTOutputAction) initWithString:v14];

        [v34 setObject:v17 forVariant:86];
        [v34 setOutputRequest:self];
        [v34 setWasDivided:1];
        if ([v16 length])
        {
          [v34 setObject:v16 forVariant:15];
        }

        [(NSMutableArray *)self->_outputActions addObject:v34];
        [v23 addObject:v34];
      }

      else
      {
        v34 = v32;
      }

      v15 = v41;
    }

    else
    {
      v34 = [objc_allocWithZone(VOTOutputAction) initWithString:v14 brailleString:v15];

      [v34 setObject:v17 forVariant:86];
      if ([v16 length])
      {
        v35 = v16;
      }

      else
      {
        v35 = 0;
      }

      [v34 setObject:v35 forVariant:15];
      v36 = [VOTSharedWorkspace applicationForCurrentElement];
      v37 = [v36 bundleIdentifier];
      [v34 setObject:v37 forVariant:43];

      [v34 setOutputRequest:self];
      v38 = [(NSMutableArray *)self->_outputActions count];
      v39 = self->_outputActions;
      if (v38 <= a7)
      {
        [(NSMutableArray *)v39 addObject:v34];
      }

      else
      {
        [(NSMutableArray *)v39 insertObject:v34 atIndex:a7];
      }

      v42 = v34;
      v23 = [NSArray arrayWithObjects:&v42 count:1];
    }

    goto LABEL_42;
  }

  v23 = [(VOTOutputRequest *)self _addAXOutputActions:v22 atIndex:a7];

LABEL_42:
LABEL_43:

  return v23;
}

- (void)addSound:(id)a3
{
  v4 = a3;
  v5 = [objc_allocWithZone(VOTOutputAction) initWithSoundPath:v4];

  [v5 setOutputRequest:self];
  [(NSMutableArray *)self->_outputActions addObject:v5];
}

- (void)addNotificationEvent:(unsigned int)a3 forDelegate:(id)a4
{
  if (a4)
  {
    outputActions = self->_outputActions;
    v6 = a4;
    v7 = [(NSMutableArray *)outputActions lastObject];
    [v7 setObject:v6 forVariant:a3];
  }
}

- (void)setCannotBeInterrupted:(BOOL)a3
{
  self->_cannotBeInterrupted = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_outputActions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setObject:kCFBooleanTrue forVariant:{23, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"[%p] OutputRequest:\n", self];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = self;
  v4 = self->_outputActions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        [v3 appendString:@"Action: "];
        v10 = [v9 string];

        if (v10)
        {
          v11 = [v9 string];
          [v3 appendFormat:@"'%@'", v11];
        }

        else
        {
          [v3 appendString:@"__NO_STRING__"];
        }

        [v3 appendString:@"\n"];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = +[NSMutableArray array];
  v13 = v12;
  if (v16->_cannotBeInterrupted)
  {
    [v12 addObject:@"Cannot be interrupted"];
  }

  if (v16->_doesNotInterrupt)
  {
    [v13 addObject:@"Does not interrupt"];
  }

  if (v16->_interruptsEverything)
  {
    [v13 addObject:@"Interrupts everything"];
  }

  if ([v13 count])
  {
    v14 = [v13 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@"%@\n", v14];
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(VOTOutputRequest *)self combinedActionString];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"combinedActionString"];
  }

  v5 = [(VOTOutputRequest *)self combinedOriginalString];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"combinedOriginalString"];
  }

  v6 = [NSNumber numberWithBool:[(VOTOutputRequest *)self finishedSuccessfully]];
  [v3 setObject:v6 forKeyedSubscript:@"finishedSuccessfully"];

  return v3;
}

- (NSNumber)brailleAlertTimeout
{
  WeakRetained = objc_loadWeakRetained(&self->_brailleAlertTimeout);

  return WeakRetained;
}

- (_NSRange)brailleLineRange
{
  length = self->_brailleLineRange.length;
  location = self->_brailleLineRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)addTVElement:(id)a3 servesAsHeader:(BOOL)a4 filterWithAspectMask:(BOOL)a5
{
  v5 = a5;
  v23 = a3;
  if (a4 || (v8 = [v23 traits], (kAXHeaderTrait & v8) != 0))
  {
    if (v5 && ([v23 aspectMask] & 1) == 0 || (v9 = [AXAttributedString alloc], objc_msgSend(v23, "label"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "initWithString:", v10), v10, v12 = AXUIAccessibilitySpeechAttributePitch, objc_msgSend(v11, "setAttribute:forKey:", &off_1001D9980, AXUIAccessibilitySpeechAttributePitch), objc_msgSend(v23, "language"), v13 = objc_claimAutoreleasedReturnValue(), v14 = -[VOTOutputRequest addAttributedString:withLanguage:](self, "addAttributedString:withLanguage:", v11, v13), v13, v11, v5))
    {
      if (([v23 aspectMask] & 2) == 0)
      {
        goto LABEL_11;
      }

      v12 = AXUIAccessibilitySpeechAttributePitch;
    }

    v15 = [AXAttributedString alloc];
    v16 = [v23 value];
    v17 = [v15 initWithString:v16];

    [v17 setAttribute:&off_1001D9980 forKey:v12];
    v18 = [v23 language];
    v19 = [(VOTOutputRequest *)self addAttributedString:v17 withLanguage:v18];
  }

  else
  {
    if (v5)
    {
      v20 = 17827842;
    }

    else
    {
      v20 = 16779266;
    }

    [v23 addTextualInformationToRequest:self options:v20 dataPackage:0];
    if (![v23 doesHaveTraits:kAXKeyboardKeyTrait] || !objc_msgSend(v23, "aspectMask"))
    {
      goto LABEL_11;
    }

    v17 = [v23 label];
    if ([v17 length] != 1)
    {
      goto LABEL_10;
    }

    v18 = sub_100052450(v17, 0, 0);
    if ([v18 length])
    {
      LODWORD(v21) = 0.75;
      [(VOTOutputRequest *)self addPause:v21];
      v22 = [(VOTOutputRequest *)self addString:v18];
    }
  }

LABEL_10:
LABEL_11:

  _objc_release_x1();
}

@end