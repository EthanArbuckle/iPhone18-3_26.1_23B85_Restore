@interface ATXUsageInsightsNotificationEvent
- (ATXUsageInsightsNotificationEvent)initWithBundleID:(id)a3 category:(unint64_t)a4 eventTime:(id)a5 contactIDs:(id)a6 isGroupMessage:(BOOL)a7 deliveryType:(int)a8;
- (ATXUsageInsightsNotificationEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUsageInsightsNotificationEvent

- (ATXUsageInsightsNotificationEvent)initWithBundleID:(id)a3 category:(unint64_t)a4 eventTime:(id)a5 contactIDs:(id)a6 isGroupMessage:(BOOL)a7 deliveryType:(int)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v23.receiver = self;
  v23.super_class = ATXUsageInsightsNotificationEvent;
  v17 = [(ATXUsageInsightsNotificationEvent *)&v23 init];
  if (v17)
  {
    v18 = [v14 copy];
    bundleID = v17->_bundleID;
    v17->_bundleID = v18;

    v17->_category = a4;
    objc_storeStrong(&v17->_eventTime, a5);
    v20 = [v16 copy];
    contactIDs = v17->_contactIDs;
    v17->_contactIDs = v20;

    v17->_isGroupMessage = a7;
    v17->_deliveryType = a8;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(ATXUsageInsightsNotificationEvent *)self bundleID];
  [v7 encodeObject:v4 forKey:@"bundleID"];

  [v7 encodeInteger:-[ATXUsageInsightsNotificationEvent category](self forKey:{"category"), @"category"}];
  v5 = [(ATXUsageInsightsNotificationEvent *)self eventTime];
  [v7 encodeObject:v5 forKey:@"eventTime"];

  v6 = [(ATXUsageInsightsNotificationEvent *)self contactIDs];
  [v7 encodeObject:v6 forKey:@"contactIDs"];

  [v7 encodeBool:-[ATXUsageInsightsNotificationEvent isGroupMessage](self forKey:{"isGroupMessage"), @"isGroupMessage"}];
  [v7 encodeInt32:-[ATXUsageInsightsNotificationEvent deliveryType](self forKey:{"deliveryType"), @"deliveryType"}];
}

- (ATXUsageInsightsNotificationEvent)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v6 = [v4 decodeIntegerForKey:@"category"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventTime"];
  v8 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"contactIDs"];

  v12 = [v4 decodeBoolForKey:@"isGroupMessage"];
  v13 = [v4 decodeInt32ForKey:@"deliveryType"];

  v14 = [(ATXUsageInsightsNotificationEvent *)self initWithBundleID:v5 category:v6 eventTime:v7 contactIDs:v11 isGroupMessage:v12 deliveryType:v13];
  return v14;
}

@end