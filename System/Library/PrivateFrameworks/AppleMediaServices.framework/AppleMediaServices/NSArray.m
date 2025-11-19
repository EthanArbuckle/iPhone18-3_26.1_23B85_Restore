@interface NSArray
@end

@implementation NSArray

id __59__NSArray_AppleMediaServices__ams_sanitizedForSecureCoding__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 ams_sanitizedForSecureCoding];
LABEL_8:
    v4 = v3;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_opt_class() supportsSecureCoding])
  {
    v3 = v2;
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 description];
    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

uint64_t __55__NSArray_AppleMediaServices__ams_allWithOptions_test___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t __55__NSArray_AppleMediaServices__ams_anyWithOptions_test___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __72__NSArray_AppleMediaServices__ams_enumerateObjectsForArrays_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__NSArray_AppleMediaServices__ams_enumerateObjectsForArrays_usingBlock___block_invoke_2;
  v7[3] = &unk_1E73BE138;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a4;
  [a2 enumerateObjectsUsingBlock:v7];
}

uint64_t __72__NSArray_AppleMediaServices__ams_enumerateObjectsForArrays_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = 0;
  result = (*(*(a1 + 32) + 16))();
  v7 = v8;
  **(a1 + 48) = v8;
  *a4 = v7;
  return result;
}

id __68__NSArray_AppleMediaServices__ams_invertedDictionaryUsingTransform___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You cannot return nil from the block." userInfo:0];
    objc_exception_throw(v7);
  }

  v5 = v4;

  return v5;
}

uint64_t __68__NSArray_AppleMediaServices__ams_nonEmptyComponentsJoinedByString___block_invoke(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFB0] null];

  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) == 0 || [v1 length] != 0;

  return (v2 != v1) & v3;
}

@end