@interface HKChangesSyncRequest
- (BOOL)isEqual:(id)a3;
- (HKChangesSyncRequest)init;
- (HKChangesSyncRequest)initWithCoder:(id)a3;
- (HKChangesSyncRequest)initWithPush:(BOOL)a3 pull:(BOOL)a4 lite:(BOOL)a5;
- (id)requestByMergingRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKChangesSyncRequest

- (HKChangesSyncRequest)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKChangesSyncRequest)initWithPush:(BOOL)a3 pull:(BOOL)a4 lite:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = HKChangesSyncRequest;
  result = [(HKChangesSyncRequest *)&v9 init];
  if (result)
  {
    result->_push = a3;
    result->_pull = a4;
    result->_lite = a5;
  }

  return result;
}

- (id)requestByMergingRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [HKChangesSyncRequest alloc];
    v6 = ([v4 push] & 1) != 0 || self->_push;
    v8 = ([v4 pull] & 1) != 0 || self->_pull;
    v9 = ([v4 lite] & 1) != 0 || self->_lite;
    v7 = [(HKChangesSyncRequest *)v5 initWithPush:v6 pull:v8 lite:v9];
  }

  else
  {
    v7 = self;
  }

  v10 = v7;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_push == objc_msgSend(v4, "push") && self->_pull == objc_msgSend(v4, "pull") && self->_lite == objc_msgSend(v4, "lite");

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  push = self->_push;
  v5 = a3;
  [v5 encodeBool:push forKey:@"push"];
  [v5 encodeBool:self->_pull forKey:@"pull"];
  [v5 encodeBool:self->_lite forKey:@"lite"];
}

- (HKChangesSyncRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKChangesSyncRequest;
  v5 = [(HKChangesSyncRequest *)&v7 init];
  if (v5)
  {
    v5->_push = [v4 decodeBoolForKey:@"push"];
    v5->_pull = [v4 decodeBoolForKey:@"pull"];
    v5->_lite = [v4 decodeBoolForKey:@"lite"];
  }

  return v5;
}

@end