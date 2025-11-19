@interface CFXPreferencesDaemon
@end

@implementation CFXPreferencesDaemon

void ____CFXPreferencesDaemon_main_block_invoke()
{
  atomic_fetch_add_explicit(terminating, 1u, memory_order_relaxed);
  _CFPrefsSynchronizeForDaemonTermination();
  exit(0);
}

void ____CFXPreferencesDaemon_main_block_invoke_3(uint64_t a1, void **a2, uint64_t a3)
{
  v18[7] = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
  v6 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  if (a3)
  {
    v7 = MEMORY[0x1E69E9820];
    do
    {
      v8 = *a2++;
      v18[0] = v7;
      v18[1] = 3221225472;
      v18[2] = __dumpDebugInfoCallback_block_invoke;
      v18[3] = &unk_1E6DD2250;
      v18[4] = v8;
      v18[5] = v6;
      v18[6] = Mutable;
      [v8 lockedSync:v18];
      --a3;
    }

    while (a3);
  }

  CFRelease(Mutable);
  v9 = getpid();
  Current = CFAbsoluteTimeGetCurrent();
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"/tmp/cfprefsddump(%d:%f).txt", v9, *&Current);
  v12 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v11, kCFURLPOSIXPathStyle, 0);
  Length = CFStringGetLength(v6);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v15 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0x100004077774924uLL);
  CFStringGetCString(v6, v15, MaximumSizeForEncoding + 1, 0x8000100u);
  v16 = strlen(v15);
  _CFWriteBytesToFile(v12, v15, v16);
  CFRelease(v6);
  CFRelease(v12);
  CFRelease(v11);
  free(v15);
  v17 = *MEMORY[0x1E69E9840];
}

@end