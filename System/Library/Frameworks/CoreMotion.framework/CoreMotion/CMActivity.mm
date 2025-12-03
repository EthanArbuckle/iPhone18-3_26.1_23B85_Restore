@interface CMActivity
- (BOOL)isDriving;
- (CLMotionActivity)activity;
- (CMActivity)initWithCoder:(id)coder;
- (CMActivity)initWithMotionActivity:(CLMotionActivity *)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMActivity

- (CMActivity)initWithMotionActivity:(CLMotionActivity *)activity
{
  timestamp = activity->timestamp;
  v21.receiver = self;
  v21.super_class = CMActivity;
  result = [(CMLogItem *)&v21 initWithTimestamp:timestamp, a10];
  if (result)
  {
    *&result->fActivity.type = *&activity->type;
    v15 = *&activity->vehicleType;
    v17 = *&activity->mountedConfidence;
    v16 = *&activity->isStanding;
    *&result->fActivity.isVehicleConnected = *&activity->isVehicleConnected;
    *&result->fActivity.vehicleType = v15;
    *&result->fActivity.mountedConfidence = v17;
    *&result->fActivity.isStanding = v16;
    v19 = *&activity[1].mountedConfidence;
    v18 = *&activity[1].isStanding;
    v20 = *&activity[1].type;
    *&result[1].fActivity.isStanding = *&activity[1].isVehicleConnected;
    *&result[1].fActivity.type = v19;
    *&result[1].fActivity.mountedConfidence = v18;
    result[1].super = v20;
  }

  return result;
}

- (CMActivity)initWithCoder:(id)coder
{
  v29.receiver = self;
  v29.super_class = CMActivity;
  v5 = [(CMLogItem *)&v29 initWithCoder:?];
  if (v5)
  {
    v6 = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMActivityCodingKeyType");
    v8 = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kCMActivityCodingKeyConfidence");
    v10 = objc_msgSend_decodeIntegerForKey_(coder, v9, @"kCMActivityCodingKeyMounted");
    v12 = objc_msgSend_decodeIntegerForKey_(coder, v11, @"kCMActivityCodingKeyMountedConfidence");
    v14 = objc_msgSend_decodeBoolForKey_(coder, v13, @"kCMActivityCodingKeyIsStanding");
    objc_msgSend_decodeFloatForKey_(coder, v15, @"kCMActivityCodingKeyTiltAngle");
    v17 = v16;
    objc_msgSend_decodeDoubleForKey_(coder, v18, @"kCMActivityCodingKeyTimestamp");
    v20 = v19;
    v22 = objc_msgSend_decodeIntegerForKey_(coder, v21, @"kCMActivityCodingKeyVehicleExitState");
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"kCMActivityCodingKeyEstExitTime");
    v25 = v24;
    objc_msgSend_decodeDoubleForKey_(coder, v26, @"kCMActivityCodingKeyStartTime");
    *(v5 + 4) = v6;
    *(v5 + 5) = v8;
    *(v5 + 6) = 0;
    *(v5 + 7) = v10;
    *(v5 + 8) = v12;
    *(v5 + 9) = 0;
    *(v5 + 5) = 0;
    v5[48] = v14;
    *(v5 + 13) = v17;
    *(v5 + 7) = v20;
    v5[64] = 0;
    *(v5 + 17) = v22;
    *(v5 + 9) = v25;
    *(v5 + 22) = 0;
    *(v5 + 20) = 0;
    *(v5 + 83) = 0;
    *(v5 + 12) = v27;
    *(v5 + 13) = 0;
    v5[112] = 0;
    *(v5 + 29) = 0;
    *(v5 + 30) = 0;
    *(v5 + 36) = 0;
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v16.receiver = self;
  v16.super_class = CMActivity;
  [(CMLogItem *)&v16 encodeWithCoder:?];
  selfCopy = (selfCopy + 16);
  objc_msgSend_encodeInteger_forKey_(coder, v5, LODWORD(selfCopy->super.super.isa), @"kCMActivityCodingKeyType");
  objc_msgSend_encodeInteger_forKey_(coder, v6, HIDWORD(selfCopy->super.super.isa), @"kCMActivityCodingKeyConfidence");
  objc_msgSend_encodeInteger_forKey_(coder, v7, HIDWORD(selfCopy->super._internalLogItem), @"kCMActivityCodingKeyMounted");
  objc_msgSend_encodeInteger_forKey_(coder, v8, selfCopy->fActivity.type, @"kCMActivityCodingKeyMountedConfidence");
  objc_msgSend_encodeBool_forKey_(coder, v9, LOBYTE(selfCopy->fActivity.mountedConfidence), @"kCMActivityCodingKeyIsStanding");
  LODWORD(v10) = selfCopy->fActivity.conservativeMountedState;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"kCMActivityCodingKeyTiltAngle", v10);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"kCMActivityCodingKeyTimestamp", selfCopy->fActivity.conservativeMountedProbability);
  objc_msgSend_encodeInteger_forKey_(coder, v13, LODWORD(selfCopy->fActivity.tilt), @"kCMActivityCodingKeyVehicleExitState");
  objc_msgSend_encodeDouble_forKey_(coder, v14, @"kCMActivityCodingKeyEstExitTime", selfCopy->fActivity.timestamp);
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCMActivityCodingKeyStartTime", *&selfCopy->fActivity.vehicleType);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = CMActivity;
  result = [(CMLogItem *)&v11 copyWithZone:zone];
  if (result)
  {
    *(result + 1) = *&self->fActivity.type;
    v5 = *&self->fActivity.vehicleType;
    v7 = *&self->fActivity.mountedConfidence;
    v6 = *&self->fActivity.isStanding;
    *(result + 4) = *&self->fActivity.isVehicleConnected;
    *(result + 5) = v5;
    *(result + 2) = v7;
    *(result + 3) = v6;
    v9 = *&self[1].fActivity.type;
    v8 = *&self[1].fActivity.mountedConfidence;
    super = self[1].super;
    *(result + 18) = *&self[1].fActivity.isStanding;
    *(result + 7) = v9;
    *(result + 8) = v8;
    *(result + 6) = super;
  }

  return result;
}

- (id)description
{
  if (self)
  {
    objc_msgSend_activity(self, a2, v2);
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_msgSend_timestamp(self, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v11, v12, 0.0);
  v14 = CLMotionActivity::activityTypeToString(0);
  return objc_msgSend_stringWithFormat_(v4, v15, @"%@ @ %f,<startDate,%@,type,%s,confidence,%s,mountedState,%d,mountedConfidence,%s,isStanding,%d,tiltAngle,%f,exitState,%d,estExitTime,%f>", v6, v10, v13, v14, "low", 0, "low", 0, 0.0, 0, 0);
}

- (CLMotionActivity)activity
{
  v10 = *&self[1].isVehicleConnected;
  *&retstr[1].mountedConfidence = *&self[1].isStanding;
  *&retstr[1].isStanding = v10;
  *&retstr[1].isVehicleConnected = *&self[1].vehicleType;
  v11 = *&self->vehicleType;
  *&retstr->isStanding = *&self->isVehicleConnected;
  *&retstr->isVehicleConnected = v11;
  v12 = *&self[1].mountedConfidence;
  *&retstr->vehicleType = *&self[1].type;
  *&retstr[1].type = v12;
  v13 = *&self->isStanding;
  *&retstr->type = *&self->mountedConfidence;
  *&retstr->mountedConfidence = v13;
  return self;
}

- (BOOL)isDriving
{
  type = self->fActivity.type;
  v3 = 1;
  if (type > 51)
  {
    if (type == 52 || type == 56)
    {
      return (type & 0xFFFFFFFE) == 0xA || v3;
    }

    goto LABEL_7;
  }

  if (!type)
  {
    return 0;
  }

  if (type != 5)
  {
LABEL_7:
    v3 = 0;
  }

  return (type & 0xFFFFFFFE) == 0xA || v3;
}

@end