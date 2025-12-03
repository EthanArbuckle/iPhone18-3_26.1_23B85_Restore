@interface _SFSiriReaderPlaybackRateController
- (BOOL)isSelectedValue:(id)value;
- (BOOL)shouldSelectValue:(id)value forItem:(id)item groupItem:(id)groupItem;
- (id)attributedStringForValue:(id)value;
- (void)setSelectedValue:(id)value;
@end

@implementation _SFSiriReaderPlaybackRateController

- (BOOL)isSelectedValue:(id)value
{
  [value floatValue];
  v4 = v3;
  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [mEMORY[0x1E69B1B90] currentPlaybackRate];
  v7 = v4 == v6;

  return v7;
}

- (void)setSelectedValue:(id)value
{
  [value floatValue];
  self->_playbackRate = v4;
  mEMORY[0x1E69B1B90] = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [mEMORY[0x1E69B1B90] setPlaybackRate:self->_playbackRate];
}

- (BOOL)shouldSelectValue:(id)value forItem:(id)item groupItem:(id)groupItem
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  groupItemCopy = groupItem;
  v8 = [v6 stringWithFormat:@"%@x", value, @"currentSpeakingRate"];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = WBSMakeAccessibilityIdentifier();
  [groupItemCopy setAccessibilityIdentifier:v10];

  return 1;
}

- (id)attributedStringForValue:(id)value
{
  valueCopy = value;
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696ADA0];
  if (valueCopy)
  {
    v9 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:valueCopy numberStyle:1];
    v10 = [v7 stringWithFormat:@"%@x", v9];
    v11 = [v5 initWithString:v10];
  }

  else
  {
    *&v6 = self->_playbackRate;
    if (*&v6 == 0.0)
    {
      *&v6 = 1.0;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:1];
    v12 = [v7 stringWithFormat:@"%@x", v10];
    v11 = [v5 initWithString:v12];
  }

  return v11;
}

@end