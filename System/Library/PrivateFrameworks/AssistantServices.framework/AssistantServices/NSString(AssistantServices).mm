@interface NSString(AssistantServices)
+ (id)hexStringFromBytes:()AssistantServices length:;
+ (id)hexStringFromData:()AssistantServices;
@end

@implementation NSString(AssistantServices)

+ (id)hexStringFromData:()AssistantServices
{
  if (a3)
  {
    v6 = a3;
    v7 = a3;
    bytes = [v7 bytes];
    v9 = [v7 length];

    v10 = [self hexStringFromBytes:bytes length:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)hexStringFromBytes:()AssistantServices length:
{
  v4 = a4;
  v6 = malloc_type_malloc(2 * a4, 0x565866DBuLL);
  v7 = v6;
  if (v4)
  {
    v8 = v6;
    do
    {
      if (*a3 <= 0x9Fu)
      {
        v9 = (*a3 >> 4) | 0x30;
      }

      else
      {
        v9 = (*a3 >> 4) + 87;
      }

      *v8 = v9;
      v10 = *a3++;
      v11 = (v10 & 0xF) + 87;
      v12 = v10 & 0xF | 0x30;
      if ((v10 & 0xFu) <= 9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      v7 = v8 + 2;
      v8[1] = v13;
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v6 length:v7 - v6 encoding:1 freeWhenDone:1];

  return v14;
}

@end