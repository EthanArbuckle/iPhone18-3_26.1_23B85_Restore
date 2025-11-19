@interface AXElementVision__generated__Output
- (AXElementVision__generated__Output)initWithConfidence:(id)a3 coordinates:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation AXElementVision__generated__Output

- (AXElementVision__generated__Output)initWithConfidence:(id)a3 coordinates:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    objc_storeStrong(&self->_confidence, a3);
    objc_storeStrong(&self->_coordinates, a4);
  }

  return self;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"confidence"])
  {
    v5 = 8;
LABEL_5:
    v6 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"coordinates"])
  {
    v5 = 16;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end