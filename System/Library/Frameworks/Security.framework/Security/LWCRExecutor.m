@interface LWCRExecutor
@end

@implementation LWCRExecutor

void __51__sec_LWCRExecutor_evaluateRequirements_withFacts___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    *a4 = *(v7 + 8);
    *(a4 + 16) = *(v7 + 3);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }
}

void __51__sec_LWCRExecutor_evaluateRequirements_withFacts___block_invoke_2(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
  v8 = [v5 valueForKey:v6];

  if (v8)
  {
    v7 = *(v8 + 24);
    *a4 = *(v8 + 8);
    *(a4 + 16) = v7;
    *(a4 + 32) = *(v8 + 5);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }
}

BOOL __51__sec_LWCRExecutor_evaluateRequirements_withFacts___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
  v5 = [v3 valueForKey:v4];
  v6 = v5 != 0;

  return v6;
}

@end