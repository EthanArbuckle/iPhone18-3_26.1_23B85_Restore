@interface DisplayTransformer
- (id)transformDisplayConfiguration:(id)configuration;
@end

@implementation DisplayTransformer

- (id)transformDisplayConfiguration:(id)configuration
{
  sub_100004C60(&qword_100070530, &qword_10004E1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004DBA0;
  *(inited + 32) = configuration;
  configurationCopy = configuration;
  sub_10000F81C(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  sub_10000F94C();
  sub_10000F998();
  v7.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

@end