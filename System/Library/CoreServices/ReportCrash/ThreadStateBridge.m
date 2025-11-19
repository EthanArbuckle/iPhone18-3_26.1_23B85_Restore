@interface ThreadStateBridge
+ (id)threadStateTranslationPairWithTask:(unsigned int)a3 cpuType:(int)a4 state:(__darwin_arm_thread_state64 *)a5;
- (_TtC11ReportCrash17ThreadStateBridge)init;
@end

@implementation ThreadStateBridge

+ (id)threadStateTranslationPairWithTask:(unsigned int)a3 cpuType:(int)a4 state:(__darwin_arm_thread_state64 *)a5
{
  sub_10002705C(a3, a4, a5);
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