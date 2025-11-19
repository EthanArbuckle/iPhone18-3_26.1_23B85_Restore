@interface SKSoundContext
+ (id)context;
+ (id)currentContext;
- (CGPoint)listenerPosition;
- (SKSoundContext)init;
- (double)gain;
- (void)dealloc;
- (void)setGain:(double)a3;
- (void)setListenerPosition:(CGPoint)a3;
- (void)setSuspended:(BOOL)a3;
@end

@implementation SKSoundContext

+ (id)context
{
  v2 = objc_alloc_init(SKSoundContext);

  return v2;
}

+ (id)currentContext
{
  if (onceToken != -1)
  {
    +[SKSoundContext currentContext];
  }

  CurrentContext = alcGetCurrentContext();
  v3 = _contexts;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CurrentContext];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 nonretainedObjectValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __32__SKSoundContext_currentContext__block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:v3];
  v2 = _contexts;
  _contexts = v1;
}

- (SKSoundContext)init
{
  v9.receiver = self;
  v9.super_class = SKSoundContext;
  v2 = [(SKSoundContext *)&v9 init];
  if (v2)
  {
    if (onceToken != -1)
    {
      [SKSoundContext init];
    }

    if ([_contexts count])
    {
      device = v2->_device;
    }

    else
    {
      device = alcOpenDevice(0);
      v2->_device = device;
    }

    Context = alcCreateContext(device, 0);
    v2->_context = Context;
    if (Context)
    {
      v5 = _contexts;
      v6 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v2];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v2->_context)];
      [v5 setObject:v6 forKey:v7];
    }

    else
    {
      v6 = v2;
      v2 = 0;
    }
  }

  return v2;
}

void __22__SKSoundContext_init__block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:v3];
  v2 = _contexts;
  _contexts = v1;
}

- (void)setSuspended:(BOOL)a3
{
  if (self->_suspended != a3)
  {
    self->_suspended = a3;
    context = self->_context;
    if (a3)
    {
      alcSuspendContext(context);

      alcMakeContextCurrent(0);
    }

    else
    {
      alcMakeContextCurrent(context);
      v5 = self->_context;

      alcProcessContext(v5);
    }
  }
}

- (CGPoint)listenerPosition
{
  if (self->_context)
  {
    value1 = 0.0;
    value3 = 0.0;
    value2 = 0.0;
    alGetListener3f(4100, &value1, &value2, &value3);
    v2 = value1;
    v3 = value2;
  }

  else
  {
    v2 = *MEMORY[0x277CBF348];
    v3 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setListenerPosition:(CGPoint)a3
{
  if (self->_context)
  {
    x = a3.x;
    y = a3.y;
    alListener3f(4100, x, y, 0.0);
  }
}

- (double)gain
{
  if (!self->_context)
  {
    return 0.0;
  }

  value = 0.0;
  alGetListenerf(4106, &value);
  return value;
}

- (void)setGain:(double)a3
{
  if (self->_context)
  {
    v3 = a3;
    alListenerf(4106, v3);
  }
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    v4 = _contexts;
    if (_contexts)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      [v4 removeObjectForKey:v5];

      context = self->_context;
    }

    alcDestroyContext(context);
    self->_context = 0;
  }

  if (!_contexts || ![_contexts count])
  {
    device = self->_device;
    if (device)
    {
      alcCloseDevice(device);
      self->_device = 0;
    }
  }

  v7.receiver = self;
  v7.super_class = SKSoundContext;
  [(SKSoundContext *)&v7 dealloc];
}

@end