@interface MusicStringContainsCJKScripts
@end

@implementation MusicStringContainsCJKScripts

void __MusicStringContainsCJKScripts_block_invoke(id a1)
{
  HIDWORD(v3) = 0;
  v1 = [@"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]" length];
  if ([@"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]" _fastCharacterContents])
  {
    MusicStringContainsCJKScripts_sNonCJKCharacterSet = uset_openPattern();
  }

  else
  {
    __chkstk_darwin(0);
    [@"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]" getCharacters:&v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v1}];
    MusicStringContainsCJKScripts_sNonCJKCharacterSet = uset_openPattern();
  }

  if (SHIDWORD(v3) >= 1)
  {
    NSLog(@"Couldn’t create USet from pattern %@", @"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]");
    MusicStringContainsCJKScripts_sNonCJKCharacterSet = 0;
  }
}

@end