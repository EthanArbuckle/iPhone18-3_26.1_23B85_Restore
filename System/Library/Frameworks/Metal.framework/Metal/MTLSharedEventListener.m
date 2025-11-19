@interface MTLSharedEventListener
+ (MTLSharedEventListener)allocWithZone:(_NSZone *)a3;
+ (id)sharedListener;
- (MTLSharedEventListener)init;
@end

@implementation MTLSharedEventListener

- (MTLSharedEventListener)init
{
  v3.receiver = self;
  v3.super_class = MTLSharedEventListener;
  return [(MTLSharedEventListener *)&v3 init];
}

+ (MTLSharedEventListener)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLSharedEventListenerInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLSharedEventListener;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (id)sharedListener
{
  if (sharedListener_onceToken != -1)
  {
    +[MTLSharedEventListener sharedListener];
  }

  return sharedListener_sharedInstance;
}

uint64_t __40__MTLSharedEventListener_sharedListener__block_invoke()
{
  result = objc_opt_new();
  sharedListener_sharedInstance = result;
  return result;
}

@end