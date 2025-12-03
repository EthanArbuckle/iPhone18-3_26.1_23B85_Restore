@interface AVPictureInPicturePrerollAttributes
+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(id *)time preferredTintColor:(id)color;
+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(id *)time preferredTintColor:(id)color;
- (AVPictureInPicturePrerollAttributes)initWithPlaybackStatePrerollAttributes:(id)attributes requiredLinearPlaybackEndTime:(id *)time;
- (UIColor)preferredTintColor;
@end

@implementation AVPictureInPicturePrerollAttributes

- (UIColor)preferredTintColor
{
  pegasusAttributes = [(AVPictureInPicturePrerollAttributes *)self pegasusAttributes];
  preferredTintColor = [pegasusAttributes preferredTintColor];

  return preferredTintColor;
}

- (AVPictureInPicturePrerollAttributes)initWithPlaybackStatePrerollAttributes:(id)attributes requiredLinearPlaybackEndTime:(id *)time
{
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = AVPictureInPicturePrerollAttributes;
  v8 = [(AVPictureInPicturePrerollAttributes *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pegasusAttributes, attributes);
    v10 = *&time->var0;
    v9->_requiredLinearPlaybackEndTime.epoch = time->var3;
    *&v9->_requiredLinearPlaybackEndTime.value = v10;
  }

  return v9;
}

+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(id *)time preferredTintColor:(id)color
{
  colorCopy = color;
  v7 = [self alloc];
  v11 = *time;
  v8 = [MEMORY[0x1E69BCB68] prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:colorCopy preferredTintColor:CMTimeGetSeconds(&v11)];

  v11 = *time;
  v9 = [v7 initWithPlaybackStatePrerollAttributes:v8 requiredLinearPlaybackEndTime:&v11];

  return v9;
}

+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(id *)time preferredTintColor:(id)color
{
  colorCopy = color;
  v7 = [self alloc];
  v11 = *time;
  v8 = [MEMORY[0x1E69BCB68] prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:colorCopy preferredTintColor:CMTimeGetSeconds(&v11)];

  v11 = *time;
  v9 = [v7 initWithPlaybackStatePrerollAttributes:v8 requiredLinearPlaybackEndTime:&v11];

  return v9;
}

@end