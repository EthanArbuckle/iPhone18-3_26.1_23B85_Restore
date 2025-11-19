@interface AXSpeechPronunciationOptions
- (AXSpeechPronunciationOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSpeechPronunciationOptions

- (AXSpeechPronunciationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXSpeechPronunciationOptions;
  v5 = [(AXSpeechPronunciationOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orthograpy"];
    [(AXSpeechPronunciationOptions *)v5 setOrthography:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    [(AXSpeechPronunciationOptions *)v5 setLanguage:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXSpeechPronunciationOptions *)self orthography];
  [v4 encodeObject:v5 forKey:@"orthograpy"];

  v6 = [(AXSpeechPronunciationOptions *)self language];
  [v4 encodeObject:v6 forKey:@"language"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AXSpeechPronunciationOptions *)self orthography];
  v5 = [(AXSpeechPronunciationOptions *)self language];
  v6 = [v3 stringWithFormat:@"AXSpeechPronunciationOptions: %@ %@", v4, v5];

  return v6;
}

@end