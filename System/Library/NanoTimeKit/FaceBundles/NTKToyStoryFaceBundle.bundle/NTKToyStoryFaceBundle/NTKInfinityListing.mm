@interface NTKInfinityListing
+ (id)listingForDevice:(id)device withFilename:(id)filename;
+ (id)listingForDevice:(id)device withFilename:(id)filename type:(unint64_t)type attributes:(id)attributes;
- (BOOL)snapshotDiffers:(id)differs;
- (CLKVideo)video;
- (NSString)debugDescription;
- (id)complicationColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForDevice:(id)device withFilename:(id)filename;
- (void)discardAssets;
@end

@implementation NTKInfinityListing

+ (id)listingForDevice:(id)device withFilename:(id)filename
{
  filenameCopy = filename;
  deviceCopy = device;
  v7 = [[NTKInfinityListing alloc] initForDevice:deviceCopy withFilename:filenameCopy];

  return v7;
}

+ (id)listingForDevice:(id)device withFilename:(id)filename type:(unint64_t)type attributes:(id)attributes
{
  attributesCopy = attributes;
  filenameCopy = filename;
  deviceCopy = device;
  v12 = [[NTKInfinityListing alloc] initForDevice:deviceCopy withFilename:filenameCopy];

  [v12 setType:type];
  [v12 setAttributes:attributesCopy];

  return v12;
}

- (id)initForDevice:(id)device withFilename:(id)filename
{
  deviceCopy = device;
  filenameCopy = filename;
  v12.receiver = self;
  v12.super_class = NTKInfinityListing;
  v9 = [(NTKInfinityListing *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_filename, filename);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  device = self->_device;
  filename = self->_filename;

  return [v4 initForDevice:device withFilename:filename];
}

- (BOOL)snapshotDiffers:(id)differs
{
  differsCopy = differs;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = ![(NSString *)self->_filename isEqualToString:differsCopy[2]];
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