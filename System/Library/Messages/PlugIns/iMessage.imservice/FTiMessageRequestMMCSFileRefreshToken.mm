@interface FTiMessageRequestMMCSFileRefreshToken
- (FTiMessageRequestMMCSFileRefreshToken)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FTiMessageRequestMMCSFileRefreshToken;
  v4 = [(FTiMessageRequestMMCSFileRefreshToken *)&v6 copyWithZone:a3];
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
  v4 = [(FTiMessageRequestMMCSFileRefreshToken *)self owner];
  if (v4)
  {
    CFDictionarySetValue(v3, @"mU", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD0C4();
  }

  v5 = [(FTiMessageRequestMMCSFileRefreshToken *)self signature];
  if (v5)
  {
    CFDictionarySetValue(v3, @"mS", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD14C();
  }

  v6 = [(FTiMessageRequestMMCSFileRefreshToken *)self authURL];
  if (v6)
  {
    CFDictionarySetValue(v3, @"mR", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD1D4();
  }

  CFDictionarySetValue(v3, @"mL", &off_119428);
  v7 = [(FTiMessageRequestMMCSFileRefreshToken *)self requestContentVersion];
  if (v7)
  {
    CFDictionarySetValue(v3, @"cV", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD25C();
  }

  v8 = [(FTiMessageRequestMMCSFileRefreshToken *)self requestContentHeaders];
  if (v8)
  {
    CFDictionarySetValue(v3, @"cH", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_BD2E4();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  -[FTiMessageRequestMMCSFileRefreshToken setResponseContentVersion:](self, "setResponseContentVersion:", [a3 objectForKeyedSubscript:@"cV"]);
  -[FTiMessageRequestMMCSFileRefreshToken setResponseContentBody:](self, "setResponseContentBody:", [a3 objectForKeyedSubscript:@"cB"]);
  -[FTiMessageRequestMMCSFileRefreshToken setResponseContentHeaders:](self, "setResponseContentHeaders:", [a3 objectForKeyedSubscript:@"cH"]);
  -[FTiMessageRequestMMCSFileRefreshToken setFailReason:](self, "setFailReason:", [a3 objectForKeyedSubscript:@"fR"]);
  v5 = [a3 objectForKeyedSubscript:@"s"];

  [(FTiMessageRequestMMCSFileRefreshToken *)self setResponseCode:v5];
}

@end