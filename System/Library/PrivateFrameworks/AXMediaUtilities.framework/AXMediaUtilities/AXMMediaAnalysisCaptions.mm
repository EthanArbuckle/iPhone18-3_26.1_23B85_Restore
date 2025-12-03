@interface AXMMediaAnalysisCaptions
- (AXMMediaAnalysisCaptions)initWithCoder:(id)coder;
- (AXMMediaAnalysisCaptions)initWithText:(id)text confidence:(double)confidence isLowConfidence:(BOOL)lowConfidence classificationIdentifiers:(id)identifiers;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMMediaAnalysisCaptions

- (AXMMediaAnalysisCaptions)initWithText:(id)text confidence:(double)confidence isLowConfidence:(BOOL)lowConfidence classificationIdentifiers:(id)identifiers
{
  textCopy = text;
  identifiersCopy = identifiers;
  v16.receiver = self;
  v16.super_class = AXMMediaAnalysisCaptions;
  v13 = [(AXMMediaAnalysisCaptions *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_text, text);
    v14->_confidence = confidence;
    v14->_isLowConfidence = lowConfidence;
    objc_storeStrong(&v14->_classificationIdentifiers, identifiers);
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(AXMMediaAnalysisCaptions *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  [(AXMMediaAnalysisCaptions *)self confidence];
  [coderCopy encodeDouble:@"confidence" forKey:?];
  [coderCopy encodeBool:-[AXMMediaAnalysisCaptions isLowConfidence](self forKey:{"isLowConfidence"), @"isLowConfidence"}];
  classificationIdentifiers = [(AXMMediaAnalysisCaptions *)self classificationIdentifiers];
  [coderCopy encodeObject:classificationIdentifiers forKey:@"classificationIdentifiers"];
}

- (AXMMediaAnalysisCaptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AXMMediaAnalysisCaptions;
  v5 = [(AXMMediaAnalysisCaptions *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v5->_isLowConfidence = [coderCopy decodeBoolForKey:@"isLowConfidence"];
    v9 = AXMSecureCodingClasses();
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"classificationIdentifiers"];
    classificationIdentifiers = v5->_classificationIdentifiers;
    v5->_classificationIdentifiers = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMMediaAnalysisCaptions<%p>", self];
  text = [(AXMMediaAnalysisCaptions *)self text];
  v5 = MEMORY[0x1E696AD98];
  [(AXMMediaAnalysisCaptions *)self confidence];
  v6 = [v5 numberWithDouble:?];
  isLowConfidence = [(AXMMediaAnalysisCaptions *)self isLowConfidence];
  classificationIdentifiers = [(AXMMediaAnalysisCaptions *)self classificationIdentifiers];
  [v3 appendFormat:@"  - Text: '%@' Confidence: %@ isLowConfidence : %ld classificationIdentifiers : %@\n", text, v6, isLowConfidence, classificationIdentifiers];

  return v3;
}

@end