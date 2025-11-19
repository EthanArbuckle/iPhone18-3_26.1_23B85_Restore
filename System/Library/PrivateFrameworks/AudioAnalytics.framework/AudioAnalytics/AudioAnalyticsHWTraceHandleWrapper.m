@interface AudioAnalyticsHWTraceHandleWrapper
- (BOOL)pause;
- (void)dealloc;
- (void)pause;
@end

@implementation AudioAnalyticsHWTraceHandleWrapper

- (void)dealloc
{
  v3 = [(AudioAnalyticsHWTraceHandleWrapper *)self handle];
  v4 = gettailspin_cputrace_handle_deinitSymbolLoc();
  if (v4)
  {
    v4(v3);
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
  v2 = [(AudioAnalyticsHWTraceHandleWrapper *)self handle];
  v3 = gettailspin_pause_cputraceSymbolLoc();
  if (!v3)
  {
    [AudioAnalyticsHWTraceHandleWrapper pause];
  }

  return v3(v2);
}

- (void)pause
{
  dlerror();
  abort_report_np();
  sub_1C0BEBF28();
}

@end