@interface MSCollection
- (BOOL)isLegacyFavoritesCollection;
@end

@implementation MSCollection

- (BOOL)isLegacyFavoritesCollection
{
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  identifier = [(MSCollection *)self identifier];
  v5 = [identifier isEqual:v3];

  return v5;
}

@end