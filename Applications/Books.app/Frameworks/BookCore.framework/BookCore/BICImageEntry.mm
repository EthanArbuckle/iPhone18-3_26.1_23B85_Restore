@interface BICImageEntry
+ (BOOL)shouldBeRemovedOnPrimaryChanged:(id)a3;
- (BOOL)isExpired;
- (CGSize)imageSize;
- (id)entryLocationFromParameters;
- (void)deleteEntry;
- (void)setImageSize:(CGSize)a3;
@end

@implementation BICImageEntry

+ (BOOL)shouldBeRemovedOnPrimaryChanged:(id)a3
{
  v3 = a3;
  v4 = [v3 processingOptions];
  v5 = [v3 quality];
  v6 = [v3 dataStoreInformation];
  v7 = [v6 hasPrefix:@"https"];

  v8 = [v3 quality];
  v10 = (~v4 & 0x220) != 0 || v8 != 2;
  if ([v3 potentialPrimary])
  {
    v11 = 0;
  }

  else
  {
    v12 = [v3 state];
    v13 = v10 & (v7 ^ 1);
    if (v5 == 3)
    {
      v13 = 0;
    }

    v11 = v12 == 2 && v13;
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

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  *&a3.width = a3.width;
  [(BICImageEntry *)self setWidth:a3.width];

  *&v5 = height;
  [(BICImageEntry *)self setHeight:v5];
}

- (void)deleteEntry
{
  v3 = [(BICImageEntry *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (id)entryLocationFromParameters
{
  v3 = [(BICImageEntry *)self imageSet];
  v4 = [v3 identifier];
  v5 = [(BICImageEntry *)self level];
  [(BICImageEntry *)self width];
  v7 = v6;
  [(BICImageEntry *)self height];
  v9 = [BICDescribedImage entryLocationWithIdentifier:v4 level:v5 size:[(BICImageEntry *)self processingOptions] options:[(BICImageEntry *)self quality] quality:v7, v8];

  return v9;
}

- (BOOL)isExpired
{
  v3 = [(BICImageEntry *)self expiry];
  if (v3)
  {
    v4 = [(BICImageEntry *)self expiry];
    [v4 timeIntervalSinceNow];
    v6 = v5 < 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end