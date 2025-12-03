@interface AMSUIWebLogAction
- (AMSUIWebLogAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
- (unsigned)_logTypeFromLevel:(int64_t)level;
@end

@implementation AMSUIWebLogAction

- (AMSUIWebLogAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = AMSUIWebLogAction;
  v7 = [(AMSUIWebAction *)&v16 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"level"];
    if (objc_opt_respondsToSelector())
    {
      v7->_level = [v8 integerValue];
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [objectCopy objectForKeyedSubscript:@"message"];
    v11 = [v9 stringWithFormat:@"%@", v10];
    message = v7->_message;
    v7->_message = v11;

    v13 = [objectCopy objectForKeyedSubscript:@"sensitive"];
    if (objc_opt_respondsToSelector())
    {
      v14 = [objectCopy objectForKeyedSubscript:@"sensitive"];
      v7->_sensitive = [v14 BOOLValue];
    }

    else
    {
      v7->_sensitive = 1;
    }
  }

  return v7;
}

- (id)runAction
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AMSUIWebLogAction;
  runAction = [(AMSUIWebAction *)&v13 runAction];
  v4 = [(AMSUIWebLogAction *)self _logTypeFromLevel:[(AMSUIWebLogAction *)self level]];
  if ([(AMSUIWebLogAction *)self sensitive]&& !os_variant_has_internal_content())
  {
    message = @"<private>";
  }

  else
  {
    message = [(AMSUIWebLogAction *)self message];
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIPageConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, v4))
  {
    context = [(AMSUIWebAction *)self context];
    logKey = [context logKey];
    *buf = 138543618;
    v15 = logKey;
    v16 = 2112;
    v17 = message;
    _os_log_impl(&dword_1BB036000, oSLogObject, v4, "JSLog: [%{public}@] %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unsigned)_logTypeFromLevel:(int64_t)level
{
  level = [(AMSUIWebLogAction *)self level];
  v4 = 0x1101100002uLL >> (8 * level);
  if (level >= 5)
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end