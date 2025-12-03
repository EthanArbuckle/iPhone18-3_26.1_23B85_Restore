@interface HKChangesSyncRequest
- (BOOL)isEqual:(id)equal;
- (HKChangesSyncRequest)init;
- (HKChangesSyncRequest)initWithCoder:(id)coder;
- (HKChangesSyncRequest)initWithPush:(BOOL)push pull:(BOOL)pull lite:(BOOL)lite;
- (id)requestByMergingRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
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

- (HKChangesSyncRequest)initWithPush:(BOOL)push pull:(BOOL)pull lite:(BOOL)lite
{
  v9.receiver = self;
  v9.super_class = HKChangesSyncRequest;
  result = [(HKChangesSyncRequest *)&v9 init];
  if (result)
  {
    result->_push = push;
    result->_pull = pull;
    result->_lite = lite;
  }

  return result;
}

- (id)requestByMergingRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v5 = [HKChangesSyncRequest alloc];
    v6 = ([requestCopy push] & 1) != 0 || self->_push;
    v8 = ([requestCopy pull] & 1) != 0 || self->_pull;
    v9 = ([requestCopy lite] & 1) != 0 || self->_lite;
    selfCopy = [(HKChangesSyncRequest *)v5 initWithPush:v6 pull:v8 lite:v9];
  }

  else
  {
    selfCopy = self;
  }

  v10 = selfCopy;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_push == objc_msgSend(equalCopy, "push") && self->_pull == objc_msgSend(equalCopy, "pull") && self->_lite == objc_msgSend(equalCopy, "lite");

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  push = self->_push;
  coderCopy = coder;
  [coderCopy encodeBool:push forKey:@"push"];
  [coderCopy encodeBool:self->_pull forKey:@"pull"];
  [coderCopy encodeBool:self->_lite forKey:@"lite"];
}

- (HKChangesSyncRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKChangesSyncRequest;
  v5 = [(HKChangesSyncRequest *)&v7 init];
  if (v5)
  {
    v5->_push = [coderCopy decodeBoolForKey:@"push"];
    v5->_pull = [coderCopy decodeBoolForKey:@"pull"];
    v5->_lite = [coderCopy decodeBoolForKey:@"lite"];
  }

  return v5;
}

@end