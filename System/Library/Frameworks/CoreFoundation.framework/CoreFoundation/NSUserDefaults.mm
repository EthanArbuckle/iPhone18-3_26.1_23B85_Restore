@interface NSUserDefaults
- (void)_setContainer:(__CFURL *)container;
- (void)_setIdentifier:(__CFString *)identifier;
@end

@implementation NSUserDefaults

- (void)_setIdentifier:(__CFString *)identifier
{
  identifier = self->_identifier_;
  if (identifier)
  {
    CFRelease(identifier);
  }

  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = @"kCFPreferencesCurrentApplication";
  }

  self->_identifier_ = CFStringCreateCopy(&__kCFAllocatorSystemDefault, identifierCopy);
}

- (void)_setContainer:(__CFURL *)container
{
  container = self->_container_;
  if (container)
  {
    if (container)
    {
      CFRelease(container);
    }

    v6 = CFURLCopyFileSystemPath(container, kCFURLPOSIXPathStyle);
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