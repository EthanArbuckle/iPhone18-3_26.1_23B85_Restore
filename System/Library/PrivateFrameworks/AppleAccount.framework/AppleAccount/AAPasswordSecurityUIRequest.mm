@interface AAPasswordSecurityUIRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAPasswordSecurityUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  passwordSecurityUIURL = [v2 passwordSecurityUIURL];

  return passwordSecurityUIURL;
}

- (id)urlRequest
{
  v9.receiver = self;
  v9.super_class = AAPasswordSecurityUIRequest;
  urlRequest = [(AAAppleIDSettingsRequest *)&v9 urlRequest];
  v8.receiver = self;
  v8.super_class = AAPasswordSecurityUIRequest;
  urlRequest2 = [(AAAppleIDSettingsRequest *)&v8 urlRequest];
  v5 = [urlRequest2 mutableCopy];

  if ([(AAPasswordSecurityUIRequest *)self spyglassOptionMask])
  {
    [v5 aa_addSpyglassModeHeaderWithMask:{-[AAPasswordSecurityUIRequest spyglassOptionMask](self, "spyglassOptionMask")}];
  }

  v6 = [v5 copy];

  return v6;
}

@end