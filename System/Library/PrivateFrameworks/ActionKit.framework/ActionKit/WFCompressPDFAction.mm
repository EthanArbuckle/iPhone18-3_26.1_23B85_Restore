@interface WFCompressPDFAction
- (WFCompressPDFAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFCompressPDFAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23DED28F8(v4);
}

- (WFCompressPDFAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    a5 = sub_23E1FDAAC();
  }

  v10 = a4;
  return sub_23DED351C(v7, v9, a4, a5);
}

@end