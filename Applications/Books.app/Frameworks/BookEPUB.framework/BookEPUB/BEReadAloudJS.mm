@interface BEReadAloudJS
- (id)mainFrameJavascriptURL:(int64_t)l;
- (id)mainFrameOnlyJavascript:(int64_t)javascript;
@end

@implementation BEReadAloudJS

- (id)mainFrameOnlyJavascript:(int64_t)javascript
{
  if (javascript)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[read_aloud source];
  }

  return v5;
}

- (id)mainFrameJavascriptURL:(int64_t)l
{
  if (l)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[read_aloud sourceName];
    v3 = BEJavascriptProviderUniqueURLForFilename(v4);
  }

  return v3;
}

@end