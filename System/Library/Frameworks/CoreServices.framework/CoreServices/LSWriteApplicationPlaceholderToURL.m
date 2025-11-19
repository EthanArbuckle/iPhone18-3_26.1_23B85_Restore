@interface LSWriteApplicationPlaceholderToURL
@end

@implementation LSWriteApplicationPlaceholderToURL

void ___LSWriteApplicationPlaceholderToURL_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v3 = _LSWriteBundlePlaceholderToURLInternal(&v9, *(a1 + 32), *(a1 + 40));
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v3, 0, "_LSWriteApplicationPlaceholderToURL_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSAppPlaceholders.mm", 62);
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  (*(v4 + 16))(v4, v6, v5);
  if (v9 && v11 == 1)
  {
    _LSContextDestroy(v9);
  }

  v7 = v10;
  v9 = 0;
  v10 = 0;

  v11 = 0;
  v8 = v12;
  v12 = 0;

  objc_autoreleasePoolPop(v2);
}

@end