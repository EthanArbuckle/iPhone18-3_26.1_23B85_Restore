@interface HKSummarySharingSyncRequest
- (BOOL)isEqual:(id)a3;
- (HKSummarySharingSyncRequest)init;
- (HKSummarySharingSyncRequest)initWithCoder:(id)a3;
- (HKSummarySharingSyncRequest)initWithPush:(BOOL)a3 pull:(BOOL)a4;
- (id)requestByMergingRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSummarySharingSyncRequest

- (HKSummarySharingSyncRequest)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSummarySharingSyncRequest)initWithPush:(BOOL)a3 pull:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HKSummarySharingSyncRequest;
  result = [(HKSummarySharingSyncRequest *)&v7 init];
  if (result)
  {
    result->_push = a3;
    result->_pull = a4;
  }

  return result;
}

- (id)requestByMergingRequest:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [HKSummarySharingSyncRequest alloc];
    v6 = ([v4 push] & 1) != 0 || self->_push;
    v8 = [v4 pull];

    v9 = (v8 & 1) != 0 || self->_pull;
    v7 = [(HKSummarySharingSyncRequest *)v5 initWithPush:v6 pull:v9];
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_push == objc_msgSend(v4, "push") && self->_pull == objc_msgSend(v4, "pull");

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  push = self->_push;
  v5 = a3;
  [v5 encodeBool:push forKey:@"push"];
  [v5 encodeBool:self->_pull forKey:@"pull"];
}

- (HKSummarySharingSyncRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKSummarySharingSyncRequest;
  v5 = [(HKSummarySharingSyncRequest *)&v7 init];
  if (v5)
  {
    v5->_push = [v4 decodeBoolForKey:@"push"];
    v5->_pull = [v4 decodeBoolForKey:@"pull"];
  }

  return v5;
}

@end