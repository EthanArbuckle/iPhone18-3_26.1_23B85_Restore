@interface CSCopyCommentForServerName
@end

@implementation CSCopyCommentForServerName

uint64_t ___CSCopyCommentForServerName_block_invoke()
{
  _CFStringGetUserDefaultEncoding();
  _CSCopyCommentForServerName_dosEncoding = 1024;
  return CFStringConvertEncodingToWindowsCodepage(0x400u);
}

@end