@interface OSASystemMemoryResetReport
- (OSASystemMemoryResetReport)initWithEvent:(id)event code:(unint64_t)code;
@end

@implementation OSASystemMemoryResetReport

- (OSASystemMemoryResetReport)initWithEvent:(id)event code:(unint64_t)code
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = OSASystemMemoryResetReport;
  v8 = [(OSASystemMemoryResetReport *)&v11 initWithIncidentID:0 visibilityEndowmentState:0 audioAssertionState:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->OSAJetsamReport_opaque[OBJC_IVAR___OSAJetsamReport__event_reason], event);
    *&v9->OSAJetsamReport_opaque[OBJC_IVAR___OSAJetsamReport__event_code] = code;
  }

  return v9;
}

@end