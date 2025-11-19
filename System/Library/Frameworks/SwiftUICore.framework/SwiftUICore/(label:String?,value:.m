@interface (label:String?,value:
- (unint64_t)Any);
@end

@implementation (label:String?,value:

- (unint64_t)Any)
{
  result = lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A])
  {
    type metadata accessor for AGGraphRef?(255, &lazy cache variable for type metadata for [(label: String?, value: Any)], type metadata accessor for (label: String?, value: Any), MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A]);
  }

  return result;
}

@end