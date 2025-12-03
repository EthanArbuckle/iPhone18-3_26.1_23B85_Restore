@interface CLLocation(ATXLocationHash)
- (uint64_t)atx_locationHashWithLevel:()ATXLocationHash;
@end

@implementation CLLocation(ATXLocationHash)

- (uint64_t)atx_locationHashWithLevel:()ATXLocationHash
{
  [self coordinate];
  latitude = v14.latitude;
  longitude = v14.longitude;
  if (!CLLocationCoordinate2DIsValid(v14))
  {
    return 0;
  }

  v6 = a3 >= 0x20 ? 32 : a3;
  if (!a3)
  {
    return 0;
  }

  result = 0;
  v8 = 180.0;
  v9 = -90.0;
  v10 = -180.0;
  v11 = 90.0;
  do
  {
    v12 = (v11 + v9) * 0.5;
    v13 = (v10 + v8) * 0.5;
    if (latitude > v12)
    {
      v9 = (v11 + v9) * 0.5;
    }

    else
    {
      v11 = (v11 + v9) * 0.5;
    }

    if (longitude <= v13)
    {
      v8 = (v10 + v8) * 0.5;
    }

    else
    {
      v10 = (v10 + v8) * 0.5;
    }

    result = (longitude > v13) | (2 * (latitude <= v12)) | (4 * result);
    --v6;
  }

  while (v6);
  return result;
}

@end