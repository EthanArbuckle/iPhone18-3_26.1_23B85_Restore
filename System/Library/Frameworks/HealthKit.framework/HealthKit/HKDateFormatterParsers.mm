@interface HKDateFormatterParsers
@end

@implementation HKDateFormatterParsers

void ___HKDateFormatterParsers_block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = _HKDateFormatterFromPattern(@"yyyyMMddHHmmssZZZZZ");
  v7[0] = v0;
  v1 = _HKDateFormatterFromPattern(@"yyyyMMddHHmmss");
  v7[1] = v1;
  v2 = _HKDateFormatterFromPattern(@"yyyyMMddHHmm");
  v7[2] = v2;
  v3 = _HKDateFormatterFromPattern(@"yyyyMMdd");
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v5 = _HKDateFormatterParsers__formatters;
  _HKDateFormatterParsers__formatters = v4;

  v6 = *MEMORY[0x1E69E9840];
}

@end