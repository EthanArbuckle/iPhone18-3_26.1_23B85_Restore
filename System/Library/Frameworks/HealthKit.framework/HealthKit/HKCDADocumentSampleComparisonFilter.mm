@interface HKCDADocumentSampleComparisonFilter
@end

@implementation HKCDADocumentSampleComparisonFilter

BOOL __71___HKCDADocumentSampleComparisonFilter_areValidTypes_forKeyPath_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 code];
  if (v5 != 107)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:3 format:{@"unexpected data type '%@' for CDA document filter", v4}];
  }

  return v5 == 107;
}

@end