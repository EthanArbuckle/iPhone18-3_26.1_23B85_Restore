@interface VOTOutputRequest
+ (BOOL)setCopyLastOutputRequestEnabled:(BOOL)enabled;
+ (id)createRequest;
+ (id)lastRequest;
+ (id)previousRequests;
+ (id)stringShouldSeparateDueToLanguage:(id)language language:(id)a4 keyboardLanguageHint:(id)hint;
+ (void)addPreviousRequests:(id)requests;
+ (void)clearPreviousRequests;
+ (void)initialize;
+ (void)sendRequestWithString:(id)string shouldQueue:(BOOL)queue;
+ (void)setRequestEnqueuedBlock:(id)block;
- (BOOL)hasSameOutputAs:(id)as;
- (NSNumber)brailleAlertTimeout;
- (VOTOutputRequest)init;
- (VOTOutputRequestCompletionProtocol)completionDelegate;
- (_NSRange)brailleLineRange;
- (id)_addAXOutputActions:(id)actions atIndex:(unint64_t)index;
- (id)actionStringAtIndex:(int64_t)index;
- (id)addAttributedString:(id)string withLanguage:(id)language category:(id)category;
- (id)addString:(id)string;
- (id)addString:(id)string brailleString:(id)brailleString breakWords:(BOOL)words withLanguage:(id)language atIndex:(int64_t)index category:(id)category;
- (id)addString:(id)string brailleString:(id)brailleString withLanguage:(id)language;
- (id)addString:(id)string category:(id)category;
- (id)addString:(id)string withLanguage:(id)language;
- (id)addString:(id)string withLanguage:(id)language category:(id)category;
- (id)combinedActionString;
- (id)combinedOriginalString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)numberOfActionsWithString:(id)string;
- (void)_handleAttachmentInRequest:(__AXUIElement *)request;
- (void)_mergeActionsStartingAtIndex:(unint64_t)index;
- (void)addNotificationEvent:(unsigned int)event forDelegate:(id)delegate;
- (void)addOutputEvent:(id)event toFirstActionMatchingCategory:(id)category;
- (void)addPause:(float)pause;
- (void)addSound:(id)sound;
- (void)addTVElement:(id)element servesAsHeader:(BOOL)header filterWithAspectMask:(BOOL)mask;
- (void)removeActions;
- (void)removeActionsWithHelper:(id)helper;
- (void)removeLastActionWithString:(id)string;
- (void)send;
- (void)setCannotBeInterrupted:(BOOL)interrupted;
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

- (id)copyWithZone:(_NSZone *)zone
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

+ (void)setRequestEnqueuedBlock:(id)block
{
  v3 = qword_1001FE9A0;
  blockCopy = block;
  if (v3 != -1)
  {
    sub_100127A94();
  }

  [qword_1001FE990 lock];
  v5 = objc_retainBlock(blockCopy);

  v6 = qword_1001FE998;
  qword_1001FE998 = v5;

  v7 = qword_1001FE990;

  [v7 unlock];
}

+ (void)sendRequestWithString:(id)string shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  stringCopy = string;
  v5 = [objc_allocWithZone(VOTOutputRequest) init];
  v6 = v5;
  if (queueCopy)
  {
    [v5 setDoesNotInterrupt:1];
  }

  v7 = [v6 addString:stringCopy];
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
  reverseObjectEnumerator = [qword_1001FE980 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  [qword_1001FE978 unlock];

  return allObjects;
}

+ (id)lastRequest
{
  [qword_1001FE978 lock];
  reverseObjectEnumerator = [qword_1001FE980 reverseObjectEnumerator];
  nextObject = [reverseObjectEnumerator nextObject];

  [qword_1001FE978 unlock];

  return nextObject;
}

+ (void)addPreviousRequests:(id)requests
{
  v3 = qword_1001FE978;
  requestsCopy = requests;
  [v3 lock];
  [qword_1001FE980 axSafelyAddObjectsFromArray:requestsCopy];

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

- (void)removeActionsWithHelper:(id)helper
{
  helperCopy = helper;
  outputActions = [(VOTOutputRequest *)self outputActions];
  v6 = [outputActions mutableCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004ACC;
  v9[3] = &unk_1001C7598;
  v10 = helperCopy;
  v7 = helperCopy;
  v8 = [v6 indexesOfObjectsPassingTest:v9];
  [v6 removeObjectsAtIndexes:v8];

  [(NSMutableArray *)self->_outputActions setArray:v6];
}

- (void)removeLastActionWithString:(id)string
{
  stringCopy = string;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_outputActions reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      string = [v10 string];
      v12 = [string isEqualToString:stringCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    reverseObjectEnumerator = v13;
  }

LABEL_12:

LABEL_13:
}

- (unint64_t)numberOfActionsWithString:(id)string
{
  stringCopy = string;
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

        string = [*(*(&v14 + 1) + 8 * i) string];
        v12 = [string isEqualToString:stringCopy];

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

+ (BOOL)setCopyLastOutputRequestEnabled:(BOOL)enabled
{
  result = byte_1001FE9A8;
  byte_1001FE9A8 = enabled;
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
          completionDelegate = [v15 completionDelegate];
          [completionDelegate outputRequestFinished:v15];
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
                  brailleString = [v24 brailleString];
                  v26 = brailleString;
                  if (brailleString)
                  {
                    string = brailleString;
                  }

                  else
                  {
                    string = [v24 string];
                  }

                  v28 = string;

                  [v45 appendFormat:@"%@ ", v28];
                }

                if ([v24 performPunctuationTranslation])
                {
                  string2 = [v24 string];
                  replaceCommas = [v24 replaceCommas];
                  v31 = [v24 objectForVariant:15];
                  v32 = sub_100052340(string2, replaceCommas, v31);
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
      completionDelegate2 = [(VOTOutputRequest *)self completionDelegate];
      [completionDelegate2 outputRequestFinished:self];

      completionBlock = [(VOTOutputRequest *)self completionBlock];

      if (completionBlock)
      {
        completionBlock2 = [(VOTOutputRequest *)self completionBlock];
        (completionBlock2)[2](completionBlock2, self);
      }
    }
  }

  else
  {
    --qword_1001FF130;
  }
}

- (BOOL)hasSameOutputAs:(id)as
{
  asCopy = as;
  outputActions = [(VOTOutputRequest *)self outputActions];
  outputActions2 = [asCopy outputActions];
  v7 = [outputActions count];
  if (v7 == [outputActions2 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = outputActions;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      v21 = outputActions;
      v22 = asCopy;
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
          v13 = outputActions2;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (!v14)
          {

LABEL_21:
            v19 = 0;
            outputActions = v21;
            asCopy = v22;
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
        outputActions = v21;
        asCopy = v22;
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

- (void)addOutputEvent:(id)event toFirstActionMatchingCategory:(id)category
{
  eventCopy = event;
  categoryCopy = category;
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
        if ([categoryCopy isEqual:v14])
        {
          [v13 addOutputEvent:eventCopy];

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

- (id)actionStringAtIndex:(int64_t)index
{
  v3 = [(NSMutableArray *)self->_outputActions objectAtIndex:index];
  string = [v3 string];

  return string;
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

- (void)_handleAttachmentInRequest:(__AXUIElement *)request
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [VOTElement elementWithUIElement:request];
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
    v5 = [AXUIElement uiElementWithAXElement:request];
    v6 = [VOTElement elementWithUIElement:v5];
  }

  [v6 addTextualInformationToRequest:self options:0xC11004000 dataPackage:0];
}

- (id)addAttributedString:(id)string withLanguage:(id)language category:(id)category
{
  stringCopy = string;
  languageCopy = language;
  categoryCopy = category;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v108 = [(VOTOutputRequest *)self addString:stringCopy withLanguage:languageCopy category:categoryCopy];
    goto LABEL_97;
  }

  if (![stringCopy length])
  {
    v108 = 0;
    goto LABEL_97;
  }

  v11 = [stringCopy copy];

  v12 = +[NSMutableDictionary dictionary];
  v13 = AXUIAccessibilitySpeechAttributePhonemeSubstitution;
  v14 = [v11 length];
  v121[0] = _NSConcreteStackBlock;
  v121[1] = 3221225472;
  v121[2] = sub_100006A70;
  v121[3] = &unk_1001C7610;
  v15 = v12;
  v122 = v15;
  stringCopy = v11;
  v123 = stringCopy;
  [stringCopy enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v121}];
  v127 = v13;
  v16 = [NSArray arrayWithObjects:&v127 count:1];
  [stringCopy removeAttributes:v16];

  if ([v15 count])
  {
    [stringCopy setAttribute:v15 forKey:v13];
  }

  v102 = v15;
  outputActions = [(VOTOutputRequest *)self outputActions];
  v101 = [outputActions count];

  v119 = 0;
  v120 = 0;
  v103 = [stringCopy length];
  v108 = +[NSMutableArray array];
  v18 = 0;
  v104 = UIAccessibilityTokenBrailleOverride;
  v19 = 0;
  v105 = stringCopy;
  v106 = categoryCopy;
  while (1)
  {
    v20 = [stringCopy attributesAtIndex:v19 effectiveRange:&v119];
    v21 = v20;
    if (v119 == 0x7FFFFFFFFFFFFFFFLL)
    {

      goto LABEL_96;
    }

    v112 = v18;
    v22 = [stringCopy substringWithRange:{v119, v120}];
    v23 = +[AXSubsystemVoiceOver sharedInstance];
    ignoreLogging = [v23 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
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

        categoryCopy = v106;
      }
    }

    v30 = v119;
    v31 = [v21 objectForKey:{UIAccessibilityTokenLiteralTextRanges, v97, v98, v99, v100}];
    v32 = v31;
    v111 = v31;
    if (languageCopy)
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
        languageCopy = &stru_1001CBF90;
        goto LABEL_21;
      }

      if (v32)
      {
        goto LABEL_20;
      }

      languageCopy = 0;
    }

LABEL_21:
    outputActions2 = [(VOTOutputRequest *)self outputActions];
    v35 = [outputActions2 count];

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
      unsignedIntegerValue = [v39 unsignedIntegerValue];
      if (unsignedIntegerValue != [v112 unsignedIntegerValue])
      {
        v41 = v39;

        v42 = [v21 objectForKey:UIAccessibilityTokenListItemLabel];
        v43 = [AXAttributedString axAttributedStringWithString:v42];

        categoryCopy = v106;
        [v43 setAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch];
        v44 = [(VOTOutputRequest *)self addAttributedString:v43 withLanguage:0 category:v106];

        v112 = v41;
      }
    }

    v45 = [v21 objectForKeyedSubscript:v104];
    allKeys = [v21 allKeys];
    [v113 removeAttributes:allKeys];

    v110 = v45;
    v109 = [(VOTOutputRequest *)self addString:v113 brailleString:v45 breakWords:0 withLanguage:languageCopy atIndex:0x7FFFFFFFFFFFFFFFLL category:categoryCopy];
    [v108 axSafelyAddObjectsFromArray:?];
    outputActions3 = [(VOTOutputRequest *)self outputActions];
    v48 = [outputActions3 count];

    if ([v21 count])
    {
      v107 = languageCopy;
      outputActions4 = [(VOTOutputRequest *)self outputActions];
      v50 = [outputActions4 subarrayWithRange:{v35, v48 - v35}];

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
            voiceOverLinkFeedback = [v64 voiceOverLinkFeedback];

            if ((voiceOverLinkFeedback & 2) != 0)
            {
              v66 = [(VOTOutputRequest *)self addAttributedString:v63 withLanguage:0];
              lastAction = [(VOTOutputRequest *)self lastAction];
              [lastAction setIsVoiceOverGeneratedContent:1];

              if ((voiceOverLinkFeedback & 8) != 0)
              {
                [v55 setObject:&off_1001D9910 forVariant:32];
              }

              lastAction2 = [(VOTOutputRequest *)self lastAction];
              [lastAction2 setGeneratesBraille:(voiceOverLinkFeedback >> 4) & 1];
            }

            if ((voiceOverLinkFeedback & 4) != 0)
            {
              lastAction3 = [(VOTOutputRequest *)self lastAction];
              [lastAction3 setObject:@"Sounds/LinkBegin.aiff" forVariant:75];
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
            voiceOverInlineTextCompletionAppearanceFeedback = [v79 voiceOverInlineTextCompletionAppearanceFeedback];

            if ([VOTSharedWorkspace typingPitchChangeEnabled])
            {
              if ((voiceOverInlineTextCompletionAppearanceFeedback & 8) != 0)
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

          categoryCopy = v106;
          languageCopy = v107;
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

    stringCopy = v105;
    v18 = v112;
    if (v119 >= v103)
    {
      goto LABEL_96;
    }
  }

  stringCopy = v105;
  v18 = v112;
LABEL_96:
  [(VOTOutputRequest *)self _mergeActionsStartingAtIndex:&v101[-(v101 > 0)]];

LABEL_97:

  return v108;
}

- (id)_addAXOutputActions:(id)actions atIndex:(unint64_t)index
{
  actionsCopy = actions;
  v7 = objc_opt_new();
  v8 = [(NSMutableArray *)self->_outputActions count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = actionsCopy;
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
        applicationForCurrentElement = [VOTSharedWorkspace applicationForCurrentElement];
        bundleIdentifier = [applicationForCurrentElement bundleIdentifier];
        [(VOTOutputAction *)v13 setObject:bundleIdentifier forVariant:43];

        [v7 addObject:v13];
        v16 = [(NSMutableArray *)self->_outputActions count];
        outputActions = self->_outputActions;
        if (index >= v16)
        {
          [(NSMutableArray *)outputActions addObject:v13];
        }

        else
        {
          [(NSMutableArray *)outputActions insertObject:v13 atIndex:index];
        }

        index += [(NSMutableArray *)self->_outputActions count]- v8;
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_mergeActionsStartingAtIndex:(unint64_t)index
{
  indexCopy = index;
  v4 = index + 1;
  if (index + 1 <= [(NSMutableArray *)self->_outputActions count])
  {
    selfCopy = self;
    outputActions = [(VOTOutputRequest *)self outputActions];
    v40 = [outputActions count];
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
        v7 = [outputActions objectAtIndexedSubscript:indexCopy];
        outputVariants = [v7 outputVariants];

        v9 = [outputActions objectAtIndexedSubscript:v4];
        outputVariants2 = [v9 outputVariants];

        if (outputVariants)
        {
          v42 = [outputVariants copy];
          [v42 addObjectsFromIndexMap:outputVariants2];
        }

        else
        {
          v42 = [outputVariants2 copy];
        }

        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 1;
        v11 = +[NSMutableSet set];
        indexes = [v42 indexes];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100007230;
        v45[3] = &unk_1001C7638;
        v13 = outputVariants;
        v46 = v13;
        v14 = outputVariants2;
        v47 = v14;
        v15 = v11;
        v48 = v15;
        v49 = &v50;
        [indexes enumerateIndexesUsingBlock:v45];

        v16 = [outputActions objectAtIndexedSubscript:indexCopy];
        string = [v16 string];
        v18 = [string stringByTrimmingCharactersInSet:v41];
        v19 = [v18 length];

        v20 = [outputActions objectAtIndexedSubscript:v4];
        string2 = [v20 string];
        v22 = [string2 stringByTrimmingCharactersInSet:v41];

        v23 = [v22 length];
        v24 = [v15 ax_filteredSetUsingBlock:&stru_1001C7678];
        v25 = ([v24 count] | v23) == 0;
        if (v19 != 0 && (v51[3] & 1) != 0 && v23 != 0 || v25)
        {
          if ([v22 length])
          {
            v26 = [outputActions objectAtIndexedSubscript:indexCopy];
            string3 = [v26 string];

            if ([string3 length])
            {
              v28 = [v41 characterIsMember:{objc_msgSend(string3, "characterAtIndex:", objc_msgSend(string3, "length") - 1)}];
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
            v31 = [outputActions objectAtIndexedSubscript:indexCopy];
            v32 = [v31 objectForVariant:54];

            if (v32)
            {
              v33 = v22;

              v30 = v33;
            }

            v34 = [string3 stringByAppendingString:v30];
            v35 = [outputActions objectAtIndexedSubscript:indexCopy];
            [v35 setString:v34 overrideOriginalString:1];
          }
        }

        else
        {
          [v39 addIndex:v4];
          indexCopy = v4;
        }

        ++v4;

        _Block_object_dispose(&v50, 8);
      }

      while (v40 != v4);
    }

    v36 = [outputActions objectsAtIndexes:v39];
    v37 = [v36 count];
    if (v37 < [outputActions count])
    {
      [(VOTOutputRequest *)selfCopy removeActions];
      [(NSMutableArray *)selfCopy->_outputActions addObjectsFromArray:v36];
    }
  }
}

- (id)addString:(id)string
{
  stringCopy = string;
  if ([stringCopy isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:stringCopy];
  }

  else
  {
    [(VOTOutputRequest *)self addString:stringCopy breakWords:0 withLanguage:0 atIndex:0x7FFFFFFFFFFFFFFFLL];
  }
  v5 = ;

  return v5;
}

- (id)addString:(id)string withLanguage:(id)language
{
  languageCopy = language;
  stringCopy = string;
  if ([stringCopy isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:stringCopy withLanguage:languageCopy];
  }

  else
  {
    [(VOTOutputRequest *)self addString:stringCopy breakWords:0 withLanguage:languageCopy atIndex:0x7FFFFFFFFFFFFFFFLL];
  }
  v8 = ;

  return v8;
}

- (id)addString:(id)string brailleString:(id)brailleString withLanguage:(id)language
{
  stringCopy = string;
  languageCopy = language;
  brailleStringCopy = brailleString;
  if ([stringCopy isAXAttributedString])
  {
    v11 = UIAccessibilityTokenBrailleOverride;
    v12 = stringCopy;
    [v12 setAttribute:brailleStringCopy forKey:v11];

    v13 = [(VOTOutputRequest *)self addAttributedString:v12 withLanguage:languageCopy];
    brailleStringCopy = v12;
  }

  else
  {
    v13 = [(VOTOutputRequest *)self addString:stringCopy brailleString:brailleStringCopy breakWords:0 withLanguage:languageCopy atIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v13;
}

- (id)addString:(id)string category:(id)category
{
  categoryCopy = category;
  stringCopy = string;
  if ([stringCopy isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:stringCopy withLanguage:0 category:categoryCopy];
  }

  else
  {
    [(VOTOutputRequest *)self addString:stringCopy breakWords:0 withLanguage:0 atIndex:0x7FFFFFFFFFFFFFFFLL category:categoryCopy];
  }
  v8 = ;

  return v8;
}

- (id)addString:(id)string withLanguage:(id)language category:(id)category
{
  categoryCopy = category;
  languageCopy = language;
  stringCopy = string;
  if ([stringCopy isAXAttributedString])
  {
    [(VOTOutputRequest *)self addAttributedString:stringCopy withLanguage:languageCopy category:categoryCopy];
  }

  else
  {
    [(VOTOutputRequest *)self addString:stringCopy breakWords:0 withLanguage:languageCopy atIndex:0x7FFFFFFFFFFFFFFFLL category:categoryCopy];
  }
  v11 = ;

  return v11;
}

+ (id)stringShouldSeparateDueToLanguage:(id)language language:(id)a4 keyboardLanguageHint:(id)hint
{
  languageCopy = language;
  v8 = a4;
  hintCopy = hint;
  v10 = objc_opt_new();
  v11 = [languageCopy length];
  v136 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v129 = +[NSMutableCharacterSet punctuationCharacterSet];
  v125 = +[NSCharacterSet decimalDigitCharacterSet];
  v131 = [NSCharacterSet characterSetWithCharactersInString:@"ー"];
  if (v8)
  {
    v12 = +[AXLanguageManager sharedInstance];
    currentLanguageMap = [v12 dialectForLanguageID:v8];

    systemSpokenLanguage = v8;
  }

  else
  {
    selectedLanguage = [VOTSharedWorkspace selectedLanguage];

    if (selectedLanguage)
    {
      v15 = +[AXLanguageManager sharedInstance];
      selectedLanguage2 = [VOTSharedWorkspace selectedLanguage];
      currentLanguageMap = [v15 dialectForLanguageID:selectedLanguage2];
    }

    else
    {
      v15 = +[VOTOutputManager outputManager];
      currentLanguageMap = [v15 currentLanguageMap];
    }

    selectedLanguage3 = [VOTSharedWorkspace selectedLanguage];
    v18 = selectedLanguage3;
    if (selectedLanguage3)
    {
      systemSpokenLanguage = selectedLanguage3;
    }

    else
    {
      systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    }
  }

  v130 = +[AXLanguageManager sharedInstance];
  v145 = currentLanguageMap;
  specificLanguageID = [currentLanguageMap specificLanguageID];
  v128 = sub_1000379BC(specificLanguageID);
  v126 = sub_100037A14();
  v123 = specificLanguageID;
  if ([specificLanguageID hasPrefix:@"he"])
  {
    [v129 removeCharactersInString:@"-"];
  }

  v127 = v10;
  v124 = v8;
  v135 = objc_alloc_init(AXIndexMap);
  if (v11 >= 1)
  {
    v149 = 0;
    v137 = languageCopy;
    v138 = 0;
    BYTE4(v134) = 0;
    v20 = 0;
    v21 = 0;
    v22 = currentLanguageMap;
    v132 = v11;
    while (1)
    {
      v146 = v20;
      v23 = [languageCopy rangeOfComposedCharacterSequenceAtIndex:v21];
      v20 = [languageCopy substringWithRange:{v23, v24}];
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
      if ((sub_1000511D4(v22, systemSpokenLanguage, v20) & 1) != 0 || (v29 & 1) != 0 || v31)
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
              v39 = [languageCopy characterAtIndex:v37];
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
              v141 = [languageCopy substringWithRange:{v138, v150 - v138}];
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
          languageRotorItems = [VOTSharedWorkspace languageRotorItems];
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v36 = languageRotorItems;
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
            languageCopy = v137;
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
      if ((v32 | v55) & 1) == 0 && (AXLanguageIsSpeakableEmojiString() & 1) == 0 && !sub_100051A24(v150, languageCopy) || ([v131 characterIsMember:v151])
      {
        v59 = +[NSMutableArray array];
        languageRotorItems2 = [VOTSharedWorkspace languageRotorItems];
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v61 = languageRotorItems2;
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
              bOOLValue = [v67 BOOLValue];

              if (bOOLValue)
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

        firstObject = v140;

        if (!(hintCopy | v140))
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
                  langMap = [v78 langMap];
                  if (![langMap isWestern])
                  {
                    goto LABEL_131;
                  }

                  v80 = v73;
                  langMap2 = [v145 langMap];
                  if (![langMap2 isWestern] || v150 <= 0)
                  {

                    v73 = v80;
LABEL_131:

LABEL_132:
                    firstObject = v78;
LABEL_133:

LABEL_134:
                    v22 = v145;

                    if (!firstObject)
                    {
                      goto LABEL_167;
                    }

LABEL_135:
                    specificLanguageID2 = [firstObject specificLanguageID];
                    if ([v149 isEqualToString:specificLanguageID2])
                    {
                      v21 = v138;
                      goto LABEL_163;
                    }

                    if (v149)
                    {
                    }

                    else
                    {
                      v97 = [v22 isEqual:firstObject];

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
                    v144 = firstObject;
                    if (v150 <= v138)
                    {
                      goto LABEL_156;
                    }

                    v99 = v150;
                    v100 = v150;
                    while (1)
                    {
                      v101 = [v135 objectForIndex:--v100];
                      bOOLValue2 = [v101 BOOLValue];

                      if (!bOOLValue2)
                      {
                        v21 = v99;
                        v98 = v138;
                        goto LABEL_156;
                      }

                      v152 = [v137 rangeOfComposedCharacterSequenceAtIndex:v100];
                      v103 = [v137 substringWithRange:?];
                      v104 = [v103 characterAtIndex:0];
                      [firstObject speakableCharacters];
                      v106 = v105 = firstObject;
                      if (v106 && ([v105 canSpeakCharacter:v104] & 1) == 0)
                      {
                        v107 = [v105 canSpeakString:v103];

                        if ((v107 & 1) == 0)
                        {

                          v21 = v99;
                          v98 = v138;
                          firstObject = v144;
LABEL_156:
                          if (v21 == v98)
                          {
                            v22 = v145;
                            goto LABEL_164;
                          }

                          specificLanguageID2 = [v137 substringWithRange:?];
                          v172[0] = specificLanguageID2;
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

                          firstObject = v144;
LABEL_163:

                          v138 = v21;
LABEL_164:
                          v21 = v150;
LABEL_165:
                          if (([firstObject isEqual:v22] & 1) == 0)
                          {
                            specificLanguageID3 = [firstObject specificLanguageID];

                            v149 = specificLanguageID3;
LABEL_167:
                            v21 = v150;
                          }

LABEL_168:

                          v20 = v139;
LABEL_169:

                          v27 = firstObject;
                          languageCopy = v137;
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
                      firstObject = v144;
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

          firstObject = 0;
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
                langMap3 = [v89 langMap];
                generalLanguageID = [langMap3 generalLanguageID];
                if ([generalLanguageID isEqual:hintCopy])
                {

                  v73 = v90;
LABEL_152:
                  firstObject = v89;

                  if (firstObject)
                  {
                    goto LABEL_134;
                  }

LABEL_153:
                  firstObject = [v73 firstObject];
                  goto LABEL_134;
                }

                specificLanguageID4 = [v89 specificLanguageID];
                v94 = [specificLanguageID4 isEqualToString:hintCopy];

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
        firstObject = v140;
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
        v59 = [languageCopy substringWithRange:{v138, v150 - v138}];
        v176[0] = @"string";
        v176[1] = @"skipsUnpronounceable";
        v177[0] = v59;
        v177[1] = &__kCFBooleanTrue;
        v61 = [NSDictionary dictionaryWithObjects:v177 forKeys:v176 count:2];
        [v127 addObject:v61];
        v149 = 0;
        v138 = v150;
        firstObject = v140;
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
    v112 = hintCopy;
    if (v11 == 1)
    {
      v113 = sub_100051298([languageCopy characterAtIndex:0]);
      if (!hintCopy && v113)
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
      v116 = [languageCopy substringWithRange:{v138, v11 - v138}];
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
    v112 = hintCopy;
  }

  v119 = v127;

  return v127;
}

- (void)addPause:(float)pause
{
  v7 = [objc_allocWithZone(VOTOutputAction) initWithString:&stru_1001CBF90];
  *&v5 = pause;
  v6 = [NSNumber numberWithFloat:v5];
  [v7 setObject:v6 forVariant:38];

  [v7 setOutputRequest:self];
  [(NSMutableArray *)self->_outputActions addObject:v7];
}

- (id)addString:(id)string brailleString:(id)brailleString breakWords:(BOOL)words withLanguage:(id)language atIndex:(int64_t)index category:(id)category
{
  wordsCopy = words;
  stringCopy = string;
  brailleStringCopy = brailleString;
  languageCopy = language;
  categoryCopy = category;
  if (!stringCopy)
  {
    v23 = 0;
    goto LABEL_43;
  }

  if (languageCopy)
  {
    goto LABEL_8;
  }

  v18 = objc_opt_class();
  keyboardLanguageHint = [(VOTOutputRequest *)self keyboardLanguageHint];
  v20 = [v18 stringShouldSeparateDueToLanguage:stringCopy language:0 keyboardLanguageHint:keyboardLanguageHint];

  v21 = [AXOutputRequest processStringsAndLanguages:v20 brailleString:brailleStringCopy breakWords:wordsCopy withLanguage:0 atIndex:index category:categoryCopy];
  v22 = v21;
  if (!v21 || ![v21 count])
  {

LABEL_8:
    if (self->_sendsToDisplay)
    {
      v24 = [objc_allocWithZone(VOTOutputAction) initWithTextDisplay:stringCopy];
      [v24 setOutputRequest:self];
      [v24 setObject:categoryCopy forVariant:86];
      v25 = [NSNumber numberWithInteger:self->_textDisplayDirection];
      [v24 setObject:v25 forVariant:11];
      v26 = [(NSMutableArray *)self->_outputActions count];
      outputActions = self->_outputActions;
      if (v26 <= index)
      {
        [(NSMutableArray *)outputActions addObject:v24];
      }

      else
      {
        [(NSMutableArray *)outputActions insertObject:v24 atIndex:index];
      }
    }

    else
    {
      v24 = 0;
    }

    if ([stringCopy length] >= 0x3E9 && wordsCopy)
    {
      v41 = brailleStringCopy;
      v28 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v23 = objc_opt_new();
      if ([stringCopy length] < 0x3E9)
      {
LABEL_34:
        v32 = v24;
      }

      else
      {
        v29 = stringCopy;
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
                stringCopy = v29;
                goto LABEL_34;
              }

              break;
            }
          }

          v31 = [v29 substringToIndex:v30];
          v32 = [objc_allocWithZone(VOTOutputAction) initWithString:v31];

          [v32 setObject:categoryCopy forVariant:86];
          [v32 setOutputRequest:self];
          [v32 setWasDivided:1];
          [v32 setObject:languageCopy forVariant:15];
          [(NSMutableArray *)self->_outputActions addObject:v32];
          [v23 addObject:v32];
          v33 = v30 + 1;
          if (v33 >= [v29 length])
          {

            stringCopy = v29;
          }

          else
          {
            stringCopy = [v29 substringFromIndex:v33];

            v29 = stringCopy;
            v24 = v32;
            if ([stringCopy length] > 0x3E8)
            {
              continue;
            }
          }

          break;
        }
      }

      if ([stringCopy length])
      {
        v34 = [objc_allocWithZone(VOTOutputAction) initWithString:stringCopy];

        [v34 setObject:categoryCopy forVariant:86];
        [v34 setOutputRequest:self];
        [v34 setWasDivided:1];
        if ([languageCopy length])
        {
          [v34 setObject:languageCopy forVariant:15];
        }

        [(NSMutableArray *)self->_outputActions addObject:v34];
        [v23 addObject:v34];
      }

      else
      {
        v34 = v32;
      }

      brailleStringCopy = v41;
    }

    else
    {
      v34 = [objc_allocWithZone(VOTOutputAction) initWithString:stringCopy brailleString:brailleStringCopy];

      [v34 setObject:categoryCopy forVariant:86];
      if ([languageCopy length])
      {
        v35 = languageCopy;
      }

      else
      {
        v35 = 0;
      }

      [v34 setObject:v35 forVariant:15];
      applicationForCurrentElement = [VOTSharedWorkspace applicationForCurrentElement];
      bundleIdentifier = [applicationForCurrentElement bundleIdentifier];
      [v34 setObject:bundleIdentifier forVariant:43];

      [v34 setOutputRequest:self];
      v38 = [(NSMutableArray *)self->_outputActions count];
      v39 = self->_outputActions;
      if (v38 <= index)
      {
        [(NSMutableArray *)v39 addObject:v34];
      }

      else
      {
        [(NSMutableArray *)v39 insertObject:v34 atIndex:index];
      }

      v42 = v34;
      v23 = [NSArray arrayWithObjects:&v42 count:1];
    }

    goto LABEL_42;
  }

  v23 = [(VOTOutputRequest *)self _addAXOutputActions:v22 atIndex:index];

LABEL_42:
LABEL_43:

  return v23;
}

- (void)addSound:(id)sound
{
  soundCopy = sound;
  v5 = [objc_allocWithZone(VOTOutputAction) initWithSoundPath:soundCopy];

  [v5 setOutputRequest:self];
  [(NSMutableArray *)self->_outputActions addObject:v5];
}

- (void)addNotificationEvent:(unsigned int)event forDelegate:(id)delegate
{
  if (delegate)
  {
    outputActions = self->_outputActions;
    delegateCopy = delegate;
    lastObject = [(NSMutableArray *)outputActions lastObject];
    [lastObject setObject:delegateCopy forVariant:event];
  }
}

- (void)setCannotBeInterrupted:(BOOL)interrupted
{
  self->_cannotBeInterrupted = interrupted;
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
  selfCopy = self;
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
        string = [v9 string];

        if (string)
        {
          string2 = [v9 string];
          [v3 appendFormat:@"'%@'", string2];
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
  if (selfCopy->_cannotBeInterrupted)
  {
    [v12 addObject:@"Cannot be interrupted"];
  }

  if (selfCopy->_doesNotInterrupt)
  {
    [v13 addObject:@"Does not interrupt"];
  }

  if (selfCopy->_interruptsEverything)
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
  combinedActionString = [(VOTOutputRequest *)self combinedActionString];
  if (combinedActionString)
  {
    [v3 setObject:combinedActionString forKeyedSubscript:@"combinedActionString"];
  }

  combinedOriginalString = [(VOTOutputRequest *)self combinedOriginalString];
  if (combinedOriginalString)
  {
    [v3 setObject:combinedOriginalString forKeyedSubscript:@"combinedOriginalString"];
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

- (void)addTVElement:(id)element servesAsHeader:(BOOL)header filterWithAspectMask:(BOOL)mask
{
  maskCopy = mask;
  elementCopy = element;
  if (header || (v8 = [elementCopy traits], (kAXHeaderTrait & v8) != 0))
  {
    if (maskCopy && ([elementCopy aspectMask] & 1) == 0 || (v9 = [AXAttributedString alloc], objc_msgSend(elementCopy, "label"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "initWithString:", v10), v10, v12 = AXUIAccessibilitySpeechAttributePitch, objc_msgSend(v11, "setAttribute:forKey:", &off_1001D9980, AXUIAccessibilitySpeechAttributePitch), objc_msgSend(elementCopy, "language"), v13 = objc_claimAutoreleasedReturnValue(), v14 = -[VOTOutputRequest addAttributedString:withLanguage:](self, "addAttributedString:withLanguage:", v11, v13), v13, v11, maskCopy))
    {
      if (([elementCopy aspectMask] & 2) == 0)
      {
        goto LABEL_11;
      }

      v12 = AXUIAccessibilitySpeechAttributePitch;
    }

    v15 = [AXAttributedString alloc];
    value = [elementCopy value];
    label = [v15 initWithString:value];

    [label setAttribute:&off_1001D9980 forKey:v12];
    language = [elementCopy language];
    v19 = [(VOTOutputRequest *)self addAttributedString:label withLanguage:language];
  }

  else
  {
    if (maskCopy)
    {
      v20 = 17827842;
    }

    else
    {
      v20 = 16779266;
    }

    [elementCopy addTextualInformationToRequest:self options:v20 dataPackage:0];
    if (![elementCopy doesHaveTraits:kAXKeyboardKeyTrait] || !objc_msgSend(elementCopy, "aspectMask"))
    {
      goto LABEL_11;
    }

    label = [elementCopy label];
    if ([label length] != 1)
    {
      goto LABEL_10;
    }

    language = sub_100052450(label, 0, 0);
    if ([language length])
    {
      LODWORD(v21) = 0.75;
      [(VOTOutputRequest *)self addPause:v21];
      v22 = [(VOTOutputRequest *)self addString:language];
    }
  }

LABEL_10:
LABEL_11:

  _objc_release_x1();
}

@end