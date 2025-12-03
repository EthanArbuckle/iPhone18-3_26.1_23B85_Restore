@interface BETriggerJS
- (id)mainFrameJavascriptURL:(int64_t)l;
- (id)mainFrameOnlyJavascript:(int64_t)javascript;
@end

@implementation BETriggerJS

- (id)mainFrameOnlyJavascript:(int64_t)javascript
{
  if (javascript == 1)
  {
    v5 = +[epub_trigger source];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mainFrameJavascriptURL:(int64_t)l
{
  if (l == 1)
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