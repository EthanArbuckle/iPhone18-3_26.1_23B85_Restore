@interface NSInputStream(NSCFInputStreamAdditions)
- (CFIndex)_cfStreamError;
@end

@implementation NSInputStream(NSCFInputStreamAdditions)

- (CFIndex)_cfStreamError
{
  if (object_getClass(a1) == NSCFInputStream)
  {
    return CFReadStreamGetError(a1).domain;
  }

  else
  {
    return -1;
  }
}

@end