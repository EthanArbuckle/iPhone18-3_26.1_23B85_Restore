@interface _BGTaskExpirationRequest
+ (id)requestWithActivity:(id)activity task:(id)task reason:(int64_t)reason;
- (_BGTaskExpirationRequest)initWithActivity:(id)activity task:(id)task reason:(int64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _BGTaskExpirationRequest

+ (id)requestWithActivity:(id)activity task:(id)task reason:(int64_t)reason
{
  taskCopy = task;
  activityCopy = activity;
  v9 = [objc_alloc(objc_opt_class()) initWithActivity:activityCopy task:taskCopy reason:reason];

  return v9;
}

- (_BGTaskExpirationRequest)initWithActivity:(id)activity task:(id)task reason:(int64_t)reason
{
  activityCopy = activity;
  taskCopy = task;
  v14.receiver = self;
  v14.super_class = _BGTaskExpirationRequest;
  v11 = [(_BGTaskExpirationRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_schedulerActivity, activity);
    objc_storeStrong(&v12->_task, task);
    v12->_reason = reason;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BGTaskExpirationRequest alloc];
  schedulerActivity = [(_BGTaskExpirationRequest *)self schedulerActivity];
  task = [(_BGTaskExpirationRequest *)self task];
  v7 = [(_BGTaskExpirationRequest *)v4 initWithActivity:schedulerActivity task:task reason:[(_BGTaskExpirationRequest *)self reason]];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  schedulerActivity = [(_BGTaskExpirationRequest *)self schedulerActivity];
  reason = [(_BGTaskExpirationRequest *)self reason];
  task = [(_BGTaskExpirationRequest *)self task];
  v7 = [v3 stringWithFormat:@"<_BGTaskExpirationRequest: %@, reason: %ld task: %@", schedulerActivity, reason, task];

  return v7;
}

@end