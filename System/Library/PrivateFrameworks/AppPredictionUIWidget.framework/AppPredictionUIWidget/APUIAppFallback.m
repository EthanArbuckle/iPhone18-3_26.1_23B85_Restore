@interface APUIAppFallback
- (APUIAppFallback)initWithBundleId:(id)a3;
- (APUIAppFallback)initWithProactiveSuggestion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAPUIAppFallback:(id)a3;
@end

@implementation APUIAppFallback

- (APUIAppFallback)initWithBundleId:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = APUIAppFallback;
  v5 = [(APUIAppFallback *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = v5;
  }

  return v5;
}

- (APUIAppFallback)initWithProactiveSuggestion:(id)a3
{
  v5 = a3;
  v6 = [v5 executableSpecification];
  v7 = [v6 executableType];

  if (v7 == 1 && (v13.receiver = self, v13.super_class = APUIAppFallback, (self = [(APUIAppFallback *)&v13 init]) != 0))
  {
    v8 = [v5 executableSpecification];
    v9 = [v8 executableObject];
    bundleId = self->_bundleId;
    self->_bundleId = v9;

    objc_storeStrong(&self->_suggestion, a3);
    self = self;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(APUIAppFallback *)self isEqualToAPUIAppFallback:v5];
  }

  return v6;
}

- (BOOL)isEqualToAPUIAppFallback:(id)a3
{
  bundleId = self->_bundleId;
  v4 = [a3 bundleId];
  LOBYTE(bundleId) = [(NSString *)bundleId isEqualToString:v4];

  return bundleId;
}

@end