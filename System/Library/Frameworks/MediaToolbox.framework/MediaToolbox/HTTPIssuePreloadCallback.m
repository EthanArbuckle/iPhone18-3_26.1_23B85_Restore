@interface HTTPIssuePreloadCallback
@end

@implementation HTTPIssuePreloadCallback

void __fpic_HTTPIssuePreloadCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = CFErrorCreate(*MEMORY[0x1E695E480], @"CoreMediaErrorDomain", v2, 0);
  }

  else
  {
    v3 = 0;
  }

  fpic_HandlePreloadResponseData(*(a1 + 32), *(a1 + 40), v3, *(a1 + 48), *(a1 + 56), *(a1 + 64), (*(a1 + 76) >> 1) & 1);
  if (v3)
  {

    CFRelease(v3);
  }
}

@end