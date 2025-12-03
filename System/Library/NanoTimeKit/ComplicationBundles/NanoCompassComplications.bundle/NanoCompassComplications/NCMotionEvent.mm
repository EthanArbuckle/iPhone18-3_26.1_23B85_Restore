@interface NCMotionEvent
+ (id)dateFormatter;
+ (id)eventWithType:(int64_t)type timestamp:(id)timestamp stationary:(BOOL)stationary;
- (NCMotionEvent)initWithType:(int64_t)type timestamp:(id)timestamp stationary:(BOOL)stationary;
- (id)description;
@end

@implementation NCMotionEvent

+ (id)eventWithType:(int64_t)type timestamp:(id)timestamp stationary:(BOOL)stationary
{
  stationaryCopy = stationary;
  timestampCopy = timestamp;
  v9 = [self alloc];
  v11 = objc_msgSend_initWithType_timestamp_stationary_(v9, v10, type, timestampCopy, stationaryCopy);

  return v11;
}

- (NCMotionEvent)initWithType:(int64_t)type timestamp:(id)timestamp stationary:(BOOL)stationary
{
  timestampCopy = timestamp;
  v13.receiver = self;
  v13.super_class = NCMotionEvent;
  v10 = [(NCMotionEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_timestamp, timestamp);
    v11->_motionType = type;
    v11->_isStationary = stationary;
  }

  return v11;
}

+ (id)dateFormatter
{
  if (qword_27E1C4D88 != -1)
  {
    sub_23BD65B08();
  }

  v3 = qword_27E1C4D80;

  return v3;
}

- (id)description
{
  v5 = MEMORY[0x277CC1CC8];
  v6 = objc_msgSend_motionType(self, a2, v2, v3);
  v12 = objc_msgSend_NCMotionTypeToString_(v5, v7, v6, v8);
  v13 = MEMORY[0x277CCACA8];
  if (self->_isStationary)
  {
    v14 = &stru_284E80A60;
  }

  else
  {
    v14 = @"NOT ";
  }

  v15 = objc_msgSend_dateFormatter(NCMotionEvent, v9, v10, v11);
  v18 = objc_msgSend_stringFromDate_(v15, v16, self->_timestamp, v17);
  v21 = objc_msgSend_stringWithFormat_(v13, v19, @"MotionType: %@. Device: %@Stationary. Received at %@.", v20, v12, v14, v18);

  return v21;
}

@end