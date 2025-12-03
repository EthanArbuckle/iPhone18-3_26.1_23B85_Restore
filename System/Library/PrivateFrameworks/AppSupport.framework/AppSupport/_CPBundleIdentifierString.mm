@interface _CPBundleIdentifierString
- (id)_initWithExecutablePath:(id)path;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)_loadBundleIdentifierOrProcessName;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation _CPBundleIdentifierString

- (id)_initWithExecutablePath:(id)path
{
  v6.receiver = self;
  v6.super_class = _CPBundleIdentifierString;
  v4 = [(_CPBundleIdentifierString *)&v6 init];
  if (v4)
  {
    v4->_executablePath = path;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CPBundleIdentifierString;
  [(_CPBundleIdentifierString *)&v3 dealloc];
}

- (void)_loadBundleIdentifierOrProcessName
{
  objc_sync_enter(self);
  if (!self->_bundleIdentifierOrProcessName)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    self->_isProcessName = 0;
    v4 = CFURLCreateWithFileSystemPath(0, self->_executablePath, kCFURLPOSIXPathStyle, 0);
    if (v4)
    {
      v5 = _CFBundleCopyBundleURLForExecutableURL();
      if (v5)
      {
        v6 = CFBundleCreate(0, v5);
        v7 = v6;
        if (v6)
        {
          self->_bundleIdentifierOrProcessName = CFBundleGetIdentifier(v6);
          CFRelease(v7);
        }

        CFRelease(v5);
      }

      CFRelease(v4);
    }

    if (!self->_bundleIdentifierOrProcessName)
    {
      self->_bundleIdentifierOrProcessName = [(NSString *)self->_executablePath lastPathComponent];
      self->_isProcessName = 1;
    }
  }

  objc_sync_exit(self);
}

- (unint64_t)length
{
  [(_CPBundleIdentifierString *)self _loadBundleIdentifierOrProcessName];
  bundleIdentifierOrProcessName = self->_bundleIdentifierOrProcessName;

  return [(NSString *)bundleIdentifierOrProcessName length];
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  [(_CPBundleIdentifierString *)self _loadBundleIdentifierOrProcessName];
  bundleIdentifierOrProcessName = self->_bundleIdentifierOrProcessName;

  return [(NSString *)bundleIdentifierOrProcessName characterAtIndex:index];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(_CPBundleIdentifierString *)self _loadBundleIdentifierOrProcessName];
  bundleIdentifierOrProcessName = self->_bundleIdentifierOrProcessName;

  [(NSString *)bundleIdentifierOrProcessName getCharacters:characters range:location, length];
}

@end