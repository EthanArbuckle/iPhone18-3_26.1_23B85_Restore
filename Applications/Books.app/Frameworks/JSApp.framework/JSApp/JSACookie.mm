@interface JSACookie
- (JSACookie)initWithNativeCookie:(id)a3;
@end

@implementation JSACookie

- (JSACookie)initWithNativeCookie:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = JSACookie;
  v5 = [(JSACookie *)&v31 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 value];
    value = v5->_value;
    v5->_value = v8;

    v10 = [v4 jsa_validURLValueForProperty:NSHTTPCookieOriginURL];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 absoluteString];
      originURL = v5->_originURL;
      v5->_originURL = v12;
    }

    v14 = [v4 jsa_validIntegerValueForProperty:NSHTTPCookieVersion];
    if (v14)
    {
      objc_storeStrong(&v5->_version, v14);
    }

    v15 = [v4 domain];
    domain = v5->_domain;
    v5->_domain = v15;

    v17 = [v4 path];
    path = v5->_path;
    v5->_path = v17;

    v5->_isSecure = [v4 isSecure];
    v19 = [v4 comment];
    comment = v5->_comment;
    v5->_comment = v19;

    v21 = [v4 commentURL];
    v22 = [v21 absoluteString];
    commentURL = v5->_commentURL;
    v5->_commentURL = v22;

    v24 = [v4 jsa_validBooleanValueForProperty:NSHTTPCookieDiscard];
    v25 = v24;
    if (v24)
    {
      v5->_isSessionOnly = [v24 BOOLValue];
    }

    v26 = [v4 jsa_validIntegerValueForProperty:NSHTTPCookieMaximumAge];
    if (v26)
    {
      objc_storeStrong(&v5->_maximumAge, v26);
    }

    v27 = [v4 portList];
    v28 = v27;
    if (v27 && [v27 count])
    {
      objc_storeStrong(&v5->_portList, v28);
    }

    v29 = [v4 expiresDate];
    if (v29)
    {
      objc_storeStrong(&v5->_expirationDate, v29);
    }
  }

  return v5;
}

@end