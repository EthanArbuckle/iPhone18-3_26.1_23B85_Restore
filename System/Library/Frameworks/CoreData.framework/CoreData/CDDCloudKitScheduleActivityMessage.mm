@interface CDDCloudKitScheduleActivityMessage
- (CDDCloudKitScheduleActivityMessage)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDDCloudKitScheduleActivityMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CDDCloudKitScheduleActivityMessage;
  [(CDDCloudKitMessage *)&v3 dealloc];
}

- (CDDCloudKitScheduleActivityMessage)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CDDCloudKitScheduleActivityMessage;
  v4 = [(CDDCloudKitMessage *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_activityType = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"activityType", "unsignedIntegerValue"}];
    v4->_storePath = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"storePath"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CDDCloudKitScheduleActivityMessage;
  [(CDDCloudKitMessage *)&v5 encodeWithCoder:?];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_activityType), @"activityType"}];
  [a3 encodeObject:self->_storePath forKey:@"storePath"];
}

@end