@interface CodableAccessibilityVersionStorage<CodableResolvedStyledText,
- (uint64_t)AccessibilityText>;
- (void)AccessibilityText>;
@end

@implementation CodableAccessibilityVersionStorage<CodableResolvedStyledText,

- (void)AccessibilityText>
{
  if (!lazy cache variable for type metadata for [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>])
  {
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>]);
    }
  }
}

- (uint64_t)AccessibilityText>
{
  result = *self;
  if (!result)
  {
    type metadata accessor for [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>]();
    lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(a2);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end