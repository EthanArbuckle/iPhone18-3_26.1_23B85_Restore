@interface AFPreferencesBuiltInLanguages
@end

@implementation AFPreferencesBuiltInLanguages

void ___AFPreferencesBuiltInLanguages_block_invoke()
{
  v6[39] = *MEMORY[0x1E69E9840];
  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if (AFIsHorseman_isHorseman == 1)
  {
    v6[0] = @"en-US";
    v6[1] = @"en-GB";
    v6[2] = @"en-AU";
    v6[3] = @"en-CA";
    v6[4] = @"fr-FR";
    v6[5] = @"de-DE";
    v6[6] = @"fr-CA";
    v6[7] = @"es-US";
    v6[8] = @"es-MX";
    v6[9] = @"es-ES";
    v6[10] = @"zh-CN";
    v6[11] = @"yue-CN";
    v6[12] = @"zh-HK";
    v6[13] = @"ja-JP";
    v6[14] = @"zh-TW";
    v6[15] = @"en-IN";
    v6[16] = @"en-IE";
    v6[17] = @"en-NZ";
    v6[18] = @"de-AT";
    v6[19] = @"it-IT";
    v6[20] = @"ru-RU";
    v6[21] = @"nl-NL";
    v6[22] = @"nl-BE";
    v6[23] = @"fr-BE";
    v6[24] = @"fr-CH";
    v6[25] = @"de-CH";
    v6[26] = @"it-CH";
    v6[27] = @"nb-NO";
    v6[28] = @"sv-SE";
    v6[29] = @"en-ZA";
    v6[30] = @"es-CL";
    v6[31] = @"fi-FI";
    v6[32] = @"en-SG";
    v6[33] = @"da-DK";
    v6[34] = @"he-IL";
    v6[35] = @"th-TH";
    v6[36] = @"ar-SA";
    v6[37] = @"tr-TR";
    v6[38] = @"ms-MY";
    v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:39];
    v1 = _AFPreferencesBuiltInLanguages_sStaticLanguages;
    _AFPreferencesBuiltInLanguages_sStaticLanguages = v0;

    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = _AFPreferencesBuiltIniOSLanguages();
    v4 = _AFPreferencesBuiltInLanguages_sStaticLanguages;
    _AFPreferencesBuiltInLanguages_sStaticLanguages = v3;
    v5 = *MEMORY[0x1E69E9840];
  }
}

@end