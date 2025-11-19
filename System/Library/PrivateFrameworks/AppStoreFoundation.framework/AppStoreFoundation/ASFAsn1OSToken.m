@interface ASFAsn1OSToken
- (void)stringValue;
@end

@implementation ASFAsn1OSToken

- (void)stringValue
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = *(v3 + 16);
    switch(v4)
    {
      case 22:
        v5 = 1;
        break;
      case 12:
        v5 = 4;
        break;
      case 2:
        a1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", *(v3 + 32)];
LABEL_13:
        v1 = vars8;
        goto LABEL_14;
      default:
LABEL_7:
        a1 = 0;
        goto LABEL_13;
    }

    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = v2[4];
    if (v8)
    {
      Property = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      Property = 0;
    }

    a1 = [v7 initWithData:Property encoding:v5];
    goto LABEL_13;
  }

LABEL_14:

  return a1;
}

@end