@interface CLKRenderingContext
+ (id)sharedRenderingContext;
- (CLKDevice)device;
- (id)_init;
@end

@implementation CLKRenderingContext

+ (id)sharedRenderingContext
{
  if (sharedRenderingContext_onceToken != -1)
  {
    +[CLKRenderingContext sharedRenderingContext];
  }

  v3 = sharedRenderingContext_sharedRenderingContext;

  return v3;
}

uint64_t __45__CLKRenderingContext_sharedRenderingContext__block_invoke()
{
  sharedRenderingContext_sharedRenderingContext = [[CLKRenderingContext alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CLKRenderingContext;
  return [(CLKRenderingContext *)&v3 init];
}

- (CLKDevice)device
{
  device = self->_device;
  if (device)
  {
    v3 = device;
  }

  else
  {
    v3 = +[CLKDevice currentDevice];
  }

  return v3;
}

@end