@interface PHCarPlayPhoneSubtitleResponse
- (PHCarPlayPhoneSubtitleResponse)initWithSubtitle:(id)subtitle secondaryString:(id)string source:(id)source isCallIdentification:(BOOL)identification;
@end

@implementation PHCarPlayPhoneSubtitleResponse

- (PHCarPlayPhoneSubtitleResponse)initWithSubtitle:(id)subtitle secondaryString:(id)string source:(id)source isCallIdentification:(BOOL)identification
{
  subtitleCopy = subtitle;
  stringCopy = string;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = PHCarPlayPhoneSubtitleResponse;
  v14 = [(PHCarPlayPhoneSubtitleResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_subtitle, subtitle);
    objc_storeStrong(&v15->_secondaryString, string);
    objc_storeStrong(&v15->_source, source);
    v15->_isCallIdentification = identification;
  }

  return v15;
}

@end