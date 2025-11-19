@interface NSHTTPCookie
- (id)jsa_initWithScriptingCookie:(id)a3;
- (id)jsa_validBooleanValueForProperty:(id)a3;
- (id)jsa_validIntegerValueForProperty:(id)a3;
- (id)jsa_validURLValueForProperty:(id)a3;
@end

@implementation NSHTTPCookie

- (id)jsa_initWithScriptingCookie:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 name];

  if (v6)
  {
    v7 = [v4 name];
    [v5 setObject:v7 forKeyedSubscript:NSHTTPCookieName];
  }

  v8 = [v4 value];

  if (v8)
  {
    v9 = [v4 value];
    [v5 setObject:v9 forKeyedSubscript:NSHTTPCookieValue];
  }

  v10 = [v4 originURL];

  if (v10)
  {
    v11 = [v4 originURL];
    v12 = [NSURL URLWithString:v11];
    [v5 setObject:v12 forKeyedSubscript:NSHTTPCookieOriginURL];
  }

  v13 = [v4 version];

  if (v13)
  {
    v14 = [v4 version];
    v15 = [v14 stringValue];
    [v5 setObject:v15 forKeyedSubscript:NSHTTPCookieVersion];
  }

  v16 = [v4 domain];

  if (v16)
  {
    v17 = [v4 domain];
    [v5 setObject:v17 forKeyedSubscript:NSHTTPCookieDomain];
  }

  v18 = [v4 path];

  if (v18)
  {
    v19 = [v4 path];
    [v5 setObject:v19 forKeyedSubscript:NSHTTPCookiePath];
  }

  if ([v4 isSecure])
  {
    if ([v4 isSecure])
    {
      v20 = @"TRUE";
    }

    else
    {
      v20 = @"FALSE";
    }

    [v5 setObject:v20 forKeyedSubscript:NSHTTPCookieSecure];
  }

  v21 = [v4 comment];

  if (v21)
  {
    v22 = [v4 comment];
    [v5 setObject:v22 forKeyedSubscript:NSHTTPCookieComment];
  }

  v23 = [v4 commentURL];

  if (v23)
  {
    v24 = [v4 commentURL];
    v25 = [NSURL URLWithString:v24];
    [v5 setObject:v25 forKeyedSubscript:NSHTTPCookieCommentURL];
  }

  if ([v4 isSessionOnly])
  {
    if ([v4 isSessionOnly])
    {
      v26 = @"TRUE";
    }

    else
    {
      v26 = @"FALSE";
    }

    [v5 setObject:v26 forKeyedSubscript:NSHTTPCookieDiscard];
  }

  v27 = [v4 maximumAge];

  if (v27)
  {
    v28 = [v4 maximumAge];
    v29 = [v28 stringValue];
    [v5 setObject:v29 forKeyedSubscript:NSHTTPCookieMaximumAge];
  }

  v30 = [v4 portList];

  if (v30)
  {
    v31 = [v4 portList];
    v32 = [v31 componentsJoinedByString:{@", "}];
    [v5 setObject:v32 forKeyedSubscript:NSHTTPCookiePort];
  }

  v33 = [v4 expirationDate];

  if (v33)
  {
    v34 = [v4 expirationDate];
    [v5 setObject:v34 forKeyedSubscript:NSHTTPCookieExpires];
  }

  v35 = [(NSHTTPCookie *)self initWithProperties:v5];

  return v35;
}

- (id)jsa_validURLValueForProperty:(id)a3
{
  v4 = a3;
  v5 = [(NSHTTPCookie *)self properties];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  v7 = BUDynamicCast();
  if (v7)
  {
    v8 = [NSURL URLWithString:v7];

    v6 = v8;
  }

  return v6;
}

- (id)jsa_validIntegerValueForProperty:(id)a3
{
  v4 = a3;
  v5 = [(NSHTTPCookie *)self properties];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    objc_opt_class();
    v10 = BUDynamicCast();
    v11 = v10;
    if (v10)
    {
      v9 = [v10 integerValue];
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSNumber numberWithInteger:v9];
  }

  return v12;
}

- (id)jsa_validBooleanValueForProperty:(id)a3
{
  v4 = a3;
  v5 = [(NSHTTPCookie *)self properties];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue];
LABEL_5:
    v12 = [NSNumber numberWithInteger:v9];
    goto LABEL_6;
  }

  objc_opt_class();
  v10 = BUDynamicCast();
  if (v10)
  {
    v11 = v10;
    v9 = [v10 BOOLValue];

    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

@end