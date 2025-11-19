@interface NSJSONReader
@end

@implementation NSJSONReader

uint64_t __51___NSJSONReader_validForJSON_depth_allowFragments___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_5;
  }

  result = [_NSJSONReader validForJSON:a3 depth:*(a1 + 40) + 1 allowFragments:1];
  *(*(*(a1 + 32) + 8) + 24) = result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
LABEL_5:
    *a4 = 1;
  }

  return result;
}

BOOL __51___NSJSONReader_validForJSON_depth_allowFragments___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [_NSJSONReader validForJSON:a2 depth:*(a1 + 40) + 1 allowFragments:1];
  *(*(*(a1 + 32) + 8) + 24) = result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

@end