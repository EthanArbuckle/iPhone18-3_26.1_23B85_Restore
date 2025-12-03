@interface INIntentForwardingActionResponse
- (INIntentForwardingActionResponse)initWithCoder:(id)coder;
- (INIntentForwardingActionResponse)initWithError:(id)error;
@end

@implementation INIntentForwardingActionResponse

- (INIntentForwardingActionResponse)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v4 setWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"error"];

  v14 = [(INIntentForwardingActionResponse *)self initWithError:v13];
  return v14;
}

- (INIntentForwardingActionResponse)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = INIntentForwardingActionResponse;
  v6 = [(INIntentForwardingActionResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

@end