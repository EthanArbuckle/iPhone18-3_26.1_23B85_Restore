@interface AuthCodeHttpRequest
- (AuthCodeHttpRequest)initWithBaseURL:(id)a3 clientID:(id)a4 redirectURI:(id)a5;
- (NSURL)url;
@end

@implementation AuthCodeHttpRequest

- (AuthCodeHttpRequest)initWithBaseURL:(id)a3 clientID:(id)a4 redirectURI:(id)a5
{
  v9.receiver = self;
  v9.super_class = AuthCodeHttpRequest;
  result = [(AuthCodeHttpRequest *)&v9 init];
  if (result)
  {
    result->_baseURL = a3;
    result->_clientID = a4;
    result->_redirectURI = a5;
    result->_iccid = 0;
  }

  return result;
}

- (NSURL)url
{
  v17[0] = @"response_type=code";
  v3 = [NSString stringWithFormat:@"client_id=%@", self->_clientID];
  v17[1] = v3;
  v4 = [NSString stringWithFormat:@"redirect_uri=%@", self->_redirectURI];
  v17[2] = v4;
  v5 = [NSArray arrayWithObjects:v17 count:3];

  v6 = [NSMutableArray arrayWithArray:v5];
  if (self->_iccid)
  {
    v7 = [NSString stringWithFormat:@"iccid=%@", self->_iccid];
    [v6 addObject:v7];
  }

  if (self->_scope)
  {
    v8 = [NSString stringWithFormat:@"scope=%@", self->_scope];
    [v6 addObject:v8];
  }

  if (self->_state)
  {
    v9 = [NSString stringWithFormat:@"state=%@", self->_state];
    [v6 addObject:v9];
  }

  v10 = [v6 componentsJoinedByString:@"&"];
  v11 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

  v13 = [(NSURL *)self->_baseURL absoluteString];
  v14 = [NSString stringWithFormat:@"%@?%@", v13, v12];

  v15 = [NSURL URLWithString:v14];

  return v15;
}

@end