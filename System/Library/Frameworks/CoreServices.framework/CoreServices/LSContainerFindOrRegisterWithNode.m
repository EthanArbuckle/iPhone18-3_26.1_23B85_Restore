@interface LSContainerFindOrRegisterWithNode
@end

@implementation LSContainerFindOrRegisterWithNode

void ___LSContainerFindOrRegisterWithNode_block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    v7 = 1;
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      v8 = v6;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
      v6 = v8;
    }

    v7 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
}

@end