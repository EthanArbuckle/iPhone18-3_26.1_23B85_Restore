@interface CIRenderInfo
+ (CIRenderInfo)renderInfoWithCompletedTask:(id)a3;
- (CIRenderInfo)init;
- (CIRenderInfo)initWithCompletedTask:(id)a3;
- (id)_pdfDataRepresentation;
- (id)description;
- (void)dealloc;
@end

@implementation CIRenderInfo

- (CIRenderInfo)init
{
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderInfo *)v3 init:v4];
  }

  return 0;
}

- (CIRenderInfo)initWithCompletedTask:(id)a3
{
  v7.receiver = self;
  v7.super_class = CIRenderInfo;
  v4 = [(CIRenderInfo *)&v7 init];
  if (v4)
  {
    v5 = [a3 internalRepresentation];
    if (v5)
    {
      v5 = CI::Object::ref(v5);
    }

    v4->_priv = v5;
  }

  return v4;
}

+ (CIRenderInfo)renderInfoWithCompletedTask:(id)a3
{
  v3 = [[CIRenderInfo alloc] initWithCompletedTask:a3];

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
  v4.super_class = CIRenderInfo;
  [(CIRenderInfo *)&v4 dealloc];
}

- (id)description
{
  priv = self->_priv;
  if (priv)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> {\n  passCount: %ld \n  pixelsProcessed: %ld \n", objc_msgSend(objc_opt_class(), "description"), self, *(priv + 25), *(priv + 26)];
    v4 = *(priv + 21);
    if (v4 > 0.0)
    {
      v3 = [v3 stringByAppendingFormat:@"  kernelExecutionTime: %.3fms \n", v4 * 1000.0];
    }

    v5 = *(priv + 23);
    if (v5 > 0.0)
    {
      v3 = [v3 stringByAppendingFormat:@"  compileWaitTime: %.3fms \n", v5 * 1000.0];
    }

    v6 = *(priv + 22);
    if (v6 > 0.0)
    {
      v3 = [v3 stringByAppendingFormat:@"  compileTime: %.3fms \n", v6 * 1000.0];
    }

    return [v3 stringByAppendingString:@"}\n"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CIRenderInfo;
    return [(CIRenderInfo *)&v8 description];
  }
}

- (id)_pdfDataRepresentation
{
  v2 = CI::RenderTask::quicklookDataForRenderInfo(self->_priv);

  return v2;
}

@end