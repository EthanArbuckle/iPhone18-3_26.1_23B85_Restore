@interface AMSURLAction
+ (AMSURLAction)actionWithError:(id)error;
+ (id)proceedAction;
+ (id)redirectActionWithURL:(id)l;
+ (id)retryAction;
- (AMSURLAction)initWithCoder:(id)coder;
- (AMSURLAction)initWithType:(int64_t)type;
- (AMSURLAction)initWithType:(int64_t)type error:(id)error reason:(id)reason redirectURL:(id)l;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSURLAction

+ (id)proceedAction
{
  v2 = [[AMSURLAction alloc] initWithType:0];

  return v2;
}

- (AMSURLAction)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = AMSURLAction;
  result = [(AMSURLAction *)&v5 init];
  if (result)
  {
    result->_actionType = type;
  }

  return result;
}

+ (AMSURLAction)actionWithError:(id)error
{
  errorCopy = error;
  v4 = [[AMSURLAction alloc] initWithType:3];
  error = v4->_error;
  v4->_error = errorCopy;

  return v4;
}

+ (id)retryAction
{
  v2 = [[AMSURLAction alloc] initWithType:2];

  return v2;
}

+ (id)redirectActionWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [[AMSURLAction alloc] initWithType:1];
    v6 = lCopy;
    redirectURL = v5->_redirectURL;
    v5->_redirectURL = v6;
  }

  else
  {
    redirectURL = AMSError(301, @"Unable to redirect", @"Redirect URL not found", 0);
    v5 = [self actionWithError:redirectURL];
  }

  return v5;
}

- (AMSURLAction)initWithType:(int64_t)type error:(id)error reason:(id)reason redirectURL:(id)l
{
  errorCopy = error;
  reasonCopy = reason;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = AMSURLAction;
  v14 = [(AMSURLAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_actionType = type;
    objc_storeStrong(&v14->_error, error);
    objc_storeStrong(&v15->_reason, reason);
    objc_storeStrong(&v15->_redirectURL, l);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  actionType = [(AMSURLAction *)self actionType];
  reason = [(AMSURLAction *)self reason];
  redirectURL = [(AMSURLAction *)self redirectURL];
  v8 = AMSLogableURL(redirectURL);
  retryIdentifier = [(AMSURLAction *)self retryIdentifier];
  v10 = [v3 stringWithFormat:@"<%@ type=%ld reason=%@ redirectURL=%@ retryId=%@>", v4, actionType, reason, v8, retryIdentifier];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AMSURLAction actionType](self forKey:{"actionType"), @"actionType"}];
  error = [(AMSURLAction *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  reason = [(AMSURLAction *)self reason];
  [coderCopy encodeObject:reason forKey:@"reason"];

  redirectURL = [(AMSURLAction *)self redirectURL];
  [coderCopy encodeObject:redirectURL forKey:@"redirectURL"];

  updatedBody = [(AMSURLAction *)self updatedBody];
  [coderCopy encodeObject:updatedBody forKey:@"updatedBody"];

  updatedBuyParams = [(AMSURLAction *)self updatedBuyParams];
  [coderCopy encodeObject:updatedBuyParams forKey:@"updateBuyParams"];

  updatedHeaders = [(AMSURLAction *)self updatedHeaders];
  [coderCopy encodeObject:updatedHeaders forKey:@"updatedHeaders"];

  updatedMethod = [(AMSURLAction *)self updatedMethod];
  [coderCopy encodeObject:updatedMethod forKey:@"updatedMethod"];
}

- (AMSURLAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"actionType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redirectURL"];
  v9 = [(AMSURLAction *)self initWithType:v5 error:v6 reason:v7 redirectURL:v8];
  if (v9)
  {
    ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v11 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"updatedBody"];
    updatedBody = v9->_updatedBody;
    v9->_updatedBody = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateBuyParams"];
    updatedBuyParams = v9->_updatedBuyParams;
    v9->_updatedBuyParams = v13;

    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v16 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"updatedHeaders"];
    updatedHeaders = v9->_updatedHeaders;
    v9->_updatedHeaders = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedMethod"];
    updatedMethod = v9->_updatedMethod;
    v9->_updatedMethod = v18;
  }

  return v9;
}

@end