@interface LSEnumerateAllClaimedTypesOrSchemesForBundleID
@end

@implementation LSEnumerateAllClaimedTypesOrSchemesForBundleID

void ___LSEnumerateAllClaimedTypesOrSchemesForBundleID_block_invoke(uint64_t a1)
{
  v2 = _LSClaimGet(**(a1 + 40));
  if (v2)
  {
    v3 = v2;
    if ((*(a1 + 48) & *(v2 + 14)) != 0)
    {
      if (*(v2 + 68))
      {
        if (*(a1 + 52) != 1)
        {
          goto LABEL_6;
        }

        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = ___LSEnumerateAllClaimedTypesOrSchemesForBundleID_block_invoke_2;
        v9[3] = &unk_1E6A1B1D8;
        v4 = *(a1 + 40);
        v10 = *(a1 + 32);
        v11 = v3;
        _LSEnumerateClaimedTypes(v4, v3, v9);

        if ((*(a1 + 52) & 1) == 0)
        {
LABEL_6:
          v6[0] = MEMORY[0x1E69E9820];
          v6[1] = 3221225472;
          v6[2] = ___LSEnumerateAllClaimedTypesOrSchemesForBundleID_block_invoke_3;
          v6[3] = &unk_1E6A1B1D8;
          v5 = *(a1 + 40);
          v7 = *(a1 + 32);
          v8 = v3;
          _LSEnumerateClaimedSchemes(v5, v3, v6);
        }
      }
    }
  }
}

@end