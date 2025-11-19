@interface FBSystemServiceOpenApplicationRequest
- (NSString)systemServiceDescription;
@end

@implementation FBSystemServiceOpenApplicationRequest

- (NSString)systemServiceDescription
{
  sub_10002C9FC(0, &qword_10032EF80);
  OpenApplicationVerifierRequest.verifierDescription.getter();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end