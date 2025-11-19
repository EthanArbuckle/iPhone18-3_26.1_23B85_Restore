@interface MPStorePlatformDateFromString
@end

@implementation MPStorePlatformDateFromString

void ___MPStorePlatformDateFromString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MPStorePlatformDateFromString_storePlatformReleaseDateFormatter;
  _MPStorePlatformDateFromString_storePlatformReleaseDateFormatter = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [_MPStorePlatformDateFromString_storePlatformReleaseDateFormatter setLocale:v2];
  [_MPStorePlatformDateFromString_storePlatformReleaseDateFormatter setDateFormat:@"YYYY-MM-dd"];
}

@end