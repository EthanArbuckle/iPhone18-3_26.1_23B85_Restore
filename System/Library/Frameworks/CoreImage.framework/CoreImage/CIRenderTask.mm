@interface CIRenderTask
+ (CIRenderTask)rendertaskWithInternalTask:(void *)task;
- (CIRenderInfo)waitUntilCompletedAndReturnError:(NSError *)error;
- (CIRenderTask)init;
- (CIRenderTask)initWithInternalTask:(void *)task;
- (id)_pdfDataRepresentation;
- (void)dealloc;
@end

@implementation CIRenderTask

- (CIRenderTask)init
{
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderTask *)v3 init:v4];
  }

  return 0;
}

- (CIRenderTask)initWithInternalTask:(void *)task
{
  v6.receiver = self;
  v6.super_class = CIRenderTask;
  v4 = [(CIRenderTask *)&v6 init];
  if (v4)
  {
    v4->_priv = CI::Object::ref(task);
  }

  return v4;
}

+ (CIRenderTask)rendertaskWithInternalTask:(void *)task
{
  v3 = [[self alloc] initWithInternalTask:task];

  return v3;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    CI::Object::unref(priv);
    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIRenderTask;
  [(CIRenderTask *)&v4 dealloc];
}

- (CIRenderInfo)waitUntilCompletedAndReturnError:(NSError *)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv[16])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIRenderTaskWaitUntilCompleted" code:1 userInfo:&unk_1F1082618];
    }

    v5 = ci_logger_api();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderTask *)v5 waitUntilCompletedAndReturnError:v6, v7, v8, v9, v10, v11, v12];
    }

    return 0;
  }

  v14 = (*(*priv[3] + 280))(priv[3], a2);
  v15 = CI::RenderTask::waitUntilCompleted(priv, v14);
  if (v15)
  {
    v16 = v15;
    if (error)
    {
      v17 = *MEMORY[0x1E696AA08];
      v20[0] = @"CINonLocalizedDescriptionKey";
      v20[1] = v17;
      v21[0] = @"Unexpected error in the backing renderer.";
      v21[1] = v15;
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIRenderTaskWaitUntilCompleted" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v21, v20, 2)}];
    }

    v18 = ci_logger_api();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CIRenderTask waitUntilCompletedAndReturnError:v16];
    }

    return 0;
  }

  return [CIRenderInfo renderInfoWithCompletedTask:self];
}

- (id)_pdfDataRepresentation
{
  v2 = CI::RenderTask::quicklookDataForRenderTask(self->_priv);

  return v2;
}

@end