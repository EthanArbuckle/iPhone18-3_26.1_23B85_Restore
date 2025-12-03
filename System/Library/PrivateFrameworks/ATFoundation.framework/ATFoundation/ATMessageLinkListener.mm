@interface ATMessageLinkListener
- (ATMessageLinkListenerDelegate)delegate;
- (BOOL)start;
- (void)stop;
@end

@implementation ATMessageLinkListener

- (ATMessageLinkListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stop
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATMessageLinkListener.m" lineNumber:21 description:{@"Subclass %@ must implement -%@ defined in %@.", v6, v7, @"[ATMessageLinkListener class]"}];
  }
}

- (BOOL)start
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATMessageLinkListener.m" lineNumber:16 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[ATMessageLinkListener class]"}];
  }

  return 0;
}

@end