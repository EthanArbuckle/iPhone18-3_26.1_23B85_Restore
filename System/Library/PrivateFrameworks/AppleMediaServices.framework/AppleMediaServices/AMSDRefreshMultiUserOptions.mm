@interface AMSDRefreshMultiUserOptions
- (AMSDRefreshMultiUserOptions)initWithReason:(id)reason;
- (NSString)hashedDescription;
- (id)_stringForRefreshType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AMSDRefreshMultiUserOptions

- (AMSDRefreshMultiUserOptions)initWithReason:(id)reason
{
  reasonCopy = reason;
  v10.receiver = self;
  v10.super_class = AMSDRefreshMultiUserOptions;
  v5 = [(AMSDRefreshMultiUserOptions *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_ignoreThrottling = 0;
    v7 = [reasonCopy copy];
    reasonDescription = v6->_reasonDescription;
    v6->_reasonDescription = v7;

    v6->_shouldUseCloudData = 1;
    v6->_schedulingInterval = 0.0;
    v6->_throttlingInterval = 0.0;
    v6->_reasonType = 2;
  }

  return v6;
}

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@: %p> {", v4, self];

  if ([(AMSDRefreshMultiUserOptions *)self ignoreThrottling])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  [v5 appendFormat:@"\n  ignoreThrottling = %@", v6];
  reasonDescription = [(AMSDRefreshMultiUserOptions *)self reasonDescription];
  v8 = reasonDescription;
  v9 = @"(null)";
  if (reasonDescription)
  {
    v9 = reasonDescription;
  }

  [v5 appendFormat:@"\n  reason = %@", v9];

  v10 = [(AMSDRefreshMultiUserOptions *)self _stringForRefreshType:[(AMSDRefreshMultiUserOptions *)self reasonType]];
  [v5 appendFormat:@"\n  refreshType = %@", v10];

  [(AMSDRefreshMultiUserOptions *)self schedulingInterval];
  [v5 appendFormat:@"\n  schedulingInterval = %f", v11];
  if ([(AMSDRefreshMultiUserOptions *)self shouldUseCloudData])
  {
    v12 = @"true";
  }

  else
  {
    v12 = @"false";
  }

  [v5 appendFormat:@"\n  shouldUseCloudData = %@", v12];
  [(AMSDRefreshMultiUserOptions *)self throttlingInterval];
  [v5 appendFormat:@"\n  throttlingInterval = %f", v13];
  [v5 appendString:@"\n}"];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setIgnoreThrottling:{-[AMSDRefreshMultiUserOptions ignoreThrottling](self, "ignoreThrottling")}];
  reasonDescription = [(AMSDRefreshMultiUserOptions *)self reasonDescription];
  v7 = [reasonDescription copyWithZone:zone];
  [v5 setReasonDescription:v7];

  [v5 setReasonType:{-[AMSDRefreshMultiUserOptions reasonType](self, "reasonType")}];
  [(AMSDRefreshMultiUserOptions *)self schedulingInterval];
  [v5 setSchedulingInterval:?];
  [v5 setShouldUseCloudData:{-[AMSDRefreshMultiUserOptions shouldUseCloudData](self, "shouldUseCloudData")}];
  [(AMSDRefreshMultiUserOptions *)self throttlingInterval];
  [v5 setThrottlingInterval:?];
  return v5;
}

- (id)_stringForRefreshType:(unint64_t)type
{
  if (type > 2)
  {
    return @"Reason unknown";
  }

  else
  {
    return off_1002B2208[type];
  }
}

@end