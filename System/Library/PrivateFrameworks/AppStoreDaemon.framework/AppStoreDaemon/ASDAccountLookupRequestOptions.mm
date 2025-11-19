@interface ASDAccountLookupRequestOptions
- (ASDAccountLookupRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAccountLookupRequestOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setAuthIfNeeded:{-[ASDAccountLookupRequestOptions authIfNeeded](self, "authIfNeeded")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[ASDAccountLookupRequestOptions authIfNeeded](self forKey:{"authIfNeeded"), @"authIfNeeded"}];
}

- (ASDAccountLookupRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASDAccountLookupRequestOptions;
  v5 = [(ASDAccountLookupRequestOptions *)&v7 init];
  if (v5)
  {
    -[ASDAccountLookupRequestOptions setAuthIfNeeded:](v5, "setAuthIfNeeded:", [v4 decodeBoolForKey:@"authIfNeeded"]);
  }

  return v5;
}

@end