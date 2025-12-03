@interface COSWristAttributeConfidenceSummary
- (COSWristAttributeConfidenceSummary)initWithAttribute:(unint64_t)attribute andConfidenceValue:(double)value;
- (id)attributeDescription:(unint64_t)description;
- (id)description;
@end

@implementation COSWristAttributeConfidenceSummary

- (COSWristAttributeConfidenceSummary)initWithAttribute:(unint64_t)attribute andConfidenceValue:(double)value
{
  v7.receiver = self;
  v7.super_class = COSWristAttributeConfidenceSummary;
  result = [(COSWristAttributeConfidenceSummary *)&v7 init];
  if (result)
  {
    result->_attribute = attribute;
    result->_confidence = value;
  }

  return result;
}

- (id)attributeDescription:(unint64_t)description
{
  if (description > 8)
  {
    return &stru_10026E598;
  }

  else
  {
    return *(&off_10026C020 + description);
  }
}

- (id)description
{
  v3 = [(COSWristAttributeConfidenceSummary *)self attributeDescription:self->_attribute];
  v4 = [NSString stringWithFormat:@"%@ - %.2f%%", v3, self->_confidence * 100.0];

  return v4;
}

@end