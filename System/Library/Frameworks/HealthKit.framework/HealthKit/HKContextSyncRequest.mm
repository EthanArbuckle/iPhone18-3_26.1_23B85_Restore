@interface HKContextSyncRequest
- (BOOL)isEqual:(id)equal;
- (HKContextSyncRequest)init;
- (HKContextSyncRequest)initWithCoder:(id)coder;
- (HKContextSyncRequest)initWithPush:(BOOL)push pull:(BOOL)pull;
- (id)requestByMergingRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKContextSyncRequest

- (HKContextSyncRequest)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKContextSyncRequest)initWithPush:(BOOL)push pull:(BOOL)pull
{
  v7.receiver = self;
  v7.super_class = HKContextSyncRequest;
  result = [(HKContextSyncRequest *)&v7 init];
  if (result)
  {
    result->_push = push;
    result->_pull = pull;
  }

  return result;
}

- (id)requestByMergingRequest:(id)request
{
  if (request)
  {
    requestCopy = request;
    v5 = [HKContextSyncRequest alloc];
    v6 = ([requestCopy push] & 1) != 0 || self->_push;
    pull = [requestCopy pull];

    v9 = (pull & 1) != 0 || self->_pull;
    selfCopy = [(HKContextSyncRequest *)v5 initWithPush:v6 pull:v9];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_push == objc_msgSend(equalCopy, "push") && self->_pull == objc_msgSend(equalCopy, "pull");

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  push = self->_push;
  coderCopy = coder;
  [coderCopy encodeBool:push forKey:@"push"];
  [coderCopy encodeBool:self->_pull forKey:@"pull"];
}

- (HKContextSyncRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKContextSyncRequest;
  v5 = [(HKContextSyncRequest *)&v7 init];
  if (v5)
  {
    v5->_push = [coderCopy decodeBoolForKey:@"push"];
    v5->_pull = [coderCopy decodeBoolForKey:@"pull"];
  }

  return v5;
}

@end