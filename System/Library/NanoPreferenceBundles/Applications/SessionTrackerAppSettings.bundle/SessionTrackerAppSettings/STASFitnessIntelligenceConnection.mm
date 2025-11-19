@interface STASFitnessIntelligenceConnection
- (STASFitnessIntelligenceConnection)init;
@end

@implementation STASFitnessIntelligenceConnection

- (STASFitnessIntelligenceConnection)init
{
  v3 = sub_227C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227B4();
  (*(v4 + 32))(self + OBJC_IVAR___STASFitnessIntelligenceConnection_bridgedValue, v7, v3);
  v8 = type metadata accessor for FitnessIntelligenceConnectionBridge();
  v10.receiver = self;
  v10.super_class = v8;
  return [(STASFitnessIntelligenceConnection *)&v10 init];
}

@end