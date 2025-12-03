@interface VOTElementUtilities
+ (id)handleValueChangeForPhoneDeletionWithOldString:(id)string newString:(id)newString;
+ (id)phoneNumberWithoutFormattingCharacters:(id)characters;
+ (int64_t)findLocationOfDifferenceInOldString:(id)string withNewString:(id)newString;
@end

@implementation VOTElementUtilities

+ (id)phoneNumberWithoutFormattingCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = [charactersCopy stringByReplacingOccurrencesOfString:@"[-()\\s]" withString:&stru_1001CBF90 options:1024 range:{0, objc_msgSend(charactersCopy, "length")}];

  return v4;
}

+ (id)handleValueChangeForPhoneDeletionWithOldString:(id)string newString:(id)newString
{
  newStringCopy = newString;
  v6 = [VOTElementUtilities phoneNumberWithoutFormattingCharacters:string];
  v7 = [VOTElementUtilities phoneNumberWithoutFormattingCharacters:newStringCopy];

  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [VOTElementUtilities findLocationOfDifferenceInOldString:v6 withNewString:v7];
  }

  else
  {
    [v6 length];
    v8 = 0;
  }

  if (v8 + 1 <= [v6 length])
  {
    v9 = [v6 substringWithRange:{v8, 1}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)findLocationOfDifferenceInOldString:(id)string withNewString:(id)newString
{
  stringCopy = string;
  newStringCopy = newString;
  v7 = [stringCopy length];
  v8 = [newStringCopy length];
  v9 = v8;
  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    while (sub_1000F2430([stringCopy characterAtIndex:v11], objc_msgSend(newStringCopy, "characterAtIndex:", v11)))
    {
      if (v10 == ++v11)
      {
        v11 = v10;
        break;
      }
    }
  }

  if (v7 >= v9 && v11 == v7)
  {
    v13 = (v7 - 1);
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

@end