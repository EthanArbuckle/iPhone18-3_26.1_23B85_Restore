@interface CMWakeGestureEvent
- (CMWakeGestureEvent)initWithCoder:(id)a3;
- (CMWakeGestureEvent)initWithState:(int64_t)a3 type:(int64_t)a4 orientation:(int)a5 timestamp:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWakeGestureEvent

- (CMWakeGestureEvent)initWithState:(int64_t)a3 type:(int64_t)a4 orientation:(int)a5 timestamp:(double)a6
{
  v10.receiver = self;
  v10.super_class = CMWakeGestureEvent;
  result = [(CMLogItem *)&v10 initWithTimestamp:a6];
  if (result)
  {
    result->_state = a3;
    result->_type = a4;
    result->_orientation = a5;
  }

  return result;
}

- (CMWakeGestureEvent)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CMWakeGestureEvent;
  v5 = [(CMLogItem *)&v9 initWithCoder:?];
  if (v5)
  {
    v5->_state = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMWakeGestureEventCodingKeyState");
    v5->_type = objc_msgSend_decodeIntegerForKey_(a3, v6, @"kCMWakeGestureEventCodingKeyType");
    v5->_orientation = objc_msgSend_decodeIntegerForKey_(a3, v7, @"kCMWakeGestureEventCodingKeyOrientation");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CMWakeGestureEvent;
  [(CMLogItem *)&v8 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_state, @"kCMWakeGestureEventCodingKeyState");
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->_type, @"kCMWakeGestureEventCodingKeyType");
  objc_msgSend_encodeInteger_forKey_(a3, v7, self->_orientation, @"kCMWakeGestureEventCodingKeyOrientation");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CMWakeGestureEvent;
  result = [(CMLogItem *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 3) = self->_state;
    *(result + 4) = self->_type;
    *(result + 4) = self->_orientation;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  state = self->_state;
  type = self->_type;
  v12.receiver = self;
  v12.super_class = CMWakeGestureEvent;
  orientation = self->_orientation;
  [(CMLogItem *)&v12 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v9, @"%@ state=%ld, type=%ld, orientation=%d, @ %f", v5, state, type, orientation, v10);
}

@end