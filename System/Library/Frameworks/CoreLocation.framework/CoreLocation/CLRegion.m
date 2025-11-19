@interface CLRegion
- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)center;
- (CLRegion)initCircularRegionWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier;
- (CLRegion)initWithClientRegion:(id *)a3;
- (CLRegion)initWithCoder:(id)a3;
- (CLRegion)initWithIdentifier:(id)a3;
- (CLRegion)initWithIdentifier:(id)a3 onBehalfOf:(id)a4 regionType:(int)a5 notifyOnEntry:(BOOL)a6 notifyOnExit:(BOOL)a7 conservativeEntry:(BOOL)a8 emergency:(BOOL)a9 deviceId:(id)a10 handoffTag:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLRegion

- (void)dealloc
{
  *&self->_identifier = 0u;
  *&self->_handoffTag = 0u;
  v3.receiver = self;
  v3.super_class = CLRegion;
  [(CLRegion *)&v3 dealloc];
}

- (CLRegion)initWithClientRegion:(id *)a3
{
  v9.receiver = self;
  v9.super_class = CLRegion;
  result = [(CLRegion *)&v9 init];
  if (result)
  {
    v5 = result;
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var1];
    LOBYTE(v8) = a3->var7;
    return [(CLRegion *)v5 initWithIdentifier:v6 onBehalfOf:v7 regionType:a3->var3 notifyOnEntry:a3->var4 notifyOnExit:a3->var5 conservativeEntry:a3->var6 emergency:v8];
  }

  return result;
}

- (CLRegion)initCircularRegionWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier
{
  longitude = center.longitude;
  latitude = center.latitude;

  v9 = [CLCircularRegion alloc];

  return [(CLCircularRegion *)v9 initWithCenter:identifier radius:latitude identifier:longitude, radius];
}

- (CLRegion)initWithIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLRegion;
  result = [(CLRegion *)&v6 init];
  if (result)
  {
    LOBYTE(v5) = 0;
    return [(CLRegion *)result initWithIdentifier:a3 onBehalfOf:0 regionType:1 notifyOnEntry:1 notifyOnExit:1 conservativeEntry:0 emergency:v5];
  }

  return result;
}

- (CLRegion)initWithIdentifier:(id)a3 onBehalfOf:(id)a4 regionType:(int)a5 notifyOnEntry:(BOOL)a6 notifyOnExit:(BOOL)a7 conservativeEntry:(BOOL)a8 emergency:(BOOL)a9 deviceId:(id)a10 handoffTag:(id)a11
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
    }

    v22 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:identifier is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
      }
    }

    v19 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_20;
    }

    *buf = 68289026;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v20 = "identifier is nil";
    v21 = "{msg%{public}.0s:identifier is nil}";
LABEL_17:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v20, v21, buf, 0x12u);
LABEL_20:

    v23 = 0;
    goto LABEL_21;
  }

  if ([a3 lengthOfBytesUsingEncoding:4] >= 0x201)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:identifier is too long}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D750);
      }
    }

    v19 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_20;
    }

    *buf = 68289026;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v20 = "identifier is too long";
    v21 = "{msg%{public}.0s:identifier is too long}";
    goto LABEL_17;
  }

  if (a10 && !a11)
  {
    goto LABEL_20;
  }

  v26.receiver = self;
  v26.super_class = CLRegion;
  v23 = [(CLRegion *)&v26 init];
  if (v23)
  {
    v23->_identifier = [a3 copy];
    v23->_notifyOnEntry = a6;
    v23->_notifyOnExit = a7;
    v23->_onBehalfOfBundleId = [a4 copy];
    v23->_type = a5;
    v23->_conservativeEntry = a8;
    v23->_emergency = a9;
    v23->_deviceId = [a10 copy];
    v23->_handoffTag = [a11 copy];
  }

LABEL_21:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (CLRegion)initWithCoder:(id)a3
{
  if ([(CLRegion *)self isMemberOfClass:objc_opt_class()])
  {

    v5 = [CLCircularRegion alloc];

    return MEMORY[0x1EEE66B58](v5, sel_initLegacyObjectWithCoder_);
  }

  else
  {
    v17 = 0;
    if ([a3 allowsKeyedCoding])
    {
      v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyIdentifier"];
      v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyOnBehalfOfBundleId"];
      v8 = [a3 decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnEntry"];
      HIBYTE(v17) = v8;
      v9 = [a3 decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnExit"];
      BYTE2(v17) = v9;
      v10 = [a3 decodeBoolForKey:@"kCLRegionCodingKeyConservativeEntry"];
      BYTE1(v17) = v10;
      v11 = [a3 decodeBoolForKey:@"kCLRegionCodingKeyEmergency"];
      LOBYTE(v17) = v11;
      if ([a3 containsValueForKey:@"kCLRegionCodingKeyRegionType"])
      {
        v12 = [a3 decodeIntForKey:@"kCLRegionCodingKeyRegionType"];
      }

      else
      {
        v12 = 1;
      }

      v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyDeviceId"];
      v14 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyHandoffTag"];
    }

    else
    {
      v6 = [a3 decodeObject];
      v7 = [a3 decodeObject];
      [a3 decodeValueOfObjCType:"B" at:&v17 + 3];
      [a3 decodeValueOfObjCType:"B" at:&v17 + 2];
      [a3 decodeValueOfObjCType:"B" at:&v17 + 1];
      [a3 decodeValueOfObjCType:"B" at:&v17];
      v13 = [a3 decodeObject];
      v14 = [a3 decodeObject];
      v11 = v17;
      v10 = BYTE1(v17);
      v9 = BYTE2(v17);
      v12 = 1;
      v8 = HIBYTE(v17);
    }

    LOBYTE(v16) = v11 & 1;
    return [(CLRegion *)self initWithIdentifier:v6 onBehalfOf:v7 regionType:v12 notifyOnEntry:v8 & 1 notifyOnExit:v9 & 1 conservativeEntry:v10 & 1 emergency:v16 deviceId:v13 handoffTag:v14];
  }
}

- (void)encodeWithCoder:(id)a3
{
  if ([(CLRegion *)self isMemberOfClass:objc_opt_class()])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];

    [v6 handleFailureInMethod:a2 object:self file:@"CLRegion.m" lineNumber:263 description:@"CLRegion is an abstract class. Use one of the derived classes"];
  }

  else
  {
    v7 = [(CLRegion *)self notifyOnEntry];
    v18 = v7;
    v8 = [(CLRegion *)self notifyOnExit];
    v17 = v8;
    v9 = [(CLRegion *)self conservativeEntry];
    v16 = v9;
    v10 = [(CLRegion *)self emergency];
    v15 = v10;
    v11 = [(CLRegion *)self type];
    v12 = [a3 allowsKeyedCoding];
    identifier = self->_identifier;
    if (v12)
    {
      [a3 encodeObject:identifier forKey:@"kCLRegionCodingKeyIdentifier"];
      [a3 encodeObject:self->_onBehalfOfBundleId forKey:@"kCLRegionCodingKeyOnBehalfOfBundleId"];
      [a3 encodeBool:v7 forKey:@"kCLRegionCodingKeyNotifyOnEntry"];
      [a3 encodeBool:v8 forKey:@"kCLRegionCodingKeyNotifyOnExit"];
      [a3 encodeBool:v9 forKey:@"kCLRegionCodingKeyConservativeEntry"];
      [a3 encodeBool:v10 forKey:@"kCLRegionCodingKeyEmergency"];
      [a3 encodeInt:v11 forKey:@"kCLRegionCodingKeyRegionType"];
      [a3 encodeObject:self->_deviceId forKey:@"kCLRegionCodingKeyDeviceId"];
      handoffTag = self->_handoffTag;

      [a3 encodeObject:handoffTag forKey:@"kCLRegionCodingKeyHandoffTag"];
    }

    else
    {
      [a3 encodeObject:identifier];
      [a3 encodeObject:self->_onBehalfOfBundleId];
      [a3 encodeValueOfObjCType:"B" at:&v18];
      [a3 encodeValueOfObjCType:"B" at:&v17];
      [a3 encodeValueOfObjCType:"B" at:&v16];
      [a3 encodeValueOfObjCType:"B" at:&v15];
      [a3 encodeObject:self->_deviceId];
      [a3 encodeObject:self->_handoffTag];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  deviceId = self->_deviceId;
  LOBYTE(v7) = self->_emergency;
  return [v4 initWithIdentifier:self->_identifier onBehalfOf:self->_onBehalfOfBundleId regionType:self->_type notifyOnEntry:self->_notifyOnEntry notifyOnExit:self->_notifyOnExit conservativeEntry:self->_conservativeEntry emergency:v7 deviceId:deviceId handoffTag:self->_handoffTag];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v14 = v4;
    v15 = v3;
    if (([a3 isMemberOfClass:objc_opt_class()] & 1) != 0 || -[CLRegion isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(a3, "isMemberOfClass:", objc_opt_class()) & 1) != 0 || (v12 = -[CLRegion isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class())) != 0 && (v12 = objc_msgSend(a3, "isMemberOfClass:", objc_opt_class())) != 0)
    {
      if (-[CLRegion onBehalfOfBundleId](self, "onBehalfOfBundleId", v6, v5, v14, v15, v7, v8) || [a3 onBehalfOfBundleId])
      {
        v11 = -[NSString isEqual:](-[CLRegion onBehalfOfBundleId](self, "onBehalfOfBundleId"), "isEqual:", [a3 onBehalfOfBundleId]);
      }

      else
      {
        v11 = 1;
      }

      LOBYTE(v12) = -[NSString isEqualToString:](-[CLRegion identifier](self, "identifier"), "isEqualToString:", [a3 identifier]) & v11;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(CLRegion *)self identifier];

  return [(NSString *)v2 hash];
}

- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  [(CLRegion *)self center];
  v7 = v6;
  [(CLRegion *)self center];
  v9 = sub_19B87E164(latitude, longitude, v7, v8);
  [(CLRegion *)self radius];
  return v9 <= v10;
}

- (CLLocationCoordinate2D)center
{
  objc_copyStruct(v4, &self->_center, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end