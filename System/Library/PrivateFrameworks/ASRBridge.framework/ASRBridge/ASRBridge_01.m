uint64_t sub_22327A910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081880, &qword_2232AC438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22327A988()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_22327A9D8(void *a1)
{
  if (v1[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v25 = sub_2232AAAD4();
    __swift_project_value_buffer(v25, qword_28131DB88);
    v111 = sub_2232AAAC4();
    v26 = sub_2232AAD94();
    if (os_log_type_enabled(v111, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22325E000, v111, v26, "Received TRPCandidate Medoc is not enabled. Ignoring.", v27, 2u);
      MEMORY[0x223DD8AC0](v27, -1, -1);
    }

    goto LABEL_24;
  }

  v110 = v1;
  v3 = [a1 requestId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2232AAC04();
    v7 = v6;

    v9 = *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
    v8 = *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
    if (v5 == v9 && v7 == v8)
    {
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
      v12 = *&v1[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
      v13 = sub_2232AB094();

      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v28 = sub_2232AAAD4();
    v29 = __swift_project_value_buffer(v28, qword_28131DB88);
    v30 = a1;
    v31 = sub_2232AAAC4();
    v32 = sub_2232AAD84();
    v33 = v110;
    v107 = v9;
    v108 = v8;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v112 = v35;
      *v34 = 136315138;
      v36 = [v30 trpCandidateId];
      v37 = v30;

      if (!v36)
      {
LABEL_81:
        __break(1u);
        return;
      }

      v38 = sub_2232AAC04();
      v40 = v39;

      v41 = sub_2232603D0(v38, v40, &v112);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_22325E000, v31, v32, "Received TRPCandidatePackage with trpCandidateId: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x223DD8AC0](v35, -1, -1);
      MEMORY[0x223DD8AC0](v34, -1, -1);

      v30 = v37;
    }

    else
    {
    }

    v117 = MEMORY[0x277D84F90];
    v42 = [v30 tcuList];
    if (!v42)
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v43 = v42;
    sub_2232606A4(0, &unk_28131D1D0, 0x277D5D2F0);
    v44 = sub_2232AAD04();

    if (v44 >> 62)
    {
      v45 = sub_2232AAFE4();
      if (v45)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_31:
        v105 = v29;
        v106 = v30;
        if (v45 < 1)
        {
          __break(1u);
LABEL_77:
          swift_once();
LABEL_65:
          v90 = sub_2232AA8A4();
          __swift_project_value_buffer(v90, qword_28131DBA0);
          v91 = swift_allocObject();
          *(v91 + 16) = v110;
          *(v91 + 24) = v30;
          v92 = v30;
          v93 = v110;
          sub_2232AA874();

LABEL_75:

          return;
        }

        v46 = 0;
        v109 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_sessionState;
        v47 = OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_immutableSessionState;
        v48 = MEMORY[0x277D84F90];
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x223DD8300](v46, v44);
          }

          else
          {
            v52 = *(v44 + 8 * v46 + 32);
          }

          v53 = v52;
          v54 = [v52 prevTCUIds];
          if (v54)
          {

            *&v112 = v53;
            sub_223260E10(&v33[v47], &v112 + 8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_223281EF0(0, v48[2] + 1, 1, v48);
            }

            v56 = v48[2];
            v55 = v48[3];
            if (v56 >= v55 >> 1)
            {
              v48 = sub_223281EF0((v55 > 1), v56 + 1, 1, v48);
            }

            v48[2] = v56 + 1;
            v49 = &v48[6 * v56];
            v50 = v112;
            v51 = v114;
            v49[3] = v113;
            v49[4] = v51;
            v49[2] = v50;
            v117 = v48;
          }

          else
          {
            sub_223260E10(&v33[v109], v116);
            __swift_project_boxed_opaque_existential_1(v116, v116[3]);
            sub_2232AA744();
            *&v112 = v53;
            sub_2232650D4(&v115, &v112 + 8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_223281EF0(0, v48[2] + 1, 1, v48);
            }

            v58 = v48[2];
            v57 = v48[3];
            v33 = v110;
            if (v58 >= v57 >> 1)
            {
              v48 = sub_223281EF0((v57 > 1), v58 + 1, 1, v48);
            }

            v48[2] = v58 + 1;
            v59 = &v48[6 * v58];
            v60 = v112;
            v61 = v114;
            v59[3] = v113;
            v59[4] = v61;
            v59[2] = v60;
            v117 = v48;
            __swift_destroy_boxed_opaque_existential_1Tm(v116);
          }

          ++v46;
        }

        while (v45 != v46);

        v30 = v106;
LABEL_51:
        v63 = v33[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isSystemAssistantExperienceEnabled];
        MEMORY[0x28223BE20](v62);
        if (v64 == 1)
        {
          v65 = objc_allocWithZone(sub_2232AA114());
          v66 = sub_2232AA094();
          if (v66)
          {
            v67 = v66;
            v68 = sub_2232AAAC4();
            v69 = sub_2232AAD84();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              *v70 = 0;
              _os_log_impl(&dword_22325E000, v68, v69, "Going to post TRPCandidateForPlannerMessage", v70, 2u);
              MEMORY[0x223DD8AC0](v70, -1, -1);
            }

            v71 = &v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher];
            v72 = *&v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32];
            __swift_project_boxed_opaque_existential_1(&v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
            v73 = sub_2232AA624();
            MEMORY[0x28223BE20](v73);
            v74 = objc_allocWithZone(sub_2232A9934());
            v75 = sub_2232A98B4();
            if (v75)
            {
              v76 = v75;
              v77 = sub_2232AAAC4();
              v78 = sub_2232AAD84();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                *v79 = 0;
                _os_log_impl(&dword_22325E000, v77, v78, "Going to post RootTRPCandidateMessage", v79, 2u);
                MEMORY[0x223DD8AC0](v79, -1, -1);
              }

              v80 = *(v71 + 4);
              __swift_project_boxed_opaque_existential_1(v71, *(v71 + 3));
              sub_2232AA624();

              goto LABEL_63;
            }

            v101 = v33;
            v95 = sub_2232AAAC4();
            v102 = sub_2232AAD94();

            if (os_log_type_enabled(v95, v102))
            {
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              *&v112 = v104;
              *v103 = 136315138;
              *(v103 + 4) = sub_2232603D0(v107, v108, &v112);
              _os_log_impl(&dword_22325E000, v95, v102, "Failed to create RootTRPCandidateMessage for request: %s", v103, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v104);
              MEMORY[0x223DD8AC0](v104, -1, -1);
              MEMORY[0x223DD8AC0](v103, -1, -1);
            }

            goto LABEL_74;
          }

          v94 = v33;
          v95 = sub_2232AAAC4();
          v96 = sub_2232AAD94();

          if (!os_log_type_enabled(v95, v96))
          {
            goto LABEL_74;
          }

          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v112 = v98;
          *v97 = 136315138;
          *(v97 + 4) = sub_2232603D0(v107, v108, &v112);
          v99 = "Failed to create TRPCandidateForPlannerMessage for request: %s";
        }

        else
        {
          v81 = objc_allocWithZone(sub_2232A9E44());
          v82 = sub_2232A9DC4();
          if (v82)
          {
            v76 = v82;
            v83 = sub_2232AAAC4();
            v84 = sub_2232AAD84();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              *v85 = 0;
              _os_log_impl(&dword_22325E000, v83, v84, "Going to post TRPCandidateMessage", v85, 2u);
              MEMORY[0x223DD8AC0](v85, -1, -1);
            }

            v86 = *&v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32];
            __swift_project_boxed_opaque_existential_1(&v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
            sub_2232AA624();
LABEL_63:

            v87 = *&v33[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil];
            v88 = [v30 trpCandidateId];
            if (!v88)
            {
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            v89 = v88;
            sub_2232AAC04();

            sub_22327FF24();

            if (qword_28131D340 == -1)
            {
              goto LABEL_65;
            }

            goto LABEL_77;
          }

          v100 = v33;
          v95 = sub_2232AAAC4();
          v96 = sub_2232AAD94();

          if (!os_log_type_enabled(v95, v96))
          {
LABEL_74:

            goto LABEL_75;
          }

          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v112 = v98;
          *v97 = 136315138;
          *(v97 + 4) = sub_2232603D0(v107, v108, &v112);
          v99 = "Failed to create TRPCandidateRequestMessage for request: %s";
        }

        _os_log_impl(&dword_22325E000, v95, v96, v99, v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        MEMORY[0x223DD8AC0](v98, -1, -1);
        MEMORY[0x223DD8AC0](v97, -1, -1);
        goto LABEL_74;
      }
    }

    goto LABEL_51;
  }

LABEL_8:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = a1;
  v16 = v1;
  v111 = sub_2232AAAC4();
  v17 = sub_2232AAD84();
  if (os_log_type_enabled(v111, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v112 = v19;
    *v18 = 136315394;
    v20 = [v15 requestId];

    if (v20)
    {
      v21 = sub_2232AAC04();
      v23 = v22;

      v24 = sub_2232603D0(v21, v23, &v112);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2232603D0(*&v16[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v16[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v112);
      _os_log_impl(&dword_22325E000, v111, v17, "TRPCandidate requestId = %s does not match current requestId = %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD8AC0](v19, -1, -1);
      MEMORY[0x223DD8AC0](v18, -1, -1);

      return;
    }

    goto LABEL_79;
  }

LABEL_24:
}

void sub_22327B778(void *a1)
{
  v3 = sub_2232AAAB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  if (*(v1 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v22 = sub_2232AAAD4();
    __swift_project_value_buffer(v22, qword_28131DB88);
    v53 = sub_2232AAAC4();
    v19 = sub_2232AAD94();
    if (!os_log_type_enabled(v53, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Received ContinuityEnd when Medoc is not enabled.";
    goto LABEL_16;
  }

  v53 = v8;
  v11 = [a1 requestId];
  if (!v11)
  {
LABEL_8:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v53 = sub_2232AAAC4();
    v19 = sub_2232AADA4();
    if (!os_log_type_enabled(v53, v19))
    {
      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "ContinuityEnd requestId does not match current requestId";
LABEL_16:
    _os_log_impl(&dword_22325E000, v53, v19, v21, v20, 2u);
    MEMORY[0x223DD8AC0](v20, -1, -1);
LABEL_17:
    v23 = v53;

    return;
  }

  v12 = v11;
  v13 = sub_2232AAC04();
  v15 = v14;

  if (v13 == *(v1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) && v15 == *(v1 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8))
  {
  }

  else
  {
    v17 = sub_2232AB094();

    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v52 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v24 = sub_2232AAAD4();
  v25 = __swift_project_value_buffer(v24, qword_28131DB88);
  v26 = a1;
  v27 = sub_2232AAAC4();
  v28 = sub_2232AAD84();
  if (os_log_type_enabled(v27, v28))
  {
    v49 = v25;
    v51 = v4;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54 = v30;
    *v29 = 136315138;
    v31 = [v26 lastTRPCandidateId];
    v32 = v26;
    v33 = v31;
    v50 = v32;

    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = sub_2232AAC04();
    v36 = v35;

    v37 = sub_2232603D0(v34, v36, &v54);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_22325E000, v27, v28, "Received ContinuityEnd with lastTRPCandidateId: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DD8AC0](v30, -1, -1);
    MEMORY[0x223DD8AC0](v29, -1, -1);

    v26 = v50;
    v4 = v51;
  }

  else
  {
  }

  v38 = sub_2232AAAC4();
  v39 = sub_2232AAD84();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22325E000, v38, v39, "Will wait on Myriad selection..", v40, 2u);
    MEMORY[0x223DD8AC0](v40, -1, -1);
  }

  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v41 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v42 = qword_28131DD38;
  sub_2232AAA74();

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v53;
  (*(v4 + 16))(v7, v10, v53);
  v45 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v46 = (v5 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v4 + 32))(v47 + v45, v7, v44);
  *(v47 + v46) = v43;
  *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v48 = v26;

  sub_22328019C(0x7065636341204352, 0xED000065636E6174, sub_22327F434, v47);

  (*(v4 + 8))(v10, v44);
}

void sub_22327BE04(char a1)
{
  v2 = v1;
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v9 = sub_2232AAAD4();
  __swift_project_value_buffer(v9, qword_28131DB88);
  v10 = sub_2232AAAC4();
  v11 = sub_2232AAD84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22325E000, v10, v11, "Received requestAttentionAssetDownload", v12, 2u);
    MEMORY[0x223DD8AC0](v12, -1, -1);
  }

  if (a1)
  {
    MEMORY[0x28223BE20](v13);
    *(&v33 - 2) = v2;
    v14 = objc_allocWithZone(sub_2232AA414());
    v15 = sub_2232AA244();
    if (v15)
    {
      v16 = v15;
      v17 = sub_2232AAAC4();
      v18 = sub_2232AAD84();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22325E000, v17, v18, "Going to post MagusAttentionAssetDownloadRequestedMessage", v19, 2u);
        MEMORY[0x223DD8AC0](v19, -1, -1);
      }

      v20 = *(&v2[4].isa + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher);
      __swift_project_boxed_opaque_existential_1((&v2->isa + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher), *(&v2[3].isa + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher));
      sub_2232AA624();
    }

    else
    {
      v24 = v2;
      v25 = sub_2232AAAC4();
      v26 = sub_2232AAD94();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34 = v28;
        *v27 = 136315138;
        (*(v5 + 16))(v8, v24 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId, v4);
        sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
        v29 = sub_2232AB064();
        v31 = v30;
        (*(v5 + 8))(v8, v4);
        v32 = sub_2232603D0(v29, v31, &v34);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_22325E000, v25, v26, "Failed to create MagusAttentionAssetDownloadRequestedMessage for session: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x223DD8AC0](v28, -1, -1);
        MEMORY[0x223DD8AC0](v27, -1, -1);
      }
    }
  }

  else
  {
    v33 = sub_2232AAAC4();
    v21 = sub_2232AAD84();
    if (os_log_type_enabled(v33, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      _os_log_impl(&dword_22325E000, v33, v21, "requestDownload = %{BOOL}d, returning.", v22, 8u);
      MEMORY[0x223DD8AC0](v22, -1, -1);
    }

    v23 = v33;
  }
}

void sub_22327C29C(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  if (v4[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled])
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v5 = sub_2232AAAD4();
    __swift_project_value_buffer(v5, qword_28131DB88);
    v38 = sub_2232AAAC4();
    v6 = sub_2232AAD94();
    if (os_log_type_enabled(v38, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22325E000, v38, v6, "Received Eager RC in Medoc flow. Ignoring.", v7, 2u);
      MEMORY[0x223DD8AC0](v7, -1, -1);
    }
  }

  else
  {
    v8 = v4;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v13 = sub_2232AAAD4();
    __swift_project_value_buffer(v13, qword_28131DB88);
    v14 = sub_2232AAAC4();
    v15 = sub_2232AAD84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      *(v16 + 4) = a3;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a4;
      _os_log_impl(&dword_22325E000, v14, v15, "Received eager recognition candidate rcId:%lu processedDuration: %f", v16, 0x16u);
      MEMORY[0x223DD8AC0](v16, -1, -1);
    }

    v17 = *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId] == a1 && *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8] == a2;
    if (v17 || (sub_2232AB094() & 1) != 0)
    {
      v39 = a3;
      v18 = sub_2232AB064();
      v20 = v19;
      MEMORY[0x28223BE20](v18);
      v21 = objc_allocWithZone(sub_2232A9B44());
      v22 = sub_2232A9AC4();
      if (v22)
      {
        v23 = v22;
        v24 = *&v8[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil];
        sub_22327FDD4(a1, a2, v18, v20);

        if (qword_28131D340 != -1)
        {
          swift_once();
        }

        v25 = sub_2232AA8A4();
        __swift_project_value_buffer(v25, qword_28131DBA0);
        v26 = swift_allocObject();
        v26[2] = v8;
        v26[3] = a1;
        v26[4] = a2;
        v26[5] = a3;
        v27 = v8;

        sub_2232AA874();

        v28 = *&v27[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_bufferedResultCandidateHandler];
        sub_22328237C(v23);
      }

      else
      {

        v29 = sub_2232AAAC4();
        v30 = sub_2232AAD94();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v39 = v32;
          *v31 = 136315138;
          *(v31 + 4) = sub_2232603D0(a1, a2, &v39);
          _os_log_impl(&dword_22325E000, v29, v30, "Failed to create AsrResultCandidateMessage for request: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          MEMORY[0x223DD8AC0](v32, -1, -1);
          MEMORY[0x223DD8AC0](v31, -1, -1);
        }
      }
    }

    else
    {
      v33 = sub_2232AAAC4();
      v34 = sub_2232AAD94();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22325E000, v33, v34, "Response requestId does not match current requestId", v35, 2u);
        MEMORY[0x223DD8AC0](v35, -1, -1);
      }

      if (qword_28131D340 != -1)
      {
        swift_once();
      }

      v36 = sub_2232AA8A4();
      __swift_project_value_buffer(v36, qword_28131DBA0);
      v37 = swift_allocObject();
      v37[2] = a1;
      v37[3] = a2;
      v37[4] = a3;

      sub_2232AA884();
    }
  }
}

void sub_22327C874(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v59 = a4;
  v60 = a1;
  v8 = sub_2232AAAB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  __swift_project_value_buffer(v13, qword_28131DB88);
  v14 = sub_2232AAAC4();
  v15 = sub_2232AAD84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a3;
    _os_log_impl(&dword_22325E000, v14, v15, "Received recognition candidate accepted for rcId:%lu", v16, 0xCu);
    MEMORY[0x223DD8AC0](v16, -1, -1);
  }

  sub_2232AAE44();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v17 = qword_28131DD38;
  sub_2232AAAA4();
  sub_2232AAA84();

  (*(v9 + 8))(v12, v8);
  v18 = v60;
  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v19 = sub_2232AA8A4();
  __swift_project_value_buffer(v19, qword_28131DBA0);
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v18;
  v20[4] = a2;
  v20[5] = a3;
  v21 = v5;

  sub_2232AA874();

  if ((*&v21[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId] != v18 || *&v21[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8] != a2) && (sub_2232AB094() & 1) == 0)
  {
    v38 = sub_2232AAAC4();
    v39 = sub_2232AAD94();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22325E000, v38, v39, "Response requestId does not match current requestId", v40, 2u);
      MEMORY[0x223DD8AC0](v40, -1, -1);
    }

    v41 = swift_allocObject();
    v41[2] = v18;
    v41[3] = a2;
    v41[4] = v21;
    v41[5] = a3;
    v42 = v21;

    goto LABEL_27;
  }

  v61 = a3;
  v22 = sub_2232AB064();
  v24 = v23;
  if (v21[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled] == 1)
  {
    v25 = *&v21[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard];
    if (v25)
    {
      v26 = 0xD000000000000018;
      if (v21[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityScoreConsumptionEnabled] == 1)
      {
        v27 = MEMORY[0x28223BE20](v22);
        *&v58[-32] = v21;
        *&v58[-24] = v27;
        *&v58[-16] = v24;
        v58[-8] = v28;
        objc_allocWithZone(sub_2232AA274());
        v29 = v25;
        v30 = sub_2232A9754();

        if (!v30)
        {
          v31 = "MUXResultSelectedMessage";
          v26 = 0xD000000000000023;
LABEL_32:

          v53 = sub_2232AAAC4();
          v54 = sub_2232AAD94();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v61 = v56;
            *v55 = 136315394;
            v57 = sub_2232603D0(v26, v31 | 0x8000000000000000, &v61);

            *(v55 + 4) = v57;
            *(v55 + 12) = 2080;
            *(v55 + 14) = sub_2232603D0(v60, a2, &v61);
            _os_log_impl(&dword_22325E000, v53, v54, "Failed to create %s for request: %s", v55, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v56, -1, -1);
            MEMORY[0x223DD8AC0](v55, -1, -1);
          }

          else
          {
          }

          return;
        }
      }

      else
      {
        v49 = MEMORY[0x28223BE20](v22);
        *&v58[-48] = v21;
        *&v58[-40] = v49;
        *&v58[-32] = v24;
        v58[-24] = v50;
        *&v58[-16] = v25;
        objc_allocWithZone(sub_2232A9A34());
        v51 = v25;
        v30 = sub_2232A99B4();

        if (!v30)
        {
          v31 = "Builder8";
          goto LABEL_32;
        }
      }

LABEL_30:
      v52 = *&v21[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg];
      *&v21[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_resultSelectedMsg] = v30;

      sub_223273B3C();
      return;
    }

    v43 = sub_2232AAAC4();
    v44 = sub_2232AAD94();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22325E000, v43, v44, "Voice id card is nil. This is due to malformed homemembers list", v45, 2u);
      MEMORY[0x223DD8AC0](v45, -1, -1);
    }

    v46 = swift_allocObject();
    v47 = v60;
    v46[2] = v21;
    v46[3] = v47;
    v46[4] = a2;
    v46[5] = a3;
    v48 = v21;

LABEL_27:
    sub_2232AA884();

    return;
  }

  v32 = MEMORY[0x28223BE20](v22);
  *&v58[-32] = v21;
  *&v58[-24] = v32;
  *&v58[-16] = v24;
  v58[-8] = v59 & 1;
  v33 = objc_allocWithZone(sub_2232A9764());
  v30 = sub_2232A9754();

  if (v30)
  {
    goto LABEL_30;
  }

  v34 = sub_2232AAAC4();
  v35 = sub_2232AAD94();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v61 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_2232603D0(v18, a2, &v61);
    _os_log_impl(&dword_22325E000, v34, v35, "Failed to create ResultSelectedMessage for request: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x223DD8AC0](v37, -1, -1);
    MEMORY[0x223DD8AC0](v36, -1, -1);
  }
}

void sub_22327D100(void *a1)
{
  v2 = v1;
  v4 = sub_2232A9504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v9 = sub_2232AAAD4();
  v10 = __swift_project_value_buffer(v9, qword_28131DB88);
  v11 = a1;
  v12 = sub_2232AAAC4();
  v13 = sub_2232AAD84();
  if (!os_log_type_enabled(v12, v13))
  {

LABEL_7:
    v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_hasfirstVoiceIdScoreCardArrived] = 1;
    v26 = *&v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard];
    *&v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard] = v11;
    v27 = v11;

    if (v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isUOS] == 1)
    {
      v29 = sub_2232AAE04();
      sub_2232A94F4();
      sub_2232A94C4();
      (*(v5 + 8))(v8, v4);
      v30 = sub_2232AABF4();

      [v29 setAceId_];

      v31 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
      v32 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
      v33 = sub_2232AABF4();
      [v29 setRefId_];

      v34 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper];
      v35 = swift_allocObject();
      *(v35 + 16) = v29;
      aBlock[4] = sub_22327F6DC;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor_216;
      v36 = _Block_copy(aBlock);
      v37 = v29;

      [v34 handleCommand:v37 completion:v36];
      _Block_release(v36);
    }

    if ((v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityScoreConsumptionEnabled] & 1) != 0 || v2[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isIdentityBridgeInstrumentationEnabled] == 1)
    {
      MEMORY[0x28223BE20](v28);
      *&v50[-16] = v2;
      *&v50[-8] = v27;
      v38 = objc_allocWithZone(sub_2232A99A4());
      v39 = sub_2232A9944();
      if (!v39)
      {
        v40 = v2;
        v41 = sub_2232AAAC4();
        v42 = sub_2232AAD94();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_2232603D0(*&v40[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v40[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], aBlock);
          v45 = "Failed to create VoiceIdScoreCardMessage for request: %s";
LABEL_18:
          _os_log_impl(&dword_22325E000, v41, v42, v45, v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          MEMORY[0x223DD8AC0](v44, -1, -1);
          MEMORY[0x223DD8AC0](v43, -1, -1);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v28);
      *&v50[-16] = v2;
      *&v50[-8] = v27;
      v46 = objc_allocWithZone(sub_2232A9D34());
      v39 = sub_2232A9CB4();
      if (!v39)
      {
        v49 = v2;
        v41 = sub_2232AAAC4();
        v42 = sub_2232AAD94();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_2232603D0(*&v49[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v49[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], aBlock);
          v45 = "Failed to create UserIdentificationMessage for request: %s";
          goto LABEL_18;
        }

LABEL_19:

        return;
      }
    }

    v47 = v39;
    v48 = *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher], *&v2[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24]);
    sub_2232AA624();

    return;
  }

  v51 = v13;
  v53 = v8;
  v54 = v5;
  v55 = v4;
  v56 = v10;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  aBlock[0] = v52;
  *v14 = 136315906;
  v16 = [v11 spIdKnownUserScores];
  if (v16)
  {
    v17 = v16;
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    sub_2232AAB94();

    v18 = sub_2232AABA4();
    v20 = v19;

    v21 = sub_2232603D0(v18, v20, aBlock);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2112;
    v22 = [v11 spIdUnknownUserScore];
    *(v14 + 14) = v22;
    *v15 = v22;
    *(v14 + 22) = 2048;
    v23 = [v11 userIdentityClassification];

    *(v14 + 24) = v23;
    *(v14 + 32) = 2112;
    v24 = [v11 spIdAudioProcessedDuration];
    *(v14 + 34) = v24;
    v15[1] = v24;
    _os_log_impl(&dword_22325E000, v12, v51, "Received voiceIdScoreCard.\nKnownUserScores=%s, UnknownUserScore=%@, UserClassification=%ld, Audio Duration= %@", v14, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0812D0, &qword_2232AC4A0);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v15, -1, -1);
    v25 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x223DD8AC0](v25, -1, -1);
    MEMORY[0x223DD8AC0](v14, -1, -1);

    v4 = v55;
    v8 = v53;
    v5 = v54;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22327D88C()
{
  v1 = v0;
  v2 = sub_2232A9504();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v102 - v8;
  sub_2232A94F4();
  v107 = sub_2232A94C4();
  v11 = v10;
  v111 = *(v3 + 8);
  v112 = v2;
  v110 = v3 + 8;
  v111(v9, v2);
  v12 = [objc_allocWithZone(MEMORY[0x277CEF480]) init];
  v13 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v14 = v12;
  v15 = [v13 init];
  v16 = objc_allocWithZone(MEMORY[0x277CEF470]);
  v17 = v14;
  v18 = [v16 initWithRecognition:v17 rawRecognition:v17 audioAnalytics:v15 isFinal:0 utteranceStart:0.0];

  if (!v18)
  {

    if (qword_28131D338 != -1)
    {
LABEL_38:
      swift_once();
    }

    v36 = sub_2232AAAD4();
    __swift_project_value_buffer(v36, qword_28131DB88);
    v37 = sub_2232AAAC4();
    v38 = sub_2232AAD94();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22325E000, v37, v38, "Failed to create speechPackage", v39, 2u);
      MEMORY[0x223DD8AC0](v39, -1, -1);
    }

    goto LABEL_30;
  }

  v105 = v11;
  if (v1[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMUXEnabled] != 1)
  {
    v40 = v105;
    v41 = sub_223276AB8(v107, v105, 0, 0);
    if (v41)
    {
      v103 = v18;
      v104 = v17;
      v42 = v41;
      sub_22327A9D8(v41);

      v112 = 0;
      v113 = 0;
      v43 = v107;
      goto LABEL_42;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v44 = sub_2232AAAD4();
    __swift_project_value_buffer(v44, qword_28131DB88);
    v45 = v1;
    v46 = sub_2232AAAC4();
    v47 = sub_2232AAD94();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_2232603D0(*&v45[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v45[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
      _os_log_impl(&dword_22325E000, v46, v47, "Failed to create fabricated TRPCandidate for request: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223DD8AC0](v49, -1, -1);
      MEMORY[0x223DD8AC0](v48, -1, -1);
    }

LABEL_30:
    return;
  }

  v114 = MEMORY[0x277D84F90];
  v19 = *&v1[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_homeMembers];
  v103 = v18;
  v104 = v17;
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v109 = v1;
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

  v20 = sub_2232AAFE4();
  v109 = v1;
  if (!v20)
  {
LABEL_40:
    v59 = swift_allocObject();
    v43 = v107;
    v40 = v105;
    v59[2] = v107;
    v59[3] = v40;
    v59[4] = &v114;
    v59[5] = v1;
    v60 = objc_allocWithZone(MEMORY[0x277D5D2E0]);
    v61 = swift_allocObject();
    *(v61 + 16) = sub_22327F354;
    *(v61 + 24) = v59;
    v119 = sub_22327F800;
    v120 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v116 = 1107296256;
    v117 = sub_2232787D8;
    v118 = &block_descriptor_176;
    v62 = _Block_copy(&aBlock);
    v63 = v1;
    v64 = v62;
    v65 = v63;

    v66 = [v60 initWithBuilder_];
    _Block_release(v64);
    if (!v66)
    {

      v89 = v104;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v90 = sub_2232AAAD4();
      __swift_project_value_buffer(v90, qword_28131DB88);
      v91 = v65;
      v92 = sub_2232AAAC4();
      v93 = sub_2232AAD94();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        aBlock = v95;
        *v94 = 136315138;
        *(v94 + 4) = sub_2232603D0(*&v91[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v91[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v92, v93, "Failed to create fabricated MultiUserTRPCandidate for request: %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        MEMORY[0x223DD8AC0](v95, -1, -1);
        MEMORY[0x223DD8AC0](v94, -1, -1);
      }

      return;
    }

    v113 = v59;
    sub_2232795D8(v66);

    v112 = sub_22327F354;
    v1 = v109;
LABEL_42:
    v67 = swift_allocObject();
    v67[2] = v43;
    v67[3] = v40;
    v67[4] = v1;
    v68 = objc_allocWithZone(MEMORY[0x277D5D300]);
    v69 = swift_allocObject();
    *(v69 + 16) = sub_22327F324;
    *(v69 + 24) = v67;
    v119 = sub_22327F800;
    v120 = v69;
    aBlock = MEMORY[0x277D85DD0];
    v116 = 1107296256;
    v117 = sub_22327F7FC;
    v118 = &block_descriptor_158;
    v70 = _Block_copy(&aBlock);
    v71 = v1;

    v72 = [v68 initWithBuilder_];
    v73 = v40;
    v74 = v72;
    _Block_release(v70);
    if (v74)
    {
      sub_22327909C(v74);
      v75 = swift_allocObject();
      v75[2] = v43;
      v75[3] = v73;
      v75[4] = v71;
      v76 = objc_allocWithZone(MEMORY[0x277D5D2D8]);
      v77 = swift_allocObject();
      *(v77 + 16) = sub_22327F7C4;
      *(v77 + 24) = v75;
      v119 = sub_22327F800;
      v120 = v77;
      aBlock = MEMORY[0x277D85DD0];
      v116 = 1107296256;
      v117 = sub_22327F7FC;
      v118 = &block_descriptor_167;
      v78 = _Block_copy(&aBlock);
      v79 = v71;

      v80 = [v76 initWithBuilder_];
      _Block_release(v78);
      if (v80)
      {
        sub_22327B778(v80);
      }

      else
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v96 = sub_2232AAAD4();
        __swift_project_value_buffer(v96, qword_28131DB88);
        v97 = v79;
        v98 = sub_2232AAAC4();
        v99 = sub_2232AAD94();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          aBlock = v101;
          *v100 = 136315138;
          *(v100 + 4) = sub_2232603D0(*&v97[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v97[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
          _os_log_impl(&dword_22325E000, v98, v99, "Failed to create fabricated ContinuityEnd for request: %s", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          MEMORY[0x223DD8AC0](v101, -1, -1);
          MEMORY[0x223DD8AC0](v100, -1, -1);
        }
      }

      sub_22327F344(v112);
    }

    else
    {

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v81 = sub_2232AAAD4();
      __swift_project_value_buffer(v81, qword_28131DB88);
      v82 = v71;
      v83 = sub_2232AAAC4();
      v84 = sub_2232AAD94();

      v85 = os_log_type_enabled(v83, v84);
      v86 = v104;
      if (v85)
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        aBlock = v88;
        *v87 = 136315138;
        *(v87 + 4) = sub_2232603D0(*&v82[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v82[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v83, v84, "Failed to create fabricated TRPDetected for request: %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x223DD8AC0](v88, -1, -1);
        MEMORY[0x223DD8AC0](v87, -1, -1);
      }

      sub_22327F344(v112);
    }

    return;
  }

LABEL_5:
  v21 = 0;
  v108 = v19 & 0xC000000000000001;
  v106 = v19 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v108)
    {
      v22 = MEMORY[0x223DD8300](v21, v19);
    }

    else
    {
      if (v21 >= *(v106 + 16))
      {
        goto LABEL_37;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_2232A94F4();
    v25 = sub_2232A94C4();
    v27 = v26;
    v111(v7, v112);
    v113 = v23;
    v28 = [v23 sharedUserId];
    if (v28)
    {
      v29 = v28;
      v30 = sub_2232AAC04();
      v17 = v31;
    }

    else
    {
      v30 = 0;
      v17 = 0;
    }

    v32 = v30;
    v1 = v109;
    v33 = sub_223276AB8(v25, v27, v32, v17);

    if (!v33)
    {
      break;
    }

    v34 = v33;
    MEMORY[0x223DD8070]();
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2232AAD24();
    }

    sub_2232AAD34();

    ++v21;
    if (v24 == v20)
    {
      goto LABEL_40;
    }
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v50 = sub_2232AAAD4();
  __swift_project_value_buffer(v50, qword_28131DB88);
  v51 = v1;
  v52 = sub_2232AAAC4();
  v53 = sub_2232AAD94();

  v54 = os_log_type_enabled(v52, v53);
  v56 = v103;
  v55 = v104;
  if (v54)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_2232603D0(*&v51[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v51[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &aBlock);
    _os_log_impl(&dword_22325E000, v52, v53, "Failed to create fabricated UserLevel TRPCandidate for request: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x223DD8AC0](v58, -1, -1);
    MEMORY[0x223DD8AC0](v57, -1, -1);
  }
}

void sub_22327E68C(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CEF480]) init];
  v5 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v6 = v4;
  v7 = [v5 init];
  v8 = objc_allocWithZone(MEMORY[0x277CEF470]);
  v9 = v6;
  v21 = [v8 initWithRecognition:v9 rawRecognition:v9 audioAnalytics:v7 isFinal:0 utteranceStart:0.0];

  if (v21)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v10 = sub_2232AAAD4();
    __swift_project_value_buffer(v10, qword_28131DB88);
    v11 = sub_2232AAAC4();
    v12 = sub_2232AAD84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22325E000, v11, v12, "Calling delegate callback with fabricated SpeechPackage", v13, 2u);
      MEMORY[0x223DD8AC0](v13, -1, -1);
    }

    sub_22327C29C(a1, a2, 0, 0.0);
    v14 = sub_2232AAAC4();
    v15 = sub_2232AAD84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22325E000, v14, v15, "Calling delegate callback with accept for fabricated SpeechPackage", v16, 2u);
      MEMORY[0x223DD8AC0](v16, -1, -1);
    }

    sub_22327C874(a1, a2, 0, 0);
    v17 = v9;
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v17 = sub_2232AAAC4();
    v19 = sub_2232AAD94();
    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22325E000, v17, v19, "Failed to create speechPackage", v20, 2u);
      MEMORY[0x223DD8AC0](v20, -1, -1);
    }

    v21 = v9;
  }
}

void sub_22327E990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v7 = v6;
  if (!a3)
  {
    goto LABEL_18;
  }

  v13 = *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v14 = *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  v15 = v13 == a2 && v14 == a3;
  if (v15 || (v16 = *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], v17 = a4, v18 = *&v7[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], v19 = sub_2232AB094(), a4 = v17, (v19 & 1) != 0))
  {
    v73 = a4;
    v71 = a2;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v20 = sub_2232AAAD4();
    __swift_project_value_buffer(v20, qword_28131DB88);
    v21 = sub_2232AAAC4();
    v22 = sub_2232AAD84();
    v72 = a5;
    if (os_log_type_enabled(v21, v22))
    {
      v70 = v14;
      v23 = swift_slowAlloc();
      v69 = a6;
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0811E8, qword_2232AC468);
      v25 = sub_2232AAEA4();
      v27 = v13;
      v28 = sub_2232603D0(v25, v26, &v76);

      *(v23 + 4) = v28;
      v13 = v27;
      _os_log_impl(&dword_22325E000, v21, v22, "Received didCompletionRecognitionWithStatistics with endpointMode: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v29 = v24;
      a6 = v69;
      MEMORY[0x223DD8AC0](v29, -1, -1);
      v30 = v23;
      v14 = v70;
      MEMORY[0x223DD8AC0](v30, -1, -1);
    }

    v31 = v71;
    sub_22326D244(a1, 0);
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v32 = sub_2232AA8A4();
    __swift_project_value_buffer(v32, qword_28131DBA0);
    v33 = swift_allocObject();
    *(v33 + 16) = v73;
    *(v33 + 24) = v72 & 1;
    *(v33 + 32) = v7;
    *(v33 + 40) = v71;
    *(v33 + 48) = a3;
    v34 = v7;

    sub_2232AA874();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081100, qword_2232AC440);
    if (a6)
    {
      v74 = a6;
      v35 = a6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0811D8, &qword_2232AC460);
      sub_2232606A4(0, &qword_28131D190, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v36 = v76;
        v37 = &off_2784D7000;
        if ([v76 code] == 1110)
        {
          v38 = swift_allocObject();
          *(v38 + 16) = v34;
          *(v38 + 24) = v71;
          *(v38 + 32) = a3;
          *(v38 + 40) = v36;
          *(v38 + 48) = v73;
          *(v38 + 56) = v72 & 1;
          v39 = v34;

          v40 = v36;
          sub_2232AA884();

          if (v39[OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_isMedocEnabled] == 1)
          {
            sub_22327D88C();
          }

          else
          {
            sub_22327E68C(v13, v14);
          }
        }

        else if ([v36 code] == 1101 || objc_msgSend(v36, sel_code) == 1107)
        {
          v48 = sub_2232AAAC4();
          v49 = sub_2232AAD94();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_22325E000, v48, v49, "embeddedspeech probably crashed, failing current request", v50, 2u);
            MEMORY[0x223DD8AC0](v50, -1, -1);
          }

          v51 = swift_allocObject();
          *(v51 + 16) = v34;
          *(v51 + 24) = v71;
          *(v51 + 32) = a3;
          *(v51 + 40) = v36;
          *(v51 + 48) = v73;
          *(v51 + 56) = v72 & 1;
          v34;

          v52 = v36;
          sub_2232AA884();

          sub_2232773E4(v13, v14, v52);
          v37 = &off_2784D7000;
        }

        else
        {
          v53 = v36;
          v54 = sub_2232AAAC4();
          v55 = sub_2232AAD94();
          if (os_log_type_enabled(v54, v55))
          {
            v68 = v55;
            v56 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v75 = v67;
            *v56 = 134218242;
            *(v56 + 4) = [v53 code];

            *(v56 + 12) = 2080;
            v57 = [v53 description];
            v58 = sub_2232AAC04();
            v60 = v59;

            v61 = sub_2232603D0(v58, v60, &v75);
            v31 = v71;

            *(v56 + 14) = v61;
            _os_log_impl(&dword_22325E000, v54, v68, "Received ASR error %ld %s but not taking any action", v56, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v67);
            MEMORY[0x223DD8AC0](v67, -1, -1);
            MEMORY[0x223DD8AC0](v56, -1, -1);
          }

          else
          {
          }

          v62 = swift_allocObject();
          *(v62 + 16) = v53;
          *(v62 + 24) = v34;
          *(v62 + 32) = v31;
          *(v62 + 40) = a3;
          *(v62 + 48) = v73;
          *(v62 + 56) = v72 & 1;
          v63 = v34;

          v64 = v53;
          sub_2232AA884();
        }

        v65 = *&v34[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil];
        v66 = [v36 v37[232]];
        if (v66 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v66 <= 0x7FFFFFFF)
        {
          sub_22327FB30(v66);

          return;
        }

        __break(1u);
      }

      sub_2232AB084();
      __break(1u);
    }
  }

  else
  {
LABEL_18:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v41 = sub_2232AAAD4();
    __swift_project_value_buffer(v41, qword_28131DB88);
    v42 = sub_2232AAAC4();
    v43 = sub_2232AAD94();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22325E000, v42, v43, "Response requestId does not match current requestId", v44, 2u);
      MEMORY[0x223DD8AC0](v44, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v45 = sub_2232AA8A4();
    __swift_project_value_buffer(v45, qword_28131DBA0);
    v46 = swift_allocObject();
    v46[2] = a2;
    v46[3] = a3;
    v46[4] = v7;

    v47 = v7;
    sub_2232AA884();
  }
}

uint64_t objectdestroy_145Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22327F344(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_127Tm()
{
  v1 = sub_2232AAAB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22327F44C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_2232AAAB4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v7, v8);
}

uint64_t objectdestroy_136Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22327F5D0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_223273844(a1, *(v1 + 16));
}

uint64_t objectdestroy_194Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_22327F678()
{
  result = qword_28131D220;
  if (!qword_28131D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D220);
  }

  return result;
}

void sub_22327F740(uint64_t a1, unint64_t *a2)
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

uint64_t sub_22327F80C()
{
  type metadata accessor for ASRBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedStream];
  v1 = sub_2232AA9E4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_2232AA9D4();
  *(v0 + 24) = result;
  qword_28131DD40 = v0;
  return result;
}

void sub_22327F888()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v19 = [objc_allocWithZone(MEMORY[0x277D59580]) init];
  if (v19)
  {
    [v19 setExists_];
  }

  v18 = [objc_allocWithZone(MEMORY[0x277D59578]) init];
  [v18 setEnded_];
  v6 = *(v0 + 24);
  v7 = sub_2232AA9B4();
  if (v7)
  {
    v8 = v7;
    [v7 setAsrBridgeContext_];
    [*(v1 + 16) emitMessage_];
    v9 = sub_2232AA994();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 captureSnapshot];

      if (v11)
      {
        v12 = [objc_opt_self() context];
        if (v12)
        {
          v13 = v12;
          sub_2232A94B4();
          v14 = sub_2232A9504();
          v15 = *(v14 - 8);
          v16 = 0;
          if ((*(v15 + 48))(v5, 1, v14) != 1)
          {
            v16 = sub_2232A94D4();
            (*(v15 + 8))(v5, v14);
          }

          [v11 logWithEventContext:v13 requestIdentifier:v16];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v17 = v19;
  }

  else
  {

    v17 = v18;
  }
}

void sub_22327FB30(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v21 = [objc_allocWithZone(MEMORY[0x277D59588]) init];
  [v21 setError_];
  v20 = [objc_allocWithZone(MEMORY[0x277D59578]) init];
  [v20 setFailed_];
  v8 = *(v2 + 24);
  v9 = sub_2232AA9B4();
  if (v9)
  {
    v10 = v9;
    [v9 setAsrBridgeContext_];
    [*(v2 + 16) emitMessage_];
    v11 = sub_2232AA994();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 captureSnapshot];

      if (v13)
      {
        v14 = [objc_opt_self() context];
        if (v14)
        {
          v15 = v14;
          sub_2232A94B4();
          v16 = sub_2232A9504();
          v17 = *(v16 - 8);
          v18 = 0;
          if ((*(v17 + 48))(v7, 1, v16) != 1)
          {
            v18 = sub_2232A94D4();
            (*(v17 + 8))(v7, v16);
          }

          [v13 logWithEventContext:v15 requestIdentifier:v18];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v19 = v21;
  }

  else
  {

    v19 = v20;
  }
}

void sub_22327FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, uint64_t a6, SEL *a7)
{
  v9 = v7;
  v14 = [objc_allocWithZone(*a5) init];
  if (v14)
  {
    [v14 setExists_];
  }

  v10 = *(v7 + 24);
  v11 = sub_2232AA9B4();
  if (v11)
  {
    v12 = v11;
    [v11 *a7];
    [*(v9 + 16) emitMessage_];

    v13 = v12;
  }

  else
  {
    v13 = v14;
  }
}

void sub_22327FF24()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = sub_2232AA9A4();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D59860]) init];
    v8 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = sub_2232AA9C4();
      [v6 setTrpId_];

      v5 = v8;
    }

    [v4 setTrpCandidateReceived_];
    [*(v1 + 16) emitMessage_];
  }
}

uint64_t sub_22328002C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_223280090()
{
  result = [objc_opt_self() sharedMonitor];
  qword_27D081AC0 = result;
  return result;
}

double sub_2232800CC()
{
  result = 0.0;
  xmmword_28131DCB0 = 0u;
  unk_28131DCC0 = 0u;
  return result;
}

id sub_2232800E0()
{
  result = [objc_opt_self() isSCDAFrameworkEnabled];
  byte_28131DCA8 = result;
  return result;
}

uint64_t sub_223280114(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_22328019C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_28131D698 != -1)
  {
    swift_once();
  }

  if (byte_28131DCA8 == 1)
  {
    v7 = [objc_opt_self() sharedMonitor];
    if (a2)
    {
      a2 = sub_2232AABF4();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v18 = sub_22328058C;
    v19 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_223280114;
    v17 = &block_descriptor_9;
    v9 = _Block_copy(&aBlock);

    [v7 waitForMyriadDecisionForReason:a2 withCompletion:v9];
    _Block_release(v9);

    if (qword_28131D6A0 != -1)
    {
      swift_once();
    }

    v17 = sub_2232804C8();
    aBlock = v7;
    swift_beginAccess();
    v10 = v7;
    sub_223280514(&aBlock, &xmmword_28131DCB0);
    swift_endAccess();
  }

  else
  {
    if (qword_27D080F98 != -1)
    {
      swift_once();
    }

    v11 = qword_27D081AC0;
    if (a2)
    {
      a2 = sub_2232AABF4();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v18 = sub_2232804A0;
    v19 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_223280114;
    v17 = &block_descriptor_0;
    v13 = _Block_copy(&aBlock);

    [v11 waitForMyriadDecisionForReason:a2 withCompletion:v13];
    _Block_release(v13);
  }
}

uint64_t sub_2232804A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2232804C8()
{
  result = qword_28131D1E8;
  if (!qword_28131D1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1E8);
  }

  return result;
}

uint64_t sub_223280514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081820, &qword_2232ACC70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223280590()
{
  result = AFIsHorseman();
  byte_28131D5D8 = result;
  return result;
}

id sub_2232805B0()
{
  result = [objc_opt_self() sharedPreferences];
  qword_28131DCA0 = result;
  return result;
}

uint64_t sub_2232805EC()
{
  v0 = sub_2232AAAF4();
  __swift_allocate_value_buffer(v0, qword_28131DC88);
  *__swift_project_value_buffer(v0, qword_28131DC88) = 50;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_22328067C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_2232822C0();
    v2 = sub_2232AAD04();
  }

  v4(v2);
}

uint64_t sub_2232806F4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  result = sub_2232AAFE4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223DD8300](0, a1);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = [v11 serializedContextByKey];

  if (v13)
  {
    v14 = sub_2232AAB94();

    v15 = *MEMORY[0x277CEEFD0];
    v16 = sub_2232AAC04();
    if (*(v14 + 16))
    {
      v18 = sub_2232A2C98(v16, v17);
      v20 = v19;

      if (v20)
      {
        sub_2232606EC(*(v14 + 56) + 32 * v18, v30);

        v21 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
        __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        v22 = [v21 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        if ([v22 callState])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v30);

          v13 = 1;
        }

        else
        {
          v23 = [v22 callState];

          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          v13 = (v23 >> 1) & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

LABEL_15:
  sub_2232AAE24();
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v24 = qword_28131DD38;
  sub_2232AAA84();

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v25 = sub_2232AAAD4();
  __swift_project_value_buffer(v25, qword_28131DB88);

  v26 = sub_2232AAAC4();
  v27 = sub_2232AAD84();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v28 = 67109378;
    *(v28 + 4) = v13;
    *(v28 + 8) = 2080;
    *(v28 + 10) = sub_2232603D0(a3, a4, v30);
    _os_log_impl(&dword_22325E000, v26, v27, "Retrieved isUserOnPhoneCall status: %{BOOL}d for requestId: %s", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x223DD8AC0](v29, -1, -1);
    MEMORY[0x223DD8AC0](v28, -1, -1);
  }

  return a5(v13);
}

uint64_t sub_223280AB0()
{
  v1 = *v0;
  sub_2232AB0F4();
  MEMORY[0x223DD8490](v1);
  return sub_2232AB114();
}

uint64_t sub_223280B24()
{
  v1 = *v0;
  sub_2232AB0F4();
  MEMORY[0x223DD8490](v1);
  return sub_2232AB114();
}

unint64_t sub_223280B68()
{
  if (*v0)
  {
    result = 0x4879616C70736964;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_223280BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002232AD9E0 == a2 || (sub_2232AB094() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4879616C70736964 && a2 == 0xEC00000073746E69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2232AB094();

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

uint64_t sub_223280CB4(uint64_t a1)
{
  v2 = sub_223280F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223280CF0(uint64_t a1)
{
  v2 = sub_223280F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JitGrammarInput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C0, &qword_2232AC5C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223280F60();

  sub_2232AB134();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081870, &qword_2232AC5C8);
  sub_223281240(&qword_28131D218, &qword_28131DAD8);
  sub_2232AB044();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
    sub_22328130C(&unk_28131D200);
    sub_2232AB054();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_223280F60()
{
  result = qword_28131D958;
  if (!qword_28131D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D958);
  }

  return result;
}

uint64_t JitGrammarInput.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813D0, &qword_2232AC5D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223280F60();
  sub_2232AB124();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081870, &qword_2232AC5C8);
  v15 = 0;
  sub_223281240(&qword_27D0813D8, &qword_27D0813E0);
  sub_2232AB024();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
  v15 = 1;
  sub_22328130C(&qword_27D0813E8);
  sub_2232AB034();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_223281240(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D081870, &qword_2232AC5C8);
    sub_2232812C8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2232812C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2232A9664();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22328130C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0813C8, &qword_2232AC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2232813B0()
{
  sub_2232AB0F4();
  MEMORY[0x223DD8490](0);
  return sub_2232AB114();
}

uint64_t sub_22328141C()
{
  sub_2232AB0F4();
  MEMORY[0x223DD8490](0);
  return sub_2232AB114();
}

uint64_t sub_223281478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6D61724774696ALL && a2 == 0xEA00000000007261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2232AB094();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_223281514(uint64_t a1)
{
  v2 = sub_223281724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223281550(uint64_t a1)
{
  v2 = sub_223281724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JitGrammarOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813F0, &qword_2232AC5E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223281724();

  sub_2232AB134();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
  sub_22328130C(&unk_28131D200);
  sub_2232AB054();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_223281724()
{
  result = qword_28131D928;
  if (!qword_28131D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D928);
  }

  return result;
}

uint64_t JitGrammarOutput.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813F8, &qword_2232AC5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223281724();
  sub_2232AB124();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0813C8, &qword_2232AC5D0);
    sub_22328130C(&qword_27D0813E8);
    sub_2232AB034();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_22328194C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_223281994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2232819EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_223281A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JitGrammarOutput.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JitGrammarOutput.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for JitGrammarInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JitGrammarInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223281CE4()
{
  result = qword_27D081400;
  if (!qword_27D081400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D081400);
  }

  return result;
}

unint64_t sub_223281D3C()
{
  result = qword_27D081408;
  if (!qword_27D081408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D081408);
  }

  return result;
}

unint64_t sub_223281D94()
{
  result = qword_28131D918;
  if (!qword_28131D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D918);
  }

  return result;
}

unint64_t sub_223281DEC()
{
  result = qword_28131D920;
  if (!qword_28131D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D920);
  }

  return result;
}

unint64_t sub_223281E44()
{
  result = qword_28131D948;
  if (!qword_28131D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D948);
  }

  return result;
}

unint64_t sub_223281E9C()
{
  result = qword_28131D950;
  if (!qword_28131D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131D950);
  }

  return result;
}

void *sub_223281EF0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081420, &qword_2232AC948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081428, &qword_2232AC950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223282038(void *a1, uint64_t a2)
{
  v4 = AFIsATV();
  if (![a1 secureOfflineOnly])
  {
    if (AFIsATV())
    {
      v5 = 6;
      goto LABEL_17;
    }

LABEL_15:
    v5 = 3;
    goto LABEL_17;
  }

  if (v4)
  {
    v5 = 10;
LABEL_17:
    [a1 taskHint];
    return v5;
  }

  if (([a1 forceOfflineRecognition] & 1) == 0)
  {
    v5 = 4;
    goto LABEL_17;
  }

  if (![a1 forceOfflineRecognition] || !objc_msgSend(a1, sel_secureOfflineOnly) || !AFIsSearchDictationRequest())
  {
    goto LABEL_15;
  }

  v6 = *MEMORY[0x277CEF050];
  v7 = sub_2232AAC04();
  if (!*(a2 + 16))
  {

    return 3;
  }

  v9 = sub_2232A2C98(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 3;
  }

  if (*(*(a2 + 56) + v9))
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_22328215C(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  return sub_2232AAE64();
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

uint64_t sub_223282210(unint64_t a1)
{
  v3 = *(sub_2232AAAB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return sub_2232806F4(a1, v1 + v4, v8, v9, v10);
}

unint64_t sub_2232822C0()
{
  result = qword_28131D198;
  if (!qword_28131D198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D198);
  }

  return result;
}

void *sub_22328230C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2232AAEF4();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_22328329C(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

void sub_22328237C(NSObject *a1)
{
  v2 = v1;
  if (sub_2232AA5D4() == v1[7] && v4 == v1[8])
  {
  }

  else
  {
    v6 = sub_2232AB094();

    if ((v6 & 1) == 0)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v7 = sub_2232AAAD4();
      __swift_project_value_buffer(v7, qword_28131DB88);
      a1 = sub_2232AAAC4();
      v8 = sub_2232AAD94();
      if (!os_log_type_enabled(a1, v8))
      {
        goto LABEL_51;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22325E000, a1, v8, "ResultCandidateMessage requestId does not match current requestId", v9, 2u);
      v10 = v9;
      goto LABEL_22;
    }
  }

  v11 = v1[9];
  if (v1[10] < v11)
  {
    v12 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    if (sub_2232AA624())
    {
      v13 = v1[10];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
        v1[10] = v15;
        return;
      }

      __break(1u);
    }

    else if (qword_28131D338 == -1)
    {
LABEL_20:
      v20 = sub_2232AAAD4();
      __swift_project_value_buffer(v20, qword_28131DB88);
      v21 = a1;
      a1 = sub_2232AAAC4();
      v22 = sub_2232AAD94();

      if (!os_log_type_enabled(a1, v22))
      {
LABEL_51:

        return;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v21;
      *v24 = v21;
      v25 = v21;
      _os_log_impl(&dword_22325E000, a1, v22, "Failed to post AsrResultCandidateMessage: %@", v23, 0xCu);
      sub_223283234(v24);
      MEMORY[0x223DD8AC0](v24, -1, -1);
      v10 = v23;
LABEL_22:
      MEMORY[0x223DD8AC0](v10, -1, -1);
      goto LABEL_51;
    }

    swift_once();
    goto LABEL_20;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v16 = sub_2232AAAD4();
  __swift_project_value_buffer(v16, qword_28131DB88);

  v17 = sub_2232AAAC4();
  v18 = sub_2232AAD94();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v11;

    _os_log_impl(&dword_22325E000, v17, v18, "Number of RC's generated by ASR is greater than maximum number of RC's allowed for the request [%ld]. Caching this RC until it has been accepted", v19, 0xCu);
    MEMORY[0x223DD8AC0](v19, -1, -1);
  }

  else
  {
  }

  sub_2232A9F84();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = v2[12];
    if (v28)
    {
      v29 = v2[12];
      if (swift_dynamicCastClass())
      {
        v30 = a1;
        v31 = v28;
        v32 = sub_2232A9EF4();
        v33 = sub_22328230C(v32);

        if (v33)
        {
          v34 = [v33 recognition];

          if (!v34)
          {
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          [v34 processedAudioDuration];
          v36 = v35;
        }

        else
        {
          v36 = 0.0;
        }

        v51 = sub_2232A9EF4();
        v52 = sub_22328230C(v51);

        if (v52)
        {
          v53 = [v52 recognition];

          if (v53)
          {
LABEL_45:
            [v53 processedAudioDuration];
            v57 = v56;

            if (v57 >= v36)
            {
              goto LABEL_46;
            }

LABEL_49:
            v28 = v2[12];
            v2[12] = v27;
LABEL_50:
            v60 = a1;

            v58 = v2[12];
            if (!v58)
            {
              goto LABEL_51;
            }

            goto LABEL_47;
          }

          goto LABEL_55;
        }

LABEL_48:

        if (v36 <= 0.0)
        {
LABEL_46:
          v58 = v2[12];
          if (!v58)
          {
            goto LABEL_51;
          }

LABEL_47:
          v59 = v58;
          sub_2232A9FB4();

          return;
        }

        goto LABEL_49;
      }
    }

LABEL_36:
    v2[12] = v27;
    v44 = a1;
    goto LABEL_50;
  }

  sub_2232A98A4();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    v45 = sub_2232A9FB4();
    v47 = v46;
    swift_beginAccess();
    v48 = a1;
    v49 = v2[11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v2[11];
    v2[11] = 0x8000000000000000;
    sub_2232A44B8(v48, v45, v47, isUniquelyReferenced_nonNull_native);

    v2[11] = v61;
    swift_endAccess();
    sub_2232A9FB4();
    return;
  }

  v27 = v37;
  v28 = v2[12];
  if (!v28)
  {
    goto LABEL_36;
  }

  v38 = v2[12];
  if (!swift_dynamicCastClass())
  {
    goto LABEL_36;
  }

  v39 = a1;
  v31 = v28;
  v40 = sub_2232A9824();
  v41 = sub_22328230C(v40);

  if (v41)
  {
    v42 = [v41 recognition];

    if (!v42)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    [v42 processedAudioDuration];
    v36 = v43;
  }

  else
  {
    v36 = 0.0;
  }

  v54 = sub_2232A9EF4();
  v55 = sub_22328230C(v54);

  if (!v55)
  {
    goto LABEL_48;
  }

  v53 = [v55 recognition];

  if (v53)
  {
    goto LABEL_45;
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_2232829E0()
{
  v1 = v0[12];
  if (!v1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v6 = sub_2232AAAD4();
    __swift_project_value_buffer(v6, qword_28131DB88);
    v4 = sub_2232AAAC4();
    v7 = sub_2232AAD94();
    if (os_log_type_enabled(v4, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22325E000, v4, v7, "Buffered MUX RC message does not exist", v8, 2u);
      MEMORY[0x223DD8AC0](v8, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = v1;
  if ((sub_2232AA624() & 1) == 0)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v9 = sub_2232AAAD4();
    __swift_project_value_buffer(v9, qword_28131DB88);
    v10 = v3;
    v4 = sub_2232AAAC4();
    v11 = sub_2232AAD94();

    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v1;
      v10 = v10;
      _os_log_impl(&dword_22325E000, v4, v11, "Failed to post muxRcMsgBuffered: %@", v12, 0xCu);
      sub_223283234(v13);
      MEMORY[0x223DD8AC0](v13, -1, -1);
      MEMORY[0x223DD8AC0](v12, -1, -1);
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v4 = v0[12];
  v0[12] = 0;
  v5 = 1;
LABEL_14:

  return v5;
}

void sub_223282C18(void *a1)
{
  v2 = v1;
  if (sub_2232AA5D4() == v1[7] && v4 == v1[8])
  {
  }

  else
  {
    v6 = sub_2232AB094();

    if ((v6 & 1) == 0)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v7 = sub_2232AAAD4();
      __swift_project_value_buffer(v7, qword_28131DB88);
      oslog = sub_2232AAAC4();
      v8 = sub_2232AAD94();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22325E000, oslog, v8, "ResultSelectedMessage requestId does not match current requestId", v9, 2u);
        MEMORY[0x223DD8AC0](v9, -1, -1);
      }

      return;
    }
  }

  v10 = sub_2232A9FB4();
  v12 = v11;
  swift_beginAccess();
  v13 = v1[11];
  if (*(v13 + 16))
  {
    v14 = v2[11];

    v15 = sub_2232A2C98(v10, v12);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(v13 + 56) + 8 * v15);

      v19 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      sub_2232AA624();
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v20 = sub_2232AAAD4();
      __swift_project_value_buffer(v20, qword_28131DB88);
      v21 = v18;
      v22 = sub_2232AAAC4();
      v23 = sub_2232AAD84();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v53 = v25;
        *v24 = 136315138;
        v26 = sub_2232A9FB4();
        v28 = sub_2232603D0(v26, v27, &v53);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_22325E000, v22, v23, "Posted buffered RC with id:%s to message bus before posting ResultSelectedMessage", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x223DD8AC0](v25, -1, -1);
        MEMORY[0x223DD8AC0](v24, -1, -1);
      }

      v29 = v2[12];
      if (!v29)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }
  }

  v29 = v2[12];
  if (v29)
  {
LABEL_23:
    v30 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v31 = v29;
    sub_2232AA624();
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v32 = sub_2232AAAD4();
    __swift_project_value_buffer(v32, qword_28131DB88);
    v33 = v31;
    v34 = sub_2232AAAC4();
    v35 = sub_2232AAD84();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v36 = 136315138;
      v38 = sub_2232A9FB4();
      v40 = sub_2232603D0(v38, v39, &v53);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_22325E000, v34, v35, "Posted buffered RC with id:%s to message bus before posting ResultSelectedMessage", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x223DD8AC0](v37, -1, -1);
      MEMORY[0x223DD8AC0](v36, -1, -1);
    }
  }

LABEL_28:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v41 = sub_2232AAAD4();
  __swift_project_value_buffer(v41, qword_28131DB88);
  v42 = a1;
  v43 = sub_2232AAAC4();
  v44 = sub_2232AAD84();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v45 = 136315138;
    v47 = sub_2232A9FB4();
    v49 = sub_2232603D0(v47, v48, &v53);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_22325E000, v43, v44, "Posting ResultSelectedMessage for rcId: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x223DD8AC0](v46, -1, -1);
    MEMORY[0x223DD8AC0](v45, -1, -1);
  }

  v50 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_2232AA624();
  v51 = v2[11];
  v2[11] = MEMORY[0x277D84F98];
}

uint64_t sub_2232831E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_223283234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0812D0, &qword_2232AC4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22328329C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_2232832EC(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v144 = a3;
  v149 = a2;
  v150 = a1;
  v4 = sub_2232AA6B4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v143 = v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v137 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v137 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v137 - v15;
  v17 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestType;
  v18 = *MEMORY[0x277D5CF40];
  v146 = v5[13];
  v147 = v5 + 13;
  v146(v137 - v15, v18, v4);
  sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58]);
  v19 = v3;
  v148 = v17;
  sub_2232AACD4();
  sub_2232AACD4();
  if (aBlock == v157 && v152 == v158)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_2232AB094();
  }

  v145 = v5[1];
  v145(v16, v4);

  if ((v20 & 1) == 0)
  {
    v146(v14, *MEMORY[0x277D5CF20], v4);
    sub_2232AACD4();
    sub_2232AACD4();
    if (aBlock == v157 && v152 == v158)
    {
      v145(v14, v4);
    }

    else
    {
      v21 = sub_2232AB094();
      v145(v14, v4);

      if ((v21 & 1) == 0)
      {
        v50 = v149;
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v66 = sub_2232AAAD4();
        __swift_project_value_buffer(v66, qword_28131DB88);

        v67 = sub_2232AAAC4();
        v68 = sub_2232AAD94();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock = v70;
          *v69 = 136315138;
          *(v69 + 4) = sub_2232603D0(*(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId), *(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8), &aBlock);
          _os_log_impl(&dword_22325E000, v67, v68, "#AsrOnServer Exiting as the requestType is unsupported. Request: %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x223DD8AC0](v70, -1, -1);
          MEMORY[0x223DD8AC0](v69, -1, -1);
        }

        if (!v50)
        {
          return;
        }

LABEL_48:
        v50(0, 0);
        return;
      }
    }
  }

  v22 = [v150 refId];
  if (!v22)
  {
LABEL_27:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v46 = sub_2232AAAD4();
    __swift_project_value_buffer(v46, qword_28131DB88);
    v47 = sub_2232AAAC4();
    v48 = sub_2232AAD94();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v149;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22325E000, v47, v48, "#AsrOnServer Response requestId does not match current requestId", v51, 2u);
      MEMORY[0x223DD8AC0](v51, -1, -1);
    }

    if (!v50)
    {
      return;
    }

    goto LABEL_48;
  }

  v23 = v3;
  v24 = v22;
  v25 = sub_2232AAC04();
  v27 = v26;

  v28 = v25;
  v30 = *(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v29 = *(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);
  if (v28 != v30 || v27 != v29)
  {
    v31 = *(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
    v32 = *(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);
    v33 = sub_2232AB094();

    if (v33)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_15:
  v34 = [v150 processedAudioDuration];
  if (v34)
  {
    v35 = v34;
    [v34 doubleValue];

    if (*(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isMedocEnabled) == 1)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v36 = sub_2232AAAD4();
      v37 = __swift_project_value_buffer(v36, qword_28131DB88);

      v143 = v37;
      v38 = sub_2232AAAC4();
      v39 = sub_2232AAD84();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v140 = v29;
        v41 = v40;
        v42 = swift_slowAlloc();
        aBlock = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_2232603D0(v30, v140, &aBlock);
        _os_log_impl(&dword_22325E000, v38, v39, "#AsrOnServer Medoc enabled. Not posting AsrResultCandidateMessage for request: %s.", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x223DD8AC0](v42, -1, -1);
        MEMORY[0x223DD8AC0](v41, -1, -1);
      }

      v43 = [v150 recognition];
      v44 = v43;
      if (v43)
      {
      }

      v146(v11, *MEMORY[0x277D5CF20], v4);
      sub_2232AACD4();
      sub_2232AACD4();
      if (aBlock == v157 && v152 == v158)
      {
        v145(v11, v4);

        v45 = v149;
        if (!v44)
        {
LABEL_52:
          v72 = sub_2232AAAC4();
          v73 = sub_2232AAD94();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_22325E000, v72, v73, "#AsrOnServer we are in StartUnderstandingOnServer path and received empty recognition, which shouldn't happen. Not posting ResultSelectedMessage.", v74, 2u);
            MEMORY[0x223DD8AC0](v74, -1, -1);
          }

          if (v45)
          {
            v45(0, 0);
          }

          return;
        }
      }

      else
      {
        v71 = sub_2232AB094();
        v145(v11, v4);

        v45 = v149;
        if (!v44 && (v71 & 1) != 0)
        {
          goto LABEL_52;
        }
      }

      v75 = *(v19 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
      if (([v75 respondsToSelector_] & 1) == 0)
      {
        return;
      }

      v76 = swift_allocObject();
      swift_weakInit();
      v77 = swift_allocObject();
      v77[2] = v76;
      v77[3] = v45;
      v77[4] = v144;
      v155 = sub_22328A434;
      v156 = v77;
      aBlock = MEMORY[0x277D85DD0];
      v152 = 1107296256;
      v153 = sub_22328BC90;
      v154 = &block_descriptor_66;
      v78 = _Block_copy(&aBlock);

      sub_22328A370(v45);

      [v75 selectResultWithResultCandidate:v150 completion:v78];
      _Block_release(v78);

LABEL_91:

      return;
    }

    v59 = [v150 recognition];
    v60 = v59;
    if (v59)
    {
    }

    v61 = v150;
    v142 = sub_2232AAE14();
    v62 = [v61 resultId];
    if (v62)
    {
      v63 = v62;
      v141 = sub_2232AAC04();
      v65 = v64;
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v79 = sub_2232AAAD4();
      __swift_project_value_buffer(v79, qword_28131DB88);
      v80 = sub_2232AAAC4();
      v81 = sub_2232AAD94();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_22325E000, v80, v81, "#AsrOnServer resultCandidate does not contain resultId: using the default 0", v82, 2u);
        MEMORY[0x223DD8AC0](v82, -1, -1);
      }

      v65 = 0xE100000000000000;
      v141 = 48;
    }

    v83 = v143;
    v138 = *MEMORY[0x277D5CF20];
    (v146)(v143);
    v137[1] = sub_22328A3C0(&qword_28131DAC8, MEMORY[0x277D5CF58]);
    v84 = sub_2232AABE4();
    v85 = (v145)(v83, v4);
    if (v84)
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v86 = sub_2232AAAD4();
      __swift_project_value_buffer(v86, qword_28131DB88);

      v87 = sub_2232AAAC4();
      v88 = sub_2232AAD84();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v139 = v60;
        v90 = v89;
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v90 = 136315394;
        *(v90 + 4) = sub_2232603D0(v30, v29, &aBlock);
        *(v90 + 12) = 2080;
        v92 = v141;
        *(v90 + 14) = sub_2232603D0(v141, v65, &aBlock);
        _os_log_impl(&dword_22325E000, v87, v88, "#AsrOnServer Not posting AsrResultCandidateMessage as the requestType is uos. request: %s rcId: %s", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v91, -1, -1);
        v93 = v90;
        v94 = v139;
        MEMORY[0x223DD8AC0](v93, -1, -1);

        v95 = v65;
        if (!v94)
        {
LABEL_68:
          v96 = v143;
          v146(v143, v138, v4);
          v97 = sub_2232AABE4();
          v145(v96, v4);
          if (v97)
          {

            if (qword_28131D338 != -1)
            {
              swift_once();
            }

            v98 = sub_2232AAAD4();
            __swift_project_value_buffer(v98, qword_28131DB88);
            v99 = sub_2232AAAC4();
            v100 = sub_2232AAD94();
            v101 = os_log_type_enabled(v99, v100);
            v102 = v149;
            if (v101)
            {
              v103 = swift_slowAlloc();
              *v103 = 0;
              _os_log_impl(&dword_22325E000, v99, v100, "#AsrOnServer we are in StartUnderstandingOnServer path. Not posting ResultSelectedMessage. We shouldn't receive empty recognition for StartUnderstaingOnServer.", v103, 2u);
              MEMORY[0x223DD8AC0](v103, -1, -1);
            }
          }

          else
          {
            v135 = swift_allocObject();
            swift_weakInit();
            v136 = swift_allocObject();
            *(v136 + 16) = v135;
            *(v136 + 24) = v92;
            *(v136 + 32) = v95;
            *(v136 + 40) = 0;

            sub_22328019C(0x7065636361204352, 0xED000065636E6174, sub_22328A424, v136);

            v102 = v149;
          }

          if (v102)
          {
            v102(0, 0);
          }

LABEL_96:

          return;
        }

LABEL_89:
        v130 = *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
        if (([v130 respondsToSelector_] & 1) == 0)
        {

          return;
        }

        v131 = swift_allocObject();
        swift_weakInit();
        v132 = swift_allocObject();
        v133 = v149;
        v132[2] = v131;
        v132[3] = v133;
        v132[4] = v144;
        v132[5] = v92;
        v132[6] = v95;
        v155 = sub_22328A414;
        v156 = v132;
        aBlock = MEMORY[0x277D85DD0];
        v152 = 1107296256;
        v153 = sub_22328BC90;
        v154 = &block_descriptor_55;
        v134 = _Block_copy(&aBlock);
        sub_22328A370(v133);

        [v130 selectResultWithResultCandidate:v150 completion:v134];
        _Block_release(v134);

        goto LABEL_91;
      }

      v95 = v65;
    }

    else
    {
      v139 = v60;
      v140 = v29;
      MEMORY[0x28223BE20](v85);
      v105 = v141;
      v104 = v142;
      v137[-4] = v23;
      v137[-3] = v105;
      v137[-2] = v65;
      v137[-1] = v104;
      v106 = objc_allocWithZone(sub_2232A9B44());
      v107 = sub_2232A9AC4();
      if (!v107)
      {

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v123 = sub_2232AAAD4();
        __swift_project_value_buffer(v123, qword_28131DB88);

        v124 = sub_2232AAAC4();
        v125 = sub_2232AAD94();

        v126 = os_log_type_enabled(v124, v125);
        v127 = v149;
        if (v126)
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          aBlock = v129;
          *v128 = 136315138;
          *(v128 + 4) = sub_2232603D0(v30, v140, &aBlock);
          _os_log_impl(&dword_22325E000, v124, v125, "#AsrOnServer Failed to create AsrResultCandidateMessage for request: %s", v128, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v129);
          MEMORY[0x223DD8AC0](v129, -1, -1);
          MEMORY[0x223DD8AC0](v128, -1, -1);
        }

        if (v127)
        {
          v127(0, 0);
        }

        goto LABEL_96;
      }

      v108 = v107;
      v109 = *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_bufferedResultCandidateHandler);
      sub_22328237C(v107);

      v110 = *(v23 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_instrumentationUtil);
      v111 = v140;
      sub_22327FDD4(v30, v140, v105, v65);
      v95 = v65;
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v112 = sub_2232AAAD4();
      __swift_project_value_buffer(v112, qword_28131DB88);

      v113 = v108;
      v114 = sub_2232AAAC4();
      v115 = sub_2232AAD84();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = v113;
        v117 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        v137[0] = v95;
        v118 = aBlock;
        *v117 = 136315394;
        *(v117 + 4) = sub_2232603D0(v30, v111, &aBlock);
        *(v117 + 12) = 2080;
        v119 = sub_2232A9FB4();
        v121 = sub_2232603D0(v119, v120, &aBlock);

        *(v117 + 14) = v121;
        _os_log_impl(&dword_22325E000, v114, v115, "#AsrOnServer Invoked posting of AsrResultCandidateMessage for request: %s rcId: %s", v117, 0x16u);
        swift_arrayDestroy();
        v122 = v118;
        v95 = v137[0];
        MEMORY[0x223DD8AC0](v122, -1, -1);
        MEMORY[0x223DD8AC0](v117, -1, -1);
      }

      else
      {
      }

      v60 = v139;
    }

    v92 = v141;
    if (!v60)
    {
      goto LABEL_68;
    }

    goto LABEL_89;
  }

  v52 = v29;
  v53 = v149;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v54 = sub_2232AAAD4();
  __swift_project_value_buffer(v54, qword_28131DB88);

  v55 = sub_2232AAAC4();
  v56 = sub_2232AAD94();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_2232603D0(v30, v52, &aBlock);
    _os_log_impl(&dword_22325E000, v55, v56, "#AsrOnServer Failed to parse processedAudioDuration for request: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x223DD8AC0](v58, -1, -1);
    MEMORY[0x223DD8AC0](v57, -1, -1);
  }

  if (v53)
  {
    v53(0, 0);
  }
}

void sub_223284798(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  v6 = sub_2232AA6B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(v7 + 104))(v10, *MEMORY[0x277D5CF20], v6);
    sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58]);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v50[0] == v49[1] && v50[1] == v49[2])
    {
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v17 = sub_2232AB094();
      (*(v7 + 8))(v10, v6);

      if ((v17 & 1) == 0)
      {
        if (!a4)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    if (a1)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = a1;
        v21 = [v19 refId];
        if (v21)
        {
          v22 = v21;
          v23 = sub_2232AAC04();
          v25 = v24;

          if (v23 == *(v12 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId) && v25 == *(v12 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8))
          {

LABEL_28:
            if (a4)
            {
              v31 = v20;
              a4(v19, 0);
            }

            if (qword_28131D338 != -1)
            {
              swift_once();
            }

            v32 = sub_2232AAAD4();
            __swift_project_value_buffer(v32, qword_28131DB88);
            v33 = sub_2232AAAC4();
            v34 = sub_2232AAD84();
            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              *v35 = 0;
              _os_log_impl(&dword_22325E000, v33, v34, "#AsrOnServer we are in StartUnderstandingOnServer path. Sent ResultSelected to the server.", v35, 2u);
              MEMORY[0x223DD8AC0](v35, -1, -1);
            }

LABEL_44:
            return;
          }

          v30 = sub_2232AB094();

          if (v30)
          {
            goto LABEL_28;
          }
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v36 = sub_2232AAAD4();
        __swift_project_value_buffer(v36, qword_28131DB88);
        v20 = v20;

        v37 = sub_2232AAAC4();
        v38 = sub_2232AAD94();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v50[0] = v40;
          *v39 = 136315394;
          v41 = [v19 refId];
          v49[0] = v20;

          if (!v41)
          {
            __break(1u);
            return;
          }

          v42 = sub_2232AAC04();
          v44 = v43;

          v45 = sub_2232603D0(v42, v44, v50);

          *(v39 + 4) = v45;
          *(v39 + 12) = 2080;
          v46 = *(v12 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
          v47 = *(v12 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

          v48 = sub_2232603D0(v46, v47, v50);

          *(v39 + 14) = v48;
          _os_log_impl(&dword_22325E000, v37, v38, "#AsrOnServer The refId of ResultSelected %s doesn't match current requestId: %s. Ignoring RC acceptance result.", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v40, -1, -1);
          MEMORY[0x223DD8AC0](v39, -1, -1);

          v20 = v49[0];
        }

        else
        {
        }

        if (a4)
        {
          a4(0, 0);
        }

        goto LABEL_44;
      }
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v26 = sub_2232AAAD4();
    __swift_project_value_buffer(v26, qword_28131DB88);
    v27 = sub_2232AAAC4();
    v28 = sub_2232AADA4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22325E000, v27, v28, "#AsrOnServer Did not receive SAResultSelected for RC acceptance. RC not accepted.", v29, 2u);
      MEMORY[0x223DD8AC0](v29, -1, -1);
    }

    if (!a4)
    {
LABEL_24:

      return;
    }

LABEL_23:
    a4(0, 0);
    goto LABEL_24;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  __swift_project_value_buffer(v13, qword_28131DB88);
  v14 = sub_2232AAAC4();
  v15 = sub_2232AAD94();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22325E000, v14, v15, "#AsrOnServer self expired. Ignoring RC acceptance result.", v16, 2u);
    MEMORY[0x223DD8AC0](v16, -1, -1);
  }

  if (a4)
  {
    a4(0, 0);
  }
}

uint64_t sub_223284EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v34 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_2232AA644();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2232A9B04();
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId + 8);

  sub_2232A9AE4();
  v24 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v25 = sub_2232A9504();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, a2 + v24, v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  sub_2232A9B34();
  v27 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v28 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

  sub_2232A9B24();

  sub_2232A9AD4();
  v29 = a5;
  sub_2232A9AF4();
  v30 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_userId;
  v31 = sub_2232AA794();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v10, a2 + v30, v31);
  (*(v32 + 56))(v10, 0, 1, v31);
  return sub_2232A9B14();
}

void sub_2232851F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_2232AA6B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a1 && (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0))
    {
      v20 = v19;
      v64[0] = a7;
      v64[1] = a5;
      v65 = a1;
      v21 = [v20 refId];
      if (!v21)
      {
        goto LABEL_10;
      }

      v22 = v21;
      v23 = sub_2232AAC04();
      v25 = v24;

      if (v23 == *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId) && v25 == *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8))
      {
      }

      else
      {
        v27 = sub_2232AB094();

        if ((v27 & 1) == 0)
        {
LABEL_10:
          if (qword_28131D338 != -1)
          {
            swift_once();
          }

          v28 = sub_2232AAAD4();
          __swift_project_value_buffer(v28, qword_28131DB88);
          v29 = v65;

          v30 = sub_2232AAAC4();
          v31 = sub_2232AAD94();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v68[0] = v33;
            *v32 = 136315394;
            v34 = [v20 refId];

            if (!v34)
            {
              __break(1u);
              return;
            }

            v35 = sub_2232AAC04();
            v37 = v36;

            v38 = sub_2232603D0(v35, v37, v68);

            *(v32 + 4) = v38;
            *(v32 + 12) = 2080;
            v39 = *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
            v40 = *(v18 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

            v41 = sub_2232603D0(v39, v40, v68);

            *(v32 + 14) = v41;
            _os_log_impl(&dword_22325E000, v30, v31, "#AsrOnServer The refId of ResultSelected %s doesn't match the current requestId: %s. Ignoring RC acceptance result.", v32, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v33, -1, -1);
            MEMORY[0x223DD8AC0](v32, -1, -1);

            if (!a4)
            {
              goto LABEL_35;
            }
          }

          else
          {

            if (!a4)
            {
LABEL_35:

LABEL_44:

              return;
            }
          }

          a4(0, 0);
          goto LABEL_35;
        }
      }

      (*(v13 + 104))(v16, *MEMORY[0x277D5CF20], v12);
      sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58]);
      sub_2232AACD4();
      sub_2232AACD4();
      if (v68[0] == v66 && v68[1] == v67)
      {
        (*(v13 + 8))(v16, v12);

LABEL_37:
        v29 = v65;
        if (a4)
        {
          v51 = v65;
          a4(v20, 0);
        }

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v52 = sub_2232AAAD4();
        __swift_project_value_buffer(v52, qword_28131DB88);
        v53 = sub_2232AAAC4();
        v54 = sub_2232AAD84();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_22325E000, v53, v54, "#AsrOnServer we are in StartUnderstandingOnServer path. Sent ResultSelected to the server.", v55, 2u);
          MEMORY[0x223DD8AC0](v55, -1, -1);
        }

        goto LABEL_44;
      }

      v50 = sub_2232AB094();
      (*(v13 + 8))(v16, v12);

      if (v50)
      {
        goto LABEL_37;
      }

      v56 = [v20 isMitigated];
      sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
      v57 = sub_2232AAE74();
      v58 = v57;
      v59 = v65;
      if (v56)
      {
        v60 = sub_2232AAE84();

        v61 = v60 ^ 1;
      }

      else
      {

        v61 = 1;
      }

      v62 = swift_allocObject();
      swift_weakInit();
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = a6;
      *(v63 + 32) = v64[0];
      *(v63 + 40) = v61 & 1;

      sub_22328019C(0x7065636361204352, 0xED000065636E6174, sub_22328A49C, v63);

      if (a4)
      {
        a4(0, 0);
      }
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v42 = sub_2232AAAD4();
      __swift_project_value_buffer(v42, qword_28131DB88);
      v43 = sub_2232AAAC4();
      v44 = sub_2232AADA4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22325E000, v43, v44, "#AsrOnServer Did not receive SAResultSelected for RC acceptance. RC not accepted.", v45, 2u);
        MEMORY[0x223DD8AC0](v45, -1, -1);
      }

      if (a4)
      {
        a4(0, 0);
      }
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v46 = sub_2232AAAD4();
    __swift_project_value_buffer(v46, qword_28131DB88);
    v47 = sub_2232AAAC4();
    v48 = sub_2232AAD94();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22325E000, v47, v48, "#AsrOnServer self expired. Ignoring RC acceptance result.", v49, 2u);
      MEMORY[0x223DD8AC0](v49, -1, -1);
    }

    if (a4)
    {
      a4(0, 0);
    }
  }
}

void sub_223285A6C(void *a1, unint64_t a2, void (*a3)(void, void), uint64_t *a4)
{
  v5 = v4;
  v208 = sub_2232AA794();
  v10 = *(v208 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v208);
  v204 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v206 = &v181 - v14;
  if (qword_28131D338 != -1)
  {
LABEL_81:
    swift_once();
  }

  v15 = sub_2232AAAD4();
  v16 = __swift_project_value_buffer(v15, qword_28131DB88);
  v17 = a1;
  v18 = sub_2232AAAC4();
  v19 = sub_2232AAD84();

  v20 = os_log_type_enabled(v18, v19);
  v210 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v210;
    *v22 = v210;
    v23 = v210;
    _os_log_impl(&dword_22325E000, v18, v19, "#AsrOnServer Received %@", v21, 0xCu);
    sub_223283234(v22);
    MEMORY[0x223DD8AC0](v22, -1, -1);
    v24 = v21;
    v17 = v210;
    MEMORY[0x223DD8AC0](v24, -1, -1);
  }

  v25 = [v17 refId];
  if (!v25)
  {
    goto LABEL_37;
  }

  v26 = v25;
  v27 = sub_2232AAC04();
  v29 = v28;

  v31 = *(v5 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v30 = *(v5 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);
  if (v27 == v31 && v29 == v30)
  {

    goto LABEL_9;
  }

  v32 = *(v5 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v33 = *(v5 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);
  v34 = sub_2232AB094();

  if ((v34 & 1) == 0)
  {
LABEL_37:
    v114 = sub_2232AAAC4();
    v115 = sub_2232AAD94();
    if (!os_log_type_enabled(v114, v115))
    {
      goto LABEL_43;
    }

    v116 = swift_slowAlloc();
    *v116 = 0;
    v117 = "#AsrOnServer Response refId does not match current requestId";
LABEL_39:
    _os_log_impl(&dword_22325E000, v114, v115, v117, v116, 2u);
    v118 = v116;
LABEL_42:
    MEMORY[0x223DD8AC0](v118, -1, -1);
    goto LABEL_43;
  }

LABEL_9:
  v35 = v210;
  v36 = [v210 rcID];
  if (!v36)
  {
    v119 = v35;
    v114 = sub_2232AAAC4();
    v120 = sub_2232AAD94();

    if (!os_log_type_enabled(v114, v120))
    {
      goto LABEL_43;
    }

    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v121 = 138412290;
    *(v121 + 4) = v119;
    *v122 = v119;
    v123 = v119;
    _os_log_impl(&dword_22325E000, v114, v120, "#AsrOnServer No rcId found in %@", v121, 0xCu);
    sub_223283234(v122);
    MEMORY[0x223DD8AC0](v122, -1, -1);
    v118 = v121;
    goto LABEL_42;
  }

  v185 = v30;
  v37 = v36;
  v198 = sub_2232AAC04();
  v39 = v38;

  v40 = [v35 resultCandidates];
  if (!v40)
  {

    v114 = sub_2232AAAC4();
    v115 = sub_2232AAD94();
    if (!os_log_type_enabled(v114, v115))
    {
LABEL_43:

      if (a3)
      {
        a3(0, 0);
      }

      return;
    }

    v116 = swift_slowAlloc();
    *v116 = 0;
    v117 = "#AsrOnServer No result candidates found";
    goto LABEL_39;
  }

  v41 = v40;
  v183 = v31;
  v196 = v5;
  sub_2232606A4(0, &unk_27D0814B0, 0x277D47730);
  v42 = sub_2232AAB94();

  v200 = v16;
  v43 = sub_2232AAAC4();
  v44 = sub_2232AAD84();

  v45 = os_log_type_enabled(v43, v44);
  v186 = a3;
  v199 = v39;
  v184 = a4;
  v188 = a2;
  if (v45)
  {
    v46 = swift_slowAlloc();
    a3 = swift_slowAlloc();
    v214 = a3;
    *v46 = 136315138;

    v47 = sub_2232AABB4();
    v49 = v48;

    v50 = sub_2232603D0(v47, v49, &v214);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_22325E000, v43, v44, "#AsrOnServer muxResultCandidate received with recognitions for the following userIds: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    MEMORY[0x223DD8AC0](a3, -1, -1);
    MEMORY[0x223DD8AC0](v46, -1, -1);
  }

  v51 = v206;
  v5 = sub_22329DF40(MEMORY[0x277D84F90]);
  v215 = v5;
  v187 = sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v205 = sub_2232AAE74();
  a1 = (v42 + 64);
  v52 = 1 << *(v42 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  a2 = v53 & *(v42 + 64);
  v197 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext;
  v54 = (v52 + 63) >> 6;
  v194 = (v10 + 16);
  v193 = (v10 + 32);
  v190 = (v10 + 8);

  v55 = 0;
  *&v56 = 136315138;
  v189 = v56;
  a4 = v196;
  v192 = (v42 + 64);
  v191 = v54;
  v195 = v42;
  if (a2)
  {
    while (1)
    {
      v57 = v55;
LABEL_20:
      v58 = __clz(__rbit64(a2)) | (v57 << 6);
      v59 = (*(v42 + 48) + 16 * v58);
      v60 = *v59;
      v61 = v59[1];
      v62 = *(*(v42 + 56) + 8 * v58);

      v63 = v62;
      v64 = [v63 resultId];
      if (!v64)
      {
        break;
      }

      v65 = v64;
      v209 = sub_2232AAC04();
      v207 = v66;

      v67 = [v63 processedAudioDuration];
      if (!v67)
      {
        v67 = sub_2232AAE74();
      }

      v202 = v61;
      sub_2232AAC24();
      v68 = v67;
      sub_2232AA774();
      v69 = a4;
      v203 = *(a4 + v197);
      v70 = [v210 refId];
      if (!v70)
      {
        goto LABEL_83;
      }

      v71 = v70;
      v72 = [v68 unsignedIntValue];

      v73 = v204;
      v74 = v51;
      v75 = v208;
      (*v194)(v204, v74, v208);
      v76 = type metadata accessor for ASRMUXResultCandidateContext(0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      v79 = swift_allocObject();
      *&v79[OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_resultCandidate] = v63;
      v201 = v63;
      [v201 setRefId:v71];

      v80 = v207;
      *(v79 + 2) = v209;
      *(v79 + 3) = v80;
      v81 = v199;
      *(v79 + 4) = v198;
      *(v79 + 5) = v81;
      (*v193)(&v79[OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_userId], v73, v75);
      *&v79[OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_processedAudioDuration] = v72;

      v82 = sub_2232AAAC4();
      v83 = sub_2232AAD84();

      v84 = os_log_type_enabled(v82, v83);
      v205 = v68;
      if (v84)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v213 = v86;
        *v85 = v189;

        v87 = sub_223289FBC();
        v89 = v88;

        v90 = sub_2232603D0(v87, v89, &v213);

        *(v85 + 4) = v90;
        _os_log_impl(&dword_22325E000, v82, v83, "#AsrOnServer Caching ASRMUXResultCandidateContext: %s in the ASRBridge.", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        a4 = v196;
        MEMORY[0x223DD8AC0](v86, -1, -1);
        MEMORY[0x223DD8AC0](v85, -1, -1);
      }

      else
      {

        a4 = v69;
      }

      v10 = v202;
      v91 = v203;
      swift_beginAccess();
      v92 = *(v91 + 24);
      v51 = v206;
      v93 = v207;
      a3 = v201;
      if (*(v92 + 16))
      {
        v94 = *(v91 + 24);

        v95 = sub_2232A2C98(v209, v93);
        if (v96)
        {
          v97 = *(*(v92 + 56) + 8 * v95);
          swift_retain_n();

          v98 = sub_2232AAAC4();
          v99 = sub_2232AAD94();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v213 = v182;
            *v100 = v189;

            v101 = sub_223289FBC();
            v103 = v102;

            v104 = sub_2232603D0(v101, v103, &v213);
            v93 = v207;

            *(v100 + 4) = v104;
            _os_log_impl(&dword_22325E000, v98, v99, "#AsrOnServer ASRMUXRequestContext already contains a cache entry: %s. This will be overwritten and may lead to inconsistent results.", v100, 0xCu);
            v105 = v182;
            __swift_destroy_boxed_opaque_existential_1Tm(v182);
            MEMORY[0x223DD8AC0](v105, -1, -1);
            v106 = v100;
            v10 = v202;
            MEMORY[0x223DD8AC0](v106, -1, -1);
          }

          else
          {
          }

          a4 = v196;
          v51 = v206;
          v91 = v203;
        }

        else
        {
        }
      }

      swift_beginAccess();

      v107 = *(v91 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v211 = *(v91 + 24);
      *(v91 + 24) = 0x8000000000000000;
      sub_2232A4668(v79, v209, v93, isUniquelyReferenced_nonNull_native);

      *(v91 + 24) = v211;
      swift_endAccess();

      v109 = [a3 processedAudioDuration];
      if (!v109)
      {
        __break(1u);
LABEL_83:
        __break(1u);
        return;
      }

      v110 = v109;
      a2 &= a2 - 1;

      sub_2232AAD54();

      v111 = sub_2232AAE14();
      v112 = v215;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v213 = v112;
      sub_2232A4950(v111, v51, v113);

      v5 = v213;
      v215 = v213;
      (*v190)(v51, v208);
      v55 = v57;
      v42 = v195;
      a1 = v192;
      v54 = v191;
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    v169 = v210;
    v170 = sub_2232AAAC4();
    v171 = sub_2232AAD94();

    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *v172 = 138412290;
      *(v172 + 4) = v169;
      *v173 = v169;
      v174 = v169;
      _os_log_impl(&dword_22325E000, v170, v171, "#AsrOnServer Malformed or missing resultId in %@", v172, 0xCu);
      sub_223283234(v173);
      MEMORY[0x223DD8AC0](v173, -1, -1);
      MEMORY[0x223DD8AC0](v172, -1, -1);
    }

    if (v186)
    {
      v186(0, 0);
      v175 = v205;
    }

    else
    {
      v175 = v63;
      v63 = v205;
    }
  }

  else
  {
    while (1)
    {
LABEL_17:
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v57 >= v54)
      {
        break;
      }

      a2 = *(a1 + v57);
      ++v55;
      if (a2)
      {
        goto LABEL_20;
      }
    }

    if (v188)
    {
      v125 = 0xD000000000000017;
      v126 = v186;
      if (*(a4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isIdentityScoreConsumptionEnabled))
      {
        v127 = 0x80000002232ADE00;
        MEMORY[0x28223BE20](v124);
        *(&v181 - 4) = a4;
        v128 = a4;
        v129 = v198;
        v130 = v199;
        *(&v181 - 3) = v198;
        *(&v181 - 2) = v130;
        *(&v181 - 1) = &v215;
        objc_allocWithZone(sub_2232A98A4());
        v131 = v188;
        v132 = v188;
        v133 = sub_2232A9834();
        v134 = v130;
        if (!v133)
        {
LABEL_73:

          v176 = sub_2232AAAC4();
          v177 = sub_2232AAD94();

          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v213 = v179;
            *v178 = 136315394;
            v180 = sub_2232603D0(v125, v127, &v213);

            *(v178 + 4) = v180;
            *(v178 + 12) = 2080;
            *(v178 + 14) = sub_2232603D0(v183, v185, &v213);
            _os_log_impl(&dword_22325E000, v176, v177, "#AsrOnServer Failed to create %s for request: %s", v178, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v179, -1, -1);
            MEMORY[0x223DD8AC0](v178, -1, -1);
          }

          else
          {
          }

LABEL_77:

          return;
        }
      }

      else
      {
        v127 = 0x80000002232ADDE0;
        MEMORY[0x28223BE20](v124);
        v128 = a4;
        v140 = v198;
        *(&v181 - 6) = a4;
        *(&v181 - 5) = v140;
        *(&v181 - 4) = v199;
        *(&v181 - 3) = &v215;
        v131 = v188;
        *(&v181 - 2) = v188;
        objc_allocWithZone(sub_2232A9F84());
        v141 = v131;
        v133 = sub_2232A9F04();
        v125 = 0xD00000000000001CLL;
        if (!v133)
        {
          goto LABEL_73;
        }

        v134 = v199;
        v129 = v198;
      }

      v210 = v125;
      v142 = *(v128 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_instrumentationUtil);
      v143 = v133;
      v144 = v183;
      v145 = v185;
      sub_22327FE04(v183, v185, v129, v134);
      v146 = v143;

      v147 = sub_2232AAAC4();
      v148 = sub_2232AAD84();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v213 = v150;
        *v149 = 136315650;
        v151 = sub_2232603D0(v210, v127, &v213);

        *(v149 + 4) = v151;
        *(v149 + 12) = 2080;
        *(v149 + 14) = sub_2232603D0(v144, v145, &v213);
        *(v149 + 22) = 2080;
        v152 = sub_2232A9FB4();
        v154 = sub_2232603D0(v152, v153, &v213);

        *(v149 + 24) = v154;
        _os_log_impl(&dword_22325E000, v147, v148, "#AsrOnServer Posting result candidate event %s for request: %s rcId: %s", v149, 0x20u);
        swift_arrayDestroy();
        v155 = v150;
        v126 = v186;
        MEMORY[0x223DD8AC0](v155, -1, -1);
        MEMORY[0x223DD8AC0](v149, -1, -1);
      }

      else
      {
      }

      v156 = *(v128 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_bufferedResultCandidateHandler);
      sub_22328237C(v146);
      v159 = *(v128 + v197);
      v160 = v199;
      v161 = v188;
      if (v158)
      {
        v162 = v157;
        v163 = v158;

        *(v159 + 40) = 1;
        swift_beginAccess();
        v164 = *(v159 + 32);
        *(v159 + 32) = MEMORY[0x277D84F98];

        v160 = v163;
      }

      else
      {
        v162 = v198;
      }

      swift_beginAccess();
      v165 = *(v159 + 32);
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v212 = *(v159 + 32);
      *(v159 + 32) = 0x8000000000000000;
      sub_2232A47E4(0, v162, v160, v166);
      *(v159 + 32) = v212;
      swift_endAccess();

      if (v126)
      {
        v126(0, 0);
        v167 = v146;
        v168 = v205;
      }

      else
      {
        v167 = v205;
        v168 = v146;
      }

      goto LABEL_77;
    }

    v135 = sub_2232AAAC4();
    v136 = sub_2232AAD94();
    v137 = os_log_type_enabled(v135, v136);
    v138 = v186;
    if (v137)
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_22325E000, v135, v136, "#AsrOnServer no voiceIdScoreCard exists.  This would be caused by a missing or invalid HomeMemberInfo", v139, 2u);
      MEMORY[0x223DD8AC0](v139, -1, -1);
    }

    if (v138)
    {
      v138(0, 0);
    }
  }
}

uint64_t sub_223286EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = *MEMORY[0x277D5CDD8];
  v16 = sub_2232AA644();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2232A9874();
  v18 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v19 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId + 8);

  sub_2232A9854();
  v20 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v21 = sub_2232A9504();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v10, a2 + v20, v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  sub_2232A9894();
  v23 = a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId;
  v24 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v25 = *(v23 + 8);

  sub_2232A9884();

  sub_2232A9864();
  v26 = *a5;

  return sub_2232A9844();
}

uint64_t sub_223287144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = *MEMORY[0x277D5CDD8];
  v17 = sub_2232AA644();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_2232A9F54();
  v19 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v20 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId + 8);

  sub_2232A9F24();
  v21 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v22 = sub_2232A9504();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v11, a2 + v21, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  sub_2232A9F74();
  v24 = a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId;
  v25 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v26 = *(v24 + 8);

  sub_2232A9F64();

  sub_2232A9F14();
  v27 = *v31;

  sub_2232A9F44();
  v28 = a6;
  return sub_2232A9F34();
}

void sub_2232873BC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2232AA6B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v11 = sub_2232AAAD4();
  __swift_project_value_buffer(v11, qword_28131DB88);
  v12 = a1;
  v13 = sub_2232AAAC4();
  v14 = sub_2232AAD84();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v73 = v3;
    v17 = a2;
    v18 = v16;
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v19 = v12;
    _os_log_impl(&dword_22325E000, v13, v14, "#AsrOnServer Received %@", v15, 0xCu);
    sub_223283234(v18);
    v20 = v18;
    a2 = v17;
    v3 = v73;
    MEMORY[0x223DD8AC0](v20, -1, -1);
    MEMORY[0x223DD8AC0](v15, -1, -1);
  }

  (*(v7 + 104))(v10, *MEMORY[0x277D5CF40], v6);
  sub_22328A3C0(&qword_27D081498, MEMORY[0x277D5CF58]);
  sub_2232AACD4();
  sub_2232AACD4();
  if (aBlock == v80 && v75 == v81)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v21 = sub_2232AB094();
    (*(v7 + 8))(v10, v6);

    if ((v21 & 1) == 0)
    {

      v54 = sub_2232AAAC4();
      v55 = sub_2232AAD94();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_2232603D0(*&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId], *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8], &aBlock);
        _os_log_impl(&dword_22325E000, v54, v55, "#AsrOnServer Exiting as the requestType is unsupported. Request: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x223DD8AC0](v57, -1, -1);
        MEMORY[0x223DD8AC0](v56, -1, -1);
      }

      return;
    }
  }

  v22 = *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext];
  v23 = sub_2232A9FB4();
  v25 = v24;
  swift_beginAccess();
  v26 = *(v22 + 24);
  if (*(v26 + 16) && (v27 = *(v22 + 24), , v28 = sub_2232A2C98(v23, v25), v30 = v29, , (v30 & 1) != 0))
  {
    v31 = *(*(v26 + 56) + 8 * v28);

    if (a2)
    {
      v32 = v31[4];
      v33 = v31[5];
      v73 = a2;

      sub_223289CF8(v32, v33, 1, 0);

      v34 = sub_2232AAAC4();
      v35 = sub_2232AAD84();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock = v37;
        *v36 = 136315394;
        v39 = v31[2];
        v38 = v31[3];

        v40 = sub_2232603D0(v39, v38, &aBlock);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        v41 = v31[4];
        v42 = v31[5];

        v43 = sub_2232603D0(v41, v42, &aBlock);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_22325E000, v34, v35, "#AsrOnServer Invoking RC acceptance for rcID: %s and asrRCId: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v37, -1, -1);
        MEMORY[0x223DD8AC0](v36, -1, -1);
      }

      v44 = *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper];
      if ([v44 respondsToSelector_])
      {
        v72 = *(v31 + OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_resultCandidate);
        v45 = swift_allocObject();
        swift_weakInit();
        v46 = swift_allocObject();
        v46[2] = v45;
        v46[3] = v31;
        v47 = v73;
        v46[4] = v73;
        v46[5] = v12;
        v78 = sub_22328A380;
        v79 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v75 = 1107296256;
        v76 = sub_22328BC90;
        v77 = &block_descriptor_48;
        v48 = _Block_copy(&aBlock);
        v49 = v12;

        v50 = v47;
        v51 = v72;

        [v44 selectResultWithResultCandidate:v51 completion:v48];
        _Block_release(v48);
      }

      if (v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointReceived] == 1 && (v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech] & 1) == 0)
      {
        v52 = *&v3[OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage];
        if (!v52)
        {
          v68 = sub_2232AAAC4();
          v69 = sub_2232AAD94();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_22325E000, v68, v69, "Cannot find cached SASSpeechServerEndpointIdentified message. Request will fail.", v70, 2u);
            MEMORY[0x223DD8AC0](v70, -1, -1);
          }

          goto LABEL_21;
        }

        v53 = v52;
        sub_2232893DC(v53, 0, 0);
      }

LABEL_21:

      return;
    }

    v59 = sub_2232AAAC4();
    v66 = sub_2232AAD94();
    if (os_log_type_enabled(v59, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_22325E000, v59, v66, "#AsrOnServer no voiceIdScoreCard exists.  This could be caused by a missing or invalid HomeMemberInfo", v67, 2u);
      MEMORY[0x223DD8AC0](v67, -1, -1);
    }
  }

  else
  {

    v58 = v12;
    v59 = sub_2232AAAC4();
    v60 = sub_2232AAD94();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock = v62;
      *v61 = 136315138;
      v63 = sub_2232A9FB4();
      v65 = sub_2232603D0(v63, v64, &aBlock);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_22325E000, v59, v60, "#AsrOnServer ASRMUXResultCandidateContext not found for rcID=%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x223DD8AC0](v62, -1, -1);
      MEMORY[0x223DD8AC0](v61, -1, -1);
    }
  }
}

void sub_223287CE8(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 && (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
    {
      v5 = v4;
      v6 = a1;
      v7 = [v5 refId];
      if (!v7)
      {
LABEL_10:
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v15 = sub_2232AAAD4();
        __swift_project_value_buffer(v15, qword_28131DB88);
        v16 = v6;

        v17 = sub_2232AAAC4();
        v18 = sub_2232AAD94();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v73 = v20;
          *v19 = 136315394;
          v21 = [v5 refId];

          if (v21)
          {
            v22 = sub_2232AAC04();
            v24 = v23;

            v25 = sub_2232603D0(v22, v24, &v73);

            *(v19 + 4) = v25;
            *(v19 + 12) = 2080;
            v26 = *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
            v27 = *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

            v28 = sub_2232603D0(v26, v27, &v73);

            *(v19 + 14) = v28;
            _os_log_impl(&dword_22325E000, v17, v18, "#AsrOnServer The refId of ResultSelected %s doesn't match the current requestId: %s. Ignoring RC acceptance result.", v19, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DD8AC0](v20, -1, -1);
            MEMORY[0x223DD8AC0](v19, -1, -1);
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }

        return;
      }

      v8 = v7;
      v9 = sub_2232AAC04();
      v11 = v10;

      v72 = (v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
      if (v9 == *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId) && v11 == *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8))
      {
      }

      else
      {
        v13 = sub_2232AB094();

        if ((v13 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v71 = v6;
      v37 = 0xD000000000000018;
      if (*(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isIdentityScoreConsumptionEnabled) == 1)
      {
        v38 = 0x80000002232AD740;
        MEMORY[0x28223BE20](v14);
        v39 = objc_allocWithZone(sub_2232AA274());
        v40 = sub_2232A9754();
        v37 = 0xD000000000000023;
        if (v40)
        {
          v41 = v40;
LABEL_31:
          v43 = qword_28131D338;
          v44 = v41;
          if (v43 != -1)
          {
            swift_once();
          }

          v45 = sub_2232AAAD4();
          __swift_project_value_buffer(v45, qword_28131DB88);
          v46 = v44;

          v47 = sub_2232AAAC4();
          v48 = sub_2232AAD84();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v52 = v37;
            v53 = v51;
            v73 = v51;
            *v49 = 136315394;
            v54 = sub_2232603D0(v52, v38, &v73);

            *(v49 + 4) = v54;
            *(v49 + 12) = 2112;
            *(v49 + 14) = v46;
            *v50 = v41;
            v55 = v46;
            _os_log_impl(&dword_22325E000, v47, v48, "#AsrOnServer Posting result acceptance event %s %@.", v49, 0x16u);
            sub_223283234(v50);
            MEMORY[0x223DD8AC0](v50, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v53);
            MEMORY[0x223DD8AC0](v53, -1, -1);
            MEMORY[0x223DD8AC0](v49, -1, -1);
          }

          else
          {
          }

          v65 = *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_bufferedResultCandidateHandler);

          sub_223282C18(v46);

          v66 = *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_instrumentationUtil);
          v67 = *v72;
          v68 = v72[1];
          v69 = sub_2232A9FB4();
          sub_22327FE1C(v67, v68, v69, v70);

          return;
        }
      }

      else
      {
        v38 = 0x80000002232AD720;
        MEMORY[0x28223BE20](v14);
        v42 = objc_allocWithZone(sub_2232A9A34());
        v41 = sub_2232A99B4();
        if (v41)
        {
          goto LABEL_31;
        }
      }

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v56 = sub_2232AAAD4();
      __swift_project_value_buffer(v56, qword_28131DB88);

      v57 = sub_2232AAAC4();
      v58 = sub_2232AAD94();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v73 = v60;
        *v59 = 136315394;
        v61 = sub_2232603D0(v37, v38, &v73);

        *(v59 + 4) = v61;
        *(v59 + 12) = 2080;
        v62 = *v72;
        v63 = v72[1];

        v64 = sub_2232603D0(v62, v63, &v73);

        *(v59 + 14) = v64;
        _os_log_impl(&dword_22325E000, v57, v58, "Failed to create %s for request: %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD8AC0](v60, -1, -1);
        MEMORY[0x223DD8AC0](v59, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v29 = sub_2232AAAD4();
      __swift_project_value_buffer(v29, qword_28131DB88);
      v30 = sub_2232AAAC4();
      v31 = sub_2232AAD84();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22325E000, v30, v31, "#AsrOnServer Did not receive SAResultSelected for RC acceptance. RC not accepted.", v32, 2u);
        MEMORY[0x223DD8AC0](v32, -1, -1);
      }
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v33 = sub_2232AAAD4();
    __swift_project_value_buffer(v33, qword_28131DB88);
    v34 = sub_2232AAAC4();
    v35 = sub_2232AAD94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22325E000, v34, v35, "#AsrOnServer self expired. Ignoring RC acceptance result.", v36, 2u);
      MEMORY[0x223DD8AC0](v36, -1, -1);
    }
  }
}

uint64_t sub_2232885F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v15 = *MEMORY[0x277D5CDD8];
  v16 = sub_2232AA644();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2232A97A4();
  v18 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v19 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId + 8);

  sub_2232A9774();
  v20 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v21 = sub_2232A9504();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v10, a2 + v20, v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  sub_2232A97C4();
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v24 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

  sub_2232A97B4();
  v25 = *(a3 + 32);
  v26 = *(a3 + 40);

  sub_2232A9794();
  v27 = [a4 isMitigated];
  sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v28 = sub_2232AAE74();
  v29 = v28;
  if (v27)
  {
    sub_2232AAE84();
  }

  else
  {
  }

  return sub_2232A9784();
}

uint64_t sub_2232888D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - v15;
  v17 = *MEMORY[0x277D5CDD8];
  v18 = sub_2232AA644();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_2232A9A04();
  v20 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v21 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId + 8);

  sub_2232A99C4();
  v22 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v23 = sub_2232A9504();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v12, a2 + v22, v23);
  (*(v24 + 56))(v12, 0, 1, v23);
  sub_2232A9A24();
  v25 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v26 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

  sub_2232A9A14();
  v27 = *(a3 + 32);
  v28 = *(a3 + 40);

  sub_2232A99F4();
  v29 = [a4 isMitigated];
  sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v30 = sub_2232AAE74();
  v31 = v30;
  if (v29)
  {
    sub_2232AAE84();
  }

  else
  {
  }

  sub_2232A99D4();
  v32 = a5;
  return sub_2232A99E4();
}

void sub_223288BCC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      MEMORY[0x28223BE20](Strong);
      v8 = objc_allocWithZone(sub_2232A9764());
      v9 = sub_2232A9754();
      if (v9)
      {
        v10 = v9;
        v11 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_bufferedResultCandidateHandler);

        sub_223282C18(v10);

        v12 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_instrumentationUtil);
        v13 = (v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
        v14 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
        v15 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

        sub_22327FDEC(v14, v15, a3, a4);

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v16 = sub_2232AAAD4();
        __swift_project_value_buffer(v16, qword_28131DB88);

        v17 = v10;
        v18 = sub_2232AAAC4();
        v19 = sub_2232AAD84();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v42 = v22;
          *v20 = 136315394;
          v23 = *v13;
          v24 = v13[1];

          v25 = sub_2232603D0(v23, v24, &v42);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2112;
          *(v20 + 14) = v17;
          *v21 = v10;
          v26 = v17;
          _os_log_impl(&dword_22325E000, v18, v19, "#AsrOnServer Invoked posting of ResultSelectedMessage for request: %s resultSelectedMsg: %@", v20, 0x16u);
          sub_223283234(v21);
          MEMORY[0x223DD8AC0](v21, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          MEMORY[0x223DD8AC0](v22, -1, -1);
          MEMORY[0x223DD8AC0](v20, -1, -1);

LABEL_26:
          return;
        }
      }

      else
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v34 = sub_2232AAAD4();
        __swift_project_value_buffer(v34, qword_28131DB88);

        v18 = sub_2232AAAC4();
        v35 = sub_2232AAD94();

        if (os_log_type_enabled(v18, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v42 = v37;
          *v36 = 136315138;
          v38 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
          v39 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

          v40 = sub_2232603D0(v38, v39, &v42);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_22325E000, v18, v35, "#AsrOnServer Failed to create ResultSelectedMessage for request: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          MEMORY[0x223DD8AC0](v37, -1, -1);
          MEMORY[0x223DD8AC0](v36, -1, -1);
        }
      }

      goto LABEL_26;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v30 = sub_2232AAAD4();
    __swift_project_value_buffer(v30, qword_28131DB88);
    v31 = sub_2232AAAC4();
    v32 = sub_2232AAD84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22325E000, v31, v32, "#AsrOnServer Not posting ResultSelectedMessage because self is out of scope after waiting for Myriad decision", v33, 2u);
      MEMORY[0x223DD8AC0](v33, -1, -1);
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v27 = sub_2232AAAD4();
    __swift_project_value_buffer(v27, qword_28131DB88);
    v41 = sub_2232AAAC4();
    v28 = sub_2232AAD84();
    if (os_log_type_enabled(v41, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22325E000, v41, v28, "#AsrOnServer Not posting ResultSelectedMessage due to Myriad loss", v29, 2u);
      MEMORY[0x223DD8AC0](v29, -1, -1);
    }
  }
}

uint64_t sub_223289180(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232A97A4();
  v14 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v15 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId + 8);

  sub_2232A9774();
  v16 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, a2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_2232A97C4();
  v19 = a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId;
  v20 = *(a2 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v21 = *(v19 + 8);

  sub_2232A97B4();

  sub_2232A9794();
  return sub_2232A9784();
}

void sub_2232893DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointReceived) = 1;
  v8 = *(v3 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext);
  if (sub_223289E2C() && (v9 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech, (*(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech) & 1) == 0))
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AAAD4();
    __swift_project_value_buffer(v15, qword_28131DB88);

    v16 = sub_2232AAAC4();
    v17 = sub_2232AAD84();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_2232603D0(*(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId), *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8), aBlock);
      _os_log_impl(&dword_22325E000, v16, v17, "#AsrOnServer Posting SASSpeechServerEndpointIdentified for requestId: %s)", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DD8AC0](v19, -1, -1);
      MEMORY[0x223DD8AC0](v18, -1, -1);
    }

    v20 = *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
    if ([v20 respondsToSelector_])
    {
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a2;
      v22[4] = a3;
      v22[5] = a1;
      aBlock[4] = sub_22328A348;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22328BC90;
      aBlock[3] = &block_descriptor_2;
      v23 = _Block_copy(aBlock);

      sub_22328A370(a2);
      v24 = a1;

      [v20 handleSpeechServerEndpointIdentified:v24 completion:v23];
      _Block_release(v23);
    }

    *(v4 + v9) = 1;
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v10 = sub_2232AAAD4();
    __swift_project_value_buffer(v10, qword_28131DB88);
    v11 = sub_2232AAAC4();
    v12 = sub_2232AAD84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22325E000, v11, v12, "Pre NL user selection has not run for all RCs. Caching SASSpeechServerEndpointIdentified.", v13, 2u);
      MEMORY[0x223DD8AC0](v13, -1, -1);
    }

    v25 = *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage);
    *(v4 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage) = a1;
    v14 = a1;
  }
}

void sub_2232897BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, void *a6, const char *a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (!a4)
    {
      return;
    }

    v12 = a1;
    v13 = a2;
    goto LABEL_12;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = a6;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD94();
  if (!os_log_type_enabled(v16, v17))
  {

    if (!a4)
    {
      return;
    }

    goto LABEL_11;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v25 = v19;
  *v18 = 136315138;
  v20 = [v15 refId];

  if (!v20)
  {
    __break(1u);
    return;
  }

  v21 = sub_2232AAC04();
  v23 = v22;

  v24 = sub_2232603D0(v21, v23, &v25);

  *(v18 + 4) = v24;
  _os_log_impl(&dword_22325E000, v16, v17, a7, v18, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  MEMORY[0x223DD8AC0](v19, -1, -1);
  MEMORY[0x223DD8AC0](v18, -1, -1);

  if (a4)
  {
LABEL_11:
    v12 = 0;
    v13 = 0;
LABEL_12:
    a4(v12, v13);
  }
}

uint64_t sub_2232899C4()
{
  v1 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestType;
  v2 = sub_2232AA6B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId + 8);

  v4 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId;
  v5 = sub_2232A9504();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId + 8);

  v7 = OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_userId;
  v8 = sub_2232AA794();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_myriadMonitor));
  v10 = *(v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_bufferedResultCandidateHandler);

  v11 = *(v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_instrumentationUtil);

  v12 = *(v0 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext);

  return v0;
}

uint64_t sub_223289B2C()
{
  sub_2232899C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_223289BAC()
{
  result = sub_2232AA6B4();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_2232A9504();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_2232AA794();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_223289CF8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    *(v5 + 40) = 1;
    swift_beginAccess();
    v9 = *(v5 + 32);
    *(v5 + 32) = MEMORY[0x277D84F98];
  }

  if (a3)
  {
    swift_beginAccess();
    v10 = *(v5 + 32);
    v11 = sub_2232A2C98(a1, a2);
    if (v12)
    {
      v13 = v11;
      v14 = *(v5 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v5 + 32);
      *(v5 + 32) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2232A52A8();
      }

      v17 = *(*(v16 + 48) + 16 * v13 + 8);

      sub_2232A3FD8(v13, v16);
      *(v5 + 32) = v16;
    }
  }

  else
  {
    swift_beginAccess();
    v18 = *(v5 + 32);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v5 + 32);
    *(v5 + 32) = 0x8000000000000000;
    sub_2232A47E4(0, a1, a2, v19);
    *(v5 + 32) = v21;
  }

  return swift_endAccess();
}

BOOL sub_223289E2C()
{
  v1 = v0;
  if (*(v0 + 40) == 1)
  {
    v2 = *(v0 + 16);
    v3 = *(v1 + 16);

    v4 = sub_2232829E0();

    if (v4)
    {
      result = 0;
      *(v1 + 40) = 0;
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v6 = sub_2232AAAD4();
      __swift_project_value_buffer(v6, qword_28131DB88);
      v7 = sub_2232AAAC4();
      v8 = sub_2232AAD94();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22325E000, v7, v8, "Could not post buffer RC message. The request will timeout", v9, 2u);
        MEMORY[0x223DD8AC0](v9, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    return *(*(v0 + 32) + 16) == 0;
  }

  return result;
}

uint64_t sub_223289F74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_223289FBC()
{
  v1 = v0;
  sub_2232AAF64();
  MEMORY[0x223DD7FE0](0xD000000000000012, 0x80000002232ADD80);
  MEMORY[0x223DD7FE0](v1[2], v1[3]);
  MEMORY[0x223DD7FE0](0xD000000000000017, 0x80000002232ADDA0);
  MEMORY[0x223DD7FE0](v1[4], v1[5]);
  MEMORY[0x223DD7FE0](0x644972657375202CLL, 0xE90000000000003ALL);
  sub_2232AA794();
  sub_22328A3C0(&qword_28131DAA0, MEMORY[0x277D5D298]);
  v2 = sub_2232AB064();
  MEMORY[0x223DD7FE0](v2);

  MEMORY[0x223DD7FE0](0xD000000000000019, 0x80000002232ADDC0);
  v5 = *(v0 + OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_processedAudioDuration);
  v3 = sub_2232AB064();
  MEMORY[0x223DD7FE0](v3);

  return HIDWORD(v5);
}

uint64_t sub_22328A150()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC9ASRBridge28ASRMUXResultCandidateContext_userId;
  v4 = sub_2232AA794();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_22328A234(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22328A26C()
{
  result = sub_2232AA794();
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

uint64_t sub_22328A370(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_22328A380(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_223287CE8(a1);
}

uint64_t sub_22328A3C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22328A440(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_223289180(a1, *(v1 + 16));
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

void sub_22328A4AC(int a1)
{
  v3 = sub_2232A9504();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_28131D900);
  v9 = sub_2232AA904();
  v11 = v10;
  v97 = v1;
  sub_2232AA954();
  v12 = *(v8 + 16);
  v102 = v7;
  v103 = v9;
  v104 = v11;
  v105 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081710, "(6");
  sub_2232AADD4();

  v13 = aBlock;
  LOBYTE(v9) = BYTE8(aBlock);
  v14 = *(v4 + 8);
  v14(v7, v3);
  if (v9)
  {
    if (qword_28131D338 != -1)
    {
LABEL_49:
      swift_once();
    }

    v15 = sub_2232AAAD4();
    __swift_project_value_buffer(v15, qword_28131DB88);
    v16 = sub_2232AAAC4();
    v17 = sub_2232AAD94();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_6;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "nil hostTime from AsrCandidateRequestCache";
    goto LABEL_5;
  }

  v101 = v14;
  v100 = v3;
  v95 = a1;
  v94 = v13;
  if (a1)
  {
    v20 = *MEMORY[0x277D48440];
    v93 = sub_2232AAC04();
    v96 = v21;
    v89 = 0;
    v90 = 0;
    v92 = 5;
  }

  else
  {
    v22 = *MEMORY[0x277D48410];
    v93 = sub_2232AAC04();
    v96 = v23;
    sub_2232AA904();
    v24 = sub_2232AA954();
    v25 = *(v8 + 16);
    MEMORY[0x28223BE20](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081718, "(6");
    sub_2232AADD4();

    v26 = aBlock;
    v27 = BYTE8(aBlock);
    v28 = v100;
    v101(v7, v100);
    if (v27)
    {

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v29 = sub_2232AAAD4();
      __swift_project_value_buffer(v29, qword_28131DB88);
      v16 = sub_2232AAAC4();
      v17 = sub_2232AAD94();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_6;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "nil audioRecordType from AsrCandidateRequestCache";
LABEL_5:
      _os_log_impl(&dword_22325E000, v16, v17, v19, v18, 2u);
      MEMORY[0x223DD8AC0](v18, -1, -1);
LABEL_6:

      return;
    }

    v92 = v26;
    sub_2232AA904();
    v30 = sub_2232AA954();
    v31 = *(v8 + 16);
    MEMORY[0x28223BE20](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081720, &qword_2232AC498);
    sub_2232AADD4();

    v32 = aBlock;
    v101(v7, v28);
    v89 = v32;
    if (*(&v32 + 1))
    {
      v90 = *(&v32 + 1);
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v33 = sub_2232AAAD4();
      __swift_project_value_buffer(v33, qword_28131DB88);
      v34 = sub_2232AAAC4();
      v35 = sub_2232AAD84();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_22325E000, v34, v35, "nil audioRecordDeviceId from the AsrCandidateRequestCache", v36, 2u);
        MEMORY[0x223DD8AC0](v36, -1, -1);
      }

      v90 = 0;
    }
  }

  v37 = v97;
  v38 = sub_2232AA904();
  v39 = sub_2232AA954();
  v40 = *(v8 + 16);
  MEMORY[0x28223BE20](v39);
  v87 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081728, " 6");
  sub_2232AADD4();

  v41 = aBlock;
  v101(v7, v100);
  v91 = v41;
  if (v41)
  {
    goto LABEL_26;
  }

  if (qword_28131D338 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v42 = sub_2232AAAD4();
    __swift_project_value_buffer(v42, qword_28131DB88);
    v43 = sub_2232AAAC4();
    v44 = sub_2232AAD94();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22325E000, v43, v44, "nil location from the AsrCandidateRequestCache", v45, 2u);
      MEMORY[0x223DD8AC0](v45, -1, -1);
    }

    v37 = v97;
LABEL_26:
    sub_2232632C4(&v109);
    v46 = *(v37 + qword_28131D8F0);
    if (v46 >> 62)
    {
      if (v46 < 0)
      {
        v80 = *(v37 + qword_28131D8F0);
      }

      v81 = *(v37 + qword_28131D8F0);
      v82 = sub_2232AAFE4();
      v46 = v81;
      v47 = v82;
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v47)
    {
LABEL_39:
      sub_2232AA944();
      v62 = sub_2232AA924();
      v63 = sub_2232AA944();
      v65 = sub_22326A9D4(v62, v63, v64);
      swift_unknownObjectRelease();

      v66 = v109;
      v67 = v111;
      LODWORD(v100) = sub_22326B608(v109);
      v68 = sub_2232AABF4();

      v69 = sub_2232AABF4();

      v101 = v67;
      v70 = sub_2232AACF4();
      sub_22328B204();
      v71 = sub_2232AACF4();

      if (v90)
      {
        v72 = sub_2232AABF4();
      }

      else
      {
        v72 = 0;
      }

      v73 = v95 ^ 1;
      v74 = *MEMORY[0x277D24258];
      v75 = (v65 != 2) ^ v65;
      aBlock = v112;
      if (*(&v112 + 1))
      {
        v76 = sub_2232AABF4();
      }

      else
      {
        v76 = 0;
      }

      v77 = v110;
      v78 = objc_allocWithZone(MEMORY[0x277D24248]);
      LOBYTE(v87) = 0;
      LOBYTE(v86) = v73 & 1;
      LOBYTE(v85) = 0;
      BYTE3(v84) = v77;
      BYTE2(v84) = 1;
      BYTE1(v84) = v100 & 1;
      LOBYTE(v84) = v75 & 1;
      LODWORD(v83) = 0;
      v79 = v91;
      [v78 initWithRequestId:v68 inputOrigin:v69 speechRecognitionTaskName:v66 speechRecognitionMode:0 location:v91 jitGrammar:v70 overrideModelPath:v74 applicationName:0 detectUtterances:0 continuousListening:v83 shouldHandleCapitalization:0 secureOfflineOnly:v84 maximumRecognitionDuration:0 recognitionOverrides:v85 shouldStoreAudioOnDevice:0 deliverEagerPackage:v71 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v86 sharedUserInfos:v94 prefixText:v92 postfixText:v72 selectedText:v87 powerContext:v76 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];

      sub_22328B250(&aBlock);
      return;
    }

    v48 = v46;
    v108 = MEMORY[0x277D84F90];
    sub_2232AAFB4();
    if ((v47 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_54:
    swift_once();
  }

  v100 = objc_opt_self();
  v49 = 0;
  v50 = v48;
  v101 = (v48 & 0xC000000000000001);
  v98 = v48 & 0xFFFFFFFFFFFFFF8;
  v99 = v107;
  v51 = v48;
  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v101)
    {
      v53 = MEMORY[0x223DD8300](v49, v50);
    }

    else
    {
      if (v49 >= *(v98 + 16))
      {
        goto LABEL_48;
      }

      v53 = *(v50 + 8 * v49 + 32);
    }

    v54 = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_22328B1F4;
    *(v56 + 24) = v55;
    v107[2] = sub_22328B1FC;
    v107[3] = v56;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v107[0] = sub_223278834;
    v107[1] = &block_descriptor_3;
    v57 = _Block_copy(&aBlock);
    v58 = v54;

    v59 = [v100 newWithBuilder_];
    _Block_release(v57);
    if (!v59)
    {
      break;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_47;
    }

    sub_2232AAF94();
    v61 = *(v108 + 16);
    sub_2232AAFC4();
    sub_2232AAFD4();
    sub_2232AAFA4();
    ++v49;
    v50 = v51;
    if (v52 == v47)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
}

void sub_22328B08C(void *a1, id a2)
{
  if (a1)
  {
    v4 = [a2 sharedUserId];
    [a1 setSharedUserId_];

    v5 = [a2 loggableSharedUserId];
    [a1 setLoggableSharedUserId_];

    v6 = [a2 personaIdentifier];
    [a1 setPersonaId_];
  }
}

unint64_t sub_22328B204()
{
  result = qword_28131D1A0;
  if (!qword_28131D1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1A0);
  }

  return result;
}

uint64_t sub_22328B250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081720, &qword_2232AC498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_22328B894(a1, a2, a3, a5, a6);
  }

  else
  {
    (*(a6 + 24))(a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void static SignpostLogger.end(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2232AAE24();
  v8 = (*(a6 + 8))(a5, a6);
  sub_2232AAA84();
}

uint64_t static SignpostLogger.event(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2232AAAB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232AAE44();
  v12 = (*(a5 + 8))(a4, a5);
  sub_2232AAAA4();
  sub_2232AAA84();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22328B510()
{
  v0 = sub_2232AAAD4();
  __swift_allocate_value_buffer(v0, qword_28131DB88);
  __swift_project_value_buffer(v0, qword_28131DB88);
  sub_22328BA58();
  sub_2232AAE94();
  return sub_2232AAAE4();
}

uint64_t sub_22328B5A0()
{
  v0 = sub_2232AA8A4();
  __swift_allocate_value_buffer(v0, qword_28131DBA0);
  __swift_project_value_buffer(v0, qword_28131DBA0);
  return sub_2232AA894();
}

uint64_t sub_22328B5EC()
{
  sub_22328BA58();
  result = sub_2232AAE94();
  qword_28131DD38 = result;
  return result;
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8);
  v12(a9, a10);
  sub_2232AAA94();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_2232AAE34();
    v16 = (v12)(a9, a10);
    sub_2232AAA84();
  }

  else
  {

    sub_2232AAE34();
    v13 = (v12)(a9, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081790, qword_2232ACB58);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2232AC370;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_22328B990();
    *(v14 + 32) = a7;
    *(v14 + 40) = a8;
    sub_2232AAA74();
  }
}

void sub_22328B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  v7(a4, a5);
  sub_2232AAA94();
  sub_2232AAE34();
  v8 = (v7)(a4, a5);
  sub_2232AAA74();
}

unint64_t sub_22328B990()
{
  result = qword_27D081980;
  if (!qword_27D081980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D081980);
  }

  return result;
}

unint64_t sub_22328BA58()
{
  result = qword_28131D168;
  if (!qword_28131D168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D168);
  }

  return result;
}

uint64_t type metadata accessor for AsrRequestProcessor()
{
  result = qword_28131D818;
  if (!qword_28131D818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22328BAF0()
{
  v0 = sub_2232AA6E4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2232926C4();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_2232AA794();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_22328BC90(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22328BD44()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D8C0));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D848));
  v1 = *(v0 + qword_28131D850);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D858));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D8A0));
  v2 = *(v0 + qword_28131D838);

  v3 = *(v0 + qword_28131D900);

  v4 = *(v0 + qword_28131D8F0);

  v5 = qword_28131DD08;
  v6 = sub_2232AA6E4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_223260EDC(v0 + qword_28131DD10, &unk_27D081810, &unk_2232ACC60);
  v7 = qword_28131DCE0;
  v8 = sub_2232AA794();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + qword_28131DD20);

  v10 = *(v0 + qword_28131DD28);

  v11 = *(v0 + qword_28131D878 + 8);
}

uint64_t sub_22328BEF0()
{
  [*(v0 + qword_28131D8B0) invalidate];
  v1 = sub_2232AA964();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D8C0));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D848));
  v2 = *(v1 + qword_28131D850);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D858));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + qword_28131D8A0));
  v3 = *(v1 + qword_28131D838);

  v4 = *(v1 + qword_28131D900);

  v5 = *(v1 + qword_28131D8F0);

  v6 = qword_28131DD08;
  v7 = sub_2232AA6E4();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  sub_223260EDC(v1 + qword_28131DD10, &unk_27D081810, &unk_2232ACC60);
  v8 = qword_28131DCE0;
  v9 = sub_2232AA794();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + qword_28131DD20);

  v11 = *(v1 + qword_28131DD28);

  v12 = *(v1 + qword_28131D878 + 8);

  return v1;
}

uint64_t sub_22328C0B8()
{
  v0 = sub_22328BEF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_22328C10C(void *a1)
{
  v2 = v1;
  v4 = sub_2232AA694();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v61 - v11;
  if (sub_2232AA064())
  {
    v13 = *MEMORY[0x277D5CF40];
    v14 = sub_2232AA6B4();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v12, v13, v14);
    (*(v15 + 56))(v12, 0, 1, v14);
    v16 = qword_28131DD10;
    swift_beginAccess();
    sub_223293C54(v12, v2 + v16);
    swift_endAccess();
    sub_223268998(0);
    v17 = sub_2232AA044();
    v64 = v2;
    if (v17)
    {

      v63 = 2;
    }

    else
    {
      v63 = 0;
    }

    v25 = sub_2232AA5D4();
    v27 = v26;
    sub_2232A9714();
    v61[1] = sub_2232AA684();
    (*(v5 + 8))(v8, v4);
    if (sub_2232A9C94())
    {
      v62 = sub_2232AA7A4();
    }

    else
    {
      v62 = 0;
    }

    sub_2232AA044();
    sub_2232AA054();
    v29 = v28;
    v30 = *MEMORY[0x277D24258];
    v31 = sub_2232AA924();
    v32 = sub_22326A9D4(v31, v25, v27);
    swift_unknownObjectRelease();
    v33 = (v32 != 2) ^ v32;
    v34 = sub_2232AABF4();

    v35 = sub_2232AABF4();

    v36 = sub_2232AACF4();

    if (v29)
    {
      v37 = sub_2232AABF4();
    }

    else
    {
      v37 = 0;
    }

    v38 = objc_allocWithZone(MEMORY[0x277D24248]);
    LOBYTE(v60) = 0;
    LOBYTE(v59) = 0;
    BYTE3(v58) = 0;
    BYTE2(v58) = 0;
    LOWORD(v58) = v33 & 1;
    LODWORD(v57) = 0;
    v39 = v62;
    v40 = [v38 initWithRequestId:v34 inputOrigin:v35 speechRecognitionTaskName:v63 speechRecognitionMode:0 location:v62 jitGrammar:v36 overrideModelPath:v30 applicationName:v37 detectUtterances:0 continuousListening:v57 shouldHandleCapitalization:0 secureOfflineOnly:v58 maximumRecognitionDuration:0 recognitionOverrides:v59 shouldStoreAudioOnDevice:0 deliverEagerPackage:0 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v60 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:? powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v41 = sub_2232AAAD4();
    __swift_project_value_buffer(v41, qword_28131DB88);
    v42 = a1;
    v43 = v40;
    v44 = sub_2232AAAC4();
    v45 = sub_2232AAD84();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65 = v48;
      *v46 = 138412546;
      *(v46 + 4) = v43;
      *v47 = v43;
      *(v46 + 12) = 2080;
      v49 = v43;
      v50 = sub_2232AA5D4();
      v52 = sub_2232603D0(v50, v51, &v65);

      *(v46 + 14) = v52;
      _os_log_impl(&dword_22325E000, v44, v45, "RequestSettings: %@ for requestId: %s", v46, 0x16u);
      sub_223260EDC(v47, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x223DD8AC0](v48, -1, -1);
      MEMORY[0x223DD8AC0](v46, -1, -1);
    }

    v53 = v64;
    [*(&v64->isa + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v54 = sub_2232AA8A4();
    __swift_project_value_buffer(v54, qword_28131DBA0);
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v55 + 24) = v42;
    v56 = v42;

    sub_2232AA874();
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v18 = sub_2232AAAD4();
    __swift_project_value_buffer(v18, qword_28131DB88);
    v19 = a1;
    v64 = sub_2232AAAC4();
    v20 = sub_2232AAD84();

    if (os_log_type_enabled(v64, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&dword_22325E000, v64, v20, "AsrRequestProcessor received message: %@ ignoring it...", v21, 0xCu);
      sub_223260EDC(v22, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v22, -1, -1);
      MEMORY[0x223DD8AC0](v21, -1, -1);
    }

    v24 = v64;
  }
}

uint64_t sub_22328C860(void *a1)
{
  v2 = v1;
  v4 = sub_2232AA694();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2232AA6B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - v14;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v16 = sub_2232AAAD4();
  __swift_project_value_buffer(v16, qword_28131DB88);
  v17 = a1;
  v18 = sub_2232AAAC4();
  v19 = sub_2232AAD84();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_22325E000, v18, v19, "AsrRequestProcessor received message: %@", v20, 0xCu);
    sub_223260EDC(v21, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v21, -1, -1);
    MEMORY[0x223DD8AC0](v20, -1, -1);
  }

  v23 = *MEMORY[0x277D5CF20];
  v24 = *(v8 + 104);
  v24(v15, v23, v7);
  (*(v8 + 56))(v15, 0, 1, v7);
  v25 = qword_28131DD10;
  swift_beginAccess();
  sub_223293C54(v15, v2 + v25);
  swift_endAccess();
  sub_223268998(0);
  v24(v11, v23, v7);
  v26 = sub_223291AA4(v11);
  (*(v8 + 8))(v11, v7);
  v27 = *(v2 + qword_28131DD20);
  *(v2 + qword_28131DD20) = v26;

  v51 = *(v2 + qword_28131D8B0);
  v28 = v51;
  sub_2232AA5D4();
  v29 = sub_2232AABF4();

  [v28 disableLocalSpeechRecognitionForRequestId_];

  v30 = sub_2232AA5D4();
  v32 = v31;
  v33 = v52;
  sub_2232A9714();
  sub_2232AA684();
  (*(v53 + 8))(v33, v54);
  v34 = *MEMORY[0x277D24258];
  v35 = sub_2232AA924();
  LOBYTE(v33) = sub_22326A9D4(v35, v30, v32);
  swift_unknownObjectRelease();
  v36 = (v33 != 2) ^ v33;
  v37 = objc_allocWithZone(MEMORY[0x277D24248]);
  v38 = sub_2232AABF4();

  v39 = sub_2232AABF4();

  v40 = sub_2232AACF4();
  LOBYTE(v49) = 0;
  LOBYTE(v48) = 0;
  BYTE3(v47) = 0;
  BYTE2(v47) = 0;
  LOWORD(v47) = v36 & 1;
  LODWORD(v46) = 0;
  v41 = [v37 initWithRequestId:v38 inputOrigin:v39 speechRecognitionTaskName:0 speechRecognitionMode:1 location:0 jitGrammar:v40 overrideModelPath:v34 applicationName:0 detectUtterances:0 continuousListening:v46 shouldHandleCapitalization:0 secureOfflineOnly:v47 maximumRecognitionDuration:0 recognitionOverrides:v48 shouldStoreAudioOnDevice:0 deliverEagerPackage:0 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v49 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:? powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];

  [v51 startSpeechRecognitionResultsWithSettings_];
  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v42 = sub_2232AA8A4();
  __swift_project_value_buffer(v42, qword_28131DBA0);
  v43 = swift_allocObject();
  *(v43 + 16) = v2;
  *(v43 + 24) = v17;
  v44 = v17;

  sub_2232AA874();
}

uint64_t sub_22328CE2C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v8 = sub_2232AAAD4();
  __swift_project_value_buffer(v8, qword_28131DB88);
  v9 = a1;
  v10 = sub_2232AAAC4();
  v11 = sub_2232AAD84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_22325E000, v10, v11, "AsrRequestProcessor received message: %@", v12, 0xCu);
    sub_223260EDC(v13, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v13, -1, -1);
    MEMORY[0x223DD8AC0](v12, -1, -1);
  }

  sub_2232AA3F4();
  v15 = swift_dynamicCastClass();
  v16 = MEMORY[0x277D5CF50];
  if (v15)
  {
    v16 = MEMORY[0x277D5CF18];
  }

  v17 = *v16;
  v18 = sub_2232AA6B4();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v7, v17, v18);
  sub_2232AA6B4();
  (*(v19 + 56))(v7, 0, 1, v18);
  v20 = qword_28131DD10;
  swift_beginAccess();
  sub_223293C54(v7, v2 + v20);
  swift_endAccess();
  v21 = sub_2232AA1F4();
  sub_223268998(v21);

  v22 = AFIsATV();
  v23 = sub_22328FF3C(v9, v22);

  v24 = sub_2232AAAC4();
  v25 = sub_2232AAD84();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v26 = 138412546;
    *(v26 + 4) = v23;
    *v27 = v23;
    *(v26 + 12) = 2080;
    v29 = v23;
    v30 = sub_2232AA944();
    v32 = sub_2232603D0(v30, v31, &v40);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_22325E000, v24, v25, "RequestSettings: %@ for requestId: %s", v26, 0x16u);
    sub_223260EDC(v27, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x223DD8AC0](v28, -1, -1);
    MEMORY[0x223DD8AC0](v26, -1, -1);
  }

  v33 = *(v2 + qword_28131D850);
  v34 = [v23 speechRecognitionTask];
  sub_2232AA5D4();
  sub_22326BC40(v34);

  [*(v2 + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
  if (qword_28131D340 != -1)
  {
    swift_once();
  }

  v35 = sub_2232AA8A4();
  __swift_project_value_buffer(v35, qword_28131DBA0);
  v36 = swift_allocObject();
  *(v36 + 16) = v2;
  *(v36 + 24) = v9;
  v37 = v9;

  sub_2232AA874();
}

void sub_22328D30C(void *a1)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v3 = sub_2232AAAD4();
  __swift_project_value_buffer(v3, qword_28131DB88);
  v4 = a1;
  v5 = sub_2232AAAC4();
  v6 = sub_2232AAD84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_22325E000, v5, v6, "AsrRequestProcessor received message: %@", v7, 0xCu);
    sub_223260EDC(v8, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v8, -1, -1);
    MEMORY[0x223DD8AC0](v7, -1, -1);
  }

  v10 = *(v1 + qword_28131D888);
  if (v10)
  {
    v11 = v10;
    sub_2232AA5D4();
    oslog = sub_2232AABF4();

    [v11 siriPromptWillStartWithRootRequestId_];
  }

  else
  {
    oslog = sub_2232AAAC4();
    v12 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22325E000, oslog, v12, "AttendingClient not set while receiving SiriWillPromptMessage, dropping", v13, 2u);
      MEMORY[0x223DD8AC0](v13, -1, -1);
    }
  }
}

void sub_22328D528(void *a1)
{
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v16 = sub_2232AAAD4();
  v17 = __swift_project_value_buffer(v16, qword_28131DB88);
  v18 = a1;
  v42 = v17;
  v19 = sub_2232AAAC4();
  v20 = sub_2232AAD84();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_22325E000, v19, v20, "AsrRequestProcessor received message: %@", v21, 0xCu);
    sub_223260EDC(v22, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v22, -1, -1);
    MEMORY[0x223DD8AC0](v21, -1, -1);
  }

  v24 = qword_28131DD10;
  v25 = v43;
  swift_beginAccess();
  (*(v3 + 104))(v15, *MEMORY[0x277D5CF50], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v26 = *(v6 + 48);
  sub_223293AB8(v25 + v24, v9);
  sub_223293AB8(v15, &v9[v26]);
  v27 = *(v3 + 48);
  if (v27(v9, 1, v2) == 1)
  {
    sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
    if (v27(&v9[v26], 1, v2) == 1)
    {
      sub_223260EDC(v9, &unk_27D081810, &unk_2232ACC60);
LABEL_14:
      v38 = *(v43 + qword_28131D8B0);
      sub_2232AA5D4();
      v30 = sub_2232AABF4();

      [v38 pauseLocalSpeechRecognitionForRequestId_];
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v28 = v41;
  sub_223293AB8(v9, v41);
  if (v27(&v9[v26], 1, v2) == 1)
  {
    sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
    (*(v3 + 8))(v28, v2);
LABEL_10:
    sub_223260EDC(v9, &qword_27D081808, "H6");
    goto LABEL_11;
  }

  v35 = v40;
  (*(v3 + 32))(v40, &v9[v26], v2);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);
  v36 = sub_2232AABE4();
  v37 = *(v3 + 8);
  v37(v35, v2);
  sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
  v37(v28, v2);
  sub_223260EDC(v9, &unk_27D081810, &unk_2232ACC60);
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_11:
  v29 = v18;
  v30 = sub_2232AAAC4();
  v31 = sub_2232AAD94();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_22325E000, v30, v31, "Received unexpected %@ message. Current request is not dictation", v32, 0xCu);
    sub_223260EDC(v33, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v33, -1, -1);
    MEMORY[0x223DD8AC0](v32, -1, -1);
  }

LABEL_15:
}

void sub_22328DB28(void *a1)
{
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v16 = sub_2232AAAD4();
  v17 = __swift_project_value_buffer(v16, qword_28131DB88);
  v18 = a1;
  v45 = v17;
  v19 = sub_2232AAAC4();
  v20 = sub_2232AAD84();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_22325E000, v19, v20, "AsrRequestProcessor received message: %@", v21, 0xCu);
    sub_223260EDC(v22, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v22, -1, -1);
    MEMORY[0x223DD8AC0](v21, -1, -1);
  }

  v24 = qword_28131DD10;
  v25 = v46;
  swift_beginAccess();
  (*(v3 + 104))(v15, *MEMORY[0x277D5CF50], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v26 = *(v6 + 48);
  sub_223293AB8(v25 + v24, v9);
  sub_223293AB8(v15, &v9[v26]);
  v27 = *(v3 + 48);
  if (v27(v9, 1, v2) == 1)
  {
    sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
    if (v27(&v9[v26], 1, v2) == 1)
    {
      sub_223260EDC(v9, &unk_27D081810, &unk_2232ACC60);
LABEL_14:
      v38 = *(v46 + qword_28131D8B0);
      sub_2232AA5D4();
      v39 = sub_2232AABF4();

      sub_2232A9FC4();
      v40 = sub_2232AABF4();

      sub_2232A9FD4();
      v41 = sub_2232AABF4();

      sub_2232A9FE4();
      v30 = sub_2232AABF4();

      [v38 resumeLocalRecognitionWithRequestId:v39 prefixText:v40 postfixText:v41 selectedText:v30];

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v28 = v44;
  sub_223293AB8(v9, v44);
  if (v27(&v9[v26], 1, v2) == 1)
  {
    sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
    (*(v3 + 8))(v28, v2);
LABEL_10:
    sub_223260EDC(v9, &qword_27D081808, "H6");
    goto LABEL_11;
  }

  v35 = v43;
  (*(v3 + 32))(v43, &v9[v26], v2);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);
  v36 = sub_2232AABE4();
  v37 = *(v3 + 8);
  v37(v35, v2);
  sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
  v37(v28, v2);
  sub_223260EDC(v9, &unk_27D081810, &unk_2232ACC60);
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_11:
  v29 = v18;
  v30 = sub_2232AAAC4();
  v31 = sub_2232AAD94();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_22325E000, v30, v31, "Received unexpected %@ message. Current request is not dictation", v32, 0xCu);
    sub_223260EDC(v33, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v33, -1, -1);
    MEMORY[0x223DD8AC0](v32, -1, -1);
  }

LABEL_15:
}

void sub_22328E188(void *a1)
{
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v16 = sub_2232AAAD4();
  v17 = __swift_project_value_buffer(v16, qword_28131DB88);
  v18 = a1;
  v52 = v17;
  v19 = sub_2232AAAC4();
  v20 = sub_2232AAD84();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_22325E000, v19, v20, "AsrRequestProcessor received message: %@", v21, 0xCu);
    sub_223260EDC(v22, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v22, -1, -1);
    MEMORY[0x223DD8AC0](v21, -1, -1);
  }

  v24 = qword_28131DD10;
  v25 = v53;
  swift_beginAccess();
  (*(v3 + 104))(v15, *MEMORY[0x277D5CF50], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v26 = *(v6 + 48);
  sub_223293AB8(&v25[v24], v9);
  sub_223293AB8(v15, &v9[v26]);
  v27 = *(v3 + 48);
  if (v27(v9, 1, v2) == 1)
  {
    sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
    if (v27(&v9[v26], 1, v2) == 1)
    {
      sub_223260EDC(v9, &unk_27D081810, &unk_2232ACC60);
LABEL_14:
      v53 = *&v53[qword_28131D8B0];
      sub_2232AA5D4();
      v38 = sub_2232AABF4();

      sub_2232A9E74();
      if (v39)
      {
        v40 = sub_2232AABF4();
      }

      else
      {
        v40 = 0;
      }

      sub_2232A9E84();
      if (v41)
      {
        v42 = sub_2232AABF4();
      }

      else
      {
        v42 = 0;
      }

      sub_2232A9E94();
      if (v43)
      {
        v44 = sub_2232AABF4();
      }

      else
      {
        v44 = 0;
      }

      if (sub_2232A9EB4() == 2)
      {
        v45 = 0;
      }

      else
      {
        v45 = sub_2232AAD44();
      }

      if (sub_2232A9EA4() == 2)
      {
        v46 = 0;
      }

      else
      {
        v46 = sub_2232AAD44();
      }

      if (sub_2232A9E64() == 2)
      {
        v47 = 0;
      }

      else
      {
        v47 = sub_2232AAD44();
      }

      if (sub_2232A9E54() == 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = sub_2232AAD44();
      }

      if (sub_2232A9EC4() == 2)
      {
        v30 = 0;
      }

      else
      {
        v30 = sub_2232AAD44();
      }

      [v53 updateVoiceCommandContextWithRequestId:v38 prefixText:v40 postfixText:v42 selectedText:v44 disambiguationActive:v45 cursorInVisibleText:v46 favorCommandSuppression:v47 abortCommandSuppression:v48 undoEvent:v30];

      goto LABEL_39;
    }

    goto LABEL_10;
  }

  v28 = v51;
  sub_223293AB8(v9, v51);
  if (v27(&v9[v26], 1, v2) == 1)
  {
    sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
    (*(v3 + 8))(v28, v2);
LABEL_10:
    sub_223260EDC(v9, &qword_27D081808, "H6");
    goto LABEL_11;
  }

  v35 = v50;
  (*(v3 + 32))(v50, &v9[v26], v2);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);
  v36 = sub_2232AABE4();
  v37 = *(v3 + 8);
  v37(v35, v2);
  sub_223260EDC(v15, &unk_27D081810, &unk_2232ACC60);
  v37(v28, v2);
  sub_223260EDC(v9, &unk_27D081810, &unk_2232ACC60);
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_11:
  v29 = v18;
  v30 = sub_2232AAAC4();
  v31 = sub_2232AAD94();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_22325E000, v30, v31, "Received unexpected %@ message. Current request is not dictation", v32, 0xCu);
    sub_223260EDC(v33, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v33, -1, -1);
    MEMORY[0x223DD8AC0](v32, -1, -1);
  }

LABEL_39:
}

void sub_22328E90C(void *a1)
{
  if (qword_28131D338 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = sub_2232AAAD4();
    __swift_project_value_buffer(v2, qword_28131DB88);
    v3 = a1;
    v4 = sub_2232AAAC4();
    v5 = sub_2232AAD84();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&dword_22325E000, v4, v5, "AsrRequestProcessor received message: %@", v6, 0xCu);
      sub_223260EDC(v7, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v7, -1, -1);
      MEMORY[0x223DD8AC0](v6, -1, -1);
    }

    v9 = sub_2232A96E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081890, &unk_2232ACCB0);
    v10 = sub_2232AAFF4();
    a1 = v10;
    v11 = 0;
    v33 = v9;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v9 + 64;
    v15 = v13 & *(v9 + 64);
    v16 = (v12 + 63) >> 6;
    v32 = v10 + 64;
    if (!v15)
    {
      break;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v20 = v17 | (v11 << 6);
      v21 = (v33[6] + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v33[7] + 8 * v20);

      v25 = sub_2232AAD74();
      *(v32 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (a1[6] + 16 * v20);
      *v26 = v22;
      v26[1] = v23;
      *(a1[7] + 8 * v20) = v25;
      v27 = a1[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      a1[2] = v29;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_8:
  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v11 >= v16)
    {
      break;
    }

    v19 = *(v14 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_13;
    }
  }

  v30 = *(v31 + qword_28131D8B0);
  sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
  v34 = sub_2232AAB84();

  [v30 updateTCUState_];
}

void sub_22328EC20(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22325E000, v6, v7, "AsrRequestProcessor received message: %@", v8, 0xCu);
    sub_223260EDC(v9, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  v11 = sub_2232A9724();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0810F0, &qword_2232AC430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2232AC370;
    *(inited + 32) = v13;
    *(inited + 40) = v14;
    *(inited + 48) = sub_2232AAD74();
    sub_22329DF2C(inited);
    swift_setDeallocating();
    sub_223260EDC(inited + 32, &unk_27D081880, &qword_2232AC438);
    v16 = *(v2 + qword_28131D8B0);
    sub_2232606A4(0, &unk_28131D180, 0x277CCABB0);
    v17 = sub_2232AAB84();

    [v16 updateTCUState_];
  }

  else
  {
    oslog = sub_2232AAAC4();
    v18 = sub_2232AAD84();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22325E000, oslog, v18, "TRPFinalizedMessage does not have a finalTCUId, skipping calling updateTCUState.", v19, 2u);
      MEMORY[0x223DD8AC0](v19, -1, -1);
    }
  }
}

void sub_22328EEF8(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22325E000, v6, v7, "AsrRequestProcessor received message: %@", v8, 0xCu);
    sub_223260EDC(v9, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  sub_2232AA5D4();
  sub_2232AA3A4();
  v11 = *(v2 + qword_28131D8B0);
  v12 = sub_2232AABF4();

  v13 = sub_2232AABF4();

  [v11 trpCandidateReadyForExecutionForRequestId:v12 withTrpId:v13];
}

void sub_22328F0CC(void *a1)
{
  v2 = v1;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22325E000, v6, v7, "AsrRequestProcessor received message: %@", v8, 0xCu);
    sub_223260EDC(v9, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  if ((sub_2232AA1B4() & 1) == 0)
  {
    v11 = *(v2 + qword_28131DD00);
    if (v11)
    {
      v12 = *((*MEMORY[0x277D85000] & *v11) + 0xC8);
      oslog = v11;
      v12();
    }

    else
    {
      oslog = sub_2232AAAC4();
      v13 = sub_2232AAD94();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22325E000, oslog, v13, "SpeechRecognizerResponseHandler is nil, unable to submit cached partials", v14, 2u);
        MEMORY[0x223DD8AC0](v14, -1, -1);
      }
    }
  }
}

void sub_22328F31C(void *a1)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v2 = sub_2232AAAD4();
  __swift_project_value_buffer(v2, qword_28131DB88);
  v3 = a1;
  v4 = sub_2232AAAC4();
  v5 = sub_2232AAD84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_22325E000, v4, v5, "AsrRequestProcessor received message: %@", v6, 0xCu);
    sub_223260EDC(v7, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v7, -1, -1);
    MEMORY[0x223DD8AC0](v6, -1, -1);
  }

  sub_2232A9744();
  v9 = swift_dynamicCastClass() != 0;

  sub_22328F48C(v9);
}

void sub_22328F48C(uint64_t a1)
{
  v71 = a1;
  v2 = sub_2232AA6B4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v72 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v64[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v64[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v68 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v64[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v64[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v75 = &v64[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v64[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v64[-v27];
  v29 = qword_28131DD10;
  swift_beginAccess();
  v30 = *MEMORY[0x277D5CF40];
  v77 = v3[13];
  v77(v28, v30, v2);
  v31 = v3[7];
  v78 = v3 + 7;
  v76 = v31;
  v31(v28, 0, 1, v2);
  v32 = *(v6 + 48);
  v79 = v29;
  v80 = v1;
  v33 = v1 + v29;
  v34 = v3;
  sub_223293AB8(v33, v13);
  sub_223293AB8(v28, &v13[v32]);
  v35 = v3[6];
  if (v35(v13, 1, v2) != 1)
  {
    sub_223293AB8(v13, v26);
    v67 = v35;
    if (v35(&v13[v32], 1, v2) != 1)
    {
      v51 = v3[4];
      v66 = v6;
      v52 = v72;
      v51(v72, &v13[v32], v2);
      sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);
      v65 = sub_2232AABE4();
      v53 = v3[1];
      v54 = v52;
      v6 = v66;
      v53(v54, v2);
      sub_223260EDC(v28, &unk_27D081810, &unk_2232ACC60);
      v53(v26, v2);
      sub_223260EDC(v13, &unk_27D081810, &unk_2232ACC60);
      v36 = v80;
      v35 = v67;
      if (v65)
      {
        goto LABEL_16;
      }

LABEL_7:
      v37 = v75;
      v77(v75, *MEMORY[0x277D5CF50], v2);
      v76(v37, 0, 1, v2);
      v38 = *(v6 + 48);
      v13 = v74;
      sub_223293AB8(v36 + v79, v74);
      sub_223293AB8(v37, &v13[v38]);
      if (v35(v13, 1, v2) == 1)
      {
        sub_223260EDC(v37, &unk_27D081810, &unk_2232ACC60);
        if (v35(&v13[v38], 1, v2) == 1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v39 = v69;
        sub_223293AB8(v13, v69);
        if (v35(&v13[v38], 1, v2) != 1)
        {
          v56 = v3[4];
          v66 = v6;
          v57 = v72;
          v56(v72, &v13[v38], v2);
          sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);
          LODWORD(v67) = sub_2232AABE4();
          v58 = v35;
          v59 = v3[1];
          v60 = v57;
          v6 = v66;
          v59(v60, v2);
          sub_223260EDC(v75, &unk_27D081810, &unk_2232ACC60);
          v59(v39, v2);
          v35 = v58;
          v36 = v80;
          sub_223260EDC(v13, &unk_27D081810, &unk_2232ACC60);
          if (v67)
          {
            goto LABEL_16;
          }

LABEL_13:
          v40 = v73;
          v77(v73, *MEMORY[0x277D5CF18], v2);
          v76(v40, 0, 1, v2);
          v41 = *(v6 + 48);
          v13 = v70;
          sub_223293AB8(v36 + v79, v70);
          sub_223293AB8(v40, &v13[v41]);
          if (v35(v13, 1, v2) == 1)
          {
            sub_223260EDC(v40, &unk_27D081810, &unk_2232ACC60);
            if (v35(&v13[v41], 1, v2) == 1)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v55 = v68;
            sub_223293AB8(v13, v68);
            if (v35(&v13[v41], 1, v2) != 1)
            {
              v61 = v72;
              (v34[4])(v72, &v13[v41], v2);
              sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);
              v62 = sub_2232AABE4();
              v63 = v34[1];
              v63(v61, v2);
              sub_223260EDC(v73, &unk_27D081810, &unk_2232ACC60);
              v63(v55, v2);
              sub_223260EDC(v13, &unk_27D081810, &unk_2232ACC60);
              if ((v62 & 1) == 0)
              {
                return;
              }

              goto LABEL_16;
            }

            sub_223260EDC(v73, &unk_27D081810, &unk_2232ACC60);
            (v3[1])(v55, v2);
          }

          sub_223260EDC(v13, &qword_27D081808, "H6");
          return;
        }

        sub_223260EDC(v75, &unk_27D081810, &unk_2232ACC60);
        (v3[1])(v39, v2);
      }

      sub_223260EDC(v13, &qword_27D081808, "H6");
      goto LABEL_13;
    }

    sub_223260EDC(v28, &unk_27D081810, &unk_2232ACC60);
    (v3[1])(v26, v2);
    v35 = v67;
LABEL_6:
    sub_223260EDC(v13, &qword_27D081808, "H6");
    v36 = v80;
    goto LABEL_7;
  }

  sub_223260EDC(v28, &unk_27D081810, &unk_2232ACC60);
  if (v35(&v13[v32], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  v36 = v80;
LABEL_15:
  sub_223260EDC(v13, &unk_27D081810, &unk_2232ACC60);
LABEL_16:
  if ((*(v36 + qword_28131DD18) & 1) == 0)
  {
    v42 = *(v36 + qword_28131D850);
    sub_2232AA944();
    sub_22327F888();
  }

  v43 = *(v36 + qword_28131DD00);
  if (v43)
  {
    v44 = *(v36 + qword_28131D8B0);
    v45 = *((*MEMORY[0x277D85000] & *v43) + 0xB8);
    v46 = v43;
    v45(v44, v71);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v47 = sub_2232AAAD4();
    __swift_project_value_buffer(v47, qword_28131DB88);
    v48 = sub_2232AAAC4();
    v49 = sub_2232AAD94();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22325E000, v48, v49, "SpeechRecognizerResponseHandler is nil, will not be able to stop ASR.", v50, 2u);
      MEMORY[0x223DD8AC0](v50, -1, -1);
    }
  }
}

void *sub_22328FF3C(uint64_t a1, char a2)
{
  v3 = v2;
  v207 = sub_2232A94A4();
  v206 = *(v207 - 8);
  v6 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v8 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081828, &unk_2232ACC78);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v210 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v205 = &v198 - v13;
  v221 = sub_2232AA6E4();
  *(&v216 + 1) = *(v221 - 1);
  v14 = *(*(&v216 + 1) + 64);
  MEMORY[0x28223BE20](v221);
  v220 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = a1;
  v16 = sub_2232AA1F4();
  v17 = [objc_opt_self() sharedPreferences];
  v18 = [v17 offlineDictationStatus];

  v19 = sub_2232AAB94();
  v20 = &unk_28131D000;
  v214 = v16;
  v222 = v3;
  if (a2)
  {
    v21 = &v3[qword_28131D878];
    v22 = *&v3[qword_28131D878 + 8];
    if (v22)
    {
      v23 = *v21;
      v24 = *&v3[qword_28131D878 + 8];

      v25 = sub_2232AABF4();
      v26 = MEMORY[0x223DD8560]();

      if (v26)
      {
        v219 = sub_2232AAC04();
        v28 = v27;

        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v29 = sub_2232AAAD4();
        __swift_project_value_buffer(v29, qword_28131DB88);

        v30 = sub_2232AAAC4();
        v31 = sub_2232AAD84();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          aBlock[0] = v33;
          *v32 = 136315394;
          v34 = sub_2232603D0(v23, v22, aBlock);

          *(v32 + 4) = v34;
          *(v32 + 12) = 2080;
          v35 = v219;
          *(v32 + 14) = sub_2232603D0(v219, v28, aBlock);
          _os_log_impl(&dword_22325E000, v30, v31, "Mapped %s to %s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v33, -1, -1);
          MEMORY[0x223DD8AC0](v32, -1, -1);

          v16 = v214;
          v3 = v222;
        }

        else
        {

          v16 = v214;
          v3 = v222;
          v35 = v219;
        }

        v36 = v21[1];
        *v21 = v35;
        v21[1] = v28;

        v20 = &unk_28131D000;
      }

      else
      {

        v16 = v214;
        v3 = v222;
      }
    }
  }

  v37 = [v16 offlineLanguage];
  if (v37)
  {
    v38 = v37;
    v39 = sub_2232AAC04();
    v41 = v40;
  }

  else
  {
    v39 = *&v3[qword_28131D878];
    v41 = *&v3[qword_28131D878 + 8];
  }

  if (v41)
  {
    v42 = v39;
  }

  else
  {
    v42 = 0;
  }

  v43 = 0xE000000000000000;
  if (v41)
  {
    v43 = v41;
  }

  v227 = v42;
  v228 = v43;

  sub_2232AAF34();
  if (*(v19 + 16) && (v44 = sub_2232A2DE4(aBlock), (v45 & 1) != 0))
  {
    sub_2232606EC(*(v19 + 56) + 32 * v44, v229);
    sub_223293B28(aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081840, &qword_2232ACC88);
    if (swift_dynamicCast())
    {
      v46 = v227;
      goto LABEL_25;
    }
  }

  else
  {

    sub_223293B28(aBlock);
  }

  v46 = sub_223268790(MEMORY[0x277D84F90]);
LABEL_25:
  v213 = sub_223282038(v16, v46);

  if (v3[qword_28131D8D0] == 1)
  {
    if (v20[103] != -1)
    {
      swift_once();
    }

    v47 = sub_2232AAAD4();
    __swift_project_value_buffer(v47, qword_28131DB88);
    v48 = sub_2232AAAC4();
    v49 = sub_2232AAD84();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v41;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22325E000, v48, v49, "Sending empty JITLME for MUX enabled device for improving ASR performance.", v51, 2u);
      v52 = v51;
      v41 = v50;
      MEMORY[0x223DD8AC0](v52, -1, -1);
    }

    v208 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = [v16 inlineItemList];
    if (!v53)
    {
      v208 = MEMORY[0x277D84F90];
      goto LABEL_34;
    }

    v48 = v53;
    v208 = sub_2232AAD04();
  }

LABEL_34:
  if (v20[103] != -1)
  {
LABEL_136:
    swift_once();
  }

  v54 = sub_2232AAAD4();
  v55 = __swift_project_value_buffer(v54, qword_28131DB88);

  v212 = v55;
  v56 = sub_2232AAAC4();
  v57 = sub_2232AAD84();

  v58 = os_log_type_enabled(v56, v57);
  v211 = v41;
  v204 = v39;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = *&v3[qword_28131D8F0];
    v62 = sub_2232606A4(0, &qword_27D081838, 0x277D47390);
    v63 = MEMORY[0x223DD80A0](v61, v62);
    v41 = v64;
    v65 = sub_2232603D0(v63, v64, aBlock);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_22325E000, v56, v57, "activeUserInfo will look for matching home member from %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x223DD8AC0](v60, -1, -1);
    MEMORY[0x223DD8AC0](v59, -1, -1);
  }

  v227 = 0;
  v228 = 0;
  v225 = 0;
  v226 = 0;
  v66 = *&v3[qword_28131D8F0];
  v202 = v8;
  if (v66 >> 62)
  {
    v183 = v66;
    v184 = sub_2232AAFE4();
    v66 = v183;
    v67 = v184;
    if (!v184)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v67)
    {
      goto LABEL_69;
    }
  }

  v219 = v66 & 0xC000000000000001;
  v218 = qword_28131DD08;
  v68 = v66;
  swift_beginAccess();
  v69 = v68;
  v70 = 0;
  v215 = v68 & 0xFFFFFFFFFFFFFF8;
  v217 = (*(&v216 + 1) + 16);
  v39 = (*(&v216 + 1) + 8);
  *(&v216 + 1) = v68;
  *&v216 = v67;
  while (1)
  {
    if (v219)
    {
      v71 = MEMORY[0x223DD8300](v70, v69);
    }

    else
    {
      if (v70 >= *(v215 + 16))
      {
        goto LABEL_135;
      }

      v71 = *(v69 + 8 * v70 + 32);
    }

    v8 = v71;
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v73 = [v71 personaIdentifier];
    if (v73)
    {
      v74 = v73;
      v75 = sub_2232AAC04();
      v3 = v76;
    }

    else
    {
      v75 = 0;
      v3 = 0;
    }

    v77 = v221;
    v78 = v220;
    (*v217)(v220, &v222[v218], v221);
    v41 = sub_2232AA6D4();
    v80 = v79;
    (*v39)(v78, v77);
    if (!v3)
    {
      if (!v80)
      {
        goto LABEL_60;
      }

LABEL_40:

      goto LABEL_41;
    }

    if (!v80)
    {
      goto LABEL_40;
    }

    if (v75 == v41 && v3 == v80)
    {
      break;
    }

    v41 = sub_2232AB094();

    if (v41)
    {
      goto LABEL_60;
    }

LABEL_41:
    ++v70;
    v69 = *(&v216 + 1);
    if (v72 == v216)
    {
      goto LABEL_69;
    }
  }

LABEL_60:
  v81 = [v8 loggableSharedUserId];
  if (v81)
  {
    v82 = v81;
    v83 = sub_2232AAC04();
    v85 = v84;
  }

  else
  {
    v83 = 0;
    v85 = 0;
  }

  v227 = v83;
  v228 = v85;

  v86 = [v8 sharedUserId];
  if (v86)
  {
    v87 = v86;
    v88 = sub_2232AAC04();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0;
  }

  v225 = v88;
  v226 = v90;

  v91 = sub_2232AAAC4();
  v92 = sub_2232AAD84();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_22325E000, v91, v92, "activeUserInfo found matching home member", v93, 2u);
    MEMORY[0x223DD8AC0](v93, -1, -1);
  }

LABEL_69:
  v94 = objc_opt_self();
  v95 = swift_allocObject();
  *(v95 + 2) = &v225;
  *(v95 + 3) = &v227;
  *(v95 + 4) = v222;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_223293B7C;
  *(v96 + 24) = v95;
  aBlock[4] = sub_22327A988;
  aBlock[5] = v96;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223278834;
  aBlock[3] = &block_descriptor_19;
  v97 = _Block_copy(aBlock);

  v98 = [v94 newWithBuilder_];
  _Block_release(v97);
  v99 = v98;
  v100 = sub_2232AAAC4();
  v101 = sub_2232AAD84();

  v102 = os_log_type_enabled(v100, v101);
  v220 = v95;
  v222 = v99;
  if (v102)
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v223 = v104;
    *v103 = 136315650;
    v105 = v214;
    if (v99 && (v106 = [v99 sharedUserId]) != 0)
    {
      v107 = v106;
      v108 = sub_2232AAC04();
      v110 = v109;

      v111 = v108;
    }

    else
    {
      v110 = 0x80000002232AE110;
      v111 = 0xD000000000000010;
    }

    v112 = sub_2232603D0(v111, v110, &v223);

    *(v103 + 4) = v112;
    *(v103 + 12) = 2080;
    swift_beginAccess();
    if (v228)
    {
      v113 = v227;
    }

    else
    {
      v113 = 0xD000000000000019;
    }

    if (v228)
    {
      v114 = v228;
    }

    else
    {
      v114 = 0x80000002232AE130;
    }

    v115 = sub_2232603D0(v113, v114, &v223);

    *(v103 + 14) = v115;
    *(v103 + 22) = 2080;
    if (v99 && (v116 = [v99 personaId]) != 0)
    {
      v117 = v116;
      v118 = sub_2232AAC04();
      v120 = v119;

      v121 = v118;
    }

    else
    {
      v120 = 0x80000002232AE150;
      v121 = 0xD000000000000013;
    }

    v122 = sub_2232603D0(v121, v120, &v223);

    *(v103 + 24) = v122;
    _os_log_impl(&dword_22325E000, v100, v101, "activeUserInfo sharedUserId: %s with loggableSharedUserId:  %s and persona ID: %s", v103, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v104, -1, -1);
    MEMORY[0x223DD8AC0](v103, -1, -1);
  }

  else
  {

    v105 = v214;
  }

  v123 = v207;
  v124 = v206;
  v125 = v205;
  v209 = sub_2232AA5D4();
  v126 = [v105 modelOverrideURL];
  if (v126)
  {
    v127 = v210;
    v128 = v126;
    sub_2232A9494();

    v129 = 0;
  }

  else
  {
    v129 = 1;
    v127 = v210;
  }

  (*(v124 + 56))(v127, v129, 1, v123);
  sub_223293B88(v127, v125);
  if ((*(v124 + 48))(v125, 1, v123))
  {
    sub_223260EDC(v125, &qword_27D081828, &unk_2232ACC78);
    v203 = 0;
    v130 = 0;
  }

  else
  {
    v131 = v202;
    (*(v124 + 16))(v202, v125, v123);
    sub_223260EDC(v125, &qword_27D081828, &unk_2232ACC78);
    v203 = sub_2232A9484();
    v130 = v132;
    (*(v124 + 8))(v131, v123);
  }

  v133 = [v105 applicationName];
  if (v133)
  {
    v134 = v133;
    v202 = sub_2232AAC04();
    v136 = v135;
  }

  else
  {
    v202 = 0;
    v136 = 0;
  }

  LODWORD(v221) = [v105 detectUtterances];
  LODWORD(v219) = [v105 continuousListening];
  LODWORD(v218) = [v105 shouldHandleCapitalization];
  LODWORD(v217) = [v105 secureOfflineOnly];
  [v105 maximumRecognitionDuration];
  v138 = v137;
  v139 = [v105 recognitionOverrides];
  if (v139)
  {
    v140 = v139;
    v141 = sub_2232AAB94();

    v210 = sub_2232917C4(v141);
  }

  else
  {
    v210 = 0;
  }

  DWORD2(v216) = sub_22326B608(v213);
  LODWORD(v216) = [v105 emojiRecognition];
  LODWORD(v215) = [v105 autoPunctuation];
  LODWORD(v212) = [v105 shouldRecognizeCommands];
  v142 = [v105 interactionIdentifier];
  if (v142)
  {
    v143 = v142;
    v201 = sub_2232AAC04();
    v145 = v144;
  }

  else
  {
    v201 = 0;
    v145 = 0;
  }

  v146 = [v105 prefixText];
  if (v146)
  {
    v147 = v146;
    v200 = sub_2232AAC04();
    v149 = v148;
  }

  else
  {
    v200 = 0;
    v149 = 0;
  }

  v150 = [v105 postfixText];
  if (v150)
  {
    v151 = v150;
    v199 = sub_2232AAC04();
    v153 = v152;
  }

  else
  {
    v199 = 0;
    v153 = 0;
  }

  v154 = [v105 selectedText];
  if (v154)
  {
    v155 = v154;
    v198 = sub_2232AAC04();
    v157 = v156;
  }

  else
  {
    v198 = 0;
    v157 = 0;
  }

  LODWORD(v207) = [v105 shouldGenerateVoiceCommandCandidates];
  v158 = [v105 messagesContext];
  if (v158)
  {
    v159 = v158;
    sub_2232606A4(0, &qword_27D081830, 0x277CEF468);
    v160 = sub_2232AAD04();
  }

  else
  {
    v160 = 0;
  }

  v161 = v211;
  v209 = sub_2232AABF4();

  v206 = sub_2232AABF4();
  v205 = sub_2232AACF4();

  if (v130)
  {
    v162 = sub_2232AABF4();
  }

  else
  {
    v162 = 0;
  }

  v163 = v210;
  if (v136)
  {
    v164 = sub_2232AABF4();

    if (v163)
    {
      goto LABEL_118;
    }

LABEL_126:
    v210 = 0;
    if (!v161)
    {
      goto LABEL_127;
    }

LABEL_119:
    v165 = sub_2232AABF4();

    if (v145)
    {
      goto LABEL_120;
    }

LABEL_128:
    v166 = 0;
    if (!v149)
    {
      goto LABEL_129;
    }

LABEL_121:
    v167 = sub_2232AABF4();

    if (v153)
    {
      goto LABEL_122;
    }

LABEL_130:
    v168 = 0;
    if (!v157)
    {
      goto LABEL_131;
    }

LABEL_123:
    v169 = sub_2232AABF4();

    if (v160)
    {
      goto LABEL_124;
    }

LABEL_132:
    v170 = 0;
  }

  else
  {
    v164 = 0;
    if (!v210)
    {
      goto LABEL_126;
    }

LABEL_118:
    v210 = sub_2232AAB84();

    if (v161)
    {
      goto LABEL_119;
    }

LABEL_127:
    v165 = 0;
    if (!v145)
    {
      goto LABEL_128;
    }

LABEL_120:
    v166 = sub_2232AABF4();

    if (v149)
    {
      goto LABEL_121;
    }

LABEL_129:
    v167 = 0;
    if (!v153)
    {
      goto LABEL_130;
    }

LABEL_122:
    v168 = sub_2232AABF4();

    if (v157)
    {
      goto LABEL_123;
    }

LABEL_131:
    v169 = 0;
    if (!v160)
    {
      goto LABEL_132;
    }

LABEL_124:
    sub_2232606A4(0, &qword_27D081830, 0x277CEF468);
    v170 = sub_2232AACF4();
  }

  v211 = v170;
  v171 = objc_allocWithZone(MEMORY[0x277D24248]);
  v197 = v170;
  LOBYTE(v196) = v207;
  LOBYTE(v195) = 0;
  v194 = v169;
  v192 = v167;
  v193 = v168;
  v191 = v166;
  LOBYTE(v190) = v212;
  v189 = v165;
  BYTE3(v188) = v215;
  BYTE2(v188) = v216;
  LOWORD(v188) = *(&v216 + 7) & 0x100;
  *(&v216 + 1) = v168;
  v172 = v210;
  BYTE3(v187) = v217;
  BYTE2(v187) = v218;
  BYTE1(v187) = v219;
  LOBYTE(v187) = v221;
  v185 = v162;
  v186 = v164;
  v173 = v166;
  v174 = v162;
  v175 = v209;
  v176 = v167;
  v177 = v164;
  v178 = v206;
  v179 = v169;
  v180 = v165;
  v181 = v205;
  v221 = [v171 initWithRequestId:v209 inputOrigin:v206 speechRecognitionTaskName:v213 speechRecognitionMode:0 location:0 jitGrammar:v205 overrideModelPath:v138 applicationName:v185 detectUtterances:v186 continuousListening:v187 shouldHandleCapitalization:v210 secureOfflineOnly:v188 maximumRecognitionDuration:v189 recognitionOverrides:v190 shouldStoreAudioOnDevice:v191 deliverEagerPackage:0 enableEmojiRecognition:v192 enableAutoPunctuation:v193 UILanguage:v194 enableVoiceCommands:0 dictationUIInteractionId:v195 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:v196 powerContext:0 shouldStartAudioCapture:v222 audioCaptureStartHostTime:v197 audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:? messagesContext:?];

  return v221;
}