@interface SDEDiagnosticFileProvider
- (SDEDiagnosticFileProvider)init;
- (id)files;
@end

@implementation SDEDiagnosticFileProvider

- (id)files
{
  selfCopy = self;
  sub_100019AC8();
  sub_100019D64();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EE10;
  *(inited + 32) = static Caches.Default.location.getter();
  *(inited + 40) = v4;
  *(inited + 48) = static Caches.Shared.location.getter();
  *(inited + 56) = v5;
  *(inited + 64) = static Caches.Charts.location.getter();
  *(inited + 72) = v6;
  sub_1000199D4(inited);

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (SDEDiagnosticFileProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDEDiagnosticFileProvider *)&v3 init];
}

@end