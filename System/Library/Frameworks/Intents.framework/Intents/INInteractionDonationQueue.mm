@interface INInteractionDonationQueue
@end

@implementation INInteractionDonationQueue

uint64_t ___INInteractionDonationQueue_block_invoke()
{
  _INInteractionDonationQueue_queue = dispatch_queue_create("com.apple.intents.interaction.donation", 0);

  return MEMORY[0x1EEE66BB8]();
}

@end