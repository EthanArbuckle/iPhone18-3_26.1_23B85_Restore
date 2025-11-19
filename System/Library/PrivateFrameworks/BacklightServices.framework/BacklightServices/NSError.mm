@interface NSError
@end

@implementation NSError

uint64_t __47__NSError_BacklightServices__bls_loggingString__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__NSError_BacklightServices__bls_loggingString__block_invoke_2;
  v3[3] = &unk_278428638;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 appendCustomFormatWithName:0 block:v3];
}

void __47__NSError_BacklightServices__bls_loggingString__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 localizedFailureReason];
  v6 = *(a1 + 32);
  v12 = v5;
  if (v5)
  {
    v7 = [v6 code];
    v8 = [*(a1 + 32) domain];
    v9 = [*(a1 + 32) localizedDescription];
    [v4 appendFormat:@"%@ (%ld:%@) %@", v12, v7, v8, v9];
  }

  else
  {
    v8 = [v6 localizedDescription];
    v10 = [*(a1 + 32) code];
    v9 = [*(a1 + 32) domain];
    [v4 appendFormat:@"%@ (%ld:%@)", v8, v10, v9, v11];
  }
}

void __47__NSError_BacklightServices__bls_loggingString__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 bls_shortLoggingString];
  v3 = [v2 appendObject:v4 withName:0];
}

void __52__NSError_BacklightServices__bls_shortLoggingString__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 localizedFailureReason];
  v9 = v5;
  if (!v5)
  {
    v5 = [*(a1 + 32) localizedDescription];
  }

  v6 = [*(a1 + 32) code];
  v7 = [*(a1 + 32) domain];
  [v4 appendFormat:@"%@(%ld:%@)", v5, v6, v7];

  v8 = v9;
  if (!v9)
  {

    v8 = 0;
  }
}

@end