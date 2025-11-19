@interface AISSetupContextCandidateAccount
+ (id)_defaultShortNameFormatter;
+ (id)_stringFromPersonNameComponents:(id)a3 personNameComponentsFormatter:(id)a4;
- (AISSetupContextCandidateAccount)initWithAltDSID:(id)a3 username:(id)a4 nameComponents:(id)a5;
- (NSString)formattedShortName;
@end

@implementation AISSetupContextCandidateAccount

- (AISSetupContextCandidateAccount)initWithAltDSID:(id)a3 username:(id)a4 nameComponents:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AISSetupContextCandidateAccount;
  v12 = [(AISSetupContextCandidateAccount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_altDSID, a3);
    objc_storeStrong(&v13->_username, a4);
    objc_storeStrong(&v13->_nameComponents, a5);
  }

  return v13;
}

- (NSString)formattedShortName
{
  v3 = objc_opt_class();
  v4 = [(AISSetupContextCandidateAccount *)self nameComponents];
  v5 = [objc_opt_class() _defaultShortNameFormatter];
  v6 = [v3 _stringFromPersonNameComponents:v4 personNameComponentsFormatter:v5];

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

+ (id)_stringFromPersonNameComponents:(id)a3 personNameComponentsFormatter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v6 stringFromPersonNameComponents:v5];
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