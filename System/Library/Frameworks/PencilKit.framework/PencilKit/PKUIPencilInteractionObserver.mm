@interface PKUIPencilInteractionObserver
- (void)dealloc;
- (void)initWithPrefersPencilOnlyDrawsDidChangeHandler:(void *)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PKUIPencilInteractionObserver

- (void)initWithPrefersPencilOnlyDrawsDidChangeHandler:(void *)handler
{
  v3 = a2;
  if (handler)
  {
    v7.receiver = handler;
    v7.super_class = PKUIPencilInteractionObserver;
    handler = objc_msgSendSuper2(&v7, sel_init);
    if (handler)
    {
      v4 = [v3 copy];
      v5 = handler[1];
      handler[1] = v4;

      [objc_opt_class() addObserver:handler forKeyPath:@"prefersPencilOnlyDrawing" options:0 context:&kKVOContext_1];
    }
  }

  return handler;
}

- (void)dealloc
{
  [objc_opt_class() removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing" context:&kKVOContext_1];
  v3.receiver = self;
  v3.super_class = PKUIPencilInteractionObserver;
  [(PKUIPencilInteractionObserver *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v11 = pathCopy;
  if (kKVOContext_1 == context)
  {
    if ([pathCopy isEqualToString:@"prefersPencilOnlyDrawing"])
    {
      (*(self->_prefersPencilOnlyDrawsDidChangeHandler + 2))();
    }

    else
    {
      v12 = os_log_create("com.apple.pencilkit", "PKUIPencilInteractionObserver");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v15 = v11;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Received unknown keyPath: %{private}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKUIPencilInteractionObserver;
    [(PKUIPencilInteractionObserver *)&v13 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

@end