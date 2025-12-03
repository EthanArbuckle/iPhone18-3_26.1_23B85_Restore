@interface TableColumnCustomizationID:
- (uint64_t)TableColumnCustomizationEntry;
- (void)TableColumnCustomizationEntry;
@end

@implementation TableColumnCustomizationID:

- (void)TableColumnCustomizationEntry
{
  if (!lazy cache variable for type metadata for [TableColumnCustomizationID : TableColumnCustomizationEntry])
  {
    lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TableColumnCustomizationID : TableColumnCustomizationEntry]);
    }
  }
}

- (uint64_t)TableColumnCustomizationEntry
{
  result = *self;
  if (!result)
  {
    type metadata accessor for [TableColumnCustomizationID : TableColumnCustomizationEntry]();
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end