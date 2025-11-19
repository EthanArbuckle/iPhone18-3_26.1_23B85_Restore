@interface _FPParentProgress
- (void)dealloc;
- (void)setProgressProxy:(id)a3;
@end

@implementation _FPParentProgress

- (void)dealloc
{
  [(FPProgressProxy *)self->_progressProxy stopTrackingIfStarted];
  v3.receiver = self;
  v3.super_class = _FPParentProgress;
  [(_FPParentProgress *)&v3 dealloc];
}

- (void)setProgressProxy:(id)a3
{
  v5 = a3;
  [(FPProgressProxy *)self->_progressProxy stopTrackingIfStarted];
  objc_storeStrong(&self->_progressProxy, a3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38___FPParentProgress_setProgressProxy___block_invoke;
  v13[3] = &unk_1E79399B0;
  v6 = v5;
  v14 = v6;
  [(_FPParentProgress *)self setCancellationHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38___FPParentProgress_setProgressProxy___block_invoke_2;
  v11[3] = &unk_1E79399B0;
  v7 = v6;
  v12 = v7;
  [(_FPParentProgress *)self setPausingHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38___FPParentProgress_setProgressProxy___block_invoke_3;
  v9[3] = &unk_1E79399B0;
  v10 = v7;
  v8 = v7;
  [(_FPParentProgress *)self setResumingHandler:v9];
}

@end