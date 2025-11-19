uint64_t sub_1AC694D5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC694D7C, v2);
}

uint64_t sub_1AC694D7C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_176_1();

  v0 = OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC694DDC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1AC694E70;
  v3 = v0[3];
  OUTLINED_FUNCTION_111_3(v0[2]);

  return sub_1AC5E9C04();
}

uint64_t sub_1AC694E70()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC694F68()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC694FC0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1AC69501C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC69503C, v2);
}

uint64_t sub_1AC69503C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_176_1();

  v0 = OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1AC69509C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1AC694C64;
  v3 = v0[3];
  OUTLINED_FUNCTION_111_3(v0[2]);

  return sub_1AC5EA28C();
}

uint64_t sub_1AC695130()
{
  v1 = (v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer);
  if (*(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48))
  {
    return 0;
  }

  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return result;
}

uint64_t sub_1AC695160(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC69517C, v1);
}

uint64_t sub_1AC69517C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);
  if ((*(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didPrepare) & 1) == 0)
  {
    v2 = *(v0 + 16);
    *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didPrepare) = 1;
    if (v2)
    {
      v3 = *(v0 + 24);
      if (!*(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat))
      {
        v4 = *(v0 + 16);
        *(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat) = v4;
        v5 = v4;
      }
    }
  }

  OUTLINED_FUNCTION_29();

  return v6();
}

void *sub_1AC695210()
{
  v1 = sub_1AC79FDE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = __dst - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = __dst - v8 + 16;
  MEMORY[0x1EEE9AC00](v7);
  v11 = __dst - v10 + 16;
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1ED9386C8);
  v13 = *(v2 + 16);
  v13(v11, v12, v1);
  v14 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat;
  v15 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (!v15 || [v15 commonFormat] != 3)
  {
    v26 = sub_1AC79FDC8();
    v6 = sub_1AC7A05F8();
    if (!os_log_type_enabled(v26, v6))
    {
LABEL_18:

      (*(v2 + 8))(v11, v1);
      __break(1u);
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    __dst[0] = v27;
    *v9 = 136315138;
    *(v9 + 4) = sub_1AC5CFE74(0xD000000000000030, 0x80000001AC7B71F0, __dst);
    _os_log_impl(&dword_1AC5BC000, v26, v6, "Failed precondition: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B26EAB10](v27, -1, -1);
    MEMORY[0x1B26EAB10](v9, -1, -1);

    v28 = *(v2 + 8);
    v2 += 8;
    v28(v11, v1);
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v2 + 8);
  v2 += 8;
  v17 = v11;
  v11 = v16;
  (v16)(v17, v1);
  v13(v9, v12, v1);
  v18 = *&v14[v0];
  if (!v18 || [v18 channelCount] != 1)
  {
LABEL_14:
    v14 = v11;
    v26 = sub_1AC79FDC8();
    v6 = sub_1AC7A05F8();
    if (!os_log_type_enabled(v26, v6))
    {
LABEL_19:

      (v14)(v9, v1);
      __break(1u);
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    __dst[0] = v29;
    *v11 = 136315138;
    *(v11 + 4) = sub_1AC5CFE74(0xD000000000000024, 0x80000001AC7B7230, __dst);
    _os_log_impl(&dword_1AC5BC000, v26, v6, "Failed precondition: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v11, -1, -1);

    (v14)(v9, v1);
    __break(1u);
    goto LABEL_16;
  }

  (v11)(v9, v1);
  v13(v6, v12, v1);
  v19 = v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientInfo;
  swift_beginAccess();
  if (!*(v19 + 40) || !*(v19 + 56))
  {
LABEL_16:
    v14 = v11;
    v26 = sub_1AC79FDC8();
    v9 = sub_1AC7A05F8();
    if (!os_log_type_enabled(v26, v9))
    {
LABEL_20:

      result = (v14)(v6, v1);
      __break(1u);
      return result;
    }

    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    __dst[0] = v30;
    *v11 = 136315138;
    *(v11 + 4) = sub_1AC5CFE74(0xD000000000000021, 0x80000001AC7B7260, __dst);
    _os_log_impl(&dword_1AC5BC000, v26, v9, "Failed precondition: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v11, -1, -1);

    (v14)(v6, v1);
    __break(1u);
    goto LABEL_18;
  }

  result = (v11)(v6, v1);
  *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didDidFinish) = 0;
  if (*(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clearMeasurementsBeforeRun))
  {
    v21 = [objc_opt_self() processInfo];
    [v21 systemUptime];
    v23 = v22;

    v24 = (v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements);
    swift_beginAccess();
    memcpy(__dst, v24, 0xAAuLL);
    *v24 = 1;
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
    *(v24 + 40) = 0u;
    v25 = MEMORY[0x1E69E7CC0];
    *(v24 + 7) = 0;
    *(v24 + 8) = v25;
    *(v24 + 10) = 0;
    *(v24 + 11) = 0;
    *(v24 + 9) = 0;
    *(v24 + 13) = v25;
    *(v24 + 14) = 0;
    *(v24 + 15) = 0;
    *(v24 + 16) = v25;
    *(v24 + 17) = v25;
    *(v24 + 18) = v25;
    *(v24 + 19) = 0;
    *(v24 + 20) = 0xE000000000000000;
    *(v24 + 84) = 256;
    *(v24 + 6) = v23;
    *(v24 + 12) = v23;
    return sub_1AC6A91CC(__dst);
  }

  return result;
}

uint64_t sub_1AC695870()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 392);
  v2 = [objc_opt_self() processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  OUTLINED_FUNCTION_574();
  *(v5 + 80) = v4 - *(v5 + 96);
  v6 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_modelInfo);
  *(v0 + 400) = v6;
  v7 = [v6 samplingRates];
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  sub_1AC6A8FB8();
  OUTLINED_FUNCTION_89();
  v8 = sub_1AC7A0448();

  sub_1AC68CFAC(v8);
  OUTLINED_FUNCTION_86();

  *(v0 + 360) = sub_1AC6960FC(v7);
  *(v0 + 368) = v9;

  v10 = objc_opt_self();
  v11 = v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  sub_1AC79F978();
  v12 = sub_1AC79FF58();

  v13 = [v10 languageCode_];

  *(v0 + 408) = sub_1AC79FF68();
  *(v0 + 416) = v14;
  v15 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  result = sub_1AC625D20(*(v11 + *(v15 + 20)));
  *(v0 + 424) = result;
  *(v0 + 432) = v17;
  if (v17)
  {
    v18 = *(v0 + 392);

    v19 = v18 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID;
    *(v0 + 440) = *(v18 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID);
    *(v0 + 448) = *(v19 + 8);
    objc_opt_self();
    OUTLINED_FUNCTION_117_2();

    *(v0 + 376) = sub_1AC6A8E10([v13 mainBundle]);
    *(v0 + 384) = v20;
    *(v0 + 456) = v20;
    *(v0 + 91) = *(v18 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_isCustomLmUsed);
    v21 = swift_task_alloc();
    *(v0 + 464) = v21;
    *v21 = v0;
    v21[1] = sub_1AC695AE4;
    v22 = *(v0 + 392);

    return sub_1AC696140();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC695AE4()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 464);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 448);
    v12 = *(v5 + 456);
    v13 = *(v5 + 432);
    v14 = *(v5 + 416);

    OUTLINED_FUNCTION_44();

    return v15();
  }

  else
  {
    v17 = *(v5 + 376);
    v18 = *(v5 + 360);
    v19 = *(v5 + 392);
    *(v5 + 92) = *(v5 + 368);
    *(v5 + 472) = v17;
    *(v5 + 480) = v18;
    *(v5 + 93) = v3 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1AC695C54, v19, 0);
  }
}

uint64_t sub_1AC695C54()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  *(v0 + 176) = *(v0 + 408);
  v1 = *(v0 + 93);
  v2 = *(v0 + 91);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 440);
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  v8 = *(v0 + 92) | (*(v0 + 480) < 0x1F41uLL);
  v9 = 1701736302;
  if (v3)
  {
    v9 = *(v0 + 472);
  }

  v10 = 0xE400000000000000;
  if (v3)
  {
    v10 = *(v0 + 456);
  }

  *(v0 + 192) = *(v0 + 424);
  *(v0 + 208) = v5;
  *(v0 + 216) = v4;
  *(v0 + 224) = v8 & 1;
  *(v0 + 232) = v9;
  *(v0 + 240) = v10;
  *(v0 + 248) = 1;
  *(v0 + 249) = v2;
  *(v0 + 250) = v1;
  memcpy((v0 + 16), (v0 + 176), 0x4BuLL);
  v11 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters;
  memcpy((v0 + 96), (v6 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters), 0x4BuLL);
  memcpy((v6 + v11), (v0 + 176), 0x4BuLL);
  sub_1AC6A8640(v0 + 176, v0 + 256);
  sub_1AC6A869C(v0 + 96);
  v12 = [v7 version];
  v13 = sub_1AC79FF68();
  v15 = v14;

  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v16 = *(v0 + 392);
  if (*(v16 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs) == 1)
  {
    v17 = *(qword_1EB56E6E8 + 40);
    sub_1AC762648((v0 + 16), v13, v15);
    v16 = *(v0 + 392);
  }

  sub_1AC6A869C(v0 + 176);
  v18 = v16 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  *(v18 + 48) = 1;
  v19 = v16 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBufferReceivedByEAR;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *v19 = 0u;
  *(v19 + 48) = 1;
  v20 = swift_task_alloc();
  *(v0 + 488) = v20;
  *v20 = v0;
  v20[1] = sub_1AC695E88;
  v21 = *(v0 + 392);
  OUTLINED_FUNCTION_523();

  return sub_1AC696300();
}

uint64_t sub_1AC695E88()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 488);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v3 + 496) = v11;
    *v11 = v7;
    v11[1] = sub_1AC695FD8;
    v12 = *(v3 + 392);

    return sub_1AC69678C();
  }
}

uint64_t sub_1AC695FD8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 496);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6960B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1AC6960FC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1AC696180()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC5EC338();
}

uint64_t sub_1AC696208()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  v8 = *(v6 + 8);
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1AC696320()
{
  OUTLINED_FUNCTION_93_0();
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_pendingEagerResultRequests);
  v3 = *(v2 + 16);
  if (v3 && (v4 = (v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer), (*(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48) & 1) == 0))
  {
    v23 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_pendingEagerResultRequests;
    v7 = *v4;
    v8 = v4[1];
    v9 = v4[2];
    v24 = MEMORY[0x1E69E7CC0];

    sub_1AC6312E0();
    v10 = (v2 + 48);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      OUTLINED_FUNCTION_127_2();
      sub_1AC7A0698();
      sub_1AC7A0728();
      v15 = v14;
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_9(v16);
        sub_1AC6312E0();
      }

      v10 += 3;
      v0[3] = v24;
      *(v24 + 16) = v17 + 1;
      *(v24 + 8 * v17 + 32) = v15;
      --v3;
    }

    while (v3);
    v18 = v0[2];

    v19 = *(v1 + v23);
    *(v1 + v23) = MEMORY[0x1E69E7CC0];

    v0[4] = *(v18 + 112);

    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1AC6964EC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AC696580;
  OUTLINED_FUNCTION_111_3(v0[3]);

  return sub_1AC5E92CC();
}

uint64_t sub_1AC696580()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC696678()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC6966D4()
{
  OUTLINED_FUNCTION_85();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC696730()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1AC69678C()
{
  v1[5] = v0;
  v2 = *(*(sub_1AC79FB18() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(sub_1AC79FF48() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC696848, v0, 0);
}

uint64_t sub_1AC69686C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 64) + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC5ED18C();
}

uint64_t sub_1AC6968F8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    v12 = *(v5 + 48);
    v11 = *(v5 + 56);

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    v15 = *(v5 + 40);
    *(v5 + 80) = v3 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1AC696A40, v15, 0);
  }
}

uint64_t sub_1AC696A40()
{
  OUTLINED_FUNCTION_169();
  v26 = v1;
  if ((*(v1 + 80) & 1) == 0)
  {
    v2 = *(v1 + 40);
    if (*(v0 + *(OUTLINED_FUNCTION_212_1() + 44)) != 3)
    {
      v3 = *(v1 + 56);
      sub_1AC79FEE8();
      if (qword_1EB56B610 != -1)
      {
LABEL_15:
        swift_once();
      }

      v4 = *(v1 + 48);
      v5 = *(v1 + 56);
      v6 = *(v1 + 40);
      v7 = qword_1EB56DF80;
      sub_1AC79FA88();
      OUTLINED_FUNCTION_47_4();
      v8 = sub_1AC79FFC8();
      v10 = related decl 'e' for SFSpeechErrorCode.init(_:description:)(1, v8, v9);
      v11 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
      OUTLINED_FUNCTION_12();
      v12 = *(v6 + v11);
      v13 = *(v12 + 16);

      v14 = 0;
      v15 = (v12 + 40);
      while (v13 != v14)
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_15;
        }

        v17 = *(v15 - 1);
        v16 = *v15;

        v17(v25, v18);
        if (v25[0])
        {
          v19 = v25[1];
          ObjectType = swift_getObjectType();
          (*(v19 + 40))(v10, ObjectType, v19);
          swift_unknownObjectRelease();
        }

        v15 += 2;
        ++v14;
      }
    }
  }

  v22 = *(v1 + 48);
  v21 = *(v1 + 56);

  OUTLINED_FUNCTION_29();

  return v23();
}

uint64_t sub_1AC696C48()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 624);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 632) = v0;

  if (v0)
  {
    v9 = *(v3 + 544);
    v10 = sub_1AC698E00;
  }

  else
  {
    v11 = *(v3 + 544);

    v10 = sub_1AC696D58;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC697500()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 656);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[83] = v0;

  if (v0)
  {
    v9 = v3[68];
    v10 = sub_1AC698E68;
  }

  else
  {
    v11 = v3[81];
    v12 = v3[68];

    swift_unownedRelease();
    v10 = sub_1AC697618;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC697B20()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 680);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[76];
    v10 = v3[75];

    OUTLINED_FUNCTION_27();

    return v11();
  }

  else
  {
    v13 = v3[68];
    v14 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1AC697FE4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 688);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[76];
    v10 = v3[75];

    OUTLINED_FUNCTION_27();

    return v11();
  }

  else
  {
    v13 = v3[68];
    v14 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1AC698450()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 704);
  *v4 = *v1;
  v3[89] = v7;

  if (v0)
  {
    v8 = v3[76];
    v9 = v3[75];

    OUTLINED_FUNCTION_27();

    return v10();
  }

  else
  {
    v12 = v3[68];
    v13 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC69858C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9C0, &qword_1AC7AB338);
  OUTLINED_FUNCTION_235();
  v2 = swift_allocObject();
  *(v0 + 720) = v2;
  *(v2 + 16) = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC69862C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 720) + 16);
  v2 = swift_task_alloc();
  *(v0 + 728) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC759CFC();
}

uint64_t sub_1AC6986B8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 728);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 736) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6987B0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 720);
  v2 = *(v0 + 544);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC698810()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[87];
  v2 = v0[68];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[90];

  v4 = swift_task_alloc();
  v0[93] = v4;
  *v4 = v0;
  v4[1] = sub_1AC6988BC;
  v5 = v0[68];

  return sub_1AC695850();
}

uint64_t sub_1AC6988BC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 744);
  *v4 = *v2;
  *(v3 + 752) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 544);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6989D0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 720);
  v2 = *(v0 + 544);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC698A30()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[90];
  v2 = v0[89];

  v3 = v0[92];
  OUTLINED_FUNCTION_213_0();

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC698D0C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[68];
  sub_1AC5C28A8(v0[98], v0[99]);
  v2 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1AC698D70()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[95];
  sub_1AC5C28A8(v0[96], v0[97]);
  v4 = OUTLINED_FUNCTION_39();
  sub_1AC5C28A8(v4, v5);

  v6 = v0[103];
  OUTLINED_FUNCTION_213_0();

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC698E00()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 632);
  OUTLINED_FUNCTION_213_0();

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC698E68()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[81];
  v2 = v0[68];

  swift_unownedRelease();
  v3 = v0[83];
  OUTLINED_FUNCTION_213_0();

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC698EDC()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[90];
  v2 = v0[89];

  v3 = v0[94];
  OUTLINED_FUNCTION_213_0();

  OUTLINED_FUNCTION_44();

  return v4();
}

void sub_1AC698F50(uint64_t a1, uint64_t a2, id *a3)
{
  swift_unownedRetainStrong();
  v5 = [*a3 format];
  v6 = *(a2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  *(a2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat) = v5;
}

uint64_t sub_1AC698FCC(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC698FF0, v2, 0);
}

uint64_t sub_1AC698FF0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = *(v0 + 200);

  if (v10)
  {
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v13 = *(v0 + 200);
    OUTLINED_FUNCTION_99();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    v15 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionHandlers;
    OUTLINED_FUNCTION_134_3();
    swift_beginAccess();

    sub_1AC703C5C();
    v16 = *(*(v12 + v15) + 16);
    sub_1AC703DAC(v16);
    v17 = *(v12 + v15);
    *(v17 + 16) = v16 + 1;
    v18 = v17 + 16 * v16;
    *(v18 + 32) = sub_1AC6A86F0;
    *(v18 + 40) = v14;
    *(v12 + v15) = v17;
    swift_endAccess();
  }

  v19 = *(v0 + 216);
  v20 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;
  *(v0 + 224) = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;
  v21 = *(v19 + v20);
  *(v0 + 232) = v21;
  if (v21)
  {

    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DFA0](v22, v23, v24);
  }

  else
  {
    *(v19 + v20) = 0;
    if (qword_1EB56B060 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v26 = *(v0 + 216);
    v27 = *(v26 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs);
    OUTLINED_FUNCTION_205_0(v26);
    sub_1AC6A8640(v0 + 16, v0 + 96);
    sub_1AC72A528(v27, (v0 + 16));
    sub_1AC6A869C(v0 + 16);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_149_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35);
  }
}

uint64_t sub_1AC699218()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 232) + 16);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC75A180();
}

uint64_t sub_1AC6992A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (v0)
  {
    v9 = *(v3 + 216);
    v10 = sub_1AC6994D0;
  }

  else
  {
    v10 = sub_1AC6993A8;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC6993A8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC699408()
{
  OUTLINED_FUNCTION_85();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v4 = *(v0 + 216);
  v5 = *(v4 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs);
  OUTLINED_FUNCTION_205_0(v4);
  sub_1AC6A8640(v0 + 16, v0 + 96);
  sub_1AC72A528(v5, (v0 + 16));
  sub_1AC6A869C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1AC6994D0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 232);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 248);

  return v2();
}

uint64_t sub_1AC69954C()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v1 + 16);
  if (sub_1AC5CF558() >= 2u)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v5 = sub_1AC79FDE8();
    *(v1 + 24) = __swift_project_value_buffer(v5, qword_1ED9386C8);
    v6 = sub_1AC79FDC8();
    v7 = sub_1AC7A05D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v8);
      _os_log_impl(&dword_1AC5BC000, v6, v7, "SpeechRecognizerWorker: Waiting for didFinishRecognition", v0, 2u);
      OUTLINED_FUNCTION_129();
    }

    v9 = *(v1 + 16);

    sub_1AC6A78C4(&qword_1EB56B408, type metadata accessor for SpeechRecognizerWorker);
    v10 = *(MEMORY[0x1E69E8920] + 4);
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_55(v11);
    *v12 = v13;
    v12[1] = sub_1AC699730;
    v14 = *(v1 + 16);
    OUTLINED_FUNCTION_166_2();

    return MEMORY[0x1EEE6DE38](v15, v16, v17, 0xD00000000000001DLL, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v3();
  }
}

uint64_t sub_1AC699730()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 32);
  *v4 = *v2;
  *(v3 + 40) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC699844()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1AC6998E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC699900, a3);
}

void sub_1AC699900()
{
  OUTLINED_FUNCTION_169();
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 136);
  type metadata accessor for EARSpeechRecognitionResultStream();
  swift_allocObject();
  OUTLINED_FUNCTION_117_2();

  OUTLINED_FUNCTION_166_2();
  v6 = sub_1AC6A90D0(v3, v4, v5);
  v7 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor;
  v8 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor);
  *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor) = v6;

  v9 = v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  Locale.languageRegionIdentifier.getter();
  v11 = v10;
  v12 = sub_1AC79FF58();
  v13 = SFReplacementLocaleCodeForLocaleIdentifier(v12);

  if (v13)
  {
    sub_1AC79FF68();
    v15 = v14;

    v11 = v15;
  }

  *(v0 + 48) = v11;
  v16 = *(v1 + v7);
  *(v0 + 56) = v16;
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = *(v9 + *(type metadata accessor for SpeechRecognizerSupportedFeatures() + 20));

  sub_1AC625D20(v17);
  *(v0 + 64) = v18;
  if (!v18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v19 = [**(v0 + 40) format];
  [v19 sampleRate];
  v21 = v20;
  v22 = v20;

  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v21 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v21 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = (*(v0 + 32) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_lastStringOfPriorFinalResult);
  v24 = *v23;
  *(v0 + 72) = v23[1];

  v25 = swift_task_alloc();
  *(v0 + 80) = v25;
  *v25 = v0;
  v25[1] = sub_1AC699B58;
  v26 = *(v0 + 24);
  OUTLINED_FUNCTION_172();

  sub_1AC5DC950();
}

uint64_t sub_1AC699B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v13 = v12;
  v14 = *v11;
  v15 = *v11;
  OUTLINED_FUNCTION_18();
  *v16 = v15;
  v17 = v14[10];
  v18 = *v11;
  *v16 = *v11;

  v19 = v14[9];
  v20 = v14[8];
  v21 = v14[7];
  v22 = v14[6];
  if (v10)
  {

    v23 = v18[1];
    OUTLINED_FUNCTION_636();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
    v33 = v15[4];

    v15[11] = v13;
    OUTLINED_FUNCTION_636();

    return MEMORY[0x1EEE6DFA0](v34, v35, v36);
  }
}

uint64_t sub_1AC699D28()
{
  **(v0 + 16) = *(v0 + 88);
  OUTLINED_FUNCTION_29();
  return v1();
}

unint64_t sub_1AC699D54(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_16;
      }

      v3 = v3;
      goto LABEL_6;
    case 2uLL:
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(a2);
LABEL_6:
      if (!a3)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if (v3 != 0x8000000000000000 || a3 != -1)
      {
        v8 = v3 / a3;
        v9 = (v3 % a3 > 0) | ((v3 % a3) >> 63);
        result = v8 + v9;
        if (!__OFADD__(v8, v9))
        {
          return result;
        }

        goto LABEL_14;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
  }
}

uint64_t sub_1AC699DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC699E14, 0, 0);
}

void sub_1AC699E14()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 32);
  v2 = 0;
  switch(v1 >> 62)
  {
    case 1uLL:
      v3 = *(v0 + 24);
      v2 = v3;
      goto LABEL_4;
    case 2uLL:
      v3 = *(v0 + 24);
      v2 = *(v3 + 16);
LABEL_4:
      sub_1AC5CFBB8(v3, v1);
      break;
    default:
      break;
  }

  v4 = *(v0 + 48);
  if (v2 > v4)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 56) = v4;
  v7 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v7 = v5 >> 32;
      break;
    case 2uLL:
      v7 = *(v5 + 24);
      break;
    case 3uLL:
      break;
    default:
      v7 = BYTE6(v6);
      break;
  }

  if (v2 == v7)
  {
    sub_1AC5C28A8(v5, v6);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_149_0();

    v9(v8, v9, v10, v11, v12, v13, v14, v15);
    return;
  }

  v16 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v16 = v5 >> 32;
      break;
    case 2uLL:
      v16 = *(v5 + 24);
      break;
    case 3uLL:
      break;
    default:
      v16 = BYTE6(v6);
      break;
  }

  if (v2 == v16)
  {
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_98();
  v17 = sub_1AC79F838();
  OUTLINED_FUNCTION_189_2(v17, v18);
  switch(v20)
  {
    case 1:
      v19 = *(v0 + 28);
      break;
    case 2:
      v19 = *(*(v0 + 24) + 24);
      break;
    case 3:
      break;
    default:
      v19 = *(v0 + 38);
      break;
  }

  if (v2 == v19)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_159_2();
  switch(v24)
  {
    case 1:
      v25 = *(v0 + 24);
      v23 = v25;
      v22 = v25 >> 32;
      break;
    case 2:
      v23 = *(*(v0 + 24) + 16);
      v22 = *(*(v0 + 24) + 24);
      break;
    case 3:
      break;
    default:
      v23 = 0;
      v22 = v21;
      break;
  }

  if (v4 < v23 || v22 < v4)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_115_2();
  switch(v32)
  {
    case 1:
      v33 = *(v0 + 24);
      v30 = v33;
      v31 = v33 >> 32;
      break;
    case 2:
      v34 = *(v0 + 24);
      v30 = *(v34 + 16);
      v31 = *(v34 + 24);
      break;
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_218_0();
      break;
  }

  if (v31 < v29 || v29 < v30)
  {
    goto LABEL_69;
  }

  v36 = v29 - v4;
  if (__OFSUB__(v29, v4))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = *(v0 + 40);
  if (v37 < 1)
  {
    if (v36 <= 0 && v36 > v37)
    {
LABEL_43:
      v38 = 0;
      switch(v27)
      {
        case 1:
          v38 = *(v0 + 28);
          break;
        case 2:
          v38 = *(*(v0 + 24) + 24);
          break;
        case 3:
          goto LABEL_61;
        default:
          v38 = v28;
          break;
      }

      goto LABEL_61;
    }
  }

  else if (v36 < v37)
  {
    goto LABEL_43;
  }

  if (__OFADD__(v4, v37))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_115_2();
  switch(v42)
  {
    case 1:
      v43 = *(v0 + 24);
      v40 = v43;
      v41 = v43 >> 32;
      break;
    case 2:
      v44 = *(v0 + 24);
      v40 = *(v44 + 16);
      v41 = *(v44 + 24);
      break;
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_218_0();
      break;
  }

  if (v41 < v38 || v38 < v40)
  {
    goto LABEL_73;
  }

LABEL_61:
  *(v0 + 80) = v38;
  if (v38 < v4)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v46 = swift_task_alloc();
  *(v0 + 88) = v46;
  *v46 = v0;
  OUTLINED_FUNCTION_46_7(v46);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();

  sub_1AC5D0420();
}

uint64_t sub_1AC69A1B8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1AC69A2B0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  sub_1AC5C28A8(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  *(v0 + 56) = v1;
  v3 = *(v0 + 32);
  v4 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = *(v0 + 28);
      break;
    case 2uLL:
      v4 = *(*(v0 + 24) + 24);
      break;
    case 3uLL:
      break;
    default:
      v4 = BYTE6(v3);
      break;
  }

  if (v2 == v4)
  {
    sub_1AC5C28A8(*(v0 + 24), *(v0 + 32));
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_149_0();

    v6(v5, v6, v7, v8, v9, v10, v11, v12);
    return;
  }

  v13 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = *(v0 + 28);
      break;
    case 2uLL:
      v13 = *(*(v0 + 24) + 24);
      break;
    case 3uLL:
      break;
    default:
      v13 = BYTE6(v3);
      break;
  }

  if (v2 == v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_98();
  v15 = sub_1AC79F838();
  OUTLINED_FUNCTION_189_2(v15, v16);
  switch(v18)
  {
    case 1:
      v17 = *(v0 + 28);
      break;
    case 2:
      v17 = *(*(v0 + 24) + 24);
      break;
    case 3:
      break;
    default:
      v17 = *(v0 + 38);
      break;
  }

  if (v2 == v17)
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_159_2();
  switch(v22)
  {
    case 1:
      v23 = *(v0 + 24);
      v21 = v23;
      v20 = v23 >> 32;
      break;
    case 2:
      v21 = *(*(v0 + 24) + 16);
      v20 = *(*(v0 + 24) + 24);
      break;
    case 3:
      break;
    default:
      v21 = 0;
      v20 = v19;
      break;
  }

  if (v1 < v21 || v20 < v1)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_115_2();
  switch(v30)
  {
    case 1:
      v31 = *(v0 + 24);
      v28 = v31;
      v29 = v31 >> 32;
      break;
    case 2:
      v32 = *(v0 + 24);
      v28 = *(v32 + 16);
      v29 = *(v32 + 24);
      break;
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_218_0();
      break;
  }

  if (v29 < v27 || v27 < v28)
  {
    goto LABEL_63;
  }

  v34 = v27 - v1;
  if (__OFSUB__(v27, v1))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v35 = *(v0 + 40);
  if (v35 < 1)
  {
    if (v34 <= 0 && v34 > v35)
    {
LABEL_38:
      v36 = 0;
      switch(v25)
      {
        case 1:
          v36 = *(v0 + 28);
          break;
        case 2:
          v36 = *(*(v0 + 24) + 24);
          break;
        case 3:
          goto LABEL_56;
        default:
          v36 = v26;
          break;
      }

      goto LABEL_56;
    }
  }

  else if (v34 < v35)
  {
    goto LABEL_38;
  }

  if (__OFADD__(v1, v35))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_115_2();
  switch(v40)
  {
    case 1:
      v41 = *(v0 + 24);
      v38 = v41;
      v39 = v41 >> 32;
      break;
    case 2:
      v42 = *(v0 + 24);
      v38 = *(v42 + 16);
      v39 = *(v42 + 24);
      break;
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_218_0();
      break;
  }

  if (v39 < v36 || v36 < v38)
  {
    goto LABEL_67;
  }

LABEL_56:
  *(v0 + 80) = v36;
  if (v36 < v1)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v44 = swift_task_alloc();
  *(v0 + 88) = v44;
  *v44 = v0;
  OUTLINED_FUNCTION_46_7(v44);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();

  sub_1AC5D0420();
}

uint64_t sub_1AC69A618()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[3];
  v2 = v0[4];
  sub_1AC5C28A8(v0[8], v0[9]);
  v3 = OUTLINED_FUNCTION_39();
  sub_1AC5C28A8(v3, v4);
  OUTLINED_FUNCTION_44();
  v6 = v0[12];

  return v5();
}

uint64_t sub_1AC69A680(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 160) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC69A6A4, v4);
}

uint64_t sub_1AC69A6A4()
{
  OUTLINED_FUNCTION_57();
  v41 = v0;
  if (*(v0 + 160) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v2 = sub_1AC69A9A4;
LABEL_14:
    v1[1] = v2;
    v39 = *(v0 + 64);

    return sub_1AC698FCC(0, 0);
  }

  v3 = *(v0 + 64) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer;
  if ((*(v3 + 48) & 1) == 0)
  {
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    v30 = *(v0 + 40);
    v32 = *(v3 + 32);
    v31 = *(v3 + 40);
    v34 = *(v3 + 16);
    v33 = *(v3 + 24);
    v35 = *(v3 + 8);
    *(v0 + 88) = *v3;
    *(v0 + 96) = v35;
    *(v0 + 104) = v34;
    *(v0 + 112) = v33;
    *(v0 + 120) = v32;
    *(v0 + 128) = v31;
    *(v0 + 136) = v30;
    *(v0 + 144) = v29;
    *(v0 + 152) = v28;
    if (CMTimeRangeContainsTime((v0 + 88), (v0 + 136)) || (v36 = *(v0 + 48), v37 = *(v0 + 56), v38 = *(v0 + 40), (sub_1AC7A0678() & 1) != 0))
    {
      v1 = swift_task_alloc();
      *(v0 + 80) = v1;
      *v1 = v0;
      v2 = sub_1AC69AA84;
      goto LABEL_14;
    }
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v4 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v4, qword_1ED9386C8);
  v5 = sub_1AC79FDC8();
  v6 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = OUTLINED_FUNCTION_448();
    v11 = OUTLINED_FUNCTION_48();
    v40 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1AC5CFE74(0xD00000000000001DLL, 0x80000001AC7B7170, &v40);
    *(v10 + 12) = 2048;
    OUTLINED_FUNCTION_157_1();
    sub_1AC7A0728();
    *(v10 + 14) = v12;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_129();
  }

  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v21 = *(v0 + 40);
  v20 = *(v0 + 48);
  v22 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_scheduledFinalizations;
  OUTLINED_FUNCTION_574();
  sub_1AC703CA4();
  v23 = *(*(v18 + v22) + 16);
  sub_1AC703D4C(v23);
  v24 = *(v18 + v22);
  *(v24 + 16) = v23 + 1;
  v25 = (v24 + 24 * v23);
  v25[4] = v21;
  v25[5] = v20;
  v25[6] = v19;
  *(v18 + v22) = v24;
  OUTLINED_FUNCTION_29();

  return v26();
}

uint64_t sub_1AC69A9A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC69AA84()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC69AB84()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_46_7(v11);

  return sub_1AC698FCC(0, 0);
}

uint64_t sub_1AC69AC94()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    v9 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1AC69ADAC, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v10();
  }
}

uint64_t sub_1AC69ADAC()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_1AC79FDC8();
  v5 = sub_1AC7A05F8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_150();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_94();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1AC5C9624(v9, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1AC69AEF0()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;
  v0[23] = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;
  v3 = *(v1 + v2);
  v0[24] = v3;
  if (v3)
  {
    v4 = off_1ED937D60;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v5 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v5, qword_1ED9386C8);
    v6 = sub_1AC79FDC8();
    v7 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_153(v7))
    {
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v8);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_129();
    }

    v14 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v17();
  }
}

uint64_t sub_1AC69B014()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 192) + 16);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC75A49C();
}

uint64_t sub_1AC69B0A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 200);
  *v4 = *v2;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 176);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC69B1B4()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v5 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs);
  OUTLINED_FUNCTION_205_0(v5);
  sub_1AC6A8640(v0 + 16, v0 + 96);
  sub_1AC72A530(v6, (v0 + 16));
  sub_1AC6A869C(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1AC69B290()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 208);

  return v2();
}

uint64_t sub_1AC69B308()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_46_7(v11);

  return sub_1AC698FCC(0, 0);
}

uint64_t sub_1AC69B418()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v3 + 40) = v11;
    *v11 = v7;
    v11[1] = sub_1AC69B568;
    v12 = *(v3 + 16);

    return sub_1AC69952C();
  }
}

uint64_t sub_1AC69B568()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    v12 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1AC69B684()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}

void sub_1AC69B720(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  OUTLINED_FUNCTION_12();
  v70 = v3;
  v4 = *(v3 + 128);
  v5 = *(v4 + 16);

  v6 = [a1 correctPartialResultIndexList];
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  OUTLINED_FUNCTION_93();
  v7 = sub_1AC7A0158();

  v8 = sub_1AC61C24C(v7);

  if (v8 < 1 || !v5)
  {
    goto LABEL_35;
  }

  v9 = [a1 correctPartialResultIndexList];
  v10 = sub_1AC7A0158();

  v11 = sub_1AC61C24C(v10);

  if (v11 < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_1_8();
    swift_once();
    goto LABEL_38;
  }

  if (!v11)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_574();
  v71 = 0;
  v68 = v4 + 32;
  v69 = v4;
  v12 = 0.0;
  v13 = 1.79769313e308;
  v14 = 4;
  *&v15 = 134218242;
  v65 = v15;
  v16 = 0.0;
  v66 = v5;
  v67 = a1;
  do
  {
    v17 = v14 - 4;
    v10 = [a1 correctPartialResultIndexList];
    v18 = sub_1AC7A0158();

    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B26E95B0](v14 - 4, v18);
    }

    else
    {
      if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v19 = *(v18 + 8 * v14);
    }

    v10 = v19;

    v20 = [v10 integerValue];

    if (v20 >= 1 && v20 < v5)
    {
      if (__OFADD__(v71++, 1))
      {
        goto LABEL_46;
      }

      v23 = [a1 preITNRecognition];
      v24 = [v23 oneBest];

      sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
      v25 = sub_1AC7A0158();

      v10 = (v25 & 0xC000000000000001);
      sub_1AC61C25C(v14 - 4, (v25 & 0xC000000000000001) == 0, v25);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1B26E95B0](v14 - 4, v25);
      }

      else
      {
        v26 = *(v25 + 8 * v14);
      }

      v27 = v26;

      [v27 silenceStart];
      v29 = v28;
      [a1 utteranceStart];
      if (v20 >= *(v69 + 16))
      {
        goto LABEL_47;
      }

      v31 = v29 + v30;
      v32 = *(v68 + 8 * v20);
      v10 = v70;
      v33 = *(v70 + 16);
      v34 = [v27 tokenName];
      sub_1AC79FF68();

      v35 = *(v70 + 24);
      sub_1AC70AA78(v31);
      v37 = __CFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_48;
      }

      sub_1AC70AA78(v32);
      if (v39 >= v38)
      {
        v40 = v39;
        if (qword_1EB56B060 != -1)
        {
          OUTLINED_FUNCTION_1_8();
          swift_once();
        }

        v41 = OUTLINED_FUNCTION_226();
        sub_1AC72A4C4(v41, v42, v38, v40);
      }

      v43 = v32 - (v31 + v33);

      MEMORY[0x1B26E8C40](0, 0xE000000000000000);

      MEMORY[0x1B26E8C40](32, 0xE100000000000000);
      v44 = OUTLINED_FUNCTION_226();
      MEMORY[0x1B26E8C40](v44);

      MEMORY[0x1B26E8C40](58, 0xE100000000000000);
      sub_1AC7A03F8();

      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v45 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v45, qword_1ED9386C8);
      v46 = sub_1AC79FDC8();
      v47 = sub_1AC7A05D8();
      if (OUTLINED_FUNCTION_366(v47))
      {
        v48 = OUTLINED_FUNCTION_448();
        v72 = OUTLINED_FUNCTION_48();
        *v48 = v65;
        *(v48 + 4) = v17;
        *(v48 + 12) = 2080;

        v49 = OUTLINED_FUNCTION_226();
        v52 = sub_1AC5CFE74(v49, v50, v51);

        *(v48 + 14) = v52;
        _os_log_impl(&dword_1AC5BC000, v46, v47, "TTAW%ld: %s", v48, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v72);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_129();
      }

      v5 = v66;
      a1 = v67;
      v16 = v16 + v43;
      if (v12 <= v43)
      {
        v12 = v43;
      }

      if (v43 < v13)
      {
        v13 = v43;
      }
    }

    ++v14;
    --v11;
  }

  while (v11);

  if (v71 <= 0)
  {
LABEL_35:

    return;
  }

  sub_1AC7A09C8();

  v53 = OUTLINED_FUNCTION_226();
  MEMORY[0x1B26E8C40](v53);

  MEMORY[0x1B26E8C40](0x3A5741545420, 0xE600000000000000);
  OUTLINED_FUNCTION_260_0();
  MEMORY[0x1B26E8C40](0x3A4E41454D20, 0xE600000000000000);
  OUTLINED_FUNCTION_260_0();
  MEMORY[0x1B26E8C40](0x3A58414D202CLL, 0xE600000000000000);
  OUTLINED_FUNCTION_260_0();
  MEMORY[0x1B26E8C40](0x3A4E494D20, 0xE500000000000000);
  OUTLINED_FUNCTION_260_0();
  MEMORY[0x1B26E8C40](32, 0xE100000000000000);

  v10 = 0;
  if (qword_1EB56B060 != -1)
  {
    goto LABEL_50;
  }

LABEL_38:
  v54 = qword_1EB56E6E8;
  sub_1AC7A09C8();

  v55 = OUTLINED_FUNCTION_172();
  MEMORY[0x1B26E8C40](v55);

  v56 = mach_continuous_time();
  v57 = *(v54 + 24);
  sub_1AC708070("ES: TTAW", 8, 2, 0xD00000000000001ELL, 0x80000001AC7B73A0, v56);

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v58 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v58, qword_1ED9386C8);

  v59 = sub_1AC79FDC8();
  v60 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_366(v60))
  {
    v61 = OUTLINED_FUNCTION_150();
    v73 = OUTLINED_FUNCTION_48();
    *v61 = 136315138;
    v62 = OUTLINED_FUNCTION_172();
    sub_1AC5CFE74(v62, v63, v64);
    OUTLINED_FUNCTION_108_0();

    *(v61 + 4) = v10;
    _os_log_impl(&dword_1AC5BC000, v59, v60, "TTAW: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1AC69BF38(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 104);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      return 0;
    }

    v7 = v5 + 3;
    v8 = *v5 < a1;
    v5 += 3;
  }

  while (v8);
  if (*(v7 - 8))
  {
    return 0;
  }

  else
  {
    return *(v7 - 2);
  }
}

uint64_t sub_1AC69BFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange);
  v8 = *(v4 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange);
  v9 = *(v4 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1AC5C3958(v8);
  v10 = (v4 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError);
  v11 = *(v4 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError);
  v12 = *(v4 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError + 8);
  *v10 = a3;
  v10[1] = a4;

  return sub_1AC5C3958(v11);
}

uint64_t sub_1AC69C034(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC69C050, v1);
}

uint64_t sub_1AC69C050()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1AC658F90(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_55(v4);
  *v5 = v6;
  v5[1] = sub_1AC61DAF0;
  v7 = *(v0 + 24);

  return sub_1AC696300();
}

uint64_t sub_1AC69C0F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_12();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(a1 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AC69C138(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  *(inited + 32) = sub_1AC6A927C;
  *(inited + 40) = v9;
  swift_unknownObjectRetain();
  v10 = a3;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC69C208(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = *(*(*a1 + 112) + 16);
  v8 = *(*a1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService);
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v6 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor);
  if (v7 == a2)
  {
    *(v6 + 120) = 1;
  }

  else if ((!v9 || v9 != a2) && (!v10 || v10 != a2))
  {
    goto LABEL_14;
  }

  sub_1AC69C2E4(a4);

LABEL_14:
}

void sub_1AC69C2E4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v93 - v14);
  if ((*(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didDidFinish) & 1) == 0)
  {
    v94 = v11;
    v96 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didDidFinish;
    v16 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService);
    *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService) = 0;

    v17 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor);
    *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor) = 0;

    v18 = v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
    swift_beginAccess();
    v19 = *(v18 + 48);
    v20 = [objc_opt_self() processInfo];
    [v20 systemUptime];
    v22 = v21;

    v23 = *(v18 + 56);
    v24 = *(v18 + 32);
    v100 = *(v18 + 24);
    v99 = *(v18 + 40);
    v102 = *(v18 + 168);
    v25 = *(v18 + 160);
    v101 = *(v18 + 152);
    v105 = v25;
    v26 = v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientInfo;
    swift_beginAccess();
    v27 = *(v26 + 40);
    v95 = v5;
    if (v27)
    {
      v98 = *(v26 + 32);
      v28 = v27;
    }

    else
    {
      v98 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
    v30 = *(v29 + *(type metadata accessor for SpeechRecognizerSupportedFeatures() + 20));
    v31 = v105;

    v32 = sub_1AC625D20(v30);
    v103 = v33;
    if (!v33)
    {
      __break(1u);
      return;
    }

    v97 = v32;
    v104 = *(v18 + 64);
    *(v18 + 64) = MEMORY[0x1E69E7CC0];
    *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clearMeasurementsBeforeRun) = 1;
    v34 = v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated;
    swift_beginAccess();
    *(v34 + 4) = 0;
    *v34 = 2;
    v35 = v28;
    if (off_1ED937D60 != -1)
    {
LABEL_51:
      swift_once();
    }

    v36 = sub_1AC79FDE8();
    __swift_project_value_buffer(v36, qword_1ED9386C8);
    v37 = sub_1AC79FDC8();
    v38 = sub_1AC7A05D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v22 - v24;
      _os_log_impl(&dword_1AC5BC000, v37, v38, "Audio finish to recognizer finish = %f sec", v39, 0xCu);
      v40 = v39;
      v35 = v28;
      MEMORY[0x1B26EAB10](v40, -1, -1);
    }

    v41 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v41);
    v42 = sub_1AC6A78C4(&qword_1EB56B408, type metadata accessor for SpeechRecognizerWorker);
    v43 = swift_allocObject();
    *(v43 + 16) = v2;
    *(v43 + 24) = v42;
    v44 = v97;
    *(v43 + 32) = v2;
    *(v43 + 40) = v44;
    v45 = v100;
    *(v43 + 48) = v103;
    *(v43 + 56) = v45;
    v46 = v104;
    *(v43 + 64) = v99;
    *(v43 + 72) = v46;
    *(v43 + 80) = v19;
    *(v43 + 88) = v22;
    *(v43 + 96) = v23;
    *(v43 + 104) = v102;
    *(v43 + 112) = v101;
    *(v43 + 120) = v31;
    *(v43 + 128) = v98;
    *(v43 + 136) = v35;
    *(v43 + 144) = a1;
    swift_retain_n();

    v47 = a1;
    sub_1AC659DBC();

    v48 = (v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange);
    if (*(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange + 48))
    {
      goto LABEL_12;
    }

    v50 = v48[4];
    v49 = v48[5];
    v51 = v48[1];
    v112 = *v48;
    v113 = v51;
    v114 = *(v48 + 1);
    v115 = v50;
    v116 = v49;
    v52 = sub_1AC7A0558();
    v55 = *MEMORY[0x1E6960CC0];
    v56 = *(MEMORY[0x1E6960CC0] + 8);
    v57 = *(MEMORY[0x1E6960CC0] + 12);
    v58 = *(MEMORY[0x1E6960CC0] + 16);
    *v48 = v52;
    v48[1] = v53;
    v48[2] = v54;
    v48[3] = v55;
    v48[4] = v56 | (v57 << 32);
    v48[5] = v58;
    *(v48 + 48) = 0;
    v59 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange);
    if (!v59)
    {
LABEL_12:
    }

    else
    {
      v60 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange + 8);
      v108[0] = v52;
      v108[1] = v53;
      v108[2] = v54;
      v108[3] = v55;
      v109 = v56;
      v110 = v57;
      v111 = v58;

      v59(v108);
      sub_1AC5C3958(v59);
    }

    v61 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
    swift_beginAccess();
    v62 = *(v2 + v61);
    v15 = *(v62 + 16);

    v28 = 0;
    v31 = (v62 + 40);
    while (v15 != v28)
    {
      if (v28 >= *(v62 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v35 = *(v31 - 1);
      v63 = *v31;

      (v35)(v107, v64);

      if (v107[0])
      {
        v35 = v107[1];
        ObjectType = swift_getObjectType();
        (v35[1])(a1, ObjectType, v35);
        swift_unknownObjectRelease();
      }

      v31 += 2;
      v28 = (v28 + 1);
    }

    v66 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionHandlers;
    swift_beginAccess();
    v67 = *(v2 + v66);
    v31 = *(v67 + 16);

    v35 = 0;
    v15 = (v67 + 40);
    while (v31 != v35)
    {
      if (v35 >= *(v67 + 16))
      {
        goto LABEL_50;
      }

      v35 = (v35 + 1);
      v28 = *(v15 - 1);
      v68 = *v15;
      v106 = a1;

      (v28)(&v106);

      v15 += 2;
    }

    v69 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionContinuations);
    if (!*(v69 + 16))
    {
      v81 = v96;
      if (a1)
      {
        v82 = a1;
        v83 = sub_1AC69F03C(a1);
        if (v83)
        {
          v84 = v83;
          v85 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError);
          if (v85)
          {
            v86 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError + 8);

            v85(v84);

            sub_1AC5C3958(v85);
          }

          else
          {
          }

          v92 = v84;
        }

        else
        {
          v92 = a1;
        }
      }

      goto LABEL_47;
    }

    *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionContinuations) = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v70 = a1;
      v71 = sub_1AC69F03C(a1);
      if (v71)
      {
        v72 = v71;
        v73 = *(v69 + 16);
        if (v73)
        {
          v105 = v2;
          v74 = *(v95 + 16);
          v75 = (*(v95 + 80) + 32) & ~*(v95 + 80);
          v104 = v69;
          v76 = v69 + v75;
          v77 = *(v95 + 72);
          v78 = (v95 + 8);
          v79 = v94;
          do
          {
            v74(v79, v76, v4);
            v106 = v72;
            v80 = v72;
            sub_1AC7A01C8();
            (*v78)(v79, v4);
            v76 += v77;
            --v73;
          }

          while (v73);

LABEL_39:
          v81 = v96;
          v2 = v105;
LABEL_47:
          *(v2 + v81) = 1;
          return;
        }

        goto LABEL_42;
      }
    }

    v87 = *(v69 + 16);
    if (v87)
    {
      v105 = v2;
      v88 = *(v95 + 16);
      v89 = v69 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v90 = *(v95 + 72);
      v91 = (v95 + 8);
      do
      {
        v88(v9, v89, v4);
        sub_1AC7A01D8();
        (*v91)(v9, v4);
        v89 += v90;
        --v87;
      }

      while (v87);

      goto LABEL_39;
    }

LABEL_42:
    v81 = v96;
    goto LABEL_47;
  }
}

uint64_t sub_1AC69CCEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E8, &qword_1AC7AB3A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = a1[2];
  if (!v8)
  {
LABEL_5:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v16 = sub_1AC79FDE8();
      __swift_project_value_buffer(v16, qword_1ED9386C8);
      v17 = sub_1AC79FDC8();
      v18 = sub_1AC7A05F8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1AC5CFE74(0xD000000000000025, 0x80000001AC7B7290, v21);
        _os_log_impl(&dword_1AC5BC000, v17, v18, "Failed precondition: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B26EAB10](v20, -1, -1);
        MEMORY[0x1B26EAB10](v19, -1, -1);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }
  }

  v10 = a1[4];
  v9 = a1[5];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  if (v8 != 1)
  {

    goto LABEL_5;
  }

  v12 = v11;
  v13 = *(*v1 + 104);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AC6A9288;
  *(v14 + 24) = v12;
  v21[0] = sub_1AC6A92C0;
  v21[1] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9F0, &qword_1AC7AB3B0);
  sub_1AC7A02A8();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AC69CF9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9F8, &qword_1AC7AB3D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = a1[2];
  if (!v6)
  {
LABEL_5:
    if (off_1ED937D60 != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v17 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v17, qword_1ED9386C8);
      v18 = sub_1AC79FDC8();
      v19 = sub_1AC7A05F8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_150();
        v21 = OUTLINED_FUNCTION_48();
        v22[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1AC5CFE74(0xD000000000000025, 0x80000001AC7B7290, v22);
        _os_log_impl(&dword_1AC5BC000, v18, v19, "Failed precondition: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_129();
      }

      __break(1u);
LABEL_9:
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }
  }

  v8 = a1[4];
  v7 = a1[5];
  OUTLINED_FUNCTION_99();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  if (v6 != 1)
  {

    goto LABEL_5;
  }

  v10 = v9;
  v11 = *(*v1 + 104);
  OUTLINED_FUNCTION_99();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AC6AA810;
  *(v12 + 24) = v10;
  v22[0] = sub_1AC6AA814;
  v22[1] = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA00, &qword_1AC7B4610);
  sub_1AC7A02A8();

  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_172();
  return v15(v14);
}

uint64_t sub_1AC69D20C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC6AA4F4;
  *(inited + 40) = v5;
  v6 = a1;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC69D2BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v4 = sub_1AC79FDE8();
  __swift_project_value_buffer(v4, qword_1ED9386C8);
  v5 = sub_1AC79FDC8();
  v6 = sub_1AC7A05E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1AC5CFE74(0xD000000000000031, 0x80000001AC7B73D0, &v9);
    _os_log_impl(&dword_1AC5BC000, v5, v6, "SpeechRecognizerWorker.%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B26EAB10](v8, -1, -1);
    MEMORY[0x1B26EAB10](v7, -1, -1);
  }

  sub_1AC69C2E4(a2);
}

uint64_t sub_1AC69D410(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 120) = v17;
  *(v11 + 104) = v16;
  *(v11 + 88) = v15;
  *(v11 + 152) = v14;
  *(v11 + 72) = a2;
  *(v11 + 80) = a3;
  *(v11 + 64) = a1;
  *(v11 + 48) = a11;
  *(v11 + 56) = v13;
  *(v11 + 32) = a9;
  *(v11 + 40) = a10;
  *(v11 + 16) = a7;
  *(v11 + 24) = a8;
  return MEMORY[0x1EEE6DFA0](sub_1AC69D464, a7, 0);
}

uint64_t sub_1AC69D464()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_119_3();
  *(v1 + 128) = *(*(v1 + 16) + 112);

  v2 = v0;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC69D4FC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 128) + 16);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1AC69D5C8;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v17 = *(v0 + 120);
  v16 = *(v0 + 104);
  v15 = *(v0 + 88);
  v14 = *(v0 + 152);

  return sub_1AC69D974(v5, v3, v4, v2, v1, v10, v11, v8, v9, v6, v7);
}

uint64_t sub_1AC69D5C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC69D6C0()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_119_3();
  v2 = *(v1 + 16);

  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC69D77C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_119_3();
  v2 = *(v1 + 16);

  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC69D818()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v2, qword_1ED9386C8);
  v3 = v1;
  v4 = sub_1AC79FDC8();
  v5 = sub_1AC7A05F8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_150();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_94();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1AC5C9624(v9, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1AC69D974(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 720) = v24;
  *(v11 + 688) = v22;
  *(v11 + 704) = v23;
  *(v11 + 381) = v21;
  *(v11 + 680) = a3;
  *(v11 + 672) = a2;
  *(v11 + 664) = a1;
  *(v11 + 656) = a11;
  *(v11 + 648) = a10;
  *(v11 + 640) = a9;
  *(v11 + 632) = a8;
  *(v11 + 624) = a7;
  *(v11 + 616) = a6;
  *(v11 + 608) = a5;
  v12 = sub_1AC79F958();
  *(v11 + 728) = v12;
  v13 = *(v12 - 8);
  *(v11 + 736) = v13;
  v14 = *(v13 + 64) + 15;
  *(v11 + 744) = swift_task_alloc();
  v15 = *(*(type metadata accessor for ClientInfo(0) - 8) + 64) + 15;
  *(v11 + 752) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520) - 8) + 64) + 15;
  *(v11 + 760) = swift_task_alloc();
  *(v11 + 768) = swift_task_alloc();
  *(v11 + 776) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790) - 8) + 64) + 15;
  *(v11 + 784) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v11 + 792) = v18;
  *v18 = v11;
  v18[1] = sub_1AC69DB5C;

  return sub_1AC5E5994();
}

uint64_t sub_1AC69DB5C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 792);
  v7 = *v1;
  *v4 = *v1;
  v3[100] = v8;

  if (v0)
  {
    v9 = v3[98];
    v10 = v3[97];
    v11 = v3[96];
    v12 = v3[95];
    v13 = v3[94];
    v14 = v3[93];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_523();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v24 = swift_task_alloc();
    v3[101] = v24;
    *v24 = v7;
    v24[1] = sub_1AC69DCFC;
    v25 = v3[76];
    OUTLINED_FUNCTION_523();

    return sub_1AC5E5C7C();
  }
}

uint64_t sub_1AC69DCFC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 808);
  v7 = *v1;
  *v4 = v7;
  v3[102] = v8;
  v3[103] = v0;

  if (v0)
  {
    v9 = v3[77];

    return MEMORY[0x1EEE6DFA0](sub_1AC69EDB0, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[104] = v10;
    *v10 = v7;
    v10[1] = sub_1AC69DE5C;
    v11 = v3[76];

    return sub_1AC5E5F64();
  }
}

uint64_t sub_1AC69DE5C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 832);
  v7 = *v1;
  *v4 = v7;
  v3[105] = v8;
  v3[106] = v0;

  if (v0)
  {
    v9 = v3[77];

    return MEMORY[0x1EEE6DFA0](sub_1AC69EE40, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[107] = v10;
    *v10 = v7;
    v10[1] = sub_1AC69DFBC;
    v11 = v3[76];

    return sub_1AC5EC920();
  }
}

uint64_t sub_1AC69DFBC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 856);
  v6 = *(v4 + 616);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v9 + 864) = v10;
  *(v9 + 872) = v0;

  if (v0)
  {
    v11 = sub_1AC69EEDC;
  }

  else
  {
    v11 = sub_1AC69E0D0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v6, 0);
}

uint64_t sub_1AC69E0D0()
{
  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v8 = *(v0 + 616) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 8);
  OUTLINED_FUNCTION_128_1();
  sub_1AC728418();
  OUTLINED_FUNCTION_128_1();
  sub_1AC7283A8();
  OUTLINED_FUNCTION_128_1();
  sub_1AC7283E0();
  OUTLINED_FUNCTION_128_1();
  sub_1AC7276E0();
  if (v1 >= v2)
  {
    v16 = v1 - v2;
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v10 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v10, qword_1ED9386C8);
    v11 = sub_1AC79FDC8();
    v12 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_153(v12))
    {
      v13 = *(v0 + 672);
      v14 = *(v0 + 664);
      v15 = OUTLINED_FUNCTION_448();
      *v15 = 134218240;
      *(v15 + 4) = v14;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v13;
      _os_log_impl(&dword_1AC5BC000, v11, v3, "_recognitionBeginTime (%f) is greater than _recognitionEndTime (%f)", v15, 0x16u);
      OUTLINED_FUNCTION_77_1();
    }

    v16 = -1.0;
  }

  v17 = *(v0 + 816);
  v18 = *(v0 + 800);
  v19 = *(v0 + 680);
  v20 = *(v0 + 672);
  v21 = *(v0 + 616);
  v22 = (v21 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures);
  v23 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v141 = v22;
  v24 = *(v22 + *(v23 + 24));
  v25 = *(v21 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionStatistics);
  *(v21 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionStatistics) = v18;
  swift_bridgeObjectRetain_n();

  v26 = *(v21 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionUtterenceStatistics);
  *(v21 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionUtterenceStatistics) = v17;

  v27 = *(v8 + 32);
  v28 = v19 * 1000.0;
  v29 = *(v0 + 800);
  if (v19 * 1000.0 <= 0.0)
  {
    v38 = *(v0 + 800);

    v37 = 0.0;
  }

  else
  {
    v30 = *MEMORY[0x1E699B9B8];
    v31 = sub_1AC79FF68();
    v33 = sub_1AC6DC87C(v31, v32, v29);

    if (v33)
    {
      [v33 doubleValue];
      v35 = v34;

      v36 = v35 / v28;
      v37 = 0.0;
      if (v36 >= 0.0)
      {
        v37 = v36;
      }
    }

    else
    {
      v37 = 0.0 / v28;
    }
  }

  v39 = v24 ^ 1;
  v40 = v20 - v27;
  v41 = *(v8 + 128);
  v42 = 0.0;
  if (*(v41 + 16))
  {
    v43 = *(v8 + 88);
    if (v43 > 0.0)
    {
      v42 = *(v41 + 32) - v43;
    }
  }

  __dst = (v0 + 384);
  v44 = *(v0 + 864);
  v45 = *(v0 + 840);
  v46 = *(v0 + 784);
  v47 = *(v0 + 381);
  v48 = *(v0 + 680);
  v49 = *(v8 + 72);
  v50 = *(v8 + 80);
  type metadata accessor for RequestEndMetrics();
  inited = swift_initStackObject();
  *(v0 + 880) = inited;
  v52 = v45;
  v53 = sub_1AC72A850(v17, v18, v45, v47, v39 & 1, v16, v48, v40, v44, v42, v37, v49, v50);
  *(v0 + 888) = v53;
  sub_1AC6AA65C(v141 + *(v23 + 36), v46, &qword_1EB56C318, &unk_1AC7A8790);
  type metadata accessor for TranscriberCommon.ModelOptions(0);
  v54 = OUTLINED_FUNCTION_108_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, inited);
  v56 = *(v0 + 784);
  v145 = v53;
  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C9624(v56, &qword_1EB56C318, &unk_1AC7A8790);
  }

  else
  {
    v57 = *(v56 + *(inited + 48));

    OUTLINED_FUNCTION_8_6();
    sub_1AC6AA714(v56, v58);
    if (v57)
    {

      goto LABEL_24;
    }
  }

  v59 = *(v0 + 696);
  v141 = *(v0 + 688);
  v60 = *(v0 + 632);
  v61 = *(v0 + 624);
  v62 = v53;
  v63 = *(v53 + 184);
  v64 = v62[24];
  v65 = v62[25];
  v66 = v62[26];

  OUTLINED_FUNCTION_127_2();
  sub_1AC729400(v67, v68, v69);

LABEL_24:
  v70 = *(v0 + 776);
  v71 = *(v0 + 768);
  v72 = *(v0 + 720);
  v73 = *(v0 + 616);
  OUTLINED_FUNCTION_167_0();
  sub_1AC6AA65C(v74, v75, v76, v77);
  v143 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestId;
  OUTLINED_FUNCTION_166_2();
  sub_1AC6AA65C(v78, v79, v80, &unk_1AC7A9520);
  HIDWORD(v140) = *(v73 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitOndeviceRecordLogs);
  LODWORD(v141) = *(v73 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs);
  v144 = v73;
  v81 = *(v73 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_modelInfo);
  v82 = [v81 language];
  v138 = sub_1AC79FF68();
  v139 = v83;

  v84 = [v81 version];
  v136 = sub_1AC79FF68();
  v137 = v85;

  if (v72)
  {
    v86 = *(v0 + 720);
    *(v0 + 592) = v86;
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
    sub_1AC5CF764(0, &qword_1EB56AAA8, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v88 = *(v0 + 600);
    }

    else
    {
      v88 = 0;
    }
  }

  else
  {
    v88 = 0;
  }

  v89 = *(v0 + 768);
  v90 = *(v0 + 752);
  v134 = *(v0 + 704);
  v135 = *(v0 + 712);
  v132 = *(v0 + 776);
  v133 = *(v0 + 632);
  v131 = *(v0 + 624);
  v91 = *(v0 + 616);
  v92 = mach_continuous_time();
  memcpy(__dst, (v91 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters), 0x4BuLL);
  v94 = *(v91 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_geoLMRegionID);
  v93 = *(v91 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_geoLMRegionID + 8);
  v95 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientInfo;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_30_3();
  sub_1AC6AA4FC(v91 + v95, v90, v96);
  sub_1AC6A8640(__dst, v0 + 464);
  v129 = v92;
  v97 = v132;
  v98 = OUTLINED_FUNCTION_157_1();
  sub_1AC728BEC(v98, v99, v141, HIDWORD(v140), v100, v133, v134, v135, v138, v139, v136, v137, v88, v145, v129, __dst, v94, v93, v90, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  sub_1AC6A869C(__dst);

  OUTLINED_FUNCTION_102_2();
  sub_1AC6AA714(v90, v101);
  sub_1AC5C9624(v89, &qword_1EB56B8F0, &unk_1AC7A9520);
  sub_1AC5C9624(v97, &qword_1EB56B8F0, &unk_1AC7A9520);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v102 = sub_1AC79FDE8();
  *(v0 + 896) = __swift_project_value_buffer(v102, qword_1ED9386C8);
  v103 = sub_1AC79FDC8();
  v104 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v104))
  {
    v105 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v105);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v106, v107, v108, v109, v110, 2u);
    OUTLINED_FUNCTION_129();
  }

  v111 = *(v0 + 760);
  v112 = *(v0 + 728);

  sub_1AC6AA65C(v144 + v143, v111, &qword_1EB56B8F0, &unk_1AC7A9520);
  if (__swift_getEnumTagSinglePayload(v111, 1, v112) == 1)
  {
    v113 = *(v0 + 760);

    sub_1AC5C9624(v113, &qword_1EB56B8F0, &unk_1AC7A9520);
    OUTLINED_FUNCTION_179_2();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_209_0();

    __asm { BRAA            X1, X16 }
  }

  (*(*(v0 + 736) + 32))(*(v0 + 744), *(v0 + 760), *(v0 + 728));
  v116 = *(v145 + 241);
  if (v116 != 2 && (v116 & 1) != 0)
  {
    v117 = *(v0 + 744);
    v118 = type metadata accessor for ExperimentationTriggerLogger();
    OUTLINED_FUNCTION_180_1(v118, v119, 0xD00000000000001DLL);
  }

  v120 = [objc_opt_self() sharedPreferences];
  v121 = [v120 dictationAutoPunctuationEnabled];

  if (v121)
  {
    v122 = *(v0 + 744);
    v123 = type metadata accessor for ExperimentationTriggerLogger();
    OUTLINED_FUNCTION_180_1(v123, v124, 0xD000000000000014);
  }

  v125 = swift_task_alloc();
  *(v0 + 904) = v125;
  *v125 = v0;
  v125[1] = sub_1AC69EA28;
  v126 = *(v0 + 608);
  OUTLINED_FUNCTION_209_0();

  return sub_1AC5ECEA4();
}

uint64_t sub_1AC69EA28()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 904);
  v6 = *v2;
  OUTLINED_FUNCTION_27_0();
  *v7 = v6;
  *(v9 + 912) = v8;
  *(v9 + 920) = v0;

  OUTLINED_FUNCTION_88();
  v11 = *(v10 + 616);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1AC69EB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_137();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_169();
  a20 = v22;
  v25 = v22[114];
  v26 = v22[112];

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v22[114];
    v30 = OUTLINED_FUNCTION_150();
    v31 = OUTLINED_FUNCTION_48();
    a11 = v31;
    *v30 = 136315138;
    v32 = sub_1AC7A0458();
    v34 = sub_1AC5CFE74(v32, v33, &a11);

    *(v30 + 4) = v34;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_129();
  }

  v40 = 0;
  v41 = v22[114];
  v42 = -1;
  v43 = -1 << *(v41 + 32);
  if (-v43 < 64)
  {
    v42 = ~(-1 << -v43);
  }

  v44 = v42 & *(v41 + 56);
  v45 = (63 - v43) >> 6;
  while (v44)
  {
LABEL_11:
    v47 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v48 = (*(v41 + 48) + ((v40 << 10) | (16 * v47)));
    v50 = *v48;
    v49 = v48[1];
    v51 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v51 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      v52 = v22[93];
      type metadata accessor for ExperimentationTriggerLogger();

      v53 = OUTLINED_FUNCTION_89();
      sub_1AC6B5150(v53, v54, 0xD00000000000001DLL, v55, v52);
    }
  }

  while (1)
  {
    v46 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return;
    }

    if (v46 >= v45)
    {
      break;
    }

    v44 = *(v41 + 56 + 8 * v46);
    ++v40;
    if (v44)
    {
      v40 = v46;
      goto LABEL_11;
    }
  }

  v56 = v22[114];
  v57 = v22[111];
  v58 = v22[105];
  (*(v22[92] + 8))(v22[93], v22[91]);

  OUTLINED_FUNCTION_179_2();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_115();

  v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, &SFSpeechErrorCodeNoSpeechDetected, a11, a12, a13, a14);
}

uint64_t sub_1AC69EDB0()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 800);

  v2 = *(v0 + 824);
  OUTLINED_FUNCTION_53_4();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC69EE40()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[102];
  v2 = v0[100];

  v3 = v0[106];
  OUTLINED_FUNCTION_53_4();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC69EEDC()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 816);
  v2 = *(v0 + 800);

  v3 = *(v0 + 872);
  OUTLINED_FUNCTION_53_4();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC69EF84()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[111];
  v2 = v0[105];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[91];

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_89();
  v8(v7);
  v9 = v0[115];
  OUTLINED_FUNCTION_53_4();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

void *sub_1AC69F03C(void *a1)
{
  v3 = sub_1AC79F738();
  v4 = [v3 domain];
  v5 = sub_1AC79FF68();
  v7 = v6;

  v8 = *MEMORY[0x1E699B9A8];
  if (v5 == sub_1AC79FF68() && v7 == v9)
  {

LABEL_8:
    v13 = [v3 code];
    if (v13 != 3)
    {
      if (v13 == 2)
      {
        if (off_1ED937D60 != -1)
        {
          swift_once();
        }

        v16 = sub_1AC79FDE8();
        __swift_project_value_buffer(v16, qword_1ED9386C8);
        v17 = sub_1AC79FDC8();
        v18 = sub_1AC7A05E8();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1AC5BC000, v17, v18, "_EARSpeechRecognizer ended request with status RecogCancelled; ignoring.", v19, 2u);
          MEMORY[0x1B26EAB10](v19, -1, -1);
        }
      }

      else if (!v13)
      {
        *(v1 + 120) = 1;
        v14 = 0x696146676F636552;
        v15 = 0xEB0000000064656CLL;
LABEL_19:
        a1 = related decl 'e' for SFSpeechErrorCode.init(_:description:)(1, v14, v15);

        return a1;
      }

      return 0;
    }

    v14 = 0x6A6552676F636552;
    v15 = 0xED00006465746365;
    goto LABEL_19;
  }

  v11 = sub_1AC7A0D38();

  if (v11)
  {
    goto LABEL_8;
  }

  v12 = a1;
  return a1;
}

uint64_t sub_1AC69F24C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionContinuations;
  sub_1AC703CD4();
  v5 = *(*(a2 + v4) + 16);
  sub_1AC703E0C(v5);
  v6 = *(a2 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a1, v7);
  *(a2 + v4) = v6;
  return result;
}

void sub_1AC69F310(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v9 = 0uLL;
  v10 = 1;
  if ((*(v7 + *(v8 + 24)) & 1) != 0 || v6 == 5)
  {
    goto LABEL_6;
  }

  v11 = *(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (!v11 || (*(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange + 48) & 1) != 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_242_0((v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange));
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = *(v17 + 16);
  v44 = v18;
  v45 = v19;
  v46 = v20;
  sub_1AC695130();
  if (v21)
  {
    v10 = 1;
    v12 = 0uLL;
    v13 = 0uLL;
    v9 = 0uLL;
    goto LABEL_7;
  }

  v9 = 0uLL;
  if (*(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48))
  {
LABEL_5:
    v10 = 1;
LABEL_6:
    v12 = 0uLL;
    v13 = 0uLL;
LABEL_7:
    *a3 = v9;
    *(a3 + 16) = v12;
    *(a3 + 32) = v13;
    *(a3 + 48) = v10;
    return;
  }

  OUTLINED_FUNCTION_242_0((v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer));
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v50 = *(v25 + 16);
  v51 = v26;
  v52 = v27;
  v53 = v28;
  v29 = v11;
  [v29 sampleRate];
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v30 <= -2147483650.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v30 < 2147483650.0)
  {
    v31 = v30;
    [a1 utteranceStart];
    v33 = v32;
    v34 = COERCE_DOUBLE(sub_1AC6A2550(&selRef_end));
    if (v35)
    {
      v34 = 0.0;
    }

    CMTimeMakeWithSeconds(v39, v33 + v34, v31);
    sub_1AC70C064();
    OUTLINED_FUNCTION_127_2();
    sub_1AC7A0688();
    sub_1AC7A0558();
    OUTLINED_FUNCTION_172_2();
    sub_1AC7A0678();
    sub_1AC7A0558();
    OUTLINED_FUNCTION_172_2();
    sub_1AC7A06B8();
    sub_1AC7A0578();
    v37 = v39[1];
    v38 = v39[0];
    v36 = v39[2];

    v13 = v36;
    v12 = v37;
    v9 = v38;
    v10 = 0;
    goto LABEL_7;
  }

LABEL_19:
  __break(1u);
}

void sub_1AC69F5B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v109 = *(v7 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v98 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v98 - v15;
  v120 = *a1;
  if (off_1ED937D60 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v16 = sub_1AC79FDE8();
    __swift_project_value_buffer(v16, qword_1ED9386C8);
    v17 = sub_1AC79FDC8();
    v18 = sub_1AC7A05E8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&__dst[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1AC5CFE74(0xD00000000000003CLL, 0x80000001AC7B7320, __dst);
      _os_log_impl(&dword_1AC5BC000, v17, v18, "SpeechRecognizerWorker.%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B26EAB10](v20, -1, -1);
      MEMORY[0x1B26EAB10](v19, -1, -1);
    }

    sub_1AC625DF0(a2);
    v22 = v120;
    if (!v23)
    {
      return;
    }

    v24 = v21;
    v118 = a3;
    v115 = v8;
    v106 = v14;

    v116 = v24;
    if ([v24 isFinal])
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }

    a3 = a2 + 64;
    v25 = 1 << *(a2 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(a2 + 64);
    v28 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultCandidateId;
    v14 = ((v25 + 63) >> 6);

    v29 = 0;
    if (!v27)
    {
      break;
    }

    while (1)
    {
      v30 = v29;
LABEL_15:
      v31 = *(v22 + v28);
      v32 = *(*(a2 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v27)))));
      sub_1AC649050(v31, 0);

      v22 = v120;
      v33 = *(v120 + v28);
      v34 = __CFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v27 &= v27 - 1;
      *(v120 + v28) = v35;
      v29 = v30;
      if (!v27)
      {
        goto LABEL_12;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  while (1)
  {
LABEL_12:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v30 >= v14)
    {
      break;
    }

    v27 = *(a3 + 8 * v30);
    ++v29;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  LOBYTE(__dst[0]) = v8;
  v36 = v116;
  sub_1AC69F310(v116, __dst, &v127);
  if (v130)
  {
    LOBYTE(__dst[0]) = v8;
    sub_1AC6A0070(a2, __dst);
    v37 = v118;
  }

  else
  {
    v38 = v128;
    v131[0] = v127;
    v131[1] = v128;
    v39 = v129;
    v131[2] = v129;
    v40 = v22 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange;
    *v40 = v127;
    *(v40 + 16) = v38;
    *(v40 + 32) = v39;
    *(v40 + 48) = v130;
    LOBYTE(__dst[0]) = v8;
    sub_1AC6A0070(a2, __dst);
    v41 = *(v22 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange);
    v37 = v118;
    if (v41)
    {
      v42 = *(v22 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange + 8);

      v41(v131);
      sub_1AC5C3958(v41);
    }
  }

  if (qword_1EB56B060 != -1)
  {
    swift_once();
  }

  v107 = qword_1EB56E6E8;
  v43 = *(v120 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs);
  memcpy(__dst, (v120 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters), 0x4BuLL);
  sub_1AC6A8640(__dst, v126);
  v44 = [v36 recognition];
  v45 = [v44 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v46 = sub_1AC7A0158();

  v47 = sub_1AC61C24C(v46);

  v48 = [v36 isFinal];
  v49 = [v36 numOneBestTokensExcludingTriggerPhrase];
  if (v43 == 1)
  {
    v50 = v47 > 0;
    v51 = *(v107 + 40);
    sub_1AC762704(__dst, v50, v48, v49);
  }

  sub_1AC6A869C(__dst);
  v52 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v53 = sub_1AC625D20(*(v37 + *(v52 + 20)));
  v54 = v115;
  v118 = v55;
  if (!v55)
  {
    __break(1u);
    return;
  }

  v56 = v53;
  sub_1AC6A027C(v36);
  v58 = v57;
  v59 = v56 == 0xD000000000000011 && v118 == 0x80000001AC7B47A0;
  v60 = v120;
  if (v59 || (sub_1AC7A0D38() & 1) != 0 || (v56 == 0x7463694469726953 ? (v61 = v118 == 0xED00006E6F697461) : (v61 = 0), v61 || (sub_1AC7A0D38() & 1) != 0))
  {
    if (([v36 isFinal] & 1) == 0 && ((v58 ^ 1) & 1) == 0)
    {
      v117 = v56;
      v62 = v60 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
      v63 = v60;
      swift_beginAccess();
      *(v62 + 168) = 1;
      sub_1AC68D2C8(a2, v126);
      v64 = v126[1];
      v105 = v126[0];
      v8 = v126[2];
      v65 = v126[3];
      a3 = v54;
      v66 = v126[4];
      v14 = v126[5];
      v103 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils;
      v67 = v63 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated;
      v101 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;

      v102 = v67;
      swift_beginAccess();
      v68 = (v8 + 64) >> 6;
      v98 = v8;
      v99 = a3 + 7;
      v104 = v64;
      v100 = v68;
      if (v66)
      {
        goto LABEL_45;
      }

LABEL_40:
      v69 = v65;
      while (1)
      {
        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_60;
        }

        if (v70 >= v68)
        {
          sub_1AC5CA508();
          break;
        }

        v66 = *(v64 + 8 * v70);
        ++v69;
        if (v66)
        {
          v65 = v70;
LABEL_45:
          while (!__OFADD__(v14, 1))
          {
            v114 = v14 + 1;
            v115 = v65;
            v71 = *(*(v105 + 56) + ((v65 << 9) | (8 * __clz(__rbit64(v66)))));
            v125 = v14;
            v113 = v14;
            v72 = v71;
            v112 = v72;
            v73 = sub_1AC7A0CC8();
            v75 = v74;
            v76 = v120;
            v77 = *(v120 + v103);
            v78 = *v102;
            BYTE4(v125) = *(v102 + 4);
            LODWORD(v125) = v78;
            v111 = v77;
            v79 = mach_continuous_time();
            v80 = v110;
            a3 = v118;
            sub_1AC729570(v110, v117, v118, v71, v73, v75, v77, &v125, v79, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);

            v111 = sub_1AC7A0288();
            __swift_storeEnumTagSinglePayload(v119, 1, 1, v111);
            v81 = *(v76 + v101);
            v82 = v108;
            sub_1AC6AA65C(v80, v108, &qword_1EB56B8F0, &unk_1AC7A9520);
            v83 = sub_1AC6A78C4(&qword_1EB56B408, type metadata accessor for SpeechRecognizerWorker);
            v84 = (*(v109 + 80) + 56) & ~*(v109 + 80);
            v85 = (v99 + v84) & 0xFFFFFFFFFFFFFFF8;
            a2 = swift_allocObject();
            v86 = v120;
            *(a2 + 16) = v120;
            *(a2 + 24) = v83;
            *(a2 + 32) = v112;
            *(a2 + 40) = v81;
            *(a2 + 48) = v86;
            v87 = v82;
            v88 = v111;
            sub_1AC6A941C(v87, a2 + v84);
            v89 = (a2 + v85);
            *v89 = v117;
            v89[1] = a3;
            *(a2 + ((v85 + 23) & 0xFFFFFFFFFFFFFFF8)) = v113;
            v90 = v106;
            sub_1AC6AA65C(v119, v106, &qword_1EB56BE70, &qword_1AC7A8270);
            LODWORD(v83) = __swift_getEnumTagSinglePayload(v90, 1, v88);

            swift_retain_n();
            if (v83 == 1)
            {
              sub_1AC5C9624(v90, &qword_1EB56BE70, &qword_1AC7A8270);
              v8 = 7168;
            }

            else
            {
              v91 = sub_1AC7A0278();
              (*(*(v88 - 1) + 8))(v90, v88);
              v8 = v91 | 0x1C00;
            }

            v92 = *(a2 + 16);
            v93 = *(a2 + 24);
            swift_unknownObjectRetain();

            if (v92)
            {
              swift_getObjectType();
              v94 = sub_1AC7A01B8();
              v96 = v95;
              swift_unknownObjectRelease();
            }

            else
            {
              v94 = 0;
              v96 = 0;
            }

            v64 = v104;
            sub_1AC5C9624(v119, &qword_1EB56BE70, &qword_1AC7A8270);
            if (v96 | v94)
            {
              v121 = 0;
              v122 = 0;
              v123 = v94;
              v124 = v96;
            }

            v65 = v115;
            v36 = v116;
            v66 &= v66 - 1;
            swift_task_create();

            v14 = v114;
            v68 = v100;
            if (!v66)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_62;
        }
      }
    }
  }
}

void sub_1AC6A0070(uint64_t a1, char *a2)
{
  v28 = *a2;
  v3 = sub_1AC625D94(a1);
  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  sub_1AC6A5D84(v3, v30);

  if ((v35 & 1) == 0)
  {
    v25 = v30[1];
    v26 = v30[0];
    v24 = v30[2];
    v5 = v31;
    v36[0] = v32;
    v36[1] = v33;
    v36[2] = v34;
    v6 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
    swift_beginAccess();
    v7 = *(v2 + v6);
    v8 = *(v7 + 16);
    v9 = v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer;
    v10 = v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange;

    v11 = 0;
    for (i = (v7 + 40); ; i += 2)
    {
      if (v8 == v11)
      {

        return;
      }

      if (v11 >= *(v7 + 16))
      {
        break;
      }

      v13 = *(i - 1);
      v14 = *i;

      v13(v29, v15);
      if (v29[0])
      {
        v16 = v29[1];
        LOBYTE(v29[0]) = v28;
        if (*(v9 + 48))
        {
          goto LABEL_14;
        }

        v18 = *(v9 + 32);
        v17 = *(v9 + 40);
        v19 = *(v9 + 8);
        v37[0] = *v9;
        v37[1] = v19;
        v38 = *(v9 + 16);
        v39 = v18;
        v40 = v17;
        if (*(v10 + 48))
        {
          goto LABEL_13;
        }

        v21 = *(v10 + 32);
        v20 = *(v10 + 40);
        v22 = *(v10 + 8);
        v41[0] = *v10;
        v41[1] = v22;
        v42 = *(v10 + 16);
        v43 = v21;
        v44 = v20;
        ObjectType = swift_getObjectType();
        (*(v16 + 24))(v36, a1, v26, v25, v24, v5, v29, v37, v41, ObjectType, v16);
        swift_unknownObjectRelease();
      }

      ++v11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

void sub_1AC6A027C(void *a1)
{
  v1 = [a1 recognition];
  v2 = [v1 tokenSausage];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
  OUTLINED_FUNCTION_93();
  v3 = sub_1AC7A0158();

  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 32;
    v18 = *(v3 + 16);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 + 8 * v6);
      v21 = *(v8 + 16);
      if (v21)
      {
        v19 = v6;
        v9 = v8 + 32;

        v10 = 0;
        v23 = v8;
        v20 = v8 + 32;
LABEL_6:
        if (v10 >= *(v8 + 16))
        {
LABEL_22:
          __break(1u);
          break;
        }

        v11 = *(v9 + 8 * v10);
        v22 = v10 + 1;
        v12 = sub_1AC61C24C(v11);

        for (i = 0; v12 != i; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1B26E95B0](i, v11);
          }

          else
          {
            if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v14 = *(v11 + 8 * i + 32);
          }

          v15 = v14;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          v16 = [v14 tokenName];
          sub_1AC79FF68();

          v17 = sub_1AC7A0058();

          if (v17 >= 1)
          {

            return;
          }
        }

        v10 = v22;
        v8 = v23;
        v9 = v20;
        if (v22 != v21)
        {
          goto LABEL_6;
        }

        v6 = v19;
        v4 = v3;
        v7 = v3 + 32;
        v5 = v18;
      }

      if (++v6 == v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

uint64_t sub_1AC6A04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A04E0, a6, 0);
}

uint64_t sub_1AC6A04E0()
{
  OUTLINED_FUNCTION_102();
  v1 = [*(v0 + 16) preITNRecognition];
  v2 = [v1 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v3 = OUTLINED_FUNCTION_211_1();

  v4 = sub_1AC68D3EC(v3);
  *(v0 + 72) = v4;

  if (v4)
  {
    if (([*(v0 + 16) isFinal] & 1) == 0 && *(v0 + 24))
    {
      v5 = *(v0 + 64);
      v14 = *(v0 + 48);
      v6 = *(v0 + 16);
      v7 = swift_task_alloc();
      *(v0 + 80) = v7;
      v8 = *(v0 + 32);
      *(v7 + 16) = v4;
      *(v7 + 24) = v6;
      *(v7 + 32) = v8;
      *(v7 + 48) = v14;
      *(v7 + 64) = v5;
      OUTLINED_FUNCTION_30(&unk_1AC7AF150);
      v15 = v9;
      v10 = swift_task_alloc();
      *(v0 + 88) = v10;
      *v10 = v0;
      v10[1] = sub_1AC6A069C;
      v11 = OUTLINED_FUNCTION_154_1();

      return v15(v11);
    }
  }

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1AC6A069C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = v3[4];
    v10 = sub_1AC6A0804;
  }

  else
  {
    v11 = v3[10];
    v12 = v3[4];

    v10 = sub_1AC6A07AC;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC6A07AC()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC6A0804()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_1AC6A0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A0894, a4, 0);
}

uint64_t sub_1AC6A0894()
{
  OUTLINED_FUNCTION_85();
  [*(v0 + 56) silenceStart];
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6A0938;
  v2 = *(v0 + 48);

  return sub_1AC75A698();
}

uint64_t sub_1AC6A0938()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  OUTLINED_FUNCTION_227_0(v5);
  v7 = *(v6 + 112);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }

  else
  {
    v12 = *(v3 + 72);
    v13 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC6A0A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = v12[8];
  v14 = v12[9];
  v15 = v12[7];
  type metadata accessor for Instrumentation();
  v16 = OUTLINED_FUNCTION_93();
  sub_1AC727600(v16);
  [v15 silenceStart];
  sub_1AC69BF38(v17);
  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v18 = v12[3];
  v19 = v12[12];
  v20 = v12[13];
  v22 = v12[10];
  v21 = v12[11];
  OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_118_3();
  sub_1AC728760();
  sub_1AC70AAE0(v18);
  v12[5] = v20;
  sub_1AC7A0CC8();
  v23 = OUTLINED_FUNCTION_117_3();
  sub_1AC7288B0(v23);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_77_2();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1AC6A0BB0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v103 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v99 = *(v10 - 8);
  v11 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v94 - v12;
  v14 = *a1;
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v15 = sub_1AC79FDE8();
  __swift_project_value_buffer(v15, qword_1ED9386C8);
  v16 = sub_1AC79FDC8();
  v17 = sub_1AC7A05E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&__dst[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1AC5CFE74(0xD000000000000032, 0x80000001AC7B7360, __dst);
    _os_log_impl(&dword_1AC5BC000, v16, v17, "SpeechRecognizerWorker.%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B26EAB10](v19, -1, -1);
    MEMORY[0x1B26EAB10](v18, -1, -1);
  }

  v20 = [a2 isFinal];
  v21 = [a2 recognitionPaused];
  if (v20)
  {
    v22 = 4;
  }

  else
  {
    v22 = 3;
  }

  if (v21)
  {
    v23 = 5;
  }

  else
  {
    v23 = v22;
  }

  v24 = [a2 recognitionPaused];
  [a2 firstResultAfterResume];
  *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_pauseResumeState) = v24;
  v25 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultCandidateId;
  sub_1AC649050(*(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultCandidateId), 0);
  v26 = *(v14 + v25);
  v27 = __CFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_52:
    swift_once();
    goto LABEL_17;
  }

  *(v14 + v25) = v28;
  LOBYTE(__dst[0]) = v23;
  sub_1AC69F310(a2, __dst, &v108);
  if (v111)
  {
    LOBYTE(__dst[0]) = v23;
    v29 = sub_1AC79F958();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v29);
    sub_1AC6A153C(a2, __dst, v13);
    sub_1AC5C9624(v13, &qword_1EB56B8F0, &unk_1AC7A9520);
  }

  else
  {
    v30 = v109;
    v112[0] = v108;
    v112[1] = v109;
    v31 = v110;
    v112[2] = v110;
    v32 = v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange;
    *v32 = v108;
    *(v32 + 16) = v30;
    *(v32 + 32) = v31;
    *(v32 + 48) = v111;
    LOBYTE(__dst[0]) = v23;
    v33 = sub_1AC79F958();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v33);
    sub_1AC6A153C(a2, __dst, v13);
    sub_1AC5C9624(v13, &qword_1EB56B8F0, &unk_1AC7A9520);
    v34 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange);
    if (v34)
    {
      v35 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange + 8);

      v34(v112);
      sub_1AC5C3958(v34);
    }
  }

  v98 = v11;
  v36 = sub_1AC6A189C(a2);
  v37 = (v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_lastStringOfPriorFinalResult);
  v38 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_lastStringOfPriorFinalResult + 8);
  *v37 = v36;
  v37[1] = v39;

  if (qword_1EB56B060 != -1)
  {
    goto LABEL_52;
  }

LABEL_17:
  v100 = qword_1EB56E6E8;
  v40 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_shouldEmitCoreAnalyticsLogs);
  memcpy(__dst, (v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters), 0x4BuLL);
  sub_1AC6A8640(__dst, &v107);
  v41 = [a2 recognition];
  v42 = [v41 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v43 = sub_1AC7A0158();

  v44 = sub_1AC61C24C(v43);

  v45 = [a2 &selRef_UTF8String];
  v46 = [a2 numOneBestTokensExcludingTriggerPhrase];
  if (v40 == 1)
  {
    v47 = v44 > 0;
    v48 = *(v100 + 40);
    sub_1AC762704(__dst, v47, v45, v46);
  }

  sub_1AC6A869C(__dst);
  sub_1AC6A027C(a2);
  LODWORD(v101) = v49;
  v50 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v97 = *(a3 + v50[5]);
  result = sub_1AC625D20(v97);
  if (!v52)
  {
    goto LABEL_54;
  }

  v53 = result;
  v54 = v52;
  v55 = v50[6];
  v56 = *(a3 + v50[7]);
  v57 = *(a3 + v55);
  v58 = result == 0x6F69746174636944 && v52 == 0xE90000000000006ELL;
  if (v58 || (sub_1AC7A0D38() & 1) != 0 || (v53 == 0x6372616553626557 ? (v59 = v54 == 0xE900000000000068) : (v59 = 0), v59))
  {
    if ((v101 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v101 & sub_1AC7A0D38())
  {
LABEL_32:
    if (((v57 | v56) & 1) != 0 && ![a2 isFinal])
    {
      goto LABEL_36;
    }

    v96 = v13;
    v60 = (v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements);
    swift_beginAccess();
    v62 = v60[17];
    v61 = v60[18];
    v63 = v60[14];

    v64 = sub_1AC608AFC(v61);

    v65 = mach_continuous_time();
    v95 = v53;
    sub_1AC729A70(v102, v53, v54, a2, v64, v62, v63, v65);

    sub_1AC69B720(a2);
    v66 = v60[17];
    v60[17] = MEMORY[0x1E69E7CC0];

    v68 = v60[14];
    v67 = v60[15];
    v27 = __CFADD__(v68, v67);
    v69 = v68 + v67;
    if (!v27)
    {
      v60[14] = v69;
      v60[15] = 0;
      v53 = v95;
      v13 = v96;
      goto LABEL_36;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_36:
  v70 = v53 == 0xD000000000000011 && v54 == 0x80000001AC7B47A0;
  if (!v70 && (sub_1AC7A0D38() & 1) == 0)
  {
    v71 = v53 == 0x7463694469726953 && v54 == 0xED00006E6F697461;
    if (!v71 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if ([a2 isFinal] & 1) != 0 || ((v101 ^ 1))
  {
    goto LABEL_50;
  }

  v72 = v54;
  v73 = v53;
  v74 = v13;
  v75 = v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  swift_beginAccess();
  *(v75 + 168) = 1;
  result = sub_1AC625D20(v97);
  if (v76)
  {
    v77 = result;
    v78 = v76;
    v79 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils);
    v106 = 0;
    v105 = 2;
    v80 = v79;
    v81 = mach_continuous_time();
    sub_1AC729570(v102, v77, v78, a2, 0, 0, v79, &v105, v81, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);

    v13 = v74;
    v53 = v73;
    v54 = v72;
LABEL_50:
    v82 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v103, 1, 1, v82);
    v101 = *(v14 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService);
    sub_1AC6AA65C(v102, v13, &qword_1EB56B8F0, &unk_1AC7A9520);
    v83 = sub_1AC6A78C4(&qword_1EB56B408, type metadata accessor for SpeechRecognizerWorker);
    v84 = v54;
    v85 = v53;
    v86 = v13;
    v87 = (*(v99 + 80) + 56) & ~*(v99 + 80);
    v88 = (v98 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    v89[2] = v14;
    v89[3] = v83;
    v90 = v101;
    v89[4] = a2;
    v89[5] = v90;
    v89[6] = v14;
    sub_1AC6A941C(v86, v89 + v87);
    v91 = (v89 + v88);
    *v91 = v85;
    v91[1] = v84;

    v92 = a2;
    swift_retain_n();
    sub_1AC6C2FD0();
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1AC6A153C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v27 = *a2;
  v4 = [a1 preITNRecognition];
  v5 = [v4 nBest];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
  v26 = sub_1AC7A0158();

  v6 = [a1 preITNRecognition];
  v7 = [v6 tokenSausage];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
  v25 = sub_1AC7A0158();

  v8 = [a1 preITNRecognition];
  v9 = [v8 interpretationIndices];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v10 = sub_1AC7A0158();

  v11 = [a1 preITNNBestVoiceCommandInterpretations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA08, &unk_1AC7B2C60);
  v12 = sub_1AC7A0158();

  v13 = [a1 recognition];
  v14 = [v13 nBest];

  v15 = sub_1AC7A0158();
  v16 = [a1 recognition];
  v17 = [v16 tokenSausage];

  v18 = sub_1AC7A0158();
  v19 = [a1 recognition];
  v20 = [v19 interpretationIndices];

  v21 = sub_1AC7A0158();
  v22 = [a1 nBestVoiceCommandInterpretations];
  v23 = sub_1AC7A0158();

  v29 = v27;
  sub_1AC6A31A8(v26, v25, v10, v12, v15, v18, v21, v23, a1, &v29, a3, [a1 needsLeadingSpace]);
}

uint64_t sub_1AC6A189C(void *a1)
{
  v1 = [a1 recognition];
  v2 = [v1 tokenSausage];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
  OUTLINED_FUNCTION_93();
  v3 = sub_1AC7A0158();

  v4 = sub_1AC68D514(v3);

  if (v4)
  {
    sub_1AC68D514(v4);
    OUTLINED_FUNCTION_86();

    if (v2)
    {
      sub_1AC68D3EC(v2);
      OUTLINED_FUNCTION_117_2();

      v5 = [v4 tokenName];
      sub_1AC79FF68();

      if ([v4 hasSpaceBefore])
      {
        v8 = 32;
        v9 = 0xE100000000000000;
        v6 = OUTLINED_FUNCTION_143();
        MEMORY[0x1B26E8C40](v6);
      }

      if ([v4 hasSpaceAfter])
      {

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);
      }
    }
  }

  return OUTLINED_FUNCTION_143();
}

uint64_t sub_1AC6A1A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v10;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A1A4C, a6, 0);
}

uint64_t sub_1AC6A1A4C()
{
  OUTLINED_FUNCTION_102();
  v1 = [*(v0 + 88) preITNRecognition];
  v2 = [v1 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v3 = OUTLINED_FUNCTION_211_1();

  v4 = sub_1AC68D3EC(v3);
  *(v0 + 136) = v4;

  if (v4)
  {
    v3 = *(v0 + 88);
    v5 = v4;
    if (([v3 isFinal] & 1) == 0 && *(v0 + 96))
    {
      v7 = *(v0 + 120);
      v6 = *(v0 + 128);
      v8 = *(v0 + 88);
      v9 = swift_task_alloc();
      *(v0 + 144) = v9;
      v10 = *(v0 + 104);
      *(v9 + 16) = v5;
      *(v9 + 24) = v8;
      *(v9 + 32) = v10;
      *(v9 + 48) = v7;
      *(v9 + 56) = v6;
      OUTLINED_FUNCTION_30(&unk_1AC7AF150);
      v30 = v11;
      v12 = swift_task_alloc();
      *(v0 + 152) = v12;
      *v12 = v0;
      v12[1] = sub_1AC6A1DDC;
      v13 = OUTLINED_FUNCTION_154_1();

      return v30(v13);
    }
  }

  v15 = *(v0 + 88);
  sub_1AC6A2498();
  OUTLINED_FUNCTION_169_1();
  sub_1AC6A2550(&selRef_silenceStart);
  if ((v16 & 1) == 0 && ([*(v0 + 88) utteranceStart], v18 = OUTLINED_FUNCTION_234_0(v17), v19) && (v20 = objc_msgSend(*(v0 + 88), sel_voiceCommandDebugInfo, v18)) != 0)
  {
    v21 = v20;
    v22 = (*(v0 + 104) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_191_2();
    if (v25)
    {
      v23 = *(v0 + 136);
    }

    else
    {
      OUTLINED_FUNCTION_134_3();
      swift_beginAccess();
      OUTLINED_FUNCTION_162_2();
      if (!v25)
      {
        v26 = (v3 & 1) != 0 ? 1 : [v21 hasVoiceCommandInExhaustiveParses];
        *v22 = v26;
        if (v26 != 2)
        {
          v27 = (v3 & 0x100) != 0 ? 1 : [v21 hasVoiceCommandParses];
          v22[1] = v27;
          OUTLINED_FUNCTION_162_2();
          if (!v25)
          {
            v28 = (v3 & 0x10000) != 0 ? 1 : [v21 hasVoiceCommandEditIntent];
            v22[2] = v28;
            OUTLINED_FUNCTION_162_2();
            if (!v25)
            {
              if ((v3 & 0x1000000) != 0)
              {
                v29 = 1;
              }

              else
              {
                v29 = [v21 hasVoiceCommandAfterReranking];
              }

              v22[3] = v29;
            }
          }
        }
      }

      swift_endAccess();
      OUTLINED_FUNCTION_134_3();
      swift_beginAccess();
      v23 = *(v0 + 136);
      if (*v22 != 2)
      {
        if ((v3 & 0x100000000) != 0)
        {
          v22[4] = 1;
        }

        else
        {
          v22[4] = [v21 hasNoVoiceCommandAfterRespeakCheck];
        }
      }

      swift_endAccess();
    }
  }

  else
  {
    v23 = *(v0 + 136);
  }

  OUTLINED_FUNCTION_29();

  return v24();
}

uint64_t sub_1AC6A1DDC()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  v5 = *(v2 + 152);
  *v4 = *v1;
  *(v3 + 160) = v0;

  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = *(v3 + 104);

    v8 = sub_1AC6A2154;
  }

  else
  {
    v7 = *(v3 + 104);

    v8 = sub_1AC6A1F20;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC6A1F20()
{
  OUTLINED_FUNCTION_45();

  v2 = *(v1 + 88);
  sub_1AC6A2498();
  OUTLINED_FUNCTION_169_1();
  sub_1AC6A2550(&selRef_silenceStart);
  if ((v3 & 1) == 0 && ([*(v1 + 88) utteranceStart], v5 = OUTLINED_FUNCTION_234_0(v4), v6) && (v7 = objc_msgSend(*(v1 + 88), sel_voiceCommandDebugInfo, v5)) != 0)
  {
    v8 = v7;
    v9 = (*(v1 + 104) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_191_2();
    if (v13)
    {
      v10 = *(v1 + 136);
    }

    else
    {
      OUTLINED_FUNCTION_134_3();
      swift_beginAccess();
      OUTLINED_FUNCTION_162_2();
      if (!v13)
      {
        v14 = (v0 & 1) != 0 ? 1 : [v8 hasVoiceCommandInExhaustiveParses];
        *v9 = v14;
        if (v14 != 2)
        {
          v15 = (v0 & 0x100) != 0 ? 1 : [v8 hasVoiceCommandParses];
          v9[1] = v15;
          OUTLINED_FUNCTION_162_2();
          if (!v13)
          {
            v16 = (v0 & 0x10000) != 0 ? 1 : [v8 hasVoiceCommandEditIntent];
            v9[2] = v16;
            OUTLINED_FUNCTION_162_2();
            if (!v13)
            {
              if ((v0 & 0x1000000) != 0)
              {
                v17 = 1;
              }

              else
              {
                v17 = [v8 hasVoiceCommandAfterReranking];
              }

              v9[3] = v17;
            }
          }
        }
      }

      swift_endAccess();
      OUTLINED_FUNCTION_134_3();
      swift_beginAccess();
      v10 = *(v1 + 136);
      if (*v9 != 2)
      {
        if ((v0 & 0x100000000) != 0)
        {
          v9[4] = 1;
        }

        else
        {
          v9[4] = [v8 hasNoVoiceCommandAfterRespeakCheck];
        }
      }

      swift_endAccess();
    }
  }

  else
  {
    v10 = *(v1 + 136);
  }

  OUTLINED_FUNCTION_29();

  return v11();
}

uint64_t sub_1AC6A2154()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 160);

  return v1();
}

uint64_t sub_1AC6A21B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A21DC, a4, 0);
}

uint64_t sub_1AC6A21DC()
{
  OUTLINED_FUNCTION_85();
  [*(v0 + 48) silenceStart];
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6A2280;
  v2 = *(v0 + 40);

  return sub_1AC75A698();
}

uint64_t sub_1AC6A2280()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  OUTLINED_FUNCTION_227_0(v5);
  v7 = *(v6 + 96);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }

  else
  {
    v12 = *(v3 + 64);
    v13 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC6A2398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v11 = v10[7];
  v12 = v10[8];
  v13 = v10[6];
  type metadata accessor for Instrumentation();
  v14 = OUTLINED_FUNCTION_93();
  sub_1AC727600(v14);
  [v13 silenceStart];
  sub_1AC69BF38(v15);
  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v16 = v10[3];
  v18 = v10[10];
  v17 = v10[11];
  v19 = v10[9];
  OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_118_3();
  sub_1AC728760();
  sub_1AC70AAE0(v16);
  OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_118_3();
  sub_1AC7288B0(v20);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_636();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1AC6A2498()
{
  v1 = v0;
  v2 = [v0 recognition];
  v3 = COERCE_DOUBLE(sub_1AC6A7908());
  v5 = v4;

  v6 = [v1 preITNRecognition];
  v7 = COERCE_DOUBLE(sub_1AC6A7908());
  v9 = v8;

  v10 = v3;
  if (v7 < v3)
  {
    v10 = v7;
  }

  v11 = v10;
  if (v9)
  {
    v11 = v3;
  }

  if (v5)
  {
    return *&v7;
  }

  else
  {
    return *&v11;
  }
}

uint64_t sub_1AC6A2550(uint64_t a1)
{
  v3 = [v1 recognition];
  OUTLINED_FUNCTION_86();
  v4 = COERCE_DOUBLE(sub_1AC6A7984());
  v6 = v5;

  v7 = [v1 preITNRecognition];
  OUTLINED_FUNCTION_86();
  sub_1AC6A7984();
  OUTLINED_FUNCTION_169_1();

  v8 = v4;
  if (v4 <= *&a1)
  {
    v8 = *&a1;
  }

  v9 = v8;
  if (v1)
  {
    v9 = v4;
  }

  if (v6)
  {
    return a1;
  }

  else
  {
    return *&v9;
  }
}

uint64_t sub_1AC6A2628(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v110 = a3;
  v111 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v112 = &v110 - v8;
  v9 = *a1;
  v10 = [objc_opt_self() processInfo];
  [v10 systemUptime];
  v12 = v11;

  v113 = v9;
  v13 = v9 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  swift_beginAccess();
  sub_1AC703CEC();
  v14 = *(*(v13 + 128) + 16);
  sub_1AC703E24(v14);
  v15 = *(v13 + 128);
  *(v15 + 16) = v14 + 1;
  *(v15 + 8 * v14 + 32) = v12;
  *(v13 + 128) = v15;
  v114 = a2;
  v16 = [a2 preITNTokens];
  v115 = sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v17 = sub_1AC7A0158();

  v119 = v17;
  v18 = sub_1AC61C24C(v17);
  v19 = MEMORY[0x1E69E6168];
  while (*(*(v13 + 136) + 16) < v18)
  {
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    v20 = sub_1AC79FE38();
    swift_beginAccess();
    v21 = *(v13 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v13 + 136) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v21 + 16);
      sub_1AC60EADC();
      v21 = v25;
      *(v13 + 136) = v25;
    }

    v23 = *(v21 + 16);
    if (v23 >= *(v21 + 24) >> 1)
    {
      sub_1AC60EADC();
      v21 = v26;
    }

    *(v21 + 16) = v23 + 1;
    *(v21 + 8 * v23 + 32) = v20;
    *(v13 + 136) = v21;
    swift_endAccess();
  }

  if (v18 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v19 = v18;
  v116 = v13;
  if (v18)
  {
    v27 = objc_opt_self();
    v117 = v119 & 0xC000000000000001;
    v118 = v27;
    v28 = 4;
    while (1)
    {
      v29 = v28 - 4;
      if (v117)
      {
        v30 = MEMORY[0x1B26E95B0](v28 - 4, v119);
      }

      else
      {
        v30 = *(v119 + 8 * v28);
      }

      v31 = v30;
      v32 = [v30 tokenName];
      if (!v32)
      {
        sub_1AC79FF68();
        v32 = sub_1AC79FF58();
      }

      v33 = [v118 getNormString_];

      *&v122 = sub_1AC79FF68();
      v18 = v34;

      swift_beginAccess();
      v35 = *(v13 + 136);
      if (v29 >= *(v35 + 16))
      {
        break;
      }

      v36 = *(*(v35 + 8 * v28) + 16);

      if (v36 && (sub_1AC6E0808(), (v37 & 1) != 0))
      {
        swift_endAccess();
      }

      else
      {
        swift_endAccess();

        v38 = *(v13 + 120);
        v39 = sub_1AC7A0EE8();
        swift_beginAccess();
        v40 = *(v13 + 136);
        v121 = v39;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + 136) = v40;
        if ((v41 & 1) == 0)
        {
          sub_1AC704628(v40);
          v40 = v58;
          *(v13 + 136) = v58;
        }

        if (v29 >= *(v40 + 16))
        {
          goto LABEL_45;
        }

        v120 = v19;
        v42 = *(v40 + 8 * v28);
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *(v40 + 8 * v28);
        v43 = v123;
        *(v40 + 8 * v28) = 0x8000000000000000;
        v44 = sub_1AC6E0808();
        if (__OFADD__(v43[2], (v45 & 1) == 0))
        {
          goto LABEL_46;
        }

        v46 = v44;
        v19 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA10, &unk_1AC7AB410);
        if (sub_1AC7A0B18())
        {
          v47 = sub_1AC6E0808();
          v13 = v116;
          if ((v19 & 1) != (v48 & 1))
          {
            goto LABEL_52;
          }

          v46 = v47;
        }

        else
        {
          v13 = v116;
        }

        v49 = v123;
        if (v19)
        {
          v50 = v123[7];
          v51 = *(v50 + 8 * v46);
          v52 = v121;
          *(v50 + 8 * v46) = v121;
        }

        else
        {
          v123[(v46 >> 6) + 8] |= 1 << v46;
          v53 = (v49[6] + 16 * v46);
          v52 = v121;
          *v53 = v122;
          v53[1] = v18;
          *(v49[7] + 8 * v46) = v52;
          v54 = v49[2];
          v55 = __OFADD__(v54, 1);
          v56 = v54 + 1;
          if (v55)
          {
            goto LABEL_47;
          }

          v49[2] = v56;
        }

        v57 = *(v40 + 8 * v28);
        *(v40 + 8 * v28) = v49;

        swift_endAccess();

        v19 = v120;
      }

      ++v28;
      if (!--v19)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_34:
  if (*(v13 + 169))
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v59 = sub_1AC79FDE8();
    __swift_project_value_buffer(v59, qword_1ED9386C8);

    v60 = sub_1AC79FDC8();
    v61 = sub_1AC7A05D8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = v12 - *(v13 + 16);
      _os_log_impl(&dword_1AC5BC000, v60, v61, "Metric: first audio packet to first partial result = %f secs", v62, 0xCu);
      MEMORY[0x1B26EAB10](v62, -1, -1);
    }

    *(v13 + 169) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C448, &qword_1AC7A90B8);
  inited = swift_initStackObject();
  v122 = xmmword_1AC7A6D00;
  inited[1] = xmmword_1AC7A6D00;
  v64 = inited;
  v121 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD18, &unk_1AC7AB420);
  v65 = swift_initStackObject();
  *(v65 + 16) = v122;
  v66 = v114;
  v67 = [v114 preITNTokens];
  v68 = sub_1AC7A0158();

  *(v65 + 32) = v68;
  *(v64 + 4) = v65;
  v69 = swift_initStackObject();
  *(v69 + 16) = v122;
  v70 = v69;
  v120 = v69;
  v71 = swift_initStackObject();
  *(v71 + 16) = v122;
  v72 = [v66 tokens];
  v73 = sub_1AC7A0158();

  *(v71 + 32) = v73;
  *(v70 + 32) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4D0, &unk_1AC7A9160);
  v74 = swift_initStackObject();
  v74[1] = v122;
  v75 = v74;
  v118 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1AC7AA7F0;
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  *(v76 + 32) = sub_1AC7A0738();
  *(v75 + 4) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = v122;
  v78 = [v66 preITNTokens];
  v79 = sub_1AC7A0158();

  *(v77 + 32) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA18, &qword_1AC7AB438);
  v80 = swift_allocObject();
  *(v80 + 16) = v122;
  v81 = [v66 preITNVoiceCommandInterpretations];
  sub_1AC5CF764(0, &qword_1EB56AAE0, 0x1E699B9D8);
  v82 = sub_1AC7A0158();

  *(v80 + 32) = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = v122;
  v84 = [v66 tokens];
  v85 = v118;
  v86 = sub_1AC7A0158();

  v87 = v116;
  *(v83 + 32) = v86;
  v88 = swift_allocObject();
  *(v88 + 16) = v122;
  v89 = [v66 voiceCommandInterpretations];
  v90 = sub_1AC7A0158();

  *(v88 + 32) = v90;
  v124[0] = 0;
  v91 = sub_1AC79F958();
  v92 = v112;
  __swift_storeEnumTagSinglePayload(v112, 1, 1, v91);
  v93 = [v66 needsLeadingSpace];
  sub_1AC6A31A8(v77, v121, v85, v80, v83, v120, v85, v88, 0, v124, v92, v93);

  sub_1AC5C9624(v92, &qword_1EB56B8F0, &unk_1AC7A9520);
  v94 = [v66 tokens];
  v95 = sub_1AC7A0158();

  v19 = sub_1AC6A3438(v95);
  v18 = v96;

  v97 = *(v87 + 120);
  v98 = __CFADD__(v97, 1);
  v99 = v97 + 1;
  if (!v98)
  {
    *(v87 + 120) = v99;
    if (qword_1EB56B060 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_50;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  swift_once();
LABEL_42:
  v100 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v101 = sub_1AC625D20(*(v111 + *(v100 + 20)));
  if (v102)
  {
    v103 = v101;
    v104 = v102;
    swift_setDeallocating();
    sub_1AC724110();
    swift_setDeallocating();
    sub_1AC724110();

    swift_setDeallocating();
    sub_1AC724124();
    v105 = [v114 tokens];
    v106 = sub_1AC7A0158();

    v107 = sub_1AC61C24C(v106);

    v108 = mach_continuous_time();
    sub_1AC729194(v110, v103, v104, v19, v18, v107, v108);
  }

  else
  {
    __break(1u);
LABEL_52:
    result = sub_1AC7A0DC8();
    __break(1u);
  }

  return result;
}

void sub_1AC6A31A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 *a10, uint64_t a11, unsigned __int8 a12)
{
  v40 = a6;
  v39 = a5;
  v38 = a4;
  v37 = a2;
  v36 = a1;
  v35 = *a10;
  if (a9)
  {
    v14 = a9;
    sub_1AC6A5D84(v14, &v44);
    v34 = v44;
    v15 = v45;
    v16 = v46;
    v17 = v47;
    v18 = v51;

    v41 = v48;
    v42 = v49;
    v43 = v50;
    if (v18)
    {
      return;
    }
  }

  else
  {
    sub_1AC6A6054(&v44);
    v34 = v44;
    v15 = v45;
    v16 = v46;
    v17 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    if (v51)
    {
      return;
    }
  }

  v33 = a8;
  v32 = a12;
  v52[0] = v41;
  v52[1] = v42;
  v52[2] = v43;
  sub_1AC70AB64();
  v20 = v19;
  sub_1AC70AB64();
  v22 = v21;
  v23 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
  v24 = swift_beginAccess();
  v25 = *(v12 + v23);
  MEMORY[0x1EEE9AC00](v24);
  v26[2] = v52;
  v26[3] = v36;
  v26[4] = v37;
  v26[5] = v20;
  v26[6] = v38;
  v26[7] = v39;
  v26[8] = v40;
  v26[9] = v22;
  v26[10] = a8;
  v26[11] = a9;
  v26[12] = v34;
  v26[13] = v15;
  v26[14] = v16;
  v27 = v17;
  v28 = v35;
  v29 = v12;
  v30 = a11;
  v31 = a12 & 1;

  sub_1AC68D8B0(sub_1AC6A9770, v26, v25);
}

uint64_t sub_1AC6A3438(uint64_t a1)
{
  v1 = sub_1AC61C24C(a1);
  if (!v1)
  {
LABEL_22:
    v24 = OUTLINED_FUNCTION_123();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_100_3();
    sub_1AC5C8B9C(v26, v27, &unk_1AC7A9BE0);
    sub_1AC79FEA8();

    return OUTLINED_FUNCTION_123();
  }

  v2 = v1;
  v30 = MEMORY[0x1E69E7CC0];
  v3 = OUTLINED_FUNCTION_241();
  result = sub_1AC6310CC(v3, v4, v5);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v28 = v2;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B26E95B0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 hasSpaceBefore];
      if (v10)
      {
        v11 = 32;
      }

      else
      {
        v11 = 0;
      }

      if (v10)
      {
        v12 = 0xE100000000000000;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v13 = [v9 tokenName];
      v14 = sub_1AC79FF68();
      v16 = v15;

      MEMORY[0x1B26E8C40](v14, v16);

      v17 = [v9 hasSpaceAfter];
      if (v17)
      {
        v18 = 32;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = 0xE100000000000000;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      MEMORY[0x1B26E8C40](v18, v19);

      v21 = *(v30 + 16);
      v20 = *(v30 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_9(v20);
        sub_1AC6310CC(v23, v21 + 1, 1);
      }

      ++v7;
      *(v30 + 16) = v21 + 1;
      v22 = v30 + 16 * v21;
      *(v22 + 32) = v11;
      *(v22 + 40) = v12;
    }

    while (v28 != v7);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6A3674(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC6A97EC;
  *(inited + 40) = v5;
  v6 = a1;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6A3720(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  v12 = 1;
  v9 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  sub_1AC6A153C(a2, &v12, v7);
  return sub_1AC5C9624(v7, &qword_1EB56B8F0, &unk_1AC7A9520);
}

void sub_1AC6A3818()
{
  OUTLINED_FUNCTION_104();
  v29 = v1;
  v30 = v2;
  v28 = v3;
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v5 = OUTLINED_FUNCTION_22(v4);
  v27 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v26 - v15;
  v26[1] = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v18 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  sub_1AC6AA65C(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId, v16, &qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v18, v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v21 = (v14 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = v29;
  sub_1AC6A941C(v16, v22 + v20);
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, v24);
  *(inited + 32) = v30;
  *(inited + 40) = v22;
  v25 = v23;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6A3A28(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-v12];
  v14 = *a1;
  v15 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  sub_1AC6A2498();
  sub_1AC6A2550(&selRef_silenceStart);
  if (v16)
  {
    goto LABEL_7;
  }

  v17 = [a2 nBestVoiceCommandInterpretations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA08, &unk_1AC7B2C60);
  v18 = sub_1AC7A0158();

  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_7;
  }

  if (qword_1EB56B060 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  result = sub_1AC625D20(*(a4 + *(v20 + 20)));
  if (v22)
  {
    [a2 utteranceStart];
    mach_continuous_time();
    sub_1AC72A354();

    sub_1AC5C9624(v13, &qword_1EB56B8F0, &unk_1AC7A9520);
    sub_1AC6A941C(v11, v13);
LABEL_7:
    v24 = 2;
    sub_1AC6A153C(a2, &v24, v13);
    return sub_1AC5C9624(v13, &qword_1EB56B8F0, &unk_1AC7A9520);
  }

  __break(1u);
  return result;
}

void sub_1AC6A3CE0()
{
  OUTLINED_FUNCTION_104();
  v24 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = OUTLINED_FUNCTION_249_0();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_194_1();
  v16 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v18 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId;
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v19, v2, v20);
  sub_1AC6AA65C(v0 + v18, v1, &qword_1EB56B8F0, &unk_1AC7A9520);
  v21 = OUTLINED_FUNCTION_132_2();
  *(v21 + 16) = v5;
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(v2, v22 + v13, v23);
  sub_1AC6A941C(v1, v21 + v15);
  *(inited + 32) = v24;
  *(inited + 40) = v21;

  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

void sub_1AC6A3EA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v60 - v15;
  v75 = *a1;
  sub_1AC625DF0(a2);
  if (v17)
  {
    v18 = v16;

    v19 = type metadata accessor for SpeechRecognizerSupportedFeatures();
    v72 = sub_1AC625D20(*(a3 + *(v19 + 20)));
    v74 = v20;
    if (v20)
    {
      v61 = v18;
      sub_1AC6A027C(v18);
      if (v21)
      {
        v22 = v75 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
        swift_beginAccess();
        *(v22 + 168) = 1;
      }

      sub_1AC68D2C8(a2, &v81);
      v65 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils;
      v23 = v75 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated;
      v63 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;

      v64 = v23;
      swift_beginAccess();
      v62 = v8 + 7;
      v66 = v14;
      while (1)
      {
        v24 = sub_1AC747E54();
        if (!v26)
        {
          break;
        }

        v27 = v24;
        v28 = v25;

        if (qword_1EB56B060 != -1)
        {
          swift_once();
        }

        v80 = v27;
        v29 = v28;
        v30 = sub_1AC7A0CC8();
        v31 = v27;
        v70 = v27;
        v33 = v32;
        v34 = *(v75 + v65);
        v35 = *v64;
        BYTE4(v80) = *(v64 + 4);
        LODWORD(v80) = v35;
        v36 = v34;
        v37 = mach_continuous_time();
        v38 = v69;
        v39 = v72;
        sub_1AC729570(v69, v72, v74, v28, v30, v33, v34, &v80, v37, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
        v71 = v29;

        v40 = [v29 unrepairedRecognition];
        v41 = [v40 oneBest];

        sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
        v42 = sub_1AC7A0158();

        sub_1AC6A3438(v42);

        v80 = v31;
        sub_1AC7A0CC8();
        v43 = v74;
        sub_1AC729400(v38, v39, v74);

        v44 = sub_1AC7A0288();
        v45 = v73;
        __swift_storeEnumTagSinglePayload(v73, 1, 1, v44);
        v46 = *(v75 + v63);
        v47 = v67;
        sub_1AC6AA65C(v38, v67, &qword_1EB56B8F0, &unk_1AC7A9520);
        v48 = (*(v68 + 80) + 40) & ~*(v68 + 80);
        v49 = (v62 + v48) & 0xFFFFFFFFFFFFFFF8;
        v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
        v51 = swift_allocObject();
        v51[2] = 0;
        v51[3] = 0;
        v51[4] = v71;
        sub_1AC6A941C(v47, v51 + v48);
        v52 = (v51 + v49);
        *v52 = v72;
        v52[1] = v43;
        *(v51 + v50) = v70;
        *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
        v53 = v66;
        sub_1AC6AA65C(v45, v66, &qword_1EB56BE70, &qword_1AC7A8270);
        LODWORD(v48) = __swift_getEnumTagSinglePayload(v53, 1, v44);

        if (v48 == 1)
        {
          sub_1AC5C9624(v53, &qword_1EB56BE70, &qword_1AC7A8270);
        }

        else
        {
          sub_1AC7A0278();
          (*(*(v44 - 8) + 8))(v53, v44);
        }

        v55 = v51[2];
        v54 = v51[3];
        swift_unknownObjectRetain();

        if (v55)
        {
          swift_getObjectType();
          v56 = sub_1AC7A01B8();
          v58 = v57;
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0;
          v58 = 0;
        }

        sub_1AC5C9624(v73, &qword_1EB56BE70, &qword_1AC7A8270);
        if (v58 | v56)
        {
          v76 = 0;
          v77 = 0;
          v78 = v56;
          v79 = v58;
        }

        swift_task_create();
      }

      sub_1AC5CA508();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1AC6A4550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A4580, 0, 0);
}

uint64_t sub_1AC6A4580()
{
  OUTLINED_FUNCTION_102();
  v1 = [*(v0 + 24) preITNRecognition];
  v2 = [v1 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v3 = OUTLINED_FUNCTION_211_1();

  if (sub_1AC61C24C(v3))
  {
    sub_1AC61C25C(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    *(v0 + 72) = v4;
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);

    *(v0 + 16) = v6;
    v8 = sub_1AC7A0CC8();
    v10 = v9;
    *(v0 + 80) = v9;
    if (v7)
    {
      v11 = v8;
      v12 = *(v0 + 64);
      v13 = *(v0 + 48);
      v19 = *(v0 + 32);
      v14 = swift_task_alloc();
      *(v0 + 88) = v14;
      *(v14 + 16) = v5;
      *(v14 + 24) = v19;
      *(v14 + 40) = v13;
      *(v14 + 48) = v11;
      *(v14 + 56) = v10;
      OUTLINED_FUNCTION_30(&unk_1AC7AF150);
      v20 = v15;
      v16 = swift_task_alloc();
      *(v0 + 96) = v16;
      *v16 = v0;
      v16[1] = sub_1AC6A47A8;

      return v20(v12, &unk_1AC7AB450, v14);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t sub_1AC6A47A8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[13] = v0;

  if (!v0)
  {
    v9 = v3[10];
    v10 = v3[11];
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6A48B0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  OUTLINED_FUNCTION_44();
  v5 = v0[13];

  return v4();
}

void sub_1AC6A493C()
{
  OUTLINED_FUNCTION_104();
  v25 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = OUTLINED_FUNCTION_249_0();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_194_1();
  v16 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v18 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId;
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v19, v2, v20);
  sub_1AC6AA65C(v0 + v18, v1, &qword_1EB56B8F0, &unk_1AC7A9520);
  v21 = OUTLINED_FUNCTION_132_2();
  *(v21 + 16) = v5;
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(v2, v22 + v13, v23);
  sub_1AC6A941C(v1, v21 + v15);
  *(inited + 32) = v25;
  *(inited + 40) = v21;
  v24 = v5;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6A4AF8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v48 - v13;
  v15 = *a1;
  LOBYTE(v55[0]) = 6;
  v16 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  sub_1AC6A153C(a2, v55, v14);
  sub_1AC5C9624(v14, &qword_1EB56B8F0, &unk_1AC7A9520);
  v17 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  result = sub_1AC625D20(*(a3 + *(v17 + 20)));
  if (v19)
  {
    v20 = result;
    v21 = v19;
    v22 = a4;
    sub_1AC6A027C(a2);
    if (v23)
    {
      v24 = v15 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
      swift_beginAccess();
      *(v24 + 168) = 1;
    }

    if (qword_1EB56B060 != -1)
    {
      swift_once();
    }

    v25 = *(v15 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_emojiUtils);
    v26 = (v15 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_voiceCommandDebugInfoAggregated);
    swift_beginAccess();
    v27 = *v26;
    BYTE4(v54[0]) = *(v26 + 4);
    LODWORD(v54[0]) = v27;
    v28 = v25;
    v29 = mach_continuous_time();
    sub_1AC729570(v22, v20, v21, a2, 0, 0, v25, v54, v29, v47, v21, v49, v50, v51, v52, v53, v54[0], v54[1], v54[2], v55[0], v55[1]);

    v30 = [a2 unrepairedRecognition];
    v31 = [v30 oneBest];

    sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
    v32 = sub_1AC7A0158();

    v33 = sub_1AC6A3438(v32);
    v35 = v34;

    v36 = v15 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
    swift_beginAccess();
    v37 = *(v36 + 160);
    *(v36 + 152) = v33;
    *(v36 + 160) = v35;

    v38 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v38);
    v39 = *(v15 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService);
    sub_1AC6AA65C(v22, v14, &qword_1EB56B8F0, &unk_1AC7A9520);
    v40 = sub_1AC6A78C4(&qword_1EB56B408, type metadata accessor for SpeechRecognizerWorker);
    v41 = (*(v49 + 80) + 48) & ~*(v49 + 80);
    v42 = (v12 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v43[2] = v15;
    v43[3] = v40;
    v43[4] = a2;
    v43[5] = v15;
    sub_1AC6A941C(v14, v43 + v41);
    v44 = (v43 + v42);
    v45 = v48;
    *v44 = v20;
    v44[1] = v45;
    *(v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;

    v46 = a2;
    swift_retain_n();
    sub_1AC6C2FD0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6A4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A4F74, a5, 0);
}

uint64_t sub_1AC6A4F74()
{
  OUTLINED_FUNCTION_102();
  v1 = [*(v0 + 40) preITNRecognition];
  v2 = [v1 oneBest];

  sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
  v3 = OUTLINED_FUNCTION_211_1();

  if (sub_1AC61C24C(v3))
  {
    sub_1AC61C25C(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    *(v0 + 88) = v4;
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);

    [v5 silenceStart];
    v9 = v8;
    [v7 utteranceStart];
    v11 = v9 + v10;
    v12 = sub_1AC69BF38(v11);
    if (qword_1EB56B060 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    sub_1AC728480();
    v17 = v16 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
    OUTLINED_FUNCTION_574();
    *(v17 + 88) = v11 + *(v17 + 16);
    v18 = *(v17 + 8);
    sub_1AC70AA78(v11);
    v20 = v18 + v19;
    if (__CFADD__(v18, v19))
    {
      __break(1u);
    }

    else if (off_1ED937D60 == -1)
    {
LABEL_8:
      v21 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v21, qword_1ED9386C8);
      v22 = sub_1AC79FDC8();
      v23 = sub_1AC7A05E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_150();
        *v24 = 134217984;
        *(v24 + 4) = v20;
        _os_log_impl(&dword_1AC5BC000, v22, v23, "EmbeddedSpeechMetric: end of first word recorded in ticks (user-facing TTFW start): %llu", v24, 0xCu);
        OUTLINED_FUNCTION_96_0();
      }

      v25 = sub_1AC79FDC8();
      v26 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_366(v26))
      {
        v27 = OUTLINED_FUNCTION_150();
        *v27 = 134217984;
        *(v27 + 4) = v12;
        OUTLINED_FUNCTION_94();
        _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
        OUTLINED_FUNCTION_77_1();
      }

      v33 = OUTLINED_FUNCTION_74();

      return MEMORY[0x1EEE6DFA0](v33, v34, v35);
    }

    OUTLINED_FUNCTION_3_0();
    swift_once();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_29();

  return v36();
}

uint64_t sub_1AC6A5264()
{
  OUTLINED_FUNCTION_45();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 72);
    v9 = *(v0 + 56);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v9;
    *(v3 + 40) = v2;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    OUTLINED_FUNCTION_30(&unk_1AC7AF150);
    v10 = v4;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1AC6A539C;
    v6 = OUTLINED_FUNCTION_154_1();

    return v10(v6);
  }

  else
  {
    v8 = *(v0 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1AC6A5564, v8, 0);
  }
}

uint64_t sub_1AC6A539C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = sub_1AC6A54A8;
    v10 = 0;
  }

  else
  {
    v11 = v3[12];

    v10 = v3[6];
    v9 = sub_1AC6A5564;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1AC6A54A8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6A5508()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 112);

  return v1();
}

uint64_t sub_1AC6A5564()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC6A55BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = *(v7 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_228_0();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a2;
  *(v17 + 32) = a1;
  *(v17 + 40) = a5;
  *(v17 + 48) = a3;
  *(v17 + 56) = a6;
  *(v17 + 64) = a7;
  *(inited + 32) = sub_1AC6A9578;
  *(inited + 40) = v17;

  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6A56AC(uint64_t *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  result = sub_1AC695130();
  if ((v15 & 1) == 0)
  {
    sub_1AC7A06F8();
    v16 = sub_1AC7A06F8();
    v18 = v17;
    v20 = v19;
    v34 = HIDWORD(v17);
    sub_1AC7A0698();
    v36 = sub_1AC7A0688();
    v37 = v21;
    v38 = v22;
    v39 = v23;
    v40 = v16;
    v41 = v18;
    v42 = v34;
    v43 = v20;
    v24 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
    swift_beginAccess();
    v25 = *(v13 + v24);
    v26 = *(v25 + 16);

    v27 = 0;
    for (i = (v25 + 40); ; i += 2)
    {
      if (v26 == v27)
      {
      }

      if (v27 >= *(v25 + 16))
      {
        break;
      }

      v30 = *(i - 1);
      v29 = *i;

      v30(v35, v31);
      if (v35[0])
      {
        v32 = v35[1];
        ObjectType = swift_getObjectType();
        (*(v32 + 32))(a7, &v36, a8, ObjectType, v32, a2, a3, a4);
        swift_unknownObjectRelease();
      }

      ++v27;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6A5880(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC6A9570;
  *(inited + 40) = v5;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC6A5928(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = mach_continuous_time();
  v5 = v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  swift_beginAccess();
  sub_1AC703D04();
  v6 = *(*(v5 + 144) + 16);
  result = sub_1AC703E3C(v6);
  v8 = *(v5 + 144);
  *(v8 + 16) = v6 + 1;
  v9 = v8 + 16 * v6;
  *(v9 + 32) = a2;
  *(v9 + 40) = v4;
  *(v5 + 144) = v8;
  v10 = (v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer);
  if (*(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48))
  {
    return result;
  }

  v12 = v10[2];
  v11 = v10[3];
  v14 = v10[4];
  v13 = v10[5];
  v15 = *v10;
  v16 = v10[1];
  v17 = *(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (v17)
  {
    result = [v17 sampleRate];
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -2147483650.0)
    {
      if (v18 < 2147483650.0)
      {
        goto LABEL_6;
      }

LABEL_19:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:
  v19 = sub_1AC7A0718();
  v21 = v20;
  v23 = v22;
  result = sub_1AC7A0678();
  if (result)
  {
    v24 = v11;
  }

  else
  {
    v24 = v19;
  }

  v25 = v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBufferReceivedByEAR;
  *v25 = v15;
  *(v25 + 8) = v16;
  if (result)
  {
    v26 = v14;
  }

  else
  {
    v26 = v21;
  }

  if (result)
  {
    v27 = v13;
  }

  else
  {
    v27 = v23;
  }

  *(v25 + 16) = v12;
  *(v25 + 24) = v24;
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  *(v25 + 48) = 0;
  return result;
}

void sub_1AC6A5AC0()
{
  OUTLINED_FUNCTION_104();
  v1 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v2 = OUTLINED_FUNCTION_22(v1);
  v22 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v21 - v12;
  v21 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9E0, &qword_1AC7AB3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v15 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  sub_1AC6AA65C(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId, v13, &qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_2_7();
  sub_1AC6AA4FC(v0 + v15, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = (v11 + *(v22 + 80) + v17) & ~*(v22 + 80);
  v19 = swift_allocObject();
  sub_1AC6A941C(v13, v19 + v17);
  OUTLINED_FUNCTION_15_6();
  sub_1AC6AA6B8(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, v20);
  *(inited + 32) = sub_1AC6A948C;
  *(inited + 40) = v19;
  sub_1AC69CCEC(inited);
  swift_setDeallocating();
  sub_1AC7264BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6A5CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB56B060 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  result = sub_1AC625D20(*(a3 + *(v4 + 20)));
  if (v6)
  {
    mach_continuous_time();
    sub_1AC728A34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AC6A5D84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1AC6A2498();
  if (v7 & 1) != 0 || (v8 = *&v6, *&v9 = COERCE_DOUBLE(sub_1AC6A2550(&selRef_end)), (v10) || (v11 = *&v9, [a1 utteranceStart], v13 = v12, sub_1AC695130(), (v14) || (v15 = (v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer), (*(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48)))
  {
    sub_1AC6A6054(&v28);
    result = v28.value;
    LODWORD(v17) = v28.timescale;
    LODWORD(v18) = v28.flags;
    epoch = v28.epoch;
    v20 = v29;
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v21 = v33;
LABEL_6:
    *a2 = result;
    *(a2 + 8) = v17;
    *(a2 + 12) = v18;
    *(a2 + 16) = epoch;
    *(a2 + 24) = v20;
    v22 = v35;
    *(a2 + 28) = v34;
    *(a2 + 44) = v22;
    *(a2 + 60) = v36;
    *(a2 + 76) = v21;
    return result;
  }

  result = *(v3 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (result)
  {
    v24 = v15[4];
    v23 = v15[5];
    v25 = v15[3];
    result = [result sampleRate];
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v26 > -2147483650.0)
    {
      if (v26 < 2147483650.0)
      {
        v27 = v8;
        v20 = v26;
        sub_1AC70C19C(v26);
        CMTimeMakeWithSeconds(&v28, v13 + v27, v20);
        sub_1AC70C064();
        CMTimeMakeWithSeconds(&v28, v13 + v11, v20);
        sub_1AC7A0678();
        sub_1AC70C064();
        sub_1AC7A0688();
        sub_1AC7A0688();
        sub_1AC7A0578();
        sub_1AC7A0718();
        result = sub_1AC7A0688();
        v21 = 0;
        v18 = HIDWORD(v17);
        LOBYTE(v28.value) = 0;
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AC6A6054(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange);
  if (*(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange + 48))
  {
    v4 = 0;
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    memset(v31, 0, 12);
    v12 = 0uLL;
LABEL_12:
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 28) = v8;
    *(a1 + 36) = v5;
    *(a1 + 40) = v6;
    *(a1 + 44) = v12;
    *(a1 + 60) = v7;
    *(a1 + 64) = v31[0];
    *(a1 + 72) = v31[1];
    *(a1 + 76) = v11;
    return;
  }

  v13 = *(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioFormat);
  if (v13)
  {
    v18 = *(v3 + 1);
    v14 = v3[5];
    v7 = *(v3 + 8);
    v15 = *(v3 + 9);
    v8 = *v3;
    v5 = v3[1];
    [v13 sampleRate];
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -2147483650.0)
    {
      if (v16 < 2147483650.0)
      {
        v6 = HIDWORD(v5);
        v4 = v16;
        sub_1AC70C19C(v16);
        v17 = (v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBufferReceivedByEAR);
        if ((*(v1 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBufferReceivedByEAR + 48) & 1) != 0 || (v26 = *v17, v27 = v17[1], v28 = *(v17 + 1), v29 = v17[4], v30 = v17[5], sub_1AC7A0558(), (sub_1AC7A06C8() & 1) == 0))
        {
          v12 = v18;
        }

        else
        {
          sub_1AC7A0558();
          sub_1AC7A0578();
          v8 = v19;
          LODWORD(v5) = v20;
          v6 = v21;
          v12 = v22;
          v7 = v23;
          v15 = v24;
          v14 = v25;
        }

        v11 = 0;
        LODWORD(v31[0]) = v15;
        *(v31 + 4) = v14;
        v10 = v5 | (v6 << 32);
        v9 = v12;
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
}

void *sub_1AC6A6264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v26 = *(a1 + 8);
  result = (*a1)(&v43);
  if (v43)
  {
    v38 = a2;
    v28 = v44;
    v48 = a16;
    v29 = a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer;
    if (*(a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_rangeOnAudioBuffer + 48))
    {
      __break(1u);
    }

    else
    {
      v31 = *(v29 + 32);
      v30 = *(v29 + 40);
      v32 = *(v29 + 8);
      v39[0] = *v29;
      v39[1] = v32;
      v40 = *(v29 + 16);
      v41 = v31;
      v42 = v30;
      v33 = (a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange);
      if ((*(a17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange + 48) & 1) == 0)
      {
        v35 = v33[4];
        v34 = v33[5];
        v36 = v33[1];
        v43 = *v33;
        v44 = v36;
        v45 = *(v33 + 1);
        v46 = v35;
        v47 = v34;
        ObjectType = swift_getObjectType();
        (*(v28 + 16))(v38, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, &v48, v39, &v43, a18, a19 & 1, ObjectType, v28);
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6A6418()
{
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_5_5();
  sub_1AC6AA714(v0 + v2, v3);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_clientID);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_geoLMRegionID);
  OUTLINED_FUNCTION_171_2();
  sub_1AC5C9624(v4, v5, v6);
  OUTLINED_FUNCTION_171_2();
  sub_1AC5C9624(v7, v8, v9);
  sub_1AC5C9624(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_analysisOptions, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v10 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters + 8);
  v11 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters + 24);
  v12 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters + 40);
  v13 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_requestParameters + 64);

  OUTLINED_FUNCTION_102_2();
  sub_1AC6AA714(v0 + v14, v15);

  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_lastStringOfPriorFinalResult);
  v16 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resumeContext + 8);
  v17 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resumeContext + 24);
  v18 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resumeContext + 40);

  v19 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService);

  v20 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_scheduledFinalizations);

  memcpy(v32, (v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements), 0xAAuLL);
  sub_1AC6A91CC(v32);
  v21 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor);

  v22 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionStatistics);

  v23 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionUtterenceStatistics);

  v24 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange + 8);
  sub_1AC5C3958(*(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinalizeToRange));
  v25 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError + 8);
  sub_1AC5C3958(*(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFailWithError));
  v26 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_pendingEagerResultRequests);

  v27 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates);

  v28 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_enqueue);

  v29 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionContinuations);

  v30 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didFinishRecognitionHandlers);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC6A6678()
{
  sub_1AC6A6418();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC6A66A4()
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6A6708(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C4D48;

  return sub_1AC695160(a1);
}

uint64_t sub_1AC6A679C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A67BC, v1, 0);
}

uint64_t sub_1AC6A67BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange;
  v3 = *(v2 + 48);
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  *v1 = *v2;
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  OUTLINED_FUNCTION_44();
  return v6();
}

uint64_t sub_1AC6A6804(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AC5C4D48;

  return sub_1AC69A680(a1, a2, a3, a4);
}

uint64_t sub_1AC6A68C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC69AED4();
}

uint64_t sub_1AC6A6950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC69B2EC();
}

uint64_t sub_1AC6A69DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A6A04, v4, 0);
}

uint64_t sub_1AC6A6A04()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[6];
  sub_1AC69BFC4(v0[2], v0[3], v0[4], v0[5]);
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6A6AB0()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t EARResultType.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

unint64_t sub_1AC6A6BF4()
{
  result = qword_1EB56C9B0;
  if (!qword_1EB56C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C9B0);
  }

  return result;
}

uint64_t type metadata accessor for SpeechRecognizerWorker()
{
  result = qword_1ED937C98;
  if (!qword_1ED937C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC6A6C9C()
{
  v0 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1AC6A6EF8(319, &qword_1ED937D68, MEMORY[0x1E69695A8]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1AC6A6EF8(319, qword_1ED937B98, type metadata accessor for SpeechAnalyzer.Options);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for ClientInfo(319);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1AC6A6EF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_93();
    v4 = sub_1AC7A0798();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EARResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EARResultType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t destroy for SpeechRecognizerWorker.PerfMeasurements(void *a1)
{
  v2 = a1[8];

  v3 = a1[13];

  v4 = a1[16];

  v5 = a1[17];

  v6 = a1[18];

  v7 = a1[20];
}

uint64_t initializeWithCopy for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v4;
  v5 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v5;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t assignWithCopy for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v6 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  v7 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);

  v8 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v9 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  return a1;
}

uint64_t assignWithTake for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  v6 = *(a1 + 128);

  v7 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);

  v8 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);

  v9 = *(a2 + 160);
  v10 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v9;

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechRecognizerWorker.PerfMeasurements(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 170))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechRecognizerWorker.PerfMeasurements(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for SpeechRecognizerWorker.ResumeContext(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];
}

void *initializeWithCopy for SpeechRecognizerWorker.ResumeContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for SpeechRecognizerWorker.ResumeContext(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a2[5];
  v7 = a1[5];
  a1[5] = v6;

  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void *assignWithTake for SpeechRecognizerWorker.ResumeContext(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v8 = a2[5];
  v9 = a1[5];
  a1[4] = a2[4];
  a1[5] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechRecognizerWorker.ResumeContext(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechRecognizerWorker.ResumeContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechRecognizerWorker.PauseResumeState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1AC6A77D0()
{
  result = qword_1EB56C9B8;
  if (!qword_1EB56C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C9B8);
  }

  return result;
}

uint64_t sub_1AC6A786C(uint64_t a1)
{
  result = sub_1AC6A78C4(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6A78C4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1AC6A7908()
{
  v1 = [v0 nBest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
  v2 = OUTLINED_FUNCTION_211_1();

  sub_1AC6A7A08(v2);
  OUTLINED_FUNCTION_169_1();

  return v1;
}

uint64_t sub_1AC6A7984()
{
  v0 = [OUTLINED_FUNCTION_117_2() nBest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
  OUTLINED_FUNCTION_93();
  sub_1AC7A0158();

  v1 = OUTLINED_FUNCTION_172();
  sub_1AC6A7C4C(v1, v2);
  v4 = v3;

  return v4;
}

void sub_1AC6A7A08(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {
      v11 = sub_1AC61C24C(v5);
      if (v11)
      {
        v12 = v11;
        v22 = v2;
        OUTLINED_FUNCTION_241();
        sub_1AC6312E0();
        if (v12 < 0)
        {
          goto LABEL_33;
        }

        v13 = 0;
        v14 = v22;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1B26E95B0](v13, v5);
          }

          else
          {
            v15 = *(v5 + 8 * v13 + 32);
          }

          v16 = v15;
          [v15 start];
          v18 = v17;

          v20 = *(v22 + 16);
          v19 = *(v22 + 24);
          if (v20 >= v19 >> 1)
          {
            OUTLINED_FUNCTION_9(v19);
            sub_1AC6312E0();
          }

          ++v13;
          *(v22 + 16) = v20 + 1;
          *(v22 + 8 * v20 + 32) = v18;
        }

        while (v12 != v13);
      }

      else
      {

        v14 = MEMORY[0x1E69E7CC0];
      }

      sub_1AC6A7EA4(v14);
      OUTLINED_FUNCTION_169_1();

      return;
    }

    if (v1 >= v3)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_31;
    }

    v7 = *(v4 + 8 * v1);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v10 = *(v4 + 8 * v1);
      }

      v8 = sub_1AC7A08E8();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v1;
    if (v8)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1B26E95B0](0, v7);
        OUTLINED_FUNCTION_117_2();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v9 = *(v7 + 32);
      }

      MEMORY[0x1B26E8CF0](v9);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      OUTLINED_FUNCTION_172();
      sub_1AC7A0198();
      v5 = v21;
      v1 = v6;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1AC6A7C4C(uint64_t a1, SEL *a2)
{
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v3)
    {
      v15 = sub_1AC61C24C(v7);
      if (v15)
      {
        v16 = v15;
        v25 = v4;
        OUTLINED_FUNCTION_241();
        sub_1AC6312E0();
        if (v16 < 0)
        {
          goto LABEL_37;
        }

        v17 = 0;
        v18 = v25;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B26E95B0](v17, v7);
          }

          else
          {
            v19 = *(v7 + 8 * v17 + 32);
          }

          v20 = v19;
          [v19 *a2];
          v22 = v21;

          v23 = *(v25 + 16);
          if (v23 >= *(v25 + 24) >> 1)
          {
            sub_1AC6312E0();
          }

          ++v17;
          *(v25 + 16) = v23 + 1;
          *(v25 + 8 * v23 + 32) = v22;
        }

        while (v16 != v17);
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      sub_1AC6960B8(v18);
      OUTLINED_FUNCTION_169_1();

      return;
    }

    if (v3 >= v5)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_33;
    }

    v9 = *(v6 + 8 * v3);
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v13 = *(v6 + 8 * v3);
      }

      v10 = sub_1AC7A08E8();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v3;
    if (v10)
    {
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_34;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {

        v14 = OUTLINED_FUNCTION_74_0();
        MEMORY[0x1B26E95B0](v14);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      MEMORY[0x1B26E8CF0](v12);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      OUTLINED_FUNCTION_143();
      sub_1AC7A0198();
      v7 = v24;
      v3 = v8;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1AC6A7EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1AC6A7EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6A7F14, 0, 0);
}

uint64_t sub_1AC6A7F14()
{
  OUTLINED_FUNCTION_85();
  [*(v0 + 24) start];
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_46_7(v1);

  return sub_1AC75A698();
}

uint64_t sub_1AC6A7FB0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  *v3 = *v1;
  *(v2 + 80) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC6A80CC()
{
  OUTLINED_FUNCTION_102();
  if (qword_1EB56B060 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v0[11] = qword_1EB56E6E8;
  sub_1AC70AAE0(v1);
  OUTLINED_FUNCTION_117();
  sub_1AC7285D0();
  [v7 start];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_46_7(v8);

  return sub_1AC75A698();
}

uint64_t sub_1AC6A81E4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  *(v2 + 104) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC6A8300()
{
  OUTLINED_FUNCTION_85();
  if (v0[13])
  {
    v1 = v0[11];
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    sub_1AC7285E8();
  }

  OUTLINED_FUNCTION_29();

  return v7();
}

id sub_1AC6A8384(void (*a1)(void))
{
  v3 = [objc_opt_self() anonymousListener];
  v4 = [v3 endpoint];
  v5 = *(v1 + 128);
  sub_1AC6ED760(a1);

  return v4;
}

uint64_t sub_1AC6A8454(uint64_t a1)
{
  v3 = *(*(v1 + 128) + 16);

  os_unfair_lock_lock(v3);
  sub_1AC6A84F0(v1, a1);
  os_unfair_lock_unlock(v3);
}

uint64_t sub_1AC6A84F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *(a2 + 128);
  OUTLINED_FUNCTION_235();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_134_3();
  swift_beginAccess();

  v6 = *(a1 + 96);
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 96);
  sub_1AC6E1260();
  *(a1 + 96) = v8;
  swift_endAccess();
}

uint64_t sub_1AC6A85C4()
{
  OUTLINED_FUNCTION_12();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = OUTLINED_FUNCTION_74_0();
    sub_1AC6A78C4(v1, v2);
  }

  return Strong;
}

uint64_t sub_1AC6A86F0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_1AC6A87D0(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_67_5();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC5C4BF8(v4 - v7, 1, sub_1AC60E5B8);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
  OUTLINED_FUNCTION_143();
  swift_arrayDestroy();
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  OUTLINED_FUNCTION_221_0();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1AC706D1C(v9 + 16 * v1);
  OUTLINED_FUNCTION_222_0();
  if (!v6)
  {
    *(v8 + 16) = v10;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1AC6A88F4(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_67_5();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC5C4BF8(v4 - v8, 1, sub_1AC60EEFC);
  v9 = *v2;
  v10 = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  OUTLINED_FUNCTION_28_5(v10);
  v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v13 + 72);
  v15 = v12 + v14 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v9;
    return;
  }

  OUTLINED_FUNCTION_221_0();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1AC704098(v12 + v14 * v1, v16, v15);
  OUTLINED_FUNCTION_222_0();
  if (!v6)
  {
    *(v9 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1AC6A8A54()
{
  OUTLINED_FUNCTION_104();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v2;
  v6 = *(*v0 + 16);
  if (v6 < v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v1;
  v8 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v1 - v2;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v6, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v4;
  sub_1AC5C4BF8(v6 - v8, 1, v3);
  v11 = *v0;
  v12 = OUTLINED_FUNCTION_157_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_28_5(v14);
  v16 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v17 + 72);
  v19 = v16 + v18 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v0 = v11;
    OUTLINED_FUNCTION_105();
    return;
  }

  v20 = *(v11 + 16);
  if (__OFSUB__(v20, v5))
  {
    goto LABEL_16;
  }

  v10(v16 + v18 * v5, v20 - v5, v19);
  v21 = *(v11 + 16);
  v22 = __OFADD__(v21, v9);
  v23 = v21 - v8;
  if (!v22)
  {
    *(v11 + 16) = v23;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1AC6A8B80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2 >> 62;
  v9 = 0;
  v10 = a1 >> 32;
  v11 = 0;
  switch(v5)
  {
    case 1uLL:
      v11 = a1;
      v9 = a1 >> 32;
      break;
    case 2uLL:
      v11 = *(a1 + 16);
      v9 = *(a1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = 0;
      v9 = BYTE6(a2);
      break;
  }

  v12 = sub_1AC6A8EE8(v11, v9, a1, a2);
  if (a3 < 1)
  {
    if (v12 <= 0 && v12 > a3)
    {
      goto LABEL_8;
    }

LABEL_15:
    result = sub_1AC6A8E80(v11, a3, a1, a2);
    goto LABEL_16;
  }

  if (v12 < 0 || v12 >= a3)
  {
    goto LABEL_15;
  }

LABEL_8:
  result = 0;
  switch(v5)
  {
    case 1:
      result = v10;
      break;
    case 2:
      result = *(a1 + 24);
      break;
    case 3:
      break;
    default:
      result = BYTE6(a2);
      break;
  }

LABEL_16:
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = result;
  return result;
}

uint64_t sub_1AC6A8CA4()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_83_4();

  return sub_1AC69AB64(v7, v8, v9, v3);
}

uint64_t sub_1AC6A8D4C(void *a1)
{
  v1 = [a1 enhancedContextualStrings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1AC5CF764(0, &qword_1EB56CA30, off_1E797ADE8);
  v3 = sub_1AC7A0158();

  return v3;
}

uint64_t sub_1AC6A8DBC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1AC7A0158();

  return v4;
}

uint64_t sub_1AC6A8E10(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC6A8E80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AC6A8EE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AC6A8FB8()
{
  result = qword_1EB56AA98;
  if (!qword_1EB56AA98)
  {
    sub_1AC5CF764(255, &qword_1EB56AAA0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AA98);
  }

  return result;
}