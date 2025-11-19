@interface AFSiriUserNotificationSummary
- (AFSiriUserNotificationSummary)initWithCoder:(id)a3;
- (AFSiriUserNotificationSummary)initWithSummary:(id)a3 summaryType:(int64_t)a4 error:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSiriUserNotificationSummary

- (AFSiriUserNotificationSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
  v6 = [v4 decodeIntegerForKey:@"summaryType"];
  v7 = [v4 decodeObjectForKey:@"error"];

  v8 = [(AFSiriUserNotificationSummary *)self initWithSummary:v5 summaryType:v6 error:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AFSiriUserNotificationSummary *)self summary];
  [v4 encodeObject:v5 forKey:@"summary"];

  [v4 encodeInteger:-[AFSiriUserNotificationSummary summaryType](self forKey:{"summaryType"), @"summaryType"}];
  v6 = [(AFSiriUserNotificationSummary *)self error];
  [v4 encodeObject:v6 forKey:@"error"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  summary = self->_summary;
  summaryType = self->_summaryType;
  if (summaryType > 2)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_1E7345200[summaryType];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"AFSiriUserNotificationSummary<summary: %@ summaryType: %@, error: %@>", summary, v7, self->_error];

  return v8;
}

- (AFSiriUserNotificationSummary)initWithSummary:(id)a3 summaryType:(int64_t)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AFSiriUserNotificationSummary;
  v11 = [(AFSiriUserNotificationSummary *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_summary, a3);
    v12->_summaryType = a4;
    objc_storeStrong(&v12->_error, a5);
  }

  return v12;
}

@end