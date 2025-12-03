@interface NEContentFilter
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEContentFilter)init;
- (NEContentFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEContentFilter

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  provider = [(NEContentFilter *)self provider];

  if (provider)
  {
    provider2 = [(NEContentFilter *)self provider];
    LOBYTE(provider) = [provider2 checkValidityAndCollectErrors:errorsCopy];
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  if ([(NEContentFilter *)self grade]< 1 || [(NEContentFilter *)self grade]>= 3)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = NEResourcesCopyLocalizedNSString(@"CONTENT_FILTER_INVALID_GRADE", @"CONTENT_FILTER_INVALID_GRADE");
    provider = [v7 initWithFormat:v8, -[NEContentFilter grade](self, "grade")];
    [errorsCopy addObject:provider];

    LOBYTE(provider) = 0;
  }

  perApp = [(NEContentFilter *)self perApp];
  if (perApp)
  {
    v10 = perApp;
    perApp2 = [(NEContentFilter *)self perApp];
    v12 = [perApp2 checkValidityAndCollectErrors:errorsCopy];

    LOBYTE(provider) = v12 & provider;
  }

  return provider & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEContentFilter allocWithZone:?]];
  [(NEContentFilter *)v4 setEnabled:[(NEContentFilter *)self isEnabled]];
  [(NEContentFilter *)v4 setDisableEncryptedDNSSettings:[(NEContentFilter *)self disableEncryptedDNSSettings]];
  provider = [(NEContentFilter *)self provider];
  [(NEContentFilter *)v4 setProvider:provider];

  [(NEContentFilter *)v4 setGrade:[(NEContentFilter *)self grade]];
  [(NEContentFilter *)v4 setEnableManualMode:[(NEContentFilter *)self enableManualMode]];
  perApp = [(NEContentFilter *)self perApp];
  [(NEContentFilter *)v4 setPerApp:perApp];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEContentFilter isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [coderCopy encodeBool:-[NEContentFilter disableEncryptedDNSSettings](self forKey:{"disableEncryptedDNSSettings"), @"DisableEncryptedDNSSettings"}];
  provider = [(NEContentFilter *)self provider];
  [coderCopy encodeObject:provider forKey:@"Provider"];

  [coderCopy encodeInteger:-[NEContentFilter grade](self forKey:{"grade"), @"FilterGrade"}];
  [coderCopy encodeBool:-[NEContentFilter enableManualMode](self forKey:{"enableManualMode"), @"EnableManualMode"}];
  perApp = [(NEContentFilter *)self perApp];
  [coderCopy encodeObject:perApp forKey:@"PerApp"];
}

- (NEContentFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEContentFilter *)self init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v5->_disableEncryptedDNSSettings = [coderCopy decodeBoolForKey:@"DisableEncryptedDNSSettings"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Provider"];
    provider = v5->_provider;
    v5->_provider = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PerApp"];
    perApp = v5->_perApp;
    v5->_perApp = v8;

    v10 = [coderCopy decodeIntegerForKey:@"FilterGrade"];
    if ((v10 - 1) <= 1)
    {
      v5->_grade = v10;
    }

    v5->_enableManualMode = [coderCopy decodeBoolForKey:@"EnableManualMode"];
  }

  return v5;
}

- (NEContentFilter)init
{
  v3.receiver = self;
  v3.super_class = NEContentFilter;
  result = [(NEContentFilter *)&v3 init];
  if (result)
  {
    result->_grade = 1;
  }

  return result;
}

@end