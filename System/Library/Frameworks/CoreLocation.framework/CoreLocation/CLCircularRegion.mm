@interface CLCircularRegion
- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isEqual:(id)a3;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5 nearbyAllowed:(BOOL)a6;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5 onBehalfOfBundleId:(id)a6;
- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier;
- (CLCircularRegion)initWithCoder:(id)a3;
- (CLLocationCoordinate2D)center;
- (CLLocationCoordinate2D)geoCenter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForLowPowerWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5;
- (id)initLegacyObjectWithCoder:(id)a3;
- (id)initNearbyAllowedWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLCircularRegion

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:0 referenceFrame:0 allowMonitoringWhenNearby:identifier lowPower:0 identifier:1 onBehalfOfBundleId:center.latitude notifyOnEntry:center.longitude notifyOnExit:radius conservativeEntry:v6 emergency:?];
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5 onBehalfOfBundleId:(id)a6
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:0 referenceFrame:0 allowMonitoringWhenNearby:a5 lowPower:a6 identifier:1 onBehalfOfBundleId:a3.latitude notifyOnEntry:a3.longitude notifyOnExit:a4 conservativeEntry:v7 emergency:?];
}

- (CLCircularRegion)initWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5 nearbyAllowed:(BOOL)a6
{
  result = [(CLCircularRegion *)self initWithCenter:a5 radius:a3.latitude identifier:a3.longitude, a4];
  if (result)
  {
    result->_allowMonitoringWhileNearby = a6;
  }

  return result;
}

- (id)initNearbyAllowedWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:1 referenceFrame:0 allowMonitoringWhenNearby:a5 lowPower:0 identifier:1 onBehalfOfBundleId:a3.latitude notifyOnEntry:a3.longitude notifyOnExit:a4 conservativeEntry:v6 emergency:?];
}

- (id)initForLowPowerWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 identifier:(id)a5
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 1;
  return [(CLCircularRegion *)self initWithCenter:0 radius:0 referenceFrame:1 allowMonitoringWhenNearby:a5 lowPower:0 identifier:1 onBehalfOfBundleId:a3.latitude notifyOnEntry:a3.longitude notifyOnExit:a4 conservativeEntry:v6 emergency:?];
}

- (CLCircularRegion)initWithCoder:(id)a3
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
    if ([a3 allowsKeyedCoding])
    {
      [a3 decodeDoubleForKey:@"kCLCircularRegionCodingKeyCenterLatitude"];
      *&v13 = v5;
      [a3 decodeDoubleForKey:@"kCLCircularRegionCodingKeyCenterLongitude"];
      *(&v13 + 1) = v6;
      [a3 decodeDoubleForKey:@"kCLCircularRegionCodingKeyRadius"];
      v12 = v7;
      if ([a3 containsValueForKey:@"reserved"])
      {
        v11 = [a3 decodeIntForKey:@"reserved"];
      }

      if ([a3 containsValueForKey:@"kCLCircularRegionCodingKeyMonitoringNearby"])
      {
        HIBYTE(v10) = [a3 decodeBoolForKey:@"kCLCircularRegionCodingKeyMonitoringNearby"];
      }

      if ([a3 containsValueForKey:@"kCLCircularRegionCodingKeyLowPower"])
      {
        LOBYTE(v10) = [a3 decodeBoolForKey:@"kCLCircularRegionCodingKeyLowPower"];
      }

      if (_os_feature_enabled_impl() && [a3 containsValueForKey:@"kCLCircularRegionEncodedKeyVersion"])
      {
        [a3 decodeIntForKey:@"kCLCircularRegionEncodedKeyVersion"];
      }
    }

    else
    {
      [a3 decodeValueOfObjCType:"d" at:&v13];
      [a3 decodeValueOfObjCType:"d" at:&v13 + 8];
      [a3 decodeValueOfObjCType:"d" at:&v12];
      [a3 decodeValueOfObjCType:"i" at:&v11];
      [a3 decodeValueOfObjCType:"B" at:&v10 + 1];
      [a3 decodeValueOfObjCType:"B" at:&v10];
      if (_os_feature_enabled_impl())
      {
        [a3 decodeValueOfObjCType:"i" at:&v9];
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

- (id)initLegacyObjectWithCoder:(id)a3
{
  v27 = 1;
  v26 = 1;
  v25 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v22 = 0.0;
  v21 = 0;
  if ([a3 allowsKeyedCoding])
  {
    [a3 decodeDoubleForKey:@"kCLRegionCodingKeyCenterLatitude"];
    v6 = v5;
    v23 = v5;
    [a3 decodeDoubleForKey:@"kCLRegionCodingKeyCenterLongitude"];
    v8 = v7;
    v24 = v7;
    [a3 decodeDoubleForKey:@"kCLRegionCodingKeyRadius"];
    v10 = v9;
    v22 = v9;
    v11 = [a3 decodeObjectForKey:@"kCLRegionCodingKeyIdentifier"];
    v12 = [a3 decodeObjectForKey:@"kCLRegionCodingKeyOnBehalfOfBundleId"];
    if ([a3 containsValueForKey:@"kCLRegionCodingKeyNotifyOnEntry"])
    {
      v13 = [a3 decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnEntry"];
      v27 = v13;
    }

    else
    {
      v13 = 1;
    }

    if ([a3 containsValueForKey:@"kCLRegionCodingKeyNotifyOnExit"])
    {
      v15 = [a3 decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnExit"];
      v26 = v15;
    }

    else
    {
      v15 = 1;
    }

    if ([a3 containsValueForKey:@"kCLRegionCodingKeyConservativeEntry"])
    {
      v16 = [a3 decodeBoolForKey:@"kCLRegionCodingKeyConservativeEntry"];
      HIBYTE(v25) = v16;
    }

    else
    {
      v16 = 0;
    }

    if ([a3 containsValueForKey:@"reserved"])
    {
      v14 = [a3 decodeIntForKey:@"reserved"];
      v21 = v14;
    }

    else
    {
      v14 = 0;
    }

    v17 = [a3 containsValueForKey:@"kCLRegionCodingKeyEmergency"];
    if (v17)
    {
      LOBYTE(v17) = [a3 decodeBoolForKey:@"kCLRegionCodingKeyEmergency"];
      LOBYTE(v25) = v17;
    }
  }

  else
  {
    [a3 decodeValueOfObjCType:"d" at:&v23];
    [a3 decodeValueOfObjCType:"d" at:&v24];
    [a3 decodeValueOfObjCType:"d" at:&v22];
    v11 = [a3 decodeObject];
    v12 = [a3 decodeObject];
    [a3 decodeValueOfObjCType:"B" at:&v27];
    [a3 decodeValueOfObjCType:"B" at:&v26];
    [a3 decodeValueOfObjCType:"B" at:&v25 + 1];
    [a3 decodeValueOfObjCType:"i" at:&v21];
    [a3 decodeValueOfObjCType:"B" at:&v25];
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
  v18 = [(CLCircularRegion *)self initWithCenter:v14 radius:0 referenceFrame:0 allowMonitoringWhenNearby:v11 lowPower:v12 identifier:v13 & 1 onBehalfOfBundleId:v6 notifyOnEntry:v8 notifyOnExit:v10 conservativeEntry:v20 emergency:?];

  return v18;
}

- (void)encodeWithCoder:(id)a3
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
  v11 = [(CLCircularRegion *)self geoReferenceFrame];
  v17 = v11;
  v12 = [(CLCircularRegion *)self allowMonitoringWhileNearby];
  v16 = v12;
  v13 = [(CLCircularRegion *)self isLowPower];
  v15 = v13;
  v14 = 1;
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeDouble:@"kCLCircularRegionCodingKeyCenterLatitude" forKey:v6];
    [a3 encodeDouble:@"kCLCircularRegionCodingKeyCenterLongitude" forKey:v8];
    [a3 encodeDouble:@"kCLCircularRegionCodingKeyRadius" forKey:v10];
    [a3 encodeInt:v11 forKey:@"reserved"];
    [a3 encodeBool:v12 forKey:@"kCLCircularRegionCodingKeyMonitoringNearby"];
    [a3 encodeBool:v13 forKey:@"kCLCircularRegionCodingKeyLowPower"];
    if (_os_feature_enabled_impl())
    {
      [a3 encodeInt:1 forKey:@"kCLCircularRegionEncodedKeyVersion"];
    }
  }

  else
  {
    [a3 encodeValueOfObjCType:"d" at:&v19];
    [a3 encodeValueOfObjCType:"d" at:&v20];
    [a3 encodeValueOfObjCType:"d" at:&v18];
    [a3 encodeValueOfObjCType:"i" at:&v17];
    [a3 encodeValueOfObjCType:"B" at:&v16];
    [a3 encodeValueOfObjCType:"B" at:&v15];
    if (_os_feature_enabled_impl())
    {
      [a3 encodeValueOfObjCType:"i" at:&v14];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = CLCircularRegion;
  v4 = [(CLRegion *)&v12 copyWithZone:a3];
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
  v4 = [(CLRegion *)self identifier];
  [(CLCircularRegion *)self center];
  v6 = v5;
  [(CLCircularRegion *)self center];
  v8 = v7;
  [(CLCircularRegion *)self radius];
  return [v3 stringWithFormat:@"CLCircularRegion (identifier:'%@', center:<%+.8f, %+.8f>, radius:%.2fm)", v4, v6, v8, v9];
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

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLCircularRegion;
  return [(CLRegion *)&v4 isEqual:a3];
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