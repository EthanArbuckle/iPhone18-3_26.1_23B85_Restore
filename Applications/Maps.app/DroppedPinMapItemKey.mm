@interface DroppedPinMapItemKey
- (BOOL)isEqual:(id)equal;
- (DroppedPinMapItemKey)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation DroppedPinMapItemKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E45798EE0000000uLL), vabdq_f64(self->_coordinate, v5->_coordinate)));
    v7 = v6.i8[0] & v6.i8[4];
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (DroppedPinMapItemKey)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v11.receiver = self;
  v11.super_class = DroppedPinMapItemKey;
  v5 = [(DroppedPinMapItemKey *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_coordinate.latitude = latitude;
    v5->_coordinate.longitude = longitude;
    v7 = [NSNumber numberWithInt:latitude];
    v8 = [v7 hash];
    v9 = [NSNumber numberWithInt:longitude];
    v6->_hash = [v9 hash] ^ v8;
  }

  return v6;
}

@end