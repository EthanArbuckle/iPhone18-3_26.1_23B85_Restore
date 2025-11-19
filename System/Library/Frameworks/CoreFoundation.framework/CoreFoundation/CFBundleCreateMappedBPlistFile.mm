@interface CFBundleCreateMappedBPlistFile
@end

@implementation CFBundleCreateMappedBPlistFile

uint64_t ___CFBundleCreateMappedBPlistFile_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(a1 + 32))
  {
    return -1;
  }

  os_unfair_lock_lock_with_options();
  if (a2)
  {
    Mutable = _mappedStringsFiles;
    if (!_mappedStringsFiles)
    {
      Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      _mappedStringsFiles = Mutable;
    }

    Count = CFArrayGetCount(Mutable);
    CFArrayAppendValue(_mappedStringsFiles, a2);
  }

  else
  {
    Count = -1;
  }

  os_unfair_lock_unlock(&_mappedStringsFilesLock);
  return Count;
}

@end