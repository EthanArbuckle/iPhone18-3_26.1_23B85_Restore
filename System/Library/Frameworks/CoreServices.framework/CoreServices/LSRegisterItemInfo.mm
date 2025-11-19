@interface LSRegisterItemInfo
@end

@implementation LSRegisterItemInfo

uint64_t ___LSRegisterItemInfo_block_invoke(uint64_t a1, void *a2)
{
  result = _LSGetOSStatusFromNSError(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___LSRegisterItemInfo_block_invoke_2(void *a1, char a2, int a3, void *a4, char a5, void *a6)
{
  theArray = a4;
  v11 = a6;
  v12 = v11;
  if (a2)
  {
    v13 = a1[5];
    *(*(a1[4] + 8) + 24) = 0;
    if (v13)
    {
      *v13 = a3;
    }

    v14 = a1[6];
    if (v14)
    {
      if (theArray)
      {
        *a1[6] = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
      }

      else
      {
        *v14 = 0;
      }
    }

    v15 = a1[7];
    if (v15)
    {
      *v15 = a5;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = _LSGetOSStatusFromNSError(v11);
  }
}

@end