@interface BKRedirectHIDEvent
@end

@implementation BKRedirectHIDEvent

void ___BKRedirectHIDEvent_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDisplay:v3];
  [v4 setPid:*(a1 + 48)];
  [v4 setToken:*(a1 + 40)];
}

@end