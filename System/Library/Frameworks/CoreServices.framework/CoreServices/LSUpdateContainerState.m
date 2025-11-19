@interface LSUpdateContainerState
@end

@implementation LSUpdateContainerState

void ___LSUpdateContainerState_block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(*(*(v3 + 8) + 8) + 52);
  if (v4)
  {
    v5 = *(a1 + 48);

    _LSContainerSetMounted(v2, v5, v4);
  }

  else
  {
    [(_LSDatabase *)v2 store];
    v6 = *([(_LSDatabase *)*(a1 + 32) schema]+ 1580);
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 8) + 48;

    _CSStoreWriteToUnit();
  }
}

void ___LSUpdateContainerState_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = _LSGetOSStatusFromNSError(v3);
}

void ___LSUpdateContainerState_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = a1 + 32;
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if ([v7 length] == 20)
    {
      [v7 getBytes:*(*(a1 + 40) + 8) + 48 range:{0, 20}];
      goto LABEL_6;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = _LSGetOSStatusFromNSError(v5);
    v6 = a1 + 32;
  }

  *(*(*v6 + 8) + 24) = -10817;
LABEL_6:
}

@end