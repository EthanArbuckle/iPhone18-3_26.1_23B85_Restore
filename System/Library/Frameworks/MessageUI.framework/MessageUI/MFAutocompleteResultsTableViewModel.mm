@interface MFAutocompleteResultsTableViewModel
@end

@implementation MFAutocompleteResultsTableViewModel

uint64_t __64___MFAutocompleteResultsTableViewModel_numberOfNonEmptySections__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void __58___MFAutocompleteResultsTableViewModel_enumerateSections___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v7 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 unsignedIntegerValue], v7, a4);
}

@end