@interface CMStrideCalibrationHistory
- (CMStrideCalibrationHistory)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMStrideCalibrationHistory)initWithCalibrationTracks:(id)a3 rawSpeedToKValueBins:(id)a4 stepCadenceToStrideLengthBins:(id)a5;
- (CMStrideCalibrationHistory)initWithCoder:(id)a3;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMStrideCalibrationHistory

- (CMStrideCalibrationHistory)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = CMStrideCalibrationHistory;
  v4 = [(CMStrideCalibrationHistory *)&v24 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
    v4->_calibrationTracks = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v10, v9, @"kCMStrideCalibrationHistoryCodingKeyCalibrationTracks");
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v15 = objc_msgSend_setWithObjects_(v11, v14, v12, v13, 0);
    v4->_rawSpeedToKValueBins = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v16, v15, @"kCMStrideCalibrationHistoryCodingKeyRawSpeedToKValueBins");
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v21 = objc_msgSend_setWithObjects_(v17, v20, v18, v19, 0);
    v4->_stepCadenceToStrideLengthBins = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v22, v21, @"kCMStrideCalibrationHistoryCodingKeyStepCadenceToStrideLengthBins");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_calibrationTracks, @"kCMStrideCalibrationHistoryCodingKeyCalibrationTracks");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->_rawSpeedToKValueBins, @"kCMStrideCalibrationHistoryCodingKeyRawSpeedToKValueBins");
  stepCadenceToStrideLengthBins = self->_stepCadenceToStrideLengthBins;

  objc_msgSend_encodeObject_forKey_(a3, v6, stepCadenceToStrideLengthBins, @"kCMStrideCalibrationHistoryCodingKeyStepCadenceToStrideLengthBins");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);

  v10[1] = objc_msgSend_copyWithZone_(self->_calibrationTracks, v11, a3);
  v10[2] = objc_msgSend_copyWithZone_(self->_rawSpeedToKValueBins, v12, a3);

  v10[3] = objc_msgSend_copyWithZone_(self->_stepCadenceToStrideLengthBins, v13, a3);
  return v10;
}

- (CMStrideCalibrationHistory)initWithCalibrationTracks:(id)a3 rawSpeedToKValueBins:(id)a4 stepCadenceToStrideLengthBins:(id)a5
{
  v10.receiver = self;
  v10.super_class = CMStrideCalibrationHistory;
  v8 = [(CMStrideCalibrationHistory *)&v10 init];
  if (v8)
  {
    v8->_calibrationTracks = a3;
    v8->_rawSpeedToKValueBins = a4;
    v8->_stepCadenceToStrideLengthBins = a5;
  }

  return v8;
}

- (void)dealloc
{
  self->_calibrationTracks = 0;

  self->_rawSpeedToKValueBins = 0;
  self->_stepCadenceToStrideLengthBins = 0;
  v3.receiver = self;
  v3.super_class = CMStrideCalibrationHistory;
  [(CMStrideCalibrationHistory *)&v3 dealloc];
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMStrideCalibrationHistory)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v19.receiver = self;
    v19.super_class = CMStrideCalibrationHistory;
    v7 = [(CMStrideCalibrationHistory *)&v19 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v14 = objc_msgSend_setWithObjects_(v9, v13, v10, v11, v12, 0);
      v16 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v8, v15, v14, a3, 0);
      if (v16)
      {
        v17 = v16;

        return v17;
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