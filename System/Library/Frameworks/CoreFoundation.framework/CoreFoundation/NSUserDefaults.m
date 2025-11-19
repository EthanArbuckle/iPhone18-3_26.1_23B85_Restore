@interface NSUserDefaults
- (void)_setContainer:(__CFURL *)a3;
- (void)_setIdentifier:(__CFString *)a3;
@end

@implementation NSUserDefaults

- (void)_setIdentifier:(__CFString *)a3
{
  identifier = self->_identifier_;
  if (identifier)
  {
    CFRelease(identifier);
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = @"kCFPreferencesCurrentApplication";
  }

  self->_identifier_ = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v6);
}

- (void)_setContainer:(__CFURL *)a3
{
  container = self->_container_;
  if (a3)
  {
    if (container)
    {
      CFRelease(container);
    }

    v6 = CFURLCopyFileSystemPath(a3, kCFURLPOSIXPathStyle);
  }

  else
  {
    if (!container)
    {
      return;
    }

    CFRelease(container);
    v6 = 0;
  }

  self->_container_ = v6;
}

@end