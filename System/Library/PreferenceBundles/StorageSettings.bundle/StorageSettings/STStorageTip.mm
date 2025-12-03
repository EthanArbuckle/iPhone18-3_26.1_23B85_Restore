@interface STStorageTip
- (int64_t)sortSize;
- (void)setSortSize:(int64_t)size;
@end

@implementation STStorageTip

- (int64_t)sortSize
{
  v2 = [(STStorageTip *)self propertyForKey:@"_stSortSize"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setSortSize:(int64_t)size
{
  v4 = [NSNumber numberWithLongLong:size];
  [(STStorageTip *)self setProperty:v4 forKey:@"_stSortSize"];
}

@end