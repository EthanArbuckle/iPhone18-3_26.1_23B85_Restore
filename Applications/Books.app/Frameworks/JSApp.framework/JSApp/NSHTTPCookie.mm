@interface NSHTTPCookie
- (id)jsa_initWithScriptingCookie:(id)cookie;
- (id)jsa_validBooleanValueForProperty:(id)property;
- (id)jsa_validIntegerValueForProperty:(id)property;
- (id)jsa_validURLValueForProperty:(id)property;
@end

@implementation NSHTTPCookie

- (id)jsa_initWithScriptingCookie:(id)cookie
{
  cookieCopy = cookie;
  v5 = objc_alloc_init(NSMutableDictionary);
  name = [cookieCopy name];

  if (name)
  {
    name2 = [cookieCopy name];
    [v5 setObject:name2 forKeyedSubscript:NSHTTPCookieName];
  }

  value = [cookieCopy value];

  if (value)
  {
    value2 = [cookieCopy value];
    [v5 setObject:value2 forKeyedSubscript:NSHTTPCookieValue];
  }

  originURL = [cookieCopy originURL];

  if (originURL)
  {
    originURL2 = [cookieCopy originURL];
    v12 = [NSURL URLWithString:originURL2];
    [v5 setObject:v12 forKeyedSubscript:NSHTTPCookieOriginURL];
  }

  version = [cookieCopy version];

  if (version)
  {
    version2 = [cookieCopy version];
    stringValue = [version2 stringValue];
    [v5 setObject:stringValue forKeyedSubscript:NSHTTPCookieVersion];
  }

  domain = [cookieCopy domain];

  if (domain)
  {
    domain2 = [cookieCopy domain];
    [v5 setObject:domain2 forKeyedSubscript:NSHTTPCookieDomain];
  }

  path = [cookieCopy path];

  if (path)
  {
    path2 = [cookieCopy path];
    [v5 setObject:path2 forKeyedSubscript:NSHTTPCookiePath];
  }

  if ([cookieCopy isSecure])
  {
    if ([cookieCopy isSecure])
    {
      v20 = @"TRUE";
    }

    else
    {
      v20 = @"FALSE";
    }

    [v5 setObject:v20 forKeyedSubscript:NSHTTPCookieSecure];
  }

  comment = [cookieCopy comment];

  if (comment)
  {
    comment2 = [cookieCopy comment];
    [v5 setObject:comment2 forKeyedSubscript:NSHTTPCookieComment];
  }

  commentURL = [cookieCopy commentURL];

  if (commentURL)
  {
    commentURL2 = [cookieCopy commentURL];
    v25 = [NSURL URLWithString:commentURL2];
    [v5 setObject:v25 forKeyedSubscript:NSHTTPCookieCommentURL];
  }

  if ([cookieCopy isSessionOnly])
  {
    if ([cookieCopy isSessionOnly])
    {
      v26 = @"TRUE";
    }

    else
    {
      v26 = @"FALSE";
    }

    [v5 setObject:v26 forKeyedSubscript:NSHTTPCookieDiscard];
  }

  maximumAge = [cookieCopy maximumAge];

  if (maximumAge)
  {
    maximumAge2 = [cookieCopy maximumAge];
    stringValue2 = [maximumAge2 stringValue];
    [v5 setObject:stringValue2 forKeyedSubscript:NSHTTPCookieMaximumAge];
  }

  portList = [cookieCopy portList];

  if (portList)
  {
    portList2 = [cookieCopy portList];
    v32 = [portList2 componentsJoinedByString:{@", "}];
    [v5 setObject:v32 forKeyedSubscript:NSHTTPCookiePort];
  }

  expirationDate = [cookieCopy expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [cookieCopy expirationDate];
    [v5 setObject:expirationDate2 forKeyedSubscript:NSHTTPCookieExpires];
  }

  v35 = [(NSHTTPCookie *)self initWithProperties:v5];

  return v35;
}

- (id)jsa_validURLValueForProperty:(id)property
{
  propertyCopy = property;
  properties = [(NSHTTPCookie *)self properties];
  v6 = [properties objectForKeyedSubscript:propertyCopy];

  objc_opt_class();
  v7 = BUDynamicCast();
  if (v7)
  {
    v8 = [NSURL URLWithString:v7];

    v6 = v8;
  }

  return v6;
}

- (id)jsa_validIntegerValueForProperty:(id)property
{
  propertyCopy = property;
  properties = [(NSHTTPCookie *)self properties];
  v6 = [properties objectForKeyedSubscript:propertyCopy];

  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    objc_opt_class();
    v10 = BUDynamicCast();
    v11 = v10;
    if (v10)
    {
      integerValue = [v10 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSNumber numberWithInteger:integerValue];
  }

  return v12;
}

- (id)jsa_validBooleanValueForProperty:(id)property
{
  propertyCopy = property;
  properties = [(NSHTTPCookie *)self properties];
  v6 = [properties objectForKeyedSubscript:propertyCopy];

  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
LABEL_5:
    v12 = [NSNumber numberWithInteger:bOOLValue];
    goto LABEL_6;
  }

  objc_opt_class();
  v10 = BUDynamicCast();
  if (v10)
  {
    v11 = v10;
    bOOLValue = [v10 BOOLValue];

    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

@end