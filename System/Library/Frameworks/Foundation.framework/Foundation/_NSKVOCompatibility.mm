@interface _NSKVOCompatibility
+ (void)_noteProcessHasUsedKVOSwiftOverlay;
@end

@implementation _NSKVOCompatibility

+ (void)_noteProcessHasUsedKVOSwiftOverlay
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {

    [self _setRequiresSilencingExceptions:1];
  }
}

@end