@interface LSLocalQueryResolver
@end

@implementation LSLocalQueryResolver

void __61___LSLocalQueryResolver__resolveQueries_XPCConnection_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  if (v8)
  {
    [v7 addObject:v8];
  }

  else
  {
    *(v6 + 40) = 0;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

uint64_t __82___LSLocalQueryResolver__enumerateResolvedResultsOfQuery_XPCConnection_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  if ((*(*(v8 + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    v8 = *(a1 + 40);
  }

  if (!v5 && v6)
  {
    *(*(v8 + 8) + 24) = 1;
    v8 = *(a1 + 40);
  }

  v9 = *(*(v8 + 8) + 24);
  objc_autoreleasePoolPop(v7);

  return v9 ^ 1u;
}

@end