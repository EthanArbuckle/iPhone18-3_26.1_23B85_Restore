@interface WFAskLLMAction
+ (id)userInterfaceProtocol;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (BOOL)visibleForUse:(int64_t)use;
- (NSArray)outputTypes;
- (WFActionParameterSummary)parameterSummary;
- (WFAskLLMAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)additionalContentDestinations;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
- (void)initializeParameters;
- (void)populateFailedRunEventProperties:(id)properties withRunError:(id)error;
- (void)populateSuccessfulRunEventProperties:(id)properties;
- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler;
@end

@implementation WFAskLLMAction

- (WFAskLLMAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    parameters = sub_23E1FDAAC();
  }

  definitionCopy = definition;
  return WFAskLLMAction.init(identifier:definition:serializedParameters:)(v7, v9, definition, parameters);
}

+ (id)userInterfaceProtocol
{
  v2 = sub_23DE9DD5C();

  return v2;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  if (description)
  {
    sub_23E1FDC1C();
  }

  sub_23E1FDC1C();
  sub_23E1FDC1C();
  selfCopy = self;
  sub_23DE9DDB8();

  v7 = sub_23E1FDBDC();

  return v7;
}

- (BOOL)visibleForUse:(int64_t)use
{
  selfCopy = self;
  sub_23DE9E128(use);
  LOBYTE(use) = v5;

  return use & 1;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_23DE9E710(selfCopy, v4);
  _Block_release(v4);
}

- (id)additionalContentDestinations
{
  selfCopy = self;
  v3 = sub_23DE9E8F0();

  if (v3)
  {
    sub_23DE38DA8(0, &qword_27E32CD48, 0x277CFC318);
    v4 = sub_23E1FDDCC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFActionParameterSummary)parameterSummary
{
  selfCopy = self;
  v3 = sub_23DE9EB28();

  return v3;
}

- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = input;
  v7[3] = v6;
  v7[4] = self;
  inputCopy = input;
  selfCopy = self;

  sub_23DF36144(&unk_23E2266B8, v7);
}

- (void)initializeParameters
{
  selfCopy = self;
  sub_23DEA709C();
}

- (NSArray)outputTypes
{
  selfCopy = self;
  sub_23DEA7204();

  v3 = sub_23E1FDDCC();

  return v3;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  v6 = sub_23E1FDC1C();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(v6) = WFAskLLMAction.setParameterState(_:forKey:)(state, v6, v8);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)populateSuccessfulRunEventProperties:(id)properties
{
  propertiesCopy = properties;
  selfCopy = self;
  WFAskLLMAction.populateSuccessfulRunEventProperties(_:)(propertiesCopy);
}

- (void)populateFailedRunEventProperties:(id)properties withRunError:(id)error
{
  propertiesCopy = properties;
  errorCopy = error;
  selfCopy = self;
  WFAskLLMAction.populateFailedRunEventProperties(_:withRunError:)(propertiesCopy);
}

@end