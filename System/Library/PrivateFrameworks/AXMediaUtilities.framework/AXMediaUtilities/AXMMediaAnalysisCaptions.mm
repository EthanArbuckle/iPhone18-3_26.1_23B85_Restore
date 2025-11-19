@interface AXMMediaAnalysisCaptions
- (AXMMediaAnalysisCaptions)initWithCoder:(id)a3;
- (AXMMediaAnalysisCaptions)initWithText:(id)a3 confidence:(double)a4 isLowConfidence:(BOOL)a5 classificationIdentifiers:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMMediaAnalysisCaptions

- (AXMMediaAnalysisCaptions)initWithText:(id)a3 confidence:(double)a4 isLowConfidence:(BOOL)a5 classificationIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = AXMMediaAnalysisCaptions;
  v13 = [(AXMMediaAnalysisCaptions *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_text, a3);
    v14->_confidence = a4;
    v14->_isLowConfidence = a5;
    objc_storeStrong(&v14->_classificationIdentifiers, a6);
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMMediaAnalysisCaptions *)self text];
  [v4 encodeObject:v5 forKey:@"text"];

  [(AXMMediaAnalysisCaptions *)self confidence];
  [v4 encodeDouble:@"confidence" forKey:?];
  [v4 encodeBool:-[AXMMediaAnalysisCaptions isLowConfidence](self forKey:{"isLowConfidence"), @"isLowConfidence"}];
  v6 = [(AXMMediaAnalysisCaptions *)self classificationIdentifiers];
  [v4 encodeObject:v6 forKey:@"classificationIdentifiers"];
}

- (AXMMediaAnalysisCaptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AXMMediaAnalysisCaptions;
  v5 = [(AXMMediaAnalysisCaptions *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v5->_isLowConfidence = [v4 decodeBoolForKey:@"isLowConfidence"];
    v9 = AXMSecureCodingClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"classificationIdentifiers"];
    classificationIdentifiers = v5->_classificationIdentifiers;
    v5->_classificationIdentifiers = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMMediaAnalysisCaptions<%p>", self];
  v4 = [(AXMMediaAnalysisCaptions *)self text];
  v5 = MEMORY[0x1E696AD98];
  [(AXMMediaAnalysisCaptions *)self confidence];
  v6 = [v5 numberWithDouble:?];
  v7 = [(AXMMediaAnalysisCaptions *)self isLowConfidence];
  v8 = [(AXMMediaAnalysisCaptions *)self classificationIdentifiers];
  [v3 appendFormat:@"  - Text: '%@' Confidence: %@ isLowConfidence : %ld classificationIdentifiers : %@\n", v4, v6, v7, v8];

  return v3;
}

@end