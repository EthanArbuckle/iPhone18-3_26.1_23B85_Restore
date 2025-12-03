@interface ASCMobileGestalt
+ (BOOL)hasCapabilitiesIncludingCompatibilityCheck:(id)check isVisionOSCompatibleIOSApp:(BOOL)app;
+ (CGSize)mainScreenPointSize;
+ (CGSize)mainScreenSize;
+ (NSString)activePairedSystemVersion;
+ (NSString)deviceClass;
+ (NSString)productType;
@end

@implementation ASCMobileGestalt

+ (NSString)deviceClass
{
  v2 = MGGetStringAnswer();

  return v2;
}

+ (NSString)productType
{
  v2 = MGGetStringAnswer();

  return v2;
}

+ (CGSize)mainScreenSize
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2 && (v4 = [v2 bytes], v5 = objc_msgSend(v3, "length"), v5 >= 0x10))
  {
    v8 = v4 + (v5 & 0xFFFFFFFFFFFFFFF0);
    v6 = *(v8 - 16);
    v7 = *(v8 - 8);
  }

  else
  {
    v6 = MGGetSInt32Answer();
    v7 = MGGetSInt32Answer();
  }

  v9 = v6;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)mainScreenPointSize
{
  +[ASCMobileGestalt mainScreenScale];
  v3 = 1.0 / v2;
  +[ASCMobileGestalt mainScreenSize];
  v8 = v5;
  v9 = v4;
  CGAffineTransformMakeScale(&v10, v3, v3);
  v6 = vmlaq_n_f64(vmulq_n_f64(*&v10.c, v8), *&v10.a, v9);
  v7 = v6.f64[1];
  result.width = v6.f64[0];
  result.height = v7;
  return result;
}

+ (NSString)activePairedSystemVersion
{
  if (activePairedSystemVersion_onceToken != -1)
  {
    +[ASCMobileGestalt activePairedSystemVersion];
  }

  v3 = activePairedSystemVersion_systemVersion;

  return v3;
}

void __45__ASCMobileGestalt_activePairedSystemVersion__block_invoke()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v0 getActivePairedDevice];

  objc_opt_class();
  v1 = [v3 objectForKeyedSubscript:*MEMORY[0x277D2BC20]];
  if (v1)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&activePairedSystemVersion_systemVersion, v2);
}

+ (BOOL)hasCapabilitiesIncludingCompatibilityCheck:(id)check isVisionOSCompatibleIOSApp:(BOOL)app
{
  appCopy = app;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  checkCopy = check;
  v6 = [checkCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277CBED28];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(checkCopy);
        }

        if (([*(*(&v16 + 1) + 8 * i) isEqualToString:{&stru_2835CD1E8, v16}] & 1) == 0)
        {
          v11 = (appCopy ? _MGCopyAnswerWithMode() : MGCopyAnswer());
          v12 = v11;
          if (v11)
          {
            CFRelease(v11);
          }

          if (v12 != v9)
          {
            v13 = 0;
            goto LABEL_17;
          }
        }
      }

      v7 = [checkCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end