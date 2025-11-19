@interface CNTCC
+ (id)sharedInstance;
- (int)accessPreflight;
@end

@implementation CNTCC

+ (id)sharedInstance
{
  if (sharedInstance_cn_once_token_0 != -1)
  {
    +[CNTCC sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_0;

  return v3;
}

uint64_t __23__CNTCC_sharedInstance__block_invoke()
{
  sharedInstance_cn_once_object_0 = objc_alloc_init(CNTCC);

  return MEMORY[0x1EEE66BB8]();
}

- (int)accessPreflight
{
  if (accessPreflight_cn_once_token_1 != -1)
  {
    [CNTCC accessPreflight];
  }

  v3 = accessPreflight_cn_once_object_1;
  v4 = [(CNTCC *)self tccServices];
  v5 = [v4 checkAuthorizationStatusOfCurrentProcess];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v7 = [v3 objectForKeyedSubscript:v6];

  LODWORD(v3) = [v7 integerValue];
  return v3;
}

void __24__CNTCC_accessPreflight__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F0986FE8;
  v3[1] = &unk_1F0987018;
  v4[0] = &unk_1F0987000;
  v4[1] = &unk_1F0987030;
  v3[2] = &unk_1F0987048;
  v3[3] = &unk_1F0987078;
  v4[2] = &unk_1F0987060;
  v4[3] = &unk_1F0987060;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = [v0 copy];
  v2 = accessPreflight_cn_once_object_1;
  accessPreflight_cn_once_object_1 = v1;
}

id __20__CNTCC_tccServices__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = [MEMORY[0x1E6996850] defaultTCC];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  return v2;
}

@end