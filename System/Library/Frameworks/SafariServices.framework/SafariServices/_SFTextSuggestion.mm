@interface _SFTextSuggestion
+ (_SFTextSuggestion)textSuggestionWithCredentialIdentity:(id)identity submitForm:(BOOL)form;
+ (_SFTextSuggestion)textSuggestionWithCreditCardData:(id)data;
+ (_SFTextSuggestion)textSuggestionWithESimDataType:(int64_t)type;
+ (_SFTextSuggestion)textSuggestionWithGeneratedPassword:(id)password;
+ (_SFTextSuggestion)textSuggestionWithHideMyEmailRecord:(id)record;
+ (_SFTextSuggestion)textSuggestionWithOneTimeCode:(id)code;
+ (_SFTextSuggestion)textSuggestionWithSavedAccountMatch:(id)match submitForm:(BOOL)form;
+ (_SFTextSuggestion)textSuggestionWithSingleCreditCardDataValue:(id)value;
+ (_SFTextSuggestion)textSuggestionWithSingleDisplayData:(id)data;
+ (_SFTextSuggestion)textSuggestionWithUsername:(id)username;
+ (id)textSuggestionToCustomizeGeneratedPassword;
+ (id)textSuggestionToOpenPasswordsPocketWithHistorySection;
+ (id)textSuggestionToProvisionHideMyEmailRecord;
- (_SFTextSuggestion)initWithCoder:(id)coder;
- (_SFTextSuggestion)initWithTextSuggestionType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFTextSuggestion

- (_SFTextSuggestion)initWithTextSuggestionType:(int64_t)type
{
  v17.receiver = self;
  v17.super_class = _SFTextSuggestion;
  v4 = [(UITextSuggestion *)&v17 init];
  v5 = v4;
  if (v4)
  {
    [(UITextSuggestion *)v4 setDisplayStylePlain:1];
    v5->_textSuggestionType = type;
    generatedPassword = v5->_generatedPassword;
    v5->_generatedPassword = 0;

    username = v5->_username;
    v5->_username = 0;

    urlCredential = v5->_urlCredential;
    v5->_urlCredential = 0;

    savedAccountMatch = v5->_savedAccountMatch;
    v5->_savedAccountMatch = 0;

    v5->_submitForm = 0;
    singleDisplayData = v5->_singleDisplayData;
    v5->_singleDisplayData = 0;

    creditCardData = v5->_creditCardData;
    v5->_creditCardData = 0;

    singleCreditCardData = v5->_singleCreditCardData;
    v5->_singleCreditCardData = 0;

    credentialIdentity = v5->_credentialIdentity;
    v5->_credentialIdentity = 0;

    emailRecord = v5->_emailRecord;
    v5->_emailRecord = 0;

    v15 = v5;
  }

  return v5;
}

+ (_SFTextSuggestion)textSuggestionWithOneTimeCode:(id)code
{
  codeCopy = code;
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:0];
  oneTimeCode = v4->_oneTimeCode;
  v4->_oneTimeCode = codeCopy;

  return v4;
}

+ (_SFTextSuggestion)textSuggestionWithGeneratedPassword:(id)password
{
  passwordCopy = password;
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:1];
  generatedPassword = v4->_generatedPassword;
  v4->_generatedPassword = passwordCopy;

  return v4;
}

+ (id)textSuggestionToCustomizeGeneratedPassword
{
  v2 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:2];

  return v2;
}

+ (_SFTextSuggestion)textSuggestionWithUsername:(id)username
{
  usernameCopy = username;
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:3];
  username = v4->_username;
  v4->_username = usernameCopy;

  return v4;
}

+ (_SFTextSuggestion)textSuggestionWithSavedAccountMatch:(id)match submitForm:(BOOL)form
{
  matchCopy = match;
  v6 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:4];
  savedAccountMatch = v6->_savedAccountMatch;
  v6->_savedAccountMatch = matchCopy;

  v6->_submitForm = form;

  return v6;
}

+ (_SFTextSuggestion)textSuggestionWithSingleDisplayData:(id)data
{
  dataCopy = data;
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:5];
  singleDisplayData = v4->_singleDisplayData;
  v4->_singleDisplayData = dataCopy;

  return v4;
}

+ (_SFTextSuggestion)textSuggestionWithCredentialIdentity:(id)identity submitForm:(BOOL)form
{
  identityCopy = identity;
  v6 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:6];
  credentialIdentity = v6->_credentialIdentity;
  v6->_credentialIdentity = identityCopy;

  v6->_submitForm = form;

  return v6;
}

+ (_SFTextSuggestion)textSuggestionWithCreditCardData:(id)data
{
  dataCopy = data;
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:7];
  creditCardData = v4->_creditCardData;
  v4->_creditCardData = dataCopy;

  return v4;
}

+ (_SFTextSuggestion)textSuggestionWithSingleCreditCardDataValue:(id)value
{
  valueCopy = value;
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:8];
  singleCreditCardData = v4->_singleCreditCardData;
  v4->_singleCreditCardData = valueCopy;

  return v4;
}

+ (_SFTextSuggestion)textSuggestionWithHideMyEmailRecord:(id)record
{
  recordCopy = record;
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:9];
  emailRecord = v4->_emailRecord;
  v4->_emailRecord = recordCopy;

  return v4;
}

+ (id)textSuggestionToProvisionHideMyEmailRecord
{
  v2 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:10];

  return v2;
}

+ (_SFTextSuggestion)textSuggestionWithESimDataType:(int64_t)type
{
  v4 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:11];
  v4->_eSimDataType = type;

  return v4;
}

+ (id)textSuggestionToOpenPasswordsPocketWithHistorySection
{
  v2 = [[_SFTextSuggestion alloc] initWithTextSuggestionType:12];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _SFTextSuggestion;
  coderCopy = coder;
  [(UITextSuggestion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:LODWORD(self->_textSuggestionType) forKey:{@"textSuggestionType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_oneTimeCode forKey:@"oneTimeCode"];
  [coderCopy encodeObject:self->_generatedPassword forKey:@"generatedPassword"];
  [coderCopy encodeObject:self->_username forKey:@"username"];
  [coderCopy encodeObject:self->_urlCredential forKey:@"urlCredential"];
  [coderCopy encodeBool:self->_submitForm forKey:@"submitForm"];
  [coderCopy encodeObject:self->_singleDisplayData forKey:@"singleDisplayData"];
  [coderCopy encodeObject:self->_creditCardData forKey:@"creditCardData"];
  [coderCopy encodeObject:self->_singleCreditCardData forKey:@"singleCreditCardData"];
  [coderCopy encodeObject:self->_credentialIdentity forKey:@"credentialIdentity"];
  [coderCopy encodeObject:self->_emailRecord forKey:@"emailRecord"];
}

- (_SFTextSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _SFTextSuggestion;
  v5 = [(UITextSuggestion *)&v27 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(UITextSuggestion *)v5 setDisplayStylePlain:1];
    v6->_textSuggestionType = [coderCopy decodeIntegerForKey:@"textSuggestionType"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oneTimeCode"];
    oneTimeCode = v6->_oneTimeCode;
    v6->_oneTimeCode = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"generatedPassword"];
    generatedPassword = v6->_generatedPassword;
    v6->_generatedPassword = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    username = v6->_username;
    v6->_username = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlCredential"];
    urlCredential = v6->_urlCredential;
    v6->_urlCredential = v13;

    v6->_submitForm = [coderCopy decodeBoolForKey:@"submitForm"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"singleDisplayData"];
    singleDisplayData = v6->_singleDisplayData;
    v6->_singleDisplayData = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creditCardData"];
    creditCardData = v6->_creditCardData;
    v6->_creditCardData = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"singleCreditCardData"];
    singleCreditCardData = v6->_singleCreditCardData;
    v6->_singleCreditCardData = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];
    credentialIdentity = v6->_credentialIdentity;
    v6->_credentialIdentity = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emailRecord"];
    emailRecord = v6->_emailRecord;
    v6->_emailRecord = v23;

    v25 = v6;
  }

  return v6;
}

@end