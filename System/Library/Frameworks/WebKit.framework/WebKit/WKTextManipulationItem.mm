@interface WKTextManipulationItem
@end

@implementation WKTextManipulationItem

uint64_t __82___WKTextManipulationItem_isEqualToTextManipulationItem_includingContentEquality___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToTextManipulationToken:objc_msgSend(objc_msgSend(*(a1 + 32) includingContentEquality:{"tokens"), "objectAtIndexedSubscript:", a3), *(a1 + 48)}];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t __57___WKTextManipulationItem__descriptionPreservingPrivacy___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v3 = [a2 description];
  }

  else
  {
    v3 = [a2 debugDescription];
  }

  v4 = v3;
  v5 = *(a1 + 32);

  return [v5 addObject:v4];
}

@end