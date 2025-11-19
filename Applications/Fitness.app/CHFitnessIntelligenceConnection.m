@interface CHFitnessIntelligenceConnection
- (CHFitnessIntelligenceConnection)init;
@end

@implementation CHFitnessIntelligenceConnection

- (CHFitnessIntelligenceConnection)init
{
  v3 = type metadata accessor for FitnessIntelligenceConnection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  FitnessIntelligenceConnection.init()();
  (*(v4 + 32))(self + OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue, v6, v3);
  v7 = type metadata accessor for FitnessIntelligenceConnectionBridge();
  v9.receiver = self;
  v9.super_class = v7;
  return [(CHFitnessIntelligenceConnection *)&v9 init];
}

@end