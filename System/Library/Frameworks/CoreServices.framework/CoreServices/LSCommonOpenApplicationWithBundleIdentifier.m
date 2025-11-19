@interface LSCommonOpenApplicationWithBundleIdentifier
@end

@implementation LSCommonOpenApplicationWithBundleIdentifier

uint64_t ___LSCommonOpenApplicationWithBundleIdentifier_block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t ___LSCommonOpenApplicationWithBundleIdentifier_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end