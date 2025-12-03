@interface ThreadStateBridge
+ (id)threadStateTranslationPairWithTask:(unsigned int)task cpuType:(int)type state:(__darwin_arm_thread_state64 *)state;
- (_TtC11ReportCrash17ThreadStateBridge)init;
@end

@implementation ThreadStateBridge

+ (id)threadStateTranslationPairWithTask:(unsigned int)task cpuType:(int)type state:(__darwin_arm_thread_state64 *)state
{
  sub_10002705C(task, type, state);
  if (v5)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (_TtC11ReportCrash17ThreadStateBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ThreadStateBridge();
  return [(ThreadStateBridge *)&v3 init];
}

@end