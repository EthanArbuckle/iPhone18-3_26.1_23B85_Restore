@interface UTUpdateActiveTypeForIdentifier
@end

@implementation UTUpdateActiveTypeForIdentifier

void *___UTUpdateActiveTypeForIdentifier_block_invoke(void *result, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(a4 + 8);
  if ((v5 & 0x20) != 0)
  {
    *(*(result[4] + 8) + 24) = a3;
    v5 = *(a4 + 8);
    *(*(result[5] + 8) + 24) = v5;
  }

  v6 = *(result[6] + 8);
  if (!*(v6 + 24))
  {
    *(v6 + 24) = a3;
    v7 = *(a4 + 8);
    *(*(result[7] + 8) + 24) = v7;
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    *(*(result[8] + 8) + 24) = a3;
  }

LABEL_6:
  if (*(*(result[8] + 8) + 24) && *(*(result[6] + 8) + 24))
  {
    if (*(*(result[4] + 8) + 24))
    {
      *a5 = 1;
    }
  }

  return result;
}

@end