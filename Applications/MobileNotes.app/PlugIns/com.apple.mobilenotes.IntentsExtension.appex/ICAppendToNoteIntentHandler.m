@interface ICAppendToNoteIntentHandler
- (ICAppendToNoteIntentHandler)init;
- (id)findNoteForIntent:(id)a3;
- (id)updateHTMLNote:(id)a3 withIntent:(id)a4;
- (id)updateModernNote:(id)a3 withIntent:(id)a4;
- (void)handleAppendToNote:(id)a3 completion:(id)a4;
- (void)resolveContentForAppendToNote:(id)a3 withCompletion:(id)a4;
- (void)resolveTargetNoteForAppendToNote:(id)a3 withCompletion:(id)a4;
@end

@implementation ICAppendToNoteIntentHandler

- (ICAppendToNoteIntentHandler)init
{
  v5.receiver = self;
  v5.super_class = ICAppendToNoteIntentHandler;
  v2 = [(ICBaseIntentHandler *)&v5 init];
  v3 = [(ICBaseIntentHandler *)v2 noteContext];
  [v3 enableHTMLContextChangeLogging];

  return v2;
}

- (void)resolveTargetNoteForAppendToNote:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v30 = a4;
  v31 = v5;
  v6 = [v5 targetNote];
  v7 = [v6 title];
  v8 = [v7 spokenPhrase];

  v9 = [v5 targetNote];
  v29 = [v9 identifier];

  if ([v8 length] || objc_msgSend(v29, "length"))
  {
    v10 = [v5 targetNote];
    v11 = [(ICBaseIntentHandler *)self searchIndexableNoteForIntentNote:v10];

    v12 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v11];
    if (v12)
    {
      v13 = [INNoteResolutionResult successWithResolvedNote:v12];
      v30[2](v30, v13);

      goto LABEL_31;
    }
  }

  v14 = [(ICBaseIntentHandler *)self notesWithTitle:v8];
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
        v19 = [v18 managedObjectContext];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000B848;
        v38[3] = &unk_100020790;
        v38[4] = v18;
        v39 = v8;
        v40 = &v45;
        [v19 performBlockAndWait:v38];
      }

      v15 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v15);
  }

  if ([v46[5] count] == 1)
  {
    v20 = [v46[5] firstObject];
    v21 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v20];

    v22 = [INNoteResolutionResult successWithResolvedNote:v21];
    v30[2](v30, v22);
  }

  else if ([obj count] == 1)
  {
    v23 = [obj firstObject];
    v21 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v23];

    v22 = [INNoteResolutionResult confirmationRequiredWithNoteToConfirm:v21];
    v30[2](v30, v22);
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
    v30[2](v30, v22);
  }

  _Block_object_dispose(&v45, 8);
LABEL_31:
}

- (void)resolveContentForAppendToNote:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 content];

  v10 = ICDynamicCast();

  v8 = [v10 text];
  if ([v8 length])
  {
    [INNoteContentResolutionResult successWithResolvedNoteContent:v10];
  }

  else
  {
    +[INNoteContentResolutionResult needsValue];
  }
  v9 = ;
  v5[2](v5, v9);
}

- (void)handleAppendToNote:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(ICAppendToNoteIntentHandler *)self findNoteForIntent:v14];
  objc_opt_class();
  v8 = ICDynamicCast();
  objc_opt_class();
  v9 = ICDynamicCast();
  v10 = v9;
  if (v8)
  {
    v11 = [(ICAppendToNoteIntentHandler *)self updateModernNote:v8 withIntent:v14];
  }

  else if (v9)
  {
    v11 = [(ICAppendToNoteIntentHandler *)self updateHTMLNote:v9 withIntent:v14];
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

  v6[2](v6, v12);
}

- (id)findNoteForIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 targetNote];
  v6 = [(ICBaseIntentHandler *)self searchIndexableNoteForIntentNote:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v4 targetNote];
    v9 = [v8 title];
    v10 = [v9 spokenPhrase];
    v11 = [(ICBaseIntentHandler *)self notesWithTitle:v10];

    if ([v11 count] == 1)
    {
      v7 = [v11 firstObject];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)updateModernNote:(id)a3 withIntent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000B830;
  v34 = sub_10000B840;
  v35 = 0;
  objc_opt_class();
  v8 = [v7 content];
  v9 = ICDynamicCast();

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_10000B830;
  v28[4] = sub_10000B840;
  v29 = [v9 text];
  v10 = [v6 managedObjectContext];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000BF2C;
  v24[3] = &unk_100020C28;
  v26 = v28;
  v11 = v6;
  v25 = v11;
  v27 = &v30;
  [v10 performBlockAndWait:v24];

  v12 = v31[5];
  if (v12)
  {
    v13 = [v12 code];
    v14 = [INAppendToNoteIntentResponse alloc];
    if (v13 == 206)
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

- (id)updateHTMLNote:(id)a3 withIntent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000B830;
  v32 = sub_10000B840;
  v33 = 0;
  objc_opt_class();
  v8 = [v7 content];
  v9 = ICDynamicCast();

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_10000B830;
  v26[4] = sub_10000B840;
  v27 = [v9 text];
  v10 = [v6 managedObjectContext];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000C358;
  v20[3] = &unk_100020C50;
  v11 = v6;
  v21 = v11;
  v24 = v26;
  v12 = v9;
  v22 = v12;
  v23 = self;
  v25 = &v28;
  [v10 performBlockAndWait:v20];

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