@interface CMNoMovementStateUpdate
- (BOOL)isEqual:(id)equal;
- (CMNoMovementStateUpdate)initWithCoder:(id)coder;
- (CMNoMovementStateUpdate)initWithState:(int64_t)state detectionType:(int64_t)type startTime:(double)time;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMNoMovementStateUpdate

- (CMNoMovementStateUpdate)initWithState:(int64_t)state detectionType:(int64_t)type startTime:(double)time
{
  v9.receiver = self;
  v9.super_class = CMNoMovementStateUpdate;
  result = [(CMNoMovementStateUpdate *)&v9 init];
  if (result)
  {
    result->_state = state;
    result->_detectionType = type;
    result->_startTime = time;
  }

  return result;
}

- (CMNoMovementStateUpdate)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CMNoMovementStateUpdate;
  v5 = [(CMNoMovementStateUpdate *)&v10 init];
  if (v5)
  {
    v5->_state = objc_msgSend_decodeIntForKey_(coder, v4, @"kCMNoMovementCodingKeyState");
    v5->_detectionType = objc_msgSend_decodeIntForKey_(coder, v6, @"kCMNoMovementCodingKeyDetectionType");
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCMNoMovementCodingKeyStartTime");
    v5->_startTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, LODWORD(self->_state), @"kCMNoMovementCodingKeyState");
  objc_msgSend_encodeInt_forKey_(coder, v5, LODWORD(self->_detectionType), @"kCMNoMovementCodingKeyDetectionType");
  startTime = self->_startTime;

  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMNoMovementCodingKeyStartTime", startTime);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_state(self, v8, v9);
  objc_msgSend_detectionType(self, v11, v12);
  objc_msgSend_startTime(self, v13, v14);

  return MEMORY[0x1EEE66B58](v7, sel_initWithState_detectionType_startTime_, v10);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_state(self, v5, v6);
  if (v7 != objc_msgSend_state(equal, v8, v9))
  {
    return 0;
  }

  v12 = objc_msgSend_detectionType(self, v10, v11);
  if (v12 != objc_msgSend_detectionType(equal, v13, v14))
  {
    return 0;
  }

  objc_msgSend_startTime(self, v15, v16);
  v18 = v17;
  objc_msgSend_startTime(equal, v19, v20);
  return v18 == v21;
}

@end