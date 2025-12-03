@interface AttributedString.AnyAttribute:
- (uint64_t)AttributedString.Keys;
- (void)AttributedString.Keys;
@end

@implementation AttributedString.AnyAttribute:

- (void)AttributedString.Keys
{
  if (!lazy cache variable for type metadata for [AttributedString.AnyAttribute : AttributedString.Keys].Keys)
  {
    lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute();
    v0 = type metadata accessor for Dictionary.Keys();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AttributedString.AnyAttribute : AttributedString.Keys].Keys);
    }
  }
}

- (uint64_t)AttributedString.Keys
{
  result = *self;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end