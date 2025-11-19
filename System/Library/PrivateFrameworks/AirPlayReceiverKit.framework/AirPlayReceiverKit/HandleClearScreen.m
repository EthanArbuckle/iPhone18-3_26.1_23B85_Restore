@interface HandleClearScreen
@end

@implementation HandleClearScreen

void ___HandleClearScreen_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 27) & 1) == 0)
  {
    *(v1 + 27) = 1;
    v2 = *(a1 + 32);
    v3 = v2[20];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___HandleClearScreen_block_invoke_2;
    block[3] = &unk_278C626E8;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void ___HandleClearScreen_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 videoStreamIsCleared:1 forRenderer:*(a1 + 32)];
  }
}

@end