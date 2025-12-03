@interface NSOutputStream(NSCFOutputStreamAdditions)
- (CFIndex)_cfStreamError;
@end

@implementation NSOutputStream(NSCFOutputStreamAdditions)

- (CFIndex)_cfStreamError
{
  if (object_getClass(self) == NSCFOutputStream)
  {
    return CFWriteStreamGetError(self).domain;
  }

  else
  {
    return -1;
  }
}

@end