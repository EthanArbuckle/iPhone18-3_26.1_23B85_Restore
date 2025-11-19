@interface NSDictionary
@end

@implementation NSDictionary

AMSPair *__53__NSDictionary_AppleMediaServices__hashedDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = AMSHashIfNeeded(v5);

  v8 = AMSHashIfNeeded(v4);

  v9 = [(AMSPair *)v6 initWithFirst:v7 second:v8];

  return v9;
}

uint64_t __64__NSDictionary_AppleMediaServices__ams_sanitizedForSecureCoding__block_invoke()
{
  v0 = objc_opt_class();

  return [v0 supportsSecureCoding];
}

AMSPair *__64__NSDictionary_AppleMediaServices__ams_sanitizedForSecureCoding__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [AMSPair alloc];
    v7 = [v5 ams_sanitizedForSecureCoding];
LABEL_8:
    v9 = v7;
    v8 = [(AMSPair *)v6 initWithFirst:v4 second:v7];

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_opt_class() supportsSecureCoding])
  {
    v8 = [[AMSPair alloc] initWithFirst:v4 second:v5];
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [AMSPair alloc];
    v7 = [v5 description];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

void __60__NSDictionary_AppleMediaServices__ams_arrayUsingTransform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:v2];
}

void __57__NSDictionary_AppleMediaServices__ams_compactMapValues___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void __56__NSDictionary_AppleMediaServices__ams_filterUsingTest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __66__NSDictionary_AppleMediaServices__ams_firstKeyObjectPassingTest___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v8 = [[AMSPair alloc] initWithFirst:v11 second:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __57__NSDictionary_AppleMediaServices__ams_mapWithTransform___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v6 = v2;
    v3 = [v2 second];
    v4 = *(a1 + 32);
    v5 = [v6 first];
    [v4 setObject:v3 forKeyedSubscript:v5];

    v2 = v6;
  }
}

uint64_t __89__NSDictionary_AppleMediaServices_Project__ams_keysForChangedValuesComparedToDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v4];

  LODWORD(v4) = [v5 isEqual:v6];
  return v4 ^ 1;
}

@end