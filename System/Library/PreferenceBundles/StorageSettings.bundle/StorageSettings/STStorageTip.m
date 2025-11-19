@interface STStorageTip
- (int64_t)sortSize;
- (void)setSortSize:(int64_t)a3;
@end

@implementation STStorageTip

- (int64_t)sortSize
{
  v2 = [(STStorageTip *)self propertyForKey:@"_stSortSize"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setSortSize:(int64_t)a3
{
  v4 = [NSNumber numberWithLongLong:a3];
  [(STStorageTip *)self setProperty:v4 forKey:@"_stSortSize"];
}

@end