int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TGOnDeviceInferenceProviderService();
  lazy protocol witness table accessor for type TGOnDeviceInferenceProviderService and conformance InferenceProviderExtension<A>();
  static AppExtension.main()();
  return 0;
}

uint64_t type metadata accessor for TGOnDeviceInferenceProviderService()
{
  result = type metadata singleton initialization cache for TGOnDeviceInferenceProviderService;
  if (!type metadata singleton initialization cache for TGOnDeviceInferenceProviderService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TGOnDeviceInferenceProviderService and conformance InferenceProviderExtension<A>()
{
  result = lazy protocol witness table cache variable for type TGOnDeviceInferenceProviderService and conformance InferenceProviderExtension<A>;
  if (!lazy protocol witness table cache variable for type TGOnDeviceInferenceProviderService and conformance InferenceProviderExtension<A>)
  {
    type metadata accessor for TGOnDeviceInferenceProviderService();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TGOnDeviceInferenceProviderService and conformance InferenceProviderExtension<A>);
  }

  return result;
}

uint64_t TGOnDeviceInferenceProviderService.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return InferenceProviderExtension.init()();
}

uint64_t TGOnDeviceInferenceProviderService.__deallocating_deinit()
{
  v0 = InferenceProviderExtension.deinit();

  return _swift_deallocClassInstance(v0, 16, 7);
}