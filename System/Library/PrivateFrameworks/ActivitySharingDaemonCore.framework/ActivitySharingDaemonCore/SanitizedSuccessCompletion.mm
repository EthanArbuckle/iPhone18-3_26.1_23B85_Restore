@interface SanitizedSuccessCompletion
@end

@implementation SanitizedSuccessCompletion

void ___SanitizedSuccessCompletion_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = _SanitizedError(a3);
  (*(v4 + 16))(v4, a2, v5);
}

@end