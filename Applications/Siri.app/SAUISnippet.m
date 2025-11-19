@interface SAUISnippet
- (id)_callHistoryRowsForCalls:(id)a3 callOperation:(id)a4;
- (id)_searchCallHistoryIntentForVoicemail:(BOOL)a3;
- (id)_searchCallHistoryIntentResponseForCallRecords:(id)a3;
- (void)sr_applySnippetProperties:(id)a3;
@end

@implementation SAUISnippet

- (id)_callHistoryRowsForCalls:(id)a3 callOperation:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  obj = v5;
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
        v11 = [v9 callTime];
        if ([v11 _isToday])
        {
          v12 = @"TODAY";
LABEL_10:
          v13 = sub_100078408(v12);
          goto LABEL_15;
        }

        if ([v11 _isYesterday])
        {
          v12 = @"YESTERDAY";
          goto LABEL_10;
        }

        if ([v11 _isWithinTheLastTimePeriodInDays:7])
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
        v13 = [v24 stringFromDate:v11];
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
        v21 = [v20 UUIDString];
        [v10 setCardSectionId:v21];

        if (v6)
        {
          v6[2](v6, v9, v10);
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

- (id)_searchCallHistoryIntentForVoicemail:(BOOL)a3
{
  v3 = a3;
  v4 = [INSearchCallHistoryIntent alloc];
  if (v3)
  {
    v5 = 16;
  }

  else
  {
    v5 = 15;
  }

  v6 = [v4 initWithDateCreated:0 recipient:0 callCapabilities:3 callTypes:v5 unseen:0];
  v7 = [v6 backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = objc_alloc_init(_INPBIntentMetadata);
    [v9 setLaunchId:@"com.apple.mobilephone"];
    [v8 setIntentMetadata:v9];
    [v6 setBackingStore:v8];
  }

  return v6;
}

- (id)_searchCallHistoryIntentResponseForCallRecords:(id)a3
{
  v3 = a3;
  v4 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:7 userActivity:0];
  [v4 setCallRecords:v3];

  return v4;
}

- (void)sr_applySnippetProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 aceId];
  [(SAUISnippet *)self setAceId:v5];

  v6 = [v4 refId];
  [(SAUISnippet *)self setRefId:v6];

  -[SAUISnippet setCanBeRefreshed:](self, "setCanBeRefreshed:", [v4 canBeRefreshed]);
  v7 = [v4 speakableContextInfo];
  [(SAUISnippet *)self setSpeakableContextInfo:v7];

  v8 = [v4 context];
  [(SAUISnippet *)self setContext:v8];

  v9 = [v4 deferredRendering];
  [(SAUISnippet *)self setDeferredRendering:v9];

  v10 = [v4 listenAfterSpeaking];
  [(SAUISnippet *)self setListenAfterSpeaking:v10];

  v11 = [v4 speakableText];
  [(SAUISnippet *)self setSpeakableText:v11];

  v12 = [v4 viewId];
  [(SAUISnippet *)self setViewId:v12];

  v13 = [v4 confirmationOptions];
  [(SAUISnippet *)self setConfirmationOptions:v13];

  v14 = [v4 title];
  [(SAUISnippet *)self setTitle:v14];

  v15 = [v4 subtitle];
  [(SAUISnippet *)self setSubtitle:v15];

  v16 = [v4 summaryTitle];

  [(SAUISnippet *)self setSummaryTitle:v16];
}

@end