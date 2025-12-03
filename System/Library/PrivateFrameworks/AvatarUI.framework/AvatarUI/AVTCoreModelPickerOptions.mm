@interface AVTCoreModelPickerOptions
+ (unint64_t)displayModeFromString:(id)string;
+ (unint64_t)sortingOptionFromString:(id)string;
- (AVTCoreModelPickerOptions)initWithFramingMode:(id)mode separatorFlag:(BOOL)flag presetOverrides:(id)overrides poseOverride:(id)override framingModeOverrides:(id)modeOverrides displayMode:(unint64_t)displayMode displayCondition:(id)condition sortingOption:(unint64_t)self0 stickerConfiguration:(id)self1 showsLabel:(BOOL)self2;
@end

@implementation AVTCoreModelPickerOptions

+ (unint64_t)displayModeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"colorPickerHeaderAccessory"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [stringCopy isEqualToString:@"highlightPicker"];
  }

  return v4;
}

+ (unint64_t)sortingOptionFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"defaultFirst"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [stringCopy isEqualToString:@"reversed"];
  }

  return v4;
}

- (AVTCoreModelPickerOptions)initWithFramingMode:(id)mode separatorFlag:(BOOL)flag presetOverrides:(id)overrides poseOverride:(id)override framingModeOverrides:(id)modeOverrides displayMode:(unint64_t)displayMode displayCondition:(id)condition sortingOption:(unint64_t)self0 stickerConfiguration:(id)self1 showsLabel:(BOOL)self2
{
  modeCopy = mode;
  overridesCopy = overrides;
  overrideCopy = override;
  modeOverridesCopy = modeOverrides;
  conditionCopy = condition;
  configurationCopy = configuration;
  v32.receiver = self;
  v32.super_class = AVTCoreModelPickerOptions;
  v22 = [(AVTCoreModelPickerOptions *)&v32 init];
  if (v22)
  {
    v23 = [modeCopy copy];
    framingMode = v22->_framingMode;
    v22->_framingMode = v23;

    v22->_separator = flag;
    v25 = [overridesCopy copy];
    presetOverrides = v22->_presetOverrides;
    v22->_presetOverrides = v25;

    v27 = [overrideCopy copy];
    poseOverride = v22->_poseOverride;
    v22->_poseOverride = v27;

    objc_storeStrong(&v22->_framingModeOverrides, modeOverrides);
    v22->_displayMode = displayMode;
    objc_storeStrong(&v22->_displayCondition, condition);
    v22->_sortingOption = option;
    objc_storeStrong(&v22->_stickerConfiguration, configuration);
    v22->_showsLabel = label;
  }

  return v22;
}

@end