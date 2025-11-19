@interface CMVehicleConnectionData
- (CMVehicleConnectionData)initWithCoder:(id)a3;
- (CMVehicleConnectionData)initWithStartDate:(double)a3 endDate:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMVehicleConnectionData

- (CMVehicleConnectionData)initWithStartDate:(double)a3 endDate:(double)a4
{
  v14.receiver = self;
  v14.super_class = CMVehicleConnectionData;
  v6 = [(CMVehicleConnectionData *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF00]);
    v6->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v7, v8, v9, a3);
    v10 = objc_alloc(MEMORY[0x1E695DF00]);
    v6->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v10, v11, v12, a4);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMVehicleConnectionData;
  [(CMVehicleConnectionData *)&v3 dealloc];
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
  }

  return v12;
}

- (CMVehicleConnectionData)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CMVehicleConnectionData;
  v4 = [(CMVehicleConnectionData *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMVehicleConnectionDataCodingKeyStartDate");
    v7 = objc_opt_class();
    v4->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMVehicleConnectionDataCodingKeyEndDate");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fStartDate, @"kCMVehicleConnectionDataCodingKeyStartDate");
  fEndDate = self->fEndDate;

  objc_msgSend_encodeObject_forKey_(a3, v5, fEndDate, @"kCMVehicleConnectionDataCodingKeyEndDate");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"%@,<startDate %@, endDate %@>", v5, started, v11);
}

@end