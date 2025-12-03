@interface ICCreateNoteIntentHandler
- (ICCreateNoteIntentHandler)init;
- (ICNAEventReporter)eventReporter;
- (void)dealloc;
- (void)handleCreateNote:(id)note completion:(id)completion;
- (void)provideGroupNameOptionsForCreateNote:(id)note withCompletion:(id)completion;
- (void)resolveContentForCreateNote:(id)note withCompletion:(id)completion;
- (void)resolveGroupNameForCreateNote:(id)note withCompletion:(id)completion;
- (void)resolveTitleForCreateNote:(id)note withCompletion:(id)completion;
@end

@implementation ICCreateNoteIntentHandler

- (ICCreateNoteIntentHandler)init
{
  v6.receiver = self;
  v6.super_class = ICCreateNoteIntentHandler;
  v2 = [(ICBaseIntentHandler *)&v6 init];
  noteContext = [(ICBaseIntentHandler *)v2 noteContext];
  [noteContext enableHTMLContextChangeLogging];

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

- (void)provideGroupNameOptionsForCreateNote:(id)note withCompletion:(id)completion
{
  completionCopy = completion;
  noteContext = [(ICBaseIntentHandler *)self noteContext];
  modernManagedObjectContext = [noteContext modernManagedObjectContext];
  noteContext2 = [(ICBaseIntentHandler *)self noteContext];
  htmlManagedObjectContext = [noteContext2 htmlManagedObjectContext];
  v9 = [NotesAssistantUtilities folderOptionsForModernContext:modernManagedObjectContext htmlContext:htmlManagedObjectContext];

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
        managedObjectID = [v15 managedObjectID];
        uRIRepresentation = [managedObjectID URIRepresentation];

        accountIdentifier = [v15 accountIdentifier];

        if (accountIdentifier)
        {
          v19 = [[NSURLComponents alloc] initWithURL:uRIRepresentation resolvingAgainstBaseURL:0];
          accountIdentifier2 = [v15 accountIdentifier];
          v21 = [NSURLQueryItem queryItemWithName:@"accountIdentifier" value:accountIdentifier2];
          v34 = v21;
          v22 = [NSArray arrayWithObjects:&v34 count:1];
          [v19 setQueryItems:v22];

          v23 = [v19 URL];

          uRIRepresentation = v23;
        }

        v24 = [INSpeakableString alloc];
        absoluteString = [uRIRepresentation absoluteString];
        fullTitle = [v15 fullTitle];
        v27 = [v24 initWithVocabularyIdentifier:absoluteString spokenPhrase:fullTitle pronunciationHint:0];

        [v10 addObject:v27];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  completionCopy[2](completionCopy, v10, 0);
}

- (void)resolveTitleForCreateNote:(id)note withCompletion:(id)completion
{
  completionCopy = completion;
  title = [note title];
  spokenPhrase = [title spokenPhrase];
  v7 = [spokenPhrase length];

  if (v7)
  {
    [INSpeakableStringResolutionResult successWithResolvedString:title];
  }

  else
  {
    +[INSpeakableStringResolutionResult notRequired];
  }
  v8 = ;
  completionCopy[2](completionCopy, v8);
}

- (void)resolveContentForCreateNote:(id)note withCompletion:(id)completion
{
  completionCopy = completion;
  noteCopy = note;
  title = [noteCopy title];
  content = [noteCopy content];

  objc_opt_class();
  v8 = ICDynamicCast();
  spokenPhrase = [title spokenPhrase];
  v10 = [spokenPhrase length];

  text = [v8 text];
  v12 = [text length];

  if (v12)
  {
    v13 = [INNoteContentResolutionResult successWithResolvedNoteContent:v8];
    completionCopy[2](completionCopy, v13);
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
    completionCopy[2](completionCopy, v13);
  }
}

- (void)resolveGroupNameForCreateNote:(id)note withCompletion:(id)completion
{
  noteCopy = note;
  completionCopy = completion;
  groupName = [noteCopy groupName];

  if (groupName)
  {
    groupName2 = [noteCopy groupName];
    v8 = [INSpeakableStringResolutionResult successWithResolvedString:groupName2];
    completionCopy[2](completionCopy, v8);

    completionCopy = v8;
  }

  else
  {
    groupName2 = +[INSpeakableStringResolutionResult notRequired];
    completionCopy[2](completionCopy, groupName2);
  }
}

- (void)handleCreateNote:(id)note completion:(id)completion
{
  noteCopy = note;
  completionCopy = completion;
  v8 = +[ICNAController sharedController];
  v9 = [NSURL URLWithString:kICNAIntentsExtensionReferralURL];
  [v8 startSessionWithReferralURL:v9 referralApplication:0];

  objc_opt_class();
  content = [noteCopy content];
  v11 = ICDynamicCast();
  text = [v11 text];

  groupName = [noteCopy groupName];

  if (groupName)
  {
    groupName2 = [noteCopy groupName];
    noteContext = [(ICBaseIntentHandler *)self noteContext];
    modernManagedObjectContext = [noteContext modernManagedObjectContext];
    noteContext2 = [(ICBaseIntentHandler *)self noteContext];
    htmlManagedObjectContext = [noteContext2 htmlManagedObjectContext];
    v34 = [NotesAssistantUtilities folderForGroupName:groupName2 withNoteContext:modernManagedObjectContext htmlNoteContext:htmlManagedObjectContext];
  }

  else
  {
    v34 = 0;
  }

  v19 = [ICCreateNoteAction alloc];
  noteContext3 = [(ICBaseIntentHandler *)self noteContext];
  v21 = [v19 initWithNoteContext:noteContext3];

  if (text)
  {
    v22 = [[NSAttributedString alloc] initWithString:text];
  }

  else
  {
    v22 = 0;
  }

  title = [noteCopy title];
  spokenPhrase = [title spokenPhrase];
  v44 = 0;
  v25 = [v21 performWithTitle:spokenPhrase contents:v22 pinned:0 container:v34 error:&v44];
  v26 = v44;

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100003E14;
  v42 = sub_100003E24;
  v43 = 0;
  if (v25)
  {
    managedObjectContext = [v25 managedObjectContext];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100003E2C;
    v35[3] = &unk_100020790;
    v35[4] = self;
    v28 = v25;
    v36 = v28;
    v37 = &v38;
    [managedObjectContext performBlockAndWait:v35];

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

  completionCopy[2](completionCopy, v39[5]);
  v33 = +[ICNAController sharedController];
  [v33 endSessionSynchronously:0 endReason:7];

  _Block_object_dispose(&v38, 8);
}

@end