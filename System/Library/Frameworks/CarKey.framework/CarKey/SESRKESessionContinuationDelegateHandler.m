@interface SESRKESessionContinuationDelegateHandler
- (_TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler)init;
- (void)sesSession:(id)a3 didReceiveContinuationRequestFor:(id)a4 actionIdentifier:(id)a5 arbitraryData:(id)a6 fromVehicle:(id)a7;
@end

@implementation SESRKESessionContinuationDelegateHandler

- (void)sesSession:(id)a3 didReceiveContinuationRequestFor:(id)a4 actionIdentifier:(id)a5 arbitraryData:(id)a6 fromVehicle:(id)a7
{
  if (a6)
  {
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a7;
    v16 = self;
    v17 = a6;
    v18 = sub_236ECF684();
    v20 = v19;
  }

  else
  {
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = self;
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