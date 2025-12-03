@interface CMWaterSubmersionEvent
- (CMWaterSubmersionEvent)initWithCoder:(id)coder;
- (CMWaterSubmersionEvent)initWithEvent:(int64_t)event andDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMWaterSubmersionEvent

- (CMWaterSubmersionEvent)initWithEvent:(int64_t)event andDate:(id)date
{
  v8.receiver = self;
  v8.super_class = CMWaterSubmersionEvent;
  v6 = [(CMWaterSubmersionEvent *)&v8 init];
  if (v6)
  {
    v6->_date = date;
    v6->_state = event;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWaterSubmersionEvent;
  [(CMWaterSubmersionEvent *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_state(self, v8, v9);
  objc_msgSend_date(self, v11, v12);

  return MEMORY[0x1EEE66B58](v7, sel_initWithEvent_andDate_, v10);
}

- (CMWaterSubmersionEvent)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CMWaterSubmersionEvent;
  v5 = [(CMWaterSubmersionEvent *)&v9 init];
  if (v5)
  {
    v5->_state = objc_msgSend_decodeIntForKey_(coder, v4, @"kCMWaterSubmersionEvent");
    v6 = objc_opt_class();
    v5->_date = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMWaterSubmersionEventDate");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_msgSend_state(self, a2, coder);
  objc_msgSend_encodeInteger_forKey_(coder, v6, v5, @"kCMWaterSubmersionEvent");
  v10 = objc_msgSend_date(self, v7, v8);

  objc_msgSend_encodeObject_forKey_(coder, v9, v10, @"kCMWaterSubmersionEventDate");
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_state(self, a2, v2);
  v8 = objc_msgSend_date(self, v6, v7);
  return objc_msgSend_stringWithFormat_(v4, v9, @"CMWaterSubmersionEvent (event:%d, date:%@)", v5, v8);
}

@end