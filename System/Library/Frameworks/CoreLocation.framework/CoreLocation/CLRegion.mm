@interface CLRegion
- (BOOL)containsCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)center;
- (CLRegion)initCircularRegionWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius identifier:(NSString *)identifier;
- (CLRegion)initWithClientRegion:(id *)region;
- (CLRegion)initWithCoder:(id)coder;
- (CLRegion)initWithIdentifier:(id)identifier;
- (CLRegion)initWithIdentifier:(id)identifier onBehalfOf:(id)of regionType:(int)type notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)exit conservativeEntry:(BOOL)conservativeEntry emergency:(BOOL)emergency deviceId:(id)self0 handoffTag:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (CLRegion)initWithClientRegion:(id *)region
{
  v9.receiver = self;
  v9.super_class = CLRegion;
  result = [(CLRegion *)&v9 init];
  if (result)
  {
    v5 = result;
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:region];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:region->var1];
    LOBYTE(v8) = region->var7;
    return [(CLRegion *)v5 initWithIdentifier:v6 onBehalfOf:v7 regionType:region->var3 notifyOnEntry:region->var4 notifyOnExit:region->var5 conservativeEntry:region->var6 emergency:v8];
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

- (CLRegion)initWithIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CLRegion;
  result = [(CLRegion *)&v6 init];
  if (result)
  {
    LOBYTE(v5) = 0;
    return [(CLRegion *)result initWithIdentifier:identifier onBehalfOf:0 regionType:1 notifyOnEntry:1 notifyOnExit:1 conservativeEntry:0 emergency:v5];
  }

  return result;
}

- (CLRegion)initWithIdentifier:(id)identifier onBehalfOf:(id)of regionType:(int)type notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)exit conservativeEntry:(BOOL)conservativeEntry emergency:(BOOL)emergency deviceId:(id)self0 handoffTag:(id)self1
{
  v31 = *MEMORY[0x1E69E9840];
  if (!identifier)
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

  if ([identifier lengthOfBytesUsingEncoding:4] >= 0x201)
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

  if (id && !tag)
  {
    goto LABEL_20;
  }

  v26.receiver = self;
  v26.super_class = CLRegion;
  v23 = [(CLRegion *)&v26 init];
  if (v23)
  {
    v23->_identifier = [identifier copy];
    v23->_notifyOnEntry = entry;
    v23->_notifyOnExit = exit;
    v23->_onBehalfOfBundleId = [of copy];
    v23->_type = type;
    v23->_conservativeEntry = conservativeEntry;
    v23->_emergency = emergency;
    v23->_deviceId = [id copy];
    v23->_handoffTag = [tag copy];
  }

LABEL_21:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (CLRegion)initWithCoder:(id)coder
{
  if ([(CLRegion *)self isMemberOfClass:objc_opt_class()])
  {

    v5 = [CLCircularRegion alloc];

    return MEMORY[0x1EEE66B58](v5, sel_initLegacyObjectWithCoder_);
  }

  else
  {
    v17 = 0;
    if ([coder allowsKeyedCoding])
    {
      decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyIdentifier"];
      decodeObject2 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyOnBehalfOfBundleId"];
      v8 = [coder decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnEntry"];
      HIBYTE(v17) = v8;
      v9 = [coder decodeBoolForKey:@"kCLRegionCodingKeyNotifyOnExit"];
      BYTE2(v17) = v9;
      v10 = [coder decodeBoolForKey:@"kCLRegionCodingKeyConservativeEntry"];
      BYTE1(v17) = v10;
      v11 = [coder decodeBoolForKey:@"kCLRegionCodingKeyEmergency"];
      LOBYTE(v17) = v11;
      if ([coder containsValueForKey:@"kCLRegionCodingKeyRegionType"])
      {
        v12 = [coder decodeIntForKey:@"kCLRegionCodingKeyRegionType"];
      }

      else
      {
        v12 = 1;
      }

      decodeObject3 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyDeviceId"];
      decodeObject4 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLRegionCodingKeyHandoffTag"];
    }

    else
    {
      decodeObject = [coder decodeObject];
      decodeObject2 = [coder decodeObject];
      [coder decodeValueOfObjCType:"B" at:&v17 + 3];
      [coder decodeValueOfObjCType:"B" at:&v17 + 2];
      [coder decodeValueOfObjCType:"B" at:&v17 + 1];
      [coder decodeValueOfObjCType:"B" at:&v17];
      decodeObject3 = [coder decodeObject];
      decodeObject4 = [coder decodeObject];
      v11 = v17;
      v10 = BYTE1(v17);
      v9 = BYTE2(v17);
      v12 = 1;
      v8 = HIBYTE(v17);
    }

    LOBYTE(v16) = v11 & 1;
    return [(CLRegion *)self initWithIdentifier:decodeObject onBehalfOf:decodeObject2 regionType:v12 notifyOnEntry:v8 & 1 notifyOnExit:v9 & 1 conservativeEntry:v10 & 1 emergency:v16 deviceId:decodeObject3 handoffTag:decodeObject4];
  }
}

- (void)encodeWithCoder:(id)coder
{
  if ([(CLRegion *)self isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

    [currentHandler handleFailureInMethod:a2 object:self file:@"CLRegion.m" lineNumber:263 description:@"CLRegion is an abstract class. Use one of the derived classes"];
  }

  else
  {
    notifyOnEntry = [(CLRegion *)self notifyOnEntry];
    v18 = notifyOnEntry;
    notifyOnExit = [(CLRegion *)self notifyOnExit];
    v17 = notifyOnExit;
    conservativeEntry = [(CLRegion *)self conservativeEntry];
    v16 = conservativeEntry;
    emergency = [(CLRegion *)self emergency];
    v15 = emergency;
    type = [(CLRegion *)self type];
    allowsKeyedCoding = [coder allowsKeyedCoding];
    identifier = self->_identifier;
    if (allowsKeyedCoding)
    {
      [coder encodeObject:identifier forKey:@"kCLRegionCodingKeyIdentifier"];
      [coder encodeObject:self->_onBehalfOfBundleId forKey:@"kCLRegionCodingKeyOnBehalfOfBundleId"];
      [coder encodeBool:notifyOnEntry forKey:@"kCLRegionCodingKeyNotifyOnEntry"];
      [coder encodeBool:notifyOnExit forKey:@"kCLRegionCodingKeyNotifyOnExit"];
      [coder encodeBool:conservativeEntry forKey:@"kCLRegionCodingKeyConservativeEntry"];
      [coder encodeBool:emergency forKey:@"kCLRegionCodingKeyEmergency"];
      [coder encodeInt:type forKey:@"kCLRegionCodingKeyRegionType"];
      [coder encodeObject:self->_deviceId forKey:@"kCLRegionCodingKeyDeviceId"];
      handoffTag = self->_handoffTag;

      [coder encodeObject:handoffTag forKey:@"kCLRegionCodingKeyHandoffTag"];
    }

    else
    {
      [coder encodeObject:identifier];
      [coder encodeObject:self->_onBehalfOfBundleId];
      [coder encodeValueOfObjCType:"B" at:&v18];
      [coder encodeValueOfObjCType:"B" at:&v17];
      [coder encodeValueOfObjCType:"B" at:&v16];
      [coder encodeValueOfObjCType:"B" at:&v15];
      [coder encodeObject:self->_deviceId];
      [coder encodeObject:self->_handoffTag];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceId = self->_deviceId;
  LOBYTE(v7) = self->_emergency;
  return [v4 initWithIdentifier:self->_identifier onBehalfOf:self->_onBehalfOfBundleId regionType:self->_type notifyOnEntry:self->_notifyOnEntry notifyOnExit:self->_notifyOnExit conservativeEntry:self->_conservativeEntry emergency:v7 deviceId:deviceId handoffTag:self->_handoffTag];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v14 = v4;
    v15 = v3;
    if (([equal isMemberOfClass:objc_opt_class()] & 1) != 0 || -[CLRegion isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()) && (objc_msgSend(equal, "isMemberOfClass:", objc_opt_class()) & 1) != 0 || (v12 = -[CLRegion isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class())) != 0 && (v12 = objc_msgSend(equal, "isMemberOfClass:", objc_opt_class())) != 0)
    {
      if (-[CLRegion onBehalfOfBundleId](self, "onBehalfOfBundleId", v6, v5, v14, v15, v7, v8) || [equal onBehalfOfBundleId])
      {
        v11 = -[NSString isEqual:](-[CLRegion onBehalfOfBundleId](self, "onBehalfOfBundleId"), "isEqual:", [equal onBehalfOfBundleId]);
      }

      else
      {
        v11 = 1;
      }

      LOBYTE(v12) = -[NSString isEqualToString:](-[CLRegion identifier](self, "identifier"), "isEqualToString:", [equal identifier]) & v11;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  identifier = [(CLRegion *)self identifier];

  return [(NSString *)identifier hash];
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