@interface NSString(AppleMediaServicesUI)
- (void)ams_enumerateRangesOfString:()AppleMediaServicesUI options:usingBlock:;
@end

@implementation NSString(AppleMediaServicesUI)

- (void)ams_enumerateRangesOfString:()AppleMediaServicesUI options:usingBlock:
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v10 = [a1 length];
  v11 = 0;
  v12 = v10;
  do
  {
    v13 = [a1 rangeOfString:v8 options:a4 range:{v11, v12}];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    v9[2](v9, v13, v14, &v18);
    v11 = v15 + v16;
    v12 = v10 - (v15 + v16);
  }

  while (!v18 && v10 != v15 + v16);
}

@end