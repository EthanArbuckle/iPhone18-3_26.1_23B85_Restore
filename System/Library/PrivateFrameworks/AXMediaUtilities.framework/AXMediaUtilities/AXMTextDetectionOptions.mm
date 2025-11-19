@interface AXMTextDetectionOptions
+ (id)defaultOptions;
- (AXMTextDetectionOptions)initWithCoder:(id)a3;
- (NSArray)textDetectionLocales;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMTextDetectionOptions

+ (id)defaultOptions
{
  v2 = [[AXMTextDetectionOptions alloc] _init];

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXMTextDetectionOptions;
  result = [(AXMTextDetectionOptions *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 8) = 1;
    *(result + 5) = 1;
  }

  return result;
}

- (AXMTextDetectionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMTextDetectionOptions *)self _init];
  if (v5)
  {
    -[AXMTextDetectionOptions setRecognitionLevel:](v5, "setRecognitionLevel:", [v4 decodeIntegerForKey:@"recognitionLevel"]);
    [v4 decodeDoubleForKey:@"normalizedMinimumTextHeightRatio"];
    [(AXMTextDetectionOptions *)v5 setNormalizedMinimumTextHeightRatio:?];
    -[AXMTextDetectionOptions setUsesLanguageCorrection:](v5, "setUsesLanguageCorrection:", [v4 decodeBoolForKey:@"usesLanguageCorrection"]);
    v6 = AXMSecureCodingClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"textDetectionLocales"];
    [(AXMTextDetectionOptions *)v5 setTextDetectionLocales:v7];

    -[AXMTextDetectionOptions setPostProcessingOptions:](v5, "setPostProcessingOptions:", [v4 decodeIntegerForKey:@"postProcessingOptions"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[AXMTextDetectionOptions recognitionLevel](self forKey:{"recognitionLevel"), @"recognitionLevel"}];
  [(AXMTextDetectionOptions *)self normalizedMinimumTextHeightRatio];
  [v5 encodeDouble:@"normalizedMinimumTextHeightRatio" forKey:?];
  [v5 encodeBool:-[AXMTextDetectionOptions usesLanguageCorrection](self forKey:{"usesLanguageCorrection"), @"usesLanguageCorrection"}];
  v4 = [(AXMTextDetectionOptions *)self textDetectionLocales];
  [v5 encodeObject:v4 forKey:@"textDetectionLocales"];

  [v5 encodeInteger:-[AXMTextDetectionOptions postProcessingOptions](self forKey:{"postProcessingOptions"), @"postProcessingOptions"}];
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"[ "];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AXMTextDetectionOptions *)self textDetectionLocales];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) languageCode];
        [v3 appendFormat:@"%@ ", v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v10 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMTextDetectionOptions<%p>\n", self];
  [v10 appendFormat:@"  Options: \n"];
  v11 = [(AXMTextDetectionOptions *)self recognitionLevel];
  v12 = @"Accurate";
  if (!v11)
  {
    v12 = @"Fast";
  }

  [v10 appendFormat:@"    Recognition Level: %@\n", v12];
  [(AXMTextDetectionOptions *)self normalizedMinimumTextHeightRatio];
  [v10 appendFormat:@"    Minimum Text Height Ratio: %.3f\n", v13];
  [v10 appendFormat:@"    Use Language Correction: %ld\n", -[AXMTextDetectionOptions usesLanguageCorrection](self, "usesLanguageCorrection")];
  [v10 appendFormat:@"    Detection Languages: %@\n", v3];
  [v10 appendFormat:@"    Apply Semantic Text Filtering: %ld\n", -[AXMTextDetectionOptions shouldApplySemanticTextFiltering](self, "shouldApplySemanticTextFiltering")];

  return v10;
}

- (NSArray)textDetectionLocales
{
  textDetectionLocales = self->_textDetectionLocales;
  if (!textDetectionLocales)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF58] preferredLanguages];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v6];
      if (v7)
      {
        [v4 addObject:v7];
      }
    }

    if (![v4 count])
    {
      v8 = [MEMORY[0x1E695DF58] currentLocale];
      if (v8)
      {
        [v4 addObject:v8];
      }
    }

    v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
    v10 = self->_textDetectionLocales;
    self->_textDetectionLocales = v9;

    textDetectionLocales = self->_textDetectionLocales;
  }

  return textDetectionLocales;
}

@end