@interface AMSDRefreshMultiUserResult
- (AMSDRefreshMultiUserResult)initWithHomes:(id)a3 options:(id)a4;
- (BOOL)enabledThrottling;
- (NSString)hashedDescription;
@end

@implementation AMSDRefreshMultiUserResult

- (AMSDRefreshMultiUserResult)initWithHomes:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSDRefreshMultiUserResult;
  v9 = [(AMSDRefreshMultiUserResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homes, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

- (BOOL)enabledThrottling
{
  v2 = &v7;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self->_enabledThrottling)
  {
    v3 = [(AMSDRefreshMultiUserResult *)self isScheduled:_NSConcreteStackBlock];
    v4 = v8;
    v2 = v8;
  }

  else
  {
    v3 = 0;
    v4 = &v7;
  }

  *(v4 + 24) = v3;
  v5 = *(v2 + 24);
  _Block_object_dispose(&v7, 8);
  return v5;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  if ([(AMSDRefreshMultiUserResult *)self enabledThrottling])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  [v3 appendFormat:@"\n  enabledThrottling = %@", v4];
  v5 = [(AMSDRefreshMultiUserResult *)self errors];
  v6 = AMSHashIfNeeded();
  [v3 appendFormat:@"\n  errors = %@", v6];

  if ([(AMSDRefreshMultiUserResult *)self isScheduled])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  [v3 appendFormat:@"\n  scheduled = %@", v7];
  v8 = [(AMSDRefreshMultiUserResult *)self homes];
  v9 = AMSHashIfNeeded();
  [v3 appendFormat:@"\n  homes = %@", v9];

  v10 = [(AMSDRefreshMultiUserResult *)self options];
  v11 = AMSHashIfNeeded();
  [v3 appendFormat:@"\n  options = %@", v11];

  [v3 appendString:@"\n}"];

  return v3;
}

@end