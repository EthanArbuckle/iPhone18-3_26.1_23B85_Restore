@interface SAPhoneVoiceMailSnippet
- (id)sr_sirilandShim;
@end

@implementation SAPhoneVoiceMailSnippet

- (id)sr_sirilandShim
{
  calls = [(SAPhoneVoiceMailSnippet *)self calls];
  v4 = calls;
  if (calls && [calls count])
  {
    v54 = v4;
    v5 = objc_alloc_init(SFCard);
    title = [(SAPhoneVoiceMailSnippet *)self title];
    [v5 setTitle:title];

    [v5 setType:1];
    aceId = [(SAPhoneVoiceMailSnippet *)self aceId];
    [v5 setCardId:aceId];

    [v5 setSource:2];
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    calls2 = [(SAPhoneVoiceMailSnippet *)self calls];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10007B058;
    v56[3] = &unk_100168978;
    v11 = v8;
    v57 = v11;
    v55 = v9;
    v58 = v55;
    v12 = [(SAPhoneVoiceMailSnippet *)self _callHistoryRowsForCalls:calls2 callOperation:v56];

    v13 = [(SAPhoneVoiceMailSnippet *)self _searchCallHistoryIntentForVoicemail:1];
    v53 = v11;
    v14 = [(SAPhoneVoiceMailSnippet *)self _searchCallHistoryIntentResponseForCallRecords:v11];
    backingStore = [v13 backingStore];
    data = [backingStore data];

    intentDescription = [objc_opt_class() intentDescription];
    name = [intentDescription name];

    [v5 setIntentMessageData:data];
    v48 = name;
    [v5 setIntentMessageName:name];
    v50 = v14;
    backingStore2 = [v14 backingStore];
    data2 = [backingStore2 data];
    [v5 setIntentResponseMessageData:data2];

    intentDescription2 = [objc_opt_class() intentDescription];
    responseName = [intentDescription2 responseName];
    [v5 setIntentResponseMessageName:responseName];

    v23 = objc_alloc_init(SAIntentGroupLaunchAppWithIntent);
    v24 = +[NSUUID UUID];
    uUIDString = [v24 UUIDString];
    [v23 setAceId:uUIDString];

    v26 = objc_alloc_init(SAIntentGroupProtobufMessage);
    v27 = +[NSUUID UUID];
    uUIDString2 = [v27 UUIDString];
    [v26 setAceId:uUIDString2];

    v49 = data;
    [v26 setData:data];
    v51 = v13;
    intentDescription3 = [objc_opt_class() intentDescription];
    type = [intentDescription3 type];
    [v26 setTypeName:type];

    [v23 setHandledIntent:v26];
    v31 = objc_alloc_init(SFAbstractCommand);
    [v31 setType:1];
    v32 = objc_alloc_init(SFCommandValue);
    v33 = objc_alloc_init(SFReferentialCommand);
    aceId2 = [v23 aceId];
    [v33 setReferenceIdentifier:aceId2];

    [v32 setReferentialCommand:v33];
    v47 = v31;
    [v31 setValue:v32];
    v52 = v12;
    v35 = [v12 copy];
    [v5 setCardSections:v35];

    selfCopy = objc_alloc_init(SACardSnippet);
    v37 = [[_SFPBCard alloc] initWithFacade:v5];
    data3 = [v37 data];
    [(SAPhoneVoiceMailSnippet *)selfCopy setCardData:data3];

    v39 = [v55 copy];
    [(SAPhoneVoiceMailSnippet *)selfCopy setReferencedCommands:v39];

    v40 = objc_alloc_init(SAUISash);
    [v40 setApplicationBundleIdentifier:@"com.apple.mobilephone"];
    if (AFIsInternalInstall())
    {
      v41 = +[AFPreferences sharedPreferences];
      debugButtonIsEnabled = [v41 debugButtonIsEnabled];

      if (debugButtonIsEnabled)
      {
        v43 = sub_100078408(@"VOICEMAIL_SASH_TITLE");
        v44 = [NSString stringWithFormat:@"%@ (INTERNAL ONLY: LEGACY FLOW)", v43];
        [v40 setTitle:v44];
      }
    }

    v59 = v23;
    v45 = [NSArray arrayWithObjects:&v59 count:1];
    [v40 setCommands:v45];

    [(SAPhoneVoiceMailSnippet *)selfCopy setSash:v40];
    [(SAPhoneVoiceMailSnippet *)selfCopy sr_applySnippetProperties:self];

    v4 = v54;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end