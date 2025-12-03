@interface NSInputStream(NSCFInputStreamAdditions)
- (CFIndex)_cfStreamError;
@end

@implementation NSInputStream(NSCFInputStreamAdditions)

- (CFIndex)_cfStreamError
{
  if (object_getClass(self) == NSCFInputStream)
  {
    return CFReadStreamGetError(self).domain;
  }

  else
  {
    return -1;
  }
}

@end