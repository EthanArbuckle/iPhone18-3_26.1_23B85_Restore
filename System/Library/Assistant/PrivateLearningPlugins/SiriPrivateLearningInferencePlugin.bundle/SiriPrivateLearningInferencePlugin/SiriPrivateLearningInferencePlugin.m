void sub_15B8()
{
  type metadata accessor for SiriPrivateLearningInferencePlugin();
  sub_1B98(&qword_3CE08, &qword_309B0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3CB88 = 91;
  unk_3CB90 = 0xE100000000000000;
}

uint64_t sub_1648()
{
  v0 = sub_29B50();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_30820;
  *(v3 + 32) = type metadata accessor for ContactsInferenceDomain();
  result = type metadata accessor for MediaInferenceDomain();
  *(v3 + 40) = result;
  qword_3CBA0 = v3;
  return result;
}

uint64_t SiriPrivateLearningInferencePlugin.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SiriPrivateLearningInferencePlugin.init()();
  return v3;
}

char *SiriPrivateLearningInferencePlugin.init()()
{
  v1 = v0;
  sub_2ED98();
  sub_2ED88();
  sub_2ED58();

  sub_1960(v30, (v0 + 136));
  sub_2ED88();
  sub_2ED68();

  sub_1978(v30, v0 + 184);
  sub_2ED88();
  sub_2ED78();

  sub_1978(v30, v0 + 224);
  sub_2EF88();
  v2 = sub_2EF18();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_2EF28();
  v6 = &protocol witness table for InferredGroundTruthStoreCoreData;
  if (v5)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *(v0 + 16) = v5;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6;
  sub_2EF68();
  v8 = sub_2F9F8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2FA08();
  v12 = &protocol witness table for PICSStoreCoreData;
  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (!v11)
  {
    v12 = 0;
  }

  *(v0 + 56) = v11;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = v13;
  *(v0 + 88) = v12;
  sub_2EF78();
  v14 = sub_2FA18();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2FA28();
  v18 = &protocol witness table for PIMSStoreCoreData;
  if (v17)
  {
    v19 = v14;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *(v0 + 96) = v17;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v19;
  *(v0 + 128) = v18;
  v20 = sub_2EEB8();
  v21 = sub_2EEA8();
  *(v1 + 36) = v20;
  *(v1 + 37) = &protocol witness table for FlatFileStreamBookmarkStore;
  *(v1 + 33) = v21;
  v22 = sub_2F018();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_2F008();
  *(v1 + 46) = v22;
  *(v1 + 47) = &protocol witness table for FeatureManager;
  *(v1 + 43) = v25;
  sub_2EE38();
  sub_1978(v30, (v1 + 304));
  v26 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel;
  v27 = enum case for UFLCoreAnalyticsLogLevel.release(_:);
  v28 = sub_2EC58();
  (*(*(v28 - 8) + 104))(&v1[v26], v27, v28);
  return v1;
}

_OWORD *sub_1960(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1978(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SiriPrivateLearningInferencePlugin.run(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2EC98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = (*(*(sub_1B98(&qword_3CC88, &qword_30850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = sub_30088();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = &v15[(v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = a2;
  *(v16 + 1) = a3;

  sub_21D8(0, 0, v12, &unk_30860, v15);
}

uint64_t sub_1B98(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = sub_2EC78();
  v7[4] = v9;
  v10 = *(v9 - 8);
  v7[5] = v10;
  v11 = *(v10 + 64) + 15;
  v7[6] = swift_task_alloc();
  v12 = sub_2EC88();
  v7[7] = v12;
  v13 = *(v12 - 8);
  v7[8] = v13;
  v14 = *(v13 + 64) + 15;
  v7[9] = swift_task_alloc();
  v15 = sub_1B98(&qword_3CDF0, &qword_309A0);
  v7[10] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v17 = swift_task_alloc();
  v7[12] = v17;
  v18 = swift_task_alloc();
  v7[13] = v18;
  *v18 = v7;
  v18[1] = sub_1D90;

  return sub_24D8(v17, a5);
}

uint64_t sub_1D90()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1E8C, 0, 0);
}

uint64_t sub_1E8C()
{
  v1 = v0[10];
  sub_5AD0(v0[12], v0[11], &qword_3CDF0, &qword_309A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0 + 6;
    v2 = v0[6];
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0 + 5;
    v7 = v0[5];
    v9 = v0 + 4;
    v8 = v0[4];
    v10 = v0[7];
    v20 = v0[2];
    v21 = v0[3];
    (*(v7 + 32))(v2, v0[11], v8);
    (*(v7 + 16))(v4, v2, v8);
    (*(v5 + 104))(v4, enum case for PrivateLearningPluginResult.failure(_:), v10);
    v20(v4);
    (*(v5 + 8))(v4, v10);
  }

  else
  {
    v3 = v0 + 9;
    v11 = v0[9];
    v6 = v0 + 8;
    v9 = v0 + 7;
    v13 = v0[2];
    v12 = v0[3];
    (*(v0[8] + 104))(v11, enum case for PrivateLearningPluginResult.success(_:), v0[7]);
    v13(v11);
  }

  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[6];
  (*(*v6 + 8))(*v3, *v9);
  sub_5B38(v15, &qword_3CDF0, &qword_309A0);

  v18 = v0[1];

  return v18();
}

uint64_t sub_209C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2EC98() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_5BA0;

  return sub_1BE0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1B98(&qword_3CC88, &qword_30850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_5AD0(a3, v26 - v10, &qword_3CC88, &qword_30850);
  v12 = sub_30088();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_5B38(v11, &qword_3CC88, &qword_30850);
  }

  else
  {
    sub_30078();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_30058();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2FFA8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_5B38(a3, &qword_3CC88, &qword_30850);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_5B38(a3, &qword_3CC88, &qword_30850);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24D8(uint64_t a1, uint64_t a2)
{
  v3[91] = v2;
  v3[90] = a2;
  v3[89] = a1;
  v4 = sub_2EC58();
  v3[92] = v4;
  v5 = *(v4 - 8);
  v3[93] = v5;
  v6 = *(v5 + 64) + 15;
  v3[94] = swift_task_alloc();
  v7 = sub_2EC98();
  v3[95] = v7;
  v8 = *(v7 - 8);
  v3[96] = v8;
  v9 = *(v8 + 64) + 15;
  v3[97] = swift_task_alloc();
  v10 = sub_2EC08();
  v3[98] = v10;
  v11 = *(v10 - 8);
  v3[99] = v11;
  v12 = *(v11 + 64) + 15;
  v3[100] = swift_task_alloc();
  v13 = sub_2FE98();
  v3[101] = v13;
  v14 = *(v13 - 8);
  v3[102] = v14;
  v15 = *(v14 + 64) + 15;
  v3[103] = swift_task_alloc();

  return _swift_task_switch(sub_26B4, 0, 0);
}

uint64_t sub_26B4()
{
  v76 = v0;
  if (qword_3CC18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 720);
  v9 = sub_2FEC8();
  sub_4FD8(v9, qword_3E4A0);
  sub_2FEB8();
  sub_2FE78();
  *(v0 + 832) = sub_C724("runInferencePlugin", 18, 2, v1);
  (*(v2 + 8))(v1, v3);
  sub_2EBF8();
  (*(v6 + 16))(v5, v8, v7);
  v10 = (*(v6 + 88))(v5, v7);
  if (v10 == enum case for PrivateLearningPluginRunContext.eventBased(_:))
  {
    v11 = *(v0 + 776);
    (*(*(v0 + 768) + 96))(v11, *(v0 + 760));
    v12 = sub_2ECA8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  else if (v10 != enum case for PrivateLearningPluginRunContext.maintenance(_:))
  {
    (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));
  }

  if (qword_3CBA8 != -1)
  {
    swift_once();
  }

  v13 = sub_2FF48();
  *(v0 + 840) = sub_4FD8(v13, qword_3CBB0);
  v14 = sub_2FF28();
  v15 = sub_300D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v16 = 136315394;
    if (qword_3CB80 != -1)
    {
      swift_once();
    }

    *(v16 + 4) = sub_29C64(qword_3CB88, unk_3CB90, v75);
    *(v16 + 12) = 2080;
    v17 = sub_30128();
    v19 = sub_29C64(v17, v18, v75);

    *(v16 + 14) = v19;
    _os_log_impl(&dword_0, v14, v15, "%s SiriPrivateLearningInference trigger reason: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 800);
  v21 = *(v0 + 728);
  sub_54EC(v21 + 304, v0 + 64);
  v22 = sub_2F508();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v0 + 848) = sub_2F4F8();
  sub_2F498();
  sub_5AD0(v21 + 16, v0 + 144, &qword_3CC90, &qword_30868);
  if (*(v0 + 168))
  {
    v25 = *(v0 + 728);
    sub_1978((v0 + 144), v0 + 104);
    sub_5AD0(v25 + 56, v0 + 224, &qword_3CC98, &qword_30870);
    if (*(v0 + 248))
    {
      v26 = *(v0 + 728);
      sub_1978((v0 + 224), v0 + 184);
      sub_5AD0(v26 + 96, v0 + 304, &qword_3CCA0, &qword_30878);
      if (*(v0 + 328))
      {
        v27 = *(v0 + 752);
        v28 = *(v0 + 744);
        v29 = *(v0 + 736);
        v30 = *(v0 + 728);
        sub_1978((v0 + 304), v0 + 264);
        sub_54EC(v0 + 104, v0 + 344);
        sub_54EC(v0 + 184, v0 + 384);
        sub_54EC(v30 + 344, v0 + 424);
        sub_54EC(v21 + 304, v0 + 464);
        sub_54EC(v0 + 264, v0 + 504);
        (*(v28 + 16))(v27, v30 + OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel, v29);
        v31 = type metadata accessor for SiriPrivateLearningInferencePluginContext();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        v34 = swift_allocObject();
        *(v0 + 856) = v34;
        sub_1978((v0 + 344), v34 + 16);
        sub_1978((v0 + 384), v34 + 56);
        sub_1978((v0 + 464), v34 + 96);
        sub_1978((v0 + 424), v34 + 136);
        sub_1978((v0 + 504), v34 + 176);
        (*(v28 + 32))(v34 + OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin41SiriPrivateLearningInferencePluginContext_uflCoreAnalyticsLogLevel, v27, v29);
        sub_5070(v30 + 136, v0 + 16);
        sub_54EC(v30 + 184, v0 + 544);
        sub_54EC(v30 + 224, v0 + 584);
        sub_54EC(v30 + 264, v0 + 624);
        v35 = qword_3CB98;

        if (v35 != -1)
        {
          swift_once();
        }

        v36 = qword_3CBA0;
        type metadata accessor for SiriPrivateLearningInferenceEngine();
        v37 = swift_allocObject();

        *(v0 + 864) = sub_44F4(v34, (v0 + 16), (v0 + 544), (v0 + 584), (v0 + 624), v36, v37);
        v38 = swift_task_alloc();
        *(v0 + 872) = v38;
        *v38 = v0;
        v38[1] = sub_3194;

        return sub_1011C();
      }

      sub_5B38(v0 + 304, &qword_3CCA0, &qword_30878);
      sub_5010();
      v40 = swift_allocError();
      *v43 = 4;
      *(v43 + 8) = 0;
      swift_willThrow();
      sub_5448((v0 + 184));
    }

    else
    {
      sub_5B38(v0 + 224, &qword_3CC98, &qword_30870);
      sub_5010();
      v40 = swift_allocError();
      *v42 = 4;
      *(v42 + 8) = 0;
      swift_willThrow();
    }

    sub_5448((v0 + 104));
  }

  else
  {
    sub_5B38(v0 + 144, &qword_3CC90, &qword_30868);
    sub_5010();
    v40 = swift_allocError();
    *v41 = 2;
    *(v41 + 8) = 0;
    swift_willThrow();
  }

  v44 = *(v0 + 840);
  swift_errorRetain();
  v45 = sub_2FF28();
  v46 = sub_300E8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v47 = 136315394;
    if (qword_3CB80 != -1)
    {
      swift_once();
    }

    *(v47 + 4) = sub_29C64(qword_3CB88, unk_3CB90, v75);
    *(v47 + 12) = 2080;
    *(v0 + 704) = v40;
    swift_errorRetain();
    sub_1B98(&qword_3CDE8, &qword_30FA0);
    v48 = sub_2FF98();
    v50 = sub_29C64(v48, v49, v75);

    *(v47 + 14) = v50;
    _os_log_impl(&dword_0, v45, v46, "%s Failed to run SiriPrivateLearningInference plugin, error=%s", v47, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 680) = v40;
  swift_errorRetain();
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  v51 = swift_dynamicCast();
  v52 = *(v0 + 848);
  v53 = *(v0 + 800);
  if (v51)
  {
    v54 = *(v0 + 664);
    v55 = *(v0 + 672);
    v56 = *(v0 + 800);
    sub_2F488();
    if (v55 < 0)
    {
      swift_errorRetain();
      v57 = v54;
    }

    else
    {
      sub_5010();
      v57 = swift_allocError();
      *v58 = v54;
      *(v58 + 8) = v55;
    }

    v63 = *(v0 + 848);
    v64 = *(v0 + 800);
    v65 = *(v0 + 792);
    v66 = *(v0 + 784);
    v67 = *(v0 + 712);
    *(v0 + 696) = v57;
    sub_2FF98();
    sub_2EC68();

    sub_5064(v54, v55);

    (*(v65 + 8))(v64, v66);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
    v68 = *(v0 + 680);
  }

  else
  {
    v59 = *(v0 + 792);
    v60 = *(v0 + 784);
    v61 = *(v0 + 712);
    v62 = *(v0 + 680);

    sub_2F488();
    *(v0 + 688) = v40;
    swift_errorRetain();
    sub_2FF98();
    sub_2EC68();

    (*(v59 + 8))(v53, v60);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
  }

  v69 = *(v0 + 832);
  v70 = *(v0 + 824);
  v71 = *(v0 + 800);
  v72 = *(v0 + 776);
  v73 = *(v0 + 752);
  sub_39A0();

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_3194(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 872);
  v7 = *v3;
  v7[110] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_358C, 0, 0);
  }

  else
  {
    v7[111] = a2;
    v7[112] = a1;
    v8 = swift_task_alloc();
    v7[113] = v8;
    *v8 = v7;
    v8[1] = sub_331C;
    v9 = v7[108];

    return sub_11E68();
  }
}

uint64_t sub_331C()
{
  v1 = *(*v0 + 904);
  v3 = *v0;

  return _swift_task_switch(sub_3418, 0, 0);
}

uint64_t sub_3418()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[89];
  sub_2F4A8();

  *v9 = v1;
  *(v9 + 8) = v2;
  *(v9 + 16) = 0;
  sub_1B98(&qword_3CDF0, &qword_309A0);
  swift_storeEnumTagMultiPayload();
  sub_50D4(v4);

  sub_5448(v0 + 33);
  sub_5448(v0 + 23);
  sub_5448(v0 + 13);
  (*(v7 + 8))(v6, v8);
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[100];
  v13 = v0[97];
  v14 = v0[94];
  sub_39A0();

  v15 = v0[1];

  return v15();
}

uint64_t sub_358C()
{
  v37 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);

  sub_50D4(v2);

  sub_5448((v0 + 264));
  sub_5448((v0 + 184));
  sub_5448((v0 + 104));
  v3 = *(v0 + 880);
  v4 = *(v0 + 840);
  swift_errorRetain();
  v5 = sub_2FF28();
  v6 = sub_300E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v7 = 136315394;
    if (qword_3CB80 != -1)
    {
      swift_once();
    }

    *(v7 + 4) = sub_29C64(qword_3CB88, unk_3CB90, &v36);
    *(v7 + 12) = 2080;
    *(v0 + 704) = v3;
    swift_errorRetain();
    sub_1B98(&qword_3CDE8, &qword_30FA0);
    v8 = sub_2FF98();
    v10 = sub_29C64(v8, v9, &v36);

    *(v7 + 14) = v10;
    _os_log_impl(&dword_0, v5, v6, "%s Failed to run SiriPrivateLearningInference plugin, error=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 680) = v3;
  swift_errorRetain();
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  v11 = swift_dynamicCast();
  v12 = *(v0 + 848);
  v13 = *(v0 + 800);
  if (v11)
  {
    v14 = *(v0 + 664);
    v15 = *(v0 + 672);
    v16 = *(v0 + 800);
    sub_2F488();
    if (v15 < 0)
    {
      swift_errorRetain();
      v17 = v14;
    }

    else
    {
      sub_5010();
      v17 = swift_allocError();
      *v18 = v14;
      *(v18 + 8) = v15;
    }

    v23 = *(v0 + 848);
    v24 = *(v0 + 800);
    v25 = *(v0 + 792);
    v26 = *(v0 + 784);
    v27 = *(v0 + 712);
    *(v0 + 696) = v17;
    sub_2FF98();
    sub_2EC68();

    sub_5064(v14, v15);

    (*(v25 + 8))(v24, v26);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
    v28 = *(v0 + 680);
  }

  else
  {
    v19 = *(v0 + 792);
    v20 = *(v0 + 784);
    v21 = *(v0 + 712);
    v22 = *(v0 + 680);

    sub_2F488();
    *(v0 + 688) = v3;
    swift_errorRetain();
    sub_2FF98();
    sub_2EC68();

    (*(v19 + 8))(v13, v20);
    sub_1B98(&qword_3CDF0, &qword_309A0);
    swift_storeEnumTagMultiPayload();
  }

  v29 = *(v0 + 832);
  v30 = *(v0 + 824);
  v31 = *(v0 + 800);
  v32 = *(v0 + 776);
  v33 = *(v0 + 752);
  sub_39A0();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_39A0()
{
  v0 = sub_2FED8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2FE98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3CC18 != -1)
  {
    swift_once();
  }

  v10 = sub_2FEC8();
  sub_4FD8(v10, qword_3E4A0);
  v11 = sub_2FEB8();
  sub_2FEE8();
  v12 = sub_30108();
  if (sub_30138())
  {

    sub_2FF18();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2FE88();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v15, "runInferencePlugin", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t *SiriPrivateLearningInferencePlugin.deinit()
{
  sub_5B38((v0 + 2), &qword_3CC90, &qword_30868);
  sub_5B38((v0 + 7), &qword_3CC98, &qword_30870);
  sub_5B38((v0 + 12), &qword_3CCA0, &qword_30878);
  sub_5448(v0 + 17);
  sub_5448(v0 + 23);
  sub_5448(v0 + 28);
  sub_5448(v0 + 33);
  sub_5448(v0 + 38);
  sub_5448(v0 + 43);
  v1 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel;
  v2 = sub_2EC58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriPrivateLearningInferencePlugin.__deallocating_deinit()
{
  sub_5B38((v0 + 2), &qword_3CC90, &qword_30868);
  sub_5B38((v0 + 7), &qword_3CC98, &qword_30870);
  sub_5B38((v0 + 12), &qword_3CCA0, &qword_30878);
  sub_5448(v0 + 17);
  sub_5448(v0 + 23);
  sub_5448(v0 + 28);
  sub_5448(v0 + 33);
  sub_5448(v0 + 38);
  sub_5448(v0 + 43);
  v1 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin34SiriPrivateLearningInferencePlugin_coreAnalyticsLogLevel;
  v2 = sub_2EC58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_3E18()
{
  v0 = type metadata accessor for SiriPrivateLearningInferencePlugin();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SiriPrivateLearningInferencePlugin.init()();
  return v3;
}

uint64_t sub_3E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2EC98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1B98(&qword_3CC88, &qword_30850);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_30088();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v3;
  (*(v8 + 32))(&v16[v15], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v17 = &v16[(v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = a2;
  *(v17 + 1) = a3;

  sub_21D8(0, 0, v13, &unk_309B8, v16);
}

uint64_t sub_405C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3CBB0);
  v1 = sub_4FD8(v0, qword_3CBB0);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_4124(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = &_swiftEmptyArrayStorage;
  v12 = &_swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        sub_2FFE8();
        if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v8 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
          sub_30008();
        }

        sub_30048();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_4234@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4304(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_43FC;

  return v7(a1);
}

uint64_t sub_43FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_44F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v32 = *a7;
  v14 = *(*(sub_2EC58() - 8) + 64);
  (__chkstk_darwin)();
  v35 = type metadata accessor for SiriPrivateLearningInferencePluginContext();
  v36 = sub_5494();
  v34[0] = a1;
  sub_54EC(v34, (a7 + 2));
  sub_5070(a2, (a7 + 7));
  sub_54EC(a3, (a7 + 13));
  sub_54EC(a4, (a7 + 18));
  sub_54EC(a5, (a7 + 23));
  v15 = sub_2F1D8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  a7[29] = sub_2F1C8();
  sub_5550(v34, v35);
  sub_2F0C8();
  v18 = sub_2F5E8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  a7[30] = sub_2F5C8();
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v21 = sub_2FF48();
  sub_4FD8(v21, qword_3D460);
  v22 = sub_2FF28();
  v23 = sub_300F8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v33);
    _os_log_impl(&dword_0, v22, v23, "%s Initializing inference domains:", v24, 0xCu);
    sub_5448(v25);
  }

  sub_29B50();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_30830;
  *(inited + 32) = type metadata accessor for CommonInferenceDomain();
  v33 = a6;
  v27 = sub_27AA4(inited);
  v28 = v33;
  __chkstk_darwin(v27);
  *(&v31 - 2) = v34;
  *(&v31 - 1) = v32;
  v29 = sub_4124(sub_5594, (&v31 - 4), v28);

  a7[28] = v29;
  sub_FD58();
  sub_5448(a5);
  sub_5448(a4);
  sub_5448(a3);
  sub_5448(a2);
  sub_5448(v34);
  return a7;
}

unint64_t sub_48EC(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CE10, &qword_309C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B98(&qword_3CE18, &qword_309C8);
    v8 = sub_30268();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_5AD0(v10, v6, &qword_3CE10, &qword_309C0);
      result = sub_2A2F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2EC08();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for SiriPrivateLearningInferencePlugin()
{
  result = qword_3CCD0;
  if (!qword_3CCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4B28()
{
  result = sub_2EC58();
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

unint64_t sub_4BE4(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CDD0, &qword_30988);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B98(&qword_3CDD8, &unk_30990);
    v8 = sub_30268();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      sub_5AD0(v10, v6, &qword_3CDD0, &qword_30988);
      result = sub_2A2F4(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = sub_2EC08();
      v16 = *(v15 - 8);
      v17 = *(v16 + 32);
      v18 = *(v16 + 72) * v13;
      v17(v14 + v18, v6, v15);
      result = (v17)(v8[7] + v18, &v6[v23], v15);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_4DF0(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CDC0, &qword_31900);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B98(&qword_3CDC8, &qword_30980);
    v8 = sub_30268();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_5AD0(v10, v6, &qword_3CDC0, &qword_31900);
      result = sub_2A21C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2F438();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_4FD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_5010()
{
  result = qword_3CDE0;
  if (!qword_3CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CDE0);
  }

  return result;
}

uint64_t sub_5064(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t sub_5070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_50D4(uint64_t a1)
{
  v2 = sub_2F728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_54EC(a1 + 176, v12);
  sub_1B98(&qword_3CDF8, &qword_309A8);
  sub_2F278();
  if (swift_dynamicCast())
  {
    sub_2F718();
    sub_2F708();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_3CBA8 != -1)
    {
      swift_once();
    }

    v7 = sub_2FF48();
    sub_4FD8(v7, qword_3CBB0);
    v8 = sub_2FF28();
    v9 = sub_300E8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "PIMS Store in context is not a CoreData store. Skipping store policies.", v10, 2u);
    }
  }
}

uint64_t sub_5448(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_5494()
{
  result = qword_3CE00;
  if (!qword_3CE00)
  {
    type metadata accessor for SiriPrivateLearningInferencePluginContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE00);
  }

  return result;
}

uint64_t sub_54EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_5550(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_55B0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_5614()
{
  v1 = sub_2EC98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_56F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2EC98() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_5834;

  return sub_1BE0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_5834()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5928()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5960(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5BA0;

  return sub_4304(a1, v5);
}

uint64_t sub_5A18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5834;

  return sub_4304(a1, v5);
}

uint64_t sub_5AD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B98(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5B38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_5BA8()
{
  type metadata accessor for PhoneCallContactGroundTruthGenerator();
  sub_1B98(&qword_3CF78, &qword_30AF0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3CE20 = 91;
  *algn_3CE28 = 0xE100000000000000;
}

uint64_t sub_5C34(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v4 = sub_1B98(&qword_3CF40, &unk_315B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v112 - v6;
  v8 = sub_2EC08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v112 - v15;
  __chkstk_darwin(v14);
  v18 = &v112 - v17;
  sub_30018();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_5B38(v7, &qword_3CF40, &unk_315B0);
  }

  v115 = v13;
  (*(v9 + 32))(v18, v7, v8);
  if (qword_3CBD0 != -1)
  {
    swift_once();
  }

  v20 = sub_2FF48();
  v21 = sub_4FD8(v20, qword_3CE30);
  v22 = *(v9 + 16);
  v114 = v9 + 16;
  v113 = v22;
  v22(v16, v18, v8);
  v23 = sub_2FF28();
  v24 = sub_300D8();
  v25 = os_log_type_enabled(v23, v24);
  v119 = v21;
  v118 = v9;
  if (!v25)
  {

    v117 = *(v9 + 8);
    v117(v16, v8);
    goto LABEL_9;
  }

  v112 = v18;
  v18 = v2;
  v2 = swift_slowAlloc();
  v121[0] = swift_slowAlloc();
  *v2 = 136315394;
  if (qword_3CBC8 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    *(v2 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v121);
    *(v2 + 12) = 2080;
    v26 = sub_2EBE8();
    v28 = v27;
    v117 = *(v118 + 8);
    v117(v16, v8);
    v29 = sub_29C64(v26, v28, v121);

    *(v2 + 14) = v29;
    _os_log_impl(&dword_0, v23, v24, "%s Reviewing session with id=%s", v2, 0x16u);
    swift_arrayDestroy();

    v2 = v18;
    v18 = v112;
LABEL_9:
    v30 = sub_2FF28();
    v31 = sub_300D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v121[0] = v33;
      *v32 = 136315138;
      if (qword_3CBC8 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v121);
      _os_log_impl(&dword_0, v30, v31, "%s Running classifiers on session features", v32, 0xCu);
      sub_5448(v33);
    }

    v34 = sub_2F358();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = sub_2F348();
    v124[3] = v34;
    v124[4] = &protocol witness table for PhoneCallClassifier;
    v124[0] = v37;
    sub_2F828();
    sub_1B98(&qword_3CF48, &unk_30AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_30830;
    *(inited + 32) = sub_2EFC8();
    *(inited + 40) = v39;
    v16 = sub_2C32C(inited);
    swift_setDeallocating();
    sub_7480(inited + 32);
    v40 = sub_2FAC8();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_2FAB8();
    v122 = v40;
    v123 = &protocol witness table for ContactEntityUtteranceComparator;
    v121[0] = v43;
    v44 = sub_2F818();
    v24 = v44;
    v121[0] = v44;
    sub_2F808();

    v45 = sub_2F608();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_2F5F8();
    v126[3] = v45;
    v126[4] = &protocol witness table for EntityPromptClassifier;
    v126[0] = v48;
    sub_54EC(v124, v121);
    sub_5550(v121, v122);
    v49 = sub_2F298();
    sub_5448(v121);
    v50 = *(v49 + 16);
    v51 = sub_294CC(0, v50, 1, &_swiftEmptyArrayStorage);
    v23 = v51;
    if (*(v49 + 16))
    {
      isa = v51[2].isa;
      if (((v51[3].isa >> 1) - isa) < v50)
      {
        goto LABEL_75;
      }

      v24 = v51 + 40 * isa;
      sub_1B98(&qword_3CF50, &unk_30D70);
      swift_arrayInitWithCopy();

      if (v50)
      {
        v53 = v23[2].isa;
        v54 = __OFADD__(v53, v50);
        v55 = (v53 + v50);
        if (v54)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v23[2].isa = v55;
      }
    }

    else
    {

      if (v50)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    sub_54EC(&v125, v121);
    sub_5550(v121, v122);
    v49 = sub_2F298();
    sub_5448(v121);
    v50 = *(v49 + 16);
    v56 = v23[2].isa;
    v57 = v56 + v50;
    if (__OFADD__(v56, v50))
    {
      goto LABEL_27;
    }

    if (v57 <= (v23[3].isa >> 1))
    {
      v58 = *(v49 + 16);
      if (v50)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }

LABEL_28:
    if (v56 <= v57)
    {
      v61 = v57;
    }

    else
    {
      v61 = v56;
    }

    v23 = sub_294CC((&dword_0 + 1), v61, 1, v23);
    v56 = v23[2].isa;
    if (*(v49 + 16))
    {
LABEL_22:
      if (((v23[3].isa >> 1) - v56) < v50)
      {
        goto LABEL_76;
      }

      v24 = v23 + 40 * v56;
      sub_1B98(&qword_3CF50, &unk_30D70);
      swift_arrayInitWithCopy();

      if (v50)
      {
        v59 = v23[2].isa;
        v54 = __OFADD__(v59, v50);
        v60 = (v59 + v50);
        if (v54)
        {
          goto LABEL_80;
        }

        v23[2].isa = v60;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v50)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_33:
    sub_54EC(v126, v121);
    sub_5550(v121, v122);
    v49 = sub_2F298();
    sub_5448(v121);
    v50 = *(v49 + 16);
    v62 = v23[2].isa;
    v63 = v62 + v50;
    if (__OFADD__(v62, v50))
    {
      goto LABEL_41;
    }

    if (v63 <= (v23[3].isa >> 1))
    {
      v64 = *(v49 + 16);
      if (!v50)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    }

LABEL_42:
    if (v62 <= v63)
    {
      v67 = v63;
    }

    else
    {
      v67 = v62;
    }

    v23 = sub_294CC((&dword_0 + 1), v67, 1, v23);
    v62 = v23[2].isa;
    if (!*(v49 + 16))
    {
LABEL_46:

      if (!v50)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_36:
    if (((v23[3].isa >> 1) - v62) >= v50)
    {
      break;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  sub_1B98(&qword_3CF50, &unk_30D70);
  swift_arrayInitWithCopy();

  if (v50)
  {
    v65 = v23[2].isa;
    v54 = __OFADD__(v65, v50);
    v66 = (v65 + v50);
    if (v54)
    {
      goto LABEL_81;
    }

    v23[2].isa = v66;
  }

LABEL_47:
  sub_1B98(&qword_3CF58, &unk_30AE0);
  swift_arrayDestroy();
  v68 = sub_2FF28();
  v69 = sub_300D8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v121[0] = v71;
    *v70 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v70 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v121);
    _os_log_impl(&dword_0, v68, v69, "%s Classification Results:", v70, 0xCu);
    sub_5448(v71);
  }

  sub_EFB0(8224, 0xE200000000000000, v23);
  v72 = sub_2FF28();
  v73 = sub_300D8();
  v74 = os_log_type_enabled(v72, v73);
  v116 = v2;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v121[0] = v76;
    *v75 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v75 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v121);
    _os_log_impl(&dword_0, v72, v73, "%s Running ground truth generators with classification results.", v75, 0xCu);
    sub_5448(v76);
  }

  v77 = sub_2FD68();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  v121[0] = sub_2FD58();
  sub_74D4(&qword_3CF60, 255, &type metadata accessor for PhoneCallInAppFollowupGroundTruthGenerator);
  v80 = sub_2EF98();

  v81 = sub_27838(v80);

  v82 = sub_2F8F8();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  v120 = sub_2F8E8();
  sub_74D4(&qword_3CF68, 255, &type metadata accessor for SuccessfulPhoneCallDefinition);
  sub_2F6F8();

  sub_5550(v121, v122);
  sub_2EF98();
  swift_getAssociatedTypeWitness();
  sub_1B98(&qword_3CF70, &unk_315C0);
  v85 = sub_30218();

  v120 = v81;
  sub_27BB0(v85);
  v2 = v120;
  sub_5448(v121);
  v86 = sub_2FB38();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  sub_2FB28();
  v89 = sub_2FB18();

  v90 = sub_2FF28();
  v91 = sub_300D8();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v121[0] = v93;
    *v92 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v92 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v121);
    _os_log_impl(&dword_0, v90, v91, "%s Generated Phone Call Ground Truth:", v92, 0xCu);
    sub_5448(v93);
  }

  else
  {
  }

  sub_EF9C(8224, 0xE200000000000000, v2);
  v94 = sub_2FF28();
  v24 = sub_300D8();
  if (os_log_type_enabled(v94, v24))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v121[0] = v96;
    *v95 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v95 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v121);
    _os_log_impl(&dword_0, v94, v24, "%s Generated Contact Prompt Ground Truth:", v95, 0xCu);
    sub_5448(v96);
  }

  sub_F328(8224, 0xE200000000000000, v89);
  v97 = sub_27880(v89);

  v121[0] = v2;
  sub_27BB0(v97);
  v16 = v121[0];
  v98 = v116;
  sub_751C(isUniquelyReferenced_nonNull_native);

  swift_beginAccess();
  v99 = *(v98 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = *(v98 + 64);
  v100 = v120;
  *(v98 + 64) = 0x8000000000000000;
  v102 = sub_2A2F4(v18);
  v103 = v100[2];
  v104 = (v101 & 1) == 0;
  v105 = v103 + v104;
  if (__OFADD__(v103, v104))
  {
    goto LABEL_74;
  }

  v106 = v101;
  if (v100[3] < v105)
  {
    sub_2A570(v105, isUniquelyReferenced_nonNull_native);
    v100 = v120;
    v107 = sub_2A2F4(v18);
    if ((v106 & 1) == (v108 & 1))
    {
      v102 = v107;
      goto LABEL_70;
    }

LABEL_82:
    result = sub_302C8();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2B320();
    v100 = v120;
  }

LABEL_70:
  v109 = v117;
  *(v98 + 64) = v100;
  if ((v106 & 1) == 0)
  {
    v110 = v115;
    v113(v115, v18, v8);
    sub_2B18C(v102, v110, &_swiftEmptyArrayStorage, v100);
  }

  v111 = v100[7] + 8 * v102;
  sub_27BB0(v16);
  swift_endAccess();
  return v109(v18, v8);
}

void *sub_6D24()
{
  v59 = sub_1B98(&qword_3CF38, &unk_30AC0);
  v1 = *(*(v59 - 8) + 64);
  v2 = __chkstk_darwin(v59);
  v58 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v57 = &v46 - v5;
  v6 = __chkstk_darwin(v4);
  v56 = &v46 - v7;
  __chkstk_darwin(v6);
  v55 = &v46 - v8;
  v54 = sub_2F3B8();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v54);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v0 + 64);
  v13 = *(v12 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v63 = &_swiftEmptyArrayStorage;

    sub_2BBE0(0, v13, 0);
    v62 = v63;
    v15 = v12 + 64;
    v16 = -1 << *(v12 + 32);
    result = sub_30148();
    v17 = result;
    v18 = 0;
    v19 = *(v12 + 36);
    v52 = v9 + 32;
    v53 = v9;
    v47 = v12 + 72;
    v48 = v13;
    v49 = v19;
    v50 = v12 + 64;
    v51 = v12;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v12 + 32))
    {
      v21 = v17 >> 6;
      if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_23;
      }

      if (v19 != *(v12 + 36))
      {
        goto LABEL_24;
      }

      v61 = v18;
      v22 = *(v12 + 48);
      v23 = sub_2EC08();
      v24 = *(v23 - 8);
      v25 = v55;
      (*(v24 + 16))(v55, v22 + *(v24 + 72) * v17, v23);
      v26 = *(*(v12 + 56) + 8 * v17);
      v27 = v56;
      (*(v24 + 32))(v56, v25, v23);
      v28 = v59;
      *(v27 + *(v59 + 48)) = v26;
      v29 = v57;
      sub_7404(v27, v57);
      v30 = *(v29 + *(v28 + 48));

      v31 = v58;
      sub_7404(v27, v58);
      v32 = *(v28 + 48);
      v33 = v60;
      v34 = *(v31 + v32);
      sub_2F3A8();
      sub_5B38(v27, &qword_3CF38, &unk_30AC0);
      (*(v24 + 8))(v31, v23);
      v35 = v62;
      v63 = v62;
      v37 = v62[2];
      v36 = v62[3];
      if (v37 >= v36 >> 1)
      {
        sub_2BBE0(v36 > 1, v37 + 1, 1);
        v33 = v60;
        v35 = v63;
      }

      v35[2] = v37 + 1;
      v38 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v62 = v35;
      result = (*(v53 + 32))(v35 + v38 + *(v53 + 72) * v37, v33, v54);
      v12 = v51;
      v20 = 1 << *(v51 + 32);
      if (v17 >= v20)
      {
        goto LABEL_25;
      }

      v15 = v50;
      v39 = *(v50 + 8 * v21);
      if ((v39 & (1 << v17)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v19) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_27;
      }

      v40 = v39 & (-2 << (v17 & 0x3F));
      if (v40)
      {
        v20 = __clz(__rbit64(v40)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v21 << 6;
        v42 = v21 + 1;
        v43 = (v47 + 8 * v21);
        while (v42 < (v20 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_7474(v17, v49, 0);
            v20 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_7474(v17, v49, 0);
      }

LABEL_4:
      v18 = v61 + 1;
      v17 = v20;
      if (v61 + 1 == v48)
      {

        return v62;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_7238()
{
  sub_5448(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_733C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3CE30);
  v1 = sub_4FD8(v0, qword_3CE30);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_7404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B98(&qword_3CF38, &unk_30AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_74D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_751C(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CF40, &unk_315B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v29 - v4;
  v6 = sub_2EC08();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3CBD0 != -1)
  {
    swift_once();
  }

  v10 = sub_2FF48();
  sub_4FD8(v10, qword_3CE30);
  v11 = sub_2FF28();
  v12 = sub_300D8();
  v13 = &SiriPrivateLearningInferencePlugin;
  if (os_log_type_enabled(v11, v12))
  {
    v29[1] = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315138;
    if (qword_3CBC8 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v33);
    _os_log_impl(&dword_0, v11, v12, "%s Logging inference results to SELF", v14, 0xCu);
    sub_5448(v15);

    v13 = &SiriPrivateLearningInferencePlugin;
  }

  else
  {
  }

  sub_2EBF8();
  v16 = sub_2FF28();
  v17 = sub_300D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v13;
    v21 = v19;
    v33[0] = v19;
    *v18 = 136315138;
    if (v20[41].base_props != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_29C64(qword_3CE20, *algn_3CE28, v33);
    _os_log_impl(&dword_0, v16, v17, "%s Extracting phone call metadata for SELF logging", v18, 0xCu);
    sub_5448(v21);
  }

  v22 = v30;
  v23 = *(v30 + 72);
  sub_30028();
  sub_2F4B8();
  sub_5B38(v5, &qword_3CF40, &unk_315B0);
  if (!*(v22 + 56))
  {
    return (*(v31 + 8))(v9, v32);
  }

  sub_54EC(v22 + 16, v33);
  v24 = sub_2FC68();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_2FC58();
  v33[3] = v24;
  v33[4] = &protocol witness table for PhoneCallSuggestionOutcomeExtractor;
  v33[0] = v27;

  sub_2FE08();

  (*(v31 + 8))(v9, v32);
  return sub_5448(v33);
}

__n128 sub_7964(uint64_t a1, uint64_t a2)
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

uint64_t sub_7980(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_79C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_7A24()
{
  sub_1B98(&qword_3CFC8, qword_30BA0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3CF80 = 91;
  *algn_3CF88 = 0xE100000000000000;
}

uint64_t sub_7AB4(uint64_t a1)
{
  v2 = sub_2F428();
  v68 = *(v2 - 8);
  v3 = *(v68 + 64);
  __chkstk_darwin(v2);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EC08();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v76 = v57 - v12;
  __chkstk_darwin(v11);
  v75 = v57 - v13;
  v61 = sub_2F378();
  v63 = *(v61 - 8);
  v14 = *(v63 + 64);
  __chkstk_darwin(v61);
  v60 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B98(&qword_3CFA8, &qword_30B98);
  v16 = sub_2F2C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_30830;
  (*(v17 + 104))(v20 + v19, enum case for MediaSuggestionTag.domainMusic(_:), v16);
  v79 = v77;
  v80 = a1;
  v21 = a1;
  v22 = sub_E550(sub_8CA8, v78, v20);
  swift_setDeallocating();
  (*(v17 + 8))(v20 + v19, v16);
  v23 = v73;
  swift_deallocClassInstance();
  v24 = *(v21 + 16);
  v25 = &_swiftEmptyArrayStorage;
  v67 = v2;
  v66 = v5;
  v62 = v22;
  if (v24)
  {
    v82 = &_swiftEmptyArrayStorage;
    sub_2BAD8(0, v24, 0);
    v25 = v82;
    v26 = v21 + 32;
    v77 = v23 + 32;
    v27 = v75;
    do
    {
      sub_54EC(v26, v81);
      sub_5550(v81, v81[3]);
      sub_2F248();
      sub_5448(v81);
      v82 = v25;
      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        sub_2BAD8(v28 > 1, v29 + 1, 1);
        v25 = v82;
      }

      v25[2] = v29 + 1;
      (*(v73 + 32))(v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v29, v27, v6);
      v26 += 40;
      --v24;
    }

    while (v24);
    v2 = v67;
    v5 = v66;
    v22 = v62;
  }

  v30 = sub_23D64(v25);

  v32 = v76;
  v59 = v22[2];
  v33 = 0;
  if (v59)
  {
    v34 = 0;
    v58 = v22 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v57[1] = v63 + 16;
    v57[0] = v63 + 8;
    v64 = v68 + 16;
    v77 = v30 + 56;
    v75 = (v73 + 16);
    v35 = (v73 + 8);
    v65 = (v68 + 8);
    while (v34 < v22[2])
    {
      v72 = v33;
      v36 = v63;
      v37 = *(v63 + 72);
      v71 = v34;
      v38 = v60;
      v39 = v61;
      (*(v63 + 16))(v60, &v58[v37 * v34], v61);
      v40 = sub_2F368();
      v41 = v39;
      v42 = v40;
      result = (*(v36 + 8))(v38, v41);
      v69 = *(v42 + 16);
      if (v69)
      {
        v43 = 0;
        v70 = v42;
        while (v43 < *(v42 + 16))
        {
          (*(v68 + 16))(v5, v42 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v43, v2);
          sub_2F418();
          if (!*(v30 + 16))
          {

            goto LABEL_22;
          }

          v74 = v43;
          v44 = *(v30 + 40);
          sub_9178(&qword_3CFB0, &type metadata accessor for UUID);
          v45 = sub_2FF58();
          v46 = -1 << *(v30 + 32);
          v47 = v45 & ~v46;
          if (((*(v77 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
LABEL_21:

            v2 = v67;
            v5 = v66;
LABEL_22:
            (*v35)(v32, v6);
            result = (*v65)(v5, v2);
            v54 = 1;
            goto LABEL_23;
          }

          ++v74;
          v48 = ~v46;
          v49 = *(v73 + 72);
          v50 = *(v73 + 16);
          while (1)
          {
            v50(v10, *(v30 + 48) + v49 * v47, v6);
            sub_9178(&qword_3CFB8, &type metadata accessor for UUID);
            v51 = sub_2FF78();
            v52 = *v35;
            (*v35)(v10, v6);
            if (v51)
            {
              break;
            }

            v47 = (v47 + 1) & v48;
            v32 = v76;
            if (((*(v77 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v53 = v76;
          v52(v76, v6);
          v32 = v53;
          v5 = v66;
          v2 = v67;
          result = (*v65)(v66, v67);
          v42 = v70;
          v43 = v74;
          if (v74 == v69)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:

      v54 = 0;
LABEL_23:
      v22 = v62;
      v33 = (v72 + v54);
      if (__CFADD__(v72, v54))
      {
        goto LABEL_32;
      }

      v34 = v71 + 1;
      if (v71 + 1 == v59)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_27:
  v55 = v33;

  v56 = v22[2];

  if (HIDWORD(v56))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v56 >= v55)
  {
    return 0;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_831C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v73 = a4;
  v70 = a2;
  v6 = sub_2F2C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v65 - v12;
  if (qword_3CBE0 != -1)
  {
    swift_once();
  }

  v74 = a3;
  v14 = sub_2FF48();
  v15 = sub_4FD8(v14, qword_3CF90);
  v16 = *(v7 + 16);
  v71 = a1;
  v17 = a1;
  v18 = v7;
  v19 = v7 + 16;
  v77 = v16;
  (v16)(v13, v17, v6);
  v72 = v15;
  v20 = sub_2FF28();
  v21 = sub_300D8();
  if (os_log_type_enabled(v20, v21))
  {
    v67 = v18;
    v22 = swift_slowAlloc();
    *&v66 = swift_slowAlloc();
    v75 = v66;
    *v22 = 136315394;
    if (qword_3CBD8 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_29C64(qword_3CF80, *algn_3CF88, &v75);
    *(v22 + 12) = 2080;
    v23 = v19;
    (v77)(v11, v13, v6);
    v24 = sub_2FF98();
    v26 = v25;
    v27 = v67;
    v28 = *(v67 + 8);
    v68 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69 = v28;
    v28(v13, v6);
    v29 = sub_29C64(v24, v26, &v75);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_0, v20, v21, "%s Processing new ground truth for %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = *(v18 + 8);
    v68 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69 = v30;
    v30(v13, v6);
    v23 = v19;
    v27 = v18;
  }

  v65[1] = v23;
  v31 = v70[6];
  sub_5550(v70 + 2, v70[5]);
  sub_2F0F8();
  v67 = sub_1B98(&qword_3CFA8, &qword_30B98);
  v32 = *(v27 + 72);
  v33 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v34 = swift_allocObject();
  v66 = xmmword_30830;
  *(v34 + 16) = xmmword_30830;
  v35 = v71;
  (v77)(v34 + v33, v71, v6);
  sub_2CAA8(v34);
  swift_setDeallocating();
  v36 = v69;
  v69(v34 + v33, v6);
  swift_deallocClassInstance();
  v37 = sub_2FC98();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v70 = v37;
  swift_allocObject();
  v40 = sub_2FC78();
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  (v77)(v41 + v33, v35, v6);
  sub_2CAA8(v41);
  swift_setDeallocating();
  v36(v41 + v33, v6);
  swift_deallocClassInstance();
  v42 = sub_2FA78();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  v77 = v40;
  v71 = sub_2FA58();
  v45 = sub_2FA68();

  v46 = sub_2FF28();
  v47 = sub_300D8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v75 = v49;
    *v48 = 136315650;
    v50 = &SiriPrivateLearningInferencePlugin;
    if (qword_3CBD8 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_29C64(qword_3CF80, *algn_3CF88, &v75);
    *(v48 + 12) = 2048;
    *(v48 + 14) = *(v74 + 16);

    *(v48 + 22) = 2048;
    if ((v45 & 0xC000000000000001) != 0)
    {
      v51 = sub_30168();
    }

    else
    {
      v51 = *(v45 + 16);
    }

    *(v48 + 24) = v51;
    _os_log_impl(&dword_0, v46, v47, "%s Updated candidate scores in %ld Ground Truth and %ld queries.", v48, 0x20u);
    sub_5448(v49);
  }

  else
  {

    v50 = &SiriPrivateLearningInferencePlugin;
  }

  sub_2FAA8();
  v75 = v77;
  sub_9178(&qword_3CFC0, &type metadata accessor for MediaSuggestionStoreCandidateAdapter);

  v52 = sub_2FA88();
  sub_8E5C(v45, &type metadata accessor for UsoEntity_common_MediaItem, &qword_3CFD0, &type metadata accessor for UsoEntity_common_MediaItem);

  v53 = sub_2FA98();

  v54 = sub_2FF28();
  v55 = sub_300D8();
  if (os_log_type_enabled(v54, v55))
  {
    v74 = v52;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v75 = v57;
    *v56 = 136315138;
    if (*&v50[42].ivar_base_size != -1)
    {
      swift_once();
    }

    *(v56 + 4) = sub_29C64(qword_3CF80, *algn_3CF88, &v75);
    _os_log_impl(&dword_0, v54, v55, "%s Nominated Candidates:", v56, 0xCu);
    sub_5448(v57);
  }

  else
  {
  }

  if (*&v50[42].ivar_base_size != -1)
  {
    swift_once();
  }

  v58 = qword_3CF80;
  v59 = *algn_3CF88;
  v75 = qword_3CF80;
  v76 = *algn_3CF88;

  v78._countAndFlagsBits = 8224;
  v78._object = 0xE200000000000000;
  sub_2FFC8(v78);
  sub_F7B4(v75, v76, v53);

  v60 = sub_2FF28();
  v61 = sub_300D8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_29C64(v58, v59, &v75);
    _os_log_impl(&dword_0, v60, v61, "%s Persisting updated candidates to the suggestion store", v62, 0xCu);
    sub_5448(v63);
  }

  sub_2FC88();

  *v73 = v53;
  return result;
}

uint64_t sub_8C54()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_8CC4()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3CF90);
  v1 = sub_4FD8(v0, qword_3CF90);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_8D8C(uint64_t a1, uint64_t a2)
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

  sub_1B98(&qword_3CFD8, &qword_30E50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_8E5C(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_30168();
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v9 = sub_8D8C(v8, 0);

    v10 = sub_8F3C(&v12, v9 + 4, v8, a1, a2, a3, a4);
    sub_916C();
    if (v10 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v9;
}

uint64_t sub_8F3C(uint64_t result, uint64_t *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v25 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v16 = v27 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_30158();
  a5(0);
  sub_9178(a6, a7);
  result = sub_300B8();
  v8 = v33;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v29 = v14;
  v30 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_30178())
      {
        goto LABEL_30;
      }

      v30(0);
      swift_dynamicCast();
      result = v32;
      v17 = a3;
      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v28 = v15 + 1;
  }

  else
  {
    v28 = v18;
  }

  v15 = v28 - 1;
LABEL_30:
  v14 = v29;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

uint64_t sub_9178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_91C0(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_9200(a1);
  return v2;
}

uint64_t *sub_9200(uint64_t *a1)
{
  v3 = *v1;
  sub_54EC(a1, v8);
  sub_54EC(v8, (v1 + 4));
  v4 = sub_2F098();
  v6 = v5;
  sub_5448(a1);
  sub_5448(v8);
  v1[2] = v4;
  v1[3] = v6;
  return v1;
}

uint64_t sub_9298()
{
  sub_1B98(&qword_3D0F8, &unk_30C20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30BC0;
  v1 = sub_2EDC8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_2EDB8();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for ASRFeatureExtractor;
  *(v0 + 32) = v4;
  v5 = sub_2F9A8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_2F998();
  *(v0 + 96) = v5;
  *(v0 + 104) = sub_9564(&qword_3D100, &type metadata accessor for USOTaskSummaryFeatureExtractor);
  *(v0 + 72) = v8;
  v9 = sub_2EE78();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_2EE68();
  *(v0 + 136) = v9;
  *(v0 + 144) = &protocol witness table for DismissalFeatureExtractor;
  *(v0 + 112) = v12;
  v13 = sub_2EE08();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_2EDF8();
  *(v0 + 176) = v13;
  *(v0 + 184) = &protocol witness table for UEIFeatureExtractor;
  *(v0 + 152) = v16;
  v17 = sub_2EF08();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_2EEF8();
  *(v0 + 216) = v17;
  *(v0 + 224) = &protocol witness table for FlowClientEventFeatureExtractor;
  *(v0 + 192) = v20;
  v21 = sub_2EE98();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_2EE88();
  *(v0 + 256) = v21;
  *(v0 + 264) = &protocol witness table for RequestIdFeatureExtractor;
  *(v0 + 232) = v24;
  return v0;
}

uint64_t sub_9444()
{
  sub_1B98(&qword_3D0E8, &qword_30C18);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30830;
  v1 = sub_2FB08();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_2FAF8();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_9564(&qword_3D0F0, &type metadata accessor for CommonInteractionFeatureExtractor);
  *(v0 + 32) = v4;
  return v0;
}

uint64_t sub_9500()
{
  v1 = *(v0 + 24);

  sub_5448((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_9564(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_95FC()
{
  type metadata accessor for MusicEntityGroundTruthGenerator();
  sub_1B98(&qword_3D238, &qword_30D68);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3D108 = 91;
  unk_3D110 = 0xE100000000000000;
}

void *sub_9688()
{
  v1 = v0;
  v2 = sub_2FD08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2FB98();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_2FB88();
  v30[3] = v7;
  v30[4] = sub_C6DC(&qword_3D268, 255, &type metadata accessor for QuickSongStopGroundTruthGenerator);
  v30[0] = v10;
  v11 = sub_2F918();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v27 = sub_2F908();
  sub_C6DC(&qword_3D270, 255, &type metadata accessor for SuccessfulPlayMediaDefinition);
  sub_2F6F8();

  if (*(v1 + 32) == 1)
  {
    sub_2FCF8();
    *(&v33 + 1) = v2;
    v34 = sub_C6DC(&qword_3D280, 255, &type metadata accessor for MediaInAppFollowupGroundTruthGenerator);
    v14 = sub_C678(&v32);
    (*(v3 + 32))(v14, v6, v2);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_5AD0(v30, &v27, &qword_3D278, &qword_30DA8);
  v23 = v27;
  v24 = v28;
  v25 = v29;
  if (*(&v28 + 1))
  {
    sub_1978(&v23, v26);
    v15 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_29514(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_29514((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    sub_1978(v26, &v15[5 * v17 + 4]);
  }

  else
  {
    sub_5B38(&v23, &qword_3D278, &qword_30DA8);
    v15 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(&v31, &v27, &qword_3D278, &qword_30DA8);
  v23 = v27;
  v24 = v28;
  v25 = v29;
  if (*(&v28 + 1))
  {
    sub_1978(&v23, v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_29514(0, v15[2] + 1, 1, v15);
    }

    v19 = v15[2];
    v18 = v15[3];
    if (v19 >= v18 >> 1)
    {
      v15 = sub_29514((v18 > 1), v19 + 1, 1, v15);
    }

    v15[2] = v19 + 1;
    sub_1978(v26, &v15[5 * v19 + 4]);
  }

  else
  {
    sub_5B38(&v23, &qword_3D278, &qword_30DA8);
  }

  sub_5AD0(&v32, &v27, &qword_3D278, &qword_30DA8);
  v23 = v27;
  v24 = v28;
  v25 = v29;
  if (*(&v28 + 1))
  {
    sub_1978(&v23, v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_29514(0, v15[2] + 1, 1, v15);
    }

    v21 = v15[2];
    v20 = v15[3];
    if (v21 >= v20 >> 1)
    {
      v15 = sub_29514((v20 > 1), v21 + 1, 1, v15);
    }

    v15[2] = v21 + 1;
    sub_1978(v26, &v15[5 * v21 + 4]);
  }

  else
  {
    sub_5B38(&v23, &qword_3D278, &qword_30DA8);
  }

  sub_1B98(&qword_3D278, &qword_30DA8);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_9B68(uint64_t a1)
{
  v2 = sub_1B98(&qword_3CF40, &unk_315B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v75 - v4;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v75 - v13;
  __chkstk_darwin(v12);
  v16 = &v75 - v15;
  v86 = a1;
  sub_30018();
  if ((v7[6])(v5, 1, v6) == 1)
  {
    return sub_5B38(v5, &qword_3CF40, &unk_315B0);
  }

  (v7[4])(v16, v5, v6);
  if (qword_3CBF0 != -1)
  {
    goto LABEL_81;
  }

LABEL_4:
  v79 = v11;
  v18 = sub_2FF48();
  v19 = sub_4FD8(v18, qword_3D118);
  v20 = v7[2];
  v83 = v16;
  v77 = v20;
  v78 = v7 + 2;
  v20(v14, v16, v6);
  v85 = v19;
  v21 = sub_2FF28();
  LOBYTE(v22) = sub_300D8();
  if (!os_log_type_enabled(v21, v22))
  {

    v80 = v7[1];
    v80(v14, v6);
    goto LABEL_8;
  }

  v23 = swift_slowAlloc();
  v88[0] = swift_slowAlloc();
  *v23 = 136315394;
  if (qword_3CBE8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    *(v23 + 4) = sub_29C64(qword_3D108, unk_3D110, v88);
    *(v23 + 12) = 2080;
    v24 = sub_2EBE8();
    v26 = v25;
    v80 = v7[1];
    v80(v14, v6);
    v27 = sub_29C64(v24, v26, v88);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_0, v21, v22, "%s Reviewing session with id=%s", v23, 0x16u);
    swift_arrayDestroy();

LABEL_8:
    v28 = sub_2FF28();
    v29 = sub_300D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v88[0] = v31;
      *v30 = 136315138;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v30 + 4) = sub_29C64(qword_3D108, unk_3D110, v88);
      _os_log_impl(&dword_0, v28, v29, "%s Running classifiers on session features", v30, 0xCu);
      sub_5448(v31);
    }

    v81 = v7;
    v82 = v6;
    v32 = sub_B6E0();
    v6 = v32[2];
    if (v6)
    {
      v7 = _swiftEmptyArrayStorage;
      v76 = v32;
      v11 = (v32 + 4);
      while (1)
      {
        sub_54EC(v11, v88);
        v14 = v89;
        sub_5550(v88, v89);
        v33 = sub_2F288();
        v16 = *(v33 + 16);
        v34 = v7[2];
        v35 = &v16[v34];
        if (__OFADD__(v34, v16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          swift_once();
          goto LABEL_4;
        }

        v14 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v35 <= v7[3] >> 1)
        {
          if (*(v14 + 2))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v34 <= v35)
          {
            v37 = &v16[v34];
          }

          else
          {
            v37 = v34;
          }

          v7 = sub_294CC(isUniquelyReferenced_nonNull_native, v37, 1, v7);
          if (*(v14 + 2))
          {
LABEL_25:
            if ((v7[3] >> 1) - v7[2] < v16)
            {
              goto LABEL_77;
            }

            sub_1B98(&qword_3CF50, &unk_30D70);
            swift_arrayInitWithCopy();

            if (v16)
            {
              v38 = v7[2];
              v39 = __OFADD__(v38, v16);
              v40 = &v16[v38];
              if (v39)
              {
                goto LABEL_79;
              }

              v7[2] = v40;
            }

            goto LABEL_15;
          }
        }

        if (v16)
        {
          goto LABEL_74;
        }

LABEL_15:
        sub_5448(v88);
        v11 += 40;
        if (!--v6)
        {

          goto LABEL_31;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
LABEL_31:

    v41 = sub_2FF28();
    v42 = sub_300D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v88[0] = v44;
      *v43 = 136315394;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_29C64(qword_3D108, unk_3D110, v88);
      *(v43 + 12) = 2048;
      *(v43 + 14) = v7[2];

      _os_log_impl(&dword_0, v41, v42, "%s Made %ld Classifications:", v43, 0x16u);
      sub_5448(v44);
    }

    else
    {
    }

    sub_EFB0(8224, 0xE200000000000000, v7);
    v45 = sub_2FF28();
    v46 = sub_300D8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v88[0] = v48;
      *v47 = 136315138;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v47 + 4) = sub_29C64(qword_3D108, unk_3D110, v88);
      _os_log_impl(&dword_0, v45, v46, "%s Running ground truth generators with classification results.", v47, 0xCu);
      sub_5448(v48);
    }

    v49 = sub_9688();
    v11 = v49[2];
    if (v11)
    {
      v14 = _swiftEmptyArrayStorage;
      v76 = v49;
      v50 = (v49 + 4);
      while (1)
      {
        sub_54EC(v50, v88);
        sub_5550(v88, v89);
        sub_2EF98();
        swift_getAssociatedTypeWitness();
        sub_1B98(&qword_3CF70, &unk_315C0);
        v51 = sub_30218();

        sub_5448(v88);
        v16 = *(v51 + 16);
        v6 = *(v14 + 2);
        v52 = &v16[v6];
        if (__OFADD__(v6, v16))
        {
          goto LABEL_75;
        }

        v53 = swift_isUniquelyReferenced_nonNull_native();
        if (v53 && v52 <= *(v14 + 3) >> 1)
        {
          if (*(v51 + 16))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v6 <= v52)
          {
            v54 = &v16[v6];
          }

          else
          {
            v54 = v6;
          }

          v14 = sub_29354(v53, v54, 1, v14);
          if (*(v51 + 16))
          {
LABEL_53:
            if ((*(v14 + 3) >> 1) - *(v14 + 2) < v16)
            {
              goto LABEL_78;
            }

            swift_arrayInitWithCopy();

            if (v16)
            {
              v55 = *(v14 + 2);
              v39 = __OFADD__(v55, v16);
              v56 = &v16[v55];
              if (v39)
              {
                goto LABEL_80;
              }

              *(v14 + 2) = v56;
            }

            goto LABEL_43;
          }
        }

        if (v16)
        {
          goto LABEL_76;
        }

LABEL_43:
        v50 += 40;
        if (!--v11)
        {

          goto LABEL_59;
        }
      }
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_59:
    v57 = sub_BB00(v14);

    v58 = sub_2FF28();
    v23 = sub_300D8();
    if (os_log_type_enabled(v58, v23))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v88[0] = v60;
      *v59 = 136315138;
      if (qword_3CBE8 != -1)
      {
        swift_once();
      }

      *(v59 + 4) = sub_29C64(qword_3D108, unk_3D110, v88);
      _os_log_impl(&dword_0, v58, v23, "%s Generated Media Ground Truth:", v59, 0xCu);
      sub_5448(v60);
    }

    sub_EF9C(8224, 0xE200000000000000, v57);
    v61 = v84;
    sub_B2F0();

    swift_beginAccess();
    v62 = *(v61 + 24);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v61 + 24);
    v63 = v87;
    *(v61 + 24) = 0x8000000000000000;
    v21 = sub_2A2F4(v83);
    v65 = v63[2];
    v66 = (v64 & 1) == 0;
    v67 = v65 + v66;
    if (!__OFADD__(v65, v66))
    {
      break;
    }

    __break(1u);
LABEL_83:
    swift_once();
  }

  v68 = v64;
  if (v63[3] >= v67)
  {
    v72 = v82;
    if ((v22 & 1) == 0)
    {
      sub_2B320();
      v63 = v87;
    }

    v69 = v83;
LABEL_70:
    *(v84 + 24) = v63;
    if ((v68 & 1) == 0)
    {
      v73 = v79;
      v77(v79, v69, v72);
      sub_2B18C(v21, v73, _swiftEmptyArrayStorage, v63);
    }

    v74 = v63[7] + 8 * v21;
    sub_27BB0(v57);
    swift_endAccess();
    return (v80)(v69, v72);
  }

  else
  {
    sub_2A570(v67, v22);
    v63 = v87;
    v69 = v83;
    v70 = sub_2A2F4(v83);
    v72 = v82;
    if ((v68 & 1) == (v71 & 1))
    {
      v21 = v70;
      goto LABEL_70;
    }

    result = sub_302C8();
    __break(1u);
  }

  return result;
}

void *sub_A794()
{
  v1 = v0;
  v54 = sub_1B98(&qword_3CF38, &unk_30AC0);
  v2 = *(*(v54 - 8) + 64);
  v3 = __chkstk_darwin(v54);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v52 = &v43 - v6;
  v7 = __chkstk_darwin(v5);
  v51 = &v43 - v8;
  __chkstk_darwin(v7);
  v50 = &v43 - v9;
  v49 = sub_2F3B8();
  v56 = *(v49 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v49);
  v55 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3CBF8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_2F5B8();
    swift_beginAccess();
    v12 = *(v1 + 24);
    v13 = *(v12 + 16);
    v14 = &_swiftEmptyArrayStorage;
    if (!v13)
    {
      return v14;
    }

    v60 = &_swiftEmptyArrayStorage;

    sub_2BBE0(0, v13, 0);
    v14 = v60;
    v15 = v12 + 64;
    v16 = -1 << *(v12 + 32);
    v17 = sub_30148();
    v18 = 0;
    v1 = *(v12 + 36);
    v47 = v12;
    v48 = v56 + 32;
    v43 = v12 + 72;
    v44 = v13;
    v45 = v1;
    v46 = v12 + 64;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v12 + 32))
    {
      if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_24;
      }

      if (v1 != *(v12 + 36))
      {
        goto LABEL_25;
      }

      v58 = 1 << v17;
      v59 = v17 >> 6;
      v57 = v18;
      v20 = *(v12 + 48);
      v21 = sub_2EC08();
      v22 = *(v21 - 8);
      v23 = v50;
      (*(v22 + 16))(v50, v20 + *(v22 + 72) * v17, v21);
      v24 = *(*(v12 + 56) + 8 * v17);
      v25 = v51;
      (*(v22 + 32))(v51, v23, v21);
      v26 = v54;
      *(v25 + *(v54 + 48)) = v24;
      v1 = v14;
      v27 = v52;
      sub_5AD0(v25, v52, &qword_3CF38, &unk_30AC0);
      v28 = *(v27 + *(v26 + 48));

      v29 = v53;
      sub_5AD0(v25, v53, &qword_3CF38, &unk_30AC0);
      v30 = *(v26 + 48);
      v31 = v55;
      v32 = *(v29 + v30);
      v14 = v1;
      sub_2F3A8();
      sub_5B38(v25, &qword_3CF38, &unk_30AC0);
      (*(v22 + 8))(v29, v21);
      v60 = v1;
      v34 = *(v1 + 16);
      v33 = *(v1 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2BBE0(v33 > 1, v34 + 1, 1);
        v31 = v55;
        v14 = v60;
      }

      v14[2] = v34 + 1;
      (*(v56 + 32))(v14 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v34, v31, v49);
      v12 = v47;
      v19 = 1 << *(v47 + 32);
      if (v17 >= v19)
      {
        goto LABEL_26;
      }

      v15 = v46;
      v35 = *(v46 + 8 * v59);
      if ((v35 & v58) == 0)
      {
        goto LABEL_27;
      }

      v1 = v45;
      if (v45 != *(v47 + 36))
      {
        goto LABEL_28;
      }

      v36 = v35 & (-2 << (v17 & 0x3F));
      if (v36)
      {
        v19 = __clz(__rbit64(v36)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v59 << 6;
        v38 = v59 + 1;
        v39 = (v43 + 8 * v59);
        while (v38 < (v19 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            sub_7474(v17, v45, 0);
            v19 = __clz(__rbit64(v40)) + v37;
            goto LABEL_5;
          }
        }

        sub_7474(v17, v45, 0);
      }

LABEL_5:
      v18 = v57 + 1;
      v17 = v19;
      if (v57 + 1 == v44)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t sub_AD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = sub_2EC08();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4);
  v58 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2F958();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v48[-v13];
  v15 = sub_1B98(&qword_3D250, &unk_30D90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v48[-v17];
  v19 = sub_2F6C8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v48[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = a1;
  v23 = a1;
  v25 = v24;
  sub_54EC(v23, v63);
  sub_1B98(&qword_3CF70, &unk_315C0);
  v26 = swift_dynamicCast();
  v27 = *(v25 + 56);
  if ((v26 & 1) == 0)
  {
    v27(v18, 1, 1, v19);
    sub_5B38(v18, &qword_3D250, &unk_30D90);
    return sub_54EC(v61, v62);
  }

  v57 = v2;
  v27(v18, 0, 1, v19);
  (*(v25 + 32))(v22, v18, v19);
  sub_2F6B8();
  v54 = v8[13];
  v55 = v8 + 13;
  v54(v12, enum case for MediaFeedbackGroundTruthSource.successfulPlay(_:), v7);
  v28 = sub_2F948();
  v29 = v19;
  v32 = v8[1];
  v30 = (v8 + 1);
  v31 = v32;
  v32(v12, v7);
  v56 = v14;
  v32(v14, v7);
  if ((v28 & 1) == 0)
  {
    (*(v25 + 8))(v22, v29);
    return sub_54EC(v61, v62);
  }

  v33 = v7;
  v52 = v22;
  v53 = v29;
  if (qword_3CBF0 != -1)
  {
    swift_once();
  }

  v34 = sub_2FF48();
  sub_4FD8(v34, qword_3D118);
  sub_54EC(v61, v63);
  v35 = sub_2FF28();
  v36 = sub_300D8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64 = v50;
    *v37 = 136315138;
    v61 = v30;
    v51 = v33;
    sub_5550(v63, v63[3]);
    v49 = v36;
    v38 = v58;
    v33 = v51;
    sub_2F248();
    v39 = sub_2EBE8();
    v41 = v40;
    (*(v59 + 8))(v38, v60);
    sub_5448(v63);
    v42 = sub_29C64(v39, v41, &v64);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_0, v35, v49, "Updating 'successfulPlay' ground truth id=%s to extendedPlayWithInAppFollowup due to a detected in app followup", v37, 0xCu);
    sub_5448(v50);
  }

  else
  {

    sub_5448(v63);
  }

  v44 = v52;
  v45 = v56;
  v54(v56, enum case for MediaFeedbackGroundTruthSource.extendedPlayWithInAppFollowup(_:), v33);
  v46 = v62;
  v47 = v53;
  v62[3] = v53;
  v46[4] = sub_C6DC(&qword_3D258, 255, &type metadata accessor for MediaFeedbackGroundTruth);
  sub_C678(v46);
  sub_2F6A8();
  v31(v45, v33);
  return (*(v25 + 8))(v44, v47);
}

void sub_B2F0()
{
  v1 = v0;
  if (qword_3CBF0 != -1)
  {
    swift_once();
  }

  v2 = sub_2FF48();
  sub_4FD8(v2, qword_3D118);
  v3 = sub_2FF28();
  v4 = sub_300D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    if (qword_3CBE8 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_29C64(qword_3D108, unk_3D110, &v10);
    _os_log_impl(&dword_0, v3, v4, "%s Logging inference results to SELF", v5, 0xCu);
    sub_5448(v6);
  }

  if (*(v1 + 16))
  {
    v7 = sub_2F9E8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    sub_2F9D8();
    sub_2FD98();
  }
}

uint64_t sub_B4E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_B5D8()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D118);
  v1 = sub_4FD8(v0, qword_3D118);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_B6A0()
{
  v0 = sub_2F5E8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2F5D8();
  qword_3D130 = result;
  return result;
}

void *sub_B6E0()
{
  v0 = sub_2F328();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v26[3] = v0;
  v26[4] = &protocol witness table for MediaPlayClassifier;
  v26[0] = sub_2F318();
  v3 = sub_2F8B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v27[3] = v3;
  v27[4] = &protocol witness table for MediaInAppFollowupClassifier;
  v27[0] = sub_2F8A8();
  sub_2F828();
  sub_1B98(&qword_3CF48, &unk_30AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_30830;
  *(inited + 32) = sub_2EFB8();
  *(inited + 40) = v7;
  sub_2C32C(inited);
  swift_setDeallocating();
  sub_7480(inited + 32);
  v8 = sub_2F8D8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2F8C8();
  *(&v24 + 1) = v8;
  v25 = &protocol witness table for FullEntityUtteranceComparator;
  *&v23 = sub_2F818();
  sub_2F808();

  sub_5AD0(v26, &v23, &qword_3D260, &qword_30DA0);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  if (*(&v24 + 1))
  {
    sub_1978(&v19, v22);
    v11 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_294F0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_294F0((v12 > 1), v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    sub_1978(v22, &v11[5 * v13 + 4]);
  }

  else
  {
    sub_5B38(&v19, &qword_3D260, &qword_30DA0);
    v11 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(v27, &v23, &qword_3D260, &qword_30DA0);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  if (*(&v24 + 1))
  {
    sub_1978(&v19, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_294F0(0, v11[2] + 1, 1, v11);
    }

    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      v11 = sub_294F0((v14 > 1), v15 + 1, 1, v11);
    }

    v11[2] = v15 + 1;
    sub_1978(v22, &v11[5 * v15 + 4]);
  }

  else
  {
    sub_5B38(&v19, &qword_3D260, &qword_30DA0);
  }

  sub_5AD0(&v28, &v23, &qword_3D260, &qword_30DA0);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  if (*(&v24 + 1))
  {
    sub_1978(&v19, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_294F0(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_294F0((v16 > 1), v17 + 1, 1, v11);
    }

    v11[2] = v17 + 1;
    sub_1978(v22, &v11[5 * v17 + 4]);
  }

  else
  {
    sub_5B38(&v19, &qword_3D260, &qword_30DA0);
  }

  sub_1B98(&qword_3D260, &qword_30DA0);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_BB00(void *a1)
{
  v2 = 0;
  v90 = sub_2FAE8();
  v3 = *(v90 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v90);
  v89 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = v74 - v7;
  v95 = sub_2F238();
  v8 = *(v95 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v95);
  v93 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B98(&qword_3D240, &qword_30D80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v92 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v74 - v16;
  __chkstk_darwin(v15);
  v94 = v74 - v18;
  v19 = sub_1B98(&qword_3D248, &qword_30D88);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v77 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v76 = v74 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = v74 - v26;
  __chkstk_darwin(v25);
  v91 = v74 - v28;
  v29 = a1[2];
  v78 = (a1 + 4);
  v98 = (v8 + 56);
  v100 = (v30 + 56);
  v99 = (v30 + 48);
  v31 = (v8 + 48);
  v96 = (v8 + 32);
  v87 = enum case for MediaCorrectionGroundTruthSource.inAppFollowup(_:);
  v86 = (v3 + 104);
  v85 = (v3 + 8);
  v79 = enum case for MediaCorrectionGroundTruthSource.inAppFollowupUnrelatedEntity(_:);
  v84 = (v8 + 8);
  v75 = a1;

  v74[1] = 0;
  v33 = v17;
  v82 = v17;
  v97 = v19;
  v81 = v27;
  v80 = (v8 + 48);
  v83 = v29;
  while (1)
  {
    if (v2 == v29)
    {
      v108 = 0;
      v34 = v29;
      v106 = 0u;
      v107 = 0u;
      v35 = v95;
      goto LABEL_7;
    }

    if (v2 >= v29)
    {
      break;
    }

    result = sub_54EC(v78 + 40 * v2, &v106);
    v36 = __OFADD__(v2, 1);
    v34 = v2 + 1;
    v35 = v95;
    if (v36)
    {
      goto LABEL_31;
    }

LABEL_7:
    v104[0] = v106;
    v104[1] = v107;
    v105 = v108;
    v101 = v34;
    if (*(&v107 + 1))
    {
      sub_1978(v104, &v103);
      sub_54EC(&v103, v102);
      sub_1B98(&qword_3CF70, &unk_315C0);
      v37 = swift_dynamicCast();
      (*v98)(v33, v37 ^ 1u, 1, v35);
      sub_5448(&v103);
      v38 = *v100;
      (*v100)(v33, 0, 1, v19);
    }

    else
    {
      v38 = *v100;
      (*v100)(v33, 1, 1, v19);
    }

    v39 = *v99;
    if ((*v99)(v33, 1, v19) == 1)
    {
      sub_5B38(v33, &qword_3D240, &qword_30D80);
      v40 = 1;
      goto LABEL_14;
    }

    sub_C610(v33, v27, &qword_3D248, &qword_30D88);
    if ((*v31)(v27, 1, v35) == 1)
    {
      result = sub_5B38(v27, &qword_3D248, &qword_30D88);
      v19 = v97;
      v2 = v101;
    }

    else
    {
      sub_C610(v27, v94, &qword_3D248, &qword_30D88);
      v40 = 0;
      v19 = v97;
LABEL_14:
      v41 = v94;
      v38(v94, v40, 1, v19);
      v42 = v41;
      v43 = v92;
      sub_C610(v42, v92, &qword_3D240, &qword_30D80);
      v44 = v39(v43, 1, v19);
      v45 = v93;
      if (v44 == 1)
      {
        v46 = v91;
        (*v98)(v91, 1, 1, v35);
        v47 = (*v31)(v46, 1, v35);
      }

      else
      {
        v48 = v76;
        sub_C610(v43, v76, &qword_3D248, &qword_30D88);
        v49 = v77;
        sub_5AD0(v48, v77, &qword_3D248, &qword_30D88);
        v50 = *v31;
        result = (*v31)(v49, 1, v35);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v51 = v91;
        (*v96)(v91, v49, v35);
        v52 = v48;
        v46 = v51;
        sub_5B38(v52, &qword_3D248, &qword_30D88);
        (*v98)(v51, 0, 1, v35);
        v47 = v50(v51, 1, v35);
      }

      if (v47 == 1)
      {
        v63 = v75;

        return v63;
      }

      (*v96)(v45, v46, v35);
      v53 = v88;
      v54 = v45;
      sub_2F228();
      v55 = *v86;
      v56 = v89;
      v57 = v53;
      v58 = v90;
      (*v86)(v89, v87, v90);
      v59 = v35;
      v60 = sub_2FAD8();
      v61 = *v85;
      (*v85)(v56, v58);
      v61(v57, v58);
      if (v60)
      {
        (*v84)(v54, v59);
        v29 = v83;
LABEL_24:

        v63 = _swiftEmptyArrayStorage;
        if (v29)
        {
          *&v104[0] = _swiftEmptyArrayStorage;
          sub_2BB60(0, v29, 0);
          v63 = *&v104[0];
          v64 = v78;
          do
          {
            sub_AD00(v64, &v106);
            *&v104[0] = v63;
            v66 = v63[2];
            v65 = v63[3];
            if (v66 >= v65 >> 1)
            {
              sub_2BB60((v65 > 1), v66 + 1, 1);
            }

            v67 = *(&v107 + 1);
            v68 = v108;
            v69 = sub_C5C0(&v106, *(&v107 + 1));
            v70 = *(*(v67 - 8) + 64);
            __chkstk_darwin(v69);
            v72 = v74 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v73 + 16))(v72);
            sub_20EE0(v66, v72, v104, v67, v68);
            sub_5448(&v106);
            v63 = *&v104[0];
            v64 += 40;
            --v29;
          }

          while (v29);
        }

        return v63;
      }

      sub_2F228();
      v55(v56, v79, v58);
      v62 = sub_2FAD8();
      v61(v56, v58);
      v61(v57, v58);
      result = (*v84)(v54, v59);
      v29 = v83;
      v33 = v82;
      v19 = v97;
      v27 = v81;
      v31 = v80;
      v2 = v101;
      if (v62)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_C5C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_C610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B98(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_C678(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_C6DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_C724(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_2FE98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_3CC00 != -1)
  {
    swift_once();
  }

  v12 = byte_3E468;
  v13 = sub_2FEB8();
  v14 = sub_30118();
  result = sub_30138();
  if (v12 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v11, a4, v7);
      v19 = sub_2FF08();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      return sub_2FEF8();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v22;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_2FE88();
      v18 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_0, v13, v14, v17, a1, v18, v16, 2u);

      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_2FE88();
    v18 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v23;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_C99C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2FF88();
  v2 = [v0 BOOLForKey:v1];

  byte_3E468 = v2;
}

uint64_t sub_CA2C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3E470);
  sub_4FD8(v0, qword_3E470);
  return sub_2FF38();
}

uint64_t sub_CAB0()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3E488);
  sub_4FD8(v0, qword_3E488);
  return sub_2FF38();
}

uint64_t sub_CB30()
{
  v0 = sub_2FF48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2FEC8();
  sub_55B0(v5, qword_3E4A0);
  sub_4FD8(v5, qword_3E4A0);
  if (qword_3CC10 != -1)
  {
    swift_once();
  }

  v6 = sub_4FD8(v0, qword_3E488);
  (*(v1 + 16))(v4, v6, v0);
  return sub_2FEA8();
}

uint64_t sub_CC6C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D288);
  v1 = sub_4FD8(v0, qword_3D288);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_CD34(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_CD74(a1);
  return v2;
}

void *sub_CD74(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = a1[4];
  sub_5550(a1, a1[3]);
  sub_2F0D8();
  v6 = sub_2FE38();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v1[9] = sub_2FE28();
  sub_54EC(a1, v13);
  sub_54EC(v13, (v1 + 4));
  v9 = sub_2F098();
  v11 = v10;
  sub_5448(v13);
  v2[2] = v9;
  v2[3] = v11;
  sub_5448(a1);
  return v2;
}

void *sub_CE60()
{
  v1 = v0;
  v2 = sub_2F748();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_2F738();
  v27[3] = v2;
  v27[4] = sub_E378(&qword_3D430, &type metadata accessor for PhoneCallFeatureExtractor);
  v27[0] = v5;
  v6 = sub_2FA38();
  sub_54EC(v1 + 32, &v24);
  v7 = sub_2FA48();
  v28[3] = v6;
  v28[4] = sub_E378(&qword_3D438, &type metadata accessor for PlusClientEventFeatureExtractor);
  v28[0] = v7;
  v8 = sub_2F858();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2F848();
  v29[3] = v8;
  v29[4] = sub_E378(&qword_3D440, &type metadata accessor for SendMessageFeatureExtractor);
  v29[0] = v11;
  sub_5AD0(v27, &v24, &qword_3D448, &qword_30E68);
  v20 = v24;
  v21 = v25;
  v22 = v26;
  if (*(&v25 + 1))
  {
    sub_1978(&v20, v23);
    v12 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_29538(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_29538((v13 > 1), v14 + 1, 1, v12);
    }

    v12[2] = v14 + 1;
    sub_1978(v23, &v12[5 * v14 + 4]);
  }

  else
  {
    sub_5B38(&v20, &qword_3D448, &qword_30E68);
    v12 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(v28, &v24, &qword_3D448, &qword_30E68);
  v20 = v24;
  v21 = v25;
  v22 = v26;
  if (*(&v25 + 1))
  {
    sub_1978(&v20, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_29538(0, v12[2] + 1, 1, v12);
    }

    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      v12 = sub_29538((v15 > 1), v16 + 1, 1, v12);
    }

    v12[2] = v16 + 1;
    sub_1978(v23, &v12[5 * v16 + 4]);
  }

  else
  {
    sub_5B38(&v20, &qword_3D448, &qword_30E68);
  }

  sub_5AD0(v29, &v24, &qword_3D448, &qword_30E68);
  v20 = v24;
  v21 = v25;
  v22 = v26;
  if (*(&v25 + 1))
  {
    sub_1978(&v20, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_29538(0, v12[2] + 1, 1, v12);
    }

    v18 = v12[2];
    v17 = v12[3];
    if (v18 >= v17 >> 1)
    {
      v12 = sub_29538((v17 > 1), v18 + 1, 1, v12);
    }

    v12[2] = v18 + 1;
    sub_1978(v23, &v12[5 * v18 + 4]);
  }

  else
  {
    sub_5B38(&v20, &qword_3D448, &qword_30E68);
  }

  sub_1B98(&qword_3D448, &qword_30E68);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_D270()
{
  sub_1B98(&qword_3D408, &qword_30E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30DB0;
  v1 = sub_2F408();
  v2 = sub_E378(&qword_3D410, &type metadata accessor for PhoneCallGroundTruth);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2F678();
  v4 = sub_E378(&qword_3D418, &type metadata accessor for ContactPromptGroundTruth);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_2F338();
  v6 = sub_E378(&qword_3D420, &type metadata accessor for MessagesGroundTruth);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_2FC28();
  v8 = sub_E378(&qword_3D428, &type metadata accessor for ContactSuggestionOutcomeGroundTruth);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

void *sub_D3D0()
{
  v0 = sub_2FB78();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2FB68();
  v21[3] = v0;
  v21[4] = sub_E378(&qword_3D3F0, &type metadata accessor for INStartCallIntentFeatureExtractor);
  v21[0] = v3;
  v4 = sub_2FC48();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2FC38();
  v22[3] = v4;
  v22[4] = sub_E378(&qword_3D3F8, &type metadata accessor for INSendMessageIntentFeatureExtractor);
  v22[0] = v7;
  sub_5AD0(v21, &v18, &qword_3D400, &qword_30E58);
  v14 = v18;
  v15 = v19;
  v16 = v20;
  if (*(&v19 + 1))
  {
    sub_1978(&v14, v17);
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2955C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_2955C((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    sub_1978(v17, &v8[5 * v10 + 4]);
  }

  else
  {
    sub_5B38(&v14, &qword_3D400, &qword_30E58);
    v8 = _swiftEmptyArrayStorage;
  }

  sub_5AD0(v22, &v18, &qword_3D400, &qword_30E58);
  v14 = v18;
  v15 = v19;
  v16 = v20;
  if (*(&v19 + 1))
  {
    sub_1978(&v14, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2955C(0, v8[2] + 1, 1, v8);
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_2955C((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    sub_1978(v17, &v8[5 * v12 + 4]);
  }

  else
  {
    sub_5B38(&v14, &qword_3D400, &qword_30E58);
  }

  sub_1B98(&qword_3D400, &qword_30E58);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_D6B0()
{
  sub_1B98(&qword_3CFD8, &qword_30E50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30DC0;
  v1 = sub_2F668();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_2F658();
  v4 = sub_2F768();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_2F758();
  return v0;
}

void *sub_D740()
{
  v1 = v0;
  v2 = v0[8];
  sub_5550(v0 + 4, v0[7]);
  sub_2F0D8();
  v3 = sub_2F508();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_2F4F8();
  v7 = v0[8];
  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  v8 = v0[8];
  sub_5550(v1 + 4, v1[7]);
  sub_2F0E8();
  v9 = v0[9];
  v10 = type metadata accessor for PhoneCallContactGroundTruthGenerator();
  v11 = swift_allocObject();
  swift_retain_n();

  v12 = _swiftEmptyArrayStorage;
  v11[8] = sub_48EC(_swiftEmptyArrayStorage);
  sub_1978(&v27, (v11 + 2));
  v11[7] = v9;
  v11[9] = v6;
  v32 = v10;
  v33 = sub_E378(&qword_3D3D0, type metadata accessor for PhoneCallContactGroundTruthGenerator);
  v31 = v11;
  sub_5550(v35, v35[3]);
  v13 = sub_2F068();
  *(&v28 + 1) = sub_2ECB8();
  v29 = &protocol witness table for AnyFeature;
  *&v27 = v13;
  LOBYTE(v10) = sub_2ED48();
  sub_5448(&v27);
  sub_25F70(v10 & 1, 0xD00000000000002BLL, 0x8000000000032560, v1, v34);
  v14 = v1[8];
  sub_5550(v1 + 4, v1[7]);
  sub_2F0E8();
  v15 = type metadata accessor for MessagesContactGroundTruthGenerator();
  v16 = swift_allocObject();
  *(v16 + 64) = sub_48EC(_swiftEmptyArrayStorage);
  sub_1978(&v27, v16 + 16);
  *(v16 + 56) = v9;
  v34[8] = v15;
  v34[9] = sub_E378(&qword_3D3D8, type metadata accessor for MessagesContactGroundTruthGenerator);
  v34[5] = v16;
  v17 = sub_2FD48();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v27 = sub_2FD38();
  sub_E378(&qword_3D3E0, &type metadata accessor for MessagesContactPartialRepetitionDefinition);
  sub_2F838();

  for (i = 32; i != 192; i += 40)
  {
    sub_5AD0(&v30[i], &v27, &qword_3D3E8, &qword_30E48);
    v24[0] = v27;
    v24[1] = v28;
    v25 = v29;
    if (*(&v28 + 1))
    {
      sub_1978(v24, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_29580(0, v12[2] + 1, 1, v12);
      }

      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        v12 = sub_29580((v21 > 1), v22 + 1, 1, v12);
      }

      v12[2] = v22 + 1;
      sub_1978(v26, &v12[5 * v22 + 4]);
    }

    else
    {
      sub_5B38(v24, &qword_3D3E8, &qword_30E48);
    }
  }

  sub_1B98(&qword_3D3E8, &qword_30E48);
  swift_arrayDestroy();
  sub_5448(v35);
  return v12;
}

BOOL sub_DB84(void *a1)
{
  v3 = v1[8];
  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  v4 = a1[3];
  sub_5550(a1, v4);
  v7 = 1;
  if (sub_DC68(v4))
  {
    sub_5550(v10, v10[3]);
    v5 = sub_2F068();
    v9[3] = sub_2ECB8();
    v9[4] = &protocol witness table for AnyFeature;
    v9[0] = v5;
    v6 = sub_2ED48();
    sub_5448(v9);
    if ((v6 & 1) == 0)
    {
      v7 = 0;
    }
  }

  sub_5448(v10);
  return v7;
}

uint64_t sub_DC68(uint64_t a1)
{
  v2 = sub_2F778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B98(&qword_3D3B0, &qword_30E30);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B98(&qword_3D3B8, &qword_30E38);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v42 - v17;
  v19 = sub_1B98(&qword_3D3C0, &qword_30E40);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v44 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v42 - v24;
  __chkstk_darwin(v23);
  v27 = &v42 - v26;
  (*(v11 + 16))(v14, v45, a1);
  v28 = sub_2F408();
  v29 = swift_dynamicCast();
  v30 = *(*(v28 - 8) + 56);
  if (v29)
  {
    v31 = *(v28 - 8);
    v30(v18, 0, 1, v28);
    sub_2F3F8();
    (*(v31 + 8))(v18, v28);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v30(v18, 1, 1, v28);
    sub_5B38(v18, &qword_3D3B8, &qword_30E38);
  }

  v33 = *(v3 + 56);
  v33(v27, v32, 1, v2);
  (*(v3 + 104))(v25, enum case for PhoneCallGroundTruthSource.restatementAndSuccessfulPhoneCall(_:), v2);
  v33(v25, 0, 1, v2);
  v34 = *(v6 + 48);
  sub_5AD0(v27, v10, &qword_3D3C0, &qword_30E40);
  sub_5AD0(v25, &v10[v34], &qword_3D3C0, &qword_30E40);
  v35 = *(v3 + 48);
  if (v35(v10, 1, v2) != 1)
  {
    v37 = v44;
    sub_5AD0(v10, v44, &qword_3D3C0, &qword_30E40);
    if (v35(&v10[v34], 1, v2) != 1)
    {
      v38 = v43;
      (*(v3 + 32))(v43, &v10[v34], v2);
      sub_E378(&qword_3D3C8, &type metadata accessor for PhoneCallGroundTruthSource);
      v39 = v37;
      v36 = sub_2FF78();
      v40 = *(v3 + 8);
      v40(v38, v2);
      sub_5B38(v25, &qword_3D3C0, &qword_30E40);
      sub_5B38(v27, &qword_3D3C0, &qword_30E40);
      v40(v39, v2);
      sub_5B38(v10, &qword_3D3C0, &qword_30E40);
      return v36 & 1;
    }

    sub_5B38(v25, &qword_3D3C0, &qword_30E40);
    sub_5B38(v27, &qword_3D3C0, &qword_30E40);
    (*(v3 + 8))(v37, v2);
    goto LABEL_9;
  }

  sub_5B38(v25, &qword_3D3C0, &qword_30E40);
  sub_5B38(v27, &qword_3D3C0, &qword_30E40);
  if (v35(&v10[v34], 1, v2) != 1)
  {
LABEL_9:
    sub_5B38(v10, &qword_3D3B0, &qword_30E30);
    v36 = 0;
    return v36 & 1;
  }

  sub_5B38(v10, &qword_3D3C0, &qword_30E40);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_E27C()
{
  sub_1B98(&qword_3D3A8, "\\\r");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30830;
  v1 = sub_2F938();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_2F928();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for FirstPartyEventStreamProcessor;
  *(v0 + 32) = v4;
  return v0;
}

uint64_t sub_E30C()
{
  v1 = v0[3];

  sub_5448(v0 + 4);
  v2 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_E378(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_E3C0(void *(*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v17 = *i;
    result = a1(&v18, &v17);
    if (v3)
    {

      return v5;
    }

    v8 = v18;
    v9 = *(v18 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_29354(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        sub_1B98(&qword_3CF70, &unk_315C0);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_E5F8(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v25 = *(v9 + 72);
  v11 = &_swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v27, v10);
    if (v6)
    {

      return v11;
    }

    v13 = v27;
    v14 = *(v27 + 16);
    v15 = v11[2];
    if (__OFADD__(v15, v14))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v15 + v14 <= v11[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a5();
      if (*(v13 + 16))
      {
LABEL_12:
        v16 = (v11[3] >> 1) - v11[2];
        result = a6(0);
        v17 = *(result - 1);
        if (v16 < v14)
        {
          goto LABEL_21;
        }

        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v11[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_22;
          }

          v11[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_20;
    }

LABEL_4:
    v10 += v25;
    if (!--v7)
    {
      return v11;
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

void *sub_E818(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = &_swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    result = a1(&v17, i);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_29724(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        sub_1B98(&qword_3D628, &qword_316D0);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_E99C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
    while (1)
    {
      v6 = 0;
      v22 = v4 & 0xC000000000000001;
      v7 = &_swiftEmptyArrayStorage;
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      while (v22)
      {
        v9 = sub_301C8();
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:

          return v7;
        }

LABEL_9:
        v26 = v9;
        a1(&v25, &v26);
        if (v3)
        {
          goto LABEL_26;
        }

        v24 = v10;
        v11 = v4;

        v12 = v25;
        v13 = *(v25 + 16);
        v14 = v7[2];
        v4 = v14 + v13;
        if (__OFADD__(v14, v13))
        {
          goto LABEL_28;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v4 <= v7[3] >> 1)
        {
          if (!*(v12 + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v14 <= v4)
          {
            v16 = v14 + v13;
          }

          else
          {
            v16 = v14;
          }

          v7 = sub_29794(isUniquelyReferenced_nonNull_native, v16, 1, v7);
          if (!*(v12 + 16))
          {
LABEL_4:

            v4 = v11;
            v3 = 0;
            v8 = v24;
            if (v13)
            {
              goto LABEL_29;
            }

            goto LABEL_5;
          }
        }

        if ((v7[3] >> 1) - v7[2] < v13)
        {
          goto LABEL_30;
        }

        sub_1B98(&qword_3D680, &qword_30FB0);
        swift_arrayInitWithCopy();

        v4 = v11;
        v3 = 0;
        v8 = v24;
        if (v13)
        {
          v17 = v7[2];
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_31;
          }

          v7[2] = v19;
        }

LABEL_5:
        ++v6;
        if (v8 == v5)
        {
          return v7;
        }
      }

      if (v6 < *(v21 + 16))
      {
        break;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v5 = sub_30238();
      if (!v5)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    v9 = *(v4 + 8 * v6 + 32);

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_EBF4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = &_swiftEmptyArrayStorage;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_301C8();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = (*(*v4 + 136))();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_30238() : *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v31 = v3;
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_30238();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_301D8();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_30238();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v33)
          {
            goto LABEL_45;
          }

          v17 = v11 + 8 * v13 + 32;
          v27 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_21430(&qword_3D640, &qword_3D638, &qword_30F88);
            for (i = 0; i != v15; ++i)
            {
              sub_1B98(&qword_3D638, &qword_30F88);
              v19 = sub_20E10(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            sub_2F648();
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v27 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v27 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_30238();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_30238();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return &_swiftEmptyArrayStorage;
}

void sub_EFC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = a3 + 32;
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v8 = sub_2FF48();
    do
    {
      sub_4FD8(v8, qword_3D288);
      sub_54EC(v7, v27);

      v15 = sub_2FF28();
      v16 = sub_300D8();

      if (os_log_type_enabled(v15, v16))
      {
        v9 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v9 = 136315394;
        *(v9 + 4) = sub_29C64(a1, a2, &v26);
        *(v9 + 12) = 2080;
        sub_54EC(v27, v25);
        sub_1B98(a4, a5);
        v10 = v8;
        v11 = sub_2FF98();
        v13 = v12;
        sub_5448(v27);
        v14 = sub_29C64(v11, v13, &v26);

        *(v9 + 14) = v14;
        v8 = v10;
        _os_log_impl(&dword_0, v15, v16, "%s%s", v9, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_5448(v27);
      }

      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v17 = sub_2FF48();
    sub_4FD8(v17, qword_3D288);

    osloga = sub_2FF28();
    v18 = sub_300D8();

    if (os_log_type_enabled(osloga, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_29C64(a1, a2, v27);
      _os_log_impl(&dword_0, osloga, v18, "%s<Empty>", v19, 0xCu);
      sub_5448(v20);
    }

    else
    {
    }
  }
}

void sub_F340(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v38 = a2;
  v33 = a1;
  v5 = a4(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v37 = *(v6 + 72);
    v14 = sub_2FF48();
    v15 = (v6 + 16);
    v35 = (v6 + 8);
    *&v16 = 136315394;
    v30 = v16;
    v36 = (v6 + 16);
    v31 = v14;
    do
    {
      sub_4FD8(v14, qword_3D288);
      v22 = *v15;
      (*v15)(v11, v13, v5);

      v23 = sub_2FF28();
      v24 = sub_300D8();

      if (os_log_type_enabled(v23, v24))
      {
        v17 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v17 = v30;
        *(v17 + 4) = sub_29C64(v33, v38, &v39);
        *(v17 + 12) = 2080;
        v22(v32, v11, v5);
        v18 = sub_2FF98();
        v20 = v19;
        (*v35)(v11, v5);
        v21 = sub_29C64(v18, v20, &v39);

        *(v17 + 14) = v21;
        _os_log_impl(&dword_0, v23, v24, "%s%s", v17, 0x16u);
        swift_arrayDestroy();

        v14 = v31;
      }

      else
      {

        (*v35)(v11, v5);
      }

      v15 = v36;
      v13 += v37;
      --v12;
    }

    while (v12);
  }

  else
  {
    if (qword_3CC20 != -1)
    {
      swift_once();
    }

    v25 = sub_2FF48();
    sub_4FD8(v25, qword_3D288);

    v37 = sub_2FF28();
    v26 = sub_300D8();

    if (os_log_type_enabled(v37, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_29C64(v33, v38, &v39);
      _os_log_impl(&dword_0, v37, v26, "%s<Empty>", v27, 0xCu);
      sub_5448(v28);
    }

    else
    {
      v29 = v37;
    }
  }
}

uint64_t sub_F7CC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_30238();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_301C8();
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

void sub_F904()
{
  type metadata accessor for SiriPrivateLearningInferenceEngine();
  sub_1B98(&qword_3D6B8, &unk_30FE0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3D450 = 91;
  *algn_3D458 = 0xE100000000000000;
}

void sub_F990(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_54EC(a2, v20);
  v5 = (*(v4 + 96))(v20);
  if ((*(*v5 + 104))())
  {
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v6 = sub_2FF48();
    sub_4FD8(v6, qword_3D460);
    v7 = sub_2FF28();
    v8 = sub_300F8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v9 = 136315394;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_29C64(qword_3D450, *algn_3D458, v20);
      *(v9 + 12) = 2080;
      v21 = v4;
      sub_1B98(&qword_3D780, &qword_310B8);
      v10 = sub_2FF98();
      v12 = sub_29C64(v10, v11, v20);

      *(v9 + 14) = v12;
      _os_log_impl(&dword_0, v7, v8, "%s     - %s (enabled)", v9, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v13 = sub_2FF48();
    sub_4FD8(v13, qword_3D460);
    v14 = sub_2FF28();
    v15 = sub_300F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v16 = 136315394;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_29C64(qword_3D450, *algn_3D458, v20);
      *(v16 + 12) = 2080;
      v21 = v4;
      sub_1B98(&qword_3D780, &qword_310B8);
      v17 = sub_2FF98();
      v19 = sub_29C64(v17, v18, v20);

      *(v16 + 14) = v19;
      _os_log_impl(&dword_0, v14, v15, "%s     - %s (disabled)", v16, 0x16u);
      swift_arrayDestroy();
    }

    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_FD58()
{
  v1 = sub_2FE58();
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2FB58();
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2F9C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2F1F8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin();
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v0;
  v19 = *(v0 + 232);
  v20 = v15[13];
  v20(v18, enum case for EventStreamType.nowPlayingStream(_:), v14);
  sub_54EC(v0 + 144, v34);
  sub_2F9B8();
  sub_2F1B8();
  (*(v10 + 8))(v13, v9);
  v21 = v15[1];
  v21(v18, v14);
  v20(v18, enum case for EventStreamType.playMediaIntentStream(_:), v14);
  sub_54EC(v27 + 104, v34);
  v22 = v28;
  sub_2FB48();
  v23 = v29;
  sub_2F1B8();
  (*(v30 + 8))(v22, v23);
  v21(v18, v14);
  v20(v18, enum case for EventStreamType.playMediaIntentStreamWithAttachedNowPlayingEvents(_:), v14);

  v24 = v31;
  sub_2FE48();
  v25 = v32;
  sub_2F1B8();
  (*(v33 + 8))(v24, v25);
  return (v21)(v18, v14);
}

uint64_t sub_1011C()
{
  v1[90] = v0;
  v2 = *(*(sub_1B98(&qword_3D770, &qword_310A0) - 8) + 64) + 15;
  v1[91] = swift_task_alloc();
  v3 = sub_2EC08();
  v1[92] = v3;
  v4 = *(v3 - 8);
  v1[93] = v4;
  v5 = *(v4 + 64) + 15;
  v1[94] = swift_task_alloc();
  v6 = sub_2F3B8();
  v1[95] = v6;
  v7 = *(v6 - 8);
  v1[96] = v7;
  v8 = *(v7 + 64) + 15;
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();

  return _swift_task_switch(sub_10294, 0, 0);
}

uint64_t sub_10294()
{
  v10 = v0;
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v1 = sub_2FF48();
  v0[101] = v1;
  v0[102] = sub_4FD8(v1, qword_3D460);
  v2 = sub_2FF28();
  v3 = sub_300C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v9);
    _os_log_impl(&dword_0, v2, v3, "%s run() starting", v4, 0xCu);
    sub_5448(v5);
  }

  v0[103] = *(v0[90] + 240);
  sub_2F588();
  v6 = swift_task_alloc();
  v0[104] = v6;
  *v6 = v0;
  v6[1] = sub_1047C;
  v7 = v0[90];

  return sub_129B0();
}

uint64_t sub_1047C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 832);
  v7 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v5 = sub_11D18;
  }

  else
  {
    v5 = sub_10594;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10594()
{
  v186 = v0;
  v4 = v0[105];
  v176 = *(v4 + 16);
  v161 = v4;
  if (v176)
  {
    v5 = 0;
    v6 = v0[96];
    v8 = *(v6 + 16);
    v6 += 16;
    v7 = v8;
    v179 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v173 = (v6 - 8);
    v163 = (v0[93] + 8);
    v164 = v0[90];
    v167 = *(v6 + 56);
    v183 = 136315394;
    v166 = v8;
    v8(v0[100], v179, v0[95]);
    while (1)
    {
      v14 = *(sub_2F388() + 16);

      v15 = v0[102];
      v16 = v0[100];
      v17 = v0[95];
      if (v14)
      {
        v7(v0[99], v16, v17);
        v18 = sub_2FF28();
        v19 = sub_300D8();
        v165 = v5;
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v185[0] = swift_slowAlloc();
          *v20 = 136315394;
          if (qword_3CC28 != -1)
          {
            swift_once();
          }

          v21 = v0[99];
          v169 = v0[95];
          v22 = v0[94];
          v23 = v0[92];
          *(v20 + 4) = sub_29C64(qword_3D450, *algn_3D458, v185);
          *(v20 + 12) = 2080;
          sub_2F398();
          v24 = sub_2EBE8();
          v26 = v25;
          (*v163)(v22, v23);
          v27 = v169;
          v170 = *v173;
          (*v173)(v21, v27);
          v28 = sub_29C64(v24, v26, v185);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_0, v18, v19, "%s Persisting new ground truth for Session ID=%s", v20, 0x16u);
          swift_arrayDestroy();

          v5 = v165;
        }

        else
        {
          v41 = v0[99];
          v42 = v0[95];

          v170 = *v173;
          (*v173)(v41, v42);
        }

        v43 = v0[100];
        v44 = sub_2F388();
        v45 = *(v44 + 16);
        if (v45)
        {
          v46 = v44 + 32;
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          do
          {
            sub_4FD8(v0[101], qword_3D288);
            sub_54EC(v46, (v0 + 2));
            v47 = sub_2FF28();
            v48 = sub_300D8();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v185[0] = swift_slowAlloc();
              *v49 = 136315394;
              *(v49 + 4) = sub_29C64(8224, 0xE200000000000000, v185);
              *(v49 + 12) = 2080;
              sub_54EC((v0 + 2), (v0 + 82));
              sub_1B98(&qword_3CF70, &unk_315C0);
              v50 = sub_2FF98();
              v52 = v51;
              sub_5448(v0 + 2);
              v53 = sub_29C64(v50, v52, v185);

              *(v49 + 14) = v53;
              _os_log_impl(&dword_0, v47, v48, "%s%s", v49, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              sub_5448(v0 + 2);
            }

            v46 += 40;
            --v45;
          }

          while (v45);

          v5 = v165;
        }

        else
        {
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          sub_4FD8(v0[101], qword_3D288);
          v54 = sub_2FF28();
          v55 = sub_300D8();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v185[0] = v57;
            *v56 = 136315138;
            *(v56 + 4) = sub_29C64(8224, 0xE200000000000000, v185);
            _os_log_impl(&dword_0, v54, v55, "%s<Empty>", v56, 0xCu);
            sub_5448(v57);
          }
        }

        v9 = v0[100];
        v10 = v0[95];
        v11 = v164[6];
        sub_5550(v164 + 2, v164[5]);
        sub_2F0B8();
        v12 = v0[11];
        sub_5550(v0 + 7, v0[10]);
        v13._rawValue = sub_2F388();
        sub_2EE48(v13);

        v170(v9, v10);
        sub_5448(v0 + 7);
        v7 = v166;
      }

      else
      {
        v7(v0[98], v16, v17);
        v29 = sub_2FF28();
        v30 = sub_300D8();
        if (os_log_type_enabled(v29, v30))
        {
          v165 = v5;
          v31 = swift_slowAlloc();
          v185[0] = swift_slowAlloc();
          *v31 = 136315394;
          if (qword_3CC28 != -1)
          {
            swift_once();
          }

          v171 = v0[100];
          v32 = v0[98];
          v162 = v0[95];
          v33 = v0[94];
          v34 = v0[92];
          *(v31 + 4) = sub_29C64(qword_3D450, *algn_3D458, v185);
          *(v31 + 12) = 2080;
          sub_2F398();
          v35 = sub_2EBE8();
          v37 = v36;
          (*v163)(v33, v34);
          v38 = *v173;
          (*v173)(v32, v162);
          v39 = sub_29C64(v35, v37, v185);

          *(v31 + 14) = v39;
          _os_log_impl(&dword_0, v29, v30, "%s Session ID=%s has no ground truth", v31, 0x16u);
          swift_arrayDestroy();

          v40 = v171;
          v170 = v38;
          v38(v40, v162);
          v5 = v165;
          v7 = v166;
        }

        else
        {
          v58 = v0[100];
          v59 = v0[98];
          v60 = v0[95];

          v61 = *v173;
          (*v173)(v59, v60);
          v170 = v61;
          v61(v58, v60);
        }
      }

      v5 = (v5 + 1);
      if (v5 == v176)
      {
        break;
      }

      v7(v0[100], v179 + v5 * v167, v0[95]);
    }

    v62 = &_swiftEmptyArrayStorage;
    v3 = (&stru_20 + 8);
    v1 = &qword_3CF70;
    v2 = &unk_315C0;
    while (1)
    {
      v63 = v0[97];
      v64 = v0[95];
      v166(v63, v179, v64);
      v65 = sub_2F388();
      v170(v63, v64);
      v66 = *(v65 + 16);
      v67 = v62[2];
      v68 = v67 + v66;
      if (__OFADD__(v67, v66))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v68 <= v62[3] >> 1)
      {
        if (!*(v65 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v67 <= v68)
        {
          v70 = v67 + v66;
        }

        else
        {
          v70 = v67;
        }

        v62 = sub_29354(isUniquelyReferenced_nonNull_native, v70, 1, v62);
        if (!*(v65 + 16))
        {
LABEL_31:

          if (v66)
          {
            goto LABEL_116;
          }

          goto LABEL_32;
        }
      }

      v71 = v62[2];
      if ((v62[3] >> 1) - v71 < v66)
      {
        goto LABEL_117;
      }

      v67 = &v62[5 * v71];
      sub_1B98(&qword_3CF70, &unk_315C0);
      swift_arrayInitWithCopy();

      if (v66)
      {
        v72 = v62[2];
        v73 = __OFADD__(v72, v66);
        v74 = v72 + v66;
        if (v73)
        {
          goto LABEL_120;
        }

        v62[2] = v74;
      }

LABEL_32:
      v179 += v167;
      v176 = (v176 - 1);
      if (!v176)
      {
        goto LABEL_47;
      }
    }
  }

  v62 = &_swiftEmptyArrayStorage;
LABEL_47:
  v183 = v62[2];
  if (v183)
  {
    v75 = v0[103];
    v76 = v0[91];
    v3 = v0[90];
    sub_2F598();
    sub_16B20(v0 + 12);
    v77 = v3[6];
    sub_5550(v3 + 2, v3[5]);
    sub_2F0E8();
    v78 = v0[21];
    sub_5550(v0 + 17, v0[20]);
    sub_2F788();
    v79 = sub_2F898();
    v80 = *(v79 - 8);
    v81 = (*(v80 + 48))(v76, 1, v79);
    v82 = v0[91];
    if (v81 == 1)
    {
      sub_5448(v0 + 17);
      sub_5B38(v82, &qword_3D770, &qword_310A0);
      v83 = 0x8000000000032670;
      v84 = 0xD00000000000001CLL;
    }

    else
    {
      v84 = sub_2F888();
      v83 = v91;
      (*(v80 + 8))(v82, v79);
      sub_5448(v0 + 17);
    }

    v92 = v0[15];
    v93 = v0[16];
    sub_5550(v0 + 12, v92);
    v165 = v3;
    if (v84 == (*(v93 + 8))(v92, v93) && v83 == v94)
    {
    }

    else
    {
      v95 = sub_302A8();

      if ((v95 & 1) == 0)
      {
        v99 = v0[102];
        v100 = sub_2FF28();
        v101 = sub_300D8();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v185[0] = v103;
          *v102 = 136315138;
          if (qword_3CC28 != -1)
          {
            swift_once();
          }

          *(v102 + 4) = sub_29C64(qword_3D450, *algn_3D458, v185);
          _os_log_impl(&dword_0, v100, v101, "%s Suggestion generator has been changed since the last run. Wiping the PICS store to maintain integrity.", v102, 0xCu);
          sub_5448(v103);
        }

        v104 = v3[6];
        sub_5550(v3 + 2, v3[5]);
        sub_2F0E8();
        v105 = v0[26];
        sub_5550(v0 + 22, v0[25]);
        sub_2F798();
        sub_5448(v0 + 22);
LABEL_68:
        v106 = v0[102];
        v66 = sub_2FF28();
        LOBYTE(v1) = sub_300D8();
        if (!os_log_type_enabled(v66, v1))
        {
          goto LABEL_71;
        }

        v67 = swift_slowAlloc();
        v2 = swift_slowAlloc();
        v185[0] = v2;
        *v67 = 136315138;
        if (qword_3CC28 != -1)
        {
          goto LABEL_130;
        }

        while (1)
        {
          *(v67 + 4) = sub_29C64(qword_3D450, *algn_3D458, v185);
          _os_log_impl(&dword_0, v66, v1, "%s Suggestion generation requires reloading old ground truth. Loading ground truth from store.", v67, 0xCu);
          sub_5448(v2);

LABEL_71:

          v107 = v0[90];
          v1 = v3[6];
          sub_5550(v3 + 2, v3[5]);
          sub_2F0B8();
          v108 = sub_1BF44((v0 + 27));
          sub_5448(v0 + 27);
          v66 = v108[2];
          v177 = v107;

          v174 = v66;
          if (v66)
          {
            break;
          }

          v98 = &_swiftEmptyArrayStorage;
LABEL_89:
          v125 = v0[90];

LABEL_90:
          v1 = v0[90];
          v126 = v0[15];
          v2 = v0[16];
          sub_5550(v0 + 12, v126);
          v127 = (*(v2 + 24))(v98, v126, v2);
          v129 = v128;

          v178 = HIDWORD(v127);
          v182 = v127;
          v172 = HIDWORD(v129);
          v175 = v129;
          v130 = v3;
          v131 = v3[5];
          v132 = v3[6];
          sub_5550(v130 + 2, v131);
          sub_2F0E8();
          v3 = v0[56];
          sub_5550(v0 + 52, v0[55]);
          v134 = v0[15];
          v133 = v0[16];
          sub_5550(v0 + 12, v134);
          (*(v133 + 8))(v134, v133);
          v67 = v135;
          sub_2F7A8();

          sub_5448(v0 + 52);
          sub_16DE8(v0 + 62);
          if (!v0[65])
          {
            sub_5B38((v0 + 62), &qword_3D778, &unk_310A8);
            v147 = HIDWORD(v129);
            v2 = v129;
LABEL_107:
            v152 = v0[105];
            v66 = *(v161 + 16);

            if (!HIDWORD(v66))
            {
              v67 = v62[2];

              if (!HIDWORD(v67))
              {
                LODWORD(v87) = v182 + v66;
                if (!__CFADD__(v182, v66))
                {
                  v66 = (v178 + v67);
                  if (!__CFADD__(v178, v67))
                  {
                    sub_5448(v0 + 12);
                    sub_23BA0();
                    v88 = v66 << 32;
                    v89 = v2;
                    v90 = v147 << 32;
                    goto LABEL_112;
                  }

                  goto LABEL_124;
                }

LABEL_123:
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
                goto LABEL_128;
              }

LABEL_122:
              __break(1u);
              goto LABEL_123;
            }

LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          v66 = v0[103];
          sub_1978(v0 + 31, (v0 + 57));
          sub_2F5A8();
          v136 = 0;
          v137 = (v62 + 4);
          v3 = &_swiftEmptyArrayStorage;
          do
          {
            if (v136 >= v62[2])
            {
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }

            sub_54EC(v137, (v0 + 67));
            v67 = v0[71];
            v66 = sub_5550(v0 + 67, v0[70]);
            if (sub_2647C())
            {
              sub_1978((v0 + 67), (v0 + 72));
              v138 = swift_isUniquelyReferenced_nonNull_native();
              v185[0] = v3;
              if ((v138 & 1) == 0)
              {
                sub_2BB60(0, v3[2] + 1, 1);
                v3 = v185[0];
              }

              v1 = v3[2];
              v139 = v3[3];
              if (v1 >= v139 >> 1)
              {
                sub_2BB60((v139 > 1), v1 + 1, 1);
              }

              v66 = v0[75];
              v67 = v0[76];
              v140 = sub_C5C0((v0 + 72), v66);
              v141 = *(v66 - 8);
              v142 = *(v141 + 64) + 15;
              v143 = swift_task_alloc();
              v144 = *(v141 + 16);
              v2 = v141 + 16;
              v144(v143, v140, v66);
              sub_20EE0(v1, v143, v185, v66, v67);
              sub_5448(v0 + 72);

              v3 = v185[0];
            }

            else
            {
              sub_5448(v0 + 67);
            }

            ++v136;
            v137 += 40;
          }

          while (v183 != v136);
          v67 = v0[60];
          v145 = v0[61];
          sub_5550(v0 + 57, v67);
          v1 = (*(v145 + 24))(v3, v67, v145);
          v66 = v146;

          if (__CFADD__(v1, v182))
          {
            goto LABEL_125;
          }

          if (__CFADD__(HIDWORD(v1), v178))
          {
            goto LABEL_126;
          }

          v2 = (v66 + v175);
          if (__CFADD__(v66, v175))
          {
            goto LABEL_127;
          }

          v147 = (HIDWORD(v66) + v172);
          if (!__CFADD__(HIDWORD(v66), v172))
          {
            LODWORD(v178) = HIDWORD(v1) + v178;
            v182 += v1;
            v148 = v165[6];
            sub_5550(v165 + 2, v165[5]);
            sub_2F0F8();
            v67 = v0[80];
            v1 = v0[81];
            sub_5550(v0 + 77, v67);
            v149 = v0[60];
            v150 = v0[61];
            sub_5550(v0 + 57, v149);
            (*(v150 + 8))(v149, v150);
            v3 = v151;
            sub_2F6D8();

            sub_5448(v0 + 77);
            sub_5448(v0 + 57);
            goto LABEL_107;
          }

LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          swift_once();
        }

        v3 = 0;
        v2 = (v0 + 32);
        v109 = (v108 + 4);
        v67 = v0[106];
        v98 = &_swiftEmptyArrayStorage;
        v168 = v108;
        while (v3 < v108[2])
        {
          sub_54EC(v109, v2);
          v110 = *(v177 + 224);
          v111 = swift_task_alloc();
          LOBYTE(v1) = v111;
          *(v111 + 16) = v2;
          LOBYTE(v110) = sub_F7CC(sub_23D0C, v111, v110);

          if (v110)
          {
            sub_1978(v2, (v0 + 47));
            v112 = swift_isUniquelyReferenced_nonNull_native();
            v184 = v98;
            if ((v112 & 1) == 0)
            {
              sub_2BB60(0, v98[2] + 1, 1);
              v98 = v184;
            }

            v180 = v67;
            v1 = v98[2];
            v113 = v98[3];
            if (v1 >= v113 >> 1)
            {
              sub_2BB60((v113 > 1), v1 + 1, 1);
            }

            v66 = v0[50];
            v114 = v0[51];
            v115 = sub_C5C0((v0 + 47), v66);
            v116 = *(v66 - 8);
            v117 = *(v116 + 64) + 15;
            v118 = swift_task_alloc();
            (*(v116 + 16))(v118, v115, v66);
            sub_20EE0(v1, v118, &v184, v66, v114);
            sub_5448(v0 + 47);

            v98 = v184;
            v108 = v168;
            v2 = (v0 + 32);
            v67 = v180;
          }

          else
          {
            v119 = v0[102];
            sub_54EC(v2, (v0 + 37));
            v66 = sub_2FF28();
            v120 = sub_300D8();
            if (os_log_type_enabled(v66, v120))
            {
              v181 = v67;
              v1 = swift_slowAlloc();
              v185[0] = swift_slowAlloc();
              *v1 = 136315394;
              if (qword_3CC28 != -1)
              {
                swift_once();
              }

              *(v1 + 4) = sub_29C64(qword_3D450, *algn_3D458, v185);
              *(v1 + 12) = 2080;
              sub_54EC((v0 + 37), (v0 + 42));
              sub_1B98(&qword_3CF70, &unk_315C0);
              v121 = sub_2FF98();
              v123 = v122;
              sub_5448(v0 + 37);
              v124 = sub_29C64(v121, v123, v185);

              *(v1 + 14) = v124;
              _os_log_impl(&dword_0, v66, v120, "%s Ignoring %s", v1, 0x16u);
              swift_arrayDestroy();

              v108 = v168;
              v67 = v181;
            }

            else
            {

              sub_5448(v0 + 37);
            }

            v2 = (v0 + 32);
            sub_5448(v0 + 32);
          }

          v3 = (v3 + 1);
          v109 += 40;
          if (v174 == v3)
          {
            v3 = v165;
            goto LABEL_89;
          }
        }

LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }
    }

    v96 = v0[15];
    v97 = v0[16];
    sub_5550(v0 + 12, v96);
    if (((*(v97 + 16))(v96, v97) & 1) == 0)
    {

      v98 = v62;
      goto LABEL_90;
    }

    goto LABEL_68;
  }

  v85 = v0[102];

  v66 = sub_2FF28();
  v67 = sub_300D8();
  if (os_log_type_enabled(v66, v67))
  {
    v62 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v185[0] = v1;
    *v62 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v62 + 4) = sub_29C64(qword_3D450, *algn_3D458, v185);
    _os_log_impl(&dword_0, v66, v67, "%s No new ground truth generated", v62, 0xCu);
    sub_5448(v1);
  }

  v86 = v0[105];
  v87 = *(v161 + 16);

  if (HIDWORD(v87))
  {
    goto LABEL_129;
  }

  sub_23BA0();
  v88 = 0;
  v89 = 0;
  v90 = 0;
LABEL_112:
  v153 = v0[100];
  v154 = v0[99];
  v155 = v0[98];
  v156 = v0[97];
  v157 = v0[94];
  v158 = v0[91];

  v159 = v0[1];

  return v159(v88 | v87, v90 | v89);
}

uint64_t sub_11D18()
{
  *(v0 + 712) = *(v0 + 848);
  swift_errorRetain();
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  if (swift_dynamicCast())
  {
    sub_5064(*(v0 + 696), *(v0 + 704));
    v1 = *(v0 + 848);
  }

  else
  {
    v2 = *(v0 + 848);
    sub_5010();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = -127;
  }

  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  swift_willThrow();
  sub_23BA0();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_11E88()
{
  v16 = v0;
  sub_54EC(*(v0 + 112) + 16, v0 + 72);
  type metadata accessor for DonationSourceProvider();
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  sub_1978((v0 + 72), inited + 16);
  v2 = sub_2E650();
  *(v0 + 128) = v2;
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v3 = sub_2FF48();
  sub_4FD8(v3, qword_3D460);
  v4 = sub_2FF28();
  v5 = sub_300D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v6 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v15);
    _os_log_impl(&dword_0, v4, v5, "%s Cascade donation triggered", v6, 0xCu);
    sub_5448(v7);
  }

  v8 = sub_2F7F8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_2F7E8();
  v11 = *(&async function pointer to dispatch thunk of CascadeLearnedEntityDonator.donateSuggestions(donationCandidates:) + 1);
  v14 = (&async function pointer to dispatch thunk of CascadeLearnedEntityDonator.donateSuggestions(donationCandidates:) + async function pointer to dispatch thunk of CascadeLearnedEntityDonator.donateSuggestions(donationCandidates:));
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_120D0;

  return v14(v2);
}

uint64_t sub_120D0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_121E8, 0, 0);
}

uint64_t sub_121E8()
{
  v1 = v0[17];
  v2 = v0[15];

  swift_setDeallocating();
  sub_5448((v2 + 16));
  v3 = v0[1];

  return v3();
}

void sub_1225C(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v63 = sub_2EBD8();
  v67 = *(v63 - 8);
  v3 = *(v67 + 64);
  v4 = __chkstk_darwin(v63);
  v66 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v54 - v6;
  v61 = sub_2EC38();
  v65 = *(v61 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v61);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EC48();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B98(&qword_3D620, &unk_30F70);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  v21 = v1[27];
  sub_5550(v1 + 23, v1[26]);
  v22 = sub_2EDD8();
  if (v22)
  {
    v23 = v1[10];
    v24 = v1[11];
    v67 = v22;
    sub_5550(v1 + 7, v23);
    sub_2EEC8();
    v25 = v67;
  }

  else
  {
    v55 = v13;
    v56 = v9;
    v57 = v10;
    v58 = v18;
    v26 = v61;
    v27 = v62;
    v59 = "cePlugin21CommonInferenceDomain";
    v60 = v20;
    v28 = v63;
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v29 = sub_2FF48();
    v54 = sub_4FD8(v29, qword_3D460);
    v30 = sub_2FF28();
    v31 = sub_300D8();
    v32 = v26;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69 = v34;
      *v33 = 136315138;
      v35 = v27;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v69);
      _os_log_impl(&dword_0, v30, v31, "%s No existing conversation bookmark found. A new bookmark will be created and only the last 24hrs of data will be reviewed.", v33, 0xCu);
      sub_5448(v34);
    }

    else
    {

      v35 = v27;
    }

    v36 = v2;
    v37 = v65;
    v38 = v57;
    v39 = v55;
    sub_2EC28();
    v40 = v56;
    (*(v37 + 104))(v56, enum case for Calendar.Component.hour(_:), v32);
    sub_2EBC8();
    v41 = v60;
    sub_2EC18();
    v42 = v67;
    (*(v67 + 8))(v35, v28);
    (*(v37 + 8))(v40, v32);
    v43 = v39;
    v44 = v41;
    (*(v64 + 8))(v43, v38);
    v45 = *(v42 + 48);
    if (v45(v41, 1, v28) == 1)
    {
      v46 = sub_2FF28();
      v47 = sub_300E8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69 = v49;
        *v48 = 136315138;
        if (qword_3CC28 != -1)
        {
          swift_once();
        }

        *(v48 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v69);
        _os_log_impl(&dword_0, v46, v47, "%s Failed to calculate a new valid bookmark start date. Using the current date instead - all existing conversation data will be ignored.", v48, 0xCu);
        sub_5448(v49);
      }
    }

    v50 = v58;
    sub_5AD0(v44, v58, &qword_3D620, &unk_30F70);
    if (v45(v50, 1, v28) == 1)
    {
      sub_2EBC8();
      if (v45(v50, 1, v28) != 1)
      {
        sub_5B38(v50, &qword_3D620, &unk_30F70);
      }
    }

    else
    {
      (*(v67 + 32))(v66, v50, v28);
    }

    sub_2ED28();
    v51 = sub_2ED18();
    v52 = v36[27];
    sub_5550(v36 + 23, v36[26]);
    sub_2EDE8();
    v53 = v36[11];
    sub_5550(v36 + 7, v36[10]);
    sub_2EEC8();

    sub_5B38(v44, &qword_3D620, &unk_30F70);
  }
}

uint64_t sub_129B0()
{
  v1[47] = v0;
  v2 = sub_1B98(&qword_3D6C0, &unk_30FF0);
  v1[48] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v4 = sub_1B98(&qword_3D6C8, &qword_31770);
  v1[51] = v4;
  v5 = *(v4 - 8);
  v1[52] = v5;
  v6 = *(v5 + 64) + 15;
  v1[53] = swift_task_alloc();
  v7 = sub_1B98(&qword_3D6D0, &qword_31000);
  v1[54] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v9 = sub_2F3B8();
  v1[58] = v9;
  v10 = *(v9 - 8);
  v1[59] = v10;
  v11 = *(v10 + 64) + 15;
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v12 = sub_2F148();
  v1[62] = v12;
  v13 = *(v12 - 8);
  v1[63] = v13;
  v14 = *(v13 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v15 = sub_1B98(&qword_3D6D8, &qword_31008);
  v1[66] = v15;
  v16 = *(v15 - 8);
  v1[67] = v16;
  v17 = *(v16 + 64) + 15;
  v1[68] = swift_task_alloc();
  v18 = *(*(sub_1B98(&qword_3D6E0, &qword_31010) - 8) + 64) + 15;
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v19 = sub_2EC08();
  v1[71] = v19;
  v20 = *(v19 - 8);
  v1[72] = v20;
  v21 = *(v20 + 64) + 15;
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v22 = sub_2F198();
  v1[77] = v22;
  v23 = *(v22 - 8);
  v1[78] = v23;
  v24 = *(v23 + 64) + 15;
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v25 = *(*(sub_1B98(&qword_3D6E8, &qword_31018) - 8) + 64) + 15;
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v26 = *(*(sub_1B98(&qword_3D620, &unk_30F70) - 8) + 64) + 15;
  v1[83] = swift_task_alloc();
  v27 = *(*(sub_1B98(&qword_3CF40, &unk_315B0) - 8) + 64) + 15;
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v28 = *(*(sub_1B98(&qword_3D6F0, &qword_31020) - 8) + 64) + 15;
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v29 = sub_2ECF8();
  v1[89] = v29;
  v30 = *(v29 - 8);
  v1[90] = v30;
  v31 = *(v30 + 64) + 15;
  v1[91] = swift_task_alloc();
  v32 = sub_1B98(&qword_3D6F8, &qword_31028);
  v1[92] = v32;
  v33 = *(v32 - 8);
  v1[93] = v33;
  v34 = *(v33 + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v35 = *(*(sub_1B98(&qword_3D700, &qword_31030) - 8) + 64) + 15;
  v1[96] = swift_task_alloc();
  v36 = sub_1B98(&qword_3D708, &qword_31038);
  v1[97] = v36;
  v37 = *(v36 - 8);
  v1[98] = v37;
  v38 = *(v37 + 64) + 15;
  v1[99] = swift_task_alloc();
  v39 = sub_1B98(&qword_3D710, &qword_31040);
  v1[100] = v39;
  v40 = *(v39 - 8);
  v1[101] = v40;
  v41 = *(v40 + 64) + 15;
  v1[102] = swift_task_alloc();
  v42 = sub_1B98(&qword_3D718, &qword_31048);
  v1[103] = v42;
  v43 = *(*(v42 - 8) + 64) + 15;
  v1[104] = swift_task_alloc();
  v44 = sub_1B98(&qword_3D720, &qword_31050);
  v1[105] = v44;
  v45 = *(v44 - 8);
  v1[106] = v45;
  v46 = *(v45 + 64) + 15;
  v1[107] = swift_task_alloc();

  return _swift_task_switch(sub_13108, 0, 0);
}

uint64_t sub_13108()
{
  v39 = v0;
  v1 = v0[107];
  v2 = v0[103];
  v3 = v0[89];
  v4 = v0[47];
  sub_1225C(v0[104]);
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_31060;
  *(v5 + 24) = v4;
  sub_21430(&qword_3D728, &qword_3D718, &qword_31048);

  sub_30228();
  v6 = sub_1BD4C();
  v0[108] = v6;
  v36 = sub_1B764();
  v0[109] = v36;
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v7 = sub_2FF48();
  v0[110] = v7;
  v0[111] = sub_4FD8(v7, qword_3D460);
  v8 = sub_2FF28();
  v9 = sub_300D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v10 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v37);
    _os_log_impl(&dword_0, v8, v9, "%s Reviewing new conversations from Biome for ground truth generation.", v10, 0xCu);
    sub_5448(v11);
  }

  v12 = sub_2FF28();
  v13 = sub_300D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v37);
    _os_log_impl(&dword_0, v12, v13, "%s Suggestion evaluation frameworks:", v14, 0xCu);
    sub_5448(v15);
  }

  if (qword_3CC28 != -1)
  {
    swift_once();
  }

  v16 = qword_3D450;
  v17 = *algn_3D458;
  v0[112] = qword_3D450;
  v0[113] = v17;
  v37 = v16;
  v38 = v17;

  v41._countAndFlagsBits = 0x202D20202020;
  v41._object = 0xE600000000000000;
  sub_2FFC8(v41);
  sub_EFC4(v37, v38, v6, &qword_3D600, &unk_30F50);

  v18 = sub_2FF28();
  v19 = sub_300D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_29C64(v16, v17, &v37);
    _os_log_impl(&dword_0, v18, v19, "%s Ground truth generators:", v20, 0xCu);
    sub_5448(v21);
  }

  v22 = v0[107];
  v23 = v0[105];
  v35 = v0[102];
  v24 = v0[99];
  v25 = v0[98];
  v26 = v0[97];
  v37 = v16;
  v38 = v17;

  v42._countAndFlagsBits = 0x202D20202020;
  v42._object = 0xE600000000000000;
  sub_2FFC8(v42);
  sub_EFC4(v37, v38, v36, &qword_3D618, &qword_316B0);

  v27 = sub_4BE4(&_swiftEmptyArrayStorage);
  sub_21430(&qword_3D730, &qword_3D720, &qword_31050);
  sub_30098();
  sub_2EFE8();
  (*(v25 + 8))(v24, v26);
  v0[116] = v27;
  v0[115] = &_swiftEmptyArrayStorage;
  v0[114] = v27;
  v28 = sub_21430(&qword_3D738, &qword_3D710, &qword_31040);
  v29 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v30 = swift_task_alloc();
  v0[117] = v30;
  *v30 = v0;
  v30[1] = sub_1370C;
  v31 = v0[102];
  v32 = v0[100];
  v33 = v0[96];

  return dispatch thunk of AsyncIteratorProtocol.next()(v33, v32, v28);
}

uint64_t sub_1370C()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v9 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v4 = v2[115];
    v5 = v2[109];
    v6 = v2[108];

    v7 = sub_14A28;
  }

  else
  {
    v7 = sub_13840;
  }

  return _swift_task_switch(v7, 0, 0);
}

void *sub_13840()
{
  v215 = v0;
  v1 = v0[96];
  v2 = v0[92];
  v212 = v0;
  if ((*(v0[93] + 48))(v1, 1, v2) != 1)
  {
    v17 = v0[95];
    v18 = v0[94];
    v19 = v0[90];
    v20 = v0[89];
    v201 = v0[91];
    v204 = v0[88];
    v21 = v0[86];
    v22 = v212[72];
    v208 = v212[71];
    v23 = *(v2 + 48);
    v24 = *(v19 + 32);
    v24(v17, v1, v20);
    sub_C610(v1 + v23, v17 + v23, &qword_3D6F0, &qword_31020);
    sub_5AD0(v17, v18, &qword_3D6F8, &qword_31028);
    v25 = *(v2 + 48);
    v24(v201, v18, v20);
    sub_C610(v18 + v25, v204, &qword_3D6F0, &qword_31020);
    sub_2ECC8();
    v26 = *(v22 + 48);
    v212[119] = v26;
    v212[120] = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v27 = v26(v21, 1, v208);
    v28 = v212[86];
    if (v27 == 1)
    {
      sub_5B38(v212[86], &qword_3CF40, &unk_315B0);
      v29 = 0x8000000000032650;
      v30 = 0xD000000000000019;
    }

    else
    {
      v32 = v212[72];
      v33 = v212[71];
      v30 = sub_2EBE8();
      v29 = v34;
      (*(v32 + 8))(v28, v33);
    }

    v212[122] = v29;
    v212[121] = v30;
    v35 = v212[111];

    v36 = sub_2FF28();
    v37 = sub_300D8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v212[113];
      v39 = v212[112];
      v40 = swift_slowAlloc();
      v214[0] = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_29C64(v39, v38, v214);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_29C64(v30, v29, v214);
      _os_log_impl(&dword_0, v36, v37, "%s Reviewing conversation with conversationId=%s", v40, 0x16u);
      swift_arrayDestroy();
    }

    v41 = v212[90];
    v42 = v212[89];
    v43 = v212[87];
    sub_5AD0(v212[88], v43, &qword_3D6F0, &qword_31020);
    if ((*(v41 + 48))(v43, 1, v42) == 1)
    {
      v44 = v212[83];
      sub_5B38(v212[87], &qword_3D6F0, &qword_31020);
      v45 = sub_2EBD8();
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    }

    else
    {
      v46 = v212[90];
      v47 = v212[89];
      v48 = v212[87];
      v49 = v212[83];
      sub_2ECD8();
      (*(v46 + 8))(v48, v47);
    }

    v50 = swift_task_alloc();
    v212[123] = v50;
    *v50 = v212;
    v50[1] = sub_14D50;
    v51 = v212[83];
    v52 = v212[47];
    v53 = v212[91];

    return sub_17340(v53, v51);
  }

  v3 = v0[108];
  (*(v0[101] + 8))(v0[102], v0[100]);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = &_swiftEmptyArrayStorage;
    v6 = 32;
    while (1)
    {
      sub_54EC(v0[108] + v6, (v0 + 2));
      v7 = v0[6];
      sub_5550(v0 + 2, v0[5]);
      v8 = sub_2F2F8();
      sub_5448(v0 + 2);
      v9 = *(v8 + 16);
      v10 = *(v5 + 16);
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 24) >> 1)
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v5 = sub_297E0(isUniquelyReferenced_nonNull_native, v13, 1, v5);
      }

      v0 = v212;
      if (*(v8 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v9)
        {
          goto LABEL_41;
        }

        sub_1B98(&qword_3D740, &qword_31078);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v14 = *(v5 + 16);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_42;
          }

          *(v5 + 16) = v16;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_40;
        }
      }

      v6 += 40;
      if (!--v4)
      {
        v31 = v212[108];

        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v0[108];

LABEL_31:
  v56 = v0[47];
  v57 = v56[6];
  sub_5550(v56 + 2, v56[5]);
  sub_2F0D8();
  v58 = sub_2F508();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  sub_2F4F8();
  sub_2F4C8();

  v5 = v56[28];
  if (v5 >> 62)
  {
LABEL_43:
    result = sub_30238();
    v61 = result;
    if (!result)
    {
      goto LABEL_44;
    }

LABEL_33:
    if (v61 < 1)
    {
      goto LABEL_135;
    }

    for (i = 0; i != v61; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v63 = sub_301C8();
      }

      else
      {
        v63 = *(v5 + 8 * i + 32);
      }

      (*(*v63 + 176))();
    }

    goto LABEL_44;
  }

  v61 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v61)
  {
    goto LABEL_33;
  }

LABEL_44:
  v64 = *(v0[109] + 16);
  if (v64)
  {
    v65 = v0[59];
    v66 = &_swiftEmptyArrayStorage;
    v67 = 32;
    while (1)
    {
      sub_54EC(v0[109] + v67, (v0 + 7));
      v68 = v0[11];
      sub_5550(v0 + 7, v0[10]);
      v69 = sub_2EFD8();
      result = sub_5448(v0 + 7);
      v70 = *(v69 + 16);
      v71 = v66[2];
      v72 = v71 + v70;
      if (__OFADD__(v71, v70))
      {
        goto LABEL_123;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v72 <= v66[3] >> 1)
      {
        if (*(v69 + 16))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v71 <= v72)
        {
          v73 = v71 + v70;
        }

        else
        {
          v73 = v71;
        }

        result = sub_297B8(result, v73, 1, v66);
        v66 = result;
        if (*(v69 + 16))
        {
LABEL_57:
          if ((v66[3] >> 1) - v66[2] < v70)
          {
            goto LABEL_127;
          }

          v74 = v0[58];
          v75 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v76 = *(v65 + 72);
          swift_arrayInitWithCopy();

          if (v70)
          {
            v77 = v66[2];
            v15 = __OFADD__(v77, v70);
            v78 = v77 + v70;
            if (v15)
            {
              goto LABEL_134;
            }

            v66[2] = v78;
          }

          goto LABEL_47;
        }
      }

      if (v70)
      {
        goto LABEL_124;
      }

LABEL_47:
      v67 += 40;
      if (!--v64)
      {
        v79 = v0[109];

        goto LABEL_63;
      }
    }
  }

  v66 = &_swiftEmptyArrayStorage;
LABEL_63:
  v80 = v0[118];
  v81 = v0[47];
  sub_16F30(v66, v0[116]);
  v82 = sub_21478(v66);
  v169 = v80;

  v83 = *(v82 + 16);
  if (!v83)
  {

    v126 = &_swiftEmptyArrayStorage;
    goto LABEL_102;
  }

  v84 = v0[59];
  v85 = v0[54];
  v214[0] = &_swiftEmptyArrayStorage;
  sub_2BBE0(0, v83, 0);
  v202 = &_swiftEmptyArrayStorage;
  v86 = v82 + 64;
  v87 = -1 << *(v82 + 32);
  result = sub_30148();
  v88 = result;
  v89 = 0;
  v90 = *(v82 + 36);
  v173 = (v84 + 16);
  v209 = (v84 + 8);
  v189 = v84;
  v175 = v83;
  v171 = v82 + 72;
  v183 = v85;
  v186 = v82;
  v178 = v90;
  v180 = v82 + 64;
  do
  {
    if ((v88 & 0x8000000000000000) != 0 || v88 >= 1 << *(v82 + 32))
    {
      goto LABEL_128;
    }

    if ((*(v86 + 8 * (v88 >> 6)) & (1 << v88)) == 0)
    {
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
      return result;
    }

    if (v90 != *(v82 + 36))
    {
      goto LABEL_130;
    }

    v195 = 1 << v88;
    v198 = v88 >> 6;
    v192 = v89;
    v91 = v0[72];
    v92 = v0[71];
    v94 = v0[56];
    v93 = v0[57];
    (*(v91 + 16))(v93, *(v82 + 48) + *(v91 + 72) * v88, v92);
    v205 = v88;
    v95 = *(*(v82 + 56) + 8 * v88);
    (*(v91 + 32))(v94, v93, v92);
    *(v94 + *(v85 + 48)) = v95;
    v96 = *(v95 + 16);
    if (v96)
    {
      v97 = v95 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
      v98 = *(v189 + 72);
      v99 = *(v189 + 16);

      v100 = &_swiftEmptyArrayStorage;
      v0 = v173;
      while (1)
      {
        v101 = v212[60];
        v102 = v212[58];
        v99(v101, v97, v102);
        v103 = sub_2F388();
        (*v209)(v101, v102);
        v104 = *(v103 + 16);
        v105 = v100[2];
        v106 = v105 + v104;
        if (__OFADD__(v105, v104))
        {
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v106 <= v100[3] >> 1)
        {
          if (!*(v103 + 16))
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v105 <= v106)
          {
            v107 = v105 + v104;
          }

          else
          {
            v107 = v105;
          }

          result = sub_29354(result, v107, 1, v100);
          v100 = result;
          if (!*(v103 + 16))
          {
LABEL_73:

            if (v104)
            {
              goto LABEL_117;
            }

            goto LABEL_74;
          }
        }

        if ((v100[3] >> 1) - v100[2] < v104)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        sub_1B98(&qword_3CF70, &unk_315C0);
        swift_arrayInitWithCopy();

        if (v104)
        {
          v108 = v100[2];
          v15 = __OFADD__(v108, v104);
          v109 = v108 + v104;
          if (v15)
          {
            goto LABEL_122;
          }

          v100[2] = v109;
        }

LABEL_74:
        v97 += v98;
        if (!--v96)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_89:
    v0 = v212;
    v110 = v212[61];
    v112 = v212[55];
    v111 = v212[56];
    sub_5AD0(v111, v112, &qword_3D6D0, &qword_31000);
    v85 = v183;
    v113 = *(v112 + *(v183 + 48));

    sub_2F3A8();
    sub_5B38(v111, &qword_3D6D0, &qword_31000);
    v114 = v202;
    v214[0] = v202;
    v116 = v202[2];
    v115 = v202[3];
    if (v116 >= v115 >> 1)
    {
      sub_2BBE0(v115 > 1, v116 + 1, 1);
      v114 = v214[0];
    }

    v117 = v212[61];
    v118 = v212[58];
    v114[2] = v116 + 1;
    v202 = v114;
    result = (*(v189 + 32))(v114 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v116, v117, v118);
    v82 = v186;
    v88 = 1 << *(v186 + 32);
    v90 = v178;
    v86 = v180;
    if (v205 >= v88)
    {
      goto LABEL_131;
    }

    v119 = *(v180 + 8 * v198);
    if ((v119 & v195) == 0)
    {
      goto LABEL_132;
    }

    if (v178 != *(v186 + 36))
    {
      goto LABEL_133;
    }

    v120 = v119 & (-2 << (v205 & 0x3F));
    if (v120)
    {
      result = sub_7474(v205, v178, 0);
      v88 = __clz(__rbit64(v120)) | v205 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v121 = v198 << 6;
      v122 = (v171 + 8 * v198);
      v123 = v198 + 1;
      while (v123 < (v88 + 63) >> 6)
      {
        v125 = *v122++;
        v124 = v125;
        v121 += 64;
        ++v123;
        if (v125)
        {
          result = sub_7474(v205, v178, 0);
          v88 = __clz(__rbit64(v124)) + v121;
          goto LABEL_66;
        }
      }

      result = sub_7474(v205, v178, 0);
    }

LABEL_66:
    v89 = v192 + 1;
  }

  while (v192 + 1 != v175);

  v126 = v202;
LABEL_102:
  v203 = v126;
  v127 = v0[115];
  v128 = *(v127 + 16);
  v210 = &_swiftEmptyArrayStorage;
  if (v128)
  {
    v129 = v0[72];
    v190 = v0[52];
    v184 = v0[48];
    v187 = v0[51];
    v214[0] = &_swiftEmptyArrayStorage;
    result = sub_2BC88(0, v128, 0);
    v130 = 0;
    v210 = &_swiftEmptyArrayStorage;
    v181 = v127 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v196 = v127;
    v199 = *(v127 + 16);
    v193 = v128;
    while (v199 != v130)
    {
      if (v130 >= *(v127 + 16))
      {
        goto LABEL_126;
      }

      v131 = *(v184 + 48);
      v132 = v212[72];
      v133 = v212[71];
      v206 = v212[53];
      v135 = v212[49];
      v134 = v212[50];
      v136 = *(v132 + 16);
      v136(v134 + v131, v181 + *(v132 + 72) * v130, v133);
      *v135 = v130;
      v137 = *(v184 + 48);
      (*(v132 + 32))(&v135[v137], v134 + v131, v133);
      v138 = *(v187 + 48);
      v136(v206, &v135[v137], v133);
      *(v206 + v138) = v130;
      sub_5B38(v135, &qword_3D6C0, &unk_30FF0);
      v214[0] = v210;
      v140 = v210[2];
      v139 = v210[3];
      if (v140 >= v139 >> 1)
      {
        sub_2BC88(v139 > 1, v140 + 1, 1);
        v210 = v214[0];
      }

      v141 = v212[53];
      ++v130;
      v210[2] = v140 + 1;
      result = sub_C610(v141, v210 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v140, &qword_3D6C8, &qword_31770);
      v127 = v196;
      if (v193 == v130)
      {
        v0 = v212;
        goto LABEL_110;
      }
    }

    goto LABEL_125;
  }

LABEL_110:
  if (v210[2])
  {
    sub_1B98(&qword_3D748, &qword_31080);
    v142 = sub_30268();
  }

  else
  {
    v142 = &_swiftEmptyDictionarySingleton;
  }

  v214[0] = v142;
  sub_21888(v210, 1, v214);

  if (v169)
  {
  }

  else
  {
    v143 = v214[0];
    v214[0] = v203;

    sub_23AB8(v214, v143);
LABEL_118:
    v144 = v0[116];
    v145 = v0[115];
    v146 = v0[107];
    v147 = v0[106];
    v148 = v0[105];
    v149 = v0[104];
    v150 = v0[102];
    v153 = v0[99];
    v154 = v0[96];
    v155 = v0[95];
    v156 = v0[94];
    v157 = v0[91];
    v158 = v0[88];
    v159 = v0[87];
    v160 = v0[86];
    v161 = v0[85];
    v162 = v0[84];
    v163 = v0[83];
    v164 = v0[82];
    v165 = v0[81];
    v166 = v0[80];
    v167 = v0[79];
    v168 = v0[76];
    v170 = v0[75];
    v172 = v0[74];
    v174 = v0[73];
    v176 = v0[70];
    v177 = v0[69];
    v179 = v0[68];
    v182 = v0[65];
    v185 = v0[64];
    v188 = v0[61];
    v191 = v0[60];
    v194 = v0[57];
    v197 = v0[56];
    v200 = v0[55];
    v207 = v0[53];
    v211 = v0[50];
    v213 = v0[49];

    (*(v147 + 8))(v146, v148);

    v151 = v214[0];

    v152 = v0[1];

    return v152(v151);
  }
}

uint64_t sub_14A28()
{
  *(v0 + 360) = *(v0 + 944);
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_14AB8, 0, 0);
}

uint64_t sub_14AB8()
{
  v1 = v0[116];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[99];
  v7 = v0[96];
  v8 = v0[95];
  v12 = v0[94];
  v13 = v0[91];
  v14 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[85];
  v18 = v0[84];
  v19 = v0[83];
  v20 = v0[82];
  v21 = v0[81];
  v22 = v0[80];
  v23 = v0[79];
  v24 = v0[76];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[70];
  v29 = v0[69];
  v30 = v0[68];
  v31 = v0[65];
  v32 = v0[64];
  v33 = v0[61];
  v34 = v0[60];
  v35 = v0[57];
  v36 = v0[56];
  v37 = v0[55];
  v38 = v0[53];
  v39 = v0[50];
  v40 = v0[49];
  (*(v0[101] + 8))(v0[102], v0[100]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];
  v10 = v0[118];

  return v9();
}

uint64_t sub_14D50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 984);
  v6 = *v2;
  v4[124] = v1;

  v7 = v4[83];
  if (v1)
  {
    sub_5B38(v7, &qword_3D620, &unk_30F70);
    v8 = sub_1624C;
  }

  else
  {
    v4[125] = a1;
    sub_5B38(v7, &qword_3D620, &unk_30F70);
    v8 = sub_14EB8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_14EB8()
{
  v195 = v0;
  v2 = v0[125];
  v3 = v0[122];
  if (v2)
  {

    v0[43] = 0;
    v0[44] = 0;
    v0[42] = v2;

LABEL_4:
    v5 = v0[82];
    v6 = v0[81];
    sub_167D0(v6);
    sub_C610(v6, v5, &qword_3D6E8, &qword_31018);
    v7 = sub_1B98(&qword_3D750, &qword_31088);
    if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
    {
      v8 = v0[111];
      v9 = v0[82];
      v10 = v0[80];
      v11 = v0[79];
      v12 = v0[78];
      v13 = v0[77];
      v14 = *v9;
      (*(v12 + 32))(v10, &v9[*(v7 + 48)], v13);
      (*(v12 + 16))(v11, v10, v13);
      v15 = sub_2FF28();
      v16 = sub_300D8();
      v180 = v14;
      if (os_log_type_enabled(v15, v16))
      {
        v183 = v16;
        v17 = v0[113];
        v18 = v0[112];
        v181 = v0[79];
        v19 = v14;
        v20 = v0[78];
        v186 = v0[77];
        v21 = v0[76];
        v22 = v0[72];
        v23 = v0[71];
        v24 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v194 = v190;
        *v24 = 136315650;
        *(v24 + 4) = sub_29C64(v18, v17, &v194);
        *(v24 + 12) = 2048;
        *(v24 + 14) = v19;
        *(v24 + 22) = 2080;
        v1 = v181;
        sub_2F168();
        sub_23F00(&qword_3D758, &type metadata accessor for UUID);
        v25 = sub_30298();
        v27 = v26;
        (*(v22 + 8))(v21, v23);
        v179 = *(v20 + 8);
        v179(v181, v186);
        v28 = sub_29C64(v25, v27, &v194);

        *(v24 + 24) = v28;
        _os_log_impl(&dword_0, v15, v183, "%s Turn %ld (%s) Features:", v24, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v29 = v0[79];
        v30 = v0[78];
        v31 = v0[77];

        v179 = *(v30 + 8);
        v179(v29, v31);
      }

      v32 = v0[80];
      v33 = sub_2F188();
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v33 + 32;
        if (qword_3CC20 != -1)
        {
          swift_once();
        }

        do
        {
          sub_4FD8(v0[110], qword_3D288);
          sub_54EC(v35, (v0 + 22));
          v36 = sub_2FF28();
          v37 = sub_300D8();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            *v38 = 136315394;
            *(v38 + 4) = sub_29C64(8224, 0xE200000000000000, &v194);
            *(v38 + 12) = 2080;
            sub_54EC((v0 + 22), (v0 + 37));
            sub_1B98(&qword_3D628, &qword_316D0);
            v39 = sub_2FF98();
            v1 = v40;
            sub_5448(v0 + 22);
            v41 = sub_29C64(v39, v1, &v194);

            *(v38 + 14) = v41;
            _os_log_impl(&dword_0, v36, v37, "%s%s", v38, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            sub_5448(v0 + 22);
          }

          v35 += 40;
          --v34;
        }

        while (v34);
      }

      else
      {
        if (qword_3CC20 != -1)
        {
          swift_once();
        }

        sub_4FD8(v0[110], qword_3D288);
        v42 = sub_2FF28();
        v43 = sub_300D8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v194 = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_29C64(8224, 0xE200000000000000, &v194);
          _os_log_impl(&dword_0, v42, v43, "%s<Empty>", v44, 0xCu);
          sub_5448(v45);
        }
      }

      v46 = v0[80];
      v48 = sub_2F158();
      v49 = 0;
      v50 = *(v48 + 16);
      v182 = v50;
      v184 = v48;
      while (1)
      {
        if (v49 == v50)
        {
          v52 = 1;
          v190 = v50;
        }

        else
        {
          if (v49 >= *(v48 + 16))
          {
            __break(1u);
LABEL_69:
            v47 = sub_2994C(0, v47[2] + 1, 1, v47);
LABEL_48:
            v125 = v47[2];
            v124 = v47[3];
            if (v125 >= v124 >> 1)
            {
              v47 = sub_2994C(v124 > 1, v125 + 1, 1, v47);
            }

            v126 = v0[120];
            v127 = v0[119];
            v128 = v0[84];
            v129 = v0[74];
            v130 = v0[72];
            v131 = v0[71];
            v47[2] = v125 + 1;
            v192 = v47;
            v1(v47 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v125, v129, v131);
            sub_30028();
            if (v127(v128, 1, v131) == 1)
            {
              v132 = v0[84];
              (*(v0[72] + 8))(v0[75], v0[71]);
              sub_5B38(v132, &qword_3CF40, &unk_315B0);
              v104 = v0[116];
              v105 = v0[114];
            }

            else
            {
              v138 = v0[114];
              v139 = v0[76];
              v140 = v0[75];
              v141 = v0[73];
              v142 = v0[72];
              v143 = v0[71];
              v1(v141, v0[84], v143);
              v190(v139, v141, v143);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v194 = v138;
              sub_20C2C(v139, v140, isUniquelyReferenced_nonNull_native);
              v145 = *(v142 + 8);
              v145(v141, v143);
              v145(v140, v143);
              v105 = v194;
              v104 = v194;
            }

            goto LABEL_54;
          }

          v53 = v0[69];
          v54 = v0[68];
          v55 = v0[62];
          v56 = v0[63];
          v57 = *(v56 + 16);
          v58 = v48 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v49;
          v59 = *(v0[66] + 48);
          *v54 = v49;
          v57(v54 + v59, v58, v55);
          sub_C610(v54, v53, &qword_3D6D8, &qword_31008);
          v52 = 0;
          v190 = (v49 + 1);
        }

        v60 = v0[70];
        v61 = v0[69];
        v62 = v0[67];
        v63 = v0[66];
        (*(v62 + 56))(v61, v52, 1, v63);
        sub_C610(v61, v60, &qword_3D6E0, &qword_31010);
        if ((*(v62 + 48))(v60, 1, v63) == 1)
        {
          v4 = v0[78] + 8;
          v179(v0[80], v0[77]);

          goto LABEL_4;
        }

        v64 = v0[111];
        v65 = v0[70];
        v66 = v0[65];
        v68 = v0[63];
        v67 = v0[64];
        v69 = v0[62];
        v70 = *v65;
        (*(v68 + 32))(v66, &v65[*(v0[66] + 48)], v69);
        (*(v68 + 16))(v67, v66, v69);
        v71 = sub_2FF28();
        v72 = sub_300D8();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = v0[113];
          v74 = v0[112];
          v75 = v0[63];
          v1 = v0[64];
          v187 = v0[62];
          v76 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          *v76 = 136315906;
          *(v76 + 4) = sub_29C64(v74, v73, &v194);
          *(v76 + 12) = 2048;
          *(v76 + 14) = v180;
          *(v76 + 22) = 2048;
          *(v76 + 24) = v70;
          *(v76 + 32) = 2080;
          v77 = sub_2F118();
          v79 = v78;
          v80 = v187;
          v188 = *(v75 + 8);
          v188(v1, v80);
          v81 = sub_29C64(v77, v79, &v194);

          *(v76 + 34) = v81;
          _os_log_impl(&dword_0, v71, v72, "%s Turn %ld, Event %ld (%s) Features:", v76, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          v83 = v0[63];
          v82 = v0[64];
          v84 = v0[62];

          v188 = *(v83 + 8);
          v188(v82, v84);
        }

        v85 = v0[65];
        v86 = sub_2F138();
        v87 = *(v86 + 16);
        if (v87)
        {
          v88 = v86 + 32;
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          do
          {
            sub_4FD8(v0[110], qword_3D288);
            sub_54EC(v88, (v0 + 27));
            v89 = sub_2FF28();
            v90 = sub_300D8();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              *v91 = 136315394;
              *(v91 + 4) = sub_29C64(8224, 0xE200000000000000, &v194);
              *(v91 + 12) = 2080;
              sub_54EC((v0 + 27), (v0 + 32));
              sub_1B98(&qword_3D628, &qword_316D0);
              v92 = sub_2FF98();
              v1 = v93;
              sub_5448(v0 + 27);
              v94 = sub_29C64(v92, v1, &v194);

              *(v91 + 14) = v94;
              _os_log_impl(&dword_0, v89, v90, "%s%s", v91, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              sub_5448(v0 + 27);
            }

            v88 += 40;
            --v87;
          }

          while (v87);

          v50 = v182;
          v48 = v184;
        }

        else
        {
          if (qword_3CC20 != -1)
          {
            swift_once();
          }

          sub_4FD8(v0[110], qword_3D288);
          v95 = sub_2FF28();
          v96 = sub_300D8();
          v50 = v182;
          v48 = v184;
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v194 = v98;
            *v97 = 136315138;
            *(v97 + 4) = sub_29C64(8224, 0xE200000000000000, &v194);
            _os_log_impl(&dword_0, v95, v96, "%s<Empty>", v97, 0xCu);
            sub_5448(v98);
          }
        }

        v49 = v190;
        v51 = v0[63] + 8;
        v188(v0[65], v0[62]);
      }
    }

    v99 = v0[120];
    v100 = v0[119];
    v101 = v0[85];
    v102 = v0[71];
    v103 = v0[42];

    sub_30018();
    if (v100(v101, 1, v102) != 1)
    {
      v118 = v0[115];
      v119 = v0[75];
      v120 = v0[74];
      v121 = v0[72];
      v122 = v0[71];
      v1 = *(v121 + 32);
      v1(v119, v0[85], v122);
      v190 = *(v121 + 16);
      v190(v120, v119, v122);
      v123 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v0[115];
      if ((v123 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_48;
    }

    sub_5B38(v0[85], &qword_3CF40, &unk_315B0);
    v104 = v0[116];
    v192 = v0[115];
    v105 = v0[114];
LABEL_54:
    v146 = v0[111];
    v147 = sub_2FF28();
    v148 = sub_300D8();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = v0[113];
      v150 = v0[112];
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v194 = v152;
      *v151 = 136315138;
      *(v151 + 4) = sub_29C64(v150, v149, &v194);
      _os_log_impl(&dword_0, v147, v148, "%s Running evaluation frameworks on extracted features", v151, 0xCu);
      sub_5448(v152);
    }

    v153 = *(v0[108] + 16);
    if (v153)
    {
      v154 = 32;
      do
      {
        sub_54EC(v0[108] + v154, (v0 + 12));
        v155 = v0[16];
        sub_5550(v0 + 12, v0[15]);
        sub_2F308();
        sub_5448(v0 + 12);
        v154 += 40;
        --v153;
      }

      while (v153);
    }

    v156 = v0[111];
    v157 = sub_2FF28();
    v158 = sub_300D8();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = v0[113];
      v160 = v0[112];
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v194 = v162;
      *v161 = 136315138;
      *(v161 + 4) = sub_29C64(v160, v159, &v194);
      _os_log_impl(&dword_0, v157, v158, "%s Running ground truth generators on extracted features", v161, 0xCu);
      sub_5448(v162);
    }

    v163 = *(v0[109] + 16);
    if (v163)
    {
      v164 = 32;
      do
      {
        sub_54EC(v0[109] + v164, (v0 + 17));
        v165 = v0[21];
        sub_5550(v0 + 17, v0[20]);
        v166 = *(v165 + 8);
        sub_2F208();
        sub_5448(v0 + 17);
        v164 += 40;
        --v163;
      }

      while (v163);
    }

    v167 = v0[95];
    v168 = v0[91];
    v169 = v0[90];
    v170 = v0[89];
    v171 = v0[88];

    sub_5B38(v171, &qword_3D6F0, &qword_31020);
    (*(v169 + 8))(v168, v170);
    sub_5B38(v167, &qword_3D6F8, &qword_31028);
    v0[116] = v104;
    v0[115] = v192;
    v0[114] = v105;
  }

  else
  {
    v106 = v0[111];
    v107 = v0[122];

    v108 = sub_2FF28();
    v109 = sub_300E8();

    v110 = os_log_type_enabled(v108, v109);
    v111 = v0[122];
    if (v110)
    {
      v112 = v0[121];
      v113 = v0[113];
      v114 = v0[112];
      v191 = v0[91];
      v193 = v0[95];
      v115 = v0[90];
      v185 = v0[88];
      v189 = v0[89];
      v116 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v116 = 136315394;
      *(v116 + 4) = sub_29C64(v114, v113, &v194);
      *(v116 + 12) = 2080;
      v117 = sub_29C64(v112, v111, &v194);

      *(v116 + 14) = v117;
      _os_log_impl(&dword_0, v108, v109, "%s Failed to generate a featurised session for conversationId=%s", v116, 0x16u);
      swift_arrayDestroy();

      sub_5B38(v185, &qword_3D6F0, &qword_31020);
      (*(v115 + 8))(v191, v189);
      sub_5B38(v193, &qword_3D6F8, &qword_31028);
    }

    else
    {
      v133 = v0[95];
      v134 = v0[91];
      v135 = v0[90];
      v136 = v0[89];
      v137 = v0[88];

      sub_5B38(v137, &qword_3D6F0, &qword_31020);
      (*(v135 + 8))(v134, v136);
      sub_5B38(v133, &qword_3D6F8, &qword_31028);
    }
  }

  v172 = sub_21430(&qword_3D738, &qword_3D710, &qword_31040);
  v173 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v174 = swift_task_alloc();
  v0[117] = v174;
  *v174 = v0;
  v174[1] = sub_1370C;
  v175 = v0[102];
  v176 = v0[100];
  v177 = v0[96];

  return dispatch thunk of AsyncIteratorProtocol.next()(v177, v176, v172);
}

uint64_t sub_1624C()
{
  v37 = v0;
  v1 = v0[124];
  v2 = v0[122];
  v3 = v0[111];

  swift_errorRetain();
  v4 = sub_2FF28();
  v5 = sub_300E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[124];
    v7 = v0[122];
    v8 = v0[121];
    v9 = v0[113];
    v10 = v0[112];
    v34 = v0[91];
    v35 = v0[95];
    v32 = v0[90];
    v33 = v0[89];
    v31 = v0[88];
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_29C64(v10, v9, &v36);
    *(v11 + 12) = 2080;
    v12 = sub_29C64(v8, v7, &v36);

    *(v11 + 14) = v12;
    *(v11 + 22) = 2080;
    v0[46] = v6;
    swift_errorRetain();
    sub_1B98(&qword_3CDE8, &qword_30FA0);
    v13 = sub_2FF98();
    v15 = sub_29C64(v13, v14, &v36);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_0, v4, v5, "%s Error generating features for conversationId=%s. Skipping ground truth generation. Error=%s", v11, 0x20u);
    swift_arrayDestroy();

    sub_5B38(v31, &qword_3D6F0, &qword_31020);
    (*(v32 + 8))(v34, v33);
    v16 = v35;
  }

  else
  {
    v17 = v0[124];
    v18 = v0[122];
    v19 = v0[95];
    v20 = v0[91];
    v21 = v0[90];
    v22 = v0[89];
    v23 = v0[88];

    sub_5B38(v23, &qword_3D6F0, &qword_31020);
    (*(v21 + 8))(v20, v22);
    v16 = v19;
  }

  sub_5B38(v16, &qword_3D6F8, &qword_31028);
  v24 = sub_21430(&qword_3D738, &qword_3D710, &qword_31040);
  v25 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v26 = swift_task_alloc();
  v0[117] = v26;
  *v26 = v0;
  v26[1] = sub_1370C;
  v27 = v0[102];
  v28 = v0[100];
  v29 = v0[96];

  return dispatch thunk of AsyncIteratorProtocol.next()(v29, v28, v24);
}

uint64_t sub_165A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_165C8, 0, 0);
}

uint64_t sub_165C8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[5];
    v3 = v2[27];
    sub_5550(v2 + 23, v2[26]);
    v4 = v1;
    sub_2EDE8();
  }

  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_2ECF8();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_166A0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(a2 + *(sub_1B98(&qword_3D768, &qword_31098) + 48));
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_5834;

  return v11(a1, a2, v7);
}

uint64_t sub_167D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B98(&qword_3D750, &qword_31088);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(*v1 + 16);
  if (v10 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    if (v10 >= v11)
    {
      __break(1u);
    }

    else
    {
      v20 = v6;
      v13 = sub_2F198();
      v14 = *(v13 - 8);
      v15 = *(v14 + 16);
      v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10;
      v1[1] = v10 + 1;
      v17 = *(v3 + 48);
      v18 = v1[2];
      *v8 = v18;
      result = v15(&v8[v17], v16, v13);
      if (!__OFADD__(v18, 1))
      {
        v1[2] = v18 + 1;
        sub_C610(v8, a1, &qword_3D750, &qword_31088);
        return (*(v20 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1699C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2EC08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_2F398();
  if (*(a3 + 16) && (v12 = sub_2A2F4(v11), (v13 & 1) != 0))
  {
    v14 = *(*(a3 + 56) + 8 * v12);
  }

  else
  {
    v14 = 0x8000000000000000;
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  sub_2F398();
  if (*(a3 + 16) && (v16 = sub_2A2F4(v9), (v17 & 1) != 0))
  {
    v18 = *(*(a3 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0x8000000000000000;
  }

  v15(v9, v4);
  return v14 < v18;
}

uint64_t sub_16B20@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  sub_5550(v1 + 2, v1[5]);
  sub_2F0A8();
  sub_5550(v20, v20[3]);
  v5 = sub_2F048();
  v19[3] = sub_2ECB8();
  v19[4] = &protocol witness table for AnyFeature;
  v19[0] = v5;
  v6 = sub_2ED48();
  sub_5448(v19);
  sub_5448(v20);
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v7 = sub_2FF48();
  sub_4FD8(v7, qword_3D460);
  v8 = sub_2FF28();
  v9 = sub_300D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v10 = 136315394;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v10 + 4) = sub_29C64(qword_3D450, *algn_3D458, v20);
    *(v10 + 12) = 2080;
    if (v6)
    {
      v11 = 0x6576697470616441;
    }

    else
    {
      v11 = 0x73656C6574617453;
    }

    if (v6)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = 0xE900000000000073;
    }

    v13 = sub_29C64(v11, v12, v20);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_0, v8, v9, "%s Running %s PICS Generation", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = (v6 & 1) == 0;
  if (v6)
  {
    v15 = &type metadata for AdaptiveContactSuggestionGeneratorWrapper;
  }

  else
  {
    v15 = &type metadata for LegacyContactSuggestionGeneratorWrapper;
  }

  if (v14)
  {
    v16 = &off_39A50;
  }

  else
  {
    v16 = &off_39C98;
  }

  v17 = swift_allocObject();
  result = sub_54EC((v2 + 2), v17 + 16);
  a1[3] = v15;
  a1[4] = v16;
  *a1 = v17;
  return result;
}

uint64_t sub_16DE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  sub_5550(v1 + 2, v1[5]);
  sub_2F0A8();
  sub_5550(&v11, *(&v12[0] + 1));
  v5 = sub_2F038();
  v14[3] = sub_2ECB8();
  v14[4] = &protocol witness table for AnyFeature;
  v14[0] = v5;
  v6 = sub_2ED48();
  sub_5448(v14);
  sub_5448(&v11);
  if (v6)
  {
    sub_54EC((v2 + 2), v12);
    *&v11 = 0xD000000000000020;
    *(&v11 + 1) = 0x8000000000032620;
    result = swift_allocObject();
    v8 = v12[0];
    *(result + 16) = v11;
    *(result + 32) = v8;
    *(result + 48) = v12[1];
    *(result + 64) = v13;
    v9 = &off_398E0;
    v10 = &type metadata for AdaptiveMediaSuggestionGeneratorWrapper;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v10;
  a1[4] = v9;
  *a1 = result;
  return result;
}

uint64_t sub_16F30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B98(&qword_3CF40, &unk_315B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v55 = &v40 - v7;
  v54 = sub_2EC08();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v54);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_2F3B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v53 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[5];
  v19 = v2[6];
  v51 = v2;
  sub_5550(v2 + 2, v18);
  sub_2F0D8();
  v20 = sub_2F508();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_2F4F8();
  v24 = *(a1 + 16);
  if (v24)
  {
    v52 = v23;
    v26 = *(v15 + 16);
    v25 = v15 + 16;
    v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v44 = *(v25 + 56);
    v45 = v26;
    v40 = v8 + 16;
    v41 = v8;
    v28 = (v8 + 8);
    v42 = (v25 - 8);
    v43 = (v8 + 56);
    v48 = v13;
    v49 = a2;
    v46 = v25;
    v47 = v14;
    v29 = v55;
    v26(v53, v27, v14);
    while (1)
    {
      sub_2F398();
      if (*(a2 + 16) && (v37 = sub_2A2F4(v13), (v38 & 1) != 0))
      {
        (*(v41 + 16))(v55, *(a2 + 56) + *(v41 + 72) * v37, v54);
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = v54;
      (*v43)(v29, v30, 1, v54);
      sub_2F388();
      v32 = v51[6];
      sub_5550(v51 + 2, v51[5]);
      sub_2F0E8();
      v33 = v50;
      sub_2EBF8();
      v13 = v48;
      sub_2F4E8();
      v34 = v53;

      v35 = *v28;
      (*v28)(v33, v31);
      sub_5448(v56);
      sub_5B38(v29, &qword_3CF40, &unk_315B0);
      v35(v13, v31);
      v36 = v47;
      (*v42)(v34, v47);
      v27 += v44;
      --v24;
      a2 = v49;
      if (!v24)
      {
        break;
      }

      v45(v34, v27, v36);
    }
  }
}

uint64_t sub_17340(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_2F2B8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_1B98(&qword_3D6A0, &unk_30FD0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_2EB88();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v11 = *(*(sub_1B98(&qword_3D620, &unk_30F70) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v12 = sub_2EBD8();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_17560, 0, 0);
}

uint64_t sub_17560()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[2];
  sub_2ECD8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];
    v6 = &qword_3D620;
    v7 = &unk_30F70;
LABEL_5:
    sub_5B38(v5, v6, v7);
    v14 = v0[17];
    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[12];
    v19 = v0[8];
    v18 = v0[9];

    v20 = v0[1];

    return v20(0);
  }

  v8 = v0[17];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[3];
  (*(v0[16] + 32))(v8, v0[14], v0[15]);
  sub_17FD8(v8, v12, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v13 = v0[9];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v6 = &unk_3D6A0;
    v7 = &unk_30FD0;
    v5 = v13;
    goto LABEL_5;
  }

  v22 = v0[13];
  v23 = v0[4];
  (*(v0[11] + 32))(v22, v0[9], v0[10]);
  v0[18] = sub_18A50(v22);
  v24 = swift_task_alloc();
  v0[19] = v24;
  *v24 = v0;
  v24[1] = sub_17868;
  v25 = v0[13];
  v26 = v0[4];

  return sub_19730(v25);
}