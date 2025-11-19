@interface PKUIPencilInteractionObserver
- (void)dealloc;
- (void)initWithPrefersPencilOnlyDrawsDidChangeHandler:(void *)a1;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PKUIPencilInteractionObserver

- (void)initWithPrefersPencilOnlyDrawsDidChangeHandler:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PKUIPencilInteractionObserver;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;

      [objc_opt_class() addObserver:a1 forKeyPath:@"prefersPencilOnlyDrawing" options:0 context:&kKVOContext_1];
    }
  }

  return a1;
}

- (void)dealloc
{
  [objc_opt_class() removeObserver:self forKeyPath:@"prefersPencilOnlyDrawing" context:&kKVOContext_1];
  v3.receiver = self;
  v3.super_class = PKUIPencilInteractionObserver;
  [(PKUIPencilInteractionObserver *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (kKVOContext_1 == a6)
  {
    if ([v10 isEqualToString:@"prefersPencilOnlyDrawing"])
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
    [(PKUIPencilInteractionObserver *)&v13 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

@end