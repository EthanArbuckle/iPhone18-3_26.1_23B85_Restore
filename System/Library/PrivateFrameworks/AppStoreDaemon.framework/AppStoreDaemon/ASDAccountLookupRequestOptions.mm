@interface ASDAccountLookupRequestOptions
- (ASDAccountLookupRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAccountLookupRequestOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setAuthIfNeeded:{-[ASDAccountLookupRequestOptions authIfNeeded](self, "authIfNeeded")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ASDAccountLookupRequestOptions authIfNeeded](self forKey:{"authIfNeeded"), @"authIfNeeded"}];
}

- (ASDAccountLookupRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ASDAccountLookupRequestOptions;
  v5 = [(ASDAccountLookupRequestOptions *)&v7 init];
  if (v5)
  {
    -[ASDAccountLookupRequestOptions setAuthIfNeeded:](v5, "setAuthIfNeeded:", [coderCopy decodeBoolForKey:@"authIfNeeded"]);
  }

  return v5;
}

@end