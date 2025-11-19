id JSONDictionaryFromCGSize(double a1, double a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"width";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v8[1] = @"height";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

double CGSizeFromJSONDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"width"];
  v3 = [v1 objectForKeyedSubscript:@"height"];

  [v2 doubleValue];
  v5 = v4;
  [v3 doubleValue];

  return v5;
}

id JSONDictionaryFromCGPoint(double a1, double a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"x";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v8[1] = @"y";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

double CGPointFromJSONDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"x"];
  v3 = [v1 objectForKeyedSubscript:@"y"];

  [v2 doubleValue];
  v5 = v4;
  [v3 doubleValue];

  return v5;
}

void sub_23AAE7034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64((&a11 + i));
  }

  _Unwind_Resume(a1);
}

void __destructor_8_s0_s48_s56_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

uint64_t tc_isInternalBuild()
{
  if (tc_isInternalBuild_onceToken != -1)
  {
    tc_isInternalBuild_cold_1();
  }

  return tc_isInternalBuild_isInternalBuild;
}

uint64_t __tc_isInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  tc_isInternalBuild_isInternalBuild = result;
  return result;
}

id getTCLogger()
{
  if (getTCLogger_onceToken != -1)
  {
    getTCLogger_cold_1();
  }

  v1 = tcLogger;

  return v1;
}

uint64_t __getTCLogger_block_invoke()
{
  tcLogger = os_log_create("com.apple.TouchController", "default");

  return MEMORY[0x2821F96F8]();
}

__n128 matrix_make_rows(double a1, double a2, double a3, double a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15, unsigned int a16)
{
  result.n128_f32[1] = a5;
  result.n128_u64[1] = __PAIR64__(a16, a14);
  return result;
}