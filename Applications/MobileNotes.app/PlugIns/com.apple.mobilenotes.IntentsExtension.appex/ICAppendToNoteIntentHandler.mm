@interface ICAppendToNoteIntentHandler
- (ICAppendToNoteIntentHandler)init;
- (id)findNoteForIntent:(id)intent;
- (id)updateHTMLNote:(id)note withIntent:(id)intent;
- (id)updateModernNote:(id)note withIntent:(id)intent;
- (void)handleAppendToNote:(id)note completion:(id)completion;
- (void)resolveContentForAppendToNote:(id)note withCompletion:(id)completion;
- (void)resolveTargetNoteForAppendToNote:(id)note withCompletion:(id)completion;
@end

@implementation ICAppendToNoteIntentHandler

- (ICAppendToNoteIntentHandler)init
{
  v5.receiver = self;
  v5.super_class = ICAppendToNoteIntentHandler;
  v2 = [(ICBaseIntentHandler *)&v5 init];
  noteContext = [(ICBaseIntentHandler *)v2 noteContext];
  [noteContext enableHTMLContextChangeLogging];

  return v2;
}

- (void)resolveTargetNoteForAppendToNote:(id)note withCompletion:(id)completion
{
  noteCopy = note;
  completionCopy = completion;
  v31 = noteCopy;
  targetNote = [noteCopy targetNote];
  title = [targetNote title];
  spokenPhrase = [title spokenPhrase];

  targetNote2 = [noteCopy targetNote];
  identifier = [targetNote2 identifier];

  if ([spokenPhrase length] || objc_msgSend(identifier, "length"))
  {
    targetNote3 = [noteCopy targetNote];
    v11 = [(ICBaseIntentHandler *)self searchIndexableNoteForIntentNote:targetNote3];

    v12 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v11];
    if (v12)
    {
      v13 = [INNoteResolutionResult successWithResolvedNote:v12];
      completionCopy[2](completionCopy, v13);

      goto LABEL_31;
    }
  }

  v14 = [(ICBaseIntentHandler *)self notesWithTitle:spokenPhrase];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10000B830;
  v49 = sub_10000B840;
  v50 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v15)
  {
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        managedObjectContext = [v18 managedObjectContext];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000B848;
        v38[3] = &unk_100020790;
        v38[4] = v18;
        v39 = spokenPhrase;
        v40 = &v45;
        [managedObjectContext performBlockAndWait:v38];
      }

      v15 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v15);
  }

  if ([v46[5] count] == 1)
  {
    firstObject = [v46[5] firstObject];
    v21 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:firstObject];

    v22 = [INNoteResolutionResult successWithResolvedNote:v21];
    completionCopy[2](completionCopy, v22);
  }

  else if ([obj count] == 1)
  {
    firstObject2 = [obj firstObject];
    v21 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:firstObject2];

    v22 = [INNoteResolutionResult confirmationRequiredWithNoteToConfirm:v21];
    completionCopy[2](completionCopy, v22);
  }

  else
  {
    v21 = objc_alloc_init(NSMutableArray);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = obj;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v51 count:16];
    if (v25)
    {
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:*(*(&v34 + 1) + 8 * j)];
          if (v28)
          {
            [v21 addObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v34 objects:v51 count:16];
      }

      while (v25);
    }

    if ([v21 count])
    {
      [INNoteResolutionResult disambiguationWithNotesToDisambiguate:v21];
    }

    else
    {
      +[INNoteResolutionResult unsupported];
    }
    v22 = ;
    completionCopy[2](completionCopy, v22);
  }

  _Block_object_dispose(&v45, 8);
LABEL_31:
}

- (void)resolveContentForAppendToNote:(id)note withCompletion:(id)completion
{
  completionCopy = completion;
  noteCopy = note;
  objc_opt_class();
  content = [noteCopy content];

  v10 = ICDynamicCast();

  text = [v10 text];
  if ([text length])
  {
    [INNoteContentResolutionResult successWithResolvedNoteContent:v10];
  }

  else
  {
    +[INNoteContentResolutionResult needsValue];
  }
  v9 = ;
  completionCopy[2](completionCopy, v9);
}

- (void)handleAppendToNote:(id)note completion:(id)completion
{
  noteCopy = note;
  completionCopy = completion;
  v7 = [(ICAppendToNoteIntentHandler *)self findNoteForIntent:noteCopy];
  objc_opt_class();
  v8 = ICDynamicCast();
  objc_opt_class();
  v9 = ICDynamicCast();
  v10 = v9;
  if (v8)
  {
    v11 = [(ICAppendToNoteIntentHandler *)self updateModernNote:v8 withIntent:noteCopy];
  }

  else if (v9)
  {
    v11 = [(ICAppendToNoteIntentHandler *)self updateHTMLNote:v9 withIntent:noteCopy];
  }

  else
  {
    v11 = [[INAppendToNoteIntentResponse alloc] initWithCode:4 userActivity:0];
  }

  v12 = v11;
  if ([v11 code] == 3)
  {
    v13 = +[ICWidget sharedWidget];
    [v13 reloadTimelinesWithReason:@"Note was updated via Siri"];
  }

  completionCopy[2](completionCopy, v12);
}

- (id)findNoteForIntent:(id)intent
{
  intentCopy = intent;
  targetNote = [intentCopy targetNote];
  v6 = [(ICBaseIntentHandler *)self searchIndexableNoteForIntentNote:targetNote];

  if (v6)
  {
    firstObject = v6;
  }

  else
  {
    targetNote2 = [intentCopy targetNote];
    title = [targetNote2 title];
    spokenPhrase = [title spokenPhrase];
    v11 = [(ICBaseIntentHandler *)self notesWithTitle:spokenPhrase];

    if ([v11 count] == 1)
    {
      firstObject = [v11 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (id)updateModernNote:(id)note withIntent:(id)intent
{
  noteCopy = note;
  intentCopy = intent;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000B830;
  v34 = sub_10000B840;
  v35 = 0;
  objc_opt_class();
  content = [intentCopy content];
  v9 = ICDynamicCast();

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_10000B830;
  v28[4] = sub_10000B840;
  text = [v9 text];
  managedObjectContext = [noteCopy managedObjectContext];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000BF2C;
  v24[3] = &unk_100020C28;
  v26 = v28;
  v11 = noteCopy;
  v25 = v11;
  v27 = &v30;
  [managedObjectContext performBlockAndWait:v24];

  v12 = v31[5];
  if (v12)
  {
    code = [v12 code];
    v14 = [INAppendToNoteIntentResponse alloc];
    if (code == 206)
    {
      v15 = 6;
    }

    else
    {
      v15 = 4;
    }

    v16 = [v14 initWithCode:v15 userActivity:0];
    v17 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v11 includeContent:0];
    [v16 setNote:v17];
  }

  else
  {
    v18 = [NSUserActivity alloc];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v17 = [v18 initWithActivityType:v20];

    v16 = [[INAppendToNoteIntentResponse alloc] initWithCode:3 userActivity:v17];
    v21 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v11 includeContent:1];
    [v16 setNote:v21];

    v22 = +[ICSharingExtensionAttachmentsManager sharedManager];
    [v22 completeExtensionRequestInBackground];
  }

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

- (id)updateHTMLNote:(id)note withIntent:(id)intent
{
  noteCopy = note;
  intentCopy = intent;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000B830;
  v32 = sub_10000B840;
  v33 = 0;
  objc_opt_class();
  content = [intentCopy content];
  v9 = ICDynamicCast();

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_10000B830;
  v26[4] = sub_10000B840;
  text = [v9 text];
  managedObjectContext = [noteCopy managedObjectContext];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000C358;
  v20[3] = &unk_100020C50;
  v11 = noteCopy;
  v21 = v11;
  v24 = v26;
  v12 = v9;
  v22 = v12;
  selfCopy = self;
  v25 = &v28;
  [managedObjectContext performBlockAndWait:v20];

  if (v29[5])
  {
    v13 = [[INAppendToNoteIntentResponse alloc] initWithCode:4 userActivity:0];
  }

  else
  {
    v14 = [NSUserActivity alloc];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 initWithActivityType:v16];

    v13 = [[INAppendToNoteIntentResponse alloc] initWithCode:3 userActivity:v17];
    v18 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v11 includeContent:1];
    [v13 setNote:v18];
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

@end