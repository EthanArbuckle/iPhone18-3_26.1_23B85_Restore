@interface AFSuggestion
- (AFSuggestion)initWithTitle:(id)a3 subTitle:(id)a4 usernameAndPasswordPayload:(id)a5 creditCardPayload:(id)a6 oneTimeCodePayload:(id)a7 leadingImage:(CGImage *)a8 trailingImage:(CGImage *)a9 applicationKey:(id)a10 applicationBundleId:(id)a11 altDSID:(id)a12 customInfoType:(unint64_t)a13;
@end

@implementation AFSuggestion

- (AFSuggestion)initWithTitle:(id)a3 subTitle:(id)a4 usernameAndPasswordPayload:(id)a5 creditCardPayload:(id)a6 oneTimeCodePayload:(id)a7 leadingImage:(CGImage *)a8 trailingImage:(CGImage *)a9 applicationKey:(id)a10 applicationBundleId:(id)a11 altDSID:(id)a12 customInfoType:(unint64_t)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v45.receiver = self;
  v45.super_class = AFSuggestion;
  v26 = [(AFSuggestion *)&v45 init];
  if (v26)
  {
    v27 = [v18 copy];
    title = v26->_title;
    v26->_title = v27;

    v29 = [v19 copy];
    subTitle = v26->_subTitle;
    v26->_subTitle = v29;

    v31 = [v20 copy];
    usernameAndPasswordPayload = v26->_usernameAndPasswordPayload;
    v26->_usernameAndPasswordPayload = v31;

    v33 = [v21 copy];
    creditCardPayload = v26->_creditCardPayload;
    v26->_creditCardPayload = v33;

    v35 = [v22 copy];
    oneTimeCodePayload = v26->_oneTimeCodePayload;
    v26->_oneTimeCodePayload = v35;

    v26->_leadingImage = a8;
    v26->_trailingImage = a9;
    v37 = [v23 copy];
    applicationKey = v26->_applicationKey;
    v26->_applicationKey = v37;

    v39 = [v24 copy];
    applicationBundleId = v26->_applicationBundleId;
    v26->_applicationBundleId = v39;

    v41 = [v25 copy];
    altDSID = v26->_altDSID;
    v26->_altDSID = v41;

    v26->_customInfoType = a13;
  }

  return v26;
}

@end