@interface AISSetupContextCandidateAccount
+ (id)_defaultShortNameFormatter;
+ (id)_stringFromPersonNameComponents:(id)components personNameComponentsFormatter:(id)formatter;
- (AISSetupContextCandidateAccount)initWithAltDSID:(id)d username:(id)username nameComponents:(id)components;
- (NSString)formattedShortName;
@end

@implementation AISSetupContextCandidateAccount

- (AISSetupContextCandidateAccount)initWithAltDSID:(id)d username:(id)username nameComponents:(id)components
{
  dCopy = d;
  usernameCopy = username;
  componentsCopy = components;
  v15.receiver = self;
  v15.super_class = AISSetupContextCandidateAccount;
  v12 = [(AISSetupContextCandidateAccount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_altDSID, d);
    objc_storeStrong(&v13->_username, username);
    objc_storeStrong(&v13->_nameComponents, components);
  }

  return v13;
}

- (NSString)formattedShortName
{
  v3 = objc_opt_class();
  nameComponents = [(AISSetupContextCandidateAccount *)self nameComponents];
  _defaultShortNameFormatter = [objc_opt_class() _defaultShortNameFormatter];
  v6 = [v3 _stringFromPersonNameComponents:nameComponents personNameComponentsFormatter:_defaultShortNameFormatter];

  return v6;
}

+ (id)_defaultShortNameFormatter
{
  if (_defaultShortNameFormatter_token != -1)
  {
    +[AISSetupContextCandidateAccount _defaultShortNameFormatter];
  }

  v3 = _defaultShortNameFormatter_formatter;

  return v3;
}

uint64_t __61__AISSetupContextCandidateAccount__defaultShortNameFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAC08]);
  v1 = _defaultShortNameFormatter_formatter;
  _defaultShortNameFormatter_formatter = v0;

  v2 = _defaultShortNameFormatter_formatter;

  return [v2 setStyle:1];
}

+ (id)_stringFromPersonNameComponents:(id)components personNameComponentsFormatter:(id)formatter
{
  componentsCopy = components;
  formatterCopy = formatter;
  v7 = formatterCopy;
  if (componentsCopy)
  {
    v8 = [formatterCopy stringFromPersonNameComponents:componentsCopy];
    if ([v8 length])
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

@end