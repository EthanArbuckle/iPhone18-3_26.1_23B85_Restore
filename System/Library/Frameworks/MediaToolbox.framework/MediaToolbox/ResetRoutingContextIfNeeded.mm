@interface ResetRoutingContextIfNeeded
@end

@implementation ResetRoutingContextIfNeeded

void __airplayRoute_ResetRoutingContextIfNeeded_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    airplayRoute_resetRoutingContextIfNeededInternal(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end