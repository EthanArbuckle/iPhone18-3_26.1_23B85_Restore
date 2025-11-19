@interface NSDateComponents
@end

@implementation NSDateComponents

void __55__NSDateComponents_ABSimplePropertyCell__displayString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = fullFormatter_44305;
  fullFormatter_44305 = v0;

  [fullFormatter_44305 setTimeStyle:0];
  [fullFormatter_44305 setDateStyle:3];
  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [fullFormatter_44305 setTimeZone:v2];

  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = yearlessFormatter_44304;
  yearlessFormatter_44304 = v3;

  [yearlessFormatter_44304 setTimeStyle:0];
  [yearlessFormatter_44304 setDateStyle:3];
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [yearlessFormatter_44304 setTimeZone:v5];
}

@end