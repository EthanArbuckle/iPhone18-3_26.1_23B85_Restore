@interface APUIAppFallback
- (APUIAppFallback)initWithBundleId:(id)id;
- (APUIAppFallback)initWithProactiveSuggestion:(id)suggestion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAPUIAppFallback:(id)fallback;
@end

@implementation APUIAppFallback

- (APUIAppFallback)initWithBundleId:(id)id
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = APUIAppFallback;
  v5 = [(APUIAppFallback *)&v10 init];
  if (v5)
  {
    v6 = [idCopy copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = v5;
  }

  return v5;
}

- (APUIAppFallback)initWithProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 1 && (v13.receiver = self, v13.super_class = APUIAppFallback, (self = [(APUIAppFallback *)&v13 init]) != 0))
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableObject = [executableSpecification2 executableObject];
    bundleId = self->_bundleId;
    self->_bundleId = executableObject;

    objc_storeStrong(&self->_suggestion, suggestion);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(APUIAppFallback *)self isEqualToAPUIAppFallback:v5];
  }

  return v6;
}

- (BOOL)isEqualToAPUIAppFallback:(id)fallback
{
  bundleId = self->_bundleId;
  bundleId = [fallback bundleId];
  LOBYTE(bundleId) = [(NSString *)bundleId isEqualToString:bundleId];

  return bundleId;
}

@end