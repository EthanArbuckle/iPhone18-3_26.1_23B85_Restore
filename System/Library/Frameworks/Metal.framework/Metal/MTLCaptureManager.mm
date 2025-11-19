@interface MTLCaptureManager
+ (MTLCaptureManager)sharedCaptureManager;
- (BOOL)startCaptureWithDescriptor:(MTLCaptureDescriptor *)descriptor error:(NSError *)error;
- (id)newCaptureScopeWithCommandQueue:(id)commandQueue;
- (id)newCaptureScopeWithDevice:(id)device;
- (id)newCaptureScopeWithMTL4CommandQueue:(id)a3;
- (void)dealloc;
- (void)startCaptureWithCommandQueue:(id)commandQueue;
- (void)startCaptureWithDevice:(id)device;
- (void)startCaptureWithScope:(id)captureScope;
@end

@implementation MTLCaptureManager

+ (MTLCaptureManager)sharedCaptureManager
{
  if (sharedCaptureManager_onceToken != -1)
  {
    +[MTLCaptureManager sharedCaptureManager];
  }

  return sharedCaptureManager_sharedCaptureManager;
}

id __41__MTLCaptureManager_sharedCaptureManager__block_invoke()
{
  result = objc_alloc_init(objc_opt_class());
  sharedCaptureManager_sharedCaptureManager = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCaptureManager;
  [(MTLCaptureManager *)&v3 dealloc];
}

- (id)newCaptureScopeWithDevice:(id)device
{
  v4 = [MTLCaptureScope alloc];

  return [(MTLCaptureScope *)v4 initWithDevice:device commandQueue:0];
}

- (id)newCaptureScopeWithCommandQueue:(id)commandQueue
{
  v4 = [MTLCaptureScope alloc];
  v5 = [commandQueue device];

  return [(MTLCaptureScope *)v4 initWithDevice:v5 commandQueue:commandQueue];
}

- (id)newCaptureScopeWithMTL4CommandQueue:(id)a3
{
  v4 = [MTLCaptureScope alloc];
  v5 = [a3 device];

  return [(MTLCaptureScope *)v4 initWithDevice:v5 mtl4CommandQueue:a3];
}

- (BOOL)startCaptureWithDescriptor:(MTLCaptureDescriptor *)descriptor error:(NSError *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithMTLCaptureErrorCode:1];
  }

  return 0;
}

- (void)startCaptureWithDevice:(id)device
{
  v5 = objc_alloc_init(MTLCaptureDescriptor);
  [(MTLCaptureDescriptor *)v5 setCaptureObject:device];
  [(MTLCaptureDescriptor *)v5 setDestination:1];
  [(MTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (void)startCaptureWithCommandQueue:(id)commandQueue
{
  v5 = objc_alloc_init(MTLCaptureDescriptor);
  [(MTLCaptureDescriptor *)v5 setCaptureObject:commandQueue];
  [(MTLCaptureDescriptor *)v5 setDestination:1];
  [(MTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (void)startCaptureWithScope:(id)captureScope
{
  v5 = objc_alloc_init(MTLCaptureDescriptor);
  [(MTLCaptureDescriptor *)v5 setCaptureObject:captureScope];
  [(MTLCaptureDescriptor *)v5 setDestination:1];
  [(MTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

@end