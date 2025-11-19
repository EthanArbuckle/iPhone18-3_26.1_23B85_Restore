@interface CVAUserEvent
+ (id)classes;
+ (id)withData:(id)a3;
- (CVAUserEvent)initWithCoder:(id)a3;
- (CVAUserEvent)initWithEventType:(unint64_t)a3 timestamp:(double)a4;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CVAUserEvent

+ (id)classes
{
  if (qword_27E3C8548 == -1)
  {
    v3 = qword_27E3C8540;
  }

  else
  {
    sub_24019CB14();
    v3 = qword_27E3C8540;
  }

  return v3;
}

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVAUserEvent classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:v3 classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CVAUserEvent)initWithEventType:(unint64_t)a3 timestamp:(double)a4
{
  v18.receiver = self;
  v18.super_class = CVAUserEvent;
  v6 = [(CVAUserEvent *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_eventType = a3;
    v6->_timestamp = a4;
    peerDisplayName = v6->_peerDisplayName;
    v6->_peerDisplayName = &stru_28521B010;

    v9 = [MEMORY[0x277CCAD78] UUID];
    uuid = v7->_uuid;
    v7->_uuid = v9;

    v11 = objc_opt_new();
    anchorData = v7->_anchorData;
    v7->_anchorData = v11;

    v13 = objc_opt_new();
    transformCameraToAnchor = v7->_transformCameraToAnchor;
    v7->_transformCameraToAnchor = v13;

    sessionID = v7->_sessionID;
    v7->_sessionID = &unk_285225230;

    movLowestTimestamp = v7->_movLowestTimestamp;
    v7->_movLowestTimestamp = &unk_285225230;
  }

  return v7;
}

- (CVAUserEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CVAUserEvent;
  v5 = [(CVAUserEvent *)&v21 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_eventType = [v4 decodeIntegerForKey:@"ev"];
    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    v8 = [v4 decodeObjectForKey:@"pd"];
    peerDisplayName = v5->_peerDisplayName;
    v5->_peerDisplayName = v8;

    v10 = [v4 decodeObjectForKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"andt"];
    anchorData = v5->_anchorData;
    v5->_anchorData = v12;

    v14 = [v4 decodeObjectForKey:@"tcta"];
    transformCameraToAnchor = v5->_transformCameraToAnchor;
    v5->_transformCameraToAnchor = v14;

    v16 = [v4 decodeObjectForKey:@"sid"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v16;

    v18 = [v4 decodeObjectForKey:@"mlt"];
    movLowestTimestamp = v5->_movLowestTimestamp;
    v5->_movLowestTimestamp = v18;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeInteger:self->_eventType forKey:@"ev"];
  [v5 encodeDouble:@"t" forKey:self->_timestamp];
  [v5 encodeObject:self->_peerDisplayName forKey:@"pd"];
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
  [v5 encodeObject:self->_anchorData forKey:@"andt"];
  [v5 encodeObject:self->_transformCameraToAnchor forKey:@"tcta"];
  [v5 encodeObject:self->_sessionID forKey:@"sid"];
  [v5 encodeObject:self->_movLowestTimestamp forKey:@"mlt"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v15[0] = @"ev";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_eventType];
  v16[0] = v3;
  v15[1] = @"t";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v5 = v4;
  peerDisplayName = self->_peerDisplayName;
  if (!peerDisplayName)
  {
    peerDisplayName = &stru_28521B010;
  }

  v16[1] = v4;
  v16[2] = peerDisplayName;
  v15[2] = @"pd";
  v15[3] = @"uuid";
  uuid = self->_uuid;
  if (uuid)
  {
    v8 = [(NSUUID *)self->_uuid UUIDString];
  }

  else
  {
    v8 = @"000000-0000-0000-0000-000000000000";
  }

  v16[3] = v8;
  v15[4] = @"andt";
  anchorData = self->_anchorData;
  v10 = anchorData;
  if (!anchorData)
  {
    v10 = objc_opt_new();
  }

  transformCameraToAnchor = self->_transformCameraToAnchor;
  if (!transformCameraToAnchor)
  {
    transformCameraToAnchor = MEMORY[0x277CBEBF8];
  }

  v16[4] = v10;
  v16[5] = transformCameraToAnchor;
  v15[5] = @"tcta";
  v15[6] = @"sid";
  v15[7] = @"mlt";
  v17 = vbslq_s8(vceqzq_s64(*&self->_sessionID), vdupq_n_s64(&unk_285225230), *&self->_sessionID);
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:8];
  if (!anchorData)
  {
  }

  if (uuid)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CVAUserEvent *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end