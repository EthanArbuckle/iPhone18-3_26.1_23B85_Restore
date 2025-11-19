@interface WFImageRemoveBackgroundAction
- (NSArray)disabledOnPlatforms;
- (WFImageRemoveBackgroundAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4;
@end

@implementation WFImageRemoveBackgroundAction

- (NSArray)disabledOnPlatforms
{
  v2 = self;
  sub_23DEC7044();

  type metadata accessor for WFExecutionPlatform(0);
  v3 = sub_23E1FDDCC();

  return v3;
}

- (WFImageRemoveBackgroundAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    a5 = sub_23E1FDAAC();
  }

  v10 = a4;
  return sub_23DEC7100(v7, v9, a4, a5);
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

  sub_23DF36144(&unk_23E227CF8, v7);
}

@end