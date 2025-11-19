@interface ATXSettingsActionsClientRequest
- (ATXSettingsActionsClientRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSettingsActionsClientRequest

- (ATXSettingsActionsClientRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXSettingsActionsClientRequest;
  v5 = [(ATXSettingsActionsClientRequest *)&v11 init];
  if (v5)
  {
    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    clientBundleID = v5->_clientBundleID;
    v5->_clientBundleID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  limit = self->_limit;
  v5 = a3;
  [v5 encodeInteger:limit forKey:@"limit"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_clientBundleID forKey:@"bundleID"];
}

@end