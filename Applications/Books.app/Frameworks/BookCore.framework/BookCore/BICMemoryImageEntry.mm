@interface BICMemoryImageEntry
- (BOOL)isExpired;
- (CGSize)imageSize;
- (id)entryLocationFromParameters;
- (void)deleteEntry;
- (void)setImageSize:(CGSize)size;
@end

@implementation BICMemoryImageEntry

- (CGSize)imageSize
{
  [(BICMemoryImageEntry *)self width];
  v4 = v3;
  [(BICMemoryImageEntry *)self height];
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
  [(BICMemoryImageEntry *)self setWidth:size.width];

  *&v5 = height;
  [(BICMemoryImageEntry *)self setHeight:v5];
}

- (void)deleteEntry
{
  imageSet = [(BICMemoryImageEntry *)self imageSet];
  [imageSet deleteEntry:self];
}

- (id)entryLocationFromParameters
{
  imageSet = [(BICMemoryImageEntry *)self imageSet];
  identifier = [imageSet identifier];
  level = [(BICMemoryImageEntry *)self level];
  [(BICMemoryImageEntry *)self width];
  v7 = v6;
  [(BICMemoryImageEntry *)self height];
  v9 = [NSString stringWithFormat:@"%@|%d|%d|%d|%hd", identifier, level, v7, v8, [(BICMemoryImageEntry *)self processingOptions]];

  return v9;
}

- (BOOL)isExpired
{
  expiry = [(BICMemoryImageEntry *)self expiry];
  if (expiry)
  {
    expiry2 = [(BICMemoryImageEntry *)self expiry];
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