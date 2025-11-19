@interface NSString
@end

@implementation NSString

void __67__NSString_SPExtras___sp_stringByEncodingIllegalFilenameCharacters__block_invoke()
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/%"];
  v0 = [v2 invertedSet];
  v1 = _sp_stringByEncodingIllegalFilenameCharacters_characterSetExcludingSlashAndPercent;
  _sp_stringByEncodingIllegalFilenameCharacters_characterSetExcludingSlashAndPercent = v0;
}

@end