uint64_t NavigateToShimFlow.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v4 = type metadata accessor for MessagePayload.ClientAction();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t variable initialization expression of NavigateToShimFlow.exitValue@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for NavigateToShimFlow.ExitValue(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for NavigateToShimFlow.exitValue : NavigateToShimFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NavigateToShimFlow.ExitValue(a1, v7);
  return (*(**a2 + 104))(v7);
}

uint64_t NavigateToShimFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue;
  swift_beginAccess();
  return outlined init with copy of NavigateToShimFlow.ExitValue(v1 + v3, a1);
}

uint64_t outlined init with copy of NavigateToShimFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NavigateToShimFlow.exitValue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue;
  swift_beginAccess();
  outlined assign with take of NavigateToShimFlow.ExitValue(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of NavigateToShimFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NavigateToShimFlow.__allocating_init(with:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue) = 0;
  type metadata accessor for NavigateToShimFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v7 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t NavigateToShimFlow.init(with:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue) = 0;
  type metadata accessor for NavigateToShimFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v4 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t NavigateToShimFlow.execute(completion:)()
{
  type metadata accessor for NavigateToShimFlow(0);
  lazy protocol witness table accessor for type NavigateToShimFlow and conformance NavigateToShimFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t type metadata accessor for NavigateToShimFlow.ExitValue(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigateToShimFlow and conformance NavigateToShimFlow()
{
  result = lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow;
  if (!lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow)
  {
    type metadata accessor for NavigateToShimFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow);
  }

  return result;
}

uint64_t NavigateToShimFlow.execute()(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  v2[28] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for Parse.DirectInvocation();
  v2[30] = v5;
  v6 = *(v5 - 8);
  v2[31] = v6;
  v7 = *(v6 + 64) + 15;
  v2[32] = swift_task_alloc();
  v8 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  v2[33] = v8;
  v9 = *(v8 - 8);
  v2[34] = v9;
  v10 = *(v9 + 64) + 15;
  v2[35] = swift_task_alloc();
  v11 = type metadata accessor for TypedValue();
  v2[36] = v11;
  v12 = *(v11 - 8);
  v2[37] = v12;
  v13 = *(v12 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v14 = type metadata accessor for MessagePayload.ClientAction();
  v2[41] = v14;
  v15 = *(v14 - 8);
  v2[42] = v15;
  v16 = *(v15 + 64) + 15;
  v2[43] = swift_task_alloc();

  return _swift_task_switch(NavigateToShimFlow.execute(), 0, 0);
}

uint64_t NavigateToShimFlow.execute()()
{
  v81 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = off_E8000;
  if (os_log_type_enabled(v3, v4))
  {
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 328);
    v9 = *(v0 + 216);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v80 = v11;
    *v10 = 136315138;
    (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action, v8);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v80);
    v5 = off_E8000;

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "NavigateToShimFlow makeDirectInvocation started with action: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  v15 = *(v0 + 216);
  v16 = objc_allocWithZone(SKIDirectInvocationPayload);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithIdentifier:v17];

  v19 = v5[408] + v15;
  v20 = MessagePayload.ClientAction.shimParameters.getter();
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E45686372616573, 0xEC00000079746974), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
  }

  else
  {
    v23 = 0;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v80 = v27;
    *v26 = 136315138;
    *(v0 + 200) = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOGSgMd, &_sSay16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOGSgMR);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v80);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v24, v25, "NavigateToShim shimEntity: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  v79 = v18;
  if (v23)
  {
    if (*(v23 + 16))
    {
      v32 = *(v0 + 272);
      v31 = *(v0 + 280);
      v33 = *(v0 + 264);
      (*(v32 + 16))(v31, v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v33);

      if ((*(v32 + 88))(v31, v33) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
      {
        v34 = *(v0 + 312);
        v35 = *(v0 + 320);
        v36 = *(v0 + 288);
        v37 = *(v0 + 296);
        v38 = *(v0 + 280);
        (*(*(v0 + 272) + 96))(v38, *(v0 + 264));
        (*(v37 + 32))(v35, v38, v36);
        v39 = *(v37 + 16);
        v39(v34, v35, v36);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v0 + 312);
        if (v42)
        {
          v45 = *(v0 + 296);
          v44 = *(v0 + 304);
          v46 = *(v0 + 288);
          v47 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v80 = v78;
          *v47 = 136315138;
          v39(v44, v43, v46);
          v48 = String.init<A>(describing:)();
          v50 = v49;
          v51 = *(v45 + 8);
          v51(v43, v46);
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v80);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_0, v40, v41, "NavigateToShim shimEntity is resolvedValue: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
        }

        else
        {
          v53 = *(v0 + 288);
          v54 = *(v0 + 296);

          v51 = *(v54 + 8);
          v51(v43, v53);
        }

        static SearchEntityDataExtrator.extract(from:)(*(v0 + 320), (v0 + 152));
        v55 = *(v0 + 320);
        v56 = *(v0 + 288);
        v57 = *(v0 + 296);
        if (*(v0 + 176))
        {
          outlined init with take of Any((v0 + 152), (v0 + 120));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_B8690;
          *(v0 + 184) = 0xD000000000000011;
          *(v0 + 192) = 0x80000000000BD8D0;
          AnyHashable.init<A>(_:)();
          outlined init with copy of Any(v0 + 120, inited + 72);
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of Any?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v79 setUserData:isa];

          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
          v51(v55, v56);
        }

        else
        {
          v51(*(v0 + 320), *(v0 + 288));
          outlined destroy of Any?(v0 + 152, &_sypSgMd, &_sypSgMR);
        }

        v18 = v79;
      }

      else
      {
        (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
      }
    }

    else
    {
    }
  }

  v60 = [v18 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = [v18 userData];
  if (v61)
  {
    v62 = v61;
    v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v63);
  }

  v64 = *(v0 + 344);
  v74 = *(v0 + 320);
  v75 = *(v0 + 312);
  v76 = *(v0 + 304);
  v77 = *(v0 + 280);
  v66 = *(v0 + 248);
  v65 = *(v0 + 256);
  v67 = *(v0 + 232);
  v68 = *(v0 + 240);
  v69 = *(v0 + 216);
  v70 = *(v0 + 224);
  v71 = *(v0 + 208);
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v66 + 16))(v67, v65, v68);
  swift_storeEnumTagMultiPayload();
  (*(*v69 + 104))(v67);
  static ExecuteResponse.complete()();

  (*(v66 + 8))(v65, v68);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t static SearchEntityDataExtrator.extract(from:)@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v170 = a2;
  v155 = type metadata accessor for TypeIdentifier();
  v3 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v154 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for TypedValue.PrimitiveValue.FileValue();
  v174 = *(v163 - 1);
  v5 = *(v174 + 8);
  __chkstk_darwin(v163);
  v169 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TypedValue.PrimitiveValue();
  v166 = *(v7 - 8);
  v167 = v7;
  v8 = *(v166 + 64);
  __chkstk_darwin(v7);
  v156 = (&v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TypedValue.EntityValue();
  v11 = *(v10 - 8);
  v164 = v10;
  v165 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v168 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v153 = &v151 - v15;
  v158 = type metadata accessor for TypedValue.CollectionValue();
  v160 = *(v158 - 8);
  v16 = v160[8];
  v17 = __chkstk_darwin(v158);
  v152 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v157 = &v151 - v20;
  __chkstk_darwin(v19);
  v159 = &v151 - v21;
  v22 = type metadata accessor for TypedValue();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v161 = (&v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v29 = (&v151 - v28);
  v30 = __chkstk_darwin(v27);
  v32 = (&v151 - v31);
  v33 = __chkstk_darwin(v30);
  v35 = (&v151 - v34);
  v36 = __chkstk_darwin(v33);
  v38 = (&v151 - v37);
  __chkstk_darwin(v36);
  v40 = &v151 - v39;
  v41 = *(v23 + 16);
  v162 = a1;
  v41(&v151 - v39, a1, v22);
  v172 = *(v23 + 88);
  v42 = v172(v40, v22);
  v171 = v22;
  v173 = v23;
  if (v42 == enum case for TypedValue.primitive(_:))
  {
    v41(v29, v40, v22);
    (*(v23 + 96))(v29, v22);
    v43 = *v29;
    v44 = swift_projectBox();
    v46 = v166;
    v45 = v167;
    v47 = v40;
    if ((*(v166 + 88))(v44, v167) == enum case for TypedValue.PrimitiveValue.file(_:))
    {
      v48 = v156;
      (*(v46 + 16))(v156, v44, v45);
      (*(v46 + 96))(v48, v45);
      v49 = v163;
      (*(v174 + 4))(v169, v48, v163);
      v50 = TypedValue.PrimitiveValue.FileValue.file.getter();
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.information);
      v52 = v50;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v175[0] = v56;
        *v55 = 136315138;
        v57 = [v52 filename];
        v58 = v40;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v175);
        v47 = v58;

        *(v55 + 4) = v62;
        v49 = v163;
        _os_log_impl(&dword_0, v53, v54, "NavigateToShimFlow Loading data for file: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
      }

      v63 = v170;
      v64 = v171;
      v65 = [v52 data];
      v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v66, v68);
      v63[1]._object = &type metadata for String;

      *v63 = v69;
      (*(v174 + 1))(v169, v49);

      v70 = v173;
      return (*(v70 + 8))(v47, v64);
    }

    v174 = v41;
    v169 = v40;

    v64 = v171;
    v70 = v173;
LABEL_20:
    if (one-time initialization token for information != -1)
    {
LABEL_37:
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    __swift_project_value_buffer(v112, static Logger.information);
    v113 = v161;
    v174(v161, v162, v64);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = os_log_type_enabled(v114, v115);
    v47 = v169;
    if (v116)
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v175[0] = v118;
      *v117 = 136315138;
      TypedValue.typeIdentifier.getter();
      v119 = String.init<A>(describing:)();
      v121 = v120;
      (*(v70 + 8))(v113, v64);
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v175);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_0, v114, v115, "NavigateToShimFlow: recieved unexpected type: %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v118);
    }

    else
    {

      (*(v70 + 8))(v113, v64);
    }

    v123 = v170;
    *v170 = 0u;
    v123[1] = 0u;
    return (*(v70 + 8))(v47, v64);
  }

  v174 = v41;
  v169 = v40;
  v71 = enum case for TypedValue.entity(_:);
  if (v42 == enum case for TypedValue.entity(_:))
  {
    v64 = v171;
    v174(v32, v169, v171);
    (*(v173 + 96))(v32, v64);
    v72 = *v32;
    v73 = swift_projectBox();
    v75 = v164;
    v74 = v165;
    (*(v165 + 16))(v168, v73, v164);
    v76.super.isa = TypedValue.EntityValue.extractINFile()().super.isa;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.information);
    v78 = v76.super.isa;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v175[0] = v82;
      *v81 = 136315138;
      v83 = [(objc_class *)v78 filename];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v175);
      v75 = v164;
      v64 = v171;

      *(v81 + 4) = v87;
      v74 = v165;
      _os_log_impl(&dword_0, v79, v80, "NavigateToShimFlow Loading data for file: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
    }

    v88 = v170;
    v89 = [(objc_class *)v78 data];
    v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v93 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v90, v92);
    v88[1]._object = &type metadata for String;

    *v88 = v93;
    (*(v74 + 8))(v168, v75);

    v70 = v173;
    v47 = v169;
    return (*(v70 + 8))(v47, v64);
  }

  v64 = v171;
  v70 = v173;
  if (v42 != enum case for TypedValue.collection(_:))
  {
    goto LABEL_20;
  }

  v174(v38, v169, v171);
  v94 = *(v70 + 96);
  v166 = v70 + 96;
  v163 = v94;
  (v94)(v38, v64);
  v168 = *v38;
  v95 = swift_projectBox();
  v96 = v159;
  v97 = v160[2];
  v98 = v158;
  v97(v159, v95, v158);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  v100 = __swift_project_value_buffer(v99, static Logger.information);
  v97(v157, v96, v98);
  v162 = v100;
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v154 = v103;
    v161 = swift_slowAlloc();
    v175[0] = v161;
    *v103 = 136315138;
    LODWORD(v155) = v102;
    v156 = v101;
    v104 = v157;
    v105 = v158;
    v97(v152, v157, v158);
    v106 = String.init<A>(describing:)();
    v108 = v107;
    v167 = v160[1];
    v167(v104, v105);
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v175);

    v110 = v154;
    *(v154 + 4) = v109;
    v111 = v156;
    _os_log_impl(&dword_0, v156, v155, "NavigateToShimFlow collectionValue %s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v161);
  }

  else
  {

    v167 = v160[1];
    v167(v157, v98);
  }

  v64 = v171;
  v125 = TypedValue.CollectionValue.values.getter();
  v126 = *(v125 + 16);
  if (v126)
  {
    v127 = 0;
    while (1)
    {
      if (v127 >= *(v125 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v174(v35, v125 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v127, v64);
      if (v172(v35, v64) == v71)
      {
        break;
      }

      ++v127;
      (*(v70 + 8))(v35, v64);
      if (v126 == v127)
      {
        goto LABEL_32;
      }
    }

    (v163)(v35, v64);
    v129 = *v35;
    v130 = swift_projectBox();
    v132 = v164;
    v131 = v165;
    (*(v165 + 16))(v153, v130, v164);

    v133.super.isa = TypedValue.EntityValue.extractINFile()().super.isa;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v175[0] = v137;
      *v136 = 136315138;
      v138 = [(objc_class *)v133.super.isa filename];
      v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v141 = v140;

      v142 = v139;
      v131 = v165;
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v141, v175);

      *(v136 + 4) = v143;
      _os_log_impl(&dword_0, v134, v135, "NavigateToShimFlow Loading data for file: %s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v137);
    }

    v145 = v169;
    v144 = v170;
    v146 = [(objc_class *)v133.super.isa data];
    v147 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v148;

    v150 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v147, v149);
    v144[1]._object = &type metadata for String;

    *v144 = v150;
    (*(v131 + 8))(v153, v132);
    v167(v159, v158);

    v70 = v173;
    v47 = v145;
  }

  else
  {
LABEL_32:
    v167(v159, v158);

    v128 = v170;
    *v170 = 0u;
    v128[1] = 0u;

    v47 = v169;
  }

  return (*(v70 + 8))(v47, v64);
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v14, v29);
        outlined init with copy of Any(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        outlined init with copy of AnyHashable(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        outlined init with copy of Any(v27 + 8, v22);
        outlined destroy of Any?(v26, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
        v23 = v20;
        outlined init with take of Any(v22, v24);
        v15 = v23;
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = outlined init with take of Any(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      outlined destroy of Any?(v26, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NavigateToShimFlow.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v2 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of NavigateToShimFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue);
  return v0;
}

uint64_t NavigateToShimFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v2 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of NavigateToShimFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for Flow.execute() in conformance NavigateToShimFlow(uint64_t a1)
{
  v4 = *(**v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance NavigateToShimFlow()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

INFile __swiftcall TypedValue.EntityValue.extractINFile()()
{
  v0 = type metadata accessor for TypedValue.PrimitiveValue();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TypedValue.PrimitiveValue.FileValue();
  v70 = *(v5 - 8);
  v6 = *(v70 + 64);
  v7 = __chkstk_darwin(v5);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v60 - v9;
  v11 = type metadata accessor for TypedValue();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v19 = TypedValue.EntityValue.properties.getter();
  if (*(v19 + 16))
  {
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697265707865, 0xEE00656C69466563);
    if (v21)
    {
      v66 = v10;
      v67 = v5;
      v22 = *(v12 + 16);
      v22(v18, *(v19 + 56) + *(v12 + 72) * v20, v11);

      v68 = v18;
      v22(v16, v18, v11);
      v23 = v12;
      if ((*(v12 + 88))(v16, v11) == enum case for TypedValue.primitive(_:))
      {
        (*(v12 + 96))(v16, v11);
        v24 = *v16;
        v25 = swift_projectBox();
        (*(v1 + 16))(v4, v25, v0);
        if ((*(v1 + 88))(v4, v0) == enum case for TypedValue.PrimitiveValue.file(_:))
        {
          (*(v1 + 96))(v4, v0);
          v26 = v70;
          v28 = v66;
          v27 = v67;
          (*(v70 + 32))(v66, v4, v67);

          v29 = v68;
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          __swift_project_value_buffer(v30, static Logger.information);
          v31 = v69;
          (*(v26 + 16))(v69, v28, v27);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v63 = v34;
            v65 = swift_slowAlloc();
            v71 = v65;
            *v34 = 136315138;
            v64 = v32;
            v35 = TypedValue.PrimitiveValue.FileValue.file.getter();
            v36 = [v35 description];
            v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v62 = v33;
            v37 = v27;
            v38 = v28;
            v39 = v29;
            v40 = v31;
            v42 = v41;

            v43 = *(v26 + 8);
            v44 = v40;
            v29 = v39;
            v28 = v38;
            v27 = v37;
            v43(v44, v37);

            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v42, &v71);

            v46 = v63;
            v47 = v64;
            *(v63 + 1) = v45;
            _os_log_impl(&dword_0, v47, v62, "NavigateToShimFlow File Value: %s", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v65);
          }

          else
          {

            v43 = *(v26 + 8);
            v43(v31, v27);
          }

          v59 = TypedValue.PrimitiveValue.FileValue.file.getter();
          v43(v28, v27);
          (*(v23 + 8))(v29, v11);
          return v59;
        }

        (*(v1 + 8))(v4, v0);
      }

      else
      {
        (*(v12 + 8))(v16, v11);
      }

      v54 = v68;
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.information);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v56, v57, "NavigateToShimFlow No INFile found", v58, 2u);
      }

      v59 = [objc_allocWithZone(INFile) init];
      (*(v23 + 8))(v54, v11);
      return v59;
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.information);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_0, v49, v50, "NavigateToShimFlow No experienceFile found", v51, 2u);
  }

  v52 = objc_allocWithZone(INFile);

  return [v52 init];
}

Swift::String_optional __swiftcall INFile.extractBase64DataForFile()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = [v2 filename];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "NavigateToShimFlow Loading data for file: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v12 = [v2 data];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v13, v15);
  countAndFlagsBits = v16._countAndFlagsBits;
  object = v16._object;
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

double variable initialization expression of InformationRoutingFlow.interactionStream@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t default argument 4 of WebSearchPunchoutFlow.init(query:renderPegasusFlow:state:outputPublisher:responseGenerator:informationViewFactory:searchURLProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ResponseFactory();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = ResponseFactory.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ResponseFactory;
  *a1 = result;
  return result;
}

uint64_t default argument 1 of InformationViewFactory.init(deviceState:commonCATs:)()
{
  v0 = type metadata accessor for CATOption();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  return CATWrapper.__allocating_init(options:globals:)();
}

double default argument 2 of InformationRoutingFlow.init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v2 = type metadata accessor for KnowledgeFallbackHelper();
  a1[3] = v2;
  a1[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of CurrentDevice.siriLocale.getter();

  v4 = v2[5];
  v5 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v5 - 8) + 56))(boxed_opaque_existential_1 + v4, 1, 1, v5);
  result = 0.0;
  *(boxed_opaque_existential_1 + v2[6]) = xmmword_B86A0;
  *(boxed_opaque_existential_1 + v2[7]) = xmmword_B86A0;
  return result;
}

uint64_t default argument 5 of RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)()
{
  v0 = type metadata accessor for CATOption();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v2 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v3 = swift_allocObject();
  v4 = [objc_opt_self() sharedPreferences];
  v5 = type metadata accessor for PommesServerFallbackPreferences();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = PommesServerFallbackPreferences.init(_:)();
  v3[11] = v5;
  v3[12] = &protocol witness table for PommesServerFallbackPreferences;
  v3[8] = v8;
  outlined init with take of SiriSuggestionsBroker(v11, (v3 + 3));
  v3[2] = v2;
  static Device.current.getter();
  type metadata accessor for PegasusPatternFlowFactory();
  v9 = swift_allocObject();
  outlined init with copy of OutputPublisherAsync(v12, v9 + 16);
  outlined init with copy of OutputPublisherAsync(v11, v9 + 56);
  *(v9 + 96) = v3;
  static PatternFlowProvidingHelper.unwrap(_:with:)(v13, v12, (v9 + 104));
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  outlined destroy of Any?(v13, &_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  return v9;
}

uint64_t default argument 2 of RenderComponentFlowFactory.init(outputPublisher:informationViewFactory:dialogStateManager:)()
{
  type metadata accessor for PommesSearch();
  static PommesSearch.UserDefaultsSuiteName.getter();
  v0 = type metadata accessor for PommesDialogStateManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return PommesDialogStateManager.init(suiteName:)();
}

uint64_t variable initialization expression of ShimOverrideFlow.exitValue@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for ShimOverrideFlow.ExitValue(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t default argument 2 of PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PommesSearchClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = PommesSearchClient.init()();
  if (result)
  {
    v6 = &protocol witness table for PommesSearchClient;
  }

  else
  {
    v2 = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v2;
  a1[4] = v6;
  return result;
}

uint64_t default argument 2 of PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for SiriKitReliabilityCodes.normal(_:);
  v3 = type metadata accessor for SiriKitReliabilityCodes();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t default argument 0 of InformationRootFlow.init(flowEntryPoints:)()
{
  if (one-time initialization token for kFlowEntryPoints != -1)
  {
    swift_once();
  }
}

uint64_t default argument 3 of TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t default argument 0 of KnowledgeFallbackHelper.init(locale:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();
}

uint64_t variable initialization expression of PushOffQueryFlow.nlContextUpdate@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of InformationViewFactory.serverFallbackPreferences@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedPreferences];
  v3 = type metadata accessor for PommesServerFallbackPreferences();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = PommesServerFallbackPreferences.init(_:)();
  a1[3] = v3;
  a1[4] = &protocol witness table for PommesServerFallbackPreferences;
  *a1 = result;
  return result;
}

uint64_t default argument 3 of RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)()
{
  type metadata accessor for ExperienceSelector();

  return swift_allocObject();
}

uint64_t default argument 2 of TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return a3();
}

uint64_t default argument 4 of RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)()
{
  v0 = type metadata accessor for CATOption();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v2 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v3 = swift_allocObject();
  v4 = [objc_opt_self() sharedPreferences];
  v5 = type metadata accessor for PommesServerFallbackPreferences();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = PommesServerFallbackPreferences.init(_:)();
  v3[11] = v5;
  v3[12] = &protocol witness table for PommesServerFallbackPreferences;
  v3[8] = v8;
  outlined init with take of SiriSuggestionsBroker(&v15, (v3 + 3));
  v3[2] = v2;
  type metadata accessor for PommesSearch();
  static PommesSearch.UserDefaultsSuiteName.getter();
  v9 = type metadata accessor for PommesDialogStateManager();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = PommesDialogStateManager.init(suiteName:)();
  type metadata accessor for RenderComponentFlowFactory();
  v13 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(&v16, v13 + 16);
  *(v13 + 56) = v3;
  *(v13 + 64) = v12;
  return v13;
}

void *default argument 1 of RenderComponentFlowFactory.init(outputPublisher:informationViewFactory:dialogStateManager:)()
{
  v0 = type metadata accessor for CATOption();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v2 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v3 = swift_allocObject();
  v4 = [objc_opt_self() sharedPreferences];
  v5 = type metadata accessor for PommesServerFallbackPreferences();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = PommesServerFallbackPreferences.init(_:)();
  v3[11] = v5;
  v3[12] = &protocol witness table for PommesServerFallbackPreferences;
  v3[8] = v8;
  outlined init with take of SiriSuggestionsBroker(&v10, (v3 + 3));
  v3[2] = v2;
  return v3;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
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

uint64_t outlined destroy of NavigateToShimFlow.ExitValue(uint64_t a1)
{
  v2 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with take of SiriSuggestionsBroker(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of OutputPublisherAsync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata completion function for NavigateToShimFlow()
{
  result = type metadata accessor for MessagePayload.ClientAction();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NavigateToShimFlow.ExitValue(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for NavigateToShimFlow.ExitValue()
{
  type metadata accessor for Parse.DirectInvocation();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Error?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Error?()
{
  if (!lazy cache variable for type metadata for Error?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Error?);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for FLOWSchemaFLOWInformationPluginEventType(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEs8SendablepTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v4, &v13, &_sSS_Se_SEs8SendableptMd, &_sSS_Se_SEs8SendableptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Decodable & Encodable & Sendable(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGMd, &_ss18_DictionaryStorageCy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *outlined init with take of Decodable & Encodable & Sendable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of (String, Decodable & Encodable & Sendable)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t key path getter for CommandThrottle.throttling : CommandThrottle@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t CommandThrottle.throttling.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_82A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t CommandThrottle.throttling.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*CommandThrottle.throttling.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CommandThrottle.throttling.modify;
}

void CommandThrottle.throttling.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for CommandThrottle.$throttling : CommandThrottle(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 120))(v7);
}

uint64_t CommandThrottle.$throttling.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CommandThrottle.$throttling.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CommandThrottle.$throttling.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CommandThrottle.$throttling.modify;
}

void CommandThrottle.$throttling.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

void CommandThrottle.throttle(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v34[1] = a2;
  v35 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  isa = v4[-1].isa;
  v40 = v4;
  v5 = *(isa + 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v34 - v17;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSThread, NSThread_ptr);
  v19 = objc_opt_self();
  v20 = [v19 currentThread];
  v21 = [v19 mainThread];
  LOBYTE(v19) = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.information);
    v40 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v23))
    {
      goto LABEL_12;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "CommandThrottle action called from background thread.";
    goto LABEL_11;
  }

  if (((*(*v3 + 88))() & 1) == 0)
  {
    v28 = (*(*v3 + 96))(1);
    v35(v28);
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v35 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v29 = *(v36 + 8);
    v29(v16, v12);
    v30 = v29;
    aBlock[4] = partial apply for closure #1 in CommandThrottle.throttle(_:);
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v32 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v35;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v31);

    (*(isa + 1))(v7, v32);
    (*(v37 + 8))(v11, v38);
    v30(v18, v12);
    return;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.information);
  v40 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "CommandThrottle action dropped due to throttling state.";
LABEL_11:
    _os_log_impl(&dword_0, v40, v23, v25, v24, 2u);
  }

LABEL_12:
  v27 = v40;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t CommandThrottle.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CommandThrottle.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CommandThrottle.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  return v3;
}

uint64_t CommandThrottle.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v8[15] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CommandThrottle@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CommandThrottle();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NSThread(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for CommandThrottle()
{
  result = type metadata singleton initialization cache for CommandThrottle;
  if (!type metadata singleton initialization cache for CommandThrottle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CommandThrottle()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SiriInformationDataModels.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriInformationDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000000000BD9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000000000BD9C0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int DisableConfirmRequestsConfirmationStrategy.ConfirmationError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SiriInformationDataModels.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v2[2])
  {
    LOBYTE(v27) = 1;
    lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v2[1];
    v27 = *v2;
    v28 = v18;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload();
    v19 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v25 + 8))(v7, v19);
  }

  else
  {
    LOBYTE(v27) = 0;
    lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v2[1];
    v27 = *v2;
    v28 = v20;
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload();
    v21 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload);
  }

  return result;
}

double SiriInformationDataModels.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized SiriInformationDataModels.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t _s21InformationFlowPlugin41DisableConfirmRequestsConfirmationPayloadV10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOs0I3KeyAAsAGP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x6C6562614C6F6ELL;
  }

  else
  {
    result = 0x6C6562614C736579;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KnowledgeFallbackConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KnowledgeFallbackConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriInformationDataModels.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriInformationDataModels.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KnowledgeFallbackConfirmationPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnowledgeFallbackConfirmationPayload.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v19 = v21[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t KnowledgeFallbackConfirmationPayload.init(from:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = specialized KnowledgeFallbackConfirmationPayload.init(from:)(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance KnowledgeFallbackConfirmationPayload@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = specialized KnowledgeFallbackConfirmationPayload.init(from:)(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t specialized SiriInformationDataModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3);
  v6 = &v31[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v31[-v9];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v36);
  v14 = &v31[-v13];
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  v37 = v11;
  v18 = v35;
  v19 = KeyedDecodingContainer.allKeys.getter();
  if (*(v19 + 16) != 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v27 = &type metadata for SiriInformationDataModels;
    v29 = v36;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v37 + 8))(v14, v29);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  v20 = v36;
  v32 = *(v19 + 32);
  if (v32)
  {
    LOBYTE(v38) = 1;
    lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 8))(v6, v3);
    (*(v37 + 8))(v14, v20);
    swift_unknownObjectRelease();
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = v41;
    v18 = v35;
  }

  else
  {
    LOBYTE(v38) = 0;
    lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v7);
    (*(v37 + 8))(v14, v20);
    swift_unknownObjectRelease();
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = v41;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v42);
  *v18 = v21;
  *(v18 + 8) = v22;
  *(v18 + 16) = v23;
  *(v18 + 24) = v24;
  *(v18 + 32) = v32;
  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

uint64_t specialized KnowledgeFallbackConfirmationPayload.init(from:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels and conformance SiriInformationDataModels()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for SiriInformationDataModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriInformationDataModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KnowledgeFallbackConfirmationPayload(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for KnowledgeFallbackConfirmationPayload(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisableConfirmRequestsConfirmationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t Parse.DirectInvocation.get<A>(protoMessage:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = Parse.DirectInvocation.userData.getter();
  if (v10)
  {
    v11 = v10;
    if (*(v10 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v13 & 1) != 0))
    {
      outlined init with copy of Any(*(v11 + 56) + 32 * v12, v23);

      if (swift_dynamicCast())
      {
        v15 = v25;
        v14 = v26;
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        outlined copy of Data._Representation(v25, v26);
        BinaryDecodingOptions.init()();
        Message.init(serializedData:extensions:partial:options:)();
        outlined consume of Data._Representation(v15, v14);
        v22 = 0;
        return (*(*(a3 - 8) + 56))(a4, v22, 1, a3);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.information);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v23[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v23);
    _os_log_impl(&dword_0, v17, v18, "Parse.DirectInvocation: No '%s' key found in DI Payload.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  v22 = 1;
  return (*(*(a3 - 8) + 56))(a4, v22, 1, a3);
}

id SAUIVisualResponseShowNextSnippet.init(from:)(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v8 setModelData:isa];

  v10 = v8;
  UUID.init()();
  UUID.uuidString.getter();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v12 = String._bridgeToObjectiveC()();

  [v10 setAceId:v12];

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setVisualResponse:v10];
  UUID.init()();
  UUID.uuidString.getter();
  v11(v7, v3);
  v14 = String._bridgeToObjectiveC()();

  [v13 setAceId:v14];
  outlined consume of Data._Representation(a1, v17);

  return v13;
}

unint64_t InformationRoutingFlow.Invocations.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000003DLL;
  v2 = 0xD000000000000045;
  if (a1 != 3)
  {
    v2 = 0xD000000000000041;
  }

  if (a1 == 2)
  {
    v2 = 0xD00000000000003ELL;
  }

  if (a1)
  {
    v1 = 0xD000000000000040;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InformationRoutingFlow.Invocations(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = InformationRoutingFlow.Invocations.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == InformationRoutingFlow.Invocations.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InformationRoutingFlow.Invocations()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InformationRoutingFlow.Invocations.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InformationRoutingFlow.Invocations()
{
  InformationRoutingFlow.Invocations.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InformationRoutingFlow.Invocations()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InformationRoutingFlow.Invocations.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InformationRoutingFlow.Invocations@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized InformationRoutingFlow.Invocations.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InformationRoutingFlow.Invocations@<X0>(unint64_t *a1@<X8>)
{
  result = InformationRoutingFlow.Invocations.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for InformationRoutingFlow.state : InformationRoutingFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InformationRoutingFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of InformationRoutingFlow.State(a1, v7, type metadata accessor for InformationRoutingFlow.State);
  return (*(**a2 + 200))(v7);
}

uint64_t InformationRoutingFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state;
  swift_beginAccess();
  return outlined init with copy of InformationRoutingFlow.State(v1 + v3, a1, type metadata accessor for InformationRoutingFlow.State);
}

uint64_t InformationRoutingFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state;
  swift_beginAccess();
  outlined assign with take of InformationRoutingFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t InformationRoutingFlow.knowledgeFallbackHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper;
  swift_beginAccess();
  return outlined init with copy of OutputPublisherAsync(v1 + v3, a1);
}

uint64_t InformationRoutingFlow.knowledgeFallbackHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of SiriSuggestionsBroker(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t InformationRoutingFlow.__allocating_init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, char a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized InformationRoutingFlow.__allocating_init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v14;
}

uint64_t InformationRoutingFlow.__allocating_init(input:outputPublisher:interactionStream:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = specialized InformationRoutingFlow.__allocating_init(input:outputPublisher:interactionStream:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(a1, a2, a3, a4, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  return v18;
}

uint64_t InformationRoutingFlow.execute()(uint64_t a1)
{
  v2[156] = v1;
  v2[155] = a1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2[157] = v3;
  v2[158] = *(v3 + 64);
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v4 = type metadata accessor for KnowledgeFallbackHelper();
  v2[161] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[162] = swift_task_alloc();
  v6 = *(*(type metadata accessor for Input() - 8) + 64) + 15;
  v2[163] = swift_task_alloc();
  v7 = type metadata accessor for PluginAction();
  v2[164] = v7;
  v8 = *(v7 - 8);
  v2[165] = v8;
  v9 = *(v8 + 64) + 15;
  v2[166] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR) - 8) + 64) + 15;
  v2[167] = swift_task_alloc();
  v11 = type metadata accessor for NLRouterParse.InputCandidate();
  v2[168] = v11;
  v12 = *(v11 - 8);
  v2[169] = v12;
  v13 = *(v12 + 64) + 15;
  v2[170] = swift_task_alloc();
  v14 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v2[171] = v14;
  v15 = *(v14 - 8);
  v2[172] = v15;
  v16 = *(v15 + 64) + 15;
  v2[173] = swift_task_alloc();
  v17 = type metadata accessor for Parse();
  v2[174] = v17;
  v18 = *(v17 - 8);
  v2[175] = v18;
  v19 = *(v18 + 64) + 15;
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v20 = type metadata accessor for AjaxMetadata();
  v2[178] = v20;
  v21 = *(v20 - 8);
  v2[179] = v21;
  v22 = *(v21 + 64) + 15;
  v2[180] = swift_task_alloc();
  v23 = type metadata accessor for GenAIPartner();
  v2[181] = v23;
  v24 = *(v23 - 8);
  v2[182] = v24;
  v25 = *(v24 + 64) + 15;
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR) - 8) + 64) + 15;
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  v2[188] = v27;
  v28 = *(v27 - 8);
  v2[189] = v28;
  v2[190] = *(v28 + 64);
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v2[196] = swift_task_alloc();
  v29 = type metadata accessor for PommesEngagement();
  v2[197] = v29;
  v30 = *(v29 - 8);
  v2[198] = v30;
  v31 = *(v30 + 64) + 15;
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v32 = type metadata accessor for Parse.DirectInvocation();
  v2[201] = v32;
  v33 = *(v32 - 8);
  v2[202] = v33;
  v34 = *(v33 + 64) + 15;
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v35 = type metadata accessor for MessagePayload.ClientAction();
  v2[211] = v35;
  v36 = *(v35 - 8);
  v2[212] = v36;
  v37 = *(v36 + 64) + 15;
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR) - 8) + 64) + 15;
  v2[215] = swift_task_alloc();
  v2[216] = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[217] = swift_task_alloc();
  v40 = type metadata accessor for ActivityType();
  v2[218] = v40;
  v41 = *(v40 - 8);
  v2[219] = v41;
  v42 = *(v41 + 64) + 15;
  v2[220] = swift_task_alloc();
  v43 = type metadata accessor for PerformanceUtil.Ticket();
  v2[221] = v43;
  v44 = *(v43 - 8);
  v2[222] = v44;
  v45 = *(v44 + 64) + 15;
  v2[223] = swift_task_alloc();
  v2[224] = swift_task_alloc();
  v46 = type metadata accessor for PommesSystemAppChecking();
  v2[225] = v46;
  v47 = *(v46 - 8);
  v2[226] = v47;
  v48 = *(v47 + 64) + 15;
  v2[227] = swift_task_alloc();
  v49 = type metadata accessor for Date();
  v2[228] = v49;
  v50 = *(v49 - 8);
  v2[229] = v50;
  v51 = *(v50 + 64) + 15;
  v2[230] = swift_task_alloc();
  v52 = type metadata accessor for PegasusExperience();
  v2[231] = v52;
  v53 = *(*(v52 - 8) + 64) + 15;
  v2[232] = swift_task_alloc();
  v54 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[233] = swift_task_alloc();
  v55 = type metadata accessor for Parse.PegasusResult();
  v2[234] = v55;
  v56 = *(v55 - 8);
  v2[235] = v56;
  v57 = *(v56 + 64) + 15;
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v58 = type metadata accessor for InformationRoutingFlow.State(0);
  v2[238] = v58;
  v59 = *(*(v58 - 8) + 64) + 15;
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();

  return _swift_task_switch(InformationRoutingFlow.execute(), 0, 0);
}

uint64_t InformationRoutingFlow.execute()()
{
  v564 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0 + 992;
  v2 = v0 + 1120;
  v521 = v0 + 1128;
  v527 = v0 + 896;
  v3 = v0 + 1160;
  v534 = v0 + 1216;
  v541 = v0 + 1208;
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "InformationRoutingFlow.execute", v7, 2u);
  }

  v8 = (v0 + 1024);
  v9 = (v0 + 1056);
  v10 = *(v0 + 1920);
  v11 = *(v0 + 1904);
  v557 = v0;
  v12 = *(v0 + 1248);

  (*(*v12 + 192))();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(*(v0 + 1880) + 32))(*(v0 + 1896), *(v0 + 1920), *(v0 + 1872));
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_0, v139, v140, "InformationRoutingFlow: renderPegasus", v141, 2u);
      }

      v142 = *(v557 + 1896);
      v143 = *(v557 + 1888);
      v144 = *(v557 + 1880);
      v508 = v144;
      v512 = v142;
      v145 = *(v557 + 1872);
      v503 = v145;
      v146 = *(v557 + 1864);
      v523 = *(v557 + 1856);
      v147 = *(v557 + 1840);
      v148 = *(v557 + 1832);
      v473 = *(v557 + 1848);
      v476 = *(v557 + 1824);
      v529 = *(v557 + 1816);
      v536 = *(v557 + 1800);
      v544 = *(v557 + 1792);
      v551 = *(v557 + 1808);
      v491 = *(v557 + 1784);
      v495 = *(v557 + 1776);
      v499 = *(v557 + 1768);
      v480 = *(v557 + 1752);
      v482 = *(v557 + 1744);
      v484 = *(v557 + 1760);
      v486 = *(v557 + 1736);
      v149 = *(v557 + 1248);
      v517 = *(v557 + 1240);

      (*(v144 + 16))(v143, v142, v145);
      outlined init with copy of OutputPublisherAsync(v149 + 16, v557 + 616);
      v151 = *(v149 + 96);
      v150 = *(v149 + 104);
      outlined init with copy of OutputPublisherAsync(v149 + 56, v557 + 456);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      static Device.current.getter();
      type metadata accessor for CommonCATs();
      static CATOption.defaultMode.getter();
      v152 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v153 = swift_allocObject();
      v154 = [objc_opt_self() sharedPreferences];
      v155 = type metadata accessor for PommesServerFallbackPreferences();
      v156 = *(v155 + 48);
      v157 = *(v155 + 52);
      swift_allocObject();
      v158 = PommesServerFallbackPreferences.init(_:)();
      v153[11] = v155;
      v153[12] = &protocol witness table for PommesServerFallbackPreferences;
      v153[8] = v158;
      outlined init with take of SiriSuggestionsBroker((v557 + 376), (v153 + 3));
      v153[2] = v152;
      type metadata accessor for PommesSearch();
      static PommesSearch.UserDefaultsSuiteName.getter();
      v159 = type metadata accessor for PommesDialogStateManager();
      v160 = *(v159 + 48);
      v161 = *(v159 + 52);
      swift_allocObject();
      v162 = PommesDialogStateManager.init(suiteName:)();
      type metadata accessor for RenderComponentFlowFactory();
      v163 = swift_allocObject();
      v164 = outlined init with take of SiriSuggestionsBroker((v557 + 416), v163 + 16);
      *(v163 + 56) = v153;
      *(v163 + 64) = v162;
      v165 = v163;
      default argument 5 of RenderPegasusFlow.init(pommesResponse:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:appChecking:responseProducerType:)(v164);
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v166 = swift_task_alloc();
      *(v166 + 16) = v150;
      *(v166 + 24) = v143;
      Date.init()();
      v452 = v166;
      v453 = v473;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v148 + 8))(v147, v476);

      outlined init with copy of OutputPublisherAsync(v557 + 616, v557 + 336);
      static SiriKitEventSender.current.getter();
      type metadata accessor for PegasusFlowEventLogger();
      v167 = swift_allocObject();
      *(v167 + 16) = 0;
      outlined init with take of SiriSuggestionsBroker((v557 + 296), v167 + 24);
      *(v167 + 64) = 0x54746E6572727543;
      *(v167 + 72) = 0xEB000000006B7361;
      *(v167 + 80) = 2;
      v168 = outlined init with copy of OutputPublisherAsync(v557 + 456, v557 + 256);
      v471 = default argument 7 of RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(v168);
      PommesSystemAppChecking.init()();
      v474 = type metadata accessor for AppResolutionStrategyHelpers();
      v477 = type metadata accessor for RenderPegasusFlow();
      v169 = *(v477 + 48);
      v170 = *(v477 + 52);
      v171 = swift_allocObject();
      *(v557 + 240) = v536;
      *(v557 + 248) = &protocol witness table for PommesSystemAppChecking;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v557 + 216));
      (*(v551 + 16))(boxed_opaque_existential_1, v529, v536);
      *(v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities) = &_swiftEmptyArrayStorage;
      outlined init with copy of InformationRoutingFlow.State(v523, v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience, type metadata accessor for PegasusExperience);
      *(v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse) = 0;
      outlined init with copy of OutputPublisherAsync(v557 + 336, v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher);
      *(v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory) = v151;
      *(v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory) = v165;
      v173 = OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger;
      *(v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger) = v167;
      v174 = v173;
      v467 = v173;

      Date.init()();
      PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
      v175 = *(v171 + v174);
      (*(v480 + 104))(v484, enum case for ActivityType.start(_:), v482);
      v176 = enum case for SiriKitReliabilityCodes.normal(_:);
      v177 = type metadata accessor for SiriKitReliabilityCodes();
      v178 = *(v177 - 8);
      (*(v178 + 104))(v486, v176, v177);
      (*(v178 + 56))(v486, 0, 1, v177);
      v179 = *(*v175 + 120);

      v179(v484, 0x6C7070615F746F6ELL, 0xEE00656C62616369, v486, 0xD000000000000018, 0x80000000000BDE10, 0x54746E6572727543, 0xEB000000006B7361, 190, 2, 2, partial apply for closure #1 in RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:), v452, v453);

      outlined destroy of Any?(v486, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      (*(v480 + 8))(v484, v482);
      static PerformanceUtil.shared.getter();
      dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

      Date.init()();
      PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
      v180 = *(**(v171 + v467) + 152);

      v180(v181);

      static PerformanceUtil.shared.getter();
      dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

      v13 = v557;

      v182 = *(v495 + 8);
      v182(v491, v499);
      v182(v544, v499);
      (*(v551 + 8))(v529, v536);
      __swift_destroy_boxed_opaque_existential_0Tm((v557 + 336));
      outlined destroy of PegasusExperience(v523, type metadata accessor for PegasusExperience);
      __swift_destroy_boxed_opaque_existential_0Tm((v557 + 456));
      __swift_destroy_boxed_opaque_existential_0Tm((v557 + 616));
      *(v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pegasusPatternFlowFactory) = v471;
      outlined init with take of SiriSuggestionsBroker((v557 + 256), v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_aceServiceInvoker);
      outlined init with take of SiriSuggestionsBroker((v557 + 216), v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking);
      v183 = (v171 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType);
      *v183 = v474;
      v183[1] = &protocol witness table for AppResolutionStrategyHelpers;
      v184 = *(v508 + 8);
      v184(v143, v503);
      *(v557 + 1232) = v171;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow);
      static ExecuteResponse.complete<A>(next:)();
      v184(v512, v503);

      goto LABEL_100;
    case 2u:
      v106 = *(v0 + 1920);
      v107 = *(v557 + 1728);
      v108 = *v106;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMd, &_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMR);
      outlined init with take of GenAIPartner?(v106 + *(v109 + 48), v107, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_0, v110, v111, "InformationRoutingFlow: runPommesRequestFlow", v112, 2u);
      }

      v113 = *(v557 + 1728);
      v114 = *(v557 + 1720);
      v115 = *(v557 + 1248);
      v116 = *(v557 + 1240);

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v113, v114, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      outlined init with copy of OutputPublisherAsync(v115 + 16, v557 + 776);
      v117 = type metadata accessor for RunPommesRequestFlow();
      v118 = *(v117 + 48);
      v119 = *(v117 + 52);
      v120 = swift_allocObject();
      *(v120 + 16) = v108;
      outlined init with take of GenAIPartner?(v114, v120 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      outlined init with take of SiriSuggestionsBroker((v557 + 776), v120 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
      v121 = v120 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
      *v121 = 0u;
      *(v121 + 16) = 0u;
      *(v121 + 32) = 0;
      *(v121 + 40) = 2;
      *(v557 + 1192) = v120;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow, type metadata accessor for RunPommesRequestFlow);
      static ExecuteResponse.complete<A>(next:)();
      outlined destroy of Any?(v113, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      goto LABEL_88;
    case 3u:
      v13 = v0;
      (*(*(v0 + 1616) + 32))(*(v0 + 1656), *(v0 + 1920), *(v0 + 1608));
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&dword_0, v126, v127, "InformationRoutingFlow: directInvocation", v128, 2u);
      }

      v129 = *(v557 + 1656);
      v130 = *(v557 + 1616);
      v131 = *(v557 + 1608);
      v132 = *(v557 + 1248);
      v133 = *(v557 + 1240);

      specialized FlowTrampolining.makeResponse(for:)(v129, closure #1 in FlowTrampolining.makeResponse(for:)partial apply, closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)specialized partial apply, v133);
      goto LABEL_35;
    case 4u:
      (*(*(v0 + 1616) + 32))(*(v0 + 1648), *(v0 + 1920), *(v0 + 1608));
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_0, v63, v64, "InformationRoutingFlow: TapEngagement DI", v65, 2u);
      }

      v66 = *(v0 + 1664);
      v67 = *(v0 + 1648);
      v68 = *(v0 + 1616);
      v69 = *(v0 + 1608);
      v70 = *(v0 + 1600);
      v71 = *(v0 + 1592);
      v72 = *(v0 + 1584);
      v73 = *(v0 + 1576);

      (*(v68 + 16))(v66, v67, v69);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      PommesEngagement.init()();
      type metadata accessor for PatternExecutor();
      v74 = swift_allocObject();
      v75 = type metadata accessor for TapEngagementHandlingFlow();
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      v78 = swift_allocObject();
      (*(v72 + 16))(v71, v70, v73);
      v79 = specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(v66, &v559, v71, v74, v78);
      (*(v72 + 8))(v70, v73);
      if (v79)
      {
        v80 = *(v557 + 1648);
        v81 = *(v557 + 1616);
        v82 = *(v557 + 1608);
        v83 = *(v557 + 1240);
        *(v557 + 1144) = v79;
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow, type metadata accessor for TapEngagementHandlingFlow);
        Flow.eraseToAnyFlow()();
        static ExecuteResponse.complete(next:)();

        (*(v81 + 8))(v80, v82);
        v13 = v557;
      }

      else
      {
        v327 = Logger.logObject.getter();
        v328 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v327, v328))
        {
          v329 = swift_slowAlloc();
          *v329 = 0;
          _os_log_impl(&dword_0, v327, v328, "InformationRoutingFlow: Failed to build TapEngagement Handling flow.", v329, 2u);
        }

        v13 = v557;
        v330 = *(v557 + 1648);
        v331 = *(v557 + 1616);
        v332 = *(v557 + 1608);
        v333 = *(v557 + 1240);

        static ExecuteResponse.complete()();
        (*(v331 + 8))(v330, v332);
      }

      goto LABEL_100;
    case 5u:
      (*(*(v0 + 1616) + 32))(*(v0 + 1640), *(v0 + 1920), *(v0 + 1608));
      v185 = Parse.DirectInvocation.userData.getter();
      if (!v185)
      {
        goto LABEL_78;
      }

      v186 = v185;
      if (*(v185 + 16))
      {
        v187 = specialized __RawDictionaryStorage.find<A>(_:)(0x7972657571, 0xE500000000000000);
        if (v188)
        {
          outlined init with copy of Any(*(v186 + 56) + 32 * v187, v0 + 928);

          outlined init with copy of Any(v0 + 928, v0 + 960);
          v189 = String.init<A>(describing:)();
          v191 = v190;

          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v559 = v195;
            *v194 = 136315138;
            *(v194 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v191, &v559);
            _os_log_impl(&dword_0, v192, v193, "InformationRoutingFlow: WebSearchHandoff DI for query: %s", v194, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v195);
          }

          v196 = *(v557 + 1864);
          static OutputPublisherFactory.makeOutputPublisherAsync()();
          static Device.current.getter();
          type metadata accessor for CommonCATs();
          static CATOption.defaultMode.getter();
          v197 = CATWrapper.__allocating_init(options:globals:)();
          type metadata accessor for InformationViewFactory();
          v198 = swift_allocObject();
          v199 = [objc_opt_self() sharedPreferences];
          v200 = type metadata accessor for PommesServerFallbackPreferences();
          v201 = *(v200 + 48);
          v202 = *(v200 + 52);
          swift_allocObject();
          v203 = PommesServerFallbackPreferences.init(_:)();
          v198[11] = v200;
          v198[12] = &protocol witness table for PommesServerFallbackPreferences;
          v198[8] = v203;
          outlined init with take of SiriSuggestionsBroker((v557 + 816), (v198 + 3));
          v198[2] = v197;
          type metadata accessor for PommesSearch();
          static PommesSearch.UserDefaultsSuiteName.getter();
          v204 = type metadata accessor for PommesDialogStateManager();
          v205 = *(v204 + 48);
          v206 = *(v204 + 52);
          swift_allocObject();
          v207 = PommesDialogStateManager.init(suiteName:)();
          type metadata accessor for RenderComponentFlowFactory();
          v208 = swift_allocObject();
          outlined init with take of SiriSuggestionsBroker((v557 + 856), v208 + 16);
          *(v208 + 56) = v198;
          *(v208 + 64) = v207;
          v209 = type metadata accessor for PommesSearchClient();
          v210 = *(v209 + 48);
          v211 = *(v209 + 52);
          swift_allocObject();
          v212 = PommesSearchClient.init()();
          if (v212)
          {
            v213 = &protocol witness table for PommesSearchClient;
          }

          else
          {
            v209 = 0;
            v213 = 0;
            v560 = 0;
            v561 = 0;
          }

          v431 = *(v557 + 1640);
          v432 = *(v557 + 1616);
          v433 = *(v557 + 1608);
          v434 = *(v557 + 1240);
          v559 = v212;
          v562 = v209;
          v563 = v213;
          Flow = type metadata accessor for PushOffQueryFlow();
          v436 = *(Flow + 48);
          v437 = *(Flow + 52);
          swift_allocObject();
          v438 = specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(v189, v191, v208, &v559);

          *(v557 + 1136) = v438;
          lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PushOffQueryFlow and conformance PushOffQueryFlow, type metadata accessor for PushOffQueryFlow);
          v13 = v557;
          static ExecuteResponse.complete<A>(next:)();
          __swift_destroy_boxed_opaque_existential_0Tm((v557 + 928));
          (*(v432 + 8))(v431, v433);

          goto LABEL_100;
        }
      }

LABEL_78:
      v316 = Logger.logObject.getter();
      v317 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v316, v317))
      {
        v318 = swift_slowAlloc();
        *v318 = 0;
        _os_log_impl(&dword_0, v316, v317, "InformationRoutingFlow: WebSearchHandoff DI had no query", v318, 2u);
      }

      v319 = *(v557 + 1840);
      v320 = *(v557 + 1832);
      v321 = *(v557 + 1824);
      v553 = *(v557 + 1640);
      v322 = *(v557 + 1616);
      v323 = *(v557 + 1608);
      v324 = *(v557 + 1248);
      v325 = *(v557 + 1240);

      *(v557 + 1120) = v324;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v326 = swift_task_alloc();
      v326[2] = v2;
      v326[3] = 0xD000000000000037;
      v326[4] = 0x80000000000BDB90;
      Date.init()();
      type metadata accessor for ExecuteResponse();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v320 + 8))(v319, v321);
      v13 = v557;
      goto LABEL_99;
    case 6u:
      v233 = v0;
      v234 = *(v0 + 1920);
      v235 = *(v0 + 1568);
      v236 = *(v0 + 1560);
      v237 = v234[1];
      v538 = *v234;
      v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMR);
      outlined init with take of GenAIPartner?(v234 + *(v238 + 48), v235, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v235, v236, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);

      v239 = Logger.logObject.getter();
      v240 = static os_log_type_t.debug.getter();

      v241 = os_log_type_enabled(v239, v240);
      v242 = *(v557 + 1560);
      v545 = v237;
      if (v241)
      {
        v243 = *(v557 + 1552);
        v518 = *(v557 + 1504);
        v244 = swift_slowAlloc();
        v559 = swift_slowAlloc();
        *v244 = 136315394;
        *(v244 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v538, v237, &v559);
        *(v244 + 12) = 2080;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v242, v243, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        v245 = String.init<A>(describing:)();
        v247 = v246;
        outlined destroy of Any?(v242, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        v248 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v245, v247, &v559);

        *(v244 + 14) = v248;
        _os_log_impl(&dword_0, v239, v240, "InformationRoutingFlow: knowledge fallback for query: %s, genAIPartner: %s", v244, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        outlined destroy of Any?(v242, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      }

      v299 = (**(v557 + 1248) + 256);
      v300 = *v299;
      v301 = (*v299)(v1);
      v303 = *(v302 + 24);
      v304 = *(v302 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v302, v303);
      LOBYTE(v303) = (*(v304 + 8))(v303, v304);
      v301(v1, 0);
      v305 = *(v557 + 1568);
      v13 = v557;
      if ((v303 & 1) == 0)
      {
        v315 = *(v557 + 1240);

        static ExecuteResponse.complete()();
        outlined destroy of Any?(v305, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        goto LABEL_100;
      }

      v306 = v233[193];
      v307 = v233[182];
      v308 = v233[181];
      v513 = *(v233[179] + 56);
      v513(v233[187], 1, 1, v233[178]);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v305, v306, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      v309 = *(v307 + 48);
      v310 = v309(v306, 1, v308);
      v311 = v233[193];
      if (v310 == 1)
      {
        outlined destroy of Any?(v233[193], &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        v312 = v233;
        v313 = v538;
        v314 = v545;
LABEL_114:
        v397 = Logger.logObject.getter();
        v398 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v397, v398))
        {
          v399 = swift_slowAlloc();
          *v399 = 0;
          _os_log_impl(&dword_0, v397, v398, "Knowledge fallback: falling back with an implicit request (do not request a specific partner)", v399, 2u);
        }

        v400 = v312[187];
        v401 = v312[186];
        v402 = v312[178];

        v403 = swift_task_alloc();
        *(v403 + 16) = v313;
        *(v403 + 24) = v314;
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata and conformance AjaxMetadata, &type metadata accessor for AjaxMetadata);
        static Buildable.withBuilder(_:)();

        outlined destroy of Any?(v400, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        v513(v401, 0, 1, v402);
        outlined init with take of GenAIPartner?(v401, v400, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        goto LABEL_117;
      }

      v376 = v233[156];
      v505 = *(v233[182] + 32);
      v505(v233[184], v233[193], v233[181]);
      v377 = v300(v527);
      v379 = *(v378 + 24);
      v380 = *(v378 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v378, v379);
      v381 = (*(v380 + 112))(v379, v380);
      v383 = v382;
      v377(v527, 0);
      if (v383)
      {
        v314 = v545;
        if (v381 == 0xD000000000000018 && 0x80000000000BDB70 == v383 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v384 = v557;
          v385 = *(v557 + 1536);
          v386 = *(v557 + 1456);
          v387 = *(v557 + 1448);
          (*(v386 + 104))(v385, enum case for GenAIPartner.chatGPT(_:), v387);
          (*(v386 + 56))(v385, 0, 1, v387);
          goto LABEL_110;
        }
      }

      else
      {
        v314 = v545;
      }

      v384 = v557;
      (*(*(v557 + 1456) + 56))(*(v557 + 1536), 1, 1, *(v557 + 1448));
LABEL_110:

      v388 = v384[192];
      v389 = v384[181];
      v390 = v309(v388, 1, v389);
      v391 = v384[184];
      v312 = v384;
      if (v390 == 1)
      {
        v392 = v384[182];
        outlined destroy of Any?(v388, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        (*(v392 + 8))(v391, v389);
        v313 = v538;
        goto LABEL_114;
      }

      v393 = v384[183];
      v505(v312[183], v388, v389);
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type GenAIPartner and conformance GenAIPartner, &type metadata accessor for GenAIPartner);
      v313 = v538;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v394 = v312[184];
        v395 = v312[181];
        v396 = *(v312[182] + 8);
        v396(v312[183], v395);
        v396(v394, v395);
        goto LABEL_114;
      }

      v439 = Logger.logObject.getter();
      v440 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v439, v440))
      {
        v441 = swift_slowAlloc();
        *v441 = 0;
        _os_log_impl(&dword_0, v439, v440, "Knowledge fallback: user requested a GenAI partner other than the current/default. Falling back with an explicit request for the mentioned partner.", v441, 2u);
      }

      v442 = v312[187];
      v443 = *(v557 + 1488);
      v444 = *(v557 + 1472);
      v556 = v444;
      v445 = *(v557 + 1464);
      v446 = *(v557 + 1456);
      v447 = *(v557 + 1448);
      v448 = *(v557 + 1424);

      v449 = swift_task_alloc();
      v449[2] = v538;
      v449[3] = v545;
      v449[4] = v444;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata and conformance AjaxMetadata, &type metadata accessor for AjaxMetadata);
      static Buildable.withBuilder(_:)();

      v450 = *(v446 + 8);
      v450(v445, v447);
      outlined destroy of Any?(v442, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
      v513(v443, 0, 1, v448);
      v451 = v443;
      v312 = v557;
      outlined init with take of GenAIPartner?(v451, v442, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
      v450(v556, v447);
LABEL_117:
      v404 = v312[185];
      v405 = v312[179];
      v406 = v312[178];
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v312[187], v404, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
      if ((*(v405 + 48))(v404, 1, v406) == 1)
      {
        v407 = *(v557 + 1840);
        v408 = *(v557 + 1832);
        v409 = *(v557 + 1824);
        v410 = *(v557 + 1568);
        v411 = *(v557 + 1496);
        v412 = *(v557 + 1480);
        v413 = *(v557 + 1248);
        v414 = *(v557 + 1240);

        outlined destroy of Any?(v412, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        *(v557 + 1128) = v413;
        type metadata accessor for PerformanceUtil();
        static PerformanceUtil.shared.getter();
        v415 = swift_task_alloc();
        v415[2] = v521;
        v415[3] = 0xD000000000000031;
        v415[4] = 0x80000000000BDB30;
        Date.init()();
        type metadata accessor for ExecuteResponse();
        dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

        v416 = v407;
        v13 = v557;
        (*(v408 + 8))(v416, v409);

        outlined destroy of Any?(v411, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        outlined destroy of Any?(v410, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      }

      else
      {
        v555 = v312[196];
        v533 = v312[187];
        v417 = v312[185];
        v418 = v312[180];
        v419 = v312[179];
        v420 = v312[178];
        v421 = v312[177];
        v506 = v312[176];
        v422 = *(v557 + 1400);
        v493 = v421;
        v497 = *(v557 + 1392);
        v423 = *(v557 + 1384);
        v424 = *(v557 + 1376);
        v425 = *(v557 + 1368);
        v426 = *(v557 + 1360);
        v427 = *(v557 + 1352);
        v490 = *(v557 + 1344);
        v428 = *(v557 + 1336);
        v520 = *(v557 + 1320);
        v526 = *(v557 + 1312);
        v501 = *(v557 + 1304);
        v510 = *(v557 + 1328);
        v515 = *(v557 + 1240);
        v429 = v420;
        (*(v419 + 32))(v418, v417, v420);
        (*(v419 + 16))(v423, v418, v429);
        (*(v424 + 104))(v423, enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:), v425);
        *v426 = v538;
        v426[1] = v545;
        (*(v427 + 104))(v426, enum case for NLRouterParse.InputCandidate.text(_:), v490);
        v430 = type metadata accessor for USOParse();
        (*(*(v430 - 8) + 56))(v428, 1, 1, v430);
        NLRouterParse.init(nlRoutingDecision:input:usoParse:pommesResponse:)();
        (*(v422 + 104))(v493, enum case for Parse.nlRouter(_:), v497);
        (*(v422 + 16))(v506, v493, v497);
        Input.init(parse:)();
        PluginAction.init(flowHandlerId:input:)();
        static ExecuteResponse.redirect(nextPluginAction:)();
        (*(v520 + 8))(v510, v526);
        (*(v422 + 8))(v493, v497);
        v13 = v557;
        (*(v419 + 8))(v418, v429);
        outlined destroy of Any?(v533, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        outlined destroy of Any?(v555, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      }

      goto LABEL_100;
    case 7u:
      v13 = v0;
      outlined init with take of SiriSuggestionsBroker(*(v0 + 1920), v0 + 16);
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_0, v134, v135, "InformationRoutingFlow: completeToNextFlow", v136, 2u);
      }

      v137 = *(v557 + 1240);

      v138 = *(v557 + 48);
      __swift_project_boxed_opaque_existential_1((v557 + 16), *(v557 + 40));
      static ExecuteResponse.complete<A>(next:)();
      __swift_destroy_boxed_opaque_existential_0Tm((v557 + 16));
      goto LABEL_100;
    case 8u:
      (*(*(v0 + 1616) + 32))(*(v0 + 1624), *(v0 + 1920), *(v0 + 1608));
      v276 = Logger.logObject.getter();
      v277 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v276, v277))
      {
        v278 = swift_slowAlloc();
        *v278 = 0;
        _os_log_impl(&dword_0, v276, v277, "InformationRoutingFlow: webSearchPunchout", v278, 2u);
      }

      v279 = *(v557 + 1624);

      v280 = Parse.DirectInvocation.userData.getter();
      if (v280)
      {
        v281 = v280;
        if (*(v280 + 16) && (v282 = specialized __RawDictionaryStorage.find<A>(_:)(0x7972657571, 0xE500000000000000), (v283 & 1) != 0))
        {
          outlined init with copy of Any(*(v281 + 56) + 32 * v282, v9);

          if (*(v557 + 1080))
          {
            if (swift_dynamicCast())
            {
              v284 = *(v557 + 1912);
              v285 = *(v557 + 1904);
              v129 = *(v557 + 1624);
              v130 = *(v557 + 1616);
              v131 = *(v557 + 1608);
              v286 = *(v557 + 1248);
              v287 = *(v557 + 1240);
              v288 = *(v557 + 1112);
              *v284 = *(v557 + 1104);
              v284[1] = v288;
              v284[2] = 0;
              swift_storeEnumTagMultiPayload();
              v13 = v557;
              (*(*v286 + 200))(v284);
              static ExecuteResponse.ongoing(requireInput:)();
LABEL_35:
              (*(v130 + 8))(v129, v131);
              goto LABEL_100;
            }

LABEL_96:
            v354 = Logger.logObject.getter();
            v355 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v354, v355))
            {
              v356 = swift_slowAlloc();
              *v356 = 0;
              _os_log_impl(&dword_0, v354, v355, "WebSearchPunchout DirectInvocation missing query", v356, 2u);
            }

            v357 = *(v557 + 1840);
            v358 = *(v557 + 1832);
            v359 = *(v557 + 1824);
            v553 = *(v557 + 1624);
            v322 = *(v557 + 1616);
            v323 = *(v557 + 1608);
            v360 = *(v557 + 1248);
            v361 = *(v557 + 1240);

            *(v557 + 1216) = v360;
            type metadata accessor for PerformanceUtil();
            static PerformanceUtil.shared.getter();
            v362 = swift_task_alloc();
            v362[2] = v534;
            v362[3] = 0xD000000000000040;
            v362[4] = 0x80000000000BDA40;
            Date.init()();
            type metadata accessor for ExecuteResponse();
            dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

            (*(v358 + 8))(v357, v359);
            v13 = v557;
LABEL_99:

            (*(v322 + 8))(v553, v323);
            goto LABEL_100;
          }
        }

        else
        {
          *v9 = 0u;
          v9[1] = 0u;
        }
      }

      else
      {
        *v9 = 0u;
        v9[1] = 0u;
      }

      outlined destroy of Any?(v9, &_sypSgMd, &_sypSgMR);
      goto LABEL_96;
    case 9u:
      v97 = *(v0 + 1920);
      v98 = *v97;
      v99 = v97[1];
      v100 = v97[2];
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_0, v101, v102, "InformationRoutingFlow: doWebSearchPunchout", v103, 2u);
      }

      if (v100)
      {
        v104 = type metadata accessor for RenderPegasusFlow();
        v105 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow);
      }

      else
      {
        v104 = 0;
        v105 = 0;
      }

      v334 = *(v557 + 1248);
      v335 = *(v557 + 1240);
      outlined init with copy of OutputPublisherAsync(v334 + 16, v557 + 656);
      v336 = *(v334 + 96);
      v337 = type metadata accessor for ResponseFactory();
      v338 = *(v337 + 48);
      v339 = *(v337 + 52);
      swift_allocObject();

      v340 = ResponseFactory.init()();
      *(v557 + 720) = v337;
      *(v557 + 728) = &protocol witness table for ResponseFactory;
      *(v557 + 696) = v340;
      *(v557 + 760) = &type metadata for SafariSearchURLProvider;
      *(v557 + 768) = &protocol witness table for SafariSearchURLProvider;
      type metadata accessor for WebSearchPunchoutFlow();
      v341 = swift_allocObject();
      *(v341 + 112) = v98;
      *(v341 + 120) = v99;
      *(v341 + 128) = v100;
      *(v341 + 136) = 0;
      *(v341 + 144) = 0;
      *(v341 + 152) = v104;
      *(v341 + 160) = v105;
      *(v341 + 104) = 0;
      outlined init with take of SiriSuggestionsBroker((v557 + 656), v341 + 16);
      outlined init with take of SiriSuggestionsBroker((v557 + 696), v341 + 56);
      *(v341 + 96) = v336;
      outlined init with take of SiriSuggestionsBroker((v557 + 736), v341 + 168);
      *(v557 + 1184) = v341;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow, type metadata accessor for WebSearchPunchoutFlow);
      static ExecuteResponse.complete<A>(next:)();

LABEL_88:
      v13 = v557;

      goto LABEL_100;
    case 0xAu:
      (*(*(v0 + 1616) + 32))(*(v0 + 1632), *(v0 + 1920), *(v0 + 1608));
      v249 = Logger.logObject.getter();
      v250 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        *v251 = 0;
        _os_log_impl(&dword_0, v249, v250, "InformationRoutingFlow: knowledgeConfirmation", v251, 2u);
      }

      v252 = *(v557 + 1632);

      v253 = Parse.DirectInvocation.userData.getter();
      if (!v253)
      {
        *v8 = 0u;
        v8[1] = 0u;
        goto LABEL_90;
      }

      v254 = v253;
      if (!*(v253 + 16) || (v255 = specialized __RawDictionaryStorage.find<A>(_:)(0x7972657571, 0xE500000000000000), (v256 & 1) == 0))
      {
        *v8 = 0u;
        v8[1] = 0u;

        goto LABEL_90;
      }

      outlined init with copy of Any(*(v254 + 56) + 32 * v255, v8);

      if (!*(v557 + 1048))
      {
LABEL_90:
        outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
        goto LABEL_91;
      }

      if (swift_dynamicCast())
      {
        v257 = *(v557 + 1864);
        v258 = *(v557 + 1616);
        v546 = *(v557 + 1608);
        v552 = *(v557 + 1632);
        v259 = *(v557 + 1296);
        v260 = *(v557 + 1288);
        v261 = *(v557 + 1248);
        v531 = *(v557 + 1088);
        v539 = *(v557 + 1240);
        v262 = *(v557 + 1096);
        outlined init with copy of OutputPublisherAsync(v261 + 56, v557 + 496);
        v263 = type metadata accessor for ResponseFactory();
        v264 = *(v263 + 48);
        v265 = *(v263 + 52);
        swift_allocObject();
        v266 = ResponseFactory.init()();
        type metadata accessor for CommonCATs();
        static CATOption.defaultMode.getter();
        v267 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentDevice.getter();

        dispatch thunk of CurrentDevice.siriLocale.getter();

        v268 = v260[5];
        v269 = type metadata accessor for GenerativeModelsAvailability();
        (*(*(v269 - 8) + 56))(v259 + v268, 1, 1, v269);
        *(v259 + v260[6]) = xmmword_B86A0;
        *(v259 + v260[7]) = xmmword_B86A0;
        type metadata accessor for KnowledgeFallbackConfirmationStrategy();
        v270 = swift_allocObject();
        *(v270 + 56) = v263;
        *(v270 + 64) = &protocol witness table for ResponseFactory;
        *(v270 + 32) = v266;
        *(v557 + 560) = v260;
        *(v557 + 568) = &protocol witness table for KnowledgeFallbackHelper;
        v271 = __swift_allocate_boxed_opaque_existential_1((v557 + 536));
        outlined init with take of KnowledgeFallbackHelper(v259, v271, type metadata accessor for KnowledgeFallbackHelper);
        *(v270 + 16) = 0;
        *(v270 + 24) = 0;
        outlined init with take of SiriSuggestionsBroker((v557 + 496), v270 + 72);
        *(v270 + 112) = v267;
        outlined init with take of SiriSuggestionsBroker((v557 + 536), v270 + 120);
        outlined init with copy of OutputPublisherAsync(v261 + 16, v557 + 576);
        v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMR);
        v273 = *(v272 + 48);
        v274 = *(v272 + 52);
        swift_allocObject();
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy and conformance KnowledgeFallbackConfirmationStrategy, type metadata accessor for KnowledgeFallbackConfirmationStrategy);
        *(v557 + 1200) = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
        v275 = swift_allocObject();
        v275[2] = v261;
        v275[3] = v531;
        v275[4] = v262;
        lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), KnowledgeConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMR);

        v13 = v557;
        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        (*(v258 + 8))(v552, v546);
        goto LABEL_100;
      }

LABEL_91:
      v342 = Logger.logObject.getter();
      v343 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v342, v343))
      {
        v344 = swift_slowAlloc();
        *v344 = 0;
        _os_log_impl(&dword_0, v342, v343, "KnowledgeConfirmation DirectInvocation missing query", v344, 2u);
      }

      v345 = *(v557 + 1840);
      v346 = *(v557 + 1832);
      v347 = *(v557 + 1824);
      v348 = *(v557 + 1632);
      v349 = *(v557 + 1616);
      v350 = *(v557 + 1608);
      v351 = *(v557 + 1248);
      v352 = *(v557 + 1240);

      *(v557 + 1208) = v351;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v353 = swift_task_alloc();
      v353[2] = v541;
      v353[3] = 0xD000000000000045;
      v353[4] = 0x80000000000BDAE0;
      Date.init()();
      type metadata accessor for ExecuteResponse();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v346 + 8))(v345, v347);
      v13 = v557;

      (*(v349 + 8))(v348, v350);
LABEL_100:
      v363 = v13[240];
      v364 = v13[239];
      v365 = v13[237];
      v366 = v13[236];
      v367 = v13;
      v368 = v13[233];
      v369 = v367[232];
      v370 = v367[230];
      v371 = v367[227];
      v372 = v367[224];
      v373 = v367[223];
      v454 = v367[220];
      v455 = v367[217];
      v456 = v367[216];
      v457 = v367[215];
      v458 = v367[214];
      v459 = v367[213];
      v460 = v367[210];
      v461 = v367[209];
      v462 = v367[208];
      v463 = v367[207];
      v464 = v367[206];
      v465 = v367[205];
      v466 = v367[204];
      v468 = v367[203];
      v469 = v367[200];
      v470 = v367[199];
      v472 = v367[196];
      v475 = v367[195];
      v478 = v367[194];
      v479 = v367[193];
      v481 = v367[192];
      v483 = v367[191];
      v485 = v367[187];
      v487 = v367[186];
      v489 = v367[185];
      v492 = v367[184];
      v496 = v367[183];
      v500 = v367[180];
      v504 = v367[177];
      v509 = v367[176];
      v514 = v367[173];
      v519 = v367[170];
      v525 = v367[167];
      v532 = v367[166];
      v540 = v367[163];
      v547 = v367[162];
      v554 = v367[160];
      v558 = v367[159];

      v374 = v367[1];

      return v374();
    case 0xBu:
      v32 = *(v0 + 1920);
      v33 = *(v0 + 1528);
      v34 = *(v0 + 1280);
      v528 = v32[1];
      v535 = *v32;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMR);
      v36 = v35[16];
      v37 = (v32 + v35[20]);
      v38 = v37[1];
      v543 = *v37;
      outlined init with take of GenAIPartner?(v32 + v35[12], v33, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with take of GenAIPartner?(v32 + v36, v34, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_0, v39, v40, "InformationRoutingFlow: disableConfirmRequestsConfirmation", v41, 2u);
      }

      v42 = *(v557 + 1864);
      v549 = *(v557 + 1528);
      v43 = *(v557 + 1288);
      v44 = *(v557 + 1280);
      v494 = *(v557 + 1552);
      v498 = *(v557 + 1272);
      v511 = *(v557 + 1264);
      v516 = *(v557 + 1520);
      v502 = *(v557 + 1256);
      v507 = *(v557 + 1512);
      v45 = *(v557 + 1248);
      v522 = *(v557 + 1240);

      v46 = *(v45 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil);
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentRequest.getter();

      CurrentRequest.executionRequestId.getter();

      v488 = v44;
      dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackAlwaysPromptShown(requestId:pommesCandidateId:sessionRequestId:)();

      v47 = type metadata accessor for ResponseFactory();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      v50 = ResponseFactory.init()();
      *(v557 + 80) = v47;
      *(v557 + 88) = &protocol witness table for ResponseFactory;
      *(v557 + 56) = v50;
      static AceService.currentAsync.getter();
      type metadata accessor for CommonCATs();
      static CATOption.defaultMode.getter();
      v51 = CATWrapper.__allocating_init(options:globals:)();
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentDevice.getter();

      *(v557 + 160) = v43;
      *(v557 + 168) = &protocol witness table for KnowledgeFallbackHelper;
      v52 = __swift_allocate_boxed_opaque_existential_1((v557 + 136));
      dispatch thunk of CurrentDevice.siriLocale.getter();

      v53 = v43[5];
      v54 = type metadata accessor for GenerativeModelsAvailability();
      (*(*(v54 - 8) + 56))(v52 + v53, 1, 1, v54);
      *(v52 + v43[6]) = xmmword_B86A0;
      *(v52 + v43[7]) = xmmword_B86A0;
      type metadata accessor for DisableConfirmRequestsConfirmationStrategy();
      v55 = swift_allocObject();
      outlined init with take of SiriSuggestionsBroker((v557 + 56), v55 + 16);
      outlined init with take of SiriSuggestionsBroker((v557 + 96), v55 + 56);
      *(v55 + 96) = v51;
      outlined init with take of SiriSuggestionsBroker((v557 + 136), v55 + 104);
      outlined init with copy of OutputPublisherAsync(v45 + 16, v557 + 176);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMR);
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy, type metadata accessor for DisableConfirmRequestsConfirmationStrategy);
      *(v557 + 1224) = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v549, v494, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v44, v498, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v59 = (*(v507 + 80) + 40) & ~*(v507 + 80);
      v60 = (v516 + *(v502 + 80) + v59) & ~*(v502 + 80);
      v61 = swift_allocObject();
      v61[2] = v45;
      v61[3] = v535;
      v61[4] = v528;
      outlined init with take of GenAIPartner?(v494, v61 + v59, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with take of GenAIPartner?(v498, v61 + v60, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v62 = (v61 + ((v511 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v62 = v543;
      v62[1] = v38;
      lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMR);

      v13 = v557;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      outlined destroy of Any?(v488, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      outlined destroy of Any?(v549, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      goto LABEL_100;
    case 0xCu:
      v84 = *(*(v0 + 1696) + 32);
      v84(*(v0 + 1712), *(v0 + 1920), *(v0 + 1688));
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_0, v85, v86, "rewritting client action to direct invocation", v87, 2u);
      }

      v88 = *(v0 + 1712);
      v89 = *(v0 + 1704);
      v90 = *(v0 + 1696);
      v91 = *(v0 + 1688);
      v92 = *(v0 + 1248);
      v550 = *(v557 + 1240);

      (*(v90 + 16))(v89, v88, v91);
      v93 = type metadata accessor for NavigateToShimFlow(0);
      v94 = *(v93 + 48);
      v95 = *(v93 + 52);
      v96 = swift_allocObject();
      *(v96 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue) = 0;
      type metadata accessor for NavigateToShimFlow.ExitValue(0);
      swift_storeEnumTagMultiPayload();
      v84(v96 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action, v89, v91);
      *(v557 + 1176) = v96;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow, type metadata accessor for NavigateToShimFlow);

      v13 = v557;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      (*(v90 + 8))(v88, v91);
      goto LABEL_100;
    case 0xDu:
      v214 = v0;
      v215 = *(v0 + 1680);
      v216 = *(v0 + 1672);
      v217 = *(v557 + 1616);
      v218 = *(v557 + 1608);
      v537 = *(v217 + 32);
      v537(*(v557 + 1680), *(v557 + 1920), v218);
      v219 = *(v217 + 16);
      v219(v216, v215, v218);
      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.debug.getter();
      v222 = os_log_type_enabled(v220, v221);
      v223 = *(v557 + 1672);
      v224 = *(v557 + 1616);
      v225 = *(v557 + 1608);
      if (v222)
      {
        v226 = swift_slowAlloc();
        v530 = v219;
        v227 = swift_slowAlloc();
        v559 = v227;
        *v226 = 136315138;
        v524 = Parse.DirectInvocation.identifier.getter();
        v229 = v228;
        v230 = *(v224 + 8);
        v230(v223, v225);
        v231 = v230;
        v214 = v557;
        v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v524, v229, &v559);

        *(v226 + 4) = v232;
        _os_log_impl(&dword_0, v220, v221, "rewritting directInvocation to pegasus %s", v226, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v227);
        v219 = v530;
      }

      else
      {

        v289 = *(v224 + 8);
        v289(v223, v225);
        v231 = v289;
      }

      v290 = *(v214 + 1680);
      v291 = *(v557 + 1664);
      v292 = *(v557 + 1608);
      v293 = *(v557 + 1248);
      v294 = *(v557 + 1240);
      v219(v291, v290, v292);
      v295 = type metadata accessor for ShimOverrideFlow(0);
      v296 = *(v295 + 48);
      v297 = *(v295 + 52);
      v298 = swift_allocObject();
      *(v298 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue) = 0;
      type metadata accessor for ShimOverrideFlow.ExitValue(0);
      swift_storeEnumTagMultiPayload();
      v537(v298 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse, v291, v292);
      *(v557 + 1168) = v298;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type ShimOverrideFlow and conformance ShimOverrideFlow, type metadata accessor for ShimOverrideFlow);

      v13 = v557;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      v231(v290, v292);
      goto LABEL_100;
    case 0xEu:
      v13 = v0;
      v24 = *(v0 + 1840);
      v542 = *(v0 + 1832);
      v548 = *(v0 + 1824);
      v25 = *(v0 + 1248);
      v26 = *(v0 + 1240);
      v27 = **(v0 + 1920);
      _StringGuts.grow(_:)(26);

      v559 = 0xD000000000000018;
      v560 = 0x80000000000BDBD0;
      *(v0 + 1152) = v27;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v28._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v28);

      v29 = v559;
      v30 = v560;
      *(v0 + 1160) = v25;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v31 = swift_task_alloc();
      v31[2] = v3;
      v31[3] = v29;
      v31[4] = v30;
      Date.init()();
      type metadata accessor for ExecuteResponse();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v542 + 8))(v24, v548);

      goto LABEL_100;
    case 0xFu:
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_0, v122, v123, "InformationRoutingFlow: complete", v124, 2u);
      }

      v13 = v557;
      v125 = *(v557 + 1240);

      static ExecuteResponse.complete()();
      goto LABEL_100;
    default:
      v13 = v0;
      v14 = *(v0 + 1920);
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "InformationRoutingFlow: renderPommes", v19, 2u);
      }

      v20 = *(v557 + 1248);

      v21 = InformationRoutingFlow.shouldPromptLocation(with:locationGuardFlowResult:)(v15, v16);
      v22 = *(v557 + 1248);
      v23 = *(v557 + 1240);
      if (v21)
      {
        InformationRoutingFlow.renderGuardFlow(_:)(v15);
      }

      else
      {
        InformationRoutingFlow.renderPommesFlow(_:)(v15);
      }

      goto LABEL_100;
  }
}

uint64_t closure #1 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v50 = type metadata accessor for InformationRoutingFlow.State(0);
  v15 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of InformationRoutingFlow.State(a1, v21, type metadata accessor for NavigateToShimFlow.ExitValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.information);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v22;
      v52 = v27;
      *v26 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v28 = String.init<A>(describing:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v52);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "NavigateToShimFlow failed with error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    *v17 = v22;
    swift_storeEnumTagMultiPayload();
    v31 = v17;
    v32 = *(*a2 + 200);
    swift_errorRetain();
    v32(v31);
  }

  else
  {
    (*(v5 + 32))(v14, v21, v4);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.information);
    v49 = *(v5 + 16);
    v49(v12, v14, v4);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = a2;
      v38 = v37;
      v46 = swift_slowAlloc();
      v52 = v46;
      *v38 = 136315138;
      v49(v9, v12, v4);
      v44 = String.init<A>(describing:)();
      v47 = v17;
      v40 = v39;
      v41 = *(v5 + 8);
      v45 = v36;
      v41(v12, v4);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v40, &v52);
      v17 = v47;

      *(v38 + 4) = v42;
      _os_log_impl(&dword_0, v35, v45, "rewritten request: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);

      a2 = v48;
    }

    else
    {

      v41 = *(v5 + 8);
      v41(v12, v4);
    }

    v49(v17, v14, v4);
    swift_storeEnumTagMultiPayload();
    (*(*a2 + 200))(v17);
    return (v41)(v14, v4);
  }
}

uint64_t closure #2 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse.PegasusResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v50 = type metadata accessor for InformationRoutingFlow.State(0);
  v15 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of InformationRoutingFlow.State(a1, v21, type metadata accessor for ShimOverrideFlow.ExitValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.information);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v22;
      v52 = v27;
      *v26 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v28 = String.init<A>(describing:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v52);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "NavigateToShim failed with error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    *v17 = v22;
    swift_storeEnumTagMultiPayload();
    v31 = v17;
    v32 = *(*a2 + 200);
    swift_errorRetain();
    v32(v31);
  }

  else
  {
    (*(v5 + 32))(v14, v21, v4);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.information);
    v49 = *(v5 + 16);
    v49(v12, v14, v4);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = a2;
      v38 = v37;
      v46 = swift_slowAlloc();
      v52 = v46;
      *v38 = 136315138;
      v49(v9, v12, v4);
      v44 = String.init<A>(describing:)();
      v47 = v17;
      v40 = v39;
      v41 = *(v5 + 8);
      v45 = v36;
      v41(v12, v4);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v40, &v52);
      v17 = v47;

      *(v38 + 4) = v42;
      _os_log_impl(&dword_0, v35, v45, "rewritten pegasus request: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);

      a2 = v48;
    }

    else
    {

      v41 = *(v5 + 8);
      v41(v12, v4);
    }

    v49(v17, v14, v4);
    swift_storeEnumTagMultiPayload();
    (*(*a2 + 200))(v17);
    return (v41)(v14, v4);
  }
}

uint64_t specialized FlowTrampolining.makeResponse(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v6 = v4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v30 = a1;
  Date.init()();
  v25 = &v29;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0CSgMd, _s11SiriKitFlow03AnyC0CSgMR);
  v24 = a2;
  LOBYTE(v23) = 2;
  v21 = "makeResponse(for:)";
  v22 = 18;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v14 = *(v10 + 8);
  v14(v13, v9);
  if (v31)
  {

    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v27 = a4;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.information);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Unable to locate flow for direct invocation parse/experience. Returning error flow.", v19, 2u);
    }

    v31 = v6;
    v20 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v20);
    v23 = &v31;
    Date.init()();
    v25 = &v21;
    v26 = type metadata accessor for ExecuteResponse();
    v24 = v28;
    LOBYTE(v23) = 2;
    v21 = "makeResponse(forErrorMessage:)";
    v22 = 30;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    return (v14)(v13, v9);
  }
}

uint64_t closure #3 in InformationRoutingFlow.execute()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMd, &_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes18PrescribedAjaxToolOSgMd, &_s16SiriMessageTypes18PrescribedAjaxToolOSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = *a1;
  swift_getKeyPath();
  v16 = enum case for PrescribedAjaxTool.generateKnowledgeResponseIntentTool(_:);
  v17 = type metadata accessor for PrescribedAjaxTool();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14, v16, v17);
  (*(v18 + 56))(v14, 0, 1, v17);
  Builder.subscript.setter();
  swift_getKeyPath();
  type metadata accessor for AjaxMetadata.AjaxQuery.ExplicitQuery();
  v25 = a2;
  v26 = a3;
  v27 = v24;
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata.AjaxQuery.ExplicitQuery and conformance AjaxMetadata.AjaxQuery.ExplicitQuery, &type metadata accessor for AjaxMetadata.AjaxQuery.ExplicitQuery);
  static Buildable.withBuilder(_:)();
  v19 = enum case for AjaxMetadata.AjaxQuery.explicit(_:);
  v20 = type metadata accessor for AjaxMetadata.AjaxQuery();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v10, v19, v20);
  (*(v21 + 56))(v10, 0, 1, v20);
  return Builder.subscript.setter();
}

uint64_t closure #1 in closure #3 in InformationRoutingFlow.execute()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v16 - v10;
  v12 = *a1;
  swift_getKeyPath();
  v16[0] = a2;
  v16[1] = a3;

  Builder.subscript.setter();
  swift_getKeyPath();
  v13 = type metadata accessor for GenAIPartner();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a4, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  return Builder.subscript.setter();
}

uint64_t closure #4 in InformationRoutingFlow.execute()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMd, &_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes18PrescribedAjaxToolOSgMd, &_s16SiriMessageTypes18PrescribedAjaxToolOSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22[-v12];
  v14 = *a1;
  swift_getKeyPath();
  v15 = enum case for PrescribedAjaxTool.generateKnowledgeResponseIntentTool(_:);
  v16 = type metadata accessor for PrescribedAjaxTool();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v13, v15, v16);
  (*(v17 + 56))(v13, 0, 1, v16);
  Builder.subscript.setter();
  swift_getKeyPath();
  type metadata accessor for AjaxMetadata.AjaxQuery.ImplicitQuery();
  v23 = a2;
  v24 = a3;
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata.AjaxQuery.ImplicitQuery and conformance AjaxMetadata.AjaxQuery.ImplicitQuery, &type metadata accessor for AjaxMetadata.AjaxQuery.ImplicitQuery);
  static Buildable.withBuilder(_:)();
  v18 = enum case for AjaxMetadata.AjaxQuery.implicit(_:);
  v19 = type metadata accessor for AjaxMetadata.AjaxQuery();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v9, v18, v19);
  (*(v20 + 56))(v9, 0, 1, v19);
  return Builder.subscript.setter();
}

uint64_t closure #1 in closure #4 in InformationRoutingFlow.execute()(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();

  return Builder.subscript.setter();
}

uint64_t closure #5 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for InformationRoutingFlow.State(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a3;
  v15[1] = a4;
  v15[2] = 0;
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for PommesCandidateId();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);

  specialized InformationRoutingFlow.knowledgeFallbackConfirmationCompletion(exitValue:yesStateFn:noState:disableConfirmRequestsStateFn:isEnablement:pommesCandidateId:sessionRequestId:)(a1, v15, 0, 0, 0, v11, 0, 0, a2, a3, a4);
  outlined destroy of Any?(v11, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  return outlined destroy of PegasusExperience(v15, type metadata accessor for InformationRoutingFlow.State);
}

uint64_t closure #6 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for InformationRoutingFlow.State(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMR) + 48);
  *v18 = a3;
  v18[1] = a4;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a5, v18 + v19, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  swift_storeEnumTagMultiPayload();

  InformationRoutingFlow.disableConfirmRequestsConfirmationCompletion(exitValue:continueState:pommesCandidateId:sessionRequestId:)(a1, v18, a6, a7, a8);
  return outlined destroy of PegasusExperience(v18, type metadata accessor for InformationRoutingFlow.State);
}

uint64_t InformationRoutingFlow.execute(completion:)()
{
  type metadata accessor for InformationRoutingFlow(0);
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow);
  return Flow.deferToExecuteAsync(_:)();
}

void InformationRoutingFlow.renderGuardFlow(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "InformationRoutingFlow: location guard flow", v7, 2u);
  }

  specialized InformationRoutingFlow.needsPreciseLocation(with:)();
  type metadata accessor for SiriLocationAccessGuardFlow();
  lazy protocol witness table accessor for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy();
  v8 = a1;
  v11 = SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v8;
  v9[4] = v11;
  v10 = v8;

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in InformationRoutingFlow.renderGuardFlow(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  v10 = *a1;
  dispatch thunk of SiriLocationAccessGuardFlow.failureReason.getter();
  (*(*a2 + 304))(v10, a3, v9);
  return outlined destroy of Any?(v9, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
}

unint64_t InformationRoutingFlow.handleGuardFlowResult(with:pommesResponse:failureReason:)(int a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v89 = a2;
  v7 = type metadata accessor for LocationAccessFailureReason();
  v90 = *(v7 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin(v7);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMR);
  v10 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v88 = &v76 - v11;
  v84 = type metadata accessor for InformationRoutingFlow.State(0);
  v12 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v87 = &v76 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v76 - v23;
  __chkstk_darwin(v22);
  v26 = &v76 - v25;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v85 = v7;
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.information);
  v83 = a3;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a3, v26, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v81 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v80 = v19;
  v86 = a1;
  if (v31)
  {
    v77 = v14;
    v78 = v4;
    v32 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = GuardFlowResult.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v91);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v26, v24, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    v36 = v90;
    v37 = v85;
    if ((*(v90 + 48))(v24, 1, v85) == 1)
    {
      outlined destroy of Any?(v24, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
      v38 = 0xE400000000000000;
      v39 = 1701736302;
    }

    else
    {
      v39 = LocationAccessFailureReason.debugDescription.getter();
      v38 = v40;
      (*(v36 + 8))(v24, v37);
    }

    outlined destroy of Any?(v26, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v91);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_0, v29, v30, "InformationRoutingFlow: location guard flow completed with %s and failureReason=%s", v32, 0x16u);
    swift_arrayDestroy();

    v14 = v77;
    v4 = v78;
  }

  else
  {

    outlined destroy of Any?(v26, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  }

  v42 = v87;
  v43 = v88;
  v44 = v90;
  if ((v86 & 1) == 0)
  {
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMd, &_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMR) + 48);
    v50 = v89;
    *v14 = v89;
    v51 = type metadata accessor for IdentifiedUser();
    (*(*(v51 - 8) + 56))(&v14[v49], 1, 1, v51);
    swift_storeEnumTagMultiPayload();
    v52 = *(*v4 + 200);
    v53 = v50;
    return v52(v14);
  }

  v45 = v85;
  (*(v90 + 104))(v87, enum case for LocationAccessFailureReason.insufficientPrecisionAuthorized(_:), v85);
  (*(v44 + 56))(v42, 0, 1, v45);
  v46 = *(v82 + 48);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v83, v43, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v42, v43 + v46, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v47 = *(v44 + 48);
  if (v47(v43, 1, v45) != 1)
  {
    v54 = v80;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v43, v80, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    if (v47(v43 + v46, 1, v45) != 1)
    {
      v55 = v43 + v46;
      v56 = v79;
      (*(v44 + 32))(v79, v55, v45);
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type LocationAccessFailureReason and conformance LocationAccessFailureReason, &type metadata accessor for LocationAccessFailureReason);
      v86 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v44 + 8);
      v57(v56, v45);
      outlined destroy of Any?(v42, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
      v57(v54, v45);
      outlined destroy of Any?(v43, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
      v48 = v89;
      if ((v86 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    outlined destroy of Any?(v42, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    (*(v44 + 8))(v54, v45);
LABEL_16:
    outlined destroy of Any?(v43, &_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMR);
    v48 = v89;
    goto LABEL_22;
  }

  outlined destroy of Any?(v42, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  if (v47(v43 + v46, 1, v45) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of Any?(v43, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v48 = v89;
LABEL_18:
  if (specialized InformationRoutingFlow.needsPreciseLocation(with:)())
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "InformationRoutingFlow: Location guard flow was partially successful because location enabled but precise location disabled. Re-run Pommes request.", v60, 2u);
    }

    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMd, &_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMR) + 48);
    *v14 = v48;
    v62 = type metadata accessor for IdentifiedUser();
    (*(*(v62 - 8) + 56))(&v14[v61], 1, 1, v62);
LABEL_31:
    swift_storeEnumTagMultiPayload();
    v52 = *(*v4 + 200);
    v70 = v48;
    return v52(v14);
  }

LABEL_22:
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (result >> 62)
  {
    v71 = result;
    v72 = _CocoaArrayWrapper.endIndex.getter();
    result = v71;
    if (v72)
    {
      goto LABEL_24;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_34;
  }

LABEL_24:
  if ((result & 0xC000000000000001) != 0)
  {
    v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v64 = *(result + 32);
  }

  v65 = v64;

  type metadata accessor for GenericExperience();
  v66 = swift_dynamicCastClass();

  if (v66)
  {
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "InformationRoutingFlow: Location guard flow failed with server driven experience. Rendering PommesResponse.", v69, 2u);
    }

    *v14 = v48;
    v14[8] = 1;
    goto LABEL_31;
  }

LABEL_35:
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_0, v73, v74, "InformationRoutingFlow: Location denied. Used default GuardFlow error response.", v75, 2u);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*v4 + 200))(v14);
}

unint64_t PommesResponse.isServerDrivenExperience.getter()
{
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v4 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v4;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    type metadata accessor for GenericExperience();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
LABEL_11:
      v6 = v3 != 0;

      return v6;
    }

LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t InformationRoutingFlow.shouldPromptLocation(with:locationGuardFlowResult:)(uint64_t a1, int a2)
{
  v5 = type metadata accessor for PommesSearchReason();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  v7 = __chkstk_darwin(v5);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v44 - v9;
  v55 = type metadata accessor for PommesRenderOptions.PromptType();
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v55 - 8);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v2 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled);
  v44 = a1;
  v13 = dispatch thunk of PommesResponse.experiences.getter();
  v14 = v13;
  v49 = a2;
  if (v13 >> 62)
  {
LABEL_30:
    v56 = v14 & 0xFFFFFFFFFFFFFF8;
    v58 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v56 = v13 & 0xFFFFFFFFFFFFFF8;
    v58 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  }

  v15 = 0;
  v57 = v14 & 0xC000000000000001;
  v54 = enum case for PommesRenderOptions.PromptType.shareDeviceLocation(_:);
  v16 = (v10 + 104);
  v17 = (v10 + 8);
  v51 = enum case for PommesRenderOptions.PromptType.sharePreciseDeviceLocation(_:);
  v53 = v14;
  v18 = v52;
  do
  {
    v10 = v15;
    if (v58 == v15)
    {
      break;
    }

    if (v57)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v56 + 16))
      {
        goto LABEL_29;
      }

      v19 = *(v14 + 8 * v15 + 32);
    }

    v20 = v19;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = v10;
    v22 = dispatch thunk of Experience.renderOptions.getter();
    v23 = PommesRenderOptions.promptTypes.getter();

    v24 = *v16;
    v25 = v55;
    (*v16)(v18, v54, v55);
    LOBYTE(v22) = specialized Sequence<>.contains(_:)(v18, v23);

    v26 = *v17;
    (*v17)(v18, v25);
    if (v22)
    {

      v10 = v21;
      break;
    }

    v27 = dispatch thunk of Experience.renderOptions.getter();
    v28 = PommesRenderOptions.promptTypes.getter();

    v24(v18, v51, v25);
    LOBYTE(v27) = specialized Sequence<>.contains(_:)(v18, v28);

    v26(v18, v25);
    v10 = v21;
    v15 = v21 + 1;
    v14 = v53;
  }

  while ((v27 & 1) == 0);

  dispatch thunk of PommesResponse.searchReason.getter();
  v30 = v45;
  v29 = v46;
  v31 = v47;
  (*(v46 + 104))(v45, enum case for PommesSearchReason.runPommesRequest(_:), v47);
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason, &type metadata accessor for PommesSearchReason);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v61 == v59 && v62 == v60)
  {
    v32 = 0;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  v34 = v48;
  v33 = v49;
  v35 = *(v29 + 8);
  v35(v30, v31);
  v35(v50, v31);

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.information);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v58 != v10;
    v40 = swift_slowAlloc();
    *v40 = 67109888;
    *(v40 + 4) = v34;
    *(v40 + 8) = 1024;
    *(v40 + 10) = v39;
    *(v40 + 14) = 1024;
    *(v40 + 16) = v32 & 1;
    *(v40 + 20) = 1024;
    *(v40 + 22) = v33 == 2;
    _os_log_impl(&dword_0, v37, v38, "InformationRoutingFlow: shouldPromptLocation? enabled=%{BOOL}d && containsPrompt=%{BOOL}d && !isRunPommesRequest=%{BOOL}d && !hasGuardFlowResult=%{BOOL}d", v40, 0x1Au);
  }

  if (v58 == v10)
  {
    v41 = 0;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 & v32;
  if (v33 == 2)
  {
    return v42;
  }

  else
  {
    return 0;
  }
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for PommesRenderOptions.PromptType() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType, &type metadata accessor for PommesRenderOptions.PromptType);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t closure #2 in InformationRoutingFlow.renderPommesFlow(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return RegionUnavailabilityOutputGenerator.generateOutput()(a1, a2, a3);
}

uint64_t closure #1 in InformationRoutingFlow.renderPommesFlow(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30[-1] - v16;
  v18 = type metadata accessor for InformationRoutingFlow.State(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v30[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = a3;
  v21[1] = a4;
  v21[2] = a5;
  swift_storeEnumTagMultiPayload();
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a6;
  swift_bridgeObjectRetain_n();

  v23 = a6;
  PommesResponse.pommesCandidateId.getter();
  v24 = PommesResponse.requestId.getter();
  specialized InformationRoutingFlow.knowledgeFallbackConfirmationCompletion(exitValue:yesStateFn:noState:disableConfirmRequestsStateFn:isEnablement:pommesCandidateId:sessionRequestId:)(a1, v21, partial apply for closure #2 in closure #1 in InformationRoutingFlow.renderPommesFlow(_:), v22, a7, v17, v24, v25, a2, a3, a4);

  outlined destroy of Any?(v17, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  result = outlined destroy of PegasusExperience(v21, type metadata accessor for InformationRoutingFlow.State);
  if ((a7 & 1) == 0)
  {
    (*(*a2 + 240))(v30, result);
    v27 = v31;
    v28 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v28 + 56))(v27, v28);
    return __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  return result;
}

uint64_t closure #2 in closure #1 in InformationRoutingFlow.renderPommesFlow(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMR);
  v9 = v8[12];
  v10 = v8[16];
  v11 = (a4 + v8[20]);
  *a4 = a2;
  a4[1] = a3;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, a4 + v9, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);

  PommesResponse.pommesCandidateId.getter();
  *v11 = PommesResponse.requestId.getter();
  v11[1] = v12;
  type metadata accessor for InformationRoutingFlow.State(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t InformationRoutingFlow.disableConfirmRequestsConfirmationCompletion(exitValue:continueState:pommesCandidateId:sessionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v65 = a3;
  v59 = a2;
  v61 = type metadata accessor for InformationRoutingFlow.State(0);
  v7 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v64 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.information);
  v62 = *(v10 + 16);
  v63 = a1;
  v62(v16, a1, v9);
  v60 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v58 = a5;
    v22 = v21;
    v56 = swift_slowAlloc();
    v68[0] = v56;
    *v22 = 136315138;
    lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptResult<DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMR);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v14;
    v25 = v24;
    v26 = *(v10 + 8);
    v26(v16, v9);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v68);
    v14 = v57;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v19, v20, "disable confirm requests confirmation: disableConfirmRequestsConfirmationCompletion %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  else
  {

    v26 = *(v10 + 8);
    v26(v16, v9);
  }

  v62(v14, v63, v9);
  v28 = (*(v10 + 88))(v14, v9);
  if (v28 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v10 + 96))(v14, v9);
    v29 = *v14;
    if (v29 != 2)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      v32 = os_log_type_enabled(v30, v31);
      if (v29)
      {
        if (v32)
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_0, v30, v31, "User kept confirmation prompts on", v33, 2u);
        }

        v34 = v64;
        outlined init with copy of InformationRoutingFlow.State(v59, v64, type metadata accessor for InformationRoutingFlow.State);
        v35 = v67;
        v36 = (*(*v67 + 200))(v34);
        (*(*v35 + 240))(v68, v36);
        v37 = v69;
        v38 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        (*(v38 + 88))(v37, v38);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
      }

      else
      {
        if (v32)
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_0, v30, v31, "User turned off confirmation prompts", v45, 2u);
        }

        v46 = v64;
        outlined init with copy of InformationRoutingFlow.State(v59, v64, type metadata accessor for InformationRoutingFlow.State);
        v47 = v67;
        v48 = (*(*v67 + 200))(v46);
        (*(*v47 + 240))(v68, v48);
        v49 = v69;
        v50 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        (*(v50 + 96))(0, v49, v50);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
      }

      goto LABEL_19;
    }

LABEL_18:
    v42 = v64;
    swift_storeEnumTagMultiPayload();
    (*(*v67 + 200))(v42);
    goto LABEL_19;
  }

  if (v28 == enum case for PromptResult.error<A>(_:))
  {
    v26(v14, v9);
    goto LABEL_14;
  }

  if (v28 == enum case for PromptResult.cancelled<A>(_:))
  {
    goto LABEL_18;
  }

  if (v28 == enum case for PromptResult.unanswered<A>(_:))
  {
LABEL_14:
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Disable Confirm Requests confirmation was unanswered or errored out", v41, 2u);
    }

    goto LABEL_18;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "Disable Confirm Requests confirmation got unhandled response type", v53, 2u);
  }

  v54 = v64;
  swift_storeEnumTagMultiPayload();
  (*(*v67 + 200))(v54);
  v26(v14, v9);
LABEL_19:
  v43 = *(v67 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.executionRequestId.getter();

  dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackAlwaysPromptConfirmationOutcome(requestId:pommesCandidateId:sessionRequestId:outcome:)();
}

uint64_t *InformationRoutingFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  outlined destroy of PegasusExperience(v0 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper));
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_utteranceNormalizer;
  v4 = type metadata accessor for UtteranceNormalizer();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil);

  return v0;
}

uint64_t InformationRoutingFlow.__deallocating_deinit()
{
  InformationRoutingFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance InformationRoutingFlow(uint64_t a1)
{
  v4 = *(**v1 + 280);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t protocol witness for FlowEntryPoint.flowFor(input:) in conformance InformationRoutingEntryPoint(uint64_t a1)
{
  v2 = specialized InformationRoutingEntryPoint.flowFor(input:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + 16, v9);
  v6 = *(v5 + 96);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_outputPublisher, v9);
  v6 = *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_informationViewFactory);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_outputPublisher, v9);
  v6 = *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_informationViewFactory);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher, v9);
  v6 = *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

uint64_t specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - v11;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v47 = *(Context - 8);
  v14 = *(v47 + 64);
  __chkstk_darwin(Context);
  v45 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v44 - v18;
  v48 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v48);
  v46 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PommesEngagement();
  v54 = v23;
  v55 = &protocol witness table for PommesEngagement;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
  (*(*(v23 - 8) + 32))(boxed_opaque_existential_1, a3, v23);
  v51 = type metadata accessor for PatternExecutor();
  v52 = &protocol witness table for PatternExecutor;
  *&v50 = a4;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.information);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "TapEngagementHandlingFlow: Received Direct invocation", v29, 2u);
  }

  specialized Parse.DirectInvocation.get<A>(protoMessage:)(0xD000000000000011, 0x80000000000BE1A0, v19);
  v30 = v48;
  if ((*(v20 + 48))(v19, 1, v48) == 1)
  {
    outlined destroy of Any?(v19, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR);
  }

  else
  {
    v44 = v26;
    v31 = a1;
    v32 = *(v20 + 32);
    v33 = v46;
    v32(v46, v19, v30);
    specialized Parse.DirectInvocation.get<A>(protoMessage:)(0x4373757361676570, 0xEE00747865746E6FLL, v12);
    if ((*(v47 + 48))(v12, 1, Context) != 1)
    {
      v40 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v40 - 8) + 8))(v31, v40);
      v41 = *(v47 + 32);
      v42 = v45;
      v41(v45, v12, Context);
      v32((a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext), v33, v30);
      v41((a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext), v42, Context);
      outlined init with take of SiriSuggestionsBroker(v49, a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync);
      outlined init with take of SiriSuggestionsBroker(&v53, a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement);
      outlined init with take of SiriSuggestionsBroker(&v50, a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor);
      return a5;
    }

    (*(v20 + 8))(v33, v30);
    outlined destroy of Any?(v12, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR);
    a1 = v31;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "TapEngagementHandlingFlow: Unable to retrieve EngagementContext from DI Payload.", v36, 2u);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  v37 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v37 - 8) + 8))(a1, v37);
  __swift_destroy_boxed_opaque_existential_0Tm(&v50);
  __swift_destroy_boxed_opaque_existential_0Tm(&v53);
  type metadata accessor for TapEngagementHandlingFlow();
  v38 = *(*a5 + 48);
  v39 = *(*a5 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t specialized InformationRoutingFlow.__allocating_init(input:outputPublisher:interactionStream:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v347 = a5;
  v341 = a4;
  v344 = a3;
  v346 = a2;
  v328 = type metadata accessor for MessagePayload.ClientAction();
  v331 = *(v328 - 8);
  v11 = *(v331 + 64);
  v12 = __chkstk_darwin(v328);
  v325 = &v319 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v326 = &v319 - v14;
  v333 = type metadata accessor for IFClientActionParse();
  v330 = *(v333 - 8);
  v15 = *(v330 + 64);
  v16 = __chkstk_darwin(v333);
  v327 = &v319 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v332 = &v319 - v18;
  v19 = type metadata accessor for Parse.DirectInvocation();
  v338 = *(v19 - 8);
  v20 = *(v338 + 64);
  v21 = __chkstk_darwin(v19);
  v322 = &v319 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v323 = &v319 - v24;
  v25 = __chkstk_darwin(v23);
  v324 = &v319 - v26;
  v27 = __chkstk_darwin(v25);
  v329 = &v319 - v28;
  v29 = __chkstk_darwin(v27);
  v337 = &v319 - v30;
  __chkstk_darwin(v29);
  v32 = &v319 - v31;
  v33 = type metadata accessor for CATOption();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v340 = &v319 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = type metadata accessor for InformationRoutingFlow.State(0);
  v36 = *(*(v339 - 8) + 64);
  __chkstk_darwin(v339);
  v342 = (&v319 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v336 = type metadata accessor for Parse.PegasusResult();
  v335 = *(v336 - 8);
  v38 = *(v335 + 8);
  __chkstk_darwin(v336);
  v334 = &v319 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Parse();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = &v319 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43);
  v48 = &v319 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = (&v319 - v50);
  v52 = __chkstk_darwin(v49);
  v54 = &v319 - v53;
  v357[3] = a7;
  v357[4] = a8;
  v55 = v52;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v357);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, v347, a7);
  v345 = a1;
  Input.parse.getter();
  v57 = *(v41 + 88);
  v347 = v55;
  v58 = v57(v54, v55);
  v343 = v54;
  if (v58 == enum case for Parse.directInvocation(_:))
  {
    v59 = v347;
    (*(v41 + 16))(v48, v54, v347);
    (*(v41 + 96))(v48, v59);
    v60 = v338;
    v61 = *(v338 + 16);
    v61(v32, v48, v19);
    v62 = Parse.DirectInvocation.identifier.getter();
    v336 = v41;
    v64 = v19;
    v321 = v48;
    if (v62 == 0xD00000000000003DLL && 0x80000000000BD690 == v63)
    {

LABEL_8:
      v94 = v60;
      v95 = v342;
      v320 = v32;
      v61(v342, v32, v64);
      swift_storeEnumTagMultiPayload();
      v96 = v346;
      outlined init with copy of OutputPublisherAsync(v346, &v355);
      v97 = v344;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      outlined init with copy of OutputPublisherAsync(v357, &v352);
      static AceService.currentAsync.getter();
      static Device.current.getter();
      type metadata accessor for CommonCATs();
      static CATOption.defaultMode.getter();
      v98 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v99 = swift_allocObject();
      v100 = [objc_opt_self() sharedPreferences];
      v101 = v64;
      v102 = type metadata accessor for PommesServerFallbackPreferences();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();
      v105 = PommesServerFallbackPreferences.init(_:)();
      v99[11] = v102;
      v99[12] = &protocol witness table for PommesServerFallbackPreferences;
      v99[8] = v105;
      outlined init with take of SiriSuggestionsBroker(v348, (v99 + 3));
      v99[2] = v98;
      type metadata accessor for ExperienceSelector();
      v106 = swift_allocObject();
      v107 = type metadata accessor for InformationRoutingFlow(0);
      v108 = *(v107 + 48);
      v109 = *(v107 + 52);
      v83 = swift_allocObject();
      v110 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
      *v110 = 0u;
      *(v110 + 16) = 0u;
      *(v110 + 32) = 0;
      outlined init with copy of InformationRoutingFlow.State(v95, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
      outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
      outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
      *(v83 + 96) = v99;
      *(v83 + 104) = v106;
      swift_beginAccess();
      outlined assign with copy of CurareInteractionStream?(v354, v110);
      swift_endAccess();
      *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
      outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
      UtteranceNormalizer.init(locale:)();
      v111 = type metadata accessor for AnalyticsComponentIdGenerator();
      v112 = *(v111 + 48);
      v113 = *(v111 + 52);
      swift_allocObject();
      AnalyticsComponentIdGenerator.init()();
      v114 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
      v115 = *(v114 + 48);
      v116 = *(v114 + 52);
      swift_allocObject();
      v117 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
      outlined destroy of Any?(v97, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      v118 = type metadata accessor for Input();
      (*(*(v118 - 8) + 8))(v345, v118);
      __swift_destroy_boxed_opaque_existential_0Tm(&v349);
      __swift_destroy_boxed_opaque_existential_0Tm(&v352);
      outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&v355);
      outlined destroy of PegasusExperience(v95, type metadata accessor for InformationRoutingFlow.State);
      v119 = *(v94 + 8);
      v119(v320, v101);
      __swift_destroy_boxed_opaque_existential_0Tm(v357);
      *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v117;
      v119(v321, v101);
LABEL_21:
      v65 = v336;
LABEL_34:
      v54 = v343;
      goto LABEL_35;
    }

    v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v93)
    {
      goto LABEL_8;
    }

    v145 = v60 + 8;
    v146 = *(v60 + 8);
    v146(v32, v64);
    v61(v337, v48, v64);
    v147 = Parse.DirectInvocation.identifier.getter();
    v335 = v146;
    if (v147 == 0xD000000000000040 && 0x80000000000BD6D0 == v148)
    {
    }

    else
    {
      v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v160 & 1) == 0)
      {
        v146(v337, v64);
        v61(v329, v48, v64);
        if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x80000000000BD650 == v188)
        {
        }

        else
        {
          v223 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v223 & 1) == 0)
          {
            v146(v329, v64);
            v61(v324, v48, v64);
            if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000045 && 0x80000000000BD720 == v247)
            {
            }

            else
            {
              v248 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v248 & 1) == 0)
              {
                v146(v324, v64);
                v61(v323, v48, v64);
                if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000041 && 0x80000000000BD770 == v271)
                {
                }

                else
                {
                  v272 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v272 & 1) == 0)
                  {
                    v146(v323, v64);
                    v295 = v322;
                    (*(v60 + 32))(v322, v48, v64);
                    v296 = v342;
                    v61(v342, v295, v64);
                    swift_storeEnumTagMultiPayload();
                    v297 = v346;
                    outlined init with copy of OutputPublisherAsync(v346, &v355);
                    v339 = v145;
                    v338 = v64;
                    v298 = v344;
                    outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    outlined init with copy of OutputPublisherAsync(v357, &v352);
                    static AceService.currentAsync.getter();
                    static Device.current.getter();
                    type metadata accessor for CommonCATs();
                    static CATOption.defaultMode.getter();
                    v299 = CATWrapper.__allocating_init(options:globals:)();
                    type metadata accessor for InformationViewFactory();
                    v300 = swift_allocObject();
                    v301 = [objc_opt_self() sharedPreferences];
                    v302 = type metadata accessor for PommesServerFallbackPreferences();
                    v303 = *(v302 + 48);
                    v304 = *(v302 + 52);
                    swift_allocObject();
                    v305 = PommesServerFallbackPreferences.init(_:)();
                    v300[11] = v302;
                    v300[12] = &protocol witness table for PommesServerFallbackPreferences;
                    v300[8] = v305;
                    outlined init with take of SiriSuggestionsBroker(v348, (v300 + 3));
                    v300[2] = v299;
                    type metadata accessor for ExperienceSelector();
                    v306 = swift_allocObject();
                    v307 = type metadata accessor for InformationRoutingFlow(0);
                    v308 = *(v307 + 48);
                    v309 = *(v307 + 52);
                    v83 = swift_allocObject();
                    v310 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                    *v310 = 0u;
                    *(v310 + 16) = 0u;
                    *(v310 + 32) = 0;
                    outlined init with copy of InformationRoutingFlow.State(v296, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                    outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
                    outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
                    *(v83 + 96) = v300;
                    *(v83 + 104) = v306;
                    swift_beginAccess();
                    outlined assign with copy of CurareInteractionStream?(v354, v310);
                    swift_endAccess();
                    *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
                    outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                    UtteranceNormalizer.init(locale:)();
                    v311 = type metadata accessor for AnalyticsComponentIdGenerator();
                    v312 = *(v311 + 48);
                    v313 = *(v311 + 52);
                    swift_allocObject();
                    AnalyticsComponentIdGenerator.init()();
                    v314 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                    v315 = *(v314 + 48);
                    v316 = *(v314 + 52);
                    swift_allocObject();
                    v317 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                    outlined destroy of Any?(v298, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(v297);
                    v318 = type metadata accessor for Input();
                    (*(*(v318 - 8) + 8))(v345, v318);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v349);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v352);
                    outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v355);
                    outlined destroy of PegasusExperience(v296, type metadata accessor for InformationRoutingFlow.State);
                    v335(v295, v338);
                    __swift_destroy_boxed_opaque_existential_0Tm(v357);
                    *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v317;
                    goto LABEL_21;
                  }
                }

                v273 = v342;
                v61(v342, v323, v64);
                swift_storeEnumTagMultiPayload();
                v274 = v346;
                outlined init with copy of OutputPublisherAsync(v346, &v355);
                v163 = v64;
                v275 = v344;
                outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                outlined init with copy of OutputPublisherAsync(v357, &v352);
                static AceService.currentAsync.getter();
                static Device.current.getter();
                type metadata accessor for CommonCATs();
                static CATOption.defaultMode.getter();
                v276 = CATWrapper.__allocating_init(options:globals:)();
                type metadata accessor for InformationViewFactory();
                v277 = swift_allocObject();
                v278 = [objc_opt_self() sharedPreferences];
                v279 = type metadata accessor for PommesServerFallbackPreferences();
                v280 = *(v279 + 48);
                v281 = *(v279 + 52);
                swift_allocObject();
                v282 = PommesServerFallbackPreferences.init(_:)();
                v277[11] = v279;
                v277[12] = &protocol witness table for PommesServerFallbackPreferences;
                v277[8] = v282;
                outlined init with take of SiriSuggestionsBroker(v348, (v277 + 3));
                v277[2] = v276;
                type metadata accessor for ExperienceSelector();
                v283 = swift_allocObject();
                v284 = type metadata accessor for InformationRoutingFlow(0);
                v285 = *(v284 + 48);
                v286 = *(v284 + 52);
                v83 = swift_allocObject();
                v287 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                *v287 = 0u;
                *(v287 + 16) = 0u;
                *(v287 + 32) = 0;
                outlined init with copy of InformationRoutingFlow.State(v273, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
                outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
                *(v83 + 96) = v277;
                *(v83 + 104) = v283;
                swift_beginAccess();
                outlined assign with copy of CurareInteractionStream?(v354, v287);
                swift_endAccess();
                *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
                outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                UtteranceNormalizer.init(locale:)();
                v288 = type metadata accessor for AnalyticsComponentIdGenerator();
                v289 = *(v288 + 48);
                v290 = *(v288 + 52);
                swift_allocObject();
                AnalyticsComponentIdGenerator.init()();
                v291 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                v292 = *(v291 + 48);
                v293 = *(v291 + 52);
                swift_allocObject();
                v183 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                outlined destroy of Any?(v275, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(v274);
                v294 = type metadata accessor for Input();
                (*(*(v294 - 8) + 8))(v345, v294);
                __swift_destroy_boxed_opaque_existential_0Tm(&v349);
                __swift_destroy_boxed_opaque_existential_0Tm(&v352);
                outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(&v355);
                outlined destroy of PegasusExperience(v273, type metadata accessor for InformationRoutingFlow.State);
                v185 = &v350;
                goto LABEL_20;
              }
            }

            v249 = v342;
            v61(v342, v324, v64);
            swift_storeEnumTagMultiPayload();
            v250 = v346;
            outlined init with copy of OutputPublisherAsync(v346, &v355);
            v163 = v64;
            v251 = v344;
            outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            outlined init with copy of OutputPublisherAsync(v357, &v352);
            static AceService.currentAsync.getter();
            static Device.current.getter();
            type metadata accessor for CommonCATs();
            static CATOption.defaultMode.getter();
            v252 = CATWrapper.__allocating_init(options:globals:)();
            type metadata accessor for InformationViewFactory();
            v253 = swift_allocObject();
            v254 = [objc_opt_self() sharedPreferences];
            v255 = type metadata accessor for PommesServerFallbackPreferences();
            v256 = *(v255 + 48);
            v257 = *(v255 + 52);
            swift_allocObject();
            v258 = PommesServerFallbackPreferences.init(_:)();
            v253[11] = v255;
            v253[12] = &protocol witness table for PommesServerFallbackPreferences;
            v253[8] = v258;
            outlined init with take of SiriSuggestionsBroker(v348, (v253 + 3));
            v253[2] = v252;
            type metadata accessor for ExperienceSelector();
            v259 = swift_allocObject();
            v260 = type metadata accessor for InformationRoutingFlow(0);
            v261 = *(v260 + 48);
            v262 = *(v260 + 52);
            v83 = swift_allocObject();
            v263 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
            *v263 = 0u;
            *(v263 + 16) = 0u;
            *(v263 + 32) = 0;
            outlined init with copy of InformationRoutingFlow.State(v249, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
            outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
            outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
            *(v83 + 96) = v253;
            *(v83 + 104) = v259;
            swift_beginAccess();
            outlined assign with copy of CurareInteractionStream?(v354, v263);
            swift_endAccess();
            *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
            outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
            UtteranceNormalizer.init(locale:)();
            v264 = type metadata accessor for AnalyticsComponentIdGenerator();
            v265 = *(v264 + 48);
            v266 = *(v264 + 52);
            swift_allocObject();
            AnalyticsComponentIdGenerator.init()();
            v267 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
            v268 = *(v267 + 48);
            v269 = *(v267 + 52);
            swift_allocObject();
            v183 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
            outlined destroy of Any?(v251, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(v250);
            v270 = type metadata accessor for Input();
            (*(*(v270 - 8) + 8))(v345, v270);
            __swift_destroy_boxed_opaque_existential_0Tm(&v349);
            __swift_destroy_boxed_opaque_existential_0Tm(&v352);
            outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(&v355);
            outlined destroy of PegasusExperience(v249, type metadata accessor for InformationRoutingFlow.State);
            v185 = &v351;
LABEL_20:
            v186 = v335;
            v335(*(v185 - 32), v163);
            __swift_destroy_boxed_opaque_existential_0Tm(v357);
            *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v183;
            v186(v321, v163);
            goto LABEL_21;
          }
        }

        v224 = v342;
        v61(v342, v329, v64);
        swift_storeEnumTagMultiPayload();
        v225 = v346;
        outlined init with copy of OutputPublisherAsync(v346, &v355);
        v163 = v64;
        v226 = v344;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        outlined init with copy of OutputPublisherAsync(v357, &v352);
        static AceService.currentAsync.getter();
        static Device.current.getter();
        type metadata accessor for CommonCATs();
        static CATOption.defaultMode.getter();
        v227 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for InformationViewFactory();
        v228 = swift_allocObject();
        v229 = [objc_opt_self() sharedPreferences];
        v230 = type metadata accessor for PommesServerFallbackPreferences();
        v231 = *(v230 + 48);
        v232 = *(v230 + 52);
        swift_allocObject();
        v233 = PommesServerFallbackPreferences.init(_:)();
        v228[11] = v230;
        v228[12] = &protocol witness table for PommesServerFallbackPreferences;
        v228[8] = v233;
        outlined init with take of SiriSuggestionsBroker(v348, (v228 + 3));
        v228[2] = v227;
        type metadata accessor for ExperienceSelector();
        v234 = swift_allocObject();
        v235 = type metadata accessor for InformationRoutingFlow(0);
        v236 = *(v235 + 48);
        v237 = *(v235 + 52);
        v83 = swift_allocObject();
        v238 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
        *v238 = 0u;
        *(v238 + 16) = 0u;
        *(v238 + 32) = 0;
        outlined init with copy of InformationRoutingFlow.State(v224, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
        outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
        outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
        *(v83 + 96) = v228;
        *(v83 + 104) = v234;
        swift_beginAccess();
        outlined assign with copy of CurareInteractionStream?(v354, v238);
        swift_endAccess();
        *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
        outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
        UtteranceNormalizer.init(locale:)();
        v239 = type metadata accessor for AnalyticsComponentIdGenerator();
        v240 = *(v239 + 48);
        v241 = *(v239 + 52);
        swift_allocObject();
        AnalyticsComponentIdGenerator.init()();
        v242 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
        v243 = *(v242 + 48);
        v244 = *(v242 + 52);
        swift_allocObject();
        v183 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
        outlined destroy of Any?(v226, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v225);
        v245 = type metadata accessor for Input();
        (*(*(v245 - 8) + 8))(v345, v245);
        __swift_destroy_boxed_opaque_existential_0Tm(&v349);
        __swift_destroy_boxed_opaque_existential_0Tm(&v352);
        outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(&v355);
        outlined destroy of PegasusExperience(v224, type metadata accessor for InformationRoutingFlow.State);
        v185 = &v353;
        goto LABEL_20;
      }
    }

    v161 = v342;
    v61(v342, v337, v64);
    swift_storeEnumTagMultiPayload();
    v162 = v346;
    outlined init with copy of OutputPublisherAsync(v346, &v355);
    v163 = v64;
    v164 = v344;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v357, &v352);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs();
    static CATOption.defaultMode.getter();
    v165 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v166 = swift_allocObject();
    v167 = [objc_opt_self() sharedPreferences];
    v168 = type metadata accessor for PommesServerFallbackPreferences();
    v169 = *(v168 + 48);
    v170 = *(v168 + 52);
    swift_allocObject();
    v171 = PommesServerFallbackPreferences.init(_:)();
    v166[11] = v168;
    v166[12] = &protocol witness table for PommesServerFallbackPreferences;
    v166[8] = v171;
    outlined init with take of SiriSuggestionsBroker(v348, (v166 + 3));
    v166[2] = v165;
    type metadata accessor for ExperienceSelector();
    v172 = swift_allocObject();
    v173 = type metadata accessor for InformationRoutingFlow(0);
    v174 = *(v173 + 48);
    v175 = *(v173 + 52);
    v83 = swift_allocObject();
    v176 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v176 = 0u;
    *(v176 + 16) = 0u;
    *(v176 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v161, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
    outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
    *(v83 + 96) = v166;
    *(v83 + 104) = v172;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v354, v176);
    swift_endAccess();
    *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
    outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    v177 = type metadata accessor for AnalyticsComponentIdGenerator();
    v178 = *(v177 + 48);
    v179 = *(v177 + 52);
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    v180 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    v181 = *(v180 + 48);
    v182 = *(v180 + 52);
    swift_allocObject();
    v183 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v164, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v162);
    v184 = type metadata accessor for Input();
    (*(*(v184 - 8) + 8))(v345, v184);
    __swift_destroy_boxed_opaque_existential_0Tm(&v349);
    __swift_destroy_boxed_opaque_existential_0Tm(&v352);
    outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v355);
    outlined destroy of PegasusExperience(v161, type metadata accessor for InformationRoutingFlow.State);
    v185 = &v356;
    goto LABEL_20;
  }

  if (v58 == enum case for Parse.pegasusResults(_:))
  {
    v65 = v41;
    v66 = v347;
    (*(v41 + 16))(v51, v54, v347);
    (*(v41 + 96))(v51, v66);
    v67 = v335;
    v68 = v334;
    v69 = v336;
    (*(v335 + 4))(v334, v51, v336);
    v70 = v342;
    (*(v67 + 2))(v342, v68, v69);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of OutputPublisherAsync(v346, &v355);
    v71 = v344;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v357, &v352);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs();
    static CATOption.defaultMode.getter();
    v72 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v73 = swift_allocObject();
    v74 = [objc_opt_self() sharedPreferences];
    v75 = type metadata accessor for PommesServerFallbackPreferences();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    v78 = PommesServerFallbackPreferences.init(_:)();
    v73[11] = v75;
    v73[12] = &protocol witness table for PommesServerFallbackPreferences;
    v73[8] = v78;
    outlined init with take of SiriSuggestionsBroker(v348, (v73 + 3));
    v73[2] = v72;
    type metadata accessor for ExperienceSelector();
    v79 = swift_allocObject();
    v80 = type metadata accessor for InformationRoutingFlow(0);
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    v83 = swift_allocObject();
    v84 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v84 = 0u;
    *(v84 + 16) = 0u;
    *(v84 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v70, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
    outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
    *(v83 + 96) = v73;
    *(v83 + 104) = v79;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v354, v84);
    swift_endAccess();
    *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
    outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    v85 = type metadata accessor for AnalyticsComponentIdGenerator();
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    v88 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    swift_allocObject();
    v91 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v71, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v346);
    v92 = type metadata accessor for Input();
    (*(*(v92 - 8) + 8))(v345, v92);
    __swift_destroy_boxed_opaque_existential_0Tm(&v349);
    __swift_destroy_boxed_opaque_existential_0Tm(&v352);
    outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v355);
    outlined destroy of PegasusExperience(v70, type metadata accessor for InformationRoutingFlow.State);
    (*(v67 + 1))(v68, v69);
LABEL_33:
    __swift_destroy_boxed_opaque_existential_0Tm(v357);
    *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v91;
    goto LABEL_34;
  }

  if (v58 == enum case for Parse.pommesResponse(_:))
  {
    v65 = v41;
    v120 = v347;
    (*(v41 + 16))(v51, v54, v347);
    (*(v41 + 96))(v51, v120);
    v121 = *v51;
    v122 = v342;
    *v342 = *v51;
    *(v122 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    v123 = v346;
    outlined init with copy of OutputPublisherAsync(v346, &v355);
    v124 = v344;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v357, &v352);
    v125 = v121;
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs();
    static CATOption.defaultMode.getter();
    v126 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v127 = swift_allocObject();
    v128 = [objc_opt_self() sharedPreferences];
    v129 = type metadata accessor for PommesServerFallbackPreferences();
    v130 = *(v129 + 48);
    v131 = *(v129 + 52);
    swift_allocObject();
    v132 = PommesServerFallbackPreferences.init(_:)();
    v127[11] = v129;
    v127[12] = &protocol witness table for PommesServerFallbackPreferences;
    v127[8] = v132;
    outlined init with take of SiriSuggestionsBroker(v348, (v127 + 3));
    v127[2] = v126;
    type metadata accessor for ExperienceSelector();
    v133 = swift_allocObject();
    v134 = type metadata accessor for InformationRoutingFlow(0);
    v135 = *(v134 + 48);
    v136 = *(v134 + 52);
    v83 = swift_allocObject();
    v137 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v137 = 0u;
    *(v137 + 16) = 0u;
    *(v137 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v122, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
    outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
    *(v83 + 96) = v127;
    *(v83 + 104) = v133;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v354, v137);
    swift_endAccess();
    *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
    outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    v138 = type metadata accessor for AnalyticsComponentIdGenerator();
    v139 = *(v138 + 48);
    v140 = *(v138 + 52);
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    v141 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    v142 = *(v141 + 48);
    v143 = *(v141 + 52);
    swift_allocObject();
    v91 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();

    outlined destroy of Any?(v124, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v123);
    v144 = type metadata accessor for Input();
    (*(*(v144 - 8) + 8))(v345, v144);
    __swift_destroy_boxed_opaque_existential_0Tm(&v349);
    __swift_destroy_boxed_opaque_existential_0Tm(&v352);
    outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v355);
    outlined destroy of PegasusExperience(v122, type metadata accessor for InformationRoutingFlow.State);
    goto LABEL_33;
  }

  if (v58 == enum case for Parse.ifClientAction(_:))
  {
    v149 = v54;
    v150 = v347;
    (*(v41 + 16))(v45, v149, v347);
    (*(v41 + 96))(v45, v150);
    v151 = v330;
    v152 = v332;
    v153 = v333;
    (*(v330 + 32))(v332, v45, v333);
    v154 = v326;
    IFClientActionParse.clientAction.getter();
    v155 = MessagePayload.ClientAction.toolId.getter();
    v157 = v156;
    v158 = v331 + 8;
    v338 = *(v331 + 8);
    (v338)(v154, v328);
    if (v155 == 0x657461676976616ELL && v157 == 0xEB000000006F745FLL)
    {

      v159 = v327;
    }

    else
    {
      v189 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v159 = v327;
      if ((v189 & 1) == 0)
      {
        outlined destroy of Any?(v344, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v346);
        v246 = type metadata accessor for Input();
        (*(*(v246 - 8) + 8))(v345, v246);
        (*(v151 + 8))(v152, v153);
        __swift_destroy_boxed_opaque_existential_0Tm(v357);
        v83 = 0;
        v65 = v41;
        goto LABEL_34;
      }
    }

    v331 = v158;
    v65 = v41;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v190 = type metadata accessor for Logger();
    __swift_project_value_buffer(v190, static Logger.information);
    (*(v151 + 16))(v159, v152, v153);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v355 = v194;
      *v193 = 136315138;
      v195 = v325;
      IFClientActionParse.clientAction.getter();
      v196 = MessagePayload.ClientAction.toolId.getter();
      v198 = v197;
      (v338)(v195, v328);
      (*(v151 + 8))(v159, v333);
      v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v198, &v355);

      *(v193 + 4) = v199;
      _os_log_impl(&dword_0, v191, v192, "%s shim tool found", v193, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v194);
    }

    else
    {

      (*(v151 + 8))(v159, v153);
    }

    v200 = v342;
    IFClientActionParse.clientAction.getter();
    swift_storeEnumTagMultiPayload();
    v201 = v346;
    outlined init with copy of OutputPublisherAsync(v346, &v355);
    v202 = v344;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v344, v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v357, &v352);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs();
    static CATOption.defaultMode.getter();
    v203 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v204 = swift_allocObject();
    v205 = [objc_opt_self() sharedPreferences];
    v206 = type metadata accessor for PommesServerFallbackPreferences();
    v207 = *(v206 + 48);
    v208 = *(v206 + 52);
    swift_allocObject();
    v209 = PommesServerFallbackPreferences.init(_:)();
    v204[11] = v206;
    v204[12] = &protocol witness table for PommesServerFallbackPreferences;
    v204[8] = v209;
    outlined init with take of SiriSuggestionsBroker(v348, (v204 + 3));
    v204[2] = v203;
    type metadata accessor for ExperienceSelector();
    v210 = swift_allocObject();
    v211 = type metadata accessor for InformationRoutingFlow(0);
    v212 = *(v211 + 48);
    v213 = *(v211 + 52);
    v83 = swift_allocObject();
    v214 = v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v214 = 0u;
    *(v214 + 16) = 0u;
    *(v214 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v200, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v349, v83 + 56);
    outlined init with copy of OutputPublisherAsync(&v355, v83 + 16);
    *(v83 + 96) = v204;
    *(v83 + 104) = v210;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v354, v214);
    swift_endAccess();
    *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v341 & 1;
    outlined init with copy of OutputPublisherAsync(&v352, v83 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    v215 = type metadata accessor for AnalyticsComponentIdGenerator();
    v216 = *(v215 + 48);
    v217 = *(v215 + 52);
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    v218 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    v219 = *(v218 + 48);
    v220 = *(v218 + 52);
    swift_allocObject();
    v91 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v202, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v201);
    v221 = type metadata accessor for Input();
    (*(*(v221 - 8) + 8))(v345, v221);
    __swift_destroy_boxed_opaque_existential_0Tm(&v349);
    __swift_destroy_boxed_opaque_existential_0Tm(&v352);
    outlined destroy of Any?(v354, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v355);
    outlined destroy of PegasusExperience(v200, type metadata accessor for InformationRoutingFlow.State);
    (*(v330 + 8))(v332, v333);
    goto LABEL_33;
  }

  outlined destroy of Any?(v344, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v346);
  v187 = type metadata accessor for Input();
  (*(*(v187 - 8) + 8))(v345, v187);
  __swift_destroy_boxed_opaque_existential_0Tm(v357);
  v83 = 0;
  v65 = v41;
LABEL_35:
  (*(v65 + 8))(v54, v347);
  return v83;
}

uint64_t specialized InformationRoutingFlow.__allocating_init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CATOption();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for InformationRoutingFlow.State(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46[3] = a5;
  v46[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v18 = type metadata accessor for Parse.PegasusResult();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, a1, v18);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of OutputPublisherAsync(v46, v45);
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v21 = swift_allocObject();
  v22 = [objc_opt_self() sharedPreferences];
  v23 = type metadata accessor for PommesServerFallbackPreferences();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = PommesServerFallbackPreferences.init(_:)();
  v21[11] = v23;
  v21[12] = &protocol witness table for PommesServerFallbackPreferences;
  v21[8] = v26;
  outlined init with take of SiriSuggestionsBroker(v42, (v21 + 3));
  v21[2] = v20;
  type metadata accessor for ExperienceSelector();
  v27 = swift_allocObject();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  v28 = type metadata accessor for InformationRoutingFlow(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = v31 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  outlined init with copy of InformationRoutingFlow.State(v16, v31 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined init with copy of OutputPublisherAsync(v44, v31 + 56);
  outlined init with copy of OutputPublisherAsync(v43, v31 + 16);
  *(v31 + 96) = v21;
  *(v31 + 104) = v27;
  swift_beginAccess();
  outlined assign with copy of CurareInteractionStream?(v42, v32);
  swift_endAccess();
  *(v31 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = a2;
  outlined init with copy of OutputPublisherAsync(v45, v31 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
  UtteranceNormalizer.init(locale:)();
  v33 = type metadata accessor for AnalyticsComponentIdGenerator();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  AnalyticsComponentIdGenerator.init()();
  v36 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
  (*(v19 + 8))(a1, v18);
  outlined destroy of Any?(v42, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  outlined destroy of PegasusExperience(v16, type metadata accessor for InformationRoutingFlow.State);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  *(v31 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v39;
  return v31;
}

unint64_t specialized InformationRoutingFlow.Invocations.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InformationRoutingFlow.Invocations.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined assign with take of InformationRoutingFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InformationRoutingFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1A554()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 32);

  v11 = type metadata accessor for GenAIPartner();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = type metadata accessor for PommesCandidateId();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v7, 1, v13))
  {
    (*(v14 + 8))(v0 + v7, v13);
  }

  v15 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + v15 + 8);

  return _swift_deallocObject(v0, v15 + 16, v2 | v6 | 7);
}

uint64_t partial apply for closure #6 in InformationRoutingFlow.execute()(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #6 in InformationRoutingFlow.execute()(a1, v8, v9, v10, v1 + v4, v1 + v7, v12, v13);
}

uint64_t partial apply for specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)()
{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A918()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t specialized InformationRoutingFlow.needsPreciseLocation(with:)()
{
  v0 = type metadata accessor for PommesRenderOptions.PromptType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = dispatch thunk of PommesResponse.experiences.getter();
  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; v5 = v21)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = v5 + 32;
    v30 = enum case for PommesRenderOptions.PromptType.sharePreciseDeviceLocation(_:);
    v29 = (v1 + 104);
    v27 = v5;
    v28 = (v1 + 8);
    v25 = v5 & 0xC000000000000001;
    v26 = i;
    v23 = v5 + 32;
    v24 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_16;
        }

        v5 = *(v10 + 8 * v7);
      }

      v11 = v5;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v13 = dispatch thunk of Experience.renderOptions.getter();
      v14 = PommesRenderOptions.promptTypes.getter();

      (*v29)(v4, v30, v0);
      v15 = 0;
      v16 = *(v14 + 16);
      while (v16 != v15)
      {
        v17 = v15 + 1;
        v18 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v15;
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType, &type metadata accessor for PommesRenderOptions.PromptType);
        v19 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = v17;
        if (v19)
        {

          (*v28)(v4, v0);
          v20 = 1;
          goto LABEL_19;
        }
      }

      v5 = (*v28)(v4, v0);
      v8 = v25;
      v10 = v23;
      v9 = v24;
      if (v7 == v26)
      {
        v20 = 0;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v21 = v5;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  v20 = 0;
LABEL_19:

  return v20;
}

uint64_t outlined init with take of GenAIPartner?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of InformationRoutingFlow.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PegasusExperience(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized InformationRoutingFlow.knowledgeFallbackConfirmationCompletion(exitValue:yesStateFn:noState:disableConfirmRequestsStateFn:isEnablement:pommesCandidateId:sessionRequestId:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v106 = a8;
  v111 = a6;
  v101 = a5;
  v99 = a3;
  v97 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v98 = &v94 - v16;
  v104 = type metadata accessor for InformationRoutingFlow.State(0);
  v17 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v110 = (&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v109 = &v94 - v21;
  v22 = type metadata accessor for KnowledgeConfirmationResponseProvider(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v103 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMR);
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v108 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v94 - v30;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v32 = a9;
  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, static Logger.information);
  v35 = v26[2];
  v107 = a1;
  v105 = v35;
  v35(v31, a1, v25);
  v102 = v34;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  v38 = os_log_type_enabled(v36, v37);
  v96 = a4;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v100 = a7;
    v40 = v39;
    v41 = swift_slowAlloc();
    v95 = a9;
    v42 = v41;
    v112[0] = v41;
    *v40 = 136315138;
    lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptResult<KnowledgeConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMR);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v94 = v26;
    v46 = v26[1];
    v46(v31, v25);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v112);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_0, v36, v37, "knowledge fallback: knowledgeFallbackConfirmationCompletion %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    v32 = v95;

    a7 = v100;

    v48 = v94;
  }

  else
  {

    v49 = v26;
    v46 = v26[1];
    v46(v31, v25);
    v48 = v49;
  }

  v50 = v108;
  v105(v108, v107, v25);
  v51 = (v48[11])(v50, v25);
  v52 = v109;
  if (v51 == enum case for PromptResult.answered<A>(_:))
  {
    (v48[12])(v50, v25);
    v53 = v103;
    outlined init with take of KnowledgeFallbackHelper(v50, v103, type metadata accessor for KnowledgeConfirmationResponseProvider);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v53, v52, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    v54 = type metadata accessor for KnowledgeConfirmationResponse(0);
    if ((*(*(v54 - 8) + 48))(v52, 1, v54) == 1)
    {
      goto LABEL_17;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
    v56 = (*(*(v55 - 8) + 48))(v52, 2, v55);
    if (v56)
    {
      if (v56 == 1)
      {
        v57 = v110;
        outlined init with copy of InformationRoutingFlow.State(v97, v110, type metadata accessor for InformationRoutingFlow.State);
        v58 = (*(*v32 + 200))(v57);
        if (v101)
        {
          (*(*v32 + 240))(v112, v58);
          v59 = v113;
          v60 = v114;
          __swift_project_boxed_opaque_existential_1(v112, v113);
          (*(v60 + 24))(v59, v60);
        }

        else
        {
          (*(*v32 + 240))(v112, v58);
          v87 = v113;
          v88 = v114;
          __swift_project_boxed_opaque_existential_1(v112, v113);
          (*(v88 + 32))(v87, v88);
        }

        outlined destroy of PegasusExperience(v53, type metadata accessor for KnowledgeConfirmationResponseProvider);
        __swift_destroy_boxed_opaque_existential_0Tm(v112);
        goto LABEL_36;
      }

LABEL_17:
      (*(*v32 + 240))(v112);
      v65 = v113;
      v66 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      (*(v66 + 32))(v65, v66);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      v67 = v110;
      swift_storeEnumTagMultiPayload();
      (*(*v32 + 200))(v67);
      outlined destroy of PegasusExperience(v53, type metadata accessor for KnowledgeConfirmationResponseProvider);
      goto LABEL_36;
    }

    v100 = a7;
    v75 = *(v52 + *(v55 + 48));
    v76 = v98;
    v77 = outlined init with take of GenAIPartner?(v52, v98, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    if ((v101 & 1) == 0)
    {
      (*(*v32 + 240))(v112, v77);
      v78 = v113;
      v79 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      (*(v79 + 40))(v78, v79);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
    }

    if (v99 && v75 && (v101 & 1) == 0)
    {
      v80 = *(*v32 + 240);

      v80(v112, v81);
      v82 = v113;
      v83 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      LOBYTE(v82) = (*(v83 + 80))(v82, v83);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      if (v82)
      {
        v84 = v110;
        v85 = v99;
        v99(v76);
        (*(*v32 + 200))(v84);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GenAIPartner?) -> (@out InformationRoutingFlow.State))?(v85);
        v86 = v76;
LABEL_35:
        outlined destroy of Any?(v86, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        outlined destroy of PegasusExperience(v53, type metadata accessor for KnowledgeConfirmationResponseProvider);
        goto LABEL_36;
      }

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GenAIPartner?) -> (@out InformationRoutingFlow.State))?(v99);
    }

    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMR) + 48);
    v90 = v110;
    *v110 = a10;
    v90[1] = a11;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v76, v90 + v89, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    swift_storeEnumTagMultiPayload();
    v91 = *(*v32 + 200);

    v91(v90);
    v86 = v76;
    goto LABEL_35;
  }

  if (v51 == enum case for PromptResult.error<A>(_:))
  {
    v46(v50, v25);
LABEL_14:
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Knowledge fallback confirmation prompt was unanswered or errored out", v63, 2u);
    }

    v64 = v110;
    swift_storeEnumTagMultiPayload();
    (*(*v32 + 200))(v64);
    goto LABEL_36;
  }

  if (v51 == enum case for PromptResult.cancelled<A>(_:))
  {
    (*(*v32 + 240))(v112);
    v68 = v113;
    v69 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    (*(v69 + 32))(v68, v69);
    __swift_destroy_boxed_opaque_existential_0Tm(v112);
    v70 = v110;
    swift_storeEnumTagMultiPayload();
    (*(*v32 + 200))(v70);
    goto LABEL_36;
  }

  if (v51 == enum case for PromptResult.unanswered<A>(_:))
  {
    goto LABEL_14;
  }

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "Knowledge fallback confirmation prompt got unhandled response type", v73, 2u);
  }

  v74 = v110;
  swift_storeEnumTagMultiPayload();
  (*(*v32 + 200))(v74);
  v46(v50, v25);
LABEL_36:
  v92 = *(v32 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.executionRequestId.getter();

  dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackConfirmationOutcome(requestId:pommesCandidateId:sessionRequestId:outcome:)();
}

uint64_t specialized InformationRoutingEntryPoint.flowFor(input:)(uint64_t a1)
{
  v2 = type metadata accessor for KnowledgeFallbackHelper();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = type metadata accessor for Input();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13, a1);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  v15 = [objc_opt_self() isSiriLocationServicesPromptingEnabled];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v16 = v3[7];
  v17 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v17 - 8) + 56))(&v9[v16], 1, 1, v17);
  *&v9[v3[8]] = xmmword_B86A0;
  *&v9[v3[9]] = xmmword_B86A0;
  outlined init with copy of InformationRoutingFlow.State(v9, v7, type metadata accessor for KnowledgeFallbackHelper);
  v18 = _s21InformationFlowPlugin0a7RoutingB0C5input15outputPublisher17interactionStream38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperACSg0k3KitB05InputV_AJ06OutputG5Async_p0kA6Search017CurareInteractionI0_pSgSbAA09KnowledgeqR9Providing_ptcfCTf4nnnnen_nAA0zqR0V_Tt4g5(v13, v22, v21, v15, v7);
  outlined destroy of PegasusExperience(v9, type metadata accessor for KnowledgeFallbackHelper);
  if (!v18)
  {
    return 0;
  }

  v22[0] = v18;
  type metadata accessor for InformationRoutingFlow(0);
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow);
  v19 = Flow.eraseToAnyFlow()();

  return v19;
}

unint64_t lazy protocol witness table accessor for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations()
{
  result = lazy protocol witness table cache variable for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations;
  if (!lazy protocol witness table cache variable for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations);
  }

  return result;
}

uint64_t type metadata completion function for InformationRoutingFlow()
{
  result = type metadata accessor for InformationRoutingFlow.State(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for UtteranceNormalizer();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata completion function for InformationRoutingFlow.State()
{
  type metadata accessor for (PommesResponse, GuardFlowResult?)(319, &lazy cache variable for type metadata for (PommesResponse, GuardFlowResult?), &_s11SiriKitFlow05GuardC6ResultOSgMd, &_s11SiriKitFlow05GuardC6ResultOSgMR);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Parse.PegasusResult();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (PommesResponse, GuardFlowResult?)(319, &lazy cache variable for type metadata for (PommesResponse, IdentifiedUser?), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Parse.DirectInvocation();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (query: String, genAIPartner: GenAIPartner?)();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Flow();
            if (v5 <= 0x3F)
            {
              type metadata accessor for (String, RenderPegasusFlow?)();
              if (v6 <= 0x3F)
              {
                type metadata accessor for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?)(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for MessagePayload.ClientAction();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Error?();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (PommesResponse, GuardFlowResult?)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for PommesResponse();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (query: String, genAIPartner: GenAIPartner?)()
{
  if (!lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?));
    }
  }
}

unint64_t type metadata accessor for Flow()
{
  result = lazy cache variable for type metadata for Flow;
  if (!lazy cache variable for type metadata for Flow)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Flow);
  }

  return result;
}

void type metadata accessor for (String, RenderPegasusFlow?)()
{
  if (!lazy cache variable for type metadata for (String, RenderPegasusFlow?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21InformationFlowPlugin013RenderPegasusB0CSgMd, &_s21InformationFlowPlugin013RenderPegasusB0CSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, RenderPegasusFlow?));
    }
  }
}

void type metadata accessor for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?))
  {
    __chkstk_darwin(a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?));
    }
  }
}

uint64_t getEnumTagSinglePayload for InformationRoutingFlow.Invocations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InformationRoutingFlow.Invocations(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy()
{
  result = lazy protocol witness table cache variable for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy;
  if (!lazy protocol witness table cache variable for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy);
  }

  return result;
}

uint64_t sub_1C6D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C744()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #2 in InformationRoutingFlow.renderPommesFlow(_:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in InformationRoutingFlow.renderPommesFlow(_:)(a1, v5, v4);
}

uint64_t sub_1C828()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1C88C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t outlined init with take of KnowledgeFallbackHelper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GenAIPartner?) -> (@out InformationRoutingFlow.State))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1CA00@<X0>(uint64_t *a1@<X8>)
{
  result = AjaxMetadata.AjaxQuery.ExplicitQuery.rewrittenUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t partial apply for closure #1 in closure #4 in InformationRoutingFlow.execute()(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in closure #4 in InformationRoutingFlow.execute()(a1);
}

uint64_t sub_1CA6C@<X0>(uint64_t *a1@<X8>)
{
  result = AjaxMetadata.AjaxQuery.ImplicitQuery.rewrittenUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t outlined assign with copy of CurareInteractionStream?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionsEntryPoint.__allocating_init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin24SuggestionsIntentDonator_pGMd, &_ss23_ContiguousArrayStorageCy21InformationFlowPlugin24SuggestionsIntentDonator_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_B95F0;
  v2 = type metadata accessor for CoreSuggestionsIntentDonator();
  v3 = swift_allocObject();
  *(v3 + 16) = closure #1 in SuggestionsEntryPoint.init();
  *(v3 + 24) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = &protocol witness table for CoreSuggestionsIntentDonator;
  *(v1 + 32) = v3;
  v4 = type metadata accessor for CarPlaySuggestionsIntentDonator();
  v5 = swift_allocObject();
  *(v5 + 16) = closure #1 in SuggestionsEntryPoint.init();
  *(v5 + 24) = 0;
  *(v1 + 96) = v4;
  *(v1 + 104) = &protocol witness table for CarPlaySuggestionsIntentDonator;
  *(v1 + 72) = v5;
  v12[3] = &type metadata for UnionSuggestionsIntentDonator;
  v12[4] = &protocol witness table for UnionSuggestionsIntentDonator;
  v12[0] = v1;
  outlined init with copy of OutputPublisherAsync(v12, v11);
  v10[3] = type metadata accessor for DefaultBiomeDonator();
  v10[4] = &protocol witness table for DefaultBiomeDonator;
  v10[0] = swift_allocObject();
  outlined init with copy of OutputPublisherAsync(v11, v9);
  outlined init with copy of OutputPublisherAsync(v10, v8);
  v6 = (*(v0 + 112))(v9, v8, closure #1 in SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:localeProvider:), 0, closure #2 in SuggestionsEntryPoint.init(), 0);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v6;
}

uint64_t closure #2 in SuggestionsEntryPoint.init()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 languageCode];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t DefaultBiomeDonator.donate(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  v9 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DefaultBiomeDonator.donate(_:), v8);
}

uint64_t closure #1 in DefaultBiomeDonator.donate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in DefaultBiomeDonator.donate(_:), 0, 0);
}

uint64_t closure #1 in DefaultBiomeDonator.donate(_:)()
{
  v1 = specialized DefaultBiomeDonator.removeUtterances(_:)(*(v0 + 24));
  v2 = [objc_allocWithZone(INInteraction) initWithIntent:v1 response:0];

  v3 = objc_opt_self();
  *(v0 + 16) = 0;
  v4 = [v3 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 16];
  v5 = *(v0 + 16);
  if (v4)
  {
    v44 = v2;
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v11;

    v12 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v13 = [v12 Intent];
    swift_unknownObjectRelease();
    v43 = [v13 source];

    Date.init()();
    v14 = type metadata accessor for Date();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v6, 0, 1, v14);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v8 + 8))(v7, v9);
    v16 = [v10 _className];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    v17 = [*(v0 + 24) verb];
    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();

      v17 = v18;
    }

    v42 = v17;
    v19 = *(v0 + 56);
    type metadata accessor for NSNumber();
    outlined copy of Data._Representation(v46, v45);
    v20.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    isa = 0;
    if ((*(v15 + 48))(v19, 1, v14) != 1)
    {
      v22 = *(v0 + 56);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v15 + 8))(v22, v14);
    }

    v23 = objc_allocWithZone(BMAppIntent);
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();

    v26 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v46, v45);
    v27 = String._bridgeToObjectiveC()();
    LODWORD(v41) = 1;
    LODWORD(v40) = 4;
    v28 = [v23 initWithAbsoluteTimestamp:isa bundleID:v24 sourceID:v25 intentClass:v16 intentVerb:v42 intentType:2 handlingStatus:v40 interaction:v26 itemID:v27 donatedBySiri:v20.super.super.isa interactionDirection:v41 groupIdentifier:0];

    [v43 sendEvent:v28];
    outlined consume of Data._Representation(v46, v45);
  }

  else
  {
    v29 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.information);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&dword_0, v31, v32, "Unable to donate to biome: %@", v33, 0xCu);
      outlined destroy of Any?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }

  v37 = *(v0 + 48);
  v36 = *(v0 + 56);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of Any?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D8C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in DefaultBiomeDonator.donate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in DefaultBiomeDonator.donate(_:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DC94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

id specialized DefaultBiomeDonator.removeUtterances(_:)(void *a1)
{
  if (!INInformationUseCaseIntent.supportsRelatedQuestions()())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.information);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Stripping utterance from intent", v4, 2u);
    }

    [a1 setExampleUtterance:0];
  }

  return a1;
}