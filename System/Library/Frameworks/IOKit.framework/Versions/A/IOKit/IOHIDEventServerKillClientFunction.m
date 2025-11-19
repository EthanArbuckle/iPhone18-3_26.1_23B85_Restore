@interface IOHIDEventServerKillClientFunction
@end

@implementation IOHIDEventServerKillClientFunction

void ____IOHIDEventServerKillClientFunction_block_invoke(uint64_t a1)
{
  __IOHIDEventServerKillClient(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  CFRelease(v2);
}

@end