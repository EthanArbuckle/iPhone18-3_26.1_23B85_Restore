@interface AAPasswordSecurityUIRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAPasswordSecurityUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 passwordSecurityUIURL];

  return v3;
}

- (id)urlRequest
{
  v9.receiver = self;
  v9.super_class = AAPasswordSecurityUIRequest;
  v3 = [(AAAppleIDSettingsRequest *)&v9 urlRequest];
  v8.receiver = self;
  v8.super_class = AAPasswordSecurityUIRequest;
  v4 = [(AAAppleIDSettingsRequest *)&v8 urlRequest];
  v5 = [v4 mutableCopy];

  if ([(AAPasswordSecurityUIRequest *)self spyglassOptionMask])
  {
    [v5 aa_addSpyglassModeHeaderWithMask:{-[AAPasswordSecurityUIRequest spyglassOptionMask](self, "spyglassOptionMask")}];
  }

  v6 = [v5 copy];

  return v6;
}

@end