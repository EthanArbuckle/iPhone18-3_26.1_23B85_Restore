@interface AXMTextDetectionOptions
+ (id)defaultOptions;
- (AXMTextDetectionOptions)initWithCoder:(id)coder;
- (NSArray)textDetectionLocales;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMTextDetectionOptions

+ (id)defaultOptions
{
  _init = [[AXMTextDetectionOptions alloc] _init];

  return _init;
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

- (AXMTextDetectionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(AXMTextDetectionOptions *)self _init];
  if (_init)
  {
    -[AXMTextDetectionOptions setRecognitionLevel:](_init, "setRecognitionLevel:", [coderCopy decodeIntegerForKey:@"recognitionLevel"]);
    [coderCopy decodeDoubleForKey:@"normalizedMinimumTextHeightRatio"];
    [(AXMTextDetectionOptions *)_init setNormalizedMinimumTextHeightRatio:?];
    -[AXMTextDetectionOptions setUsesLanguageCorrection:](_init, "setUsesLanguageCorrection:", [coderCopy decodeBoolForKey:@"usesLanguageCorrection"]);
    v6 = AXMSecureCodingClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"textDetectionLocales"];
    [(AXMTextDetectionOptions *)_init setTextDetectionLocales:v7];

    -[AXMTextDetectionOptions setPostProcessingOptions:](_init, "setPostProcessingOptions:", [coderCopy decodeIntegerForKey:@"postProcessingOptions"]);
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AXMTextDetectionOptions recognitionLevel](self forKey:{"recognitionLevel"), @"recognitionLevel"}];
  [(AXMTextDetectionOptions *)self normalizedMinimumTextHeightRatio];
  [coderCopy encodeDouble:@"normalizedMinimumTextHeightRatio" forKey:?];
  [coderCopy encodeBool:-[AXMTextDetectionOptions usesLanguageCorrection](self forKey:{"usesLanguageCorrection"), @"usesLanguageCorrection"}];
  textDetectionLocales = [(AXMTextDetectionOptions *)self textDetectionLocales];
  [coderCopy encodeObject:textDetectionLocales forKey:@"textDetectionLocales"];

  [coderCopy encodeInteger:-[AXMTextDetectionOptions postProcessingOptions](self forKey:{"postProcessingOptions"), @"postProcessingOptions"}];
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"[ "];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  textDetectionLocales = [(AXMTextDetectionOptions *)self textDetectionLocales];
  v5 = [textDetectionLocales countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(textDetectionLocales);
        }

        languageCode = [*(*(&v15 + 1) + 8 * i) languageCode];
        [v3 appendFormat:@"%@ ", languageCode];
      }

      v6 = [textDetectionLocales countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v10 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMTextDetectionOptions<%p>\n", self];
  [v10 appendFormat:@"  Options: \n"];
  recognitionLevel = [(AXMTextDetectionOptions *)self recognitionLevel];
  v12 = @"Accurate";
  if (!recognitionLevel)
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
    array = [MEMORY[0x1E695DF70] array];
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    if (firstObject)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:firstObject];
      if (v7)
      {
        [array addObject:v7];
      }
    }

    if (![array count])
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      if (currentLocale)
      {
        [array addObject:currentLocale];
      }
    }

    v9 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
    v10 = self->_textDetectionLocales;
    self->_textDetectionLocales = v9;

    textDetectionLocales = self->_textDetectionLocales;
  }

  return textDetectionLocales;
}

@end