@interface CFSTLoadCoreNLP
@end

@implementation CFSTLoadCoreNLP

void ____CFSTLoadCoreNLP_block_invoke()
{
  v0 = CFStringCreateWithCString(0, "", 0x8000100u);
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = CFStringCreateWithFormat(0, 0, @"%@/%s", v0, "System/Library/PrivateFrameworks/CoreNLP.framework/CoreNLP");
  CFRelease(v1);
  if (!v2)
  {
    return;
  }

  Length = CFStringGetLength(v2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v5)
  {
    v6 = v5;
    if (CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      CFRelease(v2);
      v7 = dlopen(v6, 5);
      if (v7)
      {
        v8 = v7;
        __NLStringTokenizerCopyBestStringLanguage = dlsym(v7, "NLStringTokenizerCopyBestStringLanguage");
        __NLStringTokenizerCreate = dlsym(v8, "NLStringTokenizerCreate");
        __NLStringTokenizerSetString = dlsym(v8, "NLStringTokenizerSetString");
        __NLStringTokenizerGoToTokenAtIndex = dlsym(v8, "NLStringTokenizerGoToTokenAtIndex");
        __NLStringTokenizerAdvanceToNextToken = dlsym(v8, "NLStringTokenizerAdvanceToNextToken");
        __NLStringTokenizerGetCurrentTokenRange = dlsym(v8, "NLStringTokenizerGetCurrentTokenRange");
        __NLStringTokenizerCopyCurrentTokenAttribute = dlsym(v8, "NLStringTokenizerCopyCurrentTokenAttribute");
        __NLStringTokenizerGetCurrentSubTokens = dlsym(v8, "NLStringTokenizerGetCurrentSubTokens");
        __NLStringTokenizerCopyBestStringLanguageWithHints = dlsym(v8, "NLStringTokenizerCopyBestStringLanguageWithHints");
        ___NLStringTokenizerCopyPossibleStringLanguages = dlsym(v8, "_NLStringTokenizerCopyPossibleStringLanguages");
        ___NLStringTokenizerTokenize = dlsym(v8, "_NLStringTokenizerTokenize");
        ___NLStringTokenizerTokenizeWithTranscriptions = dlsym(v8, "_NLStringTokenizerTokenizeWithTranscriptions");
        ___NLStringTokenizerTokenizeCompoundWord = dlsym(v8, "_NLStringTokenizerTokenizeCompoundWord");
        ___NLStringTokenizerGetDerivedTokens = dlsym(v8, "_NLStringTokenizerGetDerivedTokens");
        ___NLStringTokenizerGetNextBestTokens = dlsym(v8, "_NLStringTokenizerGetNextBestTokens");
        ___NLStringTokenizerCreateNamePartsArrayWithString = dlsym(v8, "_NLStringTokenizerCreateNamePartsArrayWithString");
        ___NLStringTokenizerCreateNamePartsArrayWithStringAsCompositeName = dlsym(v8, "_NLStringTokenizerCreateNamePartsArrayWithStringAsCompositeName");
        ___NLStringTokenizerCreatePossibleNamePartsArrayWithStringAsCompositeName = dlsym(v8, "_NLStringTokenizerCreatePossibleNamePartsArrayWithStringAsCompositeName");
        ___NLStringTokenizerGetCurrentTokenPartOfSpeech = dlsym(v8, "_NLStringTokenizerGetCurrentTokenPartOfSpeech");
        ___NLStringTokenizerSetLocale = dlsym(v8, "_NLStringTokenizerSetLocale");
        ___NLStringTokenizerSetTokenizerAttribute = dlsym(v8, "_NLStringTokenizerSetTokenizerAttribute");
        ___NLStringTokenizerGetTokenizerAttribute = dlsym(v8, "_NLStringTokenizerGetTokenizerAttribute");
        v9 = dlsym(v8, "NLStringTokenizerSetStringWithOptions");
        __NLStringTokenizerSetStringWithOptions = v9;
        if (__NLStringTokenizerCopyBestStringLanguage)
        {
          v10 = __NLStringTokenizerCreate == 0;
        }

        else
        {
          v10 = 1;
        }

        v32 = !v10 && __NLStringTokenizerSetString != 0 && __NLStringTokenizerGoToTokenAtIndex != 0 && __NLStringTokenizerAdvanceToNextToken != 0 && __NLStringTokenizerGetCurrentTokenRange != 0 && __NLStringTokenizerCopyCurrentTokenAttribute != 0 && __NLStringTokenizerGetCurrentSubTokens != 0 && __NLStringTokenizerCopyBestStringLanguageWithHints != 0 && ___NLStringTokenizerCopyPossibleStringLanguages != 0 && ___NLStringTokenizerTokenize != 0 && ___NLStringTokenizerTokenizeWithTranscriptions != 0 && ___NLStringTokenizerTokenizeCompoundWord != 0 && ___NLStringTokenizerGetDerivedTokens != 0 && ___NLStringTokenizerGetNextBestTokens != 0 && ___NLStringTokenizerCreateNamePartsArrayWithString != 0 && ___NLStringTokenizerCreateNamePartsArrayWithStringAsCompositeName != 0 && ___NLStringTokenizerCreatePossibleNamePartsArrayWithStringAsCompositeName != 0 && ___NLStringTokenizerGetCurrentTokenPartOfSpeech != 0 && ___NLStringTokenizerSetLocale != 0 && ___NLStringTokenizerSetTokenizerAttribute != 0 && ___NLStringTokenizerGetTokenizerAttribute != 0 && v9 != 0;
        __CFSTLoadCoreNLP_isCoreNLPAvailable = v32;
      }

      free(v6);
      return;
    }

    free(v6);
  }

  CFRelease(v2);
}

@end