@interface NSString(CGAdditions)
- (uint64_t)enumerateComponentsSeparatedByCharactersInSet:()CGAdditions usingBlock:;
@end

@implementation NSString(CGAdditions)

- (uint64_t)enumerateComponentsSeparatedByCharactersInSet:()CGAdditions usingBlock:
{
  v16 = 0;
  v7 = [a1 length];
  v8 = [a1 rangeOfCharacterFromSet:a3 options:0 range:{0, v7}];
  if (!v9)
  {
    return (*(a4 + 16))(a4, 0, v7, &v16);
  }

  v10 = v8;
  v11 = v9;
  v12 = 0;
  while (1)
  {
    if (v10 != v12)
    {
      result = (*(a4 + 16))(a4, v12, v10 - v12, &v16);
      if (v16)
      {
        break;
      }
    }

    v12 = v10 + v11;
    v14 = v7 - (v10 + v11);
    result = [a1 rangeOfCharacterFromSet:a3 options:0 range:{v10 + v11, v14}];
    v10 = result;
    v11 = v15;
    if (!v15)
    {
      if (v7 != v12)
      {
        return (*(a4 + 16))(a4, v12, v14, &v16);
      }

      return result;
    }
  }

  return result;
}

@end