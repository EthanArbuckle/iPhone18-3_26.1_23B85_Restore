@interface AAPrivacySensitiveDictionaryLog
- (AAPrivacySensitiveDictionaryLog)initWithDictionary:(id)a3 forKeys:(id)a4;
- (NSString)description;
- (id)redactedDescription;
@end

@implementation AAPrivacySensitiveDictionaryLog

- (AAPrivacySensitiveDictionaryLog)initWithDictionary:(id)a3 forKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AAPrivacySensitiveDictionaryLog;
  v9 = [(AAPrivacySensitiveDictionaryLog *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, a3);
    objc_storeStrong(&v10->_keysToRedact, a4);
  }

  return v10;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AAPrivacySensitiveDictionaryLog *)self response];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)redactedDescription
{
  v3 = [(AAPrivacySensitiveDictionaryLog *)self response];
  v4 = [(AAPrivacySensitiveDictionaryLog *)self keysToRedact];
  v5 = [AAResponseBodyRedactor redactedCopyForResponse:v3 forKeys:v4];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];

  return v6;
}

@end