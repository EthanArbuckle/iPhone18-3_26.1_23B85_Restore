void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextC_Tt1g5(uint64_t a1, int a2)
{
  v92 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v80 - v10;
  __chkstk_darwin(v9);
  v13 = v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v80 - v20;
  __chkstk_darwin(v19);
  v23 = v80 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v93 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v88 = v4;
      v89 = v3;
      v86 = a2;
      v90 = v23;
      v91 = v25;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextCmMd, &_sSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextCmMR);
      v87 = String.init<A>(describing:)();
      v27 = v26;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v28 = dispatch thunk of FlowTaskProvider.id.getter();
      v30 = v29;

      if (v30)
      {
        v31 = v90;
        v85 = v28;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v31, v21);
        v32 = v89;
        if (__swift_getEnumTagSinglePayload(v21, 1, v89) == 1)
        {
          v33 = v30;
          outlined destroy of UUID?(v21);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.voiceCommands);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v37 = 136315394;
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v33, &ObjectType);

            *(v37 + 4) = v38;
            *(v37 + 12) = 2080;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v27, &ObjectType);

            *(v37 + 14) = v39;
            _os_log_impl(&dword_0, v35, v36, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v60 = v31;
        }

        else
        {
          v84 = v30;
          v47 = v88;
          v48 = v32;
          v81 = *(v88 + 32);
          v82 = v88 + 32;
          v81(v13, v21, v32);
          v49 = static InstrumentationUtils.createFlowId()();
          if (v49)
          {
            v50 = v49;

            v51 = type metadata accessor for SISchemaUUID();
            v52 = *(v47 + 16);
            v83 = v13;
            v53 = v13;
            v54 = v48;
            v80[0] = v52;
            v52(v11, v53, v48);
            v80[1] = v51;
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v56 = v91;
            [v91 setTaskId:v55];

            v87 = v50;
            [v56 setFlowId:v50];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v54) == 1)
              {
                outlined destroy of UUID?(v18);
                v59 = v91;
              }

              else
              {
                v81(v8, v18, v54);
                (v80[0])(v11, v8, v54);
                v72 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v59 = v91;
                [v91 setTrpId:v72];

                (*(v88 + 8))(v8, v54);
              }

              v70 = v90;
              v71 = v83;
              v69 = String._bridgeToObjectiveC()();
            }

            else
            {
              v69 = 0;
              v70 = v90;
              v59 = v91;
              v71 = v83;
            }

            [v59 setResultCandidateId:v69];

            [v93 setEventMetadata:v59];
            objc_opt_self();
            v73 = v92;
            v74 = swift_dynamicCastObjCClass();
            v75 = v88;
            v76 = v86;
            v77 = v85;
            if (v74)
            {
              [v93 setLinkActionContext:v74];
            }

            else
            {
              [v93 setEntityDisambiguationContext:v73];
            }

            v78 = [objc_opt_self() sharedStream];
            [v78 emitMessage:v93];
            swift_unknownObjectRelease();
            v79 = v87;
            if (v76)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v77, v84, v87);
            }

            (*(v75 + 8))(v71, v89);
            v60 = v70;
          }

          else
          {

            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            __swift_project_value_buffer(v61, static Logger.voiceCommands);

            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.error.getter();

            v64 = os_log_type_enabled(v62, v63);
            v65 = v90;
            if (v64)
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              ObjectType = v67;
              *v66 = 136315138;
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v27, &ObjectType);

              *(v66 + 4) = v68;
              _os_log_impl(&dword_0, v62, v63, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v67);
            }

            else
            {
            }

            (*(v88 + 8))(v13, v89);
            v60 = v65;
          }
        }

        outlined destroy of UUID?(v60);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.voiceCommands);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          ObjectType = v45;
          *v44 = 136315138;
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v27, &ObjectType);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_0, v42, v43, "#SLF SELF Log, current taskId is nil, cannot emit %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
        }

        else
        {
        }
      }
    }

    else
    {
      v40 = v93;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextC_Tt1g5(uint64_t a1, int a2)
{
  v99 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v86 - v10;
  __chkstk_darwin(v9);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v86 - v20;
  __chkstk_darwin(v19);
  v23 = &v86 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v96 = a2;
    v100 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v97 = v25;
      v98 = v23;
      v94 = v13;
      v95 = v4;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMd, &_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v92 = v26;
        v32 = v28;
        v33 = v3;
        v34 = v98;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v34, v21);
        if (__swift_getEnumTagSinglePayload(v21, 1, v33) == 1)
        {
          v35 = v29;
          outlined destroy of UUID?(v21);
          v36 = v32;
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          __swift_project_value_buffer(v37, static Logger.voiceCommands);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v40 = 136315394;
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v31, &ObjectType);

            *(v40 + 4) = v41;
            *(v40 + 12) = 2080;
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v36, &ObjectType);

            *(v40 + 14) = v42;
            _os_log_impl(&dword_0, v38, v39, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v40, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v90 = v29;
          v91 = v31;
          v51 = v94;
          v50 = v95;
          v89 = *(v95 + 32);
          v89(v94, v21, v33);
          v52 = static InstrumentationUtils.createFlowId()();
          v93 = v33;
          v53 = v32;
          if (v52)
          {
            v54 = v52;

            v55 = type metadata accessor for SISchemaUUID();
            v87 = *(v50 + 16);
            v87(v11, v51, v93);
            v88 = v55;
            v56 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v57 = v97;
            [v97 setTaskId:v56];

            v92 = v54;
            [v57 setFlowId:v54];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v59 = v58;

            if (v59)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v93) == 1)
              {
                v60 = v93;
                outlined destroy of UUID?(v18);
                v61 = v97;
                v62 = v98;
                v63 = v95;
              }

              else
              {
                v75 = v93;
                v89(v8, v18, v93);
                v87(v11, v8, v75);
                v76 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v61 = v97;
                [v97 setTrpId:v76];

                v63 = v95;
                v60 = v75;
                (*(v95 + 8))(v8, v75);
                v62 = v98;
              }

              v74 = v91;
              v73 = String._bridgeToObjectiveC()();
            }

            else
            {
              v60 = v93;
              v73 = 0;
              v61 = v97;
              v62 = v98;
              v63 = v95;
              v74 = v91;
            }

            [v61 setResultCandidateId:v73];

            [v100 setEventMetadata:v61];
            objc_opt_self();
            v77 = v99;
            v78 = swift_dynamicCastObjCClass();
            v79 = v94;
            if (v78)
            {
              [v100 setLinkActionContext:v78];
            }

            else
            {
              objc_opt_self();
              v80 = swift_dynamicCastObjCClass();
              if (v80)
              {
                [v100 setEntityDisambiguationContext:v80];
              }

              else
              {
                objc_opt_self();
                v82 = swift_dynamicCastObjCClass();
                if (v82)
                {
                  [v100 setActionConversionContext:v82];
                }

                else
                {
                  objc_opt_self();
                  v83 = swift_dynamicCastObjCClass();
                  if (v83)
                  {
                    [v100 setActionExecutionContext:v83];
                  }

                  else
                  {
                    [v100 setActionPromptForValueContext:v77];
                  }
                }
              }
            }

            v84 = [objc_opt_self() sharedStream];
            [v84 emitMessage:v100];
            swift_unknownObjectRelease();
            v85 = v92;
            if (v96)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v90, v74, v92);
            }

            (*(v63 + 8))(v79, v60);
            v81 = v62;
            goto LABEL_44;
          }

          v64 = v93;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.voiceCommands);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v97;
          if (v68)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            ObjectType = v71;
            *v70 = 136315138;
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v53, &ObjectType);

            *(v70 + 4) = v72;
            _os_log_impl(&dword_0, v66, v67, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
          }

          else
          {
          }

          (*(v95 + 8))(v94, v64);
        }

        v81 = v98;
LABEL_44:
        outlined destroy of UUID?(v81);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.voiceCommands);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        ObjectType = v48;
        *v47 = 136315138;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &ObjectType);

        *(v47 + 4) = v49;
        _os_log_impl(&dword_0, v45, v46, "#SLF SELF Log, current taskId is nil, cannot emit %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
      }

      else
      {
      }
    }

    else
    {
      v43 = v100;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextC_Tt1g5(uint64_t a1, int a2)
{
  v101 = a1;
  v100 = type metadata accessor for UUID();
  v3 = *(v100 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v100);
  v7 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v90 - v9;
  __chkstk_darwin(v8);
  v12 = v90 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v90 - v19;
  __chkstk_darwin(v18);
  v22 = v90 - v21;
  v23 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v23)
  {
    v98 = a2;
    v102 = v23;
    v24 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v24)
    {
      v25 = v24;
      v96 = v12;
      v97 = v3;
      v99 = v22;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMd, &_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v95 = v26;
        v32 = v99;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v32, v20);
        v33 = v100;
        if (__swift_getEnumTagSinglePayload(v20, 1, v100) == 1)
        {
          v34 = v29;
          outlined destroy of UUID?(v20);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, static Logger.voiceCommands);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v38 = 136315394;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v31, &ObjectType);
            v40 = v25;
            v41 = v39;

            *(v38 + 4) = v41;
            *(v38 + 12) = 2080;
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v28, &ObjectType);

            *(v38 + 14) = v42;
            _os_log_impl(&dword_0, v36, v37, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v38, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v92 = v29;
          v93 = v31;
          v94 = v25;
          v54 = v96;
          v53 = v97;
          v55 = v97 + 32;
          v91 = *(v97 + 32);
          v91(v96, v20, v33);
          v56 = static InstrumentationUtils.createFlowId()();
          if (v56)
          {
            v57 = v56;
            v90[1] = v55;

            v58 = type metadata accessor for SISchemaUUID();
            v59 = *(v53 + 16);
            v59(v10, v54, v33);
            v90[2] = v58;
            v60 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
            v61 = v94;
            [v94 setTaskId:v60];

            v95 = v57;
            [v61 setFlowId:v57];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v63 = v62;

            if (v63)
            {

              UUID.init(uuidString:)();

              v64 = v33;
              if (__swift_getEnumTagSinglePayload(v17, 1, v33) == 1)
              {
                outlined destroy of UUID?(v17);
                v65 = v94;
                v66 = v99;
                v67 = v97;
              }

              else
              {
                v91(v7, v17, v33);
                v59(v10, v7, v33);
                v79 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
                v65 = v94;
                [v94 setTrpId:v79];

                v67 = v97;
                (*(v97 + 8))(v7, v33);
                v66 = v99;
              }

              v78 = v93;
              v77 = String._bridgeToObjectiveC()();
            }

            else
            {
              v77 = 0;
              v78 = v93;
              v65 = v94;
              v66 = v99;
              v67 = v97;
              v64 = v33;
            }

            [v65 setResultCandidateId:v77];

            [v102 setEventMetadata:v65];
            objc_opt_self();
            v80 = v101;
            v81 = swift_dynamicCastObjCClass();
            v82 = v96;
            if (v81)
            {
              [v102 setLinkActionContext:v81];
            }

            else
            {
              objc_opt_self();
              v83 = swift_dynamicCastObjCClass();
              if (v83)
              {
                [v102 setEntityDisambiguationContext:v83];
              }

              else
              {
                objc_opt_self();
                v85 = swift_dynamicCastObjCClass();
                if (v85)
                {
                  [v102 setActionConversionContext:v85];
                }

                else
                {
                  objc_opt_self();
                  v86 = swift_dynamicCastObjCClass();
                  if (v86)
                  {
                    [v102 setActionExecutionContext:v86];
                  }

                  else
                  {
                    objc_opt_self();
                    v87 = swift_dynamicCastObjCClass();
                    if (v87)
                    {
                      [v102 setActionPromptForValueContext:v87];
                    }

                    else
                    {
                      [v102 setActionParameterDisambiguationContext:v80];
                    }
                  }
                }
              }
            }

            v88 = [objc_opt_self() sharedStream];
            [v88 emitMessage:v102];
            swift_unknownObjectRelease();
            v89 = v95;
            if (v98)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v92, v78, v95);
            }

            (*(v67 + 8))(v82, v64);
            v84 = v66;
            goto LABEL_45;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v94;
          v73 = v100;
          if (v71)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            ObjectType = v75;
            *v74 = 136315138;
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v28, &ObjectType);

            *(v74 + 4) = v76;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
          }

          else
          {
          }

          (*(v97 + 8))(v96, v73);
        }

        v84 = v99;
LABEL_45:
        outlined destroy of UUID?(v84);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.voiceCommands);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v26;
        v50 = v48;
        ObjectType = v48;
        *v47 = 136315138;
        v51 = v25;
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v28, &ObjectType);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_0, v45, v46, "#SLF SELF Log, current taskId is nil, cannot emit %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      else
      {
      }
    }

    else
    {
      v43 = v102;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextC_Tt1g5(uint64_t a1, int a2)
{
  v102 = a1;
  v101 = type metadata accessor for UUID();
  v3 = *(v101 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v101);
  v7 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v91 - v9;
  __chkstk_darwin(v8);
  v12 = v91 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v91 - v19;
  __chkstk_darwin(v18);
  v22 = v91 - v21;
  v23 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v23)
  {
    v99 = a2;
    v103 = v23;
    v24 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v24)
    {
      v25 = v24;
      v97 = v12;
      v98 = v3;
      v100 = v22;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMd, &_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v96 = v26;
        v32 = v100;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v32, v20);
        v33 = v101;
        if (__swift_getEnumTagSinglePayload(v20, 1, v101) == 1)
        {
          v34 = v29;
          outlined destroy of UUID?(v20);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, static Logger.voiceCommands);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v38 = 136315394;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v31, &ObjectType);
            v40 = v25;
            v41 = v39;

            *(v38 + 4) = v41;
            *(v38 + 12) = 2080;
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v28, &ObjectType);

            *(v38 + 14) = v42;
            _os_log_impl(&dword_0, v36, v37, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v38, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v93 = v29;
          v94 = v31;
          v95 = v25;
          v54 = v97;
          v53 = v98;
          v55 = v98 + 32;
          v92 = *(v98 + 32);
          v92(v97, v20, v33);
          v56 = static InstrumentationUtils.createFlowId()();
          if (v56)
          {
            v57 = v56;
            v91[1] = v55;

            v58 = type metadata accessor for SISchemaUUID();
            v59 = *(v53 + 16);
            v59(v10, v54, v33);
            v91[2] = v58;
            v60 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
            v61 = v95;
            [v95 setTaskId:v60];

            v96 = v57;
            [v61 setFlowId:v57];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v63 = v62;

            if (v63)
            {

              UUID.init(uuidString:)();

              v64 = v33;
              if (__swift_getEnumTagSinglePayload(v17, 1, v33) == 1)
              {
                outlined destroy of UUID?(v17);
                v65 = v95;
                v66 = v100;
                v67 = v98;
              }

              else
              {
                v92(v7, v17, v33);
                v59(v10, v7, v33);
                v79 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
                v65 = v95;
                [v95 setTrpId:v79];

                v67 = v98;
                (*(v98 + 8))(v7, v33);
                v66 = v100;
              }

              v78 = v94;
              v77 = String._bridgeToObjectiveC()();
            }

            else
            {
              v77 = 0;
              v78 = v94;
              v65 = v95;
              v66 = v100;
              v67 = v98;
              v64 = v33;
            }

            [v65 setResultCandidateId:v77];

            [v103 setEventMetadata:v65];
            objc_opt_self();
            v80 = v102;
            v81 = swift_dynamicCastObjCClass();
            v82 = v97;
            if (v81)
            {
              [v103 setLinkActionContext:v81];
            }

            else
            {
              objc_opt_self();
              v83 = swift_dynamicCastObjCClass();
              if (v83)
              {
                [v103 setEntityDisambiguationContext:v83];
              }

              else
              {
                objc_opt_self();
                v85 = swift_dynamicCastObjCClass();
                if (v85)
                {
                  [v103 setActionConversionContext:v85];
                }

                else
                {
                  objc_opt_self();
                  v86 = swift_dynamicCastObjCClass();
                  if (v86)
                  {
                    [v103 setActionExecutionContext:v86];
                  }

                  else
                  {
                    objc_opt_self();
                    v87 = swift_dynamicCastObjCClass();
                    if (v87)
                    {
                      [v103 setActionPromptForValueContext:v87];
                    }

                    else
                    {
                      objc_opt_self();
                      v88 = swift_dynamicCastObjCClass();
                      if (v88)
                      {
                        [v103 setActionParameterDisambiguationContext:v88];
                      }

                      else
                      {
                        [v103 setActionParameterConfirmationContext:v80];
                      }
                    }
                  }
                }
              }
            }

            v89 = [objc_opt_self() sharedStream];
            [v89 emitMessage:v103];
            swift_unknownObjectRelease();
            v90 = v96;
            if (v99)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v93, v78, v96);
            }

            (*(v67 + 8))(v82, v64);
            v84 = v66;
            goto LABEL_47;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v95;
          v73 = v101;
          if (v71)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            ObjectType = v75;
            *v74 = 136315138;
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v28, &ObjectType);

            *(v74 + 4) = v76;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
          }

          else
          {
          }

          (*(v98 + 8))(v97, v73);
        }

        v84 = v100;
LABEL_47:
        outlined destroy of UUID?(v84);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.voiceCommands);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v26;
        v50 = v48;
        ObjectType = v48;
        *v47 = 136315138;
        v51 = v25;
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v28, &ObjectType);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_0, v45, v46, "#SLF SELF Log, current taskId is nil, cannot emit %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      else
      {
      }
    }

    else
    {
      v43 = v103;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo47FLOWLINKSchemaFLOWLINKActionConfirmationContextC_Tt1g5(uint64_t a1, int a2)
{
  v103 = a1;
  v102 = type metadata accessor for UUID();
  v3 = *(v102 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v102);
  v7 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v92 - v9;
  __chkstk_darwin(v8);
  v12 = v92 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v92 - v19;
  __chkstk_darwin(v18);
  v22 = v92 - v21;
  v23 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v23)
  {
    v100 = a2;
    v104 = v23;
    v24 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v24)
    {
      v25 = v24;
      v98 = v12;
      v99 = v3;
      v101 = v22;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo47FLOWLINKSchemaFLOWLINKActionConfirmationContextCmMd, &_sSo47FLOWLINKSchemaFLOWLINKActionConfirmationContextCmMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v97 = v26;
        v32 = v101;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v32, v20);
        v33 = v102;
        if (__swift_getEnumTagSinglePayload(v20, 1, v102) == 1)
        {
          v34 = v29;
          outlined destroy of UUID?(v20);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, static Logger.voiceCommands);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v38 = 136315394;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v31, &ObjectType);
            v40 = v25;
            v41 = v39;

            *(v38 + 4) = v41;
            *(v38 + 12) = 2080;
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v28, &ObjectType);

            *(v38 + 14) = v42;
            _os_log_impl(&dword_0, v36, v37, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v38, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v94 = v29;
          v95 = v31;
          v96 = v25;
          v54 = v98;
          v53 = v99;
          v55 = v99 + 32;
          v93 = *(v99 + 32);
          v93(v98, v20, v33);
          v56 = static InstrumentationUtils.createFlowId()();
          if (v56)
          {
            v57 = v56;
            v92[1] = v55;

            v58 = type metadata accessor for SISchemaUUID();
            v59 = *(v53 + 16);
            v59(v10, v54, v33);
            v92[2] = v58;
            v60 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
            v61 = v96;
            [v96 setTaskId:v60];

            v97 = v57;
            [v61 setFlowId:v57];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v63 = v62;

            if (v63)
            {

              UUID.init(uuidString:)();

              v64 = v33;
              if (__swift_getEnumTagSinglePayload(v17, 1, v33) == 1)
              {
                outlined destroy of UUID?(v17);
                v65 = v96;
                v66 = v101;
                v67 = v99;
              }

              else
              {
                v93(v7, v17, v33);
                v59(v10, v7, v33);
                v79 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
                v65 = v96;
                [v96 setTrpId:v79];

                v67 = v99;
                (*(v99 + 8))(v7, v33);
                v66 = v101;
              }

              v78 = v95;
              v77 = String._bridgeToObjectiveC()();
            }

            else
            {
              v77 = 0;
              v78 = v95;
              v65 = v96;
              v66 = v101;
              v67 = v99;
              v64 = v33;
            }

            [v65 setResultCandidateId:v77];

            [v104 setEventMetadata:v65];
            objc_opt_self();
            v80 = v103;
            v81 = swift_dynamicCastObjCClass();
            v82 = v98;
            if (v81)
            {
              [v104 setLinkActionContext:v81];
            }

            else
            {
              objc_opt_self();
              v83 = swift_dynamicCastObjCClass();
              if (v83)
              {
                [v104 setEntityDisambiguationContext:v83];
              }

              else
              {
                objc_opt_self();
                v85 = swift_dynamicCastObjCClass();
                if (v85)
                {
                  [v104 setActionConversionContext:v85];
                }

                else
                {
                  objc_opt_self();
                  v86 = swift_dynamicCastObjCClass();
                  if (v86)
                  {
                    [v104 setActionExecutionContext:v86];
                  }

                  else
                  {
                    objc_opt_self();
                    v87 = swift_dynamicCastObjCClass();
                    if (v87)
                    {
                      [v104 setActionPromptForValueContext:v87];
                    }

                    else
                    {
                      objc_opt_self();
                      v88 = swift_dynamicCastObjCClass();
                      if (v88)
                      {
                        [v104 setActionParameterDisambiguationContext:v88];
                      }

                      else
                      {
                        objc_opt_self();
                        v89 = swift_dynamicCastObjCClass();
                        if (v89)
                        {
                          [v104 setActionParameterConfirmationContext:v89];
                        }

                        else
                        {
                          [v104 setActionConfirmationContext:v80];
                        }
                      }
                    }
                  }
                }
              }
            }

            v90 = [objc_opt_self() sharedStream];
            [v90 emitMessage:v104];
            swift_unknownObjectRelease();
            v91 = v97;
            if (v100)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v94, v78, v97);
            }

            (*(v67 + 8))(v82, v64);
            v84 = v66;
            goto LABEL_49;
          }

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v96;
          v73 = v102;
          if (v71)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            ObjectType = v75;
            *v74 = 136315138;
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v28, &ObjectType);

            *(v74 + 4) = v76;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
          }

          else
          {
          }

          (*(v99 + 8))(v98, v73);
        }

        v84 = v101;
LABEL_49:
        outlined destroy of UUID?(v84);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.voiceCommands);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v26;
        v50 = v48;
        ObjectType = v48;
        *v47 = 136315138;
        v51 = v25;
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v28, &ObjectType);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_0, v45, v46, "#SLF SELF Log, current taskId is nil, cannot emit %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      else
      {
      }
    }

    else
    {
      v43 = v104;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo60FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContextC_Tt1g5(uint64_t a1, int a2)
{
  v104 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v93 - v10;
  __chkstk_darwin(v9);
  v13 = &v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v93 - v20;
  __chkstk_darwin(v19);
  v23 = &v93 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v101 = a2;
    v105 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v26 = v25;
      v99 = v13;
      v100 = v4;
      v103 = v23;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo60FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContextCmMd, &_sSo60FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContextCmMR);
      v98 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v102 = v3;
        v32 = v103;
        UUID.init(uuidString:)();
        v33 = v32;
        v34 = v102;
        outlined init with copy of UUID?(v33, v21);
        if (__swift_getEnumTagSinglePayload(v21, 1, v34) == 1)
        {
          v35 = v29;
          outlined destroy of UUID?(v21);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.voiceCommands);

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v39 = 136315394;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v31, &ObjectType);
            v41 = v26;
            v42 = v40;

            *(v39 + 4) = v42;
            *(v39 + 12) = 2080;
            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v28, &ObjectType);

            *(v39 + 14) = v43;
            _os_log_impl(&dword_0, v37, v38, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v39, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v95 = v29;
          v96 = v31;
          v97 = v26;
          v53 = v99;
          v52 = v100;
          v94 = *(v100 + 32);
          v94(v99, v21, v34);
          v54 = static InstrumentationUtils.createFlowId()();
          if (v54)
          {
            v55 = v54;

            v56 = type metadata accessor for SISchemaUUID();
            v57 = *(v52 + 16);
            v57(v11, v53, v102);
            v93 = v56;
            v58 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v59 = v97;
            [v97 setTaskId:v58];

            v98 = v55;
            [v59 setFlowId:v55];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v61 = v60;

            if (v61)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v102) == 1)
              {
                outlined destroy of UUID?(v18);
                v63 = v96;
                v62 = v97;
                v65 = v102;
                v64 = v103;
                v66 = v100;
              }

              else
              {
                v65 = v102;
                v94(v8, v18, v102);
                v57(v11, v8, v65);
                v77 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v62 = v97;
                [v97 setTrpId:v77];

                v66 = v100;
                (*(v100 + 8))(v8, v65);
                v64 = v103;
                v63 = v96;
              }

              v76 = String._bridgeToObjectiveC()();
            }

            else
            {
              v76 = 0;
              v63 = v96;
              v62 = v97;
              v65 = v102;
              v64 = v103;
              v66 = v100;
            }

            [v62 setResultCandidateId:v76];

            [v105 setEventMetadata:v62];
            objc_opt_self();
            v78 = swift_dynamicCastObjCClass();
            v79 = v99;
            if (v78)
            {
              [v105 setLinkActionContext:v78];
            }

            else
            {
              objc_opt_self();
              v80 = swift_dynamicCastObjCClass();
              if (v80)
              {
                [v105 setEntityDisambiguationContext:v80];
              }

              else
              {
                objc_opt_self();
                v82 = swift_dynamicCastObjCClass();
                if (v82)
                {
                  [v105 setActionConversionContext:v82];
                }

                else
                {
                  objc_opt_self();
                  v83 = swift_dynamicCastObjCClass();
                  if (v83)
                  {
                    [v105 setActionExecutionContext:v83];
                  }

                  else
                  {
                    objc_opt_self();
                    v84 = swift_dynamicCastObjCClass();
                    if (v84)
                    {
                      [v105 setActionPromptForValueContext:v84];
                    }

                    else
                    {
                      objc_opt_self();
                      v85 = swift_dynamicCastObjCClass();
                      if (v85)
                      {
                        [v105 setActionParameterDisambiguationContext:v85];
                      }

                      else
                      {
                        objc_opt_self();
                        v86 = swift_dynamicCastObjCClass();
                        if (v86)
                        {
                          [v105 setActionParameterConfirmationContext:v86];
                        }

                        else
                        {
                          objc_opt_self();
                          v87 = swift_dynamicCastObjCClass();
                          if (v87)
                          {
                            [v105 setActionConfirmationContext:v87];
                          }

                          else
                          {
                            objc_opt_self();
                            v90 = swift_dynamicCastObjCClass();
                            if (v90)
                            {
                              [v105 setAutoShortcutTemplateUsed:v90];
                            }

                            else
                            {
                              objc_opt_self();
                              v91 = swift_dynamicCastObjCClass();
                              if (v91)
                              {
                                [v105 setLinkActionTier1:v91];
                              }

                              else
                              {
                                objc_opt_self();
                                v92 = swift_dynamicCastObjCClass();
                                if (v92)
                                {
                                  [v105 setActionParameterUpdated:v92];
                                }

                                else
                                {
                                  [v105 setAppShortcutFirstRunConfirmationContext:v104];
                                }
                              }
                            }

                            v63 = v96;
                            v62 = v97;
                            v65 = v102;
                            v64 = v103;
                            v79 = v99;
                            v66 = v100;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v88 = [objc_opt_self() sharedStream];
            [v88 emitMessage:v105];
            swift_unknownObjectRelease();
            v89 = v98;
            if (v101)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v95, v63, v98);
            }

            (*(v66 + 8))(v79, v65);
            v81 = v64;
            goto LABEL_51;
          }

          v67 = v102;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v97;
          if (v71)
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            ObjectType = v74;
            *v73 = 136315138;
            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v28, &ObjectType);

            *(v73 + 4) = v75;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v74);
          }

          else
          {
          }

          (*(v100 + 8))(v99, v67);
        }

        v81 = v103;
LABEL_51:
        outlined destroy of UUID?(v81);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.voiceCommands);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        ObjectType = v49;
        *v48 = 136315138;
        v50 = v26;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v28, &ObjectType);

        *(v48 + 4) = v51;
        _os_log_impl(&dword_0, v46, v47, "#SLF SELF Log, current taskId is nil, cannot emit %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
      }

      else
      {
      }
    }

    else
    {
      v44 = v105;
    }
  }
}

id static InstrumentationUtils.createFlowId()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  static InstrumentationUtils.createFlowUUID()(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of UUID?(v3);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#SLF SELF Log, invalid executionRequestId string, cannot derive flowId form it", v18, 2u);
    }

    return 0;
  }

  else
  {
    (*(v5 + 32))(v14, v3, v4);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v35 = *(v5 + 16);
    v35(v12, v14, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = v23;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v23 = 136315138;
      v32 = v22;
      v24 = UUID.uuidString.getter();
      v34 = v9;
      v26 = v25;
      v27 = *(v5 + 8);
      v27(v12, v4);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v36);
      v9 = v34;

      v29 = v31;
      *(v31 + 1) = v28;
      _os_log_impl(&dword_0, v21, v32, "#SLF SELF Log, created flowId: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
    }

    else
    {

      v27 = *(v5 + 8);
      v27(v12, v4);
    }

    type metadata accessor for SISchemaUUID();
    v35(v9, v14, v4);
    v19 = SISchemaUUID.__allocating_init(nsuuid:)(v9);
    v27(v14, v4);
  }

  return v19;
}

void static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = type metadata accessor for UUID();
  v60 = *(v12 - 8);
  v13 = *(v60 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  v22 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (v22)
  {
    v23 = v22;
    v59 = a1;
    v62 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
    if (v62)
    {
      v24 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
      if (v24)
      {
        v58 = v24;
        v25 = v62;
        [v62 setComponent:3];
        [v25 setUuid:v61];
        static InstrumentationUtils.getOrchestrationRequestId()(v11);
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          outlined destroy of UUID?(v11);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logger.voiceCommands);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_0, v27, v28, "#SLF SELF Log - current executionRequestId is not a valid UUID String, cannot emit request link info", v29, 2u);
          }
        }

        else
        {
          v35 = v60;
          (*(v60 + 32))(v21, v11, v12);
          v36 = v58;
          [v58 setComponent:1];
          type metadata accessor for SISchemaUUID();
          v57 = *(v35 + 16);
          v57(v19, v21, v12);
          v37 = SISchemaUUID.__allocating_init(nsuuid:)(v19);
          [v36 setUuid:v37];

          [v23 setSource:v62];
          [v23 setTarget:v36];
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          __swift_project_value_buffer(v38, static Logger.voiceCommands);
          v57(v16, v21, v12);

          v39 = v61;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v40, v41))
          {
            LODWORD(v57) = v41;
            v61 = v40;
            v42 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v63 = v56;
            *v42 = 136315650;
            *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, a2, &v63);
            *(v42 + 12) = 2080;
            SISchemaUUID.asUUID()();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v12);
            v44 = v60;
            if (EnumTagSinglePayload == 1)
            {
              outlined destroy of UUID?(v9);
              v45 = 0;
              v46 = 0xE000000000000000;
            }

            else
            {
              v45 = UUID.uuidString.getter();
              v46 = v48;
              (*(v44 + 8))(v9, v12);
            }

            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v63);

            *(v42 + 14) = v49;
            *(v42 + 22) = 2080;
            lazy protocol witness table accessor for type UUID and conformance UUID();
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v52 = v51;
            v47 = *(v44 + 8);
            v47(v16, v12);
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v63);

            *(v42 + 24) = v53;
            v54 = v61;
            _os_log_impl(&dword_0, v61, v57, "#SLF SELF Log - emitting RequestLink for taskId: %s, flowId:%s, executionRequestId: %s", v42, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v47 = *(v60 + 8);
            v47(v16, v12);
          }

          v55 = v62;
          [objc_msgSend(objc_opt_self() "sharedStream")];

          swift_unknownObjectRelease();
          v47(v21, v12);
        }

        return;
      }

      v23 = v62;
    }

    a1 = v59;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.voiceCommands);

  v62 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v63 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v63);
    _os_log_impl(&dword_0, v62, v31, "#SLF SELF Log - unable to create request link info for SELF for taskId: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  else
  {
    v34 = v62;
  }
}

void static InstrumentationUtils.createFlowUUID()(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v66[-v9];
  v11 = type metadata accessor for UUID();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_34_7();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_44_4();
  v23 = __chkstk_darwin(v22);
  v25 = &v66[-v24];
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_33_4();
  static InstrumentationUtils.getOrchestrationRequestId()(v10);
  v26 = OUTLINED_FUNCTION_14_12();
  if (__swift_getEnumTagSinglePayload(v26, v27, v11) == 1)
  {
    outlined destroy of UUID?(v10);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v28, static Logger.voiceCommands);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "#SLF SELF Log, invalid executionRequestId string, cannot derive flowId form it", v31, 2u);
      OUTLINED_FUNCTION_15_0();
    }

LABEL_7:
    v32 = 1;
    goto LABEL_19;
  }

  v70 = *(v14 + 32);
  v71 = (v14 + 32);
  v70(v1, v10, v11);
  v33 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v35 = [v33 derivedIdentifierForComponentName:3 fromSourceIdentifier:isa];

  if (!v35)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v52, static Logger.voiceCommands);
    (*(v14 + 16))(v19, v1, v11);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_48();
      v71 = OUTLINED_FUNCTION_85();
      v72 = v71;
      *v55 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = a1;
      v58 = v57;
      v59 = *(v14 + 8);
      v59(v19, v11);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v72);
      a1 = v69;

      *(v55 + 4) = v60;
      _os_log_impl(&dword_0, v53, v54, "#SLF SELF Log, failed to created from: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();

      v61 = OUTLINED_FUNCTION_20_4();
      (v59)(v61);
    }

    else
    {

      v64 = *(v14 + 8);
      v64(v19, v11);
      v65 = OUTLINED_FUNCTION_20_4();
      (v64)(v65);
    }

    goto LABEL_7;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v36 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v36, static Logger.voiceCommands);
  v37 = *(v14 + 16);
  v37(v3, v25, v11);
  v37(v2, v1, v11);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_25_5();
    v69 = a1;
    v41 = v40;
    v68 = OUTLINED_FUNCTION_20_6();
    v72 = v68;
    *v41 = 136315394;
    v42 = UUID.uuidString.getter();
    v67 = v39;
    v44 = v43;
    v45 = *(v14 + 8);
    v45(v3, v11);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v72);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    v47 = UUID.uuidString.getter();
    v49 = v48;
    v45(v2, v11);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v72);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_0, v38, v67, "#SLF SELF Log, created flowId: %s orchestrationId: %s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    a1 = v69;
    OUTLINED_FUNCTION_15_0();

    v51 = OUTLINED_FUNCTION_20_4();
    (v45)(v51);
  }

  else
  {

    v62 = *(v14 + 8);
    v62(v2, v11);
    v62(v3, v11);
    v63 = OUTLINED_FUNCTION_20_4();
    (v62)(v63);
  }

  v70(a1, v25, v11);
  v32 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(a1, v32, 1, v11);
  OUTLINED_FUNCTION_42();
}

uint64_t static InstrumentationUtils.getOrchestrationRequestId()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.executionRequestId.getter();
  v7 = v6;

  if (v7)
  {
    static InstrumentationUtils.createUUID(id:)(v5);

    v8 = type metadata accessor for UUID();
    if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
    {
      outlined destroy of UUID?(v5);
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.voiceCommands);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "#SLF SELF Log, invalid executionRequestId string, cannot derive flowId form it", v12, 2u);
      }

      v13 = a1;
      v14 = 1;
    }

    else
    {
      (*(*(v8 - 8) + 32))(a1, v5, v8);
      v13 = a1;
      v14 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v8);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#SLF SELF Log, invalid executionRequestId, cannot derive flowId form it", v18, 2u);
    }

    v19 = type metadata accessor for UUID();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v19);
  }
}

void static InstrumentationUtils.emitLinkFlowStartedInstrumentation(targetBundle:action:)()
{
  v1 = type metadata accessor for UUID();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionContext));
  if (!v7)
  {
LABEL_12:
    OUTLINED_FUNCTION_42();
    return;
  }

  v35 = v7;
  v8 = [objc_allocWithZone(FLOWLINKSchemaFLOWLinkActionStarted) *(v0 + 2304)];
  if (v8)
  {
    v33 = v8;
    v34 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionTier1) *(v0 + 2304)];
    if (v34)
    {
      v9 = LNAction.asSELFAction()();
      if (v9)
      {
        v10 = v9;
        v11 = OUTLINED_FUNCTION_20_4();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionTier1.appBundleId.setter(v11, v12, v34);
        type metadata accessor for SISchemaUUID();
        UUID.init()();
        v13 = SISchemaUUID.__allocating_init(nsuuid:)(v6);
        [v34 setLinkId:v13];
        [v10 setLinkId:v13];
        [v33 setCurrentAction:v10];
        [v35 setStartedOrChanged:v33];
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v14 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
        v15 = v35;
        v16 = v33;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = OUTLINED_FUNCTION_25_5();
          v35 = v13;
          v20 = v19;
          v37 = OUTLINED_FUNCTION_20_6();
          *v20 = 136315394;
          ObjectType = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMd, &_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMR);
          v21 = String.init<A>(describing:)();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v37);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2080;
          ObjectType = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35FLOWLINKSchemaFLOWLinkActionStartedCmMd, &_sSo35FLOWLINKSchemaFLOWLinkActionStartedCmMR);
          v24 = String.init<A>(describing:)();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v37);

          *(v20 + 14) = v26;
          _os_log_impl(&dword_0, v17, v18, "#SLF SELF emitting contextEvent: %s event: %s", v20, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          v13 = v35;
          OUTLINED_FUNCTION_15_0();
        }

        _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo35FLOWLINKSchemaFLOWLINKActionContextC_Tt1g5(v15, 0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_0, v27, v28, "#SLF SELF emitting tier 1", v29, 2u);
          OUTLINED_FUNCTION_15_0();
        }

        _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo33FLOWLINKSchemaFLOWLINKActionTier1C_Tt1g5(v34, 0);
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_42();
}

void static InstrumentationUtils.emitActionConversionStartedInstrumentation(parseUUID:)(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for UUID();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_34_7();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_33_4();
  v18 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionConversionContext) init];
  if (v18)
  {
    v36 = v18;
    v19 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionConversionStarted) init];
    if (v19)
    {
      v20 = v19;
      outlined init with copy of UUID?(a1, v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        outlined destroy of UUID?(v10);
      }

      else
      {
        (*(v14 + 32))(v1, v10, v11);
        type metadata accessor for SISchemaUUID();
        (*(v14 + 16))(v2, v1, v11);
        v22 = SISchemaUUID.__allocating_init(nsuuid:)(v2);
        [v20 setParseHypothesisId:v22];

        (*(v14 + 8))(v1, v11);
      }

      [v36 setStartedOrChanged:v20];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v23, static Logger.voiceCommands);
      v24 = v36;
      v25 = v20;
      v26 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_85_1())
      {
        OUTLINED_FUNCTION_25_5();
        v38 = OUTLINED_FUNCTION_5_14();
        v37 = OUTLINED_FUNCTION_27_8(4.8151e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMd, &_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMR);
        v27 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);
        OUTLINED_FUNCTION_18_12();
        v37 = OUTLINED_FUNCTION_2_23();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo45FLOWLINKSchemaFLOWLINKActionConversionStartedCmMd, &_sSo45FLOWLINKSchemaFLOWLINKActionConversionStartedCmMR);
        v29 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v38);
        OUTLINED_FUNCTION_18_12();
        *(a1 + 14) = v3;
        OUTLINED_FUNCTION_1_27(&dword_0, v31, v32, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_6_15();
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_19_0();
      }

      v33 = OUTLINED_FUNCTION_19_8();
      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo45FLOWLINKSchemaFLOWLINKActionConversionContextC_Tt1g5(v33, v34);
    }

    else
    {
      v21 = v36;
    }
  }
}

void static InstrumentationUtils.emitEntityDisambiguationEndedInstrumentation()()
{
  v1 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKEntityDisambiguationContext));
  if (v1)
  {
    v5 = v1;
    v2 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKEntityDisambiguationEnded) *(v0 + 2304)];
    if (v2)
    {
      v3 = v2;
      [v2 setExists:1];
      [v5 setEnded:v3];
      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKEntityDisambiguationContextC_Tt1g5(v5, 0);

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

void static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_45_3();
  v27 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionPromptForValueContext));
  if (!v27)
  {
LABEL_17:
    OUTLINED_FUNCTION_10_17();
    return;
  }

  v54 = v27;
  v28 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted) *(v24 + 2304)];
  if (v28)
  {
    v53 = v28;
    v29 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) *(v24 + 2304)];
    if (v29)
    {
      v30 = v29;
      if (v25)
      {
        v31 = OUTLINED_FUNCTION_17_14();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(v31, v32, v33);
      }

      else
      {
        OUTLINED_FUNCTION_9_15();
      }

      [v53 setParameter:v30];
      [v54 setStartedOrChanged:v53];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v36, static Logger.voiceCommands);
      v37 = v54;
      v38 = v53;
      v39 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_48_5())
      {
        v40 = OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_47_2(4.8151e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMd, &_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextCmMR);
        v41 = OUTLINED_FUNCTION_21_9();
        OUTLINED_FUNCTION_39_7(v41, v42, v43, v44, v45);
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_13_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueStartedCmMd, &_sSo49FLOWLINKSchemaFLOWLINKActionPromptForValueStartedCmMR);
        v46 = OUTLINED_FUNCTION_21_9();
        OUTLINED_FUNCTION_39_7(v46, v47, v48, v49, v50);
        OUTLINED_FUNCTION_36_5();
        *(v40 + 14) = v26;
        OUTLINED_FUNCTION_12_14(&dword_0, v51, v52, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_11_0();
      }

      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo49FLOWLINKSchemaFLOWLINKActionPromptForValueContextC_Tt1g5(v37, 1);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_10_17();
}

void static InstrumentationUtils.emitActionParameterDisambiguationStartedInstrumentation(parameterName:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_45_3();
  v27 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext));
  if (!v27)
  {
LABEL_17:
    OUTLINED_FUNCTION_10_17();
    return;
  }

  v54 = v27;
  v28 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStarted) *(v24 + 2304)];
  if (v28)
  {
    v53 = v28;
    v29 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) *(v24 + 2304)];
    if (v29)
    {
      v30 = v29;
      if (v25)
      {
        v31 = OUTLINED_FUNCTION_17_14();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(v31, v32, v33);
      }

      else
      {
        OUTLINED_FUNCTION_9_15();
      }

      [v53 setParameter:v30];
      [v54 setStartedOrChanged:v53];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v36, static Logger.voiceCommands);
      v37 = v54;
      v38 = v53;
      v39 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_48_5())
      {
        v40 = OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_47_2(4.8151e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMd, &_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextCmMR);
        v41 = OUTLINED_FUNCTION_21_9();
        OUTLINED_FUNCTION_39_7(v41, v42, v43, v44, v45);
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_13_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStartedCmMd, &_sSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationStartedCmMR);
        v46 = OUTLINED_FUNCTION_21_9();
        OUTLINED_FUNCTION_39_7(v46, v47, v48, v49, v50);
        OUTLINED_FUNCTION_36_5();
        *(v40 + 14) = v26;
        OUTLINED_FUNCTION_12_14(&dword_0, v51, v52, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_11_0();
      }

      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo58FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContextC_Tt1g5(v37, 1);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_10_17();
}

void static InstrumentationUtils.emitActionParameterConfirmationStartedInstrumentation(parameterName:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_45_3();
  v27 = OUTLINED_FUNCTION_32_10(objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext));
  if (!v27)
  {
LABEL_17:
    OUTLINED_FUNCTION_10_17();
    return;
  }

  v54 = v27;
  v28 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted) *(v24 + 2304)];
  if (v28)
  {
    v53 = v28;
    v29 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKActionParameter) *(v24 + 2304)];
    if (v29)
    {
      v30 = v29;
      if (v25)
      {
        v31 = OUTLINED_FUNCTION_17_14();
        outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(v31, v32, v33);
      }

      else
      {
        OUTLINED_FUNCTION_9_15();
      }

      [v53 setParameter:v30];
      [v54 setStartedOrChanged:v53];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v36, static Logger.voiceCommands);
      v37 = v54;
      v38 = v53;
      v39 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_48_5())
      {
        v40 = OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_20_6();
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_47_2(4.8151e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMd, &_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextCmMR);
        v41 = OUTLINED_FUNCTION_21_9();
        OUTLINED_FUNCTION_39_7(v41, v42, v43, v44, v45);
        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_13_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationStartedCmMd, &_sSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationStartedCmMR);
        v46 = OUTLINED_FUNCTION_21_9();
        OUTLINED_FUNCTION_39_7(v46, v47, v48, v49, v50);
        OUTLINED_FUNCTION_36_5();
        *(v40 + 14) = v26;
        OUTLINED_FUNCTION_12_14(&dword_0, v51, v52, "#SLF SELF emitting contextEvent: %s event: %s");
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_11_0();
      }

      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo56FLOWLINKSchemaFLOWLINKActionParameterConfirmationContextC_Tt1g5(v37, 1);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_10_17();
}

uint64_t static InstrumentationUtils.createUUID(id:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of UUID?(v5);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "#SLF SELF Log - invalid string, cannot derive uuid", v10, 2u);
    }

    v11 = 1;
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, v5, v6);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v6);
}

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed.autoshortcutTemplate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setAutoshortcutTemplate:v4];
}

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.appShortcutId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setAppShortcutId:v4];
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionTier1.appBundleId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setAppBundleId:v4];
}

unint64_t type metadata accessor for SISchemaUUID()
{
  result = lazy cache variable for type metadata for SISchemaUUID;
  if (!lazy cache variable for type metadata for SISchemaUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SISchemaUUID);
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setName:v4];
}

void OUTLINED_FUNCTION_1_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_7_14(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __swift_project_value_buffer(a1, a2);

  return a10;
}

void OUTLINED_FUNCTION_9_15()
{

  outlined bridged method (mbnn) of @objc FLOWLINKSchemaFLOWLINKActionParameter.name.setter(0x6E776F6E6B6E75, 0xE700000000000000, v0);
}

void OUTLINED_FUNCTION_12_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_23_10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_26_11(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  return [a10 a2];
}

uint64_t OUTLINED_FUNCTION_27_8(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_32_10(void *a1)
{

  return [a1 init];
}

id OUTLINED_FUNCTION_35_6(void *a1)
{

  return [a1 init];
}

uint64_t OUTLINED_FUNCTION_36_5()
{
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

void OUTLINED_FUNCTION_46_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_2(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

BOOL OUTLINED_FUNCTION_48_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_49_2()
{
  v2 = *(v0 - 104);

  return swift_dynamicCastObjCClass();
}

void LNActionMetadata.firstParameterMetadata(from:)(void *a1)
{
  v2 = [v1 parameters];
  type metadata accessor for LNActionParameterMetadata();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_19;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v6);
    v10 = v9;
    v11 = [a1 parameterName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v10)
    {
      if (v8 == v12 && v10 == v14)
      {

LABEL_19:

        return;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t type metadata accessor for LNActionParameterMetadata()
{
  result = lazy cache variable for type metadata for LNActionParameterMetadata;
  if (!lazy cache variable for type metadata for LNActionParameterMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNActionParameterMetadata);
  }

  return result;
}

uint64_t ListShortcutsFlow.__allocating_init(deviceState:aceServiceInvoker:catWrapper:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ListShortcutsFlow.init(deviceState:aceServiceInvoker:catWrapper:)(a1, a2, a3);
  return v6;
}

uint64_t ListShortcutsFlow.init(deviceState:aceServiceInvoker:catWrapper:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  outlined init with copy of DeviceState(a2, v3 + 16);
  outlined init with copy of DeviceState(a1, v3 + 56);
  *(v3 + 104) = a3;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v9 = type metadata accessor for ViewFactory();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = ViewFactory.init(ttsEnabled:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v4 + 96) = v12;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t ListShortcutsFlow.on(input:)(uint64_t a1)
{
  v43 = type metadata accessor for Input();
  v2 = OUTLINED_FUNCTION_7_1(v43);
  v41 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v42 = v7 - v6;
  v8 = type metadata accessor for VoiceCommandsNLIntent(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for Parse();
  v14 = OUTLINED_FUNCTION_7_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = type metadata accessor for NLIntent();
  v23 = OUTLINED_FUNCTION_7_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  Input.parse.getter();
  if ((*(v16 + 88))(v21, v13) == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v16 + 96))(v21, v13);
    (*(v25 + 32))(v30, v21, v22);
    (*(v25 + 16))(v12, v30, v22);
    if (one-time initialization token for voiceCommandVerbNode != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, 255, type metadata accessor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    if (v45 == 3)
    {
      outlined destroy of VoiceCommandsNLIntent(v12);
      (*(v25 + 8))(v30, v22);
      return 1;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.voiceCommands);
    (*(v41 + 16))(v42, a1, v43);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v41 + 8))(v42, v43);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v44);

      *(v39 + 4) = v38;
      _os_log_impl(&dword_0, v33, v34, "Received NLV3 intent that is not list shortcuts intent: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    else
    {

      (*(v41 + 8))(v42, v43);
    }

    outlined destroy of VoiceCommandsNLIntent(v12);
    (*(v25 + 8))(v30, v22);
  }

  else
  {
    (*(v16 + 8))(v21, v13);
  }

  return 0;
}

uint64_t ListShortcutsFlow.execute(completion:)()
{
  type metadata accessor for ListShortcutsFlow();
  lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(&lazy protocol witness table cache variable for type ListShortcutsFlow and conformance ListShortcutsFlow, v0, type metadata accessor for ListShortcutsFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ListShortcutsFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[3];
  v2 = type metadata accessor for ViewFactory();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[7] = ViewFactory.init(ttsEnabled:)();
  v5 = *(**(v1 + 104) + class metadata base offset for ListShortcutsCATs + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = ListShortcutsFlow.execute();
  v8 = v0[6];

  return v10(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  dispatch thunk of ViewFactory.makeUtteranceViews(template:listenAfterSpeaking:canUseServerTTS:)();
  type metadata accessor for SiriKitAceViewBuilder();
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  v0[10] = dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  v0[11] = [objc_allocWithZone(SAUIAddViews) init];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = ListShortcutsFlow.execute();
  v5 = v0[3];

  return ListShortcutsFlow.buildAceViews(aceViewBuilder:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  v3 = *(v1 + 96);
  v9 = *v0;
  *(v2 + 104) = v4;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 24);
  outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(*(v0 + 104), *(v0 + 88));
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  v6 = type metadata accessor for SABaseCommand();
  *v5 = v0;
  v5[1] = ListShortcutsFlow.execute();
  v7 = *(v0 + 88);

  return AceServiceInvokerAsync.submit<A>(_:)(v7, v3, v6, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  static ExecuteResponse.complete()();

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

{
  return _swift_unexpectedError(*(v0 + 72), "SiriLinkFlowPlugin/ListShortcutsFlow.swift", 42, 1, 51);
}

uint64_t ListShortcutsFlow.buildAceViews(aceViewBuilder:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingText();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingSection();
  v1[7] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for TemplatingResult();
  v1[10] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v15, v16, v17);
}

{
  v1 = v0[3];
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  if (dispatch thunk of DeviceState.isPhone.getter())
  {
    v3 = *(v0[3] + 104);
    v4 = v1[10];
    v5 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
    v6 = DeviceState.asSiriKitDeviceState()(v4, v5);
    v0[13] = v6;
    v17 = (*v3 + class metadata base offset for ListShortcutsCATs);
    v18 = (*v17 + **v17);
    v7 = (*v17)[1];
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = ListShortcutsFlow.buildAceViews(aceViewBuilder:);
    v9 = v0[12];

    return v18(v9, v6);
  }

  else
  {
    v11 = v0[2];
    v12 = dispatch thunk of SiriKitAceViewBuilder.build()();
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[6];

    v16 = v0[1];

    return v16(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = *(v2 + 112);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v7 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = v0[12];
  v2 = [objc_allocWithZone(SAAppsLaunchApp) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setLaunchId:v3];

  v4 = [objc_allocWithZone(SAUIButton) init];
  result = TemplatingResult.sections.getter();
  if (*(result + 16))
  {
    v6 = v0[9];
    v24 = v0[10];
    v25 = v0[12];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[5];
    v10 = v0[6];
    v11 = v0[4];
    v22 = v0[2];
    v23 = v0[11];
    (*(v7 + 16))(v6, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    TemplatingSection.content.getter();
    (*(v7 + 8))(v6, v8);
    v12 = TemplatingText.text.getter();
    v14 = v13;
    (*(v9 + 8))(v10, v11);
    outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v12, v14, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_216010;
    *(v15 + 32) = v2;
    v16 = v2;
    outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v15, v4);
    dispatch thunk of SiriKitAceViewBuilder.addButton(button:)();
    v17 = dispatch thunk of SiriKitAceViewBuilder.build()();

    (*(v23 + 8))(v25, v24);
    v18 = v0[12];
    v19 = v0[9];
    v20 = v0[6];

    v21 = v0[1];

    return v21(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  return _swift_unexpectedError(v1, "SiriLinkFlowPlugin/ListShortcutsFlow.swift", 42, 1, 71);
}

uint64_t *ListShortcutsFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  return v0;
}

uint64_t ListShortcutsFlow.__deallocating_deinit()
{
  ListShortcutsFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ListShortcutsFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance ListShortcutsFlow(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance ListShortcutsFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance ListShortcutsFlow()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ListShortcutsFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ListShortcutsFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = type metadata accessor for Locale();
  v8[15] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v8[16] = v10;
  v12 = *(v11 + 64);
  v8[17] = OUTLINED_FUNCTION_28();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  v8[18] = OUTLINED_FUNCTION_28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v8[19] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v8[20] = v17;
  v19 = *(v18 + 64);
  v8[21] = OUTLINED_FUNCTION_28();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_14(v20);
  v22 = *(v21 + 64);
  v8[22] = OUTLINED_FUNCTION_28();
  v23 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator();
  v8[23] = v23;
  OUTLINED_FUNCTION_14(v23);
  v25 = *(v24 + 64);
  v8[24] = OUTLINED_FUNCTION_28();
  v26 = type metadata accessor for TimeZone();
  v8[25] = v26;
  OUTLINED_FUNCTION_5_0(v26);
  v8[26] = v27;
  v29 = *(v28 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v30 = type metadata accessor for Calendar();
  v8[30] = v30;
  OUTLINED_FUNCTION_5_0(v30);
  v8[31] = v31;
  v33 = *(v32 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  v8[34] = OUTLINED_FUNCTION_28();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v37);
  v39 = *(v38 + 64);
  v8[35] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v40, v41, v42);
}

uint64_t INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)()
{
  v2 = v1;
  v3 = v1[14];
  switch(v3)
  {
    case 10:
      v30 = v1[8];
      v10 = Siri_Nlu_External_UserDialogAct.personValue(contactResolver:locale:)(v1[13], v1[9]);
      v11 = v1[7];
      if (!v10)
      {
        goto LABEL_55;
      }

      v12 = &lazy cache variable for type metadata for INPerson;
      v13 = INPerson_ptr;
      goto LABEL_23;
    case 11:
    case 12:
    case 13:
    case 15:
    case 17:
    case 18:
    case 20:
    case 22:
    case 23:
    case 25:
    case 28:
    case 29:
    case 31:
    case 33:
    case 34:
    case 35:
    case 37:
      goto LABEL_8;
    case 14:
      v27 = v1[33];
      v28 = v1[29];
      v29 = v1[8];
      static Calendar.current.getter();
      static TimeZone.current.getter();
      if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
      {
        goto LABEL_54;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!v1[5])
      {
        v97 = OUTLINED_FUNCTION_3_19();
        v98(v97);
        v99 = OUTLINED_FUNCTION_15_13();
        v100(v99);
        outlined destroy of Siri_Nlu_External_UserDialogAct?((v1 + 2), &_sypSgMd, &_sypSgMR);
LABEL_58:
        v101 = v1[34];
        v102 = type metadata accessor for DateComponents();
        __swift_storeEnumTagSinglePayload(v101, 1, 1, v102);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v102);
        v104 = v1[34];
        v58 = v1[7];
        if (EnumTagSinglePayload == 1)
        {
          v59 = &_s10Foundation14DateComponentsVSgMd;
          v60 = &_s10Foundation14DateComponentsVSgMR;
          v61 = v1[34];
          goto LABEL_60;
        }

        *(v58 + 24) = v102;
        __swift_allocate_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_21_2(v102);
        v96 = *(v105 + 32);
LABEL_62:
        v96();
LABEL_63:
        v107 = v2[34];
        v106 = v2[35];
        v109 = v2[32];
        v108 = v2[33];
        OUTLINED_FUNCTION_12_15();

        OUTLINED_FUNCTION_6_7();
        OUTLINED_FUNCTION_10_18();

        __asm { BRAA            X1, X16 }
      }

      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      if ((swift_dynamicCast() & 1) == 0 || (v77 = v1[6], v78 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), , !v78) || (v79 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter(), , !v79))
      {
LABEL_54:
        v91 = OUTLINED_FUNCTION_3_19();
        v92(v91);
        v93 = OUTLINED_FUNCTION_15_13();
        v94(v93);
        goto LABEL_58;
      }

      v80 = v1[31];
      v114 = v1[30];
      v115 = v1[33];
      v81 = v1[29];
      v82 = v1[26];
      v116 = v2[25];
      v117 = v81;
      v83 = v2[23];
      v84 = v2[24];
      v85 = v2[16];
      v86 = v2[11];
      v87 = v2[12];
      v112 = v2[9];
      v113 = v2[15];
      v2[36] = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();

      outlined init with copy of DeviceState(v87, v84);
      outlined init with copy of DeviceState(v86, v84 + 40);
      (*(v85 + 16))(v84 + v83[6], v112, v113);
      (*(v80 + 16))(v84 + v83[7], v115, v114);
      (*(v82 + 16))(v84 + v83[8], v117, v116);
      v88 = swift_task_alloc();
      v2[37] = v88;
      *v88 = v2;
      v88[1] = INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:);
      v89 = v2[24];
      OUTLINED_FUNCTION_10_18();

      return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
    case 16:
      v33 = v1[32];
      v34 = v1[28];
      static Calendar.current.getter();
      static TimeZone.current.getter();
      v35 = swift_task_alloc();
      v1[40] = v35;
      *v35 = v1;
      v35[1] = INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:);
      v36 = v1[32];
      v37 = v1[28];
      v38 = v1[22];
      v40 = v1[11];
      v39 = v1[12];
      v42 = v1[8];
      v41 = v1[9];
      OUTLINED_FUNCTION_10_18();

      return Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)();
    case 19:
      OUTLINED_FUNCTION_2_24();
      v19 = &lazy cache variable for type metadata for NSUnitLength;
      v20 = NSUnitLength_ptr;
      goto LABEL_37;
    case 21:
    case 26:
      v4 = v1[8];
      v5 = Siri_Nlu_External_UserDialogAct.doubleValue.getter();
      v6 = v1[7];
      if (v7)
      {
        goto LABEL_43;
      }

      v8 = &type metadata for Double;
      goto LABEL_26;
    case 24:
      v31 = v1[8];
      v5 = Siri_Nlu_External_UserDialogAct.intValue.getter();
      v6 = v1[7];
      if (v32)
      {
        goto LABEL_43;
      }

      v8 = &type metadata for Int64;
LABEL_26:
      *(v6 + 24) = v8;
      *v6 = v5;
      goto LABEL_63;
    case 27:
      v45 = v1[27];
      static TimeZone.current.getter();
      v46 = swift_task_alloc();
      v1[42] = v46;
      *v46 = v1;
      v46[1] = INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:);
      v47 = v1[27];
      v48 = v1[18];
      v49 = v1[10];
      v50 = v1[11];
      v52 = v1[8];
      v51 = v1[9];
      OUTLINED_FUNCTION_10_18();

      return Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
    case 30:
      v21 = v1[8];
      goto LABEL_16;
    case 32:
      OUTLINED_FUNCTION_2_24();
      v19 = &lazy cache variable for type metadata for NSUnitTemperature;
      v20 = NSUnitTemperature_ptr;
      goto LABEL_37;
    case 36:
      v54 = v1[8];
      Siri_Nlu_External_UserDialogAct.urlValue.getter(v1[35]);
      v55 = v1[35];
      v56 = type metadata accessor for URL();
      v57 = OUTLINED_FUNCTION_21_10(v56);
      v58 = v1[7];
      if (v57 == 1)
      {
        v59 = &_s10Foundation3URLVSgMd;
        v60 = &_s10Foundation3URLVSgMR;
        v61 = v55;
LABEL_60:
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v61, v59, v60);
        *v58 = 0u;
        *(v58 + 16) = 0u;
        goto LABEL_63;
      }

      *(v58 + 24) = v0;
      __swift_allocate_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_21_2(v0);
      v96 = *(v95 + 32);
      goto LABEL_62;
    case 38:
      OUTLINED_FUNCTION_2_24();
      v19 = &lazy cache variable for type metadata for NSUnitMass;
      v20 = NSUnitMass_ptr;
      goto LABEL_37;
    case 39:
      OUTLINED_FUNCTION_2_24();
      v19 = &lazy cache variable for type metadata for NSUnitVolume;
      v20 = NSUnitVolume_ptr;
      goto LABEL_37;
    case 40:
      OUTLINED_FUNCTION_2_24();
      v19 = &lazy cache variable for type metadata for NSUnitSpeed;
      v20 = NSUnitSpeed_ptr;
LABEL_37:
      type metadata accessor for NSError(0, v19, v20);
      v62 = v1[2];
      v63 = OUTLINED_FUNCTION_12_12();
      v64(v63);
      v26 = NSDimension.init(forLocale:)();
      goto LABEL_38;
    case 41:
      v24 = v1[8];
      v25 = v1[9];
      v26 = [objc_opt_self() kilowattHours];
LABEL_38:
      v65 = Siri_Nlu_External_UserDialogAct.measurementValue(locale:)();
      v68 = v67;
      if (v67 == -1)
      {
        v73 = v1[7];

        *v73 = 0u;
        v73[1] = 0u;
      }

      else
      {
        v69 = v65;
        v70 = v1[7];
        if (v67)
        {
          v71 = v66;
          v72 = [objc_allocWithZone(NSMeasurement) initWithDoubleValue:v66 unit:*&v65];
          outlined consume of ParsedMeasurement?(v69, v71, v68);
          v70[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSMeasurement, NSMeasurement_ptr);

          *v70 = v72;
        }

        else
        {
          v76 = [objc_allocWithZone(NSMeasurement) initWithDoubleValue:v26 unit:*&v65];
          v70[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSMeasurement, NSMeasurement_ptr);

          *v70 = v76;
        }
      }

      goto LABEL_63;
    default:
      if (v3 == 1)
      {
        v74 = v1[8];
        v75 = Siri_Nlu_External_UserDialogAct.BOOLValue.getter();
        v6 = v1[7];
        if (v75 != 2)
        {
          *(v6 + 24) = &type metadata for Bool;
          *v6 = v75 & 1;
          goto LABEL_63;
        }
      }

      else
      {
        if (v3 == 53)
        {
          v9 = v1[8];
          v10 = Siri_Nlu_External_UserDialogAct.currencyValue(locale:)(v1[9]);
          v11 = v1[7];
          if (v10)
          {
            v12 = &lazy cache variable for type metadata for INCurrencyAmount;
            v13 = INCurrencyAmount_ptr;
LABEL_23:
            *(v11 + 24) = type metadata accessor for NSError(0, v12, v13);
            *v11 = v10;
          }

          else
          {
LABEL_55:
            *v11 = 0u;
            *(v11 + 16) = 0u;
          }

          goto LABEL_63;
        }

LABEL_8:
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.voiceCommands);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_0, v15, v16, "SiriLinkFlow does not yet support converting this parameter type from NLv4 parses.", v17, 2u);
        }

        v18 = v1[8];

LABEL_16:
        v22 = Siri_Nlu_External_UserDialogAct.stringValue.getter();
        v6 = v1[7];
        if (v23)
        {
          *(v6 + 24) = &type metadata for String;
          *v6 = v22;
          *(v6 + 8) = v23;
          goto LABEL_63;
        }
      }

LABEL_43:
      *v6 = 0u;
      *(v6 + 16) = 0u;
      goto LABEL_63;
  }
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 296);
  *v4 = *v1;
  *(v3 + 304) = v7;
  *(v3 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = v2[40];
  *v4 = *v1;
  *(v3 + 328) = v0;

  v6 = v2[32];
  v7 = v2[31];
  v8 = v2[30];
  (*(v2[26] + 8))(v2[28], v2[25]);
  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 344) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[36];
  if (v14[38])
  {
    v16 = v14[34];
    a11 = v14[33];
    v17 = v14[30];
    v18 = v14[31];
    v19 = v14[29];
    v21 = v14[25];
    v20 = v14[26];
    v22 = v14[24];

    dispatch thunk of DateTime.dateComponents.getter();

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v22);
    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(a11, v17);
    v23 = 0;
  }

  else
  {
    v24 = v14[33];
    v25 = v14[30];
    v26 = v14[31];
    v27 = v14[29];
    v28 = v14[25];
    v29 = v14[26];
    v30 = v14[24];
    v31 = v14[36];

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v30);
    (*(v29 + 8))(v27, v28);
    v32 = *(v26 + 8);
    v33 = OUTLINED_FUNCTION_12_12();
    v34(v33);
    v23 = 1;
  }

  v35 = v14[34];
  v36 = type metadata accessor for DateComponents();
  __swift_storeEnumTagSinglePayload(v35, v23, 1, v36);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v36);
  v38 = v14[34];
  v39 = v14[7];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v14[34], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    *v39 = 0u;
    *(v39 + 16) = 0u;
  }

  else
  {
    *(v39 + 24) = v36;
    __swift_allocate_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_21_2(v36);
    (*(v40 + 32))();
  }

  OUTLINED_FUNCTION_1_28();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[36];
  v16 = v14[33];
  v17 = v14[30];
  v18 = v14[31];
  v19 = v14[29];
  v20 = v14[25];
  v21 = v14[26];
  v22 = v14[24];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v22);
  (*(v21 + 8))(v19, v20);
  (*(v18 + 8))(v16, v17);
  v23 = v14[39];
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = *(v15 + 176);
  v17 = type metadata accessor for DateInterval();
  v18 = OUTLINED_FUNCTION_21_10(v17);
  v19 = *(v15 + 56);
  if (v18 == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *v19 = 0u;
    *(v19 + 16) = 0u;
  }

  else
  {
    *(v19 + 24) = v14;
    __swift_allocate_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_21_2(v14);
    (*(v20 + 32))();
  }

  OUTLINED_FUNCTION_1_28();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[18];
  v15 = v14[19];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v15);
  v19 = v14[26];
  v18 = v14[27];
  v20 = v14[25];
  if (EnumTagSinglePayload == 1)
  {
    v21 = *(v19 + 8);
    v22 = OUTLINED_FUNCTION_12_12();
    v23(v22);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  }

  else
  {
    v25 = v14[20];
    v24 = v14[21];
    (*(v25 + 32))(v24, v16, v15);
    v26 = static InputUtils.getPlacemark(_:)();
    (*(v25 + 8))(v24, v15);
    v27 = *(v19 + 8);
    v28 = OUTLINED_FUNCTION_12_12();
    v29(v28);
    if (v26)
    {
      v30 = v14[7];
      v30[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for CLPlacemark, CLPlacemark_ptr);
      *v30 = v26;
      goto LABEL_6;
    }
  }

  v31 = v14[7];
  *v31 = 0u;
  v31[1] = 0u;
LABEL_6:
  OUTLINED_FUNCTION_1_28();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  (*(v14[26] + 8))(v14[27], v14[25]);
  v15 = v14[43];
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 328);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t INIntentSlotValueType.toUsoTaskBuilder()(uint64_t a1)
{
  switch(a1)
  {
    case 10:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_1_5();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.personTaskBuilder(value:)();
      break;
    case 14:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.dateTaskBuilder()();
      break;
    case 16:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.dateIntervalTaskBuilder()();
      break;
    case 19:
    case 32:
    case 38:
    case 39:
    case 40:
    case 41:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.unitTaskBuilder(value:symbol:unitName:)(0, 1, 0, 0, 0, 0);
      break;
    case 21:
    case 24:
    case 26:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.numberTaskBuilder()();
      break;
    case 27:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.placemarkTaskBuilder()();
      break;
    case 30:
      goto LABEL_10;
    case 36:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_1_5();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.urlTaskBuilder(value:)();
      break;
    default:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.voiceCommands);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = a1;
        _os_log_impl(&dword_0, v4, v5, "SiriLinkFlow does not yet support providing NLV4 context for parameter type: %ld.", v6, 0xCu);
      }

LABEL_10:
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_1_5();
      result = static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)();
      break;
  }

  return result;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_20()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v13 = v0[18];
  v14 = v0[17];
}

uint64_t OUTLINED_FUNCTION_1_28()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[18];
  v14 = v0[17];
}

void OUTLINED_FUNCTION_2_24()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[8];
  v4 = v0[9];
}

uint64_t OUTLINED_FUNCTION_3_19()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  result = v0[29];
  v5 = v0[25];
  v6 = *(v0[26] + 8);
  return result;
}

void OUTLINED_FUNCTION_12_15()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0;
  v5 = v0[24];
  v7 = v4[21];
  v6 = v4[22];
  v8 = v4[17];
  v9 = v4[18];
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &type metadata for WFChooseFromListDisambiguationItem, &protocol witness table for WFChooseFromListDisambiguationItem);
}

{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of CustomIntentDisambiguationItem(v4, v11);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for CustomIntentDisambiguationItem;
      v10 = &protocol witness table for CustomIntentDisambiguationItem;
      *&v8 = swift_allocObject();
      outlined init with copy of CustomIntentDisambiguationItem(v11, v8 + 16);
      v2[2] = v6 + 1;
      outlined init with take of AceServiceInvokerAsync(&v8, &v2[5 * v6 + 4]);
      outlined destroy of CustomIntentDisambiguationItem(v11);
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v7 = *v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v8;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &type metadata for ShortcutsLinkDisambiguationItem, &protocol witness table for ShortcutsLinkDisambiguationItem);
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v26 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = (a1 + 80);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 3);
      v20 = *(v6 - 4);
      v21 = *(v6 - 6);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v26 = v4;
      v12 = v4[2];
      v13 = v4[3];
      v22 = v12 + 1;

      v14 = v9;

      v15 = v11;
      if (v12 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v22, 1);
        v4 = v26;
      }

      v6 += 7;
      v24 = a2;
      v25 = a3;
      v16 = swift_allocObject();
      *&v23 = v16;
      v16[2] = v21;
      v16[3] = v7;
      v16[4] = v20;
      v16[5] = v8;
      v16[6] = v9;
      v16[7] = v10;
      v16[8] = v15;
      v4[2] = v22;
      outlined init with take of AceServiceInvokerAsync(&v23, &v4[5 * v12 + 4]);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t CustomIntentNLContextProvider.__allocating_init(deviceState:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(a1, v2 + 16);
  return v2;
}

uint64_t CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = type metadata accessor for NLContextUpdate();
  v5[31] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v5[32] = v7;
  v9 = *(v8 + 64) + 15;
  v5[33] = swift_task_alloc();

  return _swift_task_switch(CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:), 0, 0);
}

id CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:)()
{
  v1 = *(v0 + 216);
  if (INIntent.isBooleanParameter(parameterName:)(*(v0 + 224)))
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    VoiceCommandNLContextProvider.makeContextForBoolNeedsValuePrompt(intent:parameter:)();
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);
    v23 = [*(v0 + 216) _codableDescription];
    v24 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(v21, v22, v23);

    if (!v24)
    {
      v26 = *(v0 + 240);
      v27 = *(v0 + 208);
      type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
      v28 = static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)();
      VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(v28);

      goto LABEL_8;
    }

    CustomIntentNLContextProvider.intentCodableAttributeToUsoTaskBuilder(attribute:)(v24);
    v25 = *(v0 + 264);
    v31 = *(v0 + 240);

    VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(v32);

    v33 = INCodableAttribute.requiresDictationPrompt()();
    v34 = *(v0 + 264);
    if (v33)
    {
      OUTLINED_FUNCTION_4_22();
      NLContextUpdate.dictationPromptTargetDomain.setter();
      INCodableAttribute.promptTargets()();
      NLContextUpdate.dictationPromptTargetNodes.setter();
    }

    else
    {
      OUTLINED_FUNCTION_4_22();
      NLContextUpdate.weightedPromptTargetDomain.setter();
      INCodableAttribute.promptTargets()();
      NLContextUpdate.weightedPromptResponseTargets.setter();
    }
  }

  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_64();
  *(v10 + 16) = xmmword_216010;
  v11 = INIntent.bundleId.getter();
  *(v0 + 112) = v9;
  *(v0 + 120) = 0;
  *(v0 + 128) = v11;
  *(v0 + 136) = v12;
  *(v0 + 144) = v8;
  *(v0 + 152) = v7;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 160) = 0;
  OUTLINED_FUNCTION_1_29();

  v13 = v9;
  CustomIntentStateAttachment.asDictionary()();
  objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v14);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 248);
  v20 = *(v0 + 208);
  outlined destroy of CustomIntentStateAttachment(v0 + 112);

  *(v10 + 32) = v16;
  NLContextUpdate.conversationStateAttachments.setter();
  (*(v18 + 32))(v20, v17, v19);
LABEL_8:
  v29 = *(v0 + 264);

  v30 = *(v0 + 8);

  return v30();
}

id static CustomIntentNLContextProvider.attributeForParameter(intent:parameter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 _codableDescription];
  v6 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(a2, a3, v5);

  return v6;
}

uint64_t CustomIntentNLContextProvider.intentCodableAttributeToUsoTaskBuilder(attribute:)(void *a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
LABEL_2:
    type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
    return static UsoTaskBuilder_execute_common_VoiceCommand.stringTaskBuilder(value:)();
  }

  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
    lazy protocol witness table accessor for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (!swift_dynamicCastObjCClass())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.voiceCommands);
      v5 = a1;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v16 = v9;
        *v8 = 136315138;
        v10 = v5;
        v11 = [v10 description];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v16);

        *(v8 + 4) = v15;
        _os_log_impl(&dword_0, v6, v7, "Unsupported INCodableAttribute when building SystemDialogAct %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }

      goto LABEL_2;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_71();
    v3 = [swift_dynamicCastObjCClassUnconditional() valueType];
    return INIntentSlotValueType.toUsoTaskBuilder()(v3);
  }
}

uint64_t CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[36] = a6;
  v7[37] = v6;
  v7[34] = a4;
  v7[35] = a5;
  v7[32] = a2;
  v7[33] = a3;
  v7[31] = a1;
  v8 = type metadata accessor for Locale();
  v7[38] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v7[39] = v9;
  v11 = *(v10 + 64) + 15;
  v7[40] = swift_task_alloc();
  v12 = type metadata accessor for NLContextUpdate();
  v7[41] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v7[42] = v13;
  v15 = *(v14 + 64) + 15;
  v7[43] = swift_task_alloc();

  return _swift_task_switch(CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:), 0, 0);
}

id CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:)()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 296);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = specialized _arrayForceCast<A, B>(_:)(*(v0 + 288));
  VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(v6);

  v7 = [v5 _codableDescription];
  v8 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(v4, v3, v7);

  if (v8)
  {
    v9 = *(v0 + 344);
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v12 = *(v0 + 296);
    v37 = *(v0 + 304);
    v13 = *(v0 + 272);
    v35 = v8;
    v36 = *(v0 + 280);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    INCodableAttribute.disambiguationPromptTargets()();
    NLContextUpdate.weightedPromptResponseTargets.setter();
    v16 = v12[6];
    __swift_project_boxed_opaque_existential_1(v12 + 2, v12[5]);
    dispatch thunk of DeviceState.siriLocale.getter();
    INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)(v15, v14, v13, v10, 1);
    (*(v11 + 8))(v10, v37);
    NLContextUpdate.displayHints.setter();
    v17 = INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(v15);
    specialized Dictionary.subscript.getter(0x6F697463656C6573, 0xEE00736D6574496ELL, v17, (v0 + 208));

    if (*(v0 + 232))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
      v18 = swift_dynamicCast();
      v19 = *(v0 + 240);
      if (v18)
      {
        v20 = *(v0 + 240);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      outlined destroy of String?(v0 + 208, &_sypSgMd, &_sypSgMR);
      v20 = 0;
    }

    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v24 = OUTLINED_FUNCTION_64();
    *(v24 + 16) = xmmword_216010;
    v25 = INIntent.bundleId.getter();
    *(v0 + 112) = v23;
    *(v0 + 120) = 0;
    *(v0 + 128) = v25;
    *(v0 + 136) = v26;
    *(v0 + 144) = v22;
    *(v0 + 152) = v21;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 160) = v20;
    OUTLINED_FUNCTION_1_29();

    v27 = v23;
    CustomIntentStateAttachment.asDictionary()();
    objc_allocWithZone(SABaseAceObject);

    result = @nonobjc SABaseAceObject.init(dictionary:)(v28);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = result;
    v31 = *(v0 + 344);
    outlined destroy of CustomIntentStateAttachment(v0 + 112);

    *(v24 + 32) = v30;
    NLContextUpdate.conversationStateAttachments.setter();
  }

  v32 = *(v0 + 328);
  v33 = *(v0 + 248);
  (*(*(v0 + 336) + 32))(v33, *(v0 + 344), v32);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v32);

  v34 = *(v0 + 8);

  return v34();
}

id CustomIntentNLContextProvider.makeNeedsConfirmationContextFor(intent:parameter:resolutionResult:)(void *a1, uint64_t a2, uint64_t a3)
{
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_64();
  *(v6 + 16) = xmmword_216010;
  __src[0] = a1;
  LOBYTE(__src[1]) = 1;
  __src[2] = INIntent.bundleId.getter();
  __src[3] = v7;
  __src[4] = a2;
  __src[5] = a3;
  memset(&__src[6], 0, 24);
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  memcpy(v13, __src, sizeof(v13));

  v8 = a1;
  CustomIntentStateAttachment.asDictionary()();
  v9 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v10);
  if (result)
  {
    v12 = result;
    outlined destroy of CustomIntentStateAttachment(__src);

    *(v6 + 32) = v12;
    return NLContextUpdate.conversationStateAttachments.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CustomIntentNLContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:acceptLabel:denyLabel:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v49 = &v47 - v10;
  v55 = type metadata accessor for DisplayHint();
  v11 = OUTLINED_FUNCTION_7_1(v55);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v53 = v17 - v16;
  v54 = type metadata accessor for SemanticValue();
  v18 = OUTLINED_FUNCTION_7_1(v54);
  v52 = v19;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v18);
  v48 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v47 - v24;
  v50 = a3;
  v51 = a4;
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  v26 = type metadata accessor for MachineUtteranceBuilder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  INIntent.category()();
  dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.build()();

  NLContextUpdate.nlInput.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = OUTLINED_FUNCTION_64();
  *(v29 + 16) = xmmword_216010;
  v30 = INIntent.bundleId.getter();
  __src[0] = a1;
  LOBYTE(__src[1]) = 1;
  __src[2] = v30;
  __src[3] = v31;
  memset(&__src[4], 0, 24);
  __src[7] = a2;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  memcpy(__dst, __src, sizeof(__dst));
  v32 = a2;
  a1;
  CustomIntentStateAttachment.asDictionary()();
  v33 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v34);
  if (result)
  {
    v36 = result;
    outlined destroy of CustomIntentStateAttachment(__src);

    *(v29 + 32) = v36;
    NLContextUpdate.conversationStateAttachments.setter();
    v37 = INIntent.verb()();

    v38 = (v37._object >> 56) & 0xF;
    if ((v37._object & 0x2000000000000000) == 0)
    {
      v38 = v37._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {

      SemanticValue.init(string:label:)();
      v39 = v54;
      __swift_storeEnumTagSinglePayload(v49, 1, 1, v54);
      v40 = v52;
      (*(v52 + 16))(v48, v25, v39);
      v41 = v53;
      DisplayHint.init(idValue:displayValue:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR);
      v42 = *(v13 + 72);
      v43 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_216850;
      v45 = v44 + v43;
      v46 = v55;
      (*(v13 + 16))(v45, v41, v55);
      NLContextUpdate.displayHints.setter();
      (*(v13 + 8))(v41, v46);
      return (*(v40 + 8))(v25, v39);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CustomIntentNLContextProvider.makeContextForPagination(intent:parameterName:displayHints:selectionItems:paginatedItems:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = type metadata accessor for NLContextUpdate();
  v14 = OUTLINED_FUNCTION_7_1(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v78 = a6;
  v20 = PaginatedItemContainer.items.getter();
  v21 = specialized _arrayForceCast<A, B>(_:)(v20);

  v81 = v7;
  VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(v21);

  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.dictationPromptTargetNodes.setter();
  NLContextUpdate.dictationPromptAbortValues.setter();
  v77 = a1;
  v22 = [a1 _codableDescription];
  v75 = a2;
  v76 = a3;
  v23 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(a2, a3, v22);

  if (!v23)
  {
    goto LABEL_10;
  }

  if (!a4 || (v24 = a5) == 0)
  {

LABEL_10:
    v30 = OUTLINED_FUNCTION_5_15();
    return v31(v30);
  }

  v72 = v19;
  v73 = a4;
  v71 = v23;
  v74 = v13;
  v25 = v78;
  v26 = PaginatedItemContainer.getCurrentPageIndex()();
  v27 = PaginatedItemContainer.pageSize.getter();
  v28 = v26 * v27;
  if ((v26 * v27) >> 64 != (v26 * v27) >> 63)
  {
    goto LABEL_56;
  }

  v19 = *(PaginatedItemContainer.page.getter() + 16);

  v80 = v19;
  v29 = v19 + v28;
  v25 = v74;
  if (__OFADD__(v28, v19))
  {
    goto LABEL_57;
  }

  v19 = v72;
  if (*(a4 + 16) < v29 || *(a5 + 16) < v29)
  {

    v30 = OUTLINED_FUNCTION_5_15();
    return v31(v30);
  }

  if (v29 < v28)
  {
    goto LABEL_58;
  }

  v19 = specialized Array.subscript.getter(v28, v29, a5);
  v25 = v33;
  v28 = v34;
  v24 = v35;
  if (v35)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v38 = swift_dynamicCastClass();
    if (!v38)
    {
      swift_unknownObjectRelease();
      v38 = _swiftEmptyArrayStorage;
    }

    v39 = v38[2];

    if (__OFSUB__(v24 >> 1, v28))
    {
      goto LABEL_59;
    }

    if (v39 != (v24 >> 1) - v28)
    {
      goto LABEL_60;
    }

    v37 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v37)
    {
      goto LABEL_22;
    }

    v37 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v19, v25, v28, v24);
    v37 = v36;
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    v28 = v37[2];
    v19 = _swiftEmptyArrayStorage;
    if (!v28)
    {
      break;
    }

    __dst[0] = _swiftEmptyArrayStorage;

    v25 = __dst;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v40 = 0;
    v19 = __dst[0];
    v41 = v37[2];
    while (v41 != v40)
    {
      if (v40 >= v37[2])
      {
        goto LABEL_53;
      }

      v42 = v37;
      v43 = v37[v40 + 4];

      v25 = v81;
      v44 = CustomIntentNLContextProvider.getOrdinalReference(index:count:selectionItem:)(v40, v80, v43);

      __dst[0] = v19;
      v24 = v19[2];
      v45 = v19[3];
      if (v24 >= v45 >> 1)
      {
        v25 = __dst;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v24 + 1, 1);
        v19 = __dst[0];
      }

      v19[2] = v24 + 1;
      v19[v24 + 4] = v44;
      ++v40;
      v37 = v42;
      if (v28 == v40)
      {

        goto LABEL_30;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_unknownObjectRelease();
  }

LABEL_30:
  v46 = 0;
  v47 = v19[2];
  v48 = _swiftEmptyArrayStorage;
  while (v47 != v46)
  {
    if (v46 >= v19[2])
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v49 = &v19[v46];
    v28 = v49[4];
    v25 = *(v28 + 16);
    v24 = v48[2];
    v50 = v25 + v24;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_50;
    }

    v51 = v49[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v50 > v48[3] >> 1)
    {
      if (v24 <= v50)
      {
        v53 = v25 + v24;
      }

      else
      {
        v53 = v24;
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v53, 1, v48);
      v48 = v54;
    }

    if (*(v28 + 16))
    {
      v24 = v48[2];
      v55 = (v48[3] >> 1) - v24;
      v56 = *(type metadata accessor for DisplayHint() - 8);
      if (v55 < v25)
      {
        goto LABEL_54;
      }

      v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v58 = *(v56 + 72);
      swift_arrayInitWithCopy();

      if (v25)
      {
        v59 = v48[2];
        v60 = __OFADD__(v59, v25);
        v61 = v25 + v59;
        if (v60)
        {
          goto LABEL_55;
        }

        v48[2] = v61;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_51;
      }
    }

    ++v46;
  }

  __dst[0] = v73;

  specialized Array.append<A>(contentsOf:)(v48);
  NLContextUpdate.displayHints.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v62 = OUTLINED_FUNCTION_64();
  *(v62 + 16) = xmmword_216010;
  v63 = INIntent.bundleId.getter();
  v65 = v64;
  v66 = specialized _arrayForceCast<A, B>(_:)(v37);

  __src[0] = v77;
  LOBYTE(__src[1]) = 0;
  __src[2] = v63;
  __src[3] = v65;
  __src[4] = v75;
  __src[5] = v76;
  __src[6] = v66;
  __src[7] = 0;
  __src[8] = PaginatedItemContainer.pageSize.getter();
  LOBYTE(__src[9]) = 0;
  __src[10] = PaginatedItemContainer.getCurrentPageIndex()();
  LOBYTE(__src[11]) = 0;
  memcpy(__dst, __src, 0x59uLL);

  v67 = v77;
  CustomIntentStateAttachment.asDictionary()();
  v68 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v69);
  if (result)
  {
    v70 = result;
    outlined destroy of CustomIntentStateAttachment(__src);

    *(v62 + 32) = v70;
    NLContextUpdate.conversationStateAttachments.setter();
    INCodableAttribute.disambiguationPromptTargets()();
    NLContextUpdate.weightedPromptResponseTargets.setter();
    NLContextUpdate.weightedPromptStrict.setter();

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

void *CustomIntentNLContextProvider.getOrdinalReference(index:count:selectionItem:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SemanticValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a3 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
  if ((v12 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v11, v17);
  outlined init with take of Any(v17, v18);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
  static INIntentResolutionResult.makeAsIdString(input:)(v18);
  SemanticValue.init(string:label:)();
  v13 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(a1, a2);
  __chkstk_darwin(v13);
  *&v16[-16] = v10;
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:), &v16[-32], v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  (*(v7 + 8))(v10, v6);
  return v14;
}

uint64_t CustomIntentNLContextProvider.makeContextForSmartPrompt()()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_22();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  CustomIntentNLContextProvider.buildSDAForSmartPrompt()(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_216850;
  (*(v1 + 16))(v8 + v7, v5, v0);
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v1 + 8))(v5, v0);
}

uint64_t CustomIntentNLContextProvider.buildSDAForSmartPrompt()@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v41 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v39 = *(v41 - 8);
  v1 = *(v39 + 64);
  v2 = __chkstk_darwin(v41);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v37 = &v32 - v4;
  v36 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v32 = *(v36 - 8);
  v5 = *(v32 + 64);
  v6 = __chkstk_darwin(v36);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v13 = *(v12 - 8);
  v14 = v13;
  v33 = v12;
  v34 = v13;
  v15 = *(v13 + 64);
  v16 = __chkstk_darwin(v12);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v32 - v23;
  type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  v25 = type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  static UsoTaskBuilder_execute_common_VoiceCommand.smartPromptTaskBuilder(value:)(v24);
  outlined destroy of String?(v24, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  Siri_Nlu_External_UserStatedTask.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v14 + 16))(v18, v20, v12);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  v26 = v37;
  Siri_Nlu_External_SystemOffered.init()();
  v27 = v32;
  v28 = v36;
  (*(v32 + 16))(v35, v9, v36);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v29 = v39;
  v30 = v41;
  (*(v39 + 16))(v38, v26, v41);
  Siri_Nlu_External_SystemDialogAct.offered.setter();

  (*(v29 + 8))(v26, v30);
  (*(v27 + 8))(v9, v28);
  return (*(v34 + 8))(v20, v33);
}

uint64_t WorkflowHomePodSnippetProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

id @nonobjc SABaseAceObject.init(dictionary:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithDictionary:v2.super.isa];

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_Sd5valuet_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_SS5valuet_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 8);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  outlined consume of Set<String>.Iterator._Variant();
  if (v7 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v6;
}

id outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 attributeByName:v4];

  return v5;
}

unint64_t lazy protocol witness table accessor for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError()
{
  result = lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError;
  if (!lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError;
  if (!lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentNLContextProviderError and conformance CustomIntentNLContextProviderError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentNLContextProviderError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xAFD50);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_AFE04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  else
  {
    v4 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 97, 7);
}

void *OUTLINED_FUNCTION_1_29()
{
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;

  return memcpy((v0 + 16), (v0 + 112), 0x59uLL);
}

uint64_t static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[14] = v1;
  v0[15] = v16;
  v0[12] = v2;
  v0[13] = v3;
  v0[10] = v4;
  v0[11] = v5;
  v0[8] = v6;
  v0[9] = v7;
  v0[7] = v8;
  v9 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  v0[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v0[17] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 136);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    *(v5 + 152) = v3;

    return _swift_task_switch(static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:), 0, 0);
  }
}

{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  type metadata accessor for SAIntentGroupLaunchAppWithIntent();
  v9 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v0[20] = v9;
  v10 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v12 = v11;
  v13 = *(v3 + 20);
  v14 = v9;
  CodableAceObject.init(wrappedValue:)();
  *v2 = v10;
  v2[1] = v12;
  v15 = v4[3];
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  v0[5] = type metadata accessor for WorkflowDataModels(0);
  v0[6] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(v2, boxed_opaque_existential_1);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  v0[21] = v18;
  *(v18 + 16) = xmmword_216010;
  *(v18 + 32) = v6;
  v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v20 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[22] = v21;
  *v21 = v22;
  v21[1] = static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:);
  v23 = v0[14];
  v24 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v24, v0 + 2, v18, v23, v15, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *(v4 + 168);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];

  outlined destroy of WorkflowDataModels.CustomIntentErrorModel(v3);
  v4 = v0[17];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v1 + 136);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 96);
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v15 = *(v12 + 120);
    v16 = *(v12 + 88);
    v17 = v15[3];
    v18 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = swift_allocObject();
    *(v12 + 184) = v19;
    *(v19 + 16) = xmmword_216010;
    *(v19 + 32) = v16;
    v20 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v21 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 192) = v25;
    *v25 = v26;
    v25[1] = static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:);
    v27 = *(v12 + 112);
    v28 = *(v12 + 56);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v28, v19, v27, v17, v18, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v29 = *(**(v12 + 104) + 232);
    v35 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    *(v12 + 144) = v31;
    *v31 = v12;
    v31[1] = static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:);
    v32 = *(v12 + 104);
    v33 = *(v12 + 64);

    return v35(v33);
  }
}

unint64_t type metadata accessor for SAIntentGroupLaunchAppWithIntent()
{
  result = lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent;
  if (!lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent);
  }

  return result;
}

void *CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_13_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v20 = (*(v19 + 16))(v17 - v16);
  v28 = OUTLINED_FUNCTION_8_19(v20, v21, v22, v23, v24, v25, v26, v27, a9, v18, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v28;
}

uint64_t *CustomIntentResponseGenerator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  return v0;
}

uint64_t CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[9] = v5;
  v1[14] = *v0;
  v6 = type metadata accessor for DialogPhase();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[19] = v9;
  v10 = *(v9 - 8);
  v1[20] = v10;
  v11 = *(v10 + 64) + 15;
  v1[21] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0[13] + 56);
  v0[22] = v1;
  v2 = *(*v1 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  v3[24] = v7;

  if (v0)
  {
    v8 = v3[21];
    v11 = v3 + 17;
    v9 = v3[17];
    v10 = v11[1];

    OUTLINED_FUNCTION_6_0();

    return v12();
  }

  else
  {

    return _swift_task_switch(CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:), 0, 0);
  }
}

{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v39 = v0[11];
  v41 = v0[10];
  static DialogPhase.completion.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v4, v3, v6);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v5 + 8))(v3, v6);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(*v7 + 160))(v39);
  OutputGenerationManifest.canUseServerTTS.setter();
  type metadata accessor for AppNameResolver();
  swift_initStackObject();
  v9 = static SAAppInfoFactory.createAppInfo(app:)();
  v10 = AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(v9);
  v12 = v11;

  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_19_9();
  if ((dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_19_9(), (dispatch thunk of DeviceState.isPad.getter())) && v13)
  {
    v14 = type metadata accessor for ResponseFactory();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = ResponseFactory.init()();
    v0[5] = v14;
    v0[6] = &protocol witness table for ResponseFactory;
    v0[2] = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[25] = v18;
    *v18 = v19;
    v18[1] = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);
    v20 = v0[24];
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[11];
    v24 = v0[12];
    v25 = v0[9];
    v26 = v0[10];

    return static CustomIntentResponseGenerator.processPunchoutWithDialogAndButton(app:intent:intentResponse:dialogResult:deviceState:dialogTemplating:outputManifest:responseFactory:)();
  }

  else
  {
    v28 = v0[24];
    v29 = type metadata accessor for ResponseFactory();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v0[27] = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v32 = swift_allocObject();
    v0[28] = v32;
    *(v32 + 16) = xmmword_216010;
    *(v32 + 32) = v28;
    v33 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v42 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v34 = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[29] = v35;
    *v35 = v36;
    v35[1] = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);
    v37 = v0[21];
    v38 = v0[9];

    return v42(v38, v32, v37);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 208) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    v9 = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);
  }

  else
  {
    v9 = CustomIntentResponseGenerator.makeErrorResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[29];
  v3 = v1[28];
  v4 = v1[27];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 208);
  v5 = *(v0 + 168);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);

  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t CustomIntentResponseGenerator.makeDomainFlowActivity(activityType:intent:)()
{
  OUTLINED_FUNCTION_10_19();
  type metadata accessor for ActivityType();
  OUTLINED_FUNCTION_13_1();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, v2);
  v10 = CustomIntentResponseGenerator.shortcutsActionsFromIntent(intent:)(v0);
  v11 = *(v1 + 72);
  v12 = type metadata accessor for ShortcutsFlowActivity();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  return ShortcutsFlowActivity.init(activityType:underlyingActions:siriEnvironment:)(v8, v10, v11);
}

void *CustomIntentResponseGenerator.shortcutsActionsFromIntent(intent:)(void *a1)
{
  v2 = [a1 _metadata];
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = outlined bridged method (ob) of @objc _INPBIntentMetadata.launchId.getter(v2);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin15ShortcutsActionVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin15ShortcutsActionVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_216850;
  [a1 _intentCategory];
  v8 = INIntentCategory.asINPBString()();
  v9 = [a1 typeName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = v8;
  *(v7 + 64) = v10;
  *(v7 + 72) = v12;
  return v7;
}

uint64_t CustomIntentResponseGenerator.voiceCommandName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_22();
}

void *CustomIntentResponseGenerator.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = swift_allocObject();
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_13_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v20 = (*(v19 + 16))(v17 - v16);
  v28 = OUTLINED_FUNCTION_8_19(v20, v21, v22, v23, v24, v25, v26, v27, a9, v18, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v28;
}

uint64_t ShortcutsFlowActivity.__allocating_init(activityType:underlyingActions:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_14();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_14_13();
  return ShortcutsFlowActivity.init(activityType:underlyingActions:siriEnvironment:)(v5, a2, a3);
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WorkflowDataModels.CustomIntentErrorModel(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int WorkflowDialogTemplatingError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkflowDialogTemplatingError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t CustomIntentResponseGenerator.__deallocating_deinit()
{
  CustomIntentResponseGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t ShortcutsAction.appId.setter()
{
  OUTLINED_FUNCTION_10_19();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ShortcutsAction.intentCategory.setter()
{
  OUTLINED_FUNCTION_10_19();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ShortcutsAction.intentName.setter()
{
  OUTLINED_FUNCTION_10_19();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ShortcutsAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6143746E65746E69 && a2 == 0xEE0079726F676574;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t ShortcutsAction.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6449707061;
  }

  if (a1 == 1)
  {
    return 0x6143746E65746E69;
  }

  return 0x614E746E65746E69;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ShortcutsAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ShortcutsAction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShortcutsAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ShortcutsAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShortcutsAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMR);
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_12_16();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    OUTLINED_FUNCTION_12_16();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    OUTLINED_FUNCTION_12_16();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t ShortcutsAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin15ShortcutsActionV10CodingKeys33_949AFA5D1C3E271C634B275408B2B1FELLOGMR);
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = 0;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v29 = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v16;
  v28 = 2;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v12;
  v20 = v19;
  (*(v7 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance ShortcutsAction@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  ShortcutsAction.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t key path setter for ShortcutsFlowActivity.underlyingActions : ShortcutsFlowActivity(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(**a2 + class metadata base offset for ShortcutsFlowActivity + 16);

  return v3(v4);
}

uint64_t ShortcutsFlowActivity.underlyingActions.getter()
{
  v1 = direct field offset for ShortcutsFlowActivity.underlyingActions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ShortcutsFlowActivity.underlyingActions.setter(uint64_t a1)
{
  v3 = direct field offset for ShortcutsFlowActivity.underlyingActions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ShortcutsFlowActivity.init(activityType:underlyingActions:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  *(v4 + direct field offset for ShortcutsFlowActivity.underlyingActions) = _swiftEmptyArrayStorage;
  ActivityType.rawValue.getter();
  if (a3)
  {

    SiriEnvironment.flowTask.getter();
    OUTLINED_FUNCTION_14_13();

    dispatch thunk of FlowTaskProvider.creationTime.getter();

    v11 = type metadata accessor for Date();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      outlined destroy of Date?(v10);
    }

    else
    {
      Date.timeIntervalSince1970.getter();
      OUTLINED_FUNCTION_21_2(v11);
      (*(v12 + 8))(v10, v11);
    }
  }

  DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();
  OUTLINED_FUNCTION_14_13();

  v13 = type metadata accessor for ActivityType();
  OUTLINED_FUNCTION_21_2(v13);
  (*(v14 + 8))(v5);
  v15 = direct field offset for ShortcutsFlowActivity.underlyingActions;
  swift_beginAccess();
  v16 = *(v4 + v15);
  *(v4 + v15) = v3;

  return v4;
}

uint64_t ShortcutsFlowActivity.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_15_14();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_14_13();
  return ShortcutsFlowActivity.init(from:)(v0);
}

uint64_t ShortcutsFlowActivity.init(from:)(uint64_t *a1)
{
  *(v1 + direct field offset for ShortcutsFlowActivity.underlyingActions) = _swiftEmptyArrayStorage;
  outlined init with copy of DeviceState(a1, v5);
  v3 = DefaultFlowActivity.init(from:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t ShortcutsFlowActivity.deinit()
{
  v0 = DefaultFlowActivity.deinit();
  v1 = *(v0 + direct field offset for ShortcutsFlowActivity.underlyingActions);

  return v0;
}

uint64_t ShortcutsFlowActivity.__deallocating_deinit()
{
  v0 = *(DefaultFlowActivity.deinit() + direct field offset for ShortcutsFlowActivity.underlyingActions);

  return swift_deallocClassInstance();
}

void *specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v30[3] = a12;
  v30[4] = a13;
  __swift_allocate_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_21_2(a12);
  (*(v19 + 32))();
  a11[10] = a1;
  a11[11] = a2;
  outlined init with copy of DeviceState(a4, (a11 + 2));
  a11[9] = a3;
  a11[12] = a9;
  outlined init with copy of DeviceState(v30, (a11 + 13));
  outlined init with copy of DeviceState(a4, v29);
  v20 = one-time initialization token for shared;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  v22 = type metadata accessor for AppNameResolver();
  v23 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v24 = swift_allocObject();
  *(v24 + 136) = v22;
  *(v24 + 144) = &protocol witness table for AppNameResolver;
  *(v24 + 112) = v23;
  *(v24 + 56) = v21;
  outlined init with take of Output(v29, v24 + 16);
  *(v24 + 64) = 0;
  *(v24 + 72) = 1;
  *(v24 + 80) = a5;
  *(v24 + 88) = a6;
  *(v24 + 96) = a7;
  *(v24 + 104) = a8;
  a11[7] = v24;
  v25 = a11[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  a11[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(a1, a2, v24, a4, v25);

  return a11;
}

uint64_t type metadata accessor for ShortcutsFlowActivity()
{
  result = type metadata singleton initialization cache for ShortcutsFlowActivity;
  if (!type metadata singleton initialization cache for ShortcutsFlowActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsAction.CodingKeys and conformance ShortcutsAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors()
{
  result = lazy protocol witness table cache variable for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors;
  if (!lazy protocol witness table cache variable for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors and conformance CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors);
  }

  return result;
}

uint64_t sub_B27F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShortcutsFlowActivity + 8))();
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentResponseGenerator.CustomIntentResponseGeneratorErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xB2954);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShortcutsAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xB2AC0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_8_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v17 - 112);
  v20 = *(v17 - 104);
  v21 = *(v17 - 96);
  v22 = *(v17 - 88);

  return specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v16, v15, v14, v13, v19, v20, v21, v22, a9, a10, a11, a12, a13);
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

uint64_t OUTLINED_FUNCTION_19_9()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

Swift::String __swiftcall INIntentCategory.asINPBString()()
{
  if (v0 >= 10 && __OFADD__(v0++, 1))
  {
LABEL_31:
    __break(1u);
    JUMPOUT(0xB2E90);
  }

  if (v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v0 > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  switch(v0)
  {
    case 1:
      v2 = @"CATEGORY_INFORMATION";
      goto LABEL_27;
    case 2:
      v2 = @"CATEGORY_PLAY_AUDIO";
      goto LABEL_27;
    case 3:
      v2 = @"CATEGORY_PLAY_VIDEO";
      goto LABEL_27;
    case 4:
      v2 = @"CATEGORY_ORDER";
      goto LABEL_27;
    case 5:
      v2 = @"CATEGORY_NAVIGATION";
      goto LABEL_27;
    case 6:
      v2 = @"CATEGORY_START";
      goto LABEL_27;
    case 7:
      v2 = @"CATEGORY_SHARE";
      goto LABEL_27;
    case 8:
      v2 = @"CATEGORY_CREATE";
      goto LABEL_27;
    case 9:
      v2 = @"CATEGORY_SEARCH";
      goto LABEL_27;
    case 11:
      v2 = @"CATEGORY_TOGGLE";
      goto LABEL_27;
    case 12:
      v2 = @"CATEGORY_DOWNLOAD";
      goto LABEL_27;
    case 13:
      v2 = @"CATEGORY_LOG";
      goto LABEL_27;
    case 14:
      v2 = @"CATEGORY_CHECK_IN";
      goto LABEL_27;
    case 15:
      v2 = @"CATEGORY_WORKFLOW";
      goto LABEL_27;
    case 16:
      v2 = @"CATEGORY_REQUEST";
      goto LABEL_27;
    case 17:
      v2 = @"CATEGORY_SET";
      goto LABEL_27;
    case 18:
      v2 = @"CATEGORY_CALL_AUDIO";
      goto LABEL_27;
    case 19:
      v2 = @"CATEGORY_CALL_VIDEO";
      goto LABEL_27;
    case 20:
      v2 = @"CATEGORY_PLAY_SOUND";
      goto LABEL_27;
    case 21:
      v2 = @"CATEGORY_USER_ACTIVITY";
LABEL_27:
      v3 = v2;
      break;
    default:
      v2 = [NSString stringWithFormat:@"(unknown: %i)", v0];
      break;
  }

  v4 = v2;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

INPerson __swiftcall Contact.toINPerson()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleVSgMd, &_s13SiriInference13ContactHandleVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for PersonNameComponents();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Contact.namePrefix.getter();
  v37[5] = v12;
  v37[6] = v11;
  v13 = Contact.givenName.getter();
  v37[3] = v14;
  v37[4] = v13;
  v15 = Contact.middleName.getter();
  v37[1] = v16;
  v37[2] = v15;
  Contact.familyName.getter();
  Contact.nameSuffix.getter();
  Contact.nickname.getter();
  v40 = v7;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v17 = v6;
  v18 = v38;
  v19 = v10;
  PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
  v20 = Contact.handles.getter();
  specialized Collection.first.getter(v20, v18);

  v21 = type metadata accessor for ContactHandle();
  if (__swift_getEnumTagSinglePayload(v18, 1, v21) == 1)
  {
    outlined destroy of ContactHandle?(v18);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = ContactHandle.value.getter();
    v23 = v24;
    (*(*(v21 - 8) + 8))(v18, v21);
  }

  v25 = objc_allocWithZone(INPersonHandle);
  v26 = @nonobjc INPersonHandle.init(value:type:)(v22, v23, 0);
  v27 = v39;
  v28 = v17;
  v29 = v17;
  v30 = v40;
  (*(v39 + 16))(v29, v19, v40);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v30);
  v31 = Contact.id.getter();
  v33 = v32;
  v34 = objc_allocWithZone(INPerson);
  v35 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v26, v28, 0, 0, 0, v31, v33, 0, 0);
  (*(v27 + 8))(v19, v30);
  return v35;
}

uint64_t outlined destroy of ContactHandle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContactHandleVSgMd, &_s13SiriInference13ContactHandleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id @nonobjc INPersonHandle.init(value:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = type metadata accessor for PersonNameComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = String._bridgeToObjectiveC()();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:isa displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

uint64_t DeviceState.asSiriKitDeviceState()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SirikitDeviceState();
  v7[3] = a1;
  v7[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  return SirikitDeviceState.__allocating_init(from:)();
}

uint64_t DeviceState.asWFSiriRunSource()()
{
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 2;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 3;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t DeviceState.currentDevice.getter()
{
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 4;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 5;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 3;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 7;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isPad.getter())
  {
    return 2;
  }

  OUTLINED_FUNCTION_48_2();
  if (dispatch thunk of DeviceState.isAppleTV.getter())
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

void *LinkActionDialogTemplating.__allocating_init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_71_1();
  swift_allocObject();
  v1 = v0[4];
  __swift_mutable_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_79_1();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_51_1(v5, v18);
  v8 = v7(v6);
  v16 = OUTLINED_FUNCTION_54_3(v8, v9, v10, v11, v12, v13, v14, v15, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v16;
}

uint64_t LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v0[6] = *(v0[4] + 64);
  if (v1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[7] = v2;
    *v2 = v3;
    v2[1] = LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:);
    v4 = v0[5];

    return LNDialog.asSpeakableString.getter(v4);
  }

  else
  {
    v6 = v0[5];
    type metadata accessor for SpeakableString();
    v7 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    if (v0[3])
    {
      v11 = v0[3];
    }

    v12 = *(*v0[6] + class metadata base offset for RunLinkActionCATsSimple + 96);

    v19 = v12 + *v12;
    v13 = v12[1];
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_85_2(v14);
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_27_9(v15);

    return v18(v17);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15_2();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(**(v0 + 48) + class metadata base offset for RunLinkActionCATsSimple + 96);

  v10 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_85_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_27_9(v5);

  return v8(v7);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v2[8];
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v0;

  v7 = v2[5];
  if (v2[3])
  {
    v8 = v2[3];
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v13 = v6[1];
    OUTLINED_FUNCTION_87();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_27();
  v1[10] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = v4[13];
  v8 = *v1;
  *v6 = *v1;
  v5[14] = v0;

  v9 = v4[10];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v4[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {

    v13 = v8[1];

    return v13(v3);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[14];

  return v3();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[6];
  v14[11] = *(v14[8] + 64);
  if (v16)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v14[12] = v17;
    *v17 = v18;
    v17[1] = LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:);
    v19 = v14[10];
    OUTLINED_FUNCTION_6_1();

    return LNDialog.asSpeakableString.getter(v20);
  }

  else
  {
    v23 = v14[10];
    v24 = type metadata accessor for SpeakableString();
    v25 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
    v28 = v14[11];
    v29 = v14[9];
    v30 = v14[7];
    v32 = v14[4];
    v31 = v14[5];

    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_45_4();
    v33 = [v30 systemProtocols];
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_66_1();

    v34 = objc_opt_self();
    v35 = OUTLINED_FUNCTION_44_5([v34 searchSystemProtocol]);
    OUTLINED_FUNCTION_34_8(v35);
    OUTLINED_FUNCTION_92_0();

    v36 = [v30 systemProtocols];
    OUTLINED_FUNCTION_91();

    v37 = OUTLINED_FUNCTION_43_4([v34 deleteEntitySystemProtocol]);
    OUTLINED_FUNCTION_35_7(v37);
    OUTLINED_FUNCTION_90_0();

    OUTLINED_FUNCTION_61_0();
    v39 = *(v38 + class metadata base offset for RunLinkActionCATsSimple + 112);
    OUTLINED_FUNCTION_6_17();
    v54 = v40 + *v40;
    v42 = *(v41 + 4);
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_31_4(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_26_12(v44);
    OUTLINED_FUNCTION_6_1();

    return v50(v46, v47, v48, v49, v50, v51, v52, v53, a9, v54, a11, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[11];
  v17 = v14[9];
  v18 = v14[7];
  v20 = v14[4];
  v19 = v14[5];

  OUTLINED_FUNCTION_74_1();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = [v18 systemProtocols];
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_66_1();

  v26 = objc_opt_self();
  v27 = OUTLINED_FUNCTION_44_5([v26 searchSystemProtocol]);
  OUTLINED_FUNCTION_34_8(v27);
  OUTLINED_FUNCTION_92_0();

  v28 = [v18 systemProtocols];
  OUTLINED_FUNCTION_91();

  v29 = OUTLINED_FUNCTION_43_4([v26 deleteEntitySystemProtocol]);
  OUTLINED_FUNCTION_35_7(v29);
  OUTLINED_FUNCTION_90_0();

  OUTLINED_FUNCTION_61_0();
  v31 = *(v30 + class metadata base offset for RunLinkActionCATsSimple + 112);
  OUTLINED_FUNCTION_6_17();
  v47 = v32 + *v32;
  v34 = *(v33 + 4);
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_31_4(v35);
  *v36 = v37;
  OUTLINED_FUNCTION_26_12(v36);
  OUTLINED_FUNCTION_6_1();

  return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, a11, a12, a13, a14);
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = specialized Array.count.getter(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t LinkActionDialogTemplating.unsupportedOnPlatform()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = v1[8];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = DeviceState.asSiriKitDeviceState()(v3, v4);
  v0[3] = v5;
  v6 = *(*v2 + class metadata base offset for RunLinkActionCATsSimple + 144);
  OUTLINED_FUNCTION_2_26();
  v12 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = LinkActionDialogTemplating.unsupportedOnPlatform();

  return v12(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 24);

    v14 = *(v8 + 8);

    return v14(v1);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_27();
  v0[6] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v0[7] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  OUTLINED_FUNCTION_56_1();
  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 80) = Locale.identifier.getter();
  *(v0 + 88) = v7;
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_9_3();
  v10(v9);
  if (!v5)
  {
    v18 = *(v0 + 48);
    v19 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
    v20 = [*(v0 + 24) displayRepresentation];
    v21 = *(v0 + 88);
    if (v20)
    {
      v22 = v20;
      v23 = *(v0 + 80);
      v24 = *(v0 + 40);
      v25 = [v20 title];

      v26 = String._bridgeToObjectiveC()();

      v27 = [v25 localizedStringForLocaleIdentifier:v26];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_74_1();
      v28 = 0;
    }

    else
    {
      v29 = *(v0 + 88);

      v28 = 1;
    }

    v30 = *(v0 + 32);
    __swift_storeEnumTagSinglePayload(*(v0 + 40), v28, 1, v19);
    v31 = *(v30 + 64);
    OUTLINED_FUNCTION_18_4();
    v33 = *(v32 + class metadata base offset for RunLinkActionCATsSimple + 128);
    OUTLINED_FUNCTION_2_26();
    v43 = v34 + *v34;
    v36 = *(v35 + 4);
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_31_4(v37);
    *v38 = v39;
    v38[1] = LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:);
    v40 = *(v0 + 40);
    OUTLINED_FUNCTION_73(*(v0 + 48));
    OUTLINED_FUNCTION_103();

    __asm { BRAA            X2, X16 }
  }

  v11 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 96) = v12;
  *v12 = v13;
  v12[1] = LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:);
  v14 = *(v0 + 48);
  OUTLINED_FUNCTION_103();

  return LNDialog.asSpeakableString.getter(v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = OUTLINED_FUNCTION_20_1();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v6 = v0[15];
  OUTLINED_FUNCTION_87();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = OUTLINED_FUNCTION_20_1();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v6 = v0[14];
  OUTLINED_FUNCTION_87();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = [*(v0 + 24) displayRepresentation];
  v2 = *(v0 + 88);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 80);
    v5 = *(v0 + 40);
    v6 = [v1 title];

    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 localizedStringForLocaleIdentifier:v7];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_74_1();
    v9 = 0;
  }

  else
  {
    v10 = *(v0 + 88);

    v9 = 1;
  }

  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  type metadata accessor for SpeakableString();
  v13 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v13, v9, 1, v14);
  v15 = *(v12 + 64);
  OUTLINED_FUNCTION_18_4();
  v17 = *(v16 + class metadata base offset for RunLinkActionCATsSimple + 128);
  OUTLINED_FUNCTION_2_26();
  v27 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_31_4(v21);
  *v22 = v23;
  v22[1] = LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:);
  v24 = *(v0 + 40);
  OUTLINED_FUNCTION_73(*(v0 + 48));
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X2, X16 }
}

void *LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_71_1();
  v2 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_79_1();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_51_1(v6, v19);
  v9 = v8(v7);
  v17 = OUTLINED_FUNCTION_54_3(v9, v10, v11, v12, v13, v14, v15, v16, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v17;
}

uint64_t LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 136) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_14_0();
  if (!*(v0 + 64))
  {
    v7 = *(v0 + 80);
    type metadata accessor for SpeakableString();
    v8 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    v12 = *(v0 + 80);
    v13 = *(v0 + 136);
    v14 = OUTLINED_FUNCTION_11_13(*(v0 + 72));
    *(v0 + 96) = v14;
    v15 = OUTLINED_FUNCTION_65_1(v14);
    if (v13)
    {
      v16 = *(v15 + 24);
      OUTLINED_FUNCTION_6_17();
      v32 = v17 + *v17;
      v19 = *(v18 + 4);
      v20 = swift_task_alloc();
      v21 = OUTLINED_FUNCTION_31_4(v20);
      *v21 = v22;
      OUTLINED_FUNCTION_37_7(v21);
      OUTLINED_FUNCTION_4_23();
      OUTLINED_FUNCTION_82_2();

      __asm { BRAA            X5, X16 }
    }

    v25 = *(v15 + 16);
    OUTLINED_FUNCTION_6_17();
    v33 = v26 + *v26;
    v28 = *(v27 + 4);
    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    OUTLINED_FUNCTION_40_3(v29);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_82_2();

    __asm { BRAA            X5, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 88) = v1;
  *v1 = v2;
  v1[1] = LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:);
  v3 = *(v0 + 80);
  OUTLINED_FUNCTION_82_2();

  return LNDialog.asSpeakableString.getter(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v7 = *(v6 + 104);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[14] = v0;

  if (!v0)
  {
    v10 = v3[12];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 120);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[16] = v0;

  if (!v0)
  {
    v10 = v3[12];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[10];

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

void LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 136);
  v3 = OUTLINED_FUNCTION_11_13(*(v0 + 72));
  *(v0 + 96) = v3;
  v4 = OUTLINED_FUNCTION_65_1(v3);
  if (v2 == 1)
  {
    v5 = *(v4 + 24);
    OUTLINED_FUNCTION_6_17();
    v21 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_31_4(v9);
    *v10 = v11;
    OUTLINED_FUNCTION_37_7(v10);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_82_2();

    __asm { BRAA            X5, X16 }
  }

  v14 = *(v4 + 16);
  OUTLINED_FUNCTION_6_17();
  v22 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  *(v0 + 120) = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_40_3(v18);
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_82_2();

  __asm { BRAA            X5, X16 }
}

uint64_t LinkActionDialogTemplating.makeActionConfirmationPattern_preRFv2(customResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_14_0();
  if (!*(v0 + 16))
  {
    v6 = *(v0 + 32);
    type metadata accessor for SpeakableString();
    v7 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    v11 = *(v0 + 32);
    v12 = OUTLINED_FUNCTION_11_13(*(v0 + 24));
    *(v0 + 48) = v12;
    v13 = *(OUTLINED_FUNCTION_65_1(v12) + 8);
    OUTLINED_FUNCTION_2_26();
    v22 = v14 + *v14;
    v16 = *(v15 + 4);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_76_2(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_39_8(v18);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X5, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 40) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_73_2(v1);
  OUTLINED_FUNCTION_49_0();

  return LNDialog.asSpeakableString.getter(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[8] = v0;

  if (!v0)
  {
    v10 = v4[6];
    v4[9] = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 72);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[6];
  v2 = v0[4];

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v4 = v0[8];

  return v3();
}

void LinkActionDialogTemplating.makeActionConfirmationPattern_preRFv2(customResponse:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_11_13(*(v0 + 24));
  *(v0 + 48) = v2;
  v3 = *(OUTLINED_FUNCTION_65_1(v2) + 8);
  OUTLINED_FUNCTION_2_26();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_76_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_39_8(v8);
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X5, X16 }
}

uint64_t LinkActionDialogTemplating.makeContinueInAppPattern(customResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  v0[2] = OUTLINED_FUNCTION_28();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_28();
  v0[3] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[4] = v8;
  *v8 = v9;
  v8[1] = LinkActionDialogTemplating.makeContinueInAppPattern(customResponse:);

  return LNDialog.asSpeakableString.getter(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  v5 = *(*v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 48);
  OUTLINED_FUNCTION_2_26();
  v13 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_76_2(v9);
  *v10 = v11;
  v10[1] = LinkActionDialogTemplating.makeContinueInAppPattern(customResponse:);

  return (v13)(0, partial apply for closure #1 in LinkActionDialogTemplating.makeActionPerformedPattern_preRFv2(customResponse:useSonicStatus:), v4);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[8] = v0;

  if (!v0)
  {
    v10 = v4[5];
    v11 = v4[6];

    v4[9] = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[3], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v3 = v0[9];

  return v2(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v6 = v0[8];

  return v5();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog_preRFv2(parameterName:customPrompt:actionMetadata:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_27();
  v1[11] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v2[14];
  v6 = *v1;
  *v4 = *v1;
  v3[15] = v0;

  v7 = v2[11];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2[10], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {

    v12 = v6[1];
    OUTLINED_FUNCTION_87();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[15];

  return v3();
}

uint64_t LinkActionDialogTemplating.makeParameterPromptDialog_preRFv2(parameterName:customPrompt:actionMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[7];
  v14[12] = *(v14[9] + 56);
  if (v16)
  {
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_18_14(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_72_2(v18);
    OUTLINED_FUNCTION_6_1();

    return LNDialog.asSpeakableString.getter(v20);
  }

  else
  {
    v23 = v14[11];
    v24 = type metadata accessor for SpeakableString();
    v25 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
    v28 = v14[12];
    v29 = v14[10];
    v30 = v14[8];
    v32 = v14[5];
    v31 = v14[6];

    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_45_4();
    v33 = [v30 systemProtocols];
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_66_1();

    v34 = objc_opt_self();
    v35 = OUTLINED_FUNCTION_44_5([v34 searchSystemProtocol]);
    OUTLINED_FUNCTION_33_5(v35);
    OUTLINED_FUNCTION_92_0();

    v36 = [v30 systemProtocols];
    OUTLINED_FUNCTION_91();

    v37 = OUTLINED_FUNCTION_43_4([v34 deleteEntitySystemProtocol]);
    OUTLINED_FUNCTION_35_7(v37);
    OUTLINED_FUNCTION_90_0();

    OUTLINED_FUNCTION_61_0();
    v39 = *(v38 + class metadata base offset for RunLinkActionCATs + 56);
    OUTLINED_FUNCTION_6_17();
    v53 = v40 + *v40;
    v42 = *(v41 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v14[14] = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_25_6(v43);
    OUTLINED_FUNCTION_6_1();

    return v50(v45, v46, v47, v48, v49, v50, v51, v52, a9, v53, a11, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[12];
  v17 = v14[10];
  v18 = v14[8];
  v20 = v14[5];
  v19 = v14[6];

  OUTLINED_FUNCTION_74_1();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = [v18 systemProtocols];
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_66_1();

  v26 = objc_opt_self();
  v27 = OUTLINED_FUNCTION_44_5([v26 searchSystemProtocol]);
  OUTLINED_FUNCTION_33_5(v27);
  OUTLINED_FUNCTION_92_0();

  v28 = [v18 systemProtocols];
  OUTLINED_FUNCTION_91();

  v29 = OUTLINED_FUNCTION_43_4([v26 deleteEntitySystemProtocol]);
  OUTLINED_FUNCTION_35_7(v29);
  OUTLINED_FUNCTION_90_0();

  OUTLINED_FUNCTION_61_0();
  v31 = *(v30 + class metadata base offset for RunLinkActionCATs + 56);
  OUTLINED_FUNCTION_6_17();
  v46 = v32 + *v32;
  v34 = *(v33 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v14[14] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_25_6(v35);
  OUTLINED_FUNCTION_6_1();

  return v42(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, a11, a12, a13, a14);
}

uint64_t LinkActionDialogTemplating.makeParameterValueDisambiguationPattern_preRFv2(customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_14_0();
  if (!*(v0 + 16))
  {
    v7 = *(v0 + 40);
    type metadata accessor for SpeakableString();
    v8 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    v12 = *(v0 + 40);
    v13 = OUTLINED_FUNCTION_11_13(*(v0 + 32));
    *(v0 + 56) = v13;
    v14 = *(OUTLINED_FUNCTION_65_1(v13) + 72);
    OUTLINED_FUNCTION_2_26();
    v23 = v15 + *v15;
    v17 = *(v16 + 4);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_85_2(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_17_15(v19);
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X6, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = LinkActionDialogTemplating.makeParameterValueDisambiguationPattern_preRFv2(customPrompt:items:);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_49_0();

  return LNDialog.asSpeakableString.getter(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[9] = v0;

  if (!v0)
  {
    v10 = v4[7];
    v4[10] = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 80);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[7];
  v2 = v0[5];

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v4 = v0[9];

  return v3();
}

void LinkActionDialogTemplating.makeParameterValueDisambiguationPattern_preRFv2(customPrompt:items:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_11_13(*(v0 + 32));
  *(v0 + 56) = v2;
  v3 = *(OUTLINED_FUNCTION_65_1(v2) + 72);
  OUTLINED_FUNCTION_2_26();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_17_15(v8);
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X6, X16 }
}

uint64_t LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for Locale();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_1();
  if (!*(v1 + 16))
  {
    v9 = *(v1 + 64);
    type metadata accessor for SpeakableString();
    v10 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v14 = [*(v1 + 24) displayRepresentation];
    v15 = v14;
    if (v14)
    {
      v17 = *(v1 + 48);
      v16 = *(v1 + 56);
      v19 = *(v1 + 32);
      v18 = *(v1 + 40);
      v20 = [v14 title];

      v21 = v19[6];
      __swift_project_boxed_opaque_existential_1(v19 + 2, v19[5]);
      OUTLINED_FUNCTION_13_5();
      dispatch thunk of DeviceState.siriLocale.getter();
      Locale.identifier.getter();
      v22 = *(v17 + 8);
      v2 = v17 + 8;
      v23 = OUTLINED_FUNCTION_20_1();
      v24(v23);
      v25 = String._bridgeToObjectiveC()();

      v0 = [v20 localizedStringForLocaleIdentifier:v25];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = OUTLINED_FUNCTION_75_1();
    *(v1 + 88) = v28;
    v28[2] = v2;
    v28[3] = v15;
    v28[4] = v27;
    v29 = v0[8];
    OUTLINED_FUNCTION_6_17();
    v36 = v30 + *v30;
    v32 = *(v31 + 4);
    v33 = swift_task_alloc();
    *(v1 + 96) = v33;
    *v33 = v1;
    OUTLINED_FUNCTION_38_6(v33);
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X5, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 72) = v3;
  *v3 = v4;
  v3[1] = LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:);
  v5 = *(v1 + 64);
  OUTLINED_FUNCTION_78();

  return LNDialog.asSpeakableString.getter(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[13] = v0;

  if (!v0)
  {
    v10 = v4[10];
    v11 = v4[11];
    v4[14] = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[7];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v3 = v0[14];

  return v2(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v6 = v0[13];

  return v5();
}

void LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:)()
{
  OUTLINED_FUNCTION_24_1();
  v3 = [*(v1 + 24) displayRepresentation];
  v4 = v3;
  if (v3)
  {
    v6 = *(v1 + 48);
    v5 = *(v1 + 56);
    v8 = *(v1 + 32);
    v7 = *(v1 + 40);
    v9 = [v3 title];

    v10 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
    OUTLINED_FUNCTION_13_5();
    dispatch thunk of DeviceState.siriLocale.getter();
    Locale.identifier.getter();
    v11 = *(v6 + 8);
    v2 = v6 + 8;
    v12 = OUTLINED_FUNCTION_20_1();
    v13(v12);
    v14 = String._bridgeToObjectiveC()();

    v0 = [v9 localizedStringForLocaleIdentifier:v14];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = OUTLINED_FUNCTION_75_1();
  *(v1 + 88) = v17;
  v17[2] = v2;
  v17[3] = v4;
  v17[4] = v16;
  v18 = v0[8];
  OUTLINED_FUNCTION_6_17();
  v25 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  *(v1 + 96) = v22;
  *v22 = v1;
  OUTLINED_FUNCTION_38_6(v22);
  OUTLINED_FUNCTION_60_2();
  OUTLINED_FUNCTION_78();

  __asm { BRAA            X5, X16 }
}

uint64_t closure #1 in LinkActionDialogTemplating.makeParameterValueConfirmationPattern_preRFv2(customPrompt:parameterValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  outlined assign with copy of SpeakableString?(a2, a1);
  if (a4)
  {

    SpeakableString.init(print:speak:)();
    v11 = type metadata accessor for SpeakableString();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for SpeakableString();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
  v13 = type metadata accessor for RunLinkActionParameterConfirmationParameters(0);
  return outlined assign with take of SpeakableString?(v10, a1 + *(v13 + 24));
}

uint64_t LinkActionDialogTemplating.extractDialogAndParamDetails(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v9 = dispatch thunk of Error._code.getter();
  if (v9 == 2005)
  {
    v15 = 1;
    v16 = 1;
    goto LABEL_15;
  }

  if (v9 == 2014)
  {
    v10 = _convertErrorToNSError(_:)();
    v11 = [v10 ln_staticDeferredLocalizedString];

    if (v11)
    {
      v12 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      dispatch thunk of DeviceState.siriLocale.getter();
      Locale.identifier.getter();
      (*(v5 + 8))(v8, v4);
      v13 = String._bridgeToObjectiveC()();

      v14 = [v11 localizedStringForLocaleIdentifier:v13];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_7;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.voiceCommands);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#LinkActionDialogTemplating could not create error dialog from .localizedStringResource error.", v20, 2u);
    }

LABEL_14:
    v16 = 0;
    v15 = 1;
    goto LABEL_15;
  }

  if (v9 != 2009)
  {
    goto LABEL_14;
  }

  swift_getErrorValue();
  Error.localizedDescription.getter();
LABEL_7:
  SpeakableString.init(print:speak:)();
  v15 = 0;
  v16 = 0;
LABEL_15:
  v21 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(a1, v15, 1, v21);
  return v16;
}

uint64_t LinkActionDialogTemplating.makeFailureHandlingIntentDialog(error:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[3];
  v2 = v0[2];
  LinkActionDialogTemplating.extractDialogAndParamDetails(from:)(v0[4]);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_18_4();
  v5 = *(v4 + class metadata base offset for RunLinkActionCATsSimple + 80);
  OUTLINED_FUNCTION_6_17();
  v12 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = LinkActionDialogTemplating.makeFailureHandlingIntentDialog(error:);
  v10 = OUTLINED_FUNCTION_73(v0[4]);

  return v12(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 48) = v0;

  if (!v0)
  {
    *(v4 + 56) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 56);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t LinkActionDialogTemplating.makeGenericError()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[3];
  v2 = *(v0[2] + 64);
  type metadata accessor for SpeakableString();
  v3 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  OUTLINED_FUNCTION_61_0();
  v6 = *(v5 + class metadata base offset for RunLinkActionCATsSimple + 80);
  OUTLINED_FUNCTION_6_17();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = LinkActionDialogTemplating.makeGenericError();
  v11 = OUTLINED_FUNCTION_73(v0[3]);

  return (v13)(v11, 0);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *(v4 + 32);
  v8 = *v1;
  *v6 = *v1;
  *(v5 + 40) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v4 + 24), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v8 + 8);

    return v12(v3);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t LinkActionDialogTemplating.makeFailureHandlingIntentDialog_preRFv2(error:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[4];
  v2 = v0[3];
  v3 = LinkActionDialogTemplating.extractDialogAndParamDetails(from:)(v0[5]);
  v4 = *(v1 + 56);
  OUTLINED_FUNCTION_18_4();
  v6 = *(v5 + class metadata base offset for RunLinkActionCATs + 40);
  OUTLINED_FUNCTION_6_17();
  v15 = (v7 + *v7);
  v9 = *(v8 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v10;
  *v10 = v11;
  v10[1] = LinkActionDialogTemplating.makeFailureHandlingIntentDialog_preRFv2(error:);
  v12 = v0[5];
  v13 = v0[2];

  return (v15)(v13, v12, v3 & 1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 56);

  return v1();
}

uint64_t LinkActionDialogTemplating.makeNeedsDisambiguationTitle_preRFv2(customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for TemplatingText();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v0[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v0[10] = v11;
  v13 = *(v12 + 64);
  v0[11] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  v0[12] = OUTLINED_FUNCTION_28();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_12_0();
  if (v0[2])
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_18_14(v1);
    *v2 = v3;
    v2[1] = LinkActionDialogTemplating.makeNeedsDisambiguationTitle_preRFv2(customPrompt:items:);
    v4 = v0[12];

    return LNDialog.asSpeakableString.getter(v4);
  }

  else
  {
    v6 = v0[12];
    type metadata accessor for SpeakableString();
    v7 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_19_10(v0[4]);
    v12 = *(v11 + class metadata base offset for RunLinkActionCATs + 48);
    OUTLINED_FUNCTION_2_26();
    v20 = v13 + *v13;
    v15 = *(v14 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[14] = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_28_6(v16);

    return v19(v18);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10(*(v0 + 32));
  v2 = *(v1 + class metadata base offset for RunLinkActionCATs + 48);
  OUTLINED_FUNCTION_2_26();
  v11 = v3 + *v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 112) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_28_6(v6);

  return v9(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v43 = v1;
  v2 = v1[11];
  v3 = v1[8];
  v4 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v4, v3);

  v5 = type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_96(v5);
  if (v6)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v4, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v14 = 0;
    v16 = 0;
  }

  else
  {
    v8 = v1[6];
    v7 = v1[7];
    v9 = v1[5];
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2(v0);
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_22_4();
    v13(v12);
    v14 = TemplatingText.text.getter();
    v16 = v15;
    v17 = *(v8 + 8);
    v18 = OUTLINED_FUNCTION_56_1();
    v19(v18);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.voiceCommands);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v25 = v1[11];
  v24 = v1[12];
  v27 = v1[9];
  v26 = v1[10];
  if (v23)
  {
    v41 = v1[9];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    v39 = v25;
    v40 = v24;
    v30 = v14;
    if (v16)
    {
      v31 = v16;
    }

    else
    {
      v14 = 0x2D6C696E2DLL;
      v31 = 0xE500000000000000;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v31, &v42);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v21, v22, "#LinkActionDialogTemplating makeNeedsDisambiguationTitle (pre-RF2.0) needsDisambiguationText=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);

    (*(v26 + 8))(v39, v41);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v40, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v30 = v14;
  }

  v34 = v1[11];
  v33 = v1[12];
  v36 = v1[7];
  v35 = v1[8];

  OUTLINED_FUNCTION_12_7();

  return v37(v30, v16);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[12], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v5 = v0[15];

  return v4();
}

uint64_t LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Locale();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_76_2(v7);
  *v8 = v9;
  v8[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);

  return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  *v4 = *v1;
  v3[8] = v8;
  v3[9] = v9;

  if (v0)
  {
    v10 = v3[6];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    v13 = async function pointer to static LabelTemplates.cancel()[1];
    v14 = swift_task_alloc();
    v3[10] = v14;
    *v14 = v7;
    v14[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);

    return static LabelTemplates.cancel()();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  *v4 = *v1;
  v3[11] = v8;
  v3[12] = v9;

  if (v0)
  {
    v10 = v3[9];

    v11 = v3[6];

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v10 = *(v9 + 104);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[14] = v0;

  if (v0)
  {
    v13 = v7[12];
  }

  else
  {
    v7[15] = v3;
    v7[16] = v5;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);

  v6 = OUTLINED_FUNCTION_57_3();

  return v7(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v10 = *(v9 + 136);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[18] = v0;

  if (v0)
  {
    v13 = v7[12];
  }

  else
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);

  v6 = OUTLINED_FUNCTION_57_3();

  return v7(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *(v5 + 168);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[23] = v10;
  v3[24] = v11;
  v3[25] = v0;

  if (v0)
  {
    v12 = v3[12];
    v13 = v3[9];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 192);

  if (v1)
  {
    v2 = *(v0 + 192);
    v3 = (v0 + 184);
    v4 = *(v0 + 72);
  }

  else
  {
    v2 = *(v0 + 72);
    v3 = (v0 + 64);
  }

  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *v3;
  v8 = *(v0 + 48);

  v9 = *(v0 + 8);

  return v9(v7, v2, v6, v5);
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 112);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 200);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();

  return v3();
}