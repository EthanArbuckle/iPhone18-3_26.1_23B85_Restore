@interface AVTCoreModelPickerOptions
+ (unint64_t)displayModeFromString:(id)a3;
+ (unint64_t)sortingOptionFromString:(id)a3;
- (AVTCoreModelPickerOptions)initWithFramingMode:(id)a3 separatorFlag:(BOOL)a4 presetOverrides:(id)a5 poseOverride:(id)a6 framingModeOverrides:(id)a7 displayMode:(unint64_t)a8 displayCondition:(id)a9 sortingOption:(unint64_t)a10 stickerConfiguration:(id)a11 showsLabel:(BOOL)a12;
@end

@implementation AVTCoreModelPickerOptions

+ (unint64_t)displayModeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"colorPickerHeaderAccessory"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"highlightPicker"];
  }

  return v4;
}

+ (unint64_t)sortingOptionFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"defaultFirst"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqualToString:@"reversed"];
  }

  return v4;
}

- (AVTCoreModelPickerOptions)initWithFramingMode:(id)a3 separatorFlag:(BOOL)a4 presetOverrides:(id)a5 poseOverride:(id)a6 framingModeOverrides:(id)a7 displayMode:(unint64_t)a8 displayCondition:(id)a9 sortingOption:(unint64_t)a10 stickerConfiguration:(id)a11 showsLabel:(BOOL)a12
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v31 = a7;
  v20 = a9;
  v21 = a11;
  v32.receiver = self;
  v32.super_class = AVTCoreModelPickerOptions;
  v22 = [(AVTCoreModelPickerOptions *)&v32 init];
  if (v22)
  {
    v23 = [v17 copy];
    framingMode = v22->_framingMode;
    v22->_framingMode = v23;

    v22->_separator = a4;
    v25 = [v18 copy];
    presetOverrides = v22->_presetOverrides;
    v22->_presetOverrides = v25;

    v27 = [v19 copy];
    poseOverride = v22->_poseOverride;
    v22->_poseOverride = v27;

    objc_storeStrong(&v22->_framingModeOverrides, a7);
    v22->_displayMode = a8;
    objc_storeStrong(&v22->_displayCondition, a9);
    v22->_sortingOption = a10;
    objc_storeStrong(&v22->_stickerConfiguration, a11);
    v22->_showsLabel = a12;
  }

  return v22;
}

@end