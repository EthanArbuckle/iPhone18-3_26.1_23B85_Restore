@interface THNoAnimationLayerDelegate
+ (id)_singletonAlloc;
+ (id)sharedInstance;
@end

@implementation THNoAnimationLayerDelegate

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___THNoAnimationLayerDelegate;
  return objc_msgSendSuper2(&v3, "allocWithZone:", 0);
}

+ (id)sharedInstance
{
  result = qword_567898;
  if (!qword_567898)
  {
    objc_sync_enter(self);
    if (!qword_567898)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      qword_567898 = v4;
      if (!v4)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    objc_sync_exit(self);
    return qword_567898;
  }

  return result;
}

@end