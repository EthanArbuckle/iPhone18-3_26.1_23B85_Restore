@interface _BGTaskExpirationRequest
+ (id)requestWithActivity:(id)a3 task:(id)a4 reason:(int64_t)a5;
- (_BGTaskExpirationRequest)initWithActivity:(id)a3 task:(id)a4 reason:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _BGTaskExpirationRequest

+ (id)requestWithActivity:(id)a3 task:(id)a4 reason:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithActivity:v8 task:v7 reason:a5];

  return v9;
}

- (_BGTaskExpirationRequest)initWithActivity:(id)a3 task:(id)a4 reason:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _BGTaskExpirationRequest;
  v11 = [(_BGTaskExpirationRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_schedulerActivity, a3);
    objc_storeStrong(&v12->_task, a4);
    v12->_reason = a5;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BGTaskExpirationRequest alloc];
  v5 = [(_BGTaskExpirationRequest *)self schedulerActivity];
  v6 = [(_BGTaskExpirationRequest *)self task];
  v7 = [(_BGTaskExpirationRequest *)v4 initWithActivity:v5 task:v6 reason:[(_BGTaskExpirationRequest *)self reason]];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_BGTaskExpirationRequest *)self schedulerActivity];
  v5 = [(_BGTaskExpirationRequest *)self reason];
  v6 = [(_BGTaskExpirationRequest *)self task];
  v7 = [v3 stringWithFormat:@"<_BGTaskExpirationRequest: %@, reason: %ld task: %@", v4, v5, v6];

  return v7;
}

@end