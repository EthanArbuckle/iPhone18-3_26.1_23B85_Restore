@interface CFPrefsExtractQuadrupleFromPathIfPossible
@end

@implementation CFPrefsExtractQuadrupleFromPathIfPossible

void ___CFPrefsExtractQuadrupleFromPathIfPossible_block_invoke()
{
  v0 = CFCopyHomeDirectoryURLForUser(@"mobile");
  if (v0)
  {
    v1 = v0;
    _CFPrefsExtractQuadrupleFromPathIfPossible_mobileHome = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);

    CFRelease(v1);
  }
}

@end