@interface WFAskLLMAction
+ (id)userInterfaceProtocol;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)visibleForUse:(int64_t)a3;
- (NSArray)outputTypes;
- (WFActionParameterSummary)parameterSummary;
- (WFAskLLMAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)additionalContentDestinations;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
- (void)initializeParameters;
- (void)populateFailedRunEventProperties:(id)a3 withRunError:(id)a4;
- (void)populateSuccessfulRunEventProperties:(id)a3;
- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4;
@end

@implementation WFAskLLMAction

- (WFAskLLMAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    a5 = sub_23E1FDAAC();
  }

  v10 = a4;
  return WFAskLLMAction.init(identifier:definition:serializedParameters:)(v7, v9, a4, a5);
}

+ (id)userInterfaceProtocol
{
  v2 = sub_23DE9DD5C();

  return v2;
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  if (a3)
  {
    sub_23E1FDC1C();
  }

  sub_23E1FDC1C();
  sub_23E1FDC1C();
  v6 = self;
  sub_23DE9DDB8();

  v7 = sub_23E1FDBDC();

  return v7;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v4 = self;
  sub_23DE9E128(a3);
  LOBYTE(a3) = v5;

  return a3 & 1;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_23DE9E710(v5, v4);
  _Block_release(v4);
}

- (id)additionalContentDestinations
{
  v2 = self;
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
  v2 = self;
  v3 = sub_23DE9EB28();

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

  sub_23DF36144(&unk_23E2266B8, v7);
}

- (void)initializeParameters
{
  v2 = self;
  sub_23DEA709C();
}

- (NSArray)outputTypes
{
  v2 = self;
  sub_23DEA7204();

  v3 = sub_23E1FDDCC();

  return v3;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = sub_23E1FDC1C();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  LOBYTE(v6) = WFAskLLMAction.setParameterState(_:forKey:)(a3, v6, v8);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)populateSuccessfulRunEventProperties:(id)a3
{
  v4 = a3;
  v5 = self;
  WFAskLLMAction.populateSuccessfulRunEventProperties(_:)(v4);
}

- (void)populateFailedRunEventProperties:(id)a3 withRunError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  WFAskLLMAction.populateFailedRunEventProperties(_:withRunError:)(v6);
}

@end