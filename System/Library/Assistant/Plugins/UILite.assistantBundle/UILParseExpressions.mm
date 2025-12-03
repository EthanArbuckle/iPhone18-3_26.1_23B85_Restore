@interface UILParseExpressions
- (void)performWithCompletion:(id)completion;
@end

@implementation UILParseExpressions

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_24;
  }

  v47 = completionCopy;
  v6 = [AFClientPluginManager clientPluginManagerWithFactoryInitializationBlock:0];
  v7 = [AFSpeakableUtteranceParser alloc];
  v8 = [NSLocale alloc];
  v9 = +[AFPreferences sharedPreferences];
  languageCode = [v9 languageCode];
  v11 = [v8 initWithLocaleIdentifier:languageCode];
  v12 = [v7 initWithLocale:v11];

  v52 = v12;
  [v12 setHandleTTSCodes:1];
  v54 = objc_alloc_init(NSMutableArray);
  v50 = objc_alloc_init(NSMutableDictionary);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  selfCopy = self;
  obj = [(UILParseExpressions *)self expressions];
  v13 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = *v57;
  v51 = _AFSpeakableUtteranceParserObjDomain;
  v48 = SASmsSmsDeferredMessageKeyValue;
  v49 = v6;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v57 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v56 + 1) + 8 * i);
      context = [v17 context];
      v19 = [v6 speakableNamespaceProviderForAceObject:context];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v52 registerProvider:v19 forNamespace:v51];
        expressionString = [v17 expressionString];
        v55 = 0;
        identifier = [v52 parseStringWithFormat:expressionString error:&v55];
        v27 = v55;
        if (v27)
        {
          v28 = v27;
          aceId = [v17 aceId];
          [v50 setObject:v28 forKey:aceId];

LABEL_16:
          goto LABEL_17;
        }

        aceId = objc_alloc_init(SAUILParsedExpression);
        v35 = +[NSUUID UUID];
        uUIDString = [v35 UUIDString];
        [aceId setAceId:uUIDString];

        v6 = v49;
        [aceId setParseableExpression:v17];
        [aceId setParsedOutput:identifier];
LABEL_15:
        [v54 addObject:aceId];
        goto LABEL_16;
      }

      context2 = [v17 context];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        context3 = [v17 context];
        objc_opt_class();
        v31 = objc_opt_isKindOfClass();

        if ((v31 & 1) == 0)
        {
          goto LABEL_18;
        }

        expressionString = [v17 context];
        identifier = [expressionString identifier];
        aceId = objc_alloc_init(SAUILParsedAttachmentExpression);
        v32 = +[NSUUID UUID];
        uUIDString2 = [v32 UUIDString];
        [aceId setAceId:uUIDString2];

        v6 = v49;
        [aceId setParseableExpression:v17];
        v34 = [NSData dataWithContentsOfURL:identifier];
        [aceId setAttachment:v34];

        goto LABEL_15;
      }

      expressionString = [v19 attachmentURLForExpression:v48];
      identifier = objc_alloc_init(SAUILParsedAttachmentExpression);
      v24 = +[NSUUID UUID];
      uUIDString3 = [v24 UUIDString];
      [identifier setAceId:uUIDString3];

      [identifier setParseableExpression:v17];
      v26 = [NSData dataWithContentsOfURL:expressionString];
      [identifier setAttachment:v26];

      [v54 addObject:identifier];
LABEL_17:

LABEL_18:
    }

    v14 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  }

  while (v14);
LABEL_20:

  if ([v54 count])
  {
    v37 = objc_alloc_init(SAUILParseExpressionsCompleted);
    v38 = [v54 copy];
    [v37 setParsedExpressions:v38];
    v39 = selfCopy;
    v5 = v47;
    v40 = v50;
  }

  else
  {
    v41 = [SACommandFailed alloc];
    v40 = v50;
    v38 = [NSString stringWithFormat:@"No expressions were successfully parsed. Errors: %@", v50];
    v37 = [v41 initWithReason:v38];
    v39 = selfCopy;
    v5 = v47;
  }

  v42 = +[NSUUID UUID];
  uUIDString4 = [v42 UUIDString];
  [v37 setAceId:uUIDString4];

  aceId2 = [(UILParseExpressions *)v39 aceId];
  [v37 setRefId:aceId2];

  dictionary = [v37 dictionary];
  (v5)[2](v5, dictionary);

LABEL_24:
}

@end