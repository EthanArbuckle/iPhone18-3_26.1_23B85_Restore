@interface ATXScoreInterpreter
@end

@implementation ATXScoreInterpreter

void __43___ATXScoreInterpreter__compileToBytecode___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;

  *a4 = 1;
}

id __43___ATXScoreInterpreter__compileToBytecode___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) mutableCopy];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 32) + 8) + 40));
    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v2;
}

void __41___ATXScoreInterpreter__compileBytecode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(_ATXScoreInterpreter *)*(a1 + 32) _compileToBytecode:v5];
  v8 = [v7 copy];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];

  objc_autoreleasePoolPop(v6);
}

@end