@interface WFSpotlightSearchAction
- (NSArray)outputTypes;
- (WFSpotlightSearchAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4;
@end

@implementation WFSpotlightSearchAction

- (NSArray)outputTypes
{
  v2 = self;
  sub_23DE4E574();

  v3 = sub_23E1FDDCC();

  return v3;
}

- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_23DF36144(&unk_23E2241A0, v7);
}

- (WFSpotlightSearchAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    a5 = sub_23E1FDAAC();
  }

  v10 = a4;
  return WFSpotlightSearchAction.init(identifier:definition:serializedParameters:)(v7, v9, a4, a5);
}

@end