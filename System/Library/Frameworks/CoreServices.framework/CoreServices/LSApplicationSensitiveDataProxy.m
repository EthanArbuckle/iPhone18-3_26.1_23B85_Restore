@interface LSApplicationSensitiveDataProxy
@end

@implementation LSApplicationSensitiveDataProxy

uint64_t __42___LSApplicationSensitiveDataProxy_redact__block_invoke(uint64_t result)
{
  *(*(result + 32) + 32) = 1;
  *(*(result + 32) + 8) = 0;
  *(*(result + 32) + 16) = 0;
  *(*(result + 32) + 24) = 0;
  return result;
}

void __49___LSApplicationSensitiveDataProxy_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [[_LSApplicationSensitiveDataProxy alloc] initWithApplicationDSID:*(*(a1 + 32) + 8) downloaderDSID:*(*(a1 + 32) + 16) familyID:*(*(a1 + 32) + 24) isRedacted:*(*(a1 + 32) + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __52___LSApplicationSensitiveDataProxy_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeInt64:*(*(a1 + 40) + 8) forKey:@"applicationDSID"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 40) + 16) forKey:@"downloaderDSID"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 40) + 24) forKey:@"familyID"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 32);

  return [v2 encodeBool:v3 forKey:@"redacted"];
}

uint64_t __51___LSApplicationSensitiveDataProxy_applicationDSID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkNotRedacted];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8);
  return result;
}

uint64_t __50___LSApplicationSensitiveDataProxy_downloaderDSID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkNotRedacted];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 16);
  return result;
}

uint64_t __44___LSApplicationSensitiveDataProxy_familyID__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkNotRedacted];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 24);
  return result;
}

@end