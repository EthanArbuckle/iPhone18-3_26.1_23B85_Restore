@interface CMFlickGestureEvent
+ (id)stringForEventType:(int64_t)a3;
- (CMFlickGestureEvent)initWithCoder:(id)a3;
- (CMFlickGestureEvent)initWithEventType:(int64_t)a3 timestamp:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMFlickGestureEvent

- (CMFlickGestureEvent)initWithEventType:(int64_t)a3 timestamp:(double)a4
{
  v6.receiver = self;
  v6.super_class = CMFlickGestureEvent;
  result = [(CMLogItem *)&v6 initWithTimestamp:a4];
  if (result)
  {
    result->fEventType = a3;
  }

  return result;
}

- (CMFlickGestureEvent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMFlickGestureEvent;
  v5 = [(CMLogItem *)&v7 initWithCoder:?];
  if (v5)
  {
    v5->fEventType = objc_msgSend_decodeObjectForKey_(a3, v4, @"kCMFlickGestureEventCodingKeyType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CMFlickGestureEvent;
  [(CMLogItem *)&v8 encodeWithCoder:?];
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, self->fEventType);
  objc_msgSend_encodeObject_forKey_(a3, v7, v6, @"kCMFlickGestureEventCodingKeyType");
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMFlickGestureEvent;
  [(CMLogItem *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CMFlickGestureEvent;
  result = [(CMLogItem *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 2) = self->fEventType;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringForEventType_(CMFlickGestureEvent, v6, self->fEventType);
  v11.receiver = self;
  v11.super_class = CMFlickGestureEvent;
  [(CMLogItem *)&v11 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@ @ %f", v5, v7, v9);
}

+ (id)stringForEventType:(int64_t)a3
{
  if (a3 > 3)
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, "Unexpected");
  }

  else
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, off_1E75358D0[a3]);
  }
}

@end