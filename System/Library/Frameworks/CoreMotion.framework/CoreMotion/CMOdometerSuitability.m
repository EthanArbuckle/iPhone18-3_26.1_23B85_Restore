@interface CMOdometerSuitability
- (CMOdometerSuitability)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMOdometerSuitability)initWithCoder:(id)a3;
- (CMOdometerSuitability)initWithStartDate:(id)a3 suitableForRunning:(BOOL)a4 suitableForWalking:(BOOL)a5;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMOdometerSuitability

- (CMOdometerSuitability)initWithStartDate:(id)a3 suitableForRunning:(BOOL)a4 suitableForWalking:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = CMOdometerSuitability;
  v8 = [(CMOdometerSuitability *)&v10 init];
  if (v8)
  {
    v8->_startDate = a3;
    v8->_suitableForRunning = a4;
    v8->_suitableForWalking = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometerSuitability;
  [(CMOdometerSuitability *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  startDate = self->_startDate;
  suitableForRunning = self->_suitableForRunning;
  suitableForWalking = self->_suitableForWalking;

  return objc_msgSend_initWithStartDate_suitableForRunning_suitableForWalking_(v7, v8, startDate, suitableForRunning, suitableForWalking);
}

- (CMOdometerSuitability)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = CMOdometerSuitability;
  v4 = [(CMOdometerSuitability *)&v18 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMOdometerSuitabilityCodingKeyStartDate");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMOdometerSuitabilityCodingKeySuitableForRunning");
    v4->_suitableForRunning = objc_msgSend_BOOLValue(v9, v10, v11);
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v13, v12, @"kCMOdometerSuitabilityCodingKeySuitableForWalking");
    v4->_suitableForWalking = objc_msgSend_BOOLValue(v14, v15, v16);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_startDate, @"kCMOdometerSuitabilityCodingKeyStartDate");
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, self->_suitableForRunning);
  objc_msgSend_encodeObject_forKey_(a3, v7, v6, @"kCMOdometerSuitabilityCodingKeySuitableForRunning");
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v8, self->_suitableForWalking);

  objc_msgSend_encodeObject_forKey_(a3, v9, v10, @"kCMOdometerSuitabilityCodingKeySuitableForWalking");
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = "false";
  if (self->_suitableForRunning)
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  if (self->_suitableForWalking)
  {
    v7 = "true";
  }

  return objc_msgSend_stringWithFormat_(v3, v6, @"%@,<startDate %@, suitableForRunning %s, suitableForWalking %s>", v5, self->_startDate, v8, v7);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMOdometerSuitability)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (!objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = CMOdometerSuitability;
  v7 = [(CMOdometerSuitability *)&v14 init];
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

  return v7;
}

@end