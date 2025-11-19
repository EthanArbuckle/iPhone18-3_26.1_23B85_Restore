@interface CRLWPFontVerifier
+ (id)sharedInstance;
- (BOOL)isCoreTextDownloadableFontName:(id)a3;
- (BOOL)isDownloadableFontName:(id)a3;
- (BOOL)isFontWithPostscriptNameInstalled:(id)a3;
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

- (BOOL)isFontWithPostscriptNameInstalled:(id)a3
{
  v3 = a3;
  v4 = +[CRLWPFontVerifier missingFontName];
  v5 = [(__CFString *)v3 containsString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    if ([CRLWPFont isSystemFontName:v3])
    {
      v7 = 1025;
    }

    else
    {
      v7 = 1;
    }

    v8 = CTFontCreateWithNameAndOptions(v3, 0.0, 0, v7);
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

- (BOOL)isCoreTextDownloadableFontName:(id)a3
{
  v10[0] = kCTFontNameAttribute;
  v10[1] = kCTFontDownloadableAttribute;
  v11[0] = a3;
  v11[1] = &__kCFBooleanTrue;
  v3 = a3;
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

- (BOOL)isDownloadableFontName:(id)a3
{
  v4 = a3;
  if ([(CRLWPFontVerifier *)self isCloudKitDownloadableFontName:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CRLWPFontVerifier *)self isCoreTextDownloadableFontName:v4];
  }

  return v5;
}

@end