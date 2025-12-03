@interface FTiMessageRequestMMCSFileRefreshToken
- (FTiMessageRequestMMCSFileRefreshToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTiMessageRequestMMCSFileRefreshToken

- (FTiMessageRequestMMCSFileRefreshToken)init
{
  v4.receiver = self;
  v4.super_class = FTiMessageRequestMMCSFileRefreshToken;
  v2 = [(FTiMessageRequestMMCSFileRefreshToken *)&v4 init];
  if (v2)
  {
    IMGetiMessageSettings();
    -[FTiMessageRequestMMCSFileRefreshToken setTopic:](v2, "setTopic:", [0 lastObject]);
    [(FTiMessageRequestMMCSFileRefreshToken *)v2 setWantsResponse:1];
    v2->_requestContentVersion = [[NSNumber alloc] initWithInt:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FTiMessageRequestMMCSFileRefreshToken;
  v4 = [(FTiMessageRequestMMCSFileRefreshToken *)&v6 copyWithZone:zone];
  [v4 setOwner:{-[FTiMessageRequestMMCSFileRefreshToken owner](self, "owner")}];
  [v4 setSignature:{-[FTiMessageRequestMMCSFileRefreshToken signature](self, "signature")}];
  [v4 setFileLength:{-[FTiMessageRequestMMCSFileRefreshToken fileLength](self, "fileLength")}];
  [v4 setAuthURL:{-[FTiMessageRequestMMCSFileRefreshToken authURL](self, "authURL")}];
  [v4 setRequestContentVersion:{-[FTiMessageRequestMMCSFileRefreshToken requestContentVersion](self, "requestContentVersion")}];
  [v4 setRequestContentHeaders:{-[FTiMessageRequestMMCSFileRefreshToken requestContentHeaders](self, "requestContentHeaders")}];
  [v4 setResponseContentVersion:{-[FTiMessageRequestMMCSFileRefreshToken responseContentVersion](self, "responseContentVersion")}];
  [v4 setResponseContentHeaders:{-[FTiMessageRequestMMCSFileRefreshToken responseContentHeaders](self, "responseContentHeaders")}];
  [v4 setResponseContentBody:{-[FTiMessageRequestMMCSFileRefreshToken responseContentBody](self, "responseContentBody")}];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTiMessageRequestMMCSFileRefreshToken;
  [(FTiMessageRequestMMCSFileRefreshToken *)&v3 dealloc];
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"mU"];
  [v2 addObject:@"mS"];

  return v2;
}

- (id)messageBody
{
  v10.receiver = self;
  v10.super_class = FTiMessageRequestMMCSFileRefreshToken;
  v3 = [-[FTiMessageRequestMMCSFileRefreshToken messageBody](&v10 "messageBody")];
  owner = [(FTiMessageRequestMMCSFileRefreshToken *)self owner];
  if (owner)
  {
    CFDictionarySetValue(v3, @"mU", owner);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD0C4();
  }

  signature = [(FTiMessageRequestMMCSFileRefreshToken *)self signature];
  if (signature)
  {
    CFDictionarySetValue(v3, @"mS", signature);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD14C();
  }

  authURL = [(FTiMessageRequestMMCSFileRefreshToken *)self authURL];
  if (authURL)
  {
    CFDictionarySetValue(v3, @"mR", authURL);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD1D4();
  }

  CFDictionarySetValue(v3, @"mL", &off_119428);
  requestContentVersion = [(FTiMessageRequestMMCSFileRefreshToken *)self requestContentVersion];
  if (requestContentVersion)
  {
    CFDictionarySetValue(v3, @"cV", requestContentVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD25C();
  }

  requestContentHeaders = [(FTiMessageRequestMMCSFileRefreshToken *)self requestContentHeaders];
  if (requestContentHeaders)
  {
    CFDictionarySetValue(v3, @"cH", requestContentHeaders);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD2E4();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  -[FTiMessageRequestMMCSFileRefreshToken setResponseContentVersion:](self, "setResponseContentVersion:", [dictionary objectForKeyedSubscript:@"cV"]);
  -[FTiMessageRequestMMCSFileRefreshToken setResponseContentBody:](self, "setResponseContentBody:", [dictionary objectForKeyedSubscript:@"cB"]);
  -[FTiMessageRequestMMCSFileRefreshToken setResponseContentHeaders:](self, "setResponseContentHeaders:", [dictionary objectForKeyedSubscript:@"cH"]);
  -[FTiMessageRequestMMCSFileRefreshToken setFailReason:](self, "setFailReason:", [dictionary objectForKeyedSubscript:@"fR"]);
  v5 = [dictionary objectForKeyedSubscript:@"s"];

  [(FTiMessageRequestMMCSFileRefreshToken *)self setResponseCode:v5];
}

@end