@interface NSArray
+ (id)arrayFromShellCommandString:(id)string;
+ (id)graphicInfoArrayFromArray:(id)array;
@end

@implementation NSArray

+ (id)graphicInfoArrayFromArray:(id)array
{
  arrayCopy = array;
  v7 = objc_alloc_init(NSMutableArray);
  if (arrayCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v13 objectForKeyedSubscript:@"sppci_model"];
            if (!v17)
            {
              ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSArray+ZhuGe.m", "+[NSArray(ZhuGe) graphicInfoArrayFromArray:]", 33, @"One graphic in graphics array does not contain sppci_model", v18, v19, v20, v25);

              v23 = 0;
              goto LABEL_16;
            }

            v21 = v17;
            v30[0] = @"Chipset Model";
            v30[1] = @"Device ID";
            v31[0] = v17;
            v31[1] = &stru_100014878;
            v30[2] = @"VRAM Size";
            v30[3] = @"ROM Revision";
            v31[2] = &stru_100014878;
            v31[3] = &stru_100014878;
            v30[4] = @"VBIOS Version";
            v30[5] = @"Option ROM Version";
            v31[4] = &stru_100014878;
            v31[5] = &stru_100014878;
            v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:6];
            [v7 addObject:v22];
          }

          else
          {
            ZhuGeLog(262656, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSArray+ZhuGe.m", "+[NSArray(ZhuGe) graphicInfoArrayFromArray:]", 27, @"One graphic in graphics array is not a dictionary, ignore it.", v14, v15, v16, v25);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v23 = [NSArray arrayWithArray:v7];
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSArray+ZhuGe.m", "+[NSArray(ZhuGe) graphicInfoArrayFromArray:]", 20, @"graphicsArray pointer is nil!", v4, v5, v6, v25);
    v23 = 0;
  }

LABEL_16:

  return v23;
}

+ (id)arrayFromShellCommandString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSMutableArray);
  if (stringCopy)
  {
    v28 = stringCopy;
    uTF8String = [stringCopy UTF8String];
    v6 = strlen(uTF8String);
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = &uTF8String[v6];
      v12 = &uTF8String[v6];
      while (*uTF8String == 32)
      {
        v13 = uTF8String;
LABEL_41:
        uTF8String = v13 + 1;
        if ((v13 + 1) >= v11)
        {
          goto LABEL_42;
        }
      }

      if (uTF8String >= v11)
      {
        v14 = 0;
        v13 = uTF8String;
      }

      else
      {
        v14 = 0;
        v15 = v12 - uTF8String;
        v13 = uTF8String;
        do
        {
          v16 = *v13;
          if (v16 == 32 && v10 == 0)
          {
            goto LABEL_26;
          }

          if (v16 == 39 || v16 == 34)
          {
            v18 = v16 == v10 ? 0 : v10;
            v19 = v10 == 0;
            v10 = v10 ? v18 : *v13;
            if (v19)
            {
              v14 = 1;
            }
          }

          ++v13;
          --v15;
        }

        while (v15);
        v13 = v12;
      }

      if (v10)
      {
        stringCopy = v28;
        ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSArray+ZhuGe.m", "+[NSArray(ZhuGe) arrayFromShellCommandString:]", 98, @"Quotation %c is not paired in command %@!", v7, v8, v9, v10);
        goto LABEL_44;
      }

LABEL_26:
      v20 = v13 - uTF8String;
      v21 = [NSMutableData dataWithLength:v13 - uTF8String + 1];
      mutableBytes = [v21 mutableBytes];

      bzero(mutableBytes, v13 - uTF8String + 1);
      if (v14)
      {
        if (uTF8String < v13)
        {
          v10 = 0;
          v23 = mutableBytes;
          while (1)
          {
            v24 = *uTF8String;
            if (v24 != 39 && v24 != 34)
            {
              break;
            }

            if (v10)
            {
              if (v24 != v10)
              {
                break;
              }

              v10 = 0;
            }

            else
            {
              v10 = *uTF8String;
            }

LABEL_36:
            ++uTF8String;
            if (!--v20)
            {
              goto LABEL_40;
            }
          }

          *v23++ = v24;
          goto LABEL_36;
        }
      }

      else
      {
        memcpy(mutableBytes, uTF8String, v13 - uTF8String);
      }

      v10 = 0;
LABEL_40:
      v25 = [NSString stringWithUTF8String:mutableBytes];
      [v4 addObject:v25];

      goto LABEL_41;
    }

LABEL_42:
    v26 = v4;
    stringCopy = v28;
  }

  else
  {
LABEL_44:
    v26 = 0;
  }

  return v26;
}

@end