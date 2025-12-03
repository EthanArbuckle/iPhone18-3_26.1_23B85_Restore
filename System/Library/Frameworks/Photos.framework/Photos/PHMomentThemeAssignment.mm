@interface PHMomentThemeAssignment
- (PHMomentThemeAssignment)initWithThemeName:(id)name confidence:(id)confidence adapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion;
@end

@implementation PHMomentThemeAssignment

- (PHMomentThemeAssignment)initWithThemeName:(id)name confidence:(id)confidence adapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion
{
  nameCopy = name;
  confidenceCopy = confidence;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMoment.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];
  }

  v18.receiver = self;
  v18.super_class = PHMomentThemeAssignment;
  v14 = [(PHMomentThemeAssignment *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_themeName, name);
    objc_storeStrong(&v15->_confidence, confidence);
    v15->_adapterVersion = version;
    v15->_uemVersion = uemVersion;
  }

  return v15;
}

@end