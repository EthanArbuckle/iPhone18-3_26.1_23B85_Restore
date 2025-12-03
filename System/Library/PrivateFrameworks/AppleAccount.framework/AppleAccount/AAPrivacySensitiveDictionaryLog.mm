@interface AAPrivacySensitiveDictionaryLog
- (AAPrivacySensitiveDictionaryLog)initWithDictionary:(id)dictionary forKeys:(id)keys;
- (NSString)description;
- (id)redactedDescription;
@end

@implementation AAPrivacySensitiveDictionaryLog

- (AAPrivacySensitiveDictionaryLog)initWithDictionary:(id)dictionary forKeys:(id)keys
{
  dictionaryCopy = dictionary;
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = AAPrivacySensitiveDictionaryLog;
  v9 = [(AAPrivacySensitiveDictionaryLog *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, dictionary);
    objc_storeStrong(&v10->_keysToRedact, keys);
  }

  return v10;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  response = [(AAPrivacySensitiveDictionaryLog *)self response];
  v4 = [v2 stringWithFormat:@"%@", response];

  return v4;
}

- (id)redactedDescription
{
  response = [(AAPrivacySensitiveDictionaryLog *)self response];
  keysToRedact = [(AAPrivacySensitiveDictionaryLog *)self keysToRedact];
  v5 = [AAResponseBodyRedactor redactedCopyForResponse:response forKeys:keysToRedact];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];

  return v6;
}

@end