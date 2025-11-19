@interface LSRemotePlaceholderEnumerator
@end

@implementation LSRemotePlaceholderEnumerator

BOOL __87___LSRemotePlaceholderEnumerator__applicationRecordWithContext_bundleIdentifierOrUnit___block_invoke(uint64_t a1, uint64_t a2, LaunchServices::AppRecordEnumeration *a3, uint64_t a4)
{
  v7 = *(a4 + 168);
  if (v7 != [*(a1 + 32) bundleClass])
  {
    return 0;
  }

  v9 = *(a1 + 32);
  if (*(v9 + 96))
  {
    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    return [(_LSApplicationProxyEnumerator *)v12 _getObject:v13 atIndex:v14 context:v15, v16];
  }

  else
  {
    v10 = *(v9 + 104);

    return LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(a3, a4, v10, v8);
  }
}

@end