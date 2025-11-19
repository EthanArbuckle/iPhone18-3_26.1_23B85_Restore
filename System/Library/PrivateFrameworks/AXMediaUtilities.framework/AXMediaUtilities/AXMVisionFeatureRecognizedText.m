@interface AXMVisionFeatureRecognizedText
- (AXMVisionFeatureRecognizedText)initWithCoder:(id)a3;
- (AXMVisionFeatureRecognizedText)initWithRecognizedText:(id)a3 range:(_NSRange)a4;
- (_NSRange)textRange;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionFeatureRecognizedText

- (AXMVisionFeatureRecognizedText)initWithRecognizedText:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = AXMVisionFeatureRecognizedText;
  v9 = [(AXMVisionFeatureRecognizedText *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, a3);
    v10->_textRange.location = location;
    v10->_textRange.length = length;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = AXMVisionFeatureCodingKeyTextRecognition;
  v6 = a3;
  [v6 encodeObject:text forKey:v5];
  v7 = [MEMORY[0x1E696B098] valueWithRange:{self->_textRange.location, self->_textRange.length}];
  [v6 encodeObject:v7 forKey:AXMVisionFeatureCodingKeyRange];
}

- (AXMVisionFeatureRecognizedText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionFeatureRecognizedText *)self init];
  if (v5 && getVNRecognizedTextClass())
  {
    v6 = [v4 decodeObjectOfClass:getVNRecognizedTextClass() forKey:AXMVisionFeatureCodingKeyTextRecognition];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyRange];
    v5->_textRange.location = [v8 rangeValue];
    v5->_textRange.length = v9;
  }

  return v5;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end