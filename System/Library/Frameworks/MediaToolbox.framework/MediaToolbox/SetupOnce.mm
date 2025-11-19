@interface SetupOnce
@end

@implementation SetupOnce

void __sr_SetupOnce_block_invoke()
{
  qword_1EAF1A260 = dispatch_queue_create("streamingRestrictionsNotificationQueue", 0);
  _MergedGlobals_31 = FigSimpleMutexCreate();
  if (!qword_1EAF1A268)
  {
    FigGetAllocatorForPermanentAllocations();
    qword_1EAF1A268 = FigCreatePropertyListFromBundleIdentifier();
  }

  notify_register_dispatch(*MEMORY[0x1E69E98C0], &_MergedGlobals_8, qword_1EAF1A260, &__block_literal_global_21_1);

  sr_checkTokenLevelAndHandleIfNecessary();
}

@end