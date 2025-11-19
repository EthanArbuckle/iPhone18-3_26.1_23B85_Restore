@interface CMPedometerData
- (CMPedometerData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMPedometerData)initWithCoder:(id)a3;
- (NSNumber)averageActivePace;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMPedometerData

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPedometerData;
  [(CMPedometerData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v12 = objc_msgSend_init(v7, v8, v9);
  if (v12)
  {
    v12[1] = objc_msgSend_copy(self->fStartDate, v10, v11);
    v12[2] = objc_msgSend_copy(self->fEndDate, v13, v14);
    v12[3] = objc_msgSend_copy(self->fNumberOfSteps, v15, v16);
    v12[4] = objc_msgSend_copy(self->fDistance, v17, v18);
    v12[5] = objc_msgSend_copy(self->fFloorsAscended, v19, v20);
    v12[6] = objc_msgSend_copy(self->fFloorsDescended, v21, v22);
    v12[7] = objc_msgSend_copy(self->fRecordId, v23, v24);
    v12[8] = objc_msgSend_copy(self->fCurrentPace, v25, v26);
    v12[9] = objc_msgSend_copy(self->fCurrentCadence, v27, v28);
    v12[10] = objc_msgSend_copy(self->fFirstStepTime, v29, v30);
    v12[11] = objc_msgSend_copy(self->fActiveTime, v31, v32);
    v12[12] = objc_msgSend_copy(self->fSourceId, v33, v34);
    v12[13] = objc_msgSend_copy(self->fIsOdometerDistance, v35, v36);
    v12[14] = objc_msgSend_copy(self->fIsOdometerPace, v37, v38);
    v12[15] = objc_msgSend_copy(self->fNumberOfPushes, v39, v40);
    v12[16] = objc_msgSend_copy(self->fWorkoutType, v41, v42);
    v12[17] = objc_msgSend_copy(self->fElevationAscended, v43, v44);
    v12[18] = objc_msgSend_copy(self->fElevationDescended, v45, v46);
    v12[19] = objc_msgSend_copy(self->fDistanceSource, v47, v48);
  }

  return v12;
}

- (CMPedometerData)initWithCoder:(id)a3
{
  v44.receiver = self;
  v44.super_class = CMPedometerData;
  v4 = [(CMPedometerData *)&v44 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMPedometerDataCodingKeyStartDate");
    v7 = objc_opt_class();
    v4->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMPedometerDataCodingKeyEndDate");
    v9 = objc_opt_class();
    v4->fNumberOfSteps = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"kCMPedometerDataCodingKeyNumberOfSteps");
    v11 = objc_opt_class();
    v4->fDistance = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMPedometerDataCodingKeyDistance");
    v13 = objc_opt_class();
    v4->fFloorsAscended = objc_msgSend_decodeObjectOfClass_forKey_(a3, v14, v13, @"kCMPedometerDataCodingKeyFloorAscended");
    v15 = objc_opt_class();
    v4->fFloorsDescended = objc_msgSend_decodeObjectOfClass_forKey_(a3, v16, v15, @"kCMPedometerDataCodingKeyFloorDescended");
    v17 = objc_opt_class();
    v4->fRecordId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v18, v17, @"kCMPedometerDataCodingKeyRecordId");
    v19 = objc_opt_class();
    v4->fCurrentPace = objc_msgSend_decodeObjectOfClass_forKey_(a3, v20, v19, @"kCMPedometerDataCodingKeyPace");
    v21 = objc_opt_class();
    v4->fCurrentCadence = objc_msgSend_decodeObjectOfClass_forKey_(a3, v22, v21, @"kCMPedometerDataCodingKeyCurrentCadence");
    v23 = objc_opt_class();
    v4->fFirstStepTime = objc_msgSend_decodeObjectOfClass_forKey_(a3, v24, v23, @"kCMPedometerDataCodingKeyFirstStepTime");
    v25 = objc_opt_class();
    v4->fActiveTime = objc_msgSend_decodeObjectOfClass_forKey_(a3, v26, v25, @"kCMPedometerDataCodingKeyActiveTime");
    v27 = objc_opt_class();
    v4->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v28, v27, @"kCMPedometerDatacodingKeyUUID");
    v29 = objc_opt_class();
    v4->fIsOdometerDistance = objc_msgSend_decodeObjectOfClass_forKey_(a3, v30, v29, @"kCMPedometerDataCodingKeyIsOdometerDistance");
    v31 = objc_opt_class();
    v4->fIsOdometerPace = objc_msgSend_decodeObjectOfClass_forKey_(a3, v32, v31, @"kCMPedometerDataCodingKeyIsOdometerPace");
    v33 = objc_opt_class();
    v4->fNumberOfPushes = objc_msgSend_decodeObjectOfClass_forKey_(a3, v34, v33, @"kCMPedometerDataCodingKeyNumberOfPushes");
    v35 = objc_opt_class();
    v4->fWorkoutType = objc_msgSend_decodeObjectOfClass_forKey_(a3, v36, v35, @"kCMPedometerDataCodingKeyWorkoutType");
    v37 = objc_opt_class();
    v4->fElevationAscended = objc_msgSend_decodeObjectOfClass_forKey_(a3, v38, v37, @"kCMPedometerDataCodingKeyElevationAscended");
    v39 = objc_opt_class();
    v4->fElevationDescended = objc_msgSend_decodeObjectOfClass_forKey_(a3, v40, v39, @"kCMPedometerDataCodingKeyElevationDescended");
    v41 = objc_opt_class();
    v4->fDistanceSource = objc_msgSend_decodeObjectOfClass_forKey_(a3, v42, v41, @"kCMPedometerDataCodingKeyDistanceSource");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fStartDate, @"kCMPedometerDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fEndDate, @"kCMPedometerDataCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fNumberOfSteps, @"kCMPedometerDataCodingKeyNumberOfSteps");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fDistance, @"kCMPedometerDataCodingKeyDistance");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->fFloorsAscended, @"kCMPedometerDataCodingKeyFloorAscended");
  objc_msgSend_encodeObject_forKey_(a3, v9, self->fFloorsDescended, @"kCMPedometerDataCodingKeyFloorDescended");
  objc_msgSend_encodeObject_forKey_(a3, v10, self->fRecordId, @"kCMPedometerDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v11, self->fCurrentPace, @"kCMPedometerDataCodingKeyPace");
  objc_msgSend_encodeObject_forKey_(a3, v12, self->fCurrentCadence, @"kCMPedometerDataCodingKeyCurrentCadence");
  objc_msgSend_encodeObject_forKey_(a3, v13, self->fFirstStepTime, @"kCMPedometerDataCodingKeyFirstStepTime");
  objc_msgSend_encodeObject_forKey_(a3, v14, self->fActiveTime, @"kCMPedometerDataCodingKeyActiveTime");
  objc_msgSend_encodeObject_forKey_(a3, v15, self->fSourceId, @"kCMPedometerDatacodingKeyUUID");
  objc_msgSend_encodeObject_forKey_(a3, v16, self->fIsOdometerDistance, @"kCMPedometerDataCodingKeyIsOdometerDistance");
  objc_msgSend_encodeObject_forKey_(a3, v17, self->fIsOdometerPace, @"kCMPedometerDataCodingKeyIsOdometerPace");
  objc_msgSend_encodeObject_forKey_(a3, v18, self->fNumberOfPushes, @"kCMPedometerDataCodingKeyNumberOfPushes");
  objc_msgSend_encodeObject_forKey_(a3, v19, self->fWorkoutType, @"kCMPedometerDataCodingKeyWorkoutType");
  objc_msgSend_encodeObject_forKey_(a3, v20, self->fElevationAscended, @"kCMPedometerDataCodingKeyElevationAscended");
  objc_msgSend_encodeObject_forKey_(a3, v21, self->fElevationDescended, @"kCMPedometerDataCodingKeyElevationDescended");
  fDistanceSource = self->fDistanceSource;

  objc_msgSend_encodeObject_forKey_(a3, v22, fDistanceSource, @"kCMPedometerDataCodingKeyDistanceSource");
}

- (NSString)description
{
  v34 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  started = objc_msgSend_startDate(self, v5, v6);
  v10 = objc_msgSend_endDate(self, v8, v9);
  v13 = objc_msgSend_numberOfSteps(self, v11, v12);
  v16 = objc_msgSend_distance(self, v14, v15);
  v19 = objc_msgSend_floorsAscended(self, v17, v18);
  v22 = objc_msgSend_floorsDescended(self, v20, v21);
  v25 = objc_msgSend_currentPace(self, v23, v24);
  v28 = objc_msgSend_currentCadence(self, v26, v27);
  active = objc_msgSend_averageActivePace(self, v29, v30);
  return objc_msgSend_stringWithFormat_(v34, v32, @"%@,<startDate %@ endDate %@ steps %@ distance %@ floorsAscended %@ floorsDescended %@ currentPace %@ currentCadence %@ averageActivePace %@>", v4, started, v10, v13, v16, v19, v22, v25, v28, active);
}

- (NSNumber)averageActivePace
{
  objc_msgSend_doubleValue(self->fDistance, a2, v2);
  if (v6 == 0.0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_doubleValue(self->fActiveTime, v4, v5);
  v9 = v8;
  objc_msgSend_doubleValue(self->fDistance, v10, v11);
  v15 = v9 / v14;

  return objc_msgSend_numberWithDouble_(v7, v12, v13, v15);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMPedometerData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMPedometerData;
    v7 = [(CMPedometerData *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, a3, 0);
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

@end