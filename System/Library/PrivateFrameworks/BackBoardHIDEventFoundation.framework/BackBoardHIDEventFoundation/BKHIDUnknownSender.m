@interface BKHIDUnknownSender
+ (id)unknownSenderInfo;
- (BKHIDUnknownSender)init;
@end

@implementation BKHIDUnknownSender

- (BKHIDUnknownSender)init
{
  v6.receiver = self;
  v6.super_class = BKHIDUnknownSender;
  v2 = [(BKHIDUnknownSender *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CF06D0] wildcard];
    senderDescriptor = v2->_senderDescriptor;
    v2->_senderDescriptor = v3;
  }

  return v2;
}

+ (id)unknownSenderInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BKHIDUnknownSender_unknownSenderInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (unknownSenderInfo_onceToken != -1)
  {
    dispatch_once(&unknownSenderInfo_onceToken, block);
  }

  v2 = unknownSenderInfo_unknownSender;

  return v2;
}

uint64_t __39__BKHIDUnknownSender_unknownSenderInfo__block_invoke(uint64_t a1)
{
  unknownSenderInfo_unknownSender = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end