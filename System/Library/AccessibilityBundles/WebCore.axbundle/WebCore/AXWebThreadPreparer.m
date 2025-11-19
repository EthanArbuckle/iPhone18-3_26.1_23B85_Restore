@interface AXWebThreadPreparer
+ (id)sharedPreparer;
- (AXWebThreadPreparer)init;
@end

@implementation AXWebThreadPreparer

+ (id)sharedPreparer
{
  if (sharedPreparer_onceToken != -1)
  {
    +[AXWebThreadPreparer sharedPreparer];
  }

  v3 = WebThreadPreparer;

  return v3;
}

uint64_t __37__AXWebThreadPreparer_sharedPreparer__block_invoke()
{
  WebThreadPreparer = objc_alloc_init(AXWebThreadPreparer);

  return MEMORY[0x2A1C71028]();
}

- (AXWebThreadPreparer)init
{
  v7.receiver = self;
  v7.super_class = AXWebThreadPreparer;
  v2 = [(AXWebThreadPreparer *)&v7 init];
  if (v2)
  {
    v3 = CFRunLoopObserverCreate(*MEMORY[0x29EDB8ED8], 0xA0uLL, 1u, 2500001, _runLoopExitObserver, 0);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(Current, v3, *MEMORY[0x29EDB8FB8]);
    CFRelease(v3);
    v5 = v2;
  }

  return v2;
}

@end