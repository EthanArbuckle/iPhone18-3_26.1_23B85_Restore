@interface _SFSiriReaderPlaybackRateController
- (BOOL)isSelectedValue:(id)a3;
- (BOOL)shouldSelectValue:(id)a3 forItem:(id)a4 groupItem:(id)a5;
- (id)attributedStringForValue:(id)a3;
- (void)setSelectedValue:(id)a3;
@end

@implementation _SFSiriReaderPlaybackRateController

- (BOOL)isSelectedValue:(id)a3
{
  [a3 floatValue];
  v4 = v3;
  v5 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [v5 currentPlaybackRate];
  v7 = v4 == v6;

  return v7;
}

- (void)setSelectedValue:(id)a3
{
  [a3 floatValue];
  self->_playbackRate = v4;
  v5 = [MEMORY[0x1E69B1B90] sharedPlaybackController];
  [v5 setPlaybackRate:self->_playbackRate];
}

- (BOOL)shouldSelectValue:(id)a3 forItem:(id)a4 groupItem:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a5;
  v8 = [v6 stringWithFormat:@"%@x", a3, @"currentSpeakingRate"];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = WBSMakeAccessibilityIdentifier();
  [v7 setAccessibilityIdentifier:v10];

  return 1;
}

- (id)attributedStringForValue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696ADA0];
  if (v4)
  {
    v9 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v4 numberStyle:1];
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