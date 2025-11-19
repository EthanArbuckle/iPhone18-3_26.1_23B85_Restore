uint64_t specialized static PhotogrammetrySession.Configuration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    goto LABEL_10;
  }

  v18 = v15;
  v27 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v19 = *(v27 + 28);
  v20 = *(v18 + 48);
  outlined init with copy of [String : String](&a1[v19], v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = v20;
  outlined init with copy of [String : String](&a2[v19], &v17[v20], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v28], 1, v4) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_13:
      v23 = a1[*(v27 + 32)] ^ a2[*(v27 + 32)] ^ 1;
      return v23 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of [String : String](v17, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v22 = v28;
  if (v21(&v17[v28], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    outlined destroy of BodyTrackingComponent?(v17, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v17[v22], v4);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  outlined destroy of BodyTrackingComponent?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v25)
  {
    goto LABEL_13;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

NSObject *specialized PhotogrammetrySessionImpl.__allocating_init<A>(id:input:configuration:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v103 = a2;
  v104 = a1;
  v102 = type metadata accessor for UUID();
  v4 = *(v102 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v7 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v89 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  v23 = v101;
  specialized static PhotogrammetrySessionImpl.verifyFreeStorageForSequenceInputOrThrow(configuration:)(a3);
  v101 = v23;
  if (v23)
  {

    outlined destroy of PhotogrammetrySession.Configuration(a3, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v4 + 8))(v104, v102);
    return v12;
  }

  v96 = v15;
  v97 = v4;
  v91 = v9;
  v92 = v12;
  v90 = v19;
  v94 = v16;
  v24 = v100;
  v25 = *(v100 + 28);
  v98 = a3;
  outlined init with copy of [String : String](a3 + v25, v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v26 = type metadata accessor for URL();
  v27 = (*(*(v26 - 8) + 48))(v22, 1, v26);
  outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v27 == 1)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v28 = type metadata accessor for Logger();
  v93 = __swift_project_value_buffer(v28, logger);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v99;
  v33 = v96;
  if (v31)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1C1358000, v29, v30, "Creating internal photogrammetry session from photogrammetry samples...", v34, 2u);
    MEMORY[0x1C6902A30](v34, -1, -1);
  }

  v35 = type metadata accessor for PhotogrammetrySession.Configuration();
  v95 = &v89;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhotogrammetrySession.Configuration(v98, v33, type metadata accessor for PhotogrammetrySession.Configuration);
  PhotogrammetrySession.Configuration.init(_:)(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_SequenceBoxCys07LazyMapA0Vys03AnyA0Vy17RealityFoundation20PhotogrammetrySampleVG6CoreOCAHVGGMd, &_ss12_SequenceBoxCys07LazyMapA0Vys03AnyA0Vy17RealityFoundation20PhotogrammetrySampleVG6CoreOCAHVGGMR);
  v39 = swift_allocObject();
  v39[2] = v103;
  v39[3] = closure #1 in PhotogrammetrySessionImpl.init<A>(id:input:configuration:);
  v39[4] = 0;
  v40 = MEMORY[0x1EEE9AC00](v39);
  (*(v36 + 16))(v38, v38, v35, v40);
  v41 = type metadata accessor for PhotogrammetrySession();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();

  v44 = v101;
  v45 = PhotogrammetrySession.init(photogrammetrySamples:configuration:)();
  if (!v44)
  {
    v47 = v45;
    v48 = v97;
    v49 = v102;
    (*(v97 + 16))(v32, v104, v102);
    v50 = v92;
    outlined init with copy of PhotogrammetrySession.Configuration(v98, v92, type metadata accessor for PhotogrammetrySession.Configuration);
    v51 = type metadata accessor for PhotogrammetrySessionImpl(0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v12 = PhotogrammetrySessionImpl.init(id:using:configuration:)(v32, v47, v50);
    (*(v36 + 8))(v38, v35);

    PhotogrammetrySessionImpl.logAnalyticsEvents(sourceType:)(1);

    outlined destroy of PhotogrammetrySession.Configuration(v98, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v48 + 8))(v104, v49);
    return v12;
  }

  v46 = v24;
  (*(v36 + 8))(v38, v35);

  v106 = v44;
  v54 = type metadata accessor for PhotogrammetrySession.Error();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v89 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v60 = (*(v55 + 88))(v58, v54);
    v61 = v60;
    if (MEMORY[0x1E6998308] && v60 == *MEMORY[0x1E6998308])
    {

      v62 = v91;
      outlined init with copy of PhotogrammetrySession.Configuration(v98, v91, type metadata accessor for PhotogrammetrySession.Configuration);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        LODWORD(v101) = v64;
        v66 = v62;
        v67 = v65;
        v103 = swift_slowAlloc();
        v105 = v103;
        *v67 = 141558274;
        *(v67 + 4) = 1752392040;
        *(v67 + 12) = 2080;
        outlined init with copy of [String : String](v66 + *(v46 + 28), v90, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v68 = String.init<A>(describing:)();
        v70 = v69;
        outlined destroy of PhotogrammetrySession.Configuration(v66, type metadata accessor for PhotogrammetrySession.Configuration);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v105);

        *(v67 + 14) = v71;
        _os_log_impl(&dword_1C1358000, v63, v101, "Internal photogrammetry session init for photogrammetry samples failed for checkpointDirectory = %{mask.hash}s", v67, 0x16u);
        v72 = v103;
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x1C6902A30](v72, -1, -1);
        MEMORY[0x1C6902A30](v67, -1, -1);
      }

      else
      {

        outlined destroy of PhotogrammetrySession.Configuration(v62, type metadata accessor for PhotogrammetrySession.Configuration);
      }

      v85 = v97;
      lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
      swift_allocError();
      (*(v55 + 104))(v86, v61, v54);
      swift_willThrow();
      outlined destroy of PhotogrammetrySession.Configuration(v98, type metadata accessor for PhotogrammetrySession.Configuration);
      isa = v85[1].isa;
      v12 = v85 + 1;
      isa(v104, v102);
LABEL_26:

      return v12;
    }

    if (MEMORY[0x1E69982F8] && v60 == *MEMORY[0x1E69982F8])
    {

      v12 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1C1358000, v12, v73, "Internal photogrammetry session init for photogrammetry samples failed!", v74, 2u);
        MEMORY[0x1C6902A30](v74, -1, -1);
      }

      lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
      swift_allocError();
      (*(v55 + 104))(v75, v61, v54);
      swift_willThrow();
      outlined destroy of PhotogrammetrySession.Configuration(v98, type metadata accessor for PhotogrammetrySession.Configuration);
      (*(v97 + 8))(v104, v102);
      goto LABEL_26;
    }

    (*(v55 + 8))(v58, v54);
  }

  v76 = v44;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v106 = v80;
    *v79 = 136446210;
    swift_getErrorValue();
    v81 = Error.localizedDescription.getter();
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v106);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_1C1358000, v77, v78, "Internal photogrammetry session init for photogrammetry samples failed with %{public}s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x1C6902A30](v80, -1, -1);
    MEMORY[0x1C6902A30](v79, -1, -1);
  }

  v84 = v97;
  v12 = v98;
  swift_willThrow();
  outlined destroy of PhotogrammetrySession.Configuration(v12, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v84 + 8))(v104, v102);
  return v12;
}

uint64_t outlined init with copy of PhotogrammetrySession.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PhotogrammetrySession.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PhotogrammetrySession.Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.SampleOrdering and conformance PhotogrammetrySession.Configuration.SampleOrdering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Configuration.FeatureSensitivity and conformance PhotogrammetrySession.Configuration.FeatureSensitivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Detail and conformance PhotogrammetrySession.Request.Detail);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Request.Geometry and conformance PhotogrammetrySession.Request.Geometry);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Output.ProcessingStage and conformance PhotogrammetrySession.Output.ProcessingStage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Outputs.Iterator and conformance PhotogrammetrySession.Outputs.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrientedBoundingBox and conformance OrientedBoundingBox()
{
  result = lazy protocol witness table cache variable for type OrientedBoundingBox and conformance OrientedBoundingBox;
  if (!lazy protocol witness table cache variable for type OrientedBoundingBox and conformance OrientedBoundingBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrientedBoundingBox and conformance OrientedBoundingBox);
  }

  return result;
}

uint64_t type metadata completion function for PhotogrammetrySession()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of PhotogrammetrySession.process(requests:)()
{
  return (*(*v0 + 96))();
}

{
  return MEMORY[0x1EEDF9B10]();
}

uint64_t dispatch thunk of PhotogrammetrySession.cancel()()
{
  return (*(*v0 + 104))();
}

{
  return MEMORY[0x1EEDF9AD0]();
}

uint64_t type metadata completion function for PhotogrammetrySession.Error()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for (requiredBytes: Int64)();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for (requiredBytes: Int64)()
{
  result = lazy cache variable for type metadata for (requiredBytes: Int64);
  if (!lazy cache variable for type metadata for (requiredBytes: Int64))
  {
    result = MEMORY[0x1E69E7360];
    atomic_store(MEMORY[0x1E69E7360], &lazy cache variable for type metadata for (requiredBytes: Int64));
  }

  return result;
}

void type metadata completion function for PhotogrammetrySession.Configuration()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for (url: URL, detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?)()
{
  if (!lazy cache variable for type metadata for (url: URL, detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (url: URL, detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?));
    }
  }
}

void type metadata accessor for (detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?)()
{
  if (!lazy cache variable for type metadata for (detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (detail: PhotogrammetrySession.Request.Detail, geometry: PhotogrammetrySession.Request.Geometry?));
    }
  }
}

uint64_t type metadata completion function for PhotogrammetrySession.Result()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModelEntity();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy120_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Pose(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Pose(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy20_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

void type metadata completion function for PhotogrammetrySession.Output()
{
  type metadata accessor for (PhotogrammetrySession.Request, Error)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Result)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (PhotogrammetrySession.Request, fractionComplete: Double)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (id: Int, reason: String)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (id: Int)();
          if (v4 <= 0x3F)
          {
            type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo)();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (PhotogrammetrySession.Request, Error)()
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, Error))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, Error));
    }
  }
}

void type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Result)()
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Result))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    type metadata accessor for PhotogrammetrySession.Result(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Result));
    }
  }
}

void type metadata accessor for (PhotogrammetrySession.Request, fractionComplete: Double)()
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, fractionComplete: Double))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, fractionComplete: Double));
    }
  }
}

void type metadata accessor for (id: Int, reason: String)()
{
  if (!lazy cache variable for type metadata for (id: Int, reason: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (id: Int, reason: String));
    }
  }
}

uint64_t type metadata accessor for (id: Int)()
{
  result = lazy cache variable for type metadata for (id: Int);
  if (!lazy cache variable for type metadata for (id: Int))
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &lazy cache variable for type metadata for (id: Int));
  }

  return result;
}

void type metadata accessor for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo)()
{
  if (!lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo))
  {
    type metadata accessor for PhotogrammetrySession.Request(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PhotogrammetrySession.Request, PhotogrammetrySession.Output.ProgressInfo));
    }
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 10))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 9);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Output.ProgressInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 6;
    }
  }

  return result;
}

uint64_t type metadata completion function for PhotogrammetrySession.Request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for AnySequence<PhotogrammetrySample>()
{
  if (!lazy cache variable for type metadata for AnySequence<PhotogrammetrySample>)
  {
    v0 = type metadata accessor for AnySequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnySequence<PhotogrammetrySample>);
    }
  }
}

uint64_t ShaderGraphMaterial.parameterNames.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = REMaterialAssetCopyVisibleShaderGraphParameterNames();
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

void ShaderGraphMaterial.getParameter(name:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[5];
  v39 = v3[4];
  v40 = v7;
  v41[0] = v3[6];
  *(v41 + 9) = *(v3 + 105);
  v8 = v3[1];
  v35 = *v3;
  v36 = v8;
  v9 = v3[3];
  v37 = v3[2];
  v38 = v9;
  swift_beginAccess();
  v10 = *(v35 + 16);
  v11 = MEMORY[0x1C68F3280](a1, a2);
  LOBYTE(v10) = REMaterialAssetIsVisibleShaderGraphParameter();

  if (v10)
  {
    *&v22 = 3027236;
    *(&v22 + 1) = 0xE300000000000000;
    MEMORY[0x1C68F3410](a1, a2);
    v12 = v22;
    v34[3] = &type metadata for ShaderGraphMaterial;
    v34[4] = &protocol witness table for ShaderGraphMaterial;
    v13 = swift_allocObject();
    v34[0] = v13;
    v14 = v40;
    v13[5] = v39;
    v13[6] = v14;
    v13[7] = v41[0];
    *(v13 + 121) = *(v41 + 9);
    v15 = v36;
    v13[1] = v35;
    v13[2] = v15;
    v16 = v38;
    v13[3] = v37;
    v13[4] = v16;
    __swift_project_boxed_opaque_existential_1(v34, &type metadata for ShaderGraphMaterial);
    outlined init with copy of ShaderGraphMaterial(&v35, &v22);
    Material.subscript.getter(v12, *(&v12 + 1), &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial, v27);

    if (v28 == 255)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v33 = v28;
    }

    else
    {
      v22 = v27[0];
      v23 = v27[1];
      v24 = v27[2];
      v25 = v27[3];
      v26 = v28;
      MaterialParameters.Value.init(_:)(&v22, &v29);
    }

    outlined destroy of MaterialParameters(v34);
    v17 = v33;
    v26 = v33;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    if (v33 == 255)
    {
      v19 = v32;
      *(a3 + 32) = v31;
      *(a3 + 48) = v19;
      *(a3 + 64) = v33;
      v20 = v30;
      *a3 = v29;
      *(a3 + 16) = v20;
      return;
    }

    v18 = *(&v22 + 1);
    if (v33)
    {
      *a3 = v22;
      *(a3 + 8) = v18;
      v21 = v31;
      *(a3 + 16) = v30;
      *(a3 + 32) = v21;
      *(a3 + 48) = v32;
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v22, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
      *a3 = v18;
      v17 = 1;
    }
  }

  else
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v17 = -1;
  }

  *(a3 + 64) = v17;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void ShaderGraphMaterial.faceCulling.getter(char *a1@<X8>)
{
  v2 = 2;
  if ((*(v1 + 120) & 1) == 0)
  {
    if (*(v1 + 112) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 112);
    }
  }

  *a1 = v2;
}

void thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

Swift::Int ShaderGraphMaterial.Error.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t ShaderGraphMaterial.__resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ShaderGraphMaterial.__parameterBlock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t ShaderGraphMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

id ShaderGraphMaterial.__directUniformsState.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return outlined copy of DirectUniformsState(v2, v3, v4, v5, v6, v7);
}

__n128 ShaderGraphMaterial.__directUniformsState.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  outlined consume of DirectUniformsState(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t static ShaderGraphMaterial.parameterHandle(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MEMORY[0x1C68F3410](a1, a2);
  type metadata accessor for MaterialParameters.Handle.SharedHandle();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
  String.utf8CString.getter();

  v5 = RESerializedMaterialParameterHandleCreate();

  *(v4 + 16) = v5;
  *a3 = v4;
  return result;
}

uint64_t ShaderGraphMaterial.setParameter(handle:value:)(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a2 + 48);
  v80 = *(a2 + 32);
  v81 = v6;
  v82 = *(a2 + 64);
  v7 = *(a2 + 16);
  v78 = *a2;
  v79 = v7;
  v8 = *(v5 + 24);
  v9 = *v4;
  swift_beginAccess();
  if (!v8 || *(v9 + 16) != v8)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 48);
    v68 = *(v4 + 64);
    v69 = v10;
    v12 = *(v4 + 80);
    v70[0] = *(v4 + 96);
    *(v70 + 9) = *(v4 + 105);
    v13 = *(v4 + 16);
    v64 = *v4;
    v65 = v13;
    v14 = *(v4 + 48);
    v16 = *v4;
    v15 = *(v4 + 16);
    v66 = *(v4 + 32);
    v67 = v14;
    v61 = v68;
    v62 = v12;
    v63[0] = *(v4 + 96);
    *(v63 + 9) = *(v4 + 105);
    v57 = v16;
    v58 = v15;
    v59 = v66;
    v60 = v11;
    v55[0] = v5;
    outlined init with copy of ShaderGraphMaterial(&v64, v56);
    v17 = ShaderGraphMaterial.isVisibleHandle(_:)(v55);
    v75 = v61;
    v76 = v62;
    v77[0] = v63[0];
    *(v77 + 9) = *(v63 + 9);
    v71 = v57;
    v72 = v58;
    v73 = v59;
    v74 = v60;
    outlined destroy of ShaderGraphMaterial(&v71);
    if ((v17 & 1) == 0)
    {
      lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
      swift_allocError();
      *v32 = 1;
      return swift_willThrow();
    }

    v9 = v64.i64[0];
    swift_beginAccess();
    *(v5 + 24) = *(v9 + 16);
  }

  v73 = v80;
  v74 = v81;
  LOBYTE(v75) = v82;
  v71 = v78;
  v72 = v79;
  v18 = MaterialParameters.Value.getMaterialParameterType()();
  v20 = v18;
  if ((*(v5 + 36) & 1) != 0 || *(v5 + 32) != v18)
  {
    swift_beginAccess();
    v21 = *(v9 + 16);
    v22 = *(v5 + 16);
    ParameterTypeWithHandle = REMaterialAssetGetParameterTypeWithHandle();
    v24 = *(v4 + 80);
    v25 = *(v4 + 48);
    v75 = *(v4 + 64);
    v76 = v24;
    v26 = *(v4 + 80);
    v77[0] = *(v4 + 96);
    *(v77 + 9) = *(v4 + 105);
    v27 = *(v4 + 16);
    v71 = *v4;
    v72 = v27;
    v28 = *(v4 + 48);
    v30 = *v4;
    v29 = *(v4 + 16);
    v73 = *(v4 + 32);
    v74 = v28;
    v68 = v75;
    v69 = v26;
    v70[0] = *(v4 + 96);
    *(v70 + 9) = *(v4 + 105);
    v64 = v30;
    v65 = v29;
    v66 = v73;
    v67 = v25;
    ShaderGraphMaterial.validateParameterType(providedType:typeInEngine:)(v20, ParameterTypeWithHandle);
    if (v3)
    {
      v61 = v68;
      v62 = v69;
      v63[0] = v70[0];
      *(v63 + 9) = *(v70 + 9);
      v57 = v64;
      v58 = v65;
      v59 = v66;
      v60 = v67;
      outlined init with copy of ShaderGraphMaterial(&v71, v56);
      v31 = &v57;
      return outlined destroy of ShaderGraphMaterial(v31);
    }

    v61 = v68;
    v62 = v69;
    v63[0] = v70[0];
    *(v63 + 9) = *(v70 + 9);
    v57 = v64;
    v58 = v65;
    v59 = v66;
    v60 = v67;
    outlined init with copy of ShaderGraphMaterial(&v71, v56);
    outlined destroy of ShaderGraphMaterial(&v57);
    *(v5 + 32) = v20;
    *(v5 + 36) = 0;
  }

  if (v20 == 1)
  {
    v34 = *(v4 + 80);
    v75 = *(v4 + 64);
    v76 = v34;
    v77[0] = *(v4 + 96);
    *(v77 + 9) = *(v4 + 105);
    v35 = *(v4 + 48);
    v73 = *(v4 + 32);
    v74 = v35;
    v36 = *(v4 + 16);
    v71 = *v4;
    v72 = v36;
    v37 = *(v5 + 16);
    outlined init with copy of ShaderGraphMaterial(&v71, &v64);
    Key = RESerializedMaterialParameterHandleGetKey();
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = String.index(_:offsetBy:)();
    v43 = specialized Collection.subscript.getter(v42, v39, v41);
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = MEMORY[0x1C68F3380](v43, v45, v47, v49);
    v52 = v51;

    v68 = v75;
    v69 = v76;
    v70[0] = v77[0];
    *(v70 + 9) = *(v77 + 9);
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v59 = v80;
    v60 = v81;
    LOBYTE(v61) = v82;
    v57 = v78;
    v58 = v79;
    ShaderGraphMaterial.validateTextureParameterType(keyName:value:)(v50, v52, &v57);
    if (v3)
    {

      v31 = &v71;
      return outlined destroy of ShaderGraphMaterial(v31);
    }

    outlined destroy of ShaderGraphMaterial(&v71);
  }

  v53 = *(v5 + 16);
  v66 = v80;
  v67 = v81;
  LOBYTE(v68) = v82;
  v64 = v78;
  v65 = v79;
  __RKMaterialParameterBlock.Parameter.init(_:)(&v64, &v71, v79, v78, v19);
  outlined init with copy of MaterialParameters.Value(&v78, &v64);
  KeyUnownedCString = RESerializedMaterialParameterHandleGetKeyUnownedCString();
  v66 = v73;
  v67 = v74;
  LOBYTE(v68) = v75;
  v64 = v71;
  v65 = v72;
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)(KeyUnownedCString, &v64);
  return outlined destroy of __RKMaterialParameterBlock.Parameter(&v71);
}

uint64_t ShaderGraphMaterial.isVisibleHandle(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*a1 + 16);
  Key = RESerializedMaterialParameterHandleGetKey();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v21[0] = 46;
  v21[1] = 0xE100000000000000;
  v20[2] = v21;
  v8 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v20, v5, v7, v21);
  if (v8[2] == 2)
  {
    v9 = v8[8];
    v10 = v8[9];
    v11 = v8[10];
    v12 = v8[11];

    v13 = MEMORY[0x1C68F3380](v9, v10, v11, v12);
    v15 = v14;

    swift_beginAccess();
    v16 = *(v2 + 16);
    v17 = MEMORY[0x1C68F3280](v13, v15);

    IsVisibleShaderGraphParameter = REMaterialAssetIsVisibleShaderGraphParameter();

    return IsVisibleShaderGraphParameter;
  }

  else
  {

    return 0;
  }
}

uint64_t ShaderGraphMaterial.validateParameterType(providedType:typeInEngine:)(uint64_t result, int a2)
{
  if (!a2)
  {
    v2 = 1;
LABEL_13:
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v3 = v2;
    return swift_willThrow();
  }

  if (a2 != result && (a2 != 5 || result != 4) && (result != 5 || a2 != 4) && (a2 != 20 || result != 19))
  {
    v2 = 0;
    if (result != 20 || a2 != 19)
    {
      goto LABEL_13;
    }
  }

  return result;
}

void ShaderGraphMaterial.getParameter(handle:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(*a1 + 24);
  swift_beginAccess();
  if (!v10 || *(v6 + 16) != v10)
  {
    *&v29 = v6;
    *(&v29 + 1) = v5;
    LOBYTE(v30) = v7;
    *(&v30 + 1) = *(v2 + 17);
    DWORD1(v30) = *(v2 + 5);
    *(&v30 + 1) = v8;
    *v31 = v9;
    v32 = *(v2 + 9);
    v33 = *(v2 + 11);
    v34 = *(v2 + 13);
    v35 = *(v2 + 120);
    *&v31[8] = *(v2 + 5);
    *&v31[24] = *(v2 + 7);
    *&v24 = v4;
    if ((ShaderGraphMaterial.isVisibleHandle(_:)(&v24) & 1) == 0)
    {
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v17 = -1;
      goto LABEL_13;
    }

    *(v4 + 24) = *(v6 + 16);
  }

  v11 = *(v4 + 16);
  Key = RESerializedMaterialParameterHandleGetKey();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = v9;

  specialized String.withCString<A>(_:)(v13, v15, v16, &v29);

  v17 = v31[32];
  if (v31[32] == 255)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v22[0] = v29;
    v22[1] = v30;
    v22[2] = *v31;
    v22[3] = *&v31[16];
    v23 = v31[32];
    MaterialParameters.Value.init(_:)(v22, &v24);
    v17 = v28;
    if (v28 == 255)
    {
      v19 = v27;
      *(a2 + 32) = v26;
      *(a2 + 48) = v19;
      *(a2 + 64) = v28;
      v20 = v25;
      *a2 = v24;
      *(a2 + 16) = v20;
      return;
    }

    v18 = *(&v24 + 1);
    if (v28)
    {
      *a2 = v24;
      *(a2 + 8) = v18;
      v21 = v26;
      *(a2 + 16) = v25;
      *(a2 + 32) = v21;
      *(a2 + 48) = v27;
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
      *a2 = v18;
      v17 = 1;
    }
  }

LABEL_13:
  *(a2 + 64) = v17;
}

uint64_t ShaderGraphMaterial.setParameter(name:value:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = v3;
  v8 = a3[3];
  v88 = a3[2];
  v89 = v8;
  v90 = *(a3 + 64);
  v9 = a3[1];
  v86 = *a3;
  v87 = v9;
  v10 = v3[5];
  v91[4] = v3[4];
  v91[5] = v10;
  v92[0] = v3[6];
  *(v92 + 9) = *(v3 + 105);
  v11 = v3[1];
  v91[0] = *v3;
  v91[1] = v11;
  v12 = v3[3];
  v91[2] = v3[2];
  v91[3] = v12;
  v13 = *&v91[0];
  swift_beginAccess();
  v14 = *(*&v91[0] + 16);
  outlined init with copy of ShaderGraphMaterial(v91, v80);
  v15 = MEMORY[0x1C68F3280](a1, a2);
  LOBYTE(v14) = REMaterialAssetIsVisibleShaderGraphParameter();

  outlined destroy of ShaderGraphMaterial(v91);
  if (v14)
  {
    *&v73 = 3027236;
    *(&v73 + 1) = 0xE300000000000000;
    MEMORY[0x1C68F3410](a1, a2);
    v16 = v73;
    v17 = *(v13 + 16);
    String.utf8CString.getter();
    ParameterType = REMaterialAssetGetParameterType();

    v19 = v5[5];
    v20 = v5[3];
    v83 = v5[4];
    v84 = v19;
    v21 = v5[5];
    v85[0] = v5[6];
    *(v85 + 9) = *(v5 + 105);
    v22 = v5[1];
    v80[0] = *v5;
    v80[1] = v22;
    v23 = v5[3];
    v25 = *v5;
    v24 = v5[1];
    v81 = v5[2];
    v82 = v23;
    v77 = v83;
    v78 = v21;
    v79[0] = v5[6];
    *(v79 + 9) = *(v5 + 105);
    v73 = v25;
    v74 = v24;
    v75 = v81;
    v76 = v20;
    v68 = v88;
    v69 = v89;
    LOBYTE(v70) = v90;
    v66 = v86;
    v67 = v87;
    v26 = MaterialParameters.Value.getMaterialParameterType()();
    ShaderGraphMaterial.validateParameterType(providedType:typeInEngine:)(v26, ParameterType);
    if (v4)
    {
      v70 = v77;
      v71 = v78;
      *v72 = v79[0];
      *&v72[9] = *(v79 + 9);
      v66 = v73;
      v67 = v74;
      v68 = v75;
      v69 = v76;
      outlined init with copy of ShaderGraphMaterial(v80, &v59);
      outlined destroy of ShaderGraphMaterial(&v66);
    }

    else
    {
      v70 = v77;
      v71 = v78;
      *v72 = v79[0];
      *&v72[9] = *(v79 + 9);
      v66 = v73;
      v67 = v74;
      v68 = v75;
      v69 = v76;
      outlined init with copy of ShaderGraphMaterial(v80, &v59);
      outlined destroy of ShaderGraphMaterial(&v66);
      if (ParameterType == 1)
      {
        v29 = v5[5];
        v30 = v5[3];
        v63 = v5[4];
        v64 = v29;
        v31 = v5[5];
        v65[0] = v5[6];
        *(v65 + 9) = *(v5 + 105);
        v32 = v5[1];
        v59 = *v5;
        v60 = v32;
        v33 = v5[3];
        v35 = *v5;
        v34 = v5[1];
        v61 = v5[2];
        v62 = v33;
        v56 = v63;
        v57 = v31;
        v58[0] = v5[6];
        *(v58 + 9) = *(v5 + 105);
        v52 = v35;
        v53 = v34;
        v54 = v61;
        v55 = v30;
        v49 = v88;
        v50 = v89;
        v51 = v90;
        v47 = v86;
        v48 = v87;
        outlined init with copy of ShaderGraphMaterial(&v59, v45);
        ShaderGraphMaterial.validateTextureParameterType(keyName:value:)(a1, a2, &v47);
        v45[4] = v56;
        v45[5] = v57;
        v46[0] = v58[0];
        *(v46 + 9) = *(v58 + 9);
        v45[0] = v52;
        v45[1] = v53;
        v45[2] = v54;
        v45[3] = v55;
        outlined destroy of ShaderGraphMaterial(v45);
      }

      v54 = v88;
      v55 = v89;
      LOBYTE(v56) = v90;
      v52 = v86;
      v53 = v87;
      v36 = v5[5];
      v63 = v5[4];
      v64 = v36;
      v65[0] = v5[6];
      *(v65 + 9) = *(v5 + 105);
      v37 = v5[1];
      v59 = *v5;
      v60 = v37;
      v38 = v5[3];
      v61 = v5[2];
      v62 = v38;
      *(&v48 + 1) = &type metadata for ShaderGraphMaterial;
      *&v49 = &protocol witness table for ShaderGraphMaterial;
      v39 = swift_allocObject();
      *&v47 = v39;
      v40 = v5[5];
      v39[5] = v5[4];
      v39[6] = v40;
      v39[7] = v5[6];
      *(v39 + 121) = *(v5 + 105);
      v41 = v5[1];
      v39[1] = *v5;
      v39[2] = v41;
      v42 = *(v5 + 2);
      v43 = *(v5 + 3);
      v39[3] = v42;
      v39[4] = v43;
      __RKMaterialParameterBlock.Parameter.init(_:)(&v52, v45, v42, v43, v44);
      __swift_mutable_project_boxed_opaque_existential_1(&v47, &type metadata for ShaderGraphMaterial);
      outlined init with copy of MaterialParameters.Value(&v86, &v52);
      outlined init with copy of ShaderGraphMaterial(&v59, &v52);
      Material.subscript.setter(v45, v16, *(&v16 + 1), &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial);
      return specialized Material.parameters.setter(&v47);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v28 = 1;
    return swift_willThrow();
  }
}

void ShaderGraphMaterial.validateTextureParameterType(keyName:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v4 = *(a3 + 8);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v15 = *(a3 + 32);
  v16 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = *(a3 + 56);
  v8 = *(a3 + 64);
  v9 = *v3;
  swift_beginAccess();
  v10 = *(v9 + 16);
  String.utf8CString.getter();
  LODWORD(v10) = REMaterialAssetGetTextureParameterType();

  if (v10)
  {
    if (v8 == 1)
    {
      v11 = v5[2];

      if (RETextureAssetGetTextureType())
      {
        lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
        swift_allocError();
        *v12 = 0;
        swift_willThrow();
      }

      outlined consume of MaterialParameters.Value(v5, v4, v7, v6, v15, v16, v17, v18, 1);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
}

unsigned __int8 *(*ShaderGraphMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 96) == 1;
  return ShaderGraphMaterial.triangleFillMode.modify;
}

uint64_t ShaderGraphMaterial.__faceCullMode.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t ShaderGraphMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.getter in conformance ShaderGraphMaterial()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.setter in conformance ShaderGraphMaterial(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

id protocol witness for Material.__directUniformsState.getter in conformance ShaderGraphMaterial@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return outlined copy of DirectUniformsState(v2, v3, v4, v5, v6, v7);
}

void ShaderGraphMaterial._Proto_Program.hash(into:)()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v1 + 16));
  v2 = *(v0 + 24);
  NSObject.hash(into:)();
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:);

  return specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(a1, a2);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:)(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = ShaderGraphMaterial._Proto_Program.init(from:constantValues:);

  return specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(a1, a2);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static ShapeResource.generateBox(width:height:depth:);

  return ShaderGraphMaterial._Proto_Program.init(named:from:)(a1, a2, a3, a4);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[71] = v4;
  v5[70] = a4;
  v5[69] = a3;
  v5[68] = a2;
  v5[67] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v5[72] = v6;
  v7 = *(v6 - 8);
  v5[73] = v7;
  v8 = *(v7 + 64) + 15;
  v5[74] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v5[75] = v9;
  v10 = *(v9 - 8);
  v5[76] = v10;
  v11 = *(v10 + 64) + 15;
  v5[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:)()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v28 = *(v0 + 576);
  v29 = *(v0 + 616);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  *(v3 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in ShaderGraphMaterial._Proto_Program.init(named:from:);
  *(v9 + 24) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v11 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  v14 = *(v0 + 96);
  *(v12 + 88) = *(v0 + 80);
  *(v12 + 104) = v14;
  *(v12 + 120) = *(v0 + 112);
  *(v12 + 130) = *(v0 + 122);
  v15 = *(v0 + 32);
  *(v12 + 24) = *(v0 + 16);
  *(v12 + 40) = v15;
  v16 = *(v0 + 64);
  *(v12 + 56) = *(v0 + 48);
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 72) = v16;
  *(v11 + 16) = v12;
  v17 = swift_allocObject();
  v17[2] = _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGIeghn_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TRTA_0;
  v17[3] = v9;
  v17[4] = v12;
  v17[5] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  outlined copy of Data._Representation(v5, v4);

  *(v11 + 24) = Future.init(_:)();
  v21 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
  *(v0 + 624) = v21;

  *(v0 + 528) = v21;
  v22 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();

  MEMORY[0x1C68F2E40](v0 + 528, v10, v22);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v28);
  v23 = *(MEMORY[0x1E695BFB8] + 4);
  v24 = swift_task_alloc();
  *(v0 + 632) = v24;
  *v24 = v0;
  v24[1] = ShaderGraphMaterial._Proto_Program.init(named:from:);
  v25 = *(v0 + 616);
  v26 = *(v0 + 600);

  return MEMORY[0x1EEDB5D38](v0 + 144, v26);
}

{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  else
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 432);
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  type metadata accessor for MainActor();
  *(v0 + 488) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), v3, v2);
}

{
  v1 = v0[61];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[51];

  v0[62] = static ShaderGraphMaterial.loadAsync(named:from:)(v4, v2, v3);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), 0, 0);
}

{
  v1 = v0[60];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[55];
  v0[50] = v0[62];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v6 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();
  MEMORY[0x1C68F2E40](v0 + 50, v5, v6);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = *(MEMORY[0x1E695BFB8] + 4);
  v8 = swift_task_alloc();
  v0[63] = v8;
  *v8 = v0;
  v8[1] = ShaderGraphMaterial._Proto_Program.init(named:from:);
  v9 = v0[60];
  v10 = v0[58];

  return MEMORY[0x1EEDB5D38](v0 + 2, v10);
}

{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  else
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 112);
  *(v0 + 368) = v3;
  v4 = *(v0 + 121);
  *(v0 + 377) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  *(v0 + 240) = v3;
  *(v0 + 249) = v4;
  v9 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v10 = *(v0 + 496);
  v12 = *(v0 + 472);
  v11 = *(v0 + 480);
  v13 = *(v0 + 464);
  if (v9 == 1)
  {
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_1(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, 255, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 480);
    v15 = *(v0 + 456);
    v16 = *(v0 + 424);

    type metadata accessor for ShaderGraphMaterial._Proto_Program();
    swift_deallocPartialClassInstance();
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 8))(v16, v17);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 456);
    v21 = *(v0 + 424);
    v22 = *(v0 + 432);
    (*(v12 + 8))(*(v0 + 480), *(v0 + 464));

    *(v22 + 16) = *(v0 + 144);

    outlined destroy of BodyTrackingComponent?(v0 + 272, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 8))(v21, v23);

    v24 = *(v0 + 8);
    v25 = *(v0 + 432);

    return v24(v25);
  }
}

{
  v1 = v0[62];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];

  (*(v3 + 8))(v2, v4);
  v5 = v0[64];
  v6 = v0[60];
  v7 = v0[57];
  v8 = v0[53];

  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  swift_deallocPartialClassInstance();
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

void closure #1 in ShaderGraphMaterial._Proto_Program.init(named:from:)(uint64_t a1, uint64_t a2)
{

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(swift_unownedRetainStrong() + 24);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in static ShaderGraphMaterial.loadAsyncFromMaterialX(materialLabel:url:fulfill:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_51;
  v9 = _Block_copy(aBlock);

  String.utf8CString.getter();
  RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync();

  _Block_release(v9);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = static ShapeResource.generateBox(width:height:depth:);

  return ShaderGraphMaterial._Proto_Program.init(named:from:in:)(a1, a2, a3, a4, a5);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v6[57] = v7;
  v8 = *(v7 - 8);
  v6[58] = v8;
  v9 = *(v8 + 64) + 15;
  v6[59] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v6[60] = v10;
  v11 = *(v10 - 8);
  v6[61] = v11;
  v12 = *(v11 + 64) + 15;
  v6[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:in:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:in:)()
{
  v1 = *(v0 + 448);
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  type metadata accessor for MainActor();
  *(v0 + 504) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:in:), v3, v2);
}

{
  v1 = v0[63];
  v2 = v0[54];
  v3 = v0[55];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];

  v0[64] = static ShaderGraphMaterial.loadAsync(named:from:in:)(v6, v5, v4, v2, v3);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:in:), 0, 0);
}

{
  v1 = v0[62];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  v0[50] = v0[64];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v6 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();
  MEMORY[0x1C68F2E40](v0 + 50, v5, v6);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = *(MEMORY[0x1E695BFB8] + 4);
  v8 = swift_task_alloc();
  v0[65] = v8;
  *v8 = v0;
  v8[1] = ShaderGraphMaterial._Proto_Program.init(named:from:in:);
  v9 = v0[62];
  v10 = v0[60];

  return MEMORY[0x1EEDB5D38](v0 + 2, v10);
}

{
  v2 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(named:from:in:);
  }

  else
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 112);
  *(v0 + 368) = v3;
  v4 = *(v0 + 121);
  *(v0 + 377) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  *(v0 + 240) = v3;
  *(v0 + 249) = v4;
  v9 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v10 = *(v0 + 512);
  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v13 = *(v0 + 480);
  if (v9 == 1)
  {
    v14 = *(v0 + 440);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_1(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, 255, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    v15 = *(v0 + 496);
    v16 = *(v0 + 472);

    type metadata accessor for ShaderGraphMaterial._Proto_Program();
    swift_deallocPartialClassInstance();

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 472);
    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    (*(v12 + 8))(*(v0 + 496), *(v0 + 480));

    *(v20 + 16) = *(v0 + 144);

    outlined destroy of BodyTrackingComponent?(v0 + 272, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);

    v22 = *(v0 + 8);
    v23 = *(v0 + 448);

    return v22(v23);
  }
}

{
  v1 = v0[64];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[60];
  v5 = v0[55];

  (*(v3 + 8))(v2, v4);
  v6 = v0[66];
  v7 = v0[62];
  v8 = v0[59];

  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  swift_deallocPartialClassInstance();

  v9 = v0[1];

  return v9();
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static ShapeResource.generateBox(width:height:depth:);

  return ShaderGraphMaterial._Proto_Program.init(named:from:)(a1, a2, a3);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v4[55] = v5;
  v6 = *(v5 - 8);
  v4[56] = v6;
  v7 = *(v6 + 64) + 15;
  v4[57] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v4[58] = v8;
  v9 = *(v8 - 8);
  v4[59] = v9;
  v10 = *(v9 + 64) + 15;
  v4[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(named:from:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:)(a1, a2, a3, a4);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[71] = v4;
  v5[70] = a4;
  v5[69] = a3;
  v5[68] = a2;
  v5[67] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v5[72] = v6;
  v7 = *(v6 - 8);
  v5[73] = v7;
  v8 = *(v7 + 64) + 15;
  v5[74] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v5[75] = v9;
  v10 = *(v9 - 8);
  v5[76] = v10;
  v11 = *(v10 + 64) + 15;
  v5[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:)()
{
  v1 = *(v0 + 592);
  v29 = *(v0 + 616);
  v30 = *(v0 + 584);
  v28 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  v7 = *(*(specialized static __ServiceLocator.shared.getter() + 168) + 16);
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v6;
  v8[6] = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v10 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v12 = swift_allocObject();
  v13 = *(v0 + 96);
  *(v11 + 88) = *(v0 + 80);
  *(v11 + 104) = v13;
  *(v11 + 120) = *(v0 + 112);
  *(v11 + 130) = *(v0 + 122);
  v14 = *(v0 + 32);
  *(v11 + 24) = *(v0 + 16);
  *(v11 + 40) = v14;
  v15 = *(v0 + 64);
  *(v11 + 56) = *(v0 + 48);
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 72) = v15;
  *(v10 + 16) = v11;
  v16 = swift_allocObject();
  v16[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  v16[3] = v8;
  v16[4] = v11;
  v16[5] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v7;
  outlined copy of Data._Representation(v4, v3);

  *(v10 + 24) = Future.init(_:)();
  v21 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
  *(v0 + 624) = v21;

  *(v0 + 528) = v21;
  v22 = lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>();

  MEMORY[0x1C68F2E40](v0 + 528, v9, v22);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v30 + 8))(v1, v28);
  v23 = *(MEMORY[0x1E695BFB8] + 4);
  v24 = swift_task_alloc();
  *(v0 + 632) = v24;
  *v24 = v0;
  v24[1] = ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:);
  v25 = *(v0 + 616);
  v26 = *(v0 + 600);

  return MEMORY[0x1EEDB5D38](v0 + 144, v26);
}

{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:);
  }

  else
  {
    v3 = ShaderGraphMaterial._Proto_Program.init(materialXLabel:data:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  *(v0 + 464) = v1;
  *(v0 + 480) = v2;
  v3 = *(v0 + 240);
  *(v0 + 496) = v3;
  v4 = *(v0 + 249);
  *(v0 + 505) = v4;
  v5 = *(v0 + 144);
  v6 = *(v0 + 160);
  *(v0 + 400) = v5;
  *(v0 + 416) = v6;
  v7 = *(v0 + 176);
  v8 = *(v0 + 192);
  *(v0 + 432) = v7;
  *(v0 + 448) = v8;
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  *(v0 + 368) = v3;
  *(v0 + 377) = v4;
  v9 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 272));
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 600);
  if (v9 == 1)
  {
    v14 = *(v0 + 560);
    v15 = *(v0 + 552);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_1(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, 255, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    outlined consume of Data._Representation(v15, v14);
    (*(v12 + 8))(v11, v13);
    v16 = *(v0 + 616);
    v17 = *(v0 + 592);

    type metadata accessor for ShaderGraphMaterial._Proto_Program();
    swift_deallocPartialClassInstance();

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 592);
    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    (*(v12 + 8))(*(v0 + 616), *(v0 + 600));

    outlined consume of Data._Representation(v23, v22);
    *(v21 + 16) = *(v0 + 272);

    outlined destroy of BodyTrackingComponent?(v0 + 400, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);

    v24 = *(v0 + 8);
    v25 = *(v0 + 568);

    return v24(v25);
  }
}

{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[70];
  v6 = v0[69];

  outlined consume of Data._Representation(v6, v5);
  (*(v3 + 8))(v2, v4);
  v7 = v0[80];
  v8 = v0[77];
  v9 = v0[74];

  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  swift_deallocPartialClassInstance();

  v10 = v0[1];

  return v10();
}

uint64_t ShaderGraphMaterial._Proto_Program.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ShaderGraphMaterial._Proto_Program.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int ShaderGraphMaterial._Proto_Program.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *(v0 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v2 + 16));
  v3 = *(v1 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ShaderGraphMaterial._Proto_Program()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v2 + 16));
  v3 = *(v1 + 24);
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShaderGraphMaterial._Proto_Program()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = *(*v0 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v2 + 16));
  v3 = *(v1 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t ShaderGraphMaterial._proto_program.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E6974060]);

  v3 = [v2 init];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  *(v4 + 24) = v3;

  *(v4 + 16) = v1;
  return v4;
}

void key path getter for ShaderGraphMaterial._proto_program : ShaderGraphMaterial(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(MEMORY[0x1E6974060]);

  v5 = [v4 init];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  *(v6 + 24) = v5;

  *(v6 + 16) = v3;
  *a2 = v6;
}

uint64_t key path setter for ShaderGraphMaterial._proto_program : ShaderGraphMaterial(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = REMaterialParameterBlockValueCreate();
  v5 = a2[1];
  v6 = a2[3];

  a2[1] = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  a2[3] = 0;
  a2[4] = v4;
  v7 = *(v3 + 16);
  v8 = *a2;

  *a2 = v7;
  return result;
}

uint64_t ShaderGraphMaterial._proto_program.setter(uint64_t a1)
{
  v3 = REMaterialParameterBlockValueCreate();
  v4 = v1[1];
  v5 = v1[3];

  v1[1] = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = 0;
  v1[3] = 0;
  v1[4] = v3;
  v6 = *(a1 + 16);

  v7 = *v1;

  *v1 = v6;
  return result;
}

uint64_t (*ShaderGraphMaterial._proto_program.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E6974060]);

  v5 = [v4 init];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  *(v6 + 24) = v5;

  *(v6 + 16) = v3;
  *a1 = v6;
  return ShaderGraphMaterial._proto_program.modify;
}

uint64_t ShaderGraphMaterial._proto_program.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    v6 = REMaterialParameterBlockValueCreate();
    v7 = *(v3 + 8);
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);

    *(v3 + 8) = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v6;
    v10 = *(v4 + 16);

    *v3 = v10;
  }

  else
  {
    v12 = REMaterialParameterBlockValueCreate();
    v13 = *(v3 + 8);
    v14 = *(v3 + 24);
    v15 = *(v3 + 32);

    *(v3 + 8) = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v12;
    v16 = *(v4 + 16);

    *v3 = v16;
  }

  return result;
}

uint64_t ShaderGraphMaterial.init(_Proto_program:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = 0;
  *(a2 + 104) = 257;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v3 = *(a1 + 16);
  *a2 = v3;
  swift_retain_n();
  v4 = REMaterialParameterBlockValueCreate();
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = xmmword_1C18A9570;
  swift_beginAccess();
  v5 = *(v3 + 16);

  ByteSizeOfSGUniforms = REMaterialAssetGetByteSizeOfSGUniforms();

  if (ByteSizeOfSGUniforms < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 88) = ByteSizeOfSGUniforms;
  }

  return result;
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:), 0, 0);
}

uint64_t ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;
  outlined copy of Data._Representation(v4, v3);
  v7 = v2;
  v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), v6);
  v0[7] = v8;
  v9 = *(MEMORY[0x1E69E86A8] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = type metadata accessor for __MaterialResource();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v10 = v0;
  v10[1] = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v8, v11, v12, v13);
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  else
  {
    v3 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v0[10] = v0[2];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  else
  {
    v3 = ShaderGraphMaterial._Proto_Program.__allocating_init(archive:constantValues:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  type metadata accessor for ShaderGraphMaterial._Proto_Program();
  v7 = swift_allocObject();
  v8 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];

  outlined consume of Data._Representation(v6, v4);
  *(v7 + 24) = v5;

  *(v7 + 16) = v1;

  v9 = v0[1];

  return v9(v7);
}

{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  outlined consume of Data._Representation(v4, v2);
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  outlined consume of Data._Representation(v5, v3);

  v6 = v0[12];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a1;
  v6[26] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), 0, 0);
}

uint64_t closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = specialized static __ServiceLocator.shared.getter();
  v0[30] = v3;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);

  __REAssetService.asManager.getter(v4, v5);
  v7 = v6;
  v0[31] = v6;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v8 = *(v7 + 88);
  isa = Data._bridgeToObjectiveC()().super.isa;
  REAssetManagerShaderGraphMemoryAssetCreate();

  v0[32] = REMaterialAssetBuilderCreate();
  v10 = *(v7 + 88);
  if (REAssetManagerCreateAssetHandle())
  {
    v12 = v0[28];
    v11 = v0[29];
    REMaterialAssetBuilderSetMaterialDefinition();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11REShaderAPIVGMd, &_ss23_ContiguousArrayStorageCySo11REShaderAPIVGMR);
    inited = swift_initStackObject();
    v0[33] = inited;
    *(inited + 16) = xmmword_1C1897FC0;
    *(inited + 32) = 0x200000001;
    v0[34] = REFunctionLinkBuilderCreate();
    REFunctionLinkBuilderSetShaderStage();
    REFunctionLinkBuilderSetShaderFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionLibrary();
    REFunctionLinkBuilderSetLinkedShaderAPIs();

    REFunctionLinkBuilderSetFunctionConstantValues();
    REMaterialAssetBuilderAddFunctionLinkBuilder();
    v14 = swift_initStackObject();
    v0[35] = v14;
    *(v14 + 16) = xmmword_1C1897FC0;
    *(v14 + 32) = 0x800000004;
    v0[36] = REFunctionLinkBuilderCreate();
    REFunctionLinkBuilderSetShaderStage();
    REFunctionLinkBuilderSetShaderFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionName();
    REFunctionLinkBuilderSetLinkedFunctionLibrary();
    REFunctionLinkBuilderSetLinkedShaderAPIs();

    REFunctionLinkBuilderSetFunctionConstantValues();
    REMaterialAssetBuilderAddFunctionLinkBuilder();
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    (*(v16 + 32))(v15, v16);
    v17 = REAssetManagerMaterialAssetBuilderBuild();
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    type metadata accessor for MainActor();
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v17;
    v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), v20);
    v0[37] = v22;
    v23 = *(MEMORY[0x1E69E86A8] + 4);
    v24 = swift_task_alloc();
    v0[38] = v24;
    v25 = type metadata accessor for __MaterialResource();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v24 = v0;
    v24[1] = closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:);
    v27 = v0[25];
    v28 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v27, v22, v25, v26, v28);
  }

  else
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    v31 = v0[31];
    v30 = v0[32];
    v33 = v0[29];
    v32 = v0[30];
    RERelease();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v34 = v0[1];

    return v34();
  }
}

{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:);
  }

  else
  {
    v3 = closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];

  RERelease();
  RERelease();
  RERelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];

  RERelease();
  RERelease();
  v4 = v0[39];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  RERelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:), v6, v5);
}

uint64_t closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  type metadata accessor for __MaterialResource();
  v4 = swift_allocObject();
  RERetain();
  *(v4 + 16) = v2;
  REAssetHandleLoadNow();
  REAssetSetSwiftObject();
  *v3 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t ShaderGraphMaterial._Proto_Program.archive.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  result = REMaterialAssetGetFunctionLinkCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {
        return 0;
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v6 = *(v0 + 16);
      swift_beginAccess();
      v7 = *(v6 + 16);
      REMaterialAssetGetFunctionLinkAtIndex();
      result = REFunctionLinkGetStage();
      if ((result - 3) <= 1)
      {
        REFunctionLinkGetLinkedFunctionLibrary();
        v8 = REMaterialAssetGetShaderGraphArchive();
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unsigned __int8 *ShaderGraphMaterial.faceCulling.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 112) = v5;
  *(v1 + 120) = v4;
  return result;
}

uint64_t *(*ShaderGraphMaterial.faceCulling.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 120) & 1) == 0)
  {
    if (*(v1 + 112) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 112);
    }
  }

  *(a1 + 8) = v2;
  return ShaderGraphMaterial.faceCulling.modify;
}

uint64_t *ShaderGraphMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 112) = v5;
  *(v1 + 120) = v4;
  return result;
}

_BYTE *(*ShaderGraphMaterial.writesDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 104);
  return ShaderGraphMaterial.writesDepth.modify;
}

_BYTE *(*ShaderGraphMaterial.readsDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 105);
  return ShaderGraphMaterial.readsDepth.modify;
}

unint64_t lazy protocol witness table accessor for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error()
{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.Error and conformance ShaderGraphMaterial.Error);
  }

  return result;
}

BOOL specialized static ShaderGraphMaterial._Proto_Program.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v4 + 16));
  v5 = *(a1 + 24);
  NSObject.hash(into:)();

  v6 = Hasher._finalize()();
  Hasher.init(_seed:)();
  v7 = *(a2 + 16);
  swift_beginAccess();
  MEMORY[0x1C68F4C10](*(v7 + 16));
  v8 = *(a2 + 24);
  NSObject.hash(into:)();

  return v6 == Hasher._finalize()();
}

uint64_t specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x1EEE6DFA0](specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:), 0, 0);
}

uint64_t specialized ShaderGraphMaterial._Proto_Program.init(from:constantValues:)()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 32);

  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = *(v3 + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = REShaderGraphMaterialRebuildWithFunctionConstants();
  type metadata accessor for __MaterialResource();
  v11 = swift_allocObject();
  RERetain();
  *(v11 + 16) = v10;
  REAssetHandleLoadNow();
  REAssetSetSwiftObject();

  v12 = *(v2 + 24);
  *(v2 + 16) = v11;
  *(v2 + 24) = v1;
  v13 = v1;

  v14 = v0[1];
  v15 = v0[12];

  return v14(v15);
}

void partial apply for closure #1 in ShaderGraphMaterial._Proto_Program.init(named:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  closure #1 in ShaderGraphMaterial._Proto_Program.init(named:from:)(a1, a2);
}

unint64_t lazy protocol witness table accessor for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>()
{
  result = lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>;
  if (!lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(a1, v4, v5, v6, v7, v8);
}

uint64_t _sS2cEs5ErrorsWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderGraphMaterial(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderGraphMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(from:constantValues:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 128);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(named:from:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ShaderGraphMaterial._Proto_Program.__allocating_init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 144);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return v14(a1, a2, a3, a4);
}

uint64_t partial apply for closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in closure #1 in ShaderGraphMaterial._Proto_Program.init(archive:constantValues:)(a1, v4, v5, v6);
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Scene.physicsOrigin.getter()
{
  v1 = *(v0 + 16);
  REPhysicsOriginComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  if (v3 < 1)
  {
    return 0;
  }

  v4 = *ComponentsOfClass;
  Entity = REComponentGetEntity();
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v7 = specialized static Entity.entityInfoType(_:)();
      if (v7)
      {
        v8 = (*(v7 + 232))();
        v9 = *(v8 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v8 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v8);

        return v8;
      }

      else
      {
        return makeEntity(for:)(Entity);
      }
    }
  }

  return result;
}

uint64_t *Scene.physicsOrigin.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  REPhysicsOriginComponentGetComponentType();
  result = RESceneGetComponentsOfClass();
  if (v5 >= 1)
  {
    do
    {
      v6 = *result;
      REComponentGetEntity();
      REPhysicsOriginComponentGetComponentType();
      REEntityRemoveComponentByClass();
      REPhysicsOriginComponentGetComponentType();
      result = RESceneGetComponentsOfClass();
    }

    while (v7 > 0);
  }

  if (a1)
  {
    v8 = *(a1 + 16);
    REPhysicsOriginComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  return result;
}

uint64_t *(*Scene.physicsOrigin.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Scene.physicsOrigin.getter();
  return Scene.physicsOrigin.modify;
}

uint64_t *Scene.physicsOrigin.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return Scene.physicsOrigin.setter(*a1);
  }

  v4 = *a1;

  Scene.physicsOrigin.setter(v5);
}

uint64_t NetPassthroughEncoder.encode<A>(_:)()
{
  v2 = v0[2];

  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  if (!v1)
  {
    v7 = v0[3];
    v8 = v0[4];
    v0[3] = v3;
    v0[4] = v5;
    return outlined consume of Data._Representation(v7, v8);
  }

  return result;
}

uint64_t NetPassthroughDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v9 = v2[3];
  v11 = v2[4];

  outlined copy of Data._Representation(v9, v11);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    outlined consume of Data._Representation(v9, v11);
  }

  else
  {
    v13 = v15;
    (*(v5 + 8))(v15, a2);
    outlined consume of Data._Representation(v9, v11);

    return (*(v5 + 32))(v13, v8, a2);
  }
}

uint64_t NetPassthroughEncoder.__deallocating_deinit()
{
  v1 = v0[2];

  outlined consume of Data._Representation(v0[3], v0[4]);

  return swift_deallocClassInstance();
}

uint64_t specialized ecsNetSyncWriteSnapshot(_:_:_:_:_:)(uint64_t a1, uint64_t a2)
{
  v32[5] = *MEMORY[0x1E69E9840];
  result = RECustomComponentGetObject();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = swift_endAccess();
      v12 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v11);
      (*(v10 + 32))(v4, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v29, v32);
        v13 = type metadata accessor for NetPassthroughEncoder();
        v14 = swift_allocObject();
        v15 = type metadata accessor for JSONEncoder();
        v16 = *(v15 + 48);
        v17 = *(v15 + 52);
        swift_allocObject();
        *(v14 + 16) = JSONEncoder.init()();
        *(v14 + 24) = xmmword_1C18A2C50;
        __swift_project_boxed_opaque_existential_1(v32, v32[3]);
        *(&v30 + 1) = v13;
        v31 = &protocol witness table for NetPassthroughEncoder;
        *&v29 = v14;

        v18 = *__swift_project_boxed_opaque_existential_1(&v29, v13);
        NetPassthroughEncoder.encode<A>(_:)();
        __swift_destroy_boxed_opaque_existential_1(&v29);
        v21 = *(v14 + 24);
        v20 = *(v14 + 32);
        v22 = v20 >> 62;
        if ((v20 >> 62) > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_28;
          }

          v24 = *(v21 + 16);
          v23 = *(v21 + 24);
          v25 = v23 - v24;
          if (!__OFSUB__(v23, v24))
          {
            goto LABEL_21;
          }

          __break(1u);
        }

        else if (!v22)
        {
          *&v29 = *(v14 + 24);
          WORD4(v29) = v20;
          BYTE10(v29) = BYTE2(v20);
          BYTE11(v29) = BYTE3(v20);
          BYTE12(v29) = BYTE4(v20);
          BYTE13(v29) = BYTE5(v20);
LABEL_33:
          v27 = RENetSyncBufferWrite();
          outlined consume of Data._Representation(v21, v20);
          if (v27)
          {

            __swift_destroy_boxed_opaque_existential_1(v32);
            result = 1;
            goto LABEL_10;
          }

          static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log();
          v28 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          __swift_destroy_boxed_opaque_existential_1(v32);
          goto LABEL_9;
        }

        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_38;
        }

        v25 = HIDWORD(v21) - v21;
LABEL_21:
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(v25))
        {
          if (v22 == 2)
          {
            v26 = *(v21 + 16);

            if (!__DataStorage._bytes.getter() || !__OFSUB__(v26, __DataStorage._offset.getter()))
            {
LABEL_32:
              MEMORY[0x1C68F2040]();
              goto LABEL_33;
            }

            __break(1u);
LABEL_28:
            *(&v29 + 6) = 0;
            *&v29 = 0;
            goto LABEL_33;
          }

          if (v21 <= v21 >> 32)
          {

            if (!__DataStorage._bytes.getter() || !__OFSUB__(v21, __DataStorage._offset.getter()))
            {
              goto LABEL_32;
            }

LABEL_40:
            __break(1u);
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      outlined destroy of BodyTrackingComponent?(&v29, &_sSE_pSgMd, &_sSE_pSgMR);
    }

    else
    {
      swift_endAccess();
    }

LABEL_9:
    result = 0;
  }

LABEL_10:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized ecsNetSyncReadSnapshot(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  result = RECustomComponentGetObject();
  if (result)
  {
    v8 = result;
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v11 & 1) != 0))
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = swift_endAccess();
      v16 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v15);
      (*(v14 + 32))(v8, v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_pMd, &_sSe_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v29, v32);
        v17 = specialized Data.init(bytes:count:)(a3, a4);
        v19 = v18;
        v20 = type metadata accessor for NetPassthroughDecoder();
        v21 = swift_allocObject();
        v22 = type metadata accessor for JSONDecoder();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        v21[2] = JSONDecoder.init()();
        v21[3] = v17;
        v21[4] = v19;
        *(&v30 + 1) = v20;
        v31 = &protocol witness table for NetPassthroughDecoder;
        *&v29 = v21;
        v25 = v33;
        v26 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);

        v27 = *__swift_project_boxed_opaque_existential_1(&v29, v20);
        NetPassthroughDecoder.decode<A>(_:)(v26, v25);
        __swift_destroy_boxed_opaque_existential_1(&v29);
        outlined init with copy of __REAssetService(v32, &v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
        swift_dynamicCast();
        (*(v14 + 40))(v28, v8, 0, 1, v13, v14);

        __swift_destroy_boxed_opaque_existential_1(v28);
        __swift_destroy_boxed_opaque_existential_1(v32);
        return 1;
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      outlined destroy of BodyTrackingComponent?(&v29, &_sSe_pSgMd, &_sSe_pSgMR);
    }

    else
    {
      swift_endAccess();
    }

    return 0;
  }

  return result;
}

CGColorRef HasPointLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v11);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA010PointLightD0V_Tt0B5(v11, &v7);

  result = v7;
  if (v7)
  {
    v4 = v10;
    v6 = v8;
    v5 = v9;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v4 = 2.0;
    v5 = 1092616192;
    v6 = 1188210565;
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t key path setter for HasPointLight.light : <A>A(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = *(a1 + 8);
  v7 = v2;
  v4 = v6[0];
  return HasPointLight.light.setter(v6);
}

uint64_t HasPointLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA010PointLightD0V_Tt0B5(v2, v3, v4);
  return v5(v7, 0);
}

void (*HasPointLight.light.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  HasPointLight.light.getter(v3 + 32);
  return HasPointLight.light.modify;
}

void HasPointLight.light.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = *(*(*a1)[7] + 112);
  if (a2)
  {
    v7 = v3;
    v8 = v6(v2);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA010PointLightD0V_Tt0B5(v3, v4, v5);
    v8(v2, 0);
  }

  else
  {
    v9 = v6(*a1);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA010PointLightD0V_Tt0B5(v3, v4, v5);
    v9(v2, 0);
  }

  free(v2);
}

uint64_t AudioUnitResource.audioComponentDescription.getter()
{
  v1 = *(v0 + 16);
  REAudioGeneratorAssetGetComponentDescription();
  return v3;
}

uint64_t AudioUnitResource.__allocating_init(audioComponentDescription:layoutTag:)(unint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  swift_allocObject();
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, &v15);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(&v15, v19);
  (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v15 = __PAIR64__(v6, v5);
  v16 = v4;
  v17 = v7;
  v18 = a3;
  v11 = REAudioGeneratorAssetCreate();
  v12 = AudioResource.init(fromCore:)(v11);
  v13 = *(v12 + 16);

  REAudioGeneratorAssetSetLayoutTag();
  RERelease();

  return v12;
}

uint64_t AudioUnitResource.init(audioComponentDescription:layoutTag:)(unint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, &v15);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(&v15, v19);
  (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v15 = __PAIR64__(v6, v5);
  v16 = v4;
  v17 = v7;
  v18 = a3;
  v11 = REAudioGeneratorAssetCreate();
  v12 = AudioResource.init(fromCore:)(v11);
  v13 = *(v12 + 16);

  REAudioGeneratorAssetSetLayoutTag();
  RERelease();

  return v12;
}

uint64_t AudioUnitResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 16);
  REAssetSetSwiftObject();
  v8 = *(v1 + 16);
  RERelease();
  return v1;
}

uint64_t AudioUnitResource.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 16);
  REAssetSetSwiftObject();
  v8 = *(v1 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = a2;
  v3 = 0;
  v4 = a1 + 32;
  v18 = *(a1 + 16);
  v17 = a1 + 32;
  while (2)
  {
    v5 = (v4 + 16 * v3);
    v6 = v5[1];
    v8 = *v2;
    v7 = v2[1];
    if (*v2 == *v5 && v7 == v6)
    {
      return 1;
    }

    v10 = *v2;
    v11 = v2[1];
    v21 = *v5;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    v20 = v3 + 1;

    v12 = 4;
    v13 = &unk_1F40E4018;
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x1C68F3410](46, 0xE100000000000000);

      MEMORY[0x1C68F3410](v15, v14);

      if (v8 == v21 && v7 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 1;
      }

      v13 += 2;
      --v12;
    }

    while (v12);

    result = 0;
    v2 = a2;
    v3 = v20;
    v4 = v17;
    if (v20 != v18)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(uint64_t a1, void *a2, uint64_t *a3, char a4)
{
  result = specialized Set.contains(_:)(a1, *a3);
  if ((result & 1) == 0)
  {

    specialized Set._Variant.insert(_:)(&v15, a1);

    v9 = __REAssetManager.__getDependencies(asset:)(a1);
    v10 = v9;
    if (v9 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    if (v11 < 1)
    {
      __break(1u);
LABEL_16:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C68F41F0](i, v10);
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(v13, a2, a3, 1);
    }

LABEL_11:

    if ((a4 & 1) == 0)
    {
      return result;
    }

    MEMORY[0x1C68F3650](v14);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X3>, uint64_t *a5@<X8>)
{
  v42 = a4;
  v39 = a5;
  v40 = a3;
  v49 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 32))(v16, v17);
  v18 = a1;
  v19 = RERealityFileTryCopyURLFromDescriptor();
  v20 = v19;
  if (v48 || !v19)
  {
    UUID.init()();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v47[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v47[1] = v21;
    (*(v8 + 8))(v11, v7);
    MEMORY[0x1C68F3410](0x7974696C6165722ELL, 0xE800000000000000);
    URL.init(fileURLWithPath:)();
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v22 = v42;
  outlined init with copy of [String : String]((v42 + 32), &v45, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  if (v46)
  {
    outlined init with take of ForceEffectBase(&v45, v47);
    LOBYTE(v45) = *v22;
    v23 = v41;
    v24 = specialized static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:)(a2, v18, v15, v47);
    v25 = v23;
    if (v23)
    {
      __swift_destroy_boxed_opaque_existential_1(v47);
LABEL_25:

      goto LABEL_26;
    }

    v26 = v24;
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v45, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v26 = 0;
    v25 = v41;
  }

  v27 = URL.lastPathComponent.getter();
  v29 = v28;
  if (v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  static __REAssetBundle.__init_REKit2(realityFile:realityFilename:downsampledTextureDescriptors:assetService:coreServiceLocator:_:)(v27, v29, v30, a2, v40, v22, v39);
  if (!v25)
  {

    if (!v26)
    {
      goto LABEL_25;
    }

    v34 = v26[2];
    if (v34)
    {

      v35 = 4;
      do
      {
        v36 = v26[v35];
        RERelease();
        ++v35;
        --v34;
      }

      while (v34);
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!v26)
  {
    goto LABEL_25;
  }

  v31 = v26[2];
  if (!v31)
  {
    goto LABEL_24;
  }

  v32 = 4;
  do
  {
    v33 = v26[v32];
    RERelease();
    ++v32;
    --v31;
  }

  while (v31);
LABEL_23:

  swift_bridgeObjectRelease_n();
LABEL_26:
  result = (*(v43 + 8))(v15, v44);
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 5459817;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 0x534F63616DLL;
      goto LABEL_12;
    }

LABEL_11:
    v3 = *v0;
    goto LABEL_12;
  }

  if (v2 == 2 || v2 == 3)
  {
    v3 = 0x534F6E6F69736976;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_11;
  }

  v3 = 1397716596;
LABEL_12:
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v1, v2);
  return v3;
}

uint64_t __REAssetBundle.ExportOptions.PlatformOS.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = a1 == 5459817 && a2 == 0xE300000000000000;
  if (v5 || (v6 = a1, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v6 = 0;
    v3 = 0;
  }

  else if (v6 == 0x534F63616DLL && v3 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
    v3 = 1;
  }

  else if (v6 == 1397715576 && v3 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x534F6E6F69736976 && v3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
    v3 = 2;
  }

  else if (v6 == 1397716596 && v3 == 0xE400000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {

    v6 = 0;
    v3 = 4;
  }

  *a3 = v6;
  a3[1] = v3;
  return result;
}

uint64_t specialized __REAssetManager.loadAssetsAndDependencies<A>(_:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1;
  v8 = *(v1 + 88);
  *v7 = REAssetManagerGetEngineQueue();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return result;
  }

LABEL_4:
  v34 = v3;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = REAssetManagerGetEngineQueue();
  MEMORY[0x1EEE9AC00](v13);
  *(&v31 - 4) = v1;
  *(&v31 - 3) = v12;
  v33 = v12;
  *(&v31 - 2) = &v37;
  *(&v31 - 1) = v11;
  type metadata accessor for __AssetLoadRequest();
  OS_dispatch_queue.sync<A>(execute:)();

  v14 = v36;
  OS_dispatch_group.wait()();
  swift_beginAccess();
  v15 = *(v12 + 16);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = *(v14 + 16);
    if (REAssetLoadRequestGetState() == 1)
    {
    }

    if (v34)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v31 = v14;
      v32 = v11;
      v35 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        __break(1u);
        return result;
      }

      v20 = 0;
      v19 = v35;
      v34 = a1;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1C68F41F0](v20, v34);
        }

        else
        {
          v21 = *(v34 + 8 * v20 + 32);
        }

        v22 = *(v21 + 16);
        v23 = REAssetHandleCopyAssetIdentifierString();
        v24 = String.init(_:)(v23);

        v35 = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v19 = v35;
        }

        ++v20;
        *(v19 + 16) = v26 + 1;
        *(v19 + 16 * v26 + 32) = v24;
      }

      while (v18 != v20);
      v11 = v32;
    }

    v35 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
  }

  swift_willThrow();
}

uint64_t specialized closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 88);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v9 = swift_allocObject();
  *(v9 + 16) = AssetRequest;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_35_0;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v24[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v24[5] = v13;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v24[3] = &block_descriptor_41_1;
  v14 = _Block_copy(v24);

  v15 = a4;

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v14);
  _Block_release(v11);

  if (!(a3 >> 62))
  {
    v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }

    return v9;
  }

  result = __CocoaSet.count.getter();
  v17 = result;
  if (!result)
  {
    return v9;
  }

LABEL_3:
  if (v17 >= 1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = MEMORY[0x1C68F41F0](v18++, a3);
        v20 = *(v19 + 16);
        REAssetLoadRequestAddAsset();
        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    else
    {
      v21 = (a3 + 32);
      do
      {
        v22 = *v21++;
        v23 = *(v22 + 16);
        REAssetLoadRequestAddAsset();
        --v17;
      }

      while (v17);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)(char a1, uint64_t a2, unint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    goto LABEL_18;
  }

  if (a3 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    v23 = swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v22;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    swift_beginAccess();
    v25 = *(a2 + 16);
    *(a2 + 16) = v23;

LABEL_18:
    dispatch_group_leave(group);
    return;
  }

  v27 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v26 = group;
    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = *(MEMORY[0x1C68F41F0](i, a3) + 16);
        v10 = REAssetHandleCopyAssetIdentifierString();
        v11 = String.init(_:)(v10);
        swift_unknownObjectRelease();
        v13 = *(v27 + 16);
        v12 = *(v27 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v27 + 16) = v13 + 1;
        *(v27 + 16 * v13 + 32) = v11;
      }
    }

    else
    {
      v14 = a3 + 32;
      do
      {
        v15 = *(*v14 + 16);

        v16 = REAssetHandleCopyAssetIdentifierString();
        v17 = String.init(_:)(v16);

        v19 = *(v27 + 16);
        v18 = *(v27 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        }

        *(v27 + 16) = v19 + 1;
        *(v27 + 16 * v19 + 32) = v17;
        v14 += 8;
        --v7;
      }

      while (v7);
    }

    group = v26;
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t specialized __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(unint64_t result, char a2, uint64_t a3)
{
  v6 = v3;
  v7 = result;
  if (a2 == 2)
  {
    result = specialized findAndAddAssetDependencies #1 <A>(assets:dependencies:loadAssets:) in __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(result, a3, 1);
    v36 = v4;
    return result;
  }

  if ((a2 & 1) == 0)
  {
    if (result >> 62)
    {
LABEL_42:
      result = __CocoaSet.count.getter();
      v15 = result;
      v36 = v4;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v4;
      if (!v15)
      {
        return result;
      }
    }

    v16 = 0;
    v35 = v7 & 0xC000000000000001;
    *&v34 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v35)
      {
        v17 = MEMORY[0x1C68F41F0](v16, v7);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v16 >= *(v34 + 16))
        {
          goto LABEL_41;
        }

        v17 = *(v7 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v37 = v6;
      v19 = *(v17 + 16);
      if (!REAssetHandleIsLoaded())
      {

        v24 = v17;
        goto LABEL_38;
      }

      v20 = v7;
      v21 = v15;
      v22 = __REAssetManager.__getDependencies(asset:)(v17);
      MEMORY[0x1EEE9AC00](v22);
      v32[2] = &v37;
      v4 = v36;
      v5 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in __REAssetService.firstUnloadedAssetIncludingDependencies(_:), v32, v22);
      v36 = v4;

      if (v5 >> 62)
      {
        result = __CocoaSet.count.getter();
        if (result)
        {
LABEL_33:
          if ((v5 & 0xC000000000000001) != 0)
          {
            goto LABEL_47;
          }

          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v24 = *(v5 + 32);

            goto LABEL_36;
          }

          __break(1u);
          return result;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      ++v16;
      v15 = v21;
      v23 = v18 == v21;
      v7 = v20;
      if (v23)
      {
        return result;
      }
    }
  }

  result = specialized __REAssetManager.loadAssetsAndDependencies<A>(_:)(result);
  v36 = v4;
  if (v4)
  {
    return result;
  }

  if (v7 >> 62)
  {
    result = __CocoaSet.count.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_47:
    v24 = MEMORY[0x1C68F41F0](0, v5);
LABEL_36:

LABEL_38:
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v37 = 0xD000000000000018;
    v38 = 0x80000001C18F0040;
    v25 = *(v24 + 16);
    v26 = REAssetHandleCopyAssetIdentifierString();
    countAndFlagsBits = String.init(_:)(v26)._countAndFlagsBits;
    MEMORY[0x1C68F3410](countAndFlagsBits);

    v28 = v37;
    v29 = v38;
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    v30 = swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v29;
    *(v31 + 16) = 1;
    v36 = v30;
    swift_willThrow();
  }

  else
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v35 = v7 & 0xC000000000000001;
    v34 = xmmword_1C1898160;
    v33 = MEMORY[0x1E69E7CC0] >> 62;
    do
    {
      if (v35)
      {
        v13 = MEMORY[0x1C68F41F0](v9, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v9 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v34;
      *(inited + 32) = v13;
      v37 = v10;
      if (v33 && __CocoaSet.count.getter())
      {

        v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit9__REAssetC_Tt0g5Tf4g_n(v10);
      }

      else
      {

        v11 = MEMORY[0x1E69E7CD0];
      }

      ++v9;
      v39 = v11;
      specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(v13, &v37, &v39, 0);

      v12 = v37;
      v37 = inited;
      specialized Array.append<A>(contentsOf:)(v12);
      specialized Array.append<A>(contentsOf:)(v37);
    }

    while (v8 != v9);
  }

  return result;
}

unint64_t specialized findAndAddAssetDependencies #1 <A>(assets:dependencies:loadAssets:) in __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_40;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v37 = a3;
      v5 = 0;
      v38 = v3 & 0xC000000000000001;
      v34 = v3 & 0xFFFFFFFFFFFFFF8;
      v33 = v3 + 32;
      v35 = v3;
      v36 = MEMORY[0x1E69E7CC0] >> 62;
      while (1)
      {
        if (v38)
        {
          v6 = MEMORY[0x1C68F41F0](v5, v3);
        }

        else
        {
          if (v5 >= *(v34 + 16))
          {
            goto LABEL_39;
          }

          v6 = *(v33 + 8 * v5);
        }

        if (__OFADD__(v5++, 1))
        {
          goto LABEL_38;
        }

        if (v37)
        {
          v8 = *(v6 + 16);
          REAssetHandleLoadNow();
          if (REAssetHandleLoadFailed())
          {
            v25 = REAssetCopyDescription();
            v26 = String.init(_:)(v25);
            FailedMessage = REAssetHandleCopyLoadFailedMessage();
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;

            lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
            swift_allocError();
            *v31 = v26;
            *(v31 + 16) = v28;
            *(v31 + 24) = v30;
            *(v31 + 32) = 1;
            swift_willThrow();
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1898160;
        *(inited + 32) = v6;
        v40 = MEMORY[0x1E69E7CC0];
        if (v36 && __CocoaSet.count.getter())
        {

          v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit9__REAssetC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        else
        {

          v10 = MEMORY[0x1E69E7CD0];
        }

        v39 = v10;
        specialized __REAssetService.getDependenciesRecursively(asset:result:visited:includingSelf:)(v6, &v40, &v39, 0);

        v11 = v40;
        v40 = inited;
        specialized Array.append<A>(contentsOf:)(v11);
        v3 = v40;

        specialized Array.append<A>(contentsOf:)(v12);
        if ((v37 & 1) == 0)
        {
          goto LABEL_4;
        }

        if (v3 >> 62)
        {
          break;
        }

        v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_17;
        }

LABEL_4:

        v3 = v35;
        if (v5 == v4)
        {
          return result;
        }
      }

      v13 = __CocoaSet.count.getter();
      if (!v13)
      {
        goto LABEL_4;
      }

LABEL_17:
      v14 = 0;
      while (2)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C68F41F0](v14, v3);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          goto LABEL_21;
        }

        if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v15 = *(v3 + 8 * v14 + 32);

        v16 = v14 + 1;
        if (!__OFADD__(v14, 1))
        {
LABEL_21:
          v17 = *(v15 + 16);
          REAssetHandleLoadNow();
          if (REAssetHandleLoadFailed())
          {

            v18 = REAssetCopyDescription();
            v19 = String.init(_:)(v18);
            v20 = REAssetHandleCopyLoadFailedMessage();
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
            swift_allocError();
            *v24 = v19;
            *(v24 + 16) = v21;
            *(v24 + 24) = v23;
            *(v24 + 32) = 1;
            swift_willThrow();
          }

          ++v14;
          if (v16 == v13)
          {
            goto LABEL_4;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v32 = a3;
      result = __CocoaSet.count.getter();
      a3 = v32;
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t specialized __REAssetService.firstUnloadedAssetIncludingDependencies(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (!REAssetHandleIsLoaded())
  {

    return v1;
  }

  v3 = __REAssetManager.__getDependencies(asset:)(v1);
  MEMORY[0x1EEE9AC00](v3);
  v6[2] = &v7;
  v4 = specialized Sequence.compactMap<A>(_:)(closure #1 in __REAssetService.firstUnloadedAssetIncludingDependencies(_:)specialized partial apply, v6, v3);

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1C68F41F0](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v4 + 32);

LABEL_7:

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t static __REAssetBundle.__init(element:assetService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = a1;
  v12 = MEMORY[0x1E69E7CC8];
  v10[2] = a2;
  v10[3] = &v12;

  v7 = specialized Sequence.compactMap<A>(_:)(closure #1 in static __REAssetBundle.__init(elements:assetService:)partial apply, v10, inited);

  v8 = v12;
  outlined init with copy of __REAssetService(a2, v11);
  return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v7, v11, v8, 0, a3);
}

void closure #1 in static __REAssetBundle.__init(elements:assetService:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v62 - v7;
  v8 = type metadata accessor for UUID();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a1;
  v11 = *(v80 + 16);
  REEntityGetName();
  v12 = String.init(cString:)();
  v14 = v13;
  v77 = 0x2A3F227C3E3C3ALL;
  v78 = 0xE700000000000000;
  v79 = xmmword_1C18D30A0;
  v15 = String.Iterator.next()();
  if (v15.value._object)
  {
    object = v15.value._object;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = v15.value._countAndFlagsBits;
    do
    {
      v74[0] = v12;
      v74[1] = v14;
      v72 = countAndFlagsBits;
      v73 = object;
      v70 = 95;
      v71 = 0xE100000000000000;
      v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v19 = v18;

      v20 = String.Iterator.next()();
      countAndFlagsBits = v20.value._countAndFlagsBits;
      object = v20.value._object;
      v14 = v19;
    }

    while (v20.value._object);
  }

  else
  {
    v19 = v14;
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v77 = 0x3A79726F6D656DLL;
  v78 = 0xE700000000000000;
  MEMORY[0x1C68F3410](v12, v19);

  v74[0] = static __REAssetBundle.sceneConversionCounter;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v21);

  MEMORY[0x1C68F3410](0x656C69706D6F632ELL, 0xEE00656E65637364);
  if (static __REAssetBundle.sceneConversionCounter == -1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v22 = v77;
  v23 = v78;
  ++static __REAssetBundle.sceneConversionCounter;
  outlined init with copy of __REAssetService(v69, &v77);
  v24 = v80;
  v25 = *(v80 + 16);
  outlined init with copy of __REAssetService(&v77, v74);
  type metadata accessor for __REAsset();
  v26 = swift_allocObject();
  v27 = v75;
  v28 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v28 + 32))(v27, v28);
  String.utf8CString.getter();
  v29 = REAssetManagerSceneAssetCreateFromEntity();

  if (!v29)
  {
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    v36 = swift_allocError();
    *v37 = v22;
    *(v37 + 8) = v23;
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v38 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v39 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v77 = v42;
      *v40 = 136315394;
      v43 = *(v80 + 16);
      REEntityGetName();
      v44 = String.init(cString:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v77);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2112;
      v47 = v36;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v48;
      *v41 = v48;
      _os_log_impl(&dword_1C1358000, v39, v38, "Failed to create asset from entity %s: %@", v40, 0x16u);
      outlined destroy of BodyTrackingComponent?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1C6902A30](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v40, -1, -1);
    }

    else
    {
    }

    v26 = 0;
    goto LABEL_30;
  }

  *(v26 + 16) = v29;
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v30 = *(v24 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v32 = SceneNullable;
    v33 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    v35 = v64;
    v34 = v65;
    if (v33)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v32);
    }

    v49 = v66;
    Scene.__sceneIdentifier.getter(v66);

    if ((*(v35 + 48))(v49, 1, v34) != 1)
    {
      v51 = v63;
      (*(v35 + 32))(v63, v49, v34);
      UUID.uuidString.getter();
      v50 = v52;
      (*(v35 + 8))(v51, v34);
      goto LABEL_20;
    }
  }

  else
  {
    v49 = v66;
    (*(v64 + 56))(v66, 1, 1, v65);
  }

  outlined destroy of BodyTrackingComponent?(v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v50 = 0;
LABEL_20:
  v53 = *(v24 + 16);
  REEntityGetName();
  String.init(cString:)();
  String.utf8CString.getter();

  if (v50)
  {
    String.utf8CString.getter();
  }

  v54 = RESceneDescriptorCreateFromParams();

  swift_unknownObjectRelease();
  type metadata accessor for RESceneDescriptor();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  v56 = v67;
  v57 = *v67;
  if ((*v67 & 0xC000000000000001) == 0)
  {
    v60 = *v67;

    goto LABEL_29;
  }

  if (v57 < 0)
  {
    v58 = *v67;
  }

  else
  {
    v58 = v57 & 0xFFFFFFFFFFFFFF8;
  }

  v59 = __CocoaSet.count.getter();
  if (!__OFADD__(v59, 1))
  {
    *v56 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v58, v59 + 1);
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v56;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v26, isUniquelyReferenced_nonNull_native);
    *v56 = v77;

LABEL_30:
    *v68 = v26;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t static __REAssetBundle.__init(elements:assetService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, void *, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v12 = MEMORY[0x1E69E7CC8];
  v10[2] = a2;
  v10[3] = &v12;
  v7 = a4(a3, v10, a1);
  v8 = v12;
  outlined init with copy of __REAssetService(a2, v11);
  return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v7, v11, v8, 0, a5);
}

void closure #1 in static __REAssetBundle.__init(realityScenes:assetService:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a3;
  v63 = a4;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v57 - v7;
  v61 = type metadata accessor for UUID();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *a1;
  v10 = *(v75 + 16);
  RESceneGetName();
  v11 = String.init(cString:)();
  v13 = v12;
  v72 = 0x2A3F227C3E3C3ALL;
  v73 = 0xE700000000000000;
  v74 = xmmword_1C18D30A0;
  v14 = String.Iterator.next()();
  if (v14.value._object)
  {
    object = v14.value._object;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = v14.value._countAndFlagsBits;
    do
    {
      v69[0] = v11;
      v69[1] = v13;
      v67 = countAndFlagsBits;
      v68 = object;
      v65 = 95;
      v66 = 0xE100000000000000;
      v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v18 = v17;

      v19 = String.Iterator.next()();
      countAndFlagsBits = v19.value._countAndFlagsBits;
      object = v19.value._object;
      v13 = v18;
    }

    while (v19.value._object);
  }

  else
  {
    v18 = v13;
  }

  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v72 = 0x3A79726F6D656DLL;
  v73 = 0xE700000000000000;
  MEMORY[0x1C68F3410](v11, v18);

  v69[0] = static __REAssetBundle.sceneConversionCounter;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v20);

  MEMORY[0x1C68F3410](0x656C69706D6F632ELL, 0xEE00656E65637364);
  if (static __REAssetBundle.sceneConversionCounter == -1)
  {
    __break(1u);
  }

  else
  {
    v22 = v72;
    v21 = v73;
    ++static __REAssetBundle.sceneConversionCounter;
    outlined init with copy of __REAssetService(v64, &v72);
    v23 = v75;
    v24 = *(v75 + 16);
    outlined init with copy of __REAssetService(&v72, v69);
    type metadata accessor for __REAsset();
    v25 = swift_allocObject();
    v27 = v70;
    v26 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v26 + 32))(v27, v26);
    String.utf8CString.getter();
    v28 = REAssetManagerSceneAssetCreate();

    if (!v28)
    {
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      v33 = swift_allocError();
      *v34 = v22;
      *(v34 + 8) = v21;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0;
      swift_willThrow();
      swift_deallocPartialClassInstance();
      __swift_destroy_boxed_opaque_existential_1(v69);
      __swift_destroy_boxed_opaque_existential_1(&v72);
      v35 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v36 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v36, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v72 = v39;
        *v37 = 136315394;
        v40 = *(v75 + 16);
        RESceneGetName();
        v41 = String.init(cString:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v72);

        *(v37 + 4) = v43;
        *(v37 + 12) = 2112;
        v44 = v33;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v45;
        *v38 = v45;
        _os_log_impl(&dword_1C1358000, v36, v35, "Failed to create asset from scene %s: %@", v37, 0x16u);
        outlined destroy of BodyTrackingComponent?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1C6902A30](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1C6902A30](v39, -1, -1);
        MEMORY[0x1C6902A30](v37, -1, -1);
      }

      else
      {
      }

      v25 = 0;
      goto LABEL_25;
    }

    *(v25 + 16) = v28;
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v29 = v60;
    Scene.__sceneIdentifier.getter(v60);
    v30 = v59;
    v31 = v61;
    if ((*(v59 + 48))(v29, 1, v61) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v32 = 0;
    }

    else
    {
      v46 = v58;
      (*(v30 + 32))(v58, v29, v31);
      UUID.uuidString.getter();
      v32 = v47;
      (*(v30 + 8))(v46, v31);
    }

    v48 = *(v23 + 16);
    RESceneGetName();
    String.init(cString:)();
    String.utf8CString.getter();

    if (v32)
    {
      String.utf8CString.getter();
    }

    v49 = RESceneDescriptorCreateFromParams();

    swift_unknownObjectRelease();
    type metadata accessor for RESceneDescriptor();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    v51 = v62;
    v52 = *v62;
    if ((*v62 & 0xC000000000000001) == 0)
    {
      v55 = *v62;

      goto LABEL_22;
    }

    if (v52 < 0)
    {
      v53 = *v62;
    }

    else
    {
      v53 = v52 & 0xFFFFFFFFFFFFFF8;
    }

    v54 = __CocoaSet.count.getter();
    if (!__OFADD__(v54, 1))
    {
      *v51 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v53, v54 + 1);
LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *v51;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v25, isUniquelyReferenced_nonNull_native);
      *v51 = v72;

LABEL_25:
      *v63 = v25;
      return;
    }
  }

  __break(1u);
}

void closure #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    lazy protocol witness table accessor for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)();
    swift_allocError();
    *v8 = 1;
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  String.utf8CString.getter();
  v3 = REZipArchiveCopyFileAsData();

  if (!v3)
  {
    lazy protocol witness table accessor for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)();
    swift_allocError();
    *v9 = 0;
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
LABEL_7:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t static __REAssetBundle.loadAssetMap(url:)@<X0>(uint64_t a1@<X8>)
{
  result = URL.withUnsafeFileSystemRepresentation<A>(_:)();
  if (!v1)
  {
    v4 = type metadata accessor for JSONDecoder();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v7, v8);

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  return result;
}

void partial apply for closure #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  closure #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)(a1, a2);
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap);
  }

  return result;
}

uint64_t static __REAssetBundle.__init_REKit2(realityFile:realityFilename:downsampledTextureDescriptors:assetService:coreServiceLocator:_:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v106[5] = *MEMORY[0x1E69E9840];
  RealityFileHeader = RERealityFileGetRealityFileHeader();
  if (!RealityFileHeader)
  {
    v15 = 0x80000001C18F0100;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    v17 = 0xD000000000000026;
    goto LABEL_16;
  }

  if (*(a6 + 99) & 1) == 0 && (*(a6 + 98))
  {
    v15 = 0x80000001C18F0190;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    v17 = 0xD0000000000000C3;
LABEL_16:
    *v16 = v17;
    *(v16 + 8) = v15;
LABEL_17:
    *(v16 + 16) = 4;
    result = swift_willThrow();
    goto LABEL_27;
  }

  v103 = a6;
  v95 = RealityFileHeader;
  AssetDescriptorCount = RERealityFileGetAssetDescriptorCount();
  if (AssetDescriptorCount < 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v19 = AssetDescriptorCount;
  v97 = a2;
  v98 = a3;
  v94 = a5;
  v96 = a1;
  if (AssetDescriptorCount)
  {
    v20 = 0;
    a5 = MEMORY[0x1E69E7CC0];
    do
    {
      AssetDescriptorAtIndex = RERealityFileGetAssetDescriptorAtIndex();
      if (AssetDescriptorAtIndex)
      {
        v22 = AssetDescriptorAtIndex;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
        }

        v24 = *(a5 + 2);
        v23 = *(a5 + 3);
        if (v24 >= v23 >> 1)
        {
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, a5);
        }

        *(a5 + 2) = v24 + 1;
        *&a5[8 * v24 + 32] = v22;
      }

      ++v20;
    }

    while (v19 != v20);
  }

  else
  {
    a5 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v103 + 112);
  v101 = *(v103 + 104);
  if (v26)
  {
    if (v26 == 1)
    {
      v27 = specialized static __REAssetBundle.getSceneNamesFromRealityFile(realityFile:)();
      if (!v27[2])
      {

        _StringGuts.grow(_:)(43);

        strcpy(v106, "Reality file '");
        HIBYTE(v106[1]) = -18;
        MEMORY[0x1C68F3410](v96, v97);
        MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18F0170);
        v61 = v106[1];
        lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
        swift_allocError();
        *v16 = v106[0];
        *(v16 + 8) = v61;
        goto LABEL_17;
      }

      v93 = a7;
      v29 = v27[4];
      v28 = v27[5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1C1887600;
      *(v30 + 32) = v29;
      *(v30 + 40) = v28;
    }

    else
    {
      v93 = a7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1C1887600;
      *(v30 + 32) = v101;
      *(v30 + 40) = v26;
    }
  }

  else
  {
    v93 = a7;
    v30 = specialized static __REAssetBundle.getSceneNamesFromRealityFile(realityFile:)();
  }

  v100 = v30;
  v31 = a4[3];
  v32 = a4[4];
  v33 = __swift_project_boxed_opaque_existential_1(a4, v31);
  v99 = &v92;
  v34 = v103;
  LOBYTE(v105) = *v103;
  MEMORY[0x1EEE9AC00](v33);
  v90 = a4;
  v91 = v34;
  outlined copy of __REAssetBundle.LoadOptions.ContentRequest(v101, v26);
  Request = type metadata accessor for __AssetLoadRequest();
  v36 = v102;
  __REAssetService.performOnEngineQueue<A>(with:_:)(&v105, partial apply for closure #1 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), &v88, v31, Request, v32);
  if (v36)
  {

    goto LABEL_27;
  }

  v92 = 0;
  v101 = a4;
  a3 = v106[0];
  v38 = *(v34 + 120);
  if (v38)
  {
    v39 = *(v106[0] + 16);
    Stats = REAssetLoadRequestGetStats();
    type metadata accessor for __AssetLoadRequest.Statistics();
    v41 = swift_allocObject();
    RERetain();
    *(v41 + 16) = Stats;
    v42 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
    swift_beginAccess();

    MEMORY[0x1C68F3650](v43);
    if (*((*(v38 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v38 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_30:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      goto LABEL_31;
    }

LABEL_60:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_30;
  }

LABEL_31:
  v102 = a3;
  v44 = *(a5 + 2);
  v45 = MEMORY[0x1E69E7CC0];
  if (v44)
  {
    v46 = (a5 + 32);
    do
    {
      v49 = *v46;
      if (RERealityFileAssetDescriptorAsSceneDescriptor())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106[0] = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1);
          v45 = v106[0];
        }

        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v45 = v106[0];
        }

        *(v45 + 16) = v48 + 1;
        *(v45 + 8 * v48 + 32) = v49;
      }

      ++v46;
      --v44;
    }

    while (v44);
  }

  v106[0] = 0;
  v51 = v101;
  v52 = v101[3];
  v53 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v52);
  (*(v53 + 32))(v52, v53);
  AssetDescriptorWithEntryNameAndPostLoad = RERealityFileCreateAssetDescriptorWithEntryNameAndPostLoad();
  if (AssetDescriptorWithEntryNameAndPostLoad)
  {
    v55 = AssetDescriptorWithEntryNameAndPostLoad;
    v56 = v51[3];
    v57 = v51[4];
    v58 = __swift_project_boxed_opaque_existential_1(v51, v56);
    v99 = &v92;
    v104 = *v103;
    MEMORY[0x1EEE9AC00](v58);
    v86 = v51;
    v87 = v98;
    v88 = v102;
    v89 = v45;
    v90 = v100;
    v91 = v55;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtGMd, &_sSay10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtGMR);
    v60 = v92;
    __REAssetService.performOnEngineQueue<A>(with:_:)(&v104, partial apply for closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), v85, v56, v59, v57);
    if (v60)
    {

      RERelease();
    }

    else
    {
      v98 = v55;

      v64 = v105;
      v65 = v51[3];
      v66 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v65);
      __REAssetService.asManager.getter(v65, v66);
      v67 = v103;
      LOBYTE(v105) = *v103;
      __REAssetManager.waitForLoadRequest(_:with:)(v102, &v105);

      MEMORY[0x1EEE9AC00](v69);
      v85[0] = v51;
      v85[1] = v96;
      v86 = v97;
      v87 = v98;
      v88 = v67;
      v89 = v95;
      v90 = v94;
      v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtG_AH_AlI07RESceneH0CtsAE_pTg5(partial apply for closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), &v84, v64);

      RERelease();

      v71 = *(v70 + 16);
      if (v71)
      {
        v106[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v72 = 32;
        v73 = v71;
        do
        {
          v74 = *(v70 + v72);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v75 = *(v106[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v72 += 24;
          --v73;
        }

        while (v73);
        v76 = v106[0];
        v106[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v77 = 48;
        do
        {
          v78 = *(v70 + v77);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v79 = *(v106[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v77 += 24;
          --v71;
        }

        while (v71);

        v80 = v106[0];
      }

      else
      {

        v80 = MEMORY[0x1E69E7CC0];
        v76 = MEMORY[0x1E69E7CC0];
      }

      v82 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC10RealityKit9__REAssetC_0F10Foundation17RESceneDescriptorCs12Zip2SequenceVySayAGGSayAJGGTt0g5Tf4g_n(v81, v80);

      RERealityFileGetMinVersionFromRealityFileHeader();
      if (one-time initialization token for __sdkBundleVersion != -1)
      {
        swift_once();
      }

      String.utf8CString.getter();
      String.utf8CString.getter();
      v83 = RERealityFileHeaderCreateFromVersionInfo();

      outlined init with copy of __REAssetService(v101, v106);
      result = __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v76, v106, v82, v83, v93);
    }
  }

  else
  {

    v62 = v106[0];
    if (v106[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v63 = v62;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v68 = 0xD000000000000029;
      *(v68 + 8) = 0x80000001C18F0140;
      *(v68 + 16) = 4;
    }

    swift_willThrow();
  }

LABEL_27:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of __REAssetService(a1, v7);
  result = specialized __AssetLoadRequest.__allocating_init(assetService:shouldLoadOnPeers:shouldWaitForPeers:)(v7, *(a2 + 99), *(a2 + 98));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(uint64_t ImmutableWithAssetDescriptors@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v19 = a6;
  v20 = a4;
  v9 = ImmutableWithAssetDescriptors;
  v18 = a7;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 32);
    do
    {
      v21 = *v11;
      v13 = v9[3];
      v12 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v13);
      (*(v12 + 32))(v13, v12);
      ImmutableWithAssetDescriptors = REAssetHandleGetOrCreateImmutableWithAssetDescriptors();
      if (ImmutableWithAssetDescriptors)
      {
        v14 = *(a3 + 16);
        REAssetLoadRequestAddAsset();
        ImmutableWithAssetDescriptors = RERelease();
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x1EEE9AC00](ImmutableWithAssetDescriptors);
  v17[2] = a5;
  v17[3] = v9;
  v17[4] = v19;
  v17[5] = a3;
  v15 = v22;
  result = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), v17, v20);
  if (!v15)
  {
    *v18 = result;
  }

  return result;
}

uint64_t closure #2 in closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v32[0] = 0;
  if (RESceneDescriptorGetSceneName())
  {
    v32[0] = String.init(cString:)();
    v32[1] = v10;
  }

  if ((specialized Sequence.contains(where:)(a2, v32) & 1) == 0)
  {

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v29 = a4;
  v30 = v9;
  RERealityFileAssetDescriptorGetFilename();
  v12 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v13 = *(v11 + 32);
  v13(v12, v11);
  result = REAssetManagerResolveAssetDescriptor();
  if (result)
  {
    v31 = result;
    v13(v12, v11);
    ImmutableWithAssetDescriptors = REAssetHandleGetOrCreateImmutableWithAssetDescriptors();
    if (!ImmutableWithAssetDescriptors)
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v24 = 0xD000000000000033;
      *(v24 + 8) = 0x80000001C18F02B0;
      *(v24 + 16) = 4;
      swift_willThrow();
LABEL_17:
      RERelease();
    }

    v16 = ImmutableWithAssetDescriptors;
    v17 = REAssetGetType();
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == 0x656E656353 && v20 == 0xE500000000000000)
    {

      v23 = v30;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v23 = v30;
      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    REAssetSetNetworkSharingMode();
LABEL_16:
    v25 = *(v29 + 16);
    REAssetLoadRequestAddAsset();
    type metadata accessor for __REAsset();
    v26 = swift_allocObject();
    *(v26 + 16) = v16;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    RERetain();
    type metadata accessor for __REAssetDescriptor();
    *(swift_allocObject() + 16) = v31;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v27 = *(v33 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v28 = v33;
    *a5 = v26;
    a5[1] = v28;
    a5[2] = v23;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X7>, __int128 **a8@<X8>, uint64_t *a9)
{
  v10 = v9;
  v79 = a7;
  v80 = a6;
  v84 = a2;
  v83 = a8;
  v88 = *MEMORY[0x1E69E9840];
  v78 = type metadata accessor for UUID();
  v77 = *(v78 - 1);
  v15 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v81 = a1[1];
  v82 = a1[2];
  v18 = *(v17 + 2);

  v19 = REAssetHandleCopyCompiledExtension();
  v20 = String.init(_:)(v19);
  if (v20._countAndFlagsBits == 0x64656C69706D6F63 && v20._object == 0xED0000656E656373)
  {

LABEL_8:
    v27 = v84;
    outlined init with copy of __REAssetService(v84, v87);

    v29 = specialized Scene.init(_:assetService:)(v28, v87);
    if (v10)
    {
    }

    else
    {
      v30 = v29;

      specialized static __REAssetBundle.registerAnchoringComponentARReferences(scene:realityFilename:assetDescriptor:assetService:)(v30, a3, a4, a5, v27);
      v31 = v80;
      v32 = *v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMR);
      inited = swift_initStackObject();
      v34 = MEMORY[0x1E6998F08];
      v75 = xmmword_1C1887600;
      *(inited + 16) = xmmword_1C1887600;
      v35 = *v34;
      *(inited + 32) = v35;
      v36 = v31[97];
      v37 = v35;
      *(inited + 40) = Bool._bridgeToObjectiveC()();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefa_yXltMd, &_sSo11CFStringRefa_yXltMR);
      v86 = 0;
      RERealityFileGetMinVersionFromRealityFileHeader();
      v38 = *(v30 + 16);
      type metadata accessor for CFStringRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      Processing = RERealityFilePostLoadProcessing();

      if (Processing)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
        v41 = swift_initStackObject();
        v41[1] = v75;
        *(v41 + 4) = a5;
        v74 = *v80;
        swift_beginAccess();
        if (static __RKEntityInteractionsComponent.registration)
        {
          v79 = 0;
          v42 = *(static __RKEntityInteractionsComponent.registration + 3);
          v43 = closure #1 in Scene.entitiesWithInteractions()(v30);
          v44 = v43;
          if (v43 >> 62)
          {
LABEL_41:
            v45 = __CocoaSet.count.getter();
          }

          else
          {
            v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v46 = v84;
          if (v45)
          {
            v69 = v17;
            v73 = v41;
            v70 = v30;
            v47 = 0;
            v48 = 0;
            v72 = v44 & 0xC000000000000001;
            v71 = v44 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v72)
              {
                MEMORY[0x1C68F41F0](v47, v44);
                v50 = v47 + 1;
                if (__OFADD__(v47, 1))
                {
LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }
              }

              else
              {
                if (v47 >= *(v71 + 16))
                {
                  __break(1u);
                  goto LABEL_41;
                }

                v49 = *(v44 + 8 * v47 + 32);

                v50 = v47 + 1;
                if (__OFADD__(v47, 1))
                {
                  goto LABEL_24;
                }
              }

              *&v75 = v50;
              v30 = v45;
              v51 = swift_allocObject();
              *(v51 + 16) = 0;
              outlined init with copy of __REAssetService(v46, v87);
              v52 = swift_allocObject();
              v17 = v73;
              *(v52 + 16) = v73;
              outlined init with take of ForceEffectBase(v87, v52 + 24);
              *(v52 + 64) = v74;
              *(v52 + 72) = v51;
              v53 = v79;
              Entity.remapAudioActions(_:)(partial apply for closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:), v52);
              v79 = v53;
              if (v53)
              {

                v10 = v79;
                goto LABEL_30;
              }

              swift_beginAccess();
              v54 = *(v51 + 16);

              v48 |= v54;
              ++v47;
              v46 = v84;
              v41 = v87;
            }

            while (v75 != v45);

            swift_setDeallocating();
            if ((v48 & 1) == 0)
            {
              v17 = v69;
              goto LABEL_39;
            }

            *&v87[0] = 0;
            *(&v87[0] + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(23);

            *&v87[0] = 0x3A79726F6D656DLL;
            *(&v87[0] + 1) = 0xE700000000000000;
            v60 = v76;
            UUID.init()();
            _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
            v61 = v78;
            v62 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v62);

            (*(v77 + 8))(v60, v61);
            MEMORY[0x1C68F3410](0x656C69706D6F632ELL, 0xEE00656E65637364);
            v63 = v87[0];
            v65 = *(v46 + 3);
            v64 = *(v46 + 4);
            v66 = __swift_project_boxed_opaque_existential_1(v46, v65);
            v78 = &v69;
            v85 = *v80;
            MEMORY[0x1EEE9AC00](v66);
            *(&v69 - 4) = v70;
            *(&v69 - 3) = v46;
            *(&v69 - 1) = v63;
            v67 = type metadata accessor for __REAsset();
            v68 = v79;
            __REAssetService.performOnEngineQueue<A>(with:_:)(&v85, partial apply for closure #1 in closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), (&v69 - 6), v65, v67, v64);
            v10 = v68;

            if (v68)
            {
              goto LABEL_31;
            }

            v17 = *&v87[0];
          }

          else
          {

            swift_setDeallocating();
LABEL_39:
          }

          goto LABEL_6;
        }

        swift_setDeallocating();
        lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
        v10 = swift_allocError();
        *v57 = xmmword_1C18BBCB0;
        *(v57 + 16) = 0;
        swift_willThrow();
      }

      else
      {
LABEL_25:
        v55 = v86;
        if (v86)
        {
          type metadata accessor for CFErrorRef(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
          v10 = swift_allocError();
          *v56 = v55;
        }

        else
        {
          lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
          v10 = swift_allocError();
          *v58 = 0xD000000000000026;
          *(v58 + 8) = 0x80000001C18F0260;
          *(v58 + 16) = 4;
        }

        swift_willThrow();
      }

LABEL_30:
    }

LABEL_31:
    *a9 = v10;
    goto LABEL_32;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_8;
  }

LABEL_6:
  v23 = v83;
  v24 = v81;
  *v83 = v17;
  v23[1] = v24;

  v25 = v82;
  RERetain();
  type metadata accessor for RESceneDescriptor();
  result = swift_allocObject();
  *(result + 16) = v25;
  v23[2] = result;
LABEL_32:
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  outlined init with copy of __REAssetService(a2, v20);
  v8 = *(a1 + 16);
  outlined init with copy of __REAssetService(v20, v17);
  type metadata accessor for __REAsset();
  v9 = swift_allocObject();
  v11 = v18;
  v10 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v12 = *(v10 + 32);

  v12(v11, v10);
  String.utf8CString.getter();
  v13 = REAssetManagerSceneAssetCreate();

  if (v13)
  {

    *(v9 + 16) = v13;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a5 = v9;
  }

  else
  {
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v15 = a3;
    *(v15 + 8) = a4;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v17);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

uint64_t __REAssetBundle.writeWithCPlusPlus(to:with:)(uint64_t a1, __int128 *a2)
{
  v188 = a1;
  v220 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for UUID();
  v190 = *(v5 - 8);
  v191 = v5;
  v6 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v189 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for URL();
  v194 = *(v192 - 8);
  v8 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v10 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v193 = &v182 - v12;
  v13 = a2[5];
  v217 = a2[4];
  v218 = v13;
  *v219 = a2[6];
  *&v219[11] = *(a2 + 107);
  v14 = a2[1];
  v213 = *a2;
  v214 = v14;
  v15 = a2[3];
  v215 = a2[2];
  v216 = v15;
  v16 = RERealityFileWritingParametersCreate();
  RERealityFileWritingParametersSetRestrictedToSeed();
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  v186 = v10;
  if (v18)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = &v182;
  *&v206 = v20;
  *(&v206 + 1) = v22;
  MEMORY[0x1EEE9AC00](v19);
  *(&v182 - 2) = &v206;
  v24 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v182 - 4), &outlined read-only object #0 of __REAssetBundle.writeWithCPlusPlus(to:with:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  swift_arrayDestroy();

  if (v24)
  {
    RERealityFileWritingParametersSetCrossEngineValidationDisablement();
  }

  RERealityFileWritingParametersSetMakeSnapshotOfDynamicTextures();
  RERealityFileWritingParametersSetWriteMeshesToVvmSidecars();
  if (v219[26] > 1u)
  {
    v25 = v200;
    if (v219[26] != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v25 = v200;
  }

  RERealityFileWritingParametersSetReducedTextureSize();
LABEL_10:
  v203 = MEMORY[0x1E69E7CC0];
  v26 = v25[5];
  v27 = v25[6];
  __swift_project_boxed_opaque_existential_1(v25 + 2, v26);
  __REAssetService.asManager.getter(v26, v27);
  v28 = v25[1];
  specialized __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(v28, v213, &v203);
  if (v2)
  {

LABEL_13:

LABEL_14:
    result = RERelease();
    goto LABEL_15;
  }

  v185 = v28;

  v211 = v218;
  v212[0] = *v219;
  *(v212 + 11) = *&v219[11];
  v206 = v213;
  v207 = v214;
  v208 = v215;
  v209 = v216;
  v210 = v217;
  v29 = __REAssetBundle.ExportOptions.getVersioningDetails()();
  v31 = 0;
  v34 = v29;
  v35 = v30;
  v184 = v16;
  if ((BYTE1(v218) & 1) == 0)
  {
    v201 = MEMORY[0x1E69E7CC0];

    if (v34)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

  if (v30 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v30;
  }

  LODWORD(v197) = v36;
  DefaultVersion = v29;
  if (!v29)
  {
    DefaultVersion = RERealityFileWriterGetDefaultVersion();
  }

  v187 = v203;
  if (!(v203 >> 62))
  {
    v37 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_24;
    }

LABEL_54:
    v201 = MEMORY[0x1E69E7CC0];

    if (v34)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

  v37 = __CocoaSet.count.getter();
  if (!v37)
  {
    goto LABEL_54;
  }

LABEL_24:
  LODWORD(v183) = v35;
  v199 = 0;
  if (v37 >= 1)
  {
    v38 = 0;
    v39 = v187;
    v195 = v187 & 0xC000000000000001;
    v201 = MEMORY[0x1E69E7CC0];
    v196 = v37;
    do
    {
      if (v195)
      {
        v40 = MEMORY[0x1C68F41F0](v38, v39);
      }

      else
      {
        v41 = *(v39 + 8 * v38 + 32);
      }

      v202 = v40;
      v42 = *(v40 + 16);
      REAssetGetRequiredReleaseInfo();
      Release = RERealityKitReleaseInfoGetRelease();
      v44 = RERealityKitReleaseInfoGetAdjustmentLog();
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v49 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v49 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        *&v206 = v45;
        *(&v206 + 1) = v47;
        MEMORY[0x1EEE9AC00](v48);
        *(&v182 - 2) = &v206;
        v50 = v199;
        v51 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v182 - 4), v201);
        v199 = v50;
        if (v51)
        {

          v39 = v187;
        }

        else
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v52 = v201;
          }

          else
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v201 + 2) + 1, 1, v201);
          }

          v39 = v187;
          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          v55 = (v54 + 1);
          if (v54 >= v53 >> 1)
          {
            v201 = (v54 + 1);
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v52);
            v55 = v201;
            v52 = v57;
          }

          *(v52 + 2) = v55;
          v201 = v52;
          v56 = &v52[16 * v54];
          *(v56 + 4) = v45;
          *(v56 + 5) = v47;
        }
      }

      else
      {
      }

      ++v38;
      if (v34 <= Release)
      {
        v34 = Release;
      }

      RERelease();
    }

    while (v196 != v38);
    v31 = v199;
    LODWORD(v35) = v183;

    if (v34)
    {
LABEL_47:
      if (!RERealityFileWritingParametersSetMajorVersion())
      {
        lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
        swift_allocError();
        *v67 = v34;
        *(v67 + 8) = 0;
        *(v67 + 16) = 1;
        swift_willThrow();
        goto LABEL_13;
      }

      v3 = v35;
      v23 = v31;
      v58 = RERealityFileWriterGetAllDeploymentTargetsFromVersion();
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      *&v206 = 0;
      *(&v206 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x1C68F3410](0xD00000000000002DLL, 0x80000001C18EFE00);
      MEMORY[0x1C68F3410](v59, v61);

      MEMORY[0x1C68F3410](0x74616C20646E6120, 0xEB000000002E7265);
      v28 = *(&v206 + 1);
      v35 = v206;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_49;
      }

      goto LABEL_140;
    }

LABEL_55:
    v66 = v201;
    if (!*(v201 + 2))
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_140:
  v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v201 + 2) + 1, 1, v201);
LABEL_49:
  v62 = v201;
  v64 = *(v201 + 2);
  v63 = *(v201 + 3);
  if (v64 >= v63 >> 1)
  {
    v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v201);
  }

  *(v62 + 2) = v64 + 1;
  v65 = &v62[16 * v64];
  *(v65 + 4) = v35;
  *(v65 + 5) = v28;
  v66 = v62;
  v31 = v23;
  LODWORD(v35) = v3;
LABEL_56:
  logReleaseAdjustments(logs:)(v66);
LABEL_57:
  v199 = v31;
  v201 = v66;
  if (v35)
  {
    RERealityFileWritingParametersSetTargetPlatform();
  }

  v68 = RERealityFileWriterCreateWithParameters();
  v69 = swift_allocObject();
  *(v69 + 16) = 1;
  v187 = v69 + 16;
  outlined init with copy of __REAssetBundle(v200, v205);
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  v71 = v218;
  *(v70 + 88) = v217;
  *(v70 + 104) = v71;
  *(v70 + 120) = *v219;
  *(v70 + 131) = *&v219[11];
  v72 = v214;
  *(v70 + 24) = v213;
  *(v70 + 40) = v72;
  v73 = v216;
  *(v70 + 56) = v215;
  *(v70 + 72) = v73;
  v74 = v205[0];
  v75 = v205[1];
  v76 = v205[2];
  *(v70 + 200) = v205[3];
  *(v70 + 184) = v76;
  *(v70 + 168) = v75;
  *(v70 + 152) = v74;
  *(v70 + 216) = v69;
  v204[4] = partial apply for closure #1 in __REAssetBundle.writeWithCPlusPlus(to:with:);
  v204[5] = v70;
  v204[0] = MEMORY[0x1E69E9820];
  v204[1] = 1107296256;
  v204[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned RESceneRemappingCallbackResult);
  v204[3] = &block_descriptor_52;
  v77 = _Block_copy(v204);

  outlined init with copy of __REAssetBundle.ExportOptions(&v213, &v206);

  RERealityFileWriterAddSceneRemappingCallback();
  _Block_release(v77);
  v78 = *&v219[16];
  if (*&v219[16])
  {
    v79 = swift_allocObject();
    *(v79 + 16) = v78;
    *&v208 = partial apply for closure #2 in __REAssetBundle.writeWithCPlusPlus(to:with:);
    *(&v208 + 1) = v79;
    *&v206 = MEMORY[0x1E69E9820];
    *(&v206 + 1) = 1107296256;
    *&v207 = thunk for @escaping @callee_guaranteed (@guaranteed CFMutableArrayRef, @guaranteed CFMutableArrayRef) -> ();
    *(&v207 + 1) = &block_descriptor_19;
    v80 = _Block_copy(&v206);

    RERealityFileWriterAddRemappingCustomizationCallback();
    _Block_release(v80);
  }

  if (one-time initialization token for temporaryURL != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v192, static __REAssetBundle.temporaryURL);
  v81 = v189;
  UUID.init()();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v82 = v191;
  dispatch thunk of CustomStringConvertible.description.getter();
  (*(v190 + 8))(v81, v82);
  URL.appendingPathComponent(_:)();

  *&v205[0] = 0;
  URL.absoluteString.getter();
  String.utf8CString.getter();

  v83 = RERealityFileWriterOpen();

  if (!v83)
  {
    v112 = *&v205[0];
    v113 = v194;
    if (*&v205[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v114 = v112;
    }

    else
    {
      *&v206 = 0;
      *(&v206 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      *&v206 = 0xD000000000000026;
      *(&v206 + 1) = 0x80000001C18EFE50;
      v115 = URL.absoluteString.getter();
      MEMORY[0x1C68F3410](v115);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v116 = v206;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v117 = v116;
      *(v117 + 16) = 4;
    }

    swift_willThrow();
    v118 = v193;
    $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
    (*(v113 + 8))(v118, v192);

    RERelease();
    goto LABEL_13;
  }

  v84 = v194;
  if (*(&v218 + 1))
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    RERealityFileWriterSetConfigurationSetNames();
  }

  v86 = v185;
  if (*v219)
  {
    v87 = Array._bridgeToObjectiveC()().super.isa;
    RERealityFileWriterSetDefaultConfigurationNames();
  }

  if ((v214 & 1) == 0 && !*(&v213 + 1))
  {
    RERealityFileWriterSetCompressionMethod();
  }

  v183 = v68;
  if (v86 >> 62)
  {
    v88 = __CocoaSet.count.getter();
    v182 = v69;
    if (v88)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v88 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v182 = v69;
    if (v88)
    {
LABEL_73:
      if (v88 < 1)
      {
        __break(1u);
      }

      v89 = 0;
      v90 = v200[7];
      v200 = (v90 & 0xC000000000000001);
      DefaultVersion = v86 & 0xC000000000000001;
      v91 = v90 & 0xFFFFFFFFFFFFFF8;
      if (v90 < 0)
      {
        v91 = v90;
      }

      v195 = v91;
      v196 = v90;
      v202 = MEMORY[0x1E69E7CC0];
      v191 = v88;
      while (1)
      {
        if (DefaultVersion)
        {
          v92 = MEMORY[0x1C68F41F0](v89, v86);
          if (v200)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v92 = *(v86 + 8 * v89 + 32);

          if (v200)
          {
LABEL_81:
            v93 = __CocoaDictionary.lookup(_:)();
            if (v93)
            {
              v204[0] = v93;
              type metadata accessor for RESceneDescriptor();
              swift_dynamicCast();
              v94 = v206;
              if (v206)
              {
                goto LABEL_88;
              }
            }

            goto LABEL_77;
          }
        }

        if (*(v196 + 16))
        {
          v95 = specialized __RawDictionaryStorage.find<A>(_:)();
          if (v96)
          {
            v94 = *(*(v196 + 56) + 8 * v95);

            if (v94)
            {
LABEL_88:
              v97 = *(v92 + 16);
              v197 = REAssetWithMetadataCreate();
              v98 = *(v94 + 16);
              if (RESceneDescriptorGetSceneName())
              {
                v99 = String.init(cString:)();
                v101 = v100;
              }

              else
              {
                v99 = 0;
                v101 = 0xE000000000000000;
              }

              v102 = *(v94 + 16);
              RESceneDescriptorGetSceneIdentifier();
              String.init(cString:)();
              String.utf8CString.getter();
              String.utf8CString.getter();

              REAssetWithMetadataSetSceneMetadata();

              REAssetWithMetadataSetTreatAsScene();
              v103 = *&v219[8];
              if (*&v219[8] && *(*&v219[8] + 16))
              {
                v104 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v101);
                v106 = v105;

                v86 = v185;
                if (v106)
                {
                  v107 = *(*(v103 + 56) + 8 * v104);

                  v108 = Array._bridgeToObjectiveC()().super.isa;

                  REAssetWithMetadataSetConfigurationNames();
                }
              }

              else
              {

                v86 = v185;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v202 + 2) + 1, 1, v202);
              }

              v84 = v194;
              v110 = *(v202 + 2);
              v109 = *(v202 + 3);
              if (v110 >= v109 >> 1)
              {
                v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v202);
              }

              v111 = v202;
              *(v202 + 2) = v110 + 1;
              *&v111[8 * v110 + 32] = v197;
              v88 = v191;
              goto LABEL_78;
            }
          }
        }

LABEL_77:

LABEL_78:
        if (v88 == ++v89)
        {
          goto LABEL_107;
        }
      }
    }
  }

  v202 = MEMORY[0x1E69E7CC0];
LABEL_107:
  RERealityFileAssetWriteReportCreate();
  v119 = *(v202 + 2);
  v120 = v202 + 32;
  if ((RERealityFileWriterWriteAssetArrayAndDependencies() & 1) == 0)
  {
    v141 = RERealityFileAssetWriteReportGetError();
    if (v141)
    {
      v142 = v141;
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v143 = v142;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v146 = xmmword_1C18D30B0;
      *(v146 + 16) = 5;
    }

    v147 = v192;
    swift_willThrow();
    RERelease();
    for (i = *(v202 + 2); i; --i)
    {
      v149 = *v120;
      v120 += 8;
      RERelease();
    }

    goto LABEL_124;
  }

  v121 = v187;
  swift_beginAccess();
  v122 = *v121;
  RERealityFileWriterCertifyFreeOfChangeSceneActions();
  if (!RERealityFileWriterClose())
  {
    v144 = *&v205[0];
    if (*&v205[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v145 = v144;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v151 = 0xD000000000000018;
      *(v151 + 8) = 0x80000001C18EFE80;
      *(v151 + 16) = 4;
    }

    v147 = v192;
    swift_willThrow();
    RERelease();
    for (j = *(v202 + 2); j; --j)
    {
      v153 = *v120;
      v120 += 8;
      RERelease();
    }

LABEL_124:

    v154 = v193;
    $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
    (*(v84 + 8))(v154, v147);

    RERelease();

    goto LABEL_14;
  }

  v200 = objc_opt_self();
  v123 = [v200 defaultManager];
  v124 = v188;
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v126 = MEMORY[0x1C68F3280](countAndFlagsBits);

  v127 = [v123 fileExistsAtPath_];

  if (v127)
  {
    v128 = static os_log_type_t.info.getter();
    v129 = *(v84 + 16);
    v130 = v186;
    v131 = v192;
    v129(v186, v124, v192);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v132 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v132, v128))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      LODWORD(DefaultVersion) = v128;
      v135 = v134;
      v204[0] = v134;
      *v133 = 136315138;
      v136 = URL.lastPathComponent.getter();
      v137 = v130;
      v139 = v138;
      (*(v194 + 8))(v137, v131);
      v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v139, v204);

      *(v133 + 4) = v140;
      _os_log_impl(&dword_1C1358000, v132, DefaultVersion, "Deleting file %s that already exists at dest", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v135);
      MEMORY[0x1C6902A30](v135, -1, -1);
      MEMORY[0x1C6902A30](v133, -1, -1);
    }

    else
    {

      (*(v194 + 8))(v130, v131);
    }

    v150 = v200;
    v155 = [v200 defaultManager];
    URL._bridgeToObjectiveC()(v156);
    v158 = v157;
    v204[0] = 0;
    v159 = [v155 removeItemAtURL:v157 error:v204];

    if (v159)
    {
      v160 = v204[0];
    }

    else
    {
      v161 = v204[0];
      v162 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v199 = 0;
    }
  }

  else
  {
    v150 = v200;
  }

  v163 = [v150 defaultManager];
  URL._bridgeToObjectiveC()(v164);
  v166 = v165;
  URL._bridgeToObjectiveC()(v167);
  v169 = v168;
  v204[0] = 0;
  v170 = [v163 moveItemAtURL:v166 toURL:v168 error:v204];

  if (!v170)
  {
    v176 = v204[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    RERelease();
    v177 = *(v202 + 2);
    for (k = v194; v177; --v177)
    {
      v179 = *v120;
      v120 += 8;
      RERelease();
    }

    v180 = v193;
    $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
    (*(k + 8))(v180, v192);

    RERelease();

    goto LABEL_14;
  }

  v171 = v204[0];
  RERelease();
  v172 = *(v202 + 2);
  v173 = v194;
  if (v172)
  {
    v174 = v192;
    do
    {
      v175 = *v120;
      v120 += 8;
      RERelease();
      --v172;
    }

    while (v172);
  }

  else
  {
    v174 = v192;
  }

  v181 = v193;
  $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
  (*(v173 + 8))(v181, v174);

  RERelease();

  result = RERelease();
LABEL_15:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void logReleaseAdjustments(logs:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD00000000000007FLL;
  }

  if (v5 <= 1)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x80000001C18EFFC0;
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1897FD0;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = 0xD000000000000024;
  *(v8 + 40) = 0x80000001C18EFF90;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v6;
  *(v8 + 80) = v7;
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = v2;
  *(v8 + 120) = v4;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v11 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t closure #1 in __REAssetBundle.writeWithCPlusPlus(to:with:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Scene();
  swift_allocObject();
  v10 = Scene.init(coreScene:)(a1);
  v11 = specialized static __REAssetBundle.remapSceneAnchorsBeforeWrite(fileWriter:scene:)(a2, v10);

  v12 = a3[5];
  v17[4] = a3[4];
  v17[5] = v12;
  v18[0] = a3[6];
  *(v18 + 11) = *(a3 + 107);
  v13 = a3[1];
  v17[0] = *a3;
  v17[1] = v13;
  v14 = a3[3];
  v17[2] = a3[2];
  v17[3] = v14;
  swift_allocObject();
  v15 = Scene.init(coreScene:)(a1);
  swift_beginAccess();
  LOBYTE(a5) = specialized static __REAssetBundle.remapSceneInteractionsBeforeWrite(with:assetService:fileWriter:scene:freeOfChangeSceneActions:)(v17, (a4 + 16), a2, v15, (a5 + 16));
  swift_endAccess();

  return (v11 | a5) & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned RESceneRemappingCallbackResult)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

void closure #2 in __REAssetBundle.writeWithCPlusPlus(to:with:)(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = (a3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;

      v11 = MEMORY[0x1C68F3280](v7, v8);

      [a1 addObject_];

      v12 = MEMORY[0x1C68F3280](v9, v10);

      [a2 addObject_];

      v6 += 4;
      --v3;
    }

    while (v3);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFMutableArrayRef, @guaranteed CFMutableArrayRef) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

void $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v11[0] = 0;
  v4 = [v0 removeItemAtURL:v2 error:v11];

  v5 = v11[0];
  if (v4)
  {
    v6 = *MEMORY[0x1E69E9840];

    v7 = v5;
  }

  else
  {
    v8 = v11[0];
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = *MEMORY[0x1E69E9840];
  }
}

unint64_t *closure #3 in static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, unint64_t **a5@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v6 >= *(a3 + 16))
  {
    goto LABEL_12;
  }

  if (*(a3 + 8 * v6 + 32) <= 1)
  {
    *a5 = 0;
  }

  else
  {
    v8 = *(a2 + 8 * v6 + 32);
    RERealityFileAssetDescriptorGetFilename();
    v9 = a4[3];
    v10 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v9);
    (*(v10 + 32))(v9, v10);
    result = RERealityFileCreateAssetDescriptorWithEntryNameAndTextureDownsampleHint();
    if (result)
    {
      *a5 = result;
    }

    else
    {
      _StringGuts.grow(_:)(56);
      MEMORY[0x1C68F3410](0xD000000000000036, 0x80000001C18F00A0);
      RERealityFileAssetDescriptorGetFilename();
      v11 = String.init(cString:)();
      MEMORY[0x1C68F3410](v11);

      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = 4;
      result = swift_willThrow();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v42 = a1;
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays13OpaquePointerVG_AGs5NeverOTg5(partial apply for closure #1 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:), v40, a2);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v44 = a4;
  v38 = v11;
  v39 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  __REAssetService.performOnEngineQueue<A>(with:_:)(&v44, partial apply for closure #2 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:), v37, v12, v14, v13);
  if (v6)
  {
    v15 = *(v11 + 16);
    if (v15)
    {
      v16 = (v11 + 32);
      do
      {
        v17 = *v16++;
        RERelease();
        --v15;
      }

      while (v15);
    }
  }

  else if (v43[0])
  {
    swift_beginAccess();
    *(a5 + 16) = 1;
    v18 = a6;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(a1, a6, type metadata accessor for __RKEntityAudioActionArguments);
    v19 = REAssetHandleCopyAssetIdentifierString();
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = (v18 + *(type metadata accessor for __RKEntityAudioActionArguments(0) + 20));
    v24 = v23[1];

    *v23 = v20;
    v23[1] = v22;
    RERelease();
    v25 = *(v11 + 16);
    if (v25)
    {
      v26 = 32;
      do
      {
        v27 = *(v11 + v26);
        RERelease();
        v26 += 8;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    strcpy(v43, "Invalid path ");
    HIWORD(v43[1]) = -4864;
    v28 = type metadata accessor for __RKEntityAudioActionArguments(0);
    MEMORY[0x1C68F3410](*(a1 + *(v28 + 20)), *(a1 + *(v28 + 20) + 8));
    v29 = v43[0];
    v30 = v43[1];
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 4;
    swift_willThrow();
    v32 = *(v11 + 16);
    if (v32)
    {
      v33 = (v11 + 32);
      do
      {
        v34 = *v33++;
        RERelease();
        --v32;
      }

      while (v32);
    }
  }
}

uint64_t closure #1 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 32))(v7, v8);
  v9 = (a3 + *(type metadata accessor for __RKEntityAudioActionArguments(0) + 20));
  v10 = *v9;
  v11 = v9[1];
  String.utf8CString.getter();
  v12 = REAssetManagerResolveAssetDescriptor();

  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 32))(v5, v6);
  v7 = *(a1 + 16);
  result = REAssetHandleGetOrCreateImmutableWithAssetDescriptors();
  *a3 = result;
  return result;
}

uint64_t Entity.remapAudioActions(_:)(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v48 = a1;
  v49 = a2;
  v6 = type metadata accessor for __RKEntityActionSpecification(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  swift_beginAccess();
  v19 = MEMORY[0x1E69E7CC0];
  if (!static __RKEntityInteractionsComponent.registration)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v25 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v25)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v20 = *(static __RKEntityInteractionsComponent.registration + 3);
  v21 = *(v2 + 16);
  if (REEntityGetCustomComponent())
  {
    Object = RECustomComponentGetObject();
    if (Object)
    {
      v23 = *(Object + 16);
      if (v23)
      {
        v24 = *(Object + 16);

        v25 = *(v23 + 16);
        if (!v25)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = __RKEntityInteractionsComponent.decodedJSON()();
        v25 = *(v23 + 16);
        if (!v25)
        {
          goto LABEL_19;
        }
      }

LABEL_10:
      v44 = v25;
      v45 = v18;
      v42 = v2;
      v53 = v19;
      v50 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      result = v50;
      v27 = 0;
      v28 = v53;
      v43 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v46 = v50 + v43;
      while (v27 < *(result + 16))
      {
        v29 = *(v51 + 72);
        v30 = v47;
        _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v46 + v29 * v27, v47, type metadata accessor for __RKEntityInteractionSpecification);
        _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v30, v13, type metadata accessor for __RKEntityInteractionSpecification);
        remap #1 (_:) in Entity.remapAudioActions(_:)(v30 + *(v10 + 20), v48, v49, v9);
        if (v4)
        {

          _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v30, type metadata accessor for __RKEntityInteractionSpecification);
          _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v13, type metadata accessor for __RKEntityInteractionSpecification);
        }

        v52 = 0;
        _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v30, type metadata accessor for __RKEntityInteractionSpecification);
        v31 = v10;
        v32 = &v13[*(v10 + 20)];
        v33 = v9;
        outlined assign with take of __RKEntityActionSpecification(v9, v32);
        v34 = v45;
        outlined init with take of __RKEntityActionSpecification(v13, v45, type metadata accessor for __RKEntityInteractionSpecification);
        v53 = v28;
        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
          v28 = v53;
        }

        ++v27;
        *(v28 + 16) = v36 + 1;
        outlined init with take of __RKEntityActionSpecification(v34, v28 + v43 + v36 * v29, type metadata accessor for __RKEntityInteractionSpecification);
        v9 = v33;
        v10 = v31;
        v4 = v52;
        result = v50;
        if (v44 == v27)
        {

          v5 = v42;
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  v25 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v25)
  {
    goto LABEL_10;
  }

LABEL_19:

  v28 = MEMORY[0x1E69E7CC0];
LABEL_20:
  if (!static __RKEntityInteractionsComponent.registration)
  {
  }

  v37 = *(static __RKEntityInteractionsComponent.registration + 3);
  if (*(v28 + 16))
  {
    v38 = *(v5 + 16);
    if (REEntityGetCustomComponent() || (v39 = *(v5 + 16), REEntityAddComponentByClass()))
    {
      if (RECustomComponentGetObject())
      {
        return __RKEntityInteractionsComponent.specifications.setter(v28);
      }
    }
  }

  v40 = *(v5 + 16);
  result = REEntityGetCustomComponent();
  if (result)
  {
    v41 = *(v5 + 16);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t Entity.storageForAudioActions.getter()
{
  v1 = v0;

  v2 = *(v0 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_20:

    v18 = REEntityCreate();
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v19 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_34;
      }

      v20 = specialized static Entity.entityInfoType(_:)();
      if (v20)
      {
        v9 = (*(v20 + 232))();
        v21 = *(v9 + 16);

        MEMORY[0x1C68F9740](v21, 0);
        *(v9 + 16) = v18;
        MEMORY[0x1C68F9740](v18, v9);

LABEL_26:
        Entity.name.setter();
        specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v1, 0);
        return v9;
      }

      v19 = makeEntity(for:)(v18);
    }

    v9 = v19;
    goto LABEL_26;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v1 + 16);
    result = REEntityGetChildCount();
    if (v3 >= result)
    {
      break;
    }

    v6 = *(v1 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_35;
    }

    v7 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v8 = swift_dynamicCastClassUnconditional();
LABEL_7:
      v9 = v8;
      goto LABEL_11;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_33;
    }

    v10 = specialized static Entity.entityInfoType(_:)();
    if (!v10)
    {
      v8 = makeEntity(for:)(v7);
      goto LABEL_7;
    }

    v9 = (*(v10 + 232))();
    v11 = *(v9 + 16);

    MEMORY[0x1C68F9740](v11, 0);
    *(v9 + 16) = v7;
    MEMORY[0x1C68F9740](v7, v9);

LABEL_11:
    v12 = *(v1 + 16);
    result = REEntityGetChildCount();
    if (v3 >= result)
    {
      goto LABEL_32;
    }

    v13 = *(v9 + 16);
    REEntityGetName();
    if (String.init(cString:)() == 0xD000000000000016 && 0x80000001C18EFF20 == v14)
    {

LABEL_28:

      return v9;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_28;
    }

    ++v3;

    v17 = *(v1 + 16);
    if (v3 >= REEntityGetChildCount())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a5;
  v62 = a6;
  v63 = a7;
  v11 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(a1, v15, type metadata accessor for __RKEntityAudioActionArguments);
  v16 = *(v12 + 28);
  v66 = v15;
  v17 = &v15[v16];
  v18 = *v17;
  v19 = *(v17 + 1);
  v61 = v17;
  swift_beginAccess();
  v20 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    *(a2 + 16) = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[16 * v23];
  *(v24 + 4) = v18;
  *(v24 + 5) = v19;
  *(a2 + 16) = v20;
  swift_endAccess();
  v25 = a3[3];
  v26 = a3[4];
  v27 = __swift_project_boxed_opaque_existential_1(a3, v25);
  v28 = *a4;
  LOBYTE(v69) = *a4;
  MEMORY[0x1EEE9AC00](v27);
  *(&v60 - 4) = a3;
  *(&v60 - 3) = v18;
  *(&v60 - 2) = v19;
  v29 = type metadata accessor for __REAsset();
  v30 = v65;
  __REAssetService.performOnEngineQueue<A>(with:_:)(&v69, partial apply for closure #1 in closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:), (&v60 - 6), v25, v29, v26);
  if (v30)
  {
    goto LABEL_14;
  }

  v31 = v67;
  v69 = MEMORY[0x1E69E7CC0];
  v32 = a3[3];
  v33 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v32);
  __REAssetService.asManager.getter(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C1898160;
  *(v34 + 32) = v31;

  specialized __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(v34, v28, &v69);

  v35 = *(v31 + 16);
  REAssetWithMetadataCreate();
  RERealityFileAssetWriteReportCreate();
  if (!RERealityFileWriterWriteAsset())
  {

    v44 = RERealityFileAssetWriteReportGetError();
    if (v44)
    {
      v45 = v44;
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v46 = v45;
    }

    else
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v67 = 0xD000000000000017;
      v68 = 0x80000001C18EFED0;
      v53 = *(v31 + 16);
      v54 = REAssetCopyDescription();
      countAndFlagsBits = String.init(_:)(v54)._countAndFlagsBits;
      MEMORY[0x1C68F3410](countAndFlagsBits);

      MEMORY[0x1C68F3410](11815, 0xE200000000000000);
      v56 = v67;
      v57 = v68;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v58 = v56;
      *(v58 + 8) = v57;
      *(v58 + 16) = 4;
    }

    goto LABEL_13;
  }

  v36 = RERealityFileAssetWriteReportGetSerializationString();

  if (!v36)
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v67 = 0xD00000000000002ELL;
    v68 = 0x80000001C18EFEF0;
    v47 = *(v31 + 16);
    v48 = REAssetCopyDescription();
    v49 = String.init(_:)(v48)._countAndFlagsBits;
    MEMORY[0x1C68F3410](v49);

    MEMORY[0x1C68F3410](11815, 0xE200000000000000);
    v50 = v67;
    v51 = v68;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v52 = v50;
    *(v52 + 8) = v51;
    *(v52 + 16) = 4;
LABEL_13:
    swift_willThrow();
    RERelease();
    RERelease();

LABEL_14:
    v43 = v66;
    return _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v43, type metadata accessor for __RKEntityAudioActionArguments);
  }

  v37 = String.init(cString:)();
  v39 = v38;

  v40 = v61;
  *v61 = v37;
  v40[1] = v39;
  v41 = v62;
  swift_beginAccess();
  *(v41 + 16) = 1;
  v42 = v66;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v66, v63, type metadata accessor for __RKEntityAudioActionArguments);
  RERelease();
  RERelease();

  v43 = v42;
  return _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v43, type metadata accessor for __RKEntityAudioActionArguments);
}

uint64_t closure #1 in closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 32))(v3, v4);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {
    type metadata accessor for __REAsset();
    result = swift_allocObject();
    *(result + 16) = AssetHandle;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 32))(v1, v2);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {
    REAudioPlayerComponentRegisterAsset();
    return RERelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance __REAssetBundle.ExportOptions.PlatformOS@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 <= 1)
  {
    if (!v3)
    {
      *a1 = 5459817;
      a1[1] = 0xE300000000000000;
      return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
    }

    if (v3 == 1)
    {
      *a1 = 0x534F63616DLL;
      a1[1] = 0xE500000000000000;
      return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
    }

LABEL_12:
    v5 = *v1;
    v6 = v1[1];
    *a1 = v2;
    a1[1] = v3;
    return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
  }

  if (v3 == 2 || v3 == 3)
  {
    *a1 = 0x534F6E6F69736976;
    a1[1] = 0xE800000000000000;
    return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
  }

  if (v3 != 4)
  {
    goto LABEL_12;
  }

  *a1 = 1397716596;
  a1[1] = 0xE400000000000000;
  return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __REAssetBundle.ExportOptions.PlatformOS()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 1)
  {
    if (v2 <= 1)
    {
      goto LABEL_10;
    }

LABEL_9:
    v3 = *v0;
    v4 = v0[1];
    goto LABEL_10;
  }

  if (v2 != 2 && v2 != 3 && v2 != 4)
  {
    goto LABEL_9;
  }

LABEL_10:
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v1, v2);
  String.hash(into:)();
}

Swift::Int __REAssetBundle.ExportOptions.PlatformRequirement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
}

uint64_t __REAssetBundle.ExportOptions.DeploymentTarget.version.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

__n128 __REAssetBundle.ExportOptions.DeploymentTarget.init(platform:version:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, unsigned __int32 a3@<W2>, unsigned __int32 a4@<W3>, __n128 *a5@<X8>)
{
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u32[0] = a2;
  a5[1].n128_u32[1] = a3;
  a5[1].n128_u32[2] = a4;
  a5[1].n128_u8[12] = 0;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.DeploymentTarget.init(platform:version:platformRequirement:)@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  result = *a1;
  v10 = a1[1];
  v11 = *a5;
  if (v11 == 1 && v10 >= 5)
  {
    outlined consume of __REAssetBundle.ExportOptions.PlatformOS(result, v10);
    result = 0;
    v13 = 0;
    v16 = 0;
    v10 = 5;
  }

  else
  {
    v13 = a2 | (a3 << 32);
    v14 = v11 == 0;
    v15 = 0x100000000;
    if (v14)
    {
      v15 = 0;
    }

    v16 = v15 | a4;
  }

  *a6 = result;
  *(a6 + 8) = v10;
  *(a6 + 16) = v13;
  *(a6 + 24) = v16;
  *(a6 + 28) = BYTE4(v16);
  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.ExportOptions.PlatformOS(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __REAssetBundle.ExportOptions.PlatformOS(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.ExportOptions.DeploymentTarget(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 29))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 5;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __REAssetBundle.ExportOptions.DeploymentTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483643;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)()
{
  result = lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:);
  if (!lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:);
  if (!lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:));
  }

  return result;
}

size_t remap #1 (_:) in Entity.remapAudioActions(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a3;
  v53 = a2;
  v47 = a4;
  v7 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __RKEntityActionSpecification(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v51 = a1;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(a1, &v43 - v20, type metadata accessor for __RKEntityActionSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v51 = v12;
    v29 = *v21;
    v30 = *(v21 + 1);
    v31 = v21[16];
    v32 = *(v21 + 3);
    v56 = v21[32];
    v33 = v21[33];
    v34 = v30;
    v46 = v33;
    v55 = v29;
    v35 = *(v30 + 16);
    if (!v35)
    {

      v37 = MEMORY[0x1E69E7CC0];
      v42 = v47;
LABEL_21:
      *v42 = v29;
      *(v42 + 8) = v37;
      *(v42 + 16) = v31;
      *(v42 + 24) = v32;
      *(v42 + 32) = v56;
      *(v42 + 33) = v46;
      return swift_storeEnumTagMultiPayload();
    }

    v43 = v32;
    v44 = v31;
    v45 = v11;
    v54 = MEMORY[0x1E69E7CC0];

    v49 = v35;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = 0;
    v37 = v54;
    v38 = v51;
    v48 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v50 = v34 + v48;
    while (v36 < *(v34 + 16))
    {
      v39 = *(v38 + 72);
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v50 + v39 * v36, v15, type metadata accessor for __RKEntityActionSpecification);
      remap #1 (_:) in Entity.remapAudioActions(_:)(v15, v53, v52);
      if (v5)
      {
        _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v15, type metadata accessor for __RKEntityActionSpecification);
      }

      _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v15, type metadata accessor for __RKEntityActionSpecification);
      v54 = v37;
      v41 = *(v37 + 16);
      v40 = *(v37 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
        v37 = v54;
      }

      ++v36;
      *(v37 + 16) = v41 + 1;
      result = outlined init with take of __RKEntityActionSpecification(v18, v37 + v48 + v41 * v39, type metadata accessor for __RKEntityActionSpecification);
      v38 = v51;
      if (v49 == v36)
      {
        swift_bridgeObjectRelease_n();
        v29 = v55;
        v42 = v47;
        LOBYTE(v31) = v44;
        v32 = v43;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v51, v47, type metadata accessor for __RKEntityActionSpecification);
      return _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v21, type metadata accessor for __RKEntityActionSpecification);
    }

    outlined init with take of __RKEntityActionSpecification(v21, v10, type metadata accessor for __RKEntityAudioActionArguments);
    v23 = &v10[*(v7 + 20)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = v25 & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v27 = v26;
    }

    if (!v27)
    {
      _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v10, type metadata accessor for __RKEntityAudioActionArguments);
      return _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v51, v47, type metadata accessor for __RKEntityActionSpecification);
    }

    v53(v10);
    result = _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v10, type metadata accessor for __RKEntityAudioActionArguments);
    if (!v4)
    {
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v3 = CFErrorRef._domain.getter();
    if (!*MEMORY[0x1E6998F00])
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v4 = v2;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (CFErrorRef._code.getter() == 8)
    {
      if (CFErrorRef._userInfo.getter())
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          if (*MEMORY[0x1E6998F10])
          {
            v9 = v8;
            v10 = *MEMORY[0x1E6998F10];
            v11 = [v9 __swift_objectForKeyedSubscript_];

            swift_unknownObjectRelease();
            if (v11)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v18 = 0u;
              v19 = 0u;
            }

            v20 = v18;
            v21 = v19;
            if (*(&v19 + 1))
            {
              if (swift_dynamicCast())
              {

                lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
                swift_allocError();
                *v16 = v18;
                *(v16 + 8) = 0;
                *(v16 + 16) = 0;
LABEL_34:
                swift_willThrow();
                goto LABEL_35;
              }

              goto LABEL_35;
            }

LABEL_37:

            goto LABEL_25;
          }

          goto LABEL_39;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (CFErrorRef._code.getter() != 21)
      {
        goto LABEL_35;
      }

      if (CFErrorRef._userInfo.getter())
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          if (*MEMORY[0x1E6998F10])
          {
            v13 = v12;
            v14 = *MEMORY[0x1E6998F10];
            v15 = [v13 __swift_objectForKeyedSubscript_];

            swift_unknownObjectRelease();
            if (v15)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v18 = 0u;
              v19 = 0u;
            }

            v20 = v18;
            v21 = v19;
            if (*(&v19 + 1))
            {
              if (swift_dynamicCast())
              {

                lazy protocol witness table accessor for type LocalizedRealityFileError and conformance LocalizedRealityFileError();
                swift_allocError();
                *v17 = v18;
                goto LABEL_34;
              }

LABEL_35:

              return;
            }

            goto LABEL_37;
          }

LABEL_40:
          __break(1u);
          return;
        }

LABEL_23:

        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

LABEL_24:
    v20 = 0u;
    v21 = 0u;
LABEL_25:
    outlined destroy of BodyTrackingComponent?(&v20, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t specialized static __REAssetBundle.findTextureEntryDescriptors(in:)()
{
  result = RERealityFileGetAssetDescriptorCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v1 == v2)
      {
        return v3;
      }

      if (v2 >= v1)
      {
        break;
      }

      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_15;
      }

      result = RERealityFileGetAssetDescriptorAtIndex();
      if (!result)
      {
        goto LABEL_17;
      }

      v5 = result;
      RERealityFileAssetDescriptorGetFilename();
      String.init(cString:)();
      v6._object = 0x80000001C18F00E0;
      v6._countAndFlagsBits = 0xD000000000000010;
      v7 = String.hasSuffix(_:)(v6);

      ++v2;
      if (v7)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v9 + 1;
        *(v3 + 8 * v9 + 32) = v5;
        v2 = v4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *specialized static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a4;
  v39[1] = *MEMORY[0x1E69E9840];
  v37 = a2;
  v5 = specialized static __REAssetBundle.findTextureEntryDescriptors(in:)();
  v6 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v36 = *(v5 + 16);
  if (v36)
  {
    v7 = 0;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
      }

      v8 = v5;
      v9 = *(v5 + 8 * v7 + 32);
      v10 = MEMORY[0x1C6901EB0]();
      v39[0] = 0;
      v11 = a1[3];
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v11);
      (*(v12 + 32))(v11, v12);
      v13 = RERealityFileCopyTextureDescriptor();
      if (!v13)
      {
        break;
      }

      v14 = v13;
      MEMORY[0x1C68F3650]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v38;
      objc_autoreleasePoolPop(v10);
      v5 = v8;
      if (v36 == v7)
      {
        goto LABEL_8;
      }
    }

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v26 = 0xD00000000000003ELL;
    *(v26 + 8) = 0x80000001C18F0060;
    *(v26 + 16) = 4;
    swift_willThrow();
    objc_autoreleasePoolPop(v10);
    goto LABEL_18;
  }

LABEL_8:
  v16 = v34[3];
  v17 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v16);
  (*(v17 + 8))(v39, v6, v16, v17);
  v18 = v35;
  if (v35)
  {

LABEL_18:

    goto LABEL_19;
  }

  v19 = v39[0];
  if (v39[0])
  {
    v20 = *(v39[0] + 16);
    if (v20)
    {
      v35 = 0;
      v36 = v5;
      v39[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = v39[0];
      v22 = *(v39[0] + 16);
      v23 = 32;
      do
      {
        v24 = *(v19 + v23);
        v39[0] = v21;
        v25 = *(v21 + 24);
        if (v22 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v22 + 1, 1);
          v21 = v39[0];
        }

        *(v21 + 16) = v22 + 1;
        *(v21 + 8 * v22 + 32) = v24;
        v23 += 8;
        ++v22;
        --v20;
      }

      while (v20);

      v18 = v35;
      v5 = v36;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    v30 = *(v21 + 16);
    MEMORY[0x1EEE9AC00](v29);
    v33[2] = v5;
    v33[3] = v21;
    v33[4] = v37;
    v33[5] = a1;
    v32 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #3 in static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:), v33, 0, v31);
    if (!v18)
    {
      a1 = v32;
    }
  }

  else
  {

    a1 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v27 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t specialized Scene.init(_:assetService:)(uint64_t a1, uint64_t *a2)
{
  v4 = RESceneCreate();
  type metadata accessor for Scene();
  swift_allocObject();
  v5 = Scene.init(coreScene:)(v4);
  v6 = *(v5 + 16);

  RERelease();
  v7 = *(v5 + 16);

  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 32))(v8, v9);
  v10 = *(a1 + 16);
  if ((RESceneLoadFromAsset() & 1) == 0)
  {
    v11 = REAssetHandleCopyAssetIdentifierString();
    v12 = String.init(_:)(v11);
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v13 = v12;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t specialized static __REAssetBundle.registerAnchorReferenceRawData(refData:assetService:fileNamesTuple:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v14 = specialized AssetServiceScopedRegistry.instance(for:)(a3);

  v15 = type metadata accessor for __RealityFileURLResolver();
  outlined init with copy of __REAssetService((v14 + 2), &v33);
  v16 = v34;
  v17 = v35;
  v18 = __swift_project_boxed_opaque_existential_1(&v33, v34);
  specialized static __RealityFileURLResolver.instance(for:)(v18, v15, v16, v17);

  __swift_destroy_boxed_opaque_existential_1(&v33);
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v33 = static __RealityFileURLResolver.schemePrefix;

  MEMORY[0x1C68F3410](a4, a5);
  v19 = v33;
  outlined init with copy of __REAssetService((v14 + 2), &v33);
  v20 = v34;
  v21 = v35;
  v22 = __swift_project_boxed_opaque_existential_1(&v33, v34);
  specialized static __RealityFileURLResolver.instance(for:)(v22, v15, v20, v21);

  __swift_destroy_boxed_opaque_existential_1(&v33);
  *&v33 = 0x2F737465737361;
  *(&v33 + 1) = 0xE700000000000000;
  MEMORY[0x1C68F3410](a6, a7);
  v23 = v33;
  v24._countAndFlagsBits = 47;
  v24._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v24) || (v25 = 47, v26 = 0xE100000000000000, v27._countAndFlagsBits = 47, v27._object = 0xE100000000000000, String.hasPrefix(_:)(v27)))
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v33 = v19;

  MEMORY[0x1C68F3410](v25, v26);

  MEMORY[0x1C68F3410](v23, *(&v23 + 1));

  v28 = v33;
  swift_beginAccess();
  outlined copy of Data._Representation(a1, a2);
  v29 = v14[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v14[9];
  v14[9] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v28, *(&v28 + 1), isUniquelyReferenced_nonNull_native);

  v14[9] = v32;
  swift_endAccess();
}

uint64_t specialized static __REAssetBundle.registerAnchoringComponentARReferences(scene:realityFilename:assetDescriptor:assetService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v98 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v111 = &v93 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Data.Deallocator();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v109 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v93 - v22;
  v116 = type metadata accessor for __REAnchoringType();
  v23 = *(v116 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v93 - v27;
  swift_beginAccess();
  if (static __REAnchoring.registration)
  {
    v28 = *(static __REAnchoring.registration + 3);
    v29 = *(a1 + 16);
    result = RESceneGetComponentsOfCustomType();
    if (v31 < 0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {
      v32 = v31;
      if (v31)
      {
        v33 = result;
        v97 = v17;
        v108 = v13;
        v119 = (v23 + 48);
        v112 = (v23 + 56);
        v96 = (v14 + 104);
        v95 = *MEMORY[0x1E6969010];
        v94 = (v14 + 8);
        v106 = (v10 + 32);
        v103 = (v10 + 56);
        v102 = (v10 + 48);
        v93 = (v10 + 8);
        v105 = v9;
        v34 = v101;
        v35 = v111;
        v36 = v109;
        while (1)
        {
          v40 = *v33;
          Object = RECustomComponentGetObject();
          if (!Object)
          {
            lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
            swift_allocError();
            *v89 = 0;
            *(v89 + 8) = 0;
            *(v89 + 16) = 2;
            return swift_willThrow();
          }

          v42 = Object;
          v43 = type metadata accessor for __REAnchoring();
          outlined init with copy of [String : String](v42 + *(v43 + 20), v36, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
          v44 = *v119;
          v45 = v116;
          if ((*v119)(v36, 1, v116) == 1)
          {
            v46 = *v42;
            if (*v42)
            {
              v47 = strlen(*v42);
              v48 = v97;
              (*v96)(v97, v95, v108);
              Data.Deallocator._deallocator.getter();
              v104 = v32;
              if (v47)
              {
                v49 = type metadata accessor for __DataStorage();
                v50 = *(v49 + 48);
                v51 = *(v49 + 52);
                swift_allocObject();

                v52 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
                v53 = __DataStorage._capacity.modify();
                *v54 |= 0x8000000000000000;
                v53(&v117, 0);
                v55 = specialized Data._Representation.init(_:count:)(v52, v47);
                v57 = v56;
              }

              else
              {
                v60 = Data.Deallocator._deallocator.getter();
                v60(v46, 0);

                v55 = 0;
                v57 = 0xC000000000000000;
              }

              (*v94)(v48, v108);
              v61 = type metadata accessor for JSONDecoder();
              v62 = *(v61 + 48);
              v63 = *(v61 + 52);
              swift_allocObject();
              JSONDecoder.init()();
              _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType, type metadata accessor for __REAnchoringType);
              v58 = v114;
              v59 = v116;
              v64 = v55;
              v65 = v57;
              v66 = v110;
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();
              v67 = v105;
              if (v66)
              {

                outlined consume of Data._Representation(v64, v65);

                (*v112)(v58, 1, 1, v59);
                v110 = 0;
              }

              else
              {
                v110 = 0;
                (*v112)(v58, 0, 1, v59);

                outlined consume of Data._Representation(v64, v65);
              }

              v34 = v101;
              v36 = v109;
              v9 = v67;
              v32 = v104;
            }

            else
            {
              v58 = v114;
              v59 = v116;
              (*v112)(v114, 1, 1, v116);
            }

            v68 = v44(v36, 1, v59);
            v35 = v111;
            if (v68 != 1)
            {
              outlined destroy of BodyTrackingComponent?(v36, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
            }

            v45 = v116;
          }

          else
          {
            v58 = v114;
            outlined init with take of __RKEntityActionSpecification(v36, v114, type metadata accessor for __REAnchoringType);
            (*v112)(v58, 0, 1, v45);
          }

          if (v44(v58, 1, v45) == 1)
          {
            break;
          }

          v69 = v58;
          v70 = v113;
          outlined init with take of __RKEntityActionSpecification(v69, v113, type metadata accessor for __REAnchoringType);
          _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v70, v115, type metadata accessor for __REAnchoringType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 3)
          {
            (*v106)(v35, v115, v9);
            (*v103)(v35, 0, 1, v9);
          }

          else if (EnumCaseMultiPayload == 1)
          {
            v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
            v73 = v115;
            (*v106)(v35, v115, v9);
            (*v103)(v35, 0, 1, v9);
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
            (*(*(v74 - 8) + 8))(v73 + v72, v74);
          }

          else
          {
            (*v103)(v35, 1, 1, v9);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v115, type metadata accessor for __REAnchoringType);
          }

          if ((*v102)(v35, 1, v9) == 1)
          {
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v113, type metadata accessor for __REAnchoringType);
            v37 = v35;
            v38 = &_s10Foundation3URLVSgMd;
            v39 = &_s10Foundation3URLVSgMR;
            goto LABEL_6;
          }

          (*v106)(v107, v35, v9);
          v75 = URL.lastPathComponent.getter();
          v77 = v76;
          v78 = v34[3];
          v79 = v34[4];
          __swift_project_boxed_opaque_existential_1(v34, v78);
          (*(v79 + 32))(v78, v79);
          String.utf8CString.getter();
          v80 = REAssetManagerResolveAssetDescriptor();

          if (!v80)
          {
            goto LABEL_40;
          }

          v82 = v34[3];
          v81 = v34[4];
          __swift_project_boxed_opaque_existential_1(v34, v82);
          (*(v81 + 32))(v82, v81);
          RawDataForAssetDescriptor = REAssetManagerLoadRawDataForAssetDescriptor();
          if (!RawDataForAssetDescriptor)
          {
            v117 = 0;
            v118 = 0xE000000000000000;
            _StringGuts.grow(_:)(33);

            v117 = 0xD00000000000001ELL;
            v118 = 0x80000001C18F0290;
            MEMORY[0x1C68F3410](v75, v77);

            MEMORY[0x1C68F3410](46, 0xE100000000000000);
            v90 = v117;
            v91 = v118;
            lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
            swift_allocError();
            *v92 = v90;
            *(v92 + 8) = v91;
            *(v92 + 16) = 4;
            swift_willThrow();
            RERelease();
            (*v93)(v107, v105);
            return _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v113, type metadata accessor for __REAnchoringType);
          }

          v84 = RawDataForAssetDescriptor;
          v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          specialized static __REAssetBundle.registerAnchorReferenceRawData(refData:assetService:fileNamesTuple:)(v85, v87, v34, v98, v99, v75, v77);

          outlined consume of Data._Representation(v85, v87);
          RERelease();
          v9 = v105;
          (*v93)(v107, v105);
          result = _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v113, type metadata accessor for __REAnchoringType);
          v35 = v111;
          v36 = v109;
LABEL_7:
          ++v33;
          if (!--v32)
          {
            return result;
          }
        }

        v37 = v58;
        v38 = &_s10RealityKit17__REAnchoringTypeOSgMd;
        v39 = &_s10RealityKit17__REAnchoringTypeOSgMR;
LABEL_6:
        result = outlined destroy of BodyTrackingComponent?(v37, v38, v39);
        goto LABEL_7;
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v88 = xmmword_1C18D30C0;
    *(v88 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized static __REAssetBundle.remapSceneAnchorsBeforeWrite(fileWriter:scene:)(uint64_t a1, uint64_t a2)
{
  v159 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v149 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v148 = &v136 - v8;
  v158 = type metadata accessor for URLComponents();
  v181 = *(v158 - 8);
  v9 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v147 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v136 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v13 = *(v163 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v136 - v15;
  v173 = type metadata accessor for URL();
  v16 = *(v173 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v145 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v136 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v136 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v136 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgSgMd, &_s10RealityKit17__REAnchoringTypeOSgSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v169 = &v136 - v27;
  v168 = type metadata accessor for Data.Deallocator();
  v28 = *(v168 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v170 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v31 = *(v166 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v139 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v138 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v172 = &v136 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v180 = &v136 - v39;
  v40 = type metadata accessor for __REAnchoringType();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v176 = &v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v175 = &v136 - v45;
  swift_beginAccess();
  if (static __REAnchoring.registration)
  {
    v46 = *(static __REAnchoring.registration + 3);
    v47 = *(a2 + 16);
    result = RESceneGetComponentsOfCustomType();
    v174 = result;
    if ((v49 & 0x8000000000000000) == 0)
    {
      v179 = v2;
      if (!v49)
      {
        LOBYTE(v52) = 0;
        return v52 & 1;
      }

      v50 = v13;
      v51 = 0;
      v52 = 0;
      v183 = (v41 + 48);
      v178 = (v41 + 56);
      v152 = *MEMORY[0x1E6969010];
      v151 = (v28 + 104);
      v150 = (v28 + 8);
      v167 = (v16 + 32);
      v155 = (v16 + 48);
      v154 = (v181 + 8);
      v157 = (v16 + 8);
      v165 = (v31 + 56);
      v136 = v50;
      v156 = (v50 + 32);
      v164 = (v31 + 48);
      v53 = v173;
      v54 = v169;
      v171 = v49;
      v153 = v40;
LABEL_5:
      v137 = v52;
      v55 = v170;
      v56 = v172;
      while (v51 < v49)
      {
        if (__OFADD__(v51, 1))
        {
          goto LABEL_63;
        }

        v60 = *(v174 + 8 * v51);
        Object = RECustomComponentGetObject();
        if (!Object)
        {
          lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
          swift_allocError();
          *v126 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 2;
          goto LABEL_46;
        }

        v62 = Object;
        v63 = type metadata accessor for __REAnchoring();
        outlined init with copy of [String : String](v62 + *(v63 + 20), v56, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
        v64 = *v183;
        v65 = (*v183)(v56, 1, v40);
        v181 = v51 + 1;
        if (v65 == 1)
        {
          v66 = *v62;
          if (*v62)
          {
            v67 = strlen(*v62);
            (*v151)(v55, v152, v168);
            v68 = v55;
            Data.Deallocator._deallocator.getter();
            if (v67)
            {
              v69 = type metadata accessor for __DataStorage();
              v70 = *(v69 + 48);
              v71 = *(v69 + 52);
              swift_allocObject();

              v72 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
              v73 = __DataStorage._capacity.modify();
              *v74 |= 0x8000000000000000;
              v73(v182, 0);
              v67 = specialized Data._Representation.init(_:count:)(v72, v67);
              v76 = v75;
            }

            else
            {
              v78 = Data.Deallocator._deallocator.getter();
              v78(v66, 0);

              v76 = 0xC000000000000000;
            }

            (*v150)(v68, v168);
            v79 = type metadata accessor for JSONDecoder();
            v80 = *(v79 + 48);
            v81 = *(v79 + 52);
            swift_allocObject();
            JSONDecoder.init()();
            _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType, type metadata accessor for __REAnchoringType);
            v82 = v179;
            v83 = v180;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v82)
            {

              outlined consume of Data._Representation(v67, v76);

              v177 = *v178;
              v177(v83, 1, 1, v40);
              v179 = 0;
            }

            else
            {
              v179 = 0;
              v177 = *v178;
              v177(v83, 0, 1, v40);

              outlined consume of Data._Representation(v67, v76);
            }

            v54 = v169;
            v55 = v170;
            v56 = v172;
          }

          else
          {
            v177 = *v178;
            v177(v180, 1, 1, v40);
          }

          v84 = v64(v56, 1, v40);
          v53 = v173;
          if (v84 != 1)
          {
            outlined destroy of BodyTrackingComponent?(v56, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
          }

          v77 = v180;
        }

        else
        {
          v77 = v180;
          outlined init with take of __RKEntityActionSpecification(v56, v180, type metadata accessor for __REAnchoringType);
          v177 = *v178;
          v177(v77, 0, 1, v40);
        }

        if (v64(v77, 1, v40) == 1)
        {
          v57 = v77;
          v58 = &_s10RealityKit17__REAnchoringTypeOSgMd;
          v59 = &_s10RealityKit17__REAnchoringTypeOSgMR;
        }

        else
        {
          v85 = v175;
          outlined init with take of __RKEntityActionSpecification(v77, v175, type metadata accessor for __REAnchoringType);
          _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v85, v176, type metadata accessor for __REAnchoringType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 3)
          {
            v108 = *v167;
            (*v167)();
            v109 = v179;
            v110 = Data.init(contentsOf:options:)();
            v179 = v109;
            if (v109)
            {
              goto LABEL_57;
            }

            v112 = v110;
            v113 = v111;
            v143 = v108;
            RERealityFileAssetWriteReportCreate();
            isa = Data._bridgeToObjectiveC()().super.isa;
            URL.path.getter();
            String.utf8CString.getter();

            v115 = RERealityFileWriterWriteDataEntry();

            if ((v115 & 1) == 0)
            {
              v128 = RERealityFileAssetWriteReportGetError();
              if (v128)
              {
                v129 = v128;
                type metadata accessor for CFErrorRef(0);
                _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
                swift_allocError();
                *v130 = v129;
              }

              else
              {
                lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
                swift_allocError();
                *v134 = 0xD00000000000002CLL;
                *(v134 + 8) = 0x80000001C18EFF40;
                *(v134 + 16) = 4;
              }

              swift_willThrow();
              RERelease();
              outlined consume of Data._Representation(v112, v113);
LABEL_57:
              (*v157)(v161, v173);
LABEL_61:
              _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v175, type metadata accessor for __REAnchoringType);
              return v52 & 1;
            }

            v142 = v113;
            v116 = v112;
            result = RERealityFileAssetWriteReportGetSerializationString();
            if (!result)
            {
              goto LABEL_68;
            }

            v117 = v147;
            URLComponents.init()();
            v118 = String.init(cString:)();
            MEMORY[0x1C68F1FD0](v118);
            v119 = v149;
            URLComponents.url.getter();
            v53 = v173;
            result = (*v155)(v119, 1, v173);
            if (result == 1)
            {
              goto LABEL_67;
            }

            (*v154)(v117, v158);
            v120 = v145;
            v121 = v143;
            (v143)(v145, v119, v53);
            RERelease();
            outlined consume of Data._Representation(v116, v142);
            (*v157)(v161, v53);
            v54 = v169;
            v121(v169, v120, v53);
            v40 = v153;
            swift_storeEnumTagMultiPayload();
            v177(v54, 0, 1, v40);
            v107 = v166;
            (*v165)(v54, 0, 1, v166);
            v55 = v170;
          }

          else if (EnumCaseMultiPayload == 1)
          {
            v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR);
            v87 = *(v143 + 48);
            v88 = *v167;
            v89 = v160;
            v90 = v176;
            (*v167)(v160, v176, v53);
            v91 = *v156;
            v92 = v90 + v87;
            v93 = v89;
            (*v156)(v162, v92, v163);
            v94 = v179;
            v95 = Data.init(contentsOf:options:)();
            v179 = v94;
            if (v94)
            {
              v127 = v136;
LABEL_60:
              (*(v127 + 8))(v162, v163);
              (*v157)(v93, v173);
              goto LABEL_61;
            }

            v97 = v95;
            v98 = v96;
            v141 = v91;
            v142 = v88;
            RERealityFileAssetWriteReportCreate();
            v99 = Data._bridgeToObjectiveC()().super.isa;
            URL.path.getter();
            String.utf8CString.getter();

            v100 = RERealityFileWriterWriteDataEntry();

            if ((v100 & 1) == 0)
            {
              v131 = RERealityFileAssetWriteReportGetError();
              if (v131)
              {
                v132 = v131;
                type metadata accessor for CFErrorRef(0);
                _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
                swift_allocError();
                *v133 = v132;
              }

              else
              {
                lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
                swift_allocError();
                *v135 = 0xD00000000000002CLL;
                *(v135 + 8) = 0x80000001C18EFF40;
                *(v135 + 16) = 4;
              }

              v127 = v136;
              v93 = v160;
              swift_willThrow();
              RERelease();
              outlined consume of Data._Representation(v97, v98);
              goto LABEL_60;
            }

            v140 = v62;
            result = RERealityFileAssetWriteReportGetSerializationString();
            if (!result)
            {
              goto LABEL_66;
            }

            v101 = v146;
            URLComponents.init()();
            v102 = String.init(cString:)();
            MEMORY[0x1C68F1FD0](v102);
            v103 = v148;
            URLComponents.url.getter();
            v53 = v173;
            result = (*v155)(v103, 1, v173);
            if (result == 1)
            {
              goto LABEL_65;
            }

            (*v154)(v101, v158);
            v104 = v103;
            v105 = v142;
            (v142)(v144, v104, v53);
            RERelease();
            outlined consume of Data._Representation(v97, v98);
            (*v157)(v160, v53);
            v106 = *(v143 + 48);
            v54 = v169;
            v105();
            v141(v54 + v106, v162, v163);
            v40 = v153;
            swift_storeEnumTagMultiPayload();
            v177(v54, 0, 1, v40);
            v107 = v166;
            (*v165)(v54, 0, 1, v166);
            v55 = v170;
          }

          else
          {
            v107 = v166;
            (*v165)(v54, 1, 1, v166);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v176, type metadata accessor for __REAnchoringType);
          }

          v122 = (*v164)(v54, 1, v107);
          v56 = v172;
          if (v122 != 1)
          {
            v123 = v138;
            outlined init with take of __REAnchoringType?(v54, v138);
            v124 = v139;
            outlined init with copy of [String : String](v123, v139, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
            __REAnchoring.type.setter(v124);
            outlined destroy of BodyTrackingComponent?(v123, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
            result = _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v175, type metadata accessor for __REAnchoringType);
            v52 = 1;
            v51 = v181;
            v49 = v171;
            if (v181 != v171)
            {
              goto LABEL_5;
            }

            return v52 & 1;
          }

          _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v175, type metadata accessor for __REAnchoringType);
          v57 = v54;
          v58 = &_s10RealityKit17__REAnchoringTypeOSgSgMd;
          v59 = &_s10RealityKit17__REAnchoringTypeOSgSgMR;
        }

        result = outlined destroy of BodyTrackingComponent?(v57, v58, v59);
        ++v51;
        v49 = v171;
        if (v181 == v171)
        {
          LOBYTE(v52) = v137;
          return v52 & 1;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v125 = xmmword_1C18D30C0;
    *(v125 + 16) = 0;
LABEL_46:
    swift_willThrow();
    return v52 & 1;
  }

  return result;
}