uint64_t specialized static Entity.__load(contentsOf:withName:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v81 = a4;
  v77 = a2;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v83 = *(Information - 8);
  v84 = Information;
  v6 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](Information);
  v80 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v75[-v12];
  v88 = type metadata accessor for DispatchPredicate();
  v13 = *(v88 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Trace = type metadata accessor for LoadTrace(0);
  v18 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v20 = &v75[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = specialized static __ServiceLocator.shared.getter();
  v22 = *(*(v21 + 168) + 24);

  v107 = a1;
  v23 = URL.lastPathComponent.getter();
  v87 = v20;
  v85 = v22;
  LoadTracer.beginLoad(loadType:logMsgTarget:)(1, v23, v24, v20);

  if (one-time initialization token for synchronousLoadOptions != -1)
  {
    swift_once();
  }

  v25 = static Entity.synchronousLoadOptions;
  v26 = URL.absoluteString.getter();
  v28 = v27;
  swift_beginAccess();
  v29 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v26;
  *(inited + 24) = v28;
  v76 = v25;
  *(inited + 32) = v25;
  *(inited + 33) = v29;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  v31 = *(*(v21 + 168) + 32);
  swift_beginAccess();
  v32 = *(v21 + 24);
  swift_unownedRetainStrong();
  v33 = *(v32 + 32);

  v34 = v33;

  *v16 = v34;
  v35 = v88;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v88);
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v35);
  if (v32)
  {
    type metadata accessor for RealityFileLoadInformationResolver();
    v37 = v86;
    v38 = v107;
    static RealityFileLoadInformationResolver.resolve(url:)(v107, v86);
    v39 = v82;
    outlined init with copy of [String : String](v37, v82, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    v40 = v84;
    if ((*(v83 + 48))(v39, 1, v84) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v39, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
      swift_beginAccess();
      outlined init with copy of [String : String](v21 + 176, &v105, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      if (v106)
      {
        outlined init with take of ForceEffectBase(&v105, &v93);
        v41 = *v95;
        __swift_project_boxed_opaque_existential_1(&v93, v95[0]);
        if ((*(*(&v41 + 1) + 24))(v38, v41, *(&v41 + 1)))
        {
          v84 = inited;
          v88 = v21;
          v42 = *(v81 + 80);
          if (v42)
          {
            v43 = v42 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
            *v43 = 1;
            *(v43 + 8) = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          v44 = swift_initStackObject();
          *(v44 + 16) = xmmword_1C18CF0C0;
          *(v44 + 32) = 1701869940;
          v45 = MEMORY[0x1E69E6158];
          *(v44 + 40) = 0xE400000000000000;
          *(v44 + 48) = 0x6D6F724664616F4CLL;
          *(v44 + 56) = 0xEB000000004C5255;
          *(v44 + 72) = v45;
          *(v44 + 80) = 0x73746E65746E6F63;
          *(v44 + 88) = 0xEA0000000000664FLL;
          v46 = type metadata accessor for URL();
          *(v44 + 120) = v46;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v44 + 96));
          (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v38, v46);
          *(v44 + 128) = 0x656D614E68746977;
          *(v44 + 136) = 0xE800000000000000;
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v49 = v78;
          *(v44 + 144) = v77;
          *(v44 + 152) = v49;
          *(v44 + 168) = v48;
          *(v44 + 176) = 0xD000000000000015;
          *(v44 + 184) = 0x80000001C18ED680;
          v50 = MEMORY[0x1E69E6370];
          *(v44 + 192) = static RKARSystemCore.generateDecimatedMeshes;
          *(v44 + 216) = v50;
          *(v44 + 224) = 0xD000000000000018;
          *(v44 + 232) = 0x80000001C18EDE40;
          v51 = v81;
          *(v44 + 240) = *(v81 + 49);
          *(v44 + 264) = v50;
          *(v44 + 272) = 0x694C79726F6D656DLL;
          *(v44 + 280) = 0xEB0000000074696DLL;
          v52 = *(v51 + 56);
          v53 = *(v51 + 64);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
          *(v44 + 288) = v52;
          *(v44 + 296) = v53;
          *(v44 + 312) = v54;
          strcpy((v44 + 320), "featuresToSkip");
          *(v44 + 335) = -18;
          v55 = *(v51 + 68);
          *(v44 + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
          *(v44 + 336) = v55;

          v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v44);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
          swift_arrayDestroy();
          Error = v95[1];
          v57 = v95[0];
          __swift_project_boxed_opaque_existential_1(&v93, v95[0]);
          v59 = v79;
          v60 = (*(Error + 4))(v56, v57, Error);
          if (v59)
          {

            outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
            outlined destroy of LoadTrace(v87, type metadata accessor for LoadTrace);
          }

          else
          {
            Error = v60;

            specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(Error);
            specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(Error, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
            v74 = v87;
            LoadTracer.endLoad(of:with:)(Error, v87);

            outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
            outlined destroy of LoadTrace(v74, type metadata accessor for LoadTrace);
          }

          __swift_destroy_boxed_opaque_existential_1(&v93);
          return Error;
        }

        __swift_destroy_boxed_opaque_existential_1(&v93);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(&v105, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      }

      Error = type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
      swift_allocError();
      v71 = v70;
      *v70 = URL.absoluteString.getter();
      v71[1] = v72;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
      outlined destroy of LoadTrace(v87, type metadata accessor for LoadTrace);
    }

    else
    {
      Error = v80;
      outlined init with take of RealityFileLoadInformation(v39, v80, type metadata accessor for RealityFileLoadInformation);
      v99 = 256;
      v94 = 0u;
      memset(v95, 0, sizeof(v95));
      v102 = 0;
      v103 = 0;
      LOBYTE(v93) = 2;
      v61 = v40;
      v62 = v81;
      outlined assign with copy of __DownsamplingStrategy?(v81, &v95[1]);
      v96 = *(v62 + 40);
      v97 = v77;
      v98 = v78;
      v101 = v76 != 2;
      v100 = (v76 & 0xFE) != 2;
      v104 = *(v62 + 80);
      v63 = &Error[*(v61 + 20)];
      v65 = *v63;
      v64 = v63[1];

      v66 = v65;
      v67 = v79;
      __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(Error, v66, v64, &v93, &v105);
      if (v67)
      {

        outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
        outlined destroy of LoadTrace(v87, type metadata accessor for LoadTrace);
        outlined destroy of LoadTrace(Error, type metadata accessor for RealityFileLoadInformation);
      }

      else
      {
        outlined init with copy of __REAssetService(&v105, &v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
        swift_dynamicCast();
        v68 = v90;
        v69 = v91;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        Error = (*(v69 + 8))(v68, v69);
        __swift_destroy_boxed_opaque_existential_1(v89);
        specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(Error);
        v73 = v87;
        LoadTracer.endLoad(of:with:)(Error, v87);

        __swift_destroy_boxed_opaque_existential_1(&v105);
        outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
        outlined destroy of LoadTrace(v73, type metadata accessor for LoadTrace);
        outlined destroy of LoadTrace(v80, type metadata accessor for RealityFileLoadInformation);
      }

      outlined destroy of __REAssetBundle.LoadOptions(&v93);
    }

    return Error;
  }

  __break(1u);
  return result;
}

_BYTE *specialized static Entity.__loadAnchor(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v56 = a2;
  v80 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  Error = &v53 - v7;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v59 = *(Information - 8);
  v60 = Information;
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](Information);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = specialized static __ServiceLocator.shared.getter();
  v18 = *(*(v17 + 168) + 32);
  swift_beginAccess();
  v19 = *(v17 + 24);
  swift_unownedRetainStrong();
  v20 = *(v19 + 32);

  v61 = v18;

  v21 = v20;

  *v16 = v21;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v21)
  {
    v54 = a4;
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = static Entity.synchronousLoadOptions;
  v23 = v80;
  v24 = URL.absoluteString.getter();
  v26 = v25;
  swift_beginAccess();
  v27 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v24;
  *(inited + 24) = v26;
  *(inited + 32) = v22;
  *(inited + 33) = v27;
  *(inited + 34) = 1;
  *(inited + 36) = 4;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v17 + 176, &v78, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (v79)
  {
    outlined init with take of ForceEffectBase(&v78, &v66);
    v29 = *v68;
    __swift_project_boxed_opaque_existential_1(&v66, v68[0]);
    if ((*(*(&v29 + 1) + 24))(v23, v29, *(&v29 + 1)))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_1C189FFC0;
      *(v30 + 32) = 1701869940;
      v31 = MEMORY[0x1E69E6158];
      *(v30 + 40) = 0xE400000000000000;
      *(v30 + 48) = 0xD000000000000011;
      *(v30 + 56) = 0x80000001C18EDF40;
      *(v30 + 72) = v31;
      *(v30 + 80) = 0x73746E65746E6F63;
      *(v30 + 88) = 0xEA0000000000664FLL;
      v32 = type metadata accessor for URL();
      *(v30 + 120) = v32;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v30 + 96));
      (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v23, v32);
      *(v30 + 128) = 0x656D614E68746977;
      *(v30 + 136) = 0xE800000000000000;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v35 = v57;
      *(v30 + 144) = v56;
      *(v30 + 152) = v35;
      *(v30 + 168) = v34;
      *(v30 + 176) = 0xD000000000000015;
      *(v30 + 184) = 0x80000001C18ED680;
      v36 = static RKARSystemCore.generateDecimatedMeshes;
      *(v30 + 216) = MEMORY[0x1E69E6370];
      *(v30 + 192) = v36;

      v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v30);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      v38 = v68[1];
      Error = v68[0];
      __swift_project_boxed_opaque_existential_1(&v66, v68[0]);
      v39 = v58;
      (*(v38 + 32))(v37, Error, v38);

      if (!v39)
      {
        type metadata accessor for AnchorEntity();
        Error = swift_dynamicCastClassUnconditional();
        specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(Error, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
      }

      __swift_destroy_boxed_opaque_existential_1(&v66);
      return Error;
    }

    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v78, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  }

  type metadata accessor for RealityFileLoadInformationResolver();
  static RealityFileLoadInformationResolver.resolve(url:)(v80, Error);
  v40 = v60;
  if ((*(v59 + 48))(Error, 1, v60) == 1)
  {
    outlined destroy of BodyTrackingComponent?(Error, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    Error = type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    v42 = v41;
    *v41 = URL.absoluteString.getter();
    v42[1] = v43;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v44 = v55;
    outlined init with take of RealityFileLoadInformation(Error, v55, type metadata accessor for RealityFileLoadInformation);
    v72 = 256;
    v67 = 0u;
    memset(v68, 0, sizeof(v68));
    v69 = 0;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    LOBYTE(v66) = 2;
    outlined assign with copy of __DownsamplingStrategy?(v54, &v68[1]);
    v70 = v56;
    v71 = v57;
    v74 = v22 != 2;
    v73 = (v22 & 0xFE) != 2;
    v45 = (v44 + *(v40 + 20));
    v47 = *v45;
    v46 = v45[1];

    v48 = v47;
    v49 = v58;
    __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(v44, v48, v46, &v66, &v78);
    if (!v49)
    {
      outlined init with copy of __REAssetService(&v78, &v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
      swift_dynamicCast();
      v50 = v63;
      v51 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      Error = (*(v51 + 16))(v50, v51);
      __swift_destroy_boxed_opaque_existential_1(v62);
      specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(Error);
      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    outlined destroy of LoadTrace(v44, type metadata accessor for RealityFileLoadInformation);
    outlined destroy of __REAssetBundle.LoadOptions(&v66);
  }

  return Error;
}

uint64_t partial apply for closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(a1, a2, v2 + 16, *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_32Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void, void, void, void, unint64_t, void))
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return a3(a1, a2, v3 + v8, *(v3 + v9), *(v3 + v9 + 8), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8), *(v3 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t specialized static Entity.loadModelAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = static RKARSystemCore.generateDecimatedMeshes;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v15 = 0;
  v16 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v9, v11);
  v13 = 0;
  v14 = v6;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v9[0]) = static Entity.asynchronousLoadOptions;
  v7 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(a1, a2, a3, v11);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

unint64_t specialized static Entity.loadModel(contentsOf:withName:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v12 = *(v11 + 24);
  swift_unownedRetainStrong();
  v13 = *(v12 + 32);

  v14 = v13;

  *v10 = v14;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = static Entity.synchronousLoadOptions;
  v16 = URL.absoluteString.getter();
  v18 = v17;
  swift_beginAccess();
  v19 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v16;
  *(inited + 24) = v18;
  *(inited + 32) = v15;
  *(inited + 33) = v19;
  *(inited + 34) = 256;
  *(inited + 36) = 2;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v11 + 176, &v48, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v49)
  {
    outlined destroy of BodyTrackingComponent?(&v48, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_12:
    Error = type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    v41 = v40;
    *v40 = URL.absoluteString.getter();
    v41[1] = v42;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return Error;
  }

  outlined init with take of ForceEffectBase(&v48, v50);
  v21 = v51;
  v22 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  if (((*(v22 + 24))(a1, v21, v22) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    goto LABEL_12;
  }

  v23 = *(a4 + 80);
  if (v23)
  {
    v24 = v23 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v24 = 1;
    *(v24 + 8) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1C18CF0C0;
  *(v25 + 32) = 1701869940;
  v26 = MEMORY[0x1E69E6158];
  *(v25 + 40) = 0xE400000000000000;
  *(v25 + 48) = 0xD000000000000010;
  *(v25 + 56) = 0x80000001C18EDEE0;
  *(v25 + 72) = v26;
  *(v25 + 80) = 0x73746E65746E6F63;
  *(v25 + 88) = 0xEA0000000000664FLL;
  v27 = type metadata accessor for URL();
  *(v25 + 120) = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 96));
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, a1, v27);
  *(v25 + 128) = 0x656D614E68746977;
  *(v25 + 136) = 0xE800000000000000;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v30 = v47;
  *(v25 + 144) = v46;
  *(v25 + 152) = v30;
  *(v25 + 168) = v29;
  *(v25 + 176) = 0xD000000000000015;
  *(v25 + 184) = 0x80000001C18ED680;
  v31 = MEMORY[0x1E69E6370];
  *(v25 + 192) = static RKARSystemCore.generateDecimatedMeshes;
  *(v25 + 216) = v31;
  *(v25 + 224) = 0xD000000000000018;
  *(v25 + 232) = 0x80000001C18EDE40;
  *(v25 + 240) = *(a4 + 49);
  *(v25 + 264) = v31;
  *(v25 + 272) = 0x694C79726F6D656DLL;
  *(v25 + 280) = 0xEB0000000074696DLL;
  v32 = *(a4 + 56);
  v33 = *(a4 + 64);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(v25 + 288) = v32;
  *(v25 + 296) = v33;
  *(v25 + 312) = v34;
  strcpy((v25 + 320), "featuresToSkip");
  *(v25 + 335) = -18;
  v35 = *(a4 + 68);
  *(v25 + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(v25 + 336) = v35;

  Error = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v37 = v51;
  v38 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v39 = v53;
  (*(v38 + 32))(Error, v37, v38);
  if (v39)
  {
  }

  else
  {

    type metadata accessor for ModelEntity();
    v44 = swift_dynamicCastClass();
    if (v44)
    {
      Error = v44;
      specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v44, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
      swift_setDeallocating();
      v45 = *(inited + 24);

      swift_weakDestroy();

      __swift_destroy_boxed_opaque_existential_1(v50);
      return Error;
    }

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return Error;
}

uint64_t specialized static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v33 = a1;
  v34 = type metadata accessor for URL();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = specialized static __ServiceLocator.shared.getter();
  v11 = *(*(v10 + 168) + 16);
  swift_beginAccess();
  v12 = *(v10 + 24);
  swift_unownedRetainStrong();
  v13 = *(v12 + 32);

  v31 = v11;
  v14 = v13;

  v15 = *(*(v10 + 168) + 32);
  *v9 = v14;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v16 = v14;

  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    outlined init with copy of [String : String](v32, v35, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v18 = v34;
    (*(v2 + 16))(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v34);
    v19 = (*(v2 + 80) + 64) & ~*(v2 + 80);
    v20 = (v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = v35[1];
    *(v21 + 16) = v35[0];
    *(v21 + 32) = v22;
    *(v21 + 48) = v36;
    *(v21 + 56) = v15;
    (*(v2 + 32))(v21 + v19, v4, v18);
    *(v21 + v20) = v16;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCySayAA6EntityCGGMd, &_s10RealityKit11LoadRequestCySayAA6EntityCGGMR);
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySay0A3Kit6EntityCGs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySay0A3Kit6EntityCGs5Error_pGSgGMR);
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v24 + 16) = v25;
    *(v24 + 24) = 0;
    *(v24 + 32) = -1;
    *(v23 + 16) = v24;
    v26 = swift_allocObject();
    v26[2] = partial apply for closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:);
    v26[3] = v21;
    v26[4] = v24;
    v26[5] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySay10RealityKit6EntityCGs5Error_pGMd, &_s7Combine6FutureCySay10RealityKit6EntityCGs5Error_pGMR);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();

    v30 = Future.init(_:)();

    *(v23 + 24) = v30;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Entity.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  type metadata accessor for MainActor();
  v4[36] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[37] = v6;
  v4[38] = v5;

  return MEMORY[0x1EEE6DFA0](specialized Entity.init(named:in:), v6, v5);
}

uint64_t specialized Entity.init(named:in:)()
{
  v1 = *(v0 + 272);
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
  *(v0 + 56) = 0;
  swift_beginAccess();
  *(v0 + 64) = static RKARSystemCore.generateDecimatedMeshes;
  Statistics = type metadata accessor for Entity.LoadStatistics();
  v3 = *(Statistics + 48);
  v4 = *(Statistics + 52);
  v5 = swift_allocObject();
  Date.init()();
  v6 = v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v6 = 0;
  *(v6 + 8) = 2;
  *(v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 1;
  v7 = (v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x80000001C18EDEA0;
  *(v0 + 96) = v5;
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 312) = v9;
  *v9 = v0;
  v9[1] = specialized Entity.init(named:in:);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);

  return Entity.init(named:in:options:)(v13, v12, v10, v0 + 104);
}

{
  v1 = v0[36];

  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v2 = v0[1];
  v3 = v0[41];

  return v2(v3);
}

{
  v1 = v0[36];

  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v2 = v0[1];
  v3 = v0[40];

  return v2();
}

uint64_t specialized Entity.init(named:in:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v7 = v4[37];
    v8 = v4[38];
    v9 = specialized Entity.init(named:in:);
  }

  else
  {
    v4[41] = a1;
    v7 = v4[37];
    v8 = v4[38];
    v9 = specialized Entity.init(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t closure #1 in static Entity.loadReferences(root:)partial apply(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in static Entity.loadReferences(root:)(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures()
{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.__LoadOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for Entity.__LoadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.__AsyncLoadOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 2;
  }

  else
  {
    v7 = -3;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

void type metadata completion function for Entity.LoadError()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (String, String)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata completion function for RealityFileLoadInformation()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t outlined init with take of RealityFileLoadInformation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of __REAnchoringType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(a1, a2 & 1);
}

void partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(char a1)
{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_198, &unk_1F411D858, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_205);
}

{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_261, &unk_1F411DB78, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_268);
}

{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_323_0, &unk_1F411DE48, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_330);
}

{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_401, &unk_1F411E1E0, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_408);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(uint64_t a1, char a2)
{
  return closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120), specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
}

{
  return specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120));
}

{
  return closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120), specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
}

{
  return closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120), specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
}

uint64_t objectdestroy_213Tm()
{
  outlined consume of Data._Representation(v0[3], v0[4]);
  v1 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v2 = v0[17];

  v3 = v0[18];

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t objectdestroy_234Tm()
{
  v1 = v0[2];

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  }

  v2 = v0[13];

  v3 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t partial apply for specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)()
{
  return partial apply for specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:));
}

{
  return partial apply for specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:));
}

uint64_t objectdestroy_188Tm()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  return specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(a1);
}

{
  v2 = *(v1 + 16);
  return specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(a1);
}

uint64_t partial apply for closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 56);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(a1, a2, v2 + 16, v8, v2 + v6, v9, v10);
}

uint64_t partial apply for doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 56);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(v0 + 16, v4, v0 + v2, v5, v7, v8);
}

void partial apply for closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + v8, *(v2 + v9), (v2 + v10));
}

uint64_t partial apply for closure #1 in doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)()
{
  v1 = v0[8];
  v2 = v0[9];
  return closure #1 in doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)(v0 + 2, v0[7]);
}

uint64_t partial apply for doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)()
{
  v1 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(v0 + 16, *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_339Tm()
{
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  v3 = *(v0 + 160);

  v4 = *(v0 + 176);

  v5 = *(v0 + 184);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t objectdestroy_356Tm()
{
  outlined consume of Data._Representation(v0[3], v0[4]);
  v1 = v0[6];

  v2 = v0[8];

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  }

  v3 = v0[19];

  v4 = v0[21];

  v5 = v0[22];

  v6 = v0[24];

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t objectdestroy_368Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_374Tm()
{
  outlined consume of Data._Representation(v0[3], v0[4]);
  v1 = v0[6];

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v2 = v0[17];

  v3 = v0[18];

  v4 = v0[20];

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t objectdestroy_380Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  v2 = v0[18];

  v3 = v0[20];

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t objectdestroy_228Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v2 = (*(v1 + 80) + 136) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  return doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + 40, *(v0 + 128), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t partial apply for closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(v0 + v2, *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v5), *(v0 + v6), *(v0 + v7), v0 + v8, *(v0 + v9), *(v0 + v10), *(v0 + v10 + 8), (v0 + v11));
}

uint64_t partial apply for postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, *(v1 + 16), *(v1 + 24), v1 + v4);
}

uint64_t objectdestroy_219Tm()
{
  v1 = (type metadata accessor for LoadTrace(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v5 + 32);

  v8 = v1[11];
  v9 = type metadata accessor for DispatchTime();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void partial apply for closure #1 in LoadTracer.subscribe<A>(to:with:)(uint64_t a1)
{
  v3 = *(type metadata accessor for LoadTrace(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in LoadTracer.subscribe<A>(to:with:)(a1, v1 + v4, v5);
}

uint64_t objectdestroy_222Tm()
{
  v1 = (type metadata accessor for LoadTrace(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v6 + 32);

  v9 = v1[11];
  v10 = type metadata accessor for DispatchTime();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v0 + v4);

  v12 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v2 | 7);
}

uint64_t partial apply for specialized closure #2 in LoadTracer.subscribe<A>(to:with:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for LoadTrace(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  return specialized closure #2 in LoadTracer.subscribe<A>(to:with:)(*a1, (v1 + v4));
}

uint64_t objectdestroy_669Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = v0[8];

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  }

  v2 = v0[19];

  v3 = v0[21];

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static Entity.loadReferences(root:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in closure #1 in static Entity.loadReferences(root:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_553Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t objectdestroy_581Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = v0[8];

  v2 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t BoundingBox.formUnion(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  result = REAABBExpandedToIncludePoint();
  *v0 = v4;
  v0[1] = v5;
  return result;
}

{
  v1 = *v0;
  v2 = v0[1];
  result = REAABBExpandedToIncludeBox();
  *v0 = v4;
  v0[1] = v5;
  return result;
}

double one-time initialization function for empty()
{
  result = 1.40444843e306;
  static BoundingBox.empty = xmmword_1C189A7F0;
  *algn_1EBEB1450 = xmmword_1C189A800;
  return result;
}

double static BoundingBox.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  return *&static BoundingBox.empty;
}

uint64_t BoundingBox.hash(into:)(uint64_t a1, double a2, __n128 a3)
{
  (specialized SIMD.hash(into:))();

  return specialized SIMD.hash(into:)(a1, a3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance BoundingBox.CodingKeys()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BoundingBox.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BoundingBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BoundingBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int BoundingBox.hashValue.getter(__n128 a1, __n128 a2)
{
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)(v5, a1);
  specialized SIMD.hash(into:)(v5, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BoundingBox()
{
  v2 = *v0;
  v3 = v0[1];
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)(v4, v2);
  specialized SIMD.hash(into:)(v4, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BoundingBox(uint64_t a1)
{
  v4 = v1[1];
  specialized SIMD.hash(into:)(a1, *v1);

  return specialized SIMD.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BoundingBox()
{
  v2 = *v0;
  v3 = v0[1];
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)(v4, v2);
  specialized SIMD.hash(into:)(v4, v3);
  return Hasher._finalize()();
}

uint64_t BoundingBox.union(_:)()
{
  return REAABBExpandedToIncludePoint();
}

{
  return REAABBExpandedToIncludeBox();
}

uint64_t BoundingBox.contains(_:)()
{
  return REAABBContainsPoint();
}

{
  return REAABBContainsBox();
}

Swift::Void __swiftcall BoundingBox.transform(by:)(simd_float4x4 *by)
{
  v2 = *v1;
  v3 = v1[1];
  REAABBTransform();
  *v1 = v4;
  v1[1] = v5;
}

uint64_t BoundingBox.encode(to:)(void *a1, __n128 a2, __n128 a3)
{
  v12 = a3;
  v13 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v13;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = v12;
    v15 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for Decodable.init(from:) in conformance BoundingBox@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = specialized BoundingBox.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t specialized static BoundingBox.== infix(_:_:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  if (vmovn_s32(vceqq_f32(a1, a3)).u8[0] & 1) != 0 && (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(a1, a1, 0xCuLL), a2, 8uLL), vextq_s8(vextq_s8(a3, a3, 0xCuLL), a4, 8uLL)))))
  {
    return vmovn_s32(vceqq_f32(a2, a4)).i8[4] & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

uint64_t specialized BoundingBox.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v11 = 0;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10[1] = v12;
    v11 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10[0] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type BoundingBox and conformance BoundingBox()
{
  result = lazy protocol witness table cache variable for type BoundingBox and conformance BoundingBox;
  if (!lazy protocol witness table cache variable for type BoundingBox and conformance BoundingBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox and conformance BoundingBox);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1()
{
  result = lazy protocol witness table cache variable for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1;
  if (!lazy protocol witness table cache variable for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AntialiasingMode and conformance AntialiasingMode()
{
  result = lazy protocol witness table cache variable for type AntialiasingMode and conformance AntialiasingMode;
  if (!lazy protocol witness table cache variable for type AntialiasingMode and conformance AntialiasingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AntialiasingMode and conformance AntialiasingMode);
  }

  return result;
}

void *specialized AssetServiceScopedRegistry.instance(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[3] = a3;
  v38[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v9 = *(a4 + 32);
  v10 = v9(a3, a4);
  v11 = *(a2 + 16);
  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v12 = *(a2 + 24);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    os_unfair_lock_unlock(v11 + 4);
    outlined init with copy of __REAssetService(v38, aBlock);
    type metadata accessor for __RealityFileURLResolver();
    v16 = swift_allocObject();
    v32 = v9;
    v17 = v34;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v34);
    v31 = v10;
    v19 = *(*(v17 - 1) + 64);
    MEMORY[0x1EEE9AC00](v18);
    v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21);
    v15 = specialized __RealityFileURLResolver.init(_:)(v21, v16, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    os_unfair_lock_lock(v11 + 4);
    swift_beginAccess();

    v23 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    v25 = v31;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v31, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v37;
    swift_endAccess();
    v32(a3, a4);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v25;
    v35 = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v36 = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v34 = &block_descriptor_46;
    v28 = _Block_copy(aBlock);

    REAssetManagerAddCleanupCallback();
    _Block_release(v28);
  }

  os_unfair_lock_unlock(v11 + 4);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v15;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static __SceneResource.fromCoreUnretained(_:)(uint64_t *a1)
{
  v1 = *a1;
  RERetain();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(char a1, _BYTE *a2, int a3)
{
  v33 = a3;
  v6 = specialized static __ServiceLocator.shared.getter();
  String.utf8CString.getter();

  v7 = RESceneCreate();

  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v30);
  v9 = v31;
  v8 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v8 + 32))(v9, v8);
  v10 = *(v3 + 16);
  v11 = RESceneLoadFromAsset();
  __swift_destroy_boxed_opaque_existential_1(v30);
  if ((v11 & 1) == 0)
  {
    RERelease();

    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    lazy protocol witness table accessor for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError();
    swift_allocError();
    v23 = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v24 - 8) + 56))(v23, 1, 2, v24);
    swift_willThrow();
    return v8;
  }

  type metadata accessor for Scene();
  swift_allocObject();
  v12 = Scene.init(coreScene:)(v7);
  RERelease();

  v13 = *(v12 + 16);
  EntitiesArray = RESceneGetEntitiesArray();
  if (v14 != 1)
  {
    v16 = v14;
    v8 = static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E6530];
    *(v17 + 16) = xmmword_1C1887600;
    v19 = MEMORY[0x1E69E65A8];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = v16;
    type metadata accessor for OS_os_log();
    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    if (!v16)
    {
      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      lazy protocol witness table accessor for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError();
      swift_allocError();
      v28 = v27;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v29 - 8) + 56))(v28, 1, 2, v29);
      swift_willThrow();

      return v8;
    }
  }

  v21 = *EntitiesArray;
  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    *a2 = 1;
    if (a1)
    {
LABEL_6:
      REAnchoringComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      goto LABEL_11;
    }
  }

  else
  {
    *a2 = 0;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REEntityRemoveComponent();
  }

LABEL_11:
  REAnchorComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REEntityRemoveComponent();
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v25 = swift_dynamicCastClassUnconditional();
    goto LABEL_20;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    if (v33)
    {
      REAnchoringComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        type metadata accessor for AnchorEntity();
        v8 = swift_allocObject();
        *(v8 + 16) = v21;
        MEMORY[0x1C68F9740](v21, v8);
LABEL_21:
        REEntitySetParent();

        return v8;
      }
    }

    v25 = makeEntity(for:)(v21);
LABEL_20:
    v8 = v25;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t __SceneResource.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t __SceneResource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t __SceneResource.coreHandle.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[3] = MEMORY[0x1E69E6B70];
  v7[0] = v3;
  outlined init with copy of Any(v7, v6);
  swift_dynamicCast();
  *a1 = v5;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t static __SceneResource.fromCoreRetained(_:)(uint64_t *a1)
{
  v1 = *a1;
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t __SceneResource.makeScene(named:)()
{
  v1 = specialized static __ServiceLocator.shared.getter();
  String.utf8CString.getter();

  v2 = RESceneCreate();

  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v4 + 32))(v3, v4);
  v5 = *(v0 + 16);
  v6 = RESceneLoadFromAsset();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v6)
  {
    type metadata accessor for Scene();
    swift_allocObject();
    v7 = Scene.init(coreScene:)(v2);
    RERelease();

    return v7;
  }

  else
  {
    RERelease();

    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError()
{
  result = lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError;
  if (!lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError)
  {
    type metadata accessor for SceneResourceLoadResult.InternalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError);
  }

  return result;
}

uint64_t PhysicallyBasedMaterial.normal.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(v1, v21);
  v3 = v21[4];

  v4 = v3;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v4, v14);
  if (v15 == 255)
  {
    __MaterialResource.subscript.getter(&v16);
  }

  else
  {
    v16 = v14[0];
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    v20 = v15;
  }

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v9 = v16;
  v10 = v17;
  v5 = 0uLL;
  if (v20 == 255)
  {
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v5 = 0uLL;
LABEL_8:
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = DWORD2(v10);
  v7 = v10;
  v5 = v9;
LABEL_9:
  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return outlined destroy of PhysicallyBasedMaterial(v21);
}

void PhysicallyBasedMaterial.blending.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 106))
  {
    v11 = &type metadata for PhysicallyBasedMaterial;
    v12 = &protocol witness table for PhysicallyBasedMaterial;
    v10[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v10[0] + 16);
    PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(v10, &v13);
    if (RELinkedOnOrAfterFall2024OSVersions())
    {
      v3 = v13;
    }

    else
    {
      v11 = &type metadata for PhysicallyBasedMaterial;
      v12 = &protocol witness table for PhysicallyBasedMaterial;
      v10[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v1, v10[0] + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v9, v10, 0, 0);
      v4 = v9[0];
      outlined consume of MaterialParameters.Texture?(v9[1], v9[2]);
      Alpha = CGColorGetAlpha(v4);

      v6 = Alpha;
      v3 = v6;
    }

    v7 = v15;
    v8 = v16;
    *a1 = LODWORD(v3);
    *(a1 + 8) = v14;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = xmmword_1C1887610;
    *(a1 + 32) = 0;
  }
}

uint64_t PhysicallyBasedMaterial.ambientOcclusion.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(v1, v21);
  v3 = v21[4];

  v4 = v3;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v4, v14);
  if (v15 == 255)
  {
    __MaterialResource.subscript.getter(&v16);
  }

  else
  {
    v16 = v14[0];
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    v20 = v15;
  }

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v9 = v16;
  v10 = v17;
  v5 = 0uLL;
  if (v20 == 255)
  {
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v5 = 0uLL;
LABEL_8:
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = DWORD2(v10);
  v7 = v10;
  v5 = v9;
LABEL_9:
  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return outlined destroy of PhysicallyBasedMaterial(v21);
}

void PhysicallyBasedMaterial.sheen.getter(uint64_t a1@<X8>)
{
  if ((*(v1 + 106) & 0x800) != 0)
  {
    v7[3] = &type metadata for PhysicallyBasedMaterial;
    v7[4] = &protocol witness table for PhysicallyBasedMaterial;
    v7[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v7[0] + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v7, &v8);
    v3 = v8;
    v6 = v9;
    v4 = v10;
    v5 = v11;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t PhysicallyBasedMaterial.roughness.getter(uint64_t (*a1)(void *, void, void))
{
  v4[3] = &type metadata for PhysicallyBasedMaterial;
  v4[4] = &protocol witness table for PhysicallyBasedMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v4[0] + 16);
  return a1(v4, 0, 0);
}

float PhysicallyBasedMaterial.emissiveIntensity.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v4 = v0[4];

  v5 = v4;

  specialized String.withCString<A>(_:)(0x6576697373696D65, 0xED0000656C616353, v5, v11);
  if (v12 == 255)
  {
    v6 = *v0;
    __MaterialResource.subscript.getter(&v13);
  }

  else
  {
    v13 = v11[0];
    v14 = v11[1];
    v15 = v11[2];
    v16 = v11[3];
    v17 = v12;
  }

  v9[2] = v15;
  v9[3] = v16;
  v10 = v17;
  v9[0] = v13;
  v9[1] = v14;
  v7 = 0.0;
  if (v17 != 255)
  {
    if (v17 == 2)
    {
      v7 = *v9;
    }

    outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  return v7;
}

uint64_t PhysicallyBasedMaterial.baseColor.getter(uint64_t (*a1)(void *, void, void))
{
  v4[3] = &type metadata for PhysicallyBasedMaterial;
  v4[4] = &protocol witness table for PhysicallyBasedMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v4[0] + 16);
  return a1(v4, 0, 0);
}

void PhysicallyBasedMaterial.faceCulling.getter(char *a1@<X8>)
{
  v2 = 2;
  if ((*(v1 + 88) & 1) == 0)
  {
    if (*(v1 + 80) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 80);
    }
  }

  *a1 = v2;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c49Foundation11ShaderCacheC11getResourcey0A3Kit010__e11F0CxKFyAG04g2H8H6VXEfU_AF15BuildParametersVTf1cn_nTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, _BYTE *, uint64_t))
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v6 == 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14[0] = *a1;
  v15 = v9;
  v16 = v5;
  v17 = v10;
  v18 = v11;

  v12 = v11;
  a3(&v19, v14, a2);
  if (!v4)
  {

    return v6 == 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Material.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  if (v6 == 255)
  {
    v12 = *(v3 + 32);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v13 = *(v3 + 32);
      v14 = REMaterialParameterBlockValueCopy();

      *(v3 + 32) = v14;
    }

    specialized String.withCString<A>(_:)(a2, a3, v3 + 8);
  }

  else
  {
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v8 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v8;
    v16 = v6;
    v10 = String.utf8CString.getter();

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v10 + 32), v15);

    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }
}

{
  v6 = *(a1 + 64);
  if (v6 == 255)
  {
    v12 = *(v3 + 72);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v13 = *(v3 + 72);
      v14 = REMaterialParameterBlockValueCopy();

      *(v3 + 72) = v14;
    }

    specialized String.withCString<A>(_:)(a2, a3, v3 + 48);
  }

  else
  {
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v8 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v8;
    v16 = v6;
    v10 = String.utf8CString.getter();

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v10 + 32), v15);

    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }
}

uint64_t specialized Material.setUVTransform(_:withSuffix:)(uint64_t a1, uint64_t a2, double a3, double a4, float a5)
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  v9 = *(v5 + 32);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v11 = *(v5 + 32);
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v12 = *(v5 + 32);
    v13 = REMaterialParameterBlockValueCopy();

    *(v5 + 32) = v13;
  }

  REMaterialParameterBlockValueSetFloat2();

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  v14 = *(v5 + 32);
  v15 = swift_isUniquelyReferenced_nonNull();
  v16 = *(v5 + 32);
  if ((v15 & 1) == 0)
  {
    v17 = *(v5 + 32);
    v18 = REMaterialParameterBlockValueCopy();

    *(v5 + 32) = v18;
  }

  __sincosf_stret(a5);
  REMaterialParameterBlockValueSetFloat4();
}

{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  v9 = *(v5 + 72);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v11 = *(v5 + 72);
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v12 = *(v5 + 72);
    v13 = REMaterialParameterBlockValueCopy();

    *(v5 + 72) = v13;
  }

  REMaterialParameterBlockValueSetFloat2();

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  v14 = *(v5 + 72);
  v15 = swift_isUniquelyReferenced_nonNull();
  v16 = *(v5 + 72);
  if ((v15 & 1) == 0)
  {
    v17 = *(v5 + 72);
    v18 = REMaterialParameterBlockValueCopy();

    *(v5 + 72) = v18;
  }

  __sincosf_stret(a5);
  REMaterialParameterBlockValueSetFloat4();
}

uint64_t PhysicallyBasedMaterial.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = a2[2];
  v7 = a2[3];
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 106) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1;
  *(a3 + 121) = 514;
  *(a3 + 136) = 0;
  *(a3 + 144) = 257;
  v8 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (v8)
  {
    v9 = v8;
    *a3 = v8;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    *(a3 + 24) = v6;
    *(a3 + 32) = v7;

    FeatureFlags = REMaterialAssetGetFeatureFlags();
    if ((FeatureFlags & 0x1000) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if ((FeatureFlags & 0x2000) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    *(a3 + 104) = 0;
    *(a3 + 106) = FeatureFlags;
    *(a3 + 112) = 0;
    *(a3 + 120) = 1;
    *(a3 + 121) = v11;
    *(a3 + 122) = v12;
    if ((FeatureFlags & 0x1001) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    type metadata accessor for PhysicallyBasedMaterial.Program();
    result = swift_allocObject();
    *(result + 16) = v13;
    *(result + 17) = 0;
    *(result + 24) = v9;
    *(a3 + 128) = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized MaterialWithBlendingInternal.blendingInternal.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v36 = &type metadata for PhysicallyBasedMaterial;
    v37 = &protocol witness table for PhysicallyBasedMaterial;
    v34 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v34 + 16);
    PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v34, &v38);
    v3 = v39;
    v4 = v40;
    if (v40 && v41)
    {
      v5 = *(v1 + 32);
      v6 = v39;

      if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
      {
        PhysicallyBasedMaterial.setMultiUVs(_:)(0);
      }

      outlined consume of MaterialParameters.Texture?(v3, v4);
    }

    v7 = *(v1 + 106);
    v8 = *(v1 + 112);
    v9 = *(v1 + 120);
    v10 = *(v1 + 121);
    v11 = *(v1 + 122);
    LOBYTE(v34) = *(v1 + 104);
    WORD1(v34) = v7 & 0xFFFE;
    *&v35 = v8;
    BYTE8(v35) = v9;
    BYTE9(v35) = v10;
    BYTE10(v35) = v11;
    LOBYTE(v30) = v34;
    WORD1(v30) = v7;
    *&v31 = v8;
    BYTE8(v31) = v9;
    BYTE9(v31) = v10;
    BYTE10(v31) = v11;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v30, &v34) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v34 | (WORD1(v34) << 16), v35, (BYTE9(v35) << 8) | (BYTE10(v35) << 16) | BYTE8(v35));
    }

    outlined consume of MaterialParameters.Texture?(v3, v4);
  }

  else
  {
    v12 = *a1;
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    v16 = *(a1 + 8);
    v38 = *a1;
    v39 = v16;
    v40 = v2;
    v41 = v13;
    v42 = v14;
    if (v2 && v13)
    {
      PhysicallyBasedMaterial.setMultiUVs(_:)(1);
    }

    else
    {
      v36 = &type metadata for PhysicallyBasedMaterial;
      v37 = &protocol witness table for PhysicallyBasedMaterial;
      v34 = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v1, v34 + 16);
      PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v34, &v30);
      v17 = v31;
      if (*(&v31 + 1))
      {
        if (v32)
        {
          v18 = *(v1 + 32);
          v19 = v31;

          if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
          {
            PhysicallyBasedMaterial.setMultiUVs(_:)(0);
          }

          outlined consume of MaterialParameters.Texture?(v17, *(&v17 + 1));
          v21 = v17 >> 64;
          v20 = v17;
        }

        else
        {
          v21 = *(&v31 + 1);
          v20 = v31;
        }
      }

      else
      {
        v20 = v31;
        v21 = 0;
      }

      outlined consume of MaterialParameters.Texture?(v20, v21);
    }

    specialized Material.setParameter<A>(_:alternateTintKey:)(&v38);
    if ((RELinkedOnOrAfterFall2024OSVersions() & 1) == 0)
    {
      v36 = &type metadata for PhysicallyBasedMaterial;
      v37 = &protocol witness table for PhysicallyBasedMaterial;
      v34 = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v1, v34 + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v30, &v34, 0, 0);
      v22 = v30;
      outlined consume of MaterialParameters.Texture?(v31, *(&v31 + 1));
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v22, v12);

      if (CopyWithAlpha)
      {
        v36 = &type metadata for PhysicallyBasedMaterial;
        v37 = &protocol witness table for PhysicallyBasedMaterial;
        v34 = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v1, v34 + 16);
        v24 = CopyWithAlpha;
        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v30, &v34, 0, 0);

        v34 = v24;
        v35 = v31;
        v36 = v32;
        LODWORD(v37) = v33;
        PhysicallyBasedMaterial.baseColor.setter(&v34);
      }
    }

    v25 = *(v1 + 106);
    v26 = *(v1 + 112);
    v27 = *(v1 + 120);
    v28 = *(v1 + 121);
    v29 = *(v1 + 122);
    LOBYTE(v34) = *(v1 + 104);
    WORD1(v34) = v25 | 1;
    *&v35 = v26;
    BYTE8(v35) = v27;
    BYTE9(v35) = v28;
    BYTE10(v35) = v29;
    LOBYTE(v30) = v34;
    WORD1(v30) = v25;
    *&v31 = v26;
    BYTE8(v31) = v27;
    BYTE9(v31) = v28;
    BYTE10(v31) = v29;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v30, &v34) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v34 | (WORD1(v34) << 16), v35, (BYTE9(v35) << 8) | (BYTE10(v35) << 16) | BYTE8(v35));
    }

    outlined destroy of PhysicallyBasedMaterial.Blending(a1);
  }
}

{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v34 = &type metadata for UnlitMaterial;
    v35 = &protocol witness table for UnlitMaterial;
    v32 = swift_allocObject();
    outlined init with copy of UnlitMaterial(v1, v32 + 16);
    PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v32, &v36);
    v3 = v37;
    v4 = v38;
    if (v38 && v39)
    {
      v5 = *(v1 + 72);
      v6 = v37;

      if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
      {
        UnlitMaterial.setMultiUVs(_:)(0);
      }

      outlined consume of MaterialParameters.Texture?(v3, v4);
    }

    v7 = *(v1 + 154);
    v8 = *(v1 + 156);
    v9 = *(v1 + 157);
    LOBYTE(v32) = *(v1 + 152);
    WORD1(v32) = v7 & 0xFFFE;
    BYTE4(v32) = v8;
    BYTE5(v32) = v9;
    LOBYTE(v28) = v32;
    WORD1(v28) = v7;
    BYTE4(v28) = v8;
    BYTE5(v28) = v9;
    if (!specialized static UnlitMaterial.UnlitShaderParameters.== infix(_:_:)(&v28, &v32))
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v32 | (WORD1(v32) << 16) | (BYTE4(v32) << 32) | (BYTE5(v32) << 40));
    }

    outlined consume of MaterialParameters.Texture?(v3, v4);
  }

  else
  {
    v10 = *a1;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v14 = *(a1 + 8);
    v36 = *a1;
    v37 = v14;
    v38 = v2;
    v39 = v11;
    v40 = v12;
    if (v2 && v11)
    {
      UnlitMaterial.setMultiUVs(_:)(1);
    }

    else
    {
      v34 = &type metadata for UnlitMaterial;
      v35 = &protocol witness table for UnlitMaterial;
      v32 = swift_allocObject();
      outlined init with copy of UnlitMaterial(v1, v32 + 16);
      PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v32, &v28);
      v15 = v29;
      if (*(&v29 + 1))
      {
        if (v30)
        {
          v16 = *(v1 + 72);
          v17 = v29;

          if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
          {
            UnlitMaterial.setMultiUVs(_:)(0);
          }

          outlined consume of MaterialParameters.Texture?(v15, *(&v15 + 1));
          v19 = v15 >> 64;
          v18 = v15;
        }

        else
        {
          v19 = *(&v29 + 1);
          v18 = v29;
        }
      }

      else
      {
        v18 = v29;
        v19 = 0;
      }

      outlined consume of MaterialParameters.Texture?(v18, v19);
    }

    specialized Material.setParameter<A>(_:alternateTintKey:)(&v36);
    if ((RELinkedOnOrAfterFall2024OSVersions() & 1) == 0)
    {
      v34 = &type metadata for UnlitMaterial;
      v35 = &protocol witness table for UnlitMaterial;
      v32 = swift_allocObject();
      outlined init with copy of UnlitMaterial(v1, v32 + 16);
      v20 = *(v1 + 80);
      v21 = *(v1 + 88);

      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v28, &v32, v20, v21);
      v22 = v28;
      outlined consume of MaterialParameters.Texture?(v29, *(&v29 + 1));
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v22, v10);

      if (CopyWithAlpha)
      {
        v34 = &type metadata for UnlitMaterial;
        v35 = &protocol witness table for UnlitMaterial;
        v32 = swift_allocObject();
        outlined init with copy of UnlitMaterial(v1, v32 + 16);

        v24 = CopyWithAlpha;
        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v28, &v32, v20, v21);

        v32 = v24;
        v33 = v29;
        v34 = v30;
        LODWORD(v35) = v31;
        UnlitMaterial.color.setter(&v32);
      }
    }

    v25 = *(v1 + 154);
    v26 = *(v1 + 156);
    v27 = *(v1 + 157);
    LOBYTE(v32) = *(v1 + 152);
    WORD1(v32) = v25 | 1;
    BYTE4(v32) = v26;
    BYTE5(v32) = v27;
    LOBYTE(v28) = v32;
    WORD1(v28) = v25;
    BYTE4(v28) = v26;
    BYTE5(v28) = v27;
    if (!specialized static UnlitMaterial.UnlitShaderParameters.== infix(_:_:)(&v28, &v32))
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v32 | (WORD1(v32) << 16) | (BYTE4(v32) << 32) | (BYTE5(v32) << 40));
    }

    outlined destroy of PhysicallyBasedMaterial.Blending(a1);
  }
}

uint64_t specialized ShaderCache.getResource(_:)(__int128 *a1)
{
  v3 = v1;
  v4 = a1[5];
  *&v51[48] = a1[4];
  *&v51[64] = v4;
  *&v51[80] = a1[6];
  *&v51[96] = *(a1 + 14);
  v5 = a1[1];
  v50 = *a1;
  *v51 = v5;
  v6 = a1[3];
  *&v51[16] = a1[2];
  *&v51[32] = v6;
  v7 = *(v1 + 56);
  v58 = *&v51[16];
  v59 = v6;
  v56 = v50;
  v57 = v5;
  v63 = *&v51[96];
  v61 = v4;
  v62 = *&v51[80];
  v60 = *&v51[48];

  v8 = specialized SharedCacheStorage.getResource(forKey:)(&v56);

  if (v8)
  {
    return v8;
  }

  v9 = CustomMaterial.CustomShaderParameters.materialPath.getter();
  v11 = v10;
  v12 = CustomMaterial.CustomShaderParameters.functionConstants.getter();
  outlined init with copy of __REAssetService(v3 + 16, v43);
  v13 = v44;
  v14 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v15 = __REAssetService.asset(_:)(v9, v11, v13, v14);
  if (v15)
  {
    v16 = v15;

    v17 = BYTE2(v57);
    v18 = WORD1(v56);
    v19 = v56;
    *(&v46 + 1) = v12;
    *&v47 = 0;
    BYTE8(v47) = 1;
    *&v46 = v16;
    v20 = MEMORY[0x1E69E7CC0];
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    *&v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(&v48 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v20);
    *&v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v20);
    __swift_destroy_boxed_opaque_existential_1(v43);
    BYTE14(v47) = v51[1];
    BYTE11(v47) = v17;
    BYTE9(v47) = (v18 & 0x400) != 0;
    BYTE10(v47) = (v18 & 0x800) != 0;
    BYTE12(v47) = (v18 & 0x4000) != 0;
    BYTE13(v47) = v19;
    v55[0] = *&v51[8];
    v55[1] = *&v51[24];
    v55[2] = *&v51[40];
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c49Foundation11ShaderCacheC11getResourcey0A3Kit010__e11F0CxKFyAG04g2H8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v55, &v46, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    v54[0] = *&v51[56];
    v54[1] = *&v51[72];
    v54[2] = *&v51[88];
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c49Foundation11ShaderCacheC11getResourcey0A3Kit010__e11F0CxKFyAG04g2H8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v54, &v46, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    v8 = type metadata accessor for __MaterialResource();
    v42[0] = v46;
    v42[1] = v47;
    v42[2] = v48;
    v42[3] = v49;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    outlined init with copy of __MaterialResource.BuildParameters(v42, &v31);
    static __MaterialResource.createMaterial(_:)(&v35, v39);
    if (v2)
    {
      v27 = v35;
      v28 = v36;
      v29 = v37;
      v30 = v38;
      outlined destroy of __MaterialResource.BuildParameters(&v27);
      v31 = v46;
      v32 = v47;
      v33 = v48;
      v34 = v49;
      outlined destroy of __MaterialResource.BuildParameters(&v31);
    }

    else
    {
      v31 = v35;
      v32 = v36;
      v33 = v37;
      v34 = v38;
      outlined destroy of __MaterialResource.BuildParameters(&v31);
      v21 = v40;
      v22 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v23 = (*(v22 + 8))(v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C1887600;
      *(v24 + 32) = v23;
      *(v24 + 56) = v8;
      *(v24 + 64) = &protocol witness table for __MaterialResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(v24);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v24 + 32));
      swift_deallocClassInstance();
      v25 = *(v3 + 56);
      v52[4] = *&v51[48];
      v52[5] = *&v51[64];
      v52[6] = *&v51[80];
      v53 = *&v51[96];
      v52[0] = v50;
      v52[1] = *v51;
      v52[2] = *&v51[16];
      v52[3] = *&v51[32];

      v8 = specialized SharedCacheStorage.addResource(value:forKey:)(v23, v52);

      v27 = v46;
      v28 = v47;
      v29 = v48;
      v30 = v49;
      outlined destroy of __MaterialResource.BuildParameters(&v27);
    }

    return v8;
  }

  __break(1u);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v9);
  swift_deallocClassInstance();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized ShaderCache.getResource(_:)(unint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 56);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v6 + 16);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 0xFFFFFFFF0001), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(v7 + 4);

  if (v11)
  {
    return v11;
  }

  v12 = 0xD00000000000002CLL;
  if ((a1 & 0x20000) != 0)
  {
    v13 = "utPbr.rematerialdefinition";
  }

  else if ((a1 & 0x10000) == 0 && BYTE4(a1) == 2)
  {
    v12 = 0xD000000000000021;
    v13 = "fail with the same error.";
  }

  else
  {
    v13 = "aterialdefinition";
  }

  v59 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMd, &_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1887600;
  *(v14 + 32) = 0x6C6E55686374614DLL;
  v15 = v14 + 32;
  *(v14 + 40) = 0xEF726F6C6F437469;
  *(v14 + 48) = (a1 >> 18) & 1;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v15, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMd, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMR);
  swift_deallocClassInstance();
  v33 = v4;
  outlined init with copy of __REAssetService(v4 + 16, v55);
  v16 = v56;
  v17 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v18 = __REAssetService.asset(_:)(v12, v13 | 0x8000000000000000, v16, v17);
  if (v18)
  {
    v19 = v18;

    v58 = 1;
    v20 = MEMORY[0x1E69E7CC0];
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v20);
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v20);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v11 = type metadata accessor for __MaterialResource();
    *&v51 = v19;
    *(&v51 + 1) = v35;
    *&v52 = 0;
    BYTE8(v52) = v58;
    *(&v52 + 9) = 0;
    *(&v52 + 11) = BYTE5(a1);
    BYTE13(v52) = a1 & 1;
    BYTE14(v52) = BYTE4(a1);
    *&v53 = v34;
    *(&v53 + 1) = v21;
    *&v54 = v22;
    *(&v54 + 1) = v20;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    outlined init with copy of __MaterialResource.BuildParameters(&v51, &v40);
    v23 = v11;
    v24 = v59;
    static __MaterialResource.createMaterial(_:)(&v44, v48);
    if (v24)
    {
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      outlined destroy of __MaterialResource.BuildParameters(&v36);
      *&v40 = v19;
      *(&v40 + 1) = v35;
      *&v41 = 0;
      BYTE8(v41) = v58;
      *(&v41 + 9) = 0;
      *(&v41 + 11) = BYTE5(a1);
      BYTE13(v41) = a1 & 1;
      BYTE14(v41) = BYTE4(a1);
      *&v42 = v34;
      *(&v42 + 1) = v21;
      *&v43 = v22;
      *(&v43 + 1) = MEMORY[0x1E69E7CC0];
      outlined destroy of __MaterialResource.BuildParameters(&v40);
    }

    else
    {
      v32 = v19;
      v59 = v21;
      v25 = MEMORY[0x1E69E7CC0];
      v40 = v44;
      v41 = v45;
      v42 = v46;
      v43 = v47;
      outlined destroy of __MaterialResource.BuildParameters(&v40);
      v26 = v49;
      v27 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      v28 = (*(v27 + 8))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      *(inited + 32) = v28;
      *(inited + 56) = v23;
      *(inited + 64) = &protocol witness table for __MaterialResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
      v30 = *(v33 + 56);

      v11 = specialized SharedCacheStorage.addResource(value:forKey:)(v28, a1 & 0xFFFFFFFF0001);

      *&v36 = v32;
      *(&v36 + 1) = v35;
      *&v37 = 0;
      BYTE8(v37) = v58;
      *(&v37 + 9) = 0;
      *(&v37 + 11) = BYTE5(a1);
      BYTE13(v37) = a1 & 1;
      BYTE14(v37) = BYTE4(a1);
      *&v38 = v34;
      *(&v38 + 1) = v59;
      *&v39 = v22;
      *(&v39 + 1) = v25;
      outlined destroy of __MaterialResource.BuildParameters(&v36);
    }

    return v11;
  }

  __break(1u);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v3);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized ShaderCache.getResource(_:)(int a1, uint64_t a2, unsigned int a3)
{
  v5 = v3;
  v79 = a1;
  v80 = a2;
  v81 = a3;
  v9 = HIWORD(a3);
  v82 = BYTE2(a3);
  v10 = *(v3 + 56);
  v11 = *(v10 + 24);

  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v12 = *(v10 + 16);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 0xFFFF0001, a2, a3 & 0xFFFF01), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(v11 + 4);

  if (v15)
  {
    return v15;
  }

  v83 = v4;
  v16 = (a1 & 0x10000) == 0;
  v17 = BYTE1(a3) == 2;
  v18 = !v16 || !v17;
  if (v16 && v17)
  {
    v19 = 0xD00000000000001FLL;
  }

  else
  {
    v19 = 0xD00000000000002ALL;
  }

  if (v18)
  {
    v20 = "engine:pbr.rematerialdefinition";
  }

  else
  {
    v20 = "ntUnlit.rematerialdefinition";
  }

  if ((a1 & 0x20000) != 0)
  {
    v21 = 0xD00000000000002ALL;
  }

  else
  {
    v21 = v19;
  }

  if ((a1 & 0x20000) != 0)
  {
    v22 = "EnableOpacityThreshold";
  }

  else
  {
    v22 = v20;
  }

  v55 = PhysicallyBasedMaterial.PBRShaderParameters.functionConstants.getter();
  v52 = v5;
  outlined init with copy of __REAssetService(v5 + 16, v75);
  v23 = v76;
  v24 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v25 = __REAssetService.asset(_:)(v21, v22 | 0x8000000000000000, v23, v24);
  if (v25)
  {
    v26 = v25;
    v27 = a3 >> 8;

    v78 = 1;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v28);
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v28);
    __swift_destroy_boxed_opaque_existential_1(v75);
    v32 = type metadata accessor for __MaterialResource();
    *&v71 = v26;
    *(&v71 + 1) = v55;
    *&v72 = 0;
    BYTE8(v72) = v78;
    *(&v72 + 9) = 0;
    *(&v72 + 11) = v9;
    v53 = a1 & 1;
    v54 = v27;
    BYTE13(v72) = a1 & 1;
    BYTE14(v72) = v27;
    v15 = v32;
    *&v73 = v29;
    *(&v73 + 1) = v30;
    *&v74 = v31;
    *(&v74 + 1) = v28;
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    outlined init with copy of __MaterialResource.BuildParameters(&v71, &v60);
    v33 = v26;
    v34 = v15;
    v35 = v83;
    static __MaterialResource.createMaterial(_:)(&v64, v68);
    v83 = v35;
    if (v35)
    {
      v56 = v64;
      v57 = v65;
      v58 = v66;
      v59 = v67;
      outlined destroy of __MaterialResource.BuildParameters(&v56);
      *&v60 = v33;
      *(&v60 + 1) = v55;
      *&v61 = 0;
      BYTE8(v61) = v78;
      *(&v61 + 9) = 0;
      *(&v61 + 11) = v9;
      BYTE13(v61) = v53;
      BYTE14(v61) = v27;
      *&v62 = v29;
      *(&v62 + 1) = v30;
      *&v63 = v31;
      *(&v63 + 1) = MEMORY[0x1E69E7CC0];
      outlined destroy of __MaterialResource.BuildParameters(&v60);
      return v15;
    }

    v49 = v31;
    v50 = v30;
    v51 = v33;
    v60 = v64;
    v61 = v65;
    v62 = v66;
    v63 = v67;
    outlined destroy of __MaterialResource.BuildParameters(&v60);
    v36 = v69;
    v37 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v38 = (*(v37 + 8))(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 32) = v38;
    v21 = (inited + 32);
    *(inited + 56) = v34;
    *(inited + 64) = &protocol witness table for __MaterialResource;

    v40 = v83;
    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    if (!v40)
    {
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v21);
      v41 = *(v52 + 56);
      v42 = v79;
      v43 = v80;
      v44 = v81;
      v45 = HIBYTE(v81);
      v46 = v82;
      v47 = HIWORD(v79);

      v15 = specialized SharedCacheStorage.addResource(value:forKey:)(v38, v42 | (v47 << 16), v43, (v45 << 8) | (v46 << 16) | v44);

      *&v56 = v51;
      *(&v56 + 1) = v55;
      *&v57 = 0;
      BYTE8(v57) = v78;
      *(&v57 + 9) = 0;
      *(&v57 + 11) = v9;
      BYTE13(v57) = v53;
      BYTE14(v57) = v54;
      *&v58 = v29;
      *(&v58 + 1) = v50;
      *&v59 = v49;
      *(&v59 + 1) = MEMORY[0x1E69E7CC0];
      outlined destroy of __MaterialResource.BuildParameters(&v56);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v21);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(uint64_t a1)
{
  v3 = v1;
  outlined init with copy of CustomMaterial(v1, v117);
  v5 = *(v1 + 256);
  v121[4] = *(v1 + 240);
  v121[5] = v5;
  v121[6] = *(v1 + 272);
  v122 = *(v1 + 288);
  v6 = *(v1 + 192);
  v121[0] = *(v1 + 176);
  v121[1] = v6;
  v7 = *(v1 + 224);
  v121[2] = *(v1 + 208);
  v121[3] = v7;
  outlined init with copy of CustomMaterial.CustomShaderParameters(a1, &v92);
  outlined destroy of CustomMaterial.CustomShaderParameters(v121);
  v8 = *(a1 + 80);
  *(v1 + 240) = *(a1 + 64);
  *(v1 + 256) = v8;
  *(v1 + 272) = *(a1 + 96);
  *(v1 + 288) = *(a1 + 112);
  v9 = *(a1 + 16);
  *(v1 + 176) = *a1;
  *(v1 + 192) = v9;
  v10 = *(a1 + 48);
  *(v1 + 208) = *(a1 + 32);
  *(v1 + 224) = v10;
  CustomMaterial.shaderCache.getter();
  v11 = specialized ShaderCache.getResource(_:)(a1);

  v123 = v2;
  if (v2)
  {
    return outlined destroy of CustomMaterial(v117);
  }

  v13 = *v1;

  *v1 = v11;
  v14 = v117[0];
  swift_beginAccess();
  v15 = *(v14 + 16);
  swift_beginAccess();
  if (v15 == *(v11 + 16))
  {
    return outlined destroy of CustomMaterial(v117);
  }

  v72 = v3;
  v16 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v17 = *(v14 + 16);
  REMaterialAssetGetMaterialDefinition();
  REMaterialDefinitionAssetGetParameterKeys();
  v92.i64[0] = 0;
  v18 = v16;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  v19 = v92.i64[0];
  if (!v92.i64[0])
  {
    goto LABEL_55;
  }

  v68[2] = v14;

  v20 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v68[1] = v11;
  v21 = *(v11 + 16);
  REMaterialAssetGetMaterialDefinition();
  REMaterialDefinitionAssetGetParameterKeys();
  v92.i64[0] = 0;
  v18 = v20;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  v22 = v92.i64[0];
  if (v92.i64[0])
  {

    v23 = specialized Set.union<A>(_:)(v22, v19);
    v24 = 0;
    v26 = v23 + 56;
    v25 = *(v23 + 56);
    v70 = v23 + 56;
    v71 = v23;
    v27 = 1 << *(v23 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v25;
    v30 = (v27 + 63) >> 6;
    v69 = v30;
    v31 = v72;
    while (1)
    {
      if (!v29)
      {
        while (1)
        {
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            outlined destroy of CustomMaterial(v117);
          }

          v29 = *(v26 + 8 * v32);
          ++v24;
          if (v29)
          {
            v24 = v32;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

LABEL_16:
      v33 = (*(v71 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v29)))));
      v34 = v33[1];
      v77 = *v33;
      v35 = *(v31 + 8);
      v36 = v31;
      v37 = *(v31 + 16);
      v39 = *(v36 + 24);
      v38 = *(v36 + 32);
      MEMORY[0x1EEE9AC00](v23);
      v68[-4] = v35;
      LOBYTE(v68[-3]) = v37;
      v68[-2] = v39;
      v68[-1] = v38;
      v76 = v34;
      v74 = v40;
      if ((v34 & 0x1000000000000000) == 0)
      {
        if ((v34 & 0x2000000000000000) != 0)
        {
          v92.i64[0] = v77;
          v92.i64[1] = v34 & 0xFFFFFFFFFFFFFFLL;

          v18 = v38;

          goto LABEL_21;
        }

        if ((v77 & 0x1000000000000000) != 0)
        {

          v18 = v38;

LABEL_21:
          v41 = v123;
          closure #1 in __RKMaterialParameterBlock.get(parameter:)(v110);
          if (v41)
          {
            goto LABEL_57;
          }

          goto LABEL_23;
        }
      }

      v66 = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v67 = v123;
      _StringGuts._slowWithCString<A>(_:)();
      if (v67)
      {

        goto LABEL_59;
      }

LABEL_23:

      v42 = v77;
      if (v111 == 255)
      {
        v43 = v76;
        v42 = __MaterialResource.subscript.getter(&v112);
        v75 = v116;
      }

      else
      {
        v112 = v110[0];
        v113 = v110[1];
        v114 = v110[2];
        v115 = v110[3];
        v75 = v111;
        v116 = v111;
        v43 = v76;
      }

      v44 = v117[1];
      v45 = v118;
      v46 = v119;
      v47 = v120;
      MEMORY[0x1EEE9AC00](v42);
      v68[-4] = v44;
      LOBYTE(v68[-3]) = v45;
      v68[-2] = v46;
      v68[-1] = v47;
      v73 = v48;
      if ((v43 & 0x1000000000000000) != 0)
      {
        goto LABEL_30;
      }

      if ((v43 & 0x2000000000000000) == 0)
      {
        if ((v77 & 0x1000000000000000) != 0)
        {

          v49 = v47;

          closure #1 in __RKMaterialParameterBlock.get(parameter:)(v103);
          v123 = 0;
        }

        else
        {
LABEL_30:

          v50 = v47;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
          _StringGuts._slowWithCString<A>(_:)();
          v123 = 0;
        }

        v31 = v72;
        v51 = v77;
        goto LABEL_33;
      }

      v52 = v43 & 0xFFFFFFFFFFFFFFLL;
      v51 = v77;
      v92.i64[0] = v77;
      v92.i64[1] = v52;

      v53 = v47;

      closure #1 in __RKMaterialParameterBlock.get(parameter:)(v103);
      v123 = 0;

      v31 = v72;
LABEL_33:
      v18 = v75;
      v54 = v104;
      if (v104 == 255)
      {
        __MaterialResource.subscript.getter(&v105);
        v54 = v109;
      }

      else
      {
        v105 = v103[0];
        v106 = v103[1];
        v107 = v103[2];
        v108 = v103[3];
        v109 = v104;
      }

      v29 &= v29 - 1;
      *(v102 + 15) = v105;
      *(&v102[1] + 15) = v106;
      *(&v102[2] + 15) = v107;
      *(&v102[3] + 15) = v108;
      if (v18 == 255)
      {
        if (v54 == 255)
        {
          v92 = v112;
          v93 = v113;
          v94 = v114;
          v95 = v115;
          v96 = -1;
          outlined destroy of BodyTrackingComponent?(&v92, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_45:

          goto LABEL_10;
        }

        goto LABEL_41;
      }

      v92 = v112;
      v93 = v113;
      v94 = v114;
      v95 = v115;
      v96 = v18;
      v89 = v114;
      v90 = v115;
      v91 = v18;
      v87 = v112;
      v88 = v113;
      if (v54 == 255)
      {
        v84 = v94;
        v85 = v95;
        v86 = v96;
        v82 = v92;
        v83 = v93;
        outlined init with copy of [String : String](&v92, v80, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
        outlined destroy of __RKMaterialParameterBlock.Parameter(&v82);
LABEL_41:
        v92 = v112;
        v93 = v113;
        v94 = v114;
        v95 = v115;
        v98 = v102[1];
        v99 = v102[2];
        *v100 = v102[3];
        *&v100[15] = *(&v102[3] + 15);
        v96 = v18;
        v97 = v102[0];
        v101 = v54;
        outlined destroy of BodyTrackingComponent?(&v92, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSg_AFtMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSg_AFtMR);
        goto LABEL_42;
      }

      v82 = v105;
      v83 = v106;
      v84 = v107;
      v85 = v108;
      v86 = v54;
      v59 = v18;
      v18 = &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd;
      outlined init with copy of [String : String](&v92, v80, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v60 = specialized static __RKMaterialParameterBlock.Parameter.== infix(_:_:)(&v87, &v82);
      v78[2] = v84;
      v78[3] = v85;
      v79 = v86;
      v78[0] = v82;
      v78[1] = v83;
      outlined destroy of __RKMaterialParameterBlock.Parameter(v78);
      v80[2] = v89;
      v80[3] = v90;
      v81 = v91;
      v80[0] = v87;
      v80[1] = v88;
      outlined destroy of __RKMaterialParameterBlock.Parameter(v80);
      v82 = v112;
      v83 = v113;
      v84 = v114;
      v85 = v115;
      v86 = v59;
      outlined destroy of BodyTrackingComponent?(&v82, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      if (v60)
      {
        goto LABEL_45;
      }

LABEL_42:
      v18 = v118;
      v55 = v120;

      v56 = v55;

      v57 = v56;
      v58 = v123;
      specialized String.withCString<A>(_:)(v51, v76, v57, v102);
      v123 = v58;
      if (LOBYTE(v102[4]) == 255)
      {
        __MaterialResource.subscript.getter(&v92);
      }

      else
      {
        v92 = v102[0];
        v93 = v102[1];
        v94 = v102[2];
        v95 = v102[3];
        v96 = v102[4];
      }

      v89 = v94;
      v90 = v95;
      v91 = v96;
      v87 = v92;
      v88 = v93;
      if (v96 == 255)
      {
        v61 = *(v31 + 32);
        isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
        v63 = v77;
        if ((isUniquelyReferenced_nonNull & 1) == 0)
        {
          v64 = *(v31 + 32);
          v18 = REMaterialParameterBlockValueCopy();

          *(v31 + 32) = v18;
        }

        v65 = v123;
        specialized String.withCString<A>(_:)(v63, v76, v31 + 8);
        v123 = v65;
      }

      else
      {
        v82 = v92;
        v83 = v93;
        v84 = v94;
        v85 = v95;
        v86 = v96;
        v18 = String.utf8CString.getter();

        __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v18 + 32), &v82);

        v23 = outlined destroy of BodyTrackingComponent?(&v87, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      }

LABEL_10:
      v30 = v69;
      v26 = v70;
    }
  }

  __break(1u);
LABEL_57:

LABEL_59:

  __break(1u);
  return result;
}

uint64_t specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(unint64_t a1)
{
  v3 = v1;
  v5 = a1 >> 16;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  outlined init with copy of UnlitMaterial(v3, v18);
  *(v3 + 152) = a1 & 1;
  *(v3 + 154) = v5;
  *(v3 + 156) = v6;
  *(v3 + 157) = v7;
  UnlitMaterial.shaderCache.getter();
  v8 = specialized ShaderCache.getResource(_:)(a1 & 0xFFFFFFFF0001);
  if (v2)
  {
    outlined destroy of UnlitMaterial(v18);
  }

  else
  {
    v10 = v8;

    v11 = *(v3 + 40);

    *(v3 + 40) = v10;
    v12 = v19;
    swift_beginAccess();
    v13 = *(v12 + 16);
    swift_beginAccess();
    if (v13 == *(v10 + 16))
    {
      return outlined destroy of UnlitMaterial(v18);
    }

    else
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
      v15 = *(v12 + 16);
      REMaterialAssetGetMaterialDefinition();
      REMaterialDefinitionAssetGetParameterKeys();
      v17 = 0;
      v16 = v14;
      static Set._forceBridgeFromObjectiveC(_:result:)();
      __break(1u);
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

uint64_t specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v5 = v3;
  v9 = HIWORD(a1);
  v10 = a3 >> 8;
  v11 = HIWORD(a3);
  outlined init with copy of PhysicallyBasedMaterial(v5, &v22);
  *(v5 + 104) = a1 & 1;
  *(v5 + 106) = v9;
  *(v5 + 112) = a2;
  *(v5 + 120) = a3 & 1;
  *(v5 + 121) = v10;
  *(v5 + 122) = v11;
  PhysicallyBasedMaterial.shaderCache.getter();
  v12 = specialized ShaderCache.getResource(_:)(a1 & 0xFFFF0001, a2, a3 & 0xFFFF01);
  if (v4)
  {
    outlined destroy of PhysicallyBasedMaterial(&v22);
  }

  else
  {
    v14 = v12;

    v15 = *v5;

    *v5 = v14;
    v16 = v22;
    swift_beginAccess();
    v17 = *(v16 + 16);
    swift_beginAccess();
    if (v17 == *(v14 + 16))
    {
      return outlined destroy of PhysicallyBasedMaterial(&v22);
    }

    else
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
      v19 = *(v16 + 16);
      REMaterialAssetGetMaterialDefinition();
      REMaterialDefinitionAssetGetParameterKeys();
      v21 = 0;
      v20 = v18;
      static Set._forceBridgeFromObjectiveC(_:result:)();
      __break(1u);
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

uint64_t PhysicallyBasedMaterial.baseColor.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v2;
  v23 = *(a1 + 32);
  *v24 = *(a1 + 8);
  *&v24[12] = *(a1 + 20);
  v3 = *(v1 + 104);
  v4 = *(v1 + 106);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 121);
  v8 = *(v1 + 122);
  if (*&v24[8])
  {
    v9 = v4 | 4;
  }

  else
  {
    v9 = v4 & 0xFFFB;
  }

  v15[0] = *(v1 + 104);
  *&v15[2] = v9;
  *&v15[8] = v5;
  v15[16] = v6;
  v15[17] = v7;
  v15[18] = v8;
  LOBYTE(v17) = v3;
  WORD1(v17) = v4;
  v18 = v5;
  LOBYTE(v19) = v6;
  BYTE1(v19) = v7;
  BYTE2(v19) = v8;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v17, v15) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v15[0] | (*&v15[2] << 16), *&v15[8], (v15[17] << 8) | (v15[18] << 16) | v15[16]);
  }

  *&v15[24] = &type metadata for PhysicallyBasedMaterial;
  v16 = &protocol witness table for PhysicallyBasedMaterial;
  *v15 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, *v15 + 16);
  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v17, v15, 0, 0);
  v11 = v17;
  v10 = v18;
  v12 = v19;
  *v15 = *v24;
  *&v15[12] = *&v24[12];
  v17 = v18;
  v18 = v19;
  v19 = v20;
  LODWORD(v20) = v21;
  outlined init with copy of [String : String](v24, v14, &_s17RealityFoundation18MaterialParametersV7TextureVSgMd, &_s17RealityFoundation18MaterialParametersV7TextureVSgMR);
  outlined copy of MaterialParameters.Texture?(v10, v12);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v15, &v17);
  outlined consume of MaterialParameters.Texture?(v10, v12);
  outlined consume of MaterialParameters.Texture?(*v15, *&v15[8]);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v22, 0, 0);

  outlined consume of MaterialParameters.Texture?(v10, v12);
  return outlined destroy of PhysicallyBasedMaterial.BaseColor(v22);
}

uint64_t PhysicallyBasedMaterial.roughness.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3)
  {
    v12 = v7 | 0x20;
  }

  else
  {
    v12 = v7 & 0xFFDF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Roughness(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Roughness(v31);
}

uint64_t key path setter for PhysicallyBasedMaterial.roughness : PhysicallyBasedMaterial(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(int *))
{
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = a1[8];
  v11 = *a1;
  v12 = v7;
  v13 = v6;
  v14 = v8;
  v15 = v9;
  outlined copy of MaterialParameters.Texture?(v7, v6);
  return a5(&v11);
}

uint64_t PhysicallyBasedMaterial.metallic.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3)
  {
    v12 = v7 | 0x40;
  }

  else
  {
    v12 = v7 & 0xFFBF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Metallic(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Metallic(v31);
}

uint64_t PhysicallyBasedMaterial.specular.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3)
  {
    v12 = v7 | 0x100;
  }

  else
  {
    v12 = v7 & 0xFEFF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Specular(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Specular(v31);
}

uint64_t PhysicallyBasedMaterial.clearcoat.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3 || *v31 != 0.0)
  {
    v12 = v7 | 0x200;
  }

  else
  {
    v12 = v7 & 0xFDFF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Clearcoat(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Clearcoat(v31);
}

double key path getter for PhysicallyBasedMaterial.sheen : PhysicallyBasedMaterial@<D0>(uint64_t a1@<X8>)
{
  PhysicallyBasedMaterial.sheen.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void key path setter for PhysicallyBasedMaterial.sheen : PhysicallyBasedMaterial(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  v6 = v4;
  outlined copy of PhysicallyBasedMaterial.SheenColor?(v5[0], v1, v2);
  PhysicallyBasedMaterial.sheen.setter(v5);
}

void PhysicallyBasedMaterial.sheen.setter(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v39 = *a1;
    v40 = v3;
    v41 = v4;
    v42 = v5;
    v43 = v6;
    v7 = *(v1 + 106);
    v8 = *(v1 + 112);
    v9 = *(v1 + 120);
    v10 = *(v1 + 121);
    v11 = *(v1 + 122);
    LOBYTE(v34) = *(v1 + 104);
    WORD1(v34) = v7 | 0x800;
    v35 = v8;
    LOBYTE(v36) = v9;
    BYTE1(v36) = v10;
    BYTE2(v36) = v11;
    LOBYTE(v29) = v34;
    WORD1(v29) = v7;
    v30 = v8;
    LOBYTE(v31) = v9;
    BYTE1(v31) = v10;
    BYTE2(v31) = v11;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v29, &v34) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v34 | (WORD1(v34) << 16), v35, (BYTE1(v36) << 8) | (BYTE2(v36) << 16) | v36);
    }

    v37 = &type metadata for PhysicallyBasedMaterial;
    v38 = &protocol witness table for PhysicallyBasedMaterial;
    v34 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v34 + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(&v34, &v29);
    v12 = v30;
    v28 = v29;
    v29 = v30;
    v13 = v31;
    v34 = v3;
    v35 = v4;
    v36 = v5;
    LODWORD(v37) = v6;
    v30 = v31;
    v31 = v32;
    LODWORD(v32) = v33;
    outlined copy of MaterialParameters.Texture?(v3, v4);
    outlined copy of MaterialParameters.Texture?(v12, v13);
    PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v34, &v29);
    outlined consume of MaterialParameters.Texture?(v12, v13);
    outlined consume of MaterialParameters.Texture?(v3, v4);
    specialized Material.setParameter<A>(_:alternateTintKey:)(&v39, 0, 0);

    outlined consume of MaterialParameters.Texture?(v12, v13);

    outlined consume of PhysicallyBasedMaterial.SheenColor?(v2, v3, v4);
  }

  else
  {
    v14 = *(v1 + 106);
    v15 = *(v1 + 112);
    v16 = *(v1 + 120);
    v17 = *(v1 + 121);
    v18 = *(v1 + 122);
    LOBYTE(v34) = *(v1 + 104);
    WORD1(v34) = v14 & 0xF7FF;
    v35 = v15;
    LOBYTE(v36) = v16;
    BYTE1(v36) = v17;
    BYTE2(v36) = v18;
    LOBYTE(v39) = v34;
    WORD1(v39) = v14;
    v40 = v15;
    LOBYTE(v41) = v16;
    BYTE1(v41) = v17;
    BYTE2(v41) = v18;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v39, &v34) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v34 | (WORD1(v34) << 16), v35, (BYTE1(v36) << 8) | (BYTE2(v36) << 16) | v36);
    }

    v37 = &type metadata for PhysicallyBasedMaterial;
    v38 = &protocol witness table for PhysicallyBasedMaterial;
    v34 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v34 + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(&v34, &v39);
    v20 = v39;
    v19 = v40;
    v21 = v41;
    v34 = 0;
    v35 = 0;
    LODWORD(v37) = 0;
    v36 = 0;
    v39 = v40;
    v40 = v41;
    v41 = v42;
    LODWORD(v42) = v43;
    outlined copy of MaterialParameters.Texture?(v39, v40);
    PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v34, &v39);
    outlined consume of MaterialParameters.Texture?(v19, v21);
    v22 = *(v1 + 32);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v23 = *(v1 + 32);
      v24 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v24;
    }

    specialized String.withCString<A>(_:)(0xD000000000000011, 0x80000001C18E3940, v1 + 8);
    v25 = *(v1 + 32);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v26 = *(v1 + 32);
      v27 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v27;
    }

    specialized String.withCString<A>(_:)(0x6C6F436E65656873, 0xEA0000000000726FLL, v1 + 8);

    outlined consume of MaterialParameters.Texture?(v19, v21);
  }
}

uint64_t PhysicallyBasedMaterial.anisotropyLevel.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3 || *v31 != 0.0)
  {
    v12 = v7 | 0x400;
  }

  else
  {
    v12 = v7 & 0xFBFF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.AnisotropyLevel(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.AnisotropyLevel(v31);
}

double key path getter for PhysicallyBasedMaterial.roughness : PhysicallyBasedMaterial@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, void, void)@<X3>, uint64_t a3@<X8>)
{
  v9[3] = &type metadata for PhysicallyBasedMaterial;
  v9[4] = &protocol witness table for PhysicallyBasedMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(a1, v9[0] + 16);
  a2(&v10, v9, 0, 0);
  v6 = v12;
  v7 = v13;
  *a3 = v10;
  result = *&v11;
  *(a3 + 8) = v11;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t PhysicallyBasedMaterial.clearcoatRoughness.setter(uint64_t a1, void (*a2)(_BYTE *__return_ptr, void *, void, void), void (*a3)(_BYTE *, void *), void (*a4)(_BYTE *), uint64_t (*a5)(_BYTE *))
{
  v10 = *(a1 + 16);
  *v20 = *a1;
  *&v20[16] = v10;
  *&v20[32] = *(a1 + 32);
  v17[3] = &type metadata for PhysicallyBasedMaterial;
  v17[4] = &protocol witness table for PhysicallyBasedMaterial;
  v17[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v5, v17[0] + 16);
  a2(v18, v17, 0, 0);
  v11 = *&v18[8];
  v12 = *&v18[16];
  v13 = *&v18[24];
  *v18 = *&v20[8];
  *&v18[12] = *&v20[20];
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = v13;
  v16 = v19;
  a3(v20, v17);
  outlined copy of MaterialParameters.Texture?(v11, v12);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v18, v15);
  outlined consume of MaterialParameters.Texture?(v11, v12);
  outlined consume of MaterialParameters.Texture?(*v18, *&v18[8]);
  a4(v20);
  outlined consume of MaterialParameters.Texture?(v11, v12);
  return a5(v20);
}

uint64_t key path setter for PhysicallyBasedMaterial.emissiveIntensity : PhysicallyBasedMaterial(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *(a2 + 32);
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v7 = *(a2 + 32);
    v8 = REMaterialParameterBlockValueCopy();

    *(a2 + 32) = v8;
  }

  return REMaterialParameterBlockValueSetFloat();
}

uint64_t PhysicallyBasedMaterial.emissiveIntensity.setter()
{
  v1 = *(v0 + 32);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v3 = *(v0 + 32);
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v4 = *(v0 + 32);
    v5 = REMaterialParameterBlockValueCopy();

    *(v0 + 32) = v5;
  }

  return REMaterialParameterBlockValueSetFloat();
}

double key path getter for PhysicallyBasedMaterial.baseColor : PhysicallyBasedMaterial@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, void, void)@<X3>, uint64_t a3@<X8>)
{
  v9[3] = &type metadata for PhysicallyBasedMaterial;
  v9[4] = &protocol witness table for PhysicallyBasedMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(a1, v9[0] + 16);
  a2(&v10, v9, 0, 0);
  v6 = v12;
  v7 = v13;
  *a3 = v10;
  result = *&v11;
  *(a3 + 8) = v11;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t key path setter for PhysicallyBasedMaterial.baseColor : PhysicallyBasedMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id *))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v13 = v9;
  v10 = v12[0];
  outlined copy of MaterialParameters.Texture?(v6, v7);
  return a5(v12);
}

uint64_t PhysicallyBasedMaterial.emissiveColor.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v2;
  v23 = *(a1 + 32);
  *v24 = *(a1 + 8);
  *&v24[12] = *(a1 + 20);
  v3 = *(v1 + 104);
  v4 = *(v1 + 106);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 121);
  v8 = *(v1 + 122);
  if (*&v24[8])
  {
    v9 = v4 | 0x10;
  }

  else
  {
    v9 = v4 & 0xFFEF;
  }

  v15[0] = *(v1 + 104);
  *&v15[2] = v9;
  *&v15[8] = v5;
  v15[16] = v6;
  v15[17] = v7;
  v15[18] = v8;
  LOBYTE(v17) = v3;
  WORD1(v17) = v4;
  v18 = v5;
  LOBYTE(v19) = v6;
  BYTE1(v19) = v7;
  BYTE2(v19) = v8;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v17, v15) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v15[0] | (*&v15[2] << 16), *&v15[8], (v15[17] << 8) | (v15[18] << 16) | v15[16]);
  }

  *&v15[24] = &type metadata for PhysicallyBasedMaterial;
  v16 = &protocol witness table for PhysicallyBasedMaterial;
  *v15 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, *v15 + 16);
  PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v15, &v17);
  v11 = v17;
  v10 = v18;
  v12 = v19;
  *v15 = *v24;
  *&v15[12] = *&v24[12];
  v17 = v18;
  v18 = v19;
  v19 = v20;
  LODWORD(v20) = v21;
  outlined init with copy of [String : String](v24, v14, &_s17RealityFoundation18MaterialParametersV7TextureVSgMd, &_s17RealityFoundation18MaterialParametersV7TextureVSgMR);
  outlined copy of MaterialParameters.Texture?(v10, v12);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v15, &v17);
  outlined consume of MaterialParameters.Texture?(v10, v12);
  outlined consume of MaterialParameters.Texture?(*v15, *&v15[8]);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v22, 0, 0);

  outlined consume of MaterialParameters.Texture?(v10, v12);
  return outlined destroy of PhysicallyBasedMaterial.EmissiveColor(v22);
}

unint64_t PhysicallyBasedMaterial.opacityThreshold.getter()
{
  if ((*(v0 + 53) & 2) == 0)
  {
    goto LABEL_9;
  }

  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v4 = v0[4];

  v5 = v4;

  specialized String.withCString<A>(_:)(0xD000000000000010, 0x80000001C18DD850, v5, v12);
  if (v13 == 255)
  {
    v6 = *v0;
    __MaterialResource.subscript.getter(&v14);
  }

  else
  {
    v14 = v12[0];
    v15 = v12[1];
    v16 = v12[2];
    v17 = v12[3];
    v18 = v13;
  }

  v10[2] = v16;
  v10[3] = v17;
  v11 = v18;
  v10[0] = v14;
  v10[1] = v15;
  if (v18 == 255)
  {
    goto LABEL_9;
  }

  if (v18 != 2)
  {
    outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_9:
    v7 = 0;
    v8 = 1;
    return v7 | (v8 << 32);
  }

  v7 = LODWORD(v10[0]);
  outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  v8 = 0;
  return v7 | (v8 << 32);
}

uint64_t PhysicallyBasedMaterial.__resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PhysicallyBasedMaterial.__parameterBlock.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t PhysicallyBasedMaterial.__parameterBlock.setter(uint64_t *a1)
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

uint64_t PhysicallyBasedMaterial.assetService.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 40, &v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  if (v6)
  {
    return outlined init with take of ForceEffectBase(&v5, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, a1);
  outlined destroy of BodyTrackingComponent?(v1 + 40, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  return outlined init with copy of __REAssetService(a1, v1 + 40);
}

uint64_t PhysicallyBasedMaterial.PBRMaterialDefinitionMapping.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t PhysicallyBasedMaterial.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 106) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 121) = 514;
  *(a1 + 144) = 257;
  *(a1 + 136) = 0;
  v2 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000015, 0x80000001C18EE0E0);
  *a1 = v2;

  v3 = REMaterialParameterBlockValueCreate();
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v5 = type metadata accessor for __MaterialResource();
  *(inited + 32) = v2;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for __MaterialResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  swift_beginAccess();
  v6 = *(v2 + 16);
  FeatureFlags = REMaterialAssetGetFeatureFlags();
  if ((FeatureFlags & 0x1000) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if ((FeatureFlags & 0x2000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + 104) = 0;
  *(a1 + 106) = FeatureFlags;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 121) = v8;
  *(a1 + 122) = v9;
  if ((FeatureFlags & 0x1001) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  type metadata accessor for PhysicallyBasedMaterial.Program();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 17) = 0;
  *(v11 + 24) = v2;
  *(a1 + 128) = v11;
  outlined consume of MaterialParameters.Texture?(0, 0);
  LODWORD(v13[0]) = 0;
  memset(&v13[1], 0, 24);
  v14 = 0;
  specialized Material.setParameter<A>(_:alternateTintKey:)(v13);
  return outlined destroy of PhysicallyBasedMaterial.Clearcoat(v13);
}

uint64_t PhysicallyBasedMaterial.init(assetService:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  PhysicallyBasedMaterial.init()(a2);
  outlined destroy of BodyTrackingComponent?(a2 + 40, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);

  return outlined init with take of ForceEffectBase(a1, a2 + 40);
}

void PhysicallyBasedMaterial.checkMultiUV(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v6 = *a2;
    v5 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v42 = &type metadata for PhysicallyBasedMaterial;
    v43 = &protocol witness table for PhysicallyBasedMaterial;
    v37 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v2, v37 + 16);
    PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(&v37, &v44);
    v9 = v44;
    v10 = v45;
    v11 = v46;
    if (v5 && v7)
    {
      v12 = *(v2 + 32);
      v13 = v6;

      if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
      {
        v14 = *(v2 + 106);
        v15 = *(v2 + 112);
        v16 = *(v2 + 120);
        v17 = *(v2 + 121);
        LOBYTE(v37) = *(v2 + 104);
        WORD1(v37) = v14;
        v38 = v15;
        v39 = v16;
        v40 = v17;
        v41 = 0;
        v18 = *(v2 + 122);
        LOBYTE(v44) = v37;
        WORD1(v44) = v14;
        v45 = v15;
        LOBYTE(v46) = v16;
        BYTE1(v46) = v17;
        BYTE2(v46) = v18;
        if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v44, &v37) & 1) == 0)
        {
          specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v37 | (WORD1(v37) << 16), v38, (v40 << 8) | (v41 << 16) | v39);
        }

        outlined consume of MaterialParameters.Texture?(v10, v11);
        v19 = v6;
        v20 = v5;
        goto LABEL_14;
      }

      outlined consume of MaterialParameters.Texture?(v10, v11);
      v35 = v6;
      v36 = v5;
    }

    else
    {

      v35 = v10;
      v36 = v11;
    }

    outlined consume of MaterialParameters.Texture?(v35, v36);
  }

  else
  {
    v21 = *a1;
    v22 = *(a1 + 24);
    v23 = *(v2 + 106);
    v24 = *(v2 + 112);
    v25 = *(v2 + 120);
    v26 = *(v2 + 121);
    LOBYTE(v37) = *(v2 + 104);
    WORD1(v37) = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v41 = 1;
    v27 = *(v2 + 122);
    LOBYTE(v44) = v37;
    WORD1(v44) = v23;
    v45 = v24;
    LOBYTE(v46) = v25;
    BYTE1(v46) = v26;
    BYTE2(v46) = v27;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v44, &v37) & 1) == 0)
    {
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v31 = v40;
      v32 = v41;
      v33 = WORD1(v37);
      v34 = v21;

      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v28 | (v33 << 16), v29, (v31 << 8) | (v32 << 16) | v30);
      v19 = v21;
      v20 = v3;
LABEL_14:
      outlined consume of MaterialParameters.Texture?(v19, v20);
    }
  }
}

void (*PhysicallyBasedMaterial.baseColor.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v4, v6, 0, 0);
  return PhysicallyBasedMaterial.baseColor.modify;
}

void (*PhysicallyBasedMaterial.metallic.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.metallic.modify;
}

void (*PhysicallyBasedMaterial.roughness.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.roughness.modify;
}

void PhysicallyBasedMaterial.metallic.modify(int **a1, char a2, void (*a3)(int *))
{
  v5 = *a1;
  v6 = **a1;
  v7 = *(*a1 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = v5[8];
  v11 = *(v5 + 5);
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  if (a2)
  {
    outlined copy of MaterialParameters.Texture?(v7, v8);
    a3(&v14);
    v12 = *(v5 + 3);
    v13 = v5[8];
    outlined consume of MaterialParameters.Texture?(*(v5 + 1), *(v5 + 2));
  }

  else
  {
    a3(&v14);
  }

  free(v5);
}

void (*PhysicallyBasedMaterial.emissiveColor.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.emissiveColor.modify;
}

void PhysicallyBasedMaterial.baseColor.modify(void ***a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = *(*a1 + 8);
  v10 = (*a1)[5];
  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v8;
  v16[3] = v7;
  v17 = v9;
  if (a2)
  {
    v11 = v5;
    outlined copy of MaterialParameters.Texture?(v6, v8);
    a3(v16);
    v12 = v4[1];
    v13 = v4[2];
    v14 = v4[3];
    v15 = *(v4 + 8);

    outlined consume of MaterialParameters.Texture?(v12, v13);
  }

  else
  {
    a3(v16);
  }

  free(v4);
}

uint64_t (*PhysicallyBasedMaterial.emissiveIntensity.modify(uint64_t a1))(_DWORD *a1)
{
  *a1 = v1;
  *(a1 + 8) = PhysicallyBasedMaterial.emissiveIntensity.getter();
  return PhysicallyBasedMaterial.emissiveIntensity.modify;
}

uint64_t PhysicallyBasedMaterial.emissiveIntensity.modify(_DWORD *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = *(*a1 + 32);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v5 = *(v1 + 32);
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v6 = *(v1 + 32);
    v7 = REMaterialParameterBlockValueCopy();

    *(v1 + 32) = v7;
  }

  return REMaterialParameterBlockValueSetFloat();
}

void (*PhysicallyBasedMaterial.specular.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.specular.modify;
}

void (*PhysicallyBasedMaterial.clearcoat.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.clearcoat.modify;
}

void (*PhysicallyBasedMaterial.clearcoatRoughness.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.clearcoatRoughness.modify;
}

uint64_t PhysicallyBasedMaterial.opacityThreshold.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v13 = *(v1 + 106);
    v14 = *(v1 + 112);
    v15 = *(v1 + 120);
    v16 = *(v1 + 121);
    v17 = *(v1 + 122);
    v24[0] = *(v1 + 104);
    v25 = v13 & 0xFFFD;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v18[0] = v24[0];
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    result = specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v18, v24);
    if ((result & 1) == 0)
    {
      return specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v24[0] | (v25 << 16), v26, (v28 << 8) | (v29 << 16) | v27);
    }
  }

  else
  {
    v2 = *(v1 + 106);
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);
    v5 = *(v1 + 121);
    v6 = *(v1 + 122);
    v24[0] = *(v1 + 104);
    v25 = v2 | 2;
    v26 = v3;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    v18[0] = v24[0];
    v19 = v2;
    v20 = v3;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v18, v24) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v24[0] | (v25 << 16), v26, (v28 << 8) | (v29 << 16) | v27);
    }

    v7 = *(v1 + 32);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v9 = *(v1 + 32);
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v10 = *(v1 + 32);
      v11 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v11;
    }

    return REMaterialParameterBlockValueSetFloat();
  }

  return result;
}

uint64_t (*PhysicallyBasedMaterial.opacityThreshold.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = PhysicallyBasedMaterial.opacityThreshold.getter();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return PhysicallyBasedMaterial.opacityThreshold.modify;
}

unsigned __int8 *PhysicallyBasedMaterial.faceCulling.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 80) = v5;
  *(v1 + 88) = v4;
  return result;
}

uint64_t *(*PhysicallyBasedMaterial.faceCulling.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 88) & 1) == 0)
  {
    if (*(v1 + 80) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 80);
    }
  }

  *(a1 + 8) = v2;
  return PhysicallyBasedMaterial.faceCulling.modify;
}

uint64_t *PhysicallyBasedMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 80) = v5;
  *(v1 + 88) = v4;
  return result;
}

uint64_t PhysicallyBasedMaterial.__faceCullMode.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t PhysicallyBasedMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

Swift::Void __swiftcall PhysicallyBasedMaterial.setMultiUVs(_:)(Swift::Bool a1)
{
  v2 = *(v1 + 106);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 121);
  v13[0] = *(v1 + 104);
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = a1;
  v6 = *(v1 + 122);
  v7[0] = v13[0];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v7, v13) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v13[0] | (v14 << 16), v15, (v17 << 8) | (v18 << 16) | v16);
  }
}

void PhysicallyBasedMaterial.blending.setter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  specialized MaterialWithBlendingInternal.blendingInternal.setter(v2);
}

void (*PhysicallyBasedMaterial.blending.modify(uint64_t *a1))(unsigned int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  PhysicallyBasedMaterial.blending.getter(v3 + 80);
  return PhysicallyBasedMaterial.blending.modify;
}

void PhysicallyBasedMaterial.blending.modify(unsigned int **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 20);
  v4 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v4;
    v2[8] = v2[28];
    outlined init with copy of PhysicallyBasedMaterial.Blending(v2, (v2 + 30));
    specialized MaterialWithBlendingInternal.blendingInternal.setter(v2);
    v5 = *(v2 + 13);
    v6 = v2[28];
    outlined consume of PhysicallyBasedMaterial.Blending(*(v2 + 10), *(v2 + 11), *(v2 + 12));
  }

  else
  {
    *(v2 + 10) = *(v2 + 5);
    *(v2 + 14) = v4;
    v2[18] = v2[28];
    specialized MaterialWithBlendingInternal.blendingInternal.setter((v2 + 10));
  }

  free(v2);
}

uint64_t key path getter for PhysicallyBasedMaterial.normal : PhysicallyBasedMaterial@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(a1, v12);
  specialized Material.getTextureParameter(key:)(0x4E65727574786574, 0xED00006C616D726FLL, &v8);
  result = outlined destroy of PhysicallyBasedMaterial(v12);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  if (!v9)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

void PhysicallyBasedMaterial.normal.setter(uint64_t a1)
{
  v2 = *a1;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v3 = *(v1 + 104);
  v4 = *(v1 + 106);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 121);
  v8 = *(v1 + 122);
  v22 = *(a1 + 8);
  if (v22)
  {
    v9 = v4 | 8;
  }

  else
  {
    v9 = v4 & 0xFFF7;
  }

  v42[0] = *(v1 + 104);
  v43 = v9;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  LOBYTE(v24[0]) = v3;
  WORD1(v24[0]) = v4;
  v24[1] = v5;
  LOBYTE(v25) = v6;
  BYTE1(v25) = v7;
  BYTE2(v25) = v8;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v24, v42) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v42[0] | (v43 << 16), v44, (v46 << 8) | (v47 << 16) | v45);
  }

  outlined init with copy of PhysicallyBasedMaterial(v1, v42);
  v10 = v48;

  v11 = v10;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v11, v35);
  if (v36 == 255)
  {
    __MaterialResource.subscript.getter(&v37);
  }

  else
  {
    v37 = v35[0];
    v38 = v35[1];
    v39 = v35[2];
    v40 = v35[3];
    v41 = v36;
  }

  v32 = v39;
  v33 = v40;
  v34 = v41;
  v30 = v37;
  v31 = v38;
  if (v41 != 255)
  {
    if (v41 == 1)
    {
      v12 = DWORD2(v31);
      v14 = *(&v30 + 1);
      v13 = v31;
      v15 = v30;
      goto LABEL_14;
    }

    outlined destroy of BodyTrackingComponent?(&v30, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
LABEL_14:
  outlined destroy of PhysicallyBasedMaterial(v42);
  v24[0] = v2;
  v24[1] = v22;
  *&v25 = v20;
  DWORD2(v25) = v21;
  *&v49 = v15;
  *(&v49 + 1) = v14;
  *&v50 = v13;
  DWORD2(v50) = v12;
  outlined copy of MaterialParameters.Texture?(v2, v22);
  outlined copy of MaterialParameters.Texture?(v15, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v24, &v49);
  outlined consume of MaterialParameters.Texture?(v15, v14);
  outlined consume of MaterialParameters.Texture?(v2, v22);
  if (v22)
  {
    v16 = 1;
    v17 = v2;
    v18 = v20;
    v19 = v21;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v16 = -1;
  }

  strcpy(v24, "textureNormal");
  HIWORD(v24[1]) = -4864;
  *&v25 = v17;
  *(&v25 + 1) = v22;
  *&v26 = v18;
  *(&v26 + 1) = v19;
  v27 = 0u;
  v28 = 0u;
  v29 = v16;
  v53 = v16;
  v51 = 0u;
  v52 = 0u;
  v49 = v25;
  v50 = v26;
  outlined copy of MaterialParameters.Texture?(v2, v22);

  outlined init with copy of [String : String](&v25, v23, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(&v49, 0x4E65727574786574, 0xED00006C616D726FLL);
  outlined destroy of MaterialParameterKeyValue(v24);
  outlined consume of MaterialParameters.Texture?(v15, v14);
  outlined consume of MaterialParameters.Texture?(v2, v22);
}

void (*PhysicallyBasedMaterial.normal.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 328) = v1;
  outlined init with copy of PhysicallyBasedMaterial(v1, v3 + 72);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v8 = *(v4 + 96);
  v7 = *(v4 + 104);

  v9 = v7;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v9, v4 + 224);
  v10 = *(v4 + 288);
  if (v10 == 255)
  {
    v13 = *(v4 + 72);
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v11 = *(v4 + 240);
    *v4 = *(v4 + 224);
    *(v4 + 16) = v11;
    v12 = *(v4 + 272);
    *(v4 + 32) = *(v4 + 256);
    *(v4 + 48) = v12;
    *(v4 + 64) = v10;
  }

  v14 = *(v4 + 64);
  *(v4 + 400) = v14;
  v15 = *(v4 + 48);
  *(v4 + 368) = *(v4 + 32);
  *(v4 + 384) = v15;
  v16 = *(v4 + 16);
  *(v4 + 336) = *v4;
  *(v4 + 352) = v16;
  if (v14 == 255)
  {
    goto LABEL_11;
  }

  if (v14 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v4 + 336, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_11:
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v17 = *(v4 + 360);
  v19 = *(v4 + 344);
  v18 = *(v4 + 352);
  v20 = *(v4 + 336);
LABEL_12:
  outlined destroy of PhysicallyBasedMaterial(v4 + 72);
  *(v4 + 296) = v20;
  *(v4 + 304) = v19;
  *(v4 + 312) = v18;
  *(v4 + 320) = v17;
  return PhysicallyBasedMaterial.normal.modify;
}

uint64_t key path getter for PhysicallyBasedMaterial.ambientOcclusion : PhysicallyBasedMaterial@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(a1, v12);
  specialized Material.getTextureParameter(key:)(0xD000000000000017, 0x80000001C18DDE20, &v8);
  result = outlined destroy of PhysicallyBasedMaterial(v12);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  if (!v9)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

void PhysicallyBasedMaterial.ambientOcclusion.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(v1 + 104);
  v5 = *(v1 + 106);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 121);
  v9 = *(v1 + 122);
  v19 = *a1;
  v18 = *(a1 + 24);
  if (v2)
  {
    v10 = v5 | 0x80;
  }

  else
  {
    v10 = v5 & 0xFF7F;
  }

  v36[0] = *(v1 + 104);
  v37 = v10;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  LOBYTE(v31) = v4;
  WORD1(v31) = v5;
  *(&v31 + 1) = v6;
  LOBYTE(v32) = v7;
  BYTE1(v32) = v8;
  BYTE2(v32) = v9;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v31, v36) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v36[0] | (v37 << 16), v38, (v40 << 8) | (v41 << 16) | v39);
  }

  outlined init with copy of PhysicallyBasedMaterial(v1, v36);
  v11 = v42;

  v12 = v11;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v12, v29);
  if (v30 == 255)
  {
    __MaterialResource.subscript.getter(&v31);
  }

  else
  {
    v31 = v29[0];
    v32 = v29[1];
    v33 = v29[2];
    v34 = v29[3];
    v35 = v30;
  }

  v26 = v33;
  v27 = v34;
  v28 = v35;
  v24 = v31;
  v25 = v32;
  if (v35 == 255)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = v19;
  }

  else
  {
    v13 = v19;
    if (v35 == 1)
    {
      v14 = DWORD2(v25);
      v16 = *(&v24 + 1);
      v15 = v25;
      v17 = v24;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v24, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }
  }

  outlined destroy of PhysicallyBasedMaterial(v36);
  v22[0] = v13;
  v22[1] = v2;
  v22[2] = v3;
  v23 = v18;
  v20[0] = v17;
  v20[1] = v16;
  v20[2] = v15;
  v21 = v14;
  outlined copy of MaterialParameters.Texture?(v13, v2);
  outlined copy of MaterialParameters.Texture?(v17, v16);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v22, v20);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v13, v2, v3, v18);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
}

void (*PhysicallyBasedMaterial.ambientOcclusion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 328) = v1;
  outlined init with copy of PhysicallyBasedMaterial(v1, v3 + 72);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  v8 = *(v4 + 104);

  v9 = v8;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v9, v4 + 224);
  v10 = *(v4 + 288);
  if (v10 == 255)
  {
    v13 = *(v4 + 72);
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v11 = *(v4 + 240);
    *v4 = *(v4 + 224);
    *(v4 + 16) = v11;
    v12 = *(v4 + 272);
    *(v4 + 32) = *(v4 + 256);
    *(v4 + 48) = v12;
    *(v4 + 64) = v10;
  }

  v14 = *(v4 + 64);
  *(v4 + 400) = v14;
  v15 = *(v4 + 48);
  *(v4 + 368) = *(v4 + 32);
  *(v4 + 384) = v15;
  v16 = *(v4 + 16);
  *(v4 + 336) = *v4;
  *(v4 + 352) = v16;
  if (v14 == 255)
  {
    goto LABEL_11;
  }

  if (v14 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v4 + 336, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_11:
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v17 = *(v4 + 360);
  v19 = *(v4 + 344);
  v18 = *(v4 + 352);
  v20 = *(v4 + 336);
LABEL_12:
  outlined destroy of PhysicallyBasedMaterial(v4 + 72);
  *(v4 + 296) = v20;
  *(v4 + 304) = v19;
  *(v4 + 312) = v18;
  *(v4 + 320) = v17;
  return PhysicallyBasedMaterial.ambientOcclusion.modify;
}

void (*PhysicallyBasedMaterial.anisotropyLevel.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.anisotropyLevel.modify;
}

void (*PhysicallyBasedMaterial.anisotropyAngle.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.anisotropyAngle.modify;
}

void (*PhysicallyBasedMaterial.sheen.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  if ((*(v1 + 106) & 0x800) != 0)
  {
    v10[3] = &type metadata for PhysicallyBasedMaterial;
    v10[4] = &protocol witness table for PhysicallyBasedMaterial;
    v10[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v10[0] + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v10, &v11);
    v5 = v11;
    v8 = v12;
    v6 = v13;
    v7 = v14;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
  }

  *v4 = v5;
  *(v4 + 8) = v8;
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  return PhysicallyBasedMaterial.sheen.modify;
}

void PhysicallyBasedMaterial.sheen.modify(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 8);
  v9 = v3[5];
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13 = v8;
  if (a2)
  {
    outlined copy of PhysicallyBasedMaterial.SheenColor?(v4, v5, v6);
    PhysicallyBasedMaterial.sheen.setter(v12);
    v10 = v3[3];
    v11 = *(v3 + 8);
    outlined consume of PhysicallyBasedMaterial.SheenColor?(*v3, v3[1], v3[2]);
  }

  else
  {
    PhysicallyBasedMaterial.sheen.setter(v12);
  }

  free(v3);
}

uint64_t (*PhysicallyBasedMaterial.textureCoordinateTransform.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, a1);
  return CustomMaterial.textureCoordinateTransform.modify;
}

uint64_t (*PhysicallyBasedMaterial.secondaryTextureCoordinateTransform.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, a1);
  return CustomMaterial.secondaryTextureCoordinateTransform.modify;
}

uint64_t PhysicallyBasedMaterial.shaderCache.getter()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    if (one-time initialization token for shaderCacheRegistry != -1)
    {
      swift_once();
    }

    v2 = v0;
    PhysicallyBasedMaterial.assetService.getter(v5);
    v1 = specialized AssetServiceScopedRegistry.instance(for:)(v5);

    __swift_destroy_boxed_opaque_existential_1(v5);
    v3 = *(v0 + 96);

    *(v2 + 96) = v1;
  }

  return v1;
}

void PhysicallyBasedMaterial.PBRShaderParameters.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  Hasher._combine(_:)(*(v0 + 2));
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
    if (v4 != 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v5 != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v2);
  if (v4 == 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v4 & 1);
  if (v5 == 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  v6 = v5 & 1;
LABEL_8:
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v1);
}

unint64_t PhysicallyBasedMaterial.PBRShaderParameters.functionConstants.getter()
{
  v1 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMd, &_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C18CFC20;
  *(v2 + 32) = 0xD000000000000012;
  *(v2 + 40) = 0x80000001C18EE220;
  *(v2 + 48) = (v1 >> 2) & 1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0x6F4E656C62616E45;
  *(v2 + 88) = 0xEF70614D6C616D72;
  *(v2 + 96) = (v1 >> 3) & 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 128) = 0xD000000000000011;
  *(v2 + 136) = 0x80000001C18EE240;
  *(v2 + 144) = (v1 >> 4) & 1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 176) = 0xD000000000000012;
  *(v2 + 184) = 0x80000001C18EE260;
  *(v2 + 192) = (v1 >> 5) & 1;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 224) = 0xD000000000000011;
  *(v2 + 232) = 0x80000001C18EE280;
  *(v2 + 240) = (v1 >> 6) & 1;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 272) = 0x4F41656C62616E45;
  *(v2 + 280) = 0xEB0000000070614DLL;
  *(v2 + 288) = (v1 >> 7) & 1;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 320) = 0xD000000000000011;
  *(v2 + 328) = 0x80000001C18EE2A0;
  *(v2 + 336) = (v1 >> 8) & 1;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 368) = 0x6C43656C62616E45;
  *(v2 + 376) = 0xEF74616F63726165;
  *(v2 + 384) = (v1 >> 9) & 1;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  *(v2 + 416) = 0xD000000000000010;
  *(v2 + 424) = 0x80000001C18EE2C0;
  *(v2 + 432) = (v1 >> 10) & 1;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0;
  *(v2 + 464) = 0x6C43656C62616E45;
  *(v2 + 472) = 0xEB0000000068746FLL;
  *(v2 + 480) = (v1 >> 11) & 1;
  *(v2 + 488) = 0;
  *(v2 + 496) = 0;
  *(v2 + 512) = 0xD000000000000018;
  *(v2 + 520) = 0x80000001C18EE2E0;
  *(v2 + 528) = (v1 >> 14) & 1;
  *(v2 + 536) = 0;
  *(v2 + 544) = 0;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMd, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v3;
}

Swift::Int PhysicallyBasedMaterial.PBRShaderParameters.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2);
  }

  if (v4 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
    if (v5 != 2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  Hasher._combine(_:)(0);
  if (v5 == 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v7 = v5 & 1;
LABEL_9:
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhysicallyBasedMaterial.PBRShaderParameters()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2);
  }

  if (v4 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
    if (v5 != 2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  Hasher._combine(_:)(0);
  if (v5 == 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v7 = v5 & 1;
LABEL_9:
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unsigned __int8 *(*PhysicallyBasedMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 136) == 1;
  return PhysicallyBasedMaterial.triangleFillMode.modify;
}

_BYTE *(*PhysicallyBasedMaterial.writesDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 144);
  return PhysicallyBasedMaterial.writesDepth.modify;
}

_BYTE *(*PhysicallyBasedMaterial.readsDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 145);
  return PhysicallyBasedMaterial.readsDepth.modify;
}

uint64_t PhysicallyBasedMaterial.program.setter(uint64_t a1)
{
  specialized PhysicallyBasedMaterial.program.setter(a1);
}

uint64_t (*PhysicallyBasedMaterial.program.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 128);
  a1[1] = v1;

  return PhysicallyBasedMaterial.program.modify;
}

uint64_t PhysicallyBasedMaterial.program.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    specialized PhysicallyBasedMaterial.program.setter(v4);
  }

  else
  {
    specialized PhysicallyBasedMaterial.program.setter(v3);
  }
}

uint64_t PhysicallyBasedMaterial.init(program:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v3 = a2 + 40;
  *(a2 + 88) = 1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 106) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 121) = 514;
  *(a2 + 144) = 257;
  *(a2 + 128) = a1;
  *(a2 + 136) = 0;
  v4 = *(a1 + 24);
  *a2 = v4;

  v5 = REMaterialParameterBlockValueCreate();
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v13);
  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  outlined init with take of ForceEffectBase(v13, v3);
  swift_beginAccess();
  v7 = *(v4 + 16);
  FeatureFlags = REMaterialAssetGetFeatureFlags();
  if ((FeatureFlags & 0x1000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(a2 + 104) = 0;
  *(a2 + 106) = FeatureFlags;
  if ((FeatureFlags & 0x2000) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 121) = v9;
  *(a2 + 122) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for __MaterialResource();
  *(inited + 64) = &protocol witness table for __MaterialResource;
  *(inited + 32) = v4;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  return __swift_destroy_boxed_opaque_existential_1((inited + 32));
}

uint64_t PhysicallyBasedMaterial.clearcoatNormal.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(v1, v21);
  v3 = v21[4];

  v4 = v3;

  specialized String.withCString<A>(_:)(0xD000000000000016, 0x80000001C18E2B00, v4, v14);
  if (v15 == 255)
  {
    __MaterialResource.subscript.getter(&v16);
  }

  else
  {
    v16 = v14[0];
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    v20 = v15;
  }

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v9 = v16;
  v10 = v17;
  v5 = 0uLL;
  if (v20 == 255)
  {
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v5 = 0uLL;
LABEL_8:
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = DWORD2(v10);
  v7 = v10;
  v5 = v9;
LABEL_9:
  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return outlined destroy of PhysicallyBasedMaterial(v21);
}

uint64_t key path getter for PhysicallyBasedMaterial.clearcoatNormal : PhysicallyBasedMaterial@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(a1, v12);
  specialized Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E2B00, &v8);
  result = outlined destroy of PhysicallyBasedMaterial(v12);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  if (!v9)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t key path setter for PhysicallyBasedMaterial.normal : PhysicallyBasedMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void **))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v8;
  outlined copy of MaterialParameters.Texture?(v10[0], v6);
  return a5(v10);
}

void PhysicallyBasedMaterial.clearcoatNormal.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(v1 + 104);
  v5 = *(v1 + 106);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 121);
  v9 = *(v1 + 122);
  v19 = *a1;
  v18 = *(a1 + 24);
  if (v2)
  {
    v10 = v5 | 0x4000;
  }

  else
  {
    v10 = v5 & 0xBFFF;
  }

  v36[0] = *(v1 + 104);
  v37 = v10;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  LOBYTE(v31) = v4;
  WORD1(v31) = v5;
  *(&v31 + 1) = v6;
  LOBYTE(v32) = v7;
  BYTE1(v32) = v8;
  BYTE2(v32) = v9;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v31, v36) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v36[0] | (v37 << 16), v38, (v40 << 8) | (v41 << 16) | v39);
  }

  outlined init with copy of PhysicallyBasedMaterial(v1, v36);
  v11 = v42;

  v12 = v11;

  specialized String.withCString<A>(_:)(0xD000000000000016, 0x80000001C18E2B00, v12, v29);
  if (v30 == 255)
  {
    __MaterialResource.subscript.getter(&v31);
  }

  else
  {
    v31 = v29[0];
    v32 = v29[1];
    v33 = v29[2];
    v34 = v29[3];
    v35 = v30;
  }

  v26 = v33;
  v27 = v34;
  v28 = v35;
  v24 = v31;
  v25 = v32;
  if (v35 == 255)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = v19;
  }

  else
  {
    v13 = v19;
    if (v35 == 1)
    {
      v14 = DWORD2(v25);
      v16 = *(&v24 + 1);
      v15 = v25;
      v17 = v24;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v24, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }
  }

  outlined destroy of PhysicallyBasedMaterial(v36);
  v22[0] = v13;
  v22[1] = v2;
  v22[2] = v3;
  v23 = v18;
  v20[0] = v17;
  v20[1] = v16;
  v20[2] = v15;
  v21 = v14;
  outlined copy of MaterialParameters.Texture?(v13, v2);
  outlined copy of MaterialParameters.Texture?(v17, v16);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v22, v20);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v13, v2, v3, v18);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
}

void (*PhysicallyBasedMaterial.clearcoatNormal.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 328) = v1;
  outlined init with copy of PhysicallyBasedMaterial(v1, v3 + 72);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  v8 = *(v4 + 104);

  v9 = v8;

  specialized String.withCString<A>(_:)(0xD000000000000016, 0x80000001C18E2B00, v9, v4 + 224);
  v10 = *(v4 + 288);
  if (v10 == 255)
  {
    v13 = *(v4 + 72);
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v11 = *(v4 + 240);
    *v4 = *(v4 + 224);
    *(v4 + 16) = v11;
    v12 = *(v4 + 272);
    *(v4 + 32) = *(v4 + 256);
    *(v4 + 48) = v12;
    *(v4 + 64) = v10;
  }

  v14 = *(v4 + 64);
  *(v4 + 400) = v14;
  v15 = *(v4 + 48);
  *(v4 + 368) = *(v4 + 32);
  *(v4 + 384) = v15;
  v16 = *(v4 + 16);
  *(v4 + 336) = *v4;
  *(v4 + 352) = v16;
  if (v14 == 255)
  {
    goto LABEL_11;
  }

  if (v14 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v4 + 336, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_11:
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v17 = *(v4 + 360);
  v19 = *(v4 + 344);
  v18 = *(v4 + 352);
  v20 = *(v4 + 336);
LABEL_12:
  outlined destroy of PhysicallyBasedMaterial(v4 + 72);
  *(v4 + 296) = v20;
  *(v4 + 304) = v19;
  *(v4 + 312) = v18;
  *(v4 + 320) = v17;
  return PhysicallyBasedMaterial.clearcoatNormal.modify;
}

void PhysicallyBasedMaterial.normal.modify(uint64_t *a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v6 = *(*a1 + 296);
  v7 = *(v5 + 304);
  v8 = *(v5 + 312);
  v9 = *(v5 + 320);
  v10 = *(v5 + 328);
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;
  if (a2)
  {
    outlined copy of MaterialParameters.Texture?(v6, v7);
    a3(v13);
    v11 = *(v5 + 312);
    v12 = *(v5 + 320);
    outlined consume of MaterialParameters.Texture?(*(v5 + 296), *(v5 + 304));
  }

  else
  {
    a3(v13);
  }

  free(v5);
}

uint64_t specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v4 = a1[17];
    v5 = a1[18];
    v6 = a2[17];
    v7 = a2[18];
    if (a1[16])
    {
      if (!a2[16])
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 1) == *(a2 + 1))
      {
        v8 = a2[16];
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    if (v4 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6 == 2 || ((v6 ^ v4) & 1) != 0)
    {
      return 0;
    }

    if (v5 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void outlined consume of PhysicallyBasedMaterial.SheenColor?(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {

    outlined consume of MaterialParameters.Texture?(a2, a3);
  }
}

void outlined consume of PhysicallyBasedMaterial.Blending(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    outlined consume of MaterialParameters.Texture?(a2, a3);
  }
}

void *outlined copy of PhysicallyBasedMaterial.SheenColor?(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;

    return outlined copy of MaterialParameters.Texture?(a2, a3);
  }

  return result;
}

uint64_t specialized PhysicallyBasedMaterial.program.setter(uint64_t a1)
{
  v3 = v1[16];

  v1[16] = a1;
  v4 = *(a1 + 24);
  v5 = *v1;

  *v1 = v4;
  v6 = *(a1 + 16);
  v7 = *(v1 + 53) & 0xFFFE;
  if (v6 != 2)
  {
    ++v7;
  }

  return specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(*(a1 + 17) | (v7 << 16), v1[14], (*(v1 + 122) << 16) | (v6 << 8) | *(v1 + 120));
}

unint64_t lazy protocol witness table accessor for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters()
{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters);
  }

  return result;
}

double keypath_get_66Tm_0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.PBRShaderParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.PBRShaderParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicallyBasedMaterial.PBRShaderParameters(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters();
  *(a1 + 8) = result;
  return result;
}

uint64_t EventSubscription.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  type metadata accessor for StoredEventSubscription();
  v9 = swift_allocObject();
  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v10 = Publisher<>.sink(receiveValue:)();
  (*(v5 + 8))(v8, v4);
  v11 = type metadata accessor for AnyCancellable();
  v12 = MEMORY[0x1E695BF08];
  v9[5] = v11;
  v9[6] = v12;
  v9[2] = v10;
  *a2 = v9;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v9 + 2);
  outlined init with take of ForceEffectBase(a1, (v9 + 2));
  return swift_endAccess();
}

uint64_t EventService.publish<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[3] = a5;
  v17[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v8, a5);
  (*(a8 + 16))(v17, a2, a3, a4, a6, a8);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t getEventID<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for registeredEventsToEventBusIds != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  v5 = *(static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds + 2);
  if (v5)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v7)
    {
      v8 = *(v4[7] + 8 * v6);
      swift_endAccess();
      return v8;
    }
  }

  swift_endAccess();
  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation26AccessibilityActivateEvent_pMd;
    v11 = &_s17RealityFoundation26AccessibilityActivateEvent_pMR;
LABEL_21:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    goto LABEL_22;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMd;
    v11 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMd;
    v11 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMd;
    v11 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR;
    goto LABEL_21;
  }

  v12 = swift_conformsToProtocol2();
  v13 = a2;
  if (v12)
  {
    v13 = a2;
    if (a1)
    {
      v10 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd;
      v11 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v5)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v14)
    {
      return *(v4[7] + 8 * result);
    }
  }

  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v15 = String.utf8CString.getter();

  v16 = MEMORY[0x1C68F97D0](v15 + 32);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, isUniquelyReferenced_nonNull_native);
  v4 = v19;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = v19;
  result = swift_endAccess();
  if (v19[2])
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v18)
    {
      return *(v4[7] + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t EventService.publish<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 16);
  v12(&v17, a6, a2, a3, a4, a6, a5);
  v14 = v17;
  v15 = v18;
  v16 = v19;
  type metadata accessor for __REEventSubscriber();
  __REEventSubscriber.receive(_:)(a1);

  if (*(a2 + 24))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    (v12)(&v17, a6, &v14, 0, 0, a6, a5, a7);
    outlined destroy of BodyTrackingComponent?(&v14, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v14 = v17;
    v15 = v18;
    v16 = v19;
    __REEventSubscriber.receive(_:)(a1);
  }

  return result;
}

void *one-time initialization function for registeredEventsToEventBusIds()
{
  result = specialized static RegisteredEventsToEventBusIds.generateRegisteredEventsToEventBusIds()();
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = result;
  return result;
}

uint64_t BoxedSubscription.__deallocating_deinit()
{
  outlined destroy of BodyTrackingComponent?(v0 + 16, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t EventService.subscribe<A>(to:on:componentType:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7)
{
  return EventService.subscribe<A>(to:on:componentType:_:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  (*(a7 + 8))(&v11, a5, a1, a2, a3, a5, a4);
  type metadata accessor for Scene.CorePublisher();
  swift_getWitnessTable();
  v8 = Publisher<>.sink(receiveValue:)();

  result = type metadata accessor for AnyCancellable();
  v10 = MEMORY[0x1E695BF08];
  a6[3] = result;
  a6[4] = v10;
  *a6 = v8;
  return result;
}

{
  return EventService.subscribe<A>(to:on:componentType:_:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t REEventBus.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REEventBusSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  v3 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t REEventBus.DispatcherHandle.init<A>(event:sourceObject:componentType:matching:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t *a7@<X8>)
{
  v13 = getEventID<A>(_:)(a6, a6);
  if (a2)
  {
    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v14 + 80, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
    type metadata accessor for SceneManager();
    swift_dynamicCast();
    v15 = SceneManager.componentTypeToComponentClass(_:)(a2, a3);
    if (v15)
    {
      goto LABEL_5;
    }

    (*(a3 + 80))(v26, a2, a3);
    if (LODWORD(v26[0]) == 36)
    {
      v15 = specialized static SceneManager.customComponentType(_:)(a2, a3);
LABEL_5:
      v16 = v15;

      if (*(a1 + 24))
      {
        goto LABEL_6;
      }

LABEL_15:
      result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      v19 = 0;
      goto LABEL_16;
    }
  }

  v16 = 0;
  if (!*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_6:
  outlined init with copy of EventSource?(a1, v21);
  if (!v22)
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pMd, &_s10RealityKit11EventSource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14RECoreBridging_pMd, &_s17RealityFoundation14RECoreBridging_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_12;
  }

  if (!*(&v24 + 1))
  {
LABEL_12:
    outlined destroy of BodyTrackingComponent?(&v23, &_s17RealityFoundation14RECoreBridging_pSgMd, &_s17RealityFoundation14RECoreBridging_pSgMR);
    outlined init with copy of EventSource?(a1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v19 = Optional._bridgeToObjectiveC()();
    outlined destroy of BodyTrackingComponent?(v26, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_unknownObjectRelease();
    result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    goto LABEL_16;
  }

  outlined init with take of ForceEffectBase(&v23, v26);
  v17 = v27;
  v18 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v19 = (*(v18 + 8))(v17, v18);
  outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  result = __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_16:
  *a7 = v13;
  a7[1] = v19;
  a7[2] = v16;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

void REEventBus.DispatcherHandle.hash(into:)()
{
  MEMORY[0x1C68F4C50](*v0);
  v1 = v0[1];
  if (v1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
    v2 = v0[2];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    if (v0[4])
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v2 = v0[2];
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v2);
  if (!v0[4])
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = v0[3];
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int REEventBus.DispatcherHandle.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v2);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
    v3 = v0[2];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v0[4])
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  v3 = v0[2];
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v3);
  if (!v0[4])
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = v0[3];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance REEventBus.DispatcherHandle()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return REEventBus.DispatcherHandle.hashValue.getter();
}

void protocol witness for Hashable.hash(into:) in conformance REEventBus.DispatcherHandle()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  REEventBus.DispatcherHandle.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REEventBus.DispatcherHandle()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v2);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v4);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance REEventBus.DispatcherHandle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static REEventBus.DispatcherHandle.== infix(_:_:)(v5, v7);
}

uint64_t *REEventBus.getOrCreateDispatcher<A>(handle:of:)(uint64_t *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    outlined destroy of BodyTrackingComponent?(&v10, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  type metadata accessor for REEventDispatcher();
  if (!swift_dynamicCast())
  {
LABEL_9:
    v8 = type metadata accessor for REEventDispatcher();
    v7 = specialized REEventDispatcher.__allocating_init(eventBus:coreHandle:sourceObject:componentType:matching:)(v2, *(v2 + 16), a1[1], a1[2], a1[3], a1[4]);
    v12[3] = v8;
    v12[0] = v7;
    swift_beginAccess();
    outlined init with copy of REEventBus.DispatcherHandle(a1, &v10);
    outlined init with copy of REEventBus.DispatcherHandle(a1, &v10);

    specialized Dictionary.subscript.setter(v12, a1);
    swift_endAccess();
    return v7;
  }

  return v12[0];
}

uint64_t REEventBus.publisher<A>(for:on:componentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  outlined init with copy of EventSource?(a1, v11);
  REEventBus.DispatcherHandle.init<A>(event:sourceObject:componentType:matching:)(v11, a2, a3, 0, 0, a4, v12);
  v9 = REEventBus.getOrCreateDispatcher<A>(handle:of:)(v12);
  outlined destroy of REEventBus.DispatcherHandle(v12);
  return Scene.CorePublisher.init(dispatcher:sourceObject:componentType:)(v9, v12[1], v12[2], a5);
}

uint64_t REEventBus.subscriber<A>(for:on:componentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  outlined init with copy of EventSource?(a1, v11);
  REEventBus.DispatcherHandle.init<A>(event:sourceObject:componentType:matching:)(v11, a2, a3, 0, 0, a4, v12);
  v9 = REEventBus.getOrCreateDispatcher<A>(handle:of:)(v12);
  outlined destroy of REEventBus.DispatcherHandle(v12);
  return __REEventSubscriber.init(dispatcher:sourceObject:componentType:)(v9, v12[1], v12[2], a5);
}

void *StoredEventSubscription.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - v3;
  v5 = swift_allocObject();
  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v6 = Publisher<>.sink(receiveValue:)();
  (*(v1 + 8))(v4, v0);
  v7 = type metadata accessor for AnyCancellable();
  v8 = MEMORY[0x1E695BF08];
  v5[5] = v7;
  v5[6] = v8;
  v5[2] = v6;
  return v5;
}

Swift::Void __swiftcall EventSubscription.cancel()()
{
  v1 = *v0;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of Cancellable.cancel()();
  __swift_destroy_boxed_opaque_existential_1(v2);
}

void *StoredEventSubscription.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v7 = Publisher<>.sink(receiveValue:)();
  (*(v3 + 8))(v6, v2);
  v8 = type metadata accessor for AnyCancellable();
  v9 = MEMORY[0x1E695BF08];
  v1[5] = v8;
  v1[6] = v9;
  v1[2] = v7;
  return v1;
}

unint64_t lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>()
{
  result = lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>;
  if (!lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>);
  }

  return result;
}

uint64_t StoredEventSubscription.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t _StoredEventSubscription.__allocating_init(to:on:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized _StoredEventSubscription.__allocating_init(to:on:componentType:_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t _StoredEventSubscription.init(to:on:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized _StoredEventSubscription.init(to:on:componentType:_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t _StoredEventSubscription.__allocating_init(to:on:componentType:rootEntity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_allocObject();
  v14 = specialized _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(a1, a2, a3, a4, a5, a6, a7);

  return v14;
}

uint64_t _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = specialized _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

uint64_t _StoredEventSubscription.subscribe(to:)()
{
  v1 = v0;
  v2 = *v0;
  v13 = v0[7];
  swift_beginAccess();
  outlined init with copy of EventSource?((v0 + 8), v14);
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[17];
  v10 = *(v2 + 128);
  v11 = *(v2 + 136);

  Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(v14, v3, v4, v7, v8, v15, v9, v10, v11);

  outlined destroy of BodyTrackingComponent?(v14, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  outlined init with take of ForceEffectBase(v15, (v1 + 2));
  return swift_endAccess();
}

void _StoredEventSubscription.init()()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 136);
  specialized _StoredEventSubscription.init()();
}

uint64_t _StoredEventSubscription.__ivar_destroyer()
{
  outlined destroy of BodyTrackingComponent?((v0 + 8), &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];
}

uint64_t *_StoredEventSubscription.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  outlined destroy of BodyTrackingComponent?((v0 + 8), &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  return v0;
}

uint64_t _StoredEventSubscription.__deallocating_deinit()
{
  _StoredEventSubscription.deinit();

  return swift_deallocClassInstance();
}

uint64_t _StoredEventSubscription.__allocating_init(to:on:matching:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of EventSource?(a2, v15);
  swift_allocObject();
  v12 = specialized _StoredEventSubscription.init(to:on:componentType:_:)(a1, v15, 0, 0, a5, a6);

  outlined destroy of BodyTrackingComponent?(a2, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  v13 = *(v12 + 152);
  *(v12 + 144) = a3;
  *(v12 + 152) = a4;

  return v12;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v39 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v36 = a4;
LABEL_10:
    v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + v13);
    v38[0] = v14;
    v38[1] = v15;
    a2(v37, v38);
    v17 = v37[0];
    v16 = v37[1];
    v18 = *v39;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v37[0]);
    v21 = *(v18 + 16);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_21;
    }

    v24 = v19;
    if (*(v18 + 24) >= v23)
    {
      if ((v36 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v25 = v39;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v36 & 1);
      v26 = *v25;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v24 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

      v20 = v27;
    }

    v9 &= v9 - 1;
    a4 = 1;
    if ((v24 & 1) == 0)
    {
      v29 = *v39;
      v29[(v20 >> 6) + 8] |= 1 << v20;
      *(v29[6] + 8 * v20) = v17;
      *(v29[7] + 8 * v20) = v16;
      v30 = v29[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_22;
      }

      v29[2] = v32;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v36 = a4;
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized static RegisteredEventsToEventBusIds.generateRegisteredEventsToEventBusIds()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySO_s6UInt64VtGMd, &_ss23_ContiguousArrayStorageCySO_s6UInt64VtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C18CFE40;
  type metadata accessor for REEngineDoUpdateEvent(0);
  *(inited + 32) = v1;
  *(inited + 40) = MEMORY[0x1C68F97D0]("REEngineDoUpdateEvent");
  type metadata accessor for REEngineDoRenderEvent(0);
  *(inited + 48) = v2;
  *(inited + 56) = MEMORY[0x1C68F97D0]("REEngineDoRenderEvent");
  type metadata accessor for RESceneAnchoredStateChangedEvent(0);
  *(inited + 64) = v3;
  *(inited + 72) = MEMORY[0x1C68F97D0]("RESceneAnchoredStateChangedEvent");
  type metadata accessor for RESceneEntityDidAddEvent(0);
  *(inited + 80) = v4;
  *(inited + 88) = MEMORY[0x1C68F97D0]("RESceneEntityDidAddEvent");
  type metadata accessor for RESceneEntityDidActivateEvent(0);
  *(inited + 96) = v5;
  *(inited + 104) = MEMORY[0x1C68F97D0]("RESceneEntityDidActivateEvent");
  type metadata accessor for RESceneEntityWillDeactivateEvent(0);
  *(inited + 112) = v6;
  *(inited + 120) = MEMORY[0x1C68F97D0]("RESceneEntityWillDeactivateEvent");
  type metadata accessor for RESceneEntityWillRemoveEvent(0);
  *(inited + 128) = v7;
  *(inited + 136) = MEMORY[0x1C68F97D0]("RESceneEntityWillRemoveEvent");
  type metadata accessor for RESceneEntityDidReparentEvent(0);
  *(inited + 144) = v8;
  *(inited + 152) = MEMORY[0x1C68F97D0]("RESceneEntityDidReparentEvent");
  type metadata accessor for REAnimationHasCompletedEvent(0);
  *(inited + 160) = v9;
  *(inited + 168) = MEMORY[0x1C68F97D0]("REAnimationHasCompletedEvent");
  type metadata accessor for REAnimationHasLoopedEvent(0);
  *(inited + 176) = v10;
  *(inited + 184) = MEMORY[0x1C68F97D0]("REAnimationHasLoopedEvent");
  type metadata accessor for REAnimationHasTerminatedEvent(0);
  *(inited + 192) = v11;
  *(inited + 200) = MEMORY[0x1C68F97D0]("REAnimationHasTerminatedEvent");
  type metadata accessor for REAnimationHasStartedEvent(0);
  *(inited + 208) = v12;
  *(inited + 216) = MEMORY[0x1C68F97D0]("REAnimationHasStartedEvent");
  type metadata accessor for REAnimationHasTimelineEventStart(0);
  *(inited + 224) = v13;
  *(inited + 232) = MEMORY[0x1C68F97D0]("REAnimationHasTimelineEventStart");
  type metadata accessor for REAnimationHasTimelineEventUpdate(0);
  *(inited + 240) = v14;
  *(inited + 248) = MEMORY[0x1C68F97D0]("REAnimationHasTimelineEventUpdate");
  type metadata accessor for REAnimationHasTimelineEventEnd(0);
  *(inited + 256) = v15;
  *(inited + 264) = MEMORY[0x1C68F97D0]("REAnimationHasTimelineEventEnd");
  type metadata accessor for REAnimationTimelineEventSkipped(0);
  *(inited + 272) = v16;
  *(inited + 280) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventSkipped");
  type metadata accessor for REAnimationTimelineEventPause(0);
  *(inited + 288) = v17;
  *(inited + 296) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventPause");
  type metadata accessor for REAnimationTimelineEventResume(0);
  *(inited + 304) = v18;
  *(inited + 312) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventResume");
  type metadata accessor for REAnimationTimelineEventTerminated(0);
  *(inited + 320) = v19;
  *(inited + 328) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventTerminated");
  type metadata accessor for REAnimationTimelineEventCreated(0);
  *(inited + 336) = v20;
  *(inited + 344) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventCreated");
  type metadata accessor for RECollisionDidStartEventEx(0);
  *(inited + 352) = v21;
  *(inited + 360) = MEMORY[0x1C68F97D0]("RECollisionDidStartEventEx");
  type metadata accessor for RECollisionDidUpdateEventEx(0);
  *(inited + 368) = v22;
  *(inited + 376) = MEMORY[0x1C68F97D0]("RECollisionDidUpdateEventEx");
  type metadata accessor for RECollisionDidStopEvent(0);
  *(inited + 384) = v23;
  *(inited + 392) = MEMORY[0x1C68F97D0]("RECollisionDidStopEvent");
  type metadata accessor for REComponentDidAddEvent(0);
  *(inited + 400) = v24;
  *(inited + 408) = MEMORY[0x1C68F97D0]("REComponentDidAddEvent");
  type metadata accessor for REComponentDidActivateEvent(0);
  *(inited + 416) = v25;
  *(inited + 424) = MEMORY[0x1C68F97D0]("REComponentDidActivateEvent");
  type metadata accessor for REComponentWillDeactivateEvent(0);
  *(inited + 432) = v26;
  *(inited + 440) = MEMORY[0x1C68F97D0]("REComponentWillDeactivateEvent");
  type metadata accessor for REComponentWillRemoveEvent(0);
  *(inited + 448) = v27;
  *(inited + 456) = MEMORY[0x1C68F97D0]("REComponentWillRemoveEvent");
  type metadata accessor for REComponentDidChangeEvent(0);
  *(inited + 464) = v28;
  *(inited + 472) = MEMORY[0x1C68F97D0]("REComponentDidChangeEvent");
  type metadata accessor for REMotionStateDidChangeEvent(0);
  *(inited + 480) = v29;
  *(inited + 488) = MEMORY[0x1C68F97D0]("REMotionStateDidChangeEvent");
  type metadata accessor for REOwnershipRequestEvent(0);
  *(inited + 496) = v30;
  *(inited + 504) = MEMORY[0x1C68F97D0]("REOwnershipRequestEvent");
  type metadata accessor for REOwnershipResponseEvent(0);
  *(inited + 512) = v31;
  *(inited + 520) = MEMORY[0x1C68F97D0]("REOwnershipResponseEvent");
  type metadata accessor for REOwnershipChangedEvent(0);
  *(inited + 528) = v32;
  *(inited + 536) = MEMORY[0x1C68F97D0]("REOwnershipChangedEvent");
  type metadata accessor for REAudioPlayerDidStartEvent(0);
  *(inited + 544) = v33;
  *(inited + 552) = MEMORY[0x1C68F97D0]("REAudioPlayerDidStartEvent");
  type metadata accessor for REAudioPlayerDidCompleteEvent(0);
  *(inited + 560) = v34;
  *(inited + 568) = MEMORY[0x1C68F97D0]("REAudioPlayerDidCompleteEvent");
  *(inited + 576) = &type metadata for EngineRenderEvent;
  *(inited + 584) = MEMORY[0x1C68F97D0]("EngineRenderEvent");
  type metadata accessor for REEntityPhysicsWillSimulateEvent(0);
  *(inited + 592) = v35;
  *(inited + 600) = MEMORY[0x1C68F97D0]("REEntityPhysicsWillSimulateEvent");
  type metadata accessor for REEntityPhysicsDidSimulateEvent(0);
  *(inited + 608) = v36;
  *(inited + 616) = MEMORY[0x1C68F97D0]("REEntityPhysicsDidSimulateEvent");
  type metadata accessor for REEntityForceEffectComputeForcesEvent(0);
  *(inited + 624) = v37;
  *(inited + 632) = MEMORY[0x1C68F97D0]("REEntityForceEffectComputeForcesEvent");
  type metadata accessor for REAnimationSkeletalPoseUpdateCompleteEvent(0);
  *(inited + 640) = v38;
  *(inited + 648) = MEMORY[0x1C68F97D0]("REAnimationSkeletalPoseUpdateCompleteEvent");
  type metadata accessor for REVideoPlayerContentTypeChangedEvent(0);
  *(inited + 656) = v39;
  *(inited + 664) = MEMORY[0x1C68F97D0]("REVideoPlayerContentTypeChangedEvent");
  type metadata accessor for REVideoPlayerVideoSizeChangedEvent(0);
  *(inited + 672) = v40;
  *(inited + 680) = MEMORY[0x1C68F97D0]("REVideoPlayerVideoSizeChangedEvent");
  type metadata accessor for REVideoPlayerViewingModeChangedEvent(0);
  *(inited + 688) = v41;
  *(inited + 696) = MEMORY[0x1C68F97D0]("REVideoPlayerViewingModeChangedEvent");
  type metadata accessor for REVideoPlayerVideoReceiverEndpointChangedEvent(0);
  *(inited + 704) = v42;
  *(inited + 712) = MEMORY[0x1C68F97D0]("REVideoPlayerVideoReceiverEndpointChangedEvent");
  type metadata accessor for REAnchorStateDidAnchorEvent(0);
  *(inited + 720) = v43;
  *(inited + 728) = MEMORY[0x1C68F97D0]("REAnchorStateDidAnchorEvent");
  type metadata accessor for REAnchorStateWillUnanchorEvent(0);
  *(inited + 736) = v44;
  *(inited + 744) = MEMORY[0x1C68F97D0]("REAnchorStateWillUnanchorEvent");
  type metadata accessor for REAnchorStateDidFailToAnchorEvent(0);
  *(inited + 752) = v45;
  *(inited + 760) = MEMORY[0x1C68F97D0]("REAnchorStateDidFailToAnchorEvent");
  type metadata accessor for REAnchoringTrackingStateEvent(0);
  *(inited + 768) = v46;
  *(inited + 776) = MEMORY[0x1C68F97D0]("REAnchoringTrackingStateEvent");
  v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt64VTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v48 = MEMORY[0x1C68F97D0]("EngineUpdateEvent");
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, &type metadata for EngineUpdateEvent, isUniquelyReferenced_nonNull_native);
  v50 = v47;
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1C1897F90;
  *(v51 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd, &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR);
  *(v51 + 40) = MEMORY[0x1C68F97D0]("AccessibilityRotorNavigationEvent");
  *(v51 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AccessibilityActivateEvent_pMd, &_s17RealityFoundation26AccessibilityActivateEvent_pMR);
  *(v51 + 56) = MEMORY[0x1C68F97D0]("AccessibilityActivateEvent");
  *(v51 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityIncrementEvent_pMd, &_s17RealityFoundation27AccessibilityIncrementEvent_pMR);
  *(v51 + 72) = MEMORY[0x1C68F97D0]("AccessibilityIncrementEvent");
  *(v51 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityDecrementEvent_pMd, &_s17RealityFoundation27AccessibilityDecrementEvent_pMR);
  *(v51 + 88) = MEMORY[0x1C68F97D0]("AccessibilityDecrementEvent");
  *(v51 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30AccessibilityCustomActionEvent_pMd, &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR);
  *(v51 + 104) = MEMORY[0x1C68F97D0]("AccessibilityCustomActionEvent");
  v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt64VTt0g5Tf4g_n(v51);
  swift_setDeallocating();
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v50;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v52, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v53, &v55);
  return v55;
}

BOOL specialized static REEventBus.DispatcherHandle.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6)
  {
    return v7 && (a1[3] == a2[3] && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v7;
}

uint64_t specialized _StoredEventSubscription.init(to:on:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v23 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 56) = a1;
  swift_beginAccess();
  outlined assign with copy of EventSource?(a2, v7 + 64);
  swift_endAccess();
  *(v7 + 104) = a3;
  *(v7 + 112) = a4;
  v18 = *(v7 + 120);
  *(v7 + 120) = 0;

  *(v7 + 128) = v23;
  *(v7 + 136) = a6;

  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v19 = Publisher<>.sink(receiveValue:)();
  (*(v14 + 8))(v17, v13);
  v20 = type metadata accessor for AnyCancellable();
  v21 = MEMORY[0x1E695BF08];
  *(v7 + 40) = v20;
  *(v7 + 48) = v21;
  *(v7 + 16) = v19;
  outlined destroy of BodyTrackingComponent?(a2, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  return v7;
}

uint64_t specialized _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a4;
  v27 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 56) = a1;
  swift_beginAccess();
  outlined assign with copy of EventSource?(a2, v8 + 64);
  swift_endAccess();
  v19 = v26;
  *(v8 + 104) = a3;
  *(v8 + 112) = v19;
  v20 = *(v8 + 120);
  *(v8 + 120) = a5;

  *(v8 + 128) = v27;
  *(v8 + 136) = a7;

  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v21 = Publisher<>.sink(receiveValue:)();
  (*(v15 + 8))(v18, v14);
  v22 = type metadata accessor for AnyCancellable();
  v23 = MEMORY[0x1E695BF08];
  *(v8 + 40) = v22;
  *(v8 + 48) = v23;
  *(v8 + 16) = v21;
  outlined destroy of BodyTrackingComponent?(a2, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  return v8;
}

uint64_t outlined init with copy of EventSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for REEventBus.DispatcherHandle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for REEventBus.DispatcherHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle()
{
  result = lazy protocol witness table cache variable for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle;
  if (!lazy protocol witness table cache variable for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle);
  }

  return result;
}

uint64_t outlined assign with copy of EventSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized MeshBuffer.Iterator.next()()
{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

uint64_t specialized MeshBuffer.Iterator.next()(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + 8))
  {
    return 0;
  }

  v3 = v1;
  v4 = *(v1 + 8);

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v13 & 1) == 0)
  {
    v10 = v12;

    return v10;
  }

  v5 = *(v1 + 24);
  v6 = (*(v3 + 16))(*v3);
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  *v3 = v6;
  *(v3 + 8) = v8;
  v10 = a1(v9);

  return v10;
}

{
  if (!*(v1 + 8))
  {
    return 0;
  }

  v3 = v1;
  v4 = *(v1 + 8);

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v13 & 1) == 0)
  {
    v10 = v12;

    return v10;
  }

  v5 = *(v1 + 24);
  v6 = (*(v3 + 16))(*v3);
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  *v3 = v6;
  *(v3 + 8) = v8;
  v10 = a1(v9);

  return v10;
}

{
  if (!*(v1 + 8))
  {
    goto LABEL_5;
  }

  v3 = v1;
  v4 = *(v1 + 8);

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v14 & 1) == 0)
  {
    LOWORD(v10) = v13;

    v11 = 0;
    return v10 | (v11 << 16);
  }

  v5 = *(v1 + 24);
  v6 = (*(v3 + 16))(*v3);
  v8 = v7;

  if (v8)
  {
    *v3 = v6;
    *(v3 + 8) = v8;
    v10 = a1(v9);

    v11 = HIWORD(v10) & 1;
  }

  else
  {
LABEL_5:
    LOWORD(v10) = 0;
    v11 = 1;
  }

  return v10 | (v11 << 16);
}

{
  if (!*(v1 + 8))
  {
    goto LABEL_5;
  }

  v3 = v1;
  v4 = *(v1 + 8);

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v14 & 1) == 0)
  {
    LOBYTE(v10) = v13;

    v11 = 0;
    return v10 | (v11 << 8);
  }

  v5 = *(v1 + 24);
  v6 = (*(v3 + 16))(*v3);
  v8 = v7;

  if (v8)
  {
    *v3 = v6;
    *(v3 + 8) = v8;
    v10 = a1(v9);

    v11 = (v10 >> 8) & 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v10) = 0;
    v11 = 1;
  }

  return v10 | (v11 << 8);
}

unint64_t specialized MeshBuffer.Iterator.next()(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + 8))
  {
    goto LABEL_5;
  }

  v3 = v1;
  v4 = *(v1 + 8);

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v14 & 1) == 0)
  {
    LODWORD(v10) = v13;

    LOBYTE(v11) = 0;
    return v10 | (v11 << 32);
  }

  v5 = *(v1 + 24);
  v6 = (*(v3 + 16))(*v3);
  v8 = v7;

  if (v8)
  {
    *v3 = v6;
    *(v3 + 8) = v8;
    v10 = a1(v9);

    v11 = HIDWORD(v10) & 1;
  }

  else
  {
LABEL_5:
    LODWORD(v10) = 0;
    LOBYTE(v11) = 1;
  }

  return v10 | (v11 << 32);
}

void specialized MeshBuffer.Iterator.next()(uint64_t a1@<X8>)
{
  if (!*(v1 + 8))
  {
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 1;
    return;
  }

  v3 = v1;
  v4 = *(v1 + 8);

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (v11)
  {
    v5 = *(v1 + 24);
    v6 = (*(v3 + 16))(*v3);
    v8 = v7;

    if (v8)
    {
      *v3 = v6;
      *(v3 + 8) = v8;
      specialized MeshBuffer.Iterator.next()(v9);

      return;
    }

    goto LABEL_5;
  }

  *a1 = v10;
  *(a1 + 8) = 0;
}

uint64_t ShapeResource.offsetBy(translation:)(int8x16_t a1)
{
  v1 = a1;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
    v1 = a1;
  }

  v2 = static simd_quatf.identity;

  return ShapeResource.offsetBy(rotation:translation:)(v2, v1);
}

uint64_t one-time initialization function for empty()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v8);
  Empty = REAssetManagerCollisionShapeAssetCreateEmpty();
  type metadata accessor for ShapeResource();
  v4 = swift_allocObject();
  *(v4 + 16) = Empty;
  REPoseIdentity();
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  RERetain();
  REAssetSetSwiftObject();
  result = RERelease();
  static ShapeResource.empty = v4;
  return result;
}

uint64_t ShapeResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  REPoseIdentity();
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

double ShapeResource.bounds.getter()
{
  v1 = *(v0 + 16);
  if (!RECollisionShapeAssetGetCollisionShape())
  {
    return 1.40444843e306;
  }

  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  RECollisionShapeGetBoundingBox();
  return result;
}

uint64_t ShapeResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  REPoseIdentity();
  *(v1 + 32) = v2;
  *(v1 + 48) = v3;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t ShapeResource.deinit()
{
  v1 = v0;
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  v5 = *(v1 + 16);
  REAssetManagerCollisionShapeAssetRegistryRemove();
  REAssetSetSwiftObject();
  RERelease();
  return v1;
}

uint64_t ShapeResource.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for __ServiceLocator();
  v2 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v7);

  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  v5 = *(v1 + 16);
  REAssetManagerCollisionShapeAssetRegistryRemove();
  REAssetSetSwiftObject();
  RERelease();
  return swift_deallocClassInstance();
}

uint64_t ShapeResource.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1C68F4C10](v2[1].n128_u64[0]);
  specialized SIMD.hash(into:)(a1, v2[2]);
  specialized SIMD.hash(into:)(a1, v2[3]);
  if (RECollisionShapeAssetGetCollisionShape())
  {
    RECollisionShapeGetBoundingBox();
    v7 = v5;
  }

  else
  {
    v7 = xmmword_1C189A800;
    v4 = xmmword_1C189A7F0;
  }

  specialized SIMD.hash(into:)(a1, v4);

  return specialized SIMD.hash(into:)(a1, v7);
}

Swift::Int ShapeResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  ShapeResource.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ShapeResource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ShapeResource.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShapeResource()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  ShapeResource.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t ShapeResource.offsetBy(rotation:translation:)(float32x4_t a1, int8x16_t a2)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(a1)))) & 1) == 0 && *a2.i32 == 0.0 && (v3 = vceqz_f32(vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL)), (v3.i8[0]) && (v3.i8[4])
  {
  }

  else
  {
    v4 = type metadata accessor for ShapeResource();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 48);
    REPoseMultiply();
    *(v5 + 32) = v8;
    *(v5 + 48) = v9;
    RERetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 56) = v4;
    *(inited + 64) = &protocol witness table for ShapeResource;
    *(inited + 32) = v5;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    return v5;
  }

  return v2;
}

uint64_t ShapeResource.offsetBy(rotation:)(__n128 a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = static MeshResource.generate(from:);

  return ShapeResource.offsetBy(rotation:translation:)(a1, 0);
}

uint64_t ShapeResource.offsetBy(rotation:translation:)(__n128 a1, __n128 a2)
{
  v3[3].n128_u64[0] = v2;
  v3[1] = a1;
  v3[2] = a2;
  type metadata accessor for MainActor();
  v3[3].n128_u64[1] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[4].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;

  return MEMORY[0x1EEE6DFA0](ShapeResource.offsetBy(rotation:translation:), v5, v4);
}

uint64_t ShapeResource.offsetBy(rotation:translation:)()
{
  v1 = *(v0 + 32);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v0 + 16))))) & 1) == 0 && *v1.i32 == 0.0 && (v2 = vceqz_f32(vext_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL), 4uLL)), (v2.i8[0]) && (v2.i8[4])
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);

    v5 = *(v0 + 48);
    v15 = *(v0 + 8);

    return v15(v5);
  }

  else
  {
    v7 = *(v0 + 48);
    v14 = *(v0 + 32);
    type metadata accessor for ShapeResource();
    v8 = swift_allocObject();
    *(v0 + 80) = v8;
    *(v8 + 16) = *(v7 + 16);
    v9 = *(v7 + 32);
    v10 = *(v7 + 48);
    REPoseMultiply();
    *(v8 + 32) = v11;
    *(v8 + 48) = v12;
    RERetain();
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = ShapeResource.offsetBy(rotation:translation:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = ShapeResource.offsetBy(rotation:translation:);
  }

  else
  {
    v7 = ShapeResource.offsetBy(rotation:translation:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t ShapeResource.offsetBy(translation:)(__n128 a1)
{
  v2[2].n128_u64[0] = v1;
  v2[1] = a1;
  type metadata accessor for MainActor();
  v2[2].n128_u64[1] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[3].n128_u64[0] = v4;
  v2[3].n128_u64[1] = v3;

  return MEMORY[0x1EEE6DFA0](ShapeResource.offsetBy(translation:), v4, v3);
}

uint64_t ShapeResource.offsetBy(translation:)()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v5 = static simd_quatf.identity;
  v1 = swift_task_alloc();
  v0[4].n128_u64[0] = v1;
  *v1 = v0;
  v1[1] = ShapeResource.offsetBy(translation:);
  v2 = v0[2].n128_u64[0];
  v3 = v0[1];

  return ShapeResource.offsetBy(rotation:translation:)(v5, v3);
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t ShapeResource.offsetBy(translation:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = ShapeResource.offsetBy(translation:);
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = ShapeResource.offsetBy(translation:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static ShapeResource.generateBox(size:)(__n128 a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static ShapeResource.generateBox(width:height:depth:);

  return specialized static ShapeResource.generateBox(size:)(a1);
}

uint64_t static ShapeResource.generateBox(width:height:depth:)(float a1, float a2, float a3)
{
  v4.n128_u64[0] = __PAIR64__(LODWORD(a2), LODWORD(a1));
  v4.n128_u64[1] = LODWORD(a3);
  v7 = v4;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = static ShapeResource.generateBox(width:height:depth:);

  return specialized static ShapeResource.generateBox(size:)(v7);
}

uint64_t static ShapeResource.generateCapsule(height:radius:)()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v10);
  v1 = v11;
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  Capsule = REAssetManagerCollisionShapeAssetCreateCapsule();
  v4 = type metadata accessor for ShapeResource();
  v5 = swift_allocObject();
  *(v5 + 16) = Capsule;
  REPoseIdentity();
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  RERetain();
  REAssetSetSwiftObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v4;
  *(inited + 64) = &protocol witness table for ShapeResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  return v5;
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 124);
  *(v0 + 80) = RECapsuleShapeCreate();
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), v4, v3);
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  result = REAssetManagerCollisionShapeAssetCreateFromCollisionShape();
  if (result)
  {
    v7 = result;
    type metadata accessor for ShapeResource();
    v8 = swift_allocObject();
    v0[12] = v8;
    *(v8 + 16) = v7;
    REPoseIdentity();
    *(v8 + 32) = v9;
    *(v8 + 48) = v10;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = static ShapeResource.generateCapsule(height:radius:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[12];

    return v4(v5);
  }
}

uint64_t static ShapeResource.generateCapsule(height:radius:)(float a1, float a2)
{
  *(v2 + 120) = a1;
  *(v2 + 124) = a2;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), 0, 0);
}

uint64_t static ShapeResource.generateConvex(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  ConvexPolyhedronNullable = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronNullable();
  if (ConvexPolyhedronNullable)
  {
    v6 = ConvexPolyhedronNullable;
    v7 = type metadata accessor for ShapeResource();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    REPoseIdentity();
    *(v8 + 32) = v9;
    *(v8 + 48) = v10;
    RERetain();
    REAssetSetSwiftObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for ShapeResource;
    *(inited + 32) = v8;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    RERelease();
    return v8;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (*(a1 + 16))
  {
    ConvexPolyhedronFromMesh = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronFromMesh();
    v6 = type metadata accessor for ShapeResource();
    v7 = swift_allocObject();
    *(v7 + 16) = ConvexPolyhedronFromMesh;
    REPoseIdentity();
    *(v7 + 32) = v8;
    *(v7 + 48) = v9;
    RERetain();
    REAssetSetSwiftObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 56) = v6;
    *(inited + 64) = &protocol witness table for ShapeResource;
    *(inited + 32) = v7;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    RERelease();
    return v7;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

{
  *(v1 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
}

{
  *(v1 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
}

uint64_t static ShapeResource.generateConvex2(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  ConvexPolyhedronNullable = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronNullable();
  if (!ConvexPolyhedronNullable)
  {
    return 0;
  }

  v6 = ConvexPolyhedronNullable;
  type metadata accessor for ShapeResource();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  REPoseIdentity();
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  return v7;
}

uint64_t static ShapeResource.generateConvex(from:)()
{
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), v2, v1);
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (*(v2 + 16))
  {
    ConvexPolyhedronFromMesh = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronFromMesh();
    type metadata accessor for ShapeResource();
    v8 = swift_allocObject();
    v0[12] = v8;
    *(v8 + 16) = ConvexPolyhedronFromMesh;
    REPoseIdentity();
    *(v8 + 32) = v9;
    *(v8 + 48) = v10;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = static ShapeResource.generateConvex(from:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[12];

    return v4(v5);
  }
}

{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

{
  v1 = *(v0[10] + 16);
  Nullable = REConvexPolyhedronShapeCreateNullable();
  v0[11] = Nullable;
  if (Nullable)
  {
    type metadata accessor for MainActor();
    v0[12] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), v4, v3);
  }

  else
  {
    lazy protocol witness table accessor for type ShapeResourceError and conformance ShapeResourceError();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

{
  v2 = v0[11];
  v1 = v0[12];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  result = REAssetManagerCollisionShapeAssetCreateFromCollisionShape();
  if (result)
  {
    v7 = result;
    type metadata accessor for ShapeResource();
    v8 = swift_allocObject();
    v0[13] = v8;
    *(v8 + 16) = v7;
    REPoseIdentity();
    *(v8 + 32) = v9;
    *(v8 + 48) = v10;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = static ShapeResource.generateConvex(from:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[13];

    return v4(v5);
  }
}

{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

uint64_t static ShapeResource.generateSphere(radius:)()
{
  v1 = *(v0 + 120);
  *(v0 + 80) = RESphereShapeCreate();
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), v3, v2);
}

unint64_t ShapeResourceError.errorDescription.getter()
{
  if (*v0)
  {
    result = 0xD0000000000000A3;
  }

  else
  {
    result = 0xD000000000000068;
  }

  *v0;
  return result;
}

Swift::Int ShapeResourceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance ShapeResourceError()
{
  if (*v0)
  {
    result = 0xD0000000000000A3;
  }

  else
  {
    result = 0xD000000000000068;
  }

  *v0;
  return result;
}

uint64_t static ShapeResource.generateStaticMesh(positions:faceIndices:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return (specialized static ShapeResource.generateStaticMesh(positions:faceIndices:))(a1, a2);
}

uint64_t static ShapeResource.generateStaticMesh(positions:faceIndices:)()
{
  v1 = *(v0[10] + 16);
  v2 = *(v0[11] + 16);
  v3 = RECollisionMeshCreateFromSIMDPositions();
  v0[12] = v3;
  if (v3)
  {
    type metadata accessor for MainActor();
    v0[13] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(positions:faceIndices:), v5, v4);
  }

  else
  {
    lazy protocol witness table accessor for type ShapeResourceError and conformance ShapeResourceError();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

{
  v2 = v0[12];
  v1 = v0[13];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  REAssetManagerCollisionMeshAssetCreateFromMesh();
  CollisionMesh = REAssetManagerCollisionShapeAssetCreateCollisionMesh();
  type metadata accessor for ShapeResource();
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = CollisionMesh;
  REPoseIdentity();
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = static ShapeResource.generateStaticMesh(positions:faceIndices:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[14];

    return v4(v5);
  }
}

{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t static ShapeResource.generateStaticMesh(from:)(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1[65] = a1;
  type metadata accessor for MainActor();
  v1[66] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[67] = v2;
  v1[68] = v3;
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(from:), v2, v3);
}

{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 568);
  v14 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v6 = v4[68];
    v7 = v4[67];
    v8 = static ShapeResource.generateStaticMesh(from:);
  }

  else
  {
    v9 = v4[70];
    v10 = v4[69];

    v4[73] = a1;
    v6 = v4[68];
    v7 = v4[67];
    v8 = static ShapeResource.generateStaticMesh(from:);
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t static ShapeResource.generateStaticMesh(from:)()
{
  v158 = v0;
  v157 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 520);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 504) = MEMORY[0x1E69E7CC0];
  *(v0 + 512) = v2;
  v3 = *(v1 + 16);
  if (!v3)
  {
    __break(1u);
  }

  v4 = *(v1 + 16);
  v5 = REMeshAssetGetDirectMesh();
  v143 = v0;
  if (v5)
  {
    v6 = v5;
    type metadata accessor for LowLevelMesh();
    swift_allocObject();
    v7 = LowLevelMesh.init(from:)(v6);
    v8 = LowLevelMesh.extractPositionsForStaticMesh()();
    if (*(v8 + 16))
    {
      v139 = v8;
      v9 = LowLevelMesh.extractIndicesForStaticMesh()();
      v10 = v9;
      if (*(v9 + 16))
      {
        v11 = v139 + 32;
        v137 = v9 + 32;
        v12 = v7[2];
        v144 = 0;
        v13 = 0;
        v136 = (v10 + 40);
        v141 = v10;
        do
        {
LABEL_6:
          if (v13 == DRMeshGetPartCount())
          {

            goto LABEL_101;
          }

          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = xmmword_1C18AB200;
          *(v0 + 48) = xmmword_1C189A7F0;
          *(v0 + 64) = xmmword_1C189A800;
          DRMeshGetPartAt();
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_114;
          }

          v15 = *(v0 + 24);
          ++v13;
        }

        while (v15 < 3);
        v16 = *(v0 + 32);
        v13 = v14;
        if (v16 == 4)
        {
          v29 = v12;
          v30 = 0;
          v31 = v15 - 2;
          v32 = v144;
          while (1)
          {
            v33 = v30 + 1;
            v34 = *(v10 + 16);
            if (v30)
            {
              if (v30 >= v34)
              {
                goto LABEL_134;
              }

              v36 = v30 + 2;
              v35 = v30 + 1;
              if (v30 + 2 >= v34)
              {
                goto LABEL_136;
              }
            }

            else
            {
              if (v30 >= v34)
              {
                goto LABEL_135;
              }

              if (v33 >= v34)
              {
                goto LABEL_137;
              }

              v35 = v30 + 2;
              v36 = v30 + 1;
              if (v30 + 2 >= v34)
              {
                goto LABEL_138;
              }
            }

            v0 = *(v137 + 4 * v30);
            v37 = *(v137 + 4 * v36);
            v38 = *(v137 + 4 * v35);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
            v39 = swift_allocObject();
            v39[1] = xmmword_1C1897FD0;
            v40 = *(v139 + 16);
            if (v40 <= v0)
            {
              break;
            }

            v39[2] = *(v11 + 16 * v0);
            if (v40 <= v37)
            {
              goto LABEL_118;
            }

            v39[3] = *(v11 + 16 * v37);
            if (v40 <= v38)
            {
              goto LABEL_119;
            }

            v39[4] = *(v11 + 16 * v38);
            specialized Array.append<A>(contentsOf:)(v39);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
            v41 = swift_allocObject();
            *(v41 + 16) = xmmword_1C1897FD0;
            if ((v144 & 0x8000000000000000) != 0)
            {
              goto LABEL_120;
            }

            if (HIDWORD(v32))
            {
              goto LABEL_121;
            }

            *(v41 + 32) = v32;
            if (v32 == 0xFFFFFFFF)
            {
              goto LABEL_122;
            }

            *(v41 + 36) = v32 + 1;
            if (v32 > 0xFFFFFFFD)
            {
              goto LABEL_123;
            }

            *(v41 + 40) = v32 + 2;
            specialized Array.append<A>(contentsOf:)(v41);
            v32 += 3;
            v30 = v33;
            v10 = v141;
            if (v31 == v33)
            {
              v144 = v32;
              v0 = v143;
              v12 = v29;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_115;
          }

          v133 = v12;
          v134 = v7;
          v17 = 0;
          v18 = v136;
          v19 = v144;
          v0 = v139;
          while (1)
          {
            v20 = *(v10 + 16);
            if (v17 >= v20)
            {
              break;
            }

            v21 = v17 + 1;
            if (v21 >= v20)
            {
              goto LABEL_125;
            }

            v22 = v21 + 1;
            if (v21 + 1 >= v20)
            {
              goto LABEL_126;
            }

            v23 = *(v18 - 2);
            v24 = *(v18 - 1);
            v25 = *v18;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
            v26 = swift_allocObject();
            v26[1] = xmmword_1C1897FD0;
            v27 = *(v139 + 16);
            if (v27 <= v23)
            {
              goto LABEL_127;
            }

            v26[2] = *(v11 + 16 * v23);
            if (v27 <= v24)
            {
              goto LABEL_128;
            }

            v26[3] = *(v11 + 16 * v24);
            if (v27 <= v25)
            {
              goto LABEL_129;
            }

            v26[4] = *(v11 + 16 * v25);
            specialized Array.append<A>(contentsOf:)(v26);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_1C1897FD0;
            if ((v144 & 0x8000000000000000) != 0)
            {
              goto LABEL_130;
            }

            if (HIDWORD(v19))
            {
              goto LABEL_131;
            }

            *(v28 + 32) = v19;
            if (v19 == 0xFFFFFFFF)
            {
              goto LABEL_132;
            }

            *(v28 + 36) = v19 + 1;
            if (v19 > 0xFFFFFFFD)
            {
              goto LABEL_133;
            }

            *(v28 + 40) = v19 + 2;
            specialized Array.append<A>(contentsOf:)(v28);
            v19 += 3;
            v18 += 3;
            v17 = v22 + 1;
            v10 = v141;
            if ((v22 + 1) >= v15)
            {
              v144 = v19;
              v0 = v143;
              v12 = v133;
              v7 = v134;
              goto LABEL_6;
            }
          }
        }

        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v120 = *(v0 + 528);
    }

    else
    {
      v114 = *(v0 + 528);
    }

    if (one-time initialization token for empty == -1)
    {
LABEL_106:
      v121 = static ShapeResource.empty;

      goto LABEL_107;
    }

LABEL_142:
    swift_once();
    goto LABEL_106;
  }

  v130 = v3;
  MeshResource.Contents.init(_:)(v3, &v151);
  v42 = v152;

  v43 = v42;

  v128 = *(v42 + 16);
  if (!v128)
  {
LABEL_100:

LABEL_101:
    v116 = *(v0 + 504);
    v115 = *(v0 + 512);
    *(v0 + 552) = v116;
    *(v0 + 560) = v115;
    v117 = swift_task_alloc();
    *(v0 + 568) = v117;
    *v117 = v0;
    v117[1] = static ShapeResource.generateStaticMesh(from:);
    v118 = *MEMORY[0x1E69E9840];

    return specialized static ShapeResource.generateStaticMesh(positions:faceIndices:)(v116, v115);
  }

  v44 = 0;
  v145 = 0;
  v129 = v42 + 32;
  v127 = v42;
  while (1)
  {
    if (v44 >= *(v43 + 16))
    {
      goto LABEL_139;
    }

    v45 = (v129 + 96 * v44);
    v46 = v45[1].i64[0];
    v47 = v45[1].i64[1];
    v148 = v45[3];
    v149 = v45[2];
    v146 = v45[5];
    v147 = v45[4];
    v131 = v45->i64[1];
    v132 = v44;

    MeshResource.Contents.init(_:)(v130, &v151);
    v48 = v151;
    v12 = v153;

    if (!*(*(&v48 + 1) + 16) || (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47), (v50 & 1) == 0))
    {
LABEL_144:

      __break(1u);
LABEL_145:
      swift_once();
      goto LABEL_116;
    }

    v51 = *(*(*(&v48 + 1) + 56) + 8 * v49);
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_140;
    }

    if (v51 >= *(v48 + 16))
    {
      goto LABEL_141;
    }

    v52 = (v48 + 48 * v51);
    v54 = v52[5];
    v53 = v52[6];
    v55 = v52[7];
    v12 = v52[8];
    v56 = v52[9];

    v57 = *(v53 + 16);

    if (v57)
    {
      break;
    }

LABEL_43:

    v43 = v127;

    v44 = v132 + 1;
    if (v132 + 1 == v128)
    {
      goto LABEL_100;
    }
  }

  v58 = 0;
  v138 = v53;
  v140 = v53 + 32;
  v135 = v12;
  while (1)
  {
    v142 = v58;
    v59 = (v140 + (v58 << 6));
    v60 = *v59;
    v61 = v59[2];
    v62 = v59[4];
    v63 = one-time initialization token for positions;

    if (v63 == -1)
    {
      if (!*(v60 + 16))
      {
        goto LABEL_60;
      }
    }

    else
    {
      swift_once();
      if (!*(v60 + 16))
      {
        goto LABEL_60;
      }
    }

    if (HIBYTE(word_1EBEAD0B8))
    {
      v64 = 256;
    }

    else
    {
      v64 = 0;
    }

    v65 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v64 | word_1EBEAD0B8);
    if ((v66 & 1) == 0)
    {
LABEL_60:
      memset(v150, 0, 81);
      goto LABEL_61;
    }

    outlined init with copy of __REAssetService(*(v60 + 56) + 40 * v65, v0 + 384);
    outlined init with take of BindableDataInternal(v0 + 384, v0 + 344);
    v67 = *(v0 + 368);
    v12 = *(v0 + 376);
    __swift_project_boxed_opaque_existential_1((v0 + 344), v67);
    v68 = v12[7];
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v68(v150, v69, v67, v12);
    __swift_destroy_boxed_opaque_existential_1((v0 + 344));
    v70 = *&v150[0];
    if (*&v150[0])
    {
      v71 = *(&v150[1] + 8);
      v72 = *(&v150[3] + 8);
      *(v0 + 208) = *(&v150[2] + 8);
      *(v0 + 224) = v72;
      *(v0 + 233) = *(&v150[4] + 1);
      *(v0 + 176) = *(v150 + 8);
      *(v0 + 192) = v71;
      *(v0 + 168) = v70;
      goto LABEL_62;
    }

LABEL_61:
    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v2, &v151);
    v73 = v154;
    *(v0 + 200) = v153;
    *(v0 + 216) = v73;
    *(v0 + 232) = v155;
    *(v0 + 248) = v156;
    v74 = v152;
    *(v0 + 168) = v151;
    *(v0 + 184) = v74;
LABEL_62:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    v75 = v2;
    v76 = *(v0 + 216);
    v77 = *(v0 + 224);
    v151 = 0uLL;
    *&v152 = v76;
    *(&v152 + 1) = v77;

    v78 = v76(0);
    if (v79)
    {
      *&v151 = v78;
      *(&v151 + 1) = v79;
    }

    v80 = specialized MeshBuffer.Iterator.next()();
    if ((v82 & 1) == 0)
    {
      v104 = v80;
      v12 = v81;
      do
      {
        v106 = *(v75 + 16);
        v105 = *(v75 + 24);
        if (v106 >= v105 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
        }

        v107.i64[0] = v104;
        v107.i64[1] = v12;
        v108 = vaddq_f32(v146, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_f32(v149, vdupq_n_s32(v104)), v148, v104, 1), v147, v107, 2));
        v108.i32[3] = 0;
        *(v75 + 16) = v106 + 1;
        *(v75 + 16 * v106 + 32) = v108;
        v104 = specialized MeshBuffer.Iterator.next()();
        v12 = v109;
      }

      while ((v110 & 1) == 0);
    }

    v0 = v143;
    outlined destroy of BodyTrackingComponent?(v143 + 168, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);

    specialized Array.append<A>(contentsOf:)(v83);
    if (one-time initialization token for triangleIndices != -1)
    {
      swift_once();
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (*(v60 + 16) && (!HIBYTE(word_1EBEAD130) ? (v84 = 0) : (v84 = 256), v85 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.triangleIndices, *algn_1EBEAD128, v84 | word_1EBEAD130), (v86 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v60 + 56) + 40 * v85, v143 + 464);
      outlined init with take of BindableDataInternal(v143 + 464, v143 + 424);
      v87 = *(v143 + 448);
      v12 = *(v143 + 456);
      __swift_project_boxed_opaque_existential_1((v143 + 424), v87);
      (v12[7])(&v151, MEMORY[0x1E69E7668], v87, v12);
      __swift_destroy_boxed_opaque_existential_1((v143 + 424));
    }

    else
    {
      v156 = 0;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      v151 = 0u;
      v152 = 0u;
    }

    v88 = v154;
    *(v143 + 288) = v153;
    *(v143 + 304) = v88;
    *(v143 + 320) = v155;
    *(v143 + 336) = v156;
    v89 = v152;
    *(v143 + 256) = v151;
    *(v143 + 272) = v89;
    v90 = *(v143 + 256);
    if (!v90)
    {
      __break(1u);
      goto LABEL_144;
    }

    v91 = *(v143 + 264);
    *(v143 + 80) = v90;
    *(v143 + 88) = v91;
    v92 = v155;
    *(v143 + 128) = v154;
    *(v143 + 144) = v92;
    *(v143 + 160) = v156;
    v93 = v153;
    *(v143 + 96) = v152;
    *(v143 + 112) = v93;

    v95 = v90(v94);
    if (!v95)
    {
      v95 = specialized _copySequenceToContiguousArray<A>(_:)(v143 + 80, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    }

    v96 = v95;
    outlined destroy of BodyTrackingComponent?(v143 + 256, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    v97 = *(v96 + 16);
    if (v97)
    {
      break;
    }

    v98 = v2;
LABEL_92:
    specialized Array.append<A>(contentsOf:)(v98);
    v111 = *(v75 + 16);

    v112 = __OFADD__(v145, v111);
    v145 += v111;
    v12 = v135;
    if (v112)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v58 = v142 + 1;
    v113 = *(v138 + 16);
    if (v142 + 1 == v113)
    {
      goto LABEL_43;
    }

    if (v142 + 1 >= v113)
    {
      goto LABEL_111;
    }
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
  v0 = v145;
  if ((v145 & 0x8000000000000000) != 0)
  {
    goto LABEL_112;
  }

  if (!HIDWORD(v145))
  {
    v98 = v2;
    v99 = 32;
    while (1)
    {
      v100 = *(v96 + v99);
      v101 = v100 + v145;
      if (__CFADD__(v100, v145))
      {
        break;
      }

      v103 = *(v98 + 16);
      v102 = *(v98 + 24);
      if (v103 >= v102 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1);
      }

      *(v98 + 16) = v103 + 1;
      *(v98 + 4 * v103 + 32) = v101;
      v99 += 4;
      if (!--v97)
      {

        v0 = v143;
        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_92;
      }
    }

    __break(1u);
    goto LABEL_100;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  v124 = *(v0 + 528);

  v125 = *(v0 + 512);

  v126 = *(v0 + 504);

  if (one-time initialization token for empty != -1)
  {
    goto LABEL_145;
  }

LABEL_116:
  v121 = static ShapeResource.empty;

LABEL_107:
  v122 = *(v0 + 8);
  v123 = *MEMORY[0x1E69E9840];

  return v122(v121);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[66];

  v2 = v0[73];
  v3 = v0[1];
  v4 = *MEMORY[0x1E69E9840];

  return v3(v2);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[66];

  v4 = v0[1];
  v5 = v0[72];
  v6 = *MEMORY[0x1E69E9840];

  return v4();
}