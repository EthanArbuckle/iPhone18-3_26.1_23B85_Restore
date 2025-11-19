@interface LSApplicationRecordEnumerator
@end

@implementation LSApplicationRecordEnumerator

void __60___LSApplicationRecordEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (*(a3 + 168) == *(v3 + 136))
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((v3 + 112), &v4);
  }
}

void __60___LSApplicationRecordEnumerator__prepareWithContext_error___block_invoke_2(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((*(a1 + 32) + 112), &v2);
  }
}

uint64_t __96___LSApplicationRecordEnumerator_Private___applicationRecordWithContext_bundleIdentifierOrUnit___block_invoke(uint64_t a1, int a2, LaunchServices::AppRecordEnumeration *this, LSContext *a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 96))
  {
    v9 = std::__throw_bad_variant_access[abi:nn200100]();
    return LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(v9);
  }

  else
  {
    v7 = *(v5 + 104);

    return LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(this, a4, v7, a4);
  }
}

@end