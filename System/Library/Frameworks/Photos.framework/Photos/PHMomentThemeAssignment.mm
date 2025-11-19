@interface PHMomentThemeAssignment
- (PHMomentThemeAssignment)initWithThemeName:(id)a3 confidence:(id)a4 adapterVersion:(int64_t)a5 uemVersion:(int64_t)a6;
@end

@implementation PHMomentThemeAssignment

- (PHMomentThemeAssignment)initWithThemeName:(id)a3 confidence:(id)a4 adapterVersion:(int64_t)a5 uemVersion:(int64_t)a6
{
  v12 = a3;
  v13 = a4;
  if (!v12)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHMoment.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];
  }

  v18.receiver = self;
  v18.super_class = PHMomentThemeAssignment;
  v14 = [(PHMomentThemeAssignment *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_themeName, a3);
    objc_storeStrong(&v15->_confidence, a4);
    v15->_adapterVersion = a5;
    v15->_uemVersion = a6;
  }

  return v15;
}

@end