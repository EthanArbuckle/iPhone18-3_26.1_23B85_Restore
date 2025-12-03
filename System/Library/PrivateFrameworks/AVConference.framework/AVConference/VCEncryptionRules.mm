@interface VCEncryptionRules
+ (id)supportedCipherSuitesForStreamGroupID:(unsigned int)d isOneToOne:(BOOL)one;
@end

@implementation VCEncryptionRules

+ (id)supportedCipherSuitesForStreamGroupID:(unsigned int)d isOneToOne:(BOOL)one
{
  oneCopy = one;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v7 = orderedSet;
  v8 = &unk_1F5799708;
  if (d > 1835623281)
  {
    if (d > 1935897188)
    {
      if (d != 1937339233)
      {
        v9 = 1935897189;
        goto LABEL_13;
      }
    }

    else if (d != 1835623282)
    {
      if (d != 1835623287)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (oneCopy)
    {
      v10 = &unk_1F579CF30;
      goto LABEL_18;
    }

LABEL_19:
    v8 = &unk_1F5799720;
    goto LABEL_20;
  }

  if (d <= 1667329398)
  {
    if (d == 1650745716)
    {
LABEL_14:
      if (oneCopy)
      {
        v10 = &unk_1F579CF18;
LABEL_18:
        [orderedSet addObjectsFromArray:v10];
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v9 = 1667329381;
LABEL_13:
    if (d != v9)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (d != 1667329399)
  {
    v9 = 1718909044;
    goto LABEL_13;
  }

LABEL_20:
  [v7 addObject:v8];
  return v7;
}

@end