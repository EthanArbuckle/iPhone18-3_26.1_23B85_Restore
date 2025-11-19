@interface CMNoMovementStateUpdate
- (BOOL)isEqual:(id)a3;
- (CMNoMovementStateUpdate)initWithCoder:(id)a3;
- (CMNoMovementStateUpdate)initWithState:(int64_t)a3 detectionType:(int64_t)a4 startTime:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMNoMovementStateUpdate

- (CMNoMovementStateUpdate)initWithState:(int64_t)a3 detectionType:(int64_t)a4 startTime:(double)a5
{
  v9.receiver = self;
  v9.super_class = CMNoMovementStateUpdate;
  result = [(CMNoMovementStateUpdate *)&v9 init];
  if (result)
  {
    result->_state = a3;
    result->_detectionType = a4;
    result->_startTime = a5;
  }

  return result;
}

- (CMNoMovementStateUpdate)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CMNoMovementStateUpdate;
  v5 = [(CMNoMovementStateUpdate *)&v10 init];
  if (v5)
  {
    v5->_state = objc_msgSend_decodeIntForKey_(a3, v4, @"kCMNoMovementCodingKeyState");
    v5->_detectionType = objc_msgSend_decodeIntForKey_(a3, v6, @"kCMNoMovementCodingKeyDetectionType");
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"kCMNoMovementCodingKeyStartTime");
    v5->_startTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt_forKey_(a3, a2, LODWORD(self->_state), @"kCMNoMovementCodingKeyState");
  objc_msgSend_encodeInt_forKey_(a3, v5, LODWORD(self->_detectionType), @"kCMNoMovementCodingKeyDetectionType");
  startTime = self->_startTime;

  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMNoMovementCodingKeyStartTime", startTime);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_state(self, v8, v9);
  objc_msgSend_detectionType(self, v11, v12);
  objc_msgSend_startTime(self, v13, v14);

  return MEMORY[0x1EEE66B58](v7, sel_initWithState_detectionType_startTime_, v10);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_state(self, v5, v6);
  if (v7 != objc_msgSend_state(a3, v8, v9))
  {
    return 0;
  }

  v12 = objc_msgSend_detectionType(self, v10, v11);
  if (v12 != objc_msgSend_detectionType(a3, v13, v14))
  {
    return 0;
  }

  objc_msgSend_startTime(self, v15, v16);
  v18 = v17;
  objc_msgSend_startTime(a3, v19, v20);
  return v18 == v21;
}

@end