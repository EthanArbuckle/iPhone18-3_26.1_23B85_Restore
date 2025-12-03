@interface RAPAuxiliaryControlsRecording
- (RAPAuxiliaryControlsRecording)initWithControlsGeo:(id)geo originatingIndex:(unint64_t)index;
@end

@implementation RAPAuxiliaryControlsRecording

- (RAPAuxiliaryControlsRecording)initWithControlsGeo:(id)geo originatingIndex:(unint64_t)index
{
  geoCopy = geo;
  v11.receiver = self;
  v11.super_class = RAPAuxiliaryControlsRecording;
  v7 = [(RAPAuxiliaryControlsRecording *)&v11 init];
  if (v7)
  {
    v8 = [geoCopy copy];
    auxiliaryControls = v7->_auxiliaryControls;
    v7->_auxiliaryControls = v8;

    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7->_hasOriginatingAuxiliaryControlIndex = 1;
      v7->_originatingAuxiliaryControlIndex = index;
    }
  }

  return v7;
}

@end