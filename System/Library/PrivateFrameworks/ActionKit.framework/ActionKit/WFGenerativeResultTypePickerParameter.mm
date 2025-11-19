@interface WFGenerativeResultTypePickerParameter
- (Class)stateClass;
- (id)accessoryIconForPossibleState:(id)a3;
- (id)accessoryImageForPossibleState:(id)a3;
- (id)defaultSerializedRepresentationForEnumeration:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)loadPossibleStatesForEnumeration:(id)a3;
@end

@implementation WFGenerativeResultTypePickerParameter

- (Class)stateClass
{
  sub_23DF2F928();

  return swift_getObjCClassFromMetadata();
}

- (id)accessoryImageForPossibleState:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23DF2F97C();

  return v6;
}

- (id)accessoryIconForPossibleState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23DF2FE20();
  v7 = v6;

  return v7;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23DF30248();
  v10 = v9;

  if (v10)
  {
    v11 = sub_23E1FDBDC();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)loadPossibleStatesForEnumeration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23DF30460();

  return v6;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23DF3141C(v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_23E1FE73C();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end