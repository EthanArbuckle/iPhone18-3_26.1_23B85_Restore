@interface LogForCategory
@end

@implementation LogForCategory

void __LogForCategory_block_invoke(id a1)
{
  v14[2] = a1;
  v14[1] = a1;
  v1 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v2 = gLogsDict;
  gLogsDict = v1;

  v16[0] = @"FontServices";
  v16[1] = @"UserFontManager";
  v16[2] = @"FSUserFontManager";
  v16[3] = @"FontProvider";
  v16[4] = @"FontProviderManager";
  v16[5] = @"FontProviderLoader";
  v16[6] = @"fontservicesd";
  v16[7] = @"ServicesDaemonManager";
  v16[8] = @"FontPickerSupport";
  v16[9] = @"FontInstallViewService";
  v14[0] = [NSArray arrayWithObjects:v16 count:10];
  memset(__b, 0, sizeof(__b));
  obj = v14[0];
  v10 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v7);
      v4 = v13;
      v3 = v13;
      v11 = os_log_create("com.apple.FontServices", [v4 UTF8String]);
      [gLogsDict setObject:v11 forKey:v13];
      objc_storeStrong(&v11, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(v14, 0);
}

@end