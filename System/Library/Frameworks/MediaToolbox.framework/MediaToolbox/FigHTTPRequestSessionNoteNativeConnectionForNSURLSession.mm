@interface FigHTTPRequestSessionNoteNativeConnectionForNSURLSession
@end

@implementation FigHTTPRequestSessionNoteNativeConnectionForNSURLSession

CFTypeRef ___FigHTTPRequestSessionNoteNativeConnectionForNSURLSession_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(*(a1 + 40) + 40);
    if (result != v3)
    {
      if (!v3 || (CFRelease(*(*(a1 + 40) + 40)), *(*(a1 + 40) + 40) = 0, (result = *(a1 + 32)) != 0))
      {
        result = CFRetain(result);
      }

      *(*(a1 + 40) + 40) = result;
    }
  }

  return result;
}

@end