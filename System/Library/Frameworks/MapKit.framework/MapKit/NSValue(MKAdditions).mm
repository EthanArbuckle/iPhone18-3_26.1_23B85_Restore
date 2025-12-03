@interface NSValue(MKAdditions)
- (double)CADoublePointValue;
- (double)CADoubleRectValue;
- (double)MKMapRectValue;
- (double)_mapkit_zoomRegionValue;
- (uint64_t)_mapkit_initWithCADoublePoint:()MKAdditions;
- (uint64_t)_mapkit_initWithCADoubleRect:()MKAdditions;
- (uint64_t)_mapkit_initWithCGPoint:()MKAdditions;
- (uint64_t)_mapkit_initWithCGRect:()MKAdditions;
- (uint64_t)_mapkit_initWithMKMapRect:()MKAdditions;
- (uint64_t)_mapkit_initWithZoomRegion:()MKAdditions;
@end

@implementation NSValue(MKAdditions)

- (double)MKMapRectValue
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2 size:32];
  return *v2;
}

- (uint64_t)_mapkit_initWithMKMapRect:()MKAdditions
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return [self initWithBytes:v6 objCType:"{?={?=dd}{?=dd}}"];
}

- (double)_mapkit_zoomRegionValue
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2 size:24];
  return *v2;
}

- (uint64_t)_mapkit_initWithZoomRegion:()MKAdditions
{
  *v5 = a2;
  *&v5[1] = a3;
  *&v5[2] = a4;
  return [self initWithBytes:v5 objCType:"{?=d{CLLocationCoordinate2D=dd}}"];
}

- (uint64_t)_mapkit_initWithCGRect:()MKAdditions
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return [self initWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

- (double)CADoubleRectValue
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2 size:32];
  return *v2;
}

- (uint64_t)_mapkit_initWithCADoubleRect:()MKAdditions
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return [self initWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

- (double)CADoublePointValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2 size:16];
  return *v2;
}

- (uint64_t)_mapkit_initWithCADoublePoint:()MKAdditions
{
  *v4 = a2;
  *&v4[1] = a3;
  return [self initWithBytes:v4 objCType:"{CGPoint=dd}"];
}

- (uint64_t)_mapkit_initWithCGPoint:()MKAdditions
{
  *v4 = a2;
  *&v4[1] = a3;
  return [self initWithBytes:v4 objCType:"{CGPoint=dd}"];
}

@end