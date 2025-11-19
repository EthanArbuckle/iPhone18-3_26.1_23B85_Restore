void *specialized AssetServiceScopedRegistry.instance(for:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, &v21);
    type metadata accessor for __RealityFileARReferenceProvidingPlugin();
    v11 = swift_allocObject();
    if (one-time initialization token for schemePrefix != -1)
    {
      swift_once();
    }

    v12 = *(&static __RealityFileURLResolver.schemePrefix + 1);
    v11[7] = static __RealityFileURLResolver.schemePrefix;
    v11[8] = v12;
    v11[9] = MEMORY[0x1E69E7CC8];
    outlined init with take of ForceEffectBase(&v21, (v11 + 2));

    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    v13 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v26;
    swift_endAccess();
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 32))(v15, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v6;
    v24 = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v25 = v18;
    *&v21 = MEMORY[0x1E69E9820];
    *(&v21 + 1) = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v23 = &block_descriptor_52;
    v19 = _Block_copy(&v21);

    REAssetManagerAddCleanupCallback();
    _Block_release(v19);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

id CustomMaterial.Program.surfaceShader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v7 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;

  swift_unknownObjectRetain();

  return v7;
}

void CustomMaterial.Program.geometryModifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 104);
  outlined copy of CustomMaterial.GeometryModifier?(v2, v3, v4, v5, v6);
}

void CustomMaterial.Program.Descriptor.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }
}

Swift::Int CustomMaterial.Program.Descriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CustomMaterial.Program.Descriptor()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  return Hasher._finalize()();
}

uint64_t CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)(a1, a2, a3);
}

uint64_t CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v4 + 800) = v3;
  *(v4 + 808) = *v3;
  *(v4 + 816) = *a1;
  *(v4 + 824) = *(a1 + 8);
  v5 = *(a1 + 32);
  *(v4 + 840) = *(a1 + 24);
  *(v4 + 848) = v5;
  *(v4 + 1032) = *(a1 + 40);
  v6 = *(a2 + 16);
  *(v4 + 856) = *a2;
  *(v4 + 872) = v6;
  *(v4 + 888) = *(a2 + 32);
  *(v4 + 1033) = *(a2 + 40);
  *(v4 + 1034) = *a3;
  return MEMORY[0x1EEE6DFA0](CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:), 0, 0);
}

uint64_t CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)()
{
  v93 = v0;
  v1 = *(v0 + 1035);
  v2 = *(v0 + 1034);
  v3 = *(v0 + 1033);
  v4 = *(v0 + 888);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 848);
  v7 = *(v0 + 840);
  v8 = *(v0 + 800);
  v9 = *(v0 + 856);
  v10 = *(v0 + 872);
  v11 = *(v0 + 824);
  *(v8 + 16) = *(v0 + 816);
  *(v8 + 24) = v11;
  *(v8 + 40) = v7;
  *(v8 + 48) = v6;
  *(v8 + 56) = v5;
  *(v8 + 64) = v9;
  *(v8 + 80) = v10;
  *(v8 + 96) = v4;
  *(v8 + 104) = v3;
  *(v8 + 105) = v2;
  *(v8 + 106) = v1;
  v12 = 0x800020004uLL >> (16 * v2);
  v13 = *(v0 + 1035);
  if (v13 != 2)
  {
    if (v13)
    {
      LOWORD(v12) = v12 | 0x2001;
    }

    else
    {
      LOWORD(v12) = v12 | 1;
    }
  }

  v82 = v12;
  *(v0 + 1030) = v12;
  v14 = *(v0 + 888);
  v15 = *(v0 + 880);
  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  v19 = *(v0 + 848);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);
  v23 = *(v0 + 1033);
  v83 = *(v0 + 816);
  v84 = v22;
  v85 = v21;
  v86 = v20;
  v87 = v19;
  v88 = v5;
  v89 = v18;
  v90 = v17;
  v91.i64[0] = v16;
  v91.i64[1] = v15;
  v92.i64[0] = v14;
  v92.i8[8] = v23;
  v81 = v5;

  swift_unknownObjectRetain();
  v24 = v19;
  outlined copy of CustomMaterial.GeometryModifier?(v18, v17, v16, v15, v14);
  specialized static CustomMaterial.ensureFunctionsExist(surfaceShader:geometryModifier:)(&v83, &v89);
  v25 = *(v0 + 864);
  if (v25)
  {
    v26 = *(v0 + 864);

    v27 = *(v0 + 856);
    v28 = v25;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = *(v0 + 1034);
  v30 = *(v0 + 824);
  v31 = *(v0 + 816);
  v89 = 0;
  v90 = 0xE000000000000000;

  MEMORY[0x1C68F3410](v27, v28);

  MEMORY[0x1C68F3410](95, 0xE100000000000000);
  MEMORY[0x1C68F3410](v31, v30);
  MEMORY[0x1C68F3410](95, 0xE100000000000000);
  v32 = 0xE500000000000000;
  v33 = 0x74696C6E75;
  if (v29 != 1)
  {
    v33 = 0x616F637261656C63;
    v32 = 0xE900000000000074;
  }

  if (v29)
  {
    v34 = v33;
  }

  else
  {
    v34 = 7629164;
  }

  if (v29)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  MEMORY[0x1C68F3410](v34, v35);

  v37 = v89;
  v36 = v90;
  if (v25)
  {
    v38 = *(v0 + 888);
    v39 = *(v0 + 880);
    v40 = *(v0 + 872);
    v41 = *(v0 + 864);
    v43 = *(v0 + 1033);
    v83 = *(v0 + 856);
    v42 = v83;
    v84 = v25;
    v85 = v40;
    v86 = v39;
    v87 = v38;
    v88 = v43 & 1;
    outlined copy of CustomMaterial.GeometryModifier?(v83, v41, v40, v39, v38);

    MEMORY[0x1C68F3410](0x6D6F65675FLL, 0xE500000000000000);
    static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:)(&v83, &v89);

    outlined consume of CustomMaterial.GeometryModifier?(v42, v41, v40, v39, v38);
    v44 = v36;
    v45 = v89;
    v46 = v90;
    v47 = v92;
    v48 = v91;
  }

  else
  {
    static CustomMaterial.createDefaultGeometryModifier()(&v89);
    v45 = v89;
    v46 = v90;
    v47 = v92;
    v48 = v91;
    v44 = v36;
  }

  v76 = v45;
  v78 = v46;
  *(v0 + 1036) = v45;
  *(v0 + 928) = v46;
  v79 = v47;
  v80 = v48;
  v77 = v47.i64[1];
  *(v0 + 896) = vextq_s8(v47, v47, 8uLL);
  *(v0 + 912) = vextq_s8(v48, v48, 8uLL);
  v75 = *(v0 + 888);
  v49 = *(v0 + 880);
  v50 = *(v0 + 872);
  v51 = *(v0 + 864);
  v52 = *(v0 + 856);
  v53 = *(v0 + 848);
  v54 = *(v0 + 840);
  v55 = *(v0 + 832);
  v56 = *(v0 + 824);
  v57 = *(v0 + 1033);
  v83 = *(v0 + 816);
  v84 = v56;
  v85 = v55;
  v86 = v54;
  v87 = v53;
  v88 = v81;
  v89 = v37;
  v90 = v44;
  MEMORY[0x1C68F3410](0x667275735FLL, 0xE500000000000000);
  static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:)(&v83, &v89);
  outlined consume of CustomMaterial.GeometryModifier?(v52, v51, v50, v49, v75);

  swift_unknownObjectRelease();

  v58 = v89;
  *(v0 + 1037) = v89;
  v60 = v90;
  v59 = v91.i64[0];
  *(v0 + 936) = v90;
  *(v0 + 944) = v59;
  v62 = v91.i64[1];
  v61 = v92.i64[0];
  *(v0 + 952) = v91.i64[1];
  *(v0 + 960) = v61;
  v63 = v92.i64[1];
  *(v0 + 968) = v92.i64[1];
  *(v0 + 1024) = 1;

  v64 = v63;

  v65 = v77;
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  if (one-time initialization token for shaderCacheRegistry != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 1035);
  v67 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v67 + 120, v0 + 736);
  v68 = specialized AssetServiceScopedRegistry.instance(for:)((v0 + 736));
  *(v0 + 976) = v68;
  __swift_destroy_boxed_opaque_existential_1((v0 + 736));
  *(v0 + 16) = 0;
  *(v0 + 18) = v82;
  *(v0 + 24) = 0;
  v69 = *(v0 + 1024);
  *(v0 + 1038) = v69;
  *(v0 + 32) = v69;
  *(v0 + 33) = v66;
  *(v0 + 34) = 1;
  *(v0 + 40) = v76;
  *(v0 + 48) = v78;
  *(v0 + 72) = v79;
  *(v0 + 56) = v80;
  *(v0 + 88) = v58;
  *(v0 + 96) = v60;
  *(v0 + 104) = v59;
  *(v0 + 112) = v62;
  *(v0 + 120) = v61;
  *(v0 + 128) = v64;
  v70 = *(v68 + 56);

  v71 = specialized SharedCacheStorage.getResource(forKey:)(v0 + 16);

  if (v71)
  {

    *(v0 + 1000) = v71;

    return MEMORY[0x1EEE6DFA0](CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:), 0, 0);
  }

  else
  {
    v72 = *(v68 + 64);
    v73 = swift_task_alloc();
    *(v0 + 984) = v73;
    *v73 = v0;
    v73[1] = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);

    return specialized ShaderCacheLoader.loadResource(forKey:)(v0 + 16);
  }
}

{
  *(v0[100] + 112) = v0[125];

  v1 = swift_task_alloc();
  v0[126] = v1;
  *v1 = v0;
  v1[1] = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  v2 = v0[125];

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v7 = *v1;
  *(*v1 + 1016) = v0;

  v4 = *(v2 + 1000);

  if (v0)
  {
    v5 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  else
  {
    v5 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v22 = *(v0 + 1038);
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v24 = *(v0 + 936);
  v23 = *(v0 + 1037);
  v21 = *(v0 + 1036);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v8 = *(v0 + 896);
  v9 = *(v0 + 1030);
  v10 = *(v0 + 1035);
  v25 = *(v0 + 944);

  *(v0 + 136) = 0;
  *(v0 + 138) = v9;
  *(v0 + 144) = 0;
  *(v0 + 152) = v22;
  *(v0 + 153) = v10;
  *(v0 + 154) = 1;
  *(v0 + 155) = *(v0 + 1025);
  *(v0 + 159) = *(v0 + 1029);
  *(v0 + 160) = v21;
  *(v0 + 168) = v4;
  *(v0 + 176) = v5;
  *(v0 + 184) = v6;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  *(v0 + 224) = v25;
  *(v0 + 240) = v3;
  *(v0 + 248) = v2;
  outlined destroy of CustomMaterial.CustomShaderParameters(v0 + 136);
  v11 = *(v0 + 992);
  v12 = *(v0 + 800);
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  v15 = *(v12 + 48);

  swift_unknownObjectRelease();

  v16 = *(v12 + 104);
  outlined consume of CustomMaterial.GeometryModifier?(*(v12 + 64), *(v12 + 72), *(v12 + 80), *(v12 + 88), *(v12 + 96));
  v17 = *(v0 + 808);
  v18 = *(v0 + 800);
  swift_deallocPartialClassInstance();
  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v24 = *(v0 + 952);
  v3 = *(v0 + 944);
  v4 = *(v0 + 1037);
  v28 = v4;
  v29 = *(v0 + 936);
  v5 = *(v0 + 1036);
  v27 = v5;
  v26 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 912);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 1035);
  v31 = v10;
  v32 = *(v0 + 1030);
  v11 = *(v0 + 800);
  *(v0 + 496) = 0;
  *(v0 + 498) = v32;
  *(v0 + 504) = 0;
  v30 = *(v0 + 1024);
  *(v0 + 512) = v30;
  *(v0 + 513) = v10;
  *(v0 + 514) = 1;
  *(v0 + 519) = *(v0 + 1029);
  *(v0 + 515) = *(v0 + 1025);
  *(v0 + 520) = v5;
  *(v0 + 528) = v26;
  *(v0 + 536) = v6;
  *(v0 + 544) = v7;
  *(v0 + 552) = v8;
  *(v0 + 560) = v9;
  v12 = v9;
  v25 = v9;
  *(v0 + 568) = v4;
  *(v0 + 576) = v29;
  *(v0 + 584) = v3;
  *(v0 + 592) = v24;
  *(v0 + 600) = v2;
  *(v0 + 608) = v1;
  v14 = *(v0 + 528);
  v13 = *(v0 + 544);
  v15 = *(v0 + 512);
  *(v11 + 120) = *(v0 + 496);
  *(v11 + 136) = v15;
  *(v11 + 152) = v14;
  *(v11 + 168) = v13;
  v16 = *(v0 + 560);
  v17 = *(v0 + 576);
  v18 = *(v0 + 592);
  *(v11 + 232) = v1;
  *(v11 + 216) = v18;
  *(v11 + 200) = v17;
  *(v11 + 184) = v16;

  v19 = v1;

  v20 = v12;
  outlined init with copy of CustomMaterial.CustomShaderParameters(v0 + 496, v0 + 616);

  RERelease();
  RERelease();

  *(v0 + 376) = 0;
  *(v0 + 378) = v32;
  *(v0 + 384) = 0;
  *(v0 + 392) = v30;
  *(v0 + 393) = v31;
  *(v0 + 394) = 1;
  *(v0 + 395) = *(v0 + 1025);
  *(v0 + 399) = *(v0 + 1029);
  *(v0 + 400) = v27;
  *(v0 + 408) = v26;
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 432) = v8;
  *(v0 + 440) = v25;
  *(v0 + 448) = v28;
  *(v0 + 456) = v29;
  *(v0 + 464) = v3;
  *(v0 + 472) = v24;
  *(v0 + 480) = v2;
  *(v0 + 488) = v1;
  outlined destroy of CustomMaterial.CustomShaderParameters(v0 + 376);
  v21 = *(v0 + 8);
  v22 = *(v0 + 800);

  return v21(v22);
}

{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v24 = *(v0 + 936);
  v23 = *(v0 + 1037);
  v22 = *(v0 + 1036);
  v3 = *(v0 + 920);
  v20 = *(v0 + 912);
  v21 = *(v0 + 928);
  v4 = *(v0 + 904);
  v5 = *(v0 + 896);
  v6 = *(v0 + 1030);
  v19 = *(v0 + 944);
  v7 = *(v0 + 1035);

  *(v0 + 256) = 0;
  *(v0 + 258) = v6;
  *(v0 + 264) = 0;
  *(v0 + 272) = *(v0 + 1024);
  *(v0 + 273) = v7;
  *(v0 + 274) = 1;
  *(v0 + 275) = *(v0 + 1025);
  *(v0 + 279) = *(v0 + 1029);
  *(v0 + 280) = v22;
  *(v0 + 288) = v21;
  *(v0 + 296) = v3;
  *(v0 + 304) = v20;
  *(v0 + 312) = v4;
  *(v0 + 320) = v5;
  *(v0 + 328) = v23;
  *(v0 + 336) = v24;
  *(v0 + 344) = v19;
  *(v0 + 360) = v2;
  *(v0 + 368) = v1;
  outlined destroy of CustomMaterial.CustomShaderParameters(v0 + 256);
  v8 = *(v0 + 1016);
  v9 = *(v0 + 800);
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  v12 = *(v9 + 48);

  swift_unknownObjectRelease();

  v13 = *(v9 + 104);
  outlined consume of CustomMaterial.GeometryModifier?(*(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96));
  v14 = *(*(v0 + 800) + 112);

  v15 = *(v0 + 808);
  v16 = *(v0 + 800);
  swift_deallocPartialClassInstance();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 984);
  v6 = *v2;
  *(*v2 + 992) = v1;

  if (v1)
  {
    v7 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  else
  {
    v8 = *(v4 + 976);

    *(v4 + 1000) = a1;
    v7 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void CustomMaterial.Program.hash(into:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  Hasher._combine(_:)(*(v0 + 56));
  v4 = &property descriptor for UnlitMaterial.readsDepth;
  MEMORY[0x1C68F4C10]([v2 hash]);
  if (v1)
  {
    v5 = OpaquePointer.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1C68F4C10]([v3 hash]);
  v6 = *(v0 + 72);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11 & 1);

    swift_unknownObjectRetain();
    v12 = v10;
    MEMORY[0x1C68F4C10]([v8 hash]);
    if (v9)
    {
      v13 = OpaquePointer.hashValue.getter();
      Hasher._combine(_:)(1u);
      v14 = v13;
      v4 = &property descriptor for UnlitMaterial.readsDepth;
      MEMORY[0x1C68F4C10](v14);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    MEMORY[0x1C68F4C10]([v12 v4[491]]);
    outlined consume of CustomMaterial.GeometryModifier?(v7, v6, v8, v9, v10);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = *(v0 + 106);
  MEMORY[0x1C68F4C10](*(v0 + 105));
  if (v15 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v15 & 1);
  }
}

uint64_t CustomMaterial.Program.init(resource:shaderParameters:blending:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2[5];
  v6 = a2[3];
  v62 = a2[4];
  v63 = v5;
  v7 = a2[5];
  v64 = a2[6];
  v8 = a2[1];
  v58 = *a2;
  v59 = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v60 = a2[2];
  v12 = v60;
  v61 = v9;
  *(v3 + 184) = v62;
  *(v3 + 200) = v7;
  *(v3 + 216) = a2[6];
  *(v3 + 120) = v11;
  *(v3 + 136) = v10;
  *(v3 + 152) = v12;
  v65 = *(a2 + 14);
  v13 = *(a3 + 8);
  v45 = *a3;
  v14 = *(a3 + 20);
  v15 = *(a3 + 16);
  *(v3 + 112) = a1;
  *(v3 + 232) = *(a2 + 14);
  *(v3 + 168) = v6;
  if ((v13 - 1) >= 2)
  {
    v16 = v14 & 1;
  }

  else
  {
    v16 = 2;
  }

  if ((BYTE2(v58) & 4) != 0)
  {
    LOBYTE(v17) = 0;
  }

  else if ((BYTE2(v58) & 2) != 0)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v17 = (WORD1(v58) >> 2) & 2;
  }

  if (BYTE2(v58))
  {
    v16 = (WORD1(v58) & 0x2000) != 0;
  }

  *(v3 + 105) = v17;
  *(v3 + 106) = v16;
  v18 = *(&v63 + 1);
  if (!*(&v63 + 1))
  {

    outlined init with copy of CustomMaterial.CustomShaderParameters(&v58, v48);
    goto LABEL_18;
  }

  v20 = *(&v64 + 1);
  v19 = v65;
  v21 = v64;
  v23 = *(&v62 + 1);
  v22 = v63;
  v46[0] = BYTE8(v62);
  *&v46[8] = v63;
  *&v46[24] = v64;
  v47 = v65;

  outlined init with copy of CustomMaterial.CustomShaderParameters(&v58, v48);
  outlined copy of __MaterialResource.CoreMaterialFunction?(v23, v22, v18, v21, v20, v19);
  __MaterialResource.CoreMaterialFunction.getSurfaceShader()(&v52);

  v24 = v53;
  if (!v53)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v25 = v52;
  v26 = v54;
  v27 = v55;
  v28 = v56;
  v29 = v57;
  outlined consume of CustomMaterial.Blending?(v45, v13);
  *(v4 + 16) = v25;
  *(v4 + 24) = v24;
  *(v4 + 32) = v26;
  *(v4 + 40) = v27;
  *(v4 + 48) = v28;
  *(v4 + 56) = v29 & 1;
  v30 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    v31 = *(&v61 + 1);
    v32 = v62;
    v33 = v25;
    v43 = v25;
    v44 = v28;
    v34 = v61;
    v35 = v28;
    v37 = *(&v59 + 1);
    v36 = v60;
    v48[0] = BYTE8(v59);
    v49 = v60;
    v50 = v61;
    v51 = v62;
    outlined copy of CustomMaterial.GeometryModifier?(v33, v24, v26, v27, v35);
    outlined copy of __MaterialResource.CoreMaterialFunction?(v37, v36, v30, v34, v31, v32);
    __MaterialResource.CoreMaterialFunction.getGeometryModifier()(v46);
    outlined destroy of CustomMaterial.CustomShaderParameters(&v58);
    outlined consume of CustomMaterial.GeometryModifier?(v43, v24, v26, v27, v44);

    v38 = *v46;
    v39 = *&v46[16];
    v40 = *&v46[32];
    v41 = v47;
  }

  else
  {

    outlined destroy of CustomMaterial.CustomShaderParameters(&v58);
    v40 = 0;
    v41 = 0;
    v38 = 0uLL;
    v39 = 0uLL;
  }

  *(v4 + 64) = v38;
  *(v4 + 80) = v39;
  *(v4 + 96) = v40;
  *(v4 + 104) = v41;
  return v4;
}

uint64_t CustomMaterial.Program.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  swift_unknownObjectRelease();

  v3 = *(v0 + 104);
  outlined consume of CustomMaterial.GeometryModifier?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v4 = *(v0 + 112);

  v5 = *(v0 + 200);
  v9[4] = *(v0 + 184);
  v9[5] = v5;
  v9[6] = *(v0 + 216);
  v10 = *(v0 + 232);
  v6 = *(v0 + 136);
  v9[0] = *(v0 + 120);
  v9[1] = v6;
  v7 = *(v0 + 168);
  v9[2] = *(v0 + 152);
  v9[3] = v7;
  outlined destroy of CustomMaterial.CustomShaderParameters(v9);
  return v0;
}

uint64_t CustomMaterial.Program.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  swift_unknownObjectRelease();

  v3 = *(v0 + 104);
  outlined consume of CustomMaterial.GeometryModifier?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v4 = *(v0 + 112);

  v5 = *(v0 + 200);
  v9[4] = *(v0 + 184);
  v9[5] = v5;
  v9[6] = *(v0 + 216);
  v10 = *(v0 + 232);
  v6 = *(v0 + 136);
  v9[0] = *(v0 + 120);
  v9[1] = v6;
  v7 = *(v0 + 168);
  v9[2] = *(v0 + 152);
  v9[3] = v7;
  outlined destroy of CustomMaterial.CustomShaderParameters(v9);
  return swift_deallocClassInstance();
}

Swift::Int CustomMaterial.Program.hashValue.getter()
{
  Hasher.init(_seed:)();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  Hasher._combine(_:)(*(v0 + 56));
  v4 = &property descriptor for UnlitMaterial.readsDepth;
  MEMORY[0x1C68F4C10]([v2 hash]);
  if (v1)
  {
    v5 = OpaquePointer.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1C68F4C10]([v3 hash]);
  v6 = *(v0 + 72);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11 & 1);

    swift_unknownObjectRetain();
    v12 = v10;
    MEMORY[0x1C68F4C10]([v8 hash]);
    if (v9)
    {
      v13 = OpaquePointer.hashValue.getter();
      Hasher._combine(_:)(1u);
      v14 = v13;
      v4 = &property descriptor for UnlitMaterial.readsDepth;
      MEMORY[0x1C68F4C10](v14);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    MEMORY[0x1C68F4C10]([v12 v4[491]]);
    outlined consume of CustomMaterial.GeometryModifier?(v7, v6, v8, v9, v10);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = *(v0 + 106);
  MEMORY[0x1C68F4C10](*(v0 + 105));
  if (v15 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v15 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomMaterial.Program()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v6 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  CustomMaterial.SurfaceShader.hash(into:)(v14);
  if (*(v1 + 72))
  {
    v2 = *(v1 + 96);
    v7 = *(v1 + 64);
    v9 = *(v1 + 72);
    v13 = *(v1 + 104) & 1;
    Hasher._combine(_:)(1u);

    swift_unknownObjectRetain();
    v3 = v2;
    CustomMaterial.GeometryModifier.hash(into:)(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v1 + 106);
  MEMORY[0x1C68F4C10](*(v1 + 105));
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
  }

  return Hasher._finalize()();
}

uint64_t CustomMaterial.init(program:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = REMaterialParameterBlockValueCreate();
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = xmmword_1C18A4F00;
  *(a2 + 76) = 0;
  *(a2 + 72) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 304) = 0;
  *(a2 + 312) = 3;
  *(a2 + 344) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 335) = 0;
  *(a2 + 352) = 257;
  *a2 = *(a1 + 112);
  v4 = *(a1 + 184);
  v6 = *(a1 + 216);
  v29 = *(a1 + 200);
  v5 = v29;
  v30 = v6;
  v31 = *(a1 + 232);
  v7 = v31;
  v24 = *(a1 + 120);
  v8 = v24;
  v10 = *(a1 + 152);
  v25 = *(a1 + 136);
  v9 = v25;
  v26 = v10;
  v27 = *(a1 + 168);
  v11 = v27;
  v28 = v4;
  *(a2 + 160) = 0u;
  *(a2 + 176) = v8;
  *(a2 + 192) = v9;
  *(a2 + 208) = v10;
  *(a2 + 224) = v11;
  *(a2 + 240) = v4;
  *(a2 + 256) = v5;
  *(a2 + 272) = v6;
  *(a2 + 288) = v7;
  *(a2 + 296) = 0;
  if (*(a1 + 106) == 2)
  {

    outlined init with copy of CustomMaterial.CustomShaderParameters(&v24, &v20);
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {

    outlined init with copy of CustomMaterial.CustomShaderParameters(&v24, &v20);
    MaterialParameterTypes.BlendMode.getCustomMaterialBlending()(&v20);
    v12 = v20;
    v14 = v21;
    v13 = v22 | (v23 << 32);
  }

  outlined consume of CustomMaterial.Blending?(0, 2);
  *(a2 + 56) = v12;
  *(a2 + 64) = v14;
  *(a2 + 76) = BYTE4(v13);
  *(a2 + 72) = v13;
  v15 = REDirectParameterResourcesCreate();
  *(a2 + 80) = xmmword_1C18A2C50;
  if (v14 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v14 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14;
  }

  if (v14 == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  *(a2 + 96) = v15;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v20 = v16;
  v21 = v17;
  v23 = BYTE4(v18);
  v22 = v18;
  outlined copy of CustomMaterial.Blending?(v12, v14);
  CustomMaterial.process(blending:doShaderUpdate:)(&v20, 0);

  return outlined consume of CustomMaterial.Blending(v20, v21);
}

uint64_t CustomMaterial.program.getter()
{
  v1 = *v0;
  v2 = *(v0 + 256);
  v15[4] = *(v0 + 240);
  v15[5] = v2;
  v15[6] = *(v0 + 272);
  v16 = *(v0 + 288);
  v3 = *(v0 + 192);
  v15[0] = *(v0 + 176);
  v15[1] = v3;
  v4 = *(v0 + 224);
  v15[2] = *(v0 + 208);
  v15[3] = v4;
  v6 = *(v0 + 64);
  v7 = *(v0 + 76);
  v8 = *(v0 + 72);
  v12[0] = *(v0 + 56);
  v5 = v12[0];
  v12[1] = v6;
  v14 = v7;
  v13 = v8;
  type metadata accessor for CustomMaterial.Program();
  v9 = swift_allocObject();

  outlined init with copy of CustomMaterial.CustomShaderParameters(v15, &v11);
  outlined copy of CustomMaterial.Blending?(v5, v6);
  CustomMaterial.Program.init(resource:shaderParameters:blending:)(v1, (v0 + 176), v12);
  return v9;
}

uint64_t key path getter for CustomMaterial.program : CustomMaterial@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 256);
  v18[4] = *(a1 + 240);
  v18[5] = v5;
  v18[6] = *(a1 + 272);
  v19 = *(a1 + 288);
  v6 = *(a1 + 192);
  v18[0] = *(a1 + 176);
  v18[1] = v6;
  v7 = *(a1 + 224);
  v18[2] = *(a1 + 208);
  v18[3] = v7;
  v9 = *(a1 + 64);
  v10 = *(a1 + 76);
  v11 = *(a1 + 72);
  v15[0] = *(a1 + 56);
  v8 = v15[0];
  v15[1] = v9;
  v17 = v10;
  v16 = v11;
  type metadata accessor for CustomMaterial.Program();
  v12 = swift_allocObject();

  outlined init with copy of CustomMaterial.CustomShaderParameters(v18, &v14);
  outlined copy of CustomMaterial.Blending?(v8, v9);
  result = CustomMaterial.Program.init(resource:shaderParameters:blending:)(v4, (a1 + 176), v15);
  *a2 = v12;
  return result;
}

uint64_t CustomMaterial.program.setter(uint64_t a1)
{
  v3 = *(a1 + 112);
  v4 = *v1;

  *v1 = v3;
  v5 = *(a1 + 200);
  v24[4] = *(a1 + 184);
  v24[5] = v5;
  v24[6] = *(a1 + 216);
  v25 = *(a1 + 232);
  v6 = *(a1 + 136);
  v24[0] = *(a1 + 120);
  v24[1] = v6;
  v7 = *(a1 + 168);
  v24[2] = *(a1 + 152);
  v24[3] = v7;
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v10 = *(v1 + 14);
  v26[2] = *(v1 + 13);
  v26[3] = v10;
  v26[0] = v8;
  v26[1] = v9;
  v11 = *(v1 + 15);
  v12 = *(v1 + 16);
  v13 = *(v1 + 17);
  v27 = v1[36];
  v26[5] = v12;
  v26[6] = v13;
  v26[4] = v11;
  memmove(v1 + 22, (a1 + 120), 0x78uLL);
  outlined init with copy of CustomMaterial.CustomShaderParameters(v24, &v21);
  outlined destroy of CustomMaterial.CustomShaderParameters(v26);
  v14 = *(a1 + 106);
  if (v14 == 2)
  {
    v15 = *(v1 + 18) | (*(v1 + 76) << 32);
    outlined consume of CustomMaterial.Blending?(v1[7], v1[8]);
    *(v1 + 7) = xmmword_1C18A4F10;
    *(v1 + 76) = 0;
    *(v1 + 18) = 0;
    outlined copy of CustomMaterial.Blending(0, 1);
    v16 = xmmword_1C18A4F10;
    v17 = 0;
  }

  else
  {
    v18 = *(v1 + 76);
    v19 = *(v1 + 18);
    outlined consume of CustomMaterial.Blending?(v1[7], v1[8]);
    *(v1 + 7) = *zmmword_1C1887630;
    if (v14)
    {
      *(v1 + 18) = 0;
      *(v1 + 76) = 1;
      v17 = 0x100000000;
      outlined copy of CustomMaterial.Blending(1065353216, 0);
    }

    else
    {
      *(v1 + 76) = 0;
      *(v1 + 18) = 0;
      outlined copy of CustomMaterial.Blending(1065353216, 0);
      v17 = 0;
    }

    v16 = *zmmword_1C1887630;
  }

  v21 = v16;
  v22 = v17;
  v23 = BYTE4(v17);
  CustomMaterial.process(blending:doShaderUpdate:)(&v21, 0);

  return outlined consume of CustomMaterial.Blending(v21, *(&v21 + 1));
}

void (*CustomMaterial.program.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 248) = v1;
  v5 = *v1;
  v6 = *(v1 + 176);
  v7 = *(v1 + 192);
  v8 = *(v1 + 224);
  *(v3 + 32) = *(v1 + 208);
  *(v3 + 48) = v8;
  *v3 = v6;
  *(v3 + 16) = v7;
  v9 = *(v1 + 240);
  v10 = *(v1 + 256);
  v11 = *(v1 + 272);
  *(v3 + 112) = *(v1 + 288);
  *(v3 + 80) = v10;
  *(v3 + 96) = v11;
  *(v3 + 64) = v9;
  v12 = *(v1 + 256);
  v23[4] = *(v1 + 240);
  v23[5] = v12;
  v23[6] = *(v1 + 272);
  v24 = *(v1 + 288);
  v13 = *(v1 + 192);
  v23[0] = *(v1 + 176);
  v23[1] = v13;
  v14 = *(v1 + 224);
  v23[2] = *(v1 + 208);
  v23[3] = v14;
  v15 = *(v1 + 64);
  v16 = *(v1 + 76);
  v17 = *(v1 + 72);
  v20[0] = *(v1 + 56);
  v20[1] = v15;
  v22 = v16;
  v21 = v17;
  type metadata accessor for CustomMaterial.Program();
  v18 = swift_allocObject();

  outlined init with copy of CustomMaterial.CustomShaderParameters(v4, v4 + 120);
  outlined copy of CustomMaterial.Blending?(v20[0], v15);
  CustomMaterial.Program.init(resource:shaderParameters:blending:)(v5, v23, v20);
  *(v4 + 240) = v18;
  return CustomMaterial.program.modify;
}

void CustomMaterial.program.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 240);
  v4 = *(*a1 + 248);
  if (a2)
  {

    CustomMaterial.program.setter(v5);
    v6 = *v3;
  }

  else
  {
    CustomMaterial.program.setter(*v3);
  }

  free(v2);
}

uint64_t specialized SharedCacheStorage.getResource(forKey:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

uint64_t specialized SharedCacheStorage.addResource(value:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    swift_beginAccess();
    outlined init with copy of CustomMaterial.CustomShaderParameters(a2, v13);

    v10 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    outlined destroy of CustomMaterial.CustomShaderParameters(a2);
    *(v3 + 16) = v13[0];
    swift_endAccess();

    goto LABEL_6;
  }

  a1 = *(*(v7 + 56) + 8 * v8);

LABEL_6:
  os_unfair_lock_unlock(v6 + 4);
  return a1;
}

{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFFFFFF0001), (v9 & 1) != 0))
  {
    a1 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    swift_beginAccess();

    v10 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2 & 0xFFFFFFFF0001, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v13;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v6 + 4);
  return a1;
}

uint64_t specialized SharedCacheStorage.addResource(value:forKey:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = *(v4 + 24);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v4 + 16);
  if (!*(v11 + 16))
  {
    v12 = a2 & 0xFFFF0001;
    goto LABEL_5;
  }

  v12 = a2 & 0xFFFF0001;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, a3, a4 & 0xFFFF01);
  if ((v14 & 1) == 0)
  {
LABEL_5:
    swift_beginAccess();

    v15 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v12, a3, a4 & 0xFFFF01, isUniquelyReferenced_nonNull_native);
    *(v5 + 16) = v18;
    swift_endAccess();
    goto LABEL_6;
  }

  a1 = *(*(v11 + 56) + 8 * v13);
LABEL_6:

  os_unfair_lock_unlock(v10 + 4);
  return a1;
}

uint64_t specialized ShaderCacheLoader.loadResource(forKey:)(uint64_t a1)
{
  v2[61] = a1;
  v2[62] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ShaderCacheLoader.loadResource(forKey:), v1, 0);
}

{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ShaderCacheLoader.loadResource(forKey:), v1, 0);
}

uint64_t specialized ShaderCacheLoader.loadResource(forKey:)()
{
  v1 = v0[62];
  swift_beginAccess();
  v2 = *(v1 + 160);
  if (*(v2 + 16))
  {
    v3 = v0[61];
    v4 = *(v1 + 160);

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);
      v0[64] = v7;

      v8 = *(MEMORY[0x1E69E86A8] + 4);
      v9 = swift_task_alloc();
      v0[65] = v9;
      v10 = type metadata accessor for __MaterialResource();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v9 = v0;
      v9[1] = specialized ShaderCacheLoader.loadResource(forKey:);
      v12 = MEMORY[0x1E69E7288];
      v13 = v0 + 60;
      v14 = v7;
      v15 = v10;
      goto LABEL_6;
    }
  }

  v17 = v0[62];
  v16 = v0[63];
  v18 = v0[61];
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(&lazy protocol witness table cache variable for type ShaderCacheLoader<CustomMaterial.CustomShaderParameters> and conformance ShaderCacheLoader<A>, &_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v20;
  v22 = *(v18 + 48);
  v24 = *v18;
  v23 = *(v18 + 16);
  *(v21 + 64) = *(v18 + 32);
  *(v21 + 80) = v22;
  *(v21 + 32) = v24;
  *(v21 + 48) = v23;
  v25 = *(v18 + 64);
  v26 = *(v18 + 96);
  v27 = *(v18 + 112);
  *(v21 + 112) = *(v18 + 80);
  *(v21 + 128) = v26;
  *(v21 + 96) = v25;
  *(v21 + 144) = v27;
  *(v21 + 152) = v17;
  swift_retain_n();
  outlined init with copy of CustomMaterial.CustomShaderParameters(v18, (v0 + 2));
  v28 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v16, &async function pointer to partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v21);
  v0[67] = v28;
  swift_beginAccess();
  outlined init with copy of CustomMaterial.CustomShaderParameters(v18, (v0 + 17));

  v29 = *(v1 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v1 + 160);
  *(v1 + 160) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v18, isUniquelyReferenced_nonNull_native);
  outlined destroy of CustomMaterial.CustomShaderParameters(v18);
  *(v1 + 160) = v35;
  swift_endAccess();
  v31 = *(MEMORY[0x1E69E86A8] + 4);
  v32 = swift_task_alloc();
  v0[68] = v32;
  v33 = type metadata accessor for __MaterialResource();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[69] = v11;
  *v32 = v0;
  v32[1] = specialized ShaderCacheLoader.loadResource(forKey:);
  v12 = MEMORY[0x1E69E7288];
  v13 = v0 + 58;
  v14 = v28;
  v15 = v33;
LABEL_6:

  return MEMORY[0x1EEE6DA10](v13, v14, v15, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 496);
  if (v0)
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = *(v2 + 496);
  if (v0)
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[64];

  v2 = v0[60];
  v3 = v0[63];

  v4 = v0[1];

  return v4(v2);
}

{
  v1 = v0[64];

  v2 = v0[66];
  v3 = v0[63];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[67];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[58];
  swift_beginAccess();
  outlined init with copy of CustomMaterial.CustomShaderParameters(v3, (v0 + 32));
  specialized Dictionary.subscript.setter(0, v3);
  swift_endAccess();

  v5 = v0[63];

  v6 = v0[1];

  return v6(v4);
}

{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[67];
  _StringGuts.grow(_:)(119);
  v0[56] = 0;
  v0[57] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD00000000000002CLL, 0x80000001C18E17B0);
  v0[59] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0xD000000000000049, 0x80000001C18E17E0);
  v4 = v0[56];
  v5 = v0[57];
  lazy protocol witness table accessor for type ShaderCacheError and conformance ShaderCacheError();
  swift_allocError();
  *v6 = v4;
  v6[1] = v5;
  swift_willThrow();

  v7 = v0[63];

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 136);
  swift_beginAccess();
  v2 = *(v1 + 160);
  v3 = *(v0 + 212);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 208) & 0xFFFF0001;
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4, *(v0 + 128), v3 & 0xFFFF01);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);
      *(v0 + 152) = v7;
      v8 = *(MEMORY[0x1E69E86A8] + 4);

      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      v10 = type metadata accessor for __MaterialResource();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v9 = v0;
      v9[1] = specialized ShaderCacheLoader.loadResource(forKey:);
      v12 = MEMORY[0x1E69E7288];
      v13 = v0 + 120;
      v14 = v7;
      v15 = v10;
      goto LABEL_7;
    }

    v17 = v3 & 0xFFFF00;
    v16 = *(v0 + 208);
    v3 = *(v0 + 212);
  }

  else
  {
    v16 = *(v0 + 208);
    v4 = v16 & 0xFFFF0001;
    v17 = v3 & 0xFFFF00;
  }

  v36 = v17;
  v37 = v4;
  *(v0 + 216) = v17;
  *(v0 + 220) = v4;
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v34 = v3 >> 8;
  v35 = HIWORD(v3);
  v20 = HIWORD(v16);
  v21 = *(v0 + 128);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = v16 & 1;
  v24 = v3 & 1;
  v38 = v3 & 1;
  v25 = lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(&lazy protocol witness table cache variable for type ShaderCacheLoader<PhysicallyBasedMaterial.PBRShaderParameters> and conformance ShaderCacheLoader<A>, &_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = v25;
  *(v26 + 32) = v23;
  *(v26 + 34) = v20;
  *(v26 + 40) = v21;
  *(v26 + 48) = v38;
  *(v26 + 49) = v34;
  *(v26 + 50) = v35;
  *(v26 + 56) = v19;
  swift_retain_n();
  v27 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v18, &async function pointer to partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v26);
  *(v0 + 176) = v27;
  swift_beginAccess();

  v28 = *(v1 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v1 + 160);
  *(v1 + 160) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v37, v21, v36 | v24, isUniquelyReferenced_nonNull_native);
  *(v1 + 160) = v39;
  swift_endAccess();
  v30 = *(MEMORY[0x1E69E86A8] + 4);
  v31 = swift_task_alloc();
  *(v0 + 184) = v31;
  v32 = type metadata accessor for __MaterialResource();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 192) = v11;
  *v31 = v0;
  v31[1] = specialized ShaderCacheLoader.loadResource(forKey:);
  v12 = MEMORY[0x1E69E7288];
  v13 = v0 + 104;
  v14 = v27;
  v15 = v32;
LABEL_7:

  return MEMORY[0x1EEE6DA10](v13, v14, v15, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[19];

  v2 = v0[15];
  v3 = v0[18];

  v4 = v0[1];

  return v4(v2);
}

{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 216);
  v3 = *(v0 + 220);
  v4 = *(v0 + 212);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v3, v5, v2 | v4 & 1);
  swift_endAccess();

  v8 = *(v0 + 144);

  v9 = *(v0 + 8);

  return v9(v7);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  _StringGuts.grow(_:)(119);
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD00000000000002CLL, 0x80000001C18E17B0);
  v0[14] = v2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0xD000000000000049, 0x80000001C18E17E0);
  v4 = v0[11];
  v5 = v0[12];
  lazy protocol witness table accessor for type ShaderCacheError and conformance ShaderCacheError();
  swift_allocError();
  *v6 = v4;
  v6[1] = v5;
  swift_willThrow();

  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[16];
  v2 = v0[17];
  swift_beginAccess();
  v3 = *(v2 + 160);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v1 & 0xFFFFFFFF0001), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v0[19] = v6;
    v7 = *(MEMORY[0x1E69E86A8] + 4);

    v8 = swift_task_alloc();
    v0[20] = v8;
    v9 = type metadata accessor for __MaterialResource();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v8 = v0;
    v8[1] = specialized ShaderCacheLoader.loadResource(forKey:);
    v11 = MEMORY[0x1E69E7288];
    v12 = v0 + 15;
    v13 = v6;
  }

  else
  {
    v30 = v1;
    v15 = v0[16];
    v14 = v0[17];
    v16 = v15 >> 40;
    v17 = v0[18];
    v18 = HIDWORD(v15);
    v19 = v15 >> 16;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = v15 & 1;
    v22 = lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(&lazy protocol witness table cache variable for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>, &_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = v14;
    *(v23 + 24) = v22;
    *(v23 + 32) = v21;
    *(v23 + 34) = v19;
    *(v23 + 36) = v18;
    *(v23 + 37) = v16;
    *(v23 + 40) = v14;
    swift_retain_n();
    v24 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v17, &async function pointer to partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v23);
    v0[22] = v24;
    swift_beginAccess();

    v25 = *(v2 + 160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v2 + 160);
    *(v2 + 160) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v30 & 0xFFFFFFFF0001, isUniquelyReferenced_nonNull_native);
    *(v2 + 160) = v31;
    swift_endAccess();
    v27 = *(MEMORY[0x1E69E86A8] + 4);
    v28 = swift_task_alloc();
    v0[23] = v28;
    v9 = type metadata accessor for __MaterialResource();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0[24] = v10;
    *v28 = v0;
    v28[1] = specialized ShaderCacheLoader.loadResource(forKey:);
    v11 = MEMORY[0x1E69E7288];
    v12 = v0 + 13;
    v13 = v24;
  }

  return MEMORY[0x1EEE6DA10](v12, v13, v9, v10, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v6 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v3 & 0xFFFFFFFF0001);
  swift_endAccess();

  v5 = v0[18];

  v6 = v0[1];

  return v6(v4);
}

uint64_t specialized ShaderCacheLoader.loadResource(forKey:)(int a1, uint64_t a2, int a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 208) = a1;
  *(v4 + 212) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ShaderCacheLoader.loadResource(forKey:), v3, 0);
}

uint64_t specialized ShaderCache.init(_:)(uint64_t *a1)
{
  outlined init with copy of __REAssetService(a1, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18SharedCacheStorageCyAA14CustomMaterialV0F16ShaderParametersVGMd, &_s17RealityFoundation18SharedCacheStorageCyAA14CustomMaterialV0F16ShaderParametersVGMR);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_0C3Kit02__F8ResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  *(v1 + 56) = v3;
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMR);
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_ScTy0C3Kit02__F8ResourceCs5Error_pGTt0g5Tf4g_n(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 160) = v7;
  *(v6 + 112) = v3;
  outlined init with take of ForceEffectBase(v9, v6 + 120);
  *(v1 + 64) = v6;
  return v1;
}

{
  outlined init with copy of __REAssetService(a1, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18SharedCacheStorageCy0A3Kit13UnlitMaterialV0G16ShaderParametersVGMd, &_s17RealityFoundation18SharedCacheStorageCy0A3Kit13UnlitMaterialV0G16ShaderParametersVGMR);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_AC02__F8ResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  *(v1 + 56) = v3;
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMR);
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_ScTyAC02__F8ResourceCs5Error_pGTt0g5Tf4g_n(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 160) = v7;
  *(v6 + 112) = v3;
  outlined init with take of ForceEffectBase(v9, v6 + 120);
  *(v1 + 64) = v6;
  return v1;
}

{
  outlined init with copy of __REAssetService(a1, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18SharedCacheStorageCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation18SharedCacheStorageCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_0C3Kit02__G8ResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  *(v1 + 56) = v3;
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_ScTy0C3Kit02__G8ResourceCs5Error_pGTt0g5Tf4g_n(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 160) = v7;
  *(v6 + 112) = v3;
  outlined init with take of ForceEffectBase(v9, v6 + 120);
  *(v1 + 64) = v6;
  return v1;
}

uint64_t specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    a3(0, a2);
    swift_endAccess();
  }

  return result;
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 80);
  *(v5 + 80) = *(a4 + 64);
  *(v5 + 96) = v7;
  *(v5 + 112) = *(a4 + 96);
  *(v5 + 128) = *(a4 + 112);
  *(v5 + 136) = a1;
  v8 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  v9 = *(a4 + 48);
  *(v5 + 48) = *(a4 + 32);
  *(v5 + 64) = v9;
  v10 = swift_task_alloc();
  *(v5 + 144) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(v5 + 16, a5);
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 136) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = a4[16];
  v10 = a4[17];
  v11 = a4[18];
  v12 = *(a4 + 1);
  v13 = swift_task_alloc();
  *(v5 + 24) = v13;
  *v13 = v5;
  v13[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(v7 | (v12 << 16), v8, (v10 << 8) | (v11 << 16) | v9, a5);
}

{
  *(v5 + 16) = a1;
  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = a4[4];
  v10 = a4[5];
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(v7 | (v8 << 16) | (v9 << 32) | (v10 << 40), a5);
}

uint64_t specialized static CustomMaterial.Program.Descriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static CustomMaterial.Program.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v50 = v5;
  v51 = v4;
  v52 = v7;
  v53 = v6;
  v54 = v8;
  v55 = v9;
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v44 = *(a2 + 16);
  v45 = v10;
  v46 = v12;
  v47 = v11;
  v48 = v13;
  v49 = v14;

  swift_unknownObjectRetain();
  v15 = v8;

  swift_unknownObjectRetain();
  v16 = v13;
  LOBYTE(v7) = specialized static CustomMaterial.GeometryModifier.== infix(_:_:)(&v50, &v44);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = *(a1 + 80);
  v19 = *(a1 + 88);
  v21 = *(a1 + 96);
  v22 = *(a1 + 104);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v42 = *(a2 + 104);
  v40 = v20;
  v41 = v17;
  if (v18)
  {
    v50 = *(a1 + 64);
    v51 = v18;
    v52 = v20;
    v53 = v19;
    v54 = v21;
    v55 = v22;
    if (v24)
    {
      v44 = v23;
      v45 = v24;
      v46 = v25;
      v47 = v26;
      v48 = v27;
      v49 = v42 & 1;
      v38 = v19;
      outlined copy of CustomMaterial.GeometryModifier?(v17, v18, v20, v19, v21);
      outlined copy of CustomMaterial.GeometryModifier?(v23, v24, v25, v26, v27);
      outlined copy of CustomMaterial.GeometryModifier?(v41, v18, v40, v38, v21);
      v43 = specialized static CustomMaterial.GeometryModifier.== infix(_:_:)(&v50, &v44);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      outlined consume of CustomMaterial.GeometryModifier?(v41, v18, v40, v38, v21);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v30 = v17;
    v31 = v19;
    outlined copy of CustomMaterial.GeometryModifier?(v17, v18, v20, v19, v21);
    v32 = v23;
    v29 = v31;
    v37 = v32;
    outlined copy of CustomMaterial.GeometryModifier?(v32, 0, v25, v26, v27);
    v33 = v30;
    v28 = v40;
    outlined copy of CustomMaterial.GeometryModifier?(v33, v18, v40, v31, v21);

    swift_unknownObjectRelease();

LABEL_9:
    outlined consume of CustomMaterial.GeometryModifier?(v41, v18, v28, v29, v21);
    outlined consume of CustomMaterial.GeometryModifier?(v37, v24, v25, v26, v27);
    return 0;
  }

  v39 = *(a1 + 88);
  outlined copy of CustomMaterial.GeometryModifier?(v17, 0, v20, v19, v21);
  if (v24)
  {
    v37 = v23;
    outlined copy of CustomMaterial.GeometryModifier?(v23, v24, v25, v26, v27);
    v29 = v39;
    v28 = v40;
    goto LABEL_9;
  }

  outlined copy of CustomMaterial.GeometryModifier?(v23, 0, v25, v26, v27);
  outlined consume of CustomMaterial.GeometryModifier?(v41, 0, v40, v39, v21);
LABEL_11:
  if (*(a1 + 105) == *(a2 + 105))
  {
    v34 = *(a1 + 106);
    v35 = *(a2 + 106);
    if (v34 == 2)
    {
      if (v35 != 2)
      {
        return 0;
      }
    }

    else if (v35 == 2 || ((v35 ^ v34) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t outlined consume of CustomMaterial.Blending?(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return outlined consume of CustomMaterial.Blending(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of CustomMaterial.Blending(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of CustomMaterial.Blending?(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return outlined copy of CustomMaterial.Blending(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of CustomMaterial.Blending(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.Program and conformance CustomMaterial.Program()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.Program and conformance CustomMaterial.Program;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Program and conformance CustomMaterial.Program)
  {
    type metadata accessor for CustomMaterial.Program();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Program and conformance CustomMaterial.Program);
  }

  return result;
}

uint64_t dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Program.Descriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for CustomMaterial.Program.Descriptor(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(a1, v4, v5, (v1 + 32), v6);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(a1, v4, v5, (v1 + 32), v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[19];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(a1, v4, v5, (v1 + 4), v6);
}

unint64_t lazy protocol witness table accessor for type ShaderCacheError and conformance ShaderCacheError()
{
  result = lazy protocol witness table cache variable for type ShaderCacheError and conformance ShaderCacheError;
  if (!lazy protocol witness table cache variable for type ShaderCacheError and conformance ShaderCacheError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderCacheError and conformance ShaderCacheError);
  }

  return result;
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(v2 + 200) = *(a1 + 64);
  *(v2 + 216) = v3;
  *(v2 + 232) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 136) = *a1;
  *(v2 + 152) = v4;
  v5 = *(a1 + 48);
  *(v2 + 168) = *(a1 + 32);
  *(v2 + 632) = a2;
  *(v2 + 624) = a1;
  *(v2 + 248) = *(a1 + 112);
  *(v2 + 184) = v5;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), a2, 0);
}

{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), a2, 0);
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)()
{
  v1 = *(v0 + 632);
  v2 = CustomMaterial.CustomShaderParameters.materialPath.getter();
  v4 = v3;
  v5 = CustomMaterial.CustomShaderParameters.functionConstants.getter();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 480);
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v6);
  v8 = __REAssetService.asset(_:)(v2, v4, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = *(v0 + 624);

    v13 = *v12;
    LOWORD(v12) = *(v12 + 2);
    *(v0 + 264) = v5;
    *(v0 + 272) = 0;
    *(v0 + 280) = 1;
    *(v0 + 283) = 2;
    *(v0 + 256) = v11;
    v14 = MEMORY[0x1E69E7CC0];
    *(v0 + 312) = MEMORY[0x1E69E7CC0];

    *(v0 + 288) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(v14);
    *(v0 + 296) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);

    *(v0 + 304) = v15;
    __swift_destroy_boxed_opaque_existential_1((v0 + 480));
    *(v0 + 286) = *(v0 + 153);
    *(v0 + 281) = (v12 & 0x400) != 0;
    *(v0 + 282) = (v12 & 0x800) != 0;
    *(v0 + 284) = (v12 & 0x4000) != 0;
    *(v0 + 285) = v13;
    v16 = *(v0 + 176);
    *(v0 + 384) = *(v0 + 160);
    *(v0 + 400) = v16;
    *(v0 + 416) = *(v0 + 192);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c62Foundation17ShaderCacheLoaderC12loadResource6forKey0A3Kit010__e13G0Cx_tYaKFAHyv10KcfU_yAH04g2K8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v0 + 384, v0 + 256, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    v17 = *(v0 + 224);
    *(v0 + 432) = *(v0 + 208);
    *(v0 + 448) = v17;
    *(v0 + 464) = *(v0 + 240);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c62Foundation17ShaderCacheLoaderC12loadResource6forKey0A3Kit010__e13G0Cx_tYaKFAHyv10KcfU_yAH04g2K8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v0 + 432, v0 + 256, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    *(v0 + 640) = type metadata accessor for __MaterialResource();
    *(v0 + 648) = specialized static __ServiceLocator.shared.getter();

    v8 = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v9 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 272);
  v8[0] = *(v0 + 256);
  v8[1] = v2;
  v3 = *(v0 + 304);
  v8[2] = *(v0 + 288);
  v8[3] = v3;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 560);
  v4 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(v8, (v0 + 560));
  *(v0 + 656) = v4;
  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  v5 = swift_task_alloc();
  *(v0 + 664) = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
  v6 = *(v0 + 640);

  return static __MaterialResource.load(_:)(v0 + 520, v4);
}

{
  v1 = *(*v0 + 664);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), 0, 0);
}

{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[79];
  RERelease();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v3, 0);
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 544);
  v3 = *(v0 + 552);
  __swift_project_boxed_opaque_existential_1((v0 + 520), v2);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 520));
  v5 = *(v1 + 112);
  v6 = *(v0 + 216);
  *(v0 + 80) = *(v0 + 200);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 128) = *(v0 + 248);
  v7 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v7;
  v8 = *(v0 + 184);
  *(v0 + 48) = *(v0 + 168);
  *(v0 + 64) = v8;

  v9 = specialized SharedCacheStorage.addResource(value:forKey:)(v4, v0 + 16);

  v10 = *(v0 + 272);
  *(v0 + 320) = *(v0 + 256);
  *(v0 + 336) = v10;
  v11 = *(v0 + 304);
  *(v0 + 352) = *(v0 + 288);
  *(v0 + 368) = v11;
  outlined destroy of __MaterialResource.BuildParameters(v0 + 320);
  v12 = *(v0 + 8);

  return v12(v9);
}

{
  v1 = 0xD00000000000002ALL;
  v2 = HIWORD(*(v0 + 244));
  if ((v2 & 2) != 0)
  {
    v3 = "EnableOpacityThreshold";
  }

  else if ((v2 & 1) == 0 && (*(v0 + 332) & 0xFF00) == 512)
  {
    v1 = 0xD00000000000001FLL;
    v3 = "ntUnlit.rematerialdefinition";
  }

  else
  {
    v3 = "engine:pbr.rematerialdefinition";
  }

  v4 = *(v0 + 248);
  *(v0 + 256) = PhysicallyBasedMaterial.PBRShaderParameters.functionConstants.getter();
  outlined init with copy of __REAssetService(v4 + 120, v0 + 80);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v5);
  v7 = __REAssetService.asset(_:)(v1, v3 | 0x8000000000000000, v5, v6);
  *(v0 + 264) = v7;
  if (v7)
  {

    *(v0 + 328) = 1;
    v10 = MEMORY[0x1E69E7CC0];
    *(v0 + 272) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + 280) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v10);
    *(v0 + 288) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    *(v0 + 243) = *(v0 + 241);
    *(v0 + 296) = type metadata accessor for __MaterialResource();
    *(v0 + 329) = *(v0 + 328);
    *(v0 + 304) = specialized static __ServiceLocator.shared.getter();

    v7 = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  v19 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 329);
  v3 = *(v0 + 243);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 244) & 1;
  v11[0] = *(v0 + 264);
  v11[1] = v5;
  v11[2] = 0;
  v12 = v2;
  v13 = 0x20000;
  v14 = v6;
  v15 = v3;
  v16 = *(v0 + 272);
  v17 = v4;
  v18 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 160);
  v7 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(v11, (v0 + 160));
  *(v0 + 312) = v7;
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
  v9 = *(v0 + 296);

  return static __MaterialResource.load(_:)(v0 + 120, v7);
}

{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), 0, 0);
}

{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[31];
  RERelease();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v3, 0);
}

{
  v20 = *(v0 + 288);
  v1 = *(v0 + 256);
  v16 = *(v0 + 264);
  v2 = *(v0 + 248);
  v18 = *(v0 + 244) & 1;
  v19 = *(v0 + 243);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v17 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v3);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  v6 = *(v2 + 112);
  LODWORD(v2) = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 241);
  v10 = *(v0 + 242);
  v11 = *(v0 + 226);

  v12 = specialized SharedCacheStorage.addResource(value:forKey:)(v5, v2 | (v11 << 16), v7, (v9 << 8) | (v10 << 16) | v8);

  *(v0 + 16) = v16;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = *(v0 + 328);
  *(v0 + 41) = 0x20000;
  *(v0 + 45) = v18;
  *(v0 + 46) = v19;
  *(v0 + 48) = v17;
  v13 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = v20;
  *(v0 + 72) = v13;
  outlined destroy of __MaterialResource.BuildParameters(v0 + 16);
  v14 = *(v0 + 8);

  return v14(v12);
}

{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = "aterialdefinition";
  if ((v2 & 0xFF00000000) == 0x200000000 && (v2 & 0x10000) == 0)
  {
    v4 = 0xD000000000000021;
  }

  else
  {
    v4 = 0xD00000000000002CLL;
  }

  if ((v2 & 0xFF00000000) == 0x200000000 && (v2 & 0x10000) == 0)
  {
    v3 = "fail with the same error.";
  }

  if ((*(v0 + 224) & 0x20000) != 0)
  {
    v5 = 0xD00000000000002CLL;
  }

  else
  {
    v5 = v4;
  }

  if ((*(v0 + 224) & 0x20000) != 0)
  {
    v6 = "utPbr.rematerialdefinition";
  }

  else
  {
    v6 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMd, &_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1887600;
  *(v7 + 32) = 0x6C6E55686374614DLL;
  v8 = v7 + 32;
  *(v7 + 40) = 0xEF726F6C6F437469;
  *(v7 + 48) = (v2 >> 18) & 1;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v0 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of (String, __MaterialResource.BuildParameters.Value)(v8);
  swift_deallocClassInstance();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 80);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v9);
  v11 = __REAssetService.asset(_:)(v5, v6 | 0x8000000000000000, v9, v10);
  *(v0 + 248) = v11;
  if (v11)
  {

    *(v0 + 312) = 1;
    v14 = MEMORY[0x1E69E7CC0];
    *(v0 + 256) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + 264) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);
    *(v0 + 272) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    *(v0 + 280) = type metadata accessor for __MaterialResource();
    *(v0 + 313) = *(v0 + 312);
    *(v0 + 288) = specialized static __ServiceLocator.shared.getter();

    v11 = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

{
  v19 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 313);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224) & 1;
  v6 = HIDWORD(*(v0 + 224));
  v11[0] = *(v0 + 248);
  v11[1] = v4;
  v11[2] = 0;
  v12 = v2;
  v13 = 0x20000;
  v14 = v5;
  v15 = v6;
  v16 = *(v0 + 256);
  v17 = v3;
  v18 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 160);
  v7 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(v11, (v0 + 160));
  *(v0 + 296) = v7;
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v8 = swift_task_alloc();
  *(v0 + 304) = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
  v9 = *(v0 + 280);

  return static __MaterialResource.load(_:)(v0 + 120, v7);
}

{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), 0, 0);
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[29];
  RERelease();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v3, 0);
}

{
  v14 = *(v0 + 272);
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v13 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v5);
  v7 = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  v8 = *(v3 + 112);

  v9 = specialized SharedCacheStorage.addResource(value:forKey:)(v7, v4 & 0xFFFFFFFF0001);

  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = *(v0 + 312);
  *(v0 + 41) = 0x20000;
  *(v0 + 45) = v4 & 1;
  *(v0 + 46) = BYTE4(v4);
  *(v0 + 48) = v13;
  v10 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = v14;
  *(v0 + 72) = v10;
  outlined destroy of __MaterialResource.BuildParameters(v0 + 16);
  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 248) = a4;
  *(v4 + 332) = a3;
  *(v4 + 244) = a1;
  *(v4 + 224) = a1;
  *(v4 + 227) = HIBYTE(a1);
  *(v4 + 225) = a1 >> 8;
  *(v4 + 232) = a2;
  *(v4 + 240) = a3;
  *(v4 + 242) = BYTE2(a3);
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), a4, 0);
}

uint64_t outlined destroy of (String, __MaterialResource.BuildParameters.Value)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMd, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void outlined copy of __MaterialResource.CoreMaterialFunction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3)
  {

    v6 = a6;
  }
}

void outlined copy of CustomMaterial.GeometryModifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    swift_unknownObjectRetain();

    v5 = a5;
  }
}

void outlined consume of CustomMaterial.GeometryModifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t areJointDefinitionsEqual(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (DynamicType != swift_getDynamicType())
  {
    goto LABEL_5;
  }

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v72, v5, v6);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 16))(&v62, v7, v8);
  v9 = specialized static GeometricPin.== infix(_:_:)(v72, &v62);
  outlined destroy of GeometricPin(&v62);
  outlined destroy of GeometricPin(v72);
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 40))(v72, v10, v11);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 40))(&v62, v12, v13);
  v14 = specialized static GeometricPin.== infix(_:_:)(v72, &v62);
  outlined destroy of GeometricPin(&v62);
  outlined destroy of GeometricPin(v72);
  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  LODWORD(v15) = (*(v16 + 64))(v15, v16);
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  if ((v15 ^ (*(v18 + 64))(v17, v18)))
  {
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(a1, &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  if (swift_dynamicCast())
  {
    outlined destroy of PhysicsFixedJoint(v72);
    outlined init with copy of __REAssetService(a2, &v62);
    if (swift_dynamicCast())
    {
      outlined destroy of PhysicsFixedJoint(v72);
      v19 = 1;
      return v19 & 1;
    }
  }

  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsSphericalJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsSphericalJoint(&v51, &v62);
      v21 = v73;
      v22 = LOBYTE(v74);
      outlined destroy of PhysicsSphericalJoint(v72);
      if (v22 & 1) != 0 || (BYTE12(v71[1]))
      {
        v19 = v22 & BYTE12(v71[1]);
        outlined destroy of PhysicsSphericalJoint(&v62);
      }

      else
      {
        v23 = *(&v71[1] + 4);
        outlined destroy of PhysicsSphericalJoint(&v62);
        v19 = *(&v21 + 1) == *(&v23 + 1) && *&v21 == *&v23;
      }

      return v19 & 1;
    }

    outlined destroy of PhysicsSphericalJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 29);
    v25 = &v51;
  }

  else
  {
    v70 = 0u;
    memset(v71, 0, 29);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v25 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v25, &_s17RealityFoundation21PhysicsSphericalJointVSgMd, &_s17RealityFoundation21PhysicsSphericalJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsRevoluteJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsRevoluteJoint(&v51, &v62);
      v26 = v73;
      v27 = LOBYTE(v74);
      outlined destroy of PhysicsRevoluteJoint(v72);
      v28 = *(&v71[1] + 4);
      v29 = BYTE12(v71[1]);
      outlined destroy of PhysicsRevoluteJoint(&v62);
      v19 = v27 & v29;
      if (v27)
      {
        return v19 & 1;
      }

LABEL_31:
      if (v29)
      {
        return v19 & 1;
      }

      if (*&v26 == *&v28)
      {
        v19 = *(&v26 + 1) == *(&v28 + 1);
        return v19 & 1;
      }

      goto LABEL_5;
    }

    outlined destroy of PhysicsRevoluteJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 29);
    v30 = &v51;
  }

  else
  {
    v70 = 0u;
    memset(v71, 0, 29);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v30 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v30, &_s17RealityFoundation20PhysicsRevoluteJointVSgMd, &_s17RealityFoundation20PhysicsRevoluteJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsPrismaticJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsPrismaticJoint(&v51, &v62);
      v26 = v73;
      v31 = LOBYTE(v74);
      outlined destroy of PhysicsPrismaticJoint(v72);
      v28 = *(&v71[1] + 4);
      v29 = BYTE12(v71[1]);
      outlined destroy of PhysicsPrismaticJoint(&v62);
      v19 = v31 & v29;
      if (v31)
      {
        return v19 & 1;
      }

      goto LABEL_31;
    }

    outlined destroy of PhysicsPrismaticJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 29);
    v32 = &v51;
  }

  else
  {
    v70 = 0u;
    memset(v71, 0, 29);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v32 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v32, &_s17RealityFoundation21PhysicsPrismaticJointVSgMd, &_s17RealityFoundation21PhysicsPrismaticJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsDistanceJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsDistanceJoint(&v51, &v62);
      if (*&v73 == *(&v71[1] + 1) && *(&v73 + 1) == *(&v71[1] + 2))
      {
        v33 = v74;
        outlined destroy of PhysicsDistanceJoint(v72);
        v34 = *(&v71[1] + 3);
        outlined destroy of PhysicsDistanceJoint(&v62);
        v19 = v33 == v34;
        return v19 & 1;
      }

      outlined destroy of PhysicsDistanceJoint(&v62);
      outlined destroy of PhysicsDistanceJoint(v72);
      goto LABEL_5;
    }

    outlined destroy of PhysicsDistanceJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 32);
    v35 = &v51;
  }

  else
  {
    memset(v71, 0, 32);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v35 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v35, &_s17RealityFoundation20PhysicsDistanceJointVSgMd, &_s17RealityFoundation20PhysicsDistanceJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = 0u;
    memset(v71, 0, 89);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation18PhysicsCustomJointVSgMd, &_s17RealityFoundation18PhysicsCustomJointVSgMR);
    goto LABEL_5;
  }

  outlined init with take of PhysicsCustomJoint(&v62, v72);
  outlined init with copy of __REAssetService(a2, v61);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined destroy of PhysicsCustomJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 89);
    outlined destroy of BodyTrackingComponent?(&v51, &_s17RealityFoundation18PhysicsCustomJointVSgMd, &_s17RealityFoundation18PhysicsCustomJointVSgMR);
    goto LABEL_5;
  }

  outlined init with take of PhysicsCustomJoint(&v51, &v62);
  if (LOBYTE(v74) == 1)
  {
    if (v73)
    {
      if (*(&v71[1] + 4))
      {
        v36 = BYTE12(v71[1]);
      }

      else
      {
        v36 = 0;
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*(&v71[1] + 4))
      {
        v37 = 0;
      }

      else
      {
        v37 = BYTE12(v71[1]);
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((BYTE12(v71[1]) & 1) != 0 || *&v73 != *(&v71[1] + 1) || *(&v73 + 1) != *(&v71[1] + 2))
  {
    goto LABEL_128;
  }

  if (v76 == 1)
  {
    if (v75)
    {
      if (*&v71[2])
      {
        v38 = BYTE8(v71[2]);
      }

      else
      {
        v38 = 0;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*&v71[2])
      {
        v39 = 0;
      }

      else
      {
        v39 = BYTE8(v71[2]);
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((BYTE8(v71[2]) & 1) != 0 || *&v75 != *&v71[2] || *(&v75 + 1) != *(&v71[2] + 1))
  {
    goto LABEL_128;
  }

  if (v78 == 1)
  {
    if (v77)
    {
      if (*(&v71[2] + 12))
      {
        v40 = BYTE4(v71[3]);
      }

      else
      {
        v40 = 0;
      }

      if ((v40 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*(&v71[2] + 12))
      {
        v41 = 0;
      }

      else
      {
        v41 = BYTE4(v71[3]);
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((BYTE4(v71[3]) & 1) != 0 || *&v77 != *(&v71[2] + 3) || *(&v77 + 1) != *&v71[3])
  {
    goto LABEL_128;
  }

  if (v80 == 1)
  {
    if (v79)
    {
      if (*(&v71[3] + 1))
      {
        v42 = v71[4];
      }

      else
      {
        v42 = 0;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*(&v71[3] + 1))
      {
        v43 = 0;
      }

      else
      {
        v43 = v71[4];
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((v71[4] & 1) != 0 || *&v79 != *(&v71[3] + 2) || *(&v79 + 1) != *(&v71[3] + 3))
  {
    goto LABEL_128;
  }

  if (v82 != 1)
  {
    if ((BYTE12(v71[4]) & 1) == 0 && *&v81 == *(&v71[4] + 1) && *(&v81 + 1) == *(&v71[4] + 2))
    {
      goto LABEL_119;
    }

LABEL_128:
    outlined destroy of PhysicsCustomJoint(&v62);
    outlined destroy of PhysicsCustomJoint(v72);
    goto LABEL_5;
  }

  if (v81)
  {
    if (*(&v71[4] + 4))
    {
      v44 = BYTE12(v71[4]);
    }

    else
    {
      v44 = 0;
    }

    if ((v44 & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  else
  {
    if (*(&v71[4] + 4))
    {
      v49 = 0;
    }

    else
    {
      v49 = BYTE12(v71[4]);
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_128;
    }
  }

LABEL_119:
  v45 = v83;
  v46 = v84;
  outlined destroy of PhysicsCustomJoint(v72);
  v47 = *&v71[5];
  v48 = BYTE8(v71[5]);
  outlined destroy of PhysicsCustomJoint(&v62);
  if (v46 == 1)
  {
    if (v45)
    {
      if (v47)
      {
        v19 = v48;
      }

      else
      {
        v19 = 0;
      }
    }

    else if (v47)
    {
      v19 = 0;
    }

    else
    {
      v19 = v48;
    }

    return v19 & 1;
  }

  if (v48)
  {
LABEL_5:
    v19 = 0;
    return v19 & 1;
  }

  v19 = *(&v45 + 1) == *(&v47 + 1) && *&v45 == *&v47;
  return v19 & 1;
}

uint64_t static PhysicsJointCreator.createJointDefinition(fromCoreJointDefinition:isActive:)@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  Entity = REPhysicsJointDefinitionGetEntity();
  if (!Entity || (v5 = Entity, (v6 = REPhysicsJointDefinitionGetEntity()) == 0))
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 4;
    return swift_willThrow();
  }

  v7 = v6;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
      goto LABEL_86;
    }

    v10 = static Entity.entityInfoType(_:)(v5);
    if (v10)
    {
      v11 = (*(v10 + 232))();
      v12 = *(v11 + 16);

      MEMORY[0x1C68F9740](v12, 0);
      *(v11 + 16) = v5;
      MEMORY[0x1C68F9740](v5, v11);
    }

    else
    {
      makeEntity(for:)(v5);
    }
  }

  v70 = a1;
  if (!REEntityGetSwiftObject())
  {
    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v13 = static Entity.entityInfoType(_:)(v7);
      if (v13)
      {
        v14 = (*(v13 + 232))();
        v15 = *(v14 + 16);

        MEMORY[0x1C68F9740](v15, 0);
        *(v14 + 16) = v7;
        MEMORY[0x1C68F9740](v7, v14);
      }

      else
      {
        makeEntity(for:)(v7);
      }

      goto LABEL_14;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  swift_dynamicCastClassUnconditional();
LABEL_14:
  REPhysicsJointDefinitionGetPinName();
  v16 = String.init(cString:)();
  v18 = v17;
  REPhysicsJointDefinitionGetPinName();
  v19 = String.init(cString:)();
  v21 = v20;
  REPhysicsJointDefinitionGetOffsetFromPin();
  v71 = v23;
  v74 = v22;
  REPhysicsJointDefinitionGetOffsetFromPin();
  v77 = v25;
  v80 = v24;
  swift_weakInit();
  v96 = v74;
  v97 = v71;
  swift_weakAssign();
  v92 = v16;
  v93 = v18;
  v94 = 0;
  v95 = 0;
  swift_weakInit();
  v89 = v80;
  v90 = v77;
  swift_weakAssign();
  v85 = v19;
  v86 = v21;
  v87 = 0;
  v88 = 0;
  ChecksForCollisions = REPhysicsJointDefinitionGetChecksForCollisions();
  JointType = REPhysicsJointDefinitionGetJointType();
  if (JointType <= 3)
  {
    if (JointType != 1)
    {
      if (JointType == 2)
      {
        REPhysicsJointDefinitionSphericalJointGetAngularLimitYZ();
        if (*&v47 <= 0.0 || *(&v47 + 1) <= 0.0)
        {
          v30 = 0;
          v29 = 1;
        }

        else
        {
          v29 = 0;
          v30 = v47;
        }

        a2[3] = &type metadata for PhysicsSphericalJoint;
        a2[4] = lazy protocol witness table accessor for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint();
        goto LABEL_43;
      }

      if (JointType == 3)
      {
        REPhysicsJointDefinitionRevoluteJointGetAngularLimitX();
        v29 = *&v28 > *(&v28 + 1);
        if (*&v28 <= *(&v28 + 1))
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        a2[3] = &type metadata for PhysicsRevoluteJoint;
        a2[4] = lazy protocol witness table accessor for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint();
LABEL_43:
        v52 = swift_allocObject();
        *a2 = v52;
        outlined init with copy of GeometricPin(v91, v52 + 16);
        outlined init with copy of GeometricPin(v84, v52 + 96);

        v44 = (v52 + 177);
        *(v52 + 180) = v30;
        *(v52 + 188) = v29;
        *(v52 + 176) = ChecksForCollisions;
        goto LABEL_83;
      }

LABEL_33:
      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v46 = 1;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = 4;
      swift_willThrow();

LABEL_84:
      outlined destroy of GeometricPin(v84);
      return outlined destroy of GeometricPin(v91);
    }

    a2[3] = &type metadata for PhysicsFixedJoint;
    a2[4] = lazy protocol witness table accessor for type PhysicsFixedJoint and conformance PhysicsFixedJoint();
    v43 = swift_allocObject();
    *a2 = v43;
    outlined init with copy of GeometricPin(v91, v43 + 16);
    outlined init with copy of GeometricPin(v84, v43 + 96);

    *(v43 + 176) = 0;
    v44 = (v43 + 177);
LABEL_83:
    *v44 = v70 & 1;
    goto LABEL_84;
  }

  if (JointType == 4)
  {
    REPhysicsJointDefinitionPrismaticJointGetLinearLimitX();
    v29 = *&v45 > *(&v45 + 1);
    if (*&v45 <= *(&v45 + 1))
    {
      v30 = v45;
    }

    else
    {
      v30 = 0;
    }

    a2[3] = &type metadata for PhysicsPrismaticJoint;
    a2[4] = lazy protocol witness table accessor for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint();
    goto LABEL_43;
  }

  if (JointType != 5)
  {
    if (JointType != 6)
    {
      goto LABEL_33;
    }

    REPhysicsJointDefinitionGetLinearLimit();
    v68 = v31;
    v32 = 1;
    REPhysicsJointDefinitionGetLinearLimit();
    v72 = v33;
    REPhysicsJointDefinitionGetLinearLimit();
    v75 = v34;
    REPhysicsJointDefinitionGetAngularLimit();
    v78 = v35;
    REPhysicsJointDefinitionGetAngularLimit();
    v81 = v36;
    REPhysicsJointDefinitionGetAngularLimit();
    if (*&v68 == 0.0 && *(&v68 + 1) == 0.0)
    {
      v38 = 0;
      v40 = v78;
      v39 = v81;
      v42 = v72;
      v41 = v75;
    }

    else
    {
      v40 = v78;
      v39 = v81;
      v42 = v72;
      v41 = v75;
      if (*(&v68 + 1) >= *&v68)
      {
        v32 = 0;
        v38 = v68 | (HIDWORD(v68) << 32);
      }

      else
      {
        v38 = 1;
      }
    }

    if (*&v42 == 0.0 && *(&v42 + 1) == 0.0)
    {
      v53 = 0;
    }

    else
    {
      if (*(&v42 + 1) >= *&v42)
      {
        v54 = 0;
        v53 = v42;
        goto LABEL_54;
      }

      v53 = 1;
    }

    v54 = 1;
LABEL_54:
    if (*&v41 == 0.0 && *(&v41 + 1) == 0.0)
    {
      v55 = 0;
    }

    else
    {
      if (*(&v41 + 1) >= *&v41)
      {
        v56 = 0;
        v55 = v41;
        goto LABEL_61;
      }

      v55 = 1;
    }

    v56 = 1;
LABEL_61:
    if (*&v40 == 0.0 && *(&v40 + 1) == 0.0)
    {
      v57 = 0;
    }

    else
    {
      if (*(&v40 + 1) >= *&v40)
      {
        v58 = 0;
        v57 = v40;
        goto LABEL_68;
      }

      v57 = 1;
    }

    v58 = 1;
LABEL_68:
    if (*&v39 == 0.0 && *(&v39 + 1) == 0.0)
    {
      v59 = 0;
    }

    else
    {
      if (*(&v39 + 1) >= *&v39)
      {
        v60 = 0;
        v59 = v39;
        goto LABEL_75;
      }

      v59 = 1;
    }

    v60 = 1;
LABEL_75:
    v67 = ChecksForCollisions;
    v69 = v60;
    v83 = v56;
    v79 = v55;
    v76 = v58;
    v73 = v57;
    v66 = v59;
    if (*&v37 == 0.0 && *(&v37 + 1) == 0.0)
    {
      v61 = v38;
      v62 = v32;
      v64 = 0;
    }

    else
    {
      if (*(&v37 + 1) >= *&v37)
      {
        v61 = v38;
        v62 = v32;
        v65 = 0;
        v64 = v37;
        goto LABEL_82;
      }

      v61 = v38;
      v62 = v32;
      v64 = 1;
    }

    v65 = 1;
LABEL_82:
    a2[3] = &type metadata for PhysicsCustomJoint;
    a2[4] = lazy protocol witness table accessor for type PhysicsCustomJoint and conformance PhysicsCustomJoint();
    v63 = swift_allocObject();
    *a2 = v63;
    outlined init with copy of GeometricPin(v91, v63 + 16);
    outlined init with copy of GeometricPin(v84, v63 + 96);

    v44 = (v63 + 177);
    *(v63 + 180) = v61;
    *(v63 + 188) = v62;
    *(v63 + 192) = v53;
    *(v63 + 200) = v54;
    *(v63 + 204) = v79;
    *(v63 + 212) = v83;
    *(v63 + 216) = v73;
    *(v63 + 224) = v76;
    *(v63 + 228) = v66;
    *(v63 + 236) = v69;
    *(v63 + 240) = v64;
    *(v63 + 248) = v65;
    *(v63 + 176) = v67;
    goto LABEL_83;
  }

  result = REPhysicsJointDefinitionDistanceJointGetDistanceLimit();
  v82 = v48;
  if ((vmvn_s8(vcge_f32(vdup_lane_s32(v48, 1), v48)).u32[0] & 1) == 0)
  {
    a2[3] = &type metadata for PhysicsDistanceJoint;
    a2[4] = lazy protocol witness table accessor for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint();
    v49 = swift_allocObject();
    *a2 = v49;
    outlined init with copy of GeometricPin(v91, v49 + 16);
    outlined init with copy of GeometricPin(v84, v49 + 96);
    v44 = (v49 + 177);
    *(v49 + 180) = v82;
    *(v49 + 176) = ChecksForCollisions;
    REPhysicsJointDefinitionDistanceJointGetTolerance();
    v51 = v50;

    *(v49 + 188) = v51;
    goto LABEL_83;
  }

LABEL_87:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized static PhysicsJointCreator.findNearestOrAddPhysicsJointsComponent(for:)(uint64_t a1)
{
  v2 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  swift_retain_n();
  Component = REEntityGetComponent();

  if (Component)
  {
    v6 = a1;
LABEL_3:

    return v6;
  }

  v7 = a1;
  while (1)
  {
    if (v2 && *(v7 + 16) == *(v2 + 16) || (, v11 = REEntityGetComponent(), , v11))
    {

      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation013PhysicsJointsD0V_TtB5(0, MEMORY[0x1E69E7CC0], 0, v7);

      return v7;
    }

    v12 = *v4;
    Parent = REEntityGetParent();
    if (!Parent)
    {
      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation013PhysicsJointsD0V_TtB5(0, MEMORY[0x1E69E7CC0], 0, a1);

      return a1;
    }

    v14 = Parent;
    if (REEntityGetSwiftObject())
    {

      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
      goto LABEL_7;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      break;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + 8 * v16);
    }

    else
    {
      swift_endAccess();
      v19 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
      static SceneManager.customComponentTypeObjectIdToHandles = v36;
    }

    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_39;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_39;
    }

    v22 = *Object;
    if (*(Object + 8) || !v22)
    {
      v28 = *(Object + 8);
    }

    else
    {
      v23 = *v22;
      v24 = String.init(utf8String:)();
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0xE000000000000000;
      }

      v22 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v23 == 42, v26, v27);

      type metadata accessor for IntrospectionDataCleanupHelper();
      result = swift_allocObject();
      *(result + 16) = v22;
    }

    if (!v22)
    {
      goto LABEL_44;
    }

    v29 = String.init(utf8String:)();
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = MEMORY[0x1C68F3280](v29, v31);

    v33 = NSClassFromString(v32);

    if (!v33)
    {
      goto LABEL_39;
    }

    swift_getObjCClassMetadata();
    type metadata accessor for Entity();
    v34 = swift_dynamicCastMetatype();
    if (v34)
    {
      v6 = (*(v34 + 232))();
      v35 = *(v6 + 16);

      MEMORY[0x1C68F9740](v35, 0);
      *(v6 + 16) = v14;
      MEMORY[0x1C68F9740](v14, v6);
    }

    else
    {
LABEL_39:
      v6 = makeEntity(for:)(v14);
    }

LABEL_7:
    v4 = (v6 + 16);
    v9 = *(v6 + 16);

    v10 = REEntityGetComponent();

    v7 = v6;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t specialized static PhysicsJointCreator.verifyData(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(&v70, v2, v3);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v70);
  if (!Strong)
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 4;
    return swift_willThrow();
  }

  v5 = *(Strong + 16);

  if (!REEntityGetComponent())
  {

    v20 = *(Strong + 16);
    REEntityGetName();
    v21 = String.init(cString:)();
    v23 = v22;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v16 = v21;
    *(v16 + 8) = v23;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v17 = 1;
    goto LABEL_12;
  }

  PhysicsBodyComponent.init(_:)(&v80);

  v78 = v88;
  v79[0] = v89[0];
  *(v79 + 12) = *(v89 + 12);
  v74 = v84;
  v75 = v85;
  v76 = v86;
  v77 = v87;
  v70 = v80;
  v71 = v81;
  v72 = v82;
  v73 = v83;
  outlined destroy of PhysicsBodyComponent(&v70);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(&v70, v6, v7);
  GeometricPin.pose.getter(v90);
  outlined destroy of GeometricPin(&v70);
  if (v90[32])
  {
    v8 = *(Strong + 16);
    REEntityGetName();
    v9 = String.init(cString:)();
    v11 = v10;
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 16))(&v70, v12, v13);
    v15 = *(&v70 + 1);
    v14 = v71;

    outlined destroy of GeometricPin(&v70);
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v16 = v9;
    *(v16 + 8) = v11;
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v17 = 3;
LABEL_12:
    *(v16 + 32) = v17;
    swift_willThrow();
  }

  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 40))(&v70, v24, v25);
  v26 = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v70);
  if (!v26)
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v16 = 0u;
    *(v16 + 16) = 0u;
    v17 = 4;
    goto LABEL_12;
  }

  v27 = *(v26 + 16);

  if (!REEntityGetComponent())
  {

    v40 = *(v26 + 16);
    REEntityGetName();
    v41 = String.init(cString:)();
    v43 = v42;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v38 = v41;
    *(v38 + 8) = v43;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    v39 = 1;
    goto LABEL_15;
  }

  PhysicsBodyComponent.init(_:)(&v80);

  v78 = v88;
  v79[0] = v89[0];
  *(v79 + 12) = *(v89 + 12);
  v74 = v84;
  v75 = v85;
  v76 = v86;
  v77 = v87;
  v70 = v80;
  v71 = v81;
  v72 = v82;
  v73 = v83;
  outlined destroy of PhysicsBodyComponent(&v70);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  (*(v29 + 40))(&v70, v28, v29);
  GeometricPin.pose.getter(v91);
  outlined destroy of GeometricPin(&v70);
  if (v91[32])
  {
    v30 = *(v26 + 16);
    REEntityGetName();
    v31 = String.init(cString:)();
    v33 = v32;
    v34 = a1[3];
    v35 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v34);
    (*(v35 + 40))(&v70, v34, v35);
    v37 = *(&v70 + 1);
    v36 = v71;

    outlined destroy of GeometricPin(&v70);
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v38 = v31;
    *(v38 + 8) = v33;
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    v39 = 3;
LABEL_15:
    *(v38 + 32) = v39;
LABEL_16:
    swift_willThrow();
  }

  if (*(Strong + 16) == *(v26 + 16))
  {
    REEntityGetName();
    v55 = String.init(cString:)();
    v57 = v56;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v58 = v55;
    *(v58 + 8) = v57;
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0;
    goto LABEL_16;
  }

  v44 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(Strong);
  v45 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v26);
  if (v44)
  {
    if (!v45)
    {
      v64 = *(v44 + 16);

      REEntityGetName();
      v65 = String.init(cString:)();
      v67 = v66;
      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v68 = v65;
      *(v68 + 8) = v67;
      *(v68 + 16) = xmmword_1C18A5140;
      *(v68 + 32) = 2;
      swift_willThrow();

      goto LABEL_29;
    }

    if (*(v44 + 16) != *(v45 + 16))
    {
      v46 = v45;

      REEntityGetName();
      v47 = String.init(cString:)();
      v49 = v48;
      v50 = *(v46 + 16);
      REEntityGetName();
      v51 = String.init(cString:)();
      v53 = v52;
      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v54 = v47;
      *(v54 + 8) = v49;
      *(v54 + 16) = v51;
      *(v54 + 24) = v53;
      *(v54 + 32) = 2;
      swift_willThrow();

LABEL_29:
    }
  }

  else if (v45)
  {
    v59 = *(v45 + 16);
    REEntityGetName();
    v60 = String.init(cString:)();
    v62 = v61;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v63 = xmmword_1C18A5140;
    *(v63 + 16) = v60;
    *(v63 + 24) = v62;
    *(v63 + 32) = 2;
    swift_willThrow();

LABEL_25:
  }

  outlined init with copy of __REAssetService(a1, &v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsFixedJoint(&v70);
  }

  outlined init with copy of __REAssetService(a1, &v80);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsSphericalJoint(&v70);
  }

  outlined init with copy of __REAssetService(a1, &v80);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsRevoluteJoint(&v70);
  }

  outlined init with copy of __REAssetService(a1, &v80);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsPrismaticJoint(&v70);
  }

  outlined init with copy of __REAssetService(a1, &v80);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsDistanceJoint(&v70);
  }

  outlined init with copy of __REAssetService(a1, &v80);
  if (!swift_dynamicCast())
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v69 = 1;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    *(v69 + 32) = 4;
    swift_willThrow();

    goto LABEL_25;
  }

  return outlined destroy of PhysicsCustomJoint(&v70);
}

uint64_t specialized static PhysicsJointCreator.createCoreJointDefinition(fromDefinition:jointsComponentEntity:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(&v44, v2, v3);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v44);
  if (!Strong)
  {
    goto LABEL_5;
  }

  v5 = *(Strong + 16);

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 40))(&v44, v6, v7);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v44);
  if (!Strong)
  {
LABEL_5:
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    v20 = v19 + 2;
    *v19 = 0u;
    v19[1] = 0u;
LABEL_6:
    *v20 = 4;
    swift_willThrow();
    return Strong;
  }

  v8 = *(Strong + 16);

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 16))(&v44, v9, v10);

  outlined destroy of GeometricPin(&v44);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 40))(&v44, v11, v12);

  outlined destroy of GeometricPin(&v44);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 16))(&v44, v13, v14);
  outlined destroy of GeometricPin(&v44);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 40))(&v44, v15, v16);
  outlined destroy of GeometricPin(&v44);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 64))(v17, v18);
  outlined init with copy of __REAssetService(a1, &v34);
  Strong = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  if (swift_dynamicCast())
  {
    outlined destroy of PhysicsFixedJoint(&v44);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateFixedJoint();
LABEL_21:

    return Strong;
  }

  outlined init with copy of __REAssetService(a1, v54);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsSphericalJoint(&v34, &v44);
    __asm { FMOV            V8.2S, #-1.0 }

    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateSphericalJoint();
    outlined destroy of PhysicsSphericalJoint(&v44);
    goto LABEL_21;
  }

  v42 = 0u;
  memset(v43, 0, 29);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21PhysicsSphericalJointVSgMd, &_s17RealityFoundation21PhysicsSphericalJointVSgMR);
  outlined init with copy of __REAssetService(a1, v54);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsRevoluteJoint(&v34, &v44);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateRevoluteJoint();
    outlined destroy of PhysicsRevoluteJoint(&v44);
    goto LABEL_21;
  }

  v42 = 0u;
  memset(v43, 0, 29);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation20PhysicsRevoluteJointVSgMd, &_s17RealityFoundation20PhysicsRevoluteJointVSgMR);
  outlined init with copy of __REAssetService(a1, v54);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsPrismaticJoint(&v34, &v44);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreatePrismaticJoint();
    outlined destroy of PhysicsPrismaticJoint(&v44);
    goto LABEL_21;
  }

  v42 = 0u;
  memset(v43, 0, 29);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21PhysicsPrismaticJointVSgMd, &_s17RealityFoundation21PhysicsPrismaticJointVSgMR);
  outlined init with copy of __REAssetService(a1, v54);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsDistanceJoint(&v34, &v44);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateDistanceJoint();
    outlined destroy of PhysicsDistanceJoint(&v44);
    goto LABEL_21;
  }

  memset(v43, 0, 32);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation20PhysicsDistanceJointVSgMd, &_s17RealityFoundation20PhysicsDistanceJointVSgMR);
  outlined init with copy of __REAssetService(a1, v54);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v42 = 0u;
    memset(v43, 0, 89);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation18PhysicsCustomJointVSgMd, &_s17RealityFoundation18PhysicsCustomJointVSgMR);
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v27 = 1;
    v27[1] = 0;
    v20 = v27 + 4;
    v27[2] = 0;
    v27[3] = 0;
    goto LABEL_6;
  }

  result = outlined init with take of PhysicsCustomJoint(&v34, &v44);
  if (v47 != 1)
  {
    v28 = v45;
    if (v45 <= v46)
    {
      if (v45 >= -6.2832)
      {
        if (v45 <= 6.2832)
        {
          v29 = -6.2832;
          if (v46 >= -6.2832)
          {
            v29 = 6.2832;
            if (v46 <= 6.2832)
            {
              v29 = v46;
            }
          }
        }

        else
        {
          if (v46 < -6.2832)
          {
            goto LABEL_67;
          }

          v28 = 6.2832;
          v29 = v46;
          if (v46 > 6.2832)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        if (v46 < -6.2832)
        {
          goto LABEL_36;
        }

        v29 = 6.2832;
        if (v46 <= 6.2832)
        {
          v29 = v46;
        }

        v28 = -6.2832;
      }

      if (v28 <= v29)
      {
        goto LABEL_36;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

LABEL_36:
  if (v50 != 1)
  {
    v30 = v48;
    if (v48 <= v49)
    {
      if (v48 >= -6.2832)
      {
        if (v48 <= 6.2832)
        {
          v31 = -6.2832;
          if (v49 >= -6.2832)
          {
            v31 = 6.2832;
            if (v49 <= 6.2832)
            {
              v31 = v49;
            }
          }
        }

        else
        {
          if (v49 < -6.2832)
          {
            goto LABEL_68;
          }

          v30 = 6.2832;
          v31 = v49;
          if (v49 > 6.2832)
          {
            goto LABEL_51;
          }
        }

LABEL_50:
        if (v30 <= v31)
        {
          goto LABEL_51;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v49 >= -6.2832)
      {
        v31 = 6.2832;
        if (v49 <= 6.2832)
        {
          v31 = v49;
        }

        v30 = -6.2832;
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if (v53 == 1)
  {
    goto LABEL_66;
  }

  v32 = v51;
  if (v51 > v52)
  {
    goto LABEL_66;
  }

  if (v51 >= -6.2832)
  {
    if (v51 <= 6.2832)
    {
      v33 = -6.2832;
      if (v52 >= -6.2832)
      {
        v33 = 6.2832;
        if (v52 <= 6.2832)
        {
          v33 = v52;
        }
      }
    }

    else
    {
      if (v52 < -6.2832)
      {
        goto LABEL_69;
      }

      v32 = 6.2832;
      v33 = v52;
      if (v52 > 6.2832)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    if (v52 < -6.2832)
    {
LABEL_66:
      String.utf8CString.getter();

      String.utf8CString.getter();

      Strong = REPhysicsJointDefinitionCreateCustomJoint();
      outlined destroy of PhysicsCustomJoint(&v44);
      goto LABEL_21;
    }

    v33 = 6.2832;
    if (v52 <= 6.2832)
    {
      v33 = v52;
    }

    v32 = -6.2832;
  }

  if (v32 <= v33)
  {
    goto LABEL_66;
  }

LABEL_69:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError()
{
  result = lazy protocol witness table cache variable for type PhysicsJointError and conformance PhysicsJointError;
  if (!lazy protocol witness table cache variable for type PhysicsJointError and conformance PhysicsJointError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJointError and conformance PhysicsJointError);
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  swift_weakDestroy();
  v3 = v1[4];

  v4 = v1[6];

  swift_weakDestroy();
  v5 = v1[14];

  v6 = v1[16];

  return MEMORY[0x1EEE6BDD0](v1, a1, 15);
}

uint64_t specialized static PhysicsJointCreator.addToSimulation(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(v10, v3, v4);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(v10);
  if (Strong)
  {
    v3 = specialized static PhysicsJointCreator.findNearestOrAddPhysicsJointsComponent(for:)(Strong);
    specialized static PhysicsJointCreator.verifyData(_:)(a1);
    if (!v1)
    {
      specialized static PhysicsJointCreator.createCoreJointDefinition(fromDefinition:jointsComponentEntity:)(a1);
      v8 = *(v3 + 16);
      REPhysicsJointsComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REPhysicsJointsComponentAddPhysicsJointDefinition();
        RERelease();

        return v3;
      }

      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 4;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 4;
    swift_willThrow();
  }

  return v3;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation17PhysicsJointErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsJointError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsJointError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PhysicsJointError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t static EnvironmentLightingConfigurationComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = REEnvironmentLightingConfigurationComponentGetEnvironmentLightingWeight();
  *a2 = v5;
  return result;
}

uint64_t EnvironmentLightingConfigurationComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REEnvironmentLightingConfigurationComponentSetEnvironmentLightingWeight();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance EnvironmentLightingConfigurationComponent@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = REEnvironmentLightingConfigurationComponentGetEnvironmentLightingWeight();
  *a2 = v5;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance EnvironmentLightingConfigurationComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REEnvironmentLightingConfigurationComponentSetEnvironmentLightingWeight();

  return RENetworkMarkComponentDirty();
}

void *AudioPlaybackController.deinit()
{
  MEMORY[0x1C68F72F0](v0[4], v0[6]);
  v1 = v0[4];
  RENetworkMarkComponentDirty();
  v2 = v0[2];

  swift_weakDestroy();
  v3 = v0[5];

  return v0;
}

uint64_t AudioPlaybackController.__deallocating_deinit()
{
  MEMORY[0x1C68F72F0](v0[4], v0[6]);
  v1 = v0[4];
  RENetworkMarkComponentDirty();
  v2 = v0[2];

  swift_weakDestroy();
  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t key path getter for AudioPlaybackController.completionHandler : AudioPlaybackController@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
}

uint64_t key path setter for AudioPlaybackController.completionHandler : AudioPlaybackController(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(*a2 + 16);
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t AudioPlaybackController.completionHandler.getter()
{
  v1 = *(*(v0 + 16) + 112);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1);
  return v1;
}

uint64_t AudioPlaybackController.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
}

uint64_t (*AudioPlaybackController.completionHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *a1 = v4;
  a1[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
  return AudioPlaybackController.completionHandler.modify;
}

uint64_t AudioPlaybackController.completionHandler.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = *a1;
  *(v2 + 120) = v3;
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
    v7 = v4;
    v8 = v3;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
}

uint64_t (*AudioPlaybackController.speed.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *a1 = MEMORY[0x1C68F71F0]();
  return AudioPlaybackController.speed.modify;
}

double AudioPlaybackController.gain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  REAudioPlayerComponentGetDecibelGainForToken();
  return v3;
}

uint64_t (*AudioPlaybackController.gain.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  REAudioPlayerComponentGetDecibelGainForToken();
  *a1 = v5;
  return AudioPlaybackController.gain.modify;
}

Swift::Void __swiftcall AudioPlaybackController.fade(to:duration:)(Swift::Double to, Swift::Double duration)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 48);
  REAudioPlayerComponentFadeTokenToGainWithDuration();

  RENetworkMarkComponentDirty();
}

uint64_t (*AudioPlaybackController.reverbSendLevel.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *a1 = MEMORY[0x1C68F7200]();
  return AudioPlaybackController.reverbSendLevel.modify;
}

uint64_t key path setter for AudioPlaybackController.speed : AudioPlaybackController(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, float (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, void, float))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(*a2 + 32);
  v10 = a5(v9, *(*a2 + 48));
  v11 = v7;
  result = a6(v9, *(v8 + 48), v11);
  if (v7 != v10)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t AudioPlaybackController.speed.setter(float (*a1)(uint64_t, void), uint64_t (*a2)(uint64_t, void, float), double a3)
{
  v6 = *(v3 + 32);
  v7 = a1(v6, *(v3 + 48));
  v8 = a3;
  result = a2(v6, *(v3 + 48), v8);
  if (v7 != a3)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t (*AudioPlaybackController.directSendLevel.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *a1 = MEMORY[0x1C68F71E0]();
  return AudioPlaybackController.directSendLevel.modify;
}

uint64_t AudioPlaybackController.speed.modify(uint64_t a1, uint64_t a2, float (*a3)(uint64_t, void), uint64_t (*a4)(uint64_t, void, float))
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a1;
  v8 = a3(v5, *(v6 + 48));
  v9 = v7;
  result = a4(v5, *(v6 + 48), v9);
  if (v7 != v8)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

Swift::Void __swiftcall AudioPlaybackController.play()()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v2 = specialized HasHierarchy.parent.getter(), , v2))
  {

    v3 = v0[6];
    if (!v3)
    {
LABEL_4:
      static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v4 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  else
  {
    static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v5 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v3 = v1[6];
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  v6 = v1[5];
  type metadata accessor for AudioUnitResource();
  if (!swift_dynamicCastClass())
  {
    if (one-time initialization token for playingControllers != -1)
    {
      swift_once();
      v3 = v1[6];
    }

    v7 = v1[2];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = static AudioPlaybackController.playingControllers;
    static AudioPlaybackController.playingControllers = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v3, isUniquelyReferenced_nonNull_native);
    static AudioPlaybackController.playingControllers = v11;
    swift_endAccess();
    v9 = v1[6];
  }

  v10 = v1[4];
  REAudioPlayerComponentPlayToken();
  RENetworkMarkComponentDirty();
}

uint64_t AudioPlaybackController.pause()(void (*a1)(void, void))
{
  a1(*(v1 + 32), *(v1 + 48));

  return RENetworkMarkComponentDirty();
}

void AudioPlaybackController.__playbackPosition.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  JUMPOUT(0x1C68F7250);
}

uint64_t AudioPlaybackController.__playbackPosition.setter()
{
  MEMORY[0x1C68F7300](*(v0 + 32), *(v0 + 48));

  return RENetworkMarkComponentDirty();
}

uint64_t (*AudioPlaybackController.__playbackPosition.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *a1 = MEMORY[0x1C68F7250]();
  return AudioPlaybackController.__playbackPosition.modify;
}

uint64_t AudioPlaybackController.__playbackPosition.modify(uint64_t a1)
{
  MEMORY[0x1C68F7300](*(a1 + 16), *(*(a1 + 8) + 48), *a1);

  return RENetworkMarkComponentDirty();
}

uint64_t AudioPlaybackController.parentTimebase.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = REAudioPlayerComponentCopySourceClockOrTimebase();
  v4 = CFGetTypeID(v3);
  if (v4 == CMTimebaseGetTypeID())
  {
    type metadata accessor for CMTimebaseRef(0);
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t key path getter for AudioPlaybackController.parentTimebase : AudioPlaybackController@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v3 + 48);
  v6 = REAudioPlayerComponentCopySourceClockOrTimebase();
  v7 = CFGetTypeID(v6);
  if (v7 == CMTimebaseGetTypeID())
  {
    type metadata accessor for CMTimebaseRef(0);
    result = swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    swift_unknownObjectRelease();
    result = 0;
  }

  *a2 = result;
  return result;
}

void key path setter for AudioPlaybackController.parentTimebase : AudioPlaybackController(id *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *(*a2 + 32);
    v3 = *(*a2 + 48);
    v4 = *a1;
    REAudioPlayerComponentSetSourceClockOrTimebase();
    RENetworkMarkComponentDirty();
  }
}

uint64_t AudioPlaybackController.audioUnit.getter()
{
  if (*(*(v0 + 16) + 56))
  {
    v2 = *(*(v0 + 16) + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMd, &_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMR);
    lazy protocol witness table accessor for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>();
    return Publisher.eraseToAnyPublisher()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL AudioPlaybackController.__audioUnitIsLoaded.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v3 + 16);
    v5 = *(v1 + 56);

    os_unfair_lock_lock(v4 + 4);
    swift_beginAccess();
    v6 = *(v3 + 32);
    v9 = v3 + 16;
    v8 = *(v3 + 16);
    v7 = *(v9 + 8);
    outlined copy of Result<AUAudioUnit, Error>?(v7, v6);
    os_unfair_lock_unlock(v8 + 4);

    if (v6 != 255)
    {
      outlined consume of Result<AUAudioUnit, Error>?(v7, v6);
    }

    return v6 != 255;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AudioPlaybackController.seek(to:)()
{
  v1 = Duration.components.getter();
  Duration.components.getter();
  MEMORY[0x1C68F7300](*(v0 + 32), *(v0 + 48), v2 * 1.0e-18 + v1);

  return RENetworkMarkComponentDirty();
}

void *AudioPlaybackController.Internal.createAudioPlaybackController()()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = *(v0 + 32);
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v4 = v0;
  v5 = specialized AudioPlaybackController.init(resource:entity:)(v3, v2);

  v6 = *(v4 + 16);
  v7 = *(v4 + 48);
  REAudioPlayerComponentGetDecibelGainForToken();
  v9 = v8;
  v10 = v5[4];
  v11 = v5[6];
  REAudioPlayerComponentGetDecibelGainForToken();
  v13 = v12;
  v14 = v5[6];
  REAudioPlayerComponentSetDecibelGainForToken();
  if (v9 != v13)
  {
    RENetworkMarkComponentDirty();
  }

  v15 = MEMORY[0x1C68F71F0](v6, v7);
  v16 = MEMORY[0x1C68F71F0](v5[4], v5[6]);
  v17 = v5[6];
  REAudioPlayerComponentSetPlaybackRateForToken();
  if (v15 != v16)
  {
    RENetworkMarkComponentDirty();
  }

  v18 = MEMORY[0x1C68F7200](v6, v7);
  v19 = MEMORY[0x1C68F7200](v5[4], v5[6]);
  v20 = v5[6];
  REAudioPlayerComponentSetReverbSendLevelForToken();
  if (v18 != v19)
  {
    RENetworkMarkComponentDirty();
  }

  v21 = MEMORY[0x1C68F71E0](v6, v7);
  v22 = MEMORY[0x1C68F71E0](v5[4], v5[6]);
  v23 = v5[6];
  REAudioPlayerComponentSetDirectSendLevelForToken();
  if (v21 != v22)
  {
    RENetworkMarkComponentDirty();
  }

  return v5;
}

uint64_t closure #1 in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == a2 && a4 <= 5 && ((1 << a4) & 0x2D) != 0)
    {
      v7 = *(result + 16);
      if ((REAudioPlayerComponentIsStreamPendingPlay() & 1) == 0)
      {
        if (one-time initialization token for playingControllers != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        specialized Dictionary._Variant.removeValue(forKey:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned REAudioPlaybackState, @unowned REAudioPlaybackState) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

void closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:)(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 16);
  v8 = *(a3 + 48);

  v9 = REAudioPlayerComponentGetAudioUnitForToken();
  if (v9)
  {
    v10 = v9;

    v18 = v10;
    LOBYTE(v19) = 0;
    v11 = v10;
    a1(&v18);
  }

  else
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    v13[4] = v6;
    v22 = partial apply for closure #1 in closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:);
    v23 = v13;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @guaranteed AUAudioUnit?, @guaranteed Error?) -> ();
    v21 = &block_descriptor_76;
    v14 = _Block_copy(&v18);

    v15 = REAudioPlayerComponentSetDidPrepareAudioUnitCallback();
    v17 = v16;
    _Block_release(v14);
    *(a3 + 88) = v15;
    *(a3 + 96) = v17;
    *(a3 + 104) = 0;
  }
}

uint64_t closure #1 in closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == a2)
    {
      v12 = (result + 88);
      v11 = *(result + 88);
      if ((*(result + 104) & 1) == 0)
      {
        v13 = *(result + 96);
        if (a4)
        {
          v14 = result;
          v15 = a4;
          a6(a4, 1);
          v16 = v14;
          v17 = *(v14 + 16);
          REAudioPlayerComponentRemoveCallback();
        }

        else
        {
          if (!a3)
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v16 = result;
          v18 = a3;
          a6(a3, 0);
          v19 = *(v16 + 16);
          REAudioPlayerComponentRemoveCallback();
        }

        *v12 = 0;
        v12[1] = 0;
        *(v16 + 104) = 1;
      }
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @guaranteed AUAudioUnit?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v12 = a4;
  v11 = a5;
  v10(a2, a3, a4, a5);
}

uint64_t handler #1 (token:) in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1)
{
  if (one-time initialization token for playingControllers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AudioPlaybackController.playingControllers;
  if (!*(static AudioPlaybackController.playingControllers + 16))
  {
    return swift_endAccess();
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return swift_endAccess();
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  result = swift_endAccess();
  v7 = *(v5 + 112);
  if (v7)
  {
    v8 = *(v5 + 120);

    v7(v9);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  }

  return result;
}

uint64_t removeFromSceneCallback #1 (token:) in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1)
{
  if (one-time initialization token for playingControllers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = static AudioPlaybackController.playingControllers;
    v9 = static AudioPlaybackController.playingControllers;
    static AudioPlaybackController.playingControllers = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v6 = v9;
    }

    v7 = *(*(v6 + 56) + 8 * v4);

    specialized _NativeDictionary._delete(at:)(v4, v6);
    static AudioPlaybackController.playingControllers = v6;
  }

  return swift_endAccess();
}

uint64_t AudioPlaybackController.Internal.deinit()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 16);
    REAudioPlayerComponentRemoveCallback();
  }

  if ((*(v0 + 104) & 1) == 0)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 16);
    REAudioPlayerComponentRemoveCallback();
  }

  MEMORY[0x1C68F7170](*(v0 + 16), *(v0 + 48));
  v7 = *(v0 + 16);
  RENetworkMarkComponentDirty();
  v8 = *(v0 + 16);
  RERelease();
  swift_weakDestroy();
  v9 = *(v0 + 32);

  swift_weakDestroy();
  v10 = *(v0 + 56);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 112), *(v0 + 120));
  return v0;
}

uint64_t AudioPlaybackController.Internal.__deallocating_deinit()
{
  AudioPlaybackController.Internal.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>()
{
  result = lazy protocol witness table cache variable for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>;
  if (!lazy protocol witness table cache variable for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMd, &_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>);
  }

  return result;
}

id outlined copy of Result<AUAudioUnit, Error>?(id a1, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<AUAudioUnit, Error>(a1);
  }

  return a1;
}

double keypath_get_7Tm@<D0>(uint64_t a1@<X0>, float (*a2)(void, void)@<X3>, double *a3@<X8>)
{
  result = a2(*(*a1 + 32), *(*a1 + 48));
  *a3 = result;
  return result;
}

uint64_t specialized AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_weakInit();
  swift_weakInit();
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 16) = a1;
  swift_weakAssign();
  *(v5 + 32) = a3;
  *(v5 + 48) = a4;
  v9 = *(v5 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v28[4] = partial apply for closure #1 in AudioPlaybackController.Internal.init(component:entity:resource:token:);
  v28[5] = v10;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned REAudioPlaybackState, @unowned REAudioPlaybackState) -> ();
  v28[3] = &block_descriptor_6;
  v11 = _Block_copy(v28);

  v12 = REAudioPlayerComponentAddDidChangeStateCallback();
  v14 = v13;
  _Block_release(v11);
  *(v5 + 64) = v12;
  *(v5 + 72) = v14;
  *(v5 + 80) = 0;
  type metadata accessor for AudioUnitResource();
  if (swift_dynamicCastClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMd, &_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMR);
    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySo11AUAudioUnitCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySo11AUAudioUnitCs5Error_pGSgGMR);
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v16 + 16) = v17;
    *(v16 + 24) = 0;
    *(v16 + 32) = -1;
    *(v15 + 16) = v16;
    v18 = swift_allocObject();
    v18[2] = partial apply for closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:);
    v18[3] = v5;
    v18[4] = v16;
    v18[5] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo11AUAudioUnitCs5Error_pGMd, &_s7Combine6FutureCySo11AUAudioUnitCs5Error_pGMR);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();

    *(v15 + 24) = Future.init(_:)();
    v22 = *(v5 + 56);
    *(v5 + 56) = v15;
  }

  v23 = *(v5 + 16);
  v24 = *(v5 + 48);
  REAudioPlayerComponentSetCompletionHandler();
  v25 = *(v5 + 16);
  v26 = *(v5 + 48);
  REAudioPlayerComponentSetRemoveFromSceneCallback();
  return v5;
}

void *specialized AudioPlaybackController.init(resource:entity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  v2[5] = a1;
  v2[6] = 0;
  swift_beginAccess();
  swift_weakAssign();
  v6 = *(a2 + 16);

  REAudioPlayerComponentGetComponentType();
  v3[4] = REEntityGetOrAddComponentByClass();
  RERetain();
  v7 = v3[4];
  v8 = *(a1 + 16);
  v9 = REAudioPlayerComponentPrepareAsset();
  v3[6] = v9;
  v10 = v3[4];
  type metadata accessor for AudioPlaybackController.Internal();
  swift_allocObject();

  v11 = specialized AudioPlaybackController.Internal.init(component:entity:resource:token:)(v10, a2, a1, v9);

  v3[2] = v11;
  swift_weakAssign();
  v12 = v3[4];
  RENetworkMarkComponentDirty();
  return v3;
}

uint64_t specialized static AudioPlaybackController.audioPlaybackControllerForToken(token:)(uint64_t a1)
{
  if (one-time initialization token for playingControllers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AudioPlaybackController.playingControllers;
  if (*(static AudioPlaybackController.playingControllers + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      return result;
    }

    v7 = AudioPlaybackController.Internal.createAudioPlaybackController()();
    if (v7)
    {
      v8 = v7;

      return v8;
    }

    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    swift_endAccess();
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return 0;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __ResolvedRealityCoordinateSpace.entity.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

RealityFoundation::LowLevelBuffer::Descriptor __swiftcall LowLevelBuffer.Descriptor.init(capacity:sizeMultiple:)(Swift::Int capacity, Swift::Int sizeMultiple)
{
  *v2 = capacity;
  v2[1] = sizeMultiple;
  result.sizeMultiple = sizeMultiple;
  result.capacity = capacity;
  return result;
}

__n128 LowLevelBuffer.descriptor.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t (*LowLevelBuffer.bytesUsed.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  *a1 = DRBufferGetBytesUsed();
  return LowLevelBuffer.bytesUsed.modify;
}

uint64_t LowLevelBuffer.bytesUsed.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  return DRBufferSetBytesUsed();
}

uint64_t LowLevelBuffer.__allocating_init(descriptor:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LowLevelBuffer.init(descriptor:)(a1);
  return v2;
}

void LowLevelBuffer.init(descriptor:)(uint64_t *a1)
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = DRBufferDescriptorCreate();
  if (v4 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v7 = v6;
  DRBufferDescriptorSetCapacity();
  if (v5 < 0)
  {
    goto LABEL_12;
  }

  DRBufferDescriptorSetSizeMultiple();
  v25 = 0;
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v9 = MEMORY[0x1C68FE220](*(v8 + 16));
  if (v9)
  {
    v10 = v9;
    Buffer = DRContextCreateBuffer();
  }

  else
  {
    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __RenderService?(v14 + 40, &v20);
    if (!v21)
    {
      __break(1u);
      goto LABEL_14;
    }

    outlined init with take of ForceEffectBase(&v20, v22);
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v16 + 24))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v17 = RERenderManagerGetRenderDevice();
    Buffer = DRBufferCreateUnmanaged();
    swift_unknownObjectRelease();
    v18 = v25;
    if (v25)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v12 = v18;
      swift_willThrow();
      v13 = v18;

      swift_deallocPartialClassInstance();
LABEL_10:
      v19 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v2[3] = v4;
  v2[4] = v5;
  if (Buffer)
  {

    v2[2] = Buffer;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void LowLevelBuffer.init(coreBuffer:)(void *a1)
{
  v1[2] = a1;
  v2 = a1;
  v3 = DRBufferCopyDescriptor();
  Capacity = DRBufferDescriptorGetCapacity();

  if (Capacity < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = DRBufferCopyDescriptor();
    SizeMultiple = DRBufferDescriptorGetSizeMultiple();

    if ((SizeMultiple & 0x8000000000000000) == 0)
    {
      v1[3] = Capacity;
      v1[4] = SizeMultiple;
      return;
    }
  }

  __break(1u);
}

uint64_t LowLevelBuffer.withUnsafeBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelBuffer.withUnsafeBytes(_:);
  *(v7 + 24) = v6;
  v11[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRBufferRead();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LowLevelBuffer.withUnsafeBytes(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  return closure #1 in LowLevelBuffer.withUnsafeBytes(_:)(result, a2, a3);
}

{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return a3(result, result + a2);
  }

  __break(1u);
  return result;
}

uint64_t LowLevelBuffer.withUnsafeMutableBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelBuffer.withUnsafeMutableBytes(_:);
  *(v7 + 24) = v6;
  v11[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  v11[3] = &block_descriptor_13;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRBufferUpdate();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelBuffer.replaceUnsafeMutableBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelBuffer.replaceUnsafeMutableBytes(_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  v11[3] = &block_descriptor_23;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRBufferReplace();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

id LowLevelBuffer.read(using:)()
{
  v1 = *(v0 + 16);
  Using = DRBufferReadUsing();

  return Using;
}

id LowLevelBuffer.replace(using:)()
{
  v1 = *(v0 + 16);
  v2 = DRBufferReplaceUsing();

  return v2;
}

uint64_t LowLevelBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef()
{
  result = lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef;
  if (!lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef)
  {
    type metadata accessor for CFErrorRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef);
  }

  return result;
}

uint64_t partial apply for closure #1 in LowLevelBuffer.withUnsafeBytes(_:)(uint64_t result, uint64_t a2)
{
  return partial apply for closure #1 in LowLevelBuffer.withUnsafeBytes(_:)(result, a2);
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 24);
    return (*(v2 + 16))(result, result + a2);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t (*CustomMaterial.GeometryModifier.constantValues.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return CustomMaterial.GeometryModifier.constantValues.modify;
}

uint64_t CustomMaterial.GeometryModifier.init(named:in:constantValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return CustomMaterial.GeometryModifier.init(named:in:constantValues:)(a1, a2, a3, a4, a5);
}

{
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 16);

  v13 = *(v12 + 16);
  LOBYTE(v11) = REEngineConfigurationGetServicesToUpdate();

  if ((v11 & 0x10) != 0)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = 0;
    *(a5 + 32) = a4;
    *(a5 + 40) = 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*CustomMaterial.SurfaceShader.constantValues.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return CustomMaterial.SurfaceShader.constantValues.modify;
}

uint64_t (*protocol witness for MaterialFunction.constantValues.modify in conformance CustomMaterial.GeometryModifier(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return CustomMaterial.GeometryModifier.constantValues.modify;
}

void CustomMaterial.GeometryModifier.constantValues.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 32) = v5;
  }

  else
  {

    *(v2 + 32) = v4;
  }
}

uint64_t PlayAnimationAction.animationName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlayAnimationAction.animationName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlayAnimationAction.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of ActionEntityResolution();
}

uint64_t PlayAnimationAction.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  result = outlined consume of ActionEntityResolution();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

_BYTE *(*PlayAnimationAction.parentControllers.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 57);
  return PlayAnimationAction.parentControllers.modify;
}

__n128 PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:useParentedControllers:handoffType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v9 = a3[1].n128_u8[0];
  v10 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = v10;
  *(a8 + 57) = a6;
  result = *a3;
  *(a8 + 40) = *a3;
  *(a8 + 56) = v9;
  return result;
}

__n128 PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:parentControllers:handoffType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v9 = a3[1].n128_u8[0];
  v10 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = v10;
  result = *a3;
  *(a8 + 40) = *a3;
  *(a8 + 56) = v9;
  *(a8 + 57) = a6;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlayAnimationAction.CodingKeys()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000012;
    if (v1 != 1)
    {
      v5 = 0x79614C646E656C62;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F6974616D696E61;
    }
  }

  else
  {
    v2 = 0x6E45746567726174;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0x5466666F646E6168;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlayAnimationAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PlayAnimationAction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlayAnimationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlayAnimationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlayAnimationAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v25 = v1[3];
  v11 = *(v1 + 32);
  v23 = *(v1 + 33);
  v24 = v11;
  v12 = v1[5];
  v21 = v1[6];
  v22 = v12;
  LODWORD(v12) = *(v1 + 56);
  v19[2] = *(v1 + 57);
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  v14 = v26;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v23;
    v17 = v21;
    v16 = v22;
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = v15;
    v30 = 4;
    lazy protocol witness table accessor for type AnimationHandoffType and conformance AnimationHandoffType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v16;
    v28 = v17;
    v29 = v20;
    v30 = 5;
    outlined copy of ActionEntityResolution();
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of ActionEntityResolution();
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType and conformance AnimationHandoffType()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution()
{
  result = lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution);
  }

  return result;
}

uint64_t PlayAnimationAction.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v35) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v35) = 2;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v35) = 3;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v32) = 4;
  lazy protocol witness table accessor for type AnimationHandoffType and conformance AnimationHandoffType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v35;
  LOBYTE(v32) = 5;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v35;
  v28 = v36;
  v46 = v37;
  v45 = 6;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 &= 1u;
  (*(v6 + 8))(v9, v5);
  v26 = v17 & 1;
  *&v32 = v14;
  *(&v32 + 1) = v13;
  *&v33 = v16;
  v18 = v31;
  *(&v33 + 1) = v31;
  v19 = v29;
  v34[0] = v30;
  v34[1] = v29;
  v21 = v27;
  v20 = v28;
  *&v34[8] = v27;
  *&v34[16] = v28;
  v25 = v46;
  v34[24] = v46;
  v34[25] = v26;
  v22 = v33;
  *a2 = v32;
  a2[1] = v22;
  a2[2] = *v34;
  *(a2 + 42) = *&v34[10];
  outlined init with copy of PlayAnimationAction(&v32, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = v14;
  v36 = v13;
  v37 = v16;
  v38 = v18;
  v39 = v30;
  v40 = v19;
  v41 = v21;
  v42 = v20;
  v43 = v25;
  v44 = v26;
  return outlined destroy of PlayAnimationAction(&v35);
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlayAnimationAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t storeEnumTagSinglePayload for PlayAnimationAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void PlayAnimationActionHandler.triggerAnimation(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  *v60 = *(a1 + 42);
  *&v60[15] = *(a1 + 57);
  v9 = *(a1 + 65);
  *v62 = *(a1 + 66);
  *&v62[14] = *(a1 + 80);
  v10 = *(a1 + 96);
  v64 = *(a1 + 104);
  v65 = *(a1 + 120);
  v66 = *(a1 + 136);
  v11 = *(a1 + 152);
  v12 = *(a1 + 160);
  v51 = v2;
  v52 = *v1;
  v53 = v2;
  v54 = v3;
  v55 = v4;
  v56 = *&v5;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  v61 = v9;
  v63 = v10;
  v67 = v11;
  v68 = v12;
  v70 = *(a1 + 177);
  v69 = *(a1 + 161);
  *(v73 + 15) = *(a1 + 240);
  v73[0] = *(a1 + 225);
  v72 = *(a1 + 209);
  v71 = *(a1 + 193);
  v13 = specialized PlayAnimationActionHandler.getTargetEntity(event:)(&v53);
  if (!v13)
  {
    return;
  }

  v14 = v13;

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation016AnimationLibraryD0V_Tt0B5(v14, &v53);

  if (v53 != 1)
  {
    v48 = v55;
    v49 = v53;
    v46 = v1;
    v47 = v54;
    v50 = v56;
    v45 = AnimationLibraryComponent.animationResource(_:)(v3, v4);
    if (!v45)
    {
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19PlayAnimationActionVmMd, &_s17RealityFoundation19PlayAnimationActionVmMR);
      v28 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v28);

      MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E1E20);
      MEMORY[0x1C68F3410](v3, v4);
      MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E1E50);
      v26 = v53;
      v3 = v54;
      if (one-time initialization token for logger == -1)
      {
LABEL_15:
        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static AnimationLogger.logger);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v53 = v33;
          *v32 = 136315138;
          *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v3, &v53);
          _os_log_impl(&dword_1C1358000, v30, v31, "%s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x1C6902A30](v33, -1, -1);
          MEMORY[0x1C6902A30](v32, -1, -1);
        }

        goto LABEL_38;
      }

LABEL_44:
      swift_once();
      goto LABEL_15;
    }

    REAnimationHandoffDefaultDescEx();
    v25 = v54;
    v26 = v8 >> 6;
    if (v8 >> 6 <= 1)
    {
      if (v26)
      {
        v26 = 1;
      }

      v27 = v8 ^ 1;
      if (!v6)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if (v26 == 3)
    {
      if (!v6)
      {
        v44 = v54;
        v34 = v55;
        LODWORD(v26) = 0;
        goto LABEL_30;
      }

      goto LABEL_23;
    }

    if (v8 == 128)
    {
      if (v6)
      {
LABEL_23:
        v27 = 0;
        v26 = 2;
LABEL_26:
        if (v6 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v6 <= 0x7FFFFFFF)
        {
          v25 = v6;
LABEL_29:
          v44 = v25;
          v34 = v55;
          LOBYTE(v6) = v27;
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_44;
      }

      v44 = v54;
      v34 = v55;
      LODWORD(v26) = 2;
    }

    else
    {
      if (v6)
      {
        v27 = 0;
        v26 = 3;
        goto LABEL_26;
      }

      v44 = v54;
      v34 = v55;
      LODWORD(v26) = 3;
    }

LABEL_30:
    v36 = *(v14 + 16);
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v37 = *(v45 + 16);
    LODWORD(v53) = v26;
    v35 = v5;
    *(&v53 + 1) = v35;
    LODWORD(v54) = v44;
    v55 = v34;
    LOBYTE(v56) = v6 & 1;
    v38 = REAnimationComponentPlay();
    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    v40 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v39, v38, 1);

    *v46 = v40;
    if ((v12 & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v42 = *(Strong + 16);
        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          v43 = *(v40 + 16);
          REAnimationComponentSetCurrentPlaybackTime();
          RENetworkMarkComponentDirty();
        }
      }
    }

    if (v9)
    {
      AnimationPlaybackController.setParent(parent:)(v51);
    }

LABEL_38:
    outlined consume of AnimationLibraryComponent?(v49, v47, v48, v50);

    return;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19PlayAnimationActionVmMd, &_s17RealityFoundation19PlayAnimationActionVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v15);

  MEMORY[0x1C68F3410](0xD00000000000003ELL, 0x80000001C18E1DE0);
  v16 = *(v14 + 16);
  REEntityGetName();
  v17 = String.init(cString:)();
  MEMORY[0x1C68F3410](v17);

  MEMORY[0x1C68F3410](11815, 0xE200000000000000);
  v19 = v53;
  v18 = v54;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static AnimationLogger.logger);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v53);
    _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }
}

uint64_t PlayAnimationActionHandler.actionEnded(event:)(uint64_t a1)
{
  if (*(a1 + 65) == 1)
  {
    v2 = *v1;
    if (*v1)
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v4 = *(Strong + 16);
        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          v5 = *(v2 + 16);
          REAnimationComponentStopAnimation();
          RENetworkMarkComponentDirty();
        }
      }
    }
  }

  v6 = *v1;

  *v1 = 0;
  return result;
}

uint64_t specialized PlayAnimationAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974616D696E61 && a2 == 0xED0000656D614E6ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18E1D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79614C646E656C62 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18E1DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5466666F646E6168 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E45746567726174 && a2 == 0xEC00000079746974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C18E1DC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized PlayAnimationActionHandler.getTargetEntity(event:)(uint64_t a1)
{
  if ((*(*a1 + 40) & 1) != 0 || (v1 = *(a1 + 48), v2 = *(a1 + 56), v3 = *(a1 + 64), (Strong = swift_weakLoadStrong()) == 0))
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v17 = &type metadata for PlayAnimationAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19PlayAnimationActionVmMd, &_s17RealityFoundation19PlayAnimationActionVmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static AnimationLogger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v14);
      _os_log_impl(&dword_1C1358000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1C6902A30](v13, -1, -1);
      MEMORY[0x1C6902A30](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    v5 = Strong;
    v14 = v1;
    v15 = v2;
    v16 = v3;
    outlined copy of ActionEntityResolution();
    v6 = ActionEntityResolution.resolve(from:)(v5);

    outlined consume of ActionEntityResolution();
    return v6;
  }
}

uint64_t outlined consume of AnimationLibraryComponent?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {

    outlined consume of String??(a3, a4);
  }

  return result;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit17AudioFileResourceC0A10FoundationE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for AudioFileResource.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioFileResource.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AudioFileResource.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioFileResource.Error and conformance AudioFileResource.Error;
  if (!lazy protocol witness table cache variable for type AudioFileResource.Error and conformance AudioFileResource.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource.Error and conformance AudioFileResource.Error);
  }

  return result;
}

uint64_t AudioFileResource.Error.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(21);

    v5 = 0xD000000000000012;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(23);

    v5 = 0xD000000000000014;
LABEL_5:
    v7 = v5;
    MEMORY[0x1C68F3410](a1, a2);
    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    return v7;
  }

  return 0x206E776F6E6B6E55;
}

double __REAssetManager.__allocating_init(handle:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 2;
  *(v2 + 96) = 514;
  *(v2 + 88) = a1;
  return result;
}

uint64_t __AssetLoadRequest.add(asset:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t static __REAsset.__fromHandleTransfer(_:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for __REAsset();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __REAssetIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t __REAssetIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance __REAssetIdentifier(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static __REAsset.__fromHandle(_:)(uint64_t *a1)
{
  v1 = *a1;
  RERetain();
  type metadata accessor for __REAsset();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t __REAsset.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = REAssetCopyDescription();

  return String.init(_:)(v2)._countAndFlagsBits;
}

uint64_t __REAsset.sanitizedDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = REAssetCopyDescription();

  return String.init(_:)(v2)._countAndFlagsBits;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAsset()
{
  v1 = *(*v0 + 16);
  v2 = REAssetCopyDescription();

  return String.init(_:)(v2)._countAndFlagsBits;
}

Swift::Int __REAsset.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t __REAssetManager.init(handle:)(uint64_t a1)
{
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 80) = 2;
  *(v1 + 96) = 514;
  *(v1 + 88) = a1;
  return v1;
}

unint64_t lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

uint64_t __REAssetManager._mainBundle.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = outlined init with copy of __REAssetBundle?(v1 + 16, &v9);
  if (v9)
  {
    v4 = v10;
    *a1 = v9;
    *(a1 + 16) = v4;
    v5 = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v5;
  }

  else
  {
    outlined destroy of __REAssetBundle?(&v9);
    *(&v10 + 1) = type metadata accessor for __REAssetManager();
    *&v11 = &protocol witness table for __REAssetManager;
    *&v9 = v1;
    outlined init with copy of __REAssetService(&v9, v8);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v6, v8, v7, 0, a1);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    outlined init with copy of __REAssetBundle(a1, &v9);
    swift_beginAccess();
    outlined assign with take of __REAssetBundle?(&v9, v1 + 16);
    return swift_endAccess();
  }

  return result;
}

id __REAssetManager.engineQueue.getter()
{
  v1 = *(v0 + 88);
  EngineQueue = REAssetManagerGetEngineQueue();

  return EngineQueue;
}

uint64_t __REAssetManager.syncLoadsShouldWaitForResourceSharing.getter()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 80) = 0;
  }

  return v1 & 1;
}

_BYTE *(*__REAssetManager.syncLoadsShouldWaitForResourceSharing.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = __REAssetManager.syncLoadsShouldWaitForResourceSharing.getter() & 1;
  return __REAssetManager.syncLoadsShouldWaitForResourceSharing.modify;
}

uint64_t __REAssetManager.loadBundle(at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v29[5] = *MEMORY[0x1E69E9840];
  v29[3] = type metadata accessor for __REAssetManager();
  v29[4] = &protocol witness table for __REAssetManager;
  v29[0] = v1;
  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v24 = 1;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v18[0] = 2;
  v6 = *(v1 + 88);

  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v8 = *(v1 + 88);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = RERealityFileMountFileAtURL();

  if (v12)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v12, v29, ServiceLocatorForLegacyAPIWorkaround, v18, a1);
    v13 = *(v4 + 88);
    RERealityFileUnmount();
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (!v3)
    {
      _StringGuts.grow(_:)(34);

      v14 = URL.path.getter();
      MEMORY[0x1C68F3410](v14);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v15 = 0xD00000000000001FLL;
      *(v15 + 8) = 0x80000001C18E1F00;
      *(v15 + 16) = 4;
      swift_willThrow();
    }
  }

  outlined destroy of __REAssetBundle.LoadOptions(v18);
  result = __swift_destroy_boxed_opaque_existential_1(v29);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __REAssetManager.makeBundle()@<X0>(uint64_t *a1@<X8>)
{
  v7[3] = type metadata accessor for __REAssetManager();
  v7[4] = &protocol witness table for __REAssetManager;
  v7[0] = v1;
  outlined init with copy of __REAssetService(v7, v6);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v3, v6, v4, 0, a1);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t __REAssetManager.__getDependencies(asset:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  REAssetHandleLoadNow();
  v3 = *(v1 + 88);
  REAssetCopyDependencyArray();
  result = REAssetDynamicArrayGetSize();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = MEMORY[0x1E69E7CC0];
    if (!result)
    {
LABEL_7:
      RERelease();
      return v6;
    }

    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = 0;
    while (1)
    {
      result = REAssetDynamicArrayGetAsset();
      if (!result)
      {
        break;
      }

      v8 = result;
      ++v7;
      RERetain();
      type metadata accessor for __REAsset();
      *(swift_allocObject() + 16) = v8;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v5 == v7)
      {
        v6 = v10;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __REAssetManager.asyncLoadsShouldWaitForResourceSharing.getter()
{
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = MEMORY[0x1C68F3280](0xD00000000000003ALL, 0x80000001C18E1F20);
    v4 = [v2 BOOLForKey_];

    LOBYTE(v1) = v4 ^ 1;
    *(v0 + 96) = v4 ^ 1;
  }

  return v1 & 1;
}

_BYTE *(*__REAssetManager.asyncLoadsShouldWaitForResourceSharing.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = __REAssetManager.asyncLoadsShouldWaitForResourceSharing.getter() & 1;
  return __REAssetManager.asyncLoadsShouldWaitForResourceSharing.modify;
}

uint64_t __REAssetManager.syncLoadsShouldInitiateResourceSharing.getter()
{
  v1 = *(v0 + 97);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = MEMORY[0x1C68F3280](0xD000000000000033, 0x80000001C18E1F60);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v6, &v7);
    }

    else
    {
      v8 = MEMORY[0x1E69E6370];
      LOBYTE(v7) = 1;
    }

    LOBYTE(v1) = swift_dynamicCast() ^ 1 | v6;
    *(v0 + 97) = v1 & 1;
  }

  return v1 & 1;
}

_BYTE *(*__REAssetManager.syncLoadsShouldInitiateResourceSharing.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = __REAssetManager.syncLoadsShouldInitiateResourceSharing.getter() & 1;
  return __REAssetManager.syncLoadsShouldInitiateResourceSharing.modify;
}

uint64_t __REAssetManager.__deallocating_deinit()
{
  outlined destroy of __REAssetBundle?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for __REAssetService.makeBundle() in conformance __REAssetManager@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v10[3] = type metadata accessor for __REAssetManager();
  v10[4] = a1;
  v10[0] = v5;
  outlined init with copy of __REAssetService(v10, v9);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v6, v9, v7, 0, a2);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t __REAssetService.asset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (!AssetHandle)
  {
    return 0;
  }

  type metadata accessor for __REAsset();
  result = swift_allocObject();
  *(result + 16) = AssetHandle;
  return result;
}

uint64_t __REAssetService.resource<A>(ofType:at:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  (*(a4 + 8))(v11, a2, a4);
  v10[0] = v7;
  v10[1] = v8;
  __REAssetBundle.__resource<A>(ofType:identifier:)(v10, a3, a5);
  return outlined destroy of __REAssetBundle(v11);
}

uint64_t __REAssetBundle.resource<A>(ofType:at:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return __REAssetBundle.resource<A>(ofType:identifier:)(v5, a2, a3);
}

uint64_t __REAssetBundle.__renderGraphEmitter(at:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 32))(v4, v5);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (!AssetHandle)
  {
    return 0;
  }

  type metadata accessor for __REAsset();
  v7 = swift_allocObject();
  *(v7 + 16) = AssetHandle;
  type metadata accessor for __RERenderGraphEmitter();
  result = swift_allocObject();
  *(result + 16) = v7;
  return result;
}

uint64_t __AssetLoadRequest.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

BOOL static __AssetLoadRequest.ResourceSharingSchedulingRequirement.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance __AssetLoadRequest.ResourceSharingSchedulingRequirement(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t __AssetLoadRequest.__allocating_init(serviceLocator:)(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of __REAssetService(a1 + 120, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v3 + 32))(v2, v3);
  AssetRequest = REAssetManagerCreateAssetRequest();

  v5 = swift_allocObject();
  *(v5 + 16) = AssetRequest;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t __AssetLoadRequest.__allocating_init(assetService:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = specialized __AssetLoadRequest.__allocating_init(assetService:)(v9, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t __AssetLoadRequest.__allocating_init(assetService:shouldWaitForPeers:)(uint64_t *a1, char a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 32))(v4, v5);
  AssetRequest = REAssetManagerCreateAssetRequest();
  v7 = swift_allocObject();
  *(v7 + 16) = AssetRequest;
  if (a2)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t __AssetLoadRequest.add(asset:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  return REAssetLoadRequestAddAsset();
}

void __AssetLoadRequest.add(_:includeDescendants:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  JUMPOUT(0x1C68F6680);
}

uint64_t __AssetLoadRequest.error.getter()
{
  v1 = *(v0 + 16);
  result = REAssetLoadRequestCopyError();
  if (result)
  {
    v3 = result;
    type metadata accessor for CFErrorRef(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef);
    result = swift_allocError();
    *v4 = v3;
  }

  return result;
}

void __AssetLoadRequest.setCompletionHandler(_:)(const void *a1)
{
  v2 = _Block_copy(a1);
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v6[4] = _sSbIeyBy_SbIegy_TRTA_0;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v6[3] = &block_descriptor_8;
  v5 = _Block_copy(v6);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t __AssetLoadRequest.Statistics.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in __AssetLoadRequest.Statistics.forEach(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, double))
{
  REAssetTypeStatsGetTypeName();
  v3 = String.init(cString:)();
  v5 = v4;
  REAssetTypeStatsGetCumulativeLoadTime();
  v7 = v6;
  CumulativeFileSize = REAssetTypeStatsGetCumulativeFileSize();
  a2(v3, v5, CumulativeFileSize, v7);
}

uint64_t specialized __AssetLoadRequest.__allocating_init(assetService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 32))(v10, v8);
  (*(a4 + 32))(a3, a4);
  AssetRequest = REAssetManagerCreateAssetRequest();
  v12 = swift_allocObject();
  *(v12 + 16) = AssetRequest;
  (*(v6 + 8))(v10, a3);
  return v12;
}

uint64_t specialized __AssetLoadRequest.__allocating_init(assetService:resourceSharingScheduling:)(uint64_t *a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 32))(v4, v5);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v7 = swift_allocObject();
  *(v7 + 16) = AssetRequest;
  if (!REAssetLoadRequestSetLoadAndWaitForResourceSharingClients())
  {
    type metadata accessor for REError();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type REError and conformance REError, 255, type metadata accessor for REError);
    swift_allocError();
    v9 = v12;
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E22A0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](2105390, 0xE300000000000000);
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    v10 = "scheduling settings ";

    v11 = 0xD000000000000045;
    goto LABEL_5;
  }

  if ((REAssetLoadRequestSetShouldBlockECSSendsUntilCompleted() & 1) == 0)
  {
    type metadata accessor for REError();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type REError and conformance REError, 255, type metadata accessor for REError);
    swift_allocError();
    v9 = v8;
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E22A0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](2105390, 0xE300000000000000);
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    v10 = "sourceSharingClients)";

    v11 = 0xD000000000000042;
LABEL_5:
    MEMORY[0x1C68F3410](v11, v10 | 0x8000000000000000);

    *v9 = 0xD00000000000002DLL;
    v9[1] = 0x80000001C18E2270;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

unint64_t lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError()
{
  result = lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError;
  if (!lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError);
  }

  return result;
}

uint64_t outlined destroy of __REAssetBundle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized __REAssetService.assetRef(named:in:)(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0;
  URL._bridgeToObjectiveC()(v32);
  v5 = v4;
  v6 = RERealityFileCreateByOpeningFileAtURL();

  if (v6)
  {
    v7 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v7 + 120, &v27);
    v8 = v29;
    v9 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v10 = *(v9 + 32);

    v10(v8, v9);
    String.utf8CString.getter();
    AssetDescriptorFromLabel = RERealityFileCreateAssetDescriptorFromLabel();

    __swift_destroy_boxed_opaque_existential_1(&v27);
    if (AssetDescriptorFromLabel)
    {
      REAssetRegistrationOptionsCreate();
      REAssetRegistrationOptionsSetIsMutable();
      outlined init with copy of __REAssetService(v7 + 120, &v27);
      v12 = v29;
      v13 = v30;
      __swift_project_boxed_opaque_existential_1(&v27, v29);
      (*(v13 + 32))(v12, v13);
      v14 = REAssetHandleCreateFromAssetRegistrationOptions();
      __swift_destroy_boxed_opaque_existential_1(&v27);
      type metadata accessor for __REAsset();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      RERelease();
      RERelease();

      RERelease();
    }

    else
    {
      v16 = v31;
      if (v31)
      {
        type metadata accessor for CFErrorRef(0);
        v15 = v17;
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef);
        swift_allocError();
        *v18 = v16;
      }

      else
      {
        v27 = a1;
        v28 = a2;

        MEMORY[0x1C68F3410](544106784, 0xE400000000000000);
        type metadata accessor for URL();
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0]);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v22);

        v23 = v27;
        v15 = v28;
        lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
        swift_allocError();
        *v24 = v23;
        *(v24 + 8) = v15;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = 2;
      }

      swift_willThrow();

      RERelease();
    }
  }

  else
  {
    type metadata accessor for URL();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v20;
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v15;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 2;
    swift_willThrow();
  }

  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t specialized __AssetLoadRequest.__allocating_init(assetService:shouldLoadOnPeers:shouldWaitForPeers:)(uint64_t *a1, char a2, char a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 32))(v6, v7);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v9 = swift_allocObject();
  *(v9 + 16) = AssetRequest;
  if ((REAssetLoadRequestSetLoadAndWaitForResourceSharingClients() & 1) == 0)
  {
    type metadata accessor for REError();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type REError and conformance REError, 255, type metadata accessor for REError);
    swift_allocError();
    v11 = v10;
    _StringGuts.grow(_:)(92);
    MEMORY[0x1C68F3410](0xD00000000000003FLL, 0x80000001C18E2360);
    if (a2)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a2)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v12, v13);

    MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E23A0);
    if (a3)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (a3)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v14, v15);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type __REAssetIdentifier and conformance __REAssetIdentifier()
{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __AssetLoadRequest.ResourceSharingSchedulingRequirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for __AssetLoadRequest.ResourceSharingSchedulingRequirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for __AssetLoadRequest.ResourceSharingSchedulingRequirement(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for __AssetLoadRequest.ResourceSharingSchedulingRequirement(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAsset.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __REAsset.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for REError()
{
  result = type metadata singleton initialization cache for REError;
  if (!type metadata singleton initialization cache for REError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError()
{
  result = lazy protocol witness table cache variable for type __REAsset.LoadError and conformance __REAsset.LoadError;
  if (!lazy protocol witness table cache variable for type __REAsset.LoadError and conformance __REAsset.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAsset.LoadError and conformance __REAsset.LoadError);
  }

  return result;
}

uint64_t outlined init with copy of __REAssetBundle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of __REAssetBundle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for REError()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 16);
  if (REEntityGetComponentCount() < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)())
      {
        break;
      }

      ++v9;
      v10 = *(a3 + 16);
    }

    while (v9 < REEntityGetComponentCount());
  }

  v11 = *(a3 + 16);
  result = REEntityGetComponentCount();
  if (result < v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 > a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result < a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  a4[1] = a2;
  a4[2] = a3;
  *a4 = a1;
}

uint64_t Entity.ComponentSet.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(*v1);

  *a1 = v3;
  a1[1] = v3;
  a1[2] = 0;
}

uint64_t Entity.ComponentSet.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    result = outlined init with copy of __REAssetService(v2 + 40 * v3 + 32, a1);
    *(v1 + 16) = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance Entity.ComponentSet.Iterator@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    result = outlined init with copy of __REAssetService(v2 + 40 * v3 + 32, a1);
    *(v1 + 16) = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Entity.ComponentSet@<X0>(void *a1@<X8>)
{
  v3 = specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(*v1);

  *a1 = v3;
  a1[1] = v3;
  a1[2] = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ComponentSet()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t Entity.ComponentSet.startIndex.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = REEntityGetComponentCount();
  if (result < 1)
  {
    i = 0;
  }

  else
  {
    for (i = 0; i < result; ++i)
    {
      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
      if (result)
      {
        break;
      }

      v7 = *(v3 + 16);
      result = REEntityGetComponentCount();
    }
  }

  *a1 = i;
  return result;
}

uint64_t Entity.ComponentSet.index(after:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v2;
    while (1)
    {
      v6 = *(v5 + 16);
      result = REEntityGetComponentCount();
      if (v4 >= result)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
      if (result)
      {
        break;
      }

      ++v4;
    }

    *a2 = v4;
  }

  return result;
}

uint64_t Entity.ComponentSet.endIndex.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEntityGetComponentCount();
  *a1 = result;
  return result;
}

BOOL Entity.ComponentSet.isEmpty.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (REEntityGetComponentCount() < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)())
      {
        break;
      }

      ++v3;
      v4 = *(v1 + 16);
    }

    while (v3 < REEntityGetComponentCount());
  }

  v5 = *(v1 + 16);
  return v3 == REEntityGetComponentCount();
}

uint64_t Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)()
{
  v1 = *v0;
  type metadata accessor for __ServiceLocator();
  v2 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 80, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  v3 = *(v1 + 16);
  REEntityGetComponentAtIndex();
  Class = REComponentGetClass();
  swift_beginAccess();
  v5 = *(v19 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 80 * v7 + 48);

    v10 = v9 == 2;
  }

  else
  {
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + 16 * v12);
      swift_endAccess();
      v15 = *(v19 + 16);
      swift_beginAccess();
      if (*(*(v15 + 16) + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v14);
        v17 = v16;

        v10 = v17 ^ 1;
      }

      else
      {

        v10 = 1;
      }
    }

    else
    {
      swift_endAccess();

      v10 = 0;
    }
  }

  return v10 & 1;
}

uint64_t Entity.ComponentSet.formIndex(after:)(uint64_t result)
{
  v2 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *v1;
    while (1)
    {
      v5 = *(v4 + 16);
      result = REEntityGetComponentCount();
      if (v2 >= result)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
      if (result)
      {
        break;
      }

      ++v2;
    }

    *v3 = v2;
  }

  return result;
}

uint64_t Entity.ComponentSet.distance(from:to:)(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  v5 = *v2;
  if (*a2 < *result)
  {
    v6 = 0;
    while (1)
    {
      v7 = __OFSUB__(v6--, 1);
      if (v7)
      {
        break;
      }

      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v8 = *(v5 + 16);
        result = REEntityGetComponentCount();
        if (v4 >= result)
        {
          break;
        }

        result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
        if (result)
        {
          break;
        }

        ++v4;
      }

      if (v4 == v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (v3 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = __OFADD__(v6++, 1);
      if (v7)
      {
        goto LABEL_21;
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v9 = *(v5 + 16);
        result = REEntityGetComponentCount();
        if (v3 >= result)
        {
          break;
        }

        result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
        if (result)
        {
          break;
        }

        ++v3;
      }

      if (v3 == v4)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t Entity.ComponentSet.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  type metadata accessor for __ServiceLocator();
  v6 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 80, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  v7 = *(v5 + 16);
  ComponentAtIndex = REEntityGetComponentAtIndex();
  Class = REComponentGetClass();
  swift_beginAccess();
  v10 = *(v30 + 16);
  swift_beginAccess();
  v11 = *(v10 + 24);
  if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v13 & 1) == 0))
  {
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v20 & 1) != 0))
    {
      v28 = *(*(v18 + 56) + 16 * v19);
      swift_endAccess();
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v22 = Object;
        v23 = *(v30 + 16);
        swift_beginAccess();
        v24 = v28;
        if (!*(*(v23 + 16) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v28), v24 = v28, (v25 & 1) == 0))
        {
          v26 = *(*(&v24 + 1) + 32);
          *(a2 + 24) = v24;
          __swift_allocate_boxed_opaque_existential_1(a2);
          v26(v22);
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    while (1)
    {
LABEL_15:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v14 = *(v11 + 56) + 80 * v12;
  if (*(v14 + 48) != 2)
  {
    goto LABEL_15;
  }

  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v29[0] = ComponentAtIndex;
  v17 = *(v16 + 64);
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  __swift_allocate_boxed_opaque_existential_1(a2);
  v17(v29, v15, v16);
}

void *Entity.ComponentSet.Indices.index(after:)@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 16);

    while (v4 < REEntityGetComponentCount() && (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)() & 1) == 0)
    {
      ++v4;
      v7 = *(v5 + 16);
    }

    *a2 = v4;
  }

  return result;
}

uint64_t Entity.ComponentSet.Indices.formIndex(after:)(uint64_t result)
{
  v2 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *v1;
    while (1)
    {
      v5 = *(v4 + 16);
      result = REEntityGetComponentCount();
      if (v2 >= result)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
      if (result)
      {
        break;
      }

      ++v2;
    }

    *v3 = v2;
  }

  return result;
}

uint64_t Entity.ComponentSet.Indices.distance(from:to:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v8[0] = *a1;
  v8[1] = v4;
  v7 = v3;

  v5 = Entity.ComponentSet.distance(from:to:)(v8, &v7);

  return v5;
}

uint64_t *Entity.ComponentSet.Indices.subscript.getter@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = v2[2];
  if (*result >= v2[1])
  {
    v7 = __OFSUB__(v5, v4);
    v6 = v5 - v4 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  if (v6 != v7)
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2;
    a2[1] = v3;
    a2[2] = v4;
  }

  return result;
}

uint64_t Entity.ComponentSet.Indices.indices.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance Entity.ComponentSet.Indices@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = v2[2];
  if (*result >= v2[1])
  {
    v7 = __OFSUB__(v5, v4);
    v6 = v5 - v4 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  if (v6 != v7)
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2;
    a2[1] = v3;
    a2[2] = v4;
  }

  return result;
}