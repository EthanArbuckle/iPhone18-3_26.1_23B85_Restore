@interface CRLWPFontVerifier
+ (id)sharedInstance;
- (BOOL)isCoreTextDownloadableFontName:(id)name;
- (BOOL)isDownloadableFontName:(id)name;
- (BOOL)isFontWithPostscriptNameInstalled:(id)installed;
@end

@implementation CRLWPFontVerifier

+ (id)sharedInstance
{
  if (qword_101A346D0 != -1)
  {
    sub_10132328C();
  }

  v3 = qword_101A346C8;

  return v3;
}

- (BOOL)isFontWithPostscriptNameInstalled:(id)installed
{
  installedCopy = installed;
  v4 = +[CRLWPFontVerifier missingFontName];
  v5 = [(__CFString *)installedCopy containsString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    if ([CRLWPFont isSystemFontName:installedCopy])
    {
      v7 = 1025;
    }

    else
    {
      v7 = 1;
    }

    v8 = CTFontCreateWithNameAndOptions(installedCopy, 0.0, 0, v7);
    if (v8)
    {
      v9 = v8;
      v10 = CTFontCopyPostScriptName(v8);
      v11 = +[CRLWPFontVerifier missingFontName];
      v12 = [(__CFString *)v10 isEqualToString:v11];

      v6 = v12 ^ 1;
      CFRelease(v9);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isCoreTextDownloadableFontName:(id)name
{
  v10[0] = kCTFontNameAttribute;
  v10[1] = kCTFontDownloadableAttribute;
  v11[0] = name;
  v11[1] = &__kCFBooleanTrue;
  nameCopy = name;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  v5 = CTFontDescriptorCreateWithAttributes(v4);
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v5, 0);
  v7 = MatchingFontDescriptors;
  if (MatchingFontDescriptors)
  {
    v8 = [(__CFArray *)MatchingFontDescriptors count]!= 0;
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);

  return v8;
}

- (BOOL)isDownloadableFontName:(id)name
{
  nameCopy = name;
  if ([(CRLWPFontVerifier *)self isCloudKitDownloadableFontName:nameCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CRLWPFontVerifier *)self isCoreTextDownloadableFontName:nameCopy];
  }

  return v5;
}

@end