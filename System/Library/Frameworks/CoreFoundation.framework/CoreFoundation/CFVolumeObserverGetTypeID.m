@interface CFVolumeObserverGetTypeID
@end

@implementation CFVolumeObserverGetTypeID

void ___CFVolumeObserverGetTypeID_block_invoke()
{
  cf[1] = *MEMORY[0x1E69E9840];
  v0 = CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  if (v0)
  {
    v1 = v0;
    cf[0] = 0;
    if (CFURLCopyResourcePropertyForKey(v0, @"_NSURLPathKey", cf, 0))
    {
      v2 = cf[0] == 0;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      CFRelease(cf[0]);
    }

    CFRelease(v1);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end