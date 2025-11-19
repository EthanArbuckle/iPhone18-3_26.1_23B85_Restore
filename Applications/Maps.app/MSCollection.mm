@interface MSCollection
- (BOOL)isLegacyFavoritesCollection;
@end

@implementation MSCollection

- (BOOL)isLegacyFavoritesCollection
{
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  v4 = [(MSCollection *)self identifier];
  v5 = [v4 isEqual:v3];

  return v5;
}

@end