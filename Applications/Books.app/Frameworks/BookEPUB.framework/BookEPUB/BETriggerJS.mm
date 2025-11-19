@interface BETriggerJS
- (id)mainFrameJavascriptURL:(int64_t)a3;
- (id)mainFrameOnlyJavascript:(int64_t)a3;
@end

@implementation BETriggerJS

- (id)mainFrameOnlyJavascript:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = +[epub_trigger source];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mainFrameJavascriptURL:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = +[epub_trigger sourceName];
    v4 = BEJavascriptProviderUniqueURLForFilename(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end