@interface SanitizedBoolCompletion
@end

@implementation SanitizedBoolCompletion

void ___SanitizedBoolCompletion_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _SanitizedError(a4);
  (*(v6 + 16))(v6, a2, a3, v7);
}

@end