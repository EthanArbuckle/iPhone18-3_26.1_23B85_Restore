@interface CFURLCopyFileReferenceURLPath
@end

@implementation CFURLCopyFileReferenceURLPath

CFArrayRef ___CFURLCopyFileReferenceURLPath_block_invoke(uint64_t a1)
{
  values[6] = *MEMORY[0x1E69E9840];
  values[0] = @"NSURLIsDirectoryKey";
  values[1] = @"_NSURLVolumeIsHFSStandardKey";
  values[2] = @"_NSURLVolumeIDKey";
  values[3] = @"_NSURLFileIDKey";
  values[4] = @"_NSURLParentDirectoryIDKey";
  values[5] = @"NSURLNameKey";
  result = CFArrayCreate(*(a1 + 32), values, 6, &kCFTypeArrayCallBacks);
  _CFURLCopyFileReferenceURLPath_sPropertyKeys = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end