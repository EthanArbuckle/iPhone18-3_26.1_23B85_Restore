@interface TabCustomizationID:
- (uint64_t)TabCustomizationEntry;
- (uint64_t)TabSectionCustomizationEntry;
- (void)TabCustomizationEntry;
- (void)TabSectionCustomizationEntry;
@end

@implementation TabCustomizationID:

- (void)TabCustomizationEntry
{
  if (!lazy cache variable for type metadata for [TabCustomizationID : TabCustomizationEntry])
  {
    lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TabCustomizationID : TabCustomizationEntry]);
    }
  }
}

- (void)TabSectionCustomizationEntry
{
  if (!lazy cache variable for type metadata for [TabCustomizationID : TabSectionCustomizationEntry])
  {
    lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TabCustomizationID : TabSectionCustomizationEntry]);
    }
  }
}

- (uint64_t)TabCustomizationEntry
{
  result = *self;
  if (!result)
  {
    a2(255);
    lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (uint64_t)TabSectionCustomizationEntry
{
  result = *self;
  if (!result)
  {
    a2(255);
    lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end