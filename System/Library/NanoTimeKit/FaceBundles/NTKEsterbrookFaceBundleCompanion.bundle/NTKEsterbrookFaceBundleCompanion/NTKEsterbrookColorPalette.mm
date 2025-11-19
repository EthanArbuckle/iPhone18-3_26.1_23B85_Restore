@interface NTKEsterbrookColorPalette
- (BOOL)isMulticolor;
- (BOOL)isSundayOption;
- (NTKEsterbrookColorPalette)init;
@end

@implementation NTKEsterbrookColorPalette

- (NTKEsterbrookColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKEsterbrookColorPalette;
  return [(NTKFaceColorPalette *)&v5 initWithFaceClass:v3];
}

- (BOOL)isMulticolor
{
  v4 = objc_msgSend_configuration(self, a2, v2, v3);
  v8 = objc_msgSend_colorOption(v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"sunday", v10);

  return isEqualToString;
}

- (BOOL)isSundayOption
{
  v4 = objc_msgSend_configuration(self, a2, v2, v3);
  v8 = objc_msgSend_colorOption(v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"sunday", v10);

  return isEqualToString;
}

@end