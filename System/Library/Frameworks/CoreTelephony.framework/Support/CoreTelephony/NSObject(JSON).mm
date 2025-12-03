@interface NSObject(JSON)
+ (id)objectWithJSONString:()JSON;
+ (void)jsonStringWithObject:()JSON;
@end

@implementation NSObject(JSON)

+ (id)objectWithJSONString:()JSON
{
  if ((*(a3 + 23) & 0x8000000000000000) == 0)
  {
    if (!*(a3 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:?];
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:4 error:0];

    goto LABEL_8;
  }

  if (a3[1])
  {
    a3 = *a3;
    goto LABEL_6;
  }

LABEL_7:
  v4 = 0;
LABEL_8:

  return v4;
}

+ (void)jsonStringWithObject:()JSON
{
  selfCopy = self;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:selfCopy])
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:selfCopy options:1 error:&v8];
    v5 = v8;
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
      v7 = v6;
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(a2, [v6 UTF8String]);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(a2, "");
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(a2, "");
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

@end