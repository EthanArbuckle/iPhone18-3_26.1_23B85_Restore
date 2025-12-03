@interface CMOdometerSuitability
- (CMOdometerSuitability)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMOdometerSuitability)initWithCoder:(id)coder;
- (CMOdometerSuitability)initWithStartDate:(id)date suitableForRunning:(BOOL)running suitableForWalking:(BOOL)walking;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMOdometerSuitability

- (CMOdometerSuitability)initWithStartDate:(id)date suitableForRunning:(BOOL)running suitableForWalking:(BOOL)walking
{
  v10.receiver = self;
  v10.super_class = CMOdometerSuitability;
  v8 = [(CMOdometerSuitability *)&v10 init];
  if (v8)
  {
    v8->_startDate = date;
    v8->_suitableForRunning = running;
    v8->_suitableForWalking = walking;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometerSuitability;
  [(CMOdometerSuitability *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  startDate = self->_startDate;
  suitableForRunning = self->_suitableForRunning;
  suitableForWalking = self->_suitableForWalking;

  return objc_msgSend_initWithStartDate_suitableForRunning_suitableForWalking_(v7, v8, startDate, suitableForRunning, suitableForWalking);
}

- (CMOdometerSuitability)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = CMOdometerSuitability;
  v4 = [(CMOdometerSuitability *)&v18 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMOdometerSuitabilityCodingKeyStartDate");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"kCMOdometerSuitabilityCodingKeySuitableForRunning");
    v4->_suitableForRunning = objc_msgSend_BOOLValue(v9, v10, v11);
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"kCMOdometerSuitabilityCodingKeySuitableForWalking");
    v4->_suitableForWalking = objc_msgSend_BOOLValue(v14, v15, v16);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_startDate, @"kCMOdometerSuitabilityCodingKeyStartDate");
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, self->_suitableForRunning);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"kCMOdometerSuitabilityCodingKeySuitableForRunning");
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v8, self->_suitableForWalking);

  objc_msgSend_encodeObject_forKey_(coder, v9, v10, @"kCMOdometerSuitabilityCodingKeySuitableForWalking");
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

- (CMOdometerSuitability)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (!objc_msgSend_length(representation, a2, representation, metadata, timestamp))
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
    v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, representation, 0);
    if (v11)
    {
      v12 = v11;

      return v12;
    }
  }

  return v7;
}

@end