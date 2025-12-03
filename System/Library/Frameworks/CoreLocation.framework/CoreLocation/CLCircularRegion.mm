@interface CLCircularRegion
- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isEqual:(id)equal;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier nearbyAllowed:(BOOL)allowed;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier onBehalfOfBundleId:(id)id;
- (CLCircularRegion)initWithCoder:(id)coder;
- (CLLocationCoordinate2D)center;
- (CLLocationCoordinate2D)geoCenter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForLowPowerWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier;
- (id)initLegacyObjectWithCoder:(id)coder;
- (id)initNearbyAllowedWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLCircularRegion

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:0 referenceFrame:0 allowMonitoringWhenNearby:identifier lowPower:0 identifier:1 onBehalfOfBundleId:center.latitude notifyOnEntry:center.longitude notifyOnExit:radius conservativeEntry:v6 emergency:?];
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier onBehalfOfBundleId:(id)id
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:0 referenceFrame:0 allowMonitoringWhenNearby:identifier lowPower:id identifier:1 onBehalfOfBundleId:center.latitude notifyOnEntry:center.longitude notifyOnExit:radius conservativeEntry:v7 emergency:?];
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier nearbyAllowed:(BOOL)allowed
{
  result = [(CLCircularRegion *)self initWithCenter:identifier radius:center.latitude identifier:center.longitude, radius];
  if (result)
  {
    result->_allowMonitoringWhileNearby = allowed;
  }

  return result;
}

- (id)initNearbyAllowedWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:1 referenceFrame:0 allowMonitoringWhenNearby:identifier lowPower:0 identifier:1 onBehalfOfBundleId:center.latitude notifyOnEntry:center.longitude notifyOnExit:radius conservativeEntry:v6 emergency:?];
}

- (id)initForLowPowerWithCenter:(CLLocationCoordinate2D)center radius:(double)radius identifier:(id)identifier
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:0 referenceFrame:1 allowMonitoringWhenNearby:identifier lowPower:0 identifier:1 onBehalfOfBundleId:center.latitude notifyOnEntry:center.longitude notifyOnExit:radius conservativeEntry:v6 emergency:?];
}

- (CLCircularRegion)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = CLCircularRegion;
  v4 = [(CLRegion *)&v14 initWithCoder:?];
  if (v4)
  {
    v13 = 0uLL;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    if ([coder allowsKeyedCoding])
    {
      [coder decodeDoubleForKey:@"kCLCircularRegionCodingKeyCenterLatitude"];
      *&v13 = v5;
      [coder decodeDoubleForKey:@"kCLCircularRegionCodingKeyCenterLongitude"];
      *(&v13 + 1) = v6;
      [coder decodeDoubleForKey:@"kCLCircularRegionCodingKeyRadius"];
      v12 = v7;
      if ([coder containsValueForKey:@"reserved"])
      {
        v11 = [coder decodeIntForKey:@"reserved"];
      }

      if ([coder containsValueForKey:@"kCLCircularRegionCodingKeyMonitoringNearby"])
      {
        HIBYTE(v10) = [coder decodeBoolForKey:@"kCLCircularRegionCodingKeyMonitoringNearby"];
      }

      if ([coder containsValueForKey:@"kCLCircularRegionCodingKeyLowPower"])
      {
        LOBYTE(v10) = [coder decodeBoolForKey:@"kCLCircularRegionCodingKeyLowPower"];
      }

      if (_os_feature_enabled_impl() && [coder containsValueForKey:@"kCLCircularRegionEncodedKeyVersion"])
      {
        [coder decodeIntForKey:@"kCLCircularRegionEncodedKeyVersion"];
      }
    }

    else
    {
      [coder decodeValueOfObjCType:"d" at:&v13];
      [coder decodeValueOfObjCType:"d" at:&v13 + 8];
      [coder decodeValueOfObjCType:"d" at:&v12];
      [coder decodeValueOfObjCType:"i" at:&v11];
      [coder decodeValueOfObjCType:"B" at:&v10 + 1];
      [coder decodeValueOfObjCType:"B" at:&v10];
      if (_os_feature_enabled_impl())
      {
        [coder decodeValueOfObjCType:"i" at:&v9];
      }
    }

    *(v4 + 104) = v13;
    *(v4 + 11) = v12;
    *(v4 + 21) = v11;
    *(v4 + 40) = v10;
    *(v4 + 12) = 0xBFF0000000000000;
  }

  return v4;
}

- (id)initLegacyObjectWithCoder:(id)coder
{
  v27 = 1;
  v26 = 1;
  v25 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v22 = 0.0;
  v21 = 0;
  if ([coder allowsKeyedCoding])
  {
    [coder decodeDoubleForKey:@"kCLRegionCodingKeyCenterLatitude"];
    v6 = v5;
    v23 = v5;
    [coder decodeDoubleForKey:@"kCLRegionCodingKeyCenterLongitude"];
    v8 = v7;
    v24 = v7;
    [coder decodeDoubleForKey:@"kCLRegionCodingKeyRadius"];
    v10 = v9;
    v22 = v9;
    decodeObject = [coder decodeObjectForKey:@"kCLRegionCodingKeyIdentifier"];
    decodeObject2 = [coder decodeObjectForKey:@"kCLRegionCodingKeyOnBehalfOfBundleId"];
    if ([coder containsValueForKey:@"kCLRegionCodingKeyNotifyOnEntry"])
    {
      v13 = [coder decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnEntry"];
      v27 = v13;
    }

    else
    {
      v13 = 1;
    }

    if ([coder containsValueForKey:@"kCLRegionCodingKeyNotifyOnExit"])
    {
      v15 = [coder decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnExit"];
      v26 = v15;
    }

    else
    {
      v15 = 1;
    }

    if ([coder containsValueForKey:@"kCLRegionCodingKeyConservativeEntry"])
    {
      v16 = [coder decodeBoolForKey:@"kCLRegionCodingKeyConservativeEntry"];
      HIBYTE(v25) = v16;
    }

    else
    {
      v16 = 0;
    }

    if ([coder containsValueForKey:@"reserved"])
    {
      v14 = [coder decodeIntForKey:@"reserved"];
      v21 = v14;
    }

    else
    {
      v14 = 0;
    }

    v17 = [coder containsValueForKey:@"kCLRegionCodingKeyEmergency"];
    if (v17)
    {
      LOBYTE(v17) = [coder decodeBoolForKey:@"kCLRegionCodingKeyEmergency"];
      LOBYTE(v25) = v17;
    }
  }

  else
  {
    [coder decodeValueOfObjCType:"d" at:&v23];
    [coder decodeValueOfObjCType:"d" at:&v24];
    [coder decodeValueOfObjCType:"d" at:&v22];
    decodeObject = [coder decodeObject];
    decodeObject2 = [coder decodeObject];
    [coder decodeValueOfObjCType:"B" at:&v27];
    [coder decodeValueOfObjCType:"B" at:&v26];
    [coder decodeValueOfObjCType:"B" at:&v25 + 1];
    [coder decodeValueOfObjCType:"i" at:&v21];
    [coder decodeValueOfObjCType:"B" at:&v25];
    v10 = v22;
    v6 = v23;
    v14 = v21;
    v8 = v24;
    v13 = v27;
    v15 = v26;
    v16 = HIBYTE(v25);
    LOBYTE(v17) = v25;
  }

  BYTE2(v20) = v17 & 1;
  BYTE1(v20) = v16 & 1;
  LOBYTE(v20) = v15 & 1;
  v18 = [(CLCircularRegion *)self initWithCenter:v14 radius:0 referenceFrame:0 allowMonitoringWhenNearby:decodeObject lowPower:decodeObject2 identifier:v13 & 1 onBehalfOfBundleId:v6 notifyOnEntry:v8 notifyOnExit:v10 conservativeEntry:v20 emergency:?];

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  v21.receiver = self;
  v21.super_class = CLCircularRegion;
  [(CLRegion *)&v21 encodeWithCoder:?];
  [(CLCircularRegion *)self center];
  v6 = v5;
  v19 = v5;
  [(CLCircularRegion *)self center];
  v8 = v7;
  v20 = v7;
  [(CLCircularRegion *)self radius];
  v10 = v9;
  v18 = v9;
  geoReferenceFrame = [(CLCircularRegion *)self geoReferenceFrame];
  v17 = geoReferenceFrame;
  allowMonitoringWhileNearby = [(CLCircularRegion *)self allowMonitoringWhileNearby];
  v16 = allowMonitoringWhileNearby;
  isLowPower = [(CLCircularRegion *)self isLowPower];
  v15 = isLowPower;
  v14 = 1;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeDouble:@"kCLCircularRegionCodingKeyCenterLatitude" forKey:v6];
    [coder encodeDouble:@"kCLCircularRegionCodingKeyCenterLongitude" forKey:v8];
    [coder encodeDouble:@"kCLCircularRegionCodingKeyRadius" forKey:v10];
    [coder encodeInt:geoReferenceFrame forKey:@"reserved"];
    [coder encodeBool:allowMonitoringWhileNearby forKey:@"kCLCircularRegionCodingKeyMonitoringNearby"];
    [coder encodeBool:isLowPower forKey:@"kCLCircularRegionCodingKeyLowPower"];
    if (_os_feature_enabled_impl())
    {
      [coder encodeInt:1 forKey:@"kCLCircularRegionEncodedKeyVersion"];
    }
  }

  else
  {
    [coder encodeValueOfObjCType:"d" at:&v19];
    [coder encodeValueOfObjCType:"d" at:&v20];
    [coder encodeValueOfObjCType:"d" at:&v18];
    [coder encodeValueOfObjCType:"i" at:&v17];
    [coder encodeValueOfObjCType:"B" at:&v16];
    [coder encodeValueOfObjCType:"B" at:&v15];
    if (_os_feature_enabled_impl())
    {
      [coder encodeValueOfObjCType:"i" at:&v14];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = CLCircularRegion;
  v4 = [(CLRegion *)&v12 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v6 = v4 + 104;
    [(CLCircularRegion *)self center];
    *v6 = v7;
    v5[14] = v8;
    [(CLCircularRegion *)self radius];
    v5[11] = v9;
    [(CLCircularRegion *)self desiredAccuracy];
    v5[12] = v10;
    *(v5 + 21) = [(CLCircularRegion *)self geoReferenceFrame];
    *(v5 + 81) = [(CLCircularRegion *)self allowMonitoringWhileNearby];
    *(v5 + 80) = [(CLCircularRegion *)self isLowPower];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(CLRegion *)self identifier];
  [(CLCircularRegion *)self center];
  v6 = v5;
  [(CLCircularRegion *)self center];
  v8 = v7;
  [(CLCircularRegion *)self radius];
  return [v3 stringWithFormat:@"CLCircularRegion (identifier:'%@', center:<%+.8f, %+.8f>, radius:%.2fm)", identifier, v6, v8, v9];
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CLCircularRegion;
  v3 = [(CLRegion *)&v7 hash];
  v6.receiver = self;
  v6.super_class = CLCircularRegion;
  if ([(CLRegion *)&v6 onBehalfOfBundleId])
  {
    v5.receiver = self;
    v5.super_class = CLCircularRegion;
    v3 ^= [(NSString *)[(CLRegion *)&v5 onBehalfOfBundleId] hash];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = CLCircularRegion;
  return [(CLRegion *)&v4 isEqual:equal];
}

- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  [(CLCircularRegion *)self center];
  v7 = v6;
  [(CLCircularRegion *)self center];
  v9 = sub_19B87E164(latitude, longitude, v7, v8);
  [(CLCircularRegion *)self radius];
  return v9 <= v10;
}

- (CLLocationCoordinate2D)center
{
  latitude = self->_geoCenter.latitude;
  longitude = self->_geoCenter.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)geoCenter
{
  latitude = self->_geoCenter.latitude;
  longitude = self->_geoCenter.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end