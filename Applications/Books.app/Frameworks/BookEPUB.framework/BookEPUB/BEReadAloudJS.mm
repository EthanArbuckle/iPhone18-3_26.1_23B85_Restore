@interface BEReadAloudJS
- (id)mainFrameJavascriptURL:(int64_t)a3;
- (id)mainFrameOnlyJavascript:(int64_t)a3;
@end

@implementation BEReadAloudJS

- (id)mainFrameOnlyJavascript:(int64_t)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[read_aloud source];
  }

  return v5;
}

- (id)mainFrameJavascriptURL:(int64_t)a3
{
  if (a3)
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