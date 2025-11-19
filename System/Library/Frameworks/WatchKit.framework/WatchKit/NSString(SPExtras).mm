@interface NSString(SPExtras)
- (uint64_t)_sp_stringByEncodingIllegalFilenameCharacters;
@end

@implementation NSString(SPExtras)

- (uint64_t)_sp_stringByEncodingIllegalFilenameCharacters
{
  if (_sp_stringByEncodingIllegalFilenameCharacters_onceToken != -1)
  {
    [NSString(SPExtras) _sp_stringByEncodingIllegalFilenameCharacters];
  }

  v2 = _sp_stringByEncodingIllegalFilenameCharacters_characterSetExcludingSlashAndPercent;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

@end