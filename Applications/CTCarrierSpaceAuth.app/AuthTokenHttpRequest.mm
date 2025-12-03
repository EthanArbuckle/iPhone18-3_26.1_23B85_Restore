@interface AuthTokenHttpRequest
+ (id)_urlRequestForBaseURL:(id)l params:(id)params;
+ (id)urlRequestForBaseURL:(id)l clientID:(id)d secret:(id)secret redirectURI:(id)i authCode:(id)code;
@end

@implementation AuthTokenHttpRequest

+ (id)_urlRequestForBaseURL:(id)l params:(id)params
{
  paramsCopy = params;
  lCopy = l;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000015A0;
  v12[3] = &unk_100010348;
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(paramsCopy, "count")}];
  v7 = v13;
  [paramsCopy enumerateKeysAndObjectsUsingBlock:v12];

  [v7 sortUsingSelector:"caseInsensitiveCompare:"];
  v8 = [v7 componentsJoinedByString:@"&"];
  v9 = [NSMutableURLRequest requestWithURL:lCopy];

  v10 = [v8 dataUsingEncoding:4];
  [v9 setHTTPBody:v10];

  [v9 setCachePolicy:1];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v9;
}

+ (id)urlRequestForBaseURL:(id)l clientID:(id)d secret:(id)secret redirectURI:(id)i authCode:(id)code
{
  lCopy = l;
  secretCopy = secret;
  codeCopy = code;
  iCopy = i;
  dCopy = d;
  v17 = objc_alloc_init(NSMutableDictionary);
  [v17 setObject:codeCopy forKeyedSubscript:@"code"];

  [v17 setObject:@"authorization_code" forKeyedSubscript:@"grant_type"];
  [v17 setObject:iCopy forKeyedSubscript:@"redirect_uri"];

  [v17 setObject:dCopy forKeyedSubscript:@"client_id"];
  if (secretCopy)
  {
    [v17 setObject:secretCopy forKeyedSubscript:@"client_secret"];
  }

  v18 = [self _urlRequestForBaseURL:lCopy params:v17];

  return v18;
}

@end