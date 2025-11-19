@interface CMPedometerEvent
+ (id)eventStringFromType:(int64_t)a3;
- (CMPedometerEvent)initWithCoder:(id)a3;
- (CMPedometerEvent)initWithEventDate:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMPedometerEvent

- (CMPedometerEvent)initWithEventDate:(id)a3 type:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = CMPedometerEvent;
  v6 = [(CMPedometerEvent *)&v8 init];
  if (v6)
  {
    v6->fDate = a3;
    v6->fType = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPedometerEvent;
  [(CMPedometerEvent *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  fDate = self->fDate;
  fType = self->fType;

  return MEMORY[0x1EEE66B58](v7, sel_initWithEventDate_type_, fDate);
}

- (CMPedometerEvent)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CMPedometerEvent;
  v4 = [(CMPedometerEvent *)&v9 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMPedometerEventKeyEventDate");
    v4->fType = objc_msgSend_decodeIntegerForKey_(a3, v7, @"kCMPedometerEventKeyEventType");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fDate, @"kCMPedometerEventKeyEventDate");
  fType = self->fType;

  objc_msgSend_encodeInteger_forKey_(a3, v5, fType, @"kCMPedometerEventKeyEventType");
}

+ (id)eventStringFromType:(int64_t)a3
{
  v3 = @"Resume";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Pause";
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_date(self, v6, v7);
  v11 = objc_msgSend_type(self, v9, v10);
  v13 = objc_msgSend_eventStringFromType_(CMPedometerEvent, v12, v11);
  return objc_msgSend_stringWithFormat_(v3, v14, @"%@,<eventDate, %@, eventType, %@>", v5, v8, v13);
}

@end