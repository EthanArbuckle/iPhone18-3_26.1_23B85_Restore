@interface AnyHashable:
- (unint64_t)AnyHashable;
@end

@implementation AnyHashable:

- (unint64_t)AnyHashable
{
  result = lazy protocol witness table cache variable for type [AnyHashable : AnyHashable] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [AnyHashable : AnyHashable] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys11AnyHashableVABGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyHashable : AnyHashable] and conformance <> [A : B]);
  }

  return result;
}

@end