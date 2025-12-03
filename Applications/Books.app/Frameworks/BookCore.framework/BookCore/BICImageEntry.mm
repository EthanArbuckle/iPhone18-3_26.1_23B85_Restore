@interface BICImageEntry
+ (BOOL)shouldBeRemovedOnPrimaryChanged:(id)changed;
- (BOOL)isExpired;
- (CGSize)imageSize;
- (id)entryLocationFromParameters;
- (void)deleteEntry;
- (void)setImageSize:(CGSize)size;
@end

@implementation BICImageEntry

+ (BOOL)shouldBeRemovedOnPrimaryChanged:(id)changed
{
  changedCopy = changed;
  processingOptions = [changedCopy processingOptions];
  quality = [changedCopy quality];
  dataStoreInformation = [changedCopy dataStoreInformation];
  v7 = [dataStoreInformation hasPrefix:@"https"];

  quality2 = [changedCopy quality];
  v10 = (~processingOptions & 0x220) != 0 || quality2 != 2;
  if ([changedCopy potentialPrimary])
  {
    v11 = 0;
  }

  else
  {
    state = [changedCopy state];
    v13 = v10 & (v7 ^ 1);
    if (quality == 3)
    {
      v13 = 0;
    }

    v11 = state == 2 && v13;
  }

  return v11;
}

- (CGSize)imageSize
{
  [(BICImageEntry *)self width];
  v4 = v3;
  [(BICImageEntry *)self height];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  *&size.width = size.width;
  [(BICImageEntry *)self setWidth:size.width];

  *&v5 = height;
  [(BICImageEntry *)self setHeight:v5];
}

- (void)deleteEntry
{
  managedObjectContext = [(BICImageEntry *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (id)entryLocationFromParameters
{
  imageSet = [(BICImageEntry *)self imageSet];
  identifier = [imageSet identifier];
  level = [(BICImageEntry *)self level];
  [(BICImageEntry *)self width];
  v7 = v6;
  [(BICImageEntry *)self height];
  v9 = [BICDescribedImage entryLocationWithIdentifier:identifier level:level size:[(BICImageEntry *)self processingOptions] options:[(BICImageEntry *)self quality] quality:v7, v8];

  return v9;
}

- (BOOL)isExpired
{
  expiry = [(BICImageEntry *)self expiry];
  if (expiry)
  {
    expiry2 = [(BICImageEntry *)self expiry];
    [expiry2 timeIntervalSinceNow];
    v6 = v5 < 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end