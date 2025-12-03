@interface WFLockAppAction
- (WFLockAppAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler;
@end

@implementation WFLockAppAction

- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = input;
  v7[3] = v6;
  v7[4] = self;
  inputCopy = input;
  selfCopy = self;

  sub_23DF36144(&unk_23E227FC0, v7);
}

- (WFLockAppAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    parameters = sub_23E1FDAAC();
  }

  definitionCopy = definition;
  return sub_23DED07CC(v7, v9, definition, parameters);
}

@end