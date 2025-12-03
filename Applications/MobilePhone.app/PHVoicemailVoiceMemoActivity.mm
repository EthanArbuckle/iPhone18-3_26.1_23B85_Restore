@interface PHVoicemailVoiceMemoActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (PHVoicemailVoiceMemoActivity)initWithVoicemail:(id)voicemail contactStore:(id)store;
- (id)URLItemWithExportedURL:(id)l localizedTitle:(id)title;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation PHVoicemailVoiceMemoActivity

- (PHVoicemailVoiceMemoActivity)initWithVoicemail:(id)voicemail contactStore:(id)store
{
  voicemailCopy = voicemail;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = PHVoicemailVoiceMemoActivity;
  v9 = [(PHVoicemailVoiceMemoActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voicemail, voicemail);
    objc_storeStrong(&v10->_contactStore, store);
  }

  return v10;
}

- (id)activityTitle
{
  applicationProxy = [objc_opt_class() applicationProxy];
  localizedName = [applicationProxy localizedName];

  return localizedName;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  applicationProxy = [objc_opt_class() applicationProxy];
  appState = [applicationProxy appState];
  if ([appState isInstalled] && objc_msgSend(itemsCopy, "count") == 1)
  {
    v6 = [itemsCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [itemsCopy objectAtIndexedSubscript:0];
      pathExtension = [v7 pathExtension];
      v9 = [pathExtension isEqualToString:@"m4a"];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performActivity
{
  voicemail = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  dataURL = [voicemail dataURL];

  voicemail2 = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  contactStore = [(PHVoicemailVoiceMemoActivity *)self contactStore];
  v7 = [voicemail2 displayNameUsingContactStore:contactStore];

  if (!v7)
  {
    v8 = +[NSBundle mainBundle];
    v7 = [v8 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_10028F310 table:@"General"];
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"VOICEMAIL_SHARE_MESSAGE_%@" value:&stru_10028F310 table:@"Voicemail"];
  v11 = [NSString stringWithFormat:v10, v7];

  v12 = CUTWeakLinkClass();
  voicemail3 = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  date = [voicemail3 date];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __47__PHVoicemailVoiceMemoActivity_performActivity__block_invoke;
  v15[3] = &unk_1002869C8;
  v15[4] = self;
  [v12 importRecordingWithSourceAudioURL:dataURL name:v11 date:date completionHandler:v15];
}

- (id)URLItemWithExportedURL:(id)l localizedTitle:(id)title
{
  titleCopy = title;
  lCopy = l;
  v8 = [PHVoicemailVoiceMemoURLItem alloc];
  voicemail = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  date = [voicemail date];
  v11 = [(PHVoicemailVoiceMemoURLItem *)v8 initWithVoiceMemoURL:lCopy voiceMemoName:titleCopy voiceMemoDate:date];

  return v11;
}

@end