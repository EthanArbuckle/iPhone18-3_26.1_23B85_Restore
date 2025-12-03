@interface LAUIDelegateWeakBox
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
@end

@implementation LAUIDelegateWeakBox

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  replyCopy = reply;
  receiver = [(LACWeakBox *)self receiver];

  if (receiver)
  {
    receiver2 = [(LACWeakBox *)self receiver];
    [receiver2 event:event params:paramsCopy reply:replyCopy];
  }

  else
  {
    v12 = LACLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      selfCopy = self;
      v16 = 2080;
      v17 = "[LAUIDelegateWeakBox event:params:reply:]";
      _os_log_impl(&dword_1A784E000, v12, OS_LOG_TYPE_DEFAULT, "%@ not forwarding %s, receiver is nil", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end