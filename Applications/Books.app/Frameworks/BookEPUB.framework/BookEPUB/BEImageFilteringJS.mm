@interface BEImageFilteringJS
- (id)anyFrameJavascript:(int64_t)a3;
- (id)anyFrameJavascriptURL:(int64_t)a3;
@end

@implementation BEImageFilteringJS

- (id)anyFrameJavascript:(int64_t)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[image_filtering source];
  }

  return v5;
}

- (id)anyFrameJavascriptURL:(int64_t)a3
{
  if (a3)
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