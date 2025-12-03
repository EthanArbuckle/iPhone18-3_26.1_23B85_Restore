@interface WFSpotlightSearchResultTypePickerParameter
- (id)accessoryImageForPossibleState:(id)state;
- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)loadPossibleStatesForEnumeration:(id)enumeration;
@end

@implementation WFSpotlightSearchResultTypePickerParameter

- (id)accessoryImageForPossibleState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  v6 = sub_23DE62B70();

  return v6;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  selfCopy = self;
  sub_23DE63198();
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

- (id)loadPossibleStatesForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  v6 = sub_23DE633B0();

  return v6;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  sub_23DE637D8(v14);

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