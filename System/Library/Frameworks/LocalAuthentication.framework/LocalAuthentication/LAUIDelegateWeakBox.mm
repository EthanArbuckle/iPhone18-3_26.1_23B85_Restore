@interface LAUIDelegateWeakBox
- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5;
@end

@implementation LAUIDelegateWeakBox

- (void)event:(int64_t)a3 params:(id)a4 reply:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(LACWeakBox *)self receiver];

  if (v10)
  {
    v11 = [(LACWeakBox *)self receiver];
    [v11 event:a3 params:v8 reply:v9];
  }

  else
  {
    v12 = LACLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = self;
      v16 = 2080;
      v17 = "[LAUIDelegateWeakBox event:params:reply:]";
      _os_log_impl(&dword_1A784E000, v12, OS_LOG_TYPE_DEFAULT, "%@ not forwarding %s, receiver is nil", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end