@interface String:
- (uint64_t)NSNumber;
- (unint64_t)Data;
- (unint64_t)String;
@end

@implementation String:

- (uint64_t)NSNumber
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

- (unint64_t)String
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

- (unint64_t)Data
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_40_11();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    v2();
    OUTLINED_FUNCTION_51_4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

@end