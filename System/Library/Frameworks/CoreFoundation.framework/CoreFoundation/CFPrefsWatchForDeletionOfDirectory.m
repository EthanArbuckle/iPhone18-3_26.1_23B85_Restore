@interface CFPrefsWatchForDeletionOfDirectory
@end

@implementation CFPrefsWatchForDeletionOfDirectory

dispatch_queue_t ___CFPrefsWatchForDeletionOfDirectory_block_invoke()
{
  watchedDirs = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  dirWatcherTargets = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  global_queue = dispatch_get_global_queue(-2, 0);
  result = dispatch_queue_create_with_target_V2("CFPreferences FSEvents Queue", 0, global_queue);
  fseventsQueue = result;
  return result;
}

@end