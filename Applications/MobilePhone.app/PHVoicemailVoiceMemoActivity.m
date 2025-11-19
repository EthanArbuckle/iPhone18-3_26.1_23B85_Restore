@interface PHVoicemailVoiceMemoActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (PHVoicemailVoiceMemoActivity)initWithVoicemail:(id)a3 contactStore:(id)a4;
- (id)URLItemWithExportedURL:(id)a3 localizedTitle:(id)a4;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation PHVoicemailVoiceMemoActivity

- (PHVoicemailVoiceMemoActivity)initWithVoicemail:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHVoicemailVoiceMemoActivity;
  v9 = [(PHVoicemailVoiceMemoActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voicemail, a3);
    objc_storeStrong(&v10->_contactStore, a4);
  }

  return v10;
}

- (id)activityTitle
{
  v2 = [objc_opt_class() applicationProxy];
  v3 = [v2 localizedName];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() applicationProxy];
  v5 = [v4 appState];
  if ([v5 isInstalled] && objc_msgSend(v3, "count") == 1)
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 objectAtIndexedSubscript:0];
      v8 = [v7 pathExtension];
      v9 = [v8 isEqualToString:@"m4a"];
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
  v3 = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  v4 = [v3 dataURL];

  v5 = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  v6 = [(PHVoicemailVoiceMemoActivity *)self contactStore];
  v7 = [v5 displayNameUsingContactStore:v6];

  if (!v7)
  {
    v8 = +[NSBundle mainBundle];
    v7 = [v8 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_10028F310 table:@"General"];
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"VOICEMAIL_SHARE_MESSAGE_%@" value:&stru_10028F310 table:@"Voicemail"];
  v11 = [NSString stringWithFormat:v10, v7];

  v12 = CUTWeakLinkClass();
  v13 = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  v14 = [v13 date];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __47__PHVoicemailVoiceMemoActivity_performActivity__block_invoke;
  v15[3] = &unk_1002869C8;
  v15[4] = self;
  [v12 importRecordingWithSourceAudioURL:v4 name:v11 date:v14 completionHandler:v15];
}

- (id)URLItemWithExportedURL:(id)a3 localizedTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PHVoicemailVoiceMemoURLItem alloc];
  v9 = [(PHVoicemailVoiceMemoActivity *)self voicemail];
  v10 = [v9 date];
  v11 = [(PHVoicemailVoiceMemoURLItem *)v8 initWithVoiceMemoURL:v7 voiceMemoName:v6 voiceMemoDate:v10];

  return v11;
}

@end