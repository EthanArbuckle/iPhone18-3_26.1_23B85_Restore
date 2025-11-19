uint64_t protocol witness for static AppResolutionUnsuccessfulResponseProducing.makeAppNotFoundOnDeviceResponse(appNameSearchTerm:) in conformance AppResolutionStrategyHelpers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to static AppResolutionStrategyHelpers.makeAppNotFoundOnDeviceResponse(appNameSearchTerm:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return static AppResolutionStrategyHelpers.makeAppNotFoundOnDeviceResponse(appNameSearchTerm:)(a1, a2, a3);
}

uint64_t RenderPegasusFlow.__allocating_init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v33 = a7;
  v34 = a8;
  v31 = a1;
  v32 = a3;
  v30 = a11;
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  v19 = swift_allocObject();
  v20 = a9[3];
  v21 = a9[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a9, v20);
  v23 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = specialized RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(v31, a2, v32, a4, a5, a6, v33, v34, v25, a10, v30, v19, v20, v21);

  __swift_destroy_boxed_opaque_existential_0Tm(a9);
  return v27;
}

uint64_t RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v27 = a3;
  v28 = a7;
  v29 = a8;
  v25 = a1;
  v16 = a9[3];
  v15 = a9[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a9, v16);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(v25, a2, v27, a4, a5, a6, v28, v29, v20, a10, a11, v26, v16, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(a9);
  return v22;
}

uint64_t RenderPegasusFlow.addReferenceResolutionEntities(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for RREntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v45 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v41 = &v37 - v13;
  v42 = v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
    v16 = (v8 + 48);
    v40 = v8;
    v43 = (v8 + 32);
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = &_swiftEmptyArrayStorage;
    v19 = *(v15 + 72);
    v38 = v19;
    v39 = v6;
    while (1)
    {
      closure #1 in RenderPegasusFlow.addReferenceResolutionEntities(from:)(v6);
      if (v1)
      {
      }

      if ((*v16)(v6, 1, v7) == 1)
      {
        outlined destroy of Any?(v6, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      }

      else
      {
        v20 = *v43;
        v21 = v41;
        (*v43)(v41, v6, v7);
        v20(v45, v21, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, &type metadata accessor for RREntity);
        }

        v23 = v18[2];
        v22 = v18[3];
        v24 = v18;
        if (v23 >= v22 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, &type metadata accessor for RREntity);
        }

        v6 = v39;
        v25 = v40;
        *(v24 + 16) = v23 + 1;
        v18 = v24;
        v26 = v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23;
        v7 = v42;
        v20(v26, v45, v42);
        v19 = v38;
      }

      v17 += v19;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_13:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.information);

    v28 = Logger.logObject.getter();
    v29 = v18;
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315138;
      v33 = Array.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v28, v30, "Adding RR entities: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v29);
    return swift_endAccess();
  }
}

uint64_t closure #1 in RenderPegasusFlow.addReferenceResolutionEntities(from:)@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v41 = v35 - v3;
  v43 = type metadata accessor for Typespb_Domain();
  v39 = *(v43 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v43);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupIdentifier();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BinaryDecodingOptions();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  __chkstk_darwin(v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type RenderPegasusFlow and conformance RenderPegasusFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, &type metadata accessor for Siri_Nlu_External_UsoGraph);
  v17 = v48;
  result = Message.init(serializedData:extensions:partial:options:)();
  if (!v17)
  {
    v19 = v43;
    v38 = v7;
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    v48 = 0;
    v20 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();
    v37 = v13;
    if (v20)
    {
      v35[2] = v20;
      Apple_Parsec_Siri_Context_ResultEntity.groupID.getter();
      v36 = v16;
      Apple_Parsec_Siri_Context_ResultEntity.groupSequenceNumber.getter();
      GroupIdentifier.init(id:seq:)();
      v21 = Apple_Parsec_Siri_Context_ResultEntity.id.getter();
      v35[0] = v22;
      v35[1] = v21;
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v23._object = 0x80000000000BEBF0;
      v23._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v23);
      Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v39 + 8))(v6, v19);
      v25 = v40;
      v24 = v41;
      v26 = v38;
      (*(v40 + 16))(v41, v10, v38);
      (*(v25 + 56))(v24, 0, 1, v26);
      v27 = v42;
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      (*(v25 + 8))(v10, v26);
      v16 = v36;
      v28 = 0;
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.information);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      v32 = os_log_type_enabled(v30, v31);
      v27 = v42;
      if (v32)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v30, v31, "Unable to extract entity from USO graph for RR donation", v33, 2u);
      }

      v28 = 1;
    }

    (*(v44 + 8))(v16, v37);
    v34 = type metadata accessor for RREntity();
    return (*(*(v34 - 8) + 56))(v27, v28, 1, v34);
  }

  return result;
}

uint64_t RenderPegasusFlow.on(input:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.information);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "RenderPegasusFlow does not expect input", v3, 2u);
  }

  return 0;
}

uint64_t RenderPegasusFlow.execute()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for PommesContext();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = type metadata accessor for ExecuteResponse();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v13 = type metadata accessor for Parse.DirectInvocation();
  v2[20] = v13;
  v14 = *(v13 - 8);
  v2[21] = v14;
  v15 = *(v14 + 64) + 15;
  v2[22] = swift_task_alloc();
  v16 = type metadata accessor for Date();
  v2[23] = v16;
  v17 = *(v16 - 8);
  v2[24] = v17;
  v18 = *(v17 + 64) + 15;
  v2[25] = swift_task_alloc();
  v19 = type metadata accessor for PerformanceUtil.Ticket();
  v2[26] = v19;
  v20 = *(v19 - 8);
  v2[27] = v20;
  v21 = *(v20 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v23 = type metadata accessor for PegasusExperience();
  v2[32] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 328);
  v5 = *(*v1 + 320);
  v6 = *(*v1 + 312);
  v7 = *(*v1 + 304);
  v8 = *(*v1 + 296);
  v9 = *(*v1 + 288);
  v10 = *(*v1 + 280);
  v12 = *v1;
  *(*v1 + 368) = a1;

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

{
  v2 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = a1;

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

uint64_t RenderPegasusFlow.execute()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RenderPegasusFlow.execute", v4, 2u);
  }

  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[7];

  outlined init with copy of PegasusExperience(v7 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = v0[22];
      v21 = v0[19];
      v22 = v0[7];
      (*(v0[21] + 32))(v20, v0[33], v0[20]);
      specialized FlowTrampolining.makeResponse(for:)(v20, v21);
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v23 = v0[15];
      if (*(v22 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse))
      {
        PommesResponse.requestId.getter();
        PommesResponse.pommesCandidateId.getter();
      }

      else
      {
        v43 = type metadata accessor for PommesCandidateId();
        (*(*(v43 - 8) + 56))(v23, 1, 1, v43);
      }

      v45 = v0[21];
      v44 = v0[22];
      v46 = v0[20];
      v47 = v0[17];
      v74 = v0[16];
      v77 = v0[19];
      v48 = v0[15];
      v49 = v0[6];
      dispatch thunk of PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)();

      outlined destroy of Any?(v48, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      (*(v45 + 8))(v44, v46);
      (*(v47 + 32))(v49, v77, v74);
    }

    else
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "RenderPegasusFlow no valid pegasus experience. Sending error flow.", v35, 2u);
      }

      v37 = v0[24];
      v36 = v0[25];
      v76 = v0[23];
      v38 = v0[18];
      v39 = v0[16];
      v40 = v0[7];

      v0[5] = v40;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v41 = swift_task_alloc();
      v41[2] = v0 + 5;
      v41[3] = 0xD00000000000002DLL;
      v41[4] = 0x80000000000C1400;
      Date.init()();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v37 + 8))(v36, v76);

      static PerformanceUtil.shared.getter();
      v42 = v0[14];
      if (*(v40 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse))
      {
        PommesResponse.requestId.getter();
        PommesResponse.pommesCandidateId.getter();
      }

      else
      {
        v57 = type metadata accessor for PommesCandidateId();
        (*(*(v57 - 8) + 56))(v42, 1, 1, v57);
      }

      v59 = v0[17];
      v58 = v0[18];
      v60 = v0[16];
      v61 = v0[14];
      v62 = v0[6];
      dispatch thunk of PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)();

      outlined destroy of Any?(v61, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      (*(v59 + 32))(v62, v58, v60);
    }

    v63 = v0[33];
    v64 = v0[30];
    v65 = v0[31];
    v67 = v0[28];
    v66 = v0[29];
    v68 = v0[25];
    v69 = v0[22];
    v71 = v0[18];
    v70 = v0[19];
    v72 = v0[15];
    v75 = v0[14];
    v78 = v0[13];
    v79 = v0[10];

    v73 = v0[1];

    return v73();
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v0[29];
    v25 = v0[25];
    v26 = v0[7];
    (*(v0[12] + 32))(v0[13], v0[33], v0[11]);
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v27 = *(v26 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse);
    if (v27)
    {
      v29 = v0[9];
      v28 = v0[10];
      v30 = v0[8];
      PommesResponse.pommesContext.getter();
      v27 = PommesContext.exportPegasusConversationContext()();
      v32 = v31;
      (*(v29 + 8))(v28, v30);
    }

    else
    {
      v32 = 0xF000000000000000;
    }

    v0[47] = v27;
    v0[48] = v32;
    v51 = v0[28];
    v50 = v0[29];
    v52 = v0[25];
    v53 = v0[7];
    v0[49] = type metadata accessor for PerformanceUtil();
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v54 = *(v53 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pegasusPatternFlowFactory);
    v55 = swift_task_alloc();
    v0[50] = v55;
    *v55 = v0;
    v55[1] = RenderPegasusFlow.execute();
    v56 = v0[13];

    return specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(v56);
  }

  else
  {
    v9 = v0[33];
    v10 = v0[30];
    v11 = v0[31];
    v12 = v0[25];
    v0[35] = *v9;
    v0[36] = v9[1];
    v0[37] = v9[2];
    v13 = v9[3];
    v0[38] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
    v15 = v14[24];
    v0[39] = *(v9 + v14[28]);
    v16 = *(v9 + v14[32]);
    v0[40] = v16;
    v0[41] = *(v9 + v14[36]);
    v0[42] = *(v9 + v14[40]);
    outlined init with take of Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?(v9 + v15, v11);
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v17 = swift_task_alloc();
    v0[43] = v17;
    *v17 = v0;
    v17[1] = RenderPegasusFlow.execute();
    v18 = v0[7];

    return RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(v13, v16);
  }
}

{
  if (*(v0 + 416) != 1)
  {
    v23 = *(v0 + 56);
    v24 = *(v23 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory);
    v25 = *(v23 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse);
    v26 = *(v23 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger);
    v27 = OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities;
    swift_beginAccess();
    *(v0 + 352) = *(v23 + v27);
    v28 = *(*v24 + 112);

    v43 = v28 + *v28;
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 360) = v30;
    *v30 = v0;
    v30[1] = RenderPegasusFlow.execute();
    v31 = *(v0 + 328);
    v32 = *(v0 + 312);
    v33 = *(v0 + 320);
    v34 = *(v0 + 296);
    v35 = *(v0 + 304);
    v37 = *(v0 + 280);
    v36 = *(v0 + 288);
    v38 = *(v0 + 248);
    v45 = *(v0 + 336);

    __asm { BRAA            X8, X16 }
  }

  v1 = *(v0 + 328);
  v41 = *(v0 + 336);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  v8 = *(v0 + 240);
  v46 = *(v0 + 248);
  v9 = *(v0 + 216);
  v39 = *(v0 + 208);
  v10 = *(v0 + 48);

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static ExecuteResponse.complete()();

  (*(v9 + 8))(v8, v39);
  outlined destroy of Any?(v46, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  v11 = *(v0 + 264);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 200);
  v17 = *(v0 + 176);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v20 = *(v0 + 120);
  v40 = *(v0 + 112);
  v42 = *(v0 + 104);
  v47 = *(v0 + 80);

  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = v0[34];
  v2 = v0[30];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "RenderPegasusFlow pushing render component flow", v5, 2u);
  }

  v6 = v0[46];
  v7 = v0[42];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[26];
  v11 = v0[27];
  v12 = v0[6];

  static ExecuteResponse.complete(next:)();

  (*(v11 + 8))(v9, v10);
  outlined destroy of Any?(v8, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  v13 = v0[33];
  v14 = v0[30];
  v15 = v0[31];
  v17 = v0[28];
  v16 = v0[29];
  v18 = v0[25];
  v19 = v0[22];
  v21 = v0[18];
  v20 = v0[19];
  v22 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[10];

  v23 = v0[1];

  return v23();
}

{
  v1 = v0[49];
  v2 = v0[34];
  v3 = v0[28];
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "RenderPegasusFlow pushing render pattern flow", v6, 2u);
  }

  v7 = v0[51];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[28];
  v11 = v0[26];
  v12 = v0[27];
  v13 = v0[12];
  v32 = v0[13];
  v28 = v0[29];
  v30 = v0[11];
  v14 = v0[6];

  static ExecuteResponse.complete(next:)();

  outlined consume of Data?(v9, v8);
  v15 = *(v12 + 8);
  v15(v10, v11);
  v15(v28, v11);
  (*(v13 + 8))(v32, v30);
  v16 = v0[33];
  v17 = v0[30];
  v18 = v0[31];
  v20 = v0[28];
  v19 = v0[29];
  v21 = v0[25];
  v22 = v0[22];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[15];
  v29 = v0[14];
  v31 = v0[13];
  v33 = v0[10];

  v26 = v0[1];

  return v26();
}

uint64_t RenderPegasusFlow.execute()(char a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 416) = a1;

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

uint64_t RenderPegasusFlow.execute(completion:)()
{
  type metadata accessor for RenderPegasusFlow();
  lazy protocol witness table accessor for type RenderPegasusFlow and conformance RenderPegasusFlow(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for PommesAppStatus();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem();
  v3[21] = v10;
  v11 = *(v10 - 8);
  v3[22] = v11;
  v12 = *(v11 + 64) + 15;
  v3[23] = swift_task_alloc();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent();
  v3[24] = v13;
  v14 = *(v13 - 8);
  v3[25] = v14;
  v15 = *(v14 + 64) + 15;
  v3[26] = swift_task_alloc();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v3[27] = v16;
  v17 = *(v16 - 8);
  v3[28] = v17;
  v18 = *(v17 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:), 0, 0);
}

uint64_t RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)()
{
  v152 = v0;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v1 = dispatch thunk of CurrentDevice.isCarPlay.getter();
  v2 = v0;

  if ((v1 & 1) == 0)
  {
    goto LABEL_76;
  }

  v130 = v0[19];
  v3 = *(v0[12] + 16);
  v4 = (v0[28] + 8);

  v147 = v0;
  v148 = v4;
  v143 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent() - 8);
    v141 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v139 = *(v6 + 72);
    while (1)
    {
      v137 = v2[12] + v141 + v139 * v5;
      v7 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v145 = v7;
        v10 = v7 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
        v11 = *(v130 + 72);
        while (1)
        {
          v12 = v2[33];
          v13 = v2[27];
          Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
          v14 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
          v16 = v15;
          v17 = *v148;
          (*v148)(v12, v13);

          v18 = HIBYTE(v16) & 0xF;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v18 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            break;
          }

          ++v9;
          v10 += v11;
          v2 = v147;
          if (v8 == v9)
          {
            v9 = v8;
            goto LABEL_13;
          }
        }

        v20 = v147[31];
        v19 = v147[32];
        v21 = v147[27];
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
        v17(v19, v21);
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
        v17(v20, v21);
        v2 = v147;

LABEL_13:
        v7 = v145;
      }

      else
      {
        v9 = 0;
      }

      v22 = *(v7 + 16);
      if (v9 != v22)
      {
        break;
      }

      if (++v5 == v143)
      {
        v23 = v2[12];
        v4 = v148;
        goto LABEL_17;
      }
    }

    if (v9 >= v22)
    {
      __break(1u);
    }

    else
    {
      v69 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v70 = *(v130 + 72);
      closure #1 in closure #1 in RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(&v150);
      v71 = v151;
      if (!v151)
      {
LABEL_81:
        __break(1u);
LABEL_82:

        __break(1u);
        goto LABEL_83;
      }

      v72 = v150;

      outlined consume of (displayName: String, bundleId: String)?(v72, v71);

      v73 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
      v74 = *(v73 + 16);
      v75 = v73 + v69;
      v76 = v73;
      if (v74)
      {
        v129 = v73;
        v77 = 0;
        v78 = v75;
        while (1)
        {
          v79 = v147[30];
          v80 = v147[27];
          Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
          v81 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
          v83 = v82;
          v84 = *v148;
          (*v148)(v79, v80);

          v85 = HIBYTE(v83) & 0xF;
          if ((v83 & 0x2000000000000000) == 0)
          {
            v85 = v81 & 0xFFFFFFFFFFFFLL;
          }

          if (v85)
          {
            break;
          }

          ++v77;
          v78 += v70;
          if (v74 == v77)
          {
            v77 = v74;
            goto LABEL_60;
          }
        }

        v91 = v147[31];
        v90 = v147[32];
        v92 = v147[27];
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
        v84(v90, v92);
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
        v84(v91, v92);

LABEL_60:
        v76 = v129;
      }

      else
      {
        v77 = 0;
      }

      v93 = *(v76 + 16);
      if (v77 == v93)
      {
        goto LABEL_82;
      }

      if (v77 < v93)
      {
        result = closure #1 in closure #1 in RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(&v150);
        v86 = v151;
        if (v151)
        {
          v87 = v150;
          v2 = v147;
          v95 = v147[12];

          outlined consume of (displayName: String, bundleId: String)?(v87, v86);

LABEL_65:
          v2[34] = v86;
          v96 = v2[17];
          v97 = v147[14];

          v98 = *(v97 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking + 32);
          __swift_project_boxed_opaque_existential_1((v97 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking), *(v97 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking + 24));
          v2 = v147;
          dispatch thunk of PommesAppChecking.appStatus(bundleID:)();
          if (PommesAppStatus.isHidden.getter() & 1) != 0 || (v99 = v147[17], (PommesAppStatus.isLocked.getter()))
          {
            if (one-time initialization token for information != -1)
            {
              swift_once();
            }

            v100 = type metadata accessor for Logger();
            v147[35] = __swift_project_value_buffer(v100, static Logger.information);

            v101 = Logger.logObject.getter();
            v102 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              v150 = v104;
              *v103 = 136315138;

              v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v86, &v150);

              *(v103 + 4) = v105;
              _os_log_impl(&dword_0, v101, v102, "RenderPegasusFlow: app punchout app is restricted for %s, publishing no app found response on CarPlay", v103, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v104);
            }

            v106 = v147[14];
            outlined init with copy of OutputPublisherAsync(v106 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher, (v147 + 2));
            v107 = *(v147 + 5);
            *(v147 + 18) = v107;
            v147[38] = __swift_project_boxed_opaque_existential_1(v147 + 2, v107);
            v108 = v106 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType;
            v110 = *(v106 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType);
            v109 = *(v108 + 8);

            v111 = *(v109 + 8);
            v149 = (v111 + *v111);
            v112 = v111[1];
            v113 = swift_task_alloc();
            v147[39] = v113;
            *v113 = v147;
            v113[1] = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);

            return (v149)(v147 + 7, v87, v86, v110, v109);
          }

          (*(v147[16] + 8))(v147[17], v147[15]);

          goto LABEL_75;
        }

LABEL_83:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_17:
  v24 = v2[13];

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v2[25];
    v28 = v2[19];
    v134 = *(v27 + 16);
    v133 = v2[13] + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v127 = v2[22];
    v142 = (v28 + 16);
    v136 = (v28 + 8);
    v131 = (v27 + 8);
    v132 = *(v27 + 72);
    v29 = _swiftEmptyArrayStorage;
    v126 = *(v24 + 16);
    v134(v2[26], v133, v2[24]);
    while (1)
    {
      v30 = Apple_Parsec_Siri_V2alpha_DisambiguationListComponent.items.getter();
      if (*(v30 + 16))
      {
        v135 = v26;
        v31 = v2[23];
        v32 = v2[21];
        (*(v127 + 16))(v31, v30 + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v32);

        v33 = Apple_Parsec_Siri_V2alpha_DisambiguationListItem.commands.getter();
        (*(v127 + 8))(v31, v32);
        v34 = *(v33 + 16);
        if (v34)
        {
          v128 = v29;
          v35 = v33 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
          v36 = *v142;
          v138 = *v142;
          v140 = *(v130 + 72);
          v37 = _swiftEmptyArrayStorage;
          do
          {
            v38 = v2[29];
            v39 = v2[27];
            v138(v2[20], v35, v2[18]);
            Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
            v40 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
            v42 = v41;
            v43 = *v4;
            (*v4)(v38, v39);

            v44 = HIBYTE(v42) & 0xF;
            if ((v42 & 0x2000000000000000) == 0)
            {
              v44 = v40 & 0xFFFFFFFFFFFFLL;
            }

            if (v44)
            {
              v46 = v2[31];
              v45 = v2[32];
              v47 = v2;
              v48 = v2[27];
              v49 = v37;
              v50 = v47[20];
              v51 = v47[18];
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
              v146 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
              v144 = v52;
              v43(v45, v48);
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
              v53 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
              v55 = v54;
              v43(v46, v48);
              v56 = v50;
              v37 = v49;
              (*v136)(v56, v51);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
              }

              v58 = v37[2];
              v57 = v37[3];
              if (v58 >= v57 >> 1)
              {
                v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v37);
              }

              v37[2] = v58 + 1;
              v59 = &v37[4 * v58];
              v2 = v147;
              v59[4] = v146;
              v59[5] = v144;
              v59[6] = v53;
              v59[7] = v55;
              v4 = v148;
            }

            else
            {
              (*v136)(v2[20], v2[18]);
            }

            v35 += v140;
            --v34;
          }

          while (v34);

          v29 = v128;
          v25 = v126;
        }

        else
        {

          v37 = _swiftEmptyArrayStorage;
        }

        v60 = v2[26];
        v61 = v2[24];
        if (v37[2])
        {
          v63 = v37[4];
          v62 = v37[5];
          v64 = v37[6];
          v65 = v37[7];

          (*v131)(v60, v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
          }

          v67 = v29[2];
          v66 = v29[3];
          if (v67 >= v66 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v29);
          }

          v29[2] = v67 + 1;
          v68 = &v29[4 * v67];
          v68[4] = v63;
          v68[5] = v62;
          v68[6] = v64;
          v68[7] = v65;
          v2 = v147;
        }

        else
        {
          (*v131)(v2[26], v2[24]);
        }

        v26 = v135;
      }

      else
      {
        (*v131)(v2[26], v2[24]);
      }

      if (++v26 == v25)
      {
        break;
      }

      v134(v2[26], v133 + v26 * v132, v2[24]);
    }
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  if (v29[2])
  {
    v87 = v29[4];
    v86 = v29[5];
    v88 = v29[6];
    v89 = v29[7];

    goto LABEL_65;
  }

LABEL_75:

LABEL_76:
  v115 = v2[32];
  v114 = v2[33];
  v116 = v2;
  v119 = v2 + 30;
  v117 = v2[30];
  v118 = v119[1];
  v120 = v116[29];
  v121 = v116[26];
  v122 = v116[23];
  v123 = v116[20];
  v124 = v116[17];

  v125 = v116[1];

  return v125(0);
}

{
  v2 = *(*v1 + 312);
  v3 = *v1;
  v3[40] = v0;

  if (v0)
  {

    return _swift_task_switch(RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:), 0, 0);
  }

  else
  {
    v4 = v3[34];

    v5 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v6 = swift_task_alloc();
    v3[41] = v6;
    *v6 = v3;
    v6[1] = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);
    v7 = v3[37];
    v8 = v3[38];
    v9 = v3[36];

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v3 + 7, v9, v7);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v6 = *v1;
  *(v2 + 336) = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  if (v0)
  {
    v4 = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);
  }

  else
  {
    v4 = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[17];

  v10 = v0[1];

  return v10(1);
}

{
  v1 = v0[34];

  v2 = v0[40];
  v3 = v0[35];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v4, v5, "RenderPegasusFlow: app not found publish failed", v10, 2u);
  }

  (*(v8 + 8))(v7, v9);
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[17];

  v20 = v0[1];

  return v20(1);
}

{
  v1 = v0[42];
  v2 = v0[35];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v3, v4, "RenderPegasusFlow: app not found publish failed", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];

  v19 = v0[1];

  return v19(1);
}

uint64_t closure #1 in closure #1 in RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - v9;
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
  v13 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
  v15 = v14;
  v16 = *(v3 + 8);
  v16(v12, v2);

  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    v19 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
    v21 = v20;
    v16(v10, v2);
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    v22 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
    v24 = v23;
    result = (v16)(v7, v2);
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
  }

  *a1 = v19;
  a1[1] = v21;
  a1[2] = v22;
  a1[3] = v24;
  return result;
}

uint64_t RenderPegasusFlow.deinit()
{
  outlined destroy of PegasusExperience(v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher));
  v1 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory);

  v2 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory);

  v3 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger);

  v4 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pegasusPatternFlowFactory);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking));
  v5 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities);

  return v0;
}

uint64_t RenderPegasusFlow.__deallocating_deinit()
{
  RenderPegasusFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance RenderPegasusFlow(uint64_t a1)
{
  v4 = *(**v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, &type metadata accessor for RREntity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, _ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, &type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR, &type metadata accessor for URLQueryItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_CatDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_CatDialogComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMR, &type metadata accessor for Searchfoundation_Card);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10PegasusAPI28Searchfoundation_CardSectionVGGMd, &_ss23_ContiguousArrayStorageCySay10PegasusAPI28Searchfoundation_CardSectionVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI28Searchfoundation_CardSectionVGMd, &_sSay10PegasusAPI28Searchfoundation_CardSectionVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS11displayName_SS8bundleIdtGMd, &_ss23_ContiguousArrayStorageCySS11displayName_SS8bundleIdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11displayName_SS8bundleIdtMd, &_sSS11displayName_SS8bundleIdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_d9_V2alpha_dI8ResponseV0D11InstructionVtGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_d9_V2alpha_dI8ResponseV0D11InstructionVtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR) - 8);
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

uint64_t specialized RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v70 = a8;
  v71 = a7;
  v62 = a6;
  v65 = a3;
  v67 = a1;
  v72 = a10;
  v73 = a11;
  v59 = a9;
  v60 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v56 - v20;
  v22 = type metadata accessor for ActivityType();
  v63 = *(v22 - 8);
  v64 = v22;
  v23 = *(v63 + 64);
  __chkstk_darwin(v22);
  v61 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PerformanceUtil.Ticket();
  v68 = *(v29 - 8);
  v69 = v29;
  v30 = *(v68 + 64);
  v31 = __chkstk_darwin(v29);
  v66 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v57 = &v56 - v33;
  v75 = a13;
  v76 = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, v59, a13);
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities) = _swiftEmptyArrayStorage;
  outlined init with copy of PegasusExperience(a1, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience);
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse) = a2;
  outlined init with copy of OutputPublisherAsync(a3, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher);
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory) = a4;
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory) = v60;
  v35 = OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger;
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger) = v62;
  v36 = v35;
  v59 = v35;
  v37 = a2;

  v58 = v28;
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v38 = *(a12 + v36);
  v39 = v63;
  v40 = v64;
  v41 = v61;
  (*(v63 + 104))(v61, enum case for ActivityType.start(_:), v64);
  v42 = enum case for SiriKitReliabilityCodes.normal(_:);
  v43 = type metadata accessor for SiriKitReliabilityCodes();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v21, v42, v43);
  (*(v44 + 56))(v21, 0, 1, v43);
  v45 = *(*v38 + 120);

  v45(v41, 0x6C7070615F746F6ELL, 0xEE00656C62616369, v21, 0xD000000000000018, 0x80000000000BDE10, 0x54746E6572727543, 0xEB000000006B7361);

  outlined destroy of Any?(v21, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(v39 + 8))(v41, v40);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v46 = v57;
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  Date.init()();
  v47 = v66;
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v48 = *(**(a12 + v59) + 152);

  v48(v49);

  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  outlined destroy of PegasusExperience(v67);
  v50 = v69;
  v51 = *(v68 + 8);
  v51(v47, v69);
  v51(v46, v50);
  v52 = v71;
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pegasusPatternFlowFactory) = v70;
  outlined init with take of SiriSuggestionsBroker(v52, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_aceServiceInvoker);
  outlined init with take of SiriSuggestionsBroker(&v74, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking);
  v53 = (a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType);
  v54 = v73;
  *v53 = v72;
  v53[1] = v54;
  return a12;
}

uint64_t outlined init with copy of PegasusExperience(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PegasusExperience();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RenderPegasusFlow()
{
  result = type metadata singleton initialization cache for RenderPegasusFlow;
  if (!type metadata singleton initialization cache for RenderPegasusFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of PegasusExperience(uint64_t a1)
{
  v2 = type metadata accessor for PegasusExperience();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for RenderPegasusFlow()
{
  result = type metadata accessor for PegasusExperience();
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

uint64_t outlined consume of (displayName: String, bundleId: String)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RenderPegasusFlow and conformance RenderPegasusFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ErrorFlowFactory.__allocating_init(outputPublisher:informationViewFactory:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t ErrorFlowFactory.init(outputPublisher:informationViewFactory:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of SiriSuggestionsBroker(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t ErrorFlowFactory.makeErrorFlow(message:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = type metadata accessor for ActivityType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v42 = type metadata accessor for PerformanceUtil.Ticket();
  v41 = *(v42 - 8);
  v17 = *(v41 + 64);
  __chkstk_darwin(v42);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.information);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "InformationFlowPlugin: making error flow", v23, 2u);
  }

  static SiriKitEventSender.current.getter();
  outlined init with take of SiriSuggestionsBroker(v46, v45);
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  (*(v9 + 104))(v14, enum case for ActivityType.failed(_:), v8);
  v24 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v25 = type metadata accessor for SiriKitReliabilityCodes();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Logging generic SELF FlowStep event", v29, 2u);
  }

  type metadata accessor for SiriKitEvent();
  (*(v9 + 16))(v37, v14, v8);
  outlined init with copy of SiriKitReliabilityCodes?(v7, v38);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_BCF80;
  *(v30 + 32) = xmmword_BCF90;
  *(v30 + 48) = v39;
  *(v30 + 56) = v40;

  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  dispatch thunk of SiriKitEventSending.send(_:)();

  outlined destroy of SiriKitReliabilityCodes?(v7);
  (*(v9 + 8))(v14, v8);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  outlined init with copy of OutputPublisherAsync(v43 + 16, v44);
  v31 = type metadata accessor for SimpleOutputFlowAsync();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v44[0] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v34 = Flow.eraseToAnyFlow()();
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  (*(v41 + 8))(v19, v42);

  return v34;
}

uint64_t closure #1 in ErrorFlowFactory.makeErrorFlow(message:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AceOutput();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for PerformanceUtil.Ticket();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ErrorFlowFactory.makeErrorFlow(message:), 0, 0);
}

uint64_t closure #1 in ErrorFlowFactory.makeErrorFlow(message:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v4 = *(**(v3 + 56) + 136);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = closure #1 in ErrorFlowFactory.makeErrorFlow(message:);
  v7 = v0[6];

  return v9(v7);
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = closure #1 in ErrorFlowFactory.makeErrorFlow(message:);
  }

  else
  {
    v3 = closure #1 in ErrorFlowFactory.makeErrorFlow(message:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v8[3] = v7;
  v8[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[7];
  v2 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t ErrorFlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t ErrorFlowFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_A81F0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in ErrorFlowFactory.makeErrorFlow(message:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in ErrorFlowFactory.makeErrorFlow(message:)(a1, v1);
}

uint64_t FlowTrampolining.makeResponse(forErrorMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v16 = a3;
  v17 = a4;
  v18 = v4;
  v19 = a1;
  v20 = a2;
  Date.init()();
  type metadata accessor for ExecuteResponse();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  return (*(v10 + 8))(v13, v9);
}

uint64_t FlowTrampolining.makeResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v17 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0CSgMd, _s11SiriKitFlow03AnyC0CSgMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v7 + 8))(v10, v6);
  if (v18)
  {

    static ExecuteResponse.complete(next:)();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.information);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Unable to locate flow for direct invocation parse/experience. Returning error flow.", v15, 2u);
    }

    return FlowTrampolining.makeResponse(forErrorMessage:)(0xD000000000000038, 0x80000000000BE060, a2, a3);
  }
}

uint64_t closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v12, a4, a5);
  v9 = (*(a5 + 16))(a4, a5);
  type metadata accessor for ErrorFlowFactory();
  v10 = swift_allocObject();
  outlined init with take of OutputPublisherAsync(v12, v10 + 16);
  *(v10 + 56) = v9;
  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

uint64_t closure #1 in FlowTrampolining.makeResponse(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = static FlowLocator.findFlow(forInvocation:)();
  *a1 = result;
  return result;
}

uint64_t _s21InformationFlowPlugin0B12TrampoliningPAAE12makeResponse3for07SiriKitB007ExecuteF0VAF5ParseO16DirectInvocationV_tFAF03AnyB0CSgyXEfU_TA_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = static FlowLocator.findFlow(forInvocation:)();
  *a1 = result;
  return result;
}

uint64_t static Logger.begin(_:)()
{
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v0 = static Logger.informationLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.end(_:_:)()
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v30[-v16];
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, v7, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  outlined init with copy of Logger?(v17, v15);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    outlined destroy of Logger?(v15);
  }

  else
  {
    v34 = a1;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = a3;
      v23 = v22;
      v32 = swift_slowAlloc();
      v36 = v32;
      *v23 = 136315650;
      v24 = StaticString.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v36);
      v31 = v21;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      v28 = v34;
      *(v23 + 14) = v35;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, a2, &v36);
      _os_log_impl(&dword_0, v20, v31, "FatalError at %s:%lu - %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    (*(v19 + 8))(v15, v18);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for informationLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.informationLog = result;
  return result;
}

uint64_t one-time initialization function for information()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.information);
  __swift_project_value_buffer(v0, static Logger.information);
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v1 = static Logger.informationLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for videoSnippet()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.videoSnippet);
  __swift_project_value_buffer(v0, static Logger.videoSnippet);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.generateSignpostID()()
{
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v0 = static Logger.informationLog;

  return OSSignpostID.init(log:)();
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Logger.event(_:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t one-time initialization function for information(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return OSSignposter.init(logger:)();
}

uint64_t Logger.information.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static Logger.information.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for OSSignpostID();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(OSSignposter.withIntervalSignpost<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpost<A>(_:id:around:)()
{
  v1 = *(v0 + 72);
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v8, v5, "", v7, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  v10 = type metadata accessor for OSSignpostIntervalState();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 104) = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  v15 = *(v0 + 64);
  v16 = *(v0 + 24);

  return v17(v16);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  }

  else
  {
    v3 = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128));

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3();
}

uint64_t OSSignposter.beginIntervalTelemetryEnabled(_:id:)(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v16, a1, "enableTelemetry=YES", v15, 2u);

LABEL_10:

      (*(v8 + 16))(v11, a4, v7);
      v17 = type metadata accessor for OSSignpostIntervalState();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      return OSSignpostIntervalState.init(id:isOpen:)();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(const char *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = &v11;
LABEL_8:
  v10 = swift_slowAlloc();
  *v10 = 0;
  closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(v10, 2u, v5, a4, v9, "enableTelemetry=YES", a5);
  if (!v6)
  {
  }
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return _swift_task_switch(OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 48);
  *(v2 + 72) = OSSignposter.beginIntervalTelemetryEnabled(_:id:)(*(v2 + 24), a2, *(v2 + 96), *(v2 + 40));
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  v7 = *(v2 + 56);
  v8 = *(v2 + 16);

  return v10(v8);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  }

  else
  {
    v3 = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 72);
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96));

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v9, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v15, v22, v20, v17, v18, v19, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, void (*a7)(void))
{
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = static os_signpost_type_t.end.getter();
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v14, v15, a5, a6, v16, a2);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t RFSimpleYesNoPromptFlowStrategy.__allocating_init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v28 = a7;
  v29 = a8;
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  v18 = swift_allocObject();
  v20 = a2[3];
  v19 = a2[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = specialized RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(a1, v24, a3, a4, a5, a6, v28, v29, v18, v20, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v26;
}

uint64_t closure #1 in default argument 2 of RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return (*(v0 + 8))();
}

uint64_t RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(a1, v20, a3, a4, a5, a6, v24, v25, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v22;
}

uint64_t RFSimpleYesNoPromptFlowStrategy.populate(manifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = type metadata accessor for NLContextUpdate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v43 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v43 - v15;
  v16 = type metadata accessor for DialogPhase();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = type metadata accessor for OutputGenerationManifest();
  (*(*(v24 - 8) + 16))(a2, a1, v24);
  OutputGenerationManifest.dialogPhase.getter();
  static DialogPhase.clarification.getter();
  lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, &type metadata accessor for DialogPhase);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v17 + 8);
  v25(v21, v16);
  v25(v23, v16);
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.information);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "A non clarification dialog phase was inputed into a RFSimpleYesNoPromptFlowStrategy. This could cause unwanted behavior in the UI layer.", v29, 2u);
    }
  }

  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.nlContextUpdate.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NLContextUpdate?(v9);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.information);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "OutputGenerationManifest does not include an NL context update. Will send a standard Reader domain prompt offer.", v33, 2u);
    }

    v34 = v43;
    NLContextUpdate.init()();
    v35 = v45;
    RFSimpleYesNoPromptFlowStrategy.attachNLV3ReaderPrompt(to:)(v34, v45);
    (*(v11 + 8))(v34, v10);
    (*(v11 + 56))(v35, 0, 1, v10);
    return OutputGenerationManifest.nlContextUpdate.setter();
  }

  else
  {
    v37 = v44;
    (*(v11 + 32))(v44, v9, v10);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.information);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Attaching NL Context to existing context update provided by domain.", v41, 2u);
    }

    v42 = v45;
    RFSimpleYesNoPromptFlowStrategy.attachNLV3ReaderPrompt(to:)(v37, v45);
    (*(v11 + 56))(v42, 0, 1, v10);
    OutputGenerationManifest.nlContextUpdate.setter();
    return (*(v11 + 8))(v37, v10);
  }
}

void RFSimpleYesNoPromptFlowStrategy.attachNLV3ReaderPrompt(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, oslog, v6, "#RF Built Reader Prompt hints.", v7, 2u);
  }
}

uint64_t RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for PerformanceUtil.Ticket();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  else
  {
    v5 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[3];
  v7 = v0[4];
  (*(v4 + 16))(v2, v6 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest, v3);
  RFSimpleYesNoPromptFlowStrategy.populate(manifest:)(v2, v1);
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v9 = *(v6 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  v10 = *(v6 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer + 8);
  v14 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();

  return v14();
}

{
  v1 = v0[7];
  v2 = v0[3];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v3 = (v2 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator);
  v4 = *(v2 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator + 24);
  v5 = *(v2 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  v8 = v0[15];
  v9 = v0[11];
  v10 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v10, v8, v9, v4, v5);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  else
  {
    v3 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  (*(v8 + 8))(v6, v7);
  v2(v4, v5);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v3(v4, v6);

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v3(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t RFSimpleYesNoPromptFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Parse.DirectInvocation();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = (&v55 - v14);
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  Input.parse.getter();
  v18 = (*(v8 + 88))(v17, v7);
  if (v18 == enum case for Parse.directInvocation(_:))
  {
    v58 = a1;
    (*(v8 + 16))(v12, v17, v7);
    v19 = *(v8 + 96);
    v56 = v7;
    v19(v12, v7);
    v20 = v3[2];
    v57 = v2;
    v20(v6, v12, v2);
    v21 = Parse.DirectInvocation.identifier.getter();
    v23 = v22;
    v24 = static SiriKitDirectInvocationPayloads.cancel.getter();
    v25 = [v24 identifier];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v21 == v26 && v23 == v28)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        v31 = v3[1];
        v31(v6, v57);
        v32 = Parse.DirectInvocation.identifier.getter();
        v34 = v33;
        v35 = static SiriKitDirectInvocationPayloads.confirm.getter();
        v36 = [v35 identifier];

        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        if (v32 == v37 && v34 == v39)
        {

          v7 = v56;
LABEL_20:
          v31(v12, v57);
          goto LABEL_21;
        }

        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v56;
        if (v44)
        {
          goto LABEL_20;
        }

        v46 = Parse.DirectInvocation.identifier.getter();
        v48 = v47;
        v31(v12, v57);
        v49 = static SiriKitDirectInvocationPayloads.reject.getter();
        v50 = [v49 identifier];

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        if (v46 == v51 && v48 == v53)
        {

          goto LABEL_21;
        }

        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v54)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    static ActionForInput.cancel()();
    v41 = v3[1];
    v42 = v57;
    v41(v6, v57);
    v41(v12, v42);
    return (*(v8 + 8))(v17, v56);
  }

  if (v18 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v18 == enum case for Parse.pegasusResults(_:))
    {
      static ActionForInput.handle()();
      return (*(v8 + 8))(v17, v7);
    }

LABEL_28:
    static ActionForInput.ignore()();
    return (*(v8 + 8))(v17, v7);
  }

  (*(v8 + 16))(v15, v17, v7);
  (*(v8 + 96))(v15, v7);
  v40 = *v15;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
LABEL_21:
      (*(v8 + 8))(v17, v7);
      return static ActionForInput.handle()();
    }

    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v45)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  static ActionForInput.cancel()();
  swift_unknownObjectRelease();
  return (*(v8 + 8))(v17, v7);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Parse.PegasusResult();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Parse.DirectInvocation();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = type metadata accessor for Parse();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[3];
  Input.parse.getter();
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 != enum case for Parse.directInvocation(_:))
  {
    if (v5 != enum case for Parse.NLv4IntentOnly(_:))
    {
      if (v5 == enum case for Parse.pegasusResults(_:))
      {
        v39 = v0[14];
        v38 = v0[15];
        v40 = v0[13];
        v42 = v0[6];
        v41 = v0[7];
        v43 = v0[4];
        v44 = v0[5];
        v45 = v0[2];
        (*(v39 + 16))(v38, v0[18], v40);
        (*(v39 + 96))(v38, v40);
        (*(v42 + 32))(v41, v38, v44);
        RFSimpleYesNoPromptFlowStrategy.parsePegasusResponse(pegasusResult:)(v45);
        (*(v42 + 8))(v41, v44);
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v20 = v0[17];
    v21 = v0[13];
    v22 = v0[14];
    (*(v22 + 16))(v20, v0[18], v21);
    (*(v22 + 96))(v20, v21);
    v23 = *v20;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v24 = v0[12];
      v25 = v0[2];
      v26 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      v24 = v0[12];
      v59 = v0[2];
      v26 = &enum case for ConfirmationResponse.rejected(_:);
    }

    v60 = *v26;
    v61 = type metadata accessor for ConfirmationResponse();
    v62 = *(v61 - 8);
    (*(v62 + 104))(v24, v60, v61);
    (*(v62 + 56))(v24, 0, 1, v61);
    SimpleConfirmationResponseProvider.init(_:)();
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  (*(v8 + 16))(v6, v0[18], v7);
  (*(v8 + 96))(v6, v7);
  (*(v11 + 16))(v9, v6, v10);
  v12 = Parse.DirectInvocation.identifier.getter();
  v14 = v13;
  v15 = static SiriKitDirectInvocationPayloads.confirm.getter();
  v16 = [v15 identifier];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v12 == v17 && v14 == v19)
  {

LABEL_9:
    v28 = v0[16];
    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[8];
    v32 = v0[9];
    v33 = v0[2];
    v34 = enum case for ConfirmationResponse.confirmed(_:);
    v35 = type metadata accessor for ConfirmationResponse();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v29, v34, v35);
    (*(v36 + 56))(v29, 0, 1, v35);
    SimpleConfirmationResponseProvider.init(_:)();
    v37 = *(v32 + 8);
    v37(v30, v31);
    v37(v28, v31);
    goto LABEL_27;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_9;
  }

  v46 = v0[16];
  v47 = v0[10];
  v48 = v0[8];
  v49 = v0[9];
  v50 = *(v49 + 8);
  v50(v0[11], v48);
  (*(v49 + 32))(v47, v46, v48);
  v51 = Parse.DirectInvocation.identifier.getter();
  v53 = v52;
  v54 = static SiriKitDirectInvocationPayloads.reject.getter();
  v55 = [v54 identifier];

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  if (v51 == v56 && v53 == v58)
  {

LABEL_19:
    v64 = v0[12];
    v65 = v0[10];
    v66 = v0[8];
    v67 = v0[2];
    v68 = enum case for ConfirmationResponse.rejected(_:);
    v69 = type metadata accessor for ConfirmationResponse();
    v70 = *(v69 - 8);
    (*(v70 + 104))(v64, v68, v69);
    (*(v70 + 56))(v64, 0, 1, v69);
    SimpleConfirmationResponseProvider.init(_:)();
    v50(v65, v66);
    goto LABEL_27;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
    goto LABEL_19;
  }

  v50(v0[10], v0[8]);
LABEL_22:
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logger.information);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_0, v72, v73, "Unable to parse a confirmation response from the given parse", v74, 2u);
  }

  v75 = v0[12];
  v76 = v0[2];

  v77 = type metadata accessor for ConfirmationResponse();
  (*(*(v77 - 8) + 56))(v75, 1, 1, v77);
  SimpleConfirmationResponseProvider.init(_:)();
LABEL_27:
  v78 = v0[17];
  v80 = v0[15];
  v79 = v0[16];
  v82 = v0[11];
  v81 = v0[12];
  v83 = v0[10];
  v84 = v0[7];
  (*(v0[14] + 8))(v0[18], v0[13]);

  v85 = v0[1];

  return v85();
}

uint64_t RFSimpleYesNoPromptFlowStrategy.parsePegasusResponse(pegasusResult:)@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v63 = &v57 - v3;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v57 - v11;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v61 = *(v22 - 8);
  v62 = v22;
  v23 = *(v61 + 64);
  __chkstk_darwin(v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v18 + 8))(v21, v17);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  (*(v13 + 8))(v16, v12);
  v26 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    v29 = v59;
    v30 = v10;
    if (v28 != 2)
    {
      outlined consume of Data._Representation(v26, v27);
      v32 = v60;
      goto LABEL_11;
    }

    v34 = *(v26 + 16);
    v33 = *(v26 + 24);
    outlined consume of Data._Representation(v26, v27);
  }

  else
  {
    v29 = v59;
    v30 = v10;
    if (!v28)
    {
      v31 = v27;
      outlined consume of Data._Representation(v26, v27);
      v32 = v60;
      if ((v31 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v36 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
      goto LABEL_12;
    }

    v35 = v26;
    outlined consume of Data._Representation(v26, v27);
    v34 = v35;
    v33 = v35 >> 32;
  }

  v32 = v60;
  if (v34 != v33)
  {
    goto LABEL_9;
  }

LABEL_11:
  v36 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.getter();
LABEL_12:
  v38 = v36;
  v39 = v37;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  outlined copy of Data._Representation(v36, v37);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  Message.init(serializedData:extensions:partial:options:)();
  (*(v58 + 32))(v32, v30, v29);
  if ((Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) == 0)
  {
    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.information);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_33;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Received User Rejected From Pegasus";
    }

    else if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.information);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_33;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Received User Cancelled From Pegasus";
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.information);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_33;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Received other unsupported UDA From Pegasus";
    }

    _os_log_impl(&dword_0, v46, v47, v49, v48, 2u);

LABEL_33:

    v44 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_34;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.information);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "Received User Accepted UDA From Pegasus", v43, 2u);
  }

  v44 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_34:
  v52 = *v44;
  v53 = type metadata accessor for ConfirmationResponse();
  v54 = *(v53 - 8);
  v55 = v63;
  (*(v54 + 104))(v63, v52, v53);
  (*(v54 + 56))(v55, 0, 1, v53);
  SimpleConfirmationResponseProvider.init(_:)();
  outlined consume of Data._Representation(v38, v39);
  (*(v58 + 8))(v32, v29);
  return (*(v61 + 8))(v25, v62);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest;
  v2 = type metadata accessor for OutputGenerationManifest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator));
  v3 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_rejectionOutputProducer + 8);

  v4 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_cancellationOutputProducer + 8);

  v5 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer + 8);

  return v0;
}

uint64_t RFSimpleYesNoPromptFlowStrategy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest;
  v2 = type metadata accessor for OutputGenerationManifest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator));
  v3 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_rejectionOutputProducer + 8);

  v4 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_cancellationOutputProducer + 8);

  v5 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *v1;
  v5 = async function pointer to YesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy);
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return YesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v4, v7);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *v1;
  v5 = async function pointer to YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy);
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, v4, v7);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *v1;
  v5 = async function pointer to YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy);
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, v4, v7);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t specialized RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator);
  v19[3] = a10;
  v19[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a2, a10);
  v21 = OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest;
  v22 = type metadata accessor for OutputGenerationManifest();
  (*(*(v22 - 8) + 32))(a9 + v21, a1, v22);
  v23 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_rejectionOutputProducer);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_cancellationOutputProducer);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  *v25 = a7;
  v25[1] = a8;
  return a9;
}

uint64_t type metadata accessor for RFSimpleYesNoPromptFlowStrategy()
{
  result = type metadata singleton initialization cache for RFSimpleYesNoPromptFlowStrategy;
  if (!type metadata singleton initialization cache for RFSimpleYesNoPromptFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RFSimpleYesNoPromptFlowStrategy()
{
  result = type metadata accessor for OutputGenerationManifest();
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

uint64_t lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of NLContextUpdate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExperienceSelector.selectPegasusExperience(pegasusResult:)@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.information);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "ExperienceSelector will select a PegasusExperience.", v14, 2u);
  }

  type metadata accessor for PerformanceUtil();
  v15 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v15);
  Date.init()();
  v31 = &v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v30 = partial apply for closure #1 in ExperienceSelector.selectPegasusExperience(pegasusResult:);
  v29 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v7 + 8))(v10, v6);
  v16 = v37;
  if (v37)
  {
    Parse.PegasusResult.response.getter();
    v36 = specialized static PegasusComponentsParser.parsePegasusRenderOptions(response:)();
    (*(v34 + 8))(v5, v35);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
    v18 = v17[24];
    *a1 = v16[3];
    *(a1 + 1) = v16[2];
    v34 = v16[5];
    *(a1 + 2) = v34;
    v35 = v16[7];
    *(a1 + 3) = v35;
    v19 = v16[6];
    v20 = *(v19 + 16);
    v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
    v22 = *(v21 - 8);
    if (v20)
    {
      (*(*(v21 - 8) + 16))(&a1[v18], v19 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)), v21);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v22 + 56))(&a1[v18], v23, 1, v21);
    v24 = v17[32];
    v25 = v17[36];
    v26 = v17[40];
    *&a1[v17[28]] = v16[8];
    *&a1[v24] = v16[9];
    v27 = v16[10];

    *&a1[v25] = v27;
    *&a1[v26] = v36;
    type metadata accessor for PegasusExperience();
  }

  else
  {
    type metadata accessor for PegasusExperience();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ExperienceSelector.selectPommesExperience(pommesResponse:)@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, _s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for Parse.DirectInvocation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = dispatch thunk of PommesResponse.experiences.getter();
  if (v16 >> 62)
  {
    v48 = v16;
    v49 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v48;
    if (v49)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v63 = a1;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
      v18 = v17;

      type metadata accessor for PhoneCallExperience();
      if (swift_dynamicCastClass())
      {
        v19 = v18;
        PhoneCallExperience.makeDirectInvocation()(v10);
        v20 = (*(v12 + 48))(v10, 1, v11);

        if (v20 != 1)
        {
          v31 = *(v12 + 32);
          v31(v15, v10, v11);
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logger.information);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_0, v33, v34, "Found phone call experience. Continuing with phone call direct invocation.", v35, 2u);
          }

          v31(v63, v15, v11);
          type metadata accessor for PegasusExperience();
          return swift_storeEnumTagMultiPayload();
        }

        outlined destroy of Parse.DirectInvocation?(v10);
      }

      type metadata accessor for GenericExperience();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for PerformanceUtil();
        v21 = static PerformanceUtil.shared.getter();
        __chkstk_darwin(v21);
        Date.init()();
        v56 = &v54;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
        v55 = partial apply for closure #1 in ExperienceSelector.selectPommesExperience(pommesResponse:);
        v54 = 2;
        dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

        (*(v3 + 8))(v6, v2);
        v22 = v64;
        if (v64)
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
          v24 = v23[24];
          v25 = v63;
          v59 = v22[3];
          *v63 = v59;
          v60 = v22[2];
          *(v25 + 1) = v60;
          v61 = v22[5];
          *(v25 + 2) = v61;
          v62 = v22[7];
          *(v25 + 3) = v62;
          v26 = v22[6];
          v27 = *(v26 + 16);
          v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
          v29 = *(v28 - 8);
          if (v27)
          {
            (*(*(v28 - 8) + 16))(&v25[v24], v26 + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)), v28);
            v30 = 0;
          }

          else
          {
            v30 = 1;
          }

          (*(v29 + 56))(&v25[v24], v30, 1, v28);
          v42 = v23[32];
          v43 = v23[36];
          v44 = v23[40];
          *&v25[v23[28]] = v22[8];
          *&v25[v42] = v22[9];
          *&v25[v43] = v22[10];
          v45 = v18;

          v46 = dispatch thunk of Experience.renderOptions.getter();

          *&v25[v44] = v46;
          type metadata accessor for PegasusExperience();
          return swift_storeEnumTagMultiPayload();
        }

        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.information);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v37, v38))
        {
LABEL_27:

          type metadata accessor for PegasusExperience();
          return swift_storeEnumTagMultiPayload();
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "ExperienceSelector no valid pegasus experience.";
      }

      else
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logger.information);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_27;
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = "ExperienceSelector top experience not generic.";
      }

      _os_log_impl(&dword_0, v37, v38, v40, v39, 2u);

      goto LABEL_27;
    }

    if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      v17 = *(v16 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (one-time initialization token for information != -1)
  {
LABEL_40:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.information);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "ExperienceSelector found no experiences.", v53, 2u);
  }

  type metadata accessor for PegasusExperience();

  return swift_storeEnumTagMultiPayload();
}

uint64_t PhoneCallExperience.makeDirectInvocation()@<X0>(uint64_t a1@<X8>)
{
  if (PhoneCallExperience.makeDirectInvocationPayload()())
  {
    Parse.DirectInvocation.init(identifier:userData:)();
    v2 = 0;
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.information);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Unable to make direct invocation payload", v6, 2u);
    }

    v2 = 1;
  }

  v7 = type metadata accessor for Parse.DirectInvocation();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v2, 1, v7);
}

uint64_t ExperienceSelector.selectPegasusComponents(pegasusResult:)()
{
  v25 = type metadata accessor for Date();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v5, v6, "ExperienceSelector will select PegasusComponents.", v7, 2u);
  }

  type metadata accessor for PerformanceUtil();
  v8 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v8);
  Date.init()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v22 = &v20;
  v23 = v9;
  v21 = partial apply for closure #1 in ExperienceSelector.selectPegasusComponents(pegasusResult:);
  v20 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v10 = *(v0 + 8);
  v10(v3, v25);
  v11 = v26;
  if (v26)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "ExperienceSelector: found primary experience.";
LABEL_11:
      _os_log_impl(&dword_0, v12, v13, v15, v14, 2u);
LABEL_12:
    }
  }

  else
  {
    v16 = static PerformanceUtil.shared.getter();
    v24 = &v24;
    __chkstk_darwin(v16);
    Date.init()();
    v22 = &v20;
    v23 = v9;
    v21 = partial apply for closure #2 in ExperienceSelector.selectPegasusComponents(pegasusResult:);
    v20 = 2;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    v10(v3, v25);
    v11 = v26;
    v12 = Logger.logObject.getter();
    if (!v11)
    {
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v18))
      {
        v11 = 0;
        goto LABEL_13;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v12, v18, "ExperienceSelector did not find a valid PegasusComponents.", v19, 2u);
      v11 = 0;
      goto LABEL_12;
    }

    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "ExperienceSelector: found legacy experience.";
      goto LABEL_11;
    }
  }

LABEL_13:

  return v11;
}

uint64_t partial apply for closure #1 in ExperienceSelector.selectPegasusExperience(pegasusResult:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 96))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PegasusExperience()
{
  result = type metadata singleton initialization cache for PegasusExperience;
  if (!type metadata singleton initialization cache for PegasusExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t PhoneCallExperience.makeDirectInvocationPayload()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v63 = v61 - v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v62 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v61 - v9;
  __chkstk_darwin(v8);
  v12 = v61 - v11;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.information);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "Creating INStartCallIntent", v17, 2u);
  }

  PhoneCallExperience.phoneCall.getter();
  v18 = Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
  v20 = v19;
  v21 = *(v4 + 8);
  v22 = v3;
  v21(v12, v3);

  v23 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v23 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v61[1] = v14;
  if (v23)
  {
    PhoneCallExperience.phoneCall.getter();
    Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
    v21(v10, v3);
    v24 = objc_allocWithZone(INPersonHandle);
    v25 = String._bridgeToObjectiveC()();

    v26 = [v24 initWithValue:v25 type:2];
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Phone number unknown", v29, 2u);
    }

    v30 = objc_allocWithZone(INPersonHandle);
    v25 = String._bridgeToObjectiveC()();
    v26 = [v30 initWithValue:v25 type:0];
    v22 = v3;
  }

  v31 = type metadata accessor for PersonNameComponents();
  v32 = *(v31 - 8);
  v33 = v63;
  (*(v32 + 56))(v63, 1, 1, v31);
  v64 = v26;
  v34 = v62;
  PhoneCallExperience.phoneCall.getter();
  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
  v21(v34, v22);
  isa = 0;
  if ((*(v32 + 48))(v33, 1, v31) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v32 + 8))(v33, v31);
  }

  v36 = objc_allocWithZone(INPerson);
  v37 = String._bridgeToObjectiveC()();

  v38 = v64;
  v39 = [v36 initWithPersonHandle:v64 nameComponents:isa displayName:v37 image:0 contactIdentifier:0 customIdentifier:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_B9BD0;
  *(v40 + 32) = v39;
  v41 = objc_allocWithZone(INStartCallIntent);
  type metadata accessor for INPerson();
  v42 = v39;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  v44 = [v41 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 preferredCallProvider:1 contacts:v43 ttyType:0 callCapability:1];

  v45 = v44;
  v46 = [v45 backingStore];
  v47 = [v46 data];

  if (v47)
  {
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B9FF0;
    *(inited + 32) = 0x6449707061;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x80000000000C1A70;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 80), "intentTypeName");
    *(inited + 95) = -18;
    v52 = [v45 typeName];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    *(inited + 96) = v53;
    *(inited + 104) = v55;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0x6144746E65746E69;
    *(inited + 168) = &type metadata for Data;
    *(inited + 136) = 0xEA00000000006174;
    *(inited + 144) = v48;
    *(inited + 152) = v50;
    outlined copy of Data._Representation(v48, v50);
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();

    outlined consume of Data._Representation(v48, v50);
  }

  else
  {

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "Unable to serialize INStartCallIntent", v59, 2u);
    }

    return 0;
  }

  return v56;
}

uint64_t partial apply for closure #1 in ExperienceSelector.selectPommesExperience(pommesResponse:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = GenericExperience.components.getter();
  v5 = specialized static PegasusComponentsParser.collateComponents(components:)(v4);

  *a1 = v5;
  return result;
}

uint64_t outlined destroy of Parse.DirectInvocation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, _s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in ExperienceSelector.selectPegasusComponents(pegasusResult:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = specialized static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:)();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #2 in ExperienceSelector.selectPegasusComponents(pegasusResult:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = specialized static PegasusComponentsParser.parseLegacyComponents(pegasusResult:)();
  *a1 = result;
  return result;
}

void type metadata completion function for PegasusExperience()
{
  type metadata accessor for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Parse.DirectInvocation();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?)()
{
  if (!lazy cache variable for type metadata for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_sSay10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMd, &_sSay10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMd, &_sSay10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMd, &_sSay10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMd, &_sSay10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch19PommesRenderOptionsCSgMd, &_s21SiriInformationSearch19PommesRenderOptionsCSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?));
    }
  }
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t DetailedResultProvider.init(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:informationViewFactory:patternFlowProvider:patternExecutor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12)
{
  *(a9 + 232) = a1;
  *(a9 + 240) = a2;
  v25 = a3;
  specialized Dictionary._Variant.removeValue(forKey:)(0x64656C6961746564, 0xEC00000074786554, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v18 = swift_dynamicCast();
  v19 = v23;
  v20 = v24;
  if (!v18)
  {
    v20 = 0;
    v19 = 0;
  }

  *a9 = v25;
  *(a9 + 8) = v19;
  *(a9 + 16) = v20;
  strcpy((a9 + 24), "detailedText");
  *(a9 + 37) = 0;
  *(a9 + 38) = -5120;
  *(a9 + 224) = a4;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  outlined init with copy of OutputPublisherAsync(a7, a9 + 40);
  outlined init with copy of OutputPublisherAsync(a8, a9 + 80);
  static PatternFlowProvidingHelper.unwrap(_:with:)(a11, a7, (a9 + 136));
  outlined destroy of Any?(a11, &_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(a8);
  __swift_destroy_boxed_opaque_existential_0Tm(a7);
  *(a9 + 176) = a10;
  return outlined init with take of SiriSuggestionsBroker(a12, a9 + 184);
}

uint64_t DetailedResultProvider.patternId.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return v1;
}

uint64_t DetailedResultProvider.patternId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 240);

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t DetailedResultProvider.content.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t closure #1 in DetailedResultProvider.outputManifest.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PommesContext.Source();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - v14;
  NLContextUpdate.init()();
  v17 = *(a2 + 120);
  v16 = *(a2 + 128);
  *v7 = v17;
  v7[1] = v16;
  (*(v4 + 104))(v7, enum case for PommesContext.Source.pegasusResponse(_:), v3);
  outlined copy of Data?(v17, v16);
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  v18 = type metadata accessor for PommesContext();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  NLContextUpdate.pommesContext.setter();
  v19 = type metadata accessor for NLContextUpdate();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t DetailedResultProvider.makeSingleWindowFlow()()
{
  v1[38] = v0;
  v2 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[40] = v3;
  v4 = *(v3 - 8);
  v1[41] = v4;
  v5 = *(v4 + 64) + 15;
  v1[42] = swift_task_alloc();
  v6 = type metadata accessor for WindowedPaginationParameters();
  v1[43] = v6;
  v7 = *(v6 - 8);
  v1[44] = v7;
  v8 = *(v7 + 64) + 15;
  v1[45] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.makeSingleWindowFlow(), 0, 0);
}

{
  v31 = v0;
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
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeSingleWindowFlow", v4, 2u);
  }

  v5 = *(v0 + 304);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 360);
    v8 = *(*(v0 + 304) + 8);
    WindowedPaginationParameters.init(windowSize:_:)();
    v9 = swift_task_alloc();
    *(v0 + 368) = v9;
    *v9 = v0;
    v9[1] = DetailedResultProvider.makeSingleWindowFlow();
    v10 = *(v0 + 360);
    v11 = *(v0 + 304);

    return DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(v8, v6, v10);
  }

  else
  {
    outlined init with copy of DetailedResultProvider(*(v0 + 304), v0 + 16);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      v17 = *(v0 + 16);
      v18 = Dictionary.description.getter();
      v20 = v19;
      outlined destroy of DetailedResultProvider(v0 + 16);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v30);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_0, v13, v14, "DetailedResultFlowProvider.makeSingleWindow: No content to display from provided parameters %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    else
    {

      outlined destroy of DetailedResultProvider(v0 + 16);
    }

    v22 = *(v0 + 304);
    outlined init with copy of OutputPublisherAsync(v22 + 40, v0 + 264);
    v23 = *(v22 + 176);
    type metadata accessor for ErrorFlowFactory();
    v24 = swift_allocObject();
    outlined init with take of SiriSuggestionsBroker((v0 + 264), v24 + 16);
    *(v24 + 56) = v23;

    v25 = ErrorFlowFactory.makeErrorFlow(message:)(1701736302, 0xE400000000000000);

    v26 = *(v0 + 360);
    v27 = *(v0 + 336);
    v28 = *(v0 + 312);

    v29 = *(v0 + 8);

    return v29(v25);
  }
}

{
  v1 = v0[48];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v13 = v0[40];
  v5 = v0[38];
  v6 = v5[21];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v5;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v7 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v3 + 8))(v2, v13);
  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[39];

  v11 = v0[1];

  return v11(v7);
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[39];

  v4 = v0[1];
  v5 = v0[47];

  return v4();
}

uint64_t DetailedResultProvider.makeSingleWindowFlow()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[47] = v1;

  v7 = v4[45];
  v8 = v4[44];
  v9 = v4[43];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = DetailedResultProvider.makeSingleWindowFlow();
  }

  else
  {
    v4[48] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = DetailedResultProvider.makeSingleWindowFlow();
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Date();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:), 0, 0);
}

void DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)()
{
  v33 = v0;
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
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.executePatternForWindow", v4, 2u);
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);

  v9 = WindowedPaginationParameters.asCATParameters()();
  v10 = *v6;
  v11 = v6[3];
  v12 = v6[4];
  v30 = v10;
  v32 = &type metadata for String;
  *&v31 = v8;
  *(&v31 + 1) = v7;

  specialized Dictionary._Variant.updateValue(_:forKey:)(&v31, v11, v12, (v0 + 16));
  outlined destroy of Any?(v0 + 16, &_sypSgMd, &_sypSgMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v31 = v9;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v30, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v31);

  v14 = v31;
  *(v0 + 112) = v31;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v31 = v18;
    *v17 = 136315138;
    v19 = Dictionary.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v31);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v15, v16, "DetailedResultFlowProvider.executePatternForWindow parameters: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  type metadata accessor for PerformanceUtil();
  *(v0 + 120) = static PerformanceUtil.shared.getter();
  v24 = swift_task_alloc();
  *(v0 + 128) = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v14;
  Date.init()();
  v25 = *(&async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + 1);
  v29 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v26 = swift_task_alloc();
  *(v0 + 136) = v26;
  v27 = type metadata accessor for PatternExecutionResult();
  *v26 = v0;
  v26[1] = DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  v28 = *(v0 + 104);
  v40 = v24;
  v41 = v27;
  v39 = &async function pointer to partial apply for closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  v38 = 2;
  v37 = 60;
  v35 = 116;
  v36 = "executePatternForWindow(windowContent:paginationParameters:)";

  __asm { BR              X8 }
}

uint64_t DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v11 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = v2[14];
    v4 = v2[15];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v6 = DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  }

  else
  {
    v8 = v2[15];
    v7 = v2[16];
    v9 = v2[14];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v6 = DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[6];

  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t DetailedResultProvider.makeWindowingFlowProvider()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(DetailedResultProvider.makeWindowingFlowProvider(), 0, 0);
}

uint64_t DetailedResultProvider.makeWindowingFlowProvider()()
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
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeWindowingFlowProvider", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  outlined init with copy of DetailedResultProvider(v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v5 = type metadata accessor for ConfirmationResponse();
  v4[37] = v5;
  v6 = *(v5 - 8);
  v4[38] = v6;
  v7 = *(v6 + 64) + 15;
  v4[39] = swift_task_alloc();
  v8 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v9 = *(*(type metadata accessor for OutputGenerationManifest() - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v10 = type metadata accessor for WindowedPaginationParameters();
  v4[42] = v10;
  v11 = *(v10 - 8);
  v4[43] = v11;
  v4[44] = *(v11 + 64);
  v4[45] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)()
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
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeWindowFlow", v4, 2u);
  }

  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);
  v9 = *(v0 + 304);
  v36 = *(v0 + 312);
  v37 = *(v0 + 320);
  v10 = *(v0 + 288);
  v35 = *(v0 + 296);
  v11 = *(v0 + 280);
  v33 = *(v0 + 272);
  v34 = *(v0 + 328);
  v12 = *(v0 + 264);

  outlined init with copy of DetailedResultProvider(v10, v0 + 16);
  (*(v8 + 16))(v6, v12, v7);
  v13 = (*(v8 + 80) + 280) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = *(v0 + 224);
  *(v14 + 208) = *(v0 + 208);
  *(v14 + 224) = v15;
  *(v14 + 240) = *(v0 + 240);
  v16 = *(v0 + 256);
  v17 = *(v0 + 160);
  *(v14 + 144) = *(v0 + 144);
  *(v14 + 160) = v17;
  v18 = *(v0 + 192);
  *(v14 + 176) = *(v0 + 176);
  *(v14 + 192) = v18;
  v19 = *(v0 + 96);
  *(v14 + 80) = *(v0 + 80);
  *(v14 + 96) = v19;
  v20 = *(v0 + 128);
  *(v14 + 112) = *(v0 + 112);
  *(v14 + 128) = v20;
  v21 = *(v0 + 32);
  *(v14 + 16) = *(v0 + 16);
  *(v14 + 32) = v21;
  v22 = *(v0 + 64);
  *(v14 + 48) = *(v0 + 48);
  *(v14 + 64) = v22;
  *(v14 + 256) = v16;
  *(v14 + 264) = v33;
  *(v14 + 272) = v11;
  (*(v8 + 32))(v14 + v13, v6, v7);

  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v23 = type metadata accessor for ResponseFactory();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  ResponseFactory.init()();
  v26 = type metadata accessor for SimpleYesNoPromptFlowStrategy();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  SimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)();
  v29 = v10[21];
  __swift_project_boxed_opaque_existential_1(v10 + 17, v10[20]);
  (*(v9 + 104))(v36, enum case for ConfirmationResponse.confirmed(_:), v35);
  v30 = dispatch thunk of PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(strategy:shouldContinueForResponse:)();

  (*(v9 + 8))(v36, v35);

  v31 = *(v0 + 8);

  return v31(v30);
}

uint64_t closure #1 in DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = PatternExecutor.execute(pattern:in:with:deviceState:);

  return DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(a2, a3, a4);
}

uint64_t DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
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
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeFinalWindowFlow", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(v9, v6, v8);
}

{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v10 = v0[7];
  v5 = v0[5];
  v6 = v5[21];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v5;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v7 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v3 + 8))(v2, v10);

  v8 = v0[1];

  return v8(v7);
}

uint64_t DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[6];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[11] = a1;

    return _swift_task_switch(DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
  }
}

uint64_t closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:), 0, 0);
}

uint64_t closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)()
{
  v1 = v0[3];
  v2 = v1[26];
  v3 = v1[27];
  __swift_project_boxed_opaque_existential_1(v1 + 23, v2);
  v5 = v1[29];
  v4 = v1[30];
  v6 = v1[28];
  v7 = *(v3 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v10 = v0[4];

  return (v12)(v5, v4, v6, v10, v1 + 10, v2, v3);
}

uint64_t protocol witness for DetailedResultFlowProvider.makeSingleWindowFlow() in conformance DetailedResultProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return DetailedResultProvider.makeSingleWindowFlow()();
}

uint64_t protocol witness for DetailedResultFlowProvider.makeWindowingFlowProvider() in conformance DetailedResultProvider(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return DetailedResultProvider.makeWindowingFlowProvider()(a1);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance DetailedResultProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(a1, v4, v5);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance DetailedResultProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(a1, v4, v5);
}

uint64_t sub_B2148()
{
  v1 = type metadata accessor for WindowedPaginationParameters();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v8 = *(v0 + 144);
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 136), v8);
  }

  v9 = (v3 + 280) & ~v3;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));
  v10 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 200));

  v11 = *(v0 + 256);

  v12 = *(v0 + 272);

  (*(v2 + 8))(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v2 = *(type metadata accessor for WindowedPaginationParameters() - 8);
  v3 = (*(v2 + 80) + 280) & ~*(v2 + 80);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);

  return closure #1 in DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(v0 + 16, v4, v5, v0 + v3);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailedResultProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t storeEnumTagSinglePayload for DetailedResultProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 48 * v21);
      if (v36)
      {
        outlined init with take of Decodable & Encodable & Sendable(v25, v37);
      }

      else
      {
        outlined init with copy of Decodable & Encodable & Sendable(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Decodable & Encodable & Sendable(v37, (*(v8 + 56) + 48 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        outlined copy of Data._Representation(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        outlined init with copy of Decodable & Encodable & Sendable(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Decodable & Encodable & Sendable(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = outlined copy of Data._Representation(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    outlined init with take of Any(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return outlined destroy of Any?(v22, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(a1, v5, v4);
}

uint64_t outlined init with copy of Decodable & Encodable & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static PatternFlowProvidingHelper.unwrap(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of PatternFlowProviding?(a1, v13);
  if (v14)
  {
    outlined init with take of OutputPublisherAsync(v13, v16);
    return outlined init with take of OutputPublisherAsync(v16, a3);
  }

  else
  {
    outlined destroy of PatternFlowProviding?(v13);
    outlined init with copy of OutputPublisherAsync(a2, v16);
    v6 = type metadata accessor for ResponseFactory();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = ResponseFactory.init()();
    v14 = v6;
    v15 = &protocol witness table for ResponseFactory;
    v13[0] = v9;
    v10 = type metadata accessor for PatternFlowProvider();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    result = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
    a3[3] = v10;
    a3[4] = &protocol witness table for PatternFlowProvider;
    *a3 = result;
  }

  return result;
}

uint64_t outlined init with copy of PatternFlowProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Builder.subscript.setter()
{
  return Builder.subscript.setter();
}

{
  return Builder.subscript.setter();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = Message.textFormatString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()()
{
  v0 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}