@interface ICCreateNoteIntentHandler
- (ICCreateNoteIntentHandler)init;
- (ICNAEventReporter)eventReporter;
- (void)dealloc;
- (void)handleCreateNote:(id)a3 completion:(id)a4;
- (void)provideGroupNameOptionsForCreateNote:(id)a3 withCompletion:(id)a4;
- (void)resolveContentForCreateNote:(id)a3 withCompletion:(id)a4;
- (void)resolveGroupNameForCreateNote:(id)a3 withCompletion:(id)a4;
- (void)resolveTitleForCreateNote:(id)a3 withCompletion:(id)a4;
@end

@implementation ICCreateNoteIntentHandler

- (ICCreateNoteIntentHandler)init
{
  v6.receiver = self;
  v6.super_class = ICCreateNoteIntentHandler;
  v2 = [(ICBaseIntentHandler *)&v6 init];
  v3 = [(ICBaseIntentHandler *)v2 noteContext];
  [v3 enableHTMLContextChangeLogging];

  v4 = +[ICNAController sharedController];
  [v4 startAppSession];

  return v2;
}

- (void)dealloc
{
  v3 = +[ICNAController sharedController];
  [v3 appSessionDidTerminate];

  v4.receiver = self;
  v4.super_class = ICCreateNoteIntentHandler;
  [(ICCreateNoteIntentHandler *)&v4 dealloc];
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = [v3 initWithSubTrackerName:kICNASubtrackerNameCreateNoteIntentHandler];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v4;
  }

  v6 = self->_eventReporter;

  return v6;
}

- (void)provideGroupNameOptionsForCreateNote:(id)a3 withCompletion:(id)a4
{
  v28 = a4;
  v5 = [(ICBaseIntentHandler *)self noteContext];
  v6 = [v5 modernManagedObjectContext];
  v7 = [(ICBaseIntentHandler *)self noteContext];
  v8 = [v7 htmlManagedObjectContext];
  v9 = [NotesAssistantUtilities folderOptionsForModernContext:v6 htmlContext:v8];

  v10 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 managedObjectID];
        v17 = [v16 URIRepresentation];

        v18 = [v15 accountIdentifier];

        if (v18)
        {
          v19 = [[NSURLComponents alloc] initWithURL:v17 resolvingAgainstBaseURL:0];
          v20 = [v15 accountIdentifier];
          v21 = [NSURLQueryItem queryItemWithName:@"accountIdentifier" value:v20];
          v34 = v21;
          v22 = [NSArray arrayWithObjects:&v34 count:1];
          [v19 setQueryItems:v22];

          v23 = [v19 URL];

          v17 = v23;
        }

        v24 = [INSpeakableString alloc];
        v25 = [v17 absoluteString];
        v26 = [v15 fullTitle];
        v27 = [v24 initWithVocabularyIdentifier:v25 spokenPhrase:v26 pronunciationHint:0];

        [v10 addObject:v27];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v28[2](v28, v10, 0);
}

- (void)resolveTitleForCreateNote:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v9 = [a3 title];
  v6 = [v9 spokenPhrase];
  v7 = [v6 length];

  if (v7)
  {
    [INSpeakableStringResolutionResult successWithResolvedString:v9];
  }

  else
  {
    +[INSpeakableStringResolutionResult notRequired];
  }
  v8 = ;
  v5[2](v5, v8);
}

- (void)resolveContentForCreateNote:(id)a3 withCompletion:(id)a4
{
  v14 = a4;
  v5 = a3;
  v6 = [v5 title];
  v7 = [v5 content];

  objc_opt_class();
  v8 = ICDynamicCast();
  v9 = [v6 spokenPhrase];
  v10 = [v9 length];

  v11 = [v8 text];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [INNoteContentResolutionResult successWithResolvedNoteContent:v8];
    v14[2](v14, v13);
  }

  else
  {
    if (v10)
    {
      +[INNoteContentResolutionResult notRequired];
    }

    else
    {
      +[INNoteContentResolutionResult needsValue];
    }
    v13 = ;
    v14[2](v14, v13);
  }
}

- (void)resolveGroupNameForCreateNote:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 groupName];

  if (v6)
  {
    v7 = [v9 groupName];
    v8 = [INSpeakableStringResolutionResult successWithResolvedString:v7];
    v5[2](v5, v8);

    v5 = v8;
  }

  else
  {
    v7 = +[INSpeakableStringResolutionResult notRequired];
    v5[2](v5, v7);
  }
}

- (void)handleCreateNote:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ICNAController sharedController];
  v9 = [NSURL URLWithString:kICNAIntentsExtensionReferralURL];
  [v8 startSessionWithReferralURL:v9 referralApplication:0];

  objc_opt_class();
  v10 = [v6 content];
  v11 = ICDynamicCast();
  v12 = [v11 text];

  v13 = [v6 groupName];

  if (v13)
  {
    v14 = [v6 groupName];
    v15 = [(ICBaseIntentHandler *)self noteContext];
    v16 = [v15 modernManagedObjectContext];
    v17 = [(ICBaseIntentHandler *)self noteContext];
    v18 = [v17 htmlManagedObjectContext];
    v34 = [NotesAssistantUtilities folderForGroupName:v14 withNoteContext:v16 htmlNoteContext:v18];
  }

  else
  {
    v34 = 0;
  }

  v19 = [ICCreateNoteAction alloc];
  v20 = [(ICBaseIntentHandler *)self noteContext];
  v21 = [v19 initWithNoteContext:v20];

  if (v12)
  {
    v22 = [[NSAttributedString alloc] initWithString:v12];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v6 title];
  v24 = [v23 spokenPhrase];
  v44 = 0;
  v25 = [v21 performWithTitle:v24 contents:v22 pinned:0 container:v34 error:&v44];
  v26 = v44;

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100003E14;
  v42 = sub_100003E24;
  v43 = 0;
  if (v25)
  {
    v27 = [v25 managedObjectContext];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100003E2C;
    v35[3] = &unk_100020790;
    v35[4] = self;
    v28 = v25;
    v36 = v28;
    v37 = &v38;
    [v27 performBlockAndWait:v35];

    if ([v28 isModernNote])
    {
      v29 = +[ICSharingExtensionAttachmentsManager sharedManager];
      [v29 completeExtensionRequestInBackground];
    }
  }

  else
  {
    if (v26)
    {
      v30 = os_log_create("com.apple.notes", "Intents");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100012CC4(v26, v30);
      }
    }

    v31 = [[INCreateNoteIntentResponse alloc] initWithCode:4 userActivity:0];
    v32 = v39[5];
    v39[5] = v31;
  }

  v7[2](v7, v39[5]);
  v33 = +[ICNAController sharedController];
  [v33 endSessionSynchronously:0 endReason:7];

  _Block_object_dispose(&v38, 8);
}

@end