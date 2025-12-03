@interface SDEDiagnosticFileProvider
- (SDEDiagnosticFileProvider)init;
- (id)files;
@end

@implementation SDEDiagnosticFileProvider

- (id)files
{
  selfCopy = self;
  sub_100002DCC();
  sub_100003068();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100003970;
  *(inited + 32) = sub_10000315C();
  *(inited + 40) = v4;
  *(inited + 48) = sub_10000314C();
  *(inited + 56) = v5;
  *(inited + 64) = sub_10000313C();
  *(inited + 72) = v6;
  sub_100002BB8(inited);

  v7.super.isa = sub_10000327C().super.isa;

  return v7.super.isa;
}

- (SDEDiagnosticFileProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDEDiagnosticFileProvider *)&v3 init];
}

@end