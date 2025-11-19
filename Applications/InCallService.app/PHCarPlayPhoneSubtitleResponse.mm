@interface PHCarPlayPhoneSubtitleResponse
- (PHCarPlayPhoneSubtitleResponse)initWithSubtitle:(id)a3 secondaryString:(id)a4 source:(id)a5 isCallIdentification:(BOOL)a6;
@end

@implementation PHCarPlayPhoneSubtitleResponse

- (PHCarPlayPhoneSubtitleResponse)initWithSubtitle:(id)a3 secondaryString:(id)a4 source:(id)a5 isCallIdentification:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PHCarPlayPhoneSubtitleResponse;
  v14 = [(PHCarPlayPhoneSubtitleResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_subtitle, a3);
    objc_storeStrong(&v15->_secondaryString, a4);
    objc_storeStrong(&v15->_source, a5);
    v15->_isCallIdentification = a6;
  }

  return v15;
}

@end