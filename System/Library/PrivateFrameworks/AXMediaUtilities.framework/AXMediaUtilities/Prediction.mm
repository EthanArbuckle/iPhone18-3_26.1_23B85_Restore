@interface Prediction
- (CGRect)boundingBox;
- (id)debugDescription;
@end

@implementation Prediction

- (id)debugDescription
{
  v9.receiver = self;
  v9.super_class = Prediction;
  v3 = [(Prediction *)&v9 debugDescription];
  v4 = MEMORY[0x1E696AEC0];
  label = [(Prediction *)self label];
  v6 = [v4 stringWithFormat:@" - [%@]", label];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end