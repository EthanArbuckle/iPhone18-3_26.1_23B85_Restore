@interface AXMVisionFeatureRecognizedText
- (AXMVisionFeatureRecognizedText)initWithCoder:(id)coder;
- (AXMVisionFeatureRecognizedText)initWithRecognizedText:(id)text range:(_NSRange)range;
- (_NSRange)textRange;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionFeatureRecognizedText

- (AXMVisionFeatureRecognizedText)initWithRecognizedText:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v12.receiver = self;
  v12.super_class = AXMVisionFeatureRecognizedText;
  v9 = [(AXMVisionFeatureRecognizedText *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, text);
    v10->_textRange.location = location;
    v10->_textRange.length = length;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  v5 = AXMVisionFeatureCodingKeyTextRecognition;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:v5];
  v7 = [MEMORY[0x1E696B098] valueWithRange:{self->_textRange.location, self->_textRange.length}];
  [coderCopy encodeObject:v7 forKey:AXMVisionFeatureCodingKeyRange];
}

- (AXMVisionFeatureRecognizedText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AXMVisionFeatureRecognizedText *)self init];
  if (v5 && getVNRecognizedTextClass())
  {
    v6 = [coderCopy decodeObjectOfClass:getVNRecognizedTextClass() forKey:AXMVisionFeatureCodingKeyTextRecognition];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:AXMVisionFeatureCodingKeyRange];
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