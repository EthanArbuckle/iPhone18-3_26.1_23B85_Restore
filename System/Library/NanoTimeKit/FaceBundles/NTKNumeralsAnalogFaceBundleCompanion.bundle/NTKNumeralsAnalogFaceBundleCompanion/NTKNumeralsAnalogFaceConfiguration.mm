@interface NTKNumeralsAnalogFaceConfiguration
- (NTKNumeralsAnalogFaceConfiguration)initWithFaceColorPalette:(id)a3 colorSchemeUnits:(unint64_t)a4 areAllComplicationsOff:(BOOL)a5 utilitySlot:(int64_t)a6 selectedStyle:(unint64_t)a7 forDevice:(id)a8;
@end

@implementation NTKNumeralsAnalogFaceConfiguration

- (NTKNumeralsAnalogFaceConfiguration)initWithFaceColorPalette:(id)a3 colorSchemeUnits:(unint64_t)a4 areAllComplicationsOff:(BOOL)a5 utilitySlot:(int64_t)a6 selectedStyle:(unint64_t)a7 forDevice:(id)a8
{
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = NTKNumeralsAnalogFaceConfiguration;
  v17 = [(NTKNumeralsAnalogFaceConfiguration *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_faceColorPalette, a3);
    v18->_areAllComplicationsOff = a5;
    v18->_selectedStyle = a7;
    v18->_utilitySlot = a6;
    v18->_colorSchemeUnits = a4;
    objc_storeStrong(&v18->_device, a8);
  }

  return v18;
}

@end