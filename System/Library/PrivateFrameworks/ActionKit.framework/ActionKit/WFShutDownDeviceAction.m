@interface WFShutDownDeviceAction
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (NSString)iconSymbolName;
- (WFShutDownDeviceAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFShutDownDeviceAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23DF0EA74();
}

- (NSString)iconSymbolName
{
  v2 = self;
  sub_23DF0F448();
  v4 = v3;

  if (v4)
  {
    v5 = sub_23E1FDBDC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  sub_23E1FDC1C();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_23DF0F6D4(a3);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (WFShutDownDeviceAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    a5 = sub_23E1FDAAC();
  }

  v10 = a4;
  return sub_23DF0F7CC(v7, v9, a4, a5);
}

@end