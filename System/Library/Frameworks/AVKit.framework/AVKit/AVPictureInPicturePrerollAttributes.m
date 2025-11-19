@interface AVPictureInPicturePrerollAttributes
+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(id *)a3 preferredTintColor:(id)a4;
+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(id *)a3 preferredTintColor:(id)a4;
- (AVPictureInPicturePrerollAttributes)initWithPlaybackStatePrerollAttributes:(id)a3 requiredLinearPlaybackEndTime:(id *)a4;
- (UIColor)preferredTintColor;
@end

@implementation AVPictureInPicturePrerollAttributes

- (UIColor)preferredTintColor
{
  v2 = [(AVPictureInPicturePrerollAttributes *)self pegasusAttributes];
  v3 = [v2 preferredTintColor];

  return v3;
}

- (AVPictureInPicturePrerollAttributes)initWithPlaybackStatePrerollAttributes:(id)a3 requiredLinearPlaybackEndTime:(id *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = AVPictureInPicturePrerollAttributes;
  v8 = [(AVPictureInPicturePrerollAttributes *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pegasusAttributes, a3);
    v10 = *&a4->var0;
    v9->_requiredLinearPlaybackEndTime.epoch = a4->var3;
    *&v9->_requiredLinearPlaybackEndTime.value = v10;
  }

  return v9;
}

+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(id *)a3 preferredTintColor:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v11 = *a3;
  v8 = [MEMORY[0x1E69BCB68] prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:v6 preferredTintColor:CMTimeGetSeconds(&v11)];

  v11 = *a3;
  v9 = [v7 initWithPlaybackStatePrerollAttributes:v8 requiredLinearPlaybackEndTime:&v11];

  return v9;
}

+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(id *)a3 preferredTintColor:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v11 = *a3;
  v8 = [MEMORY[0x1E69BCB68] prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:v6 preferredTintColor:CMTimeGetSeconds(&v11)];

  v11 = *a3;
  v9 = [v7 initWithPlaybackStatePrerollAttributes:v8 requiredLinearPlaybackEndTime:&v11];

  return v9;
}

@end