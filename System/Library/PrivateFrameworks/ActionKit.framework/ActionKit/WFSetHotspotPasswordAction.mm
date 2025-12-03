@interface WFSetHotspotPasswordAction
- (WFSetHotspotPasswordAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)contentDestinationWithError:(id *)error;
- (id)localizedDescriptionNoteWithContext:(id)context;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler;
@end

@implementation WFSetHotspotPasswordAction

- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = input;
  v7[3] = v6;
  v7[4] = self;
  inputCopy = input;
  selfCopy = self;

  sub_23DF36144(&unk_23E227E50, v7);
}

- (id)localizedDescriptionNoteWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_23DECC2AC(contextCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_23E1FDBDC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contentDestinationWithError:(id *)error
{
  selfCopy = self;
  v4 = sub_23DECC5D8();

  return v4;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  if (description)
  {
    v6 = sub_23E1FDC1C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_23E1FDC1C();
  v11 = v10;
  v12 = sub_23E1FDC1C();
  v14 = v13;
  selfCopy = self;
  sub_23DECC6B8(v6, v8, v9, v11, v12, v14);

  v16 = sub_23E1FDBDC();

  return v16;
}

- (WFSetHotspotPasswordAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    parameters = sub_23E1FDAAC();
  }

  definitionCopy = definition;
  return sub_23DECC91C(v7, v9, definition, parameters);
}

@end