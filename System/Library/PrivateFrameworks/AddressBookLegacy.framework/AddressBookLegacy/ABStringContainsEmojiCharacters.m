@interface ABStringContainsEmojiCharacters
@end

@implementation ABStringContainsEmojiCharacters

void ___ABStringContainsEmojiCharacters_block_invoke()
{
  __handle = 0;
  [ABDynamicLoader loadFrameworkAtPath:@"/System/Library/Frameworks/CoreText.framework/CoreText" andStoreHandle:&__handle bundle:0];
  v0 = dlsym(__handle, "CTFontCreateWithName");
  v1 = dlsym(__handle, "CTFontCopyCharacterSet");
  v2 = v0(@"AppleColorEmoji", 0, 0.0);
  if (v2)
  {
    v3 = v2;
    v4 = v1();
    v5 = [v4 mutableCopy];
    [v5 removeCharactersInRange:{0, 128}];

    CFRelease(v3);
    _ABStringContainsEmojiCharacters___emojiSet = v5;
  }
}

@end