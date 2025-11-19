@interface NSOutputStream(NSCFOutputStreamAdditions)
- (CFIndex)_cfStreamError;
@end

@implementation NSOutputStream(NSCFOutputStreamAdditions)

- (CFIndex)_cfStreamError
{
  if (object_getClass(a1) == NSCFOutputStream)
  {
    return CFWriteStreamGetError(a1).domain;
  }

  else
  {
    return -1;
  }
}

@end