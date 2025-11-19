@interface MKFirstPartyRatingFormatter
+ (id)stringFromCount:(unint64_t)a3;
@end

@implementation MKFirstPartyRatingFormatter

+ (id)stringFromCount:(unint64_t)a3
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 localeIdentifier];
  [v4 UTF8String];
  if (unum_open())
  {
    unum_setAttribute();
    unum_formatInt64();
    unum_close();
  }

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:0 length:strlen(0) encoding:4 freeWhenDone:1];

  return v5;
}

@end