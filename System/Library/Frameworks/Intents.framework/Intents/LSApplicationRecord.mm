@interface LSApplicationRecord
@end

@implementation LSApplicationRecord

uint64_t __51__LSApplicationRecord_Intents__in_supportedIntents__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionPointRecord];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:@"com.apple.intents-service"];

  return v4;
}

@end