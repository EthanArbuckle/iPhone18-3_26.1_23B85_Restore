@interface UTDynamicGetPedigree
@end

@implementation UTDynamicGetPedigree

void ___UTDynamicGetPedigree_block_invoke(uint64_t a1, __CFString *a2)
{
  if (_UTTypeIdentifierIsDynamic(a2))
  {
    Pedigree = _UTDynamicGetPedigree(*(a1 + 40), a2);
LABEL_5:
    v6 = Pedigree;
    goto LABEL_6;
  }

  v8 = 0;
  active = _UTGetActiveTypeForCFStringIdentifier(**(a1 + 40), a2, &v8);
  if (active)
  {
    Pedigree = _UTTypeGetPedigreeInternal(*(a1 + 40), v8, active);
    goto LABEL_5;
  }

  if (_UTTypeIdentifierIsValid(a2))
  {
    v7 = [(__CFString *)a2 copy];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v7 count:1];
  }

  else
  {
    v6 = 0;
  }

LABEL_6:
  if (v6)
  {
    [*(a1 + 32) unionSet:v6];
  }
}

@end