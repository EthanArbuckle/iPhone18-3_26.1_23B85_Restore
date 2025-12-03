@interface AXElementVision__generated__Output
- (AXElementVision__generated__Output)initWithConfidence:(id)confidence coordinates:(id)coordinates;
- (id)featureValueForName:(id)name;
@end

@implementation AXElementVision__generated__Output

- (AXElementVision__generated__Output)initWithConfidence:(id)confidence coordinates:(id)coordinates
{
  confidenceCopy = confidence;
  coordinatesCopy = coordinates;
  if (self)
  {
    objc_storeStrong(&self->_confidence, confidence);
    objc_storeStrong(&self->_coordinates, coordinates);
  }

  return self;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"confidence"])
  {
    v5 = 8;
LABEL_5:
    v6 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"coordinates"])
  {
    v5 = 16;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end