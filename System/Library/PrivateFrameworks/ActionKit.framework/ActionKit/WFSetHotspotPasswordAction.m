@interface WFSetHotspotPasswordAction
- (WFSetHotspotPasswordAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)contentDestinationWithError:(id *)a3;
- (id)localizedDescriptionNoteWithContext:(id)a3;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4;
@end

@implementation WFSetHotspotPasswordAction

- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_23DF36144(&unk_23E227E50, v7);
}

- (id)localizedDescriptionNoteWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23DECC2AC(v4);
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

- (id)contentDestinationWithError:(id *)a3
{
  v3 = self;
  v4 = sub_23DECC5D8();

  return v4;
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  if (a3)
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
  v15 = self;
  sub_23DECC6B8(v6, v8, v9, v11, v12, v14);

  v16 = sub_23E1FDBDC();

  return v16;
}

- (WFSetHotspotPasswordAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_23E1FDC1C();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    a5 = sub_23E1FDAAC();
  }

  v10 = a4;
  return sub_23DECC91C(v7, v9, a4, a5);
}

@end