@interface SESRKESessionContinuationDelegateHandler
- (_TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler)init;
- (void)sesSession:(id)session didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data fromVehicle:(id)vehicle;
@end

@implementation SESRKESessionContinuationDelegateHandler

- (void)sesSession:(id)session didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data fromVehicle:(id)vehicle
{
  if (data)
  {
    sessionCopy = session;
    forCopy = for;
    identifierCopy = identifier;
    vehicleCopy = vehicle;
    selfCopy = self;
    dataCopy = data;
    v18 = sub_236ECF684();
    v20 = v19;
  }

  else
  {
    sessionCopy2 = session;
    forCopy2 = for;
    identifierCopy2 = identifier;
    selfCopy2 = self;
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  sub_236ECE518(v18, v20);
  sub_236ECE6B0(v18, v20);
}

- (_TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end