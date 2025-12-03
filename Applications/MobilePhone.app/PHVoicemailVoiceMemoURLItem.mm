@interface PHVoicemailVoiceMemoURLItem
- (PHVoicemailVoiceMemoURLItem)init;
- (PHVoicemailVoiceMemoURLItem)initWithVoiceMemoURL:(id)l voiceMemoName:(id)name voiceMemoDate:(id)date;
- (id)activityViewControllerLinkMetadata:(id)metadata;
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

- (PHVoicemailVoiceMemoURLItem)initWithVoiceMemoURL:(id)l voiceMemoName:(id)name voiceMemoDate:(id)date
{
  lCopy = l;
  nameCopy = name;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = PHVoicemailVoiceMemoURLItem;
  v12 = [(PHVoicemailVoiceMemoURLItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_voiceMemoURL, l);
    objc_storeStrong(&v13->_voiceMemoName, name);
    objc_storeStrong(&v13->_voiceMemoDate, date);
  }

  return v13;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_alloc_init(LPFileMetadata);
  voiceMemoName = [(PHVoicemailVoiceMemoURLItem *)self voiceMemoName];
  [v4 setName:voiceMemoName];

  [v4 setType:AVFileTypeAppleM4A];
  voiceMemoDate = [(PHVoicemailVoiceMemoURLItem *)self voiceMemoDate];
  [v4 setCreationDate:voiceMemoDate];

  v7 = objc_alloc_init(LPLinkMetadata);
  [v7 setSpecialization:v4];

  return v7;
}

@end