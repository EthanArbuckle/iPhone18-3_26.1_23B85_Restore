@interface LWCRTypeVerificationBackend
@end

@implementation LWCRTypeVerificationBackend

uint64_t __LWCRTypeVerificationBackend_verifyLWCR_block_invoke(void *a1, const char *a2, uint64_t a3)
{
  (*(a1[7] + 56))();
  if (!strcmp(a2, "vers") || !strcmp(a2, "comp") || !strcmp(a2, "ccat"))
  {
    if (((*(a1[7] + 16))(a3) & 2) == 0)
    {
      *(*(a1[4] + 8) + 24) = 0;
      v6 = *(a1[7] + 72);
      goto LABEL_8;
    }

    v8 = strcmp(a2, "ccat");
    v9 = a1[7];
    if (v8)
    {
      goto LABEL_10;
    }

    *(*(a1[5] + 8) + 24) = (*(v9 + 3))(a3);
    v9 = a1[7];
    v10 = *v9;
    if (*v9 == 8 || v10 == 4)
    {
      if (!*(*(a1[5] + 8) + 24))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_10;
      }

      v12 = *(*(a1[5] + 8) + 24);
      v13 = !v12 || v12 == 17;
      if (v13 || v12 == 127)
      {
        goto LABEL_10;
      }
    }

    *(*(a1[4] + 8) + 24) = 0;
    v6 = *(v9 + 9);
    goto LABEL_8;
  }

  if (strcmp(a2, "reqs"))
  {
    v6 = *(a1[7] + 72);
LABEL_8:
    v6();
    return 0;
  }

  result = verifyAndOrDictionary(a1[7], a3, &v14);
  if (!result)
  {
    *(*(a1[4] + 8) + 24) = 0;
    return result;
  }

  v9 = a1[7];
  *(*(a1[6] + 8) + 24) = 1;
LABEL_10:
  (*(v9 + 8))();
  return 1;
}

@end