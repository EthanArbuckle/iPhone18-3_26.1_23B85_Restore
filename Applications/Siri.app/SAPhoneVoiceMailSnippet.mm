@interface SAPhoneVoiceMailSnippet
- (id)sr_sirilandShim;
@end

@implementation SAPhoneVoiceMailSnippet

- (id)sr_sirilandShim
{
  v3 = [(SAPhoneVoiceMailSnippet *)self calls];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v54 = v4;
    v5 = objc_alloc_init(SFCard);
    v6 = [(SAPhoneVoiceMailSnippet *)self title];
    [v5 setTitle:v6];

    [v5 setType:1];
    v7 = [(SAPhoneVoiceMailSnippet *)self aceId];
    [v5 setCardId:v7];

    [v5 setSource:2];
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [(SAPhoneVoiceMailSnippet *)self calls];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10007B058;
    v56[3] = &unk_100168978;
    v11 = v8;
    v57 = v11;
    v55 = v9;
    v58 = v55;
    v12 = [(SAPhoneVoiceMailSnippet *)self _callHistoryRowsForCalls:v10 callOperation:v56];

    v13 = [(SAPhoneVoiceMailSnippet *)self _searchCallHistoryIntentForVoicemail:1];
    v53 = v11;
    v14 = [(SAPhoneVoiceMailSnippet *)self _searchCallHistoryIntentResponseForCallRecords:v11];
    v15 = [v13 backingStore];
    v16 = [v15 data];

    v17 = [objc_opt_class() intentDescription];
    v18 = [v17 name];

    [v5 setIntentMessageData:v16];
    v48 = v18;
    [v5 setIntentMessageName:v18];
    v50 = v14;
    v19 = [v14 backingStore];
    v20 = [v19 data];
    [v5 setIntentResponseMessageData:v20];

    v21 = [objc_opt_class() intentDescription];
    v22 = [v21 responseName];
    [v5 setIntentResponseMessageName:v22];

    v23 = objc_alloc_init(SAIntentGroupLaunchAppWithIntent);
    v24 = +[NSUUID UUID];
    v25 = [v24 UUIDString];
    [v23 setAceId:v25];

    v26 = objc_alloc_init(SAIntentGroupProtobufMessage);
    v27 = +[NSUUID UUID];
    v28 = [v27 UUIDString];
    [v26 setAceId:v28];

    v49 = v16;
    [v26 setData:v16];
    v51 = v13;
    v29 = [objc_opt_class() intentDescription];
    v30 = [v29 type];
    [v26 setTypeName:v30];

    [v23 setHandledIntent:v26];
    v31 = objc_alloc_init(SFAbstractCommand);
    [v31 setType:1];
    v32 = objc_alloc_init(SFCommandValue);
    v33 = objc_alloc_init(SFReferentialCommand);
    v34 = [v23 aceId];
    [v33 setReferenceIdentifier:v34];

    [v32 setReferentialCommand:v33];
    v47 = v31;
    [v31 setValue:v32];
    v52 = v12;
    v35 = [v12 copy];
    [v5 setCardSections:v35];

    v36 = objc_alloc_init(SACardSnippet);
    v37 = [[_SFPBCard alloc] initWithFacade:v5];
    v38 = [v37 data];
    [(SAPhoneVoiceMailSnippet *)v36 setCardData:v38];

    v39 = [v55 copy];
    [(SAPhoneVoiceMailSnippet *)v36 setReferencedCommands:v39];

    v40 = objc_alloc_init(SAUISash);
    [v40 setApplicationBundleIdentifier:@"com.apple.mobilephone"];
    if (AFIsInternalInstall())
    {
      v41 = +[AFPreferences sharedPreferences];
      v42 = [v41 debugButtonIsEnabled];

      if (v42)
      {
        v43 = sub_100078408(@"VOICEMAIL_SASH_TITLE");
        v44 = [NSString stringWithFormat:@"%@ (INTERNAL ONLY: LEGACY FLOW)", v43];
        [v40 setTitle:v44];
      }
    }

    v59 = v23;
    v45 = [NSArray arrayWithObjects:&v59 count:1];
    [v40 setCommands:v45];

    [(SAPhoneVoiceMailSnippet *)v36 setSash:v40];
    [(SAPhoneVoiceMailSnippet *)v36 sr_applySnippetProperties:self];

    v4 = v54;
  }

  else
  {
    v36 = self;
  }

  return v36;
}

@end