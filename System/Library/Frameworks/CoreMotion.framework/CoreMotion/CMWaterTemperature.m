@interface CMWaterTemperature
- (CMWaterTemperature)initWithCoder:(id)a3;
- (CMWaterTemperature)initWithTemperature:(id)a3 andTemperatureUncertainty:(id)a4 andDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWaterTemperature

- (CMWaterTemperature)initWithTemperature:(id)a3 andTemperatureUncertainty:(id)a4 andDate:(id)a5
{
  v10.receiver = self;
  v10.super_class = CMWaterTemperature;
  v8 = [(CMWaterTemperature *)&v10 init];
  if (v8)
  {
    v8->_temperature = a3;
    v8->_temperatureUncertainty = a4;
    v8->_date = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWaterTemperature;
  [(CMWaterTemperature *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_temperature(self, v8, v9);
  objc_msgSend_temperatureUncertainty(self, v11, v12);
  objc_msgSend_date(self, v13, v14);

  return MEMORY[0x1EEE66B58](v7, sel_initWithTemperature_andTemperatureUncertainty_andDate_, v10);
}

- (CMWaterTemperature)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = CMWaterTemperature;
  v4 = [(CMWaterTemperature *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_temperature = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMWaterTemperature");
    v7 = objc_opt_class();
    v4->_temperatureUncertainty = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMWaterTemperatureUncertainty");
    v9 = objc_opt_class();
    v4->_date = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"kCMWTemperatureUpdateDate");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_msgSend_temperature(self, a2, a3);
  objc_msgSend_encodeObject_forKey_(a3, v6, v5, @"kCMWaterTemperature");
  v9 = objc_msgSend_temperatureUncertainty(self, v7, v8);
  objc_msgSend_encodeObject_forKey_(a3, v10, v9, @"kCMWaterTemperatureUncertainty");
  v14 = objc_msgSend_date(self, v11, v12);

  objc_msgSend_encodeObject_forKey_(a3, v13, v14, @"kCMWTemperatureUpdateDate");
}

- (id)description
{
  v3 = objc_opt_new();
  objc_msgSend_setUnitOptions_(v3, v4, 1);
  v5 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_temperature(self, v6, v7);
  v10 = objc_msgSend_stringFromMeasurement_(v3, v9, v8);
  v13 = objc_msgSend_temperatureUncertainty(self, v11, v12);
  v15 = objc_msgSend_stringFromMeasurement_(v3, v14, v13);
  v18 = objc_msgSend_date(self, v16, v17);
  return objc_msgSend_stringWithFormat_(v5, v19, @"CMWaterTemperature (temperature:%@, temperatureUncertainty:%@, date:%@)", v10, v15, v18);
}

@end