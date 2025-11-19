void sub_2232915C4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_2232AA6E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2[1])
    {
      v13 = *a2;

      v14 = sub_2232AABF4();
    }

    else
    {
      v14 = 0;
    }

    [a1 setSharedUserId_];

    if (a3[1])
    {
      v15 = *a3;

      v16 = sub_2232AABF4();
    }

    else
    {
      v16 = 0;
    }

    [a1 setLoggableSharedUserId_];

    v17 = qword_28131DD08;
    swift_beginAccess();
    (*(v9 + 16))(v12, a4 + v17, v8);
    sub_2232AA6D4();
    v19 = v18;
    (*(v9 + 8))(v12, v8);
    if (v19)
    {
      v20 = sub_2232AABF4();
    }

    else
    {
      v20 = 0;
    }

    [a1 setPersonaId_];
  }
}

unint64_t sub_2232917C4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081848, &qword_2232ACC90);
    v2 = sub_2232AB014();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_223293BF8(*(v1 + 48) + 40 * v17, v30);
    sub_2232606EC(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_223293BF8(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_223260EDC(v27, &unk_27D081850, &qword_2232ACC98);

      goto LABEL_22;
    }

    sub_2232606EC(v28 + 8, v26);
    sub_223260EDC(v27, &unk_27D081850, &qword_2232ACC98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_2232A2C98(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_223291AA4(uint64_t a1)
{
  v3 = sub_2232AA6B4();
  v51 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v7;
  v8 = sub_2232AA794();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2232A9504();
  v66 = *(v59 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v59);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2232AA904();
  v54 = v16;
  sub_2232AA954();
  v58 = sub_2232AA944();
  v57 = v17;
  v64 = v9;
  v56 = *(v9 + 16);
  v56(v12, v1 + qword_28131DCE0, v8);
  v65 = v4;
  v55 = *(v4 + 16);
  v55(v7, a1, v3);
  sub_2232AA934();
  v53 = sub_2232AA924();
  sub_223260E10(v1 + qword_28131D8A0, v69);
  v18 = *(v1 + qword_28131D838);
  v19 = *(v1 + qword_28131DD28);
  v61 = *(v1 + qword_28131DCF0);

  v62 = v19;

  v60 = AFDeviceSupportsMedoc();
  v20 = v70;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = type metadata accessor for MyriadDecisionMonitor();
  v68[3] = v27;
  v68[4] = &off_28368D388;
  v68[0] = v26;
  v28 = type metadata accessor for ServerAsrProcessor(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v68, v27);
  v33 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v51 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v38 = v12;
  v39 = v52;
  v67[4] = &off_28368D388;
  v40 = v51;
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointReceived) = 0;
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndPointSentToSpeech) = 0;
  v67[3] = v27;
  v67[0] = v37;
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serverEndpointIdentifiedMessage) = 0;
  v41 = (v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_assistantId);
  v42 = v54;
  *v41 = v63;
  v41[1] = v42;
  v43 = *(v66 + 16);
  v63 = v15;
  v44 = v15;
  v45 = v59;
  v43(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_sessionId, v44);
  v46 = (v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestId);
  v47 = v57;
  *v46 = v58;
  v46[1] = v47;
  v56((v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_userId), v38, v8);
  v55((v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_requestType), v39, v40);
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper) = v53;
  sub_223260E10(v67, v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_myriadMonitor);
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_bufferedResultCandidateHandler) = v18;
  v48 = qword_28131DA80;

  swift_unknownObjectRetain();
  if (v48 != -1)
  {
    swift_once();
  }

  v49 = qword_28131DD40;

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  (*(v65 + 8))(v39, v40);
  (*(v64 + 8))(v38, v8);
  (*(v66 + 8))(v63, v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_instrumentationUtil) = v49;
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_muxRequestContext) = v62;
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isIdentityScoreConsumptionEnabled) = v61;
  *(v31 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_isMedocEnabled) = v60;
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  return v31;
}

void sub_223292164(void *a1)
{
  if (*(v1 + qword_28131D8D0) == 1 && *(v1 + qword_28131DD18) == 1)
  {
    if (*(v1 + qword_28131DD20))
    {
      v2 = *(v1 + qword_28131DD00);
      if (v2 && (type metadata accessor for AssistantSpeechRecognizerResponseHandler(), (v4 = swift_dynamicCastClass()) != 0))
      {
        v5 = *(v4 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard);
        oslog = v5;

        v6 = v2;
        sub_2232873BC(a1, v5);
      }

      else
      {
        v11 = qword_28131D338;

        if (v11 != -1)
        {
          swift_once();
        }

        v12 = sub_2232AAAD4();
        __swift_project_value_buffer(v12, qword_28131DB88);
        oslog = sub_2232AAAC4();
        v13 = sub_2232AAD94();
        if (os_log_type_enabled(oslog, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_22325E000, oslog, v13, "#AsrOnServer Current speechResponseHandler is not for Assistant request", v14, 2u);
          MEMORY[0x223DD8AC0](v14, -1, -1);
        }
      }

      goto LABEL_12;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AAAD4();
    __swift_project_value_buffer(v15, qword_28131DB88);
    oslog = sub_2232AAAC4();
    v8 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process AsrResultCandidateMessage";
      goto LABEL_11;
    }
  }

  else
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
      v10 = "#AsrOnServer ASRBridge should not be handling AsrResultCandidateMessage messages unless both MUX is enabled and the request is being handled as asrOnServer";
LABEL_11:
      _os_log_impl(&dword_22325E000, oslog, v8, v10, v9, 2u);
      MEMORY[0x223DD8AC0](v9, -1, -1);
    }
  }

LABEL_12:
}

void sub_223292454()
{
  v1 = v0;
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v2 = sub_2232AAAD4();
  __swift_project_value_buffer(v2, qword_28131DB88);
  v3 = sub_2232AAAC4();
  v4 = sub_2232AAD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22325E000, v3, v4, "AsrCandidateRequestProcessor transitioning to being the active request processor", v5, 2u);
    MEMORY[0x223DD8AC0](v5, -1, -1);
  }

  v6 = *(v0 + qword_28131DD00);
  if (v6)
  {
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0xC0);
    v8 = v6;
    v7();

    *(v1 + qword_28131DCF8) = 1;
  }

  else
  {
    oslog = sub_2232AAAC4();
    v9 = sub_2232AAD94();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22325E000, oslog, v9, "SpeechRecognizerResponseHandler is nil, will not be able to submit any cached partials", v10, 2u);
      MEMORY[0x223DD8AC0](v10, -1, -1);
    }
  }
}

void sub_2232926C4()
{
  if (!qword_28131DAC0)
  {
    sub_2232AA6B4();
    v0 = sub_2232AAEB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28131DAC0);
    }
  }
}

void sub_223292724()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD84();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22325E000, oslog, v1, "ASRBridge no-op for StartChildSpeechRequestMessage", v2, 2u);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

void sub_22329280C(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v55 = a3;
  v6 = sub_2232AA6B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081808, "H6");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  if (*(v3 + qword_28131DD18))
  {
LABEL_2:
    if (*(v3 + qword_28131DD20))
    {

      sub_2232832EC(a1, a2, v55);

      return;
    }

    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v26 = sub_2232AAAD4();
    __swift_project_value_buffer(v26, qword_28131DB88);
    v27 = a1;
    v28 = sub_2232AAAC4();
    v29 = sub_2232AAD94();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = a2;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v32;
      *v31 = 136315138;
      v33 = [v27 resultId];
      if (v33)
      {
        v34 = v33;
        v35 = sub_2232AAC04();
        v37 = v36;
      }

      else
      {
        v35 = 7104878;
        v37 = 0xE300000000000000;
      }

      v51 = sub_2232603D0(v35, v37, &v56);

      *(v31 + 4) = v51;
      _os_log_impl(&dword_22325E000, v28, v29, "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the RC. rcId: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x223DD8AC0](v32, -1, -1);
      MEMORY[0x223DD8AC0](v31, -1, -1);

      a2 = v30;
      if (!v30)
      {
        return;
      }

LABEL_21:
      a2(0, 0);
      return;
    }

LABEL_20:

    if (!a2)
    {
      return;
    }

    goto LABEL_21;
  }

  v53 = a1;
  v54 = a2;
  v22 = qword_28131DD10;
  swift_beginAccess();
  (*(v7 + 104))(v21, *MEMORY[0x277D5CF20], v6);
  (*(v7 + 56))(v21, 0, 1, v6);
  v23 = *(v11 + 48);
  sub_223293AB8(v3 + v22, v14);
  sub_223293AB8(v21, &v14[v23]);
  v24 = *(v7 + 48);
  if (v24(v14, 1, v6) == 1)
  {
    sub_223260EDC(v21, &unk_27D081810, &unk_2232ACC60);
    v25 = v24(&v14[v23], 1, v6);
    a1 = v53;
    if (v25 == 1)
    {
      sub_223260EDC(v14, &unk_27D081810, &unk_2232ACC60);
      a2 = v54;
      goto LABEL_2;
    }

    goto LABEL_14;
  }

  sub_223293AB8(v14, v19);
  if (v24(&v14[v23], 1, v6) == 1)
  {
    sub_223260EDC(v21, &unk_27D081810, &unk_2232ACC60);
    (*(v7 + 8))(v19, v6);
    a1 = v53;
LABEL_14:
    sub_223260EDC(v14, &qword_27D081808, "H6");
    a2 = v54;
    goto LABEL_15;
  }

  (*(v7 + 32))(v10, &v14[v23], v6);
  sub_22326C240(&qword_28131DAC8, MEMORY[0x277D5CF58]);
  v48 = sub_2232AABE4();
  v49 = *(v7 + 8);
  v49(v10, v6);
  sub_223260EDC(v21, &unk_27D081810, &unk_2232ACC60);
  v49(v19, v6);
  sub_223260EDC(v14, &unk_27D081810, &unk_2232ACC60);
  a1 = v53;
  a2 = v54;
  if (v48)
  {
    goto LABEL_2;
  }

LABEL_15:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v38 = sub_2232AAAD4();
  __swift_project_value_buffer(v38, qword_28131DB88);
  v39 = a1;
  v28 = sub_2232AAAC4();
  v40 = sub_2232AAD94();

  if (!os_log_type_enabled(v28, v40))
  {
    goto LABEL_20;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v56 = v42;
  *v41 = 136315138;
  v43 = [v39 resultId];
  if (v43)
  {
    v44 = v43;
    v45 = sub_2232AAC04();
    v47 = v46;
  }

  else
  {
    v45 = 7104878;
    v47 = 0xE300000000000000;
  }

  v50 = sub_2232603D0(v45, v47, &v56);

  *(v41 + 4) = v50;
  _os_log_impl(&dword_22325E000, v28, v40, "#AsrOnServer Unsupported path for handling server RC. Either asrOnServer must be true or requestType must be uos. rcId: %s", v41, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  MEMORY[0x223DD8AC0](v42, -1, -1);
  MEMORY[0x223DD8AC0](v41, -1, -1);

  a2 = v54;
  if (v54)
  {
    goto LABEL_21;
  }
}

void sub_223292F24(void *a1, void (*a2)(void, void), uint64_t *a3)
{
  if (*(v3 + qword_28131D8D0) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v11 = sub_2232AAAD4();
    __swift_project_value_buffer(v11, qword_28131DB88);
    v12 = a1;
    v13 = sub_2232AAAC4();
    v14 = sub_2232AAD94();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_42;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_22325E000, v13, v14, "#AsrOnServer MUXResultCandidate received when MUX is disabled.  %@", v15, 0xCu);
    sub_223260EDC(v16, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v16, -1, -1);
    v18 = v15;
    goto LABEL_41;
  }

  if (*(v3 + qword_28131DD18) != 1)
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v19 = sub_2232AAAD4();
    __swift_project_value_buffer(v19, qword_28131DB88);
    v20 = a1;
    v13 = sub_2232AAAC4();
    v21 = sub_2232AAD94();

    if (!os_log_type_enabled(v13, v21))
    {
      goto LABEL_42;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = v23;
    *v22 = 136315138;
    v24 = [v20 rcID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_2232AAC04();
      v28 = v27;
    }

    else
    {
      v26 = 7104878;
      v28 = 0xE300000000000000;
    }

    v40 = sub_2232603D0(v26, v28, &v51);

    *(v22 + 4) = v40;
    v41 = "#AsrOnServer Unsupported path for handling server RC. rcId: %s";
    goto LABEL_40;
  }

  if (*(v3 + qword_28131DD20))
  {
    v7 = *(v3 + qword_28131DD00);
    if (v7 && (type metadata accessor for AssistantSpeechRecognizerResponseHandler(), (v8 = swift_dynamicCastClass()) != 0))
    {
      v9 = v8;
      if (*(v8 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_hasfirstVoiceIdScoreCardArrived))
      {

        v10 = v7;
      }

      else
      {
        v42 = qword_28131D338;

        v43 = v7;
        if (v42 != -1)
        {
          swift_once();
        }

        v44 = sub_2232AAAD4();
        __swift_project_value_buffer(v44, qword_28131DB88);
        v45 = sub_2232AAAC4();
        v46 = sub_2232AAD94();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_22325E000, v45, v46, "First Voice Id Score card has not arrived yet. The unknown user shall be used for this result candidate.", v47, 2u);
          MEMORY[0x223DD8AC0](v47, -1, -1);
        }
      }

      v48 = *(v9 + OBJC_IVAR____TtC9ASRBridge40AssistantSpeechRecognizerResponseHandler_voiceIdScoreCard);
      oslog = v48;
      sub_223285A6C(a1, v48, a2, a3);
    }

    else
    {
      v29 = qword_28131D338;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_2232AAAD4();
      __swift_project_value_buffer(v30, qword_28131DB88);
      oslog = sub_2232AAAC4();
      v31 = sub_2232AAD94();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22325E000, oslog, v31, "#AsrOnServer Current speechResponseHandler is not for Assistant request", v32, 2u);
        MEMORY[0x223DD8AC0](v32, -1, -1);
      }
    }

    return;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v33 = sub_2232AAAD4();
  __swift_project_value_buffer(v33, qword_28131DB88);
  v34 = a1;
  v13 = sub_2232AAAC4();
  v21 = sub_2232AAD94();

  if (os_log_type_enabled(v13, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = v23;
    *v22 = 136315138;
    v35 = [v34 rcID];
    if (v35)
    {
      v36 = v35;
      v37 = sub_2232AAC04();
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
    }

    v49 = sub_2232603D0(v37, v39, &v51);

    *(v22 + 4) = v49;
    v41 = "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the RC. rcId: %s";
LABEL_40:
    _os_log_impl(&dword_22325E000, v13, v21, v41, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x223DD8AC0](v23, -1, -1);
    v18 = v22;
LABEL_41:
    MEMORY[0x223DD8AC0](v18, -1, -1);
  }

LABEL_42:

  if (a2)
  {
    a2(0, 0);
  }
}

void sub_223293574(void *a1, void (*a2)(void, void), uint64_t a3)
{
  if (*(v3 + qword_28131DD20))
  {
    v7 = *(v3 + qword_28131DD20);

    sub_2232893DC(a1, a2, a3);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v8 = sub_2232AAAD4();
    __swift_project_value_buffer(v8, qword_28131DB88);
    v9 = a1;
    v10 = sub_2232AAAC4();
    v11 = sub_2232AAD94();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = [v9 refId];
      if (v14)
      {
        v15 = v14;
        v16 = sub_2232AAC04();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = sub_2232603D0(v16, v18, &v20);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_22325E000, v10, v11, "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the SASSpeechServerEndpointIdentified. refId: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x223DD8AC0](v13, -1, -1);
      MEMORY[0x223DD8AC0](v12, -1, -1);
    }

    if (a2)
    {
      a2(0, 0);
    }
  }
}

void sub_223293790(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = *(v3 + qword_28131DD20);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC9ASRBridge18ServerAsrProcessor_serviceHelper);
    if ([v8 respondsToSelector_])
    {
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a2;
      v10[4] = a3;
      v10[5] = a1;
      v25[4] = sub_223293AAC;
      v25[5] = v10;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 1107296256;
      v25[2] = sub_22328BC90;
      v25[3] = &block_descriptor_4;
      v11 = _Block_copy(v25);

      swift_unknownObjectRetain();

      sub_22328A370(a2);
      v12 = a1;

      [v8 handleSpeechRecognized:v12 completion:v11];
      _Block_release(v11);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v13 = sub_2232AAAD4();
    __swift_project_value_buffer(v13, qword_28131DB88);
    v14 = a1;
    v15 = sub_2232AAAC4();
    v16 = sub_2232AAD94();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      v19 = [v14 refId];
      if (v19)
      {
        v20 = v19;
        v21 = sub_2232AAC04();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v24 = sub_2232603D0(v21, v23, v25);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_22325E000, v15, v16, "#AsrOnServer serverAsrResultCandidateProcessor is nil. Cannot process the SASSpeechRecognized. refId: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DD8AC0](v18, -1, -1);
      MEMORY[0x223DD8AC0](v17, -1, -1);
    }

    if (a2)
    {
      a2(0, 0);
    }
  }
}

uint64_t sub_223293AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223293B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081828, &unk_2232ACC78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223293C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223293F54(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unsigned int *a6)
{
  v10 = sub_2232AAC04();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = a1;
  sub_223296A30(v10, v12, v14, a6);
}

uint64_t sub_223294164(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, unsigned int *a7, char a8)
{
  v14 = sub_2232AAC04();
  v16 = v15;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a1;
  sub_223296C60(v14, v16, v18, v19, a7, a8);
}

void sub_223294228(void *a1, uint64_t a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v5 = sub_2232AAAD4();
  __swift_project_value_buffer(v5, qword_28131DB88);
  v6 = v2;
  v7 = sub_2232AAAC4();
  v8 = sub_2232AAD84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2232603D0(*&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId], *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8], &v14);
    _os_log_impl(&dword_22325E000, v7, v8, "Going to stop ASR for requestId = %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DD8AC0](v10, -1, -1);
    MEMORY[0x223DD8AC0](v9, -1, -1);
  }

  v11 = *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId];
  v12 = *&v6[OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8];
  v13 = sub_2232AABF4();
  [a1 stopSpeechRecognitionTaskWithReason:a2 requestId:v13];
}

uint64_t sub_2232943C4(uint64_t a1, uint64_t a2)
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
  sub_2232AA5A4();
  v14 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v15 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232AA594();
  v16 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, a2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_2232AA5C4();
  v19 = a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId;
  v20 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId);
  v21 = *(v19 + 8);

  return sub_2232AA5B4();
}

void sub_2232946E8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v113 = a5;
  v100 = a7;
  v106 = a4;
  v107 = a3;
  v108 = a2;
  v115 = a1;
  v8 = sub_2232AA724();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v96 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v97 = &v95 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v95 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v103 = &v95 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v98 = &v95 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v95 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v102 = &v95 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v104 = &v95 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v95 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v95 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v95 - v33;
  v35 = [objc_allocWithZone(MEMORY[0x277CEF278]) init];
  if (a6)
  {
    v36 = [a6 commandGrammarParsePackage];
    if (v36)
    {
      v37 = v36;
      [v35 setCommandGrammarParsePackage_];
    }
  }

  v38 = v9[13];
  v105 = *MEMORY[0x277D5D218];
  v109 = v38;
  v110 = v9 + 13;
  (v38)(v34);
  sub_223295FEC();
  sub_2232AACD4();
  sub_2232AACD4();
  if (v118 == v116 && v119 == v117)
  {
    v39 = 1;
  }

  else
  {
    v39 = sub_2232AB094();
  }

  v111 = v9[1];
  v112 = v9 + 1;
  v111(v34, v8);

  if (v39)
  {
    MEMORY[0x28223BE20](v40);
    v42 = v107;
    v41 = v108;
    *(&v95 - 6) = v114;
    *(&v95 - 5) = v41;
    v43 = v106;
    *(&v95 - 4) = v42;
    *(&v95 - 3) = v43;
    *(&v95 - 2) = v113;
    *(&v95 - 1) = v35;
    v44 = v35;
    objc_allocWithZone(sub_2232A9C04());
  }

  else
  {
    v109(v32, *MEMORY[0x277D5D208], v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v118 == v116 && v119 == v117)
    {
      v111(v32, v8);

      v44 = v35;
    }

    else
    {
      v46 = sub_2232AB094();
      v111(v32, v8);

      v44 = v35;
      if ((v46 & 1) == 0)
      {
        v109(v29, *MEMORY[0x277D5D210], v8);
        sub_2232AACD4();
        sub_2232AACD4();
        v42 = v107;
        if (v118 == v116 && v119 == v117)
        {
          v111(v29, v8);

          v41 = v108;
        }

        else
        {
          v68 = sub_2232AB094();
          v111(v29, v8);

          v41 = v108;
          if ((v68 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        MEMORY[0x28223BE20](v61);
        v69 = v113;
        *(&v95 - 6) = v114;
        *(&v95 - 5) = v41;
        *(&v95 - 4) = v42;
        *(&v95 - 3) = v69;
        *(&v95 - 2) = v35;
        objc_allocWithZone(sub_2232A9C04());
        goto LABEL_15;
      }
    }

    MEMORY[0x28223BE20](v45);
    v47 = v113;
    v42 = v107;
    v41 = v108;
    *(&v95 - 6) = v114;
    *(&v95 - 5) = v41;
    *(&v95 - 4) = v42;
    *(&v95 - 3) = v47;
    *(&v95 - 2) = v44;
    objc_allocWithZone(sub_2232A9C04());
  }

LABEL_15:
  v48 = sub_2232A9B74();
  if (!v48)
  {
LABEL_46:
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v70 = sub_2232AAAD4();
    __swift_project_value_buffer(v70, qword_28131DB88);

    v71 = sub_2232AAAC4();
    v72 = sub_2232AAD94();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v118 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_2232603D0(v41, v42, &v118);
      _os_log_impl(&dword_22325E000, v71, v72, "Failed to create DictationAsrResultMessage for requestId: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x223DD8AC0](v74, -1, -1);
      MEMORY[0x223DD8AC0](v73, -1, -1);
    }

    goto LABEL_92;
  }

  v49 = v44;
  v50 = v114;
  v51 = v48;
  v52 = *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32);
  __swift_project_boxed_opaque_existential_1((v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher), *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24));
  v107 = v51;
  sub_2232AA624();
  v53 = *(v50 + OBJC_IVAR____TtC9ASRBridge40DictationSpeechRecognizerResponseHandler_dictationOptions);
  if ([v53 shouldRecognizeCommands])
  {
    v54 = v104;
    v109(v104, v105, v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v118 == v116 && v119 == v117)
    {
      v111(v54, v8);

      v44 = v49;
      goto LABEL_23;
    }

    v55 = sub_2232AB094();
    v111(v54, v8);

    v44 = v49;
    if (v55)
    {
LABEL_23:
      v56 = *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if (v113)
      {
        if ([*(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper) respondsToSelector_])
        {
          v57 = v113;
          v58 = v44;
          v59 = sub_2232AABF4();
          [v56 didRecognizePartialPackage:v57 nluResult:v58 sessionUUID:v59];
LABEL_26:

          return;
        }

        goto LABEL_91;
      }

      if ([*(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper) respondsToSelector_])
      {
        if (v106)
        {
          sub_223296050();
          v62 = v44;
          v63 = sub_2232AACF4();
        }

        else
        {
          v84 = v44;
          v63 = 0;
        }

        v67 = sub_2232AABF4();
        [v56 didRecognizeTokens:v63 nluResult:v44 sessionUUID:v67];

LABEL_66:
        goto LABEL_67;
      }

      goto LABEL_91;
    }

    v64 = v102;
    v109(v102, *MEMORY[0x277D5D208], v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v118 == v116 && v119 == v117)
    {
      v111(v64, v8);

      goto LABEL_52;
    }

    v75 = sub_2232AB094();
    v111(v64, v8);

    if (v75)
    {
LABEL_52:
      v76 = *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if ([v76 respondsToSelector_])
      {
        v63 = v49;
        v67 = sub_2232AABF4();
        [v76 didRecognizePackage:v113 nluResult:v63 sessionUUID:v67];

LABEL_67:
        return;
      }

      goto LABEL_91;
    }

    v78 = *MEMORY[0x277D5D210];
    v79 = v99;
    v109(v99, v78, v8);
    sub_2232AACD4();
    sub_2232AACD4();
    if (v118 == v116 && v119 == v117)
    {
      v111(v79, v8);

      v80 = v100;
      if (v100)
      {
        goto LABEL_79;
      }

LABEL_70:
      v86 = v98;
      v109(v98, v78, v8);
      sub_2232AACD4();
      sub_2232AACD4();
      if (v118 != v116 || v119 != v117)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v85 = sub_2232AB094();
    v111(v79, v8);

    v80 = v100;
    if ((v85 & 1) == 0 || (v100 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_79:
    if (v113)
    {
      v90 = *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if ([v90 respondsToSelector_])
      {
        v57 = v113;
        v58 = v44;
        v59 = sub_2232AABF4();
        [v90 didRecognizeVoiceCommandCandidatePackage:v57 nluResult:v58 sessionUUID:v59];
        goto LABEL_26;
      }
    }

    goto LABEL_91;
  }

  if ([v53 shouldClassifyIntent])
  {

    return;
  }

  v60 = v103;
  v109(v103, v105, v8);
  sub_2232AACD4();
  sub_2232AACD4();
  v44 = v49;
  if (v118 == v116 && v119 == v117)
  {
    v111(v60, v8);
  }

  else
  {
    v65 = sub_2232AB094();
    v111(v60, v8);

    if ((v65 & 1) == 0)
    {
      v77 = v101;
      v109(v101, *MEMORY[0x277D5D208], v8);
      sub_2232AACD4();
      sub_2232AACD4();
      if (v118 == v116 && v119 == v117)
      {
        v111(v77, v8);
      }

      else
      {
        v81 = sub_2232AB094();
        v111(v77, v8);

        if ((v81 & 1) == 0)
        {
          v87 = *MEMORY[0x277D5D210];
          v88 = v97;
          v109(v97, v87, v8);
          sub_2232AACD4();
          sub_2232AACD4();
          if (v118 == v116 && v119 == v117)
          {
            v111(v88, v8);

            v80 = v100;
            if (v100)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v89 = sub_2232AB094();
            v111(v88, v8);

            v80 = v100;
            if (v89 & 1) != 0 && (v100)
            {
              goto LABEL_79;
            }
          }

          v86 = v96;
          v109(v96, v87, v8);
          sub_2232AACD4();
          sub_2232AACD4();
          if (v118 != v116 || v119 != v117)
          {
LABEL_85:
            v91 = sub_2232AB094();
            v111(v86, v8);

            if ((v91 & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

LABEL_84:
          v111(v86, v8);

LABEL_86:
          if ((v80 & 1) == 0)
          {
            if (v113)
            {
              v92 = *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
              if ([v92 respondsToSelector_])
              {
                v93 = v113;
                v94 = sub_2232AABF4();
                [v92 didRecognizeFinalResultCandidatePackage:v93 sessionUUID:v94];

                return;
              }
            }

            goto LABEL_91;
          }

LABEL_87:

          return;
        }
      }

      v82 = *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if ([v82 respondsToSelector_])
      {
        v83 = sub_2232AABF4();
        [v82 didRecognizePackage:v113 sessionUUID:v83];

        return;
      }

      goto LABEL_91;
    }
  }

  v66 = *(v114 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
  if ([v66 respondsToSelector_])
  {
    v63 = v106;
    if (v106)
    {
      sub_223296050();
      v63 = sub_2232AACF4();
    }

    v67 = sub_2232AABF4();
    [v66 didRecognizeTokens:v63 sessionUUID:v67];

    goto LABEL_66;
  }

LABEL_91:

LABEL_92:
}

uint64_t sub_22329588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v35 = a6;
  v36 = a7;
  v34[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0818B0, "(6");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v34 - v18;
  v20 = *MEMORY[0x277D5CDD8];
  v21 = sub_2232AA644();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  sub_2232A9BD4();
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v24 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9BA4();
  v25 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v26 = sub_2232A9504();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15, a2 + v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  sub_2232A9BF4();

  sub_2232A9BE4();
  v28 = *MEMORY[0x277D5D218];
  v29 = sub_2232AA724();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v11, v28, v29);
  (*(v30 + 56))(v11, 0, 1, v29);
  sub_2232A9B94();

  sub_2232A9BB4();
  v31 = v35;
  sub_2232A9BC4();
  v32 = v36;
  return sub_2232A9B84();
}

uint64_t sub_223295BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unsigned int *a7)
{
  v36 = a7;
  v37 = a6;
  v35[1] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0818B0, "(6");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v35 - v19;
  v21 = *MEMORY[0x277D5CDD8];
  v22 = sub_2232AA644();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v20, v21, v22);
  (*(v23 + 56))(v20, 0, 1, v22);
  sub_2232A9BD4();
  v24 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId);
  v25 = *(a2 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_assistantId + 8);

  sub_2232A9BA4();
  v26 = OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_sessionId;
  v27 = sub_2232A9504();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v16, a2 + v26, v27);
  (*(v28 + 56))(v16, 0, 1, v27);
  sub_2232A9BF4();

  sub_2232A9BE4();
  v29 = *v36;
  v30 = sub_2232AA724();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v12, v29, v30);
  (*(v31 + 56))(v12, 0, 1, v30);
  sub_2232A9B94();
  v32 = a5;
  sub_2232A9BC4();
  v33 = v37;
  return sub_2232A9B84();
}

id sub_223295F08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictationSpeechRecognizerResponseHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DictationSpeechRecognizerResponseHandler()
{
  result = qword_27D081898;
  if (!qword_27D081898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_223295FEC()
{
  result = qword_27D0818A8;
  if (!qword_27D0818A8)
  {
    sub_2232AA724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0818A8);
  }

  return result;
}

unint64_t sub_223296050()
{
  result = qword_28131D1E0;
  if (!qword_28131D1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1E0);
  }

  return result;
}

void sub_2232960E0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_2232AA724();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v13 = sub_2232AAAD4();
  v29 = __swift_project_value_buffer(v13, qword_28131DB88);
  v14 = sub_2232AAAC4();
  v15 = sub_2232AAD84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v9;
    v17 = v8;
    v18 = a1;
    v19 = a2;
    v20 = v4;
    v21 = a3;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22325E000, v14, v15, "Received partial result tokens for dictation request", v22, 2u);
    v23 = v22;
    a3 = v21;
    v4 = v20;
    a2 = v19;
    a1 = v18;
    v8 = v17;
    v9 = v16;
    MEMORY[0x223DD8AC0](v23, -1, -1);
  }

  v24 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v24 || (sub_2232AB094() & 1) != 0)
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D5D218], v8);
    sub_2232946E8(v12, a1, a2, a3, 0, 0, 0);
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v29 = sub_2232AAAC4();
    v25 = sub_2232AAD94();
    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22325E000, v29, v25, "Response requestId does not match current requestId", v26, 2u);
      MEMORY[0x223DD8AC0](v26, -1, -1);
    }

    v27 = v29;
  }
}

void sub_2232963CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_2232AA724();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  v35 = __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = sub_2232AAAC4();
  v16 = sub_2232AAD84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = a1;
    v18 = v11;
    v19 = v10;
    v20 = a2;
    v21 = a3;
    v22 = v5;
    v23 = a4;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22325E000, v15, v16, "Received partial result package for dictation request", v24, 2u);
    v25 = v24;
    a4 = v23;
    v5 = v22;
    a3 = v21;
    a2 = v20;
    v10 = v19;
    v11 = v18;
    a1 = v17;
    MEMORY[0x223DD8AC0](v25, -1, -1);
  }

  v26 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v26 || (sub_2232AB094() & 1) != 0)
  {
    v27 = v36;
    (*(v11 + 104))(v36, *MEMORY[0x277D5D218], v10);
    v28 = [a3 recognition];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 oneBestTokenList];

      if (v30)
      {
        sub_223296050();
        v31 = sub_2232AAD04();
      }

      else
      {
        v31 = 0;
      }

      sub_2232946E8(v27, a1, a2, v31, a3, a4, 0);

      (*(v11 + 8))(v27, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = sub_2232AAAC4();
    v32 = sub_2232AAD94();
    if (os_log_type_enabled(v36, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22325E000, v36, v32, "Response requestId does not match current requestId", v33, 2u);
      MEMORY[0x223DD8AC0](v33, -1, -1);
    }

    v34 = v36;
  }
}

void sub_22329673C(NSObject *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_2232AA724();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  v30 = __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = sub_2232AAAC4();
  v16 = sub_2232AAD84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = v9;
    v19 = a2;
    v20 = a3;
    v21 = v5;
    v22 = a4;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22325E000, v15, v16, "Received partial result for dictation request with metadata", v23, 2u);
    v24 = v23;
    a4 = v22;
    v5 = v21;
    a3 = v20;
    a2 = v19;
    v9 = v18;
    v10 = v17;
    MEMORY[0x223DD8AC0](v24, -1, -1);
  }

  v25 = v31;
  v26 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == v31 && *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v26 || (sub_2232AB094() & 1) != 0)
  {
    (*(v10 + 104))(v13, *MEMORY[0x277D5D218], v9);
    sub_2232946E8(v13, v25, a2, a3, 0, a4, 0);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v31 = sub_2232AAAC4();
    v27 = sub_2232AAD94();
    if (os_log_type_enabled(v31, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22325E000, v31, v27, "Response requestId does not match current requestId", v28, 2u);
      MEMORY[0x223DD8AC0](v28, -1, -1);
    }

    v29 = v31;
  }
}

void sub_223296A30(uint64_t a1, void *a2, void *a3, unsigned int *a4)
{
  v9 = sub_2232AA724();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v14 || (sub_2232AB094() & 1) != 0)
  {
    (*(v10 + 104))(v13, *a4, v9);
    sub_2232946E8(v13, a1, a2, 0, a3, 0, 0);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AAAD4();
    __swift_project_value_buffer(v15, qword_28131DB88);
    v20 = sub_2232AAAC4();
    v16 = sub_2232AAD94();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22325E000, v20, v16, "Response requestId does not match current requestId", v17, 2u);
      MEMORY[0x223DD8AC0](v17, -1, -1);
    }

    v18 = v20;
  }
}

void sub_223296C60(uint64_t a1, void *a2, void *a3, void *a4, unsigned int *a5, char a6)
{
  v13 = sub_2232AA724();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v6 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a1 && *(v6 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a2;
  if (v18 || (sub_2232AB094() & 1) != 0)
  {
    (*(v14 + 104))(v17, *a5, v13);
    sub_2232946E8(v17, a1, a2, 0, a3, a4, a6 & 1);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v19 = sub_2232AAAD4();
    __swift_project_value_buffer(v19, qword_28131DB88);
    v24 = sub_2232AAAC4();
    v20 = sub_2232AAD94();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22325E000, v24, v20, "Response requestId does not match current requestId", v21, 2u);
      MEMORY[0x223DD8AC0](v21, -1, -1);
    }

    v22 = v24;
  }
}

void sub_223296EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && ((v5 = v4, *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId) == a2) ? (v7 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId + 8) == a3) : (v7 = 0), v7 || (v8 = *(v4 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_requestId), v9 = a4, v10 = sub_2232AB094(), a4 = v9, (v10 & 1) != 0)))
  {
    v34 = a1;
    if (qword_28131D338 != -1)
    {
      v33 = a4;
      swift_once();
      a4 = v33;
    }

    v36 = a4;
    v11 = sub_2232AAAD4();
    __swift_project_value_buffer(v11, qword_28131DB88);
    v12 = sub_2232AAAC4();
    v13 = sub_2232AAD84();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22325E000, v12, v13, "Completed local dictation recognition", v14, 2u);
      MEMORY[0x223DD8AC0](v14, -1, -1);
    }

    MEMORY[0x28223BE20](v15);
    v16 = objc_allocWithZone(sub_2232A9D54());
    v17 = sub_2232A9D44();
    if (!v17)
    {
      v29 = sub_2232AAAC4();
      v30 = sub_2232AAD94();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22325E000, v29, v30, "Could not create EndDictationRequestMessage msg", v31, 2u);
        MEMORY[0x223DD8AC0](v31, -1, -1);
      }

LABEL_33:

      return;
    }

    v18 = v17;
    v19 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher), *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_messagePublisher + 24));
    sub_2232AA624();
    if (!v36)
    {
LABEL_16:
      v23 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_serviceHelper);
      if (([v23 respondsToSelector_] & 1) == 0)
      {

        return;
      }

      v24 = [*(v5 + OBJC_IVAR____TtC9ASRBridge40DictationSpeechRecognizerResponseHandler_dictationOptions) secureOfflineOnly];
      if (v36)
      {
        v25 = sub_2232A9474();
      }

      else
      {
        v25 = 0;
      }

      v29 = v35;
      v32 = sub_2232AABF4();
      if (v35)
      {
        v29 = sub_2232AAB84();
      }

      [v23 didCompleteRecognitionWithError:v25 secureOfflineOnlyRecognition:v24 sessionUUID:v32 statistics:v29];

      goto LABEL_33;
    }

    v20 = sub_2232A9474();
    v21 = *(v5 + OBJC_IVAR____TtC9ASRBridge31SpeechRecognizerResponseHandler_instrumentationUtil);
    v22 = [v20 code];
    if (v22 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v22 <= 0x7FFFFFFF)
    {
      sub_22327FB30(v22);

      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v26 = sub_2232AAAD4();
    __swift_project_value_buffer(v26, qword_28131DB88);
    v37 = sub_2232AAAC4();
    v27 = sub_2232AAD94();
    if (os_log_type_enabled(v37, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22325E000, v37, v27, "Response requestId does not match current requestId", v28, 2u);
      MEMORY[0x223DD8AC0](v28, -1, -1);
    }
  }
}

uint64_t AsrBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v52 = a6;
  v53 = a3;
  v45 = a5;
  v54 = a4;
  v48 = a1;
  v49 = a2;
  v47 = sub_2232AAAD4();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2232AAAB4();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 48);
  v15 = *(v6 + 52);
  v16 = swift_allocObject();
  v17 = qword_28131DB58;
  v18 = sub_2232A9504();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  v19 = qword_28131DB38;
  *(v16 + qword_28131DB38) = 0;
  *(v16 + qword_28131DB80) = MEMORY[0x277D84F90];
  v20 = v16 + qword_28131DB68;
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = qword_28131DB20;
  v22 = sub_2232AA794();
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  *(v16 + qword_28131DB70) = 0;
  v23 = (v16 + qword_28131DB48);
  *v23 = 0;
  v23[1] = 0;
  *(v16 + qword_28131DB60) = 0;
  *(v16 + qword_28131DB30) = 0;
  v24 = qword_28131DB78;
  *(v16 + qword_28131DB78) = 0;
  *(v16 + qword_28131DB28) = 2;
  v25 = qword_28131DB50;
  v26 = *MEMORY[0x277D5D0D0];
  v27 = sub_2232AA6E4();
  (*(*(v27 - 8) + 104))(v16 + v25, v26, v27);
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v28 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v29 = qword_28131DD38;
  sub_2232AAA74();

  v30 = type metadata accessor for MyriadDecisionMonitor();
  inited = swift_initStaticObject();
  v32 = (v16 + qword_28131D290);
  v32[3] = v30;
  v32[4] = &off_28368D388;
  *v32 = inited;
  if (qword_28131DA80 != -1)
  {
    swift_once();
  }

  *(v16 + qword_28131D278) = qword_28131DD40;

  _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0();
  *(v16 + qword_28131DB40) = v33;
  *(v16 + v24) = AFDeviceSupportsSiriMUX();
  type metadata accessor for AsrCandidateRequestCacheManager();
  swift_allocObject();
  *(v16 + qword_28131D270) = sub_2232A2A34();
  *(v16 + qword_28131D288) = AFDeviceSupportsMedoc();
  *(v16 + v19) = AFDeviceSupportsPatientSiri();
  v34 = v53;
  sub_223260E10(v53, v56);
  v35 = v52;
  sub_223260E10(v52, v55);
  v36 = qword_28131D338;
  swift_unknownObjectRetain();
  v37 = v45;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = v47;
  v39 = __swift_project_value_buffer(v47, qword_28131DB88);
  (*(v7 + 16))(v46, v39, v38);
  v40 = sub_2232AA8E4();

  v41 = AFDeviceSupportsHybridUOD();
  sub_223297920(v41);
  sub_2232AAE24();
  v42 = qword_28131DD38;
  sub_2232AAA84();

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  (*(v50 + 8))(v13, v51);
  swift_unknownObjectRelease();

  return v40;
}

uint64_t AsrBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = sub_22329E324(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_223297920(int a1)
{
  v15 = a1;
  v2 = sub_2232AA984();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232A97F4();
  sub_2232AA9F4();
  sub_2232A9704();
  sub_2232AA9F4();
  sub_2232AA234();
  sub_2232AA9F4();
  sub_2232AA184();
  sub_2232AA9F4();
  sub_2232AA144();
  sub_2232AA9F4();
  sub_2232AA084();
  sub_2232AA9F4();
  sub_2232AA674();
  sub_2232AA9F4();
  sub_2232A96D4();
  sub_2232AA9F4();
  sub_2232AA664();
  sub_2232AA9F4();
  sub_2232AA174();
  sub_2232AA9F4();
  v7 = *MEMORY[0x277D60070];
  v8 = v3[13];
  v8(v6, v7, v2);
  sub_2232A9CA4();
  type metadata accessor for AsrRequestProcessor();
  sub_2232AA8D4();
  v9 = v3[1];
  v9(v6, v2);
  v8(v6, v7, v2);
  sub_2232AA034();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v7, v2);
  sub_2232AA074();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v7, v2);
  sub_2232AA3E4();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v7, v2);
  sub_2232AA204();
  sub_2232AA8D4();
  v9(v6, v2);
  v10 = *MEMORY[0x277D60098];
  v8(v6, v10, v2);
  sub_2232AA654();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232AA1C4();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232A9F94();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232A9FF4();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232A9ED4();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232A96F4();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232A9734();
  sub_2232AA8D4();
  v9(v6, v2);
  v11 = *MEMORY[0x277D60090];
  v8(v6, v11, v2);
  sub_2232A9694();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v11, v2);
  sub_2232A9EE4();
  sub_2232AA8D4();
  v9(v6, v2);
  v12 = *MEMORY[0x277D60080];
  v8(v6, v12, v2);
  sub_2232A9FA4();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v12, v2);
  sub_2232AA194();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232AA1A4();
  sub_2232AA8D4();
  v9(v6, v2);
  v8(v6, v10, v2);
  sub_2232AA154();
  sub_2232AA8D4();
  result = (v9)(v6, v2);
  if (*(v1 + qword_28131DB38) == 1)
  {
    v8(v6, v10, v2);
    sub_2232AA3B4();
    sub_2232AA8D4();
    result = (v9)(v6, v2);
  }

  if (v15)
  {
    sub_2232606A4(0, &unk_27D0814B0, 0x277D47730);
    sub_2232AAA24();
    sub_2232606A4(0, &qword_27D081908, 0x277D47748);
    sub_2232AAA24();
    sub_2232606A4(0, &qword_27D081900, 0x277D47740);
    result = sub_2232AAA24();
    if (*(v1 + qword_28131DB78) == 1)
    {
      sub_2232606A4(0, &unk_27D081910, 0x277D47718);
      sub_2232AAA24();
      v8(v6, v10, v2);
      sub_2232A9B44();
      sub_2232AA8D4();
      return (v9)(v6, v2);
    }
  }

  return result;
}

void sub_22329887C(void *a1)
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

void sub_223298A24(void *a1)
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

  sub_22328F48C(0);
}

void sub_223298BF4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v6 = sub_2232AAAD4();
  __swift_project_value_buffer(v6, qword_28131DB88);
  v7 = a1;
  v8 = sub_2232AAAC4();
  v9 = sub_2232AAD84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_22325E000, v8, v9, "AsrCandidateRequestProcessor received message: %@", v10, 0xCu);
    sub_223260EDC(v11, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v11, -1, -1);
    MEMORY[0x223DD8AC0](v10, -1, -1);
  }

  sub_22329D0C4(v7, a2, a3);
}

void sub_223298D94(void *a1)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v2 = sub_2232AAAD4();
  __swift_project_value_buffer(v2, qword_28131DB88);
  v3 = a1;
  oslog = sub_2232AAAC4();
  v4 = sub_2232AAD84();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_22325E000, oslog, v4, "AsrCandidateRequestProcessor received message: %@. Ignoring..", v5, 0xCu);
    sub_223260EDC(v6, &qword_27D0812D0, &qword_2232AC4A0);
    MEMORY[0x223DD8AC0](v6, -1, -1);
    MEMORY[0x223DD8AC0](v5, -1, -1);
  }
}

uint64_t sub_2232990E0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v40 - v10;
  v11 = sub_2232A9504();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v41 = v7;
    v21 = v20;
    v40 = swift_slowAlloc();
    v44[0] = v40;
    *v21 = 136315138;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0]);
    v22 = sub_2232AB064();
    v23 = v12;
    v24 = v11;
    v26 = v25;
    (*(v23 + 8))(v15, v24);
    v27 = sub_2232603D0(v22, v26, v44);
    v11 = v24;
    v12 = v23;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_22325E000, v18, v19, "Handling StartSpeechDictationSession for sessionId: %s", v21, 0xCu);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x223DD8AC0](v28, -1, -1);
    v29 = v21;
    v7 = v41;
    MEMORY[0x223DD8AC0](v29, -1, -1);
  }

  v30 = v42;
  sub_2232AA614();
  (*(v12 + 56))(v30, 0, 1, v11);
  v31 = qword_28131DB58;
  swift_beginAccess();
  sub_223260794(v30, v2 + v31, &unk_27D0812C0, &qword_2232AD0C0);
  swift_endAccess();
  sub_2232AAA34();
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_2232AA614();
  sub_2232AA764();
  (*(v12 + 8))(v15, v11);
  v32 = qword_28131DB68;
  swift_beginAccess();
  sub_223260794(v43, v2 + v32, &unk_27D0818D8, ",6");
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  v33 = sub_2232AA214();
  v34 = (v2 + qword_28131DB48);
  v35 = *(v2 + qword_28131DB48 + 8);
  *v34 = v33;
  v34[1] = v36;

  sub_2232AA224();
  v37 = sub_2232AA794();
  (*(*(v37 - 8) + 56))(v7, 0, 1, v37);
  v38 = qword_28131DB20;
  swift_beginAccess();
  sub_223260794(v7, v2 + v38, &unk_27D0814C0, &unk_2232AC480);
  result = swift_endAccess();
  *(v2 + qword_28131DB28) = 0;
  return result;
}

void sub_2232995C0(void *a1)
{
  v74 = a1;
  v2 = sub_2232AA6E4();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2);
  v67 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2232A9504();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v71 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v62[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v66 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v62[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v62[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v62[-v23];
  v25 = qword_28131DB58;
  swift_beginAccess();
  v70 = v1;
  v65 = v25;
  sub_223260E74(v1 + v25, v24, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  v26 = v6[7];
  v26(v22, 0, 1, v5);
  v27 = *(v10 + 56);
  sub_223260E74(v24, v13, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v22, &v13[v27], &unk_27D0812C0, &qword_2232AD0C0);
  v72 = v6;
  v28 = v6[6];
  if (v28(v13, 1, v5) == 1)
  {
    v64 = v26;
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
    v29 = v28(&v13[v27], 1, v5);
    v30 = v5;
    if (v29 == 1)
    {
      sub_223260EDC(v13, &unk_27D0812C0, &qword_2232AD0C0);
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v46 = sub_2232AAAD4();
      __swift_project_value_buffer(v46, qword_28131DB88);
      v47 = sub_2232AAAC4();
      v48 = sub_2232AAD84();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_22325E000, v47, v48, "Setting sessionId to nil", v49, 2u);
        MEMORY[0x223DD8AC0](v49, -1, -1);
      }

      v50 = v66;
      v64(v66, 1, 1, v30);
      v51 = v70;
      v52 = v65;
      swift_beginAccess();
      sub_223260794(v50, v51 + v52, &unk_27D0812C0, &qword_2232AD0C0);
      swift_endAccess();
      v53 = (v51 + qword_28131DB48);
      v54 = *(v51 + qword_28131DB48 + 8);
      *v53 = 0;
      v53[1] = 0;

      v55 = sub_2232AAAC4();
      v56 = sub_2232AAD84();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_22325E000, v55, v56, "Setting userSessionState to ambient", v57, 2u);
        MEMORY[0x223DD8AC0](v57, -1, -1);
      }

      v59 = v67;
      v58 = v68;
      v60 = v69;
      (*(v68 + 104))(v67, *MEMORY[0x277D5D0D0], v69);
      v61 = qword_28131DB50;
      swift_beginAccess();
      (*(v58 + 40))(v51 + v61, v59, v60);
      swift_endAccess();
      *(v51 + qword_28131DB28) = 2;
      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v13, v73, &unk_27D0812C0, &qword_2232AD0C0);
  if (v28(&v13[v27], 1, v5) == 1)
  {
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
    (v72[1])(v73, v5);
    v30 = v5;
LABEL_6:
    sub_223260EDC(v13, &unk_27D0818B8, "(6");
    goto LABEL_7;
  }

  v64 = v26;
  v43 = v71;
  v42 = v72;
  (v72[4])(v71, &v13[v27], v5);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0]);
  v44 = v73;
  v63 = sub_2232AABE4();
  v45 = v42[1];
  v45(v43, v5);
  sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
  v45(v44, v5);
  sub_223260EDC(v13, &unk_27D0812C0, &qword_2232AD0C0);
  v30 = v5;
  if (v63)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v31 = sub_2232AAAD4();
  __swift_project_value_buffer(v31, qword_28131DB88);
  v32 = v74;
  v33 = sub_2232AAAC4();
  v34 = sub_2232AAD94();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v75 = v36;
    *v35 = 136315138;
    v37 = v71;
    sub_2232AA614();
    sub_223260388(&unk_28131DAF0, MEMORY[0x277CC95F0]);
    v38 = sub_2232AB064();
    v40 = v39;
    (v72[1])(v37, v30);
    v41 = sub_2232603D0(v38, v40, &v75);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_22325E000, v33, v34, "SessionId: %s is not the current session, ignoring", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x223DD8AC0](v36, -1, -1);
    MEMORY[0x223DD8AC0](v35, -1, -1);
  }
}

void sub_223299E7C(void *a1)
{
  v100 = a1;
  v2 = sub_2232AA704();
  v92 = *(v2 - 8);
  v93 = v2;
  v3 = *(v92 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v91 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v90 = &v88[-v6];
  v7 = sub_2232A9504();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v96 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v88[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v95 = &v88[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v88[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v88[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v88[-v25];
  v27 = qword_28131DB58;
  swift_beginAccess();
  v99 = v1;
  v94 = v27;
  sub_223260E74(v1 + v27, v26, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v8 + 56))(v24, 0, 1, v7);
  v28 = *(v12 + 56);
  sub_223260E74(v26, v15, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v24, &v15[v28], &unk_27D0812C0, &qword_2232AD0C0);
  v98 = v8;
  v29 = *(v8 + 48);
  if (v29(v15, 1, v7) != 1)
  {
    v31 = v97;
    sub_223260E74(v15, v97, &unk_27D0812C0, &qword_2232AD0C0);
    if (v29(&v15[v28], 1, v7) != 1)
    {
      v40 = v98;
      v41 = &v15[v28];
      v42 = v96;
      (*(v98 + 32))(v96, v41, v7);
      sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0]);
      v89 = sub_2232AABE4();
      v43 = *(v40 + 8);
      v43(v42, v7);
      sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
      sub_223260EDC(v26, &unk_27D0812C0, &qword_2232AD0C0);
      v43(v31, v7);
      sub_223260EDC(v15, &unk_27D0812C0, &qword_2232AD0C0);
      v30 = v99;
      if (v89)
      {
        goto LABEL_13;
      }

LABEL_7:
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
        v36 = swift_slowAlloc();
        v101 = v36;
        *v35 = 136315138;
        v37 = v95;
        sub_223260E74(v30 + v94, v95, &unk_27D0812C0, &qword_2232AD0C0);
        if (v29(v37, 1, v7))
        {
          sub_223260EDC(v37, &unk_27D0812C0, &qword_2232AD0C0);
          v38 = 0xE300000000000000;
          v39 = 7104878;
        }

        else
        {
          v77 = v98;
          v78 = v96;
          (*(v98 + 16))(v96, v37, v7);
          sub_223260EDC(v37, &unk_27D0812C0, &qword_2232AD0C0);
          v79 = sub_2232A94C4();
          v38 = v80;
          (*(v77 + 8))(v78, v7);
          v39 = v79;
        }

        v81 = sub_2232603D0(v39, v38, &v101);

        *(v35 + 4) = v81;
        _os_log_impl(&dword_22325E000, v33, v34, "StartAttendingRequestedMessage does not belong to current session id: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x223DD8AC0](v36, -1, -1);
        MEMORY[0x223DD8AC0](v35, -1, -1);
      }

      return;
    }

    sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v26, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v98 + 8))(v31, v7);
LABEL_6:
    sub_223260EDC(v15, &unk_27D0818B8, "(6");
    v30 = v99;
    goto LABEL_7;
  }

  sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v26, &unk_27D0812C0, &qword_2232AD0C0);
  if (v29(&v15[v28], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_223260EDC(v15, &unk_27D0812C0, &qword_2232AD0C0);
  v30 = v99;
LABEL_13:
  v44 = *(v30 + qword_28131DB60);
  if (v44)
  {
    v45 = v44;
    v46 = v100;
    v47 = sub_2232AA134();
    if (v48)
    {
      v49 = v47;
      v50 = v48;
      v99 = v7;
      v51 = v90;
      sub_2232AA124();
      v53 = v91;
      v52 = v92;
      v54 = v93;
      (*(v92 + 104))(v91, *MEMORY[0x277D5D158], v93);
      v55 = sub_2232AA6F4();
      v56 = *(v52 + 8);
      v56(v53, v54);
      v56(v51, v54);
      if (v55)
      {
        if (qword_28131D338 != -1)
        {
          swift_once();
        }

        v57 = sub_2232AAAD4();
        __swift_project_value_buffer(v57, qword_28131DB88);
        v58 = v46;

        v59 = sub_2232AAAC4();
        v60 = sub_2232AAD84();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v101 = v62;
          *v61 = 136315394;
          v63 = v49;
          v64 = v45;
          v65 = v96;
          sub_2232AA614();
          v66 = sub_2232A94C4();
          v68 = v67;
          v69 = v65;
          v45 = v64;
          v70 = v63;
          (*(v98 + 8))(v69, v99);
          v71 = sub_2232603D0(v66, v68, &v101);

          *(v61 + 4) = v71;
          *(v61 + 12) = 2080;
          *(v61 + 14) = sub_2232603D0(v70, v50, &v101);
          _os_log_impl(&dword_22325E000, v59, v60, "StartAttendingRequestedMessage received for sessionId: %s, calling directActionJarvisAnnounceMessageTrigger(withDeviceId:%s) on the AttendingClient", v61, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DD8AC0](v62, -1, -1);
          MEMORY[0x223DD8AC0](v61, -1, -1);
        }

        v72 = sub_2232AABF4();

        [v45 directActionJarvisAnnounceMessageTriggerWithDeviceId_];

        return;
      }

      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v87 = sub_2232AAAD4();
      __swift_project_value_buffer(v87, qword_28131DB88);
      v83 = sub_2232AAAC4();
      v84 = sub_2232AAD94();
      if (!os_log_type_enabled(v83, v84))
      {
LABEL_38:

        return;
      }

      v85 = swift_slowAlloc();
      *v85 = 0;
      v86 = "Received StartAttendingRequestedMessage with reason != .directActionCarPlay, dropping";
    }

    else
    {
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v82 = sub_2232AAAD4();
      __swift_project_value_buffer(v82, qword_28131DB88);
      v83 = sub_2232AAAC4();
      v84 = sub_2232AAD94();
      if (!os_log_type_enabled(v83, v84))
      {
        goto LABEL_38;
      }

      v85 = swift_slowAlloc();
      *v85 = 0;
      v86 = "Received StartAttendingRequestedMessage missing deviceId, dropping";
    }

    _os_log_impl(&dword_22325E000, v83, v84, v86, v85, 2u);
    MEMORY[0x223DD8AC0](v85, -1, -1);
    goto LABEL_38;
  }

  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v73 = sub_2232AAAD4();
  __swift_project_value_buffer(v73, qword_28131DB88);
  v74 = sub_2232AAAC4();
  v75 = sub_2232AAD94();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_22325E000, v74, v75, "Received StartAttendingRequestedMessage outside the scope of a session, dropping", v76, 2u);
    MEMORY[0x223DD8AC0](v76, -1, -1);
  }
}

uint64_t sub_22329AA48(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814C0, &unk_2232AC480);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v34[-v9];
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
    v35 = v16;
    *v15 = 136315650;
    v17 = sub_2232AA634();
    v19 = sub_2232603D0(v17, v18, &v35);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    v20 = *(sub_2232A96C4() + 16);

    *(v15 + 14) = v20;

    *(v15 + 22) = 1024;
    v21 = sub_2232A96B4();

    *(v15 + 24) = v21 & 1;
    _os_log_impl(&dword_22325E000, v13, v14, "MUXContextMessage received for assistantId: %s with %ld home members and RMVEnabled=%{BOOL}d", v15, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x223DD8AC0](v16, -1, -1);
    MEMORY[0x223DD8AC0](v15, -1, -1);
  }

  else
  {
  }

  v22 = sub_2232A96C4();
  v23 = v22;
  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = sub_22329C63C(*(v22 + 16), 0);
    v26 = sub_22329D944(&v35, v25 + 4, v24, v23);
    sub_22329ED3C();
    if (v26 == v24)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_10:
  v27 = *(v2 + qword_28131DB80);
  *(v2 + qword_28131DB80) = v25;

  *(v2 + qword_28131DB70) = sub_2232A96B4() & 1;
  *(v2 + qword_28131DB78) = 1;
  sub_2232A96A4();
  v28 = sub_2232AA794();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v8, 1, v28) == 1)
  {
    v31 = qword_28131DB20;
    swift_beginAccess();
    sub_223260E74(v2 + v31, v10, &unk_27D0814C0, &unk_2232AC480);
    if (v30(v8, 1, v28) != 1)
    {
      sub_223260EDC(v8, &unk_27D0814C0, &unk_2232AC480);
    }
  }

  else
  {
    (*(v29 + 32))(v10, v8, v28);
    (*(v29 + 56))(v10, 0, 1, v28);
  }

  v32 = qword_28131DB20;
  swift_beginAccess();
  sub_223260794(v10, v2 + v32, &unk_27D0814C0, &unk_2232AC480);
  return swift_endAccess();
}

void sub_22329AE88(void *a1)
{
  v65 = a1;
  v2 = sub_2232A9504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v57[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v60 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v57[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v57[-v20];
  v22 = qword_28131DB58;
  swift_beginAccess();
  v64 = v1;
  v59 = v22;
  sub_223260E74(v1 + v22, v21, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v3 + 56))(v19, 0, 1, v2);
  v23 = *(v7 + 56);
  sub_223260E74(v21, v10, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v19, &v10[v23], &unk_27D0812C0, &qword_2232AD0C0);
  v63 = v3;
  v24 = *(v3 + 48);
  if (v24(v10, 1, v2) == 1)
  {
    sub_223260EDC(v19, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v21, &unk_27D0812C0, &qword_2232AD0C0);
    if (v24(&v10[v23], 1, v2) == 1)
    {
      sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
      v25 = v64;
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v39 = sub_2232AAAD4();
      __swift_project_value_buffer(v39, qword_28131DB88);
      v40 = v65;
      v41 = sub_2232AAAC4();
      v42 = sub_2232AAD84();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&dword_22325E000, v41, v42, "AsrBridge received message: %@", v43, 0xCu);
        sub_223260EDC(v44, &qword_27D0812D0, &qword_2232AC4A0);
        MEMORY[0x223DD8AC0](v44, -1, -1);
        MEMORY[0x223DD8AC0](v43, -1, -1);
      }

      v46 = *(v25 + qword_28131DB60);
      if (v46)
      {
        v47 = v46;
        sub_2232AA5D4();
        v48 = sub_2232AABF4();

        [v47 siriDidPromptWithRootRequestId_];
      }

      else
      {
        v49 = sub_2232AAAC4();
        v50 = sub_2232AAD94();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_22325E000, v49, v50, "AttendingClient not set while receiving SiriPromptedMessage, dropping", v51, 2u);
          MEMORY[0x223DD8AC0](v51, -1, -1);
        }
      }

      return;
    }

    goto LABEL_6;
  }

  v26 = v62;
  sub_223260E74(v10, v62, &unk_27D0812C0, &qword_2232AD0C0);
  if (v24(&v10[v23], 1, v2) == 1)
  {
    sub_223260EDC(v19, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v21, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v63 + 8))(v26, v2);
LABEL_6:
    sub_223260EDC(v10, &unk_27D0818B8, "(6");
    v25 = v64;
    goto LABEL_7;
  }

  v35 = v63;
  v36 = &v10[v23];
  v37 = v61;
  (*(v63 + 32))(v61, v36, v2);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0]);
  v58 = sub_2232AABE4();
  v38 = *(v35 + 8);
  v38(v37, v2);
  sub_223260EDC(v19, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v21, &unk_27D0812C0, &qword_2232AD0C0);
  v38(v26, v2);
  sub_223260EDC(v10, &unk_27D0812C0, &qword_2232AD0C0);
  v25 = v64;
  if (v58)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v27 = sub_2232AAAD4();
  __swift_project_value_buffer(v27, qword_28131DB88);

  v28 = sub_2232AAAC4();
  v29 = sub_2232AAD84();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v66 = v31;
    *v30 = 136315138;
    v32 = v60;
    sub_223260E74(v25 + v59, v60, &unk_27D0812C0, &qword_2232AD0C0);
    if (v24(v32, 1, v2))
    {
      sub_223260EDC(v32, &unk_27D0812C0, &qword_2232AD0C0);
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v52 = v63;
      v53 = v61;
      (*(v63 + 16))(v61, v32, v2);
      sub_223260EDC(v32, &unk_27D0812C0, &qword_2232AD0C0);
      v54 = sub_2232A94C4();
      v33 = v55;
      (*(v52 + 8))(v53, v2);
      v34 = v54;
    }

    v56 = sub_2232603D0(v34, v33, &v66);

    *(v30 + 4) = v56;
    _os_log_impl(&dword_22325E000, v28, v29, "SiriPromptedMessage does not belong to current session id: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DD8AC0](v31, -1, -1);
    MEMORY[0x223DD8AC0](v30, -1, -1);
  }
}

void sub_22329B6E0(void *a1)
{
  v73 = a1;
  v2 = sub_2232AA6E4();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2);
  v67 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2232A9504();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818B8, "(6");
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v61[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v65 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v61[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v61[-v23];
  v25 = qword_28131DB58;
  swift_beginAccess();
  v72 = v1;
  v64 = v25;
  sub_223260E74(v1 + v25, v24, &unk_27D0812C0, &qword_2232AD0C0);
  sub_2232AA614();
  (*(v6 + 56))(v22, 0, 1, v5);
  v26 = *(v10 + 56);
  sub_223260E74(v24, v13, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260E74(v22, &v13[v26], &unk_27D0812C0, &qword_2232AD0C0);
  v70 = v6;
  v27 = v6;
  v28 = v5;
  v29 = *(v27 + 48);
  if (v29(v13, 1, v5) == 1)
  {
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
    if (v29(&v13[v26], 1, v5) == 1)
    {
      sub_223260EDC(v13, &unk_27D0812C0, &qword_2232AD0C0);
      v30 = v72;
LABEL_13:
      if (qword_28131D338 != -1)
      {
        swift_once();
      }

      v46 = sub_2232AAAD4();
      __swift_project_value_buffer(v46, qword_28131DB88);
      v47 = v73;
      v48 = sub_2232AAAC4();
      v49 = sub_2232AAD84();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        *(v50 + 4) = v47;
        *v51 = v47;
        v52 = v47;
        _os_log_impl(&dword_22325E000, v48, v49, "#user-session: received message: %@", v50, 0xCu);
        sub_223260EDC(v51, &qword_27D0812D0, &qword_2232AC4A0);
        MEMORY[0x223DD8AC0](v51, -1, -1);
        MEMORY[0x223DD8AC0](v50, -1, -1);
      }

      v53 = v67;
      sub_2232AA164();
      v54 = qword_28131DB50;
      swift_beginAccess();
      (*(v68 + 40))(v30 + v54, v53, v69);
      swift_endAccess();
      return;
    }

    goto LABEL_6;
  }

  sub_223260E74(v13, v71, &unk_27D0812C0, &qword_2232AD0C0);
  if (v29(&v13[v26], 1, v5) == 1)
  {
    sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
    sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
    (*(v70 + 8))(v71, v5);
LABEL_6:
    sub_223260EDC(v13, &unk_27D0818B8, "(6");
    v30 = v72;
    goto LABEL_7;
  }

  v39 = v5;
  v40 = v70;
  v41 = v66;
  (*(v70 + 32))(v66, &v13[v26], v39);
  sub_223260388(&qword_28131DB00, MEMORY[0x277CC95F0]);
  v63 = v29;
  v42 = v71;
  v62 = sub_2232AABE4();
  v43 = v40;
  v28 = v39;
  v44 = *(v43 + 8);
  v44(v41, v39);
  sub_223260EDC(v22, &unk_27D0812C0, &qword_2232AD0C0);
  sub_223260EDC(v24, &unk_27D0812C0, &qword_2232AD0C0);
  v45 = v42;
  v29 = v63;
  v44(v45, v39);
  sub_223260EDC(v13, &unk_27D0812C0, &qword_2232AD0C0);
  v30 = v72;
  if (v62)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v31 = sub_2232AAAD4();
  __swift_project_value_buffer(v31, qword_28131DB88);

  v32 = sub_2232AAAC4();
  v33 = sub_2232AAD84();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v74 = v35;
    *v34 = 136315138;
    v36 = v65;
    sub_223260E74(v30 + v64, v65, &unk_27D0812C0, &qword_2232AD0C0);
    if (v29(v36, 1, v28))
    {
      sub_223260EDC(v36, &unk_27D0812C0, &qword_2232AD0C0);
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v55 = v28;
      v56 = v70;
      v57 = v66;
      (*(v70 + 16))(v66, v36, v55);
      sub_223260EDC(v36, &unk_27D0812C0, &qword_2232AD0C0);
      v58 = sub_2232A94C4();
      v37 = v59;
      (*(v56 + 8))(v57, v55);
      v38 = v58;
    }

    v60 = sub_2232603D0(v38, v37, &v74);

    *(v34 + 4) = v60;
    _os_log_impl(&dword_22325E000, v32, v33, "ActiveUserSessionDetectedMessage does not belong to current session id: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x223DD8AC0](v35, -1, -1);
    MEMORY[0x223DD8AC0](v34, -1, -1);
  }
}

uint64_t sub_22329BFF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, unint64_t *a6, uint64_t *a7, uint64_t a8)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v14 = sub_2232AAAD4();
  __swift_project_value_buffer(v14, qword_28131DB88);
  v15 = a1;
  v16 = sub_2232AAAC4();
  v17 = sub_2232AAD84();

  if (os_log_type_enabled(v16, v17))
  {
    v30 = a2;
    v31 = a4;
    v18 = a3;
    v32 = a8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = [v15 refId];
    if (v21)
    {
      v22 = v21;
      v23 = sub_2232AAC04();
      v25 = v24;
    }

    else
    {
      v25 = 0xE900000000000064;
      v23 = 0x49666572206C696ELL;
    }

    a3 = v18;
    v26 = sub_2232603D0(v23, v25, &v35);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_22325E000, v16, v17, a5, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DD8AC0](v20, -1, -1);
    MEMORY[0x223DD8AC0](v19, -1, -1);

    a8 = v32;
    a2 = v30;
    a4 = v31;
  }

  else
  {
  }

  v27 = sub_2232606A4(0, a6, a7);
  v28 = type metadata accessor for AsrRequestProcessor();

  return MEMORY[0x2821C53B0](v15, a2, a3, a4, a8, 0, v27, v28);
}

uint64_t sub_22329C370()
{
  v1 = *(v0 + qword_28131D270);

  sub_223260EDC(v0 + qword_28131DB58, &unk_27D0812C0, &qword_2232AD0C0);
  v2 = *(v0 + qword_28131DB80);

  sub_223260EDC(v0 + qword_28131DB68, &unk_27D0818D8, ",6");
  sub_223260EDC(v0 + qword_28131DB20, &unk_27D0814C0, &unk_2232AC480);
  v3 = *(v0 + qword_28131DB48 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D290));
  v4 = *(v0 + qword_28131D278);

  v5 = qword_28131DB50;
  v6 = sub_2232AA6E4();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t AsrBridge.deinit()
{
  v0 = sub_2232AA8F4();
  v1 = *(v0 + qword_28131D270);

  sub_223260EDC(v0 + qword_28131DB58, &unk_27D0812C0, &qword_2232AD0C0);
  v2 = *(v0 + qword_28131DB80);

  sub_223260EDC(v0 + qword_28131DB68, &unk_27D0818D8, ",6");
  sub_223260EDC(v0 + qword_28131DB20, &unk_27D0814C0, &unk_2232AC480);
  v3 = *(v0 + qword_28131DB48 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28131D290));
  v4 = *(v0 + qword_28131D278);

  v5 = qword_28131DB50;
  v6 = sub_2232AA6E4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AsrBridge.__deallocating_deinit()
{
  v0 = AsrBridge.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_22329C63C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0811C8, &qword_2232AC458);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unsigned __int8 *sub_22329C6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2232AACB4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22329CC50();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2232AAF84();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22329CC50()
{
  v0 = sub_2232AACC4();
  v4 = sub_22329CCD0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22329CCD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2232AAC34();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2232AAEC4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2232644DC(v9, 0);
  v12 = sub_22329CE28(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2232AAC34();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2232AAF84();
LABEL_4:

  return sub_2232AAC34();
}

unint64_t sub_22329CE28(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22329D048(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2232AAC94();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2232AAF84();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22329D048(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2232AAC74();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22329D048(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2232AACA4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DD8010](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_22329D0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081810, &unk_2232ACC60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = *MEMORY[0x277D5CF40];
  v10 = sub_2232AA6B4();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  v12 = qword_28131DD10;
  swift_beginAccess();
  sub_223260794(v8, a2 + v12, &unk_27D081810, &unk_2232ACC60);
  swift_endAccess();
  sub_223268998(0);
  v13 = a3();
  sub_22328A4AC(v13 & 1);
  if (v14)
  {
    v15 = v14;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v16 = sub_2232AAAD4();
    __swift_project_value_buffer(v16, qword_28131DB88);
    v17 = v15;
    v18 = sub_2232AAAC4();
    v19 = sub_2232AAD84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v15;
      v22 = v17;
      _os_log_impl(&dword_22325E000, v18, v19, "Going to call startASR from AsrCandidateRequestProcessor with settings = %@", v20, 0xCu);
      sub_223260EDC(v21, &qword_27D0812D0, &qword_2232AC4A0);
      MEMORY[0x223DD8AC0](v21, -1, -1);
      MEMORY[0x223DD8AC0](v20, -1, -1);
    }

    [*(a2 + qword_28131D8B0) startSpeechRecognitionResultsWithSettings_];
  }
}

void sub_22329D380(void *a1, uint64_t a2)
{
  v4 = sub_2232AA694();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2232632C4(&v59);
  v9 = *(a2 + qword_28131D8F0);
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v40)
  {
    v51 = v8;
    if (!i)
    {
LABEL_15:
      LODWORD(v55) = sub_2232A9C84();
      v53 = sub_2232AA5D4();
      v22 = v51;
      sub_2232A9714();
      sub_2232AA684();
      (*(v5 + 8))(v22, v4);
      if (sub_2232A9C94())
      {
        v52 = sub_2232AA7A4();
      }

      else
      {
        v52 = 0;
      }

      v23 = *MEMORY[0x277D24258];
      v24 = sub_2232AA924();
      v25 = sub_2232AA944();
      v27 = sub_22326A9D4(v24, v25, v26);
      swift_unknownObjectRelease();

      v28 = v59;
      LODWORD(v54) = sub_22326B608(v59);
      aBlock = v61;
      v29 = sub_2232AABF4();

      v30 = sub_2232AABF4();

      v31 = sub_2232AACF4();
      sub_2232606A4(0, &qword_28131D1A0, 0x277CEF130);
      v32 = sub_2232AACF4();

      if (*(&aBlock + 1))
      {
        v33 = sub_2232AABF4();
      }

      else
      {
        v33 = 0;
      }

      v34 = (v27 != 2) ^ v27;
      if (v55)
      {
        v35 = 2;
      }

      else
      {
        v35 = 0;
      }

      v36 = v60;
      v37 = objc_allocWithZone(MEMORY[0x277D24248]);
      LOBYTE(v45) = 0;
      LOBYTE(v44) = 0;
      LOBYTE(v43) = 0;
      BYTE3(v42) = v36;
      BYTE2(v42) = 1;
      BYTE1(v42) = v54 & 1;
      LOBYTE(v42) = v34 & 1;
      LODWORD(v41) = 0;
      v38 = v52;
      [v37 initWithRequestId:v29 inputOrigin:v30 speechRecognitionTaskName:v28 speechRecognitionMode:v35 location:v52 jitGrammar:v31 overrideModelPath:v23 applicationName:0 detectUtterances:0 continuousListening:v41 shouldHandleCapitalization:0 secureOfflineOnly:v42 maximumRecognitionDuration:0 recognitionOverrides:v43 shouldStoreAudioOnDevice:0 deliverEagerPackage:v32 enableEmojiRecognition:0 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:v44 sharedUserInfos:0 prefixText:0 postfixText:0 selectedText:v45 powerContext:v33 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];

      sub_223260EDC(&aBlock, &qword_27D081720, &qword_2232AC498);
      return;
    }

    v11 = v9;
    v58 = MEMORY[0x277D84F90];
    sub_2232AAFB4();
    if (i < 0)
    {
      break;
    }

    v47 = v5;
    v48 = v4;
    v49 = a1;
    v50 = a2;
    v12 = objc_opt_self();
    v5 = 0;
    v13 = v11;
    v54 = v12;
    v55 = v11 & 0xC000000000000001;
    v9 = v11 & 0xFFFFFFFFFFFFFF8;
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v57;
    v8 = v11;
    v14 = i;
    while (1)
    {
      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v55)
      {
        v16 = MEMORY[0x223DD8300](v5, v13);
      }

      else
      {
        if (v5 >= *(v52 + 16))
        {
          goto LABEL_27;
        }

        v16 = *&v13[8 * v5 + 32];
      }

      v17 = v16;
      a2 = swift_allocObject();
      *(a2 + 16) = v17;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_22329EF74;
      *(v18 + 24) = a2;
      v57[2] = sub_22329EF70;
      v57[3] = v18;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v57[0] = sub_223278834;
      v57[1] = &block_descriptor_25;
      a1 = _Block_copy(&aBlock);
      v19 = v17;

      v4 = [v54 newWithBuilder_];
      _Block_release(a1);
      if (!v4)
      {
        goto LABEL_30;
      }

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_26;
      }

      sub_2232AAF94();
      v21 = *(v58 + 16);
      sub_2232AAFC4();
      sub_2232AAFD4();
      sub_2232AAFA4();
      ++v5;
      v13 = v8;
      if (v15 == v14)
      {
        v4 = v48;
        v5 = v47;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v39 = v9;
    v40 = sub_2232AAFE4();
    v9 = v39;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void *sub_22329D944(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2232AABF4();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_2232AABF4();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_2232AAC04();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      v9 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v10 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {

        v32 = 5;
        goto LABEL_67;
      }

      if ((v7 & 0x1000000000000000) != 0)
      {
        v39 = 0;
        v13 = sub_22329C6C4(v5, v7, 10);
        v31 = v37;
LABEL_65:

        if ((v31 & 1) == 0)
        {
          if (v13 >= 0)
          {
            v32 = v13;
          }

          else
          {
            v32 = 5;
          }

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if ((v7 & 0x2000000000000000) != 0)
      {
        v38[0] = v5;
        v38[1] = v7 & 0xFFFFFFFFFFFFFFLL;
        if (v5 == 43)
        {
          if (v8)
          {
            if (--v8)
            {
              v13 = 0;
              v23 = v38 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  break;
                }

                v25 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  break;
                }

                ++v23;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_81:
          __break(1u);
          return;
        }

        if (v5 != 45)
        {
          if (v8)
          {
            v13 = 0;
            v28 = v38;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v8)
        {
          if (--v8)
          {
            v13 = 0;
            v17 = v38 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v11 = sub_2232AAF84();
        }

        v12 = *v11;
        if (v12 == 43)
        {
          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v13 = 0;
              if (v11)
              {
                v20 = v11 + 1;
                while (1)
                {
                  v21 = *v20 - 48;
                  if (v21 > 9)
                  {
                    goto LABEL_63;
                  }

                  v22 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v22 + v21;
                  if (__OFADD__(v22, v21))
                  {
                    goto LABEL_63;
                  }

                  ++v20;
                  if (!--v8)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_80;
        }

        if (v12 != 45)
        {
          if (v9)
          {
            v13 = 0;
            if (v11)
            {
              while (1)
              {
                v26 = *v11 - 48;
                if (v26 > 9)
                {
                  goto LABEL_63;
                }

                v27 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_63;
                }

                v13 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  goto LABEL_63;
                }

                ++v11;
                if (!--v9)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v13 = 0;
          LOBYTE(v8) = 1;
          goto LABEL_64;
        }

        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              v14 = v11 + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_63;
                }

                v16 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_63;
                }

                v13 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  goto LABEL_63;
                }

                ++v14;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v8) = 0;
LABEL_64:
            v39 = v8;
            v31 = v8;
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

LABEL_66:
  v32 = 5;
LABEL_67:
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
    *v36 = 134217984;
    *(v36 + 4) = v32;
    _os_log_impl(&dword_22325E000, v34, v35, "maxEagerRcAllowed: %ld", v36, 0xCu);
    MEMORY[0x223DD8AC0](v36, -1, -1);
  }
}

unint64_t sub_22329DF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081930, &qword_2232ACE78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081938, &qword_2232ACE80);
    v8 = sub_2232AB014();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223260E74(v10, v6, &qword_27D081930, &qword_2232ACE78);
      result = sub_2232A2D10(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2232AA794();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22329E128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081968, &qword_2232ACEA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081970, &qword_2232ACEA8);
    v8 = sub_2232AB014();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223260E74(v10, v6, &qword_27D081968, &qword_2232ACEA0);
      result = sub_2232626FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CacheKey();
      result = sub_22329EEF4(v6, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v8[7] + 56 * v14;
      v18 = v9[16];
      v19 = *(v9 + 3);
      v20 = v9[32];
      v21 = *(v9 + 40);
      *v17 = *v9;
      *(v17 + 16) = v18;
      *(v17 + 24) = v19;
      *(v17 + 32) = v20;
      *(v17 + 40) = v21;
      v22 = v8[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v8[2] = v24;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22329E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v50 = a6;
  v51 = a3;
  v43 = a5;
  v46 = a2;
  v47 = a4;
  v45 = a1;
  v44 = sub_2232AAAD4();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2232AAAB4();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_28131DB58;
  v17 = sub_2232A9504();
  (*(*(v17 - 8) + 56))(v6 + v16, 1, 1, v17);
  v18 = qword_28131DB38;
  *(v6 + qword_28131DB38) = 0;
  *(v6 + qword_28131DB80) = MEMORY[0x277D84F90];
  v19 = v6 + qword_28131DB68;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = qword_28131DB20;
  v21 = sub_2232AA794();
  (*(*(v21 - 8) + 56))(v7 + v20, 1, 1, v21);
  *(v7 + qword_28131DB70) = 0;
  v22 = (v7 + qword_28131DB48);
  *v22 = 0;
  v22[1] = 0;
  *(v7 + qword_28131DB60) = 0;
  *(v7 + qword_28131DB30) = 0;
  v23 = qword_28131DB78;
  *(v7 + qword_28131DB78) = 0;
  *(v7 + qword_28131DB28) = 2;
  v24 = qword_28131DB50;
  v25 = *MEMORY[0x277D5D0D0];
  v26 = sub_2232AA6E4();
  (*(*(v26 - 8) + 104))(v7 + v24, v25, v26);
  if (qword_28131D968 != -1)
  {
    swift_once();
  }

  v27 = qword_28131DD38;
  sub_2232AAA94();
  sub_2232AAE34();
  v28 = qword_28131DD38;
  sub_2232AAA74();

  v29 = type metadata accessor for MyriadDecisionMonitor();
  inited = swift_initStaticObject();
  v31 = (v7 + qword_28131D290);
  v31[3] = v29;
  v31[4] = &off_28368D388;
  *v31 = inited;
  if (qword_28131DA80 != -1)
  {
    swift_once();
  }

  *(v7 + qword_28131D278) = qword_28131DD40;

  _s9ASRBridge9AsrBridgeC27configuredMaxEagerRCAllowedSivgZ_0();
  *(v7 + qword_28131DB40) = v32;
  *(v7 + v23) = AFDeviceSupportsSiriMUX();
  type metadata accessor for AsrCandidateRequestCacheManager();
  swift_allocObject();
  *(v7 + qword_28131D270) = sub_2232A2A34();
  *(v7 + qword_28131D288) = AFDeviceSupportsMedoc();
  *(v7 + v18) = AFDeviceSupportsPatientSiri();
  v33 = v51;
  sub_223260E10(v51, v53);
  v34 = v50;
  sub_223260E10(v50, v52);
  v35 = qword_28131D338;
  swift_unknownObjectRetain();
  v36 = v43;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = v44;
  v38 = __swift_project_value_buffer(v44, qword_28131DB88);
  (*(v8 + 16))(v11, v38, v37);
  v39 = sub_2232AA8E4();

  v40 = AFDeviceSupportsHybridUOD();
  sub_223297920(v40);
  sub_2232AAE24();
  v41 = qword_28131DD38;
  sub_2232AAA84();

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  (*(v48 + 8))(v15, v49);
  return v39;
}

unint64_t sub_22329E88C()
{
  result = qword_27D0818C8;
  if (!qword_27D0818C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0818C8);
  }

  return result;
}

uint64_t type metadata accessor for AsrBridge()
{
  result = qword_28131D258;
  if (!qword_28131D258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22329E92C()
{
  sub_22329EB00(319, &unk_28131DAE0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22329EB00(319, &qword_28131DA98, MEMORY[0x277D5D298]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_2232AA6E4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_22329EB00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232AAEB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AsrBridge.AsrBridgeError(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AsrBridge.AsrBridgeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22329ECB8()
{
  result = qword_27D0818E8;
  if (!qword_27D0818E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0818E8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22329EEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22329EF7C()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD00000000000001CLL, 0x80000002232AE950, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

void sub_22329F104()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000016, 0x80000002232AE930, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

void sub_22329F290()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000032, 0x80000002232AE410, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

id sub_22329F480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechRecognizerResponseHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SpeechRecognizerResponseHandler()
{
  result = qword_28131D360;
  if (!qword_28131D360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22329F5D0()
{
  result = sub_2232A9504();
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

uint64_t sub_2232A0C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_2232A44CC(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27D081940, &qword_2232ACE88);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2232A2C98(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_2232A4FDC(&qword_27D081940, &qword_2232ACE88);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_2232A3E28(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_2232A0D18(uint64_t a1)
{
  sub_2232AB0F4();
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0]);
  sub_2232AABD4();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_2232AAC44();
  return sub_2232AB114();
}

uint64_t sub_2232A0DC0(uint64_t a1, uint64_t a2)
{
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0]);
  sub_2232AABD4();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_2232AAC44();
}

uint64_t sub_2232A0E5C(uint64_t a1, uint64_t a2)
{
  sub_2232AB0F4();
  sub_2232A9504();
  sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0]);
  sub_2232AABD4();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2232AAC44();
  return sub_2232AB114();
}

uint64_t sub_2232A0F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2232A94E4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_2232AB094();
}

uint64_t sub_2232A0F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for CacheKey();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2232A9504();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = a2;
  *(v16 + 1) = a3;
  swift_beginAccess();
  v17 = *(a4 + 24);
  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = sub_2232626FC(v14);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    v39 = a5;
    v40 = 0;
    v41 = 1;
    v42 = 0;
    v43 = 1;
    v44 = 0;
    v45 = 0;
    swift_beginAccess();
    v32 = a5;
    v33 = *(a4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v39, v14, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v38;
    swift_endAccess();
    return sub_223262940(v14);
  }

  v21 = *(v17 + 56) + 56 * v19;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = *(v21 + 32);
  v27 = *(v21 + 48);
  v37 = *(v21 + 40);
  swift_bridgeObjectRetain_n();
  v28 = v22;

  v39 = a5;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = v37;
  v45 = v27;
  swift_beginAccess();
  v29 = a5;
  v30 = *(a4 + 24);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v39, v14, v31);
  *(a4 + 24) = v38;
  swift_endAccess();

  return sub_223262940(v14);
}

uint64_t sub_2232A11E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CacheKey();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2232A9504();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = a2;
  *(v16 + 1) = a3;
  swift_beginAccess();
  v17 = *(a4 + 24);
  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = sub_2232626FC(v14);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    result = sub_223262940(v14);
    v22 = 0;
    goto LABEL_6;
  }

  v21 = *(v17 + 56) + 56 * v19;
  v22 = *v21;
  v29[7] = *(v21 + 8);
  v29[2] = *(v21 + 16);
  v29[1] = *(v21 + 24);
  v23 = *(v21 + 32);
  v24 = *(v21 + 40);
  v25 = *(v21 + 48);

  v26 = v22;
  sub_223262940(v14);

  v27 = v26;
  result = sub_2232A5C14(v22);
LABEL_6:
  *a5 = v22;
  return result;
}

uint64_t sub_2232A13C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for CacheKey();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2232A9504();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  v18 = &v16[*(v13 + 28)];
  *v18 = a2;
  *(v18 + 1) = a3;
  swift_beginAccess();
  v19 = *(a4 + 24);
  v20 = *(v19 + 16);

  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = sub_2232626FC(v16);
  if ((v22 & 1) == 0)
  {

LABEL_5:
    v38 = 0;
    v39 = a5;
    v40 = a6 & 1;
    v41 = 0;
    v42 = 1;
    v43 = 0;
    v44 = 0;
    swift_beginAccess();
    v32 = *(a4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v38, v16, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v37;
    swift_endAccess();
    return sub_223262940(v16);
  }

  v23 = *(v19 + 56) + 56 * v21;
  v24 = *v23;
  v25 = *(v23 + 24);
  v26 = *(v23 + 32);
  v28 = *(v23 + 40);
  v27 = *(v23 + 48);

  v36 = v24;

  v38 = v24;
  v39 = a5;
  v40 = a6 & 1;
  v41 = v25;
  v42 = v26;
  v43 = v28;
  v44 = v27;
  swift_beginAccess();
  v29 = v36;

  v30 = *(a4 + 24);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v38, v16, v31);
  *(a4 + 24) = v37;
  swift_endAccess();

  return sub_223262940(v16);
}

uint64_t sub_2232A1624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for CacheKey();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2232A9504();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  v18 = &v16[*(v13 + 28)];
  *v18 = a2;
  *(v18 + 1) = a3;
  swift_beginAccess();
  v19 = *(a4 + 24);
  v20 = *(v19 + 16);

  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = sub_2232626FC(v16);
  if ((v22 & 1) == 0)
  {

LABEL_5:
    result = sub_223262940(v16);
    v24 = 0;
    v26 = 1;
    goto LABEL_6;
  }

  v23 = *(v19 + 56) + 56 * v21;
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  v32[0] = *(v23 + 24);
  v27 = *(v23 + 32);
  v32[5] = v6;
  v28 = *(v23 + 40);
  v29 = *(v23 + 48);

  v30 = v25;
  sub_223262940(v16);

  result = sub_2232A5C14(v25);
LABEL_6:
  *a5 = v24;
  *(a5 + 8) = v26;
  return result;
}

uint64_t sub_2232A1804(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v36 = a7;
  v30[1] = a6;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v40 = sub_2232AAB14();
  v42 = *(v40 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v35 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2232AAB44();
  v39 = *(v41 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2232A9504();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v8 + 16);
  (*(v16 + 16))(v18, a5, v15);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v16 + 32))(v22 + v19, v18, v15);
  v23 = (v22 + v20);
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;
  *(v22 + v21) = v8;
  v25 = v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = v33;
  *(v25 + 8) = v34 & 1;
  aBlock[4] = v36;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = v38;
  v26 = _Block_copy(aBlock);

  sub_2232AAB24();
  v43 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v27 = v35;
  v28 = v40;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v14, v27, v26);
  _Block_release(v26);
  (*(v42 + 8))(v27, v28);
  (*(v39 + 8))(v14, v41);
}

uint64_t sub_2232A1BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for CacheKey();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2232A9504();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  v18 = &v16[*(v13 + 28)];
  *v18 = a2;
  *(v18 + 1) = a3;
  swift_beginAccess();
  v19 = *(a4 + 24);
  v20 = *(v19 + 16);

  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = sub_2232626FC(v16);
  if ((v22 & 1) == 0)
  {

LABEL_5:
    v38 = 0;
    v39 = 0;
    v40 = 1;
    v41 = a5;
    v42 = a6 & 1;
    v43 = 0;
    v44 = 0;
    swift_beginAccess();
    v32 = *(a4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v38, v16, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v37;
    swift_endAccess();
    return sub_223262940(v16);
  }

  v23 = *(v19 + 56) + 56 * v21;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v28 = *(v23 + 40);
  v27 = *(v23 + 48);

  v36 = v24;

  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = a5;
  v42 = a6 & 1;
  v43 = v28;
  v44 = v27;
  swift_beginAccess();
  v29 = v36;

  v30 = *(a4 + 24);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v38, v16, v31);
  *(a4 + 24) = v37;
  swift_endAccess();

  return sub_223262940(v16);
}

uint64_t sub_2232A1E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CacheKey();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2232A9504();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = a2;
  *(v16 + 1) = a3;
  swift_beginAccess();
  v17 = *(a4 + 24);
  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = sub_2232626FC(v14);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    result = sub_223262940(v14);
    v23 = 0;
    v24 = 1;
    goto LABEL_6;
  }

  v21 = *(v17 + 56) + 56 * v19;
  v22 = *v21;
  v29[5] = *(v21 + 8);
  v29[0] = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = *(v21 + 32);
  v25 = *(v21 + 40);
  v26 = *(v21 + 48);

  v27 = v22;
  sub_223262940(v14);

  result = sub_2232A5C14(v22);
LABEL_6:
  *a5 = v23;
  *(a5 + 8) = v24;
  return result;
}

uint64_t sub_2232A1FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v36 = sub_2232AAB14();
  v38 = *(v36 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2232AAB44();
  v35 = *(v37 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2232A9504();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v5 + 16);
  (*(v13 + 16))(v15, a5, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  v20 = (v19 + v17);
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  *(v19 + v18) = v5;
  v22 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  aBlock[4] = sub_2232A590C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_20;
  v24 = _Block_copy(aBlock);

  sub_2232AAB24();
  v39 = MEMORY[0x277D84F90];
  sub_223262204(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_22326224C(&qword_28131D210, &qword_27D081AB0, &unk_2232AD010);
  v25 = v33;
  v26 = v36;
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v11, v25, v24);
  _Block_release(v24);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v11, v37);
}

uint64_t sub_2232A23DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for CacheKey();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2232A9504();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  v18 = &v16[*(v13 + 28)];
  *v18 = a2;
  *(v18 + 1) = a3;
  swift_beginAccess();
  v19 = *(a4 + 24);
  v20 = *(v19 + 16);

  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = sub_2232626FC(v16);
  if ((v22 & 1) == 0)
  {

LABEL_5:
    v38 = 0;
    v39 = 0;
    v40 = 1;
    v41 = 0;
    v42 = 1;
    v43 = a5;
    v44 = a6;
    swift_beginAccess();

    v32 = *(a4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a4 + 24);
    *(a4 + 24) = 0x8000000000000000;
    sub_2232A4B1C(&v38, v16, isUniquelyReferenced_nonNull_native);
    *(a4 + 24) = v37;
    swift_endAccess();
    return sub_223262940(v16);
  }

  v23 = *(v19 + 56) + 56 * v21;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v36 = *(v23 + 24);
  HIDWORD(v35) = *(v23 + 32);
  v27 = *(v23 + 48);

  v28 = v24;

  v29 = v28;

  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v36;
  v42 = BYTE4(v35);
  v43 = a5;
  v44 = a6;
  swift_beginAccess();

  v30 = *(a4 + 24);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_2232A4B1C(&v38, v16, v31);
  *(a4 + 24) = v37;
  swift_endAccess();

  return sub_223262940(v16);
}

uint64_t sub_2232A2650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CacheKey();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2232A9504();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = a2;
  *(v16 + 1) = a3;
  swift_beginAccess();
  v17 = *(a4 + 24);
  v18 = *(v17 + 16);

  if (v18)
  {

    v19 = sub_2232626FC(v14);
    if (v20)
    {
      v21 = *(v17 + 56) + 56 * v19;
      v22 = *v21;
      v29[5] = *(v21 + 8);
      v29[0] = *(v21 + 16);
      v23 = *(v21 + 24);
      v24 = *(v21 + 32);
      v25 = *(v21 + 40);
      v26 = *(v21 + 48);

      v27 = v22;
      sub_223262940(v14);

      result = sub_2232A5C14(v22);
      *a5 = v25;
      a5[1] = v26;
      return result;
    }
  }

  result = sub_223262940(v14);
  *a5 = 0;
  a5[1] = 0;
  return result;
}

uint64_t sub_2232A2804()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2232A2884(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_2232A28E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2232A2978()
{
  result = sub_2232A9504();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2232A2A34()
{
  v12 = sub_2232AADC4();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2232AADB4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2232AAB44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2232A5C58();
  v11[0] = "queue";
  v11[1] = v9;
  sub_2232AAB34();
  v13 = MEMORY[0x277D84F90];
  sub_223262204(&unk_28131D1B8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0818F0, &qword_2232AD040);
  sub_22326224C(&qword_28131D1F8, &unk_27D0818F0, &qword_2232AD040);
  sub_2232AAEE4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v0 + 16) = sub_2232AADF4();
  *(v0 + 24) = sub_22329E128(MEMORY[0x277D84F90]);
  return v0;
}

unint64_t sub_2232A2C98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2232AB0F4();
  sub_2232AAC44();
  v6 = sub_2232AB114();

  return sub_2232A4E48(a1, a2, v6);
}

unint64_t sub_2232A2D10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2232AA794();
  v5 = MEMORY[0x277D5D298];
  sub_223262204(&qword_27D081A20, MEMORY[0x277D5D298]);
  v6 = sub_2232AABC4();
  return sub_223264550(a1, v6, MEMORY[0x277D5D298], &qword_27D081A28, v5, MEMORY[0x277D5D2B0]);
}

unint64_t sub_2232A2DE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2232AAF14();

  return sub_2232A4F00(a1, v5);
}

uint64_t sub_2232A2E3C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_2232AB004();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_2232AB0F4();
      sub_2232AAC44();
      result = sub_2232AB114();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2232A30D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081950, &unk_2232AD030);
  v38 = a2;
  result = sub_2232AB004();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2232AB0F4();
      sub_2232AAC44();
      result = sub_2232AB114();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2232A3380(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081948, &unk_2232AD020);
  v38 = a2;
  result = sub_2232AB004();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2232AB0F4();
      sub_2232AAC44();
      result = sub_2232AB114();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2232A3620(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2232AA794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081938, &qword_2232ACE80);
  v43 = a2;
  result = sub_2232AB004();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_223262204(&qword_27D081A20, MEMORY[0x277D5D298]);
      result = sub_2232AABC4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2232A39FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CacheKey();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081970, &qword_2232ACEA8);
  v55 = a2;
  result = sub_2232AB004();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v51 = v3;
    v52 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = *(v53 + 72);
      v31 = *(v13 + 48) + v30 * v29;
      if (v55)
      {
        sub_22329EEF4(v31, v9);
        v32 = *(v13 + 56) + 56 * v29;
        v33 = *v32;
        v61 = *(v32 + 8);
        v62 = v33;
        v60 = *(v32 + 16);
        v59 = *(v32 + 24);
        v58 = *(v32 + 32);
        v34 = *(v32 + 40);
        v56 = *(v32 + 48);
        v57 = v34;
      }

      else
      {
        sub_223262524(v31, v9);
        v35 = *(v13 + 56) + 56 * v29;
        v36 = *v35;
        v61 = *(v35 + 8);
        v60 = *(v35 + 16);
        v59 = *(v35 + 24);
        v58 = *(v35 + 32);
        v37 = *(v35 + 40);
        v56 = *(v35 + 48);
        v57 = v37;

        v62 = v36;
        v38 = v36;
      }

      v39 = *(v14 + 40);
      sub_2232AB0F4();
      sub_2232A9504();
      sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0]);
      sub_2232AABD4();
      v40 = &v9[*(v54 + 20)];
      v41 = *v40;
      v42 = *(v40 + 1);
      sub_2232AAC44();
      result = sub_2232AB114();
      v43 = -1 << *(v14 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v21 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v13 = v52;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v21 + 8 * v45);
          if (v49 != -1)
          {
            v22 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v44) & ~*(v21 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v13 = v52;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_22329EEF4(v9, *(v14 + 48) + v30 * v22);
      v23 = *(v14 + 56) + 56 * v22;
      v24 = v61;
      *v23 = v62;
      *(v23 + 8) = v24;
      *(v23 + 16) = v60;
      *(v23 + 24) = v59;
      *(v23 + 32) = v58;
      v25 = v56;
      *(v23 + 40) = v57;
      *(v23 + 48) = v25;
      ++*(v14 + 16);
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v13 + 32);
    v3 = v51;
    if (v50 >= 64)
    {
      bzero(v16, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v50;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2232A3E28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2232AAF04() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2232AB0F4();

      sub_2232AAC44();
      v13 = sub_2232AB114();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2232A3FD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2232AAF04() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2232AB0F4();

      sub_2232AAC44();
      v13 = sub_2232AB114();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + v3);
        v20 = (v18 + v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2232A4188(unint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for CacheKey();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20]();
  v7 = a1;
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = v7;
    v15 = sub_2232AAF04();
    v7 = v14;
    v16 = (v15 + 1) & v13;
    v17 = *(v4 + 72);
    v39 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v12;
      v20 = v7;
      sub_223262524(*(a2 + 48) + v17 * v12, v9);
      v21 = *(a2 + 40);
      sub_2232AB0F4();
      sub_2232A9504();
      sub_223262204(&qword_28131DB08, MEMORY[0x277CC95F0]);
      sub_2232AABD4();
      v22 = &v9[*(v40 + 20)];
      v23 = *v22;
      v24 = *(v22 + 1);
      sub_2232AAC44();
      v25 = sub_2232AB114();
      result = sub_223262940(v9);
      v7 = v20;
      v26 = v25 & v13;
      if (v20 >= v16)
      {
        if (v26 < v16)
        {
          v10 = v39;
          v17 = v18;
          goto LABEL_4;
        }

        v17 = v18;
        if (v20 >= v26)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = v18;
        if (v26 >= v16 || v20 >= v26)
        {
LABEL_11:
          v27 = *(a2 + 48);
          result = v27 + v17 * v20;
          if (v17 * v20 < v19 || result >= v27 + v19 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v20;
            v10 = v39;
          }

          else
          {
            v28 = v17 * v20 == v19;
            v10 = v39;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v20;
            }
          }

          v29 = *(a2 + 56);
          v30 = v29 + 56 * v7;
          v31 = (v29 + 56 * v12);
          if (v7 != v12 || v30 >= v31 + 56)
          {
            v32 = *v31;
            v33 = v31[1];
            v34 = v31[2];
            *(v30 + 48) = *(v31 + 6);
            *(v30 + 16) = v33;
            *(v30 + 32) = v34;
            *v30 = v32;
            v7 = v12;
          }

          goto LABEL_4;
        }
      }

      v10 = v39;
LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v7) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2232A44CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2232A2C98(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_2232A2E3C(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_2232A2C98(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_2232AB0A4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_2232A4FDC(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_2232A4668(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2232A2C98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2232A30D8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2232A2C98(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2232AB0A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2232A5138();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_2232A47E4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2232A2C98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2232A3380(v16, a4 & 1);
      v20 = *v5;
      result = sub_2232A2C98(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2232AB0A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2232A52A8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void sub_2232A4950(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2232AA794();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2232A2D10(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2232A5410();
      goto LABEL_7;
    }

    sub_2232A3620(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_2232A2D10(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_2232A4CD4(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_2232AB0A4();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2232A4B1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for CacheKey() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2232626FC(a2);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v11 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_2232A5684();
      goto LABEL_7;
    }

    sub_2232A39FC(v16, a3 & 1);
    v25 = *v4;
    v26 = sub_2232626FC(a2);
    if ((v17 & 1) == (v27 & 1))
    {
      v13 = v26;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_223262524(a2, v10);
      return sub_2232A4D8C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_2232AB0A4();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 56 * v13;
  v21 = *v20;
  v22 = *(v20 + 48);
  v23 = *(a1 + 32);
  *(v20 + 16) = *(a1 + 16);
  *(v20 + 32) = v23;
  *v20 = *a1;
  *(v20 + 48) = *(a1 + 48);
}

uint64_t sub_2232A4CD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2232AA794();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2232A4D8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CacheKey();
  result = sub_22329EEF4(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_2232A4E48(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2232AB094())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2232A4F00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_223293BF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DD82B0](v9, a1);
      sub_223293B28(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2232A4FDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2232AAFF4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2232A5138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081950, &unk_2232AD030);
  v2 = *v0;
  v3 = sub_2232AAFF4();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2232A52A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081948, &unk_2232AD020);
  v2 = *v0;
  v3 = sub_2232AAFF4();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

char *sub_2232A5410()
{
  v1 = v0;
  v32 = sub_2232AA794();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081938, &qword_2232ACE80);
  v4 = *v0;
  v5 = sub_2232AAFF4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2232A5684()
{
  v1 = v0;
  v36 = *(type metadata accessor for CacheKey() - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081970, &qword_2232ACEA8);
  v4 = *v0;
  v5 = sub_2232AAFF4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v35;
        v21 = *(v36 + 72) * v19;
        sub_223262524(*(v4 + 48) + v21, v35);
        v22 = *(v4 + 56);
        v23 = 56 * v19;
        v24 = v22 + 56 * v19;
        v25 = *v24;
        v40 = *(v24 + 8);
        v39 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = *(v24 + 32);
        v28 = *(v24 + 48);
        v38 = *(v24 + 40);
        v29 = v37;
        sub_22329EEF4(v20, *(v37 + 48) + v21);
        v30 = *(v29 + 56) + v23;
        v4 = v34;
        v31 = v40;
        *v30 = v25;
        *(v30 + 8) = v31;
        *(v30 + 16) = v39;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v38;
        *(v30 + 48) = v28;

        result = v25;
        v14 = v41;
      }

      while (v41);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v32;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v33 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2232A590C()
{
  v1 = *(sub_2232A9504() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_2232A23DC(v0 + v2, v6, v7, v8, v10, v11);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_2232A9504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_2232A5AA8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_2232A9504() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);
  v10 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = *(v10 + 8);

  return a1(v1 + v3, v7, v8, v9, v11, v12);
}

uint64_t sub_2232A5B6C()
{
  v1 = *(sub_2232A9504() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  return sub_2232A0F88(v0 + v2, v8, v9, v6, v7);
}

void *sub_2232A5C14(void *result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_2232A5C58()
{
  result = qword_28131D1B0;
  if (!qword_28131D1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131D1B0);
  }

  return result;
}

void sub_2232A5CE8(void *a1)
{
  v2 = objc_allocWithZone(sub_2232A9814());
  v3 = sub_2232A9804();
  if (v3)
  {
    v4 = v3;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v5 = sub_2232AAAD4();
    __swift_project_value_buffer(v5, qword_28131DB88);
    v6 = sub_2232AAAC4();
    v7 = sub_2232AAD84();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22325E000, v6, v7, "Going to post AttendingStartedMessage", v8, 2u);
      MEMORY[0x223DD8AC0](v8, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v9 = sub_2232AA8A4();
    __swift_project_value_buffer(v9, qword_28131DBA0);
    *(swift_allocObject() + 16) = a1;
    v10 = a1;
    sub_2232AA874();

    v11 = *&v10[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v10[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v12 = sub_2232AAAD4();
    __swift_project_value_buffer(v12, qword_28131DB88);
    v13 = a1;
    v14 = sub_2232AAAC4();
    v15 = sub_2232AAD94();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
      v18 = sub_2232AB064();
      v20 = sub_2232603D0(v18, v19, &v21);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_22325E000, v14, v15, "Failed to create AttendingStartedMessage for session: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223DD8AC0](v17, -1, -1);
      MEMORY[0x223DD8AC0](v16, -1, -1);
    }
  }
}

uint64_t sub_2232A6044(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD000000000000020;
  v8[1] = 0x80000002232AE9E0;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

uint64_t sub_2232A6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = sub_2232AAB14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2232AAB44();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);

  v20 = v5;
  sub_2232AAB24();
  v24 = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_2232A6504(char *a1)
{
  v2 = objc_allocWithZone(sub_2232A9B64());
  v3 = sub_2232A9B54();
  if (v3)
  {
    v4 = v3;
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v5 = sub_2232AAAD4();
    __swift_project_value_buffer(v5, qword_28131DB88);
    v6 = sub_2232AAAC4();
    v7 = sub_2232AAD84();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22325E000, v6, v7, "Going to post AttendingWillStartMessage", v8, 2u);
      MEMORY[0x223DD8AC0](v8, -1, -1);
    }

    v9 = *&a1[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 32];
    __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&a1[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    if (qword_28131D338 != -1)
    {
      swift_once();
    }

    v10 = sub_2232AAAD4();
    __swift_project_value_buffer(v10, qword_28131DB88);
    v11 = a1;
    v12 = sub_2232AAAC4();
    v13 = sub_2232AAD94();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
      v16 = sub_2232AB064();
      v18 = sub_2232603D0(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_22325E000, v12, v13, "Failed to create AttendingWillStartMessage for session: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DD8AC0](v15, -1, -1);
      MEMORY[0x223DD8AC0](v14, -1, -1);
    }
  }
}

uint64_t sub_2232A67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), void (*a6)(uint64_t, uint64_t), void (*a7)(char *), uint64_t (*a8)(uint64_t, uint64_t))
{
  v31 = a3;
  v32 = a8;
  v30 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - v18;
  v20 = *MEMORY[0x277D5CDD8];
  v21 = sub_2232AA644();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  a5(v19);
  v23 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v24 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);

  a6(v23, v24);
  v25 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v26 = sub_2232A9504();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15, a2 + v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  v30(v15);

  return v32(v31, a4);
}

uint64_t sub_2232A6A38(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_2232AAC04();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_2232A6AB4(void *a1)
{
  v3 = sub_2232AAB14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2232AAB44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v1;
  aBlock[4] = sub_2232A9078;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = v1;
  sub_2232AAB24();
  v19[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v12, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_2232A6D60(void *a1, void *a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = a1;
  v6 = sub_2232AAAC4();
  v7 = sub_2232AAD94();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    if (a1)
    {
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v8 + 4) = v11;
    *v9 = v12;
    _os_log_impl(&dword_22325E000, v6, v7, "Received AttendingStoppedUnexpectedly with error = %@", v8, 0xCu);
    sub_223283234(v9);
    MEMORY[0x223DD8AC0](v9, -1, -1);
    MEMORY[0x223DD8AC0](v8, -1, -1);
  }

  MEMORY[0x28223BE20](v13);
  v14 = objc_allocWithZone(sub_2232AA254());
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
      _os_log_impl(&dword_22325E000, v17, v18, "Going to post AttendingStoppedUnexpectedlyMessage", v19, 2u);
      MEMORY[0x223DD8AC0](v19, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v20 = sub_2232AA8A4();
    __swift_project_value_buffer(v20, qword_28131DBA0);
    *(swift_allocObject() + 16) = a2;
    v21 = a2;
    sub_2232AA874();

    v22 = *&v21[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 32];
    __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v21[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    v23 = a2;
    v24 = sub_2232AAAC4();
    v25 = sub_2232AAD94();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
      v28 = sub_2232AB064();
      v30 = sub_2232603D0(v28, v29, &v31);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_22325E000, v24, v25, "Failed to create AttendingStoppedUnexpectedlyMessage for session: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DD8AC0](v27, -1, -1);
      MEMORY[0x223DD8AC0](v26, -1, -1);
    }
  }
}

uint64_t sub_2232A7184(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232AA5F4();
  v14 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v15 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);

  sub_2232AA5E4();
  v16 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, a2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  return sub_2232AA604();
}

uint64_t sub_2232A738C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD00000000000002CLL;
  v8[1] = 0x80000002232AE9B0;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

void sub_2232A75B8()
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD84();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22325E000, oslog, v1, "Received SpeechStartDetected in deprecated path, dropping.", v2, 2u);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

uint64_t sub_2232A76FC(char a1)
{
  v3 = sub_2232AAB14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2232AAB44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v1;
  aBlock[4] = sub_2232A9058;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  sub_2232AAB24();
  v18[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v12, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_2232A79A4(char a1, void *a2)
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v4 = sub_2232AAAD4();
  __swift_project_value_buffer(v4, qword_28131DB88);
  v5 = sub_2232AAAC4();
  v6 = sub_2232AAD84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_22325E000, v5, v6, "Received SpeechStartDetected with shouldDuckTTS:%{BOOL}d", v7, 8u);
    MEMORY[0x223DD8AC0](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  v9 = objc_allocWithZone(sub_2232A9DB4());
  v10 = sub_2232A9D64();
  if (v10)
  {
    v11 = v10;
    v12 = sub_2232AAAC4();
    v13 = sub_2232AAD84();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22325E000, v12, v13, "Going to post SpeechStartDetectedMessage", v14, 2u);
      MEMORY[0x223DD8AC0](v14, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v15 = sub_2232AA8A4();
    __swift_project_value_buffer(v15, qword_28131DBA0);
    *(swift_allocObject() + 16) = a2;
    v16 = a2;
    sub_2232AA874();

    v17 = *&v16[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 32];
    __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v16[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    v18 = a2;
    v19 = sub_2232AAAC4();
    v20 = sub_2232AAD94();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
      v23 = sub_2232AB064();
      v25 = sub_2232603D0(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22325E000, v19, v20, "Failed to create SpeechStartDetectedMessage for session: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DD8AC0](v22, -1, -1);
      MEMORY[0x223DD8AC0](v21, -1, -1);
    }
  }
}

uint64_t sub_2232A7D74(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x277D5CDD8];
  v12 = sub_2232AA644();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2232A9D94();
  v14 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v15 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);

  sub_2232A9D74();
  v16 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v17 = sub_2232A9504();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, a2 + v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_2232A9DA4();
  return sub_2232A9D84();
}

uint64_t sub_2232A7F88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD000000000000016;
  v8[1] = 0x80000002232AE970;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

uint64_t sub_2232A81B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2232AAB14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2232AAB44();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = v4;
  aBlock[4] = sub_2232A9030;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_7;
  v19 = _Block_copy(aBlock);

  v20 = v4;
  sub_2232AAB24();
  v24 = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_2232A8474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
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
    v45 = a2;
    v14 = a3;
    v15 = swift_slowAlloc();
    v46 = v15;
    *v13 = 134218498;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v45;
    *(v13 + 22) = 2080;
    if (a4)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = a5;
    v18 = a1;
    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v20 = sub_2232603D0(v16, v19, &v46);
    a1 = v18;
    a5 = v17;

    *(v13 + 24) = v20;
    _os_log_impl(&dword_22325E000, v11, v12, "Received SpeechRecognizerReadyForNewTurn with hostTime:%llu, audioRecordType: %lld, deviceId: %s", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v21 = v15;
    a3 = v14;
    a2 = v45;
    MEMORY[0x223DD8AC0](v21, -1, -1);
    MEMORY[0x223DD8AC0](v13, -1, -1);
  }

  MEMORY[0x28223BE20](v22);
  v23 = objc_allocWithZone(sub_2232A9AB4());
  v24 = sub_2232A9A44();
  if (v24)
  {
    v25 = v24;
    v26 = *&a5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_candidateRequestCacheManager];
    v27 = a1;
    v28 = *&a5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId];
    v29 = *&a5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8];
    v30 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
    sub_2232A1398(v27, 0, v28, v29, &a5[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId]);
    sub_2232A17DC(a2, 0, v28, v29, &a5[v30]);
    sub_2232A1FF8(a3, a4, v28, v29, &a5[v30]);
    v31 = sub_2232AAAC4();
    v32 = sub_2232AAD84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22325E000, v31, v32, "Going to post ASRReadyForNewTurnMessage", v33, 2u);
      MEMORY[0x223DD8AC0](v33, -1, -1);
    }

    if (qword_28131D340 != -1)
    {
      swift_once();
    }

    v34 = sub_2232AA8A4();
    __swift_project_value_buffer(v34, qword_28131DBA0);
    *(swift_allocObject() + 16) = a5;
    v35 = a5;
    sub_2232AA874();

    v36 = *&v35[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 32];
    __swift_project_boxed_opaque_existential_1(&v35[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher], *&v35[OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_messagePublisher + 24]);
    sub_2232AA624();
  }

  else
  {
    v37 = a5;
    v38 = sub_2232AAAC4();
    v39 = sub_2232AAD94();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v40 = 136315138;
      sub_2232A9504();
      sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
      v42 = sub_2232AB064();
      v44 = sub_2232603D0(v42, v43, &v46);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_22325E000, v38, v39, "Failed to create ASRReadyForNewTurnMessage for session: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x223DD8AC0](v41, -1, -1);
      MEMORY[0x223DD8AC0](v40, -1, -1);
    }
  }
}

uint64_t sub_2232A896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[0] = a4;
  v30[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB8, &qword_2232AD0B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0812C0, &qword_2232AD0C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0814A0, &qword_2232AC490);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v30 - v16;
  v18 = *MEMORY[0x277D5CDD8];
  v19 = sub_2232AA644();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  sub_2232A9A84();
  v21 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v22 = *(a2 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);

  sub_2232A9A54();
  v23 = OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_sessionId;
  v24 = sub_2232A9504();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, a2 + v23, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  sub_2232A9AA4();
  sub_2232A9A94();
  v26 = sub_2232AA6C4();
  v27 = *(v26 - 8);
  if ((v30[0] - 22) > 5)
  {
    v28 = MEMORY[0x277D5D0A0];
  }

  else
  {
    v28 = qword_2784D7510[v30[0] - 22];
  }

  (*(*(v26 - 8) + 104))(v9, *v28, v26);
  (*(v27 + 56))(v9, 0, 1, v26);
  sub_2232A9A64();

  return sub_2232A9A74();
}

uint64_t sub_2232A8C9C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081068, qword_2232AC410);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D081070, &unk_2232ACCC0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2232AD050;
  v6 = v5 + v4;
  v7 = (v6 + v2[14]);
  sub_2232AA7D4();
  *v7 = 0x6764697242525341;
  v7[1] = 0xE900000000000065;
  v8 = (v6 + v3 + v2[14]);
  sub_2232AA824();
  *v8 = 0xD000000000000015;
  v8[1] = 0x80000002232AE990;
  v9 = (v6 + 2 * v3 + v2[14]);
  sub_2232AA7E4();
  v10 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId + 8);
  *v9 = *(a1 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_assistantId);
  v9[1] = v10;
  v11 = (v6 + 3 * v3 + v2[14]);

  sub_2232AA864();
  sub_2232A9504();
  sub_223278990(&unk_28131DAF0, MEMORY[0x277CC95F0]);
  *v11 = sub_2232AB064();
  v11[1] = v12;
  return v5;
}

id sub_2232A8F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttendingStatesServiceHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2232A8F70()
{
  result = sub_2232A9504();
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

void sub_2232A9090()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2232A6504(*(v0 + 16));
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2232A914C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2232A5CE8(*(v0 + 16));
}

uint64_t sub_2232A91D0()
{
  v1 = sub_2232AAB14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2232AAB44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC9ASRBridge29AttendingStatesServiceHandler_queue);
  aBlock[4] = sub_2232A75B8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2232622A0;
  aBlock[3] = &block_descriptor_43;
  v12 = _Block_copy(aBlock);
  sub_2232AAB24();
  v14[1] = MEMORY[0x277D84F90];
  sub_223278990(&qword_28131DA90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D081AB0, &unk_2232AD010);
  sub_2232788DC();
  sub_2232AAEE4();
  MEMORY[0x223DD8170](0, v10, v5, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}