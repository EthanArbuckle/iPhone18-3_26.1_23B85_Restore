@interface String:
- (Class)NSObject;
- (id)String;
- (uint64_t)AnimationResource;
- (uint64_t)Any;
- (uint64_t)AudioResource;
- (uint64_t)String;
- (unint64_t)Any;
- (unint64_t)AudioResource;
- (unint64_t)String;
- (void)String;
@end

@implementation String:

- (uint64_t)String
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

- (uint64_t)AudioResource
{
  if (a3)
  {
  }

  return result;
}

- (unint64_t)String
{
  result = lazy protocol witness table cache variable for type [String : String]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [String : String]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : String]? and conformance <A> A?);
  }

  return result;
}

- (void)String
{
  if (!lazy cache variable for type metadata for [String : String])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : String]);
    }
  }
}

- (uint64_t)AnimationResource
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

- (Class)NSObject
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (unint64_t)Any
{
  result = lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVySSyp_GMd, &_sSD4KeysVySSyp_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys);
  }

  return result;
}

- (uint64_t)Any
{
  return sub_1C1372490(a1);
}

{
  return sub_1C13724C0(a1);
}

- (id)String
{
  v27 = a2;
  v28 = a5;
  v26 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v25 = v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v7;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = a3;
  v21 = v26;
  v22 = v25(v27, v20, v21, v28, v11, v14, v16, v17, v19);

  (*(v8 + 8))(v11, v15);
  if (v22)
  {
    v23 = _convertErrorToNSError(_:)();
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)AudioResource
{
  result = lazy protocol witness table cache variable for type [String : AudioResource].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [String : AudioResource].Keys and conformance [A : B].Keys)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVySS10RealityKit13AudioResourceC_GMd, &_sSD4KeysVySS10RealityKit13AudioResourceC_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : AudioResource].Keys and conformance [A : B].Keys);
  }

  return result;
}

@end