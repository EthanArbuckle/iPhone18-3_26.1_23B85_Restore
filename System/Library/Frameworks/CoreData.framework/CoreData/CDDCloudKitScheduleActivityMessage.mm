@interface CDDCloudKitScheduleActivityMessage
- (CDDCloudKitScheduleActivityMessage)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDDCloudKitScheduleActivityMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CDDCloudKitScheduleActivityMessage;
  [(CDDCloudKitMessage *)&v3 dealloc];
}

- (CDDCloudKitScheduleActivityMessage)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CDDCloudKitScheduleActivityMessage;
  v4 = [(CDDCloudKitMessage *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_activityType = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"activityType", "unsignedIntegerValue"}];
    v4->_storePath = [coder decodeObjectOfClass:objc_opt_class() forKey:@"storePath"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CDDCloudKitScheduleActivityMessage;
  [(CDDCloudKitMessage *)&v5 encodeWithCoder:?];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_activityType), @"activityType"}];
  [coder encodeObject:self->_storePath forKey:@"storePath"];
}

@end