@interface AXMTranslatedText
+ (id)text:(id)a3 confidence:(double)a4 isLowConfidence:(BOOL)a5 targetLocale:(id)a6;
- (AXMTranslatedText)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMTranslatedText

+ (id)text:(id)a3 confidence:(double)a4 isLowConfidence:(BOOL)a5 targetLocale:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a3;
  v11 = objc_alloc_init(AXMTranslatedText);
  [(AXMTranslatedText *)v11 setText:v10];

  [(AXMTranslatedText *)v11 setConfidence:a4];
  [(AXMTranslatedText *)v11 setTargetLocale:v9];

  [(AXMTranslatedText *)v11 setLowConfidence:v6];

  return v11;
}

- (AXMTranslatedText)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXMTranslatedText;
  v5 = [(AXMTranslatedText *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    [(AXMTranslatedText *)v5 setText:v6];

    [v4 decodeDoubleForKey:@"confidence"];
    [(AXMTranslatedText *)v5 setConfidence:?];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetLocale"];
    [(AXMTranslatedText *)v5 setTargetLocale:v7];

    -[AXMTranslatedText setLowConfidence:](v5, "setLowConfidence:", [v4 decodeBoolForKey:@"lowConfidence"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AXMTranslatedText *)self text];
  [v6 encodeObject:v4 forKey:@"text"];

  [(AXMTranslatedText *)self confidence];
  [v6 encodeDouble:@"confidence" forKey:?];
  v5 = [(AXMTranslatedText *)self targetLocale];
  [v6 encodeObject:v5 forKey:@"targetLocale"];

  [v6 encodeBool:-[AXMTranslatedText isLowConfidence](self forKey:{"isLowConfidence"), @"lowConfidence"}];
}

@end