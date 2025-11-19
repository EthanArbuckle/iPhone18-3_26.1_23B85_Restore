@interface PDFLog
@end

@implementation PDFLog

void ___PDFLog_block_invoke(id a1)
{
  v1 = getprogname();
  sLog = os_log_create("com.apple.CGPDFService", v1);

  _objc_release_x1();
}

@end