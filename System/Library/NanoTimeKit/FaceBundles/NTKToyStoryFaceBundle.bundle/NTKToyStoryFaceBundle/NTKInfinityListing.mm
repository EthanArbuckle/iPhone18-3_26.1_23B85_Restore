@interface NTKInfinityListing
+ (id)listingForDevice:(id)a3 withFilename:(id)a4;
+ (id)listingForDevice:(id)a3 withFilename:(id)a4 type:(unint64_t)a5 attributes:(id)a6;
- (BOOL)snapshotDiffers:(id)a3;
- (CLKVideo)video;
- (NSString)debugDescription;
- (id)complicationColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForDevice:(id)a3 withFilename:(id)a4;
- (void)discardAssets;
@end

@implementation NTKInfinityListing

+ (id)listingForDevice:(id)a3 withFilename:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NTKInfinityListing alloc] initForDevice:v6 withFilename:v5];

  return v7;
}

+ (id)listingForDevice:(id)a3 withFilename:(id)a4 type:(unint64_t)a5 attributes:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[NTKInfinityListing alloc] initForDevice:v11 withFilename:v10];

  [v12 setType:a5];
  [v12 setAttributes:v9];

  return v12;
}

- (id)initForDevice:(id)a3 withFilename:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NTKInfinityListing;
  v9 = [(NTKInfinityListing *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_filename, a4);
    v10->_playback = 0;
  }

  return v10;
}

- (CLKVideo)video
{
  video = self->_video;
  if (!video)
  {
    device = self->_device;
    filename = self->_filename;
    v6 = NTKAssetsBundle();
    v7 = [CLKVideo videoNamed:filename forDevice:device inBundle:v6];
    v8 = self->_video;
    self->_video = v7;

    video = self->_video;
  }

  return video;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  device = self->_device;
  filename = self->_filename;

  return [v4 initForDevice:device withFilename:filename];
}

- (BOOL)snapshotDiffers:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = ![(NSString *)self->_filename isEqualToString:v4[2]];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)debugDescription
{
  filename = self->_filename;
  v3 = [(CLKVideo *)self->_video url];
  v4 = [NSString stringWithFormat:@"filename: '%@' url: '%@'", filename, v3];

  return v4;
}

- (void)discardAssets
{
  video = self->_video;
  self->_video = 0;
  _objc_release_x1();
}

- (id)complicationColor
{
  v2 = [(NTKInfinityListingAttributes *)self->_attributes colorForKey:@"color"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[UIColor whiteColor];
  }

  v5 = v4;

  return v5;
}

@end