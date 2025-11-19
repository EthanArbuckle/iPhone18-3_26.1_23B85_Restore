@interface CLPlacemark
- (NSString)_maps_sha1Hash;
@end

@implementation CLPlacemark

- (NSString)_maps_sha1Hash
{
  v2 = [(CLPlacemark *)self _geoMapItem];
  if ([v2 _hasMUID])
  {
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"muid=%llu", [v2 _muid]);
  }

  else
  {
    v4 = [v2 addressObject];
    v5 = [v4 fullAddressWithMultiline:0];
    v3 = [NSString stringWithFormat:@"address=%@", v5];
  }

  v6 = [v3 _maps_sha1Hash];

  return v6;
}

@end