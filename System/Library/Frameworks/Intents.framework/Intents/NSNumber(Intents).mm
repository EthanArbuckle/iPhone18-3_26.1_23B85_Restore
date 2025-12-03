@interface NSNumber(Intents)
- (BOOL)_intents_isInteger;
@end

@implementation NSNumber(Intents)

- (BOOL)_intents_isInteger
{
  objCType = [self objCType];
  result = 0;
  v3 = *objCType;
  if (v3 > 0x68)
  {
    if (v3 != 115)
    {
      if (v3 == 113)
      {
        return objCType[1] == 0;
      }

      if (v3 != 105)
      {
        return result;
      }
    }

    return objCType[1] == 0;
  }

  if (v3 == 73)
  {
    return objCType[1] == 0;
  }

  if (v3 == 81 || v3 == 83)
  {
    return objCType[1] == 0;
  }

  return result;
}

@end