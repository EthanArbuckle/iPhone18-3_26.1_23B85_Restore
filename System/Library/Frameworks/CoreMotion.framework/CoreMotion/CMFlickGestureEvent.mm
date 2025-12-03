@interface CMFlickGestureEvent
+ (id)stringForEventType:(int64_t)type;
- (CMFlickGestureEvent)initWithCoder:(id)coder;
- (CMFlickGestureEvent)initWithEventType:(int64_t)type timestamp:(double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMFlickGestureEvent

- (CMFlickGestureEvent)initWithEventType:(int64_t)type timestamp:(double)timestamp
{
  v6.receiver = self;
  v6.super_class = CMFlickGestureEvent;
  result = [(CMLogItem *)&v6 initWithTimestamp:timestamp];
  if (result)
  {
    result->fEventType = type;
  }

  return result;
}

- (CMFlickGestureEvent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CMFlickGestureEvent;
  v5 = [(CMLogItem *)&v7 initWithCoder:?];
  if (v5)
  {
    v5->fEventType = objc_msgSend_decodeObjectForKey_(coder, v4, @"kCMFlickGestureEventCodingKeyType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CMFlickGestureEvent;
  [(CMLogItem *)&v8 encodeWithCoder:?];
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, self->fEventType);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"kCMFlickGestureEventCodingKeyType");
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMFlickGestureEvent;
  [(CMLogItem *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CMFlickGestureEvent;
  result = [(CMLogItem *)&v5 copyWithZone:zone];
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

+ (id)stringForEventType:(int64_t)type
{
  if (type > 3)
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, "Unexpected");
  }

  else
  {
    return objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, off_1E75358D0[type]);
  }
}

@end