@interface NTKNumeralsAnalogFaceConfiguration
- (NTKNumeralsAnalogFaceConfiguration)initWithFaceColorPalette:(id)palette colorSchemeUnits:(unint64_t)units areAllComplicationsOff:(BOOL)off utilitySlot:(int64_t)slot selectedStyle:(unint64_t)style forDevice:(id)device;
@end

@implementation NTKNumeralsAnalogFaceConfiguration

- (NTKNumeralsAnalogFaceConfiguration)initWithFaceColorPalette:(id)palette colorSchemeUnits:(unint64_t)units areAllComplicationsOff:(BOOL)off utilitySlot:(int64_t)slot selectedStyle:(unint64_t)style forDevice:(id)device
{
  paletteCopy = palette;
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = NTKNumeralsAnalogFaceConfiguration;
  v17 = [(NTKNumeralsAnalogFaceConfiguration *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_faceColorPalette, palette);
    v18->_areAllComplicationsOff = off;
    v18->_selectedStyle = style;
    v18->_utilitySlot = slot;
    v18->_colorSchemeUnits = units;
    objc_storeStrong(&v18->_device, device);
  }

  return v18;
}

@end