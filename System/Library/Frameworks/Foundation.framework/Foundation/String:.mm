@interface String:
- (uint64_t)Morphology._CustomPronoun;
- (unint64_t)AttributedStringKey.Type;
@end

@implementation String:

- (uint64_t)Morphology._CustomPronoun
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS10Foundation10MorphologyV14_CustomPronounVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (unint64_t)AttributedStringKey.Type
{
  result = lazy protocol witness table cache variable for type [String : AttributedStringKey.Type].Values and conformance [A : B].Values;
  if (!lazy protocol witness table cache variable for type [String : AttributedStringKey.Type].Values and conformance [A : B].Values)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD6ValuesVySS10Foundation19AttributedStringKey_pXp_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : AttributedStringKey.Type].Values and conformance [A : B].Values);
  }

  return result;
}

@end