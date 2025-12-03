@interface FigPWDKeyExchangeSenderTelementryHelper
- (FigPWDKeyExchangeSenderTelementryHelper)init;
- (void)clearTelemetry;
- (void)dealloc;
- (void)sendTelemetry;
- (void)setResultCode:(int)code forKey:(__CFString *)key;
- (void)setTime:(int64_t)time forKey:(__CFString *)key;
- (void)setTimeRange:(int64_t)range end:(int64_t)end forKey:(__CFString *)key;
@end

@implementation FigPWDKeyExchangeSenderTelementryHelper

- (FigPWDKeyExchangeSenderTelementryHelper)init
{
  v4.receiver = self;
  v4.super_class = FigPWDKeyExchangeSenderTelementryHelper;
  v2 = [(FigPWDKeyExchangeSenderTelementryHelper *)&v4 init];
  if (v2)
  {
    v2->_telemetryDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2->_telemetryLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (void)dealloc
{
  telemetryDict = self->_telemetryDict;
  if (telemetryDict)
  {
    CFRelease(telemetryDict);
  }

  v4.receiver = self;
  v4.super_class = FigPWDKeyExchangeSenderTelementryHelper;
  [(FigPWDKeyExchangeSenderTelementryHelper *)&v4 dealloc];
}

- (void)setTime:(int64_t)time forKey:(__CFString *)key
{
  [(NSLock *)self->_telemetryLock lock];
  FigCFDictionarySetInt64();
  telemetryLock = self->_telemetryLock;

  [(NSLock *)telemetryLock unlock];
}

- (void)setTimeRange:(int64_t)range end:(int64_t)end forKey:(__CFString *)key
{
  [(NSLock *)self->_telemetryLock lock];
  FigCFDictionarySetInt64();
  telemetryLock = self->_telemetryLock;

  [(NSLock *)telemetryLock unlock];
}

- (void)setResultCode:(int)code forKey:(__CFString *)key
{
  [(NSLock *)self->_telemetryLock lock];
  FigCFDictionarySetInt32();
  telemetryLock = self->_telemetryLock;

  [(NSLock *)telemetryLock unlock];
}

- (void)sendTelemetry
{
  [(NSLock *)self->_telemetryLock lock];
  if (CFDictionaryGetCount(self->_telemetryDict) >= 1)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], self->_telemetryDict);
    FigCAStatsReportingSubmitDataDict();
    if (Copy)
    {
      CFRelease(Copy);
    }

    CFDictionaryRemoveAllValues(self->_telemetryDict);
  }

  telemetryLock = self->_telemetryLock;

  [(NSLock *)telemetryLock unlock];
}

- (void)clearTelemetry
{
  [(NSLock *)self->_telemetryLock lock];
  CFDictionaryRemoveAllValues(self->_telemetryDict);
  telemetryLock = self->_telemetryLock;

  [(NSLock *)telemetryLock unlock];
}

@end