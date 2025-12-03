@interface ATXUsageInsightsNotificationEvent
- (ATXUsageInsightsNotificationEvent)initWithBundleID:(id)d category:(unint64_t)category eventTime:(id)time contactIDs:(id)ds isGroupMessage:(BOOL)message deliveryType:(int)type;
- (ATXUsageInsightsNotificationEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUsageInsightsNotificationEvent

- (ATXUsageInsightsNotificationEvent)initWithBundleID:(id)d category:(unint64_t)category eventTime:(id)time contactIDs:(id)ds isGroupMessage:(BOOL)message deliveryType:(int)type
{
  dCopy = d;
  timeCopy = time;
  dsCopy = ds;
  v23.receiver = self;
  v23.super_class = ATXUsageInsightsNotificationEvent;
  v17 = [(ATXUsageInsightsNotificationEvent *)&v23 init];
  if (v17)
  {
    v18 = [dCopy copy];
    bundleID = v17->_bundleID;
    v17->_bundleID = v18;

    v17->_category = category;
    objc_storeStrong(&v17->_eventTime, time);
    v20 = [dsCopy copy];
    contactIDs = v17->_contactIDs;
    v17->_contactIDs = v20;

    v17->_isGroupMessage = message;
    v17->_deliveryType = type;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ATXUsageInsightsNotificationEvent *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  [coderCopy encodeInteger:-[ATXUsageInsightsNotificationEvent category](self forKey:{"category"), @"category"}];
  eventTime = [(ATXUsageInsightsNotificationEvent *)self eventTime];
  [coderCopy encodeObject:eventTime forKey:@"eventTime"];

  contactIDs = [(ATXUsageInsightsNotificationEvent *)self contactIDs];
  [coderCopy encodeObject:contactIDs forKey:@"contactIDs"];

  [coderCopy encodeBool:-[ATXUsageInsightsNotificationEvent isGroupMessage](self forKey:{"isGroupMessage"), @"isGroupMessage"}];
  [coderCopy encodeInt32:-[ATXUsageInsightsNotificationEvent deliveryType](self forKey:{"deliveryType"), @"deliveryType"}];
}

- (ATXUsageInsightsNotificationEvent)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v6 = [coderCopy decodeIntegerForKey:@"category"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventTime"];
  v8 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contactIDs"];

  v12 = [coderCopy decodeBoolForKey:@"isGroupMessage"];
  v13 = [coderCopy decodeInt32ForKey:@"deliveryType"];

  v14 = [(ATXUsageInsightsNotificationEvent *)self initWithBundleID:v5 category:v6 eventTime:v7 contactIDs:v11 isGroupMessage:v12 deliveryType:v13];
  return v14;
}

@end