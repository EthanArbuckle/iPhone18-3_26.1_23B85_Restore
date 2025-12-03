@interface ASFAsn1OSToken
- (void)stringValue;
@end

@implementation ASFAsn1OSToken

- (void)stringValue
{
  if (self)
  {
    selfCopy = self;
    v3 = self[4];
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
        self = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", *(v3 + 32)];
LABEL_13:
        v1 = vars8;
        goto LABEL_14;
      default:
LABEL_7:
        self = 0;
        goto LABEL_13;
    }

    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = selfCopy[4];
    if (v8)
    {
      Property = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      Property = 0;
    }

    self = [v7 initWithData:Property encoding:v5];
    goto LABEL_13;
  }

LABEL_14:

  return self;
}

@end