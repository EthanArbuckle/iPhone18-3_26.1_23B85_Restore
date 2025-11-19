@interface ConformingTuple<Pack{Float,Float,Float,
- (uint64_t)Float}>;
@end

@implementation ConformingTuple<Pack{Float,Float,Float,

- (uint64_t)Float}>
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [ProxyCodable<Color>](255, &lazy cache variable for type metadata for [ConformingTuple<Pack{Float, Float, Float, Float}>], type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>);
    lazy protocol witness table accessor for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end