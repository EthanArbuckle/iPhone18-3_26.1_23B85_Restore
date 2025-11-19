@interface CMSuppressionEvent
+ (id)stringForEventFacedownState:(unint64_t)a3;
+ (id)stringForEventReason:(unint64_t)a3;
+ (id)stringForEventType:(int64_t)a3;
- (CMSuppressionEvent)initWithCoder:(id)a3;
- (CMSuppressionEvent)initWithEventType:(int64_t)a3 reason:(unint64_t)a4 facedownState:(unint64_t)a5 timestamp:(double)a6 timeSinceLastFacedownStatic:(double)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSuppressionEvent

- (CMSuppressionEvent)initWithEventType:(int64_t)a3 reason:(unint64_t)a4 facedownState:(unint64_t)a5 timestamp:(double)a6 timeSinceLastFacedownStatic:(double)a7
{
  v12.receiver = self;
  v12.super_class = CMSuppressionEvent;
  result = [(CMLogItem *)&v12 initWithTimestamp:a6];
  if (result)
  {
    result->fType = a3;
    result->fReason = a4;
    result->fFacedownState = a5;
    result->fTimeSinceLastFacedownStatic = a7;
  }

  return result;
}

- (CMSuppressionEvent)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = CMSuppressionEvent;
  v5 = [(CMLogItem *)&v14 initWithCoder:?];
  if (v5)
  {
    v5->fType = objc_msgSend_decodeObjectForKey_(a3, v4, @"kCMSuppressionEventCodingKeyType");
    v5->fReason = objc_msgSend_decodeObjectForKey_(a3, v6, @"kCMSuppressionEventCodingKeyReason");
    v5->fFacedownState = objc_msgSend_decodeObjectForKey_(a3, v7, @"kCMSuppressionEventCodingKeyFacedownState");
    v9 = objc_msgSend_decodeObjectForKey_(a3, v8, @"kCMSuppressionEventCodingKeyTimeSinceLastFacedownStatic");
    objc_msgSend_doubleValue(v9, v10, v11);
    v5->fTimeSinceLastFacedownStatic = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = CMSuppressionEvent;
  [(CMLogItem *)&v18 encodeWithCoder:?];
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, self->fType);
  objc_msgSend_encodeObject_forKey_(a3, v7, v6, @"kCMSuppressionEventCodingKeyType");
  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, self->fReason);
  objc_msgSend_encodeObject_forKey_(a3, v10, v9, @"kCMSuppressionEventCodingKeyReason");
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v11, self->fReason);
  objc_msgSend_encodeObject_forKey_(a3, v13, v12, @"kCMSuppressionEventCodingKeyFacedownState");
  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, self->fTimeSinceLastFacedownStatic);
  objc_msgSend_encodeObject_forKey_(a3, v17, v16, @"kCMSuppressionEventCodingKeyTimeSinceLastFacedownStatic");
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMSuppressionEvent;
  [(CMLogItem *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CMSuppressionEvent;
  result = [(CMLogItem *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 2) = self->fType;
    *(result + 3) = self->fReason;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v6, self->fType);
  v9 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v8, self->fReason);
  v11 = objc_msgSend_stringForEventFacedownState_(CMSuppressionEvent, v10, self->fFacedownState);
  fTimeSinceLastFacedownStatic = self->fTimeSinceLastFacedownStatic;
  v16.receiver = self;
  v16.super_class = CMSuppressionEvent;
  [(CMLogItem *)&v16 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v13, @"%@ %@ %@ %@ timeSinceLastFacedownStatic=%f @ %f", v5, v7, v9, v11, *&fTimeSinceLastFacedownStatic, v14);
}

+ (id)stringForEventType:(int64_t)a3
{
  if (a3 > 3)
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, "Unexpected");
  }

  else
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, off_1E7533FE8[a3]);
  }
}

+ (id)stringForEventReason:(unint64_t)a3
{
  if (!a3)
  {
    return @"Unknown";
  }

  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = v4;
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    objc_msgSend_addObject_(v7, v5, @"SmartPowerNap");
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  objc_msgSend_addObject_(v4, v5, @"ViewObstructed");
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v3 & 4) != 0)
  {
LABEL_5:
    objc_msgSend_addObject_(v7, v5, @"DevicePresence");
  }

LABEL_6:
  if (!objc_msgSend_count(v7, v5, v6))
  {
    __assert_rtn("+[CMSuppressionEvent stringForEventReason:]", "CMSuppressionEvent.m", 185, "[reasons count]");
  }

  v9 = objc_msgSend_componentsJoinedByString_(v7, v8, @",");

  return v9;
}

+ (id)stringForEventFacedownState:(unint64_t)a3
{
  if (a3 > 3)
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, "Unexpected");
  }

  else
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, off_1E7534008[a3]);
  }
}

@end