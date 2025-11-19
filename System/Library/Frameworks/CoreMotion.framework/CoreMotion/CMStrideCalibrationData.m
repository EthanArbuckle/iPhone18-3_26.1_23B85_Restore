@interface CMStrideCalibrationData
- (CMStrideCalibrationData)initWithBegin:(double)a3 end:(double)a4 state:(int64_t)a5 kValue:(double)a6;
- (CMStrideCalibrationData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMStrideCalibrationData

- (CMStrideCalibrationData)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CMStrideCalibrationData;
  v5 = [(CMStrideCalibrationData *)&v13 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"kCMStrideCalibrationDataCodingKeyBegin");
    v5->_begin = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"kCMStrideCalibrationDataCodingKeyEnd");
    v5->_end = v8;
    v5->_state = objc_msgSend_decodeIntegerForKey_(a3, v9, @"kCMStrideCalibrationDataCodingKeyState");
    objc_msgSend_decodeDoubleForKey_(a3, v10, @"kCMStrideCalibrationDataCodingKeyKValue");
    v5->_kValue = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeDouble_forKey_(a3, a2, @"kCMStrideCalibrationDataCodingKeyBegin", self->_begin);
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"kCMStrideCalibrationDataCodingKeyEnd", self->_end);
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->_state, @"kCMStrideCalibrationDataCodingKeyState");
  kValue = self->_kValue;

  objc_msgSend_encodeDouble_forKey_(a3, v7, @"kCMStrideCalibrationDataCodingKeyKValue", kValue);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  *(result + 3) = *&self->_begin;
  *(result + 4) = *&self->_end;
  *(result + 1) = self->_state;
  *(result + 2) = *&self->_kValue;
  return result;
}

- (CMStrideCalibrationData)initWithBegin:(double)a3 end:(double)a4 state:(int64_t)a5 kValue:(double)a6
{
  v11.receiver = self;
  v11.super_class = CMStrideCalibrationData;
  result = [(CMStrideCalibrationData *)&v11 init];
  if (result)
  {
    result->_begin = a3;
    result->_end = a4;
    result->_state = a5;
    result->_kValue = a6;
  }

  return result;
}

- (id)description
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v31[0] = @"begin";
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_begin(self, v7, v8);
  v32[0] = objc_msgSend_numberWithDouble_(v6, v9, v10);
  v31[1] = @"end";
  v11 = MEMORY[0x1E696AD98];
  objc_msgSend_end(self, v12, v13);
  v32[1] = objc_msgSend_numberWithDouble_(v11, v14, v15);
  v31[2] = @"state";
  v16 = MEMORY[0x1E696AD98];
  v19 = objc_msgSend_state(self, v17, v18);
  v32[2] = objc_msgSend_numberWithInteger_(v16, v20, v19);
  v31[3] = @"kValue";
  v21 = MEMORY[0x1E696AD98];
  objc_msgSend_kValue(self, v22, v23);
  v32[3] = objc_msgSend_numberWithDouble_(v21, v24, v25);
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v32, v31, 4);
  result = objc_msgSend_stringWithFormat_(v3, v28, @"%@,%@", v5, v27);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

@end