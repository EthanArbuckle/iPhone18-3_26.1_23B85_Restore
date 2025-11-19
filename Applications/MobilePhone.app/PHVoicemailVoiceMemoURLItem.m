@interface PHVoicemailVoiceMemoURLItem
- (PHVoicemailVoiceMemoURLItem)init;
- (PHVoicemailVoiceMemoURLItem)initWithVoiceMemoURL:(id)a3 voiceMemoName:(id)a4 voiceMemoDate:(id)a5;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation PHVoicemailVoiceMemoURLItem

- (PHVoicemailVoiceMemoURLItem)init
{
  [(PHVoicemailVoiceMemoURLItem *)self doesNotRecognizeSelector:a2];
  v3 = [NSURL URLWithString:&stru_10028F310];
  v4 = +[NSDate date];
  v5 = [(PHVoicemailVoiceMemoURLItem *)self initWithVoiceMemoURL:v3 voiceMemoName:&stru_10028F310 voiceMemoDate:v4];

  return v5;
}

- (PHVoicemailVoiceMemoURLItem)initWithVoiceMemoURL:(id)a3 voiceMemoName:(id)a4 voiceMemoDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PHVoicemailVoiceMemoURLItem;
  v12 = [(PHVoicemailVoiceMemoURLItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_voiceMemoURL, a3);
    objc_storeStrong(&v13->_voiceMemoName, a4);
    objc_storeStrong(&v13->_voiceMemoDate, a5);
  }

  return v13;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = objc_alloc_init(LPFileMetadata);
  v5 = [(PHVoicemailVoiceMemoURLItem *)self voiceMemoName];
  [v4 setName:v5];

  [v4 setType:AVFileTypeAppleM4A];
  v6 = [(PHVoicemailVoiceMemoURLItem *)self voiceMemoDate];
  [v4 setCreationDate:v6];

  v7 = objc_alloc_init(LPLinkMetadata);
  [v7 setSpecialization:v4];

  return v7;
}

@end