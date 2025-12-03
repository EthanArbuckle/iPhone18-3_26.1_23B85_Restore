@interface CLPlacemark
- (NSString)_maps_sha1Hash;
@end

@implementation CLPlacemark

- (NSString)_maps_sha1Hash
{
  _geoMapItem = [(CLPlacemark *)self _geoMapItem];
  if ([_geoMapItem _hasMUID])
  {
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"muid=%llu", [_geoMapItem _muid]);
  }

  else
  {
    addressObject = [_geoMapItem addressObject];
    v5 = [addressObject fullAddressWithMultiline:0];
    v3 = [NSString stringWithFormat:@"address=%@", v5];
  }

  _maps_sha1Hash = [v3 _maps_sha1Hash];

  return _maps_sha1Hash;
}

@end