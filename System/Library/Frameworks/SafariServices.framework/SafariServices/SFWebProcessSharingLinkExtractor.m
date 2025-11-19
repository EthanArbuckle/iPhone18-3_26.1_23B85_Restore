@interface SFWebProcessSharingLinkExtractor
@end

@implementation SFWebProcessSharingLinkExtractor

void __56___SFWebProcessSharingLinkExtractor__extractSharingLink__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) _extractCanonicalLinkWithInjectedObject:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [*(a1 + 32) _extractDominantIFrameWithInjectedObject:v9];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __56___SFWebProcessSharingLinkExtractor__extractSharingLink__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _extractCanonicalLinkWithInjectedObject:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end