@interface HKConceptIndexableComparisonFilter
@end

@implementation HKConceptIndexableComparisonFilter

uint64_t __64___HKConceptIndexableComparisonFilter_supportsKeyPath_forTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dataObjectClass];
  v4 = *(a1 + 32);

  return _ClassSupportsConceptIndexableKeyPath(v3, v4);
}

@end