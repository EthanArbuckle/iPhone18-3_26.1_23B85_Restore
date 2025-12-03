@interface SAUISnippet
- (id)_callHistoryRowsForCalls:(id)calls callOperation:(id)operation;
- (id)_searchCallHistoryIntentForVoicemail:(BOOL)voicemail;
- (id)_searchCallHistoryIntentResponseForCallRecords:(id)records;
- (void)sr_applySnippetProperties:(id)properties;
@end

@implementation SAUISnippet

- (id)_callHistoryRowsForCalls:(id)calls callOperation:(id)operation
{
  callsCopy = calls;
  operationCopy = operation;
  v27 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setFormattingContext:3];
  [v7 setDateStyle:1];
  v24 = v7;
  [v7 setTimeStyle:0];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = callsCopy;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v28)
  {
    v26 = *v30;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = objc_alloc_init(SFRowCardSection);
        callTime = [v9 callTime];
        if ([callTime _isToday])
        {
          v12 = @"TODAY";
LABEL_10:
          v13 = sub_100078408(v12);
          goto LABEL_15;
        }

        if ([callTime _isYesterday])
        {
          v12 = @"YESTERDAY";
          goto LABEL_10;
        }

        if ([callTime _isWithinTheLastTimePeriodInDays:7])
        {
          v14 = v24;
          v15 = @"EEEE";
        }

        else
        {
          v14 = v24;
          v15 = 0;
        }

        [v14 setDateFormat:v15];
        v13 = [v24 stringFromDate:callTime];
LABEL_15:
        v16 = v13;
        v17 = objc_alloc_init(SFRichText);
        v18 = objc_alloc_init(SFFormattedText);
        [v18 setText:v16];
        [v18 setTextColor:0];
        v33 = v18;
        v19 = [NSArray arrayWithObjects:&v33 count:1];
        [v17 setFormattedTextPieces:v19];

        [v10 setTrailingText:v17];
        v20 = +[NSUUID UUID];
        uUIDString = [v20 UUIDString];
        [v10 setCardSectionId:uUIDString];

        if (operationCopy)
        {
          operationCopy[2](operationCopy, v9, v10);
        }

        [v27 addObject:v10];
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v28);
  }

  v22 = [v27 copy];

  return v22;
}

- (id)_searchCallHistoryIntentForVoicemail:(BOOL)voicemail
{
  voicemailCopy = voicemail;
  v4 = [INSearchCallHistoryIntent alloc];
  if (voicemailCopy)
  {
    v5 = 16;
  }

  else
  {
    v5 = 15;
  }

  v6 = [v4 initWithDateCreated:0 recipient:0 callCapabilities:3 callTypes:v5 unseen:0];
  backingStore = [v6 backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = backingStore;
    v9 = objc_alloc_init(_INPBIntentMetadata);
    [v9 setLaunchId:@"com.apple.mobilephone"];
    [v8 setIntentMetadata:v9];
    [v6 setBackingStore:v8];
  }

  return v6;
}

- (id)_searchCallHistoryIntentResponseForCallRecords:(id)records
{
  recordsCopy = records;
  v4 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:7 userActivity:0];
  [v4 setCallRecords:recordsCopy];

  return v4;
}

- (void)sr_applySnippetProperties:(id)properties
{
  propertiesCopy = properties;
  aceId = [propertiesCopy aceId];
  [(SAUISnippet *)self setAceId:aceId];

  refId = [propertiesCopy refId];
  [(SAUISnippet *)self setRefId:refId];

  -[SAUISnippet setCanBeRefreshed:](self, "setCanBeRefreshed:", [propertiesCopy canBeRefreshed]);
  speakableContextInfo = [propertiesCopy speakableContextInfo];
  [(SAUISnippet *)self setSpeakableContextInfo:speakableContextInfo];

  context = [propertiesCopy context];
  [(SAUISnippet *)self setContext:context];

  deferredRendering = [propertiesCopy deferredRendering];
  [(SAUISnippet *)self setDeferredRendering:deferredRendering];

  listenAfterSpeaking = [propertiesCopy listenAfterSpeaking];
  [(SAUISnippet *)self setListenAfterSpeaking:listenAfterSpeaking];

  speakableText = [propertiesCopy speakableText];
  [(SAUISnippet *)self setSpeakableText:speakableText];

  viewId = [propertiesCopy viewId];
  [(SAUISnippet *)self setViewId:viewId];

  confirmationOptions = [propertiesCopy confirmationOptions];
  [(SAUISnippet *)self setConfirmationOptions:confirmationOptions];

  title = [propertiesCopy title];
  [(SAUISnippet *)self setTitle:title];

  subtitle = [propertiesCopy subtitle];
  [(SAUISnippet *)self setSubtitle:subtitle];

  summaryTitle = [propertiesCopy summaryTitle];

  [(SAUISnippet *)self setSummaryTitle:summaryTitle];
}

@end