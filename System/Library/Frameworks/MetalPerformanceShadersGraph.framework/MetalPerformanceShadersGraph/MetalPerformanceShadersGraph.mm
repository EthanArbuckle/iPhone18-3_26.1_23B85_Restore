uint64_t sub_1DF9C0B78()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DF9C0BE8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy28MetalPerformanceShadersGraph16MPSGraphDelegateC11ExecutablesVGMd);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t MPSGraphSegmenter.segment(moduleBytecode:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00]();
  v1 = &v12 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 1, 1, v2);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    URL._bridgeToObjectiveC()(v5);
    v6 = v7;
    (*(v3 + 8))(v1, v2);
  }

  v8 = [objc_allocWithZone(MPSGraphCoreMLCompilerDelegate) initWithCoreMLBytecode:v4.super.isa coreMLDirectory:v6];

  v9 = [v8 getSegmentedCoreMLBytecode];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Compiler.Segmenter.segment(moduleBytecode:) in conformance MPSGraphSegmenter()
{
  return MPSGraphSegmenter.segment(moduleBytecode:)();
}

{
  return Compiler.Segmenter.segment(moduleBytecode:)();
}

id MPSGraphDelegateCompiler.precompilationDescriptor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t MPSGraphDelegateCompiler.compile(moduleBytecode:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00]();
  v6 = &v18 - v5;
  v7 = *v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a3, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v9 + 8))(v6, v8);
  }

  v14 = [objc_allocWithZone(MPSGraphCoreMLCompilerDelegate) initWithCoreMLBytecode:v10.super.isa coreMLDirectory:v12 precompilationDescriptor:v7];

  v15 = [v14 getInitializedCoreMLBytecode];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v16;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MPSGraphDelegateError.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12E41C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MPSGraphDelegateError.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12E41C0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MPSGraphDelegateError.CodingKeys()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MPSGraphDelegateError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MPSGraphDelegateError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MPSGraphDelegateError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPSGraphDelegateError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MPSGraphDelegateError.MissingExecutableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPSGraphDelegateError.MissingExecutableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MPSGraphDelegateError.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO27MissingExecutableCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00]();
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO33CommandQueueUnavailableCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00]();
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO07MissingD16DeviceCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO10CodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00]();
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      lazy protocol witness table accessor for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      lazy protocol witness table accessor for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys);
  }

  return result;
}

Swift::Int MPSGraphDelegateError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12E41C0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance MPSGraphDelegateError@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MPSGraphDelegateError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MPSGraphDelegate.baseModelPackagePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_baseModelPackagePath;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MPSGraphDelegate.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = MPSGraphDelegate.__allocating_init(_:);

  return MPSGraphDelegate.init(_:)(a1);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t MPSGraphDelegate.init(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](MPSGraphDelegate.init(_:), 0, 0);
}

uint64_t MPSGraphDelegate.init(_:)()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v13 = v0[5];
  v14 = v0[9];
  v7 = v0[4];
  DelegateProgramArguments.resourceDirectory.getter();
  v0[2] = 0xD00000000000001DLL;
  v0[3] = 0x80000001E09ACB90;
  (*(v5 + 104))(v4, *MEMORY[0x1E6968F70], v6);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 32))(v13 + OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_baseModelPackagePath, v1, v14);
  v8 = type metadata accessor for DelegateProgramArguments();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(v3 + 8))(v2, v14);
  v9 = v13 + OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_executables;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;

  v10 = v0[1];
  v11 = v0[5];

  return v10(v11);
}

uint64_t MPSGraphDelegate.registerKernels(for:with:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a3;
  v7 = type metadata accessor for URL.DirectoryHint();
  v99 = *(v7 - 8);
  (MEMORY[0x1EEE9AC00])();
  v9 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v100 = *(v10 - 8);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v88 - v14;
  v16 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MTLCreateSystemDefaultDevice();
  if (!v18)
  {
    lazy protocol witness table accessor for type MPSGraphDelegateError and conformance MPSGraphDelegateError();
    swift_allocError();
    *v86 = 0;
    return swift_willThrow();
  }

  v98 = v10;
  v19 = v18;
  v111 = [v18 newCommandQueue];
  if (!v111)
  {
    lazy protocol witness table accessor for type MPSGraphDelegateError and conformance MPSGraphDelegateError();
    swift_allocError();
    *v87 = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v91 = v19;
  v20 = &v3[OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_executables];
  os_unfair_lock_lock(&v3[OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_executables]);
  v21 = *&v20[4]._os_unfair_lock_opaque;
  v92 = v20;
  v88[1] = v4;
  v88[0] = a1;
  if (v21 || *(a2 + 16) != 1)
  {
    goto LABEL_7;
  }

  v96 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE24DelegateProgramArgumentsVSgMd);
  v95 = v88;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v97 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v88 - v97;
  type metadata accessor for ProgramDescriptor();
  v25 = MEMORY[0x1E12E3E20](0x687061724753504DLL, 0xE800000000000000);
  MEMORY[0x1EEE9AC00](v25);
  v26 = v88 - v97;
  v97 = v24;
  outlined init with copy of DelegateProgramArguments?(v24, v26, &_s4ODIE24DelegateProgramArgumentsVSgMd);
  v27 = type metadata accessor for DelegateProgramArguments();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    DelegateProgramArguments.resourceDirectory.getter();
    (*(v28 + 8))(v26, v27);
    *&v106 = 0xD00000000000001DLL;
    *(&v106 + 1) = 0x80000001E09ACB90;
    v29 = v99;
    (*(v99 + 104))(v9, *MEMORY[0x1E6968F70], v7);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(path:directoryHint:)();
    (*(v29 + 8))(v9, v7);
    v30 = [objc_allocWithZone(MPSGraphCompilationDescriptor) init];
    [v30 setOptimizationLevel_];
    [v30 setEnableANECValidationWorkflow_];
    [v30 setPreferredDevice_];
    [v30 setEnableANECHWRankPromotion_];
    [v30 setAneCompilerSpatialSplitting_];
    [v30 setCompilerOptions_];
    v31 = objc_allocWithZone(MPSGraphExecutable);
    v32 = v30;
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v36 = [v31 initWithMPSGraphPackageAtURL:v34 compilationDescriptor:v32];

    v37 = *&v20[4]._os_unfair_lock_opaque;
    *&v20[4]._os_unfair_lock_opaque = v36;

    v38 = *&v20[4]._os_unfair_lock_opaque;
    v39 = objc_allocWithZone(MPSGraphExecutable);
    URL._bridgeToObjectiveC()(&v112);
    v41 = v40;
    v42 = v39;
    v20 = v92;
    v43 = [v42 initWithMPSGraphPackageAtURL:v41 adapterExecutable:v38 compilationDescriptor:v32];

    v44 = v100[1];
    v45 = v13;
    v46 = v98;
    v44(v45, v98);
    v44(v15, v46);
    outlined destroy of DelegateProgramArguments?(v97, &_s4ODIE24DelegateProgramArgumentsVSgMd);
    v47 = *&v20[2]._os_unfair_lock_opaque;
    *&v20[2]._os_unfair_lock_opaque = v43;

LABEL_7:
    if (!*&v20[2]._os_unfair_lock_opaque)
    {
      v48 = [objc_allocWithZone(MPSGraphCompilationDescriptor) init];
      [v48 setOptimizationLevel_];
      [v48 setEnableANECValidationWorkflow_];
      [v48 setPreferredDevice_];
      [v48 setEnableANECHWRankPromotion_];
      [v48 setAneCompilerSpatialSplitting_];
      [v48 setCompilerOptions_];
      v49 = *&v20[4]._os_unfair_lock_opaque;
      v50 = objc_allocWithZone(MPSGraphExecutable);
      URL._bridgeToObjectiveC()(v51);
      v53 = v52;
      v54 = [v50 initWithMPSGraphPackageAtURL:v52 adapterExecutable:v49 compilationDescriptor:v48];

      v55 = *&v20[2]._os_unfair_lock_opaque;
      *&v20[2]._os_unfair_lock_opaque = v54;
    }

    v56 = DelegateFunctionArguments.groups.getter();
    v57 = v56;
    v90 = *(v56 + 16);
    if (!v90)
    {
LABEL_18:

      os_unfair_lock_unlock(v92);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v58 = 0;
    v89 = v56;
    while (v58 < *(v57 + 16))
    {
      v68 = type metadata accessor for DelegateFunctionArguments.IsolatedGroup();
      v100 = v88;
      v69 = *(v68 - 8);
      MEMORY[0x1EEE9AC00](v68);
      v71 = v88 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
      v72 = *(v69 + 16);
      v99 = v73;
      v72(v71);
      v74 = DelegateFunctionArguments.IsolatedGroup.data.getter();
      v76 = v75;
      static String.Encoding.utf8.getter();
      v77 = String.init(data:encoding:)();
      v79 = v78;
      outlined consume of Data._Representation(v74, v76);
      if (!v79)
      {
        goto LABEL_24;
      }

      v80 = v92;
      v81 = *&v92[2]._os_unfair_lock_opaque;
      if (!v81)
      {
        goto LABEL_22;
      }

      v82 = v81;
      v83 = MEMORY[0x1E12E3FE0](v77, v79);
      v84 = [v82 getStateInputPositionsWithEntryFunctionName_];

      if (v84)
      {
        type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber);
        v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v95 = 0;
      }

      ++v58;
      v98 = DelegateFunctionArguments.IsolatedGroup.kernelName.getter();
      v97 = v59;
      v96 = *&v80[4]._os_unfair_lock_opaque;
      v60 = v96;
      v61 = objc_allocWithZone(MPSGraphExecutableExecutionDescriptor);
      v62 = v60;
      swift_unknownObjectRetain();

      v63 = v82;
      v64 = v91;
      swift_unknownObjectRetain_n();
      v65 = v63;
      v66 = [v61 init];
      v67 = MEMORY[0x1E12E3FE0](v77, v79);

      [v66 setEntryFunctionName_];

      [v66 setEncodeANEDisableSharedEvents_];
      [objc_opt_self() prepareExecDescriptorAndRuntimeSpecialization:v65 device:v64 executableExecutionDescriptor:v66];

      swift_unknownObjectRelease();
      *&v106 = v98;
      *(&v106 + 1) = v97;
      *&v107 = v65;
      *(&v107 + 1) = v96;
      *&v108 = v64;
      *(&v108 + 1) = v111;
      *&v109 = v77;
      *(&v109 + 1) = v79;
      *&v110 = v95;
      *(&v110 + 1) = v66;
      v103 = v108;
      v104 = v109;
      v105 = v110;
      v101 = v106;
      v102 = v107;
      lazy protocol witness table accessor for type MPSGraphDelegateKernel and conformance MPSGraphDelegateKernel();
      KernelRegistry.register<A>(_:)();

      (*(v69 + 8))(v71, v99);
      outlined destroy of MPSGraphDelegateKernel(&v106);
      v57 = v89;
      if (v90 == v58)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
LABEL_24:
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  MEMORY[0x1E12E4020](0xD000000000000021, 0x80000001E09ACBF0);
  type metadata accessor for DelegateFunctionArguments();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void MPSGraphDelegateKernel.init(name:executable:adapterExecutable:gDevice:gCommandQueue:functionName:stateIndices:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v18 = objc_allocWithZone(MPSGraphExecutableExecutionDescriptor);
  v19 = a3;
  swift_unknownObjectRetain();

  v20 = [v18 init];
  v21 = MEMORY[0x1E12E3FE0](a7, a8);

  [v20 setEntryFunctionName_];

  [v20 setEncodeANEDisableSharedEvents_];
  [objc_opt_self() prepareExecDescriptorAndRuntimeSpecialization:v19 device:a5 executableExecutionDescriptor:v20];

  swift_unknownObjectRelease();
  *a9 = a1;
  a9[1] = a2;
  a9[2] = v19;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = v20;
}

uint64_t MPSGraphDelegate.deinit()
{
  v1 = OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_baseModelPackagePath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of MPSGraphDelegate.Executables(v0 + OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_executables + 8);
  return v0;
}

uint64_t MPSGraphDelegate.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_baseModelPackagePath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of MPSGraphDelegate.Executables(v0 + OBJC_IVAR____TtC28MetalPerformanceShadersGraph16MPSGraphDelegate_executables + 8);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t protocol witness for Delegate.init(_:) in conformance MPSGraphDelegate(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Delegate.init(_:) in conformance MPSGraphDelegate;

  return MPSGraphDelegate.init(_:)(a2);
}

uint64_t protocol witness for Delegate.init(_:) in conformance MPSGraphDelegate(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MPSGraphDelegateKernelError.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12E41C0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MPSGraphDelegateKernelError.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12E41C0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MPSGraphDelegateKernelError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001E09ACCF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MPSGraphDelegateKernelError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPSGraphDelegateKernelError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys(uint64_t a1)
{
  MTLBufferCodingKeys = lazy protocol witness table accessor for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, MTLBufferCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys(uint64_t a1)
{
  MTLBufferCodingKeys = lazy protocol witness table accessor for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, MTLBufferCodingKeys);
}

uint64_t MPSGraphDelegateKernelError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph27MPSGraphDelegateKernelErrorO33FailedToCreateMTLBufferCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph27MPSGraphDelegateKernelErrorO10CodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

Swift::Int MPSGraphDelegateKernelError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12E41C0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MPSGraphDelegateKernelError(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph27MPSGraphDelegateKernelErrorO33FailedToCreateMTLBufferCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy28MetalPerformanceShadersGraph27MPSGraphDelegateKernelErrorO10CodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t MPSGraphDelegateKernel.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MPSGraphDelegateKernel.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *MPSGraphDelegateKernel.adapterExecutable.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t MPSGraphDelegateKernel.functionName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

id MPSGraphDelegateKernel.convertOperand(operand:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7OperandOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v44 - v5);
  outlined init with copy of DelegateProgramArguments?(a1, &v44 - v5, &_s4ODIE7OperandOSgMd);
  v7 = type metadata accessor for Operand();
  v8 = *(v7 - 1);
  if ((v8[6])(v6, 1, v7) == 1)
  {
    outlined destroy of DelegateProgramArguments?(v6, &_s4ODIE7OperandOSgMd);
    goto LABEL_49;
  }

  v44 = v1;
  v9 = (v8[11])(v6, v7);
  if (!MEMORY[0x1E69B7BD0] || v9 != *MEMORY[0x1E69B7BD0])
  {
    goto LABEL_47;
  }

  v10 = 536870916;
  (v8[12])(v6, v7);
  v11 = *v6;
  v12 = type metadata accessor for ScalarType();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  NDArray.scalarType.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (!MEMORY[0x1E69B7B70] || v16 != *MEMORY[0x1E69B7B70])
  {
    if (MEMORY[0x1E69B7B78] && v16 == *MEMORY[0x1E69B7B78])
    {
      v10 = 536870920;
    }

    else if (MEMORY[0x1E69B7B80] && v16 == *MEMORY[0x1E69B7B80])
    {
      v10 = 536870944;
    }

    else if (MEMORY[0x1E69B7B88] && v16 == *MEMORY[0x1E69B7B88])
    {
      v10 = 16;
    }

    else
    {
      v10 = 268435472;
      if (!MEMORY[0x1E69B7B90] || v16 != *MEMORY[0x1E69B7B90])
      {
        if (!MEMORY[0x1E69B7B98] || v16 != *MEMORY[0x1E69B7B98])
        {
          goto LABEL_49;
        }

        v10 = 268435488;
      }
    }
  }

  v45 = v10;
  v46 = v2;
  v17 = type metadata accessor for NDArray.Buffer();
  v8 = &v44;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  NDArray.buffer.getter();
  v21 = type metadata accessor for NDArray.Buffer.Allocation();
  v7 = &v44;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = (&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  NDArray.Buffer.allocation.getter();
  (*(v18 + 8))(v20, v17);
  v24 = (*(v22 + 88))(v6, v21);
  if (!MEMORY[0x1E69B7BC0] || v24 != *MEMORY[0x1E69B7BC0])
  {
    if (MEMORY[0x1E69B7BC8] && v24 == *MEMORY[0x1E69B7BC8])
    {
      (*(v22 + 96))(v6, v21);
      v28 = *v6;
      v27 = bufferFromIOSurface(v44[4], *v6);

      goto LABEL_31;
    }

    if (MEMORY[0x1E69B7BB8] && v24 == *MEMORY[0x1E69B7BB8])
    {
      (*(v22 + 96))(v6, v21);
      v27 = *v6;
      goto LABEL_31;
    }

    while (1)
    {
LABEL_49:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  (*(v22 + 96))(v6, v21);
  v25 = NDArray.Bytes.buffer.getter();
  if (!v25)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    (v8[1])(v6, v7);
    goto LABEL_49;
  }

  v6 = v25;
  v26 = v47;
  v27 = [v44[4] newBufferWithBytesNoCopy:v25 length:NDArray.byteCount.getter() options:0 deallocator:0];

  if (!v27)
  {
    lazy protocol witness table accessor for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError();
    swift_allocError();
    swift_willThrow();

    return v26;
  }

LABEL_31:
  swift_unknownObjectRetain();
  v29 = NDArray.strides.getter();
  v30 = *(v29 + 16);
  if (!v30)
  {
    __break(1u);
    goto LABEL_46;
  }

  v31 = v29;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = v30 - 1;
  if (v30 == 1)
  {
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 40;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 8;
      --v33;
    }

    while (v33);

    v32 = MEMORY[0x1E69E7CC0];
  }

  v35 = NDArray.interleave.getter();
  v36 = *(v35 + 16);
  if (v36)
  {
    v44 = v27;
    v48 = v32;
    specialized ContiguousArray.reserveCapacity(_:)();
    v37 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v37 += 8;
      --v36;
    }

    while (v36);

    v27 = v44;
  }

  else
  {
  }

  v38 = NDArray.shape.getter();
  specialized _arrayForceCast<A, B>(_:)(v38);

  v39 = objc_allocWithZone(MPSGraphTensorData);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = Array._bridgeToObjectiveC()().super.isa;

  v42 = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v39 initWithMTLBuffer:v27 shape:isa strides:v41 interleaves:v42 dataType:v45];

  swift_unknownObjectRelease_n();

  return v26;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      Int._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t MPSGraphDelegateKernel.inferValue(inputs:outputs:symbol:kernelContext:)(void *a1, void *a2, uint64_t a3)
{
  v105 = a3;
  v4 = *(v3 + 64);
  v5 = *a2;
  v111 = a1;
  v116 = v5;
  if (!v4)
  {

    v74 = v111;
    goto LABEL_58;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_4ODIE7OperandOSg7elementtSgMd);
  v103 = &v103;
  v108 = *(*(v7 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = v9;
  v106 = (&v103 - v9);
  v10 = 0;
  v128 = 0;
  v11 = 0;
  v12 = v5[2];
  v125 = v6 & 0xC000000000000001;
  v126 = 0;
  v118 = v6 & 0xFFFFFFFFFFFFFF8;
  v120 = v6;
  v117 = v6 + 32;
  v129 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  v104 = v12;
  while (1)
  {
    MEMORY[0x1EEE9AC00](v8);
    v14 = &v103 - v107;
    if (v11 == v12)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_4ODIE7OperandOSg7elementtMd);
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      if (v11 >= v5[2])
      {
        goto LABEL_82;
      }

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7OperandOSgMd) - 8);
      v127 = (v11 + 1);
      v17 = v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_4ODIE7OperandOSg7elementtMd);
      v19 = *(v18 - 8);
      v20 = MEMORY[0x1EEE9AC00](v18);
      v22 = (&v103 - v21);
      v23 = *(v20 + 48);
      *v22 = v24;
      outlined init with copy of DelegateProgramArguments?(v17, v22 + v23, &_s4ODIE7OperandOSgMd);
      outlined init with take of (offset: Int, element: Operand?)(v22, v14, &_sSi6offset_4ODIE7OperandOSg7elementtMd);
      (*(v19 + 56))(v14, 0, 1, v18);
      v12 = v127;
    }

    v25 = v14;
    v26 = v106;
    outlined init with take of (offset: Int, element: Operand?)(v25, v106, &_sSi6offset_4ODIE7OperandOSg7elementtSgMd);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_4ODIE7OperandOSg7elementtMd);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      v14 = v111[2];
      if (v10 < v14)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_48;
        }

        goto LABEL_89;
      }

      v74 = v129;
      v116 = v110;
      goto LABEL_57;
    }

    v113 = v12;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7OperandOSgMd);
    v112 = &v103;
    v124 = *(v28 - 8);
    v114 = *(v124 + 64);
    MEMORY[0x1EEE9AC00](v28 - 8);
    v29 = *v26;
    v30 = v26 + *(v27 + 48);
    v115 = &v103 - v31;
    outlined init with take of (offset: Int, element: Operand?)(v30, &v103 - v31, &_s4ODIE7OperandOSgMd);
    v32 = type metadata accessor for Intent();
    v127 = &v103;
    v14 = *(v32 - 8);
    v33 = *(v14 + 8);
    MEMORY[0x1EEE9AC00](v32);
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v14 + 13))(&v103 - v34, *MEMORY[0x1E69B7BB0], v32);
    v35 = SymbolDescriptor.outputIntents.getter();
    MEMORY[0x1EEE9AC00](v35);
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    if (v29 >= *(v35 + 16))
    {
      goto LABEL_80;
    }

    (*(v14 + 2))(&v103 - v34, v35 + ((v14[80] + 32) & ~v14[80]) + *(v14 + 9) * v29, v32);

    v36 = MEMORY[0x1E12E3EB0](&v103 - v34, &v103 - v34);
    v37 = *(v14 + 1);
    v14 += 8;
    v37(&v103 - v34, v32);
    v38 = (v37)(&v103 - v34, v32);
    if ((v36 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v38);
      v53 = &v103 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = v115;
      outlined init with copy of DelegateProgramArguments?(v115, v53, &_s4ODIE7OperandOSgMd);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
      }

      v12 = v104;
      v56 = v110[2];
      v55 = v110[3];
      if (v56 >= v55 >> 1)
      {
        v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v110);
      }

      outlined destroy of DelegateProgramArguments?(v54, &_s4ODIE7OperandOSgMd);
      v13 = v110;
      v110[2] = v56 + 1;
      v8 = outlined init with take of (offset: Int, element: Operand?)(v53, v13 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v56, &_s4ODIE7OperandOSgMd);
      goto LABEL_4;
    }

    v39 = v115;
    if (v125)
    {
      v40 = MEMORY[0x1E12E4080](v126, v120);
    }

    else
    {
      if ((v126 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      if (v126 >= *(v118 + 16))
      {
        goto LABEL_86;
      }

      v40 = *(v117 + 8 * v126);
    }

    v41 = v40;
    v14 = Int.init(truncating:)();

    if (v128 < v14)
    {
      v42 = type metadata accessor for Operand();
      v127 = v42;
      v43 = *(v42 - 8);
      v44 = v43;
      v123 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v122 = v111 + v123;
      v124 = v111[2];
      v45 = *(v43 + 64);
      v121 = v43 + 16;
      do
      {
        MEMORY[0x1EEE9AC00](v42);
        if (v10 >= v124)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v48 = *(v44 + 72);
        (*(v44 + 16))(&v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), &v122[v48 * v10], v127);
        v14 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129[2] + 1, 1, v129);
        }

        v10 = v129[2];
        v49 = v129[3];
        if (v10 >= v49 >> 1)
        {
          v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v10 + 1, 1, v129);
        }

        v50 = v129;
        v129[2] = v10 + 1;
        (*(v44 + 32))(&v50[v123 + v10 * v48], &v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v127);
        v51 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_74;
        }

        v10 = v14;
        if (v125)
        {
          v46 = MEMORY[0x1E12E4080](v126, v120);
        }

        else
        {
          if ((v126 & 0x8000000000000000) != 0)
          {
            goto LABEL_75;
          }

          if (v126 >= *(v118 + 16))
          {
            goto LABEL_76;
          }

          v46 = *(v117 + 8 * v126);
        }

        v41 = v46;
        v14 = v128 + 1;
        v47 = Int.init(truncating:)();

        ++v10;
        v128 = v14;
      }

      while (v14 < v47);
      v10 = v51;
      v39 = v115;
    }

    MEMORY[0x1EEE9AC00](v42);
    v14 = &v103 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of DelegateProgramArguments?(v39, v14, &_s4ODIE7OperandOSgMd);
    v58 = type metadata accessor for Operand();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v14, 1, v58) == 1)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129[2] + 1, 1, v129);
    }

    v61 = v129[2];
    v60 = v129[3];
    if (v61 >= v60 >> 1)
    {
      v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v129);
    }

    outlined destroy of DelegateProgramArguments?(v39, &_s4ODIE7OperandOSgMd);
    v62 = v129;
    v129[2] = v61 + 1;
    v8 = (*(v59 + 32))(v62 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v61, v14, v58);
    if (__OFADD__(v128++, 1))
    {
      goto LABEL_87;
    }

    if (__OFADD__(v126, 1))
    {
      while (1)
      {
        __break(1u);
LABEL_89:
        v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129[2] + 1, 1, v129);
LABEL_48:
        v64 = type metadata accessor for Operand();
        v128 = v64;
        v65 = *(v64 - 8);
        v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v125 = v111 + v66;
        v126 = v66;
        v67 = *(v65 + 64);
        v124 = v65 + 16;
        v127 = v65;
        v68 = (v65 + 32);
        v69 = v129;
        do
        {
          MEMORY[0x1EEE9AC00](v64);
          if (v10 >= v14)
          {
            goto LABEL_83;
          }

          v70 = v127[9];
          v71 = v10;
          (v127[2])(&v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v125 + v70 * v10, v128);
          v72 = v69;
          v10 = v69[2];
          v73 = v69[3];
          if (v10 >= v73 >> 1)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v10 + 1, 1, v69);
          }

          *(v72 + 16) = v10 + 1;
          v69 = v72;
          v64 = (*v68)(v72 + v126 + v10 * v70, &v103 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v128);
          if (__OFADD__(v71, 1))
          {
            goto LABEL_84;
          }

          v10 = v71 + 1;
        }

        while ((v71 + 1) < v14);
        v116 = v110;
        v74 = v69;
LABEL_57:
        v3 = v109;
LABEL_58:
        v75 = v74[2];
        v14 = MEMORY[0x1E69E7CC0];
        v111 = v74;
        if (v75)
        {
          v131 = MEMORY[0x1E69E7CC0];
          outlined init with copy of MPSGraphDelegateKernel(v3, v130);
          specialized ContiguousArray.reserveCapacity(_:)();
          v76 = type metadata accessor for Operand();
          v10 = 0;
          v77 = *(v76 - 8);
          v129 = (v74 + ((*(v77 + 80) + 32) & ~*(v77 + 80)));
          v128 = (v77 + 16);
          v126 = v76;
          v127 = (v77 + 56);
          while (v10 < v74[2])
          {
            v78 = v129 + *(v77 + 72) * v10;
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7OperandOSgMd);
            v14 = &v103;
            MEMORY[0x1EEE9AC00](v79 - 8);
            v41 = &v103 - v80;
            v81 = v78;
            v82 = v126;
            (*(v77 + 16))(&v103 - v80, v81, v126);
            (*(v77 + 56))(v41, 0, 1, v82);
            v83 = v119;
            MPSGraphDelegateKernel.convertOperand(operand:)(v41);
            v119 = v83;
            if (v83)
            {
              goto LABEL_91;
            }

            ++v10;
            outlined destroy of DelegateProgramArguments?(v41, &_s4ODIE7OperandOSgMd);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v74 = v111;
            if (v75 == v10)
            {
              v3 = v109;
              outlined destroy of MPSGraphDelegateKernel(v109);
              v84 = v131;
              v14 = MEMORY[0x1E69E7CC0];
              goto LABEL_65;
            }
          }

LABEL_77:
          __break(1u);
        }

        else
        {
          v84 = MEMORY[0x1E69E7CC0];
LABEL_65:
          v85 = swift_allocObject();
          v86 = *(v3 + 64);
          *(v85 + 64) = *(v3 + 48);
          *(v85 + 80) = v86;
          v87 = *(v3 + 32);
          *(v85 + 32) = *(v3 + 16);
          *(v85 + 48) = v87;
          *(v85 + 16) = *v3;
          v88 = v116;
          v89 = v116[2];
          if (!v89)
          {
            outlined init with copy of MPSGraphDelegateKernel(v3, v130);

            v96 = v3;
LABEL_72:
            v97 = objc_autoreleasePoolPush();
            v98 = [objc_opt_self() commandBufferFromCommandQueue_];
            v99 = v96[2];
            type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MPSGraphTensorData);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v101 = Array._bridgeToObjectiveC()().super.isa;

            [v98 commit];
            [v98 waitUntilCompleted];

            objc_autoreleasePoolPop(v97);
          }

          v129 = v85;
          v126 = v84;
          v131 = v14;
          outlined init with copy of MPSGraphDelegateKernel(v3, v130);
          specialized ContiguousArray.reserveCapacity(_:)();
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7OperandOSgMd);
          v91 = 0;
          v93 = *(v90 - 8);
          v92 = v90 - 8;
          v128 = v93;
          v127 = (v88 + ((v128[80] + 32) & ~v128[80]));
          v10 = *(v93 + 8);
          while (1)
          {
            MEMORY[0x1EEE9AC00](v92);
            v41 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
            if (v91 >= v116[2])
            {
              break;
            }

            outlined init with copy of DelegateProgramArguments?(v127 + *(v128 + 9) * v91, &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &_s4ODIE7OperandOSgMd);
            v94 = v119;
            v95 = partial apply for implicit closure #4 in implicit closure #3 in MPSGraphDelegateKernel.inferValue(inputs:outputs:symbol:kernelContext:)(&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
            v119 = v94;
            if (v94)
            {
              goto LABEL_92;
            }

            v14 = v95;
            ++v91;
            outlined destroy of DelegateProgramArguments?(&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &_s4ODIE7OperandOSgMd);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v92 = specialized ContiguousArray._endMutation()();
            if (v89 == v91)
            {

              v96 = v109;
              goto LABEL_72;
            }
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
      }
    }

    ++v126;
    v12 = v104;
LABEL_4:
    v5 = v116;
    v11 = v113;
  }

  __break(1u);
LABEL_91:
  outlined destroy of DelegateProgramArguments?(v41, &_s4ODIE7OperandOSgMd);
  outlined destroy of MPSGraphDelegateKernel(v109);

  swift_unexpectedError();
  __break(1u);
LABEL_92:
  outlined destroy of DelegateProgramArguments?(v41, &_s4ODIE7OperandOSgMd);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t protocol witness for Kernel.name.getter in conformance MPSGraphDelegateKernel()
{
  v1 = *v0;

  return v1;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4ODIE7OperandOSgGMd);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7OperandOSgMd) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7OperandOSgMd) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4ODIE7OperandOGMd);
  v10 = *(type metadata accessor for Operand() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Operand() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized MPSGraphDelegateError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001E09ACC90 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E09ACCB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E09ACCD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized MPSGraphDelegateError.init(from:)(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO27MissingExecutableCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00]();
  v33 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO33CommandQueueUnavailableCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00]();
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO07MissingD16DeviceCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28MetalPerformanceShadersGraph21MPSGraphDelegateErrorO10CodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v26 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MPSGraphDelegateError.CodingKeys and conformance MPSGraphDelegateError.CodingKeys();
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v21 = &type metadata for MPSGraphDelegateError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    lazy protocol witness table accessor for type MPSGraphDelegateError.MissingMetalDeviceCodingKeys and conformance MPSGraphDelegateError.MissingMetalDeviceCodingKeys();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    lazy protocol witness table accessor for type MPSGraphDelegateError.CommandQueueUnavailableCodingKeys and conformance MPSGraphDelegateError.CommandQueueUnavailableCodingKeys();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  lazy protocol witness table accessor for type MPSGraphDelegateError.MissingExecutableCodingKeys and conformance MPSGraphDelegateError.MissingExecutableCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v36;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateError and conformance MPSGraphDelegateError()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError and conformance MPSGraphDelegateError;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError and conformance MPSGraphDelegateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError and conformance MPSGraphDelegateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateError and conformance MPSGraphDelegateError;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateError and conformance MPSGraphDelegateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateError and conformance MPSGraphDelegateError);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateKernel and conformance MPSGraphDelegateKernel()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernel and conformance MPSGraphDelegateKernel;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernel and conformance MPSGraphDelegateKernel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernel and conformance MPSGraphDelegateKernel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys);
  }

  return result;
}

uint64_t specialized MPSGraphDelegateKernelError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28MetalPerformanceShadersGraph27MPSGraphDelegateKernelErrorO33FailedToCreateMTLBufferCodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy28MetalPerformanceShadersGraph27MPSGraphDelegateKernelErrorO10CodingKeys33_6D50CC86E2CCE881D418F1204106A462LLOGMd);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MPSGraphDelegateKernelError.CodingKeys and conformance MPSGraphDelegateKernelError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      lazy protocol witness table accessor for type MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys and conformance MPSGraphDelegateKernelError.FailedToCreateMTLBufferCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = type metadata accessor for DecodingError();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v13 = &type metadata for MPSGraphDelegateKernelError;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t outlined destroy of DelegateProgramArguments?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of DelegateProgramArguments?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: Operand?)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for MPSGraphDelegate()
{
  result = type metadata singleton initialization cache for MPSGraphDelegate;
  if (!type metadata singleton initialization cache for MPSGraphDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegateKernelError and conformance MPSGraphDelegateKernelError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MPSGraphDelegateCompiler(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MPSGraphDelegateCompiler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for MPSGraphDelegate()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MPSGraphDelegate.__allocating_init(_:)(uint64_t a1)
{
  v6 = (*(v1 + 96) + **(v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of MPSGraphDelegate.__allocating_init(_:);

  return v6(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MPSGraphDelegate.Executables(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MPSGraphDelegate.Executables(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MPSGraphDelegateKernel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MPSGraphDelegateKernel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MPSGraphSegmenter(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MPSGraphSegmenter(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MPSGraphDelegateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MPSGraphDelegateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MPSGraphDelegate and conformance MPSGraphDelegate(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MPSGraphDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

BOOL ZinGetString(CFStringRef theString, uint64_t a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    if (theString)
    {
      goto LABEL_3;
    }

    return 0;
  }

  **a2 = 0;
  *(a2 + 8) = 0;
  if (!theString)
  {
    return 0;
  }

LABEL_3:
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    if (v6 <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = v6;
      if (v6 >= 0x17)
      {
        if ((v6 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v6 | 7) + 1;
        }

        p_dst = operator new(v14);
        __dst.__r_.__value_.__l.__size_ = v7;
        __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v6;
        p_dst = &__dst;
        if (!v6)
        {
          goto LABEL_19;
        }
      }

      memmove(p_dst, v5, v7);
LABEL_19:
      p_dst->__r_.__value_.__s.__data_[v7] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __dst;
      return 1;
    }

LABEL_46:
    std::string::__throw_length_error[abi:ne200100]();
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v12 = MaximumSizeForEncoding + 1;
  if ((MaximumSizeForEncoding + 1) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_46;
  }

  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v13 = operator new(v15);
    __dst.__r_.__value_.__l.__size_ = v12;
    __dst.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v13;
    goto LABEL_26;
  }

  *(&__dst.__r_.__value_.__s + 23) = MaximumSizeForEncoding + 1;
  v13 = &__dst;
  if (MaximumSizeForEncoding != -1)
  {
LABEL_26:
    bzero(v13, v12);
  }

  v13->__r_.__value_.__s.__data_[v12] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__dst;
  }

  else
  {
    v16 = __dst.__r_.__value_.__r.__words[0];
  }

  CString = CFStringGetCString(theString, v16, v12, 0x8000100u);
  result = CString != 0;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v19 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (CString)
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = __dst.__r_.__value_.__r.__words[0];
      v20 = strlen(__dst.__r_.__value_.__l.__data_);
      size = __dst.__r_.__value_.__l.__size_;
      if (__dst.__r_.__value_.__l.__size_ >= v20)
      {
        __dst.__r_.__value_.__l.__size_ = v20;
LABEL_38:
        v21->__r_.__value_.__s.__data_[v20] = 0;
        result = 1;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v20 = strlen(&__dst);
      if (v20 <= HIBYTE(__dst.__r_.__value_.__r.__words[2]))
      {
        *(&__dst.__r_.__value_.__s + 23) = v20;
        v21 = &__dst;
        goto LABEL_38;
      }
    }

    std::string::append(&__dst, v20 - size, 0);
    result = 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      std::string::__init_copy_ctor_external(&v23, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      result = 1;
      goto LABEL_40;
    }

LABEL_36:
    v23 = __dst;
LABEL_40:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      result = 1;
    }

    *a2 = v23;
    v19 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  if (v19 < 0)
  {
    v22 = result;
    operator delete(__dst.__r_.__value_.__l.__data_);
    return v22;
  }

  return result;
}

void sub_1DF9C9930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E86D1D58, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v12);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 62)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = __n;
      v11 = operator new(4 * v9);
      __n = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 4 * __n;
    bzero(&v11[4 * (v6 >> 2)], 4 * __n);
    memcpy(v11, begin, v6);
    this->__begin_ = v11;
    this->__end_ = &v11[4 * (v6 >> 2) + v13];
    this->__end_cap_.__value_ = &v11[4 * v9];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = this;
    v5 = __s;
    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    this = operator new(v6);
    v4->__r_.__value_.__l.__size_ = __sz;
    v4->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v4->__r_.__value_.__r.__words[0] = this;
    __s = v5;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(this, __s, __sz + 1);
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

__CFString *ZinIrKernelFormatToCFString(unsigned int a1)
{
  if (a1 > 0x20)
  {
    return @"Int8";
  }

  else
  {
    return qword_1E86D1DB8[a1];
  }
}

void ZinAssertImpl(const char *__format, ...)
{
  va_start(va, __format);
  v3 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x200uLL, __format, va);
  __str[511] = 0;
  exception = __cxa_allocate_exception(0x98uLL);
  ZinException::ZinException(exception, __str);
}

void ZinException::~ZinException(std::runtime_error *this)
{
  this->__vftable = &unk_1F5AEDDF8;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) == 1)
  {
    if (SHIBYTE(this[6].__imp_.__imp_) < 0)
    {
      operator delete(this[5].__imp_.__imp_);
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
LABEL_7:
        if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(this[4].__vftable);
    if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      operator delete(this[1].__vftable);
      goto LABEL_9;
    }

LABEL_14:
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_9:

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_1F5AEDDF8;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) == 1)
  {
    if (SHIBYTE(this[6].__imp_.__imp_) < 0)
    {
      operator delete(this[5].__imp_.__imp_);
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
LABEL_7:
        if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(this[4].__vftable);
    if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      operator delete(this[1].__vftable);
      goto LABEL_9;
    }

LABEL_14:
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_9:
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

void ZinException::ZinException(ZinException *this, const char *a2)
{
  v2 = std::runtime_error::runtime_error(this, a2);
  v2->__vftable = &unk_1F5AEDDF8;
  LOBYTE(v2[1].__vftable) = 0;
  LOBYTE(v2[7].__vftable) = 0;
  LOBYTE(v2[7].__imp_.__imp_) = 0;
  LOBYTE(v2[9].__vftable) = 0;
}

__CFString *ZinIrPoolingTypeToCFString(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return @"Avg";
  }

  else
  {
    return qword_1E86D1EC0[a1];
  }
}

__CFString *ZinIrConvTypeToCFString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Conv";
  }

  else
  {
    return qword_1E86D1F38[a1];
  }
}

__CFString *ZinIrConvKernelModeToCFString(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return @"Dense";
  }

  else
  {
    return qword_1E86D1F70[a1];
  }
}

__CFString *ZinIrEWTypeToCFString(unsigned int a1)
{
  if (a1 > 0x15)
  {
    return @"Add";
  }

  else
  {
    return qword_1E86D1FF0[a1];
  }
}

__CFString *ZinIrScaledEWTypeToCFString(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"Add";
  }

  else
  {
    return qword_1E86D20A0[a1];
  }
}

__CFString *ZinIrFlattenTypeToCFString(int a1)
{
  v1 = @"NCHW";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"NHWC";
  }

  else
  {
    return v1;
  }
}

uint64_t ZinIrTEPaddingModeToCFString(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1E86D20D0 + (a1 - 1));
  }
}

__CFString *ZinIrSamplingMethodToCFString(int a1)
{
  if (a1)
  {
    return @"NearestNeighbor";
  }

  else
  {
    return @"Linear";
  }
}

__CFString *ZinIrSamplingGridModeToCFStringRef(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"StrictAlignedCorners";
  }

  else
  {
    return off_1E86D2108[a1];
  }
}

__CFString *ZinIrNormalizedCoordinateRangeToCFString(int a1)
{
  if (a1)
  {
    return @"RangeMinusOneToOne";
  }

  else
  {
    return @"RangeZeroToOne";
  }
}

__CFString *ZinIrCoordinateModeToCFString(int a1)
{
  v1 = @"NonNormalized";
  if (a1 == 1)
  {
    v1 = @"NormalizedSymmetric";
  }

  if (a1 == 2)
  {
    return @"NormalizedReflect";
  }

  else
  {
    return v1;
  }
}

__CFString *ZinIrCropResizeBoxModeToCFString(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E86D2138[a1];
  }
}

__CFString *ZinIrCoordinateTypeToCFString(int a1)
{
  if (a1 == 1)
  {
    return @"Absolute";
  }

  else
  {
    return @"Relative";
  }
}

__CFString *ZinIrCoordinateToCFString(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 4)
  {
    return @"Batch";
  }

  else
  {
    return off_1E86D21B8[v1];
  }
}

__CFString *ZinIrReductionTypeToCFString(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return @"Min";
  }

  else
  {
    return off_1E86D21E0[a1];
  }
}

uint64_t ToCharDimension(int a1, _BYTE *a2)
{
  v4 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v18[0] = xmmword_1E096E580;
  v18[1] = unk_1E096E590;
  v19 = 0x5700000004;
  v5 = &v14;
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  do
  {
    v6 = std::__tree<std::__value_type<ZinIrDimension,char>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,char>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,char>>>::__find_equal<ZinIrDimension>(&v13, &v14, &v17, &v16, (v18 + v4));
    if (!*v6)
    {
      v7 = operator new(0x28uLL);
      *(v7 + 28) = *(v18 + v4);
      v8 = v17;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = v8;
      *v6 = v7;
      if (*v13)
      {
        v13 = *v13;
        v7 = *v6;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v14, v7);
      ++v15;
    }

    v4 += 8;
  }

  while (v4 != 40);
  v9 = v14;
  if (!v14)
  {
    goto LABEL_14;
  }

  v10 = v14;
  do
  {
    if (*(v10 + 7) >= a1)
    {
      v5 = v10;
    }

    v10 = v10[*(v10 + 7) < a1];
  }

  while (v10);
  if (v5 != &v14 && *(v5 + 7) <= a1)
  {
    *a2 = *(v5 + 32);
    v11 = 1;
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  std::__tree<unsigned long long>::destroy(&v13, v9);
  return v11;
}

uint64_t *std::__tree<std::__value_type<ZinIrDimension,char>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,char>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,char>>>::__find_equal<ZinIrDimension>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
    }

    else
    {
      v19 = a1 + 1;
    }

LABEL_25:
    *a3 = v19;
    return v5;
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 7))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
      }

      else
      {
        v23 = a1 + 1;
      }

LABEL_41:
      *a3 = v23;
      return v5;
    }
  }
}

void ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(ZinIrTextureUnitInfo *this)
{
  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  operator delete(v1);
}

{
  *this = &unk_1F5AEDE20;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void ZinIrUnitInfo::~ZinIrUnitInfo(ZinIrUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

__CFDictionary *ZinCreateAllGatherUnit(const ZinIrCollectiveCommunicationUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ZinCreateShardingMap(Mutable, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateAllReduceUnit(const ZinIrAllReduceUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ZinCreateShardingMap(Mutable, a1 + 80);
  v4 = ZinIrReductionTypeToCFString(*(a1 + 38));
  CFDictionaryAddValue(Mutable, @"Type", v4);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateArgMinMaxUnit(const ZinIrArgMinMaxUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  v6 = *(a1 + 30);
  if (v6 > 4)
  {
    v7 = @"SpatialArgMin";
  }

  else
  {
    v7 = qword_1E86D2240[v6];
  }

  CFDictionaryAddValue(Mutable, @"Mode", v7);
  if ((*(a1 + 30) | 2) == 3)
  {
    v8 = *(a1 + 21);
    v15 = *(a1 + 20);
    valuePtr = v8;
    v9 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
    v10 = CFNumberCreate(v3, kCFNumberSInt32Type, &v15);
    CFDictionaryAddValue(v5, @"KernelWidth", v9);
    CFDictionaryAddValue(v5, @"KernelHeight", v10);
    CFRelease(v9);
    CFRelease(v10);
    v11 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    v12 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 92);
    v13 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
    CFArrayAppendValue(v11, v12);
    CFArrayAppendValue(v11, v13);
    CFRelease(v12);
    CFRelease(v13);
    CFDictionaryAddValue(v5, @"Step", v11);
    CFRelease(v11);
    ZinAddPaddingToParamsDict(v5, a1 + 96, 0);
  }

  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFDictionary *ZinCreateBatchToSpaceUnit(const ZinIrBatchToSpaceUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 35;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateBroadcastUnit(const ZinIrBroadcastUnitInfo *a1)
{
  theDict = ZinCreateUnit(a1);
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v5 = *(a1 + 12);
  if (v5)
  {
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      valuePtr = v5[3];
      v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v10 = ZinIrCoordinateToCFString(v5 + 4);
      CFDictionaryAddValue(v8, @"Dimension", v10);
      CFDictionaryAddValue(v8, @"Size", v9);
      CFArrayAppendValue(v4, v8);
      CFRelease(v9);
      CFRelease(v8);
      v5 = *v5;
    }

    while (v5);
  }

  CFDictionaryAddValue(Mutable, @"BroadcastInfo", v4);
  CFDictionaryAddValue(theDict, @"Params", Mutable);
  CFRelease(v4);
  CFRelease(Mutable);
  return theDict;
}

__CFDictionary *ZinCreateChannelToSpaceUnit(const ZinIrChannelToSpaceUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 37;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateConcatUnit(const ZinIrConcatUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = ZinIrCoordinateToCFString(a1 + 20);
  CFDictionaryAddValue(Mutable, @"Dimension", v4);
  v5 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 84))
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"Interleaved", *v5);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateConvUnit(const ZinIrConvUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = *(a1 + 31);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(Unit, @"NumGroups", v5);
  CFRelease(v5);
  v6 = ZinIrConvTypeToCFString(*(a1 + 60));
  CFDictionaryAddValue(Mutable, @"Type", v6);
  if ((*(a1 + 60) - 5) <= 1)
  {
    ZinAddKernelDilationRateToParamsDict(Mutable, a1 + 280);
  }

  v7 = *MEMORY[0x1E695E4D0];
  v8 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 244))
  {
    v9 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v9 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"KernelGroupReuse", v9);
  v10 = ZinIrConvKernelModeToCFString(*(a1 + 20));
  if (v10)
  {
    CFDictionaryAddValue(Mutable, @"KernelMode", v10);
  }

  if (*(a1 + 180))
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  CFDictionaryAddValue(Mutable, @"KernelMutable", v11);
  v12 = ZinIrKernelFormatToCFString(*(a1 + 21));
  if (v12)
  {
    CFDictionaryAddValue(Mutable, @"KernelType", v12);
  }

  ZinAddKernelSizeToParamsDict(Mutable, a1 + 32, 1);
  if (ZinKernelModeIsPalette(*(a1 + 20)))
  {
    ZinDictionaryAddVector<long long>(Mutable, @"KernelPaletteLUTOffset", a1 + 19);
    ZinDictionaryAddVector<int>(Mutable, @"KernelPaletteLUTIndex", a1 + 16);
    v13 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 176);
    CFDictionaryAddValue(Mutable, @"KernelPaletteVectorSize", v13);
    CFRelease(v13);
  }

  if (ZinKernelModeIsSparse(*(a1 + 20)))
  {
    v14 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 112);
    CFDictionaryAddValue(Mutable, @"KernelMaskByteOffset", v14);
    CFRelease(v14);
    v15 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 104);
    CFDictionaryAddValue(Mutable, @"KernelMaskIndex", v15);
    CFRelease(v15);
    v16 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 120);
    CFDictionaryAddValue(Mutable, @"KernelCoeffCount", v16);
    CFRelease(v16);
  }

  if (*(a1 + 20) != 15)
  {
    v17 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 96);
    CFDictionaryAddValue(Mutable, @"KernelOffset", v17);
    CFRelease(v17);
    v18 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
    CFDictionaryAddValue(Mutable, @"KernelIndex", v18);
    CFRelease(v18);
  }

  ZinAddStepsToParamsDict(Mutable, a1 + 292, 1);
  ZinAddPaddingToParamsDict(Mutable, a1 + 304, 1);
  v19 = ZinIrPaddingModeToCFString(*(a1 + 82));
  CFDictionaryAddValue(Mutable, @"PaddingMode", v19);
  if (*(a1 + 184) == 1)
  {
    v20 = ZinIrKernelFormatToCFString(*(a1 + 56));
    if (v20)
    {
      CFDictionaryAddValue(Mutable, @"KernelPerCoutScaleFormat", v20);
    }

    v21 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 200);
    CFDictionaryAddValue(Mutable, @"KernelScaleByteOffset", v21);
    CFRelease(v21);
    v22 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 192);
    v23 = @"KernelScaleIndex";
  }

  else
  {
    if (ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarScale((a1 + 184)))
    {
      goto LABEL_26;
    }

    v22 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 228);
    v23 = @"KernelScaleScalar";
  }

  CFDictionaryAddValue(Mutable, v23, v22);
  CFRelease(v22);
LABEL_26:
  if (*(a1 + 185) == 1)
  {
    v24 = a1 + 208;
    v25 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 216);
    CFDictionaryAddValue(Mutable, @"KernelZeroPointByteOffset", v25);
    CFRelease(v25);
    v26 = @"KernelZeroPointIndex";
LABEL_30:
    v27 = CFNumberCreate(v3, kCFNumberSInt32Type, v24);
    CFDictionaryAddValue(Mutable, v26, v27);
    CFRelease(v27);
    goto LABEL_31;
  }

  if (!ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarZeroPoint((a1 + 184)))
  {
    v24 = a1 + 232;
    v26 = @"KernelZeroPointScalar";
    goto LABEL_30;
  }

LABEL_31:
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

void ZinDictionaryAddVector<long long>(__CFDictionary *a1, const void *a2, char **a3)
{
  v5 = a3[1];
  v6 = *a3;
  v7 = v5 - *a3;
  if (v5 == *a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x1E695E480];
    v13 = a3[1];
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v5 - *a3);
    bzero(v9, v7);
    v10 = (v9 + v7);
    v11 = *MEMORY[0x1E695E480];
    v12 = v9;
    do
    {
      *v12++ = CFNumberCreate(v11, kCFNumberSInt64Type, v6);
      v6 += 8;
    }

    while (v6 != v5);
    v5 = *a3;
    v13 = a3[1];
  }

  v14 = CFArrayCreate(v11, v9, (v13 - v5) >> 3, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(a1, a2, v14);
  if (v9 != v10)
  {
    v15 = v9;
    do
    {
      CFRelease(*v15++);
    }

    while (v15 != v10);
  }

  CFRelease(v14);
  if (v9)
  {

    operator delete(v9);
  }
}

void sub_1DF9CB5D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinDictionaryAddVector<int>(__CFDictionary *a1, const void *a2, char **a3)
{
  v5 = a3[1];
  v6 = *a3;
  v7 = v5 - *a3;
  if (v5 == *a3)
  {
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E480];
    v14 = a3[1];
  }

  else
  {
    if (v7 >= 0x7FFFFFFFFFFFFFFDLL)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 2 * v7;
    v10 = operator new(2 * v7);
    bzero(v10, v9);
    v11 = (v10 + v9);
    v12 = *MEMORY[0x1E695E480];
    v13 = v10;
    do
    {
      *v13++ = CFNumberCreate(v12, kCFNumberSInt32Type, v6);
      v6 += 4;
    }

    while (v6 != v5);
    v5 = *a3;
    v14 = a3[1];
  }

  v15 = CFArrayCreate(v12, v10, (v14 - v5) >> 2, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(a1, a2, v15);
  if (v10 != v11)
  {
    v16 = v10;
    do
    {
      CFRelease(*v16++);
    }

    while (v16 != v11);
  }

  CFRelease(v15);
  if (v10)
  {

    operator delete(v10);
  }
}

void sub_1DF9CB75C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *ZinCreateCropResizeUnit(const ZinIrCropResizeUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  TextureCommonUnit = ZinCreateTextureCommonUnit(a1);
  TextureUnitSamplingGridInfo = ZinCreateTextureUnitSamplingGridInfo(a1 + 160);
  CFDictionaryAddValue(TextureCommonUnit, @"SamplingGridInfo", TextureUnitSamplingGridInfo);
  CFRelease(TextureUnitSamplingGridInfo);
  v5 = ZinIrCropResizeBoxModeToCFString(*(a1 + 39));
  CFDictionaryAddValue(TextureCommonUnit, @"CoordinateMode", v5);
  v6 = *MEMORY[0x1E695E480];
  if ((*(a1 + 39) & 0xFFFFFFF4) != 0)
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a1 + 192);
    CFDictionaryAddValue(TextureCommonUnit, @"CropWidth", v7);
    CFRelease(v7);
    v8 = CFNumberCreate(v6, kCFNumberSInt32Type, a1 + 196);
    CFDictionaryAddValue(TextureCommonUnit, @"CropHeight", v8);
    CFRelease(v8);
  }

  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, a1 + 184);
  CFDictionaryAddValue(TextureCommonUnit, @"OutputWidth", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(v6, kCFNumberSInt32Type, a1 + 188);
  CFDictionaryAddValue(TextureCommonUnit, @"OutputHeight", v10);
  CFRelease(v10);
  CFDictionaryAddValue(Unit, @"Params", TextureCommonUnit);
  CFRelease(TextureCommonUnit);
  return Unit;
}

__CFDictionary *ZinCreateDeQuantUnit(const ZinIrDeQuantUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (*(a1 + 22) < 1)
  {
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 128);
    CFDictionaryAddValue(v5, @"DeQuantScale", v6);
    v10 = 6;
    ZinSetFormat(@"DeQuantScaleType", &v10, v5);
    CFRelease(v6);
  }

  else
  {
    ZinAddWeightInfoToParamsDict(Mutable, 0, @"DeQuantScaleCount", @"DeQuantScaleIndex", @"DeQuantScaleOffset", a1 + 80);
  }

  ZinSetFormat(@"DeQuantScaleType", a1 + 34, v5);
  v7 = *(a1 + 28);
  if (v7 > 0 || *(a1 + 33))
  {
    if (v7 < 1)
    {
      v8 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 132);
      CFDictionaryAddValue(v5, @"DeQuantZeroPoint", v8);
      CFRelease(v8);
    }

    else
    {
      ZinAddWeightInfoToParamsDict(v5, 0, @"DeQuantZeroPointCount", @"DeQuantZeroPointIndex", @"DeQuantZeroPointOffset", a1 + 104);
    }

    ZinSetFormat(@"DeQuantZeroPointType", a1 + 35, v5);
  }

  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFDictionary *ZinCreateEWUnit(const ZinIrEWUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = ZinIrEWTypeToCFString(*(a1 + 20));
  if (v4)
  {
    CFDictionaryAddValue(Mutable, @"Type", v4);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateFlattenUnit(const ZinIrFlattenUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = ZinIrFlattenTypeToCFString(*(a1 + 20));
  CFDictionaryAddValue(Mutable, @"Mode", v4);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateGatherUnit(const ZinIrGatherUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  v6 = *(a1 + 20);
  for (i = *(a1 + 21); v6 != i; ++v6)
  {
    v8 = ZinIrCoordinateToCFString(v6);
    CFArrayAppendValue(v5, v8);
  }

  CFDictionaryAddValue(Mutable, @"GatherNDAxes", v5);
  CFRelease(v5);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateGlobalArgMinMaxUnit(const ZinIrGlobalArgMinMaxUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = ZinIrReductionTypeToCFString(*(a1 + 20));
  CFDictionaryAddValue(Mutable, @"Type", v4);
  v5 = ZinIrCoordinateToCFString(a1 + 21);
  CFDictionaryAddValue(Mutable, @"Dimension", v5);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateInputViewUnit(const ZinIrInputViewUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 80);
  CFDictionaryAddValue(Mutable, @"Offset", v5);
  CFRelease(v5);
  v6 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 84);
  CFDictionaryAddValue(Mutable, @"Size", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
  CFDictionaryAddValue(Mutable, @"Step", v7);
  CFRelease(v7);
  v8 = ZinIrCoordinateToCFString(a1 + 23);
  CFDictionaryAddValue(Mutable, @"Dimension", v8);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateInstanceNormUnit(const ZinIrInstanceNormUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _S0 = *(a1 + 30);
  if (_S0 != 1.0e-12)
  {
    __asm { FCVT            H0, S0 }

    valuePtr = _H0;
    v11 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
    CFDictionaryAddValue(Mutable, @"Epsilon", v11);
    CFRelease(v11);
  }

  v12 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v14 = ZinIrCoordinateToCFString(i + 4);
    CFArrayAppendValue(v12, v14);
  }

  CFDictionaryAddValue(Mutable, @"Dimension", v12);
  CFRelease(v12);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateLayerNormUnit(const ZinIrLayerNormUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _S0 = *(a1 + 30);
  __asm { FCVT            H0, S0 }

  valuePtr = _S0;
  v10 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Epsilon", v10);
  CFRelease(v10);
  v11 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v13 = ZinIrCoordinateToCFString(i + 4);
    CFArrayAppendValue(v11, v13);
  }

  CFDictionaryAddValue(Mutable, @"Dimension", v11);
  CFRelease(v11);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateLinearUnit(const ZinIrLinearUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = *(a1 + 82);
  if (valuePtr >= 1)
  {
    v5 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Unit, @"InputChannels", v5);
    CFRelease(v5);
  }

  if (*(a1 + 60) != 5)
  {
    v6 = ZinIrCoordinateToCFString(a1 + 60);
    CFDictionaryAddValue(Mutable, @"GroupDimension", v6);
  }

  v7 = ZinIrConvKernelModeToCFString(*(a1 + 20));
  if (v7)
  {
    CFDictionaryAddValue(Mutable, @"KernelMode", v7);
  }

  v8 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 180))
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"KernelMutable", *v8);
  v9 = ZinIrKernelFormatToCFString(*(a1 + 21));
  if (v9)
  {
    CFDictionaryAddValue(Mutable, @"KernelType", v9);
  }

  if (ZinKernelModeIsPalette(*(a1 + 20)))
  {
    ZinDictionaryAddVector<long long>(Mutable, @"KernelPaletteLUTOffset", a1 + 19);
    ZinDictionaryAddVector<int>(Mutable, @"KernelPaletteLUTIndex", a1 + 16);
    v10 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 176);
    CFDictionaryAddValue(Mutable, @"KernelPaletteVectorSize", v10);
    CFRelease(v10);
  }

  if (ZinKernelModeIsSparse(*(a1 + 20)))
  {
    v11 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 112);
    CFDictionaryAddValue(Mutable, @"KernelMaskByteOffset", v11);
    CFRelease(v11);
    v12 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 104);
    CFDictionaryAddValue(Mutable, @"KernelMaskIndex", v12);
    CFRelease(v12);
    v13 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 120);
    CFDictionaryAddValue(Mutable, @"KernelCoeffCount", v13);
    CFRelease(v13);
  }

  if (*(a1 + 20) != 15)
  {
    v14 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 96);
    CFDictionaryAddValue(Mutable, @"KernelOffset", v14);
    CFRelease(v14);
    v15 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
    CFDictionaryAddValue(Mutable, @"KernelIndex", v15);
    CFRelease(v15);
  }

  if (*(a1 + 320) == 1)
  {
    if (valuePtr <= 0)
    {
      ZinAssertImpl("Input channels must be specified for sharded kernels");
    }

    ZinCreateShardingMap(Mutable, a1 + 248);
  }

  if (*(a1 + 184) == 1)
  {
    v16 = ZinIrKernelFormatToCFString(*(a1 + 56));
    if (v16)
    {
      CFDictionaryAddValue(Mutable, @"KernelPerCoutScaleFormat", v16);
    }

    v17 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 200);
    CFDictionaryAddValue(Mutable, @"KernelScaleByteOffset", v17);
    CFRelease(v17);
    v18 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 192);
    v19 = @"KernelScaleIndex";
  }

  else
  {
    if (ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarScale((a1 + 184)))
    {
      goto LABEL_27;
    }

    v18 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 228);
    v19 = @"KernelScaleScalar";
  }

  CFDictionaryAddValue(Mutable, v19, v18);
  CFRelease(v18);
LABEL_27:
  if (*(a1 + 185) == 1)
  {
    v20 = a1 + 208;
    v21 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 216);
    CFDictionaryAddValue(Mutable, @"KernelZeroPointByteOffset", v21);
    CFRelease(v21);
    v22 = @"KernelZeroPointIndex";
LABEL_31:
    v23 = CFNumberCreate(v3, kCFNumberSInt32Type, v20);
    CFDictionaryAddValue(Mutable, v22, v23);
    CFRelease(v23);
    goto LABEL_32;
  }

  if (!ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarZeroPoint((a1 + 184)))
  {
    v20 = a1 + 232;
    v22 = @"KernelZeroPointScalar";
    goto LABEL_31;
  }

LABEL_32:
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateMatrixMultUnit(const ZinIrMatrixMultUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(a1 + 80) == 1)
  {
    v5 = CFNumberCreate(v3, kCFNumberShortType, a1 + 82);
    CFDictionaryAddValue(Mutable, @"Bias", v5);
    CFRelease(v5);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreatePadUnit(const ZinIrPadUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ZinAddPaddingToParamsDict(Mutable, a1 + 156, 1);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 180);
  CFDictionaryAddValue(Mutable, @"PadChannelFront", v5);
  CFRelease(v5);
  v6 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 184);
  CFDictionaryAddValue(Mutable, @"PadChannelBack", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 188);
  CFDictionaryAddValue(Mutable, @"PadBatchFront", v7);
  CFRelease(v7);
  v8 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 192);
  CFDictionaryAddValue(Mutable, @"PadBatchBack", v8);
  CFRelease(v8);
  v9 = CFArrayCreateMutable(v3, 1, MEMORY[0x1E695E9C0]);
  v10 = *(a1 + 25);
  for (i = *(a1 + 26); v10 != i; v10 += 2)
  {
    PaddingInfo = ZinCreatePaddingInfo(v10);
    CFArrayAppendValue(v9, PaddingInfo);
    CFRelease(PaddingInfo);
  }

  CFDictionaryAddValue(Mutable, @"PaddingInfo", v9);
  CFRelease(v9);
  v13 = CFNumberCreate(v3, kCFNumberSInt16Type, a1 + 224);
  CFDictionaryAddValue(Mutable, @"BackgroundValue", v13);
  CFRelease(v13);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreatePixelShuffleUnit(const ZinIrPixelShuffleUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 31;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreatePixelUnshuffleUnit(const ZinIrPixelUnshuffleUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 32;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateQuantUnit(const ZinIrQuantUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (*(a1 + 22) < 1)
  {
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 128);
    CFDictionaryAddValue(v5, @"QuantScale", v6);
    CFRelease(v6);
  }

  else
  {
    ZinAddWeightInfoToParamsDict(Mutable, 0, @"ScaleCount", @"ScaleIndex", @"ScaleOffset", a1 + 80);
  }

  v7 = *(a1 + 28);
  if (v7 > 0 || *(a1 + 33) != 0)
  {
    if (v7 < 1)
    {
      v9 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 132);
      CFDictionaryAddValue(v5, @"QuantZeroPoint", v9);
      CFRelease(v9);
    }

    else
    {
      ZinAddWeightInfoToParamsDict(v5, 0, @"ZeroPointCount", @"ZeroPointIndex", @"ZeroPointOffset", a1 + 104);
    }
  }

  ZinSetFormat(@"QuantScaleType", a1 + 34, v5);
  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFDictionary *ZinCreateReductionUnit(const ZinIrReductionUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = ZinIrReductionTypeToCFString(*(a1 + 20));
  CFDictionaryAddValue(Mutable, @"Type", v5);
  v6 = *(a1 + 21) - 1;
  if (v6 <= 2)
  {
    CFDictionaryAddValue(Mutable, @"PostProcessType", off_1E86D2268[v6]);
  }

  v7 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 88);
  CFDictionaryAddValue(Mutable, @"PostScale", v7);
  CFRelease(v7);
  _S0 = *(a1 + 23);
  __asm { FCVT            H0, S0 }

  valuePtr = _S0;
  v13 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Epsilon", v13);
  CFRelease(v13);
  v14 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  v15 = v14;
  v16 = *(a1 + 12);
  if ((v16 & 8) != 0)
  {
    CFArrayAppendValue(v14, @"Height");
    v16 = *(a1 + 12);
    if ((v16 & 0x10) == 0)
    {
LABEL_5:
      if ((v16 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((v16 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  CFArrayAppendValue(v15, @"Width");
  v16 = *(a1 + 12);
  if ((v16 & 2) == 0)
  {
LABEL_6:
    if ((v16 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    CFArrayAppendValue(v15, @"Channel");
    if ((*(a1 + 12) & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  CFArrayAppendValue(v15, @"Depth");
  v16 = *(a1 + 12);
  if ((v16 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v16)
  {
LABEL_8:
    CFArrayAppendValue(v15, @"Batch");
  }

LABEL_9:
  CFDictionaryAddValue(Mutable, @"Dimension", v15);
  CFRelease(v15);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateResampleUnit(const ZinIrResampleUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  theDict = ZinCreateTextureCommonUnit(a1);
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  v5 = *(a1 + 20);
  v4 = *(a1 + 21);
  if (v5 != v4)
  {
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      v9 = ZinIrCoordinateToCFString(v5);
      CFDictionaryAddValue(v8, @"Coordinate", v9);
      v10 = ZinIrCoordinateTypeToCFString(v5[1]);
      CFDictionaryAddValue(v8, @"CoordinateType", v10);
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
      v5 += 2;
    }

    while (v5 != v4);
  }

  CFDictionaryAddValue(theDict, @"CoordinateTypeInfo", Mutable);
  CFRelease(Mutable);
  v11 = *(a1 + 46);
  v12 = @"YX";
  if (v11 != 1)
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"XY";
  }

  CFDictionaryAddValue(theDict, @"CoordinateMode", v13);
  CFDictionaryAddValue(Unit, @"Params", theDict);
  CFRelease(theDict);
  return Unit;
}

CFMutableDictionaryRef ZinCreateReshapeUnit(int **a1)
{
  theDict = ZinCreateUnit(a1);
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = a1[10];
  v30 = a1[11];
  LODWORD(valuePtr) = v4;
  v5 = a1[12];
  v28 = a1[13];
  v29 = v5;
  v27 = a1[14];
  v6 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(v2, kCFNumberSInt32Type, &v30);
  v8 = CFNumberCreate(v2, kCFNumberSInt32Type, &v29);
  v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &v28);
  v10 = CFNumberCreate(v2, kCFNumberSInt32Type, &v27);
  CFDictionaryAddValue(Mutable, @"ReshapedBatch", v6);
  CFDictionaryAddValue(Mutable, @"ReshapedChannel", v7);
  CFDictionaryAddValue(Mutable, @"ReshapedHeight", v8);
  CFDictionaryAddValue(Mutable, @"ReshapedWidth", v9);
  CFDictionaryAddValue(Mutable, @"ReshapedDepth", v10);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);
  CFRelease(v9);
  CFRelease(v10);
  valuePtr = 0;
  v32 = 0;
  v33 = 0;
  v11 = a1[15];
  v12 = a1[16];
  if (v11 != v12)
  {
    while (1)
    {
      LOBYTE(v30) = 0;
      if ((ToCharDimension(*v11, &v30) & 1) == 0)
      {
        goto LABEL_34;
      }

      v17 = v30;
      if (SHIBYTE(v33) < 0)
      {
        break;
      }

      if (HIBYTE(v33) == 22)
      {
        p_valuePtr = &valuePtr;
        v14 = 22;
        goto LABEL_12;
      }

      v14 = HIBYTE(v33);
      HIBYTE(v33) = (HIBYTE(v33) + 1) & 0x7F;
      v15 = &valuePtr;
LABEL_4:
      v16 = v15 + v14;
      *v16 = v17;
      v16[1] = 0;
      if (++v11 == v12)
      {
        if (v33 >= 0)
        {
          v13 = &valuePtr;
        }

        else
        {
          v13 = valuePtr;
        }

        goto LABEL_33;
      }
    }

    v14 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v32 == v14)
    {
      if ((v33 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      p_valuePtr = valuePtr;
      if (v14 > 0x3FFFFFFFFFFFFFF2)
      {
        v22 = 0;
        v21 = 0x7FFFFFFFFFFFFFF7;
      }

      else
      {
LABEL_12:
        if (v14 + 1 > 2 * v14)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = 2 * v14;
        }

        if ((v19 | 7) == 0x17)
        {
          v20 = 25;
        }

        else
        {
          v20 = (v19 | 7) + 1;
        }

        if (v19 >= 0x17)
        {
          v21 = v20;
        }

        else
        {
          v21 = 23;
        }

        v22 = v14 == 22;
      }

      v23 = operator new(v21);
      v15 = v23;
      if (v14)
      {
        memmove(v23, p_valuePtr, v14);
      }

      if (!v22)
      {
        operator delete(p_valuePtr);
      }

      valuePtr = v15;
      v33 = v21 | 0x8000000000000000;
    }

    else
    {
      v15 = valuePtr;
      v14 = v32;
    }

    v32 = v14 + 1;
    goto LABEL_4;
  }

  v13 = &valuePtr;
LABEL_33:
  v24 = CFStringCreateWithCString(v2, v13, 0x8000100u);
  CFDictionaryAddValue(Mutable, @"ReshapeLinearizationOrder", v24);
  CFRelease(v24);
LABEL_34:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(valuePtr);
  }

  CFDictionaryAddValue(theDict, @"Params", Mutable);
  CFRelease(Mutable);
  return theDict;
}

void sub_1DF9CD168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *ZinCreateResizeUnit(const ZinIrResizeUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(a1 + 41) == -1.0 || *(a1 + 42) == -1.0)
  {
    v7 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 156);
    CFDictionaryAddValue(Mutable, @"OutputHeight", v7);
    CFRelease(v7);
    v6 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 160);
    CFDictionaryAddValue(Mutable, @"OutputWidth", v6);
  }

  else
  {
    v5 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 164);
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 168);
    CFDictionaryAddValue(Mutable, @"ScaleFactorX", v5);
    CFDictionaryAddValue(Mutable, @"ScaleFactorY", v6);
    CFRelease(v5);
  }

  CFRelease(v6);
  TextureUnitSamplingInfo = ZinCreateTextureUnitSamplingInfo(a1);
  CFDictionaryAddValue(Mutable, @"SamplingMethodInfo", TextureUnitSamplingInfo);
  CFRelease(TextureUnitSamplingInfo);
  TextureUnitSamplingGridInfo = ZinCreateTextureUnitSamplingGridInfo(a1 + 176);
  CFDictionaryAddValue(Mutable, @"SamplingGridInfo", TextureUnitSamplingGridInfo);
  CFRelease(TextureUnitSamplingGridInfo);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateRingBufferReaderUnit(const ZinIrRingBufferReaderUnitInfo *a1)
{
  theDict = ZinCreateUnit(a1);
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ZinAddOffsetsToParamsDict(Mutable, a1 + 120, a1 + 80, @"RingBufferReaderOffsetInfo");
  v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v5 = *(a1 + 22);
  if (v5)
  {
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      valuePtr = v5[3];
      v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v10 = ZinIrCoordinateToCFString(v5 + 4);
      CFDictionaryAddValue(v8, @"Dimension", v10);
      CFDictionaryAddValue(v8, @"Size", v9);
      CFArrayAppendValue(v4, v8);
      CFRelease(v9);
      CFRelease(v8);
      v5 = *v5;
    }

    while (v5);
  }

  CFDictionaryAddValue(Mutable, @"RingBufferReaderOutputSizeInfo", v4);
  CFRelease(v4);
  CFDictionaryAddValue(theDict, @"Params", Mutable);
  CFRelease(Mutable);
  return theDict;
}

__CFDictionary *ZinCreateRingBufferWriterUnit(const ZinIrRingBufferUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ZinAddOffsetsToParamsDict(Mutable, a1 + 120, a1 + 80, @"RingBufferWriterInfo");
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateScaledEWUnit(const ZinIrScaledEWUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = ZinIrScaledEWTypeToCFString(*(a1 + 20));
  if (v5)
  {
    CFDictionaryAddValue(Mutable, @"Type", v5);
  }

  if (*(a1 + 21) != 1.0)
  {
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 84);
    CFDictionaryAddValue(Mutable, @"Scale", v6);
    CFDictionaryAddValue(Mutable, @"ScaleType", @"Float32");
    CFRelease(v6);
    CFRelease(@"Float32");
  }

  if (*(a1 + 22) != 1.0)
  {
    v7 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 88);
    CFDictionaryAddValue(Mutable, @"PreScale", v7);
    CFDictionaryAddValue(Mutable, @"PreScaleType", @"Float32");
    CFRelease(v7);
  }

  if (*(a1 + 23) != 0.0)
  {
    v8 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 92);
    CFDictionaryAddValue(Mutable, @"Bias", v8);
    CFDictionaryAddValue(Mutable, @"BiasType", @"Float32");
    CFRelease(v8);
    CFRelease(@"Float32");
  }

  v9 = MEMORY[0x1E695E4D0];
  if (*(a1 + 96) == 1)
  {
    CFDictionaryAddValue(Mutable, @"NegateSrc1", *MEMORY[0x1E695E4D0]);
  }

  if (*(a1 + 97) == 1)
  {
    CFDictionaryAddValue(Mutable, @"NegateSrc2", *v9);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

void ZinCreateShardingMap(__CFDictionary *a1, uint64_t a2)
{
  ZinDictionaryAddVector<unsigned short>(a1, @"Mesh", a2);
  ZinDictionaryAddVector<unsigned short>(a1, @"MeshAxes", (a2 + 24));
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v6 = (a2 + 48);
  if (v4 != v5)
  {

    ZinDictionaryAddVector<unsigned short>(a1, @"TensorAxes", v6);
  }
}

void ZinDictionaryAddVector<unsigned short>(__CFDictionary *a1, const void *a2, char **a3)
{
  v5 = a3[1];
  v6 = *a3;
  v7 = v5 - *a3;
  if (v5 == *a3)
  {
    v10 = 0;
    v11 = 0;
    v12 = *MEMORY[0x1E695E480];
    v14 = a3[1];
  }

  else
  {
    if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 4 * v7;
    v10 = operator new(4 * v7);
    bzero(v10, v9);
    v11 = (v10 + v9);
    v12 = *MEMORY[0x1E695E480];
    v13 = v10;
    do
    {
      *v13++ = CFNumberCreate(v12, kCFNumberSInt16Type, v6);
      v6 += 2;
    }

    while (v6 != v5);
    v5 = *a3;
    v14 = a3[1];
  }

  v15 = CFArrayCreate(v12, v10, (v14 - v5) >> 1, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(a1, a2, v15);
  if (v10 != v11)
  {
    v16 = v10;
    do
    {
      CFRelease(*v16++);
    }

    while (v16 != v11);
  }

  CFRelease(v15);
  if (v10)
  {

    operator delete(v10);
  }
}

void sub_1DF9CD948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *ZinCreateSDPAUnit(const ZinIrSDPAUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  v5 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 80))
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"SubtractMax", *v5);
  CFDictionaryAddValue(Unit, @"Params", v4);
  CFRelease(v4);
  return Unit;
}

__CFDictionary *ZinCreateSoftmaxUnit(const ZinIrSoftmaxUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v7 = ZinIrCoordinateToCFString(i + 4);
    CFArrayAppendValue(v5, v7);
  }

  CFDictionaryAddValue(Mutable, @"Dimension", v5);
  CFRelease(v5);
  v8 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 120))
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"SubtractMax", *v8);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateBatchNormUnit(const ZinIrBatchNormUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFDictionaryCreateMutable(v3, 0, v4, v5);
  ZinSetFormat(@"MeanType", a1 + 26, v7);
  ZinAddWeightInfoToParamsDict(v7, @"MeanMutable", @"MeanCount", @"MeanIndex", @"MeanOffset", a1 + 80);
  CFDictionaryAddValue(Mutable, @"BatchNormMeanGroupData", v7);
  CFRelease(v7);
  v8 = CFDictionaryCreateMutable(v3, 0, v4, v5);
  ZinSetFormat(@"VarianceType", a1 + 34, v8);
  ZinAddWeightInfoToParamsDict(v8, @"VarianceMutable", @"VarianceCount", @"VarianceIndex", @"VarianceOffset", a1 + 112);
  CFDictionaryAddValue(Mutable, @"BatchNormVarianceGroupData", v8);
  CFRelease(v8);
  if (*(a1 + 184) == 1)
  {
    v9 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v9)
    {
      v10 = v9;
      ZinSetFormat(@"GammaType", a1 + 44, v9);
      ZinAddWeightInfoToParamsDict(v10, @"GammaMutable", @"GammaCount", @"GammaIndex", @"GammaOffset", a1 + 152);
      CFDictionaryAddValue(Mutable, @"BatchNormGammaGroupData", v10);
      CFRelease(v10);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v11 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v11)
    {
      v12 = v11;
      ZinSetFormat(@"BetaType", a1 + 54, v11);
      ZinAddWeightInfoToParamsDict(v12, @"BetaMutable", @"BetaCount", @"BetaIndex", @"BetaOffset", a1 + 192);
      CFDictionaryAddValue(Mutable, @"BatchNormBetaGroupData", v12);
      CFRelease(v12);
    }
  }

  _S0 = *(a1 + 36);
  __asm { FCVT            H0, S0 }

  valuePtr = _S0;
  v18 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Epsilon", v18);
  CFRelease(v18);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateSpaceToBatchUnit(const ZinIrSpaceToBatchUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 34;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateSpaceToChannelUnit(const ZinIrSpaceToChannelUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 36;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateCoordinateInfo(_DWORD *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = ZinIrCoordinateToCFString(a1);
  CFDictionaryAddValue(Mutable, @"Coordinate", v3);
  v4 = ZinIrCoordinateModeToCFString(a1[2]);
  CFDictionaryAddValue(Mutable, @"CoordinateMode", v4);
  if (a1[2])
  {
    v5 = ZinIrNormalizedCoordinateRangeToCFString(a1[1]);
    CFDictionaryAddValue(Mutable, @"CoordinateRange", v5);
  }

  return Mutable;
}

__CFDictionary *ZinCreatePaddingInfo(_DWORD *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = ZinIrCoordinateToCFString(a1);
  CFDictionaryAddValue(Mutable, @"Coordinate", v3);
  v4 = ZinIrTEPaddingModeToCFString(a1[1]);
  CFDictionaryAddValue(Mutable, @"PaddingMode", v4);
  return Mutable;
}

__CFArray *ZinCreateTextureUnitSamplingInfo(const ZinIrTextureUnitInfo *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  if (v4 != v5)
  {
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      v8 = *v4++;
      v13 = v8;
      v9 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      v10 = ZinIrCoordinateToCFString(&v13);
      CFDictionaryAddValue(v9, @"Coordinate", v10);
      v11 = ZinIrSamplingMethodToCFString(SHIDWORD(v13));
      CFDictionaryAddValue(v9, @"SamplingMethod", v11);
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
    }

    while (v4 != v5);
  }

  return Mutable;
}

__CFArray *ZinCreateTextureUnitSamplingGridInfo(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      v9 = ZinIrCoordinateToCFString(v4);
      CFDictionaryAddValue(v8, @"Coordinate", v9);
      v10 = ZinIrSamplingGridModeToCFStringRef(v4[1]);
      CFDictionaryAddValue(v8, @"SamplingGridMode", v10);
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
      v4 += 2;
    }

    while (v4 != v5);
  }

  return Mutable;
}

__CFDictionary *ZinCreateTextureCommonUnit(const ZinIrTextureUnitInfo *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFArrayCreateMutable(v2, 1, MEMORY[0x1E695E9C0]);
  v6 = *(a1 + 10);
  for (i = *(a1 + 11); v6 != i; v6 += 3)
  {
    CoordinateInfo = ZinCreateCoordinateInfo(v6);
    CFArrayAppendValue(v4, CoordinateInfo);
    CFRelease(CoordinateInfo);
  }

  CFDictionaryAddValue(Mutable, @"CoordinateInfo", v4);
  CFRelease(v4);
  TextureUnitSamplingInfo = ZinCreateTextureUnitSamplingInfo(a1);
  theDict = Mutable;
  CFDictionaryAddValue(Mutable, @"SamplingMethodInfo", TextureUnitSamplingInfo);
  CFRelease(TextureUnitSamplingInfo);
  v9 = CFArrayCreateMutable(v2, 1, MEMORY[0x1E695E9C0]);
  v11 = *(a1 + 13);
  v10 = *(a1 + 14);
  if (v11 != v10)
  {
    v12 = MEMORY[0x1E695E9D8];
    v13 = MEMORY[0x1E695E9E8];
    do
    {
      v14 = CFDictionaryCreateMutable(v2, 0, v12, v13);
      v15 = ZinIrCoordinateToCFString(v11);
      CFDictionaryAddValue(v14, @"Coordinate", v15);
      v16 = ZinIrTEPaddingModeToCFString(v11[1]);
      CFDictionaryAddValue(v14, @"PaddingMode", v16);
      CFArrayAppendValue(v9, v14);
      CFRelease(v14);
      v11 += 2;
    }

    while (v11 != v10);
  }

  CFDictionaryAddValue(theDict, @"PaddingInfo", v9);
  CFRelease(v9);
  v17 = CFNumberCreate(v2, kCFNumberSInt16Type, a1 + 152);
  CFDictionaryAddValue(theDict, @"BackgroundValue", v17);
  CFRelease(v17);
  return theDict;
}

__CFDictionary *ZinCreateTileUnit(const ZinIrTileUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v6 = CFNumberCreate(v3, kCFNumberSInt32Type, i + 20);
    v7 = ZinIrCoordinateToCFString(i + 4);
    CFDictionaryAddValue(Mutable, v7, v6);
    CFRelease(v6);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateTransposeUnit(int **a1)
{
  Unit = ZinCreateUnit(a1);
  v2 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v4 = a1[10];
  v5 = a1[11];
  if (v4 != v5)
  {
    v6 = MEMORY[0x1E695E9E8];
    do
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      v15 = v8;
      v16 = v7;
      v9 = ZinIrCoordinateToCFString(&v16);
      v10 = ZinIrCoordinateToCFString(&v15);
      v11 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], v6);
      CFDictionaryAddValue(v11, @"TransposeSourceDimension", v9);
      CFDictionaryAddValue(v11, @"TransposeDestinationDimension", v10);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
    }

    while (v4 != v5);
  }

  CFDictionaryAddValue(theDict, @"TransposeDimensions", Mutable);
  CFRelease(Mutable);
  CFDictionaryAddValue(Unit, @"Params", theDict);
  CFRelease(theDict);
  return Unit;
}

__CFDictionary *ZinCreateUnflattenUnit(const ZinIrUnflattenUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  v6 = *(a1 + 20);
  v7 = @"NCHW";
  if (v6 == 2)
  {
    v7 = @"NHWC";
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  CFDictionaryAddValue(Mutable, @"Mode", v8);
  v9 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 84);
  CFDictionaryAddValue(v5, @"DestinationWidth", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
  CFDictionaryAddValue(v5, @"DestinationHeight", v10);
  CFRelease(v10);
  v11 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 92);
  CFDictionaryAddValue(v5, @"DestinationChannels", v11);
  CFRelease(v11);
  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFString *ZinUnitTypeToCFString(int a1)
{
  if ((a1 - 1) > 0x4D)
  {
    return 0;
  }

  else
  {
    return off_1E86D2280[a1 - 1];
  }
}

__CFDictionary *ZinCreateUnit(const ZinIrUnitInfo *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(a1 + 31) >= 0)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(a1 + 1);
  }

  v5 = CFStringCreateWithCString(v2, v4, 0x8000100u);
  CFDictionaryAddValue(Mutable, @"Name", v5);
  CFRelease(v5);
  v6 = ZinUnitTypeToCFString(*(a1 + 8));
  CFDictionaryAddValue(Mutable, @"Type", v6);
  v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v8 = *(a1 + 5);
  if (*(a1 + 6) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v12 = (v8 + v9);
      if (*(v8 + v9 + 23) < 0)
      {
        v12 = *v12;
      }

      v11 = CFStringCreateWithCString(v2, v12, 0x8000100u);
      CFArrayAppendValue(v7, v11);
      CFRelease(v11);
      ++v10;
      v8 = *(a1 + 5);
      v9 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 6) - v8) >> 3) > v10);
  }

  CFDictionaryAddValue(Mutable, @"Bottom", v7);
  CFRelease(v7);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = ZinTensorFormatToANECFormat(v13);
    CFDictionaryAddValue(Mutable, @"InputType", v14);
  }

  v15 = ZinTensorFormatToANECFormat(*(a1 + 17));
  if (!v15)
  {
    ZinAssertImpl("Invalid or missing output format.");
  }

  CFDictionaryAddValue(Mutable, @"OutputType", v15);
  valuePtr = *(a1 + 18);
  if (valuePtr >= 1)
  {
    v16 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, @"OutputChannels", v16);
    CFRelease(v16);
  }

  return Mutable;
}

void ZinAddKernelSizeToParamsDict(__CFDictionary *a1, void *a2, int a3)
{
  v6 = a2[1];
  valuePtr = *a2;
  v13 = v6;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(v7, kCFNumberSInt32Type, &v13);
  CFDictionaryAddValue(a1, @"KernelWidth", v8);
  CFDictionaryAddValue(a1, @"KernelHeight", v9);
  CFRelease(v8);
  CFRelease(v9);
  if (a3)
  {
    v11 = a2[2];
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, &v11);
    CFDictionaryAddValue(a1, @"KernelDepth", v10);
    CFRelease(v10);
  }
}

void ZinAddWeightInfoToParamsDict(__CFDictionary *a1, const void *a2, const void *a3, const void *a4, const void *a5, _BYTE *a6)
{
  v12 = *MEMORY[0x1E695E480];
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a6 + 8);
  CFDictionaryAddValue(a1, a3, v13);
  CFRelease(v13);
  if (a2)
  {
    v14 = MEMORY[0x1E695E4D0];
    if (!*a6)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    CFDictionaryAddValue(a1, a2, *v14);
  }

  v15 = CFNumberCreate(v12, kCFNumberSInt32Type, a6 + 4);
  CFDictionaryAddValue(a1, a4, v15);
  CFRelease(v15);
  v16 = CFNumberCreate(v12, kCFNumberSInt64Type, a6 + 16);
  CFDictionaryAddValue(a1, a5, v16);

  CFRelease(v16);
}

void ZinAddStepsToParamsDict(__CFDictionary *a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, a2);
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 4));
  CFArrayAppendValue(Mutable, v8);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v8);
  CFRelease(v9);
  if (a3)
  {
    v10 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 8));
    CFArrayAppendValue(Mutable, v10);
    CFRelease(v10);
  }

  CFDictionaryAddValue(a1, @"Step", Mutable);

  CFRelease(Mutable);
}

void ZinAddKernelDilationRateToParamsDict(__CFDictionary *a1, char *valuePtr)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, valuePtr + 4);
  CFDictionaryAddValue(a1, @"KernelDilationX", v5);
  CFDictionaryAddValue(a1, @"KernelDilationY", v6);
  CFRelease(v5);

  CFRelease(v6);
}

void ZinAddPaddingToParamsDict(__CFDictionary *a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a2 + 8));
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 12));
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, a2);
  v10 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 4));
  CFDictionaryAddValue(a1, @"PadTop", v7);
  CFDictionaryAddValue(a1, @"PadBot", v8);
  CFDictionaryAddValue(a1, @"PadLeft", v9);
  CFDictionaryAddValue(a1, @"PadRight", v10);
  CFRelease(v7);
  CFRelease(v8);
  CFRelease(v9);
  CFRelease(v10);
  if (a3)
  {
    v11 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 16));
    v12 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 20));
    CFDictionaryAddValue(a1, @"PadFront", v11);
    CFDictionaryAddValue(a1, @"PadBack", v12);
    CFRelease(v11);

    CFRelease(v12);
  }
}

__CFString *ZinIrPaddingModeToCFString(unsigned int a1)
{
  if (a1 > 9)
  {
    return @"Zero";
  }

  else
  {
    return qword_1E86D24F0[a1];
  }
}

void ZinSetFormat(void *key, _DWORD *a2, CFMutableDictionaryRef theDict)
{
  v5 = *a2 - 1;
  if (v5 >= 6 || ((0x3Bu >> v5) & 1) == 0)
  {
    ZinAssertImpl("Error: invalid kernel format. It should be Int8, UInt8, FP16, FP32 or E4M3", v3, v4);
  }

  v8 = *(&off_1E86D2540 + v5);

  CFDictionaryAddValue(theDict, key, v8);
}

void ZinAddSpaceTransformFactorToParamsDict(__CFDictionary *a1, _DWORD *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, (a3 + 4));
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, (a3 + 8));
  if (*a2 <= 0x25u && ((1 << *a2) & 0x3D80000000) != 0)
  {
    CFDictionaryAddValue(a1, @"FactorX", v7);
    CFDictionaryAddValue(a1, @"FactorY", v8);
    CFDictionaryAddValue(a1, @"FactorZ", v9);
  }

  CFRelease(v7);
  CFRelease(v8);

  CFRelease(v9);
}

void ZinAddOffsetsToParamsDict(__CFDictionary *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *MEMORY[0x1E695E4D0];
    v9 = MEMORY[0x1E695E9D8];
    v10 = MEMORY[0x1E695E9E8];
    do
    {
      v11 = CFDictionaryCreateMutable(v5, 0, v9, v10);
      v12 = ZinIrCoordinateToCFString(v7 + 4);
      CFDictionaryAddValue(v11, @"Dimension", v12);
      valuePtr = v7[3];
      v13 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      CFDictionaryAddValue(v11, @"Offset", v13);
      if (*(v7 + 32) == 1)
      {
        CFDictionaryAddValue(v11, @"Circular", v8);
      }

      CFArrayAppendValue(Mutable, v11);
      CFRelease(v13);
      CFRelease(v11);
      v7 = *v7;
    }

    while (v7);
  }

  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = *MEMORY[0x1E695E4D0];
    v16 = MEMORY[0x1E695E9D8];
    v17 = MEMORY[0x1E695E9E8];
    do
    {
      v18 = (v14 + 3);
      v19 = CFDictionaryCreateMutable(v5, 0, v16, v17);
      v20 = ZinIrCoordinateToCFString(v14 + 4);
      CFDictionaryAddValue(v19, @"Dimension", v20);
      if (*(v14 + 47) < 0)
      {
        v18 = *v18;
      }

      v21 = CFStringCreateWithCString(v5, v18, 0x8000100u);
      CFDictionaryAddValue(v19, @"Offset", v21);
      if (*(v14 + 48) == 1)
      {
        CFDictionaryAddValue(v19, @"Circular", v15);
      }

      CFArrayAppendValue(Mutable, v19);
      CFRelease(v21);
      CFRelease(v19);
      v14 = *v14;
    }

    while (v14);
  }

  CFDictionaryAddValue(a1, a4, Mutable);
  CFRelease(Mutable);
}

uint64_t ZinTensorFormatToANECFormat(int a1)
{
  if ((a1 - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return *(&off_1E86D2570 + (a1 - 1));
  }
}

BOOL mlir::CallGraphNode::hasChildren(mlir::CallGraphNode *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 6);
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    v5 = v4 & 6;
    result = v5 == 4;
    v7 = v5 == 4 || v3 == 0;
    v3 -= 8;
  }

  while (!v7);
  return result;
}

void mlir::CallGraph::CallGraph(mlir::CallGraph *this, mlir::Operation *a2)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = 0u;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  *(this + 6) = 1;
  memset_pattern16(this + 56, &unk_1E096E600, 0x20uLL);
  *(this + 11) = this + 104;
  *(this + 12) = 0x400000000;
  *(this + 17) = 0;
  *(this + 18) = 1;
  memset_pattern16(this + 152, &unk_1E096E600, 0x20uLL);
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  computeCallGraph(a2, this, v9, 0, 0);
  computeCallGraph(a2, this, v9, 0, 1);
  v4 = v9[0];
  if (v10)
  {
    v5 = (v9[0] + 8);
    v6 = 16 * v10;
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          llvm::deallocate_buffer(*(v7 + 8), (16 * *(v7 + 24)));
        }
      }

      v5 += 2;
      v6 -= 16;
    }

    while (v6);
    v4 = v9[0];
    v8 = (16 * v10);
  }

  else
  {
    v8 = 0;
  }

  llvm::deallocate_buffer(v4, v8);
}

void computeCallGraph(uint64_t a1, uint64_t *a2, mlir::SymbolTableCollection *a3, uint64_t a4, _BOOL4 a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    }

    else
    {
      InterfaceFor = 0;
    }

    v11 = a1;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
    InterfaceFor = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  if (a5 && v11)
  {
    *&v27 = mlir::CallGraph::resolveCallable(a2, v11, InterfaceFor, a3) & 0xFFFFFFFFFFFFFFF9 | 2;
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(a4 + 8, &v27, &v23);
    if (v24 == 1)
    {
      v12 = v27;
      v13 = *(a4 + 56);
      if (v13 >= *(a4 + 60))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 48, a4 + 64, v13 + 1, 8);
        LODWORD(v13) = *(a4 + 56);
      }

      *(*(a4 + 48) + 8 * v13) = v12;
      ++*(a4 + 56);
    }

    return;
  }

LABEL_14:
  if (v11)
  {
    return;
  }

  if (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v14 = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    }

    else
    {
      v14 = 0;
    }

    *&v23 = a1;
    *(&v23 + 1) = v14;
    if (a1)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v23);
      if (!CallableForCallee)
      {
        return;
      }

      a4 = mlir::CallGraph::getOrAddNode(a2, CallableForCallee, a4);
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v16 = *(a1 + 44);
  if ((v16 & 0x7FFFFF) != 0)
  {
    v17 = (((a1 + 16 * ((v16 >> 23) & 1) + ((v16 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    v18 = (v17 + 24 * (v16 & 0x7FFFFF));
    do
    {
      mlir::Region::OpIterator::OpIterator(&v27, v17, 0);
      mlir::Region::OpIterator::OpIterator(&v25, v17, 1);
      v20 = v28;
      v24 = v28;
      v23 = v27;
      for (i = v26; v28 != i; v20 = v28)
      {
        v22 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v20, v19);
        computeCallGraph(v22, a2, a3, a4, a5);
        mlir::Region::OpIterator::operator++(&v27);
      }

      v17 = (v17 + 24);
    }

    while (v17 != v18);
  }
}

uint64_t mlir::CallGraph::getOrAddNode(mlir::CallGraph *this, mlir::Region *a2, mlir::CallGraphNode *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v12 = a2;
  v5 = llvm::MapVector<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>,llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>>::operator[](this, &v12);
  if (!*v5)
  {
    v7 = operator new(0x60uLL);
    *v7 = v12;
    *(v7 + 8) = 1;
    memset_pattern16((v7 + 16), &unk_1E096E600, 0x20uLL);
    *(v7 + 48) = v7 + 64;
    *(v7 + 56) = 0x400000000;
    *v5 = v7;
    if (a3)
    {
      v15[0] = v7 & 0xFFFFFFFFFFFFFFF9 | 4;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 8, v15, v13);
      if (v14 == 1)
      {
        v8 = v15[0];
        v9 = *(a3 + 14);
        if (v9 >= *(a3 + 15))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 48, a3 + 64, v9 + 1, 8);
          LODWORD(v9) = *(a3 + 14);
        }

        *(*(a3 + 6) + 8 * v9) = v8;
        ++*(a3 + 14);
      }
    }

    else
    {
      v15[0] = v7 & 0xFFFFFFFFFFFFFFF9;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 48, v15, v13);
      if (v14 == 1)
      {
        v10 = v15[0];
        v11 = *(this + 24);
        if (v11 >= *(this + 25))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(this + 88, this + 104, v11 + 1, 8);
          LODWORD(v11) = *(this + 24);
        }

        *(*(this + 11) + 8 * v11) = v10;
        ++*(this + 24);
      }
    }
  }

  return *v5;
}

uint64_t llvm::MapVector<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>,llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>>::operator[](uint64_t a1, uint64_t *a2)
{
  v18 = *a2;
  v19 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(a1, &v18, &v19, &v16);
  v4 = v16;
  if (v17)
  {
    v5 = *(a1 + 24);
    v14 = *a2;
    __p = 0;
    v6 = *(a1 + 32);
    v7 = &v14;
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= &v14 && v5 + 16 * v6 > &v14)
      {
        v13 = &v14 - v5;
        llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow(a1 + 24, v6 + 1);
        v5 = *(a1 + 24);
        v7 = &v13[v5];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow(a1 + 24, v6 + 1);
        v5 = *(a1 + 24);
        v7 = &v14;
      }
    }

    v8 = *(a1 + 32);
    v9 = *v7;
    *(v7 + 1) = 0;
    *(v5 + 16 * v8) = v9;
    *(a1 + 32) = v8 + 1;
    v10 = __p;
    __p = 0;
    if (v10)
    {
      v11 = *(v10 + 6);
      if (v11 != v10 + 64)
      {
        free(v11);
      }

      if ((v10[8] & 1) == 0)
      {
        llvm::deallocate_buffer(*(v10 + 2), (8 * *(v10 + 6)));
      }

      operator delete(v10);
      LODWORD(v8) = *(a1 + 32) - 1;
    }

    *(v4 + 8) = v8;
  }

  else
  {
    LODWORD(v8) = *(v16 + 8);
  }

  return *(a1 + 24) + 16 * v8 + 8;
}

uint64_t mlir::CallGraph::lookupNode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = *(*a1 + 16 * v4);
  if (v5 != a2)
  {
    v8 = 1;
    while (v5 != -4096)
    {
      v9 = v4 + v8++;
      v4 = v9 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  v7 = *(v3 + 16 * v4 + 8);
  if (v7 == *(a1 + 8))
  {
    return 0;
  }

  return *(a1[3] + 16 * v7 + 8);
}

uint64_t *mlir::CallGraph::resolveCallable(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a2;
  v18[1] = a3;
  InterfaceFor = mlir::CallOpInterface::resolveCallableInTable(v18, a4);
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
    {
      v16 = 0;
      v17 = 0;
      return a1 + 17;
    }

    InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
  }

  v16 = v6;
  v17 = InterfaceFor;
  if (!v6)
  {
    return a1 + 17;
  }

  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v16);
  v8 = *(a1 + 4);
  if (!v8)
  {
    return a1 + 17;
  }

  v9 = *a1;
  v10 = ((CallableForCallee >> 4) ^ (CallableForCallee >> 9)) & (v8 - 1);
  v11 = *(*a1 + 16 * v10);
  if (v11 != CallableForCallee)
  {
    v14 = 1;
    while (v11 != -4096)
    {
      v15 = v10 + v14++;
      v10 = v15 & (v8 - 1);
      v11 = *(v9 + 16 * v10);
      if (v11 == CallableForCallee)
      {
        goto LABEL_7;
      }
    }

    return a1 + 17;
  }

LABEL_7:
  if (v10 == v8)
  {
    return a1 + 17;
  }

  v12 = *(v9 + 16 * v10 + 8);
  if (v12 == *(a1 + 8))
  {
    return a1 + 17;
  }

  result = *(a1[3] + 16 * v12 + 8);
  if (!result)
  {
    return a1 + 17;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[255];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::CallOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallOpInterface]";
  v6 = 71;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[245];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::CallableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallableOpInterface]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 8);
  }

  v8 = v6 - 1;
  v9 = (v6 - 1) & ((*a2 >> 9) ^ *a2);
  v10 = (v7 + 8 * v9);
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 8);
      v12 = *(result + 16);
    }

    *a3 = v10;
    *(a3 + 8) = v4 + 8 * v12;
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -2)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -16;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = (v7 + 8 * (v18 & v8));
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = *(result + 16);
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - *(result + 4) <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -2)
  {
    --*(result + 4);
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 8);
    v14 = *(result + 16);
  }

  *a3 = v10;
  *(a3 + 8) = v4 + 8 * v14;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (v4 - 1) & ((*a2 >> 9) ^ *a2);
    v7 = (v3 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -2)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -16;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(uint64_t a1, unsigned int a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v13 = a2;
      v14 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v14;
      *(v14 + 8) = buffer;
      *(v14 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    v16 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, v5, &v16[v5]);

    llvm::deallocate_buffer(v5, v16);
  }

  v7 = *(a1 + 8);
  v8 = &v22;
  if (v7 == -16 || v7 == -2)
  {
    v10 = *(a1 + 16);
    if (v10 != -16 && v10 != -2)
    {
LABEL_28:
      *v8++ = v10;
      v12 = *(a1 + 24);
      if (v12 == -16)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v22 = *(a1 + 8);
    v8 = v23;
    v10 = *(a1 + 16);
    if (v10 != -16 && v10 != -2)
    {
      goto LABEL_28;
    }
  }

  v12 = *(a1 + 24);
  if (v12 == -16)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (v12 != -2)
  {
    *v8++ = v12;
  }

LABEL_31:
  v18 = *(a1 + 32);
  if (v18 != -16 && v18 != -2)
  {
    *v8++ = v18;
  }

  if (a2 >= 5)
  {
    *a1 &= ~1u;
    v19 = a2;
    v20 = a1;
    v21 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v20;
    *(v20 + 8) = v21;
    *(v20 + 16) = v19;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, &v22, v8);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(_DWORD *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v8 = 4;
    v9 = a1 + 2;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 1);
  }

  memset_pattern16(v9, &unk_1E096E600, 8 * v8);
LABEL_10:
  while (a2 != a3)
  {
    v15 = *a2;
    if (*a2 != -16 && v15 != -2)
    {
      if (*a1)
      {
        v11 = 3;
        v10 = v7;
      }

      else
      {
        v10 = *(a1 + 1);
        v11 = a1[4] - 1;
      }

      v12 = v11 & ((v15 >> 9) ^ v15);
      v13 = &v10[2 * v12];
      v14 = *v13;
      if (v15 != *v13)
      {
        v17 = 0;
        v18 = 1;
        while (v14 != -2)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v14 == -16;
          }

          if (v19)
          {
            v17 = v13;
          }

          v20 = v12 + v18++;
          v12 = v20 & v11;
          v13 = &v10[2 * (v20 & v11)];
          v14 = *v13;
          if (v15 == *v13)
          {
            goto LABEL_8;
          }
        }

        if (v17)
        {
          v13 = v17;
        }
      }

LABEL_8:
      *v13 = v15;
      *a1 += 2;
    }

    ++a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v24 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v23 = &result[2 * (v31 & v25)];
              v27 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v28 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v28);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
  v9 = 16 * v7;
  if (v8 < 0xB || ((v6 + 8) < v5 + v9 ? (v18 = v5 + 8 >= &v6[v9]) : (v18 = 1), v18 ? (v19 = 0) : (v19 = 1), v6 < v5 + v9 - 8 ? (v20 = v5 >= &v6[v9 - 8]) : (v20 = 1), !v20 || (v19 & 1) != 0))
  {
    v10 = v5;
    v11 = *a1;
LABEL_4:
    v12 = &v6[16 * v7];
    do
    {
      v13 = *v11;
      *(v11 + 1) = 0;
      *v10++ = v13;
      v11 += 16;
    }

    while (v11 != v12);
    goto LABEL_6;
  }

  v21 = v8 + 1;
  v22 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v10 = (v5 + 16 * v22);
  v11 = &v6[16 * v22];
  v23 = v22;
  v24 = v5;
  v25 = *a1;
  do
  {
    v26 = *v25;
    v27 = *(v25 + 1);
    *(v25 + 1) = 0;
    *(v25 + 3) = 0;
    *v24 = v26;
    v24[1] = v27;
    v24 += 2;
    v25 += 32;
    v23 -= 2;
  }

  while (v23);
  if (v21 != v22)
  {
    goto LABEL_4;
  }

LABEL_6:
  v14 = v6 - 8;
  do
  {
    v15 = *&v14[v9];
    *&v14[v9] = 0;
    if (v15)
    {
      v16 = *(v15 + 48);
      if (v16 != (v15 + 64))
      {
        free(v16);
      }

      if ((*(v15 + 8) & 1) == 0)
      {
        llvm::deallocate_buffer(*(v15 + 16), (8 * *(v15 + 24)));
      }

      operator delete(v15);
    }

    v9 -= 16;
  }

  while (v9);
  v6 = *a1;
LABEL_15:
  v17 = v28;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

void llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(int *a1, uint64_t a2)
{
  v29 = a2;
  v3 = *a1 + 1;
  *a1 = v3;
  *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[]((a1 + 2), &v29) = v3;
  v5 = *(a1 + 5);
  v4 = *(a1 + 6);
  if (v5 >= v4)
  {
    v8 = *(a1 + 4);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 >> 61)
      {
        goto LABEL_30;
      }

      v14 = operator new(8 * v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[8 * v10];
    v6 = v29;
    *v15 = v29;
    v7 = v15 + 8;
    memcpy(v14, v8, v9);
    *(a1 + 4) = v14;
    *(a1 + 5) = v7;
    *(a1 + 6) = &v14[8 * v13];
    if (v8)
    {
      operator delete(v8);
      v6 = v29;
    }
  }

  else
  {
    v6 = v29;
    *v5 = v29;
    v7 = v5 + 8;
  }

  *(a1 + 5) = v7;
  v16 = *(v6 + 48);
  v17 = *a1;
  v18 = *(a1 + 11);
  v19 = *(a1 + 12);
  if (v18 < v19)
  {
    *v18 = v6;
    *(v18 + 8) = v16;
    *(v18 + 16) = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
    *(v18 + 24) = v17;
    v20 = (v18 + 32);
    goto LABEL_29;
  }

  v21 = *(a1 + 10);
  v22 = v18 - v21;
  v23 = (v18 - v21) >> 5;
  v24 = v23 + 1;
  if ((v23 + 1) >> 59)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v25 = v19 - v21;
  if (v25 >> 4 > v24)
  {
    v24 = v25 >> 4;
  }

  if (v25 >= 0x7FFFFFFFFFFFFFE0)
  {
    v26 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = v24;
  }

  if (v26)
  {
    if (!(v26 >> 59))
    {
      v27 = operator new(32 * v26);
      goto LABEL_27;
    }

LABEL_30:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v27 = 0;
LABEL_27:
  v28 = &v27[32 * v23];
  *v28 = v6;
  *(v28 + 1) = v16;
  *(v28 + 2) = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
  *(v28 + 6) = v17;
  v20 = v28 + 32;
  memcpy(v27, v21, v22);
  *(a1 + 10) = v27;
  *(a1 + 11) = v20;
  *(a1 + 12) = &v27[32 * v26];
  if (v21)
  {
    operator delete(v21);
  }

LABEL_29:
  *(a1 + 11) = v20;
}

void llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(uint64_t a1)
{
  *(a1 + 64) = *(a1 + 56);
  if (*(a1 + 80) != *(a1 + 88))
  {
    while (1)
    {
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(a1);
      v3 = *(a1 + 80);
      v2 = *(a1 + 88);
      v38 = *(v2 - 32);
      v4 = *(v2 - 8);
      *(a1 + 88) = v2 - 32;
      if (v3 != v2 - 32 && *(v2 - 40) > v4)
      {
        *(v2 - 40) = v4;
      }

      if (v4 == *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](a1 + 8, &v38))
      {
        break;
      }

      if (*(a1 + 80) == *(a1 + 88))
      {
        return;
      }
    }

    v5 = *(a1 + 64);
    while (1)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 72);
      if (v5 >= v13)
      {
        v14 = *(a1 + 56);
        v15 = v5 - v14;
        v16 = (v5 - v14) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v18 = v13 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v16];
        *v21 = *(v12 - 8);
        v5 = v21 + 8;
        memcpy(v20, v14, v15);
        *(a1 + 56) = v20;
        *(a1 + 64) = v5;
        *(a1 + 72) = &v20[8 * v19];
        if (v14)
        {
          operator delete(v14);
          v12 = *(a1 + 40);
        }
      }

      else
      {
        *v5 = *(v12 - 8);
        v5 += 8;
      }

      *(a1 + 64) = v5;
      *(a1 + 40) = v12 - 8;
      v22 = *(a1 + 24);
      if (!v22)
      {
        goto LABEL_43;
      }

      v6 = *(a1 + 8);
      v7 = *(v5 - 1);
      v8 = v22 - 1;
      v9 = ((v7 >> 4) ^ (v7 >> 9)) & (v22 - 1);
      v10 = (v6 + 16 * v9);
      v11 = *v10;
      if (v7 != *v10)
      {
        break;
      }

LABEL_10:
      *(v10 + 2) = -1;
      if (v7 == v38)
      {
        return;
      }
    }

    v23 = 0;
    v24 = 1;
    while (v11 != -4096)
    {
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = v11 == -8192;
      }

      if (v25)
      {
        v23 = v10;
      }

      v26 = v9 + v24++;
      v9 = v26 & v8;
      v10 = (v6 + 16 * (v26 & v8));
      v11 = *v10;
      if (v7 == *v10)
      {
        goto LABEL_10;
      }
    }

    if (v23)
    {
      v10 = v23;
    }

    v27 = *(a1 + 16);
    if (4 * v27 + 4 < 3 * v22)
    {
      if (v22 + ~v27 - *(a1 + 20) > v22 >> 3)
      {
        *(a1 + 16) = v27 + 1;
        if (*v10 == -4096)
        {
LABEL_30:
          *v10 = *(v5 - 1);
          *(v10 + 2) = 0;
          v5 = *(a1 + 64);
          v7 = *(v5 - 1);
          goto LABEL_10;
        }

LABEL_29:
        --*(a1 + 20);
        goto LABEL_30;
      }
    }

    else
    {
LABEL_43:
      v22 *= 2;
    }

    llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(a1 + 8, v22);
    v28 = *(a1 + 24);
    if (v28)
    {
      v29 = *(a1 + 8);
      v30 = *(v5 - 1);
      v31 = v28 - 1;
      v32 = ((v30 >> 4) ^ (v30 >> 9)) & (v28 - 1);
      v10 = (v29 + 16 * v32);
      v33 = *v10;
      if (v30 != *v10)
      {
        v34 = 0;
        v35 = 1;
        while (v33 != -4096)
        {
          if (v34)
          {
            v36 = 0;
          }

          else
          {
            v36 = v33 == -8192;
          }

          if (v36)
          {
            v34 = v10;
          }

          v37 = v32 + v35++;
          v32 = v37 & v31;
          v10 = (v29 + 16 * (v37 & v31));
          v33 = *v10;
          if (v30 == *v10)
          {
            goto LABEL_56;
          }
        }

        if (v34)
        {
          v10 = v34;
        }
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_56:
    ++*(a1 + 16);
    if (*v10 == -4096)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 16 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 16 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 8) = 0;
  return v5 + 8;
}

uint64_t llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(uint64_t a1)
{
  v2 = *(a1 + 88);
  while (1)
  {
    result = *(v2 - 24);
    if (result == *(*(v2 - 32) + 48) + 8 * *(*(v2 - 32) + 56))
    {
      return result;
    }

    v4 = *(v2 - 16);
    *(v2 - 24) = result + 8;
    v5 = v4();
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_2;
    }

    v7 = *(a1 + 8);
    v8 = ((v5 >> 4) ^ (v5 >> 9)) & (v6 - 1);
    v9 = *(v7 + 16 * v8);
    if (v9 == v5)
    {
LABEL_6:
      if (v8 == v6)
      {
        goto LABEL_2;
      }

      v10 = *(v7 + 16 * v8 + 8);
      v2 = *(a1 + 88);
      if (*(v2 - 8) > v10)
      {
        *(v2 - 8) = v10;
      }
    }

    else
    {
      v11 = 1;
      while (v9 != -4096)
      {
        v12 = v8 + v11++;
        v8 = v12 & (v6 - 1);
        v9 = *(v7 + 16 * v8);
        if (v9 == v5)
        {
          goto LABEL_6;
        }
      }

LABEL_2:
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(a1, v5);
      v2 = *(a1 + 88);
    }
  }
}

void mlir::Liveness::build(mlir::ForwardIterator **this)
{
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v1 = *this;
  v65 = 0;
  *v64 = 0u;
  v66 = &v68;
  v67 = 0;
  v68 = &v61;
  v69 = v64;
  v2 = v67;
  if (!v67)
  {
LABEL_112:
    if (v66 != &v68)
    {
      free(v66);
    }

    llvm::deallocate_buffer(v64[0], (8 * v65));
  }

  while (1)
  {
    v3 = *(v66 + v2 - 1);
    v4 = v3 >> 4;
    if (v65)
    {
      v5 = (v4 ^ (v3 >> 9)) & (v65 - 1);
      v6 = *(v64[0] + v5);
      if (v3 == v6)
      {
LABEL_6:
        *(v64[0] + v5) = -8192;
        v64[1] = vadd_s32(v64[1], 0x1FFFFFFFFLL);
      }

      else
      {
        v58 = 1;
        while (v6 != -4096)
        {
          v59 = v5 + v58++;
          v5 = v59 & (v65 - 1);
          v6 = *(v64[0] + v5);
          if (v3 == v6)
          {
            goto LABEL_6;
          }
        }
      }
    }

    LODWORD(v67) = v2 - 1;
    v7 = v63;
    if (v63)
    {
      v8 = (v63 - 1) & (v4 ^ (v3 >> 9));
      v9 = (v61 + 656 * v8);
      v10 = *v9;
      if (*v9 == v3)
      {
        goto LABEL_24;
      }

      v11 = 0;
      v12 = 1;
      while (v10 != -4096)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = v10 == -8192;
        }

        if (v13)
        {
          v11 = v9;
        }

        v14 = v8 + v12++;
        v8 = v14 & (v63 - 1);
        v9 = (v61 + 656 * v8);
        v10 = *v9;
        if (*v9 == v3)
        {
          goto LABEL_24;
        }
      }

      if (v11)
      {
        v9 = v11;
      }
    }

    else
    {
      v9 = 0;
    }

    v68 = v9;
    if (4 * v62 + 4 >= 3 * v63)
    {
      break;
    }

    if (v63 + ~v62 - HIDWORD(v62) <= v63 >> 3)
    {
      goto LABEL_110;
    }

    LODWORD(v62) = v62 + 1;
    if (*v9 != -4096)
    {
      goto LABEL_22;
    }

LABEL_23:
    *v9 = v3;
    bzero(v9 + 1, 0x288uLL);
    v9[2] = (v9 + 6);
    v9[3] = (v9 + 6);
    *(v9 + 8) = 16;
    v9[22] = (v9 + 26);
    v9[23] = (v9 + 26);
    *(v9 + 48) = 16;
    v9[42] = (v9 + 46);
    v9[43] = (v9 + 46);
    *(v9 + 88) = 16;
    v9[62] = (v9 + 66);
    v9[63] = (v9 + 66);
    *(v9 + 128) = 16;
LABEL_24:
    v60 = v3;
    mlir::SuccessorRange::SuccessorRange(&v68, v9[1]);
    v15 = v69;
    if (v69)
    {
      v16 = 0;
      v17 = v68;
      while (1)
      {
        if (!v63)
        {
          goto LABEL_33;
        }

        v18 = v17[4 * v16 + 3];
        v19 = ((v18 >> 4) ^ (v18 >> 9)) & (v63 - 1);
        v20 = (v61 + 656 * v19);
        v21 = *v20;
        if (*v20 != v18)
        {
          break;
        }

LABEL_34:
        v25 = v20[2];
        v24 = v20[3];
        v26 = v20 + 2;
        if (v24 == v25)
        {
          v27 = 20;
        }

        else
        {
          v27 = 16;
        }

        v28 = *(v26 + v27);
        if (v28)
        {
          v29 = 8 * v28;
          v30 = v24;
          while (*v30 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v30;
            v29 -= 8;
            if (!v29)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v30 = v24;
        }

        v31 = &v24[v28];
        if (v30 != v31)
        {
          v32 = v9[22];
          v33 = v9[23];
          v34 = *v30;
          while (1)
          {
            if (v33 != v32)
            {
              goto LABEL_46;
            }

            v35 = *(v9 + 49);
            if (!v35)
            {
              break;
            }

            v36 = 0;
            while (*(v32 + v36) != v34)
            {
              v36 += 8;
              if (8 * v35 == v36)
              {
                goto LABEL_56;
              }
            }

            do
            {
LABEL_48:
              if (++v30 == v31)
              {
                goto LABEL_26;
              }

              v34 = *v30;
            }

            while (*v30 >= 0xFFFFFFFFFFFFFFFELL);
            if (v30 == v31)
            {
              goto LABEL_26;
            }
          }

LABEL_56:
          if (v35 >= *(v9 + 48))
          {
LABEL_46:
            llvm::SmallPtrSetImplBase::insert_imp_big((v9 + 22), v34);
          }

          else
          {
            *(v9 + 49) = v35 + 1;
            *(v32 + v35) = v34;
          }

          v32 = v9[22];
          v33 = v9[23];
          goto LABEL_48;
        }

LABEL_26:
        if (++v16 == v15)
        {
          goto LABEL_58;
        }
      }

      v22 = 1;
      while (v21 != -4096)
      {
        v23 = v19 + v22++;
        v19 = v23 & (v63 - 1);
        v20 = (v61 + 656 * v19);
        v21 = *v20;
        if (*v20 == v18)
        {
          goto LABEL_34;
        }
      }

LABEL_33:
      v20 = (v61 + 656 * v63);
      goto LABEL_34;
    }

LABEL_58:
    {
      v37 = *v60;
      if (*v60)
      {
        while (1)
        {
          v41 = mlir::PredecessorIterator::unwrap(v37);
          if (!v65)
          {
            goto LABEL_84;
          }

          v38 = ((v41 >> 4) ^ (v41 >> 9)) & (v65 - 1);
          v39 = v64[0] + 8 * v38;
          v40 = *v39;
          if (v41 != *v39)
          {
            break;
          }

LABEL_62:
          v37 = *v37;
          if (!v37)
          {
            goto LABEL_3;
          }
        }

        v43 = 0;
        v44 = 1;
        while (v40 != -4096)
        {
          if (v43)
          {
            v45 = 0;
          }

          else
          {
            v45 = v40 == -8192;
          }

          if (v45)
          {
            v43 = v39;
          }

          v46 = v38 + v44++;
          v38 = v46 & (v65 - 1);
          v39 = v64[0] + 8 * v38;
          v40 = *v39;
          if (v41 == *v39)
          {
            goto LABEL_62;
          }
        }

        if (v43)
        {
          v47 = v43;
        }

        else
        {
          v47 = v39;
        }

        if (4 * LODWORD(v64[1]) + 4 < 3 * v65)
        {
          if (v65 + ~LODWORD(v64[1]) - HIDWORD(v64[1]) > v65 >> 3)
          {
            ++LODWORD(v64[1]);
            if (*v47 == -4096)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          }

          v48 = v41;
          llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v64, v65);
          v49 = v65;
          if (v65)
          {
            goto LABEL_85;
          }
        }

        else
        {
LABEL_84:
          v48 = v41;
          llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v64, 2 * v65);
          v49 = v65;
          if (v65)
          {
LABEL_85:
            v41 = v48;
            v50 = v49 - 1;
            v51 = (v49 - 1) & ((v48 >> 4) ^ (v48 >> 9));
            v47 = v64[0] + 8 * v51;
            v52 = *v47;
            if (v48 != *v47)
            {
              v53 = 0;
              v54 = 1;
              while (v52 != -4096)
              {
                if (v53)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v52 == -8192;
                }

                if (v55)
                {
                  v53 = v47;
                }

                v56 = v51 + v54++;
                v51 = v56 & v50;
                v47 = v64[0] + 8 * (v56 & v50);
                v52 = *v47;
                if (v48 == *v47)
                {
                  goto LABEL_97;
                }
              }

              if (v53)
              {
                v47 = v53;
              }
            }

LABEL_97:
            ++LODWORD(v64[1]);
            if (*v47 == -4096)
            {
LABEL_68:
              *v47 = v41;
              v42 = v67;
              if (v67 >= HIDWORD(v67))
              {
                v57 = v41;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, &v68, v67 + 1, 8);
                v41 = v57;
                v42 = v67;
              }

              *(v66 + v42) = v41;
              LODWORD(v67) = v67 + 1;
              goto LABEL_62;
            }

LABEL_67:
            --HIDWORD(v64[1]);
            goto LABEL_68;
          }
        }

        v47 = 0;
        v41 = v48;
        goto LABEL_97;
      }
    }

LABEL_3:
    v2 = v67;
    if (!v67)
    {
      goto LABEL_112;
    }
  }

  v7 = 2 * v63;
LABEL_110:
  v9 = v68;
  LODWORD(v62) = v62 + 1;
  if (*v68 == -4096)
  {
    goto LABEL_23;
  }

LABEL_22:
  --HIDWORD(v62);
  goto LABEL_23;
}

void mlir::Liveness::Liveness(mlir::Liveness *this, mlir::Operation *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  mlir::Liveness::build(this);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 336 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 336 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 328) = 0;
  *(v5 + 8) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 16) = v5 + 48;
  *(v5 + 24) = v5 + 48;
  *(v5 + 32) = 16;
  *(v5 + 176) = v5 + 208;
  *(v5 + 184) = v5 + 208;
  *(v5 + 192) = 16;
  return v5 + 8;
}

uint64_t *mlir::Liveness::getLiveness(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = (v2 + 336 * v4);
  v6 = *v5;
  if (*v5 != a2)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v4 + v8++;
      v4 = v9 & (v3 - 1);
      v5 = (v2 + 336 * v4);
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == (v2 + 336 * v3))
  {
    return 0;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t mlir::LivenessBlockInfo::getStartOperation(uint64_t a1, void *a2)
{
  v16 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v16);
  v4 = v16;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = a1 + 8;
  if (v6 == v5)
  {
    v11 = *(a1 + 28);
    if (v11)
    {
      v12 = 8 * v11;
      while (*v5 != v16)
      {
        ++v5;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v5 = &v6[v11];
    }

    v9 = *(a1 + 16);
  }

  else
  {
    v8 = DefiningOp;
    v5 = llvm::SmallPtrSetImplBase::doFind((a1 + 8), v16);
    v6 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (!v5)
    {
      v10 = 16;
      if (v9 == v6)
      {
        v10 = 20;
      }

      v5 = &v9[*(v7 + v10)];
    }

    DefiningOp = v8;
  }

  v14 = v9 == v6;
  v13 = 16;
  if (v14)
  {
    v13 = 20;
  }

  v14 = v5 != &v9[*(v7 + v13)] || DefiningOp == 0;
  if (v14)
  {
    return MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(*a1 + 40), v4);
  }

  return DefiningOp;
}

uint64_t mlir::LivenessBlockInfo::getEndOperation(uint64_t a1, uint64_t **a2, mlir::Operation *a3)
{
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = (a1 + 168);
  if (v8 == v7)
  {
    v12 = *(a1 + 188);
    if (v12)
    {
      v13 = 8 * v12;
      while (*v7 != a2)
      {
        ++v7;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v7 = &v8[v12];
    }

    v10 = v8;
  }

  else
  {
    v7 = llvm::SmallPtrSetImplBase::doFind(v9, a2);
    v8 = *(a1 + 168);
    v10 = *(a1 + 176);
    if (!v7)
    {
      v11 = 16;
      if (v10 == v8)
      {
        v11 = 20;
      }

      v7 = &v10[*(v9 + v11)];
    }
  }

  v14 = v10 == v8;
  v15 = 16;
  if (v14)
  {
    v15 = 20;
  }

  if (v7 == &v10[*(v9 + v15)])
  {
    v18 = *a2;
    if (*a2)
    {
      do
      {
        AncestorOpInBlock = mlir::Block::findAncestorOpInBlock(*a1, v18[2]);
        if (AncestorOpInBlock)
        {
          v20 = AncestorOpInBlock;
          if (mlir::Operation::isBeforeInBlock(a3, AncestorOpInBlock))
          {
            a3 = v20;
          }
        }

        v18 = *v18;
      }

      while (v18);
    }

    return a3;
  }

  else
  {
    v16 = *(*a1 + 32);

    return MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, a2);
  }
}

BOOL anonymous namespace::BlockInfoBuilder::updateLiveIn(_anonymous_namespace_::BlockInfoBuilder *this)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v17, &v22, (this + 488));
  v2 = *(this + 22);
  v3 = 16;
  if (v2 == *(this + 21))
  {
    v3 = 20;
  }

  v4 = *(this + v3 + 168);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(this + 22);
    while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v6 = *(this + 22);
  }

  v7 = (v2 + 8 * v4);
  if (v6 != v7)
  {
    v8 = v17;
    v9 = v18;
    while (1)
    {
      v10 = *v6;
      if (v9 != v8)
      {
        goto LABEL_12;
      }

      v11 = v20;
      if (v20)
      {
        v12 = 0;
        while (v8[v12] != v10)
        {
          if (v20 == ++v12)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_14;
      }

LABEL_25:
      if (v20 < v19)
      {
        ++v20;
        v8[v11] = v10;
      }

      else
      {
LABEL_12:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v17, v10);
      }

      v8 = v17;
LABEL_14:
      if (++v6 != v7)
      {
        v9 = v18;
        while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (++v6 == v7)
          {
            goto LABEL_27;
          }
        }

        if (v6 != v7)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_27:
  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(&v17, this + 328);
  v13 = v20 - v21;
  v14 = (this + 8);
  v15 = *(this + 7) - *(this + 8);
  if (&v17 != v14 && v13 != v15)
  {
    llvm::SmallPtrSetImplBase::MoveFrom(v14, 16, &v17);
  }

  if (v18 != v17)
  {
    free(v18);
  }

  return v13 != v15;
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = result + 24 * v8;
    if (a4)
    {
      if (a4 == 1)
      {
        do
        {
          v11 = *(v9 + 8);
          if (v11 != v9)
          {
            do
            {
              v12 = *(v11 + 8);
              for (i = *(v11 + 32); i != v11 + 24; i = *(i + 8))
              {
                v14 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(i, v8);
                mlir::detail::walk<mlir::ForwardIterator>(v14, a2, a3, 1);
              }

              result = (a2)(a3, v11 - 8);
              v11 = v12;
            }

            while (v12 != v9);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }

      else
      {
        do
        {
          v21 = *(v9 + 8);
          if (v21 != v9)
          {
            do
            {
              v22 = *(v21 + 8);
              v23 = v21 + 24;
              v24 = *(v21 + 32);
              if (v24 != v21 + 24)
              {
                do
                {
                  v25 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v24, v8);
                  result = mlir::detail::walk<mlir::ForwardIterator>(v25, a2, a3, a4);
                  v24 = *(v24 + 8);
                }

                while (v24 != v23);
              }

              v21 = v22;
            }

            while (v22 != v9);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }
    }

    else
    {
      do
      {
        v15 = *(v9 + 8);
        if (v15 != v9)
        {
          do
          {
            v16 = *(v15 + 8);
            result = (a2)(a3, v15 - 8);
            v18 = v15 + 24;
            for (j = *(v15 + 32); j != v18; j = *(j + 8))
            {
              v20 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v17);
              result = mlir::detail::walk<mlir::ForwardIterator>(v20, a2, a3, 0);
            }

            v15 = v16;
          }

          while (v16 != v9);
        }

        v9 += 24;
      }

      while (v9 != v10);
    }
  }

  return result;
}

{
  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v8)
  {
    return 1;
  }

  v9 = Iterable;
  v10 = Iterable + 24 * v8;
  if (a4 == 1)
  {
    while (1)
    {
      v23 = *(v9 + 8);
      if (v23 != v9)
      {
        break;
      }

LABEL_24:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v24 = *(v23 + 8);
      v25 = *(v23 + 32);
      if (v25 != v23 + 24)
      {
        break;
      }

LABEL_29:
      result = (a2)(a3, v23 - 8);
      if (!result)
      {
        return result;
      }

      v23 = v24;
      if (v24 == v9)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v26 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v25, v8);
      result = mlir::detail::walk<mlir::ForwardIterator>(v26, a2, a3, 1);
      if (!result)
      {
        break;
      }

      v25 = *(v25 + 8);
      if (v25 == v23 + 24)
      {
        goto LABEL_29;
      }
    }
  }

  else if (a4)
  {
    while (1)
    {
      v18 = *(v9 + 8);
      if (v18 != v9)
      {
        break;
      }

LABEL_16:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v19 = *(v18 + 8);
      v20 = v18 + 24;
      v21 = *(v18 + 32);
      if (v21 != v18 + 24)
      {
        break;
      }

LABEL_19:
      v18 = v19;
      if (v19 == v9)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v22 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v8);
      result = mlir::detail::walk<mlir::ForwardIterator>(v22, a2, a3, a4);
      if (!result)
      {
        break;
      }

      v21 = *(v21 + 8);
      if (v21 == v20)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11 != v9)
      {
        break;
      }

LABEL_5:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v13 = *(v11 + 8);
      result = (a2)(a3, v11 - 8);
      if (result != 2)
      {
        if (!result)
        {
          return result;
        }

        v15 = v11 + 24;
        v16 = *(v11 + 32);
        if (v16 != v15)
        {
          break;
        }
      }

LABEL_7:
      v11 = v13;
      if (v13 == v9)
      {
        goto LABEL_5;
      }
    }

    while (1)
    {
      v17 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v14);
      result = mlir::detail::walk<mlir::ForwardIterator>(v17, a2, a3, 0);
      if (!result)
      {
        break;
      }

      v16 = *(v16 + 8);
      if (v16 == v15)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = Iterable;
    v10 = Iterable + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        v13 = *(v12 + 40);
        v14 = v12 + 32;
        while (v13 != v14)
        {
          v15 = *(v13 + 8);
          v16 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v13, v8);
          v17 = mlir::detail::walk<mlir::ForwardIterator>(v16, a2, a3, a4);
          v13 = v15;
          if (!v17)
          {
            return 0;
          }
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 != 1)
  {
    return 1;
  }

  return (a2)(a3, a1);
}

{
  if (!a4)
  {
    (a2)(a3, a1);
  }

  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = result + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        result = *(v12 + 40);
        v13 = v12 + 32;
        if (result != v12 + 32)
        {
          do
          {
            v14 = *(result + 8);
            v15 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, v8);
            mlir::detail::walk<mlir::ForwardIterator>(v15, a2, a3, a4);
            result = v14;
          }

          while (v14 != v13);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 == 1)
  {

    return (a2)(a3, a1);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Block *)>::callback_fn<buildBlockMapping(mlir::Operation *,llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>> &)::$_0>(uint64_t *a1, mlir::Block *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *v4 + 656 * v6;
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_63;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & (v5 - 1);
      v7 = *v4 + 656 * v6;
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_63;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v51[0] = v7;
  v13 = *(v4 + 8);
  if (4 * v13 + 4 >= (3 * v5))
  {
    LODWORD(v5) = 2 * v5;
  }

  else if (v5 + ~v13 - *(v4 + 12) > v5 >> 3)
  {
    *(v4 + 8) = v13 + 1;
    if (*v7 == -4096)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = v51[0];
  ++*(v4 + 8);
  if (*v7 != -4096)
  {
LABEL_16:
    --*(v4 + 12);
  }

LABEL_17:
  *v7 = a2;
  *(v7 + 8) = a2;
  v14 = v7 + 8;
  *(v7 + 16) = v7 + 48;
  *(v7 + 24) = v7 + 48;
  *(v7 + 32) = 16;
  *(v7 + 40) = 0;
  *(v7 + 176) = v7 + 208;
  *(v7 + 184) = v7 + 208;
  *(v7 + 192) = 16;
  *(v7 + 200) = 0;
  *(v7 + 336) = v7 + 368;
  *(v7 + 344) = v7 + 368;
  *(v7 + 352) = 16;
  *(v7 + 360) = 0;
  *(v7 + 496) = v7 + 528;
  *(v7 + 504) = v7 + 528;
  *(v7 + 512) = 16;
  *(v7 + 520) = 0;
  v15 = *(a2 + 6);
  v16 = *(a2 + 7);
  if (v15 != v16)
  {
    while (1)
    {
      v31 = *v15;
      v32 = *(v7 + 336);
      if (*(v7 + 344) != v32)
      {
        goto LABEL_41;
      }

      v40 = *(v7 + 356);
      if (!v40)
      {
        break;
      }

      v41 = 8 * v40;
      v42 = *(v7 + 336);
      while (*v42 != v31)
      {
        ++v42;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_57;
        }
      }

LABEL_42:
      v33 = v31;
      do
      {
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_39;
        }

        v34 = *(*(v33 + 2) + 16);
        Parent = mlir::Block::getParent(a2);
      }

      while (mlir::Region::findAncestorBlockInRegion(Parent, v34) == a2);
      v36 = *(v7 + 176);
      if (*(v7 + 184) != v36)
      {
        goto LABEL_38;
      }

      v37 = *(v7 + 196);
      if (v37)
      {
        v38 = 8 * v37;
        v39 = *(v7 + 176);
        while (*v39 != v31)
        {
          ++v39;
          v38 -= 8;
          if (!v38)
          {
            goto LABEL_50;
          }
        }

LABEL_39:
        if (++v15 == v16)
        {
          goto LABEL_18;
        }

        continue;
      }

LABEL_50:
      if (v37 >= *(v7 + 192))
      {
LABEL_38:
        llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 176), v31);
        goto LABEL_39;
      }

      *(v7 + 196) = v37 + 1;
      *(v36 + 8 * v37) = v31;
      if (++v15 == v16)
      {
        goto LABEL_18;
      }
    }

LABEL_57:
    if (v40 < *(v7 + 352))
    {
      *(v7 + 356) = v40 + 1;
      *(v32 + 8 * v40) = v31;
      goto LABEL_42;
    }

LABEL_41:
    llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 336), *v15);
    goto LABEL_42;
  }

LABEL_18:
  v17 = (a2 + 32);
  v18 = *(a2 + 5);
  if (v18 != (a2 + 32))
  {
    v49 = v3;
    do
    {
      v19 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v5);
      v20 = *(v19 + 36);
      if (v20)
      {
        v21 = v19 - 16;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = 0;
        while (1)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v22);
          v24 = NextResultAtOffset;
          do
          {
            v24 = *v24;
            if (!v24)
            {
              goto LABEL_27;
            }

            v25 = *(*(v24 + 2) + 16);
            v26 = mlir::Block::getParent(a2);
          }

          while (mlir::Region::findAncestorBlockInRegion(v26, v25) == a2);
          v27 = *(v7 + 176);
          if (*(v7 + 184) != v27)
          {
            break;
          }

          v28 = *(v7 + 196);
          if (v28)
          {
            v29 = 8 * v28;
            v30 = *(v7 + 176);
            while (*v30 != NextResultAtOffset)
            {
              ++v30;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            if (v28 >= *(v7 + 192))
            {
              break;
            }

            *(v7 + 196) = v28 + 1;
            *(v27 + 8 * v28) = NextResultAtOffset;
          }

LABEL_27:
          if (++v22 == v20)
          {
            goto LABEL_20;
          }
        }

        llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 176), NextResultAtOffset);
        goto LABEL_27;
      }

LABEL_20:
      v18 = v18[1];
      v17 = (a2 + 32);
    }

    while (v18 != (a2 + 32));
    v18 = *(a2 + 5);
    v14 = v7 + 8;
    v3 = v49;
  }

  v51[0] = v14;
  if (v18 != v17)
  {
    do
    {
      v43 = v18[1];
      v44 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v5);
      v18 = v43;
    }

    while (v43 != v17);
  }

  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(v7 + 496, v7 + 336);
LABEL_63:
  {
    v45 = *a2;
    if (v45)
    {
      v46 = v3[1];
      do
      {
        v50 = mlir::PredecessorIterator::unwrap(v45);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v46, &v50, v51);
        if (v52 == 1)
        {
          v47 = v50;
          v48 = *(v46 + 32);
          if (v48 >= *(v46 + 36))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v46 + 24, v46 + 40, v48 + 1, 8);
            v48 = *(v46 + 32);
          }

          *(*(v46 + 24) + 8 * v48) = v47;
          ++*(v46 + 32);
        }

        v45 = *v45;
      }

      while (v45);
    }
  }
}