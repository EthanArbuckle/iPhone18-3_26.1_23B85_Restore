@interface AXSpeechPronunciationOptions
- (AXSpeechPronunciationOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSpeechPronunciationOptions

- (AXSpeechPronunciationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AXSpeechPronunciationOptions;
  v5 = [(AXSpeechPronunciationOptions *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orthograpy"];
    [(AXSpeechPronunciationOptions *)v5 setOrthography:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    [(AXSpeechPronunciationOptions *)v5 setLanguage:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  orthography = [(AXSpeechPronunciationOptions *)self orthography];
  [coderCopy encodeObject:orthography forKey:@"orthograpy"];

  language = [(AXSpeechPronunciationOptions *)self language];
  [coderCopy encodeObject:language forKey:@"language"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  orthography = [(AXSpeechPronunciationOptions *)self orthography];
  language = [(AXSpeechPronunciationOptions *)self language];
  v6 = [v3 stringWithFormat:@"AXSpeechPronunciationOptions: %@ %@", orthography, language];

  return v6;
}

@end