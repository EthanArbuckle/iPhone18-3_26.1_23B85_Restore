uint64_t sub_1C9928770(uint64_t a1, uint64_t a2)
{
  sub_1C99293EC(a2);
  v4 = sub_1C97A2CEC(&qword_1EC3CD110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_1C97ACC50(a2, 0, 1, v4);
}

uint64_t sub_1C9928810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1C97A2CEC(&unk_1EC3CD130);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99288DC, 0, 0);
}

uint64_t sub_1C99288DC()
{
  sub_1C97AA884();
  sub_1C97A2CEC(&qword_1EC3CD120);
  sub_1C9A929E8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  sub_1C9929458(v1);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1C992898C()
{
  sub_1C97AA884();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C9928A7C, 0, 0);
}

uint64_t sub_1C9928A7C()
{
  sub_1C97AA884();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1C9928BC8;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1C9928BC8()
{
  v1 = *v0;
  v2 = *v0;
  sub_1C97AA83C();
  *v3 = v2;
  v4 = *(v1 + 72);
  v5 = *v0;
  *v3 = *v0;

  sub_1C979AFD4(v4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v5;
  sub_1C9929458();
  v7 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v2 + 16, 0, 0, v7);
}

uint64_t sub_1C9928D4C()
{
  v1 = v0;
  v2 = sub_1C97A2CEC(&qword_1EC3CD110);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC13SoundAnalysis18AsyncDispatchQueue_queueContinuation;
  (*(v4 + 16))(&v11 - v6, v1 + OBJC_IVAR____TtC13SoundAnalysis18AsyncDispatchQueue_queueContinuation, v2);
  sub_1C9A929C8();
  v9 = *(v4 + 8);
  v9(v7, v2);
  v9((v1 + v8), v2);
  return v1;
}

uint64_t sub_1C9928E50()
{
  sub_1C9928D4C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AsyncDispatchQueue()
{
  result = qword_1EC3C4F90;
  if (!qword_1EC3C4F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9928EFC()
{
  sub_1C9928F8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C9928F8C()
{
  if (!qword_1EC3C4A30)
  {
    sub_1C97AA4F0(&qword_1EC3CD100);
    v0 = sub_1C9A929D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C4A30);
    }
  }
}

uint64_t sub_1C9928FF0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1C99290D8;

  return v5();
}

uint64_t sub_1C99290D8()
{
  sub_1C97AA884();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C99291C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C9929454;

  return sub_1C9928FF0(a1, v4);
}

uint64_t sub_1C9929280(uint64_t a1)
{
  v4 = *(sub_1C97A2CEC(&qword_1EC3CD120) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C99290D8;

  return sub_1C9928810(a1, v6, v7, v1 + v5);
}

uint64_t sub_1C992937C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CD128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C99293EC(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CD128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C9929478(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  if (a4)
  {
    v11 = qword_1EC3C5520;
    v12 = a4;
    if (v11 != -1)
    {
      sub_1C97DAA64();
    }

    v13 = sub_1C9A91B58();
    sub_1C97BFF6C(v13, qword_1EC3D3108);
    v14 = v12;

    v15 = sub_1C9A91B38();
    v16 = sub_1C9A92FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v39 = a1;
      v17 = swift_slowAlloc();
      v40 = a5;
      v41 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1C9849140(a5, a6, &v41);
      *(v17 + 12) = 2080;
      v18 = v14;
      v19 = [v14 description];
      v20 = sub_1C9A924A8();
      v21 = a2;
      v22 = a3;
      v24 = v23;

      v25 = sub_1C9849140(v20, v24, &v41);
      a3 = v22;
      a2 = v21;

      *(v17 + 14) = v25;
      v14 = v18;
      _os_log_impl(&dword_1C9788000, v15, v16, "error: %s; underlying: %s", v17, 0x16u);
      swift_arrayDestroy();
      a5 = v40;
      sub_1C9840CEC();
      a1 = v39;
      sub_1C9840CEC();
    }

    sub_1C97A2CEC(&qword_1EC3C69E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9AA3B60;
    *(inited + 32) = sub_1C9A924A8();
    *(inited + 40) = v27;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = a5;
    *(inited + 56) = a6;
    *(inited + 80) = sub_1C9A924A8();
    *(inited + 88) = v28;
    *(inited + 120) = sub_1C9929E8C();
    *(inited + 96) = v14;
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v29 = sub_1C9A91B58();
    sub_1C97BFF6C(v29, qword_1EC3D3108);

    v30 = sub_1C9A91B38();
    v31 = sub_1C9A92FA8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1C9849140(a5, a6, &v41);
      _os_log_impl(&dword_1C9788000, v30, v31, "error: %s", v32, 0xCu);
      sub_1C97A592C(v33);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    sub_1C97A2CEC(&qword_1EC3C69E8);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_1C9A9EDD0;
    *(v34 + 32) = sub_1C9A924A8();
    *(v34 + 40) = v35;
    *(v34 + 72) = MEMORY[0x1E69E6158];
    *(v34 + 48) = a5;
    *(v34 + 56) = a6;
  }

  v36 = sub_1C9A92348();
  v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);

  return sub_1C9A3B688(a1, a2, a3, v36);
}

void *sub_1C99299F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  if (result)
  {
    v7 = result;
    result = sub_1C9929478(a2, a3, a4, a5, a6, a7);
    *v7 = result;
  }

  return result;
}

void **sub_1C9929AE8(void **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = *result;
    if (*result)
    {
      swift_unknownObjectRetain();
    }

    sub_1C99299F0(v11, a2, a3, a4, v12, a5, a6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C9929CCC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v8[0] = 0;
  (a3)[2](a3, v8);
  v6 = v8[0];
  objc_autoreleasePoolPop(v5);
  if (a1)
  {
    v7 = v6;
    *a1 = v6;
  }

  else
  {
  }

  _Block_release(a3);
}

id sub_1C9929DDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C9929E34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C9929E8C()
{
  result = qword_1EC3CBB80;
  if (!qword_1EC3CBB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CBB80);
  }

  return result;
}

uint64_t sub_1C9929ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EC3C5DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91558();
  v10 = sub_1C97BFF6C(v9, qword_1EC3D3248);
  sub_1C97A2CEC(&qword_1EC3C6CA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C9A9FB90;
  *(v11 + 32) = 6715437;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 64) = 17197;
  *(v11 + 72) = 0xE200000000000000;
  *(v11 + 80) = a3;
  *(v11 + 88) = a4;

  sub_1C99DB764(v10, v11, 0);

  if (!v4)
  {
  }

  return result;
}

uint64_t sub_1C9929FF8()
{
  v0 = sub_1C9A91558();
  sub_1C9922D38(v0, qword_1EC3D3248);
  sub_1C97BFF6C(v0, qword_1EC3D3248);
  return sub_1C9A91468();
}

void sub_1C992A064(uint64_t a1, uint64_t (*a2)(id, uint64_t), uint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5)
{
  v31 = a5;
  v32 = a4;
  v35 = a3;
  v36 = a2;
  v33 = a1;
  v6 = sub_1C97A2CEC(&qword_1EC3CD160);
  sub_1C97AE9C8();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = *(v8 + 16);
  v16(&v31 - v14, a1, v6);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v34 = swift_allocObject();
  v18 = *(v8 + 32);
  v19 = v15;
  v20 = v33;
  v18(v34 + v17, v19, v6);
  v16(v13, v20, v6);
  v21 = swift_allocObject();
  v18(v21 + v17, v13, v6);
  v22 = objc_allocWithZone(type metadata accessor for SNResultsForwarder());
  v23 = sub_1C9904090(sub_1C992AC68, v34, sub_1C992AC80, v21);
  v25 = v36(v23, v24);
  v32(&v37);
  sub_1C97A2CEC(&unk_1EC3CD168);
  v26 = swift_allocObject();
  v27 = v23;
  swift_defaultActor_initialize();
  *(v26 + 112) = v23;
  v28 = v37;
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v25;
  v29[4] = v26;

  swift_unknownObjectRetain();

  sub_1C9A92A98();
  v30 = v27;
  sub_1C99466AC(v25, v30);

  swift_unknownObjectRelease();
}

void sub_1C992A388(uint64_t a1, uint64_t (*a2)(id, uint64_t), uint64_t a3, void (*a4)(void **__return_ptr), uint64_t a5)
{
  v29 = a5;
  v30 = a4;
  v33 = a3;
  v34 = a2;
  v31 = a1;
  v6 = sub_1C97A2CEC(&qword_1EC3CD160);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = *(v7 + 16);
  v13(&v29 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v32 = swift_allocObject();
  v15 = *(v7 + 32);
  v16 = v12;
  v17 = v31;
  v15(v32 + v14, v16, v6);
  v13(v10, v17, v6);
  v18 = swift_allocObject();
  v15(v18 + v14, v10, v6);
  v19 = objc_allocWithZone(type metadata accessor for SNResultsForwarder());
  v20 = sub_1C9904090(sub_1C992B280, v32, sub_1C992B27C, v18);
  v22 = v34(v20, v21);
  v30(&v35);
  sub_1C97A2CEC(&unk_1EC3CD168);
  v23 = swift_allocObject();
  v24 = v20;
  swift_defaultActor_initialize();
  *(v23 + 112) = v20;
  v25 = v35;
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v22;
  v26[4] = v23;
  v27 = v25;
  swift_unknownObjectRetain();

  sub_1C9A92A98();
  v28 = v24;
  sub_1C98FAA84(v22, v28);

  swift_unknownObjectRelease();
}

uint64_t sub_1C992A6BC(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  sub_1C97A2CEC(&qword_1EC3CD160);
  return sub_1C9A92AB8();
}

uint64_t sub_1C992A71C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CD178);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  v8[1] = a2;
  swift_unknownObjectRetain();
  sub_1C97A2CEC(&qword_1EC3CD160);
  sub_1C9A92AA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C992A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  a5(a3);
  v11 = sub_1C9A92988();
  sub_1C97ACC50(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;

  sub_1C99A9128();
}

uint64_t sub_1C992A948()
{
  *(*(v0 + 16) + 112) = 0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AnalyzerUtils.systemAudioAnalyzerResultsStream(makeRequest:createAnalyzer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = sub_1C992AAF8;
  v9[5] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C992AB2C;
  *(v10 + 24) = v9;

  sub_1C97A2CEC(&unk_1EC3CD140);
  sub_1C97AE67C(&unk_1EC3C7CB0, &unk_1EC3CD140);
  return sub_1C9A91EF8();
}

uint64_t sub_1C992AAF8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C992AB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&unk_1EC3CD180);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8];
  v12 = a1;
  v13 = a2;
  sub_1C97A2CEC(&unk_1EC3C8670);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  return sub_1C9A92AC8();
}

uint64_t sub_1C992ACF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C97A2CEC(a3);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  v10 = a1;
  v11 = a2;
  (*(v7 + 104))(&v9[-v6], *MEMORY[0x1E69E8790]);
  return sub_1C9A92AC8();
}

uint64_t sub_1C992AE44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C992B288(v1);

  return sub_1C992A928(v2, v3, v4, v5);
}

uint64_t sub_1C992AEE4()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CD160);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C992AF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1C97A2CEC(&qword_1EC3CD160) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1C992B070()
{
  swift_unknownObjectRelease();

  sub_1C992B2A4();

  return swift_deallocObject();
}

uint64_t sub_1C992B0A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C992B288(v1);

  return sub_1C992A928(v2, v3, v4, v5);
}

_BYTE *sub_1C992B170(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C992B220()
{
  result = qword_1EC3CD1A0;
  if (!qword_1EC3CD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1A0);
  }

  return result;
}

uint64_t sub_1C992B2CC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_12;
  }

  v3 = result / a2;
  v4 = a2 * (result / a2);
  if ((a2 * (result / a2)) >> 64 != v4 >> 63)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 != result)
  {
    sub_1C992BFC8();
    swift_allocError();
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C992B358(uint64_t a1)
{
  v3 = sub_1C9A93D68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = sub_1C97A2CEC(&qword_1EC3CD1B8);
  v7 = swift_allocObject();
  v14[0] = v7;
  v8 = *(a1 + 8);
  *(v7 + 16) = *a1;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a1 + 16);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 56) = *(a1 + 40);
  *(v7 + 72) = *(a1 + 56);
  v9 = *(a1 + 80);
  *(v7 + 88) = *(a1 + 72);
  *(v7 + 96) = v9;
  v10 = *(a1 + 96);
  *(v7 + 104) = *(a1 + 88);
  *(v7 + 112) = v10;
  v11 = *(a1 + 112);
  *(v7 + 120) = *(a1 + 104);
  *(v7 + 128) = v11;
  *(v7 + 136) = *(a1 + 120);
  sub_1C9A93D28();
  sub_1C9A93D58();
  (*(v4 + 8))(v6, v3);
  v12 = sub_1C9A93708();
  if (v1)
  {
    v14[0] = v1;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
  }

  return v12;
}

uint64_t sub_1C992B524(uint64_t a1)
{
  sub_1C99024E8(a1, v3);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_1C9886C04();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

void *sub_1C992B5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  result = sub_1C992BBB4(*(v7 + 16), *(v5 + 16), *(v6 + 16));
  if (!v2)
  {
    v9 = sub_1C992BC24(result);
    v10 = sub_1C992BF30(v7);
    v11 = sub_1C992BF30(v5);
    v12 = sub_1C992BF30(v6);
    sub_1C992BCD4(v10, v11, v12, *a1, v9, v13, *(a1 + 8));

    return memcpy(a2, v13, 0x50uLL);
  }

  return result;
}

uint64_t sub_1C992B708()
{
  v1[0] = xmmword_1C9AD3950;
  v1[1] = unk_1C9AD3960;
  v1[2] = xmmword_1C9AD3970;
  v1[3] = unk_1C9AD3980;
  v1[4] = xmmword_1C9AD3990;
  v1[5] = unk_1C9AD39A0;
  v1[6] = xmmword_1C9AD39B0;
  v1[7] = unk_1C9AD39C0;
  result = sub_1C992B358(v1);
  qword_1EC3D3260 = result;
  byte_1EC3D3268 = 0;
  return result;
}

uint64_t sub_1C992B77C()
{
  v1[0] = xmmword_1C9AD39D0;
  v1[1] = unk_1C9AD39E0;
  v1[2] = xmmword_1C9AD39F0;
  v1[3] = unk_1C9AD3A00;
  v1[4] = xmmword_1C9AD3A10;
  v1[5] = unk_1C9AD3A20;
  v1[6] = xmmword_1C9AD3A30;
  v1[7] = unk_1C9AD3A40;
  result = sub_1C992B358(v1);
  qword_1EC3D3270 = result;
  byte_1EC3D3278 = 0;
  return result;
}

uint64_t sub_1C992B7F0()
{
  v1[0] = xmmword_1C9AD38D0;
  v1[1] = unk_1C9AD38E0;
  v1[2] = xmmword_1C9AD38F0;
  v1[3] = unk_1C9AD3900;
  v1[4] = xmmword_1C9AD3910;
  v1[5] = unk_1C9AD3920;
  v1[6] = xmmword_1C9AD3930;
  v1[7] = unk_1C9AD3940;
  result = sub_1C992B358(v1);
  qword_1EC3D3280 = result;
  byte_1EC3D3288 = 0;
  return result;
}

uint64_t sub_1C992B864()
{
  result = sub_1C992B8D8(&v1, &v2);
  qword_1EC3D3290 = v2;
  *&qword_1EC3D3298 = v3;
  *&qword_1EC3D32A8 = v4;
  byte_1EC3D32B8 = 0;
  return result;
}

uint64_t sub_1C992B8D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC3C5DD0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC3D3260;
  if (byte_1EC3D3268)
  {
    v5 = qword_1EC3D3260;
    sub_1C97A2CEC(&unk_1EC3CA040);
    result = swift_willThrowTypedImpl();
LABEL_13:
    *a1 = v4;
    return result;
  }

  v7 = qword_1EC3C5DD8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC3D3270;
  if (byte_1EC3D3278)
  {
    sub_1C992C01C(qword_1EC3D3270, 1);
    sub_1C982F268(v4, 0);
    sub_1C97A2CEC(&unk_1EC3CA040);
    result = swift_willThrowTypedImpl();
    v4 = v8;
    goto LABEL_13;
  }

  v9 = qword_1EC3C5DE0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC3D3280;
  if (byte_1EC3D3288)
  {
    sub_1C992C01C(qword_1EC3D3280, 1);
    sub_1C982F268(v8, 0);
    sub_1C982F268(v4, 0);
    sub_1C97A2CEC(&unk_1EC3CA040);
    result = swift_willThrowTypedImpl();
    v4 = v10;
    goto LABEL_13;
  }

  *a2 = 160;
  *(a2 + 8) = 1065101558;
  *(a2 + 16) = v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
}

uint64_t sub_1C992BB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24) - v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C992B2CC(v7, 4);
  if (!v3)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24) - v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1C992B2CC(v10, 4);
    v12 = *(a3 + 16);
    if (v12)
    {
      v13 = *(a3 + 24) - v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1C992B2CC(v13, 4);
    sub_1C992BBB4(v8, v11, v14);
  }

  return v8;
}

uint64_t sub_1C992BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2 || a1 != a3)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v6, v5 + 15, v7);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C992BC24(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = sub_1C9A5988C(result);
  type metadata accessor for FixedAddressMutableRawBuffer();
  swift_allocObject();
  v4 = sub_1C99CCA8C(v3);
  sub_1C992BE64(*(v4 + 16), *(v4 + 24), v2);
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1C992BCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v24 = *MEMORY[0x1E69E9840];
  result = sub_1C992BB00(a1, a2, a3);
  if (!v7)
  {
    memset(v23, 0, 44);
    if (result > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (a4 >= 0xFFFFFFFF80000000 && result >= 0xFFFFFFFF80000000)
    {
      if (a4 <= 0x7FFFFFFF)
      {
        if (sub_1C9A5991C(v23, *(a1 + 16), *(a2 + 16), *(a3 + 16), result, a4, *(a5 + 16), a7))
        {
          v17 = *&v23[1];
          v18 = DWORD2(v23[1]);
          v19 = *(&v23[2] + 4);
          *a6 = v23[0];
          *(a6 + 16) = v17;
          *(a6 + 24) = v18;
          *(a6 + 28) = *(&v23[1] + 12);
          *(a6 + 36) = v19;
          *(a6 + 48) = a5;
          *(a6 + 56) = a1;
          *(a6 + 64) = a2;
          *(a6 + 72) = a3;
        }

        else
        {
          type metadata accessor for SNError();
          sub_1C98573F8();
          sub_1C9820900(v21, v20 + 14, v22);
          return swift_willThrow();
        }
      }

LABEL_14:
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C992BE64(void *a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2 - a1;
  if (!a1)
  {
    v3 = 0;
  }

  v8[0] = v3;
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (a3 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  result = sub_1C9A59898(a1, v8, a3);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v6, v5 + 14, v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C992BF30(uint64_t result)
{
  v2 = *(result + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    type metadata accessor for FixedAddressMutableRawBuffer();
    swift_allocObject();
    v4 = sub_1C99CCA8C(4 * v2);
    sub_1C99CC544((v3 + 32), v3 + 32 + 4 * v2, *(v4 + 16), *(v4 + 24));
    if (v1)
    {
    }

    return v4;
  }

  return result;
}

unint64_t sub_1C992BFC8()
{
  result = qword_1EC3CD1B0;
  if (!qword_1EC3CD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1B0);
  }

  return result;
}

id sub_1C992C01C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C992C028@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1C992B524(a1);
  if (v2)
  {
    sub_1C97A2CEC(&unk_1EC3CA040);
    result = swift_allocError();
    *v6 = v2;
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1C992C098(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1C992C0D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C992C138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C992C178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C992C370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v6 = sub_1C993AF6C(a1, a2);
    sub_1C97A2CEC(v6);
    sub_1C97FB318();
    v7 = sub_1C9A93808();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v9 = v7;
  a4(a1, 1, &v9);
  return v9;
}

uint64_t sub_1C992C428(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v5 = sub_1C993AF6C(a1, a2);
    sub_1C97A2CEC(v5);
    sub_1C97FB318();
    v6 = sub_1C9A93808();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v9 = v6;

  a4(v7, 1, &v9);

  return v9;
}

uint64_t sub_1C992C4EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    sub_1C97A2CEC(a3);
    sub_1C97FB318();
    v7 = sub_1C9A93808();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;

  v8 = sub_1C98EE6C0();
  a5(v8);

  return v10;
}

uint64_t sub_1C992C5B8(double a1)
{
  sub_1C97BE32C();
  sub_1C9A92528();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x1CCA919B0](*&v2);
  return sub_1C9A93D18();
}

uint64_t sub_1C992C624()
{
  sub_1C97BE32C();
  sub_1C992FA74(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C992C65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v49 = *(a1 + 24);
  v47 = *(a1 + 36);
  v48 = *(a1 + 32);
  v46 = *(a1 + 40);
  v3 = *(a1 + 48);
  v43 = *(a1 + 64);
  v44 = *(a1 + 56);
  v41 = *(a1 + 80);
  v42 = *(a1 + 72);
  v39 = *(a1 + 96);
  v40 = *(a1 + 88);
  v38 = *(a1 + 104);
  v30 = *(a1 + 112);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 36);
  v45 = *(a2 + 40);
  v9 = *(a2 + 48);
  v36 = *(a2 + 64);
  v37 = *(a2 + 56);
  v34 = *(a2 + 80);
  v35 = *(a2 + 72);
  v32 = *(a2 + 96);
  v33 = *(a2 + 88);
  v31 = *(a2 + 104);
  v29 = *(a2 + 112);
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  v57 = *a1;
  v58 = v2;
  LOBYTE(v59) = v10;
  v50 = v5;
  v51 = v4;
  LOBYTE(v52) = v11;
  v12 = sub_1C985511C();
  sub_1C993946C(v12, v13, v10);
  v14 = sub_1C993AD44();
  sub_1C993946C(v14, v15, v11);
  v16 = sub_1C992C8EC(&v57, &v50);
  v17 = sub_1C993AD44();
  sub_1C97A6368(v17, v18, v11);
  v19 = sub_1C985511C();
  sub_1C97A6368(v19, v20, v10);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v21 = v49 == v6 && v48 == v7;
  v22 = v21 && v47 == v8;
  v23 = v22 && v46 == v45;
  if (!v23 || v3 != v9)
  {
    return 0;
  }

  v57 = v44;
  v58 = v43;
  v59 = v42;
  v60 = v41;
  v61 = v40;
  v62 = v39;
  v63 = v38;
  v50 = v37;
  v51 = v36;
  v52 = v35;
  v53 = v34;
  v54 = v33;
  v55 = v32;
  v56 = v31;
  sub_1C97C6634(v44, v43, v42, v41, v40, v39, v38);
  v25 = sub_1C97CB094();
  sub_1C993AEE8(v25, v26);
  v27 = sub_1C97C4FBC(&v57, &v50);
  sub_1C97A6390(v50, v51, v52, v53, v54, v55, v56);
  sub_1C97A6390(v57, v58, v59, v60, v61, v62, v63);
  if (!v27)
  {
    return 0;
  }

  return sub_1C9808C60(v30, v29);
}

uint64_t sub_1C992C874()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  type metadata accessor for _SNClassifySoundRequest();
  swift_dynamicCast();
  return v3;
}

uint64_t sub_1C992C8EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      type metadata accessor for SNMLModelHashableUncodableWrapper();
      v19 = sub_1C9871794();
      sub_1C993946C(v19, v20, 0);
      v21 = sub_1C98550EC();
      sub_1C993946C(v21, v22, 0);
      v7 = sub_1C9889C28(v2, v4);
      v23 = sub_1C98550EC();
      sub_1C97A6368(v23, v24, 0);
      v16 = sub_1C9871794();
      v18 = 0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v3 != 1)
  {
    if (v5 == 2)
    {
      v25 = sub_1C9871794();
      sub_1C993946C(v25, v26, 2);
      v27 = sub_1C98550EC();
      sub_1C993946C(v27, v28, 2);
      LOBYTE(v7) = sub_1C9A91708();
      v29 = sub_1C98550EC();
      sub_1C97A6368(v29, v30, 2);
      v16 = sub_1C9871794();
      v18 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v5 != 1)
  {
LABEL_14:
    v32 = sub_1C9871794();
    sub_1C993946C(v32, v33, v5);
    v34 = sub_1C98550EC();
    sub_1C993946C(v34, v35, v3);
    v36 = sub_1C98550EC();
    sub_1C97A6368(v36, v37, v3);
    v38 = sub_1C9871794();
    sub_1C97A6368(v38, v39, v5);
    return 0;
  }

  if (v2 != v4 || *(a1 + 8) != *(a2 + 8))
  {
    sub_1C98550EC();
    LOBYTE(v7) = sub_1C9A93B18();
    v8 = sub_1C9871794();
    sub_1C993946C(v8, v9, 1);
    v10 = sub_1C993ACC4();
    sub_1C993946C(v10, v11, v12);
    v13 = sub_1C993ACC4();
    sub_1C97A6368(v13, v14, v15);
    v16 = sub_1C9871794();
    v18 = 1;
LABEL_13:
    sub_1C97A6368(v16, v17, v18);
    return v7 & 1;
  }

  v40 = 1;
  v41 = sub_1C993ACC4();
  sub_1C993946C(v41, v42, v43);
  v44 = sub_1C993ACC4();
  sub_1C993946C(v44, v45, v46);
  v47 = sub_1C993ACC4();
  sub_1C97A6368(v47, v48, v49);
  v50 = sub_1C993ACC4();
  sub_1C97A6368(v50, v51, v52);
  return v40;
}

uint64_t sub_1C992CA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F4D6C6DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C9AD6600 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C65646F4D3565 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C992CBA8(char a1)
{
  if (!a1)
  {
    return 0x6C65646F4D6C6DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6C65646F4D3565;
}

void sub_1C992CC04()
{
  sub_1C97AEB94();
  v3 = v2;
  sub_1C97A2CEC(&qword_1EC3CD490);
  sub_1C97AE9C8();
  v34 = v5;
  v35 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v29 - v7;
  sub_1C97A2CEC(&qword_1EC3CD498);
  sub_1C97AE9C8();
  v31 = v9;
  v32 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  v11 = sub_1C97A2CEC(&qword_1EC3CD4A0);
  sub_1C97AE9C8();
  v30 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1C97A2CEC(&qword_1EC3CD4A8);
  sub_1C97AE9C8();
  v37 = v17;
  v38 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98550DC();
  v19 = v0[1];
  v36 = *v0;
  v29 = v19;
  v20 = *(v0 + 16);
  sub_1C97BE20C(v3, v3[3]);
  sub_1C993A044();
  sub_1C993AF40();
  sub_1C9A93DD8();
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v39) = 1;
      sub_1C993A0EC();
      sub_1C97FB240();
      v39 = v36;
      v40 = v29;
      sub_1C97A2CEC(&qword_1EC3CD470);
      sub_1C993A140(&unk_1EC3CD4B8);
      v21 = v32;
      sub_1C9A93A18();
      v22 = *(v31 + 8);
      v23 = v1;
    }

    else
    {
      LOBYTE(v39) = 2;
      sub_1C993A098();
      v25 = v33;
      sub_1C97FB240();
      v39 = v36;
      type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper();
      sub_1C993ACF8();
      sub_1C993A1EC(v26);
      v21 = v35;
      sub_1C9A93A18();
      v22 = *(v34 + 8);
      v23 = v25;
    }

    v22(v23, v21);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1C993A198();
    sub_1C97FB240();
    v39 = v36;
    type metadata accessor for SNMLModelHashableUncodableWrapper();
    sub_1C993AD10();
    sub_1C993A1EC(v24);
    sub_1C9A93A18();
    (*(v30 + 8))(v15, v11);
  }

  v27 = sub_1C9871794();
  v28(v27);
  sub_1C97AEB5C();
}

uint64_t sub_1C992D020()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1CCA91980](1);

      return sub_1C9A92528();
    }

    else
    {
      MEMORY[0x1CCA91980](2);
      sub_1C9A91748();
      sub_1C993AC7C();
      sub_1C993A1EC(v2);
      sub_1C98EE6C0();
      return sub_1C9A92398();
    }
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C98884DC();
    sub_1C97FB388();
  }
}

uint64_t sub_1C992D128()
{
  v1 = *(v0 + 16);
  sub_1C97BE32C();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x1CCA91980](1);
      sub_1C9A92528();
    }

    else
    {
      MEMORY[0x1CCA91980](2);
      sub_1C9A91748();
      sub_1C993AC7C();
      sub_1C993A1EC(v2);
      sub_1C9A92398();
    }
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C98884DC();
    sub_1C9A92528();
  }

  return sub_1C9A93D18();
}

void sub_1C992D224()
{
  sub_1C97AEB94();
  v4 = v3;
  v66 = v5;
  sub_1C97A2CEC(&qword_1EC3CD428);
  sub_1C97AE9C8();
  v64 = v7;
  v65 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56[-v9];
  sub_1C97A2CEC(&qword_1EC3CD430);
  sub_1C97AE9C8();
  v62 = v10;
  v63 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56[-v13];
  sub_1C97A2CEC(&qword_1EC3CD438);
  sub_1C97AE9C8();
  v61 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  v17 = sub_1C97A2CEC(&qword_1EC3CD440);
  sub_1C97AE9C8();
  v19 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C98550DC();
  v21 = v4[3];
  v68 = v4;
  sub_1C97BE20C(v4, v21);
  sub_1C993A044();
  sub_1C993AF40();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_10;
  }

  v59 = v2;
  v60 = v14;
  v71 = v19;
  v22 = v1;
  v23 = sub_1C9A93958();
  sub_1C98EE524(v23, 0);
  v27 = v17;
  if (v25 == v26 >> 1)
  {
    goto LABEL_9;
  }

  v58 = 0;
  if (v25 < (v26 >> 1))
  {
    v28 = v17;
    v29 = *(v24 + v25);
    sub_1C98EE520(v25 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      v57 = v29;
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v69) = 1;
          sub_1C993A0EC();
          sub_1C993AEC4();
          v34 = v66;
          sub_1C97A2CEC(&qword_1EC3CD470);
          sub_1C993A140(&unk_1EC3CD478);
          sub_1C993AE34();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v43 = sub_1C988EB2C();
          v44(v43);
          v45 = sub_1C993ACD4();
          v46(v45);
          v48 = v69;
          v47 = v70;
          v49 = v68;
        }

        else
        {
          LOBYTE(v69) = 2;
          sub_1C993A098();
          sub_1C993AEC4();
          v34 = v66;
          type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper();
          sub_1C993ACF8();
          sub_1C993A1EC(v42);
          sub_1C993AE34();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v54 = sub_1C993AF18();
          v55(v54);
          (*(v71 + 8))(v1, v28);
          v47 = 0;
          v49 = v68;
          v48 = v69;
        }

        goto LABEL_16;
      }

      LOBYTE(v69) = 0;
      sub_1C993A198();
      v38 = v58;
      sub_1C9A93858();
      if (!v38)
      {
        type metadata accessor for SNMLModelHashableUncodableWrapper();
        sub_1C993AD10();
        sub_1C993A1EC(v41);
        sub_1C993AE34();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v50 = sub_1C993AF2C();
        v51(v50);
        v52 = sub_1C993AE64();
        v53(v52);
        v47 = 0;
        v49 = v68;
        v48 = v69;
        v34 = v66;
LABEL_16:
        *v34 = v48;
        *(v34 + 8) = v47;
        *(v34 + 16) = v57;
        goto LABEL_11;
      }

      v39 = sub_1C993AE64();
      v40(v39);
      swift_unknownObjectRelease();
LABEL_10:
      v49 = v68;
LABEL_11:
      sub_1C97A592C(v49);
      sub_1C97AEB5C();
      return;
    }

    v27 = v28;
LABEL_9:
    v35 = sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v37 = v36;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v37 = &type metadata for ClassifierVariant;
    sub_1C9A93868();
    sub_1C98994EC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v22, v27);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1C992D948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C9AD9E30 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4670616C7265766FLL && a2 == 0xED0000726F746361;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001C9AD9990 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001C9AD99E0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9A93B18();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C992DB00(char a1)
{
  result = 0x7544776F646E6977;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4670616C7265766FLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C992DBC8(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CD2E8);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98550DC();
  v7 = *v1;
  v8 = *(v1 + 8);
  v21 = *(v1 + 64);
  v22 = *(v1 + 56);
  v19 = *(v1 + 80);
  v20 = *(v1 + 72);
  v17 = *(v1 + 96);
  v18 = *(v1 + 88);
  v24 = *(v1 + 104);
  v9 = a1[3];
  v10 = *(v1 + 16);
  v11 = a1;
  v13 = v12;
  sub_1C97BE20C(v11, v9);
  v14 = sub_1C985511C();
  sub_1C993946C(v14, v15, v10);
  sub_1C99393C4();
  sub_1C993AF40();
  sub_1C9A93DD8();
  sub_1C9939494();
  sub_1C993AD50();
  sub_1C9A93A18();
  if (v23)
  {
    sub_1C97A6368(v7, v8, v10);
  }

  else
  {
    sub_1C97A6368(v7, v8, v10);
    sub_1C97FB3CC();
    sub_1C97BCB34();
    sub_1C993AD50();
    sub_1C9A93A18();
    sub_1C9A939E8();
    sub_1C97C6634(v22, v21, v20, v19, v18, v17, v24);
    sub_1C97A6D24();
    sub_1C993AD50();
    sub_1C9A93A18();
    sub_1C97A6390(v22, v21, v20, v19, v18, v17, v24);
    sub_1C97A2CEC(&qword_1EC3C7BF0);
    sub_1C99394E8(&unk_1EC3D23D0);
    sub_1C993AD50();
    sub_1C9A93A18();
  }

  return (*(v5 + 8))(v2, v13);
}

void sub_1C992DEB4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v14 = *(v0 + 56);
  v3 = *(v0 + 80);
  v12 = *(v0 + 72);
  v13 = *(v0 + 24);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  if (*(v0 + 16))
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 104);
    v8 = *(v0 + 80);
    v9 = *(v0 + 96);
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1CCA91980](1);
      sub_1C9A92528();
    }

    else
    {
      MEMORY[0x1CCA91980](2);
      sub_1C9A91748();
      sub_1C993AC7C();
      sub_1C993A1EC(v10);
      sub_1C97C924C();
      sub_1C9A92398();
    }

    v4 = v9;
    v3 = v8;
    v5 = v7;
    v1 = v6;
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C98884DC();
    sub_1C97FB388();
  }

  MEMORY[0x1CCA919B0](v13);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  v11 = 0.0;
  if (v2 != 0.0)
  {
    v11 = v2;
  }

  MEMORY[0x1CCA919B0](*&v11);
  if (v5)
  {
    MEMORY[0x1CCA91980](1);
    MEMORY[0x1CCA919B0](v14);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v12);
    MEMORY[0x1CCA919B0](v3);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v4);
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C97C8590();
  }

  sub_1C97C924C();

  sub_1C97C7EF4();
}

uint64_t sub_1C992E0E4()
{
  sub_1C97BE32C();
  sub_1C992DEB4();
  return sub_1C9A93D18();
}

uint64_t sub_1C992E11C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CD2C0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C99393C4();
  sub_1C993AEA0();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  sub_1C9939418();
  sub_1C993ADA4();
  sub_1C9A938F8();
  v24 = v28;
  v25 = v29;
  v26 = v30;
  sub_1C97BCA8C();
  sub_1C993ADA4();
  sub_1C9A938F8();
  v22 = v28;
  v21 = v29;
  LOBYTE(v28) = 2;
  sub_1C993ADA4();
  sub_1C9A938C8();
  v8 = v7;
  v19 = v30;
  v20 = HIDWORD(v29);
  sub_1C97A6DD4();
  sub_1C993ADA4();
  sub_1C9A938F8();
  v9 = v28;
  v23 = v29;
  v15 = v30;
  v16 = v31;
  v17 = v32;
  v18 = v33;
  v45 = v34;
  sub_1C97A2CEC(&qword_1EC3C7BF0);
  v43 = 4;
  sub_1C99394E8(&qword_1EC3CA010);
  sub_1C993ADA4();
  sub_1C9A938F8();
  v10 = sub_1C993AE08();
  v11(v10, v5);
  v14 = v44;
  v27[0] = v24;
  v27[1] = v29;
  LOBYTE(v27[2]) = v30;
  v27[3] = v22;
  v27[4] = v29;
  v27[5] = v30;
  v27[6] = v8;
  v27[7] = v28;
  v27[8] = v29;
  v27[9] = v30;
  v27[10] = v31;
  v27[11] = v32;
  v27[12] = v33;
  v13 = v34;
  LOBYTE(v27[13]) = v34;
  v27[14] = v44;
  memcpy(a2, v27, 0x78uLL);
  sub_1C97A639C(v27, &v28);
  sub_1C97A592C(a1);
  v28 = v24;
  v29 = v25;
  LOBYTE(v30) = v26;
  v31 = v22;
  v32 = __PAIR64__(v20, v21);
  v33 = v19;
  v34 = v8;
  v35 = v9;
  v36 = v23;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v13;
  v42 = v14;
  return sub_1C9932420(&v28);
}

uint64_t sub_1C992E530(char *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src + 120, 0x41uLL);
  memcpy(v18, a2, sizeof(v18));
  sub_1C993AF4C();
  memcpy(v4, v5, v6);
  sub_1C97A639C(__dst, v21);
  sub_1C97A639C(v18, v21);
  v7 = sub_1C97CB094();
  v9 = sub_1C992C65C(v7, v8);
  memcpy(v20, a2, sizeof(v20));
  sub_1C9932420(v20);
  memcpy(v21, __src, sizeof(v21));
  sub_1C9932420(v21);
  if (v9)
  {
    memcpy(v13, __srca, 0x41uLL);
    memcpy(v12, v19, 0x41uLL);
    v10 = static AudioConfiguration.== infix(_:_:)(v13, v12);
    memcpy(v14, v12, 0x41uLL);
    sub_1C97A6264(__srca, v15);
    sub_1C97A6264(v19, v15);
    sub_1C97E8084(v14);
    memcpy(v15, v13, 0x41uLL);
    sub_1C97E8084(v15);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1C992E67C()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CD330);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C98550DC();
  memcpy(v14, v0, sizeof(v14));
  sub_1C993AF4C();
  memcpy(v3, v4, v5);
  v6 = sub_1C985511C();
  sub_1C97BE20C(v6, v7);
  sub_1C97A639C(v14, v13);
  sub_1C9939600();
  sub_1C993AF40();
  sub_1C9A93DD8();
  memcpy(v13, v14, sizeof(v13));
  sub_1C97A6314();
  sub_1C9A93A18();
  memcpy(v12, v13, sizeof(v12));
  if (v1)
  {
    sub_1C9932420(v12);
  }

  else
  {
    sub_1C9932420(v12);
    memcpy(v11, v15, sizeof(v11));
    sub_1C97A6264(v15, v10);
    sub_1C97A6210();
    sub_1C9A93A18();
    memcpy(v10, v11, 0x41uLL);
    sub_1C97E8084(v10);
  }

  v8 = sub_1C9871794();
  v9(v8);
  sub_1C97AEB5C();
}

uint64_t sub_1C992E87C()
{
  sub_1C993AF4C();
  memcpy(v0, v1, v2);
  sub_1C992DEB4();
  return AudioConfiguration.hash(into:)();
}

uint64_t sub_1C992E8C4()
{
  sub_1C993AF4C();
  memcpy(v0, v1, v2);
  sub_1C9A93CC8();
  sub_1C992DEB4();
  AudioConfiguration.hash(into:)();
  return sub_1C9A93D18();
}

void sub_1C992E91C()
{
  sub_1C97AEB94();
  v2 = v1;
  v7 = v3;
  sub_1C97A2CEC(&qword_1EC3CD320);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97BE20C(v2, v2[3]);
  sub_1C9939600();
  sub_1C97FB364();
  if (v0)
  {
    sub_1C97A592C(v2);
  }

  else
  {
    sub_1C97A63F8();
    sub_1C98AE254();
    memcpy(v12, v11, 0x78uLL);
    sub_1C97A62C0();
    sub_1C98AE254();
    v5 = sub_1C98780E8();
    v6(v5);
    memcpy(&v12[120], v10, 0x41uLL);
    memcpy(v8, v12, 0xB9uLL);
    memcpy(v7, v12, 0xB9uLL);
    sub_1C99196CC(v8, v9);
    sub_1C97A592C(v2);
    memcpy(v9, v12, 0xB9uLL);
    sub_1C986EB9C(v9);
  }

  sub_1C97AEB5C();
}

BOOL sub_1C992EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_1C9A93B18();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_1C992EB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C992EC4C(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C992EC88()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CD2B8);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5];
  v7 = sub_1C98B7774();
  sub_1C97BE20C(v7, v8);
  sub_1C9939370();
  sub_1C9A93DD8();
  v10[15] = 0;
  sub_1C9A939C8();
  if (!v0)
  {
    v10[14] = 1;
    sub_1C9A939E8();
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1C992EDF0(double a1)
{
  sub_1C9A92528();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x1CCA919B0](*&v2);
}

double sub_1C992EE34(void *a1)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CD2A8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C9939370();
  sub_1C993AEA0();
  if (!v1)
  {
    sub_1C993ADA4();
    sub_1C9A938A8();
    sub_1C993ADA4();
    sub_1C9A938C8();
    v2 = v7;
    v8 = sub_1C993AE08();
    v9(v8, v4);
  }

  sub_1C97A592C(a1);
  sub_1C993AD28();
  return v2;
}

uint64_t sub_1C992EFC8(uint64_t a1)
{
  v2 = sub_1C993A0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F004(uint64_t a1)
{
  v2 = sub_1C993A0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992CA90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992F088(uint64_t a1)
{
  v2 = sub_1C993A044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F0C4(uint64_t a1)
{
  v2 = sub_1C993A044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F100(uint64_t a1)
{
  v2 = sub_1C993A098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F13C(uint64_t a1)
{
  v2 = sub_1C993A098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F178(uint64_t a1)
{
  v2 = sub_1C993A198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F1B4(uint64_t a1)
{
  v2 = sub_1C993A198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F228()
{
  sub_1C9A93CC8();
  sub_1C992D020();
  return sub_1C9A93D18();
}

uint64_t sub_1C992F284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992D948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992F2AC(uint64_t a1)
{
  v2 = sub_1C99393C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F2E8(uint64_t a1)
{
  v2 = sub_1C99393C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F32C()
{
  sub_1C9A93CC8();
  sub_1C992DEB4();
  return sub_1C9A93D18();
}

uint64_t sub_1C992F3B4(uint64_t a1)
{
  v2 = sub_1C9939600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F3F0(uint64_t a1)
{
  v2 = sub_1C9939600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F434()
{
  sub_1C9A93CC8();
  sub_1C992E87C();
  return sub_1C9A93D18();
}

uint64_t sub_1C992F4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992EB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992F4D4(uint64_t a1)
{
  v2 = sub_1C9939370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F510(uint64_t a1)
{
  v2 = sub_1C9939370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F564()
{
  v1 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C9A92528();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA919B0](*&v2);
  return sub_1C9A93D18();
}

void sub_1C992F5D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1C992EE34(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1C992F644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v6;
  v13[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v9 = *(a2 + 64);
  if (static TimeRange.== infix(_:_:)(v14, v13))
  {
    sub_1C9845534(v4, v8);
    if (v10)
    {
      if (v5)
      {
        if (v9)
        {
          if (v3 == v7 && v5 == v9)
          {
            return 1;
          }

          sub_1C97CB094();
          if (sub_1C9A93B18())
          {
            return 1;
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C992F704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C9AD6620 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x80000001C9AD6600 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C992F828(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000014;
}

void sub_1C992F890()
{
  sub_1C97AEB94();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C97A2CEC(&qword_1EC3CD318);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = *(v2 + 6);
  v13 = *(v2 + 7);
  v14 = v11;
  sub_1C97BE20C(v4, v4[3]);
  sub_1C9939540();
  sub_1C9A93DD8();
  v12 = v2[1];
  v15 = *v2;
  v16 = v12;
  v17 = v2[2];
  sub_1C97BD12C();
  sub_1C993AE70();
  sub_1C9A93A18();
  if (!v1)
  {
    *&v15 = v14;
    sub_1C97FB3CC();
    sub_1C97A2CEC(&qword_1EC3C82B8);
    sub_1C9939594(&qword_1EC3C8EF0);
    sub_1C993AE70();
    sub_1C9A93A18();
    LOBYTE(v15) = 2;
    sub_1C993AE64();
    sub_1C993AE70();
    sub_1C9A93998();
  }

  (*(v7 + 8))(v10, v5);
  sub_1C97AEB5C();
}

uint64_t sub_1C992FA74(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[5];
  v6 = v2[6];
  v8 = v2[8];
  MEMORY[0x1CCA919B0](*v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  MEMORY[0x1CCA919B0](v5);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v7);
  sub_1C984A234(a1, v6);
  if (!v8)
  {
    return sub_1C9A93CE8();
  }

  sub_1C9A93CE8();

  return sub_1C9A92528();
}

void sub_1C992FB74()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v19 = sub_1C97A2CEC(&qword_1EC3CD300);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  sub_1C97BE20C(v2, v2[3]);
  sub_1C9939540();
  sub_1C97FB364();
  if (v0)
  {
    sub_1C97A592C(v2);
  }

  else
  {
    v10 = v6;
    v11 = v4;
    sub_1C97BD0D8();
    v12 = v19;
    sub_1C98AE254();
    v28 = v25;
    v29 = v26;
    v30 = v27;
    sub_1C97A2CEC(&qword_1EC3C82B8);
    LOBYTE(v20[0]) = 1;
    sub_1C9939594(&qword_1EC3C8F10);
    sub_1C9A938F8();
    v13 = *&v21[0];
    v14 = sub_1C9A93878();
    v15 = v9;
    v17 = v16;
    (*(v10 + 8))(v15, v12);
    v20[0] = v28;
    v20[1] = v29;
    v20[2] = v30;
    *&v20[3] = v13;
    *(&v20[3] + 1) = v14;
    *&v20[4] = v17;
    memcpy(v11, v20, 0x48uLL);
    sub_1C984A444(v20, v21);
    sub_1C97A592C(v2);
    v21[0] = v28;
    v21[1] = v29;
    v21[2] = v30;
    v22 = v13;
    v23 = v14;
    v24 = v17;
    sub_1C984A4A0(v21);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C992FE18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C992FE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992F704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992FE94(uint64_t a1)
{
  v2 = sub_1C9939540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992FED0(uint64_t a1)
{
  v2 = sub_1C9939540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992FF14()
{
  sub_1C9A93CC8();
  sub_1C992FA74(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C992FF84()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C9930010(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = a1;
  v5[5] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C97F489C, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[6] = v9;
    *v9 = v7;
    sub_1C97DA950(v9);

    return sub_1C98A4500();
  }
}

uint64_t sub_1C9930194(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v4[3] = sub_1C97A2CEC(&unk_1EC3CC790);
  v4[4] = sub_1C9939FC0();
  v4[0] = a2;

  sub_1C99DC184(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C9930224()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C992FF84();
}

uint64_t sub_1C99302D4()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C9930224();
}

void *sub_1C9930364@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  v4 = type metadata accessor for _SNClassificationResult();
  v5 = objc_allocWithZone(v4);
  sub_1C984A444(__dst, v9);
  v6 = sub_1C9847CE8();
  v10[3] = v4;
  v10[0] = v6;
  v7 = objc_allocWithZone(SNClassificationResult);
  result = sub_1C98490D8(v10);
  *a2 = result;
  return result;
}

uint64_t sub_1C9930404()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void sub_1C9930448(void *a1)
{
  type metadata accessor for SNUtils();
  if (*(sub_1C9A18E9C(a1, 0) + 16) != 1)
  {

    type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000035, 0x80000001C9AD9BB0);
    v16 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v16);

    v17 = sub_1C993AD84();
    sub_1C9929478(v17, v18, v19, v20, v21, v22);
    sub_1C97FB324();

    swift_willThrow();
    return;
  }

  v2 = [a1 inputDescriptionsByName];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v3 = sub_1C9A92328();

  v4 = sub_1C98EE6C0();
  v6 = sub_1C98782A4(v4, v5, v3);

  if (!v6 || (v7 = [v6 multiArrayConstraint]) == 0)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C993AD60(v24, v23 + 27, v25);
    swift_willThrow();
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_1C9A16FF8(a1);
  sub_1C9A17104(v9);
  v11 = v10;

  if (v11 <= 2)
  {
    v26 = sub_1C9A16FF8(a1);
    sub_1C9A18C50(v26, 1u);
    v28 = v27;

    if (v28 < 2)
    {
      type metadata accessor for SNError();
      sub_1C98573F8();
      v15 = v29 + 23;
      goto LABEL_17;
    }

    sub_1C999C0C8(a1);
    if (!v30)
    {
      type metadata accessor for SNError();
      sub_1C98573F8();
      v15 = v32 + 60;
      goto LABEL_17;
    }

    v31 = [v8 dataType];
    if (v31 == 65552 || v31 == 65568 || v31 == 65600)
    {

      return;
    }

    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C993AD60(v34, v33 + 84, v35);
    swift_willThrow();

LABEL_8:
    return;
  }

  type metadata accessor for SNError();
  sub_1C98573F8();
  v15 = v14 + 92;
LABEL_17:
  sub_1C993AD60(v12, v15, v13);
  swift_willThrow();
}

void sub_1C99307DC(uint64_t a1, uint64_t a2)
{
  sub_1C987E9B0();
  if (v2)
  {
    return;
  }

  v5 = *(v4 + 16);

  if (v5 != 1)
  {
    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    v9 = 4;
LABEL_6:
    sub_1C9813764(v8, v9);
    return;
  }

  sub_1C987EA14();
  v7 = v6;
  if (*(v6 + 16) != 1)
  {

    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    v9 = 5;
    goto LABEL_6;
  }

  sub_1C98813B4();
  sub_1C97FB324();

  type metadata accessor for E5RTIOPort();
  *(swift_initStackObject() + 16) = a2;
  v10 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor();
  *(swift_initStackObject() + 16) = v10;
  v11 = sub_1C9881C2C();
  swift_setDeallocating();
  sub_1C9881C7C();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptorDataType();
  *(swift_initStackObject() + 16) = v11;
  v12 = sub_1C987EDA8();
  if (v12 != 4)
  {

    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    *v13 = 6;
    goto LABEL_13;
  }

  if (*(v7 + 16))
  {

    sub_1C98813B4();

    inited = swift_initStackObject();
    sub_1C993AF58(inited);
    sub_1C988196C();
    swift_setDeallocating();
    sub_1C98819BC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    v15 = swift_initStackObject();
    sub_1C993AF58(v15);
    v16 = sub_1C9881B70();
    v18 = sub_1C9A0840C(v16, v17);
    swift_setDeallocating();
    sub_1C9881C7C();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    v19 = v18[2];
    if (v19)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1C9A93698();
      v20 = 4;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C993AD28();
        sub_1C9A936B8();
        sub_1C9A93688();
        ++v20;
        --v19;
      }

      while (v19);

      v21 = v25;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for SNUtils();
    sub_1C9A17104(v21);
    v23 = v22;

    if (v23 == 1)
    {
      goto LABEL_14;
    }

    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    *v24 = 7;
LABEL_13:
    swift_willThrow();
LABEL_14:
    swift_setDeallocating();
    sub_1C9881DCC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    return;
  }

  __break(1u);
}

id sub_1C9930CA8()
{
  sub_1C993AF0C();
  type metadata accessor for SNMLModelAdapter();
  sub_1C97F07FC();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  type metadata accessor for AnySNMLModel();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = &off_1F4937370;
  type metadata accessor for SNMLModelHashableUncodableWrapper();
  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v3;
  v4 = objc_allocWithZone(v0);
  return sub_1C9930EA0();
}

id sub_1C9930D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper();
  swift_allocObject();

  v8 = sub_1C98EE6C0();
  sub_1C99359CC(v8, v9, a3, a4);
  v10 = objc_allocWithZone(v5);
  v11 = sub_1C9930EA0();

  return v11;
}

uint64_t sub_1C9930E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C993AE24();
  v6 = swift_allocObject();
  v7 = sub_1C9871794();
  sub_1C99359CC(v7, v8, v4, a4);
  return v6;
}

id sub_1C9930EA0()
{
  v2 = v0;
  sub_1C97FB324();
  ObjectType = swift_getObjectType();
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v0[16];
  v96[0] = *v0;
  v96[1] = v5;
  v97 = v6;
  v7 = sub_1C99316D0(v96);
  if (!v1)
  {
    v13 = v9;
    v14 = v10;
    v98 = v8;
    if (v8 < 0)
    {
      v88 = v6;
      v20 = v8 & 0x7FFFFFFFFFFFFFFFLL;

      sub_1C99307DC(v21, v20);
      v92 = ObjectType;
      v93 = v13;
      v27 = v2;

      sub_1C987E9B0();
      v58 = v28;
      v91 = v14;

      if (*(v58 + 16))
      {
        v59 = *(v58 + 32);
      }

      else
      {
        v59 = 0;
      }

      sub_1C97CB094();
      sub_1C9881404();
      sub_1C97FB3E4();

      type metadata accessor for E5RTIOPort();
      *(swift_initStackObject() + 16) = v59;
      v60 = sub_1C988196C();
      swift_setDeallocating();
      sub_1C98819BC();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      type metadata accessor for E5RTTensorDescriptor();
      *(swift_initStackObject() + 16) = v60;
      v61 = sub_1C9881B70();
      sub_1C9A0840C(v61, v62);
      sub_1C97FB3E4();
      swift_setDeallocating();
      sub_1C9881C7C();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      v86 = sub_1C9A1692C(v91);
      v64 = v63;

      if (v64)
      {
        v65 = sub_1C98DE2C4();
        sub_1C97A6368(v65, v66, v88);
        sub_1C97A8E8C();
        sub_1C97AA928();
        v67 = swift_allocError();
        sub_1C993AE88(v67, v68);
        sub_1C993AFA4();

        v29 = sub_1C993ACE8();
        sub_1C986EC4C(v29, v30);
        goto LABEL_14;
      }

      v69 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C97CDE50(v69);
      v71 = v70;

      sub_1C97A2CEC(&unk_1EC3C6A60);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1C9A9EDD0;
      *(v72 + 32) = v86;
      v84 = v71;
      *(v72 + 40) = v71;
      *(v72 + 44) = 1;
      *(v72 + 48) = 0;

      sub_1C987EA14();
      v74 = v73;
      v75 = sub_1C993ACE8();
      sub_1C986EC4C(v75, v76);

      LOBYTE(v96[0]) = 0;
      v77 = &v27[OBJC_IVAR____SNClassifySoundRequest_impl];
      *v77 = v4;
      *(v77 + 1) = v5;
      v55 = v27;
      v77[16] = v88;
      *(v77 + 3) = v86;
      *(v77 + 8) = v84;
      *(v77 + 9) = 1;
      *(v77 + 5) = 0;
      *(v77 + 6) = 0x3FE0000000000000;
      *(v77 + 7) = v72;
      *(v77 + 4) = 0u;
      *(v77 + 5) = 0u;
      *(v77 + 12) = 0;
      v77[104] = 0;
      *(v77 + 14) = v74;
    }

    else
    {
      v90 = v5;
      v92 = ObjectType;
      v15 = v7;
      v16 = v8;
      v17 = swift_getObjectType();
      v18 = *(v16 + 16);
      swift_unknownObjectRetain();
      v19 = v18(v17, v16);
      sub_1C9930448(v19);
      v85 = v2;
      v87 = v4;

      type metadata accessor for SNModelMetadataUtils();
      v22 = v98;
      v23 = v18(v17, v98);
      v82 = sub_1C9A3C4BC(v23, 16000);

      type metadata accessor for SNUtils();
      v24 = v18(v17, v22);
      v25 = sub_1C9A16FF8(v24);

      sub_1C9A16A00(v25);
      sub_1C97FB3E4();

      if (!v24)
      {
        sub_1C97A6368(v4, v90, v6);
        sub_1C97A8E8C();
        sub_1C97AA928();
        v31 = swift_allocError();
        sub_1C993AE88(v31, v32);
        v33 = v98;
        sub_1C993ADC8(v15, v98);
        sub_1C993AF8C(v15, v33);
        goto LABEL_14;
      }

      [v24 integerValue];

      v26 = v18(v17, v98);
      sub_1C9A17240(v26, v82);
      v81 = v34;

      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
      sub_1C97CDE50(v35);

      v36 = sub_1C9A93168();
      v39 = sub_1C9A17398(v36, v37, v38, v81);
      v78 = v40;
      v79 = v39;
      v83 = v41;
      v80 = HIDWORD(v40);
      v42 = v15;
      v43 = v98;
      v44 = v18(v17, v98);
      v89 = sub_1C9A17664(v44);

      v45 = sub_1C97C6E9C();
      sub_1C993ADC8(v42, v43);
      sub_1C993AF8C(v42, v43);
      v46 = *&v45[OBJC_IVAR____SNTimeDurationConstraint_impl];
      v47 = *&v45[OBJC_IVAR____SNTimeDurationConstraint_impl + 8];
      v49 = *&v45[OBJC_IVAR____SNTimeDurationConstraint_impl + 16];
      v48 = *&v45[OBJC_IVAR____SNTimeDurationConstraint_impl + 24];
      v50 = *&v45[OBJC_IVAR____SNTimeDurationConstraint_impl + 40];
      v98 = *&v45[OBJC_IVAR____SNTimeDurationConstraint_impl + 32];
      v94 = v50;
      LOBYTE(v44) = v45[OBJC_IVAR____SNTimeDurationConstraint_impl + 48];
      v51 = sub_1C98B7774();
      sub_1C97C6634(v51, v52, v49, v48, v53, v54, v44);

      LOBYTE(v96[0]) = v44;
      v55 = v85;
      v56 = &v85[OBJC_IVAR____SNClassifySoundRequest_impl];
      *v56 = v87;
      *(v56 + 1) = v90;
      v56[16] = v6;
      *(v56 + 3) = v79;
      *(v56 + 8) = v78;
      *(v56 + 9) = v80;
      *(v56 + 5) = v83;
      *(v56 + 6) = 0x3FE0000000000000;
      *(v56 + 7) = v46;
      *(v56 + 8) = v47;
      *(v56 + 9) = v49;
      *(v56 + 10) = v48;
      *(v56 + 11) = v98;
      *(v56 + 12) = v94;
      v56[104] = v44;
      *(v56 + 14) = v89;
    }

    v95.receiver = v55;
    v95.super_class = v92;
    return objc_msgSendSuper2(&v95, sel_init);
  }

  v11 = sub_1C98DE2C4();
  sub_1C97A6368(v11, v12, v6);
LABEL_14:
  sub_1C993AE7C();
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C99316D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v1 = sub_1C9A92478();
      sub_1C99317E4();
    }

    else
    {
    }
  }

  else
  {
  }

  return sub_1C988EB2C();
}

uint64_t sub_1C99317B0(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return sub_1C9A92478();
  }

  else
  {
    return 0;
  }
}

void *sub_1C99317E4()
{
  sub_1C993AF0C();
  v1 = sub_1C9A924A8();
  v3 = v2;
  if (v1 == sub_1C9A924A8() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_1C9A93B18();

    if ((v6 & 1) == 0)
    {
      v7 = sub_1C9A924A8();
      v9 = sub_1C98C751C(v7, v8);
      if (v0)
      {

        type metadata accessor for SNError();
        sub_1C9A935B8();

        v10 = sub_1C9A924A8();
        MEMORY[0x1CCA90230](v10);

        v11 = sub_1C993AD84();
        sub_1C9929478(v11, v12, v13, v14, v15, v16);
        sub_1C97FB324();

        swift_willThrow();
      }

      else
      {
        v21 = v9;

        v22 = objc_autoreleasePoolPush();
        v23 = objc_autoreleasePoolPush();
        if (qword_1EC3C55D0 != -1)
        {
          swift_once();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v21;
        MEMORY[0x1EEE9AC00](v24);

        v0 = sub_1C97E2E88();

        objc_autoreleasePoolPop(v23);
        objc_autoreleasePoolPop(v22);
      }

      return v0;
    }
  }

  if (sub_1C989BF88())
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1C98C89D4(35, v17);
  if (!v0)
  {
    v19 = v18;
    type metadata accessor for SNMLModelAdapter();
    sub_1C97F07FC();
    v0 = swift_allocObject();
    v0[2] = v19;
  }

  return v0;
}

uint64_t (*sub_1C9931AEC(uint64_t a1, uint64_t (*a2)(uint64_t)))(uint64_t)
{
  if (!a1)
  {
    sub_1C986ECA4();
    sub_1C97AA928();
    v6 = swift_allocError();
    sub_1C993AE88(v6, v7);
    goto LABEL_5;
  }

  v3 = a2;
  swift_getObjectType();
  v5 = v3(a1);
  if (v2)
  {
LABEL_5:
    swift_getObjectType();
    sub_1C993AE7C();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v3 = v5;
  sub_1C97C924C();
  sub_1C993AE7C();
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_1C9931BA8()
{
  sub_1C993AF0C();
  sub_1C9A924A8();
  v2 = objc_allocWithZone(v0);
  v3 = sub_1C9930EA0();

  return v3;
}

void sub_1C9931CF4(double a1)
{
  if (a1 >= 0.0 && a1 < 1.0)
  {
    *(v1 + OBJC_IVAR____SNClassifySoundRequest_impl + 48) = a1;
  }

  else
  {
    v3 = sub_1C9A924A8();
    v5 = v4;
    sub_1C9939654();
    sub_1C97AA928();
    swift_allocError();
    *v6 = v3;
    v6[1] = v5;
    v6[2] = 0xD00000000000003ELL;
    v6[3] = 0x80000001C9AD9B70;
    swift_willThrow();
  }
}

void sub_1C9931ECC()
{
  v2 = v0;
  sub_1C993AE24();
  type metadata accessor for SNUtils();
  v3 = sub_1C9931F5C();
  v4 = sub_1C9871794();
  v6 = sub_1C9A17398(v4, v5, v1, v3);
  v8 = v7;
  v10 = v9;

  v11 = (v2 + OBJC_IVAR____SNClassifySoundRequest_impl);
  v11[3] = v6;
  v11[4] = v8;
  v11[5] = v10;
}

id sub_1C9931F5C()
{
  v1 = v0 + OBJC_IVAR____SNClassifySoundRequest_impl;
  v2 = *(v0 + OBJC_IVAR____SNClassifySoundRequest_impl + 56);
  v3 = *(v0 + OBJC_IVAR____SNClassifySoundRequest_impl + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = type metadata accessor for _SNTimeDurationConstraint();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____SNTimeDurationConstraint_impl];
  *v11 = v2;
  *(v11 + 1) = v3;
  *(v11 + 2) = v4;
  *(v11 + 3) = v5;
  *(v11 + 4) = v6;
  *(v11 + 5) = v7;
  v11[48] = v8;
  v12 = sub_1C97CB094();
  sub_1C993AEE8(v12, v13);
  v17.receiver = v10;
  v17.super_class = v9;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v18[3] = v9;
  v18[0] = v14;
  v15 = objc_allocWithZone(SNTimeDurationConstraint);
  return sub_1C997FCCC(v18);
}

uint64_t sub_1C99320D8()
{
  swift_getObjectType();
  v3 = (v0 + OBJC_IVAR____SNClassifySoundRequest_impl);
  sub_1C993AF78();
  v4 = sub_1C993AD34();
  sub_1C993946C(v4, v5, v6);
  v7 = sub_1C99316D0(v32);
  v9 = v8;
  v10 = sub_1C993AD34();
  sub_1C97A6368(v10, v11, v12);
  if (!v1)
  {
    if (v9 < 0)
    {
      sub_1C986ECA4();
      sub_1C97AA928();
      swift_allocError();
      sub_1C9813764(v29, 3);
      v30 = sub_1C993AE14();
      sub_1C986EC4C(v30, v31);
    }

    else
    {
      sub_1C993AF78();
      v14 = sub_1C993AE14();
      sub_1C99396A8(v14, v15);
      v16 = sub_1C993AD34();
      sub_1C993946C(v16, v17, v18);
      v19 = sub_1C99317B0(v32);
      v20 = sub_1C993AD34();
      sub_1C97A6368(v20, v21, v22);
      if (!v19)
      {
        v19 = sub_1C9A92478();
      }

      v23 = v3[6];
      v24 = *(v3 + 3);
      v25 = *(v3 + 4);
      v26 = *(v3 + 5);
      type metadata accessor for SNSoundClassifier();
      v2 = swift_allocObject();
      sub_1C9933718(v7, v9, v24, v25, v26, v19, v23);
      v27 = sub_1C993AE14();
      sub_1C986EC4C(v27, v28);
    }
  }

  return v2;
}

id _SNClassifySoundRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR____SNClassifySoundRequest_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR____SNClassifySoundRequest_impl], __dst, 0x78uLL);
  sub_1C97A639C(__dst, v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t _SNClassifySoundRequest.hash.getter()
{
  sub_1C993AFBC(v4);
  sub_1C993AFBC(v3);
  sub_1C9A93CC8();
  sub_1C97A639C(v4, &v2);
  sub_1C992DEB4();
  v0 = sub_1C9A93D18();
  sub_1C9932420(v4);
  return v0;
}

uint64_t _SNClassifySoundRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C9812F64(a1, &v15, &unk_1EC3C5E60);
  if (v16)
  {
    sub_1C97A2D34(&v15, v14);
    sub_1C97BD360(v14, v13);
    if (swift_dynamicCast())
    {
      v2 = v12;
      v3 = OBJC_IVAR____SNClassifySoundRequest_impl;
      sub_1C993AFBC(v8);
      sub_1C993AFBC(v7);
      memcpy(__dst, &v2[v3], sizeof(__dst));
      memcpy(__src, &v2[v3], sizeof(__src));
      sub_1C97A639C(v8, v11);
      sub_1C97A639C(__dst, v11);
      v4 = sub_1C992C65C(v7, __src);
      memcpy(v10, __src, sizeof(v10));
      sub_1C9932420(v10);
      memcpy(v11, v7, sizeof(v11));
      sub_1C9932420(v11);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v14);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id _SNClassifySoundRequest.init(coder:)()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  sub_1C97A1E14();
  v2 = objc_allocWithZone(ObjectType);
  memcpy(&v2[OBJC_IVAR____SNClassifySoundRequest_impl], __src, 0x78uLL);
  v5.receiver = v2;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  swift_getObjectType();
  sub_1C97FB318();
  sub_1C993AE7C();
  swift_deallocPartialClassInstance();
  return v3;
}

Swift::Void __swiftcall _SNClassifySoundRequest.encode(with:)(NSCoder with)
{
  memcpy(__dst, (v1 + OBJC_IVAR____SNClassifySoundRequest_impl), sizeof(__dst));
  sub_1C97A639C(__dst, v2);
  sub_1C979FCB4();
  sub_1C9932420(__dst);
}

void sub_1C9932884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v62 = v24;
  ObjectType = swift_getObjectType();
  sub_1C97A2CEC(&unk_1EC3CC710);
  sub_1C97AE9C8();
  v59 = v26;
  v60 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  v58 = &v51 - v28;
  memcpy(v70, (v20 + OBJC_IVAR____SNClassifySoundRequest_impl), sizeof(v70));
  sub_1C97A639C(v70, v64);
  v29 = MGGetProductType();
  sub_1C989B2F8(v29, v65);
  if (v65[6])
  {
    v30 = v65[0];

    sub_1C989ACF0(v30, v66);
    v31 = v68;
    v69 = v66[1];

    sub_1C993973C(&v69, &qword_1EC3C7DB0);
    a10 = v67;
    sub_1C993973C(&a10, &qword_1EC3C7DB8);

    v31(v64, v32);

    v33 = v64[0];
    v34 = v64[1];
    v36 = v64[2];
    v35 = v64[3];
    v38 = v64[4];
    v37 = v64[5];
    v39 = v64[6];
    v40 = BYTE1(v64[6]);
    v41 = BYTE2(v64[6]);
    v42 = BYTE3(v64[6]);
    v43 = BYTE4(v64[6]);
    v44 = BYTE5(v64[6]);
    v45 = v64[7];
    v46 = v64[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(v64, &qword_1EC3D33B0, 0x41uLL);
    v57 = v64[7];
    v55 = BYTE5(v64[6]);
    v56 = LOBYTE(v64[8]);
    v53 = BYTE3(v64[6]);
    v54 = BYTE4(v64[6]);
    v52 = BYTE2(v64[6]);
    v40 = BYTE1(v64[6]);
    v39 = v64[6];
    v38 = v64[4];
    v37 = v64[5];
    v36 = v64[2];
    v35 = v64[3];
    v33 = v64[0];
    v34 = v64[1];
    sub_1C97A6264(v64, v63);
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v44 = v55;
    v46 = v56;
    v45 = v57;
  }

  v64[0] = v33;
  v64[1] = v34;
  v64[2] = v36;
  v64[3] = v35;
  v64[4] = v38;
  v64[5] = v37;
  LOBYTE(v64[6]) = v39;
  BYTE1(v64[6]) = v40;
  BYTE2(v64[6]) = v41;
  BYTE3(v64[6]) = v42;
  BYTE4(v64[6]) = v43;
  BYTE5(v64[6]) = v44;
  v64[7] = v45;
  LOBYTE(v64[8]) = v46;
  memcpy(v71, v64, 0x41uLL);
  v47 = sub_1C986A0E4(v70, v71, v62);
  sub_1C9932420(v70);
  sub_1C97E8084(v64);
  if (!v21)
  {
    v63[0] = v47;

    v48 = sub_1C98B7774();
    sub_1C97A2CEC(v48);
    sub_1C97A2CEC(&unk_1EC3C8670);
    sub_1C9939700(&unk_1EC3CD380);
    sub_1C9A91F68();

    sub_1C9939700(&unk_1EC3CC7A0);
    sub_1C9A91F28();

    v49 = sub_1C9871794();
    v50(v49);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9932C5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  sub_1C9932D9C();
  sub_1C97A2CEC(&qword_1EC3C7C70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C9A9EE60;
  *(result + 32) = 1;
  if (v3 < *(&v2 + 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(v3, *(&v2 + 1)))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 40) = v3 - *(&v2 + 1);
  if (v4 < *(&v3 + 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFSUB__(v4, *(&v3 + 1)))
  {
    *(result + 48) = v4 - *(&v3 + 1);
    sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C9939700(&qword_1EC3C7C88);
    return sub_1C9A91B88();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C9932D9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v0[5];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v0[4];
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7 * v1;
  if ((v7 * v1) >> 64 != (v7 * v1) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v0[6];
  if (__OFADD__(v8, v9))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 + v9 >= v5)
  {
    sub_1C97AE9C4(v5);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1C9932E0C(uint64_t *a1@<X1>, int a2@<W2>, void *a3@<X8>, double a4@<D0>, uint64_t a5)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v27 = a5;
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = a1[2];
  sub_1C9A93168();
  sub_1C993AE54();
  *a1 = sub_1C9A93118();
  *(a1 + 2) = v11;
  *(a1 + 3) = v12;
  a1[2] = v13;
  type metadata accessor for SNSoundClassifier();
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = sub_1C9A93168();
  v24 = v14;
  v25 = v15;
  v26 = v16;
  sub_1C9932F64();
  if (!v5)
  {
    memcpy(a3, __src, 0x48uLL);
  }
}

void sub_1C9932F64()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v9 + 16))(ObjectType, v9);
  sub_1C993923C(v13);
  if (v14)
  {
    v15 = sub_1C9A92478();

    v16 = [v7 featureValueForName_];

    if (v16 && (v17 = [v16 dictionaryValue], v16, sub_1C97BD318(0, &qword_1EC3C54B0), v18 = sub_1C9A92328(), v17, v19 = sub_1C9934528(v18), , v19))
    {

      v20 = sub_1C98B7774();
      v22 = sub_1C9938970(v20, v21);

      v23 = *(v5 + 40);
      *v11 = *v5;
      *(v11 + 8) = *(v5 + 8);
      *(v11 + 16) = *(v5 + 16);
      *(v11 + 32) = *(v5 + 32);
      *(v11 + 40) = v23;
      *(v11 + 48) = v22;
      *(v11 + 56) = v3;
      *(v11 + 64) = v1;
    }

    else
    {
      sub_1C97A8E8C();
      sub_1C97AA928();
      v24 = swift_allocError();
      sub_1C993AE88(v24, v25);
    }
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97AA928();
    v26 = swift_allocError();
    sub_1C993AE88(v26, v27);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9933138@<X0>(uint64_t *a1@<X8>)
{
  sub_1C986ECA4();
  sub_1C97AA928();
  result = swift_allocError();
  *a1 = result;
  *v3 = 2;
  return result;
}

void sub_1C993317C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1C98858B8(a2, a3, *a1);
  if (!v4)
  {
    *a4 = v6;
    a4[1] = v7;
  }
}

uint64_t sub_1C99331C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1C97A2CEC(&qword_1EC3C6948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  sub_1C97CE3DC(v7, v8);
  result = sub_1C9A92348();
  *a4 = result;
  return result;
}

void sub_1C9933270(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X7>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7, uint64_t a8)
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = *a1;
  v44 = *(a2 + 2);
  v42 = *a2;
  v43 = *(a2 + 3);
  v41 = a2[2];
  sub_1C9A93168();
  v40 = v14;
  sub_1C993AE44();
  if (!(v18 ^ v19 | v17))
  {
    goto LABEL_21;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v38 = v15;
  v39 = v16;
  sub_1C9A93168();
  sub_1C993AE54();
  *a2 = sub_1C9A93118();
  *(a2 + 2) = v20;
  *(a2 + 3) = v21;
  a2[2] = v22;
  v23 = sub_1C993AD28();
  v25 = sub_1C98850D0(v23, v24, v13, a7, a8);
  if (!v8)
  {
    v26 = v25;
    v27 = *(v25 + 16);
    v28 = a4;
    if (v27 == *(a4 + 16))
    {
      if (v27)
      {
        v45 = MEMORY[0x1E69E7CC0];

        sub_1C97B7EE8();
        v29 = v45;
        v30 = *(v45 + 16);
        v31 = 32;
        do
        {
          v32 = *(v26 + v31);
          if (v30 >= *(v45 + 24) >> 1)
          {
            sub_1C97B7EE8();
          }

          *(v45 + 16) = v30 + 1;
          *(v45 + 8 * v30 + 32) = v32;
          v31 += 4;
          ++v30;
          --v27;
        }

        while (v27);

        v28 = a4;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      sub_1C993ADB0();
      v37 = sub_1C992C4EC(v28, v29, v34, v35, v36);
      *a5 = v42;
      *(a5 + 8) = v44;
      *(a5 + 12) = v43;
      *(a5 + 16) = v41;
      *(a5 + 24) = v38;
      *(a5 + 32) = v40;
      *(a5 + 40) = v39;
      *(a5 + 48) = v37;
      *(a5 + 56) = 0;
      *(a5 + 64) = 0;
    }

    else
    {

      sub_1C986ECA4();
      sub_1C97AA928();
      swift_allocError();
      sub_1C9813764(v33, 3);
    }
  }
}

void sub_1C993351C(uint64_t *a1@<X8>)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1C99320D8();
  if (v1)
  {
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v5 = v4;
    objc_autoreleasePoolPop(v3);
    a1[3] = swift_getObjectType();
    *a1 = v5;
  }
}

id _SNClassifySoundRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9933718(uint64_t a1, uint64_t a2, CMTimeValue a3, uint64_t a4, CMTimeEpoch a5, void *a6, double a7)
{
  v9 = v7;
  *&v28.timescale = a4;
  v28.epoch = a5;
  v28.value = a3;
  *(v7 + 16) = 0;
  type metadata accessor for _SNClassifySoundRequest();
  swift_getObjectType();
  v14 = *(a2 + 16);
  v15 = v14();
  sub_1C9930448(v15);
  if (v8)
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
  }

  else
  {

    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    *(v9 + 24) = a7;
    *(v9 + 32) = v28.value;
    *(v9 + 40) = *&v28.timescale;
    *(v9 + 48) = v28.epoch;
    *(v9 + 56) = a6;
    type metadata accessor for SNModelMetadataUtils();
    swift_unknownObjectRetain();
    v27 = a6;
    v16 = sub_1C98DE2C4();
    v17 = (v14)(v16);
    v18 = sub_1C9A3C55C(v17, MEMORY[0x1E69E7CD0]);

    *(v9 + 88) = 0;
    *(v9 + 96) = v18;
    v19 = sub_1C98DE2C4();
    v20 = (v14)(v19);
    v21 = sub_1C9A3C4BC(v20, 16000);

    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1C97CDE50(v22);
    LODWORD(v20) = v23;

    time = v28;
    CMTimeConvertScale(&v29, &time, v20, kCMTimeRoundingMethod_RoundTowardZero);
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1C9A180B0(v24);
    LODWORD(v20) = v25;

    swift_unknownObjectRelease();
    *(v9 + 80) = v20;
  }

  return v9;
}

id sub_1C9933968(double a1, uint64_t a2, uint64_t a3, int a4)
{
  v93[6] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v93[0] = 0;
  v9 = sub_1C9A761F8(v8, v93);
  if (!v9)
  {
    v34 = v93[0];
    sub_1C9A913C8();

    swift_willThrow();
    return v9;
  }

  v10 = v93[0];
  v11 = sub_1C9A92478();
  v12 = sub_1C97C924C();
  sub_1C9A6B534(v12, v13);

  v14 = sub_1C9A92478();
  v93[0] = 0;
  v15 = sub_1C993AD44();
  v18 = sub_1C9A72FAC(v15, v16, v14, v17);

  if (!v18)
  {
    v35 = v93[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_37;
  }

  v91 = a4;
  v19 = v93[0];
  v20 = sub_1C9A92478();
  v93[0] = 0;
  v21 = sub_1C993AD44();
  v24 = sub_1C9A74DF0(v21, v22, v20, v23);

  if (!v24)
  {
    v36 = v93[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_37;
  }

  v25 = v93[0];
  v26 = sub_1C9A92478();
  v93[0] = 0;
  v27 = sub_1C993AD44();
  v30 = sub_1C9A75428(v27, v28, v26, v29);

  if (!v30)
  {
    v37 = v93[0];
    sub_1C97FB324();
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_37;
  }

  v31 = v93[0];
  v32 = sub_1C98DE2C4();
  sub_1C9A3B76C(v32, v33, a3);
  if (!v4)
  {
    v90 = v30;
    v38 = sub_1C9A92478();
    v93[0] = 0;
    v39 = sub_1C993AD44();
    v42 = sub_1C9A7347C(v39, v40, v38, 1, v41);

    v43 = v93[0];
    if (!v42)
    {
      v57 = v93[0];
      sub_1C9A913C8();

      swift_willThrow();
      v58 = v90;
LABEL_36:

      goto LABEL_37;
    }

    v88 = v18;
    v89 = v24;
    v85 = v42;
    type metadata accessor for SNModelMetadataUtils();
    ObjectType = swift_getObjectType();
    v44 = *(a3 + 16);
    v45 = v43;
    v46 = v44(ObjectType, a3);
    v87 = sub_1C9A3C4BC(v46, 16000);

    v47 = v44(ObjectType, a3);
    v48 = [v47 inputDescriptionsByName];

    sub_1C97BD318(0, &qword_1EC3C54D0);
    v49 = sub_1C9A92328();

    v50 = sub_1C98BBCAC(v49);

    if (v50)
    {
      v51 = [v50 multiArrayConstraint];

      if (v51)
      {
        v52 = [v51 shape];

        sub_1C97BD318(0, &qword_1EC3C54B0);
        sub_1C97FB318();
        sub_1C9A92798();
      }
    }

    type metadata accessor for SNUtils();
    v53 = sub_1C9A16DC8();

    v54 = a1 >= 0.0 && a1 < 1.0;
    if (!v54)
    {
      sub_1C99392AC();
      sub_1C97AA928();
      v55 = swift_allocError();
      sub_1C993AE88(v55, v56);

      return v9;
    }

    sub_1C9A76554(v87, 1, v53, v93);
    v59 = sub_1C993AC94();
    if (!sub_1C9A762F8(v59, v60, v88, v89, 0, 0, v61, v62))
    {
      v81 = v92;
      sub_1C9A913C8();

      swift_willThrow();
LABEL_35:
      v58 = v85;
      goto LABEL_36;
    }

    sub_1C993AE44();
    if (v54 ^ v66 | v65)
    {
      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    if (v63 > v64)
    {
      if (v67)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v63 = v64;
    }

    if (v63 > -1.0)
    {
      if (v63 < 4294967300.0)
      {
        v68 = v63;
        v69 = v92;
        sub_1C9A76640(v87, v68, v91, v53, v93);
        v70 = sub_1C993AC94();
        if (sub_1C9A762F8(v70, v71, v89, v90, 0, 0, v72, v73))
        {
          v74 = v92;
          sub_1C9A76554(v87, v68, 1, v93);
          v75 = sub_1C993AC94();
          v79 = sub_1C9A762F8(v75, v76, v90, v85, 0, 0, v77, v78);
          v80 = v92;
          if (v79)
          {
            sub_1C9A695C8(v9);
            sub_1C9A69B8C(v9);

            return v9;
          }

          v84 = v80;
          sub_1C9A913C8();

          swift_willThrow();
LABEL_37:

          return v9;
        }

        v82 = v92;
        sub_1C9A913C8();

        swift_willThrow();
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return v9;
}

uint64_t sub_1C9934044(void *a1, uint64_t a2, void (*a3)(void))
{
  __src[9] = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 88);
  v6 = v5 < 1;
  v7 = v5 - 1;
  if (v6)
  {
    v10 = objc_opt_self();
    __src[0] = 0;
    v11 = sub_1C9A7608C(v10, a1, __src);
    v12 = __src[0];
    if (v11)
    {
      v24 = a3;
      sub_1C9A924A8();
      v13 = v12;
      sub_1C9932F64();
      v14 = v4;
      if (!v4)
      {

        memcpy(__dst, __src, sizeof(__dst));
        v16 = type metadata accessor for _SNClassificationResult();
        v17 = objc_allocWithZone(v16);
        v18 = sub_1C9847CE8();
        __dst[3] = v16;
        __dst[0] = v18;
        v19 = objc_allocWithZone(SNClassificationResult);
        v20 = sub_1C98490D8(__dst);
        sub_1C99343A8(v20, a1, *(v3 + 80));
        [v20 timeRange];
        *&__dst[3] = v26;
        __dst[5] = v27;
        __dst[0] = v25[0];
        __dst[1] = v25[1];
        __dst[2] = v25[2];
        sub_1C993AE70();
        v24();
        sub_1C9A92F08();
        sub_1C993AE70();
        v24();
        sub_1C993AE54();
        sub_1C9A92F18();
        [v20 setTimeRange_];
        sub_1C97A2CEC(&unk_1EC3C6E20);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1C9A9DF30;
        *(v23 + 32) = v20;
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v15 = __src[0];
      v14 = sub_1C9A913C8();

      swift_willThrow();
    }
  }

  else
  {
    *(v3 + 88) = v7;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_10:

  if (v23 >> 62)
  {
    sub_1C97A2CEC(&unk_1EC3C8670);
    v21 = sub_1C9A93788();
  }

  else
  {
    sub_1C9A93B78();
    v21 = v23;
  }

  return v21;
}

void sub_1C99343A8(void *a1, void *a2, unsigned int a3)
{
  sub_1C9A3B888(a2, 0, v27);
  if (!v3)
  {
    sub_1C993AE44();
    if (!(v9 ^ v10 | v8))
    {
      __break(1u);
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_8;
    }

    if (v7 >= 9.22337204e18)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v11 = v7;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1C97CDE50(v12);
    v14 = v13;

    CMTimeMake(&v23, v11, v14);
    value = v23.value;
    epoch = v23.epoch;
    v17 = *&v23.timescale;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1C97CDE50(v18);
    LODWORD(v11) = v19;

    CMTimeMake(&v23, a3, v11);
    v20 = v23.value;
    v21 = v23.epoch;
    v22 = *&v23.timescale;
    v23.value = value;
    *&v23.timescale = v17;
    v23.epoch = epoch;
    v24 = v20;
    v25 = v22;
    v26 = v21;
    [a1 setTimeRange_];
  }
}

unint64_t sub_1C9934528(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C97A2CEC(&qword_1EC3C8F40);
    v2 = sub_1C9A93808();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1C97C9078(*(a1 + 48) + 40 * v10, v28);
    v11 = *(*(a1 + 56) + 8 * v10);
    *(&v29 + 1) = v11;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    sub_1C97C9078(v26, &v24);
    v12 = v11;
    if (!swift_dynamicCast())
    {
      sub_1C993973C(v26, &unk_1EC3CD210);

      return 0;
    }

    v13 = *(&v27 + 1);
    sub_1C993973C(v26, &unk_1EC3CD210);
    v24 = 0;
    v25 = 1;
    MEMORY[0x1CCA90790](v13, &v24);

    if (v25)
    {
      break;
    }

    v5 &= v5 - 1;
    v14 = v24;
    result = sub_1C9A32230(v22, v23);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;

      *(v2[7] + 8 * v15) = v14;
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      *(v2[7] + 8 * result) = v14;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  return 0;
}

void sub_1C99347DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C97A2CEC(&qword_1EC3CD2A0);
    sub_1C97FB318();
    v2 = sub_1C9A93808();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1C97C9078(*(a1 + 48) + 40 * v9, v28);
    v10 = *(*(a1 + 56) + 8 * v9);
    *(&v29 + 1) = v10;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    sub_1C97C9078(v26, v25);
    v11 = v10;
    if (!swift_dynamicCast())
    {
      sub_1C993973C(v26, &unk_1EC3CD210);

      return;
    }

    v5 &= v5 - 1;
    v12 = *(&v27 + 1);
    sub_1C993973C(v26, &unk_1EC3CD210);
    v13 = sub_1C9A32230(v23, v24);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v23;
      v16[1] = v24;

      v17 = v2[7];
      v18 = *(v17 + 8 * v14);
      *(v17 + 8 * v14) = v12;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v19 = (v2[6] + 16 * v13);
      *v19 = v23;
      v19[1] = v24;
      *(v2[7] + 8 * v13) = v12;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_22;
      }

      v2[2] = v22;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_1C9934A50()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C99392AC();
  sub_1C97AA928();
  swift_allocError();
  return sub_1C9813764(v3, 1);
}

void sub_1C9934AA8()
{
  v2 = *v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;

  v4 = sub_1C97C1C8C();

  if (!v1)
  {
    v5 = v0[2];
    v0[2] = v4;
  }
}

id sub_1C9934B60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9933968(*(a1 + 24), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C9934B9C()
{
  result = sub_1C9934A50();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A92478();
    v4 = sub_1C988EB2C();
    v6 = sub_1C9A6AEE4(v4, v5);

    return v6;
  }

  return result;
}

void sub_1C9934C14()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 80);
  v3 = *(v0 + 24) * v2;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = ceil(v2 / v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = *(v0 + 88);
  if (__OFADD__(v6, v5))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v0 + 88) = v6 + v5;
  if (!v4)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v2 % v4;
  v8 = __OFSUB__(v4, v7);
  v9 = v4 - v7;
  if (v8)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v4 == -1 && v9 == 0x8000000000000000)
  {
LABEL_32:
    __break(1u);
  }

  v11 = v9 % v4;
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = sub_1C9934B9C();
  if (!v1)
  {
    v14 = v13;
    sub_1C9A674AC(v13, 1);

    v15 = sub_1C9934A50();
    v16 = objc_opt_self();
    v21[0] = 0;
    v17 = sub_1C9A767E4(v16, v15, v12, v21);

    if (v17)
    {
      v18 = v21[0];
      v19 = sub_1C9934B9C();
      sub_1C9A674AC(v19, 0);
    }

    else
    {
      v20 = v21[0];
      sub_1C97FB324();
      sub_1C9A913C8();

      swift_willThrow();
    }
  }
}

uint64_t sub_1C9934E1C()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C9934E54()
{
  sub_1C9934E1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9934F00()
{
  v0 = sub_1C992C874();
  sub_1C99320D8();

  return sub_1C98EE6C0();
}

uint64_t sub_1C9934F50()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3CD378);
  swift_dynamicCast();
  return v3;
}

void sub_1C9934FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97FB3E4();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for _SNClassifySoundRequest();

  v8 = sub_1C98EE6C0();
  v10 = sub_1C9930D60(v8, v9, a3, a4);
  if (v4)
  {
  }

  else
  {
    v11 = v10;
    [v7 initWithImpl_];
  }
}

void sub_1C99350C8()
{
  sub_1C97AEB94();
  v21 = v2;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CD4F8);
  sub_1C97AE9C8();
  v19 = v6;
  v20 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97FB2C8();
  v18 = sub_1C97A2CEC(&qword_1EC3CD500);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CD508);
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  sub_1C97BE20C(v4, v4[3]);
  sub_1C993A22C();
  sub_1C9A93DD8();
  v17 = (v15 + 8);
  if (v21)
  {
    sub_1C97FB3CC();
    sub_1C993A280();
    sub_1C9A93988();
    (*(v19 + 8))(v0, v20);
  }

  else
  {
    sub_1C993A2D4();
    sub_1C9A93988();
    (*(v9 + 8))(v12, v18);
  }

  (*v17)(v1, v13);
  sub_1C97AEB5C();
}

void sub_1C993532C()
{
  sub_1C97AEB94();
  v39 = v0;
  v3 = v2;
  v38 = sub_1C97A2CEC(&qword_1EC3CD4C8);
  sub_1C97AE9C8();
  v36 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C97A2CEC(&qword_1EC3CD4D0);
  sub_1C97AE9C8();
  v35 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CD4D8);
  sub_1C97AE9C8();
  v37 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2C8();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C993A22C();
  v14 = v39;
  sub_1C9A93DB8();
  if (v14)
  {
    goto LABEL_8;
  }

  v33 = v6;
  v34 = v10;
  v39 = v3;
  v15 = sub_1C9A93958();
  sub_1C98EE524(v15, 0);
  if (v17 == v18 >> 1)
  {
LABEL_7:
    v24 = sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v26 = v25;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v26 = &type metadata for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper.DomainError;
    sub_1C9A93868();
    sub_1C98994EC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v1, v11);
    v3 = v39;
LABEL_8:
    sub_1C97A592C(v3);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  v32 = 0;
  if (v17 < (v18 >> 1))
  {
    v19 = *(v16 + v17);
    sub_1C98EE520(v17 + 1);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    if (v21 == v23 >> 1)
    {
      if (v19)
      {
        LODWORD(v35) = v19;
        sub_1C97FB3CC();
        sub_1C993A280();
        sub_1C988A520();
        swift_unknownObjectRelease();
        v28 = sub_1C993AD28();
        v29(v28);
      }

      else
      {
        sub_1C993A2D4();
        v27 = v34;
        sub_1C988A520();
        swift_unknownObjectRelease();
        (*(v35 + 8))(v27, v33);
      }

      v30 = sub_1C988A4F0();
      v31(v30);
      sub_1C97A592C(v39);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C99357B4(uint64_t a1)
{
  v2 = sub_1C993A2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99357F0(uint64_t a1)
{
  v2 = sub_1C993A2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993582C(uint64_t a1)
{
  v2 = sub_1C993A280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9935868(uint64_t a1)
{
  v2 = sub_1C993A280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99358A4(uint64_t a1)
{
  v2 = sub_1C993A22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99358E0(uint64_t a1)
{
  v2 = sub_1C993A22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C993591C(_BYTE *a1@<X8>)
{
  sub_1C993532C();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1C9935980(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99359CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C993AE24();
  v9 = sub_1C9A91748();
  sub_1C97AE9C8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v4 + OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_wrapped);
  *v15 = v7;
  v15[1] = v6;
  v15[2] = v5;
  v15[3] = a4;
  sub_1C9A91738();
  (*(v11 + 32))(v4 + OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_id, v14, v9);
  return v4;
}

uint64_t sub_1C9935ABC()
{
  sub_1C993AF0C();
  swift_allocObject();
  v0 = sub_1C97FB324();
  return sub_1C9935B00(v0);
}

uint64_t sub_1C9935B00(uint64_t a1)
{
  sub_1C993931C();
  sub_1C97AA928();
  v2 = swift_allocError();
  sub_1C993AE88(v2, v3);
  sub_1C97A592C(a1);
  sub_1C988EB2C();
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C9935BB0()
{
  sub_1C993931C();
  sub_1C97AA928();
  swift_allocError();
  return sub_1C9813764(v0, 1);
}

uint64_t sub_1C9935C08()
{
  sub_1C9A91748();
  sub_1C993AC7C();
  sub_1C993A1EC(v0);
  return sub_1C9A92398();
}

uint64_t sub_1C9935C7C()
{
  v1 = OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_id;
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1C9935D40()
{
  sub_1C97BE32C();
  sub_1C9A91748();
  sub_1C993AC7C();
  sub_1C993A1EC(v0);
  sub_1C9A92398();
  return sub_1C9A93D18();
}

uint64_t sub_1C9935E0C()
{
  sub_1C9A93CC8();
  sub_1C9A91748();
  sub_1C993A1EC(&qword_1EC3CD290);
  sub_1C9A92398();
  return sub_1C9A93D18();
}

uint64_t sub_1C9935ED8@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_wrapped);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1C9935F34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9930E44(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper()
{
  result = qword_1EC3CD1C8;
  if (!qword_1EC3CD1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9936040()
{
  result = sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99360F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C9936138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C9936188(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_1C99361C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C9936234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1C9936274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C99362DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_1C993631C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C99363A0()
{
  result = qword_1EC3CD1E0;
  if (!qword_1EC3CD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1E0);
  }

  return result;
}

unint64_t sub_1C99363F4(uint64_t a1)
{
  result = sub_1C98DC750();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C993641C(uint64_t a1)
{
  result = sub_1C98DDD1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9936448()
{
  result = qword_1EC3CD1E8;
  if (!qword_1EC3CD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1E8);
  }

  return result;
}

unint64_t sub_1C99364A0()
{
  result = qword_1EC3CD1F0;
  if (!qword_1EC3CD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1F0);
  }

  return result;
}

unint64_t sub_1C99364F8()
{
  result = qword_1EC3CD1F8;
  if (!qword_1EC3CD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1F8);
  }

  return result;
}

void sub_1C9936594(uint64_t a1, char a2, void *a3)
{
  v29 = a1;
  v4 = 0;
  v5 = 0;
  v30 = *(a1 + 16);
  while (1)
  {
    if (v30 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_20;
    }

    v31 = v5;
    v32 = v4;
    v7 = *(a1 + v4 + 64);
    v35 = *(a1 + v4 + 56);
    v8 = *(a1 + v4 + 72);
    v33 = *(a1 + v4 + 40);
    v34 = *(a1 + v4 + 80);
    v9 = *(a1 + v4 + 88);
    v10 = *(a1 + v4 + 48);
    v6 = *(a1 + v4 + 32);
    v11 = *a3;
    v12 = sub_1C9A37FD8(v6);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_17;
    }

    v17 = v12;
    v18 = v13;
    v19 = v11[3];

    if (v19 >= v16)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C97A2CEC(&qword_1EC3CD398);
        sub_1C9A93758();
      }
    }

    else
    {
      sub_1C99F0518(v16, a2 & 1);
      v20 = sub_1C9A37FD8(v6);
      if ((v18 & 1) != (v21 & 1))
      {
        goto LABEL_19;
      }

      v17 = v20;
    }

    if (v18)
    {
      break;
    }

    v22 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    *(v22[6] + v17) = v6;
    v23 = v22[7] + 56 * v17;
    *v23 = v33;
    *(v23 + 8) = v10 & 1;
    *(v23 + 16) = v35;
    *(v23 + 24) = v7;
    *(v23 + 32) = v8;
    *(v23 + 40) = v34;
    *(v23 + 48) = v9;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_18;
    }

    v22[2] = v26;
    v4 = v32 + 64;
    v5 = v31 + 1;
    a2 = 1;
    a1 = v29;
  }

  v27 = swift_allocError();
  swift_willThrow();

  v28 = v27;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_20:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C99368D4(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C9812F64(i, &v29, &qword_1EC3C69F0);
    v8 = v29;
    v7 = v30;
    v27 = v29;
    v28 = v30;
    sub_1C97A2D34(&v31, v26);
    v9 = *a3;
    v11 = sub_1C9A32230(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD268);
      sub_1C9A93758();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    sub_1C97A2D34(v26, (v17[7] + 32 * v11));
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v21;
    a2 = 1;
    if (v24 == v5)
    {

      return;
    }
  }

  sub_1C99F0778();
  v15 = sub_1C9A32230(v8, v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v32 = v22;
  v23 = v22;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C97A592C(v26);

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C9936BEC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1C9A32230(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&unk_1EC3CD240);
      sub_1C9A93758();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + 8 * v11) = v8;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v17[2] = v21;
    ++v4;
    a2 = 1;
  }

  sub_1C99F08F8();
  v15 = sub_1C9A32230(v7, v6);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();
  v23 = v22;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C9936ED0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v9 = *(i - 3);
    v8 = *(i - 2);

    sub_1C97CE3DC(v7, v6);
    if (!v8)
    {
      goto LABEL_17;
    }

    v28 = v6;
    v10 = *a3;
    v12 = sub_1C9A32230(v9, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD230);
      sub_1C9A93758();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v9;
    v19[1] = v8;
    v20 = (v18[7] + 16 * v12);
    *v20 = v7;
    v20[1] = v28;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v18[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_1C99F0A80();
  v16 = sub_1C9A32230(v9, v8);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C97A5978(v7, v28);

    return;
  }

LABEL_23:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C99371D0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v28 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1C9A32230(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7BB0);
      sub_1C9A93758();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v18[2] = v23;
    v4 = v28 + 1;
    a2 = 1;
  }

  sub_1C99F0C10();
  v16 = sub_1C9A32230(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C99374C4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 1);
    v8 = *i;
    v6 = *(i - 16);
    v9 = *a3;
    v10 = sub_1C9A37FD8(v6);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD258);
      sub_1C9A93758();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v26 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v26[6] + v15) = v6;
    v27 = (v26[7] + 16 * v15);
    *v27 = v7;
    v27[1] = v8;
    v28 = v26[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v26[2] = v30;
    ++v4;
    a2 = 1;
  }

  sub_1C99F0DC8(v14, a2 & 1, v18, v19, v20, v21, v22, v23, v33, *v34, v34[4]);
  v24 = sub_1C9A37FD8(v6);
  if ((v16 & 1) != (v25 & 1))
  {
    goto LABEL_21;
  }

  v15 = v24;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v31 = swift_allocError();
  swift_willThrow();

  v32 = v31;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C9937794(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v18 = sub_1C9A32230(v7, v6);
    v19 = v9[2];
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v11;
    if (v9[3] < v21)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD360);
      sub_1C9A93758();
      if (v22)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v25 = *a3;
    *(*a3 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v26 = (v25[6] + 16 * v18);
    *v26 = v7;
    v26[1] = v6;
    *(v25[7] + 8 * v18) = v10;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v25[2] = v29;
    ++v4;
    a2 = 1;
  }

  sub_1C99F0F4C(v21, a2 & 1, v12, v13, v14, v15, v16, v17, v32, v33, *v34, v34[4]);
  v23 = sub_1C9A32230(v7, v6);
  if ((v22 & 1) != (v24 & 1))
  {
    goto LABEL_21;
  }

  v18 = v23;
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C9937A74(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v8 = (a1 + 40);
  while (1)
  {
    v9 = *(a1 + 16);
    if (v7 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v7 >= v9)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_24;
    }

    v10 = *(a2 + 16);
    if (v7 == v10)
    {
      goto LABEL_18;
    }

    if (v7 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = a2;
    v14 = *(a2 + 8 * v7 + 32);
    v15 = *a4;

    v17 = sub_1C9A32230(v12, v11);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_21;
    }

    v20 = v16;
    if (v15[3] < v18 + v19)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7C08);
      sub_1C9A93758();
      if (v20)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v23 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v24 = (v23[6] + 16 * v17);
    *v24 = v12;
    v24[1] = v11;
    *(v23[7] + 8 * v17) = v14;
    v25 = v23[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    v23[2] = v27;
    v8 += 2;
    ++v7;
    a3 = 1;
    a2 = v13;
  }

  sub_1C99F10A0();
  v21 = sub_1C9A32230(v12, v11);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_23;
  }

  v17 = v21;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v29 = v28;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_24:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C9937DA0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1C9A32230(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7C08);
      sub_1C9A93758();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v8;
    v19[1] = v7;
    *(v18[7] + 8 * v12) = v9;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v18[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_1C99F10A0();
  v16 = sub_1C9A32230(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_20;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C9938078(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v34 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_1C9A32230(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD350);
      sub_1C9A93758();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v24 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v7;
    v25[1] = v6;
    *(v24[7] + v17) = v8;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v24[2] = v28;
    ++v4;
    a2 = 1;
  }

  sub_1C99F120C(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v31, v32, *v33, v33[4]);
  v22 = sub_1C9A32230(v7, v6);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v29 = swift_allocError();
  swift_willThrow();

  v30 = v29;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C993834C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1C9A32230(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7B50);
      sub_1C9A93758();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + 8 * v11) = v8;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v17[2] = v21;
    ++v4;
    a2 = 1;
  }

  sub_1C99F135C();
  v15 = sub_1C9A32230(v7, v6);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();
  v23 = v22;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

void sub_1C9938630(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v8 = 0;
  v32 = a2;
  for (i = a1; ; a1 = i)
  {
    v9 = *(a1 + 16);
    if (v8 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v8 >= v9)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a2 + 16);
    if (v8 == v10)
    {
      goto LABEL_18;
    }

    if (v8 >= v10)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + v7 + 32);
    v12 = *(a1 + v7 + 40);
    v13 = v7;
    v15 = *(a2 + v7 + 32);
    v14 = *(a2 + v7 + 40);
    v16 = *a4;

    v18 = sub_1C9A32230(v11, v12);
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_22;
    }

    v21 = v17;
    if (v16[3] < v19 + v20)
    {
      break;
    }

    if (a3)
    {
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7BB0);
      sub_1C9A93758();
      if (v21)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v24 = *a4;
    *(*a4 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v25 = (v24[6] + 16 * v18);
    *v25 = v11;
    v25[1] = v12;
    v26 = (v24[7] + 16 * v18);
    *v26 = v15;
    v26[1] = v14;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_23;
    }

    v24[2] = v29;
    v7 = v13 + 16;
    ++v8;
    a3 = 1;
    a2 = v32;
  }

  sub_1C99F0C10();
  v22 = sub_1C9A32230(v11, v12);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_24;
  }

  v18 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  sub_1C97A2CEC(&unk_1EC3CA040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_25:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778();
  __break(1u);
}

uint64_t sub_1C9938970(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v4 = sub_1C9938D30(v12, v7, v4, a2);
      MEMORY[0x1CCA93280](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C99F14F0(0, v7, v9);

  v10 = sub_1C9938B34(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C9938B34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v32 = v9;
      v30 = v12 | (v5 << 6);
      v16 = (*(a3 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_1C9A93CC8();

      sub_1C9A92528();
      v19 = sub_1C9A93D18();
      v20 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v11 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 != v18 || v22[1] != v17)
        {
          v24 = sub_1C9A93B18();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v9 = v32;
        goto LABEL_5;
      }

      v9 = v32;
      v15 = v30;
    }

    *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v29++, 1))
    {
      __break(1u);
LABEL_25:
      v26 = sub_1C9939008(v28, a2, v29, a3);

      return v26;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C9938D30(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C9938B34(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1C9938DD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3CD260);
  result = sub_1C9A93808();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1C9A93CC8();

    v33 = v21;
    sub_1C9A92528();
    result = sub_1C9A93D18();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C9939008(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3C8F40);
  result = sub_1C9A93808();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1C9A93CC8();

    sub_1C9A92528();
    result = sub_1C9A93D18();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C993923C(void *a1)
{
  v2 = [a1 predictedProbabilitiesName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C9A924A8();

  return v3;
}

unint64_t sub_1C99392AC()
{
  result = qword_1EC3CD280;
  if (!qword_1EC3CD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD280);
  }

  return result;
}

unint64_t sub_1C993931C()
{
  result = qword_1EC3CD298;
  if (!qword_1EC3CD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD298);
  }

  return result;
}

unint64_t sub_1C9939370()
{
  result = qword_1EC3CD2B0;
  if (!qword_1EC3CD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2B0);
  }

  return result;
}

unint64_t sub_1C99393C4()
{
  result = qword_1EC3CD2C8;
  if (!qword_1EC3CD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2C8);
  }

  return result;
}

unint64_t sub_1C9939418()
{
  result = qword_1EC3CD2D0;
  if (!qword_1EC3CD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2D0);
  }

  return result;
}

uint64_t sub_1C993946C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_1C9939494()
{
  result = qword_1EC3CD2F0;
  if (!qword_1EC3CD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2F0);
  }

  return result;
}

unint64_t sub_1C99394E8(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C7BF0);
    result = sub_1C97FB3F0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9939540()
{
  result = qword_1EC3CD308;
  if (!qword_1EC3CD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD308);
  }

  return result;
}

unint64_t sub_1C9939594(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C82B8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9939600()
{
  result = qword_1EC3CD328;
  if (!qword_1EC3CD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD328);
  }

  return result;
}

unint64_t sub_1C9939654()
{
  result = qword_1EC3CD338;
  if (!qword_1EC3CD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD338);
  }

  return result;
}

uint64_t sub_1C99396A8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {

    return swift_unknownObjectRetain();
  }
}

unint64_t sub_1C9939700(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = sub_1C993AF6C(0, v3);
    sub_1C97AA4F0(v4);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C993973C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C993AF6C(a1, a2);
  sub_1C97A2CEC(v3);
  sub_1C97DA940();
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SoundClassification.AudioSourceAgnosticRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SNClassifySoundRequest.DomainError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _SNClassifySoundRequest.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9939A44()
{
  result = qword_1EC3CD3A0;
  if (!qword_1EC3CD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3A0);
  }

  return result;
}

unint64_t sub_1C9939A9C()
{
  result = qword_1EC3CD3A8;
  if (!qword_1EC3CD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3A8);
  }

  return result;
}

unint64_t sub_1C9939AF4()
{
  result = qword_1EC3CD3B0;
  if (!qword_1EC3CD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3B0);
  }

  return result;
}

unint64_t sub_1C9939B4C()
{
  result = qword_1EC3CD3B8;
  if (!qword_1EC3CD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3B8);
  }

  return result;
}

unint64_t sub_1C9939BA4()
{
  result = qword_1EC3CD3C0;
  if (!qword_1EC3CD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3C0);
  }

  return result;
}

unint64_t sub_1C9939BFC()
{
  result = qword_1EC3CD3C8;
  if (!qword_1EC3CD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3C8);
  }

  return result;
}

unint64_t sub_1C9939C54()
{
  result = qword_1EC3CD3D0;
  if (!qword_1EC3CD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3D0);
  }

  return result;
}

unint64_t sub_1C9939CAC()
{
  result = qword_1EC3CD3D8;
  if (!qword_1EC3CD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3D8);
  }

  return result;
}

unint64_t sub_1C9939D04()
{
  result = qword_1EC3CD3E0;
  if (!qword_1EC3CD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3E0);
  }

  return result;
}

unint64_t sub_1C9939D5C()
{
  result = qword_1EC3CD3E8;
  if (!qword_1EC3CD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3E8);
  }

  return result;
}

unint64_t sub_1C9939DB4()
{
  result = qword_1EC3CD3F0;
  if (!qword_1EC3CD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3F0);
  }

  return result;
}

unint64_t sub_1C9939E0C()
{
  result = qword_1EC3CD3F8;
  if (!qword_1EC3CD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3F8);
  }

  return result;
}

unint64_t sub_1C9939E64()
{
  result = qword_1EC3CD400;
  if (!qword_1EC3CD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD400);
  }

  return result;
}

unint64_t sub_1C9939EBC()
{
  result = qword_1EC3CD408;
  if (!qword_1EC3CD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD408);
  }

  return result;
}

unint64_t sub_1C9939F14()
{
  result = qword_1EC3CD410;
  if (!qword_1EC3CD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD410);
  }

  return result;
}

unint64_t sub_1C9939F6C()
{
  result = qword_1EC3CD418;
  if (!qword_1EC3CD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD418);
  }

  return result;
}

unint64_t sub_1C9939FC0()
{
  result = qword_1EC3CD420;
  if (!qword_1EC3CD420)
  {
    sub_1C97AA4F0(&unk_1EC3CC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD420);
  }

  return result;
}

unint64_t sub_1C993A044()
{
  result = qword_1EC3CD448;
  if (!qword_1EC3CD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD448);
  }

  return result;
}

unint64_t sub_1C993A098()
{
  result = qword_1EC3CD458;
  if (!qword_1EC3CD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD458);
  }

  return result;
}

unint64_t sub_1C993A0EC()
{
  result = qword_1EC3CD468;
  if (!qword_1EC3CD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD468);
  }

  return result;
}

unint64_t sub_1C993A140(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CD470);
    result = sub_1C97FB3F0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C993A198()
{
  result = qword_1EC3CD480;
  if (!qword_1EC3CD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD480);
  }

  return result;
}

unint64_t sub_1C993A1EC(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C993A22C()
{
  result = qword_1EC3CD4E0;
  if (!qword_1EC3CD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD4E0);
  }

  return result;
}

unint64_t sub_1C993A280()
{
  result = qword_1EC3CD4E8;
  if (!qword_1EC3CD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD4E8);
  }

  return result;
}

unint64_t sub_1C993A2D4()
{
  result = qword_1EC3CD4F0;
  if (!qword_1EC3CD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD4F0);
  }

  return result;
}

_BYTE *sub_1C993A328(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C993A420(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C993A518(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C993A5C8()
{
  result = qword_1EC3CD510;
  if (!qword_1EC3CD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD510);
  }

  return result;
}

unint64_t sub_1C993A620()
{
  result = qword_1EC3CD518;
  if (!qword_1EC3CD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD518);
  }

  return result;
}

unint64_t sub_1C993A678()
{
  result = qword_1EC3CD520;
  if (!qword_1EC3CD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD520);
  }

  return result;
}

unint64_t sub_1C993A6D0()
{
  result = qword_1EC3CD528;
  if (!qword_1EC3CD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD528);
  }

  return result;
}

unint64_t sub_1C993A728()
{
  result = qword_1EC3CD530;
  if (!qword_1EC3CD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD530);
  }

  return result;
}

unint64_t sub_1C993A780()
{
  result = qword_1EC3CD538;
  if (!qword_1EC3CD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD538);
  }

  return result;
}

unint64_t sub_1C993A7D8()
{
  result = qword_1EC3CD540;
  if (!qword_1EC3CD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD540);
  }

  return result;
}

unint64_t sub_1C993A830()
{
  result = qword_1EC3CD548;
  if (!qword_1EC3CD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD548);
  }

  return result;
}

unint64_t sub_1C993A888()
{
  result = qword_1EC3CD550;
  if (!qword_1EC3CD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD550);
  }

  return result;
}

unint64_t sub_1C993A8E0()
{
  result = qword_1EC3CD558;
  if (!qword_1EC3CD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD558);
  }

  return result;
}

unint64_t sub_1C993A938()
{
  result = qword_1EC3CD560;
  if (!qword_1EC3CD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD560);
  }

  return result;
}

unint64_t sub_1C993A990()
{
  result = qword_1EC3CD568;
  if (!qword_1EC3CD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD568);
  }

  return result;
}

unint64_t sub_1C993A9E8()
{
  result = qword_1EC3CD570;
  if (!qword_1EC3CD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD570);
  }

  return result;
}

unint64_t sub_1C993AA40()
{
  result = qword_1EC3CD578;
  if (!qword_1EC3CD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD578);
  }

  return result;
}

unint64_t sub_1C993AA98()
{
  result = qword_1EC3CD580;
  if (!qword_1EC3CD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD580);
  }

  return result;
}

unint64_t sub_1C993AAF0()
{
  result = qword_1EC3CD588;
  if (!qword_1EC3CD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD588);
  }

  return result;
}

unint64_t sub_1C993AB48()
{
  result = qword_1EC3CD590;
  if (!qword_1EC3CD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD590);
  }

  return result;
}

unint64_t sub_1C993ABA0()
{
  result = qword_1EC3CD598;
  if (!qword_1EC3CD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD598);
  }

  return result;
}

unint64_t sub_1C993ABF8()
{
  result = qword_1EC3CD5A0;
  if (!qword_1EC3CD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD5A0);
  }

  return result;
}

id sub_1C993AD60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{

  return sub_1C9929478(0xD000000000000017, a1, 4, 0, a2, a3 | 0x8000000000000000);
}

uint64_t sub_1C993ADC8(uint64_t a1, uint64_t a2)
{

  return sub_1C986EC4C(a1, a2);
}

uint64_t sub_1C993ADE8()
{

  return swift_unexpectedError();
}

uint64_t sub_1C993AE88(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1C993AEA0()
{

  return sub_1C9A93DB8();
}

uint64_t sub_1C993AEC4()
{

  return sub_1C9A93858();
}

uint64_t sub_1C993AEE8(uint64_t a1, uint64_t a2)
{

  return sub_1C97C6634(a1, a2, v2, v3, v4, v5, v6);
}

uint64_t sub_1C993AF8C(uint64_t a1, uint64_t a2)
{

  return sub_1C986EC4C(a1, a2);
}

uint64_t sub_1C993AFA4()
{
}

void *sub_1C993AFBC(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x78uLL);
}

void sub_1C993AFD4()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C9945E20();
  sub_1C97DC8D0();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C9945FD8(v1);
  sub_1C9945DD0();
  sub_1C9946024(v2);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v3 = sub_1C97BE0EC();
  v4(v3);
  sub_1C97BE478();
}

void sub_1C993B0C8()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C9945E20();
  sub_1C97DC9C8();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C9945FD8(v1);
  sub_1C9945DD0();
  sub_1C9946024(v2);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v3 = sub_1C97BE0EC();
  v4(v3);
  sub_1C97BE478();
}

void sub_1C993B1BC()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C9945E20();
  sub_1C97DCBBC();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C9945FD8(v1);
  sub_1C9945DD0();
  sub_1C9946024(v2);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v3 = sub_1C97BE0EC();
  v4(v3);
  sub_1C97BE478();
}

void sub_1C993B2B0()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C9945E20();
  sub_1C97DCDBC();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C9945FD8(v1);
  sub_1C9945DD0();
  sub_1C9946024(v2);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v3 = sub_1C97BE0EC();
  v4(v3);
  sub_1C97BE478();
}

void sub_1C993B3A4()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C9945E20();
  sub_1C97DCCB4();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C9945FD8(v1);
  sub_1C9945DD0();
  sub_1C9946024(v2);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v3 = sub_1C97BE0EC();
  v4(v3);
  sub_1C97BE478();
}

void sub_1C993B498()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C9945E20();
  sub_1C97DD1D0();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C9945FD8(v1);
  sub_1C9945DD0();
  sub_1C9946024(v2);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v3 = sub_1C97BE0EC();
  v4(v3);
  sub_1C97BE478();
}

uint64_t sub_1C993B58C()
{
  result = (*(v0 + 16))(&v5);
  if (!v1)
  {
    result = v5;
    if (v5 <= 0xEFuLL)
    {
      if (v5 >> 6)
      {
        if (v5 >> 6 == 1)
        {
          v3 = v5 & 0x3F;
          sub_1C985E2B4();
          sub_1C97AA928();
          result = swift_allocError();
          *v4 = v3;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1C993B624()
{
  result = (*(v0 + 16))(&v5);
  if (!v1)
  {
    if (v5 <= 0xFBuLL)
    {
      if (v5 >> 6)
      {
        if (v5 >> 6 == 1)
        {
          v3 = v5 & 0x3F;
          sub_1C985E2B4();
          sub_1C97AA928();
          result = swift_allocError();
          *v4 = v3;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return (v5 & 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C993B6C4()
{
  sub_1C99460E4();
  v2(&v21);
  if (!v0)
  {
    return v21;
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  sub_1C9946110();
  v4 = v0;
  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FA8();

  if (os_log_type_enabled(v5, v6))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    sub_1C9945EE4();
    v20 = swift_slowAlloc();
    *v1 = 136315394;
    v7 = sub_1C9871794();
    v10 = sub_1C9849140(v7, v8, v9);
    sub_1C9945F3C(v10);
    v11 = v0;
    sub_1C97A2CEC(&unk_1EC3CA040);
    v12 = sub_1C9A924F8();
    v14 = sub_1C9849140(v12, v13, &v20);

    *(v1 + 14) = v14;
    sub_1C9945FAC(&dword_1C9788000, v15, v16, "%serror logging: %s");
    sub_1C9945F2C();
    swift_arrayDestroy();
    v17 = sub_1C9945F1C();
    MEMORY[0x1CCA93280](v17);
    v18 = sub_1C9945F5C();
    MEMORY[0x1CCA93280](v18);
  }

  return swift_willThrow();
}

uint64_t sub_1C993B85C()
{
  sub_1C99460E4();
  result = v2();
  if (v0)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    sub_1C9946110();
    v5 = v0;
    v6 = sub_1C9A91B38();
    v7 = sub_1C9A92FA8();

    if (os_log_type_enabled(v6, v7))
    {
      sub_1C9945F88();
      swift_slowAlloc();
      sub_1C9945EE4();
      v20 = swift_slowAlloc();
      *v1 = 136315394;
      v8 = sub_1C9871794();
      v11 = sub_1C9849140(v8, v9, v10);
      sub_1C9945F3C(v11);
      v12 = v0;
      sub_1C97A2CEC(&unk_1EC3CA040);
      v13 = sub_1C9A924F8();
      v15 = sub_1C9849140(v13, v14, &v20);

      *(v1 + 14) = v15;
      sub_1C9945FAC(&dword_1C9788000, v16, v17, "%serror logging: %s");
      sub_1C9945F2C();
      swift_arrayDestroy();
      v18 = sub_1C9945F1C();
      MEMORY[0x1CCA93280](v18);
      v19 = sub_1C9945F5C();
      MEMORY[0x1CCA93280](v19);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1C993B9E8(char a1, uint64_t a2, unint64_t a3)
{
  v19 = a1 & 1;
  v6 = sub_1C9A924F8();
  v8 = v7;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  sub_1C9946110();

  v10 = sub_1C9A91B38();
  v11 = sub_1C9A92FC8();

  if (os_log_type_enabled(v10, v11))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    sub_1C9945EE4();
    v18 = swift_slowAlloc();
    *v3 = 136446466;
    v12 = sub_1C9849140(a2, a3, &v18);
    sub_1C9945F3C(v12);
    v13 = sub_1C9849140(v6, v8, &v18);

    *(v3 + 14) = v13;
    sub_1C99460F0(&dword_1C9788000, v14, v15, "%{public}sreceive value %s");
    sub_1C9945F2C();
    swift_arrayDestroy();
    v16 = sub_1C9945F1C();
    MEMORY[0x1CCA93280](v16);
    v17 = sub_1C9945F5C();
    MEMORY[0x1CCA93280](v17);
  }

  else
  {
  }
}

void sub_1C993BB58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15[0] = a1;
  v15[1] = a2;

  v6 = sub_1C9A924F8();
  v8 = v7;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);

  v10 = sub_1C9A91B38();
  v11 = sub_1C9A92FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1C9849140(a3, a4, v15);
    *(v12 + 12) = 2080;
    v14 = sub_1C9849140(v6, v8, v15);

    *(v12 + 14) = v14;
    _os_log_impl(&dword_1C9788000, v10, v11, "%{public}sreceive value %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v13, -1, -1);
    MEMORY[0x1CCA93280](v12, -1, -1);
  }

  else
  {
  }
}

void sub_1C993BD20(void *a1, uint64_t a2, unint64_t a3)
{
  v20 = a1;
  sub_1C98AD724();
  v7 = a1;
  v8 = sub_1C9A924F8();
  v10 = v9;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);

  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FC8();

  if (os_log_type_enabled(v12, v13))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    sub_1C9945EE4();
    v20 = swift_slowAlloc();
    *v3 = 136446466;
    v14 = sub_1C9849140(a2, a3, &v20);
    sub_1C9945F3C(v14);
    v15 = sub_1C9849140(v8, v10, &v20);

    *(v3 + 14) = v15;
    sub_1C99460F0(&dword_1C9788000, v16, v17, "%{public}sreceive value %s");
    sub_1C9945F2C();
    swift_arrayDestroy();
    v18 = sub_1C9945F1C();
    MEMORY[0x1CCA93280](v18);
    v19 = sub_1C9945F5C();
    MEMORY[0x1CCA93280](v19);
  }

  else
  {
  }
}

void sub_1C993BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;

  sub_1C97A2CEC(&qword_1EC3C8530);
  v8 = sub_1C9A924F8();
  v10 = v9;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);

  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17[0] = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_1C9849140(a5, a6, v17);
    *(v14 + 12) = 2080;
    v16 = sub_1C9849140(v8, v10, v17);

    *(v14 + 14) = v16;
    _os_log_impl(&dword_1C9788000, v12, v13, "%{public}sreceive value %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v15, -1, -1);
    MEMORY[0x1CCA93280](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C993C084(uint64_t a1)
{
  type metadata accessor for SafeRecursiveLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  return v1;
}

void sub_1C993C0E0()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v88 = v4;
  v89 = v5;
  v87 = v6;
  v8 = v7;
  v85 = v9;
  v83 = sub_1C97A2CEC(&qword_1EC3C7740);
  sub_1C97AE9C8();
  v81 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AC02C();
  sub_1C99460B4(v12);
  v84 = sub_1C97A2CEC(&qword_1EC3CD5C0);
  sub_1C97AE9C8();
  v82 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  v80 = v15;
  v92 = sub_1C9A91748();
  sub_1C97AE9C8();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v73 - v24;
  sub_1C9A91738();
  v93 = 0;
  v94 = 0xE000000000000000;
  v95 = v8;
  sub_1C9A93728();
  v25 = v94;
  v90 = v93;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v26 = sub_1C9A91B58();
  v27 = sub_1C97BFF6C(v26, qword_1EC3D3108);
  v77 = *(v17 + 16);
  v78 = v17 + 16;
  v77(v23, v91, v92);

  v79 = v27;
  v28 = sub_1C9A91B38();
  v29 = sub_1C9A92FC8();

  if (os_log_type_enabled(v28, v29))
  {
    sub_1C9945F88();
    swift_slowAlloc();
    v75 = v3;
    sub_1C9945EE4();
    v74 = swift_slowAlloc();
    v93 = v74;
    *v3 = 136315394;
    sub_1C97AE3DC();
    v30 = v92;
    v31 = sub_1C9A93A98();
    v76 = v0;
    v32 = v25;
    v33 = v30;
    v35 = v34;
    v36 = *(v17 + 8);
    v36(v23, v33);
    v37 = sub_1C9849140(v31, v35, &v93);
    v25 = v32;
    v1 = v76;

    *(v3 + 4) = v37;
    *(v3 + 12) = 2080;
    v38 = v90;
    *(v3 + 14) = sub_1C9849140(v90, v25, &v93);
    _os_log_impl(&dword_1C9788000, v28, v29, "Started Creating Sound Recognition Session %s (%s)", v3, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v3 = v75;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v36 = *(v17 + 8);
    v36(v23, v92);
    v38 = v90;
  }

  v39 = sub_1C9943064(v95, v91, v87, v88, v89, v3);
  if (v1)
  {
    v36(v91, v92);
  }

  else
  {
    v40 = v39;
    v88 = 0;
    v89 = v36;
    v41 = swift_allocObject();
    v41[2] = sub_1C9945DA8;
    v41[3] = 0;
    v41[4] = v40;
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C97AE9EC();
    v42 = v25;
    sub_1C97AE67C(v43, &unk_1EC3C9AC0);
    sub_1C9A91EF8();
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C9946054();
    v93 = v45;
    v94 = v44;
    v87 = sub_1C97AE3DC();
    v46 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v46);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v38, v25);
    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    sub_1C993AFD4();

    v47 = sub_1C99460C0();
    v48(v47, v83);
    sub_1C9945DD0();
    sub_1C97AE67C(v49, v50);
    v51 = v84;
    v52 = sub_1C9A91F28();
    v53 = sub_1C99460CC();
    v54(v53, v51);
    v55 = v85;
    v56 = sub_1C9871794();
    v57 = v77;
    (v77)(v56);
    *(v55 + *(type metadata accessor for SoundRecognition.Session() + 20)) = v52;
    v58 = v86;
    v59 = sub_1C9871794();
    v57(v59);

    v60 = sub_1C9A91B38();
    v61 = sub_1C9A92FC8();

    if (os_log_type_enabled(v60, v61))
    {
      sub_1C9945F88();
      v62 = v58;
      v63 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v63 = 136315394;
      v64 = v92;
      v65 = sub_1C9A93A98();
      v66 = v64;
      v68 = v67;
      v89(v62, v66);
      v69 = sub_1C9849140(v65, v68, &v93);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      v70 = sub_1C9849140(v90, v42, &v93);

      *(v63 + 14) = v70;
      _os_log_impl(&dword_1C9788000, v60, v61, "Finished Creating Sound Recognition Session %s (%s)", v63, 0x16u);
      swift_arrayDestroy();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();

      v89(v91, v92);
    }

    else
    {

      v71 = v92;
      v72 = v89;
      v89(v58, v92);
      v72(v91, v71);
    }
  }

  sub_1C97AEB5C();
}