@interface CLKMediaAsset
+ (id)mediaAssetWithImage:(id)image forDevice:(id)device;
+ (id)mediaAssetWithVideo:(id)video image:(id)image forDevice:(id)device;
+ (id)mediaAssetWithVideo:(id)video image:(id)image videoDuration:(double)duration stillDisplayTime:(double)time forDevice:(id)device;
+ (id)mediaAssetWithVideoAndImageNamed:(id)named forDevice:(id)device;
- (CLKMediaAsset)initWithImage:(id)image forDevice:(id)device;
- (CLKMediaAsset)initWithVideo:(id)video image:(id)image forDevice:(id)device;
- (CLKMediaAsset)initWithVideo:(id)video image:(id)image videoDuration:(double)duration stillDisplayTime:(double)time forDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLKMediaAsset

- (CLKMediaAsset)initWithImage:(id)image forDevice:(id)device
{
  imageCopy = image;
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = CLKMediaAsset;
  v9 = [(CLKMediaAsset *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_image, image);
    v11 = v10;
  }

  return v10;
}

- (CLKMediaAsset)initWithVideo:(id)video image:(id)image forDevice:(id)device
{
  videoCopy = video;
  imageCopy = image;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = CLKMediaAsset;
  v12 = [(CLKMediaAsset *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    objc_storeStrong(&v13->_video, video);
    objc_storeStrong(&v13->_image, image);
    v14 = v13;
  }

  return v13;
}

- (CLKMediaAsset)initWithVideo:(id)video image:(id)image videoDuration:(double)duration stillDisplayTime:(double)time forDevice:(id)device
{
  videoCopy = video;
  imageCopy = image;
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = CLKMediaAsset;
  v16 = [(CLKMediaAsset *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_device, device);
    objc_storeStrong(&v17->_video, video);
    objc_storeStrong(&v17->_image, image);
    v17->_videoDuration = duration;
    v17->_stillDisplayTime = time;
    v18 = v17;
  }

  return v17;
}

+ (id)mediaAssetWithImage:(id)image forDevice:(id)device
{
  deviceCopy = device;
  imageCopy = image;
  v7 = [[CLKMediaAsset alloc] initWithImage:imageCopy forDevice:deviceCopy];

  return v7;
}

+ (id)mediaAssetWithVideo:(id)video image:(id)image forDevice:(id)device
{
  deviceCopy = device;
  imageCopy = image;
  videoCopy = video;
  v10 = [[CLKMediaAsset alloc] initWithVideo:videoCopy image:imageCopy forDevice:deviceCopy];

  return v10;
}

+ (id)mediaAssetWithVideo:(id)video image:(id)image videoDuration:(double)duration stillDisplayTime:(double)time forDevice:(id)device
{
  deviceCopy = device;
  imageCopy = image;
  videoCopy = video;
  v14 = [[CLKMediaAsset alloc] initWithVideo:videoCopy image:imageCopy videoDuration:deviceCopy stillDisplayTime:duration forDevice:time];

  return v14;
}

+ (id)mediaAssetWithVideoAndImageNamed:(id)named forDevice:(id)device
{
  namedCopy = named;
  deviceCopy = device;
  v7 = [CLKVideo videoNamed:namedCopy forDevice:deviceCopy];
  if (v7)
  {
    if ([deviceCopy sizeClass])
    {
      v8 = @"-regular@2x.png";
    }

    else
    {
      v8 = @"-compact@2x.png";
    }

    v9 = [namedCopy stringByAppendingString:v8];
    v10 = [MEMORY[0x277D755B8] imageNamed:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [[CLKMediaAsset alloc] initWithVideo:v7 image:v10 forDevice:deviceCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  video = self->_video;
  image = self->_image;
  device = self->_device;

  return [v4 initWithVideo:video image:image forDevice:device];
}

@end