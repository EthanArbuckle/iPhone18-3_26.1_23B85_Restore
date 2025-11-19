@interface CMWaterSubmersionMeasurement
- (CMWaterSubmersionMeasurement)initWithCoder:(id)a3;
- (CMWaterSubmersionMeasurement)initWithDepth:(id)a3 andPressure:(id)a4 andSurfacePressure:(id)a5 andState:(int64_t)a6 andDate:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWaterSubmersionMeasurement

- (CMWaterSubmersionMeasurement)initWithDepth:(id)a3 andPressure:(id)a4 andSurfacePressure:(id)a5 andState:(int64_t)a6 andDate:(id)a7
{
  v14.receiver = self;
  v14.super_class = CMWaterSubmersionMeasurement;
  v12 = [(CMWaterSubmersionMeasurement *)&v14 init];
  if (v12)
  {
    v12->_depth = a3;
    v12->_pressure = a4;
    v12->_surfacePressure = a5;
    v12->_submersionState = a6;
    v12->_date = a7;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWaterSubmersionMeasurement;
  [(CMWaterSubmersionMeasurement *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_depth(self, v8, v9);
  objc_msgSend_pressure(self, v11, v12);
  objc_msgSend_surfacePressure(self, v13, v14);
  objc_msgSend_submersionState(self, v15, v16);
  objc_msgSend_date(self, v17, v18);

  return MEMORY[0x1EEE66B58](v7, sel_initWithDepth_andPressure_andSurfacePressure_andState_andDate_, v10);
}

- (CMWaterSubmersionMeasurement)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = CMWaterSubmersionMeasurement;
  v4 = [(CMWaterSubmersionMeasurement *)&v15 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_depth = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMWaterSubmersionMeasurementUpdateDepth");
    v7 = objc_opt_class();
    v4->_pressure = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMWaterSubmersionMeasurementUpdatePressure");
    v9 = objc_opt_class();
    v4->_surfacePressure = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"kCMWaterSubmersionMeasurementUpdateSurfacePressure");
    v4->_submersionState = objc_msgSend_decodeIntForKey_(a3, v11, @"kCMWaterSubmersionMeasurementUpdateState");
    v12 = objc_opt_class();
    v4->_date = objc_msgSend_decodeObjectOfClass_forKey_(a3, v13, v12, @"kCMWaterSubmersionMeasurementUpdateDate");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_msgSend_depth(self, a2, a3);
  objc_msgSend_encodeObject_forKey_(a3, v6, v5, @"kCMWaterSubmersionMeasurementUpdateDepth");
  v9 = objc_msgSend_pressure(self, v7, v8);
  objc_msgSend_encodeObject_forKey_(a3, v10, v9, @"kCMWaterSubmersionMeasurementUpdatePressure");
  v13 = objc_msgSend_surfacePressure(self, v11, v12);
  objc_msgSend_encodeObject_forKey_(a3, v14, v13, @"kCMWaterSubmersionMeasurementUpdateSurfacePressure");
  v17 = objc_msgSend_submersionState(self, v15, v16);
  objc_msgSend_encodeInteger_forKey_(a3, v18, v17, @"kCMWaterSubmersionMeasurementUpdateState");
  v22 = objc_msgSend_date(self, v19, v20);

  objc_msgSend_encodeObject_forKey_(a3, v21, v22, @"kCMWaterSubmersionMeasurementUpdateDate");
}

- (id)description
{
  v3 = objc_opt_new();
  objc_msgSend_setUnitOptions_(v3, v4, 1);
  v5 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_depth(self, v6, v7);
  v10 = objc_msgSend_stringFromMeasurement_(v3, v9, v8);
  v13 = objc_msgSend_pressure(self, v11, v12);
  v15 = objc_msgSend_stringFromMeasurement_(v3, v14, v13);
  v18 = objc_msgSend_surfacePressure(self, v16, v17);
  v20 = objc_msgSend_stringFromMeasurement_(v3, v19, v18);
  v23 = objc_msgSend_submersionState(self, v21, v22);
  v26 = objc_msgSend_date(self, v24, v25);
  return objc_msgSend_stringWithFormat_(v5, v27, @"CMWaterSubmersionMeasurement (depth:%@, pressure:%@, surfacePressure:%@, state:%d, date:%@)", v10, v15, v20, v23, v26);
}

@end