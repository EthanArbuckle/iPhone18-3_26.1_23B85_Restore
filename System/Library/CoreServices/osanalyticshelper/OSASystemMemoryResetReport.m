@interface OSASystemMemoryResetReport
- (OSASystemMemoryResetReport)initWithEvent:(id)a3 code:(unint64_t)a4;
@end

@implementation OSASystemMemoryResetReport

- (OSASystemMemoryResetReport)initWithEvent:(id)a3 code:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OSASystemMemoryResetReport;
  v8 = [(OSASystemMemoryResetReport *)&v11 initWithIncidentID:0 visibilityEndowmentState:0 audioAssertionState:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->OSAJetsamReport_opaque[OBJC_IVAR___OSAJetsamReport__event_reason], a3);
    *&v9->OSAJetsamReport_opaque[OBJC_IVAR___OSAJetsamReport__event_code] = a4;
  }

  return v9;
}

@end