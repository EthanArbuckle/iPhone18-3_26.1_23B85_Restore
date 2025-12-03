@interface NSObject(EmojiCompare)
- (uint64_t)_emojiCompare:()EmojiCompare;
@end

@implementation NSObject(EmojiCompare)

- (uint64_t)_emojiCompare:()EmojiCompare
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [selfCopy frame];
  v10 = v3;
  v11 = v4;
  [location[0] frame];
  v8 = v5;
  v9 = v6;
  NSClassFromString(&cfstr_Uikeyboardemoj_13.isa);
  if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass())
  {
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = v10 - v8;
      if (fabs(v10 - v8) >= 1.0)
      {
        if (v10 - v8 >= 0.0)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }
      }

      else if (v11 >= v9)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = -1;
  }

  objc_storeStrong(location, 0);
  return v14;
}

@end