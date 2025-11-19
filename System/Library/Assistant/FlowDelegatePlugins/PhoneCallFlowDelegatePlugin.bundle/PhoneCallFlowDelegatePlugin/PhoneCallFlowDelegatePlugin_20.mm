uint64_t key path setter for NLTransformer.currentTransformation : NLTransformer(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v5, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of TransformationResult?(v5, v3 + 72, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  return swift_endAccess();
}

uint64_t NLTransformer.__allocating_init(referenceResolver:featureManager:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = a3(v13, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

void NLTransformer.transformToAnyPhoneNLIntent(parse:callStateProvider:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Parse();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  OUTLINED_FUNCTION_2_0();
  v19 = (*(v18 + 248))(v3);
  if (v19)
  {
    v20 = v19;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v21, static Logger.siriPhone);

    v22 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v23 = OUTLINED_FUNCTION_14_2();
      v74 = v23;
      v24 = OUTLINED_FUNCTION_3_57(4.8149e-34);
      v77 = 0;
      v78 = v25;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v24, v26, v27, v28);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v74);
      OUTLINED_FUNCTION_17_21();

      *(v14 + 4) = v0;
      OUTLINED_FUNCTION_9_38();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_14_0();
    }

    *(v5 + 24) = type metadata accessor for PhoneCallControlNLIntent();
    *(v5 + 32) = &protocol witness table for PhoneCallControlNLIntent;
    *v5 = v20;
  }

  else
  {
    (*(*v0 + 192))(&v74, v3);
    if (v76)
    {
      outlined init with take of PhoneCallFeatureFlagProviding(&v74, &v77);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v34 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v34, static Logger.siriPhone);

      v35 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_31_13())
      {
        OUTLINED_FUNCTION_42();
        v36 = OUTLINED_FUNCTION_14_2();
        v73 = v36;
        v74 = 0;
        v37 = OUTLINED_FUNCTION_3_57(4.8149e-34);
        v75 = v38;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v37, v39, v40, v41);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v73);
        OUTLINED_FUNCTION_17_21();

        *(v14 + 4) = v0;
        OUTLINED_FUNCTION_9_38();
        _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_14_0();
      }

      v47 = v79;
      v48 = v80;
      v49 = __swift_project_boxed_opaque_existential_1(&v77, v79);
      *(v5 + 24) = v47;
      *(v5 + 32) = *(v48 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
      (*(*(v47 - 8) + 16))(boxed_opaque_existential_1, v49, v47);
      __swift_destroy_boxed_opaque_existential_1(&v77);
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v74, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v51 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v51, static Logger.siriPhone);
      v52 = *(v9 + 16);
      v52(v17, v3, v6);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_86_1();
        v71 = v54;
        v56 = v55;
        v72 = OUTLINED_FUNCTION_16_13();
        v74 = v72;
        *v56 = 136315394;
        v57 = v1[4];
        v58 = v1[5];
        v59 = v1[6];
        v60 = v1[7];
        v77 = 0;
        v78 = 0xE000000000000000;
        v70 = v53;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v57, v58, v59, v60);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v74);
        OUTLINED_FUNCTION_17_21();

        *(v56 + 4) = v1;
        *(v56 + 12) = 2080;
        v52(v14, v17, v6);
        v61 = String.init(describing:)(v14);
        v63 = v62;
        v64 = OUTLINED_FUNCTION_15_31();
        v65(v64);
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v74);

        *(v56 + 14) = v66;
        v67 = v70;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v68 = OUTLINED_FUNCTION_15_31();
        v69(v68);
      }

      *(v5 + 32) = 0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
    }
  }

  OUTLINED_FUNCTION_65();
}

void NLTransformer.transformToPhoneCallNLIntent(parse:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v210 = v3;
  v4 = type metadata accessor for MessagePayload.ClientAction();
  v5 = OUTLINED_FUNCTION_7(v4);
  v197 = v6;
  v198 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v194 = v10 - v9;
  OUTLINED_FUNCTION_15_0();
  v11 = type metadata accessor for IFClientActionParse();
  v12 = OUTLINED_FUNCTION_7(v11);
  v195 = v13;
  v196 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v193 = v17 - v16;
  OUTLINED_FUNCTION_15_0();
  v18 = type metadata accessor for USOParse();
  v19 = OUTLINED_FUNCTION_7(v18);
  v200 = v20;
  v201 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v199 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v205 = (&v193 - v27);
  OUTLINED_FUNCTION_15_0();
  v28 = type metadata accessor for Siri_Nlu_External_UserParse();
  v29 = OUTLINED_FUNCTION_7(v28);
  v206 = v30;
  v207 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_12_5();
  v35 = v33 - v34;
  __chkstk_darwin(v36);
  v204 = &v193 - v37;
  OUTLINED_FUNCTION_15_0();
  v202 = type metadata accessor for PhoneError();
  v38 = OUTLINED_FUNCTION_23_1(v202);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_4();
  v203 = v42 - v41;
  OUTLINED_FUNCTION_15_0();
  v43 = type metadata accessor for Parse();
  v208 = OUTLINED_FUNCTION_7(v43);
  v209 = v44;
  v46 = *(v45 + 64);
  __chkstk_darwin(v208);
  OUTLINED_FUNCTION_12_5();
  v49 = v47 - v48;
  v51 = __chkstk_darwin(v50);
  v53 = &v193 - v52;
  __chkstk_darwin(v51);
  v55 = (&v193 - v54);
  v56 = type metadata accessor for NLIntent();
  v57 = OUTLINED_FUNCTION_7(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_4();
  v64 = v63 - v62;
  static HashableParse.from(_:)(v2, v216);
  if (*&v216[2])
  {
    v217[0] = v216[0];
    v217[1] = v216[1];
    v217[2] = v216[2];
    NLTransformer.alreadyTransformed(newHash:)(v217, v215);
    v65 = v0;
    if (v215[4])
    {
      memcpy(v216, v215, 0x58uLL);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v66 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v66, static Logger.siriPhone);
      outlined init with copy of TransformationResult(v216, v215);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_86_1();
        v211[0] = OUTLINED_FUNCTION_16_13();
        v70 = OUTLINED_FUNCTION_22_14(4.8151e-34);
        *&v212 = 0;
        *(&v212 + 1) = v71;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v70, v72, v73, v74);
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v212, *(&v212 + 1), v211);

        *(v69 + 4) = v75;
        *(v69 + 12) = 2080;
        outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v215[6], &v212, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        v76 = OUTLINED_FUNCTION_23_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
        String.init<A>(describing:)();
        outlined destroy of TransformationResult(v215);
        v78 = OUTLINED_FUNCTION_23_14();
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v80);

        *(v69 + 14) = v81;
        OUTLINED_FUNCTION_27_15(&dword_0, v82, v83, "%s found cached result. Returning result: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        outlined destroy of TransformationResult(v215);
      }

      outlined destroy of HashableParse(v217);
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v216[3], v210, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      outlined destroy of TransformationResult(v216);
      goto LABEL_26;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v215, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    v102 = v209;
    v103 = v2;
    v104 = v208;
    (*(v209 + 16))(v55, v103, v208);
    v105 = (*(v102 + 88))(v55, v104);
    if (v105 == enum case for Parse.NLv3IntentOnly(_:))
    {
      v106 = OUTLINED_FUNCTION_6_48();
      v107(v106);
    }

    else
    {
      if (v105 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v105 == enum case for Parse.NLv4IntentOnly(_:))
        {
          v133 = OUTLINED_FUNCTION_6_48();
          v134(v133);
          v135 = *v55;
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2();
          }

          v136 = type metadata accessor for Logger();
          __swift_project_value_buffer(v136, static Logger.siriPhone);

          v137 = Logger.logObject.getter();
          v138 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v137, v138))
          {
            v139 = OUTLINED_FUNCTION_86_1();
            v140 = swift_slowAlloc();
            v209 = v135;
            v141 = v140;
            v142 = swift_slowAlloc();
            v215[0] = v142;
            *v139 = 136315394;
            v143 = v0[4];
            v144 = v0[5];
            v145 = v0[6];
            v146 = v0[7];
            v147 = v0;
            *&v216[0] = 0;
            *(&v216[0] + 1) = 0xE000000000000000;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v143, v144, v145, v146);
            v148 = OUTLINED_FUNCTION_13_36();

            *(v139 + 4) = v148;
            *(v139 + 12) = 2112;
            v149 = v203;
            swift_storeEnumTagMultiPayload();
            lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
            swift_allocError();
            PhoneError.logged()(v150);
            outlined destroy of PhoneError(v149);
            v151 = _swift_stdlib_bridgeErrorToNSError();
            *(v139 + 14) = v151;
            *v141 = v151;
            _os_log_impl(&dword_0, v137, v138, "%s %@", v139, 0x16u);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v141, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v135 = v209;
            OUTLINED_FUNCTION_26_0();
            __swift_destroy_boxed_opaque_existential_1(v142);
            OUTLINED_FUNCTION_26_0();
            OUTLINED_FUNCTION_14_0();
          }

          else
          {
            v147 = v0;
          }

          v157 = v205;
          static ConversionUtils.toUserParse(from:)();
          v158 = v207;
          if (__swift_getEnumTagSinglePayload(v157, 1, v207) == 1)
          {
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v157, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
            v65 = v147;

            swift_unknownObjectRetain();
            v159 = Logger.logObject.getter();
            static os_log_type_t.error.getter();
            swift_unknownObjectRelease();

            if (OUTLINED_FUNCTION_31_13())
            {
              v160 = OUTLINED_FUNCTION_86_1();
              v215[0] = OUTLINED_FUNCTION_16_13();
              v161 = OUTLINED_FUNCTION_3_57(4.8151e-34);
              *&v216[0] = 0;
              *(&v216[0] + 1) = v162;
              DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v161, v163, v164, v165);
              v166 = OUTLINED_FUNCTION_13_36();

              *(v160 + 4) = v166;
              *(v160 + 12) = 2080;
              *&v216[0] = v135;
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
              v167 = String.init<A>(describing:)();
              v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v168, v215);

              *(v160 + 14) = v169;
              OUTLINED_FUNCTION_9_38();
              _os_log_impl(v170, v171, v172, v173, v174, 0x16u);
              swift_arrayDestroy();
              v65 = v147;
              OUTLINED_FUNCTION_26_0();
              OUTLINED_FUNCTION_14_0();

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v214 = 0;
            v212 = 0u;
            v213 = 0u;
          }

          else
          {
            v182 = v206;
            v183 = v204;
            (*(v206 + 32))(v204, v157, v158);
            v65 = v147;
            NLTransformer.transformToPhoneCallNLIntent(userParse:)();
            swift_unknownObjectRelease();
            (*(v182 + 8))(v183, v158);
          }
        }

        else if (v105 == enum case for Parse.uso(_:))
        {
          v152 = OUTLINED_FUNCTION_6_48();
          v153(v152);
          v155 = v199;
          v154 = v200;
          v156 = v201;
          (*(v200 + 32))(v199, v55, v201);
          USOParse.userParse.getter();
          NLTransformer.transformToPhoneCallNLIntent(userParse:)();
          (*(v206 + 8))(v35, v207);
          (*(v154 + 8))(v155, v156);
        }

        else if (v105 == enum case for Parse.ifClientAction(_:))
        {
          v175 = OUTLINED_FUNCTION_6_48();
          v176(v175);
          v178 = v195;
          v177 = v196;
          v179 = v193;
          (*(v195 + 32))(v193, v55, v196);
          v180 = v194;
          IFClientActionParse.clientAction.getter();
          v181 = [objc_allocWithZone(CNContactStore) init];
          v215[3] = type metadata accessor for CNContactStore();
          v215[4] = &protocol witness table for CNContactStore;
          v215[0] = v181;
          *(&v216[1] + 1) = &type metadata for PhoneCallIFIntent;
          *&v216[2] = &protocol witness table for PhoneCallIFIntent;
          *&v216[0] = swift_allocObject();
          static PhoneCallIFIntent.from(clientAction:contactStore:)(v180, v215, *&v216[0] + 16);
          (*(v197 + 8))(v180, v198);
          (*(v178 + 8))(v179, v177);
          __swift_destroy_boxed_opaque_existential_1(v215);
          v212 = v216[0];
          v213 = v216[1];
          v214 = *&v216[2];
        }

        else
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2();
          }

          v184 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_9_0(v184, static Logger.siriPhone);

          v185 = Logger.logObject.getter();
          v186 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v185, v186))
          {
            OUTLINED_FUNCTION_42();
            v187 = OUTLINED_FUNCTION_14_2();
            v215[0] = v187;
            *v102 = 136315138;
            v188 = OUTLINED_FUNCTION_25_17();
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v188, v189, v190, v191);
            v192 = OUTLINED_FUNCTION_13_36();

            *(v102 + 4) = v192;
            _os_log_impl(&dword_0, v185, v186, "%s got an unknown parse - this should be unreachable! All parses must have also have a cache key.", v102, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v187);
            v65 = v0;
            v104 = v208;
            OUTLINED_FUNCTION_26_0();
            v102 = v209;
            OUTLINED_FUNCTION_26_0();
          }

          v214 = 0;
          v212 = 0u;
          v213 = 0u;
          (*(v102 + 8))(v55, v104);
        }

        goto LABEL_20;
      }

      v109 = OUTLINED_FUNCTION_6_48();
      v110(v109);
      v111 = *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));
    }

    (*(v59 + 32))(v64, v55, v56);
    NLTransformer.transformToPhoneCallNLIntent(nlv3Intent:)();
    (*(v59 + 8))(v64, v56);
LABEL_20:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v112 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v112, static Logger.siriPhone);
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v212, v216, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = OUTLINED_FUNCTION_86_1();
      v211[0] = OUTLINED_FUNCTION_16_13();
      v116 = OUTLINED_FUNCTION_22_14(4.8151e-34);
      v215[0] = 0;
      v215[1] = v117;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v116, v118, v119, v120);
      v121 = v65;
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v215[0], v215[1], v211);

      *(v115 + 4) = v122;
      *(v115 + 12) = 2080;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v216, v215, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v123 = OUTLINED_FUNCTION_23_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(v123, v124);
      v125 = String.init<A>(describing:)();
      v127 = v126;
      v65 = v121;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v216, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v211);

      *(v115 + 14) = v128;
      OUTLINED_FUNCTION_27_15(&dword_0, v129, v130, "%s found no cached result. Transformation generated phoneNLIntent: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v216, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    outlined init with copy of HashableParse(v217, v216);
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v212, &v216[3], &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    NLTransformer.appendToNLIntentHistory(transformationResult:)(v216);
    outlined destroy of HashableParse(v217);
    memcpy(v215, v216, sizeof(v215));
    swift_beginAccess();
    outlined assign with take of TransformationResult?(v215, (v65 + 9), &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    swift_endAccess();
    v131 = v213;
    v132 = v210;
    *v210 = v212;
    *(v132 + 16) = v131;
    *(v132 + 32) = v214;
    goto LABEL_26;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v216, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v84 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v84, static Logger.siriPhone);
  v85 = v208;
  v86 = v209;
  v87 = *(v209 + 16);
  v87(v53, v2, v208);

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = OUTLINED_FUNCTION_86_1();
    LODWORD(v206) = v89;
    v91 = v90;
    v207 = OUTLINED_FUNCTION_16_13();
    v215[0] = v207;
    *v91 = 136315394;
    v92 = OUTLINED_FUNCTION_25_17();
    v205 = v88;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v92, v93, v94, v95);
    v96 = OUTLINED_FUNCTION_13_36();

    *(v91 + 4) = v96;
    *(v91 + 12) = 2080;
    v87(v49, v53, v85);
    String.init(describing:)(v49);
    (*(v86 + 8))(v53, v85);
    v97 = OUTLINED_FUNCTION_23_14();
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v99);

    *(v91 + 14) = v100;
    v101 = v205;
    _os_log_impl(&dword_0, v205, v206, "%s does not support parse: %s", v91, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v86 + 8))(v53, v85);
  }

  v108 = v210;
  *(v210 + 32) = 0;
  *v108 = 0u;
  v108[1] = 0u;
LABEL_26:
  OUTLINED_FUNCTION_65();
}

__n128 TransformationResult.init(hash:nlIntent:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = v6;
  *(a3 + 80) = *(a2 + 4);
  return result;
}

void NLTransformer.transformToPhoneCallNLIntent(userParse:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v6);
  OUTLINED_FUNCTION_6_1(v6);
  if (v16)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);

    v18 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v19 = OUTLINED_FUNCTION_14_2();
      v39[0] = v19;
      v20 = OUTLINED_FUNCTION_3_57(4.8149e-34);
      v35 = 0;
      v36 = v21;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v20, v22, v23, v24);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v39);
      OUTLINED_FUNCTION_17_21();

      *(v6 + 4) = v0;
      OUTLINED_FUNCTION_9_38();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_14_0();
    }

    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    v34 = v2;
    (*(v10 + 32))(v15, v6, v7);
    static Signpost.begin(_:)();
    (*(*v0 + 152))(&v35);
    if (v37)
    {
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v38, v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v35, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v35, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
      memset(v39, 0, 40);
    }

    v30 = v0[2];
    OUTLINED_FUNCTION_2_0();
    (*(v31 + 96))(v15, v39);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    Signpost.OpenSignpost.end()();

    v32 = OUTLINED_FUNCTION_15_31();
    v33(v32);
  }

  OUTLINED_FUNCTION_65();
}

void NLTransformer.transformToPhoneCallNLIntent(nlv3Intent:)()
{
  OUTLINED_FUNCTION_66();
  v51 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for NLIntent();
  v6 = OUTLINED_FUNCTION_7(v5);
  v57 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_12_5();
  v52 = v10 - v11;
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  OUTLINED_FUNCTION_12_5();
  v50 = v17 - v18;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  static Signpost.begin(_:)();
  v54 = v2;
  v55 = v22;
  v24 = v23;
  v56 = v25;
  NLIntent.domainNode.getter();
  v26 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_6_1(v21);
  if (v42)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v21 = v57;
  }

  else
  {
    v53 = v24;
    v24 = 0xE90000000000006CLL;
    v4 = NonTerminalIntentNode.ontologyNodeName.getter();
    OUTLINED_FUNCTION_24_17();
    (*(v41 + 8))(v21, v26);
    v42 = v4 == 0x6C6143656E6F6870 && v21 == 0xE90000000000006CLL;
    if (v42)
    {

      OUTLINED_FUNCTION_21_19();
LABEL_18:
      (*(v21 + 2))(v14, v54, v5);
      *(v4 + 24) = type metadata accessor for PhoneCallNLv3Intent(0);
      *(v4 + 32) = &protocol witness table for PhoneCallNLv3Intent;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
      PhoneCallNLv3Intent.init(intent:)(v14, boxed_opaque_existential_1);
      goto LABEL_21;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    OUTLINED_FUNCTION_21_19();
    if (v43)
    {
      goto LABEL_18;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v27 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v27, static Logger.siriPhone);
  v28 = v52;
  (*(v21 + 2))(v52, v54, v5);
  v29 = v51;

  v30 = v29;
  v31 = v5;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v53 = v24;
    v54 = v31;
    v34 = OUTLINED_FUNCTION_86_1();
    v49 = OUTLINED_FUNCTION_16_13();
    v60 = v49;
    *v34 = 136315394;
    v35 = v30[4];
    v36 = v30[5];
    v37 = v30[6];
    v38 = v30[7];
    v58 = 0;
    v59 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v35, v36, v37, v38);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v60);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = v50;
    NLIntent.domainNode.getter();
    OUTLINED_FUNCTION_6_1(v40);
    if (v42)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
      v45 = 0xE700000000000000;
      v46 = 0x6E776F6E6B6E75;
    }

    else
    {
      v45 = v40;
      v46 = NonTerminalIntentNode.ontologyNodeName.getter();
      OUTLINED_FUNCTION_24_17();
      (*(v47 + 8))(v40, v26);
    }

    (*(v57 + 1))(v28, v54);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v60);

    *(v34 + 14) = v48;
    _os_log_impl(&dword_0, v32, v33, "%s NLv3Intent is not in the phoneCall domain: %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_14_0();
  }

  else
  {

    (*(v21 + 1))(v28, v31);
  }

  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
LABEL_21:
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

uint64_t NLTransformer.getCurrentNLResult()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v3 = (*(v2 + 128))();
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of TransformationResult(v3 + 88 * v4 - 56, a1);
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
  }
}

void NLTransformer.getPreviousTransformedNLResult()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v3 = (*(v2 + 128))();
  v4 = specialized BidirectionalCollection.suffix(_:)(2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((v9 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = v12[2];

  if (__OFSUB__(v10 >> 1, v8))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 != (v10 >> 1) - v8)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_2:
    specialized _copyCollectionToContiguousArray<A>(_:)(v4, v6, v8, v10);
    v6 = v11;
    goto LABEL_9;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_17_21();
  swift_unknownObjectRelease();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  if (v6[2] > 1uLL)
  {
    outlined init with copy of TransformationResult((v6 + 4), a1);
  }

  else
  {

    OUTLINED_FUNCTION_4_42();
  }
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(v2, -result, 0, a2);
    if (v3)
    {
      result = 0;
    }

    if (v2 >= result)
    {
      v4 = specialized Array.subscript.getter();

      return v4;
    }
  }

  __break(1u);
  return result;
}

double NLTransformer.alreadyTransformed(newHash:)@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 152))(v6);
  if (v6[4])
  {
    memcpy(__dst, v6, sizeof(__dst));
    if (specialized == infix<A>(_:_:)(__dst[0], *a1) & 1) != 0 && (static AnyHashable.== infix(_:_:)())
    {
      memcpy(a2, __dst, 0x58uLL);
      return result;
    }

    outlined destroy of TransformationResult(__dst);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  }

  return OUTLINED_FUNCTION_4_42();
}

uint64_t NLTransformer.appendToNLIntentHistory(transformationResult:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  v5 = *(v4 + 128);
  v6 = *(v5() + 16);

  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = (v5)(v7);
  specialized BidirectionalCollection.last.getter(v8, v36);

  if (v37)
  {
    outlined init with copy of HashableParse(v36, v41);
    outlined destroy of TransformationResult(v36);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    memset(v41, 0, sizeof(v41));
  }

  outlined init with copy of HashableParse(a1, v40);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v41, v36, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v40, v38, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if (!v37)
  {
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, v12, v13);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, v15, v16);
    if (!v39)
    {
      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
    }

    goto LABEL_13;
  }

  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v36, v35, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if (!v39)
  {
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, v18, v19);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, v21, v22);
    outlined destroy of HashableParse(v35);
LABEL_13:
    v23 = &_s27PhoneCallFlowDelegatePlugin13HashableParseVSg_ADtMd;
    v24 = &_s27PhoneCallFlowDelegatePlugin13HashableParseVSg_ADtMR;
    v25 = v36;
LABEL_15:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, v23, v24);
    goto LABEL_16;
  }

  v34[0] = v38[0];
  v34[1] = v38[1];
  v34[2] = v39;
  if ((specialized == infix<A>(_:_:)(v35[0], LOBYTE(v38[0])) & 1) == 0)
  {
    outlined destroy of HashableParse(v34);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v26, v27, v28);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v29, v30, v31);
    outlined destroy of HashableParse(v35);
    OUTLINED_FUNCTION_12_37();
    goto LABEL_15;
  }

  v9 = static AnyHashable.== infix(_:_:)();
  outlined destroy of HashableParse(v34);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  outlined destroy of HashableParse(v35);
  result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if ((v9 & 1) == 0)
  {
LABEL_16:
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v32 = *(*(v2 + 64) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v32);
    v33 = *(v2 + 64);
    *(v33 + 16) = v32 + 1;
    outlined init with copy of TransformationResult(a1, v33 + 88 * v32 + 32);
    *(v2 + 64) = v33;
    return swift_endAccess();
  }

  return result;
}

uint64_t NLTransformer.transformToCallControlNLIntent(parse:)()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 104))();
}

uint64_t specialized NLTransformer.__allocating_init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NLTransformer();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  v14 = specialized NLTransformer.init(referenceResolver:featureManager:)(v12, a2, v13, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v14;
}

uint64_t specialized NLTransformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = v14;
  v47[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(v10 + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 32) = type metadata accessor for NLTransformer();
  *(a3 + 40) = &outlined read-only object #0 of specialized NLTransformer.init(referenceResolver:featureManager:);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = _swiftEmptyArrayStorage;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = boxed_opaque_existential_1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    v42 = a5;
    v43 = a2;
    v40 = v13;
    v41 = v10;
    v23 = *(a3 + 32);
    v24 = *(a3 + 40);
    v26 = *(a3 + 48);
    v25 = *(a3 + 56);
    v44 = 0;
    v45 = 0xE000000000000000;
    v46 = v22;

    v27 = v26;
    a2 = v43;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v23, v24, v27, v25);
    v10 = v41;

    v13 = v40;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v46);

    *(v21 + 4) = v28;
    a5 = v42;
    _os_log_impl(&dword_0, v18, v19, "%s is initialized, this function should be only be called once for each makeFlowFor", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);

    boxed_opaque_existential_1 = v39;
  }

  v29 = type metadata accessor for NLv4Transformer(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  (*(v10 + 16))(v13, boxed_opaque_existential_1, a4);

  *(a3 + 16) = specialized NLv4Transformer.init(referenceResolver:featureManager:)(v13, a2, v32, a4, a5);
  outlined init with copy of SignalProviding(v47, a3 + 160);
  v33 = type metadata accessor for SingleIntentCacheProvider();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_424FE0;
  v35 = type metadata accessor for PhoneCallControlNLTransformer();
  v36 = swift_allocObject();
  v36[5] = v33;
  v36[6] = &protocol witness table for SingleIntentCacheProvider;
  v36[2] = v34;
  v36[7] = v35;
  v36[8] = &outlined read-only object #0 of specialized PhoneCallControlNLTransformer.init(cacheProvider:);
  v36[9] = 0;
  v36[10] = 0;

  __swift_destroy_boxed_opaque_existential_1(v47);
  *(a3 + 24) = v36;
  return a3;
}

unint64_t type metadata accessor for CNContactStore()
{
  result = lazy cache variable for type metadata for CNContactStore;
  if (!lazy cache variable for type metadata for CNContactStore)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContactStore);
  }

  return result;
}

uint64_t outlined assign with take of TransformationResult?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformationResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_31_13()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)()
{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  OUTLINED_FUNCTION_66_8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  outlined init with copy of SignalProviding(v6, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  outlined init with take of SPHConversation(v11, (v7 + 4));
  v7[9] = v1;
  v8 = v1;

  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  OUTLINED_FUNCTION_37_14();
  return OUTLINED_FUNCTION_50_12();
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_68_4(v2, v3);
  OUTLINED_FUNCTION_106();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  outlined init with take of SPHConversation(&v7, v4 + 32);
  v5 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  OUTLINED_FUNCTION_37_14();
  return OUTLINED_FUNCTION_50_12();
}

uint64_t static Transformer<>.transformer(app:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMR);
  type metadata accessor for Input();
  OUTLINED_FUNCTION_31_14();

  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)()
{
  OUTLINED_FUNCTION_30_1();
  v60 = v1;
  v54 = v5;
  v55 = v4;
  OUTLINED_FUNCTION_65_8(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v8 = OUTLINED_FUNCTION_7(v7);
  v57 = v9;
  v58 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_27_3();
  v59 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMR);
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  v56 = v20;
  __chkstk_darwin(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7(v22);
  v62 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v26);
  v28 = &v53 - v27;
  [objc_allocWithZone(INAnswerCallIntent) init];
  OUTLINED_FUNCTION_51_13();
  outlined init with copy of SignalProviding(v3, v64);
  OUTLINED_FUNCTION_102_0();
  v29 = swift_allocObject();
  outlined init with take of SPHConversation(v64, v29 + 16);
  *(v29 + 56) = v0;
  v30 = v0;
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  OUTLINED_FUNCTION_43_14();
  Transformer.init(transform:)();
  v61 = v28;
  v63 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INAnswerCallIntentExport_pMd, _sSo24INAnswerCallIntentExport_pMR);
  OUTLINED_FUNCTION_52_10();
  Reducer.reduce.getter();
  v32 = OUTLINED_FUNCTION_14_35();
  v33 = v60;
  v34(v32);
  if (v33)
  {

    v35 = *(v17 + 8);
    v36 = OUTLINED_FUNCTION_42_12();
    v37(v36);

    v46 = OUTLINED_FUNCTION_60_7();
    v48 = v22;
  }

  else
  {
    v60 = v22;

    v38 = swift_allocObject();
    v39 = v55;
    *(v38 + 16) = v55;
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v41 = v59;
    OUTLINED_FUNCTION_43_14();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v42);
    OUTLINED_FUNCTION_6_49();
    *(v43 - 16) = v41;
    OUTLINED_FUNCTION_53_13();
    Reducer.reduce.getter();
    v44 = OUTLINED_FUNCTION_14_35();
    v45(v44);

    v49 = OUTLINED_FUNCTION_30_17();
    v41(v49);
    v50 = OUTLINED_FUNCTION_42_12();
    v41(v50);

    *v54 = v31;
    v51 = OUTLINED_FUNCTION_29_19();
    v52(v51);
    v46 = OUTLINED_FUNCTION_60_7();
    v48 = v60;
  }

  v47(v46, v48);
  OUTLINED_FUNCTION_29_2();
}

{
  OUTLINED_FUNCTION_30_1();
  v45 = v1;
  v3 = v2;
  v40 = v5;
  v41 = v4;
  v7 = v6;
  v8 = v4;
  v39 = v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE12IntentExport_pGMR);
  OUTLINED_FUNCTION_7(v43);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_27_3();
  v42 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v15);
  v21 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v38 - v22;
  v24 = [objc_allocWithZone(INHangUpCallIntent) init];
  v25 = v8;
  v26 = v40;
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v25, v7, v40);
  *(swift_allocObject() + 16) = v3;
  v27 = v3;
  v28 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Transformer.init(transform:)();
  v29 = *(v17 + 16);
  v44 = v23;
  v29(v21, v23, v14);
  outlined init with copy of SignalProviding(v26, v46);
  v30 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v17 + 32))(v32 + v30, v21, v14);
  outlined init with take of SPHConversation(v46, v32 + v31);
  *(v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8)) = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INHangUpCallIntentExport_pMd, &_sSo24INHangUpCallIntentExport_pMR);
  Reducer.init(apply:)();
  v33 = Reducer.reduce.getter();
  *&v46[0] = v28;
  v33(v45, v46);

  if (v0)
  {

    v34 = OUTLINED_FUNCTION_64_6();
    v35(v34);
    (*(v17 + 8))(v44, v14);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_64_6();
    v37(v36);
    (*(v17 + 8))(v44, v14);

    *v39 = v28;
  }

  OUTLINED_FUNCTION_29_2();
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INAnswerCallIntentExport_pMd, _sSo24INAnswerCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29INCallGroupConversationFilterCSgMd, &_sSo29INCallGroupConversationFilterCSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INJoinCallIntentExport_pMd, _sSo22INJoinCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo06INJoinH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo06INJoinH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32INAddCallParticipantIntentExport_pMd, &_sSo32INAddCallParticipantIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo05INAddH23ParticipantIntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo05INAddH23ParticipantIntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

uint64_t closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INAnswerCallIntentExport_pMd, _sSo24INAnswerCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

void key path getter for INAnswerCallIntentExport.callIdentifier : INAnswerCallIntentExport(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 callIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for INAnswerCallIntentExport.callIdentifier : INAnswerCallIntentExport(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setCallIdentifier:?];
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v77 = v29;
  v72[0] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMR);
  OUTLINED_FUNCTION_0_7(v31, &a12);
  a10 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v38 = OUTLINED_FUNCTION_0_7(v37, &a10);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_23(v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_23(v72 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMR);
  OUTLINED_FUNCTION_0_7(v45, &a14);
  v75 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v49);
  v51 = v72 - v50;
  v52 = [objc_allocWithZone(INJoinCallIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v28, v26, v24);
  v53 = v24[3];
  v54 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v53);
  v55 = *(v54 + 8);
  v56 = v52;
  v57 = v54;
  v58 = v56;
  v55(v82, v53, v57);
  v59 = v51;
  v81[3] = type metadata accessor for ContactGroupResolver();
  v81[4] = &protocol witness table for ContactGroupResolver;
  __swift_allocate_boxed_opaque_existential_1(v81);
  ContactGroupResolver.init()();
  outlined init with copy of SignalProviding(v82, v80);
  outlined init with copy of SignalProviding(v81, v79);
  v60 = swift_allocObject();
  outlined init with take of SPHConversation(v80, v60 + 16);
  outlined init with take of SPHConversation(v79, v60 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
  v61 = v72[1];
  Transformer.init(transform:)();
  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v62 = v73;
  v63 = v74;
  (*(v40 + 16))(v73, v61, v74);
  v64 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v65 = swift_allocObject();
  (*(v40 + 32))(v65 + v64, v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29INCallGroupConversationFilterCSgMd, &_sSo29INCallGroupConversationFilterCSgMR);
  Transformer.init(transform:)();
  (*(v40 + 8))(v61, v63);
  v78 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INJoinCallIntentExport_pMd, _sSo22INJoinCallIntentExport_pMR);
  Reducer.init(builder:)();
  v66 = Reducer.reduce.getter();
  v82[0] = v58;
  v66(v77, v82);

  if (v20)
  {

    v67 = OUTLINED_FUNCTION_45_10();
    v68(v67);
  }

  else
  {
    v69 = OUTLINED_FUNCTION_45_10();
    v70(v69);

    *v72[0] = v58;
  }

  OUTLINED_FUNCTION_17(&a13);
  v71(v59, v76);
  OUTLINED_FUNCTION_29_2();
}

id key path getter for INJoinCallIntentExport.groupConversationFilter : INJoinCallIntentExport@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 groupConversationFilter];
  *a2 = result;
  return result;
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v71 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v70 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMR);
  OUTLINED_FUNCTION_7(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v36);
  v38 = &v66 - v37;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  OUTLINED_FUNCTION_7(v73);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v43);
  v45 = &v66 - v44;
  v46 = [objc_allocWithZone(INAddCallParticipantIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v29, v27, v25);
  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  OUTLINED_FUNCTION_2_66();
  Transformer.init(transform:)();
  v74 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32INAddCallParticipantIntentExport_pMd, &_sSo32INAddCallParticipantIntentExport_pMR);
  Reducer.init(builder:)();
  Reducer.reduce.getter();
  OUTLINED_FUNCTION_21_20();
  a10 = v47;
  v48(v71, &a10);
  if (v20)
  {

    (*(v33 + 8))(v38, v31);
    (*(v40 + 8))(v45, v73);
  }

  else
  {
    v71 = v40;
    v72 = v33;

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.siriPhone);
    v50 = v47;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      a10 = v54;
      *v53 = 136315394;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGmMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGmMR);
      v55 = String.init<A>(describing:)();
      v69 = v38;
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &a10);
      v68 = v31;
      v58 = v57;

      *(v53 + 4) = v58;
      *(v53 + 12) = 2112;
      *(v53 + 14) = v50;
      v59 = v67;
      *v67 = v50;
      v60 = v50;
      _os_log_impl(&dword_0, v51, v52, "%s --> %@", v53, 0x16u);
      outlined destroy of NSObject?(v59);

      __swift_destroy_boxed_opaque_existential_1(v54);

      (*(v72 + 8))(v69, v68);
    }

    else
    {

      v61 = OUTLINED_FUNCTION_45_10();
      v63(v61, v62);
    }

    v64 = v71;
    v65 = v73;
    *v70 = v50;
    (*(v64 + 8))(v45, v65);
  }

  OUTLINED_FUNCTION_29_2();
}

uint64_t key path getter for PhoneCallNLIntent.contacts : PhoneCallNLIntent@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(uint64_t a1, uint64_t a2)
{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2);
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2);
}

{
  OUTLINED_FUNCTION_68_4(a1, a2);
  OUTLINED_FUNCTION_106();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  outlined init with take of SPHConversation(&v7, v4 + 32);
  v5 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  OUTLINED_FUNCTION_37_14();
  return OUTLINED_FUNCTION_50_12();
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2);
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2);
}

{
  outlined init with copy of SignalProviding(a1, v5);
  v3 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v5, v3 + 16);
  *(v3 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INPreferredCallProvider(0);
  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v273 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v277 = v29;
  v254 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMR);
  OUTLINED_FUNCTION_0_7(v31, &v274);
  v256 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_0_7(v37, &v276);
  v258 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMR);
  OUTLINED_FUNCTION_0_7(v43, &v278);
  v262 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
  OUTLINED_FUNCTION_0_7(v49, &v280);
  v263 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  OUTLINED_FUNCTION_0_7(v55, &v283);
  v264 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  OUTLINED_FUNCTION_0_7(v61, &v287);
  v265 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v65);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  OUTLINED_FUNCTION_0_7(v67, &v289 + 8);
  v269 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v71);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  OUTLINED_FUNCTION_0_7(v73, &v291);
  v270 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v77);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v80 = OUTLINED_FUNCTION_7(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  __chkstk_darwin(v80);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v85);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v86);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v87);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v88);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  v90 = __chkstk_darwin(v89);
  v92 = &v249 - v91;
  __chkstk_darwin(v90);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v93);
  v95 = &v249 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_0_7(v96, &a15);
  v275 = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v100);
  v102 = &v249 - v101;
  v103 = [objc_allocWithZone(INStartCallIntent) init];
  v266 = v28;
  v104 = v28;
  v105 = v26;
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v104, v26, v24);
  v267 = v24;
  outlined init with copy of SignalProviding(v24, &v289);
  OUTLINED_FUNCTION_102_0();
  v106 = swift_allocObject();
  outlined init with take of SPHConversation(&v289, v106 + 16);
  *(v106 + 56) = v105;
  v107 = v105;
  v108 = v103;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  v110 = v277;
  Transformer.init(transform:)();
  v274 = v102;
  v278 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  OUTLINED_FUNCTION_61_11();
  *(v112 - 256) = v111;
  Reducer.init(builder:)();
  Reducer.reduce.getter();
  OUTLINED_FUNCTION_21_20();
  v293 = v108;
  *&v289 = v108;
  v113 = v273;
  v114(v110, &v289);
  if (v113)
  {

    (*(v82 + 8))(v95, v79);
  }

  else
  {
    v252 = v92;
    v253 = v95;
    v273 = v82;
    v115 = v272[0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    OUTLINED_FUNCTION_2_66();
    v116 = v272[1];
    OUTLINED_FUNCTION_31_14();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v117);
    OUTLINED_FUNCTION_6_49();
    *(v118 - 16) = v116;
    OUTLINED_FUNCTION_61_11();
    v120 = *(v119 - 256);
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    OUTLINED_FUNCTION_21_20();
    *&v289 = v108;
    v121(v110, &v289);

    type metadata accessor for INCallDestinationType(0);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v122);
    OUTLINED_FUNCTION_6_49();
    *(v123 - 16) = v115;
    OUTLINED_FUNCTION_54_14(&v271);
    OUTLINED_FUNCTION_61_11();
    v125 = *(v124 - 256);
    Reducer.init(builder:)();
    v251 = v79;
    Reducer.reduce.getter();
    v126 = OUTLINED_FUNCTION_3_58();
    v127(v126);

    outlined init with copy of SignalProviding(v267, &v289);
    OUTLINED_FUNCTION_102_0();
    v128 = swift_allocObject();
    OUTLINED_FUNCTION_36_14(v128);
    v110[7] = v115;
    type metadata accessor for INPreferredCallProvider(0);
    OUTLINED_FUNCTION_69_6();
    v129 = v268;
    OUTLINED_FUNCTION_43_14();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v130);
    OUTLINED_FUNCTION_6_49();
    *(v131 - 16) = v129;
    OUTLINED_FUNCTION_54_14(v288);
    OUTLINED_FUNCTION_61_11();
    v133 = *(v132 - 256);
    Reducer.init(builder:)();
    OUTLINED_FUNCTION_46_12();
    Reducer.reduce.getter();
    v134 = OUTLINED_FUNCTION_3_58();
    v135(v134);
    v136 = v273;
    v139 = v267;

    type metadata accessor for INAudioCallTTYType(0);
    OUTLINED_FUNCTION_11_36();
    OUTLINED_FUNCTION_48_13(&v285);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v140);
    OUTLINED_FUNCTION_6_49();
    *(v141 - 16) = v136;
    OUTLINED_FUNCTION_54_14(&v284);
    Reducer.init(builder:)();
    OUTLINED_FUNCTION_46_12();
    Reducer.reduce.getter();
    v142 = OUTLINED_FUNCTION_3_58();
    v143(v142);

    v144 = v139;
    outlined init with copy of SignalProviding(v139, &v289);
    OUTLINED_FUNCTION_102_0();
    v145 = swift_allocObject();
    OUTLINED_FUNCTION_36_14(v145);
    v110[7] = v136;
    type metadata accessor for INCallCapability(0);
    OUTLINED_FUNCTION_69_6();
    OUTLINED_FUNCTION_48_13(&v282);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v146);
    OUTLINED_FUNCTION_6_49();
    *(v147 - 16) = v136;
    Reducer.init(builder:)();
    OUTLINED_FUNCTION_46_12();
    Reducer.reduce.getter();
    v148 = OUTLINED_FUNCTION_3_58();
    v149(v148);

    [v293 setCallRecordToCallBack:0];
    v153 = v139[3];
    v152 = v139[4];
    __swift_project_boxed_opaque_existential_1(v139, v153);
    (*(v152 + 8))(&v289, v153, v152);
    v154 = [v293 callCapability];
    v155 = [v293 contacts];
    if (v155)
    {
      v156 = v155;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v250 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v250 = 0;
    }

    v157 = swift_allocObject();
    v158 = v250;
    *(v157 + 16) = v154;
    *(v157 + 24) = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);
    OUTLINED_FUNCTION_54_14(&v279 + 8);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(&v289);
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v159);
    OUTLINED_FUNCTION_6_49();
    *(v160 - 16) = v154;
    v249 = v109;
    Reducer.init(builder:)();
    v161 = v251;
    Reducer.reduce.getter();
    v162 = OUTLINED_FUNCTION_3_58();
    v163(v162);
    v250 = 0;

    v164 = v139[3];
    v165 = v139[4];
    __swift_project_boxed_opaque_existential_1(v144, v144[3]);
    (*(v165 + 8))(&v289, v164, v165);
    v288[0] = type metadata accessor for ContactGroupResolver();
    v288[1] = &protocol witness table for ContactGroupResolver;
    __swift_allocate_boxed_opaque_existential_1(&v286);
    ContactGroupResolver.init()();
    outlined init with copy of SignalProviding(&v289, &v282);
    outlined init with copy of SignalProviding(&v286, &v279);
    v166 = swift_allocObject();
    outlined init with take of SPHConversation(&v282, v166 + 16);
    outlined init with take of SPHConversation(&v279, v166 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    v167 = v261;
    OUTLINED_FUNCTION_43_14();
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(&v289);
    __swift_destroy_boxed_opaque_existential_1(&v286);
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v168);
    OUTLINED_FUNCTION_6_49();
    *(v169 - 16) = v167;
    v170 = v260;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v171 = OUTLINED_FUNCTION_3_58();
    v172 = v250;
    v173(v171);
    v174 = v269;
    if (v172)
    {

      OUTLINED_FUNCTION_24_18();
      (v170)(v170, v161);
      v175 = OUTLINED_FUNCTION_27_16(&v279);
      v170(v175);
      v176 = OUTLINED_FUNCTION_27_16(&v281);
      v170(v176);
      v177 = OUTLINED_FUNCTION_27_16(&v284);
      v170(v177);
      v178 = OUTLINED_FUNCTION_27_16(v288);
      v170(v178);
      v179 = OUTLINED_FUNCTION_27_16(&v271);
      v170(v179);
      v180 = OUTLINED_FUNCTION_27_16(&v292);
      v170(v180);
      v181 = OUTLINED_FUNCTION_27_16(v272);
      v170(v181);

      OUTLINED_FUNCTION_17(&v275);
      v182(v167, v259);
      v183 = OUTLINED_FUNCTION_7_41();
      v184(v183);
      v185 = OUTLINED_FUNCTION_8_47();
      v186(v185);
      v187 = OUTLINED_FUNCTION_5_51();
      v188(v187);
      v189 = OUTLINED_FUNCTION_9_39();
      v190(v189);
      v191 = *(v174 + 8);
      v192 = OUTLINED_FUNCTION_28_15();
      v193(v192);
      v137 = OUTLINED_FUNCTION_4_43();
      v138(v137);
    }

    else
    {

      v194 = v277;
      v195 = v277[4];
      __swift_project_boxed_opaque_existential_1(v277, v277[3]);
      v196 = PhoneCallNLIntent.isGroupFaceTimeCall()();
      v250 = 0;
      INStartCallIntent.updateIsGroupCall(isGroupCall:)(v196);
      outlined init with copy of SignalProviding(v144, &v289);
      OUTLINED_FUNCTION_106();
      v197 = swift_allocObject();
      OUTLINED_FUNCTION_36_14(v197);
      v293[7] = v293;
      v293[8] = v195;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      OUTLINED_FUNCTION_69_6();
      v198 = v255;
      OUTLINED_FUNCTION_43_14();
      Transformer.init(transform:)();
      v199 = v257;
      v200 = Transformer.transform.getter();
      v202 = v201;
      OUTLINED_FUNCTION_17(&v273);
      v203(v198, v199);
      v204 = v250;
      v200(&v289, v194);
      if (!v204)
      {

        OUTLINED_FUNCTION_44_10();
        OUTLINED_FUNCTION_23_15();
        v202();
        v226 = OUTLINED_FUNCTION_18_16(&v279);
        (v202)(v226);
        v227 = OUTLINED_FUNCTION_18_16(&v281);
        (v202)(v227);
        v228 = OUTLINED_FUNCTION_18_16(&v284);
        (v202)(v228);
        v229 = OUTLINED_FUNCTION_18_16(v288);
        (v202)(v229);
        v230 = OUTLINED_FUNCTION_18_16(&v271);
        (v202)(v230);
        v231 = OUTLINED_FUNCTION_18_16(&v292);
        (v202)(v231);
        v232 = OUTLINED_FUNCTION_18_16(v272);
        (v202)(v232);
        *v254 = v289;
        OUTLINED_FUNCTION_17(&v275);
        v233 = OUTLINED_FUNCTION_55_12();
        v234(v233);
        v235 = OUTLINED_FUNCTION_7_41();
        v236(v235);
        v237 = OUTLINED_FUNCTION_8_47();
        v238(v237);
        v239 = OUTLINED_FUNCTION_5_51();
        v240(v239);
        v241 = OUTLINED_FUNCTION_9_39();
        v242(v241);
        OUTLINED_FUNCTION_17(v290);
        v243 = OUTLINED_FUNCTION_67_5();
        v244(v243);
        v245 = OUTLINED_FUNCTION_4_43();
        v246(v245);
        OUTLINED_FUNCTION_17(&a14);
        v247 = OUTLINED_FUNCTION_63_6();
        v248(v247);
        goto LABEL_5;
      }

      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_23_15();
      v202();
      v205 = OUTLINED_FUNCTION_18_16(&v279);
      (v202)(v205);
      v206 = OUTLINED_FUNCTION_18_16(&v281);
      (v202)(v206);
      v207 = OUTLINED_FUNCTION_18_16(&v284);
      (v202)(v207);
      v208 = OUTLINED_FUNCTION_18_16(v288);
      (v202)(v208);
      v209 = OUTLINED_FUNCTION_18_16(&v271);
      (v202)(v209);
      v210 = OUTLINED_FUNCTION_18_16(&v292);
      (v202)(v210);
      v211 = OUTLINED_FUNCTION_18_16(v272);
      (v202)(v211);
      OUTLINED_FUNCTION_17(&v275);
      v212 = OUTLINED_FUNCTION_55_12();
      v213(v212);
      v214 = OUTLINED_FUNCTION_7_41();
      v215(v214);
      v216 = OUTLINED_FUNCTION_8_47();
      v217(v216);
      v218 = OUTLINED_FUNCTION_5_51();
      v219(v218);
      v220 = OUTLINED_FUNCTION_9_39();
      v221(v220);
      OUTLINED_FUNCTION_17(v290);
      v222 = OUTLINED_FUNCTION_67_5();
      v223(v222);
      v224 = OUTLINED_FUNCTION_4_43();
      v225(v224);
    }
  }

  OUTLINED_FUNCTION_17(&a14);
  v150 = OUTLINED_FUNCTION_63_6();
  v151(v150);
LABEL_5:
  OUTLINED_FUNCTION_29_2();
}

{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v149 = v20;
  v24 = v23;
  v26 = v25;
  v153 = v27;
  a10 = v28;
  v136 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  OUTLINED_FUNCTION_0_7(v30, &v159);
  v137 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMR);
  OUTLINED_FUNCTION_0_7(v36, &a10);
  v138 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  OUTLINED_FUNCTION_0_7(v42, &a14);
  v141 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  OUTLINED_FUNCTION_0_7(v48, &a18);
  v142 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v52);
  OUTLINED_FUNCTION_27_3();
  v145 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v55 = OUTLINED_FUNCTION_7(v54);
  v143 = v56;
  v144 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_27_3();
  v147 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v62 = OUTLINED_FUNCTION_7(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  __chkstk_darwin(v62);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  v69 = __chkstk_darwin(v68);
  v71 = v135 - v70;
  v72 = __chkstk_darwin(v69);
  v74 = v135 - v73;
  __chkstk_darwin(v72);
  OUTLINED_FUNCTION_13_5();
  v146 = v75;
  __chkstk_darwin(v76);
  v78 = v135 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v80 = OUTLINED_FUNCTION_7(v79);
  v151 = v81;
  v152 = v80;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v84);
  v86 = v135 - v85;
  v87 = [objc_allocWithZone(INStartAudioCallIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v153, v26, v24);
  v140 = v24;
  outlined init with copy of SignalProviding(v24, &v157);
  OUTLINED_FUNCTION_102_0();
  v88 = swift_allocObject();
  outlined init with take of SPHConversation(&v157, v88 + 16);
  *(v88 + 56) = v26;
  v89 = v26;
  v90 = v87;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  Transformer.init(transform:)();
  v150 = v86;
  v155 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  v148 = v91;
  Reducer.init(builder:)();
  v154 = v61;
  Reducer.reduce.getter();
  OUTLINED_FUNCTION_21_20();
  *&v157 = v90;
  v92 = v149;
  v93(a10, &v157);
  if (v92)
  {

    (*(v64 + 8))(v78, v154);
  }

  else
  {
    v135[0] = v71;
    v135[1] = v74;
    v135[2] = v78;
    v149 = v64;
    v94 = v145;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    OUTLINED_FUNCTION_2_66();
    v95 = v147;
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v96);
    OUTLINED_FUNCTION_6_49();
    *(v97 - 16) = v95;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v98 = OUTLINED_FUNCTION_10_38();
    v99(v98);

    type metadata accessor for INCallDestinationType(0);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v100);
    OUTLINED_FUNCTION_6_49();
    *(v101 - 16) = v94;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v102 = OUTLINED_FUNCTION_10_38();
    v103(v102);

    outlined init with copy of SignalProviding(v140, &v157);
    OUTLINED_FUNCTION_102_0();
    v104 = swift_allocObject();
    outlined init with take of SPHConversation(&v157, v104 + 16);
    v105 = v153;
    *(v104 + 56) = v153;
    type metadata accessor for INPreferredCallProvider(0);
    OUTLINED_FUNCTION_69_6();
    OUTLINED_FUNCTION_48_13(&a16);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v106);
    OUTLINED_FUNCTION_6_49();
    *(v107 - 16) = v105;
    v108 = v135[0];
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v109 = OUTLINED_FUNCTION_10_38();
    v110(v109);

    type metadata accessor for INCallRecordType(0);
    v111 = v139;
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v112);
    OUTLINED_FUNCTION_6_49();
    *(v113 - 16) = v111;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v114 = OUTLINED_FUNCTION_10_38();
    v115(v114);
    v116 = v144;

    type metadata accessor for INAudioCallTTYType(0);
    OUTLINED_FUNCTION_11_36();
    OUTLINED_FUNCTION_48_13(&v160);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v117);
    OUTLINED_FUNCTION_6_49();
    *(v118 - 16) = v116;
    OUTLINED_FUNCTION_48_13(&v158);
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v119 = OUTLINED_FUNCTION_10_38();
    v120(v119);

    OUTLINED_FUNCTION_59_7();
    v121 = v154;
    (v116)(v116, v154);
    v122 = OUTLINED_FUNCTION_57_10(&a11);
    v116(v122);
    (v116)(v108, v121);
    v123 = OUTLINED_FUNCTION_57_10(&v156);
    v116(v123);
    (v116)(v146, v121);
    v124 = OUTLINED_FUNCTION_57_10(&v157);
    v116(v124);

    *v136 = v90;
    OUTLINED_FUNCTION_12_38();
    v125 = OUTLINED_FUNCTION_62_10();
    v126(v125);
    v127 = OUTLINED_FUNCTION_15_32();
    v128(v127);
    v129 = OUTLINED_FUNCTION_16_30();
    v130(v129);
    v131 = OUTLINED_FUNCTION_58_6();
    v132(v131);
    v133 = OUTLINED_FUNCTION_47_13();
    v134(v133);
  }

  (*(v151 + 8))(v150, v152);
  OUTLINED_FUNCTION_29_2();
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartVideoCallIntentExport_pMd, &_sSo28INStartVideoCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

uint64_t closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartVideoCallIntentExport_pMd, &_sSo28INStartVideoCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

void key path getter for INAddCallParticipantIntentExport.participants : INAddCallParticipantIntentExport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v9 = OUTLINED_FUNCTION_35_11(a1);
  v11 = [v9 *v10];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for CNContactStore(0, a5, a6);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = 0;
  }

  *v6 = v13;
}

void key path setter for INAddCallParticipantIntentExport.participants : INAddCallParticipantIntentExport(void *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, SEL *a7)
{
  v8 = *a2;
  if (*a1)
  {
    type metadata accessor for CNContactStore(0, a5, a6);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  isa = v9.super.isa;
  [v8 *a7];
}

uint64_t closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallDestinationType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallDestinationType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

uint64_t closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INPreferredCallProvider(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INPreferredCallProvider(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

uint64_t closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INAudioCallTTYType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallRecordType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

uint64_t closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INCallCapability(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  type metadata accessor for INAudioCallTTYType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

uint64_t closure #7 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

id key path getter for INStartCallIntentExport.callRecordFilter : INStartCallIntentExport@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 callRecordFilter];
  *a2 = result;
  return result;
}

uint64_t closure #8 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v1 = *(v18[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v1 + 8))(v4, v18[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v13 = *(v6 + 8);
  v13(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v16 + v15, v12, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v13)(v12, v5);
}

uint64_t key path getter for PhoneCallNLIntent.smsGroups : PhoneCallNLIntent@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 136))(v3, v4);
  *a2 = result;
  return result;
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)()
{
  OUTLINED_FUNCTION_30_1();
  v51 = v1;
  OUTLINED_FUNCTION_65_8(v4);
  v49[0] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v7 = OUTLINED_FUNCTION_7(v6);
  v49[2] = v8;
  v49[3] = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_27_3();
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMR);
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  v49[1] = v19;
  __chkstk_darwin(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7(v21);
  v53 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  v27 = v49 - v26;
  [objc_allocWithZone(INStartVideoCallIntent) init];
  OUTLINED_FUNCTION_51_13();
  outlined init with copy of SignalProviding(v3, v55);
  OUTLINED_FUNCTION_102_0();
  v28 = swift_allocObject();
  outlined init with take of SPHConversation(v55, v28 + 16);
  *(v28 + 56) = v0;
  v29 = v0;
  v30 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  OUTLINED_FUNCTION_43_14();
  Transformer.init(transform:)();
  v52 = v27;
  v54 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartVideoCallIntentExport_pMd, &_sSo28INStartVideoCallIntentExport_pMR);
  OUTLINED_FUNCTION_52_10();
  Reducer.reduce.getter();
  v31 = OUTLINED_FUNCTION_14_35();
  v32 = v51;
  v33(v31);
  if (v32)
  {

    v34 = *(v16 + 8);
    v35 = OUTLINED_FUNCTION_42_12();
    v36(v35);

    v42 = OUTLINED_FUNCTION_60_7();
    v44 = v21;
  }

  else
  {
    v51 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    OUTLINED_FUNCTION_2_66();
    v37 = v50;
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v38);
    OUTLINED_FUNCTION_6_49();
    *(v39 - 16) = v37;
    OUTLINED_FUNCTION_53_13();
    Reducer.reduce.getter();
    v40 = OUTLINED_FUNCTION_14_35();
    v41(v40);

    v45 = OUTLINED_FUNCTION_30_17();
    v37(v45);
    v46 = OUTLINED_FUNCTION_42_12();
    v37(v46);

    *v49[0] = v30;
    v47 = OUTLINED_FUNCTION_29_19();
    v48(v47);
    v42 = OUTLINED_FUNCTION_60_7();
    v44 = v51;
  }

  v43(v42, v44);
  OUTLINED_FUNCTION_29_2();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a1, a2, a3);
  *a4 = v8;
}

void closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v10 = Transformer.transform.getter();
  v10(v13, a1);
  if (v5)
  {
  }

  else
  {

    if (v13[1] || (static Transformer<>.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(a4, a5), v11))
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCallIdentifier:v12];
  }
}

uint64_t static Transformer<>.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 56))(v4, v5);
  LOBYTE(v4) = (*(*v6 + 176))(v6);

  v7 = 0;
  if ((v4 & 1) != 0 && a2)
  {

    if (!App.isFirstParty()())
    {
      v8 = a1[3];
      v9 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v8);
      v7 = (*(v9 + 112))(v8, v9);
      if (!v7)
      {

        return v7;
      }

      v10 = CurrentRequest.refId.getter();
      v12 = v11;

      if (v12)
      {
        v13 = a1[3];
        v14 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v13);
        (*(v14 + 160))(v23, v13, v14);
        v15 = v24;
        v16 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v17 = (*(v16 + 16))(v10, v12, v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v23);
        if (v17)
        {
          v18 = a1[3];
          v19 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, v18);
          (*(v19 + 160))(v23, v18, v19);
          v20 = v24;
          v21 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          v7 = (*(v21 + 32))(v10, v12, v20, v21);

          __swift_destroy_boxed_opaque_existential_1(v23);
          return v7;
        }
      }
    }

    return 0;
  }

  return v7;
}

uint64_t closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  result = __chkstk_darwin(v5 - 8);
  v9 = &v31 - v8;
  v10 = *a1;
  v11 = *(v10 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v32 = a2;
    v33 = v2;
    v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = v10 + 32;
    do
    {
      outlined init with copy of SignalProviding(v13, v38);
      static Signpost.begin(_:)();
      v36 = v15;
      v37 = v14;
      v35 = v16;
      v17 = objc_allocWithZone(INPersonHandle);
      v34 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
      v18 = type metadata accessor for PersonNameComponents();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v18);
      v20 = v39;
      v19 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v21 = (*(v19 + 408))(v20, v19);
      v23 = v22;
      v25 = v39;
      v24 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v26 = (*(v24 + 32))(v25, v24);
      v28 = v27;
      v29 = objc_allocWithZone(INPerson);
      @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v34, v9, v21, v23, 0, v26, v28, 0, 0, 0);
      Signpost.OpenSignpost.end()();

      __swift_destroy_boxed_opaque_existential_1(v38);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = v41[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v13 += 40;
      --v11;
    }

    while (v11);
    v12 = v41;
    a2 = v32;
  }

  *a2 = v12;
  return result;
}

uint64_t closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)@<X0>(void *a1@<X8>)
{
  static Signpost.begin(_:)();
  *a1 = 0;
  Signpost.OpenSignpost.end()();
}

void closure #1 in static Transformer<>.transformer(app:)()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v18[1] = v2;
  v3 = type metadata accessor for Parse();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v11 = v1[1];
  static Signpost.begin(_:)();
  ObjectType = swift_getObjectType();
  v14 = (*(v11 + 24))(ObjectType, v11);
  if (FollowUpOfferType.rawValue.getter(v14) == 0xD000000000000011 && 0x8000000000452840 == v15)
  {

    goto LABEL_8;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_8:
    static PhoneCallNLv3Intent.placeCallBack()(v10);
    goto LABEL_9;
  }

  static PhoneCallNLv3Intent.placeCall()(v10);
LABEL_9:
  (*(v6 + 104))(v10, enum case for Parse.NLv3IntentOnly(_:), v3);
  Input.init(parse:)();
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_29_2();
}

uint64_t objectdestroyTm_9()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

void partial apply for closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)()
{
  OUTLINED_FUNCTION_41_13();
  closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)();
}

{
  OUTLINED_FUNCTION_41_13();
  closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(v0, v1, v2, v3);
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStartkeS0C_Tt1t4G5@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStartkeS0C_Tt1t4g5(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t objectdestroy_23Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t partial apply for closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1);
}

void partial apply for closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, void **a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(a1, a2, v2 + v6, (v2 + v7), *(v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t OUTLINED_FUNCTION_29_19()
{
  v1 = *(v0 - 184);
  v2 = *(*(v0 - 192) + 8);
  return *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_36_14(uint64_t a1)
{
  result = outlined init with take of SPHConversation((v1 - 128), a1 + 16);
  v3 = *(v1 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_14()
{

  return type metadata accessor for CNContactStore(0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_47_13()
{
  v2 = *(v0 + 8);
  result = *(v1 - 224);
  v4 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_12()
{

  return Transformer.init(transform:)();
}

void OUTLINED_FUNCTION_51_13()
{

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_53_13()
{
  v2 = *(v0 - 200);

  return Reducer.init(builder:)();
}

uint64_t OUTLINED_FUNCTION_55_12()
{
  result = *(v0 - 528);
  v2 = *(v0 - 544);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_6()
{
  v2 = *(v0 + 8);
  result = *(v1 - 240);
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_7()
{
  result = *(v0 - 160);
  v2 = *(*(v0 - 152) + 8);
  return result;
}

id static NLv4IntentConversion.setIntentMetadata(for:sharedGlobals:app:previousIntent:)(void *a1, void *a2, uint64_t a3, id a4)
{
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a3, a4, a2);
  v5 = [a1 _metadata];
  if (!v5 || (v6 = v5, v7 = [v5 intentId], v6, !v7))
  {
    v7 = 0;
  }

  [a1 setIdentifier:v7];

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);
  v20 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    v21 = v12;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of static NLv4IntentConversion.setIntentMetadata(for:sharedGlobals:app:previousIntent:), 0, 0);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v21);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = [v20 debugDescription];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_0, v9, v10, "%s Converted intent: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return v20;
}

uint64_t static NLv4IntentConversion.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v37 = a5;
  v38 = a6;
  HIDWORD(v35) = a4;
  v36 = a3;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  v18 = *(v17 + 56);
  v19 = OUTLINED_FUNCTION_8_8();
  v21 = v20(v19);
  v22 = (*(*v21 + 232))(v21);

  if (v22)
  {
    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    v23 = swift_allocObject();
    ObjectType = swift_getObjectType();
    specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(a1, v36, BYTE4(v35) & 1, v37, v38, a7, 0, 1, &v44, v23, a8, ObjectType, a2, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  else
  {
    v25 = type metadata accessor for ContactResolution();
    v26 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, a7[3]);
    v27 = *(v26 + 8);
    v28 = OUTLINED_FUNCTION_8_8();
    v29(v28);
    __swift_project_boxed_opaque_existential_1(&v44, v47);
    OUTLINED_FUNCTION_8_8();
    dispatch thunk of DeviceState.siriLocale.getter();
    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    v30 = swift_allocObject();
    v31 = swift_getObjectType();
    LOBYTE(v33) = 1;
    specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(a1, v36, BYTE4(v35) & 1, v37, v16, v38, a7, 0, v33, &v39, v30, v25, v31, a2, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);

    __swift_destroy_boxed_opaque_existential_1(&v39);
    (*(v13 + 8))(v16, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v44);
}

void static NLv4JoinTransformer.transform(joinTask:)(uint64_t a1@<X8>)
{
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
  v2 = OUTLINED_FUNCTION_7(v118);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_2();
  v111 = v7;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v8);
  v114 = v107 - v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  v12 = v107 - v11;
  v13 = type metadata accessor for ContactQuery();
  v14 = OUTLINED_FUNCTION_7(v13);
  v115 = v15;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v14);
  v20 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_91();
  v117 = v21;
  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
  v22 = v121;
  if (v121)
  {
    v108 = v12;
    v109 = v4;
    v116 = v13;
    v23 = dispatch thunk of UsoEntity_common_PhoneCall.sender.getter();
    v24 = _swiftEmptyArrayStorage;
    v110 = a1;
    v107[0] = v20;
    if (v23)
    {
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_424FD0;
      *(v26 + 32) = v25;
      v113 = v26;
      *(v26 + 40) = 0;
    }

    else
    {
      v113 = _swiftEmptyArrayStorage;
    }

    v112 = v22;
    v29 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    v121 = _swiftEmptyArrayStorage;
    v31 = specialized Array.count.getter(v30);
    v32 = 0;
    while (v31 != v32)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_81;
        }

        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
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
        return;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      ++v32;
      if (v120)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = *(&dword_18 + (v121 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)) >= v35 >> 1)
        {
          OUTLINED_FUNCTION_76(v35);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v121;
        v32 = v34;
      }
    }

    v36 = specialized Array.count.getter(v24);
    if (v36)
    {
      v37 = v36;
      OUTLINED_FUNCTION_10_39(v36, _swiftEmptyArrayStorage);
      if (v37 < 0)
      {
        goto LABEL_84;
      }

      v38 = 0;
      v39 = v121;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v40 = *(v24 + 8 * v38 + 32);
        }

        v121 = v39;
        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v44 = OUTLINED_FUNCTION_76(v41);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v42 + 1, 1);
          v39 = v121;
        }

        ++v38;
        v39[2] = v42 + 1;
        v43 = &v39[2 * v42];
        v43[4] = v40;
        *(v43 + 40) = 2;
      }

      while (v37 != v38);
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
    }

    v45 = dispatch thunk of UsoEntity_common_PhoneCall.participants.getter();
    v46 = _swiftEmptyArrayStorage;
    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = _swiftEmptyArrayStorage;
    }

    v121 = _swiftEmptyArrayStorage;
    v48 = specialized Array.count.getter(v47);
    v49 = 0;
    while (v48 != v49)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v49 >= *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_83;
        }

        v50 = *(v47 + 8 * v49 + 32);
      }

      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_82;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      ++v49;
      if (v120)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v52 = *(&dword_18 + (v121 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)) >= v52 >> 1)
        {
          OUTLINED_FUNCTION_76(v52);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v46 = v121;
        v49 = v51;
      }
    }

    v53 = specialized Array.count.getter(v46);
    if (v53)
    {
      v54 = v53;
      OUTLINED_FUNCTION_10_39(v53, _swiftEmptyArrayStorage);
      if (v54 < 0)
      {
        goto LABEL_85;
      }

      v55 = 0;
      v56 = v121;
      do
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v57 = *(v46 + 8 * v55 + 32);
        }

        v121 = v56;
        v59 = v56[2];
        v58 = v56[3];
        if (v59 >= v58 >> 1)
        {
          v61 = OUTLINED_FUNCTION_76(v58);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v61, v59 + 1, 1);
          v56 = v121;
        }

        ++v55;
        v56[2] = v59 + 1;
        v60 = &v56[2 * v59];
        v60[4] = v57;
        *(v60 + 40) = 1;
      }

      while (v54 != v55);
    }

    else
    {

      v56 = _swiftEmptyArrayStorage;
    }

    v119 = v113;
    specialized Array.append<A>(contentsOf:)(v39);
    specialized Array.append<A>(contentsOf:)(v56);
    v121 = _swiftEmptyArrayStorage;
    v62 = v119[2];
    v64 = v108;
    v63 = v109;
    v107[1] = v119;
    if (v62)
    {
      v65 = (v115 + 32);
      v66 = (v119 + 5);
      v67 = _swiftEmptyArrayStorage;
      v113 = _swiftEmptyArrayStorage;
      do
      {
        v68 = v67;
        v69 = *(v66 - 1);
        v70 = *v66;

        if (UsoEntity_common_Agent.asCommonGroup()())
        {

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v71 = *(&dword_18 + (v121 & 0xFFFFFFFFFFFFFF8));
          if (*(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)) >= v71 >> 1)
          {
            OUTLINED_FUNCTION_76(v71);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v113 = v121;
          v67 = v68;
        }

        else
        {

          v73 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v72, v70);
          v74 = v117;
          UsoEntity_common_Agent.toContactQuery()();
          v75 = *(v118 + 48);
          *v64 = v73;
          (*v65)(v64 + v75, v74, v116);
          v67 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = v68[2];
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v67 = v79;
          }

          v77 = v67[2];
          v76 = v67[3];
          if (v77 >= v76 >> 1)
          {
            OUTLINED_FUNCTION_76(v76);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v67 = v80;
          }

          v67[2] = v77 + 1;
          outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(v64, v67 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v63[9] * v77);
        }

        v66 += 16;
        --v62;
      }

      while (v62);
    }

    else
    {
      v67 = _swiftEmptyArrayStorage;
      v113 = _swiftEmptyArrayStorage;
    }

    v81 = v67[2];
    if (v81)
    {
      v120 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v82 = *(v63 + 80);
      v108 = v67;
      v83 = v67 + ((v82 + 32) & ~v82);
      v117 = v63[9];
      v84 = v114;
      v85 = (v115 + 8);
      v86 = v83;
      v87 = v81;
      v88 = v111;
      do
      {
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v86, v84, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
        outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(v84, v88);
        v89 = *v88;
        (*v85)(&v88[*(v118 + 48)], v116);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v90 = v120[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v86 += v117;
        --v87;
      }

      while (v87);
      v109 = v120;
      v120 = _swiftEmptyArrayStorage;
      v91 = v81;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v92 = v120;
      v93 = v116;
      v94 = (v115 + 32);
      v95 = v107[0];
      do
      {
        v96 = v114;
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v83, v114, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
        outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(v96, v88);
        v97 = *v88;

        v98 = *v94;
        (*v94)(v95, &v88[*(v118 + 48)], v93);
        v120 = v92;
        v100 = v92[2];
        v99 = v92[3];
        if (v100 >= v99 >> 1)
        {
          OUTLINED_FUNCTION_76(v99);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v88 = v111;
          v92 = v120;
        }

        v92[2] = v100 + 1;
        v98(v92 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v100, v95, v93);
        v83 += v117;
        --v91;
      }

      while (v91);
    }

    else
    {

      v92 = _swiftEmptyArrayStorage;
    }

    specialized _arrayForceCast<A, B>(_:)();
    v102 = v101;

    v103 = v110;
    *(v110 + 24) = &type metadata for PhoneCallNLv4Intent;
    *(v103 + 32) = &protocol witness table for PhoneCallNLv4Intent;
    v104 = swift_allocObject();
    OUTLINED_FUNCTION_16_31(v104);
    specialized _arrayForceCast<A, B>(_:)();
    v106 = v105;

    *(v104 + 16) = v92;
    *(v104 + 24) = v102;
    *(v104 + 72) = 2;
    *(v104 + 80) = 0;
    *(v104 + 88) = 0xE23030905050204;
    *(v104 + 96) = 518;
    *(v104 + 104) = v106;
    *(v104 + 112) = _swiftEmptyArrayStorage;
  }

  else
  {
    *(a1 + 24) = &type metadata for PhoneCallNLv4Intent;
    *(a1 + 32) = &protocol witness table for PhoneCallNLv4Intent;
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_16_31(v27);
    *(v28 + 16) = _swiftEmptyArrayStorage;
    *(v28 + 24) = _swiftEmptyArrayStorage;
    *(v28 + 72) = 2;
    *(v28 + 80) = 0;
    *(v28 + 88) = 0xE23030905050204;
    *(v28 + 96) = 518;
    *(v28 + 104) = _swiftEmptyArrayStorage;
    *(v28 + 112) = _swiftEmptyArrayStorage;
  }
}

uint64_t specialized UsoContactConvertible.emergencyType.getter()
{
  v108 = type metadata accessor for IdentifierValue();
  v104 = *(v108 - 8);
  v1 = *(v104 + 64);
  __chkstk_darwin(v108);
  v107 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IdentifierNamespace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v112 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v101 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v110 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v101 - v19;
  v21 = __chkstk_darwin(v18);
  v124 = (&v101 - v22);
  v23 = __chkstk_darwin(v21);
  v111 = &v101 - v24;
  v25 = __chkstk_darwin(v23);
  v114 = &v101 - v26;
  __chkstk_darwin(v25);
  v28 = &v101 - v27;
  v128 = type metadata accessor for UsoIdentifier();
  v29 = *(v128 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v128);
  v106 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v127 = &v101 - v33;
  v34 = specialized UsoContactConvertible.nameIdentifiers.getter();
  v35 = v34[2];
  v125 = v7;
  v116 = v13;
  v113 = v28;
  v103 = v0;
  v115 = v29;
  v102 = v4;
  if (v35)
  {
    v37 = *(v29 + 16);
    v36 = v29 + 16;
    v122 = v37;
    v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v101 = v34;
    v39 = v34 + v38;
    v40 = *(v36 + 56);
    v120 = (v4 + 104);
    v121 = v40;
    *&v105 = v4 + 32;
    v109 = (v4 + 8);
    v126 = _swiftEmptyArrayStorage;
    v123 = v36;
    v119 = (v36 - 8);
    v118 = enum case for IdentifierNamespace.nsEmergencyOrganization(_:);
    v41 = v106;
    while (1)
    {
      v122(v41, v39, v128);
      UsoIdentifier.namespaceSemantic.getter();
      v42 = v124;
      (*v120)(v20, v118, v3);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v3);
      v43 = *(v125 + 48);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v42, v11, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v20, &v11[v43], &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
      {
        break;
      }

      v44 = v110;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v11, v110, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      if (__swift_getEnumTagSinglePayload(&v11[v43], 1, v3) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v124, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
        (*v109)(v44, v3);
LABEL_8:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
        goto LABEL_9;
      }

      v45 = v112;
      (*v105)(v112, &v11[v43], v3);
      lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, &type metadata accessor for IdentifierNamespace);
      LODWORD(v117) = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *v109;
      (*v109)(v45, v3);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v124, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      v46(v44, v3);
      v41 = v106;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      if (v117)
      {
        goto LABEL_11;
      }

LABEL_9:
      (*v119)(v41, v128);
LABEL_16:
      v39 = v121 + v39;
      if (!--v35)
      {

        v13 = v116;
        v28 = v113;
        goto LABEL_19;
      }
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
    if (__swift_getEnumTagSinglePayload(&v11[v43], 1, v3) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
LABEL_11:
      v117 = UsoIdentifier.value.getter();
      v48 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
        v126 = v53;
      }

      v49 = v126;
      v51 = v126[2];
      v50 = v126[3];
      if (v51 >= v50 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, v126);
        v49 = v54;
      }

      (*v119)(v41, v128);
      v126 = v49;
      v49[2] = v51 + 1;
      v52 = &v49[2 * v51];
      v52[4] = v117;
      v52[5] = v48;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v126 = _swiftEmptyArrayStorage;
LABEL_19:
  v55 = specialized UsoContactConvertible.nameIdentifiers.getter();
  v56 = v55[2];
  v57 = v114;
  if (v56)
  {
    v124 = *(v115 + 16);
    v58 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v101 = v55;
    v59 = v55 + v58;
    v123 = *(v115 + 72);
    LODWORD(v122) = enum case for IdentifierNamespace.nsPhoneCallContactName(_:);
    v121 = (v102 + 104);
    v109 = (v102 + 32);
    v119 = (v102 + 8);
    v120 = (v115 + 8);
    v117 = v104 + 88;
    LODWORD(v110) = enum case for IdentifierValue.vEmergencyServices(_:);
    LODWORD(v106) = enum case for IdentifierValue.vEmergencyContact(_:);
    v104 += 8;
    v60 = &_s12SiriOntology19IdentifierNamespaceOSgMR;
    v105 = xmmword_425000;
    v115 += 16;
    while (1)
    {
      (v124)(v127, v59, v128);
      UsoIdentifier.namespaceSemantic.getter();
      (*v121)(v57, v122, v3);
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v3);
      v61 = *(v125 + 48);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v28, v13, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v57, &v13[v61], &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
      if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
      {
        break;
      }

      v62 = v111;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v13, v111, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
      if (__swift_getEnumTagSinglePayload(&v13[v61], 1, v3) == 1)
      {
        v57 = v114;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v114, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
        v28 = v113;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v113, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
        (*v119)(v62, v3);
LABEL_26:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
        goto LABEL_27;
      }

      v63 = v60;
      v64 = v112;
      (*v109)(v112, &v13[v61], v3);
      lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, &type metadata accessor for IdentifierNamespace);
      v118 = dispatch thunk of static Equatable.== infix(_:_:)();
      v65 = *v119;
      v66 = v64;
      v60 = v63;
      (*v119)(v66, v3);
      v57 = v114;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v114, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
      v28 = v113;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v113, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
      v65(v62, v3);
      v13 = v116;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v116, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
      if (v118)
      {
        goto LABEL_29;
      }

LABEL_27:
      (*v120)(v127, v128);
LABEL_43:
      v59 += v123;
      if (!--v56)
      {
        goto LABEL_44;
      }
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
    if (__swift_getEnumTagSinglePayload(&v13[v61], 1, v3) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology19IdentifierNamespaceOSgMd, v60);
LABEL_29:
      v67 = v107;
      UsoIdentifier.valueSemantic.getter();
      v68 = (*v117)(v67, v108);
      if (v68 == v110)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
          v126 = v76;
        }

        v69 = v126;
        v71 = v126[2];
        v70 = v126[3];
        if (v71 >= v70 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v126);
          v69 = v77;
        }

        (*v120)(v127, v128);
        v126 = v69;
        v69[2] = v71 + 1;
        *&v69[2 * v71 + 4] = v105;
      }

      else if (v68 == v106)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
          v126 = v78;
        }

        v72 = v126;
        v74 = v126[2];
        v73 = v126[3];
        if (v74 >= v73 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1, v126);
          v72 = v79;
        }

        (*v120)(v127, v128);
        v126 = v72;
        v72[2] = v74 + 1;
        v75 = &v72[2 * v74];
        v75[4] = 0;
        v75[5] = 0;
      }

      else
      {
        (*v120)(v127, v128);
        (*v104)(v107, v108);
      }

      v13 = v116;
      goto LABEL_43;
    }

    goto LABEL_26;
  }

LABEL_44:

  if (dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter())
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_common_PhoneNumber();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v129)
  {

    UsoEntity_common_PhoneNumber.tags.getter();
    v81 = v80;
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  v82 = v81[2];

  if (v82)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
      v126 = v99;
    }

    v84 = v126[2];
    v83 = v126[3];
    if (v84 >= v83 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v83 > 1, v84 + 1, 1, v126);
      v126 = v100;
    }

    v85 = v126;
    v126[2] = v84 + 1;
    *&v85[2 * v84 + 4] = xmmword_435450;
  }

  v86 = v126;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Logger.siriPhone);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 136315394;
    v129 = 0;
    v130 = 0xE000000000000000;
    v131 = v91;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of specialized UsoContactConvertible.emergencyType.getter, 0, 0);
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v131);

    *(v90 + 4) = v92;
    *(v90 + 12) = 2080;

    v93 = Array.description.getter();
    v95 = v94;

    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v131);

    *(v90 + 14) = v96;
    _os_log_impl(&dword_0, v88, v89, "%s Parsed emergencyTypes: %s, returning first entry", v90, 0x16u);
    swift_arrayDestroy();
  }

  if (v86[2])
  {
    v97 = v86[4];
    outlined copy of PhoneCallEmergencyType(v97, v86[5]);
  }

  else
  {
    v97 = 0;
  }

  return v97;
}

void *specialized UsoContactConvertible.vocabularyAppsBundleSet.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _swiftEmptySetSingleton;
  v5 = specialized UsoContactConvertible.nameIdentifiers.getter();
  v6 = v5[2];
  if (v6)
  {
    v9 = *(v1 + 16);
    v7 = v1 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v19 = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    v13 = (v7 - 8);
    while (1)
    {
      v8(v4, v11, v0);
      v14 = UsoIdentifier.namespace.getter();
      if (v15)
      {
        if (v14 == 0x64695F6D657469 && v15 == 0xE700000000000000)
        {

LABEL_12:
          UsoIdentifier.appBundleId.getter();
          specialized Set._Variant.insert(_:)();
          (*v13)(v4, v0);

          goto LABEL_13;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_12;
        }
      }

      (*v13)(v4, v0);
LABEL_13:
      v11 += v12;
      if (!--v6)
      {

        return v20;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void *specialized UsoContactConvertible.nameIdentifiers.getter()
{
  if (!UsoEntity_common_Agent.asCommonPerson()() || (v0 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v0))
  {

    return _swiftEmptyArrayStorage;
  }

  return v0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(uint64_t a1, int a2)
{
  v158 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v155 = &v146 - v7;
  OUTLINED_FUNCTION_15_0();
  v157 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  v8 = OUTLINED_FUNCTION_7(v157);
  v164 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_5_4();
  v148 = v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1(v154);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v156 = &v146 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_16_2();
  v153 = v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  v163 = &v146 - v23;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_91();
  v165 = v25;
  OUTLINED_FUNCTION_15_0();
  v166 = type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues();
  v26 = OUTLINED_FUNCTION_7(v166);
  v162 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_5_4();
  v147 = v30;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1(v152);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  v35 = &v146 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v37 = OUTLINED_FUNCTION_21(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_16_2();
  v149 = v40;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v41);
  v161 = &v146 - v42;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_91();
  v167 = v44;
  OUTLINED_FUNCTION_15_0();
  v45 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v46 = OUTLINED_FUNCTION_7(v45);
  v160 = v47;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_5_4();
  v146 = v50;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1(v151);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v53);
  v55 = &v146 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v57 = OUTLINED_FUNCTION_21(v56);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_16_2();
  v150 = v60;
  OUTLINED_FUNCTION_4_0();
  v62 = __chkstk_darwin(v61);
  v64 = &v146 - v63;
  __chkstk_darwin(v62);
  OUTLINED_FUNCTION_91();
  v159 = v65;
  OUTLINED_FUNCTION_15_0();
  v171[3] = type metadata accessor for UsoEntity_common_Agent();
  v171[4] = &protocol witness table for UsoEntity_common_Agent;
  v171[0] = a1;
  v66 = type metadata accessor for SiriPhoneContactImpl(0);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v69 = SiriPhoneContactImpl.init()();
  v168 = a1;
  if (UsoEntity_common_Agent.identifyingRelationship.getter())
  {
    CodeGenBase.entity.getter();

    type metadata accessor for UsoEntity_common_PersonRelationship();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v170)
    {
      UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
      v71 = v70;
      v72 = v35;
      v74 = v73;

      OUTLINED_FUNCTION_6_50();
      v75 = *(v69 + 232);
      *(v69 + 224) = v71;
      *(v69 + 232) = v74;
      v35 = v72;
    }

    else
    {
    }
  }

  v76 = specialized UsoContactConvertible.emergencyType.getter();
  v78 = v77;
  OUTLINED_FUNCTION_6_50();
  v79 = *(v69 + 272);
  v80 = *(v69 + 280);
  *(v69 + 272) = v76;
  *(v69 + 280) = v78;
  outlined consume of PhoneCallEmergencyType?(v79, v80);
  v81 = specialized UsoContactConvertible.vocabularyAppsBundleSet.getter();
  OUTLINED_FUNCTION_6_50();
  v82 = *(v69 + 296);
  *(v69 + 296) = v81;

  v83 = dispatch thunk of UsoEntity_common_Agent.name.getter();
  v85 = v84;
  OUTLINED_FUNCTION_6_50();
  v86 = *(v69 + 48);
  *(v69 + 40) = v83;
  *(v69 + 48) = v85;

  if (dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
  {
    v87 = v159;
    dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();
  }

  else
  {
    v87 = v159;
    __swift_storeEnumTagSinglePayload(v159, 1, 1, v45);
  }

  (*(v160 + 104))(v64, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v45);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v45);
  v91 = *(v151 + 48);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v87, v55, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v64, &v55[v91], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v55, 1, v45);
  if (v95)
  {
    OUTLINED_FUNCTION_17_22(v64);
    OUTLINED_FUNCTION_17_22(v87);
    OUTLINED_FUNCTION_9_40(&v55[v91], 1, v45);
    if (v95)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v92 = v157;
      v93 = v161;
LABEL_18:
      OUTLINED_FUNCTION_6_50();
      *(v69 + 289) = 31;
      goto LABEL_19;
    }

LABEL_16:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    v92 = v157;
    v93 = v161;
    goto LABEL_19;
  }

  v94 = v150;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v55, v150, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(&v55[v91], 1, v45);
  if (v95)
  {
    OUTLINED_FUNCTION_17_22(v64);
    OUTLINED_FUNCTION_17_22(v159);
    (*(v160 + 8))(v94, v45);
    goto LABEL_16;
  }

  v96 = v160;
  v97 = v146;
  (*(v160 + 32))(v146, &v55[v91], v45);
  lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues);
  LODWORD(v151) = dispatch thunk of static Equatable.== infix(_:_:)();
  v98 = *(v96 + 8);
  v98(v97, v45);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v159, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v98(v150, v45);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v92 = v157;
  v93 = v161;
  if (v151)
  {
    goto LABEL_18;
  }

LABEL_19:
  v99 = dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter();
  v100 = v165;
  if (!v99)
  {
    goto LABEL_29;
  }

  CodeGenBase.entity.getter();

  type metadata accessor for UsoEntity_common_PhoneNumber();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
  if (v169)
  {
    dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
    if (v101)
    {

      v102 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
      v104 = v103;

      OUTLINED_FUNCTION_6_50();
      v105 = *(v69 + 200);
      *(v69 + 192) = v102;
      *(v69 + 200) = v104;
      v100 = v165;
    }

    else
    {
    }
  }

  type metadata accessor for UsoEntity_common_EmailAddress();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v169)
  {
    dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
    if (v106)
    {

      v107 = dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
      v109 = v108;

      OUTLINED_FUNCTION_6_50();
      v110 = *(v69 + 216);
      *(v69 + 208) = v107;
      *(v69 + 216) = v109;
      v100 = v165;

      goto LABEL_29;
    }
  }

LABEL_29:
  if (dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter())
  {
    dispatch thunk of UsoEntity_common_SearchQualifier.definedValue.getter();

    v111 = v166;
  }

  else
  {
    v111 = v166;
    __swift_storeEnumTagSinglePayload(v167, 1, 1, v166);
  }

  (*(v162 + 104))(v93, enum case for UsoEntity_common_SearchQualifier.DefinedValues.common_SearchQualifier_Exactly(_:), v111);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v111);
  v115 = *(v152 + 48);
  v116 = v167;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v167, v35, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v117 = v166;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v93, v35 + v115, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v35, 1, v117);
  if (v95)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v116, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_9_40(v35 + v115, 1, v117);
    v118 = v156;
    if (v95)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      LODWORD(v35) = 256;
      goto LABEL_45;
    }

LABEL_40:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
    LODWORD(v35) = 0;
    goto LABEL_45;
  }

  v119 = v149;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v35, v149, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v35 + v115, 1, v117);
  if (v120)
  {
    OUTLINED_FUNCTION_20_6(v161);
    OUTLINED_FUNCTION_20_6(v167);
    (*(v162 + 8))(v119, v117);
    v118 = v156;
    goto LABEL_40;
  }

  v121 = v162;
  v122 = v147;
  (*(v162 + 32))(v147, v35 + v115, v117);
  lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SearchQualifier.DefinedValues and conformance UsoEntity_common_SearchQualifier.DefinedValues, &type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues);
  v160 = v35;
  v123 = v117;
  v124 = dispatch thunk of static Equatable.== infix(_:_:)();
  v125 = *(v121 + 8);
  v125(v122, v123);
  OUTLINED_FUNCTION_7_42(v161);
  OUTLINED_FUNCTION_7_42(v167);
  v125(v119, v123);
  v100 = v165;
  OUTLINED_FUNCTION_7_42(v160);
  if (v124)
  {
    LODWORD(v35) = 256;
  }

  else
  {
    LODWORD(v35) = 0;
  }

  v118 = v156;
LABEL_45:
  if (UsoEntity_common_Agent.asCommonPerson()() && (v126 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v126))
  {
    dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v92);
  }

  v127 = v163;
  (*(v164 + 104))(v163, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_None(_:), v92);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v92);
  v131 = *(v154 + 48);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v100, v118, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v127, v118 + v131, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v118, 1, v92);
  if (v95)
  {
    OUTLINED_FUNCTION_20_6(v127);
    OUTLINED_FUNCTION_20_6(v100);
    OUTLINED_FUNCTION_9_40(v118 + v131, 1, v92);
    if (v95)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v118, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      v132 = 0x10000;
      goto LABEL_61;
    }

LABEL_57:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v118, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    v132 = 0;
    goto LABEL_61;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v118, v153, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_9_40(v118 + v131, 1, v92);
  if (v133)
  {
    OUTLINED_FUNCTION_20_6(v163);
    OUTLINED_FUNCTION_20_6(v100);
    (*(v164 + 8))(v153, v92);
    goto LABEL_57;
  }

  v134 = v164;
  v135 = v148;
  (*(v164 + 32))(v148, v118 + v131, v92);
  lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
  LODWORD(v168) = v35;
  v35 = v153;
  LODWORD(v167) = dispatch thunk of static Equatable.== infix(_:_:)();
  v136 = *(v134 + 8);
  v136(v135, v92);
  OUTLINED_FUNCTION_7_42(v163);
  OUTLINED_FUNCTION_7_42(v100);
  v137 = v35;
  LOWORD(v35) = v168;
  v136(v137, v92);
  OUTLINED_FUNCTION_7_42(v118);
  if (v167)
  {
    v132 = 0x10000;
  }

  else
  {
    v132 = 0;
  }

LABEL_61:
  v138 = v35 | v158 | v132;
  OUTLINED_FUNCTION_6_50();
  *(v69 + 293) = BYTE2(v132);
  *(v69 + 291) = v138;
  v139 = v155;
  outlined init with copy of SignalProviding(v171, v155);
  v140 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v140);
  v144 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  swift_beginAccess();
  outlined assign with take of BackingContact?(v139, v69 + v144);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v171);
  return v69;
}

uint64_t outlined init with take of (contact: SiriPhoneContactImpl, contactQuery: ContactQuery)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of BackingContact?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of PhoneCallEmergencyType(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *CallRegistrationManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  return &static CallRegistrationManager.shared;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for CallRegistrationManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static CallRegistrationManager.shared = v0;
  return result;
}

uint64_t static CallRegistrationManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }
}

uint64_t CallRegistrationManager.registerForDropInCalls()()
{
  *(v1 + 48) = v0;
  return _swift_task_switch(CallRegistrationManager.registerForDropInCalls(), v0, 0);
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(CallRegistrationManager.registerForDropInCalls(), v3, 0);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#CallStateProvider registered for drop-in calls", v4, 2u);
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 40);

  Signpost.OpenSignpost.end()();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t CallRegistrationManager.registerForDropInCalls()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(v22 + 48);
  static Signpost.begin(_:)();
  *(v22 + 16) = v24;
  *(v22 + 24) = v25;
  *(v22 + 32) = v26;
  *(v22 + 40) = v27;
  v28 = [objc_allocWithZone(TUConversationProviderManager) init];
  *(v22 + 56) = v28;
  v29 = lazy protocol witness table accessor for type CallRegistrationManager and conformance CallRegistrationManager();
  v30 = swift_task_alloc();
  *(v22 + 64) = v30;
  *(v30 + 16) = v28;
  v31 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v32 = swift_task_alloc();
  *(v22 + 72) = v32;
  *v32 = v22;
  v32[1] = CallRegistrationManager.registerForDropInCalls();

  return withCheckedContinuation<A>(isolation:function:_:)(v32, v23, v29, 0xD000000000000018, 0x800000000045C840, partial apply for closure #1 in CallRegistrationManager.registerForDropInCalls(), v30, &type metadata for () + 8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void closure #1 in CallRegistrationManager.registerForDropInCalls()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls();
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);

  [a2 registerForCallbacksForProvider:v9 completionHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls()(uint64_t a1)
{
  v2 = type metadata accessor for PhoneError();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriPhone);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_0, v10, v11, "#CallRegistrationManager failed to register for callbacks for drop in calls. Error: %@", v12, 0xCu);
      outlined destroy of NSObject?(v13);
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    v21[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    v15 = v23;
    *v6 = v22;
    v6[1] = v15;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v8);
    outlined destroy of PhoneError(v6);
    outlined destroy of PhoneError(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#CallRegistrationManager successfully registered for callbacks for drop in calls.", v20, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

unint64_t lazy protocol witness table accessor for type CallRegistrationManager and conformance CallRegistrationManager()
{
  result = lazy protocol witness table cache variable for type CallRegistrationManager and conformance CallRegistrationManager;
  if (!lazy protocol witness table cache variable for type CallRegistrationManager and conformance CallRegistrationManager)
  {
    type metadata accessor for CallRegistrationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRegistrationManager and conformance CallRegistrationManager);
  }

  return result;
}

uint64_t protocol witness for CallRegistrationManaging.registerForDropInCalls() in conformance CallRegistrationManager()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return CallRegistrationManager.registerForDropInCalls()();
}

uint64_t partial apply for closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls()(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in CallRegistrationManager.registerForDropInCalls()(a1);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1)
{
  result = specialized Array.count.getter(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = UsoEntity_common_UserEntity.nameIdentifiers.getter();
    specialized Array.append<A>(contentsOf:)(v6);
  }

  return result;
}

void one-time initialization function for logPrefix()
{
  static Transformer<>.logPrefix = &type metadata for String;
  unk_599B50 = &outlined read-only object #0 of one-time initialization function for logPrefix;
  qword_599B58 = 0;
  unk_599B60 = 0;
}

{
  static SearchCallHistoryHelper.logPrefix = &type metadata for SearchCallHistoryHelper;
  unk_55D380 = &outlined read-only object #0 of one-time initialization function for logPrefix;
  qword_55D388 = 0;
  unk_55D390 = 0;
}

uint64_t *Transformer<>.logPrefix.unsafeMutableAddressor()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_68();
    swift_once();
  }

  return &static Transformer<>.logPrefix;
}

uint64_t static Transformer<>.logPrefix.getter()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_68();
    swift_once();
  }

  v0 = static Transformer<>.logPrefix;

  return v0;
}

uint64_t static Transformer<>.transformer.getter()
{
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMd, &_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMR);

  return Transformer.init(transform:)();
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_27_17();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_53_14();

  return v4(v3);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_4_44();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_53_14();

  return v4(v3);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_6_51();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_53_14();

  return v4(v3);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_5_52();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  OUTLINED_FUNCTION_3_49();
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_53_14();

  return v4(v3);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26UsoEntity_common_PhoneCallCSgMd, &_s12SiriOntology26UsoEntity_common_PhoneCallCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);

  return Transformer.init(transform:)();
}

{
  return static Transformer<>.transformer.getter();
}

_BYTE *closure #1 in static Transformer<>.transformer.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ((UsoTask.isCallControlTask()() & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v15))
    {
      goto LABEL_16;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_0_68();
      swift_once();
    }

    OUTLINED_FUNCTION_2_67(&static Transformer<>.logPrefix);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v21);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_0, v6, v15, "%s usoTask is not a CallControls task.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);

    goto LABEL_15;
  }

  result = static Transformer<>.getPhoneCallControlNLIntent(for:)();
  if (!result)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_0_68();
      swift_once();
    }

    OUTLINED_FUNCTION_2_67(&static Transformer<>.logPrefix);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v21);

    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;

    v10 = UsoTask.description.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v21);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_0, v6, v7, "%s PhoneCallControlNLIntent was nil for %s", v8, 0x16u);
    swift_arrayDestroy();

LABEL_15:

LABEL_16:

    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t UsoTask.isCallControlTask()()
{
  if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v0 == 0xEE00676E69747465)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0 && (UsoTask.isSwitchToFaceTimeOrVideoCallTask.getter() & 1) == 0 && (UsoTask.isSwitchToSpeakerphoneTask.getter() & 1) == 0 && (UsoTask.isAppTask.getter() & 1) == 0)
    {
      return 0;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v10 = v8;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of UsoTask.isCallControlTask(), 0, 0);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v10);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_0, v5, v6, "%s task is call control or switch to FaceTime task.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return 1;
}

_BYTE *static Transformer<>.getPhoneCallControlNLIntent(for:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = &unk_426000;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *&v57 = swift_slowAlloc();
    *v4 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    *&v59[0] = 0;
    *(&v59[0] + 1) = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, unk_599B50, qword_599B58, unk_599B60);
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v57);

    *(v4 + 4) = v5;
    *(v4 + 12) = 2080;
    v6 = UsoTask.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v57);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_0, v1, v2, "%s attempting to get call control action for %s", v4, 0x16u);
    swift_arrayDestroy();

    v3 = &unk_426000;
  }

  else
  {
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v58)
  {
    outlined destroy of Any?(&v57);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v57 = v17;
      *v16 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v59[0] = 0;
      *(&v59[0] + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, unk_599B50, qword_599B58, unk_599B60);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v59[0], *(&v59[0] + 1), &v57);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_0, v14, v15, "%s could not convert task.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    return 0;
  }

  outlined init with take of Any(&v57, v59);
  if (UsoTask.isSwitchToFaceTimeOrVideoCallTask.getter())
  {
    if (UsoTask.hasFaceTimeAudioSemantics.getter())
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    if (PhoneCallControlNLIntent.Verb.rawValue.getter(v9) == 0xD000000000000015 && 0x8000000000452E80 == v10)
    {

      v13 = 9;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        v13 = 9;
      }

      else
      {
        v13 = 8;
      }
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v28 = v3[71];
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, unk_599B50, qword_599B58, unk_599B60);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;
      v30 = PhoneCallControlAction.description.getter(v13);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v56);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_0, v26, v27, "%s getPhoneCallControlAction parsed task to PhoneCallControlAction.%s", v28, 0x16u);
      swift_arrayDestroy();
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    type metadata accessor for PhoneCallControlNLIntent();
    swift_allocObject();
    v24 = v9;
    v25 = 5;
    return PhoneCallControlNLIntent.init(verb:target:)(v24, v25);
  }

  if (UsoTask.isSwitchToSpeakerphoneTask.getter())
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v22 = v3[71];
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, unk_599B50, qword_599B58, unk_599B60);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000000452EB0, &v56);
      _os_log_impl(&dword_0, v20, v21, "%s getPhoneCallControlAction parsed task to PhoneCallControlAction.%s", v22, 0x16u);
      swift_arrayDestroy();
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    type metadata accessor for PhoneCallControlNLIntent();
    swift_allocObject();
    v24 = 0;
    v25 = 3;
    return PhoneCallControlNLIntent.init(verb:target:)(v24, v25);
  }

  v34 = UsoTask.usoIdentifiers.getter();
  v35.namespaceToIdentifierMap._rawValue = CallControlUsoIdentifiers.init(usoIdentifiers:)(v34).namespaceToIdentifierMap._rawValue;
  v36 = static Transformer<>.mapIdentifiersToTarget(usoIdentifiers:)(v35.namespaceToIdentifierMap._rawValue);

  v37 = static Transformer<>.mapTaskToVerb(usoTask:isTargetWithNegation:)(v59, HIBYTE(v36) & 1);
  if (v37 == 7)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      *v40 = 136315138;
      if (one-time initialization token for logPrefix != -1)
      {
        swift_once();
      }

      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, unk_599B50, qword_599B58, unk_599B60);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_0, v38, v39, "%s could not determine a verb for call control.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    return 0;
  }

  v43 = v37;
  type metadata accessor for PhoneCallControlNLIntent();
  swift_allocObject();
  v19 = PhoneCallControlNLIntent.init(verb:target:)(v43, v36);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v46 = v3[71];
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v47 = static Transformer<>.logPrefix;
    v48 = unk_599B50;
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v48, 0xD000000000000021, 0x800000000045C8F0);

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, *(&v57 + 1), &v56);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    v50 = *(*v19 + 144);

    v52 = v50(v51);
    v54 = v53;

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v56);

    *(v46 + 14) = v55;
    _os_log_impl(&dword_0, v44, v45, "%s intent = %s)", v46, 0x16u);
    swift_arrayDestroy();
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v19;
}

uint64_t UsoTask.usoIdentifiers.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  v0 = _swiftEmptyArrayStorage;
  if (!v28[3])
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_51;
  }

  outlined init with copy of Any?(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMR);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology39Uso_VerbTemplate_ReferenceNumberTriggerCyAA0C21Entity_common_SettingCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();
      v24 = v26;
      v10 = dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.userEntities.getter();
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
      }

      result = specialized Array.count.getter(v11);
      v12 = result;
      v13 = 0;
      while (v12 != v13)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_69;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_68;
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        ++v13;
        if (v25)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v13 = v15;
        }
      }

LABEL_49:

      __swift_destroy_boxed_opaque_existential_1(v27);
      v9 = 0;
LABEL_50:
      v8 = v24;
      goto LABEL_51;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C21Entity_common_SettingCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v24 = v26;
      v16 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = _swiftEmptyArrayStorage;
      }

      result = specialized Array.count.getter(v17);
      v18 = result;
      v19 = 0;
      while (v18 != v19)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_71;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_70;
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        ++v19;
        if (v25)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v19 = v21;
        }
      }

      goto LABEL_49;
    }

    type metadata accessor for UsoTask_noVerb_common_Setting();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      v8 = v26;
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      type metadata accessor for UsoTask_open_common_App();
      if (swift_dynamicCast() || (type metadata accessor for UsoTask_close_common_App(), swift_dynamicCast()))
      {

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

        v9 = v26;
        __swift_destroy_boxed_opaque_existential_1(v27);
        v8 = 0;
        goto LABEL_51;
      }

      __swift_destroy_boxed_opaque_existential_1(v27);
      v8 = 0;
    }

    v9 = 0;
LABEL_51:
    outlined destroy of Any?(v28);
    v28[0] = _swiftEmptyArrayStorage;
    if (v9)
    {
      v0 = sub_2EB70();
    }

    specialized Array.append<A>(contentsOf:)(v0);
    if (v8)
    {
      v22 = sub_2EB70();
      specialized Array.append<A>(contentsOf:)(v22);
      if (dispatch thunk of UsoEntity_common_Setting.associatedSetting.getter())
      {
        v23 = sub_2EB70();
      }

      else
      {
        v23 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
      specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);
    }

    specialized Array.append<A>(contentsOf:)(v23);
    specialized Sequence.forEach(_:)(_swiftEmptyArrayStorage);

    return v28[0];
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();
  v24 = v26;
  v1 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  result = specialized Array.count.getter(v2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
      v9 = 0;
      v0 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_67;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v5;
    if (v25)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v7;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t static Transformer<>.mapIdentifiersToTarget(usoIdentifiers:)(uint64_t a1)
{
  if (CallControlUsoIdentifiers.hasAnyVolumeIdentifier.getter(a1))
  {
    v2 = 0;
    v3 = 4;
    return v2 | v3;
  }

  if (CallControlUsoIdentifiers.hasMuteCallIdentifier.getter(a1))
  {
    v2 = 256;
LABEL_8:
    v3 = 2;
    return v2 | v3;
  }

  if (CallControlUsoIdentifiers.hasUnmuteCallIdentifier.getter(a1))
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 56) = &type metadata for CallControlUsoIdentifiers.BoolSettingName;
  *(inited + 64) = &protocol witness table for CallControlUsoIdentifiers.BoolSettingName;
  v5 = CallControlUsoIdentifiers.contains(anyOf:)(inited, a1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (v5)
  {
LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_424FD0;
  *(v7 + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(v7 + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(v7 + 32) = 8;
  v8 = CallControlUsoIdentifiers.contains(anyOf:)(v7, a1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (v8)
  {
    v2 = 0;
    v3 = 3;
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_424FD0;
    *(v9 + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
    *(v9 + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
    *(v9 + 32) = 0;
    v10 = CallControlUsoIdentifiers.contains(anyOf:)(v9, a1);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (v10 || (v11 = swift_initStackObject(), *(v11 + 16) = xmmword_424FD0, *(v11 + 56) = &type metadata for CallControlUsoIdentifiers.AppName, *(v11 + 64) = &protocol witness table for CallControlUsoIdentifiers.AppName, v12 = CallControlUsoIdentifiers.contains(anyOf:)(v11, a1), swift_setDeallocating(), specialized _ContiguousArrayStorage.__deallocating_deinit(), v12))
    {
      v3 = 0;
      v2 = 0;
    }

    else
    {
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_424FD0;
      *(v13 + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
      *(v13 + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
      *(v13 + 32) = 5;
      v14 = CallControlUsoIdentifiers.contains(anyOf:)(v13, a1);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v2 = 0;
      if (v14)
      {
        v3 = 1;
      }

      else
      {
        v3 = 5;
      }
    }
  }

  return v2 | v3;
}

uint64_t static Transformer<>.mapTaskToVerb(usoTask:isTargetWithNegation:)(uint64_t a1, char a2)
{
  outlined init with copy of Any(a1, v12);
  type metadata accessor for UsoTask_enable_common_Setting();
  if (swift_dynamicCast())
  {

    v3 = a2 & 1;
  }

  else
  {
    type metadata accessor for UsoTask_disable_common_Setting();
    if (swift_dynamicCast())
    {

      v3 = (a2 & 1) == 0;
    }

    else
    {
      type metadata accessor for UsoTask_toggle_common_Setting();
      if (swift_dynamicCast())
      {

        v3 = 2;
      }

      else
      {
        type metadata accessor for UsoTask_set_common_Setting();
        if (swift_dynamicCast() || (type metadata accessor for UsoTask_increaseBy_common_Setting(), swift_dynamicCast()) || (type metadata accessor for UsoTask_decreaseBy_common_Setting(), swift_dynamicCast()) || (type metadata accessor for UsoTask_setNumber_common_Setting(), swift_dynamicCast()))
        {

          v3 = 5;
        }

        else
        {
          type metadata accessor for UsoTask_summarise_common_Setting();
          if (swift_dynamicCast() || (type metadata accessor for UsoTask_checkExistence_common_Setting(), swift_dynamicCast()) || (type metadata accessor for UsoTask_noVerb_common_Setting(), swift_dynamicCast()))
          {

            v3 = 6;
          }

          else
          {
            type metadata accessor for UsoTask_open_common_App();
            if (swift_dynamicCast())
            {

              v3 = 0;
            }

            else
            {
              type metadata accessor for UsoTask_close_common_App();
              if (swift_dynamicCast())
              {

                v3 = 1;
              }

              else
              {
                if (one-time initialization token for siriPhone != -1)
                {
                  swift_once();
                }

                v5 = type metadata accessor for Logger();
                __swift_project_value_buffer(v5, static Logger.siriPhone);
                v6 = Logger.logObject.getter();
                v7 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v6, v7))
                {
                  v8 = swift_slowAlloc();
                  v9 = swift_slowAlloc();
                  v11 = v9;
                  *v8 = 136315138;
                  if (one-time initialization token for logPrefix != -1)
                  {
                    swift_once();
                  }

                  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static Transformer<>.logPrefix, unk_599B50, qword_599B58, unk_599B60);
                  v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v11);

                  *(v8 + 4) = v10;
                  _os_log_impl(&dword_0, v6, v7, "#%s unsupported UsoTask", v8, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v9);
                }

                v3 = 7;
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v3;
}

void *UsoEntity_common_UserEntity.nameIdentifiers.getter()
{
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *specialized UsoContactConvertible.nameSpans.getter()
{
  result = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t UsoIdentifierAppBundleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746163696C707041;
  }
}

uint64_t UsoIdentifierNamespaceType.rawValue.getter(char a1)
{
  result = 0x6D754E656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x73746361746E6F43;
      break;
    case 4:
      result = 0x64695F6D657469;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x656D614E707061;
      break;
    case 8:
      result = 0x6369746E616D6573;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = OUTLINED_FUNCTION_20_25();
      break;
    case 11:
      result = 0x65746C615F727361;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_27_17();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_4_44();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_6_51();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_5_52();
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

uint64_t NLv4Transformer.__allocating_init(referenceResolver:featureManager:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_36();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_54(v9);
  v11(v10);
  v12 = OUTLINED_FUNCTION_60_8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:sirikitIntent:)(uint64_t a1, uint64_t a2, void *a3)
{
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
  v5 = swift_allocObject();
  outlined init with take of SPHConversation(&v8, v5 + 16);
  *(v5 + 56) = a3;
  *(v5 + 64) = a2;

  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  return Transformer.init(transform:)();
}

uint64_t one-time initialization function for logPrefix()
{
  result = type metadata accessor for NLv4Transformer(0);
  static NLv4Transformer.logPrefix = result;
  unk_599B70 = &outlined read-only object #0 of one-time initialization function for logPrefix;
  qword_599B78 = 0;
  unk_599B80 = 0;
  return result;
}

uint64_t *NLv4Transformer.logPrefix.unsafeMutableAddressor()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_69();
    swift_once();
  }

  return &static NLv4Transformer.logPrefix;
}

uint64_t static NLv4Transformer.logPrefix.getter()
{
  if (one-time initialization token for logPrefix != -1)
  {
    OUTLINED_FUNCTION_0_69();
    swift_once();
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t NLv4Transformer.init(referenceResolver:featureManager:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_36();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_54(v6);
  v8(v7);
  v9 = OUTLINED_FUNCTION_60_8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void NLv4Transformer.transformUserDialogAct(userDialogAct:previousPhoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_66();
  v50 = v0;
  v52 = v1;
  v3 = v2;
  v54 = v4;
  v51 = type metadata accessor for TransformerInput(0);
  v5 = OUTLINED_FUNCTION_23_1(v51);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v49 = &v45 - v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.siriPhone);
  v27 = *(v14 + 16);
  v53 = v3;
  v56 = v27;
  v27(v24, v3, v11);
  v48 = v26;
  v28 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v28, v46);
  v55 = v14;
  if (v29)
  {
    v45 = v19;
    v30 = v11;
    OUTLINED_FUNCTION_21_21();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_19();
    v57[0] = swift_slowAlloc();
    *v31 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_0_69();
      swift_once();
    }

    *&v58[0] = 0;
    *(&v58[0] + 1) = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
    v32 = *(&v58[0] + 1);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v58[0], *(&v58[0] + 1), v57);

    *(v31 + 4) = v33;
    v34 = OUTLINED_FUNCTION_67_6();
    v35 = v56;
    v56(v34, v24, v30);
    OUTLINED_FUNCTION_10_40();
    v38 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5Tm(v32, v36, v37, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v40 = v39;
    v47 = *(v55 + 8);
    v47(v24, v30);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v57);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_0, v28, v46, "%s attempting to transform %s into NLv4PhoneCallNLIntent.", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    v11 = v30;
    OUTLINED_FUNCTION_8();

    v42 = v54;
  }

  else
  {

    v47 = *(v14 + 8);
    v47(v24, v11);
    v35 = v56;
    v42 = v54;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  v43 = Transformer.transform.getter();
  v35(v10, v53, v11);
  outlined init with copy of ButtonConfigurationModel?(v52, v10 + *(v51 + 20), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v43(v58, v10);
  OUTLINED_FUNCTION_22_15();

  v44 = v58[1];
  *v42 = v58[0];
  *(v42 + 16) = v44;
  *(v42 + 32) = v59;
  OUTLINED_FUNCTION_65();
}

uint64_t NLv4Transformer.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t one-time initialization function for phoneCallAttributesLast(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = *a3;
  OUTLINED_FUNCTION_40(v5);
  v8 = *(v7 + 104);

  return v8();
}

uint64_t static Transformer<>.updatePhoneNounAndAttributesForLatestCallHistory(attribute:phoneCallAttributes:phoneCallNoun:)(uint64_t a1, uint64_t *a2, char *a3)
{
  v5 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v36 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v34[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v34[-v18];
  __chkstk_darwin(v17);
  v21 = &v34[-v20];
  dispatch thunk of CodeGenListEntry.entry.getter();
  if (v39)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v40)
  {
    v37 = a3;
    dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
    (*(v38 + 104))(v19, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallAttributesCurrent(_:), v5);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
    v23 = *(v8 + 48);
    outlined init with copy of ButtonConfigurationModel?(v21, v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    outlined init with copy of ButtonConfigurationModel?(v19, &v11[v23], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      if (__swift_getEnumTagSinglePayload(&v11[v23], 1, v5) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v24 = 8;
        a3 = v37;
LABEL_12:
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = *(*a2 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

        v25 = 0;
        v29 = *a2;
        *(v29 + 16) = v28 + 1;
        *(v29 + v28 + 32) = v24;
        *a2 = v29;
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of ButtonConfigurationModel?(v11, v16, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      if (__swift_getEnumTagSinglePayload(&v11[v23], 1, v5) != 1)
      {
        v30 = v38;
        v31 = &v11[v23];
        v32 = v36;
        (*(v38 + 32))(v36, v31, v5);
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v30 + 8);
        v33(v32, v5);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v33(v16, v5);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        a3 = v37;
        if (v35)
        {
          v24 = 8;
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      (*(v38 + 8))(v16, v5);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
    a3 = v37;
LABEL_11:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v26 = *(*a2 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v27 = *a2;
    *(v27 + 16) = v26 + 1;
    *(v27 + v26 + 32) = 6;
    *a2 = v27;
    v24 = 4;
    goto LABEL_12;
  }

  v25 = 1;
LABEL_13:
  *a3 = v25;
  return result;
}

uint64_t static Transformer<>.updatePhoneNounAndAttributesForGeneralCallHistory(attribute:phoneCallAttributes:)(uint64_t a1, uint64_t *a2)
{
  v103 = a2;
  v2 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v104 = *(v2 - 8);
  v3 = *(v104 + 64);
  __chkstk_darwin(v2);
  v102 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  v5 = *(*(v106 - 8) + 64);
  v6 = __chkstk_darwin(v106);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v91 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v91 - v13;
  __chkstk_darwin(v12);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v92 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v96 = &v91 - v22;
  v23 = __chkstk_darwin(v21);
  v95 = &v91 - v24;
  v25 = __chkstk_darwin(v23);
  v98 = &v91 - v26;
  v27 = __chkstk_darwin(v25);
  v97 = &v91 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v91 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v91 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v91 - v36;
  __chkstk_darwin(v35);
  v105 = &v91 - v38;
  dispatch thunk of CodeGenListEntry.entry.getter();
  if (v107)
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v108)
  {
    v99 = v11;
    v100 = v108;
    v94 = v8;
    v40 = v105;
    dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
    if (one-time initialization token for phoneCallAttributesMissed != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesMissed);
    v42 = *(v104 + 16);
    v93 = v104 + 16;
    v101 = v42;
    v42(v37, v41, v2);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v2);
    v43 = *(v106 + 48);
    outlined init with copy of ButtonConfigurationModel?(v37, v16, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    outlined init with copy of ButtonConfigurationModel?(v40, &v16[v43], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v16[v43], 1, v2);
      v45 = v99;
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v46 = v105;
LABEL_26:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v60 = v103;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v61 = *(*v60 + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

        v62 = *v60;
        *(v62 + 16) = v61 + 1;
        *(v62 + v61 + 32) = 0;
LABEL_46:
        *v60 = v62;
        return result;
      }
    }

    else
    {
      outlined init with copy of ButtonConfigurationModel?(v16, v34, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      if (__swift_getEnumTagSinglePayload(&v16[v43], 1, v2) != 1)
      {
        v56 = v102;
        v57 = v104;
        (*(v104 + 32))(v102, &v16[v43], v2);
        lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v57 + 8);
        v59(v56, v2);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v59(v34, v2);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v46 = v105;
        v45 = v99;
        v47 = v101;
        if (v58)
        {
          goto LABEL_26;
        }

LABEL_12:
        if (one-time initialization token for phoneCallAttributesOutgoing != -1)
        {
          swift_once();
        }

        v48 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesOutgoing);
        v47(v31, v48, v2);
        __swift_storeEnumTagSinglePayload(v31, 0, 1, v2);
        v49 = *(v106 + 48);
        outlined init with copy of ButtonConfigurationModel?(v31, v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        outlined init with copy of ButtonConfigurationModel?(v46, &v14[v49], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v31, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          v50 = __swift_getEnumTagSinglePayload(&v14[v49], 1, v2);
          v51 = v94;
          if (v50 == 1)
          {
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_36:
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            v60 = v103;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v72 = *(*v60 + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

            v62 = *v60;
            *(v62 + 16) = v72 + 1;
            v73 = v62 + v72;
            v74 = 5;
LABEL_45:
            *(v73 + 32) = v74;
            goto LABEL_46;
          }
        }

        else
        {
          v52 = v97;
          outlined init with copy of ButtonConfigurationModel?(v14, v97, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          if (__swift_getEnumTagSinglePayload(&v14[v49], 1, v2) != 1)
          {
            v67 = v104;
            v68 = v102;
            (*(v104 + 32))(v102, &v14[v49], v2);
            lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
            v69 = v52;
            v70 = dispatch thunk of static Equatable.== infix(_:_:)();
            v71 = *(v67 + 8);
            v71(v68, v2);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v31, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            v71(v69, v2);
            v47 = v101;
            v46 = v105;
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            v51 = v94;
            if (v70)
            {
              goto LABEL_36;
            }

LABEL_20:
            if (one-time initialization token for phoneCallAttributesReceived != -1)
            {
              swift_once();
            }

            v53 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesReceived);
            v54 = v98;
            v47(v98, v53, v2);
            __swift_storeEnumTagSinglePayload(v54, 0, 1, v2);
            v55 = *(v106 + 48);
            outlined init with copy of ButtonConfigurationModel?(v54, v45, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            outlined init with copy of ButtonConfigurationModel?(v46, v45 + v55, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            if (__swift_getEnumTagSinglePayload(v45, 1, v2) == 1)
            {
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              if (__swift_getEnumTagSinglePayload(v45 + v55, 1, v2) == 1)
              {
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_40:
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                v60 = v103;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v84 = *(*v60 + 16);
                specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

                v62 = *v60;
                *(v62 + 16) = v84 + 1;
                v73 = v62 + v84;
                v74 = 4;
                goto LABEL_45;
              }
            }

            else
            {
              v63 = v95;
              outlined init with copy of ButtonConfigurationModel?(v45, v95, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              if (__swift_getEnumTagSinglePayload(v45 + v55, 1, v2) != 1)
              {
                v76 = v104;
                v77 = v45 + v55;
                v78 = v102;
                (*(v104 + 32))(v102, v77, v2);
                lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                v79 = v63;
                v80 = dispatch thunk of static Equatable.== infix(_:_:)();
                v81 = v54;
                v82 = *(v76 + 8);
                v82(v78, v2);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v81, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                v83 = v79;
                v47 = v101;
                v82(v83, v2);
                v51 = v94;
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (v80)
                {
                  goto LABEL_40;
                }

LABEL_30:
                if (one-time initialization token for phoneCallAttributesLast != -1)
                {
                  swift_once();
                }

                v64 = __swift_project_value_buffer(v2, static Transformer<>.phoneCallAttributesLast);
                v65 = v96;
                v47(v96, v64, v2);
                __swift_storeEnumTagSinglePayload(v65, 0, 1, v2);
                v66 = *(v106 + 48);
                outlined init with copy of ButtonConfigurationModel?(v65, v51, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                outlined init with take of ButtonConfigurationModel?(v46, v51 + v66, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (__swift_getEnumTagSinglePayload(v51, 1, v2) == 1)
                {
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if (__swift_getEnumTagSinglePayload(v51 + v66, 1, v2) == 1)
                  {
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_44:
                    v60 = v103;
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    v90 = *(*v60 + 16);
                    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();

                    v62 = *v60;
                    *(v62 + 16) = v90 + 1;
                    v73 = v62 + v90;
                    v74 = 6;
                    goto LABEL_45;
                  }
                }

                else
                {
                  v75 = v92;
                  outlined init with copy of ButtonConfigurationModel?(v51, v92, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if (__swift_getEnumTagSinglePayload(v51 + v66, 1, v2) != 1)
                  {
                    v85 = v104;
                    v86 = v51 + v66;
                    v87 = v102;
                    (*(v104 + 32))(v102, v86, v2);
                    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                    v88 = dispatch thunk of static Equatable.== infix(_:_:)();
                    v89 = *(v85 + 8);
                    v89(v87, v2);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    v89(v75, v2);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    if ((v88 & 1) == 0)
                    {
                    }

                    goto LABEL_44;
                  }

                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  (*(v104 + 8))(v75, v2);
                }

                return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
              }

              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              (*(v104 + 8))(v63, v2);
            }

            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
            goto LABEL_30;
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v31, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          (*(v104 + 8))(v52, v2);
          v51 = v94;
        }

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
        goto LABEL_20;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      (*(v104 + 8))(v34, v2);
      v45 = v99;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
    v46 = v105;
    v47 = v101;
    goto LABEL_12;
  }

  return result;
}

uint64_t static Transformer<>.incomingCallTransformerOutput(phoneCallVerb:voicemailVerb:phoneCallUsoTask:audioRoute:)@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = a1;
  v167 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v165 = *(v167 - 8);
  v9 = *(v165 + 64);
  __chkstk_darwin(v167);
  v158 = &v147[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  v11 = *(*(v166 - 8) + 64);
  v12 = __chkstk_darwin(v166);
  v163 = &v147[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v157 = &v147[-v15];
  __chkstk_darwin(v14);
  v160 = &v147[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v156 = &v147[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v23 = &v147[-v22];
  v24 = __chkstk_darwin(v21);
  v161 = &v147[-v25];
  v26 = __chkstk_darwin(v24);
  v154 = &v147[-v27];
  v28 = __chkstk_darwin(v26);
  v159 = &v147[-v29];
  v30 = __chkstk_darwin(v28);
  v173 = &v147[-v31];
  v32 = __chkstk_darwin(v30);
  v155 = &v147[-v33];
  v34 = __chkstk_darwin(v32);
  v164 = &v147[-v35];
  __chkstk_darwin(v34);
  v162 = &v147[-v36];
  static Signpost.begin(_:)();
  v38 = v37;
  v176 = v39;
  v177 = v40;
  v175 = v41;
  v184 = _swiftEmptyArrayStorage;
  v183 = 9;
  if (v8 != 17)
  {
    if (PhoneCallVerb.rawValue.getter(v6) == 1684957542 && v43 == 0xE400000000000000)
    {
LABEL_18:

      goto LABEL_19;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_19;
    }
  }

  if (a2 == 6)
  {
LABEL_3:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    Signpost.OpenSignpost.end()();
  }

  if (VoiceMail.VoiceMailVerb.rawValue.getter(a2) == 2036427888 && v46 == 0xE400000000000000)
  {
    goto LABEL_18;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v48 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  static UsoTask_CodegenConverter.convert(task:)();
  v153 = v23;
  v170 = a3;
  if (v182[3])
  {
    type metadata accessor for UsoTask_request_common_PhoneCall();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

      if (v182[0])
      {
        v49 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

        if (v49)
        {
          if (specialized Array.count.getter(v49))
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v49 & 0xC000000000000001) == 0, v49);
            if ((v49 & 0xC000000000000001) != 0)
            {
              v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v50 = *(v49 + 32);
            }

            static Transformer<>.updatePhoneNounAndAttributesForLatestCallHistory(attribute:phoneCallAttributes:phoneCallNoun:)(v50, &v184, &v183);
          }

          else
          {
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v182, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of ButtonConfigurationModel?(v182, &v179, &_sypSgMd, &_sypSgMR);
  v169 = a4;
  if (v181)
  {
    type metadata accessor for UsoTask_summarise_common_PhoneCall();
    if (swift_dynamicCast())
    {
LABEL_37:
      v183 = 1;
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (v179)
      {
        v51 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();
      }

      else
      {
        v51 = 0;
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (v179)
      {
        v171 = dispatch thunk of UsoEntity_common_PhoneCall.sender.getter();
      }

      else
      {
        v171 = 0;
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (!v179)
      {

        v172 = 0;
        goto LABEL_60;
      }

      goto LABEL_49;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v179, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v182, &v179, &_sypSgMd, &_sypSgMR);
  if (v181)
  {
    type metadata accessor for UsoTask_read_common_PhoneCall();
    if (swift_dynamicCast())
    {
      goto LABEL_37;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v179, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v182, &v179, &_sypSgMd, &_sypSgMR);
  if (!v181)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v179, &_sypSgMd, &_sypSgMR);
    goto LABEL_52;
  }

  type metadata accessor for UsoTask_noVerb_common_PhoneCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    v171 = 0;
    v172 = 0;
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v183 = 1;

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v179)
  {
    v51 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();
  }

  else
  {
    v51 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v179)
  {
    v171 = dispatch thunk of UsoEntity_common_PhoneCall.sender.getter();
  }

  else
  {
    v171 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

  if (!v179)
  {
    v172 = 0;
    goto LABEL_59;
  }

LABEL_49:
  v172 = dispatch thunk of UsoEntity_common_PhoneCall.associatedDateTimeRange.getter();

LABEL_59:

LABEL_60:
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

LABEL_63:
  v53 = specialized Array.count.getter(v52);
  if (v53)
  {
    v54 = v53;
    if (v53 < 1)
    {
      __break(1u);
LABEL_176:
      v132 = *(v52 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v52 = v133;
      goto LABEL_75;
    }

    for (i = 0; i != v54; ++i)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v56 = *(v52 + 8 * i + 32);
      }

      static Transformer<>.updatePhoneNounAndAttributesForGeneralCallHistory(attribute:phoneCallAttributes:)(v56, &v184);
    }
  }

  if (v171)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v57 = *(type metadata accessor for ContactQuery() - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_424FD0;

    v174 = v60;
    UsoEntity_common_Agent.toContactQuery()();
  }

  else
  {
    v174 = _swiftEmptyArrayStorage;
  }

  if (!v172)
  {
    goto LABEL_78;
  }

  v52 = v184;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_176;
  }

LABEL_75:
  v61 = *(v52 + 16);
  if (v61 >= *(v52 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v52 = v134;
  }

  *(v52 + 16) = v61 + 1;
  *(v52 + v61 + 32) = 11;
  v184 = v52;
LABEL_78:
  outlined init with copy of ButtonConfigurationModel?(v182, &v179, &_sypSgMd, &_sypSgMR);
  v168 = v38;
  if (v181)
  {
    type metadata accessor for UsoTask_play_common_Voicemail();
    if (swift_dynamicCast())
    {
      goto LABEL_88;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v179, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v182, &v179, &_sypSgMd, &_sypSgMR);
  if (v181)
  {
    type metadata accessor for UsoTask_read_common_Voicemail();
    if (swift_dynamicCast())
    {
      goto LABEL_88;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v179, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v182, &v179, &_sypSgMd, &_sypSgMR);
  if (v181)
  {
    type metadata accessor for UsoTask_summarise_common_Voicemail();
    if (swift_dynamicCast())
    {
LABEL_88:
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v62 = v173;
      if (v179)
      {
        v63 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

        if (v63)
        {

          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, static Logger.siriPhone);
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v178 = v68;
            *v67 = 136315138;
            if (one-time initialization token for logPrefix != -1)
            {
              swift_once();
            }

            v179 = 0;
            v180 = 0xE000000000000000;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
            v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v180, &v178);

            *(v67 + 4) = v69;
            _os_log_impl(&dword_0, v65, v66, "%s current request is recognized as play it", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v68);
          }

          v70 = v184;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = v70[2];
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v70 = v136;
          }

          v71 = v70[2];
          if (v71 >= v70[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v70 = v137;
          }

          v70[2] = v71 + 1;
          *(v70 + v71 + 32) = 6;
          v184 = v70;
          v72 = 2;
          goto LABEL_152;
        }
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v72 = v179;
      if (!v179)
      {
LABEL_152:
        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        if (v179)
        {
          v111 = dispatch thunk of UsoEntity_common_Voicemail.sender.getter();

          if (v111)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
            v112 = *(type metadata accessor for ContactQuery() - 8);
            v113 = *(v112 + 72);
            v114 = (*(v112 + 80) + 32) & ~*(v112 + 80);
            v115 = swift_allocObject();
            *(v115 + 16) = xmmword_424FD0;
            v174 = v115;
            UsoEntity_common_Agent.toContactQuery()();
          }
        }

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        if (v179)
        {
          v116 = dispatch thunk of UsoEntity_common_Voicemail.associatedDateTimeRange.getter();

          if (v116)
          {

            v117 = v184;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v138 = v117[2];
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v117 = v139;
            }

            v118 = v117[2];
            if (v118 >= v117[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v117 = v140;
            }

            a2 = 0;
            v117[2] = v118 + 1;
            *(v117 + v118 + 32) = 11;
            v184 = v117;
            goto LABEL_164;
          }
        }

LABEL_163:
        a2 = 0;
LABEL_164:
        v75 = 2;
        v6 = 17;
        goto LABEL_165;
      }

      v73 = dispatch thunk of UsoEntity_common_Voicemail.attributes.getter();

      if (v73)
      {
        if (specialized Array.count.getter(v73))
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v73 & 0xC000000000000001) == 0, v73);
          if ((v73 & 0xC000000000000001) != 0)
          {
            v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v74 = *(v73 + 32);
          }

          v151 = v74;
          dispatch thunk of CodeGenListEntry.entry.getter();
          if (v178)
          {
            CodeGenBase.entity.getter();
          }

          v76 = v164;
          type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          v77 = v167;
          if (!v179)
          {
            goto LABEL_150;
          }

          v78 = v162;
          v152 = v179;
          dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
          if (one-time initialization token for phoneCallAttributesLast != -1)
          {
            swift_once();
          }

          v79 = __swift_project_value_buffer(v77, static Transformer<>.phoneCallAttributesLast);
          v80 = *(v165 + 16);
          v150 = v165 + 16;
          v149 = v80;
          v80(v76, v79, v77);
          __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
          v81 = *(v166 + 48);
          v82 = v78;
          v83 = v160;
          outlined init with copy of ButtonConfigurationModel?(v82, v160, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          outlined init with copy of ButtonConfigurationModel?(v76, &v83[v81], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
          if (__swift_getEnumTagSinglePayload(v83, 1, v77) == 1)
          {
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v76, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v162, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            if (__swift_getEnumTagSinglePayload(&v83[v81], 1, v77) == 1)
            {
              goto LABEL_129;
            }
          }

          else
          {
            v84 = v155;
            outlined init with copy of ButtonConfigurationModel?(v83, v155, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            if (__swift_getEnumTagSinglePayload(&v83[v81], 1, v77) != 1)
            {
              v93 = v165;
              v94 = v158;
              (*(v165 + 32))(v158, &v83[v81], v77);
              lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
              v148 = dispatch thunk of static Equatable.== infix(_:_:)();
              v95 = *(v93 + 8);
              v95(v94, v77);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v164, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v162, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              v95(v84, v77);
              v62 = v173;
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              v91 = v161;
              if (v148)
              {
                goto LABEL_136;
              }

LABEL_125:
              dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
              v85 = v62;
              if (one-time initialization token for phoneCallAttributesRecent != -1)
              {
                swift_once();
              }

              v86 = v167;
              v87 = __swift_project_value_buffer(v167, static Transformer<>.phoneCallAttributesRecent);
              v88 = v159;
              v149(v159, v87, v86);
              __swift_storeEnumTagSinglePayload(v88, 0, 1, v86);
              v89 = *(v166 + 48);
              v83 = v157;
              outlined init with copy of ButtonConfigurationModel?(v85, v157, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              v90 = v86;
              outlined init with copy of ButtonConfigurationModel?(v88, &v83[v89], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
              if (__swift_getEnumTagSinglePayload(v83, 1, v86) == 1)
              {
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v88, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v85, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (__swift_getEnumTagSinglePayload(&v83[v89], 1, v167) == 1)
                {
LABEL_129:
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  v91 = v161;
LABEL_136:
                  v100 = v184;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v141 = v100[2];
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v100 = v142;
                  }

                  v101 = v100[2];
                  if (v101 >= v100[3] >> 1)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v100 = v143;
                  }

                  v100[2] = v101 + 1;
                  *(v100 + v101 + 32) = 6;
                  v184 = v100;
LABEL_141:
                  dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
                  if (one-time initialization token for phoneCallAttributesNewVoicemail != -1)
                  {
                    swift_once();
                  }

                  v102 = v167;
                  v103 = __swift_project_value_buffer(v167, static Transformer<>.phoneCallAttributesNewVoicemail);
                  v104 = v153;
                  v149(v153, v103, v102);
                  __swift_storeEnumTagSinglePayload(v104, 0, 1, v102);
                  v105 = *(v166 + 48);
                  v106 = v163;
                  outlined init with copy of ButtonConfigurationModel?(v91, v163, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  v107 = v102;
                  outlined init with copy of ButtonConfigurationModel?(v104, &v106[v105], &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if (__swift_getEnumTagSinglePayload(v106, 1, v102) == 1)
                  {
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v104, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    v108 = v163;
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v91, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    if (__swift_getEnumTagSinglePayload(&v108[v105], 1, v102) == 1)
                    {
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_170:
                      v130 = v184;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v144 = v130[2];
                        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                        v130 = v145;
                      }

                      v131 = v130[2];
                      if (v131 >= v130[3] >> 1)
                      {
                        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                        v130 = v146;
                      }

                      v72 = 0;
                      v130[2] = v131 + 1;
                      *(v130 + v131 + 32) = 12;
                      v184 = v130;
                      goto LABEL_152;
                    }
                  }

                  else
                  {
                    v109 = v156;
                    outlined init with copy of ButtonConfigurationModel?(v106, v156, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    if (__swift_getEnumTagSinglePayload(&v106[v105], 1, v107) != 1)
                    {
                      v126 = v165;
                      v127 = &v106[v105];
                      v128 = v158;
                      (*(v165 + 32))(v158, v127, v107);
                      lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                      LODWORD(v173) = dispatch thunk of static Equatable.== infix(_:_:)();
                      v129 = *(v126 + 8);
                      v129(v128, v107);
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v153, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v161, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                      v129(v109, v107);
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v163, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                      if (v173)
                      {
                        goto LABEL_170;
                      }

                      goto LABEL_149;
                    }

                    v110 = v107;
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v153, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    v108 = v163;
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v91, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                    (*(v165 + 8))(v109, v110);
                  }

                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
LABEL_149:

LABEL_150:

                  goto LABEL_151;
                }
              }

              else
              {
                v92 = v154;
                outlined init with copy of ButtonConfigurationModel?(v83, v154, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                if (__swift_getEnumTagSinglePayload(&v83[v89], 1, v90) != 1)
                {
                  v96 = v165;
                  v97 = &v83[v89];
                  v98 = v158;
                  (*(v165 + 32))(v158, v97, v90);
                  lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
                  LODWORD(v164) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v99 = *(v96 + 8);
                  v99(v98, v90);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v159, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v173, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  v91 = v161;
                  v99(v92, v90);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                  if ((v164 & 1) == 0)
                  {
                    goto LABEL_141;
                  }

                  goto LABEL_136;
                }

                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v159, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v173, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
                (*(v165 + 8))(v92, v167);
              }

              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
              v91 = v161;
              goto LABEL_141;
            }

            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v164, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v162, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
            (*(v165 + 8))(v84, v77);
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
          goto LABEL_125;
        }
      }

LABEL_151:
      v72 = 0;
      goto LABEL_152;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v179, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of ButtonConfigurationModel?(v182, &v179, &_sypSgMd, &_sypSgMR);
  if (v181)
  {
    type metadata accessor for UsoTask_call_common_Voicemail();
    if (swift_dynamicCast())
    {

      v72 = 0;
      goto LABEL_163;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v179, &_sypSgMd, &_sypSgMR);
  }

  v75 = 0;
  v72 = 2;
LABEL_165:
  v119 = UsoTask.usoAssociatedApp.getter();
  if (v119)
  {
    v120 = type metadata accessor for UsoEntity_common_App();
    v121 = &protocol witness table for UsoEntity_common_App;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v122 = v184;
  v123 = v183;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v182, &_sypSgMd, &_sypSgMR);
  v124 = v169;
  v169[3] = &type metadata for PhoneCallNLv4Intent;
  v124[4] = &protocol witness table for PhoneCallNLv4Intent;
  v125 = swift_allocObject();
  *v124 = v125;
  *(v125 + 16) = v174;
  *(v125 + 24) = _swiftEmptyArrayStorage;
  *(v125 + 32) = v119;
  *(v125 + 40) = 0;
  *(v125 + 48) = 0;
  *(v125 + 56) = v120;
  *(v125 + 64) = v121;
  *(v125 + 72) = 2;
  *(v125 + 80) = v122;
  *(v125 + 88) = v170;
  *(v125 + 89) = 1282;
  *(v125 + 91) = v75;
  *(v125 + 92) = v123;
  *(v125 + 93) = 8963;
  *(v125 + 95) = v6;
  *(v125 + 96) = a2;
  *(v125 + 97) = v72;
  *(v125 + 104) = _swiftEmptyArrayStorage;
  *(v125 + 112) = _swiftEmptyArrayStorage;
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.findPositionReference(entity:referenceResolver:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MatchedResultsSetting();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = (v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v20 = (v52 - v19);
  __chkstk_darwin(v18);
  v22 = v52 - v21;
  static Signpost.begin(_:)();
  v54 = v24;
  v55 = v23;
  v53 = v25;
  v52[3] = v26;
  v27 = CodeGenBase.entity.getter();
  (*(v5 + 104))(v8, enum case for MatchedResultsSetting.defaultMatching(_:), v4);
  static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)(v27, a1, v8, v12);

  (*(v5 + 8))(v8, v4);
  v28 = type metadata accessor for PhoneRRTarget(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v28) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
    v29 = 1;
  }

  else
  {
    outlined init with copy of PhoneRRTarget.Target(v12, v22);
    outlined destroy of TransformerInput(v12, type metadata accessor for PhoneRRTarget);
    v29 = 0;
  }

  v30 = type metadata accessor for PhoneRRTarget.Target(0);
  __swift_storeEnumTagSinglePayload(v22, v29, 1, v30);
  outlined init with copy of ButtonConfigurationModel?(v22, v20, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v30) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = *v20;
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriPhone);
      v43 = v41;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v58 = v48;
        *v46 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          swift_once();
        }

        v56 = 0;
        v57 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v58);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2112;
        *(v46 + 14) = v43;
        *v47 = v43;
        v50 = v43;
        _os_log_impl(&dword_0, v44, v45, "%s referenceResolution findPositionReference selected person: %@ as the resolution result", v46, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_1(v48);
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
      *(a2 + 40) = 0;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *a2 = v43;
      goto LABEL_30;
    }

    outlined destroy of TransformerInput(v20, type metadata accessor for PhoneRRTarget.Target);
  }

  outlined init with copy of ButtonConfigurationModel?(v22, v17, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  if (__swift_getEnumTagSinglePayload(v17, 1, v30) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
LABEL_22:
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    goto LABEL_30;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
    outlined destroy of TransformerInput(v17, type metadata accessor for PhoneRRTarget.Target);
    goto LABEL_22;
  }

  v31 = *v17;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.siriPhone);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v35 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v56 = 0;
    v57 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v58);

    *(v35 + 4) = v36;
    *(v35 + 12) = 2080;
    UsoEntity_common_App.applicationId.getter();
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v58);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_0, v33, v34, "%s referenceResolution findPositionReference selected app: %s as the resolution result", v35, 0x16u);
    swift_arrayDestroy();
  }

  *(a2 + 32) = type metadata accessor for UsoEntity_common_App();
  *(a2 + 40) = &protocol witness table for UsoEntity_common_App;
  *(a2 + 8) = v31;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  *a2 = 0;
LABEL_30:
  Signpost.OpenSignpost.end()();
}

uint64_t static Transformer<>.convertPhoneCallPositionToNoVerbPosition(task:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v44 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v44 - v6);
  v8 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v52)
  {
    goto LABEL_24;
  }

  type metadata accessor for UsoTask_call_common_PhoneCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();

  if (!v50 || (v13 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , !v13) || (v14 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , !v14))
  {

    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    goto LABEL_9;
  }

  dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

LABEL_9:
    v15 = &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd;
    v16 = &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR;
    v17 = v7;
LABEL_25:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, v15, v16);
    return 0;
  }

  (*(v9 + 32))(v12, v7, v8);
  v18 = type metadata accessor for UsoTaskBuilder_noVerb_uso_NoEntity();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = UsoTaskBuilder_noVerb_uso_NoEntity.init()();
  v22 = type metadata accessor for UsoEntityBuilder_uso_NoEntity();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = UsoEntityBuilder_uso_NoEntity.init()();
  v26 = type metadata accessor for UsoEntityBuilder_common_ListPosition();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = UsoEntityBuilder_common_ListPosition.init()();
  dispatch thunk of UsoEntityBuilder_common_ListPosition.setDefinedValue(value:)();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoListPosition(value:)();
  v47 = v29;

  v48 = v25;
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_426260;
  *(v30 + 32) = v21;
  v31 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v31);

  v32 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriPhone);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v45 = v35;
    v46 = v21;
    v36 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49 = v44;
    *v36 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v50 = 0;
    v51 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v49);

    *(v36 + 4) = v37;
    *(v36 + 12) = 2080;
    v50 = v32;
    type metadata accessor for Graph();
    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type Graph and conformance Graph, &type metadata accessor for Graph);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v49);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_0, v34, v45, "%s convert to a new entity graph: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = static UsoConversionUtils.convertGraphToTasks(graph:)();
  if (specialized Array.count.getter(v41))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v41 & 0xC000000000000001) == 0, v41);
    if ((v41 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(v41 + 32);
    }
  }

  static UsoTask_CodegenConverter.convert(task:)();

  (*(v9 + 8))(v12, v8);
  if (!v52)
  {
LABEL_24:
    v15 = &_sypSgMd;
    v16 = &_sypSgMR;
    v17 = &v50;
    goto LABEL_25;
  }

  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if (swift_dynamicCast())
  {
    return v49;
  }

  else
  {
    return 0;
  }
}

uint64_t static Transformer<>.findNextVoicemailTask(usoTask:)(uint64_t a1, void (*a2)(void))
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v5)
  {
    a2(0);
    OUTLINED_FUNCTION_31_15();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

double static Transformer<>.buildNLIntentByVoicemailVerb(phoneCallUsoTask:voiceMailVerb:)@<D0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = UsoTask.usoAssociatedApp.getter();
  if (v4)
  {
    v5 = type metadata accessor for UsoEntity_common_App();
    v6 = &protocol witness table for UsoEntity_common_App;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  a2[3] = &type metadata for PhoneCallNLv4Intent;
  a2[4] = &protocol witness table for PhoneCallNLv4Intent;
  v7 = swift_allocObject();
  *a2 = v7;
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *(v7 + 24) = _swiftEmptyArrayStorage;
  *(v7 + 32) = v4;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 72) = 2;
  *(v7 + 80) = 0;
  result = 4.01271014e-226;
  *(v7 + 88) = 0x1123030905050204;
  *(v7 + 96) = a1;
  *(v7 + 97) = 0;
  *(v7 + 104) = _swiftEmptyArrayStorage;
  *(v7 + 112) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t closure #1 in static Transformer<>.transformer(referenceResolver:featureManager:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X2>, uint64_t *a4@<X8>)
{
  v264 = a2;
  v265 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVGMR);
  v7 = OUTLINED_FUNCTION_7(v6);
  v263 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = &v247 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  static Signpost.begin(_:)();
  v23 = v22;
  v267 = v24;
  v268 = v25;
  v266 = v26;
  (*(v16 + 16))(v21, a1, v13);
  v27 = type metadata accessor for TransformerInput(0);
  outlined init with copy of ButtonConfigurationModel?(a1 + *(v27 + 20), v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if ((Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) == 0)
  {
    v262 = a4;
    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      v28 = v262;
      v29 = 1;
      goto LABEL_7;
    }

    if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      v28 = v262;
      v29 = 2;
      goto LABEL_7;
    }

    if (Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter())
    {
      v33 = v262;
      v262[3] = &type metadata for PhoneCallNLv4Intent;
      v33[4] = &protocol witness table for PhoneCallNLv4Intent;
      OUTLINED_FUNCTION_50_1();
      v34 = swift_allocObject();
      *v33 = v34;
      OUTLINED_FUNCTION_45_11(v34);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v35 = OUTLINED_FUNCTION_3_59();
      v36(v35);
      v34[2] = _swiftEmptyArrayStorage;
      v34[3] = _swiftEmptyArrayStorage;
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_43_15(2.17529453e-245);
      v34[13] = _swiftEmptyArrayStorage;
      v34[14] = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }

    if (one-time initialization token for transformer != -1)
    {
      OUTLINED_FUNCTION_4_44();
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
    v38 = OUTLINED_FUNCTION_29_20(v37, static Transformer<>.transformer);
    v39 = v269;
    v38(&v278, v21);
    v269 = v39;
    if (v39)
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v40 = OUTLINED_FUNCTION_3_59();
      v41(v40);
      goto LABEL_8;
    }

    v260 = v23;

    v42 = v278;

    v44 = static Transformer<>.findNextVoicemailTask(usoTask:)(v43, &type metadata accessor for UsoTask_update_uso_NoEntity);
    v259 = *(&v42 + 1);
    v261 = v42;
    if (v44)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        OUTLINED_FUNCTION_13_14();
        v48 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_17();
        v264 = swift_slowAlloc();
        *&v275 = v264;
        v265 = v48;
        LODWORD(v48->isa) = 136315138;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        OUTLINED_FUNCTION_9_41();
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v49, v50, v51, v52);
        OUTLINED_FUNCTION_23_16();
        OUTLINED_FUNCTION_49_11();

        *(&v265->isa + 4) = &static NLv4Transformer.logPrefix;
        OUTLINED_FUNCTION_70_3(&dword_0, v53, v54, "%s user selects change, parse current request as confirmation=no");
        __swift_destroy_boxed_opaque_existential_1(v264);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)(1, v262);
      OUTLINED_FUNCTION_68_5();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v55 = OUTLINED_FUNCTION_3_59();
      v56(v55);
      goto LABEL_76;
    }

    v57 = (*(*v264 + 240))();
    UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:)(v57 & 1, v265, v261, *(&v42 + 1), v58, v59, v60, v61, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258);
    if (v62)
    {
      LODWORD(v257) = 0;
      v63 = &outlined read-only object #0 of closure #1 in static Transformer<>.transformer(referenceResolver:featureManager:);
    }

    else
    {
      v64 = UserDialogActParse.isRedirectBusinessCall()();
      v63 = &outlined read-only object #1 of closure #1 in static Transformer<>.transformer(referenceResolver:featureManager:);
      LODWORD(v257) = v64;
      if (!v64)
      {
        v63 = _swiftEmptyArrayStorage;
      }
    }

    v258 = v63;

    static UsoTask_CodegenConverter.convert(task:)();

    v65 = &type metadata for Any;
    if (*(&v279 + 1))
    {
      type metadata accessor for UsoTask_noVerb_uso_NoEntity();
      OUTLINED_FUNCTION_17_23();
      if (swift_dynamicCast())
      {
        v65 = v275;
LABEL_32:
        v66 = v65;

        dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

        v67 = v278;
        if (v278)
        {
          v264 = v66;

          static Transformer<>.findPositionReference(entity:referenceResolver:)(v265, &v275);
          v256 = v67;
          if (v275 == 1)
          {
            v68 = &_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVRszAD0dE8NLIntent_pSgRs_rlE24SrrOrdinalResolvedResultAFLLVyAgI_GSgMd;
            v69 = &_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVRszAD0dE8NLIntent_pSgRs_rlE24SrrOrdinalResolvedResultAFLLVyAgI_GSgMR;
            v70 = &v275;
          }

          else
          {
            v278 = v275;
            v279 = v276;
            v280 = v277;
            v94 = v275;
            if (v275)
            {
              v95 = one-time initialization token for siriPhone;
              v96 = v275;
              if (v95 != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v97 = type metadata accessor for Logger();
              __swift_project_value_buffer(v97, static Logger.siriPhone);
              v98 = v96;
              v99 = Logger.logObject.getter();
              v100 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v99, v100))
              {
                LODWORD(v258) = v100;
                v263 = v99;
                v101 = v98;
                OUTLINED_FUNCTION_21_21();
                v102 = swift_slowAlloc();
                v255 = swift_slowAlloc();
                OUTLINED_FUNCTION_12_17();
                v257 = swift_slowAlloc();
                *&v272 = v257;
                *v102 = 136315394;
                if (one-time initialization token for logPrefix != -1)
                {
                  OUTLINED_FUNCTION_0_69();
                  swift_once();
                }

                *&v275 = 0;
                *(&v275 + 1) = 0xE000000000000000;
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v275, *(&v275 + 1), &v272);
                OUTLINED_FUNCTION_62_11();

                *(v102 + 4) = v100;
                *(v102 + 12) = 2112;
                *(v102 + 14) = v101;
                v103 = v255;
                *v255 = v94;
                v104 = v101;
                v105 = v263;
                _os_log_impl(&dword_0, v263, v258, "%s referenceResolution find a position reference for person:%@", v102, 0x16u);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v103, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                OUTLINED_FUNCTION_8();

                __swift_destroy_boxed_opaque_existential_1(v257);
                OUTLINED_FUNCTION_8();

                v98 = v101;
                OUTLINED_FUNCTION_8();
              }

              else
              {
              }

              v265 = v98;
              v130 = type metadata accessor for SiriPhoneContactImpl(0);
              v131 = *(v130 + 48);
              v132 = *(v130 + 52);
              swift_allocObject();
              v133 = SiriPhoneContactImpl.init()();
              *&v275 = v133;

              specialized SiriPhoneContact.update(person:)();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMR);
              v134 = swift_allocObject();
              *(v134 + 16) = xmmword_424FD0;
              *(v134 + 56) = v130;
              *(v134 + 64) = &protocol witness table for SiriPhoneContactImpl;
              *(v134 + 32) = v133;
              v135 = v262;
              v262[3] = &type metadata for PhoneCallNLv4Intent;
              v135[4] = &protocol witness table for PhoneCallNLv4Intent;
              OUTLINED_FUNCTION_50_1();
              v136 = swift_allocObject();
              *v135 = v136;
              OUTLINED_FUNCTION_45_11(v136);

              OUTLINED_FUNCTION_8_48();
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
              v137 = OUTLINED_FUNCTION_3_59();
              v138(v137);
              *(v136 + 16) = _swiftEmptyArrayStorage;
              *(v136 + 24) = v134;
              *(v136 + 72) = 2;
              *(v136 + 80) = 0;
              *(v136 + 88) = 0x1123030905050204;
              *(v136 + 96) = 518;
              *(v136 + 104) = _swiftEmptyArrayStorage;
              *(v136 + 112) = _swiftEmptyArrayStorage;
              goto LABEL_76;
            }

            outlined init with copy of ButtonConfigurationModel?(&v278 + 8, &v272, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
            if (v273)
            {
              outlined init with take of SPHConversation(&v272, &v275);
              v116 = v262;
              if (one-time initialization token for siriPhone != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v117 = type metadata accessor for Logger();
              __swift_project_value_buffer(v117, static Logger.siriPhone);
              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
              v118 = Logger.logObject.getter();
              LODWORD(v265) = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v118, v265))
              {
                v263 = v118;
                OUTLINED_FUNCTION_21_21();
                v119 = swift_slowAlloc();
                OUTLINED_FUNCTION_24_19();
                v284 = swift_slowAlloc();
                *v119 = 136315394;
                if (one-time initialization token for logPrefix != -1)
                {
                  OUTLINED_FUNCTION_0_69();
                  swift_once();
                }

                v270 = 0;
                v271 = 0xE000000000000000;
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v270, v271, &v284);
                OUTLINED_FUNCTION_35_12();

                *(v119 + 4) = v67;
                *(v119 + 12) = 2080;
                v120 = v274;
                __swift_project_boxed_opaque_existential_1(&v272, v273);
                v121 = *(v120 + 8);
                v122 = OUTLINED_FUNCTION_64();
                v124 = v123(v122, v120);
                if (v125)
                {
                  v126 = v124;
                }

                else
                {
                  v126 = 0;
                }

                if (v125)
                {
                  v127 = v125;
                }

                else
                {
                  v127 = 0xE000000000000000;
                }

                __swift_destroy_boxed_opaque_existential_1(&v272);
                v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &v284);

                *(v119 + 14) = v128;
                v129 = v263;
                _os_log_impl(&dword_0, v263, v265, "%s referenceResolution find a position reference for app:%s", v119, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_8();

                OUTLINED_FUNCTION_8();

                v116 = v262;
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(&v272);
              }

              v116[3] = &type metadata for PhoneCallNLv4Intent;
              v116[4] = &protocol witness table for PhoneCallNLv4Intent;
              OUTLINED_FUNCTION_50_1();
              v147 = swift_allocObject();
              *v116 = v147;
              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();

              OUTLINED_FUNCTION_40_14();

              __swift_destroy_boxed_opaque_existential_1(&v275);
              OUTLINED_FUNCTION_8_48();
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
              v148 = OUTLINED_FUNCTION_3_59();
              v149(v148);
              v147[2] = _swiftEmptyArrayStorage;
              v147[3] = _swiftEmptyArrayStorage;
              OUTLINED_FUNCTION_44_11();
              OUTLINED_FUNCTION_43_15(4.01271014e-226);
              v147[13] = _swiftEmptyArrayStorage;
              v147[14] = _swiftEmptyArrayStorage;
              goto LABEL_76;
            }

            OUTLINED_FUNCTION_8_48();
            v68 = &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd;
            v69 = &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR;
            v70 = &v272;
          }

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v70, v68, v69);
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          __swift_project_value_buffer(v71, static Logger.siriPhone);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v72, v73))
          {
            OUTLINED_FUNCTION_13_14();
            v74 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_17();
            v263 = swift_slowAlloc();
            *&v275 = v263;
            v265 = v74;
            LODWORD(v74->isa) = 136315138;
            if (one-time initialization token for logPrefix != -1)
            {
              OUTLINED_FUNCTION_0_69();
              swift_once();
            }

            OUTLINED_FUNCTION_9_41();
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v75, v76, v77, v78);
            OUTLINED_FUNCTION_23_16();
            OUTLINED_FUNCTION_49_11();

            *(&v265->isa + 4) = &static NLv4Transformer.logPrefix;
            OUTLINED_FUNCTION_70_3(&dword_0, v79, v80, "%s referenceResolution find a position reference but can't be resolved, return an empty NL intent");
            __swift_destroy_boxed_opaque_existential_1(v263);
            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_8();
          }

          v81 = v262;
          v262[3] = &type metadata for PhoneCallNLv4Intent;
          v81[4] = &protocol witness table for PhoneCallNLv4Intent;
          OUTLINED_FUNCTION_50_1();
          v82 = swift_allocObject();
          *v81 = v82;
          OUTLINED_FUNCTION_45_11(v82);

          OUTLINED_FUNCTION_40_14();

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v83 = OUTLINED_FUNCTION_3_59();
          v84(v83);
          v82[2] = _swiftEmptyArrayStorage;
          v82[3] = _swiftEmptyArrayStorage;
          OUTLINED_FUNCTION_44_11();
          OUTLINED_FUNCTION_43_15(4.01271014e-226);
          v82[13] = v85;
          v82[14] = v85;
LABEL_76:

          goto LABEL_8;
        }

LABEL_43:

        v87 = static Transformer<>.findNextVoicemailTask(usoTask:)(v86, &type metadata accessor for UsoTask_skipForward_uso_NoEntity);

        if (v87)
        {

          v88 = v262;
          v89 = 2;
LABEL_47:
          static Transformer<>.buildNLIntentByVoicemailVerb(phoneCallUsoTask:voiceMailVerb:)(v89, v88);

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v92 = OUTLINED_FUNCTION_3_59();
          v93(v92);
          goto LABEL_76;
        }

        v91 = static Transformer<>.findNextVoicemailTask(usoTask:)(v90, &type metadata accessor for UsoTask_repeat_uso_NoEntity);

        if (v91)
        {

          v88 = v262;
          v89 = 1;
          goto LABEL_47;
        }

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        v255 = __swift_project_value_buffer(v106, static Logger.siriPhone);
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v256 = v107;
          HIDWORD(v253) = v108;
          OUTLINED_FUNCTION_13_14();
          v109 = swift_slowAlloc();
          OUTLINED_FUNCTION_12_17();
          v110 = swift_slowAlloc();
          *&v275 = v110;
          v254 = v109;
          *v109 = 136315138;
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          OUTLINED_FUNCTION_9_41();
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v111, v112, v113, v114);
          v252 = OUTLINED_FUNCTION_23_16();

          v115 = v254;
          *(v254 + 1) = v252;
          _os_log_impl(&dword_0, v256, BYTE4(v253), "%s ReferenceResolution can't find any item, proceeding to a regular check", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v110);
          OUTLINED_FUNCTION_8();

          OUTLINED_FUNCTION_8();
        }

        else
        {
        }

        if (one-time initialization token for transformer != -1)
        {
          OUTLINED_FUNCTION_6_51();
          swift_once();
        }

        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);
        v256 = OUTLINED_FUNCTION_29_20(v139, static Transformer<>.transformer);
        *&v278 = v261;

        v140 = OUTLINED_FUNCTION_28_16();
        (v256)(v140);
        v269 = 0;

        LODWORD(v254) = v275;
        if (one-time initialization token for transformer != -1)
        {
          swift_once();
        }

        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMR);
        v142 = OUTLINED_FUNCTION_29_20(v141, static Transformer<>.transformer);
        OUTLINED_FUNCTION_73_4(v142);
        v143 = OUTLINED_FUNCTION_28_16();
        (v256)(v143);
        v269 = 0;

        HIDWORD(v253) = v275;
        if (one-time initialization token for transformer != -1)
        {
          swift_once();
        }

        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMR);
        v145 = OUTLINED_FUNCTION_29_20(v144, static Transformer<>.transformer);
        OUTLINED_FUNCTION_73_4(v145);
        v146 = OUTLINED_FUNCTION_28_16();
        (v256)(v146);
        v269 = 0;

        v150 = v275;
        v151 = BYTE4(v253);
        if (HIDWORD(v253) == 17 && v275 == 6)
        {

          type metadata accessor for TransformationError();
          OUTLINED_FUNCTION_19_24();
          lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(v155, v156);
          v269 = OUTLINED_FUNCTION_61_12();
          v264 = v157;
          OUTLINED_FUNCTION_9_41();
          _StringGuts.grow(_:)(77);
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          v158 = OUTLINED_FUNCTION_63_7();
          v162 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v158, v159, v160, v161);
          OUTLINED_FUNCTION_48_14(" UsoTask_CodegenConverter convert failed for USO Task: ", v162);
          OUTLINED_FUNCTION_40_14();

          v163 = UsoTask.verbString.getter();
          v165 = v164;

          v166._countAndFlagsBits = v163;
          v166._object = v165;
          String.append(_:)(v166);

          v167._countAndFlagsBits = &static CallRegistrationManager.shared + 3;
          v167._object = 0x800000000045CA80;
          String.append(_:)(v167);
          v168 = *(&v278 + 1);
          v169 = v264;
          v170 = v265;
          *v264 = v278;
          v169[1] = v168;
          OUTLINED_FUNCTION_40(v170);
          (*(v171 + 104))();
          swift_willThrow();

          goto LABEL_97;
        }

        OUTLINED_FUNCTION_68_5();

        static UsoTask_CodegenConverter.convert(task:)();

        LODWORD(v256) = v150;
        static Transformer<>.incomingCallTransformerOutput(phoneCallVerb:voicemailVerb:phoneCallUsoTask:audioRoute:)(v151, v150, v254, &v275);

        if (*(&v276 + 1))
        {
          OUTLINED_FUNCTION_68_5();

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v272, &_sypSgMd, &_sypSgMR);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v153 = OUTLINED_FUNCTION_3_59();
          v154(v153);
          outlined init with take of SPHConversation(&v275, &v278);
          outlined init with take of SPHConversation(&v278, v262);
          goto LABEL_76;
        }

        v174 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v275, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        OUTLINED_FUNCTION_78_6(v174, v175, &_sypSgMd, &_sypSgMR);
        if (*(&v279 + 1))
        {
          type metadata accessor for UsoTask_join_common_PhoneCall();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          v176 = swift_dynamicCast();
          if (v176)
          {

            static NLv4JoinTransformer.transform(joinTask:)(v262);
            OUTLINED_FUNCTION_40_14();

            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v272, &_sypSgMd, &_sypSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
            v178 = OUTLINED_FUNCTION_3_59();
            v179(v178);
            goto LABEL_76;
          }
        }

        else
        {
          v176 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v278, &_sypSgMd, &_sypSgMR);
        }

        OUTLINED_FUNCTION_78_6(v176, v177, &_sypSgMd, &_sypSgMR);
        if (*(&v279 + 1))
        {
          type metadata accessor for UsoTask_update_common_PhoneCall();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          v180 = swift_dynamicCast();
          if (v180)
          {

            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
            NLv4UpdateTransformer.transform(updateTask:)(v262);
LABEL_109:
            OUTLINED_FUNCTION_68_5();

            outlined destroy of NLv4UpdateTransformer(&v278);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v272, &_sypSgMd, &_sypSgMR);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
            v184 = OUTLINED_FUNCTION_3_59();
            v185(v184);
            goto LABEL_76;
          }
        }

        else
        {
          v180 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v278, &_sypSgMd, &_sypSgMR);
        }

        OUTLINED_FUNCTION_78_6(v180, v181, &_sypSgMd, &_sypSgMR);
        if (*(&v279 + 1))
        {
          type metadata accessor for UsoTask_update_common_Communication();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          v182 = swift_dynamicCast();
          if (v182)
          {

            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
            NLv4UpdateTransformer.transform(updateTask:)(v262);
            goto LABEL_109;
          }
        }

        else
        {
          v182 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v278, &_sypSgMd, &_sypSgMR);
        }

        if (HIDWORD(v253) == 17)
        {

          type metadata accessor for TransformationError();
          OUTLINED_FUNCTION_19_24();
          lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(v186, v187);
          v269 = OUTLINED_FUNCTION_61_12();
          v264 = v188;
          OUTLINED_FUNCTION_9_41();
          _StringGuts.grow(_:)(83);
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          v189 = OUTLINED_FUNCTION_63_7();
          v193 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v189, v190, v191, v192);
          OUTLINED_FUNCTION_48_14(" UsoTask_CodegenConverter convert failed for USO Task: ", v193);
          OUTLINED_FUNCTION_40_14();

          v194 = UsoTask.verbString.getter();
          v196 = v195;

          v197._countAndFlagsBits = v194;
          v197._object = v196;
          String.append(_:)(v197);

          v198._countAndFlagsBits = &static Transformer<>.logPrefix + 1;
          v198._object = 0x800000000045CAA0;
          String.append(_:)(v198);
          v199 = *(&v278 + 1);
          v200 = v264;
          v201 = v265;
          *v264 = v278;
          v200[1] = v199;
          OUTLINED_FUNCTION_40(v201);
          (*(v202 + 104))();
          swift_willThrow();

          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v272, &_sypSgMd, &_sypSgMR);
LABEL_97:
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
          v172 = OUTLINED_FUNCTION_3_59();
          v173(v172);
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_78_6(v182, v183, &_sypSgMd, &_sypSgMR);
        if (*(&v279 + 1))
        {
          type metadata accessor for UsoTask_noVerb_common_PhoneNumber();
          OUTLINED_FUNCTION_17_23();
          OUTLINED_FUNCTION_31_15();
          if (swift_dynamicCast())
          {
            v203 = v275;
            if (one-time initialization token for transformer != -1)
            {
              OUTLINED_FUNCTION_5_52();
              swift_once();
            }

            v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);
            OUTLINED_FUNCTION_29_20(v204, static Transformer<>.transformer);
            *&v278 = v203;
            v205 = OUTLINED_FUNCTION_28_16();
            v206(v205);
            v269 = 0;

            v252 = v275;
            if (v275)
            {

              v237 = Logger.logObject.getter();
              LODWORD(v250) = static os_log_type_t.debug.getter();
              v251 = v237;
              if (os_log_type_enabled(v237, v250))
              {
                OUTLINED_FUNCTION_21_21();
                v238 = swift_slowAlloc();
                OUTLINED_FUNCTION_24_19();
                v249 = swift_slowAlloc();
                *&v275 = v249;
                *v238 = 136315394;
                if (one-time initialization token for logPrefix != -1)
                {
                  OUTLINED_FUNCTION_0_69();
                  swift_once();
                }

                OUTLINED_FUNCTION_9_41();
                DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v239, v240, v241, v242);
                v247 = OUTLINED_FUNCTION_23_16();

                v248 = v238;
                *(v238 + 4) = v247;
                *(v238 + 12) = 2080;

                v247 = UsoTask.description.getter();
                v244 = v243;

                v245 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v247, v244, &v275);

                v246 = v248;
                *(v248 + 14) = v245;
                _os_log_impl(&dword_0, v251, v250, "%s Obtained a verbless phone number task and transformed to common call task: %s", v246, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_8();

                OUTLINED_FUNCTION_8();
              }

LABEL_122:
              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
              v207 = swift_allocObject();
              outlined init with take of SPHConversation(&v278, v207 + 16);
              *(v207 + 56) = BYTE4(v253);
              *(v207 + 64) = v264;
              *(v207 + 72) = v257 & 1;
              type metadata accessor for UsoTask();

              Transformer.init(transform:)();
              v208 = Transformer.transform.getter();
              *&v275 = v252;

              v209 = v269;
              v208(&v278, &v275);
              v269 = v209;
              if (v209)
              {
                v249 = 0;

                v210 = Logger.logObject.getter();
                LODWORD(v255) = static os_log_type_t.error.getter();
                v264 = v210;
                if (os_log_type_enabled(v210, v255))
                {
                  OUTLINED_FUNCTION_21_21();
                  v211 = swift_slowAlloc();
                  OUTLINED_FUNCTION_24_19();
                  v251 = swift_slowAlloc();
                  *&v275 = v251;
                  v257 = v211;
                  *v211 = 136315394;
                  if (one-time initialization token for logPrefix != -1)
                  {
                    OUTLINED_FUNCTION_0_69();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_63_7();
                  OUTLINED_FUNCTION_9_41();
                  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v212, v213, v214, v215);
                  OUTLINED_FUNCTION_23_16();
                  OUTLINED_FUNCTION_35_12();

                  v216 = v257;
                  *(v257 + 4) = v208;
                  *(v216 + 6) = 2080;

                  v217 = UsoTask.baseEntityAsString.getter();
                  v219 = v218;

                  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v219, &v275);
                  OUTLINED_FUNCTION_64();

                  v220 = v257;
                  *(v257 + 14) = v217;
                  v221 = v264;
                  _os_log_impl(&dword_0, v264, v255, "%s transformer cannot transform %s", v220, 0x16u);
                  swift_arrayDestroy();
                  OUTLINED_FUNCTION_8();

                  OUTLINED_FUNCTION_8();
                }

                else
                {
                }

                v250 = 0;
                v251 = 0;
                v264 = 0;
                v257 = 0;
                v222 = _swiftEmptyArrayStorage;
              }

              else
              {

                v250 = *(&v278 + 1);
                v222 = v278;
                v264 = *(&v279 + 1);
                v251 = v279;
                v257 = v280;
                if (BYTE8(v280) == 1)
                {

                  v223 = Logger.logObject.getter();
                  LODWORD(v264) = static os_log_type_t.debug.getter();
                  v265 = v223;
                  if (os_log_type_enabled(v223, v264))
                  {
                    OUTLINED_FUNCTION_13_14();
                    v224 = swift_slowAlloc();
                    OUTLINED_FUNCTION_12_17();
                    v257 = swift_slowAlloc();
                    *&v275 = v257;
                    v258 = v224;
                    *v224 = 136315138;
                    if (one-time initialization token for logPrefix != -1)
                    {
                      OUTLINED_FUNCTION_0_69();
                      swift_once();
                    }

                    OUTLINED_FUNCTION_63_7();
                    OUTLINED_FUNCTION_9_41();
                    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v225, v226, v227, v228);
                    OUTLINED_FUNCTION_23_16();
                    OUTLINED_FUNCTION_35_12();

                    v229 = v258;
                    *(v258 + 4) = v208;
                    v230 = v265;
                    _os_log_impl(&dword_0, v265, v264, "%s found change contact request, return NL as confirmation=no", v229, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v257);
                    OUTLINED_FUNCTION_8();

                    OUTLINED_FUNCTION_8();
                  }

                  else
                  {
                  }

                  static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)(1, v262);

                  goto LABEL_142;
                }

                v249 = v269;
              }

              v231 = v249;
              v232 = UsoTask.convertToCommonPhoneCallEntity()();
              v269 = v231;
              if (v231)
              {

                v233 = 0;
                v269 = 0;
              }

              else
              {
                v233 = v232;
              }

              v255 = UsoTask.usoAssociatedApp.getter();

              if (v233)
              {

                dispatch thunk of UsoEntity_common_PhoneCall.mode.getter();
                OUTLINED_FUNCTION_64();

                UsoEntity_common_PhoneCallMode.phoneCallAVMode.getter();
                LODWORD(v249) = v234;
              }

              else
              {
                LODWORD(v249) = 2;
              }

              v248 = v222;
              v282[0] = v222;
              v282[1] = v250;
              v282[2] = v251;
              v282[3] = v264;
              v282[4] = v257;
              v283 = 0;
              static Transformer<>.createNLIntent(app:phoneCallAVMode:phoneCallAttributes:targetContacts:commonPhoneCall:audioRoute:phoneCallVerb:voicemailVerb:referenceResolver:previousNLIntent:)(v255, v249, v258, v282, v233, v254, SHIDWORD(v253), v256, v262, v265, v281);

LABEL_142:

              (v263[1].isa)(v12, v6);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v272, &_sypSgMd, &_sypSgMR);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
              v235 = OUTLINED_FUNCTION_3_59();
              v236(v235);
              goto LABEL_76;
            }
          }
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v278, &_sypSgMd, &_sypSgMR);
        }

        v252 = v261;
        goto LABEL_122;
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v278, &_sypSgMd, &_sypSgMR);
    }

    static Transformer<>.convertPhoneCallPositionToNoVerbPosition(task:)();
    OUTLINED_FUNCTION_35_12();

    if (!&type metadata for Any)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v28 = a4;
  v29 = 0;
LABEL_7:
  static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)(v29, v28);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v281, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v30 = OUTLINED_FUNCTION_3_59();
  v31(v30);
LABEL_8:
  Signpost.OpenSignpost.end()();
}

void UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v239 = v23;
  v25 = v24;
  v27 = v26;
  v259 = type metadata accessor for IdentifierAppBundle();
  v28 = OUTLINED_FUNCTION_7(v259);
  v252 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_12_5();
  v246 = v32 - v33;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_42_13();
  v263 = type metadata accessor for IdentifierNamespace();
  v35 = OUTLINED_FUNCTION_7(v263);
  v249 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_12_5();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v255 = (&v222 - v43);
  v262 = type metadata accessor for Google_Protobuf_StringValue();
  v44 = OUTLINED_FUNCTION_7(v262);
  v251 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_12_5();
  v256 = v48 - v49;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v50);
  v254 = &v222 - v51;
  v52 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v53 = OUTLINED_FUNCTION_7(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_12_5();
  v240 = v58 - v59;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v60);
  v261 = &v222 - v61;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v62);
  v241 = &v222 - v63;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v64);
  v260 = &v222 - v65;
  static Signpost.begin(_:)();
  v67 = v66;
  v69 = v68;
  v258 = v70;
  v257 = v71;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!*(&v268 + 1))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v267, &_sypSgMd, &_sypSgMR);
    goto LABEL_156;
  }

  type metadata accessor for UsoTask_call_common_PhoneCall();
  OUTLINED_FUNCTION_31_15();
  if (swift_dynamicCast())
  {
    v231 = v27;
    v72 = *&v266[0];

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    if (!v267 || (v232 = v67, dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter(), OUTLINED_FUNCTION_35_12(), , !v67))
    {

      goto LABEL_156;
    }

    v237 = v41;
    v224 = v25;
    v73 = specialized Array.count.getter(v67);
    v74 = _swiftEmptyArrayStorage;
    v228 = v69;
    v230 = v72;
    v238 = v52;
    v264 = v67;
    v244 = _swiftEmptyArrayStorage;
    if (v73)
    {
      v75 = v73;
      *&v266[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73 & ~(v73 >> 63), 0);
      if (v75 < 0)
      {
        goto LABEL_164;
      }

      v76 = 0;
      v74 = *&v266[0];
      v77 = v67 & 0xC000000000000001;
      do
      {
        if (v77)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v78 = *(v67 + 8 * v76 + 32);
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v267)
        {
          CodeGenBase.entity.getter();
          OUTLINED_FUNCTION_35_12();
        }

        static UsoEntity_CodeGenConverter.convert(entity:)();

        *&v266[0] = v74;
        v80 = v74[2];
        v79 = v74[3];
        if (v80 >= v79 >> 1)
        {
          v83 = OUTLINED_FUNCTION_76(v79);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v83, v80 + 1, 1);
          v74 = *&v266[0];
        }

        ++v76;
        v74[2] = v80 + 1;
        v81 = &v74[4 * v80];
        v82 = v268;
        *(v81 + 2) = v267;
        *(v81 + 3) = v82;
        v67 = v264;
      }

      while (v75 != v76);
      v69 = v228;
    }

    v84 = v74[2];
    if (v84)
    {
      v85 = 0;
      LOBYTE(v72) = v74 + 32;
      do
      {
        if (v85 >= v74[2])
        {
          goto LABEL_159;
        }

        v86 = OUTLINED_FUNCTION_53_14();
        outlined init with copy of ButtonConfigurationModel?(v86, v87, v88, &_sypSgMR);
        v266[0] = v267;
        v266[1] = v268;
        if (*(&v268 + 1))
        {
          type metadata accessor for UsoEntity_common_Group();
          OUTLINED_FUNCTION_31_15();
          if (swift_dynamicCast())
          {

            OUTLINED_FUNCTION_37_15();

            goto LABEL_69;
          }
        }

        else
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v266, &_sypSgMd, &_sypSgMR);
        }

        ++v85;
        LOBYTE(v72) = v72 + 32;
      }

      while (v84 != v85);
    }

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();

    v89 = v267;
    if (v267)
    {

      v90 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v91 = v238;
      if (v90)
      {
        UsoEntity_common_App.applicationId.getter();
        v93 = v92;
        v95 = v94;

        if (v95)
        {

          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          __swift_project_value_buffer(v96, static Logger.siriPhone);
          OUTLINED_FUNCTION_11_0();

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v97, v98))
          {

            goto LABEL_155;
          }

          v99 = v93;
          v264 = v89;
          OUTLINED_FUNCTION_21_21();
          v100 = swift_slowAlloc();
          OUTLINED_FUNCTION_24_19();
          *&v266[0] = swift_slowAlloc();
          *v100 = 136315394;
          if (one-time initialization token for logPrefix != -1)
          {
            OUTLINED_FUNCTION_0_69();
            swift_once();
          }

          v101 = static NLv4Transformer.logPrefix;
          OUTLINED_FUNCTION_16_32();

          OUTLINED_FUNCTION_18_17();

          OUTLINED_FUNCTION_36_15();
          OUTLINED_FUNCTION_49_11();

          *(v100 + 4) = v101;
          *(v100 + 12) = 2080;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v95, v266);
          OUTLINED_FUNCTION_11_0();

          *(v100 + 14) = v90;
          OUTLINED_FUNCTION_41_14();
          _os_log_impl(v102, v103, v104, v105, v106, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_8();

          OUTLINED_FUNCTION_8();

          OUTLINED_FUNCTION_37_15();
LABEL_69:

          goto LABEL_156;
        }
      }
    }

    else
    {
      v91 = v238;
    }

    if (!v239)
    {
      goto LABEL_94;
    }

    v227 = *(v239 + 16);
    if (!v227)
    {
      goto LABEL_94;
    }

    v107 = 0;
    v109 = *(v55 + 16);
    v108 = v55 + 16;
    v253 = v109;
    v110 = (*(v108 + 64) + 32) & ~*(v108 + 64);
    v111 = *(v108 + 56);
    v251 += 8;
    v235 = enum case for IdentifierNamespace.nsItemId(_:);
    v250 = v249 + 104;
    v249 += 8;
    v234 = enum case for IdentifierAppBundle.abContacts(_:);
    v243 = (v252 + 104);
    v242 = (v252 + 8);
    v233 = enum case for IdentifierAppBundle.abApplications(_:);
    v245 = v108 - 8;
    v236 = v108;
    v229 = (v108 + 16);
    v225 = v110;
    v223 = v239 + v110;
    v226 = _swiftEmptyArrayStorage;
    v112 = v260;
    v252 = v111;
LABEL_42:
    v113 = ~v107;
    v114 = v223 + v111 * v107;
    v115 = v227 - v107;
    if (v227 != v107)
    {
      do
      {
        v248 = v113;
        v247 = v114;
        v253(v112);
        v116 = v254;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v117 = Google_Protobuf_StringValue.value.getter();
        v119 = v118;
        OUTLINED_FUNCTION_30_0(&a15);
        v120(v116, v262);
        OUTLINED_FUNCTION_30_0(&a14);
        v121 = v255;
        v122 = v263;
        v123(v255, v235, v263);
        IdentifierNamespace.rawValue.getter();
        OUTLINED_FUNCTION_69_7();
        OUTLINED_FUNCTION_30_0(&a13);
        v124(v121, v122);
        if (v117 == v69 && v119 == v121)
        {
        }

        else
        {
          v126 = OUTLINED_FUNCTION_26_16();

          if ((v126 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        v127 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
        v129 = v128;
        v130 = *v243;
        v131 = v259;
        (*v243)(v20, v234, v259);
        IdentifierAppBundle.rawValue.getter();
        OUTLINED_FUNCTION_69_7();
        v132 = *v242;
        (*v242)(v20, v131);
        if (v127 == v69 && v129 == v20)
        {
          goto LABEL_63;
        }

        v134 = OUTLINED_FUNCTION_26_16();

        v112 = v260;
        if (v134)
        {
          goto LABEL_64;
        }

        v135 = v20;
        v136 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
        v138 = v137;
        v139 = v246;
        v140 = v259;
        v130(v246, v233, v259);
        IdentifierAppBundle.rawValue.getter();
        OUTLINED_FUNCTION_69_7();
        v132(v139, v140);
        if (v136 == v69 && v138 == v139)
        {
          v20 = v135;
LABEL_63:
          v112 = v260;

LABEL_64:
          v144 = *v229;
          (*v229)(v241, v112, v238);
          v145 = v226;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v267 = v145;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v147 = v145[2];
            OUTLINED_FUNCTION_75_5();
            v145 = v267;
          }

          v91 = v145[2];
          v148 = v145[3];
          if (v91 >= v148 >> 1)
          {
            OUTLINED_FUNCTION_76(v148);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v145 = v267;
          }

          v107 = -v248;
          v145[2] = v91 + 1;
          v226 = v145;
          v111 = v252;
          OUTLINED_FUNCTION_55_13(&v267 + 8);
          v144();
          goto LABEL_42;
        }

        v142 = OUTLINED_FUNCTION_26_16();

        v20 = v135;
        v112 = v260;
        if (v142)
        {
          goto LABEL_64;
        }

LABEL_60:
        OUTLINED_FUNCTION_30_0(&a9);
        v91 = v238;
        v143(v112, v238);
        v113 = v248 - 1;
        v111 = v252;
        v114 = v247 + v252;
        --v115;
      }

      while (v115);
    }

    v149 = 0;
    *&v266[0] = v226;
    LODWORD(v259) = enum case for IdentifierNamespace.nsPersonRelationship(_:);
    v150 = (v239 + v225);
    v255 = _swiftEmptyArrayStorage;
    v151 = v236;
    v254 = (v239 + v225);
    v152 = v237;
    while (1)
    {
      v153 = ~v149;
      v154 = &v150[v111 * v149];
      v155 = v227 - v149;
      if (v227 == v149)
      {
        break;
      }

      while (1)
      {
        v260 = v153;
        v156 = v91;
        v157 = v151;
        (v253)(v261, v154, v91);
        v158 = v256;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v159 = Google_Protobuf_StringValue.value.getter();
        v161 = v160;
        OUTLINED_FUNCTION_30_0(&a15);
        v162(v158, v262);
        OUTLINED_FUNCTION_30_0(&a14);
        v163 = v263;
        v164(v152, v259, v263);
        v165 = IdentifierNamespace.rawValue.getter();
        v167 = v166;
        OUTLINED_FUNCTION_30_0(&a13);
        v168(v152, v163);
        if (v159 == v165 && v161 == v167)
        {
          break;
        }

        v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v170)
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_30_0(&a9);
        v91 = v156;
        v171(v261, v156);
        v153 = v260 - 1;
        v154 += v252;
        --v155;
        v151 = v157;
        if (!v155)
        {
          goto LABEL_85;
        }
      }

LABEL_80:
      v172 = *v229;
      (*v229)(v240, v261, v156);
      v173 = v255;
      v174 = swift_isUniquelyReferenced_nonNull_native();
      *&v267 = v173;
      v151 = v157;
      if ((v174 & 1) == 0)
      {
        v175 = v173[2];
        OUTLINED_FUNCTION_75_5();
        v173 = v267;
      }

      v91 = v173[2];
      v176 = v173[3];
      if (v91 >= v176 >> 1)
      {
        OUTLINED_FUNCTION_76(v176);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v173 = v267;
      }

      v149 = -v260;
      v173[2] = v91 + 1;
      v255 = v173;
      v111 = v252;
      OUTLINED_FUNCTION_55_13(&v267);
      v172();
      v150 = v254;
    }

LABEL_85:
    specialized Array.append<A>(contentsOf:)(v255);
    if (*(*&v266[0] + 16))
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v177 = type metadata accessor for Logger();
      __swift_project_value_buffer(v177, static Logger.siriPhone);
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v178, v179))
      {
        OUTLINED_FUNCTION_21_21();
        v180 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v265[0] = swift_slowAlloc();
        *v180 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        v181 = static NLv4Transformer.logPrefix;
        OUTLINED_FUNCTION_16_32();

        OUTLINED_FUNCTION_18_17();

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v267, *(&v267 + 1), v265);
        OUTLINED_FUNCTION_49_11();

        *(v180 + 4) = v181;
        *(v180 + 12) = 2080;

        v182 = Array.description.getter();
        v184 = v183;

        v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v184, v265);

        *(v180 + 14) = v185;
        _os_log_impl(&dword_0, v178, v179, "%s returning false. Found identifiers %s", v180, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_37_15();

        goto LABEL_156;
      }

LABEL_155:
      OUTLINED_FUNCTION_37_15();

      goto LABEL_156;
    }

    v67 = v264;
LABEL_94:
    *&v267 = _swiftEmptyArrayStorage;
    v72 = specialized Array.count.getter(v67);
    v186 = 0;
    v187 = v67 & 0xC000000000000001;
    v188 = v67 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      while (1)
      {
        if (v72 == v186)
        {

          if (v231)
          {
            v191 = v244;
            v72 = specialized Array.count.getter(v244);
            v192 = 0;
            v193 = v191 & 0xC000000000000001;
            v194 = v191 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v72 == v192)
              {
                v197 = OUTLINED_FUNCTION_51_14();
                goto LABEL_120;
              }

              if (v193)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v192 >= *(v194 + 16))
                {
                  goto LABEL_163;
                }

                v195 = v244[v192 + 4];
              }

              if (__OFADD__(v192, 1))
              {
                goto LABEL_162;
              }

              v196 = specialized UsoContactConvertible.isNameLikelyNonBusiness()();

              ++v192;
            }

            while ((v196 & 1) == 0);
            OUTLINED_FUNCTION_51_14();

            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v203 = type metadata accessor for Logger();
            __swift_project_value_buffer(v203, static Logger.siriPhone);
            v204 = Logger.logObject.getter();
            v205 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_5_21(v205))
            {
              OUTLINED_FUNCTION_13_14();
              v206 = swift_slowAlloc();
              OUTLINED_FUNCTION_12_17();
              v207 = swift_slowAlloc();
              *&v266[0] = v207;
              *v206 = 136315138;
              if (one-time initialization token for logPrefix != -1)
              {
LABEL_166:
                OUTLINED_FUNCTION_0_69();
                swift_once();
              }

              goto LABEL_145;
            }
          }

          else
          {
            v197 = OUTLINED_FUNCTION_51_14();
            v193 = v197 & 0xC000000000000001;
            v194 = v197 & 0xFFFFFFFFFFFFFF8;
LABEL_120:
            v198 = specialized Array.count.getter(v197);
            v72 = v198;
            for (i = 0; ; ++i)
            {
              if (v72 == i)
              {
                if (v72)
                {
                  __chkstk_darwin(v198);
                  *(&v222 - 2) = v224;
                  LOBYTE(v72) = specialized Sequence.allSatisfy(_:)(partial apply for closure #8 in implicit closure #7 in UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:), (&v222 - 4), v244);
                }

                else
                {
                  OUTLINED_FUNCTION_51_14();
                }

                if (one-time initialization token for siriPhone != -1)
                {
                  goto LABEL_165;
                }

                goto LABEL_149;
              }

              if (v193)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (i >= *(v194 + 16))
                {
                  goto LABEL_161;
                }

                v200 = v244[i + 4];
              }

              if (__OFADD__(i, 1))
              {
                goto LABEL_160;
              }

              if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
              {
                dispatch thunk of UsoEntity_common_ContactAddress.value.getter();
                v202 = v201;

                if (v202)
                {

                  if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
                  {
                    CodeGenBase.entity.getter();
                    OUTLINED_FUNCTION_11_0();
                  }

                  type metadata accessor for UsoEntity_common_PostalAddress();
                  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

                  if (!v267)
                  {
                    break;
                  }
                }
              }
            }

            OUTLINED_FUNCTION_51_14();

            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v208 = type metadata accessor for Logger();
            __swift_project_value_buffer(v208, static Logger.siriPhone);
            v204 = Logger.logObject.getter();
            v209 = static os_log_type_t.debug.getter();
            if (!OUTLINED_FUNCTION_5_21(v209))
            {
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_13_14();
            v206 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_17();
            v207 = swift_slowAlloc();
            *&v266[0] = v207;
            *v206 = 136315138;
            if (one-time initialization token for logPrefix != -1)
            {
              goto LABEL_166;
            }

LABEL_145:
            v210 = static NLv4Transformer.logPrefix;
            OUTLINED_FUNCTION_16_32();

            OUTLINED_FUNCTION_47_14();

            OUTLINED_FUNCTION_36_15();
            OUTLINED_FUNCTION_62_11();

            *(v206 + 4) = v210;
            OUTLINED_FUNCTION_41_14();
            _os_log_impl(v211, v212, v213, v214, v215, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v207);
            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_8();
          }

LABEL_146:

          goto LABEL_155;
        }

        if (v187)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v186 >= *(v188 + 16))
          {
            goto LABEL_158;
          }

          v189 = *(v67 + 8 * v186 + 32);
        }

        if (__OFADD__(v186, 1))
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          OUTLINED_FUNCTION_0_6();
          swift_once();
LABEL_149:
          v216 = type metadata accessor for Logger();
          __swift_project_value_buffer(v216, static Logger.siriPhone);
          v217 = Logger.logObject.getter();
          v218 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v217, v218))
          {
            v219 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_17();
            v220 = swift_slowAlloc();
            *&v266[0] = v220;
            *v219 = 136315394;
            if (one-time initialization token for logPrefix != -1)
            {
              OUTLINED_FUNCTION_0_69();
              swift_once();
            }

            v221 = static NLv4Transformer.logPrefix;
            OUTLINED_FUNCTION_16_32();

            OUTLINED_FUNCTION_18_17();

            OUTLINED_FUNCTION_36_15();
            OUTLINED_FUNCTION_49_11();

            *(v219 + 4) = v221;
            *(v219 + 12) = 1024;
            *(v219 + 14) = v72 & 1;
            _os_log_impl(&dword_0, v217, v218, "%s returning %{BOOL}d.", v219, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v220);
            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_37_15();
          }

          else
          {

            OUTLINED_FUNCTION_37_15();
          }

          goto LABEL_156;
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (*&v266[0])
        {
          break;
        }

LABEL_106:
        ++v186;
        v67 = v264;
      }

      UsoEntity_common_Agent.asCommonPerson()();
      OUTLINED_FUNCTION_34_0();

      if (!v91)
      {
        goto LABEL_106;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v190 = *(&dword_18 + (v267 & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v267 & 0xFFFFFFFFFFFFFF8)) >= v190 >> 1)
      {
        OUTLINED_FUNCTION_76(v190);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v244 = v267;
      ++v186;
      v67 = v264;
    }
  }

LABEL_156:
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}