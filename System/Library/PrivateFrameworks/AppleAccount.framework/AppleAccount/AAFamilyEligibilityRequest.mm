@interface AAFamilyEligibilityRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAFamilyEligibilityRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  familyEligibilityURL = [v2 familyEligibilityURL];

  return familyEligibilityURL;
}

- (id)urlRequest
{
  v8.receiver = self;
  v8.super_class = AAFamilyEligibilityRequest;
  urlRequest = [(AAFamilyRequest *)&v8 urlRequest];
  v4 = [urlRequest mutableCopy];

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