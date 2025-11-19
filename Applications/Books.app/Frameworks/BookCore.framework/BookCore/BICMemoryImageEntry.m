@interface BICMemoryImageEntry
- (BOOL)isExpired;
- (CGSize)imageSize;
- (id)entryLocationFromParameters;
- (void)deleteEntry;
- (void)setImageSize:(CGSize)a3;
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

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  *&a3.width = a3.width;
  [(BICMemoryImageEntry *)self setWidth:a3.width];

  *&v5 = height;
  [(BICMemoryImageEntry *)self setHeight:v5];
}

- (void)deleteEntry
{
  v3 = [(BICMemoryImageEntry *)self imageSet];
  [v3 deleteEntry:self];
}

- (id)entryLocationFromParameters
{
  v3 = [(BICMemoryImageEntry *)self imageSet];
  v4 = [v3 identifier];
  v5 = [(BICMemoryImageEntry *)self level];
  [(BICMemoryImageEntry *)self width];
  v7 = v6;
  [(BICMemoryImageEntry *)self height];
  v9 = [NSString stringWithFormat:@"%@|%d|%d|%d|%hd", v4, v5, v7, v8, [(BICMemoryImageEntry *)self processingOptions]];

  return v9;
}

- (BOOL)isExpired
{
  v3 = [(BICMemoryImageEntry *)self expiry];
  if (v3)
  {
    v4 = [(BICMemoryImageEntry *)self expiry];
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