@interface AXMTranslatedText
+ (id)text:(id)text confidence:(double)confidence isLowConfidence:(BOOL)lowConfidence targetLocale:(id)locale;
- (AXMTranslatedText)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMTranslatedText

+ (id)text:(id)text confidence:(double)confidence isLowConfidence:(BOOL)lowConfidence targetLocale:(id)locale
{
  lowConfidenceCopy = lowConfidence;
  localeCopy = locale;
  textCopy = text;
  v11 = objc_alloc_init(AXMTranslatedText);
  [(AXMTranslatedText *)v11 setText:textCopy];

  [(AXMTranslatedText *)v11 setConfidence:confidence];
  [(AXMTranslatedText *)v11 setTargetLocale:localeCopy];

  [(AXMTranslatedText *)v11 setLowConfidence:lowConfidenceCopy];

  return v11;
}

- (AXMTranslatedText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AXMTranslatedText;
  v5 = [(AXMTranslatedText *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    [(AXMTranslatedText *)v5 setText:v6];

    [coderCopy decodeDoubleForKey:@"confidence"];
    [(AXMTranslatedText *)v5 setConfidence:?];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetLocale"];
    [(AXMTranslatedText *)v5 setTargetLocale:v7];

    -[AXMTranslatedText setLowConfidence:](v5, "setLowConfidence:", [coderCopy decodeBoolForKey:@"lowConfidence"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(AXMTranslatedText *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  [(AXMTranslatedText *)self confidence];
  [coderCopy encodeDouble:@"confidence" forKey:?];
  targetLocale = [(AXMTranslatedText *)self targetLocale];
  [coderCopy encodeObject:targetLocale forKey:@"targetLocale"];

  [coderCopy encodeBool:-[AXMTranslatedText isLowConfidence](self forKey:{"isLowConfidence"), @"lowConfidence"}];
}

@end