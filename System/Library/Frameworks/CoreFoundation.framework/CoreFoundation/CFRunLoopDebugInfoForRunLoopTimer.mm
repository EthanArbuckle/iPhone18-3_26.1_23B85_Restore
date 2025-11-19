@interface CFRunLoopDebugInfoForRunLoopTimer
@end

@implementation CFRunLoopDebugInfoForRunLoopTimer

void *____CFRunLoopDebugInfoForRunLoopTimer_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Foundation.framework/Foundation", 2);
  if (result)
  {
    v1 = result;
    __CFRunLoopDebugInfoForRunLoopTimer_foundationTimerFunc = dlsym(result, "__NSFireTimer");
    __CFRunLoopDebugInfoForRunLoopTimer_foundationDescribeTimerCalloutFunc = dlsym(v1, "__NSDescribeTimerCallout");
    __CFRunLoopDebugInfoForRunLoopTimer_foundationDelayedPerformFunc = dlsym(v1, "__NSFireDelayedPerform");
    __CFRunLoopDebugInfoForRunLoopTimer_foundationDescribeDelayedPerformFunc = dlsym(v1, "__NSDescribeDelayedPerformCallout");

    return dlclose(v1);
  }

  return result;
}

@end