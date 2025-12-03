@interface WFShutDownDeviceAction
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (NSString)iconSymbolName;
- (WFShutDownDeviceAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFShutDownDeviceAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  sub_23DF0EA74();
}

- (NSString)iconSymbolName
{
  selfCopy = self;
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

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  sub_23E1FDC1C();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_23DF0F6D4(state);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (WFShutDownDeviceAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    parameters = sub_23E1FDAAC();
  }

  definitionCopy = definition;
  return sub_23DF0F7CC(v7, v9, definition, parameters);
}

@end