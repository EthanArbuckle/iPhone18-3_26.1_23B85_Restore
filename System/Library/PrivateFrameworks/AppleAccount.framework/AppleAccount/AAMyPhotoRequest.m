@interface AAMyPhotoRequest
- (AAMyPhotoRequest)initWithAccount:(id)a3;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAMyPhotoRequest

- (AAMyPhotoRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAMyPhotoRequest;
  v6 = [(AAMyPhotoRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 getMyPhotoURL];

  return v3;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = AAMyPhotoRequest;
  v3 = [(AARequest *)&v7 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  serverCacheTag = self->_serverCacheTag;
  if (serverCacheTag)
  {
    [v4 setValue:serverCacheTag forHTTPHeaderField:@"ETag"];
  }

  return v4;
}

@end