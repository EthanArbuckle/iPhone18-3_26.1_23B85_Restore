@interface CLKMediaAsset
+ (id)mediaAssetWithImage:(id)a3 forDevice:(id)a4;
+ (id)mediaAssetWithVideo:(id)a3 image:(id)a4 forDevice:(id)a5;
+ (id)mediaAssetWithVideo:(id)a3 image:(id)a4 videoDuration:(double)a5 stillDisplayTime:(double)a6 forDevice:(id)a7;
+ (id)mediaAssetWithVideoAndImageNamed:(id)a3 forDevice:(id)a4;
- (CLKMediaAsset)initWithImage:(id)a3 forDevice:(id)a4;
- (CLKMediaAsset)initWithVideo:(id)a3 image:(id)a4 forDevice:(id)a5;
- (CLKMediaAsset)initWithVideo:(id)a3 image:(id)a4 videoDuration:(double)a5 stillDisplayTime:(double)a6 forDevice:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLKMediaAsset

- (CLKMediaAsset)initWithImage:(id)a3 forDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CLKMediaAsset;
  v9 = [(CLKMediaAsset *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a4);
    objc_storeStrong(&v10->_image, a3);
    v11 = v10;
  }

  return v10;
}

- (CLKMediaAsset)initWithVideo:(id)a3 image:(id)a4 forDevice:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CLKMediaAsset;
  v12 = [(CLKMediaAsset *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, a5);
    objc_storeStrong(&v13->_video, a3);
    objc_storeStrong(&v13->_image, a4);
    v14 = v13;
  }

  return v13;
}

- (CLKMediaAsset)initWithVideo:(id)a3 image:(id)a4 videoDuration:(double)a5 stillDisplayTime:(double)a6 forDevice:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = CLKMediaAsset;
  v16 = [(CLKMediaAsset *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_device, a7);
    objc_storeStrong(&v17->_video, a3);
    objc_storeStrong(&v17->_image, a4);
    v17->_videoDuration = a5;
    v17->_stillDisplayTime = a6;
    v18 = v17;
  }

  return v17;
}

+ (id)mediaAssetWithImage:(id)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CLKMediaAsset alloc] initWithImage:v6 forDevice:v5];

  return v7;
}

+ (id)mediaAssetWithVideo:(id)a3 image:(id)a4 forDevice:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CLKMediaAsset alloc] initWithVideo:v9 image:v8 forDevice:v7];

  return v10;
}

+ (id)mediaAssetWithVideo:(id)a3 image:(id)a4 videoDuration:(double)a5 stillDisplayTime:(double)a6 forDevice:(id)a7
{
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [[CLKMediaAsset alloc] initWithVideo:v13 image:v12 videoDuration:v11 stillDisplayTime:a5 forDevice:a6];

  return v14;
}

+ (id)mediaAssetWithVideoAndImageNamed:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CLKVideo videoNamed:v5 forDevice:v6];
  if (v7)
  {
    if ([v6 sizeClass])
    {
      v8 = @"-regular@2x.png";
    }

    else
    {
      v8 = @"-compact@2x.png";
    }

    v9 = [v5 stringByAppendingString:v8];
    v10 = [MEMORY[0x277D755B8] imageNamed:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [[CLKMediaAsset alloc] initWithVideo:v7 image:v10 forDevice:v6];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  video = self->_video;
  image = self->_image;
  device = self->_device;

  return [v4 initWithVideo:video image:image forDevice:device];
}

@end