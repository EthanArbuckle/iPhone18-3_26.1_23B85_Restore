@interface AFSiriUserNotificationSummary
- (AFSiriUserNotificationSummary)initWithCoder:(id)coder;
- (AFSiriUserNotificationSummary)initWithSummary:(id)summary summaryType:(int64_t)type error:(id)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSiriUserNotificationSummary

- (AFSiriUserNotificationSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
  v6 = [coderCopy decodeIntegerForKey:@"summaryType"];
  v7 = [coderCopy decodeObjectForKey:@"error"];

  v8 = [(AFSiriUserNotificationSummary *)self initWithSummary:v5 summaryType:v6 error:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  summary = [(AFSiriUserNotificationSummary *)self summary];
  [coderCopy encodeObject:summary forKey:@"summary"];

  [coderCopy encodeInteger:-[AFSiriUserNotificationSummary summaryType](self forKey:{"summaryType"), @"summaryType"}];
  error = [(AFSiriUserNotificationSummary *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
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

- (AFSiriUserNotificationSummary)initWithSummary:(id)summary summaryType:(int64_t)type error:(id)error
{
  summaryCopy = summary;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = AFSiriUserNotificationSummary;
  v11 = [(AFSiriUserNotificationSummary *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_summary, summary);
    v12->_summaryType = type;
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

@end