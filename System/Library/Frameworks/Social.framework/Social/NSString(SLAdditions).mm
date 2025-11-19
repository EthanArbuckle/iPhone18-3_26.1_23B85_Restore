@interface NSString(SLAdditions)
- (__CFString)urlEncodedString;
@end

@implementation NSString(SLAdditions)

- (__CFString)urlEncodedString
{
  v1 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], originalString, 0, @":/?#[]@!$&‚Äö√Ñ√¥()*+,;='", 0x8000100u);

  return v1;
}

@end