@interface EvaluateAndFireLWMTriggerCallback
@end

@implementation EvaluateAndFireLWMTriggerCallback

void __dq_EvaluateAndFireLWMTriggerCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end