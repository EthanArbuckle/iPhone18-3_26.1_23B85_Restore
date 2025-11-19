@interface AMSUIWebLogAction
- (AMSUIWebLogAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
- (unsigned)_logTypeFromLevel:(int64_t)a3;
@end

@implementation AMSUIWebLogAction

- (AMSUIWebLogAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = AMSUIWebLogAction;
  v7 = [(AMSUIWebAction *)&v16 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"level"];
    if (objc_opt_respondsToSelector())
    {
      v7->_level = [v8 integerValue];
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [v6 objectForKeyedSubscript:@"message"];
    v11 = [v9 stringWithFormat:@"%@", v10];
    message = v7->_message;
    v7->_message = v11;

    v13 = [v6 objectForKeyedSubscript:@"sensitive"];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v6 objectForKeyedSubscript:@"sensitive"];
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
  v3 = [(AMSUIWebAction *)&v13 runAction];
  v4 = [(AMSUIWebLogAction *)self _logTypeFromLevel:[(AMSUIWebLogAction *)self level]];
  if ([(AMSUIWebLogAction *)self sensitive]&& !os_variant_has_internal_content())
  {
    v5 = @"<private>";
  }

  else
  {
    v5 = [(AMSUIWebLogAction *)self message];
  }

  v6 = [MEMORY[0x1E698C968] sharedWebUIPageConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, v4))
  {
    v8 = [(AMSUIWebAction *)self context];
    v9 = [v8 logKey];
    *buf = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1BB036000, v7, v4, "JSLog: [%{public}@] %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unsigned)_logTypeFromLevel:(int64_t)a3
{
  v3 = [(AMSUIWebLogAction *)self level];
  v4 = 0x1101100002uLL >> (8 * v3);
  if (v3 >= 5)
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end