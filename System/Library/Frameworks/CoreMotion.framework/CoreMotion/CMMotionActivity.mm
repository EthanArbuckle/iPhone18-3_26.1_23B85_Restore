@interface CMMotionActivity
- (BOOL)automotive;
- (BOOL)isSameStateAs:(id)as;
- (BOOL)walking;
- (CMMotionActivity)initWithCoder:(id)coder;
- (CMMotionActivity)initWithMotionActivity:(CLMotionActivity *)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMMotionActivity

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMMotionActivity;
  [(CMLogItem *)&v2 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_timestamp(self, v6, v7);
  v9 = v8;
  started = objc_msgSend_startDate(self, v10, v11);
  v15 = objc_msgSend_confidence(self, v13, v14);
  v18 = objc_msgSend_unknown(self, v16, v17);
  v21 = objc_msgSend_stationary(self, v19, v20);
  v24 = objc_msgSend_walking(self, v22, v23);
  v27 = objc_msgSend_running(self, v25, v26);
  v30 = objc_msgSend_cycling(self, v28, v29);
  v33 = objc_msgSend_automotive(self, v31, v32);
  return objc_msgSend_stringWithFormat_(v3, v34, @"%@ @ %f,<startDate,%@,confidence,%ld,unknown,%d,stationary,%d,walking,%d,running,%d,cycling,%d,automotive,%d>", v5, v9, started, v15, v18, v21, v24, v27, v30, v33);
}

- (BOOL)walking
{
  type = self->fState.type;
  v3 = 1;
  if (type != 4 && type != 41)
  {
    if (type == 8)
    {
      return (MEMORY[0x1EEE66B58])(self, sel_isRunWalk);
    }

    return 0;
  }

  return v3;
}

- (BOOL)automotive
{
  type = self->fState.type;
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

- (CMMotionActivity)initWithMotionActivity:(CLMotionActivity *)activity
{
  timestamp = activity->timestamp;
  v24.receiver = self;
  v24.super_class = CMMotionActivity;
  v14 = [(CMLogItem *)&v24 initWithTimestamp:timestamp, a10];
  v16 = v14;
  if (v14)
  {
    v14->fEndTime = 1.79769313e308;
    v18 = *&activity[1].mountedConfidence;
    v17 = *&activity[1].isStanding;
    v19 = *&activity[1].type;
    *&v14->_anon_60[48] = *&activity[1].isVehicleConnected;
    *&v14->_anon_60[16] = v18;
    *&v14->_anon_60[32] = v17;
    *v14->_anon_60 = v19;
    v21 = *&activity->mountedConfidence;
    v20 = *&activity->isStanding;
    v22 = *&activity->vehicleType;
    *&v14->fState.isVehicleConnected = *&activity->isVehicleConnected;
    *&v14->fState.vehicleType = v22;
    *&v14->fState.mountedConfidence = v21;
    *&v14->fState.isStanding = v20;
    *&v14->fState.type = *&activity->type;
    objc_msgSend_setIsRunWalk_(v14, v15, 0);
  }

  return v16;
}

- (CMMotionActivity)initWithCoder:(id)coder
{
  v31.receiver = self;
  v31.super_class = CMMotionActivity;
  v4 = [(CMLogItem *)&v31 initWithCoder:?];
  v6 = v4;
  if (v4)
  {
    *(v4 + 2) = 0;
    *(v4 + 13) = 0;
    *(v4 + 13) = 0;
    *(v4 + 11) = 0;
    *(v4 + 28) = 0u;
    *(v4 + 7) = 0xBFF0000000000000;
    *(v4 + 17) = 0;
    *(v4 + 9) = 0xBFF0000000000000;
    *(v4 + 12) = 0xBFF0000000000000;
    v4[48] = 0;
    v4[64] = 0;
    v4[112] = 0;
    *(v4 + 116) = 0;
    *(v4 + 6) = 0;
    *(v4 + 20) = 0;
    *(v4 + 16) = 0;
    *(v4 + 17) = 0;
    *(v4 + 36) = 0;
    *(v4 + 4) = objc_msgSend_decodeIntegerForKey_(coder, v5, @"kCMMotionActivityCodingKeyType");
    *(v6 + 5) = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kCMMotionActivityCodingKeyConfidence");
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"kCMMotionActivityCodingKeyStartTime");
    *(v6 + 12) = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"kCMMotionActivityCodingKeyVehicleConnected");
    v6[64] = v11 != 0.0;
    if (objc_msgSend_decodeBoolForKey_(coder, v12, @"kCMMotionActivityCodingKeyVehicularGpsHint"))
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v6[112] = v6[112] & 0xFD | v14;
    if (objc_msgSend_decodeBoolForKey_(coder, v13, @"kCMMotionActivityCodingKeyVehicularBasebandHint"))
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    v6[112] = v6[112] & 0xFB | v16;
    if (objc_msgSend_decodeBoolForKey_(coder, v15, @"kCMMotionActivityCodingKeyVehicularWifiHint"))
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    v6[112] = v6[112] & 0xF7 | v18;
    v6[112] = v6[112] & 0xFE | objc_msgSend_decodeBoolForKey_(coder, v17, @"kCMMotionActivityCodingKeyVehicularMotionHint");
    if (objc_msgSend_decodeBoolForKey_(coder, v19, @"kCMMotionActivityCodingKeyVehicularBTHint"))
    {
      v21 = 16;
    }

    else
    {
      v21 = 0;
    }

    v6[112] = v6[112] & 0xEF | v21;
    objc_msgSend_decodeDoubleForKey_(coder, v20, @"kCMMotionActivityCodingKeyTimestamp");
    *(v6 + 7) = v22;
    *(v6 + 9) = objc_msgSend_decodeIntegerForKey_(coder, v23, @"kCMMotionActivityCodingKeyMounted");
    objc_msgSend_decodeDoubleForKey_(coder, v24, @"kCMMotionActivityCodingKeyMountedProbability");
    *(v6 + 5) = v25;
    *(v6 + 20) = objc_msgSend_decodeIntegerForKey_(coder, v26, @"kCMMotionActivityCodingKeyVehicleType");
    objc_msgSend_decodeDoubleForKey_(coder, v27, @"kCMMotionActivityCodingKeyEndTime");
    *(v6 + 19) = v28;
    objc_msgSend_setIsRunWalk_(v6, v29, 0);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = CMMotionActivity;
  result = [(CMLogItem *)&v11 copyWithZone:zone];
  if (result)
  {
    *(result + 1) = *&self->fState.type;
    v5 = *&self->fState.vehicleType;
    v7 = *&self->fState.mountedConfidence;
    v6 = *&self->fState.isStanding;
    *(result + 4) = *&self->fState.isVehicleConnected;
    *(result + 5) = v5;
    *(result + 2) = v7;
    *(result + 3) = v6;
    v9 = *&self->_anon_60[16];
    v8 = *&self->_anon_60[32];
    v10 = *self->_anon_60;
    *(result + 18) = *&self->_anon_60[48];
    *(result + 7) = v9;
    *(result + 8) = v8;
    *(result + 6) = v10;
    *(result + 19) = *&self->fEndTime;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = CMMotionActivity;
  [(CMLogItem *)&v20 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->fState.type, @"kCMMotionActivityCodingKeyType");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->fState.confidence, @"kCMMotionActivityCodingKeyConfidence");
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMMotionActivityCodingKeyStartTime", *self->_anon_60);
  LOBYTE(v8) = self->fState.isVehicleConnected;
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCMMotionActivityCodingKeyVehicleConnected", v8);
  objc_msgSend_encodeBool_forKey_(coder, v10, (self->_anon_60[16] >> 1) & 1, @"kCMMotionActivityCodingKeyVehicularGpsHint");
  objc_msgSend_encodeBool_forKey_(coder, v11, (self->_anon_60[16] >> 2) & 1, @"kCMMotionActivityCodingKeyVehicularBasebandHint");
  objc_msgSend_encodeBool_forKey_(coder, v12, (self->_anon_60[16] >> 3) & 1, @"kCMMotionActivityCodingKeyVehicularWifiHint");
  objc_msgSend_encodeBool_forKey_(coder, v13, self->_anon_60[16] & 1, @"kCMMotionActivityCodingKeyVehicularMotionHint");
  objc_msgSend_encodeBool_forKey_(coder, v14, (self->_anon_60[16] >> 4) & 1, @"kCMMotionActivityCodingKeyVehicularBTHint");
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCMMotionActivityCodingKeyTimestamp", self->fState.timestamp);
  objc_msgSend_encodeInteger_forKey_(coder, v16, self->fState.conservativeMountedState, @"kCMMotionActivityCodingKeyMounted");
  objc_msgSend_encodeDouble_forKey_(coder, v17, @"kCMMotionActivityCodingKeyMountedProbability", self->fState.conservativeMountedProbability);
  objc_msgSend_encodeInteger_forKey_(coder, v18, self->fState.vehicleType, @"kCMMotionActivityCodingKeyVehicleType");
  objc_msgSend_encodeDouble_forKey_(coder, v19, @"kCMMotionActivityCodingKeyEndTime", self->fEndTime);
}

- (id)descriptionInternal
{
  v65 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v64 = NSStringFromClass(v3);
  objc_msgSend_timestamp(self, v4, v5);
  v7 = v6;
  started = objc_msgSend_startDate(self, v8, v9);
  v62 = objc_msgSend_endDate(self, v10, v11);
  v61 = objc_msgSend_confidence(self, v12, v13);
  v60 = objc_msgSend_unknown(self, v14, v15);
  v59 = objc_msgSend_stationary(self, v16, v17);
  v58 = objc_msgSend_walking(self, v18, v19);
  v57 = objc_msgSend_running(self, v20, v21);
  v56 = objc_msgSend_cycling(self, v22, v23);
  v26 = objc_msgSend_automotive(self, v24, v25);
  v29 = objc_msgSend_vehicleType(self, v27, v28);
  isVehicleConnected = objc_msgSend_isVehicleConnected(self, v30, v31);
  isVehicleMotionHint = objc_msgSend_isVehicleMotionHint(self, v33, v34);
  isVehicleGpsHint = objc_msgSend_isVehicleGpsHint(self, v36, v37);
  isVehicleBTHint = objc_msgSend_isVehicleBTHint(self, v39, v40);
  isVehicleWifiHint = objc_msgSend_isVehicleWifiHint(self, v42, v43);
  isVehicleBasebandHint = objc_msgSend_isVehicleBasebandHint(self, v45, v46);
  isMounted = objc_msgSend_isMounted(self, v48, v49);
  objc_msgSend_mountedProbability(self, v51, v52);
  return objc_msgSend_stringWithFormat_(v65, v53, @"%@ @ %f,<startDate,%@,endDate,%@,confidence,%ld,unknown,%d,stationary,%d,walking,%d,running,%d,cycling,%d,automotive,%d,vehicleType,%ld,vehicleConnected,%d,motionHint,%d,gpsHint,%d,btHint,%d,wifiHint,%d,bbHint,%d,mounted,%d,mountedProb,%lf>", v64, v7, started, v62, v61, v60, v59, v58, v57, v56, v26, v29, isVehicleConnected, isVehicleMotionHint, isVehicleGpsHint, isVehicleBTHint, isVehicleWifiHint, isVehicleBasebandHint, isMounted, v54);
}

- (BOOL)isSameStateAs:(id)as
{
  if (objc_msgSend_unknown(self, a2, as) && (objc_msgSend_unknown(as, v5, v6) & 1) != 0 || ((objc_msgSend_walking(self, v5, v6) & 1) != 0 || objc_msgSend_running(self, v7, v8)) && ((objc_msgSend_walking(as, v7, v8) & 1) != 0 || (objc_msgSend_running(as, v9, v10) & 1) != 0) || objc_msgSend_cycling(self, v7, v8) && (objc_msgSend_cycling(as, v11, v12) & 1) != 0 || (objc_msgSend_stationary(self, v11, v12) & 1) == 0 && objc_msgSend_automotive(self, v14, v15) && (objc_msgSend_stationary(as, v14, v15) & 1) == 0 && (objc_msgSend_automotive(as, v14, v15) & 1) != 0 || (objc_msgSend_stationary(self, v14, v15) & 1) == 0 && objc_msgSend_automotive(self, v16, v17) && objc_msgSend_stationary(as, v16, v17) && (objc_msgSend_automotive(as, v16, v17) & 1) != 0 || objc_msgSend_stationary(self, v16, v17) && objc_msgSend_automotive(self, v18, v19) && (objc_msgSend_stationary(as, v18, v19) & 1) == 0 && (objc_msgSend_automotive(as, v18, v19) & 1) != 0 || objc_msgSend_stationary(self, v18, v19) && objc_msgSend_automotive(self, v20, v21) && objc_msgSend_stationary(as, v20, v21) && (objc_msgSend_automotive(as, v20, v21) & 1) != 0)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v13 = objc_msgSend_stationary(self, v20, v21);
    if (v13)
    {

      LOBYTE(v13) = objc_msgSend_stationary(as, v22, v23);
    }
  }

  return v13;
}

@end