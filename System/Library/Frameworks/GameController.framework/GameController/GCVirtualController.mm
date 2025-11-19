@interface GCVirtualController
+ (GCVirtualController)virtualControllerWithConfiguration:(GCVirtualControllerConfiguration *)configuration;
- (GCVirtualController)initWithConfiguration:(GCVirtualControllerConfiguration *)configuration;
- (void)connectWithReplyHandler:(void *)reply;
@end

@implementation GCVirtualController

+ (GCVirtualController)virtualControllerWithConfiguration:(GCVirtualControllerConfiguration *)configuration
{
  v3 = configuration;
  v4 = [[GCVirtualController alloc] initWithConfiguration:v3];

  return v4;
}

- (GCVirtualController)initWithConfiguration:(GCVirtualControllerConfiguration *)configuration
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = configuration;
  v13.receiver = self;
  v13.super_class = GCVirtualController;
  v5 = [(GCVirtualController *)&v13 init];
  v6 = VirtualControllerBundle();
  v7 = v6;
  if (!v6)
  {
    [(GCVirtualController *)v17 initWithConfiguration:v18, v5, &v14];
LABEL_7:
    impl = v14;
    goto LABEL_4;
  }

  v8 = [v6 classNamed:@"_GCVirtualControllerImpl"];
  if (!v8)
  {
    [(GCVirtualController *)&v15 initWithConfiguration:v5, &v14];
    goto LABEL_7;
  }

  v9 = [[v8 alloc] initWithConfiguration:v4];
  impl = v5->_impl;
  v5->_impl = v9;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)connectWithReplyHandler:(void *)reply
{
  v4 = reply;
  if (self->_error)
  {
    if (v4)
    {
      v4 = v4[2](v4);
    }
  }

  else
  {
    v4 = [(_GCVirtualControllerImpl *)self->_impl connectWithReplyHandler:v4];
  }

  MEMORY[0x1EEE66BE0](v4);
}

- (void)initWithConfiguration:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E696ABC0];
  *a1 = *MEMORY[0x1E696A578];
  *a2 = @"Virtual game controller initialization failed.";
  a1[1] = *MEMORY[0x1E696A588];
  a2[1] = @"Failed to load implementation from the VirtualGameController helper bundle.";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:2];
  *a4 = v7;
  v8 = [(NSError *)v6 gc_VirtualControllerError:v7 userInfo:?];
  v9 = *(a3 + 16);
  *(a3 + 16) = v8;
}

- (void)initWithConfiguration:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E696ABC0];
  *a1 = *MEMORY[0x1E696A578];
  *a2 = @"Virtual game controller initialization failed.";
  a1[1] = *MEMORY[0x1E696A588];
  a2[1] = @"Failed to load the VirtualGameController helper bundle.";
  a1[2] = *MEMORY[0x1E696A598];
  a2[2] = @"Check the system log for more information.";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:3];
  *a4 = v7;
  v8 = [(NSError *)v6 gc_VirtualControllerError:v7 userInfo:?];
  v9 = *(a3 + 16);
  *(a3 + 16) = v8;
}

@end