@interface AVOutputContextFactory
+ (id)sharedInstance;
- (AVOutputContextFactory)init;
- (id)outputContextForContextID:(id)a3;
- (void)dealloc;
- (void)setOutputContext:(id)a3 forContextID:(id)a4;
@end

@implementation AVOutputContextFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AVOutputContextFactory sharedInstance];
  }

  return sharedInstance_sharedFactory;
}

AVOutputContextFactory *__40__AVOutputContextFactory_sharedInstance__block_invoke()
{
  result = objc_alloc_init(AVOutputContextFactory);
  sharedInstance_sharedFactory = result;
  return result;
}

- (AVOutputContextFactory)init
{
  v4.receiver = self;
  v4.super_class = AVOutputContextFactory;
  v2 = [(AVOutputContextFactory *)&v4 init];
  if (v2)
  {
    v2->_weakContextLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_weakContexts = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
  }

  return v2;
}

- (void)dealloc
{
  self->_weakContextLock = 0;

  self->_weakContexts = 0;
  v3.receiver = self;
  v3.super_class = AVOutputContextFactory;
  [(AVOutputContextFactory *)&v3 dealloc];
}

- (id)outputContextForContextID:(id)a3
{
  [(NSLock *)self->_weakContextLock lock];
  if (a3)
  {
    a3 = [(NSMapTable *)self->_weakContexts objectForKey:a3];
  }

  [(NSLock *)self->_weakContextLock unlock];
  return a3;
}

- (void)setOutputContext:(id)a3 forContextID:(id)a4
{
  [(NSLock *)self->_weakContextLock lock];
  if (a3 && a4)
  {
    [(NSMapTable *)self->_weakContexts setObject:a3 forKey:a4];
  }

  weakContextLock = self->_weakContextLock;

  [(NSLock *)weakContextLock unlock];
}

@end