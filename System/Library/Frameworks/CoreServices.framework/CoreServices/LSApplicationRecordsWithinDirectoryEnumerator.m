@interface LSApplicationRecordsWithinDirectoryEnumerator
@end

@implementation LSApplicationRecordsWithinDirectoryEnumerator

void __76___LSApplicationRecordsWithinDirectoryEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 168) == 2)
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((*(a1 + 32) + 112), &v3);
  }
}

void __76___LSApplicationRecordsWithinDirectoryEnumerator__prepareWithContext_error___block_invoke_2(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((*(a1 + 32) + 112), &v2);
  }
}

void __77___LSApplicationRecordsWithinDirectoryEnumerator__getObject_atIndex_context___block_invoke(uint64_t a1, uint64_t a2, LaunchServices::AppRecordEnumeration *this, LSContext *a4)
{
  v4 = *(a1 + 32);
  if (*(v4 + 96))
  {
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    [(_LSApplicationRecordsWithinDirectoryEnumerator *)v10 .cxx_destruct];
  }

  else if (LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(this, a4, *(v4 + 136), a4))
  {
    v9 = *(a1 + 32);

    [v9 _preflightPathOfBundleWithContext:a2 bundleUnit:this bundleData:a4];
  }
}

@end