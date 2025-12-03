@interface NTKParmesanAnalyticsReporter
+ (NTKParmesanAnalyticsReporter)shared;
- (NTKParmesanAnalyticsReporter)init;
- (void)sendAddedNewParmesanFaceEvent:(id)event;
- (void)sendParmesanFaceSnapshotEvent:(id)event;
@end

@implementation NTKParmesanAnalyticsReporter

+ (NTKParmesanAnalyticsReporter)shared
{
  if (qword_27E1DFDE8 != -1)
  {
    swift_once();
  }

  v3 = qword_27E1EB588;

  return v3;
}

- (NTKParmesanAnalyticsReporter)init
{
  *(&self->super.isa + OBJC_IVAR___NTKParmesanAnalyticsReporter_coreAnalyticsNotifyToken) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParmesanAnalyticsReporter();
  return [(NTKParmesanAnalyticsReporter *)&v3 init];
}

- (void)sendParmesanFaceSnapshotEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_23BF846C8(eventCopy);
}

- (void)sendAddedNewParmesanFaceEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_23BF84C44(eventCopy);
}

@end