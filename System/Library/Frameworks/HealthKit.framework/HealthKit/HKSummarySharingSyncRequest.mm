@interface HKSummarySharingSyncRequest
- (BOOL)isEqual:(id)equal;
- (HKSummarySharingSyncRequest)init;
- (HKSummarySharingSyncRequest)initWithCoder:(id)coder;
- (HKSummarySharingSyncRequest)initWithPush:(BOOL)push pull:(BOOL)pull;
- (id)requestByMergingRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
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

- (HKSummarySharingSyncRequest)initWithPush:(BOOL)push pull:(BOOL)pull
{
  v7.receiver = self;
  v7.super_class = HKSummarySharingSyncRequest;
  result = [(HKSummarySharingSyncRequest *)&v7 init];
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
    v5 = [HKSummarySharingSyncRequest alloc];
    v6 = ([requestCopy push] & 1) != 0 || self->_push;
    pull = [requestCopy pull];

    v9 = (pull & 1) != 0 || self->_pull;
    selfCopy = [(HKSummarySharingSyncRequest *)v5 initWithPush:v6 pull:v9];
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

- (HKSummarySharingSyncRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKSummarySharingSyncRequest;
  v5 = [(HKSummarySharingSyncRequest *)&v7 init];
  if (v5)
  {
    v5->_push = [coderCopy decodeBoolForKey:@"push"];
    v5->_pull = [coderCopy decodeBoolForKey:@"pull"];
  }

  return v5;
}

@end