@interface BEImageFilteringJS
- (id)anyFrameJavascript:(int64_t)javascript;
- (id)anyFrameJavascriptURL:(int64_t)l;
@end

@implementation BEImageFilteringJS

- (id)anyFrameJavascript:(int64_t)javascript
{
  if (javascript)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[image_filtering source];
  }

  return v5;
}

- (id)anyFrameJavascriptURL:(int64_t)l
{
  if (l)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[image_filtering sourceName];
    v3 = BEJavascriptProviderUniqueURLForFilename(v4);
  }

  return v3;
}

@end