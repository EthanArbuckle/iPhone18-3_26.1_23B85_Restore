@interface COSWristAttributeConfidenceSummary
- (COSWristAttributeConfidenceSummary)initWithAttribute:(unint64_t)a3 andConfidenceValue:(double)a4;
- (id)attributeDescription:(unint64_t)a3;
- (id)description;
@end

@implementation COSWristAttributeConfidenceSummary

- (COSWristAttributeConfidenceSummary)initWithAttribute:(unint64_t)a3 andConfidenceValue:(double)a4
{
  v7.receiver = self;
  v7.super_class = COSWristAttributeConfidenceSummary;
  result = [(COSWristAttributeConfidenceSummary *)&v7 init];
  if (result)
  {
    result->_attribute = a3;
    result->_confidence = a4;
  }

  return result;
}

- (id)attributeDescription:(unint64_t)a3
{
  if (a3 > 8)
  {
    return &stru_10026E598;
  }

  else
  {
    return *(&off_10026C020 + a3);
  }
}

- (id)description
{
  v3 = [(COSWristAttributeConfidenceSummary *)self attributeDescription:self->_attribute];
  v4 = [NSString stringWithFormat:@"%@ - %.2f%%", v3, self->_confidence * 100.0];

  return v4;
}

@end