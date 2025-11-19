@interface LSClearCrashMessageAfterDelay
@end

@implementation LSClearCrashMessageAfterDelay

void ___LSClearCrashMessageAfterDelay_block_invoke()
{
  v0 = _LSSetCrashReporterMessage_messagePtr;
  v1 = _LSSetCrashReporterMessage_messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage_messagePtr, &v1, 0, memory_order_relaxed, memory_order_relaxed);
  if (v1 == v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  free(v2);
  qword_1ED444C70 = _LSSetCrashReporterMessage_messagePtr;
}

@end