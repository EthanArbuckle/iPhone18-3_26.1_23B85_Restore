@interface AudioAnalyticsHWTraceHandleWrapper
- (BOOL)pause;
- (void)dealloc;
- (void)pause;
@end

@implementation AudioAnalyticsHWTraceHandleWrapper

- (void)dealloc
{
  handle = [(AudioAnalyticsHWTraceHandleWrapper *)self handle];
  v4 = gettailspin_cputrace_handle_deinitSymbolLoc();
  if (v4)
  {
    v4(handle);
    v5.receiver = self;
    v5.super_class = AudioAnalyticsHWTraceHandleWrapper;
    [(AudioAnalyticsHWTraceHandleWrapper *)&v5 dealloc];
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

- (BOOL)pause
{
  handle = [(AudioAnalyticsHWTraceHandleWrapper *)self handle];
  v3 = gettailspin_pause_cputraceSymbolLoc();
  if (!v3)
  {
    [AudioAnalyticsHWTraceHandleWrapper pause];
  }

  return v3(handle);
}

- (void)pause
{
  dlerror();
  abort_report_np();
  sub_1C0BEBF28();
}

@end