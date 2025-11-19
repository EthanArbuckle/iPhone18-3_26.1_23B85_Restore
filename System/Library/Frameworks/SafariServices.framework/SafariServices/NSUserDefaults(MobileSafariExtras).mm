@interface NSUserDefaults(MobileSafariExtras)
+ (id)safari_sfAppDefaults;
- (uint64_t)safari_enableStandaloneTabBar;
- (uint64_t)safari_isJavaScriptEnabled;
- (uint64_t)safari_javaScriptCanOpenWindowsAutomatically;
- (uint64_t)safari_shouldAutomaticallyDownloadReadingListItems;
- (uint64_t)safari_warnAboutFraudulentWebsites;
- (void)safari_registerMobileSafariDefaults;
@end

@implementation NSUserDefaults(MobileSafariExtras)

- (void)safari_registerMobileSafariDefaults
{
  v72[53] = *MEMORY[0x1E69E9840];
  v68 = MEMORY[0x1E695DF90];
  v2 = *MEMORY[0x1E69C8B68];
  v3 = MEMORY[0x1E695E118];
  v72[0] = MEMORY[0x1E695E118];
  v4 = *MEMORY[0x1E69B1F38];
  v71[0] = v2;
  v71[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:_SFDeviceIsPad()];
  v6 = *MEMORY[0x1E69B1E10];
  v72[1] = v5;
  v72[2] = v3;
  v7 = *MEMORY[0x1E69B1E70];
  v71[2] = v6;
  v71[3] = v7;
  v8 = MEMORY[0x1E695E110];
  v9 = *MEMORY[0x1E69B1E80];
  v72[3] = MEMORY[0x1E695E110];
  v72[4] = v3;
  v10 = *MEMORY[0x1E69B1EA0];
  v71[4] = v9;
  v71[5] = v10;
  v11 = *MEMORY[0x1E69B1EB0];
  v72[5] = v3;
  v72[6] = v3;
  v12 = *MEMORY[0x1E69C8A80];
  v71[6] = v11;
  v71[7] = v12;
  v13 = *MEMORY[0x1E69B1EB8];
  v72[7] = MEMORY[0x1E695E110];
  v72[8] = v3;
  v14 = *MEMORY[0x1E69B1EC0];
  v71[8] = v13;
  v71[9] = v14;
  v15 = *MEMORY[0x1E69B1EC8];
  v72[9] = MEMORY[0x1E695E110];
  v72[10] = &unk_1F5024118;
  v16 = *MEMORY[0x1E69B1ED0];
  v71[10] = v15;
  v71[11] = v16;
  v17 = *MEMORY[0x1E69B1ED8];
  v72[11] = v3;
  v72[12] = MEMORY[0x1E695E110];
  v18 = *MEMORY[0x1E69B1EE0];
  v71[12] = v17;
  v71[13] = v18;
  v72[13] = MEMORY[0x1E695E110];
  v71[14] = *MEMORY[0x1E69B1EE8];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:_SFDeviceIsPad() ^ 1];
  v20 = *MEMORY[0x1E69B1EF0];
  v72[14] = v19;
  v72[15] = v3;
  v21 = *MEMORY[0x1E69B1F00];
  v71[15] = v20;
  v71[16] = v21;
  v22 = *MEMORY[0x1E69B1F10];
  v72[16] = v3;
  v72[17] = v3;
  v23 = *MEMORY[0x1E69B1F18];
  v71[17] = v22;
  v71[18] = v23;
  v24 = *MEMORY[0x1E69B1F20];
  v72[18] = v8;
  v72[19] = v3;
  v25 = *MEMORY[0x1E69B1F28];
  v71[19] = v24;
  v71[20] = v25;
  v72[20] = v8;
  v71[21] = *MEMORY[0x1E69B1F30];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:_SFDeviceIsPad()];
  v27 = *MEMORY[0x1E69B1F68];
  v72[21] = v26;
  v72[22] = v8;
  v28 = *MEMORY[0x1E69B1F70];
  v71[22] = v27;
  v71[23] = v28;
  v29 = *MEMORY[0x1E69B1F78];
  v72[23] = v8;
  v72[24] = v3;
  v30 = *MEMORY[0x1E69B1F88];
  v71[24] = v29;
  v71[25] = v30;
  v31 = *MEMORY[0x1E69B1F90];
  v72[25] = v3;
  v72[26] = v3;
  v32 = *MEMORY[0x1E69B1E78];
  v71[26] = v31;
  v71[27] = v32;
  v33 = *MEMORY[0x1E69C8D90];
  v72[27] = v3;
  v72[28] = v3;
  v34 = *MEMORY[0x1E69C9648];
  v71[28] = v33;
  v71[29] = v34;
  v72[29] = v3;
  v71[30] = *MEMORY[0x1E69B1E08];
  v35 = MEMORY[0x1E696AD98];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v36 = 3;
  }

  else
  {
    v36 = 1;
  }

  v37 = [v35 numberWithInteger:{v36, v68}];
  v38 = *MEMORY[0x1E69B1DB8];
  v72[30] = v37;
  v72[31] = v3;
  v39 = *MEMORY[0x1E69B1DC0];
  v71[31] = v38;
  v71[32] = v39;
  v40 = *MEMORY[0x1E69B1E50];
  v72[32] = v3;
  v72[33] = v3;
  v41 = *MEMORY[0x1E69B1DC8];
  v71[33] = v40;
  v71[34] = v41;
  v42 = *MEMORY[0x1E69B1C98];
  v72[34] = v3;
  v72[35] = &unk_1F5022E28;
  v43 = *MEMORY[0x1E69B1DA0];
  v71[35] = v42;
  v71[36] = v43;
  v44 = *MEMORY[0x1E69B1DD0];
  v72[36] = v3;
  v72[37] = v3;
  v45 = *MEMORY[0x1E69B1DD8];
  v71[37] = v44;
  v71[38] = v45;
  v70 = *MEMORY[0x1E69B1D38];
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v47 = *MEMORY[0x1E69B1CA0];
  v72[38] = v46;
  v72[39] = &unk_1F5022E40;
  v48 = *MEMORY[0x1E69B1CA8];
  v71[39] = v47;
  v71[40] = v48;
  v49 = *MEMORY[0x1E69B1CB0];
  v72[40] = &unk_1F5022E28;
  v72[41] = &unk_1F5022E40;
  v50 = *MEMORY[0x1E69B1CB8];
  v71[41] = v49;
  v71[42] = v50;
  v51 = *MEMORY[0x1E69B1CC0];
  v72[42] = &unk_1F5022E28;
  v72[43] = &unk_1F5022E28;
  v52 = *MEMORY[0x1E69B1E58];
  v71[43] = v51;
  v71[44] = v52;
  v72[44] = v8;
  v72[45] = v3;
  v71[45] = @"DebugStreamlinedCompletionList";
  v71[46] = @"DebugLabelPreviousSearchesInCompletionList";
  v53 = *MEMORY[0x1E69B1DE8];
  v72[46] = v3;
  v72[47] = &unk_1F5022E58;
  v54 = *MEMORY[0x1E69B1E40];
  v71[47] = v53;
  v71[48] = v54;
  v55 = *MEMORY[0x1E69B1DF0];
  v72[48] = &unk_1F5022E70;
  v72[49] = &unk_1F5022E58;
  v56 = *MEMORY[0x1E69B1E48];
  v71[49] = v55;
  v71[50] = v56;
  v57 = *MEMORY[0x1E69C8AF8];
  v72[50] = &unk_1F5022E58;
  v72[51] = v3;
  v58 = *MEMORY[0x1E69B1DB0];
  v71[51] = v57;
  v71[52] = v58;
  v72[52] = v3;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:53];
  v60 = [v69 dictionaryWithDictionary:v59];

  v61 = WBSTabOrderManagerDefaultPreferenceValues();
  [v60 addEntriesFromDictionary:v61];

  v62 = defaultTranslationPreferenceValues();
  [v60 addEntriesFromDictionary:v62];

  v63 = SFDefaultWebExtensionsPreferenceValues();
  [v60 addEntriesFromDictionary:v63];

  v64 = *MEMORY[0x1E69B1E18];
  v65 = [a1 objectForKey:*MEMORY[0x1E69B1E18]];

  if (v65)
  {
    v66 = [a1 objectForKey:v42];

    if (!v66)
    {
      if ([a1 BOOLForKey:v64])
      {
        v67 = 0;
      }

      else
      {
        v67 = 2;
      }

      [a1 setInteger:v67 forKey:v42];
    }

    [a1 removeObjectForKey:v64];
  }

  [a1 registerDefaults:v60];
}

- (uint64_t)safari_isJavaScriptEnabled
{
  v2 = *MEMORY[0x1E69B1F00];
  if (restrictedValueForKey(*MEMORY[0x1E69B1F00]) == 2)
  {
    return 0;
  }

  return [a1 BOOLForKey:v2];
}

- (uint64_t)safari_javaScriptCanOpenWindowsAutomatically
{
  v2 = *MEMORY[0x1E69B1EF8];
  if (restrictedValueForKey(*MEMORY[0x1E69B1EF8]) == 2)
  {
    return 0;
  }

  return [a1 BOOLForKey:v2];
}

- (uint64_t)safari_warnAboutFraudulentWebsites
{
  v2 = *MEMORY[0x1E69B1F78];
  result = restrictedValueForKey(*MEMORY[0x1E69B1F78]);
  if (result == 2)
  {
    return 0;
  }

  if (result != 1)
  {

    return [a1 BOOLForKey:v2];
  }

  return result;
}

+ (id)safari_sfAppDefaults
{
  if (safari_sfAppDefaults_onceToken != -1)
  {
    +[NSUserDefaults(MobileSafariExtras) safari_sfAppDefaults];
  }

  v1 = safari_sfAppDefaults_sfAppDefaults;

  return v1;
}

- (uint64_t)safari_enableStandaloneTabBar
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    return 1;
  }

  v3 = *MEMORY[0x1E69B1DC0];

  return [a1 BOOLForKey:v3];
}

- (uint64_t)safari_shouldAutomaticallyDownloadReadingListItems
{
  if ([a1 BOOLForKey:*MEMORY[0x1E69B1E88]])
  {
    return 1;
  }

  v3 = *MEMORY[0x1E69B1F50];

  return [a1 BOOLForKey:v3];
}

@end