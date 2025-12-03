@interface AppleConnectSSOResult
- (AppleConnectSSOResult)initWithResponse:(id)response;
@end

@implementation AppleConnectSSOResult

- (AppleConnectSSOResult)initWithResponse:(id)response
{
  responseCopy = response;
  obj = [responseCopy objectForKeyedSubscript:@"username"];
  v5 = objc_alloc_init(NSURLComponents);
  v6 = [responseCopy objectForKeyedSubscript:@"otherInfo"];
  [v5 setQuery:v6];

  queryItems = [v5 queryItems];
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [queryItems count]);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  queryItems2 = [v5 queryItems];
  v10 = [queryItems2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(queryItems2);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        value = [v14 value];
        name = [v14 name];
        [v8 setObject:value forKeyedSubscript:name];
      }

      v11 = [queryItems2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v11);
  }

  v17 = [v8 objectForKeyedSubscript:@"dawToken"];
  v18 = [v8 objectForKeyedSubscript:@"personId"];
  if ([v17 length] && objc_msgSend(v18, "length"))
  {
    v26.receiver = self;
    v26.super_class = AppleConnectSSOResult;
    v19 = [(AppleConnectSSOResult *)&v26 init];
    p_isa = &v19->super.isa;
    v21 = obj;
    if (v19)
    {
      objc_storeStrong(&v19->_username, obj);
      objc_storeStrong(p_isa + 2, v17);
      objc_storeStrong(p_isa + 3, v18);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v23 = GEOGetMapsProxyAuthLog();
    v21 = obj;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v32 = obj;
      v33 = 2112;
      v34 = responseCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Apple Connect Authentication Failed User: %@ <%@>", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end