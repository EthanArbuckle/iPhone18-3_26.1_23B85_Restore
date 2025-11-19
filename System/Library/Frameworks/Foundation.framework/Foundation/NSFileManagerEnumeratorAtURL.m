@interface NSFileManagerEnumeratorAtURL
@end

@implementation NSFileManagerEnumeratorAtURL

uint64_t ____NSFileManagerEnumeratorAtURL_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2 && ![objc_msgSend(a3 "userInfo")])
  {
    v5 = [objc_msgSend(a3 "userInfo")];
    if (!v5 || ![MEMORY[0x1E695DFF8] fileURLWithPath:v5])
    {
      [MEMORY[0x1E695DFF8] URLWithString:@"com-apple-unexpected-nil-url:"];
    }
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

@end