@interface LSPlistDataGetValuesForKeys
@end

@implementation LSPlistDataGetValuesForKeys

void ___LSPlistDataGetValuesForKeys_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 40) == 1)
  {
    v8 = v5;
    v7 = _LSPlistCompactString(v5, 0);

    v6 = v7;
  }

  v9 = v6;
  [(_LSPlistHint *)*(a1 + 32) setCachedValue:a3 forKey:v6];
}

@end