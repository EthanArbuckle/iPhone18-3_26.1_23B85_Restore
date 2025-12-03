@interface GPUDrainOperation
- (GPUDrainOperation)initWithIterationDelay:(id)delay;
- (void)acquireGPUAssertion;
- (void)beginRender;
- (void)cancel;
- (void)main;
- (void)releaseGPUAssertion;
@end

@implementation GPUDrainOperation

- (void)acquireGPUAssertion
{
  v3 = +[RBSProcessIdentifier identifierForCurrentProcess];
  v4 = [RBSTarget targetWithProcessIdentifier:v3];
  v5 = [RBSDomainAttribute attributeWithDomain:@"com.apple.Diagnostics" name:@"GPUPerformance"];
  v6 = [RBSAssertion alloc];
  v15 = v5;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [v6 initWithExplanation:@"Battery Drain Tool is running with GPU drain enabled" target:v4 attributes:v7];

  v14 = 0;
  v9 = [v8 acquireWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Acquired GPUPerformance assertion.", v13, 2u);
    }

    [(GPUDrainOperation *)self setGpuAssertion:v8];
  }

  else
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000B93C();
    }
  }
}

- (void)releaseGPUAssertion
{
  gpuAssertion = [(GPUDrainOperation *)self gpuAssertion];

  if (gpuAssertion)
  {
    gpuAssertion2 = [(GPUDrainOperation *)self gpuAssertion];
    v10 = 0;
    v5 = [gpuAssertion2 invalidateWithError:&v10];
    v6 = v10;

    if (v5)
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Invalidated GPUPerformance assertion.", buf, 2u);
      }
    }

    else
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000B9B0();
      }
    }
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempted to release GPUPerformance assertion, but no assertion was set.", v8, 2u);
    }
  }
}

- (GPUDrainOperation)initWithIterationDelay:(id)delay
{
  delayCopy = delay;
  v9.receiver = self;
  v9.super_class = GPUDrainOperation;
  v6 = [(GPUDrainOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iterationDelay, delay);
  }

  return v7;
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = GPUDrainOperation;
  [(DrainOperation *)&v2 cancel];
}

- (void)beginRender
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {
    v4 = [Scene newInstancedCornellBoxSceneWithDevice:v3 useIntersectionFunctions:1];
    v5 = [[Renderer alloc] initWithDevice:v3 scene:v4 size:1365.0, 720.0];
    renderer = self->_renderer;
    self->_renderer = v5;

    if (self->_renderer)
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting metal rendering", v9, 2u);
      }

      while (1)
      {
        [(Renderer *)self->_renderer render];
        if ([(NSNumber *)self->_iterationDelay unsignedIntValue])
        {
          usleep(1000 * [(NSNumber *)self->_iterationDelay unsignedIntValue]);
        }

        if ([(DrainOperation *)self isFinished])
        {
          break;
        }

        [(DrainOperation *)self waitIfPaused];
      }
    }

    else
    {
      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000BA24();
      }
    }
  }

  else
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000BA64();
    }
  }
}

- (void)main
{
  [(GPUDrainOperation *)self acquireGPUAssertion];
  [(GPUDrainOperation *)self beginRender];

  [(GPUDrainOperation *)self releaseGPUAssertion];
}

@end