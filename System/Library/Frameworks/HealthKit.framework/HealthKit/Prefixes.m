@interface Prefixes
@end

@implementation Prefixes

void ___Prefixes_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _Prefixes_prefixes;
  _Prefixes_prefixes = v0;

  v2 = 14;
  v3 = &qword_1E7382BB0;
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    v3 += 2;
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [_Prefixes_prefixes setObject:v7 forKeyedSubscript:v6];

    --v2;
  }

  while (v2);
}

@end