@interface AMSURLAction
+ (AMSURLAction)actionWithError:(id)a3;
+ (id)proceedAction;
+ (id)redirectActionWithURL:(id)a3;
+ (id)retryAction;
- (AMSURLAction)initWithCoder:(id)a3;
- (AMSURLAction)initWithType:(int64_t)a3;
- (AMSURLAction)initWithType:(int64_t)a3 error:(id)a4 reason:(id)a5 redirectURL:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSURLAction

+ (id)proceedAction
{
  v2 = [[AMSURLAction alloc] initWithType:0];

  return v2;
}

- (AMSURLAction)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSURLAction;
  result = [(AMSURLAction *)&v5 init];
  if (result)
  {
    result->_actionType = a3;
  }

  return result;
}

+ (AMSURLAction)actionWithError:(id)a3
{
  v3 = a3;
  v4 = [[AMSURLAction alloc] initWithType:3];
  error = v4->_error;
  v4->_error = v3;

  return v4;
}

+ (id)retryAction
{
  v2 = [[AMSURLAction alloc] initWithType:2];

  return v2;
}

+ (id)redirectActionWithURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[AMSURLAction alloc] initWithType:1];
    v6 = v4;
    redirectURL = v5->_redirectURL;
    v5->_redirectURL = v6;
  }

  else
  {
    redirectURL = AMSError(301, @"Unable to redirect", @"Redirect URL not found", 0);
    v5 = [a1 actionWithError:redirectURL];
  }

  return v5;
}

- (AMSURLAction)initWithType:(int64_t)a3 error:(id)a4 reason:(id)a5 redirectURL:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AMSURLAction;
  v14 = [(AMSURLAction *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_actionType = a3;
    objc_storeStrong(&v14->_error, a4);
    objc_storeStrong(&v15->_reason, a5);
    objc_storeStrong(&v15->_redirectURL, a6);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AMSURLAction *)self actionType];
  v6 = [(AMSURLAction *)self reason];
  v7 = [(AMSURLAction *)self redirectURL];
  v8 = AMSLogableURL(v7);
  v9 = [(AMSURLAction *)self retryIdentifier];
  v10 = [v3 stringWithFormat:@"<%@ type=%ld reason=%@ redirectURL=%@ retryId=%@>", v4, v5, v6, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[AMSURLAction actionType](self forKey:{"actionType"), @"actionType"}];
  v5 = [(AMSURLAction *)self error];
  [v4 encodeObject:v5 forKey:@"error"];

  v6 = [(AMSURLAction *)self reason];
  [v4 encodeObject:v6 forKey:@"reason"];

  v7 = [(AMSURLAction *)self redirectURL];
  [v4 encodeObject:v7 forKey:@"redirectURL"];

  v8 = [(AMSURLAction *)self updatedBody];
  [v4 encodeObject:v8 forKey:@"updatedBody"];

  v9 = [(AMSURLAction *)self updatedBuyParams];
  [v4 encodeObject:v9 forKey:@"updateBuyParams"];

  v10 = [(AMSURLAction *)self updatedHeaders];
  [v4 encodeObject:v10 forKey:@"updatedHeaders"];

  v11 = [(AMSURLAction *)self updatedMethod];
  [v4 encodeObject:v11 forKey:@"updatedMethod"];
}

- (AMSURLAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"actionType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redirectURL"];
  v9 = [(AMSURLAction *)self initWithType:v5 error:v6 reason:v7 redirectURL:v8];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"updatedBody"];
    updatedBody = v9->_updatedBody;
    v9->_updatedBody = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateBuyParams"];
    updatedBuyParams = v9->_updatedBuyParams;
    v9->_updatedBuyParams = v13;

    v15 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"updatedHeaders"];
    updatedHeaders = v9->_updatedHeaders;
    v9->_updatedHeaders = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatedMethod"];
    updatedMethod = v9->_updatedMethod;
    v9->_updatedMethod = v18;
  }

  return v9;
}

@end