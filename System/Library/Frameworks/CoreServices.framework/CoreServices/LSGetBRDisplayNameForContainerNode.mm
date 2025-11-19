@interface LSGetBRDisplayNameForContainerNode
@end

@implementation LSGetBRDisplayNameForContainerNode

void ___LSGetBRDisplayNameForContainerNode_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = v6;
  if (softLinkBRCopyDisplayNameForContainerAtURL)
  {
    v7 = softLinkBRCopyDisplayNameForContainerAtURL(*(a1 + 40), v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

@end