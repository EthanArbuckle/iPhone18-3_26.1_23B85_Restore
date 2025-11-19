@interface INEnumerateObjectAttributes
@end

@implementation INEnumerateObjectAttributes

uint64_t ___INEnumerateObjectAttributes_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = INEnumerateObjectsInCodable(v6, *(a1 + 32));
    v4 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v4 = v6;
  if (v6)
  {
    isKindOfClass = (*(*(a1 + 32) + 16))();
    v4 = v6;
    if (isKindOfClass)
    {
      goto LABEL_6;
    }
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](isKindOfClass, v4);
}

@end