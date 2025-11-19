@interface CMSleepData
+ (id)eventTypeName:(int64_t)a3;
- (CMSleepData)initWithCoder:(id)a3;
- (CMSleepData)initWithRecordId:(unint64_t)a3 sourceId:(id)a4 sessionId:(id)a5 eventTime:(id)a6 eventType:(int64_t)a7;
- (CMSleepData)initWithSessionId:(id)a3;
- (CMSleepData)initWithSpringEntry:(const CLSpringTrackerEntry *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)convertToSpringTrackerEntry:(CLSpringTrackerEntry *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSleepData

- (void)convertToSpringTrackerEntry:(CLSpringTrackerEntry *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  memset(src, 0, sizeof(src));
  uuid_clear(uu);
  uuid_clear(src);
  objc_msgSend_getUUIDBytes_(self->fSourceId, v5, uu);
  objc_msgSend_getUUIDBytes_(self->fSessionId, v6, uu);
  a3->var0 = self->fRecordId;
  uuid_copy(a3->var1, uu);
  uuid_copy(a3->var2, src);
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEventTime, v7, v8);
  a3->var3 = v9;
  a3->var4 = self->fEventType;
  v10 = *MEMORY[0x1E69E9840];
}

- (CMSleepData)initWithRecordId:(unint64_t)a3 sourceId:(id)a4 sessionId:(id)a5 eventTime:(id)a6 eventType:(int64_t)a7
{
  v15.receiver = self;
  v15.super_class = CMSleepData;
  v12 = [(CMSleepData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->fRecordId = a3;
    v12->fSourceId = a4;
    v13->fSessionId = a5;
    v13->fEventTime = a6;
    v13->fEventType = a7;
  }

  return v13;
}

- (CMSleepData)initWithSessionId:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMSleepData;
  v4 = [(CMSleepData *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = 1;
    v4->fSourceId = 0;
    v4->fSessionId = a3;
    v5->fEventTime = 0;
    v5->fEventType = 1;
  }

  return v5;
}

- (CMSleepData)initWithSpringEntry:(const CLSpringTrackerEntry *)a3
{
  v15.receiver = self;
  v15.super_class = CMSleepData;
  v4 = [(CMSleepData *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, a3->var1);
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = objc_msgSend_initWithUUIDBytes_(v8, v9, a3->var2);
    v4->fRecordId = a3->var0;
    v4->fSourceId = v7;
    v4->fSessionId = v10;
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEventTime = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, a3->var3);
    v4->fEventType = a3->var4;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSleepData;
  [(CMSleepData *)&v3 dealloc];
}

- (CMSleepData)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = CMSleepData;
  v5 = [(CMSleepData *)&v14 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMSpringDataCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMSpringDataCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v9, v8, @"kCMSpringDataCodingKeySessionId");
    v10 = objc_opt_class();
    v5->fEventTime = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"kCMSpringDataCodingKeyEventTime");
    v5->fEventType = objc_msgSend_decodeIntegerForKey_(a3, v12, @"kCMSpringDataCodingKeyEventType");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  fRecordId = self->fRecordId;
  fSourceId = self->fSourceId;
  fSessionId = self->fSessionId;
  fEventTime = self->fEventTime;
  fEventType = self->fEventType;

  return MEMORY[0x1EEE66B58](v7, sel_initWithRecordId_sourceId_sessionId_eventTime_eventType_, fRecordId);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMSpringDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fSourceId, @"kCMSpringDataCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fSessionId, @"kCMSpringDataCodingKeySessionId");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fEventTime, @"kCMSpringDataCodingKeyEventTime");
  fEventType = self->fEventType;

  objc_msgSend_encodeInteger_forKey_(a3, v8, fEventType, @"kCMSpringDataCodingKeyEventType");
}

+ (id)eventTypeName:(int64_t)a3
{
  v3 = @"Max";
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
    return @"OutOfBid";
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_eventTime(self, v6, v7);
  v11 = objc_msgSend_eventType(self, v9, v10);
  v13 = objc_msgSend_eventTypeName_(CMSleepData, v12, v11);
  return objc_msgSend_stringWithFormat_(v3, v14, @"%@, <eventTime, %@, eventType, %@>", v5, v8, v13);
}

@end