@interface NSIndexSet(HKDayIndex)
+ (uint64_t)hk_indexSetWithDayIndexRange:()HKDayIndex;
- (void)hk_enumerateDayIndexRangesUsingBlock:()HKDayIndex;
- (void)hk_enumerateDayIndexRangesWithOptions:()HKDayIndex usingBlock:;
@end

@implementation NSIndexSet(HKDayIndex)

+ (uint64_t)hk_indexSetWithDayIndexRange:()HKDayIndex
{
  if (a3 < 0)
  {
    +[NSIndexSet(HKDayIndex) hk_indexSetWithDayIndexRange:];
  }

  return [self indexSetWithIndexesInRange:{a3, a4}];
}

- (void)hk_enumerateDayIndexRangesUsingBlock:()HKDayIndex
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__NSIndexSet_HKDayIndex__hk_enumerateDayIndexRangesUsingBlock___block_invoke;
  v6[3] = &unk_1E7379990;
  v7 = v4;
  v5 = v4;
  [self enumerateRangesUsingBlock:v6];
}

- (void)hk_enumerateDayIndexRangesWithOptions:()HKDayIndex usingBlock:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__NSIndexSet_HKDayIndex__hk_enumerateDayIndexRangesWithOptions_usingBlock___block_invoke;
  v8[3] = &unk_1E7379990;
  v9 = v6;
  v7 = v6;
  [self enumerateRangesWithOptions:a3 usingBlock:v8];
}

+ (void)hk_indexSetWithDayIndexRange:()HKDayIndex .cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSRange NSRangeFromHKDayIndexRange(HKDayIndexRange)"];
  [v1 handleFailureInFunction:v0 file:@"HKDayIndexRange.h" lineNumber:46 description:@"Cannot convert day index ranges less than 0 to NSRange"];
}

@end