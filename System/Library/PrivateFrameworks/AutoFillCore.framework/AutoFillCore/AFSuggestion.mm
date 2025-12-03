@interface AFSuggestion
- (AFSuggestion)initWithTitle:(id)title subTitle:(id)subTitle usernameAndPasswordPayload:(id)payload creditCardPayload:(id)cardPayload oneTimeCodePayload:(id)codePayload leadingImage:(CGImage *)image trailingImage:(CGImage *)trailingImage applicationKey:(id)self0 applicationBundleId:(id)self1 altDSID:(id)self2 customInfoType:(unint64_t)self3;
@end

@implementation AFSuggestion

- (AFSuggestion)initWithTitle:(id)title subTitle:(id)subTitle usernameAndPasswordPayload:(id)payload creditCardPayload:(id)cardPayload oneTimeCodePayload:(id)codePayload leadingImage:(CGImage *)image trailingImage:(CGImage *)trailingImage applicationKey:(id)self0 applicationBundleId:(id)self1 altDSID:(id)self2 customInfoType:(unint64_t)self3
{
  titleCopy = title;
  subTitleCopy = subTitle;
  payloadCopy = payload;
  cardPayloadCopy = cardPayload;
  codePayloadCopy = codePayload;
  keyCopy = key;
  idCopy = id;
  dCopy = d;
  v45.receiver = self;
  v45.super_class = AFSuggestion;
  v26 = [(AFSuggestion *)&v45 init];
  if (v26)
  {
    v27 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v27;

    v29 = [subTitleCopy copy];
    subTitle = v26->_subTitle;
    v26->_subTitle = v29;

    v31 = [payloadCopy copy];
    usernameAndPasswordPayload = v26->_usernameAndPasswordPayload;
    v26->_usernameAndPasswordPayload = v31;

    v33 = [cardPayloadCopy copy];
    creditCardPayload = v26->_creditCardPayload;
    v26->_creditCardPayload = v33;

    v35 = [codePayloadCopy copy];
    oneTimeCodePayload = v26->_oneTimeCodePayload;
    v26->_oneTimeCodePayload = v35;

    v26->_leadingImage = image;
    v26->_trailingImage = trailingImage;
    v37 = [keyCopy copy];
    applicationKey = v26->_applicationKey;
    v26->_applicationKey = v37;

    v39 = [idCopy copy];
    applicationBundleId = v26->_applicationBundleId;
    v26->_applicationBundleId = v39;

    v41 = [dCopy copy];
    altDSID = v26->_altDSID;
    v26->_altDSID = v41;

    v26->_customInfoType = type;
  }

  return v26;
}

@end