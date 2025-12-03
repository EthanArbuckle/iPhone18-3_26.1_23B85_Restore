@interface JSACookie
- (JSACookie)initWithNativeCookie:(id)cookie;
@end

@implementation JSACookie

- (JSACookie)initWithNativeCookie:(id)cookie
{
  cookieCopy = cookie;
  v31.receiver = self;
  v31.super_class = JSACookie;
  v5 = [(JSACookie *)&v31 init];
  if (v5)
  {
    name = [cookieCopy name];
    name = v5->_name;
    v5->_name = name;

    value = [cookieCopy value];
    value = v5->_value;
    v5->_value = value;

    v10 = [cookieCopy jsa_validURLValueForProperty:NSHTTPCookieOriginURL];
    v11 = v10;
    if (v10)
    {
      absoluteString = [v10 absoluteString];
      originURL = v5->_originURL;
      v5->_originURL = absoluteString;
    }

    v14 = [cookieCopy jsa_validIntegerValueForProperty:NSHTTPCookieVersion];
    if (v14)
    {
      objc_storeStrong(&v5->_version, v14);
    }

    domain = [cookieCopy domain];
    domain = v5->_domain;
    v5->_domain = domain;

    path = [cookieCopy path];
    path = v5->_path;
    v5->_path = path;

    v5->_isSecure = [cookieCopy isSecure];
    comment = [cookieCopy comment];
    comment = v5->_comment;
    v5->_comment = comment;

    commentURL = [cookieCopy commentURL];
    absoluteString2 = [commentURL absoluteString];
    commentURL = v5->_commentURL;
    v5->_commentURL = absoluteString2;

    v24 = [cookieCopy jsa_validBooleanValueForProperty:NSHTTPCookieDiscard];
    v25 = v24;
    if (v24)
    {
      v5->_isSessionOnly = [v24 BOOLValue];
    }

    v26 = [cookieCopy jsa_validIntegerValueForProperty:NSHTTPCookieMaximumAge];
    if (v26)
    {
      objc_storeStrong(&v5->_maximumAge, v26);
    }

    portList = [cookieCopy portList];
    v28 = portList;
    if (portList && [portList count])
    {
      objc_storeStrong(&v5->_portList, v28);
    }

    expiresDate = [cookieCopy expiresDate];
    if (expiresDate)
    {
      objc_storeStrong(&v5->_expirationDate, expiresDate);
    }
  }

  return v5;
}

@end