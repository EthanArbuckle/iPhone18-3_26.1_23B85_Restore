@interface CMSleepData
+ (id)eventTypeName:(int64_t)name;
- (CMSleepData)initWithCoder:(id)coder;
- (CMSleepData)initWithRecordId:(unint64_t)id sourceId:(id)sourceId sessionId:(id)sessionId eventTime:(id)time eventType:(int64_t)type;
- (CMSleepData)initWithSessionId:(id)id;
- (CMSleepData)initWithSpringEntry:(const CLSpringTrackerEntry *)entry;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)convertToSpringTrackerEntry:(CLSpringTrackerEntry *)entry;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSleepData

- (void)convertToSpringTrackerEntry:(CLSpringTrackerEntry *)entry
{
  v13 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  memset(src, 0, sizeof(src));
  uuid_clear(uu);
  uuid_clear(src);
  objc_msgSend_getUUIDBytes_(self->fSourceId, v5, uu);
  objc_msgSend_getUUIDBytes_(self->fSessionId, v6, uu);
  entry->var0 = self->fRecordId;
  uuid_copy(entry->var1, uu);
  uuid_copy(entry->var2, src);
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEventTime, v7, v8);
  entry->var3 = v9;
  entry->var4 = self->fEventType;
  v10 = *MEMORY[0x1E69E9840];
}

- (CMSleepData)initWithRecordId:(unint64_t)id sourceId:(id)sourceId sessionId:(id)sessionId eventTime:(id)time eventType:(int64_t)type
{
  v15.receiver = self;
  v15.super_class = CMSleepData;
  v12 = [(CMSleepData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->fRecordId = id;
    v12->fSourceId = sourceId;
    v13->fSessionId = sessionId;
    v13->fEventTime = time;
    v13->fEventType = type;
  }

  return v13;
}

- (CMSleepData)initWithSessionId:(id)id
{
  v7.receiver = self;
  v7.super_class = CMSleepData;
  v4 = [(CMSleepData *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = 1;
    v4->fSourceId = 0;
    v4->fSessionId = id;
    v5->fEventTime = 0;
    v5->fEventType = 1;
  }

  return v5;
}

- (CMSleepData)initWithSpringEntry:(const CLSpringTrackerEntry *)entry
{
  v15.receiver = self;
  v15.super_class = CMSleepData;
  v4 = [(CMSleepData *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, entry->var1);
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = objc_msgSend_initWithUUIDBytes_(v8, v9, entry->var2);
    v4->fRecordId = entry->var0;
    v4->fSourceId = v7;
    v4->fSessionId = v10;
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEventTime = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, entry->var3);
    v4->fEventType = entry->var4;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSleepData;
  [(CMSleepData *)&v3 dealloc];
}

- (CMSleepData)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = CMSleepData;
  v5 = [(CMSleepData *)&v14 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMSpringDataCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMSpringDataCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCMSpringDataCodingKeySessionId");
    v10 = objc_opt_class();
    v5->fEventTime = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCMSpringDataCodingKeyEventTime");
    v5->fEventType = objc_msgSend_decodeIntegerForKey_(coder, v12, @"kCMSpringDataCodingKeyEventType");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fRecordId = self->fRecordId;
  fSourceId = self->fSourceId;
  fSessionId = self->fSessionId;
  fEventTime = self->fEventTime;
  fEventType = self->fEventType;

  return MEMORY[0x1EEE66B58](v7, sel_initWithRecordId_sourceId_sessionId_eventTime_eventType_, fRecordId);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMSpringDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fSourceId, @"kCMSpringDataCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->fSessionId, @"kCMSpringDataCodingKeySessionId");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->fEventTime, @"kCMSpringDataCodingKeyEventTime");
  fEventType = self->fEventType;

  objc_msgSend_encodeInteger_forKey_(coder, v8, fEventType, @"kCMSpringDataCodingKeyEventType");
}

+ (id)eventTypeName:(int64_t)name
{
  v3 = @"Max";
  if (name != 1)
  {
    v3 = 0;
  }

  if (name)
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