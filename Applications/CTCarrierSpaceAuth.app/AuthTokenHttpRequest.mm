@interface AuthTokenHttpRequest
+ (id)_urlRequestForBaseURL:(id)a3 params:(id)a4;
+ (id)urlRequestForBaseURL:(id)a3 clientID:(id)a4 secret:(id)a5 redirectURI:(id)a6 authCode:(id)a7;
@end

@implementation AuthTokenHttpRequest

+ (id)_urlRequestForBaseURL:(id)a3 params:(id)a4
{
  v5 = a4;
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000015A0;
  v12[3] = &unk_100010348;
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = v13;
  [v5 enumerateKeysAndObjectsUsingBlock:v12];

  [v7 sortUsingSelector:"caseInsensitiveCompare:"];
  v8 = [v7 componentsJoinedByString:@"&"];
  v9 = [NSMutableURLRequest requestWithURL:v6];

  v10 = [v8 dataUsingEncoding:4];
  [v9 setHTTPBody:v10];

  [v9 setCachePolicy:1];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v9;
}

+ (id)urlRequestForBaseURL:(id)a3 clientID:(id)a4 secret:(id)a5 redirectURI:(id)a6 authCode:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = objc_alloc_init(NSMutableDictionary);
  [v17 setObject:v14 forKeyedSubscript:@"code"];

  [v17 setObject:@"authorization_code" forKeyedSubscript:@"grant_type"];
  [v17 setObject:v15 forKeyedSubscript:@"redirect_uri"];

  [v17 setObject:v16 forKeyedSubscript:@"client_id"];
  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:@"client_secret"];
  }

  v18 = [a1 _urlRequestForBaseURL:v12 params:v17];

  return v18;
}

@end