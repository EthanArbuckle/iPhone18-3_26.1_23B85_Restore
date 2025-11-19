@interface NEContentFilter
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEContentFilter)init;
- (NEContentFilter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEContentFilter

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEContentFilter *)self provider];

  if (v5)
  {
    v6 = [(NEContentFilter *)self provider];
    LOBYTE(v5) = [v6 checkValidityAndCollectErrors:v4];
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
  }

  if ([(NEContentFilter *)self grade]< 1 || [(NEContentFilter *)self grade]>= 3)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = NEResourcesCopyLocalizedNSString(@"CONTENT_FILTER_INVALID_GRADE", @"CONTENT_FILTER_INVALID_GRADE");
    v5 = [v7 initWithFormat:v8, -[NEContentFilter grade](self, "grade")];
    [v4 addObject:v5];

    LOBYTE(v5) = 0;
  }

  v9 = [(NEContentFilter *)self perApp];
  if (v9)
  {
    v10 = v9;
    v11 = [(NEContentFilter *)self perApp];
    v12 = [v11 checkValidityAndCollectErrors:v4];

    LOBYTE(v5) = v12 & v5;
  }

  return v5 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEContentFilter allocWithZone:?]];
  [(NEContentFilter *)v4 setEnabled:[(NEContentFilter *)self isEnabled]];
  [(NEContentFilter *)v4 setDisableEncryptedDNSSettings:[(NEContentFilter *)self disableEncryptedDNSSettings]];
  v5 = [(NEContentFilter *)self provider];
  [(NEContentFilter *)v4 setProvider:v5];

  [(NEContentFilter *)v4 setGrade:[(NEContentFilter *)self grade]];
  [(NEContentFilter *)v4 setEnableManualMode:[(NEContentFilter *)self enableManualMode]];
  v6 = [(NEContentFilter *)self perApp];
  [(NEContentFilter *)v4 setPerApp:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[NEContentFilter isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [v4 encodeBool:-[NEContentFilter disableEncryptedDNSSettings](self forKey:{"disableEncryptedDNSSettings"), @"DisableEncryptedDNSSettings"}];
  v5 = [(NEContentFilter *)self provider];
  [v4 encodeObject:v5 forKey:@"Provider"];

  [v4 encodeInteger:-[NEContentFilter grade](self forKey:{"grade"), @"FilterGrade"}];
  [v4 encodeBool:-[NEContentFilter enableManualMode](self forKey:{"enableManualMode"), @"EnableManualMode"}];
  v6 = [(NEContentFilter *)self perApp];
  [v4 encodeObject:v6 forKey:@"PerApp"];
}

- (NEContentFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEContentFilter *)self init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v5->_disableEncryptedDNSSettings = [v4 decodeBoolForKey:@"DisableEncryptedDNSSettings"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Provider"];
    provider = v5->_provider;
    v5->_provider = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PerApp"];
    perApp = v5->_perApp;
    v5->_perApp = v8;

    v10 = [v4 decodeIntegerForKey:@"FilterGrade"];
    if ((v10 - 1) <= 1)
    {
      v5->_grade = v10;
    }

    v5->_enableManualMode = [v4 decodeBoolForKey:@"EnableManualMode"];
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