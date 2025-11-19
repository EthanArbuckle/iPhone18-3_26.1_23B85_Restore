@interface AAFamilyEligibilityRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAFamilyEligibilityRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 familyEligibilityURL];

  return v3;
}

- (id)urlRequest
{
  v8.receiver = self;
  v8.super_class = AAFamilyEligibilityRequest;
  v3 = [(AAFamilyRequest *)&v8 urlRequest];
  v4 = [v3 mutableCopy];

  if (!self->_iTunesAccount)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "No iTunes account provided to family eligibility request.", v7, 2u);
    }
  }

  return v4;
}

@end