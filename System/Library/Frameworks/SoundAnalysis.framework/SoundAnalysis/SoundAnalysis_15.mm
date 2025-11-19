unint64_t sub_1C98CA72C()
{
  result = qword_1EC3CB868;
  if (!qword_1EC3CB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB868);
  }

  return result;
}

unint64_t sub_1C98CA784()
{
  result = qword_1EC3CB870;
  if (!qword_1EC3CB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB870);
  }

  return result;
}

unint64_t sub_1C98CA7DC()
{
  result = qword_1EC3CB878;
  if (!qword_1EC3CB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB878);
  }

  return result;
}

unint64_t sub_1C98CA834()
{
  result = qword_1EC3CB880;
  if (!qword_1EC3CB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB880);
  }

  return result;
}

unint64_t sub_1C98CA88C()
{
  result = qword_1EC3CB888[0];
  if (!qword_1EC3CB888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CB888);
  }

  return result;
}

uint64_t sub_1C98CA938()
{
}

uint64_t sub_1C98CA950()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98CA970()
{

  return sub_1C9A93B18();
}

uint64_t sub_1C98CA998()
{

  return sub_1C9A93DB8();
}

uint64_t sub_1C98CA9BC()
{

  return sub_1C97ACC50(v1, 1, 1, v0);
}

uint64_t sub_1C98CA9F8(uint64_t a1, unint64_t a2)
{
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C98CB334;
  *(v6 + 24) = v5;
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = *(v2 + 24);
    sub_1C97A8E8C();
    sub_1C97AA928();
    v9 = swift_allocError();
    sub_1C97AA89C(v9, v10);
    swift_willThrow();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    sub_1C97DA2E8(a1, a2);
  }

  else
  {
    sub_1C97AA878();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C98CB33C;
    *(v12 + 24) = v6;
    *(v2 + 16) = sub_1C98CB598;
    *(v2 + 24) = v12;
    return sub_1C97DA2E8(a1, a2);
  }
}

uint64_t sub_1C98CAB04@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_1C98CAB38(void *(*a1)(uint64_t *__return_ptr))
{
  result = a1(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C98CAB78()
{
  type metadata accessor for XPCDataEncoder.UnkeyedContainer();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1C98CB568;
  *(v2 + 24) = v1;
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C98CB37C;
  *(v3 + 24) = v2;
  if (*(v0 + 16))
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);
    sub_1C97A8E8C();
    sub_1C97AA928();
    v9 = swift_allocError();
    sub_1C97AA89C(v9, v10);
    swift_willThrow();
    *(v0 + 16) = v8;
    *(v0 + 24) = v7;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C97AA878();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1C98CB580;
    *(v4 + 24) = v3;
    sub_1C97AA878();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C98CB3D8;
    *(v5 + 24) = v1;
    *(v0 + 16) = sub_1C98CB5B0;
    *(v0 + 24) = v5;
    swift_retain_n();
    sub_1C979AFD4(sub_1C98CB598);
    return v1;
  }

  return result;
}

uint64_t sub_1C98CAD18()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];

    result = sub_1C97B8200(0, v3, 0);
    v6 = 0;
    v4 = v18;
    v7 = (v2 + 40);
    while (v6 < *(v2 + 16))
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      v9(&v15, v10);
      if (v1)
      {

        return v8;
      }

      v11 = v15;
      v18 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = v15;
        result = sub_1C97B8200(v12 > 1, v13 + 1, 1);
        v11 = v14;
        v4 = v18;
      }

      ++v6;
      *(v4 + 16) = v13 + 1;
      *(v4 + 16 * v13 + 32) = v11;
      v7 += 2;
      if (v3 == v6)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v16 = sub_1C97A2CEC(&qword_1EC3CBAC0);
    v17 = sub_1C98CB3F0();
    *&v15 = v4;
    v8 = sub_1C9A1DDD0(&v15);
    sub_1C97A592C(&v15);
    return v8;
  }

  return result;
}

uint64_t sub_1C98CAEC8()
{
  type metadata accessor for XPCDataEncoder.SingleValueContainer();
  sub_1C97AA878();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1C98CB550;
  *(v2 + 24) = v1;
  if (*(v0 + 16))
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);
    sub_1C97A8E8C();
    sub_1C97AA928();
    v7 = swift_allocError();
    sub_1C97AA89C(v7, v8);
    swift_willThrow();
    *(v0 + 16) = v6;
    *(v0 + 24) = v5;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C97AA878();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1C98CB300;
    *(v3 + 24) = v2;
    *(v0 + 16) = sub_1C98CB318;
    *(v0 + 24) = v3;
  }

  return result;
}

uint64_t sub_1C98CB00C()
{
  v2 = *(v0 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v0 + 24);

  v5 = v3;
  v6 = v2(v4);
  if (!v1)
  {
    v5 = v6;
  }

  sub_1C979AFD4(v2);
  return v5;
}

uint64_t sub_1C98CB0A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C98CB0DC(void *a1)
{
  v3 = v1;
  type metadata accessor for XPCDataEncoder();
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = a1[3];
  v7 = a1[4];
  sub_1C97A5A8C(a1, v6);
  (*(v7 + 16))(v5, v6, v7);
  if (v2)
  {
  }

  sub_1C97AA878();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C98CAFF4;
  *(v8 + 24) = v5;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = *(v3 + 24);
    sub_1C97A8E8C();
    sub_1C97AA928();
    v11 = swift_allocError();
    sub_1C97AA89C(v11, v12);
    swift_willThrow();
    *(v3 + 16) = v9;
    *(v3 + 24) = v10;
  }

  sub_1C97AA878();
  result = swift_allocObject();
  *(result + 16) = sub_1C98CB580;
  *(result + 24) = v8;
  *(v3 + 16) = sub_1C98CB598;
  *(v3 + 24) = result;
  return result;
}

uint64_t sub_1C98CB248()
{
  sub_1C979AFD4(*(v0 + 16));
  sub_1C97AA878();

  return swift_deallocClassInstance();
}

uint64_t sub_1C98CB33C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C98CB3A4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1C98CB3F0()
{
  result = qword_1EC3CB910;
  if (!qword_1EC3CB910)
  {
    sub_1C97AA4F0(&qword_1EC3CBAC0);
    sub_1C98CB474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB910);
  }

  return result;
}

unint64_t sub_1C98CB474()
{
  result = qword_1EC3CB918;
  if (!qword_1EC3CB918)
  {
    sub_1C97AA4F0(&unk_1EC3CAD30);
    sub_1C98CB4F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB918);
  }

  return result;
}

unint64_t sub_1C98CB4F8()
{
  result = qword_1EC3CB920;
  if (!qword_1EC3CB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB920);
  }

  return result;
}

double SNSpeechUtteranceResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double SNSpeechUtteranceResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C98CB714@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechUtteranceResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNSpeechUtteranceResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNSpeechUtteranceResult.timeRange.getter((v3 + 1));
  return sub_1C98CB7BC;
}

void sub_1C98CB7BC(void **a1)
{
  v1 = *a1;
  SNSpeechUtteranceResult.timeRange.setter(*a1 + 8);

  free(v1);
}

uint64_t (*SNSpeechUtteranceResult.detected.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___SNSpeechUtteranceResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 48);
  return sub_1C98CB898;
}

double (*SNSpeechUtteranceResult.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSpeechUtteranceResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 56);
  return sub_1C98CB940;
}

double sub_1C98CB940(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 56) = *a1;
  return result;
}

id sub_1C98CB954()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNSpeechUtteranceResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  v4[48] = 0;
  *(v4 + 7) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNSpeechUtteranceResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C98CC224(OBJC_IVAR___SNSpeechUtteranceResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNSpeechUtteranceResult_impl];
  v6 = v9[2];
  *v5 = v9[1];
  v5[1] = v6;
  v7 = v9[4];
  v5[2] = v9[3];
  v5[3] = v7;
  v9[0].receiver = v4;
  v9[0].super_class = ObjectType;
  result = [(objc_super *)v9 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNSpeechUtteranceResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v19);
  if (!v20)
  {
    return 0;
  }

  sub_1C97A2D34(&v19, v18);
  sub_1C97BD360(v18, v17);
  v12 = swift_dynamicCast() && (v3 = v16, v4 = v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl, v5 = *(v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl + 16), v15[0] = *(v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl), v15[1] = v5, v15[2] = *(v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl + 32), v6 = *(v1 + OBJC_IVAR___SNSpeechUtteranceResult_impl + 48), v7 = *(v4 + 56), v8 = *&v16[OBJC_IVAR___SNSpeechUtteranceResult_impl + 16], v14[0] = *&v16[OBJC_IVAR___SNSpeechUtteranceResult_impl], v14[1] = v8, v14[2] = *&v16[OBJC_IVAR___SNSpeechUtteranceResult_impl + 32], v9 = v16[OBJC_IVAR___SNSpeechUtteranceResult_impl + 48], v10 = *&v16[OBJC_IVAR___SNSpeechUtteranceResult_impl + 56], v11 = static TimeRange.== infix(_:_:)(v15, v14), v3, v11) && v6 == v9 && v7 == v10;
  sub_1C97A592C(v18);
  return v12;
}

id SNSpeechUtteranceResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1C44();
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNSpeechUtteranceResult_impl];
  v5 = v11;
  *v4 = v10;
  *(v4 + 1) = v5;
  v6 = v13;
  *(v4 + 2) = v12;
  *(v4 + 3) = v6;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  swift_getObjectType();
  sub_1C9841DA0();
  return v7;
}

uint64_t SNSpeechUtteranceResult.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v17[0] = 0;
  *(&v17[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v19 = v17[0];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v18, sel_description);
  v4 = sub_1C9A924A8();
  v6 = v5;

  MEMORY[0x1CCA90230](v4, v6);

  MEMORY[0x1CCA90230](0x746365746544203BLL, 0xEC000000203A6465);
  if (v1[OBJC_IVAR___SNSpeechUtteranceResult_impl + 48])
  {
    v7 = 5457241;
  }

  else
  {
    v7 = 20302;
  }

  if (v1[OBJC_IVAR___SNSpeechUtteranceResult_impl + 48])
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  MEMORY[0x1CCA90230](v7, v8);

  MEMORY[0x1CCA90230](0x6469666E6F43203BLL, 0xEE00203A65636E65);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNSpeechUtteranceResult.timeRange.getter(v17);
  v9 = objc_opt_self();
  v16[0] = v17[0];
  v16[1] = v17[1];
  v16[2] = v17[2];
  v10 = [v9 valueWithCMTimeRange_];
  v11 = [v10 description];
  v12 = sub_1C9A924A8();
  v14 = v13;

  MEMORY[0x1CCA90230](v12, v14);

  return v19;
}

id SNSpeechUtteranceResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C98CC1A8@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechUtteranceResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C98CC23C(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC13SoundAnalysis18SNDSPConfiguration_dspItems);
  if (v1 >> 62)
  {
    result = sub_1C9A934C8();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &qword_1EC3C4FB8[9];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCA912B0](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      type metadata accessor for SNDSPGraphInfo();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = sub_1C98CC714(v8);

        v3 = v9;
      }

      else
      {
        if (v3)
        {
          type metadata accessor for SNAUStripInfo();
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v11 = v10;
            v12 = v3;
            v13 = sub_1C98CE07C(v11, v12);

            if ((v13 & 1) == 0)
            {
              if (v5[164] != -1)
              {
                sub_1C98134D8();
                swift_once();
              }

              v14 = sub_1C9A91B58();
              sub_1C97BFF6C(v14, qword_1EC3D3108);
              v15 = v12;
              v16 = v7;
              v17 = sub_1C9A91B38();
              v18 = sub_1C9A92FA8();

              if (os_log_type_enabled(v17, v18))
              {
                v49 = v18;
                v19 = swift_slowAlloc();
                swift_slowAlloc();
                *v19 = 136315394;
                v50 = v16;
                if (*(v11 + OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_path + 8))
                {
                  v11 = *(v11 + OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_path + 8);
                }

                else
                {
                  sub_1C98CE710();
                }

                v29 = sub_1C98CE790();
                v31 = sub_1C9849140(v29, v11, v30);

                *(v19 + 4) = v31;
                *(v19 + 12) = 2080;
                v32 = sub_1C9A6B3E4(v15);
                sub_1C9A924A8();
                v34 = v33;

                v35 = sub_1C98CE790();
                v37 = sub_1C9849140(v35, v34, v36);

                *(v19 + 14) = v37;
                _os_log_impl(&dword_1C9788000, v17, v49, "Applying AUStrip %s to graph %s failed", v19, 0x16u);
                swift_arrayDestroy();
                sub_1C9840CEC();
                sub_1C9840CEC();

                v38 = v50;
LABEL_35:

                v3 = 0;
                v5 = qword_1EC3C4FB8 + 72;
                goto LABEL_21;
              }

LABEL_32:
              v3 = 0;
              goto LABEL_21;
            }
          }

          else
          {
            type metadata accessor for SNPropertyStripInfo();
            v20 = swift_dynamicCastClass();
            if (v20)
            {
              v21 = v20;
              v22 = v3;
              v23 = sub_1C98CE268(v21, v22);

              if ((v23 & 1) == 0)
              {
                if (v5[164] != -1)
                {
                  sub_1C98134D8();
                  swift_once();
                }

                v24 = sub_1C9A91B58();
                sub_1C97BFF6C(v24, qword_1EC3D3108);
                v25 = v22;
                v26 = v7;
                v17 = sub_1C9A91B38();
                v27 = sub_1C9A92FA8();

                if (os_log_type_enabled(v17, v27))
                {
                  v51 = v26;
                  v28 = swift_slowAlloc();
                  swift_slowAlloc();
                  *v28 = 136315394;
                  if (*(v21 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_path + 8))
                  {
                    v21 = *(v21 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_path + 8);
                  }

                  else
                  {
                    sub_1C98CE710();
                  }

                  v39 = sub_1C98CE790();
                  v41 = sub_1C9849140(v39, v21, v40);

                  *(v28 + 4) = v41;
                  *(v28 + 12) = 2080;
                  v42 = sub_1C9A6B3E4(v25);
                  sub_1C9A924A8();
                  v48 = v25;
                  v44 = v43;

                  v45 = sub_1C98CE790();
                  v47 = sub_1C9849140(v45, v44, v46);

                  *(v28 + 14) = v47;
                  _os_log_impl(&dword_1C9788000, v17, v27, "Applying PropertyStrip %s to graph %s failed", v28, 0x16u);
                  swift_arrayDestroy();
                  sub_1C9840CEC();
                  sub_1C9840CEC();

                  v38 = v48;
                  goto LABEL_35;
                }

                goto LABEL_32;
              }
            }
          }
        }
      }

LABEL_21:
      if (v2 == ++v4)
      {
        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1C98CC714(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_text + 8))
  {
    v2 = sub_1C9A92478();
    if (!*(a1 + OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_substitutions))
    {
      sub_1C9A92348();
      sub_1C98CE79C();
    }

    sub_1C984ADE8();
    v3 = sub_1C9A922F8();

    objc_opt_self();

    sub_1C984ADE8();
    v4 = sub_1C9A92768();

    v5 = sub_1C98CE770();
    v9 = sub_1C9A7A268(v5, v6, v7, v8);
LABEL_16:
    v14 = v9;

    return v14;
  }

  if (*(a1 + OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_path + 8))
  {
    v2 = sub_1C9A92478();
    if (!*(a1 + OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_substitutions))
    {
      sub_1C9A92348();
      sub_1C98CE79C();
    }

    sub_1C984ADE8();
    v3 = sub_1C9A922F8();

    objc_opt_self();

    sub_1C984ADE8();
    v4 = sub_1C9A92768();

    v15 = sub_1C98CE770();
    v9 = sub_1C9A79350(v15, v16, v17, v18);
    goto LABEL_16;
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v10 = sub_1C9A91B58();
  sub_1C97BFF6C(v10, qword_1EC3D3108);
  v11 = sub_1C9A91B38();
  v12 = sub_1C9A92FA8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C9788000, v11, v12, "DSPGraphInfo doesn't specify either text or path", v13, 2u);
    sub_1C9840CEC();
  }

  return 0;
}

id sub_1C98CC9C0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1C9A32230(1701869908, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1C97BD360(*(a1 + 56) + 32 * v2, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v36 == 0x6870617247505344 && v37 == 0xE800000000000000;
  if (v4 || (sub_1C9871794(), (sub_1C9A93B18() & 1) != 0))
  {

    v5 = objc_allocWithZone(type metadata accessor for SNDSPGraphInfo());
    sub_1C97FB30C();

    v6 = sub_1C98CE6FC();
    return sub_1C98CCC04(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v15 = v36 == 0x70697274535541 && v37 == 0xE700000000000000;
  if (v15 || (sub_1C9871794(), (sub_1C9A93B18() & 1) != 0))
  {

    v16 = objc_allocWithZone(type metadata accessor for SNAUStripInfo());
    sub_1C97FB30C();

    v17 = sub_1C98CE6FC();
    return sub_1C98CD308(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  if (v36 == 0x79747265706F7250 && v37 == 0xED00007069727453)
  {

    goto LABEL_24;
  }

  sub_1C9871794();
  v26 = sub_1C9A93B18();

  if (v26)
  {
LABEL_24:
    v27 = objc_allocWithZone(type metadata accessor for SNPropertyStripInfo());
    sub_1C97FB30C();

    v28 = sub_1C98CE6FC();
    return sub_1C98CD858(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  return 0;
}

id sub_1C98CCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C98CE67C(a1, a2, a3, a4, a5, a6, a7, a8, v27, v29, v31.receiver, v31.super_class, v32);
  if (v33)
  {
    sub_1C98CE6AC();
    sub_1C98CE72C();
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    sub_1C97A59D0(&v32);
    v9 = 0;
    v13 = 0;
  }

  sub_1C9878160(1954047316, 0xE400000000000000, v10, &v32);
  if (v33)
  {
    v14 = sub_1C98CE6AC();
    if (v14)
    {
      v15 = v28;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v30;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_1C97A59D0(&v32);
    v15 = 0;
    v16 = 0;
  }

  sub_1C9878160(0x506564756C636E49, 0xEC00000073687461, v10, &v32);
  if (v33)
  {
    sub_1C97A2CEC(&qword_1EC3C7BF0);
    sub_1C98CE6AC();
    sub_1C98CE784();
    if (v12)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    sub_1C97A59D0(&v32);
    v18 = 0;
  }

  sub_1C9878160(0x7574697473627553, 0xED0000736E6F6974, v10, &v32);

  if (v33)
  {
    sub_1C97A2CEC(&unk_1EC3C7B20);
    sub_1C98CE6AC();
    sub_1C98CE784();
    if (v12)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    if (v13)
    {
      goto LABEL_24;
    }

LABEL_26:

    v22 = 0;
    goto LABEL_27;
  }

  sub_1C97A59D0(&v32);
  v20 = 0;
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_24:

  v21 = sub_1C9A92478();

  sub_1C9871794();
  v22 = sub_1C9A92478();
  v23 = [v21 stringByAppendingPathComponent_];

  sub_1C9A924A8();
  sub_1C98CE7B4();

LABEL_27:
  v24 = &v8[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_path];
  *v24 = v9;
  *(v24 + 1) = v22;
  v25 = &v8[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_text];
  *v25 = v15;
  *(v25 + 1) = v16;
  *&v8[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_includePaths] = v18;
  *&v8[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_substitutions] = v20;
  v31.receiver = v8;
  v31.super_class = type metadata accessor for SNDSPGraphInfo();
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t sub_1C98CCE70(uint64_t a1)
{
  sub_1C97A2C7C(a1, v24);
  if (!v25)
  {
    sub_1C97A59D0(v24);
    goto LABEL_34;
  }

  type metadata accessor for SNDSPGraphInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v9 = 0;
    return v9 & 1;
  }

  if (v23 == v1)
  {
  }

  else
  {
    sub_1C98CE7A8();
    v4 = *&v23[v3 + 8];
    if (v5)
    {
      if (!v4)
      {
        goto LABEL_33;
      }

      sub_1C98CE6EC(v2);
      v8 = v8 && v6 == v7;
      if (!v8 && (sub_1C9A93B18() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v4)
    {
      goto LABEL_33;
    }

    sub_1C98CE7A8();
    v12 = *&v23[v11 + 8];
    if (v13)
    {
      if (!v12)
      {
        goto LABEL_33;
      }

      sub_1C98CE6EC(v10);
      v16 = v8 && v14 == v15;
      if (!v16 && (sub_1C9A93B18() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v12)
    {
      goto LABEL_33;
    }

    v17 = *&v1[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_includePaths];
    v18 = *&v23[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_includePaths];
    if (v17)
    {
      if (!v18 || (sub_1C9808C60(v17, v18) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      goto LABEL_33;
    }

    v19 = *&v1[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_substitutions];
    v20 = *&v23[OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_substitutions];
    if (v19)
    {
      if (v20)
      {

        sub_1C98453B0(v19, v20);
        v9 = v21;

        return v9 & 1;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (v20)
    {

      goto LABEL_34;
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_1C98CD04C()
{
  sub_1C97A2CEC(&qword_1EC3C7DB0);
  v0 = sub_1C9A93268();
  sub_1C984ADE8();
  v1 = sub_1C9A93268() ^ v0;
  sub_1C97A2CEC(&qword_1EC3CB988);
  sub_1C98CE61C(&qword_1EC3CB990, &qword_1EC3C7BF0);
  v2 = sub_1C9A93268();
  sub_1C97A2CEC(&qword_1EC3CB998);
  sub_1C98CE61C(&unk_1EC3CB9A0, &unk_1EC3C7B20);
  return v1 ^ v2 ^ sub_1C9A93268();
}

uint64_t sub_1C98CD1F8()
{
  sub_1C98CE764(OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_path);

  sub_1C98CE764(OBJC_IVAR____TtC13SoundAnalysis14SNDSPGraphInfo_text);
}

id sub_1C98CD308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C98CE67C(a1, a2, a3, a4, a5, a6, a7, a8, v28, v30, v32.receiver, v32.super_class, v33);
  if (v34)
  {
    sub_1C98CE6CC();
    sub_1C98CE72C();
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v10 = sub_1C97A59D0(&v33);
    v9 = 0;
    v20 = 0;
  }

  sub_1C98CE73C(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v32.receiver, v32.super_class, v33);

  if (v34)
  {
    sub_1C97A2CEC(&qword_1EC3C7BF8);
    sub_1C98CE6CC();
    sub_1C98CE784();
    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    if (v20)
    {
      goto LABEL_11;
    }

LABEL_13:

    v24 = 0;
    goto LABEL_14;
  }

  sub_1C97A59D0(&v33);
  v22 = 0;
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_11:

  v23 = sub_1C9A92478();

  sub_1C9871794();
  v24 = sub_1C9A92478();
  v25 = [v23 stringByAppendingPathComponent_];

  sub_1C9A924A8();
  sub_1C98CE7B4();

LABEL_14:
  v26 = &v8[OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_path];
  *v26 = v9;
  *(v26 + 1) = v24;
  *&v8[OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_value] = v22;
  v32.receiver = v8;
  v32.super_class = type metadata accessor for SNAUStripInfo();
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t sub_1C98CD474(uint64_t a1)
{
  sub_1C97A2C7C(a1, v14);
  if (v15)
  {
    type metadata accessor for SNAUStripInfo();
    if (sub_1C98CE7F4())
    {
      if (v13 == v1)
      {
        goto LABEL_25;
      }

      sub_1C98CE7A8();
      v4 = *&v13[v3 + 8];
      if (v5)
      {
        if (v4)
        {
          sub_1C98CE6EC(v2);
          v8 = v8 && v6 == v7;
          if (v8 || (sub_1C9A93B18() & 1) != 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (!v4)
      {
LABEL_11:
        if (*&v1[OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_value])
        {

          v9 = sub_1C9A922F8();

          if (!*&v13[OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_value])
          {
            if (!v9)
            {
              goto LABEL_25;
            }

LABEL_27:

            goto LABEL_18;
          }

LABEL_22:

          v12 = sub_1C9A922F8();

          if (!v9)
          {

            if (!v12)
            {
              goto LABEL_26;
            }

            goto LABEL_18;
          }

          if (v12)
          {
            sub_1C98CE5D8();
            v10 = sub_1C9A931E8();

            return v10 & 1;
          }

          goto LABEL_27;
        }

        if (*&v13[OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_value])
        {
          v9 = 0;
          goto LABEL_22;
        }

LABEL_25:

LABEL_26:
        v10 = 1;
        return v10 & 1;
      }
    }
  }

  else
  {
    sub_1C97A59D0(v14);
  }

LABEL_18:
  v10 = 0;
  return v10 & 1;
}

unint64_t sub_1C98CD65C()
{
  v5 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_path);
  sub_1C97A2CEC(&qword_1EC3C7DB0);
  v1 = sub_1C9A93268();
  if (!*(v0 + OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_value))
  {
    sub_1C9A92348();
  }

  v2 = sub_1C9A922F8();

  v3 = [v2 hash];

  return v3 ^ v1;
}

uint64_t sub_1C98CD78C()
{
  sub_1C98CE764(OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_path);
}

id sub_1C98CD858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C98CE67C(a1, a2, a3, a4, a5, a6, a7, a8, v33, v35, v37.receiver, v37.super_class, v38);
  if (v39)
  {
    sub_1C98CE6CC();
    sub_1C98CE72C();
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }
  }

  else
  {
    v12 = sub_1C97A59D0(&v38);
    v11 = 0;
    v22 = 0;
  }

  sub_1C98CE73C(v12, v13, v14, v15, v16, v17, v18, v19, v34, v36, v37.receiver, v37.super_class, v38);

  if (v39)
  {
    sub_1C97A2CEC(&qword_1EC3C7BF8);
    sub_1C98CE6CC();
    sub_1C98CE784();
    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    if (v22)
    {
      goto LABEL_11;
    }

LABEL_13:
    v29 = 0;
    goto LABEL_14;
  }

  sub_1C97A59D0(&v38);
  v24 = 0;
  if (!v22)
  {
    goto LABEL_13;
  }

LABEL_11:

  v25 = sub_1C9A92478();
  sub_1C9871794();
  v26 = sub_1C9A92478();
  v27 = [v25 stringByAppendingPathComponent_];

  v11 = sub_1C9A924A8();
  v29 = v28;
  swift_bridgeObjectRelease_n();

LABEL_14:
  v30 = &v9[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_path];
  *v30 = v11;
  v30[1] = v29;
  *&v9[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_value] = v24;
  v31 = &v9[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath];
  *v31 = v10;
  *(v31 + 1) = v8;
  v37.receiver = v9;
  v37.super_class = type metadata accessor for SNPropertyStripInfo();
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t sub_1C98CD9D4(uint64_t a1)
{
  sub_1C97A2C7C(a1, v15);
  if (v16)
  {
    type metadata accessor for SNPropertyStripInfo();
    if (sub_1C98CE7F4())
    {
      if (v14 == v1)
      {
        goto LABEL_31;
      }

      sub_1C98CE7A8();
      v4 = *&v14[v3 + 8];
      if (v5)
      {
        if (!v4)
        {
          goto LABEL_23;
        }

        sub_1C98CE6EC(v2);
        v8 = v8 && v6 == v7;
        if (!v8 && (sub_1C9A93B18() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else if (v4)
      {
        goto LABEL_23;
      }

      v9 = *&v1[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath] == *&v14[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath] && *&v1[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath + 8] == *&v14[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath + 8];
      if (v9 || (sub_1C9A93B18() & 1) != 0)
      {
        if (*&v1[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_value])
        {

          v10 = sub_1C9A922F8();

          if (!*&v14[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_value])
          {
            if (!v10)
            {
              goto LABEL_31;
            }

LABEL_33:

            goto LABEL_24;
          }

LABEL_28:

          v13 = sub_1C9A922F8();

          if (!v10)
          {

            if (v13)
            {

              goto LABEL_24;
            }

LABEL_32:
            v11 = 1;
            return v11 & 1;
          }

          if (v13)
          {
            sub_1C98CE5D8();
            v11 = sub_1C9A931E8();

            return v11 & 1;
          }

          goto LABEL_33;
        }

        if (*&v14[OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_value])
        {
          v10 = 0;
          goto LABEL_28;
        }

LABEL_31:

        goto LABEL_32;
      }

LABEL_23:
    }
  }

  else
  {
    sub_1C97A59D0(v15);
  }

LABEL_24:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1C98CDBBC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1C97A59D0(v10);
  return v8 & 1;
}

unint64_t sub_1C98CDC78()
{
  v1 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_path);
  sub_1C97A2CEC(&qword_1EC3C7DB0);
  v2 = sub_1C9A93268();
  v3 = MEMORY[0x1CCA902B0](*(v1 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath), *(v1 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath + 8));
  if (!*(v1 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_value))
  {
    sub_1C9A92348();
    sub_1C98CE79C();
  }

  v4 = v3 ^ v2;

  v5 = sub_1C9A922F8();

  v6 = [v5 hash];

  return v4 ^ v6;
}

uint64_t sub_1C98CDDC8()
{
  sub_1C98CE764(OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_path);

  sub_1C98CE764(OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_resourcePath);
}

void *sub_1C98CDEB8(void *result)
{
  v2 = result;
  v3 = 0;
  v4 = result[2];
  v5 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v3;
  while (1)
  {
    if (v4 == v6)
    {

      *&v1[OBJC_IVAR____TtC13SoundAnalysis18SNDSPConfiguration_dspItems] = v5;
      v9.receiver = v1;
      v9.super_class = type metadata accessor for SNDSPConfiguration();
      return objc_msgSendSuper2(&v9, sel_init);
    }

    if (v6 >= v2[2])
    {
      break;
    }

    v3 = v6 + 1;
    type metadata accessor for SNDSPItemInfo();

    v8 = sub_1C98CC9C0(v7);

    v6 = v3;
    if (v8)
    {
      MEMORY[0x1CCA90400](result);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C9A92808();
      }

      result = sub_1C9A92868();
      v5 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98CE07C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_value))
  {
    v3 = sub_1C9A922F8();
LABEL_7:
    v6 = sub_1C9A6A2E0(a2, v3);
    goto LABEL_8;
  }

  if (*(a1 + OBJC_IVAR____TtC13SoundAnalysis13SNAUStripInfo_path + 8))
  {
    sub_1C98CE5D8();
    sub_1C97FB30C();

    v4 = sub_1C98CE480();
    if (v4)
    {
      v5 = v4;
      sub_1C9A92318();
    }

    sub_1C9A92348();
    sub_1C98CE79C();

    v3 = sub_1C9A922F8();

    goto LABEL_7;
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v8 = sub_1C9A91B58();
  sub_1C97BFF6C(v8, qword_1EC3D3108);
  v3 = sub_1C9A91B38();
  v9 = sub_1C9A92FA8();
  if (os_log_type_enabled(v3, v9))
  {
    *swift_slowAlloc() = 0;
    sub_1C98CE7D4(&dword_1C9788000, v10, v11, "AUStripInfo doesn't specify either value or path");
    sub_1C9840CEC();
  }

  v6 = 0;
LABEL_8:

  return v6;
}

uint64_t sub_1C98CE268(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_value))
  {
    v3 = sub_1C9A922F8();
LABEL_7:
    v6 = sub_1C9A92478();
    v7 = sub_1C9A6A6E8(a2, v3, v6);

    goto LABEL_8;
  }

  if (*(a1 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_path + 8))
  {
    v3 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis19SNPropertyStripInfo_path);
    sub_1C98CE5D8();

    v4 = sub_1C98CE480();
    if (v4)
    {
      v5 = v4;
      sub_1C9A92318();
    }

    sub_1C9A92348();

    sub_1C9A922F8();
    sub_1C97FB30C();

    goto LABEL_7;
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  v6 = sub_1C9A91B38();
  v10 = sub_1C9A92FA8();
  if (os_log_type_enabled(v6, v10))
  {
    *swift_slowAlloc() = 0;
    sub_1C98CE7D4(&dword_1C9788000, v11, v12, "PropertyStripInfo doesn't specify either value or path");
    sub_1C9840CEC();
  }

  v7 = 0;
LABEL_8:

  return v7;
}

id sub_1C98CE480()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C9A92478();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

id sub_1C98CE4F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1C98CE57C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C98CE5D8()
{
  result = qword_1EC3C4A18;
  if (!qword_1EC3C4A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C4A18);
  }

  return result;
}

uint64_t sub_1C98CE61C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1C98CE67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_1C9878160(1752457552, 0xE400000000000000, a1, &a13);
}

uint64_t sub_1C98CE6AC()
{

  return swift_dynamicCast();
}

uint64_t sub_1C98CE6CC()
{

  return swift_dynamicCast();
}

double sub_1C98CE73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_1C9878160(0x65756C6156, 0xE500000000000000, v13, &a13);
}

uint64_t sub_1C98CE7B4()
{

  return swift_bridgeObjectRelease_n();
}

void sub_1C98CE7D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_1C98CE7F4()
{

  return swift_dynamicCast();
}

id sub_1C98CE868()
{
  sub_1C98CE8D8();
  v0 = sub_1C98550EC();
  sub_1C97A2CEC(v0);
  v1 = sub_1C9A92768();

  return v1;
}

void sub_1C98CE938(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  sub_1C97A2CEC(a4);
  v8 = sub_1C9A92798();
  v9 = a1;
  sub_1C98CE9BC(v8, a6);
}

uint64_t sub_1C98CE9BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_1C98CEA7C()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___SNResultsCollector_results] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___SNResultsCollector_errors] = v2;
  *&v0[OBJC_IVAR___SNResultsCollector_completeCount] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id static SNResultsCollector.automaticallyNotifiesObservers(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v3 || (sub_1C98D1490() & 1) != 0)
  {
    return 0;
  }

  v5 = a1 == 0x73726F727265 && a2 == 0xE600000000000000;
  if (v5 || (sub_1C98D1490() & 1) != 0)
  {
    return 0;
  }

  v6 = a1 == 0x6574656C706D6F63 && a2 == 0xED0000746E756F43;
  if (v6 || (sub_1C98D1490() & 1) != 0)
  {
    return 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C98550EC();
  v10 = sub_1C9A92478();
  v11.receiver = ObjCClassFromMetadata;
  v11.super_class = &OBJC_METACLASS___SNResultsCollector;
  v7 = objc_msgSendSuper2(&v11, sel_automaticallyNotifiesObserversForKey_, v10);

  return v7;
}

void SNResultsCollector.request(_:didProduce:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C9A92478();
  [v3 willChangeValueForKey_];

  sub_1C97A2CEC(&unk_1EC3C6E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9DF30;
  *(inited + 32) = a2;
  sub_1C98D14FC();
  swift_unknownObjectRetain();
  sub_1C98D0478(inited, sub_1C97BDEE0, sub_1C98D11C8);
  swift_endAccess();
  v7 = sub_1C9A92478();
  [v3 didChangeValueForKey_];
}

void SNResultsCollector.request(_:didFailWithError:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1C9A92478();
  [v3 willChangeValueForKey_];

  sub_1C97A2CEC(&unk_1EC3C79F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2;
  sub_1C98D14FC();
  v7 = a2;
  sub_1C98D051C(inited);
  swift_endAccess();
  v8 = sub_1C9A92478();
  [v3 didChangeValueForKey_];
}

void SNResultsCollector.requestDidComplete(_:)()
{
  sub_1C98550EC();
  v1 = sub_1C9A92478();
  [v0 willChangeValueForKey_];

  v2 = *&v0[OBJC_IVAR___SNResultsCollector_completeCount];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *&v0[OBJC_IVAR___SNResultsCollector_completeCount] = v4;
    sub_1C98550EC();
    v5 = sub_1C9A92478();
    [v0 didChangeValueForKey_];
  }
}

void sub_1C98CF0FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C9A92478();
  [v3 willChangeValueForKey_];

  v6 = *a3;
  swift_beginAccess();
  *&v3[v6] = MEMORY[0x1E69E7CC0];

  v7 = sub_1C9A92478();
  [v3 didChangeValueForKey_];
}

void sub_1C98CF214()
{
  v1 = sub_1C9A92478();
  [v0 willChangeValueForKey_];

  *&v0[OBJC_IVAR___SNResultsCollector_completeCount] = 0;
  v2 = sub_1C9A92478();
  [v0 didChangeValueForKey_];
}

id SNResultsCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C98CF3C0(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E5120);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C98D13F8();
  memcpy(v8, v9, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CF464(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1C98D13EC();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4 + v3, 1, sub_1C97E537C);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D14C0();
  if (v7 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 28 * v6 + 32), (a1 + 32), 28 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v9 = *(v5 + 16);
  v8 = __OFADD__(v9, v3);
  v10 = v9 + v3;
  if (!v8)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CF528(uint64_t a1)
{
  v7 = *(a1 + 16);
  sub_1C98D13EC();
  if (__OFADD__(v8, v7))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C98D0A98(v8 + v7, 1, sub_1C97E5520);
  sub_1C98D14D4();
  sub_1C9A336B8(v44, v1 + 48 * v9 + 32, v3, a1);
  if (v10 < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, v10);
    v14 = v12 + v10;
    if (v13)
    {
      __break(1u);
LABEL_14:
      v17 = (v11 + 64) >> 6;
      while (1)
      {
        v18 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
          return;
        }

        if (v18 >= v17)
        {
          break;
        }

        ++v4;
        if (*(v3 + 8 * v18))
        {
          sub_1C98D145C();
          goto LABEL_19;
        }
      }

      sub_1C98D14E8();
      goto LABEL_20;
    }

    *(v1 + 16) = v14;
  }

  if (v10 != v3)
  {
    sub_1C979B1D4();
    goto LABEL_8;
  }

LABEL_11:
  v7 = *(v1 + 16);
  v3 = v44[1];
  v11 = v44[2];
  v4 = v44[3];
  v35 = v44[0];
  if (!v44[4])
  {
    goto LABEL_14;
  }

  sub_1C98D1440();
  v17 = v16 >> 6;
LABEL_19:
  v19 = (*(v35 + 48) + 16 * v15);
  v20 = *v19;
  v21 = v19[1];
  sub_1C97BD360(*(v35 + 56) + 32 * v15, &v38);
  v41 = v20;
  v42 = v21;
  sub_1C97A2D34(&v38, v43);

LABEL_20:
  sub_1C98D1158(&v41, &v38);
  if (!*(&v38 + 1))
  {
    goto LABEL_36;
  }

  sub_1C97F9D3C(&v38, &qword_1EC3CBA58);
  v36 = *(v1 + 24) >> 1;
  if (v36 < v7 + 1)
  {
    sub_1C97E5520();
    v1 = v34;
    v36 = *(v34 + 24) >> 1;
  }

  while (1)
  {
LABEL_23:
    sub_1C98D1158(&v41, v37);
    if (!*(&v37[0] + 1))
    {
      v32 = v37;
      v33 = &qword_1EC3CBA58;
LABEL_34:
      sub_1C97F9D3C(v32, v33);
      *(v1 + 16) = v7;
      goto LABEL_20;
    }

    v38 = v37[0];
    v39 = v37[1];
    v40 = v37[2];
    if (v7 >= v36)
    {
      v32 = &v38;
      v33 = &qword_1EC3CBA60;
      goto LABEL_34;
    }

    sub_1C97F9D3C(&v41, &qword_1EC3CBA58);
    v22 = (v1 + 32 + 48 * v7);
    v24 = v39;
    v23 = v40;
    *v22 = v38;
    v22[1] = v24;
    v22[2] = v23;
    ++v7;
    if (!v5)
    {
      break;
    }

LABEL_30:
    sub_1C98D14AC();
    v28 = v27 | (v26 << 6);
    v29 = (*(v35 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    sub_1C97BD360(*(v35 + 56) + 32 * v28, v37);
    v41 = v30;
    v42 = v31;
    sub_1C97A2D34(v37, v43);
  }

  while (1)
  {
    v25 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v25 >= v17)
    {
      sub_1C98D14E8();
      goto LABEL_23;
    }

    v5 = *(v3 + 8 * v25);
    ++v4;
    if (v5)
    {
      v4 = v25;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_36:
  sub_1C97F9D3C(&v41, &qword_1EC3CBA58);
  sub_1C979B1D4();
  sub_1C97F9D3C(&v38, &qword_1EC3CBA58);
LABEL_8:
  *v2 = v1;
}

void sub_1C98CF860(uint64_t a1)
{
  v10 = *(a1 + 16);
  sub_1C98D13EC();
  if (__OFADD__(v11, v10))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C98D0A98(v11 + v10, 1, sub_1C97E562C);
  sub_1C98D14D4();
  sub_1C9A33834(&v38, v1 + 32 * v12 + 32, v3, a1);
  if (v13 < v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13)
  {
    v16 = *(v1 + 16);
    v17 = __OFADD__(v16, v13);
    v18 = v16 + v13;
    if (v17)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v18;
  }

  if (v13 != v3)
  {
    sub_1C979B1D4();
LABEL_8:
    *v2 = v1;
    return;
  }

LABEL_11:
  v8 = *(v1 + 16);
  v15 = v39;
  v33 = v39;
  v34 = v38;
  v14 = v40;
  v4 = v41;
  if (v42)
  {
    v35 = *(v1 + 16);
    sub_1C98D1440();
    v21 = v20 >> 6;
LABEL_19:
    v23 = (*(v34 + 48) + 16 * v19);
    v10 = v23[1];
    v37 = *v23;
    v24 = (*(v34 + 56) + 16 * v19);
    v7 = *v24;
    v6 = v24[1];

    sub_1C97CE3DC(v7, v6);
    v8 = v35;
LABEL_20:
    if (v10)
    {
      v36 = *(v1 + 24) >> 1;
      if (v36 < v8 + 1)
      {
        sub_1C97E562C();
        v1 = v32;
        v36 = *(v32 + 24) >> 1;
      }

      while (1)
      {
LABEL_23:
        if (!v10 || v8 >= v36)
        {
          *(v1 + 16) = v8;
          goto LABEL_20;
        }

        sub_1C97CE3DC(v7, v6);
        sub_1C98D0E04(v37, v10, v7, v6);
        v25 = (v1 + 32 + 32 * v8);
        *v25 = v37;
        v25[1] = v10;
        v25[2] = v7;
        v25[3] = v6;
        ++v8;
        if (!v5)
        {
          break;
        }

LABEL_30:
        sub_1C98D14AC();
        v29 = (v27 << 10) | (16 * v28);
        v30 = (*(v34 + 48) + v29);
        v10 = v30[1];
        v37 = *v30;
        v31 = (*(v34 + 56) + v29);
        v7 = *v31;
        v6 = v31[1];

        sub_1C97CE3DC(v7, v6);
      }

      while (1)
      {
        v26 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v26 >= v21)
        {
          sub_1C98D1478();
          goto LABEL_23;
        }

        v5 = *(v33 + 8 * v26);
        ++v4;
        if (v5)
        {
          v4 = v26;
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    sub_1C979B1D4();
    sub_1C98D0E04(v37, 0, v7, v6);
    goto LABEL_8;
  }

LABEL_14:
  v21 = (v14 + 64) >> 6;
  while (1)
  {
    v22 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_1C98D1478();
      goto LABEL_20;
    }

    ++v4;
    if (*(v15 + 8 * v22))
    {
      v35 = v8;
      sub_1C98D145C();
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1C98CFB18(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E58DC);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&qword_1EC3C7680);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CFBD4(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E59C0);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&unk_1EC3C7730);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CFC90(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E5B74);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C98D13F8();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CFD3C(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E5E70);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&unk_1EC3CBA10);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CFDF4(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E6028);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&unk_1EC3CBA30);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CFEB0(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E6104);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C98D13F8();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98CFFB8(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E61C4);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&unk_1EC3C7580);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C98D009C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1C98D09E0(result);
  v11 = sub_1C98D141C();
  a3(v11);
  v13 = v12;

  if (v13 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 < 1)
  {
LABEL_6:
    *v3 = a2;
    return result;
  }

  v14 = *(v4 + 16);
  v9 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v9)
  {
    *(v4 + 16) = v15;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C98D0140(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E62E4);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for SNDetectorIdentifier(0);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C98D0214(uint64_t a1)
{
  result = sub_1C98D13A0(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  result = sub_1C98D0A98(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(v8);
  sub_1C98D13F8();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v10 = *(v9 + 16);
  v7 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v7)
  {
    *(v9 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1C98D02E4(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E64A8);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C98D13F8();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98D03BC(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E6644);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&unk_1EC3C76C0);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C98D0478(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1C98D09E0(result);
  v11 = sub_1C98D141C();
  a3(v11);
  v13 = v12;

  if (v13 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 < 1)
  {
LABEL_6:
    *v3 = a2;
    return result;
  }

  v14 = *(v4 + 16);
  v9 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v9)
  {
    *(v4 + 16) = v15;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C98D051C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C98D0A98(result, 1, sub_1C97E67F0);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&unk_1EC3CA040);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1C98D062C(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E68FC);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&unk_1EC3CBA00);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98D06E8(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E6A08);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&qword_1EC3C76F0);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98D07A0(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E6574);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C98D13F8();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98D087C(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1C98D13EC();
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v5 + v3, 1, v4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D14C0();
  if (v8 != v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v9 = __OFADD__(v10, v3);
  v11 = v10 + v3;
  if (!v9)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C98D0928(uint64_t a1)
{
  v4 = sub_1C98D13A0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C98D0A98(v4, 1, sub_1C97E6E84);
  sub_1C98D1410();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C98D13B8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C97A2CEC(&qword_1EC3C7A08);
  sub_1C98D13CC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C98D1404();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C98D09E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C9A934C8();
LABEL_9:
  result = sub_1C9A93618();
  *v1 = result;
  return result;
}

uint64_t sub_1C98D0A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C98D0B10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C9A934C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C97BDEE0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SNAnalyzerInfo();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C98D1348(&unk_1EC3CB9F0, &qword_1EC3CB9E8);
        for (i = 0; i != v7; ++i)
        {
          sub_1C97A2CEC(&qword_1EC3CB9E8);
          v9 = sub_1C97BC97C(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98D0C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C9A934C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C97BDEE0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C97A2CEC(&qword_1EC3CB9D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C98D1348(&qword_1EC3CB9E0, &qword_1EC3CB9D8);
        for (i = 0; i != v7; ++i)
        {
          sub_1C97A2CEC(&qword_1EC3CB9D8);
          v9 = sub_1C97BC918(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C98D0E04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1C97A5978(a3, a4);
  }
}

uint64_t sub_1C98D0E50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C9A934C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C97BDEE0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C97BD318(0, &qword_1EC3CBA40);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C98D1348(&qword_1EC3CBA50, &qword_1EC3CBA48);
        for (i = 0; i != v7; ++i)
        {
          sub_1C97A2CEC(&qword_1EC3CBA48);
          v9 = sub_1C97BD180(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98D0FD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C9A934C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C97BDEE0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C97BD318(0, &qword_1EC3C54B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C98D1348(&qword_1EC3CBA28, &qword_1EC3CBA20);
        for (i = 0; i != v7; ++i)
        {
          sub_1C97A2CEC(&qword_1EC3CBA20);
          v9 = sub_1C97BB250(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98D1158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CBA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98D11C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C9A934C8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C97BDEE0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C97A2CEC(&unk_1EC3C8670);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C98D1348(&qword_1EC3CBA70, &qword_1EC3CBA68);
        for (i = 0; i != v7; ++i)
        {
          sub_1C97A2CEC(&qword_1EC3CBA68);
          v9 = sub_1C97BC8AC(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98D1348(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C98D13CC()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C98D1490()
{

  return sub_1C9A93B18();
}

uint64_t sub_1C98D14FC()
{

  return swift_beginAccess();
}

uint64_t sub_1C98D151C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1C97BD318(0, a3);
  sub_1C97BD318(0, &unk_1EC3C9010);
  result = sub_1C9A92FF8();
  if (!v3 && !result)
  {
    sub_1C97A8E8C();
    sub_1C97AA928();
    v5 = swift_allocError();
    sub_1C98DE30C(v5, v6);
    return swift_willThrow();
  }

  return result;
}

void sub_1C98D15D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97BD318(0, &unk_1EC3C9010);
  v5 = sub_1C9A92FF8();
  if (!v3)
  {
    v6 = v5;
    v7 = v5;
    sub_1C97FE590(&v7, a3, &v8);
  }
}

uint64_t sub_1C98D168C()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    sub_1C9A91618();
  }

  else
  {
    v3 = v2;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return sub_1C988EB2C();
}

uint64_t sub_1C98D1780@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C98DD970();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  return result;
}

uint64_t sub_1C98D18E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C9A91748();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  *(inited + 24) = v10;
  if (v10 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v9, v10);
  }

  v15 = a2;
  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v9, v10);
  sub_1C97DA2E8(v9, v10);
  sub_1C9A91258();
  sub_1C98DDE28(&qword_1EC3CDFB0, MEMORY[0x1E69695A8]);
  sub_1C9A91248();

  sub_1C97AA780(v9, v10);
  if (v2)
  {
  }

  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));
  return (*(v6 + 32))(v15, v8, v5);
}

void *sub_1C98D1AFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C98DDCC8();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  return memcpy(a2, v9, 0xC0uLL);
}

uint64_t sub_1C98D1C68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C98DDE70();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  return result;
}

uint64_t sub_1C98D1DCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C98DDF18();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_1C98D1F30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v2;
  *(inited + 24) = v3;
  if (v3 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v2, v3);
  }

  sub_1C97DA2E8(v2, v3);
  sub_1C97DA2E8(v2, v3);
  v6 = sub_1C98DAE34();
  sub_1C97AA780(v2, v3);
  if (v1)
  {
  }

  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));
  return v6 & 1;
}

void *sub_1C98D2030@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C98DC750();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  return memcpy(a2, __src, 0x48uLL);
}

void *sub_1C98D219C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C97F9574();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  return memcpy(a2, v9, 0x60uLL);
}

uint64_t sub_1C98D2308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C97A6FCC();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_1C98D2480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RemoteRequest();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v8;
  *(inited + 24) = v9;
  if (v9 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v8, v9);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v8, v9);
  sub_1C97DA2E8(v8, v9);
  sub_1C9A91258();
  sub_1C98DDE28(&qword_1EC3CBB40, type metadata accessor for RemoteRequest);
  sub_1C9A91248();

  sub_1C97AA780(v8, v9);
  if (v2)
  {
  }

  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));
  return sub_1C98DDD70(v7, a2);
}

uint64_t sub_1C98D2658@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C97A68A0();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

uint64_t sub_1C98D27C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C97A65A4();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

void *sub_1C98D2930@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C98DD76C();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_1C98D2A9C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C97A64FC();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

uint64_t sub_1C98D2C08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v5, v4);
  }

  sub_1C9A91268();
  swift_allocObject();
  sub_1C97DA2E8(v5, v4);
  sub_1C97DA2E8(v5, v4);
  sub_1C9A91258();
  sub_1C98DD9C4();
  sub_1C9A91248();
  if (v2)
  {

    sub_1C97AA780(v5, v4);
  }

  sub_1C97AA780(v5, v4);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));

  *a2 = v9;
  return result;
}

uint64_t sub_1C98D2D6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v3, v4);
  }

  else
  {
    sub_1C97DA2E8(v3, v4);
    sub_1C97DA2E8(v3, v4);
    v2 = sub_1C98DB474();
    sub_1C97AA780(v3, v4);
    if (!v1)
    {
      swift_setDeallocating();
      sub_1C97AA780(*(inited + 16), *(inited + 24));
      return v2;
    }
  }

  return v2;
}

uint64_t sub_1C98D2E74(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v3, v4);
  }

  else
  {
    sub_1C97DA2E8(v3, v4);
    sub_1C97DA2E8(v3, v4);
    v2 = sub_1C98DB510();
    sub_1C97AA780(v3, v4);
    if (!v1)
    {
      swift_setDeallocating();
      sub_1C97AA780(*(inited + 16), *(inited + 24));
      return v2 & 1;
    }
  }

  return v2 & 1;
}

uint64_t sub_1C98D2F74()
{
  sub_1C98DE358();
  inited = swift_initStackObject();
  sub_1C98DE420(inited);
  if (!v5 & v4)
  {
    sub_1C97A8E8C();
    sub_1C97AA928();
    v6 = swift_allocError();
    sub_1C98DE30C(v6, v7);
    swift_willThrow();
    v8 = sub_1C988EB2C();
    sub_1C97DA2E8(v8, v9);
  }

  else
  {
    v10 = sub_1C988EB2C();
    sub_1C97DA2E8(v10, v11);
    v12 = sub_1C988EB2C();
    sub_1C97DA2E8(v12, v13);
    sub_1C988EB2C();
    v1 = sub_1C98DB5B0();
    v14 = sub_1C988EB2C();
    sub_1C97AA780(v14, v15);
    if (!v2)
    {
      swift_setDeallocating();
      sub_1C97AA780(*(v0 + 16), *(v0 + 24));
      return v1;
    }
  }

  return v1;
}

unint64_t *sub_1C98D3048()
{
  sub_1C98DE358();
  inited = swift_initStackObject();
  sub_1C98DE420(inited);
  if (!v5 & v4)
  {
    sub_1C97A8E8C();
    sub_1C97AA928();
    v6 = swift_allocError();
    sub_1C98DE30C(v6, v7);
    swift_willThrow();
    v8 = sub_1C988EB2C();
    sub_1C97DA2E8(v8, v9);
  }

  else
  {
    v10 = sub_1C988EB2C();
    sub_1C97DA2E8(v10, v11);
    v12 = sub_1C988EB2C();
    sub_1C97DA2E8(v12, v13);
    v14 = sub_1C988EB2C();
    v1 = sub_1C98D151C(v14, v15, v1);
    v16 = sub_1C988EB2C();
    sub_1C97AA780(v16, v17);
    if (!v2)
    {
      swift_setDeallocating();
      sub_1C97AA780(*(v0 + 16), *(v0 + 24));
      return v1;
    }
  }

  return v1;
}

uint64_t sub_1C98D311C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  *(inited + 24) = v4;
  if (v4 >> 60 == 15)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_1C97DA2E8(v3, v4);
  }

  else
  {
    sub_1C97DA2E8(v3, v4);
    sub_1C97DA2E8(v3, v4);
    v2 = sub_1C98DB704(v3, v4, &qword_1EC3C9AA0, &unk_1C9AA0690, sub_1C98DDA18);
    sub_1C97AA780(v3, v4);
    if (!v1)
    {
      swift_setDeallocating();
      sub_1C97AA780(*(inited + 16), *(inited + 24));
      return v2;
    }
  }

  return v2;
}

uint64_t sub_1C98D3240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  *(inited + 24) = v14;
  if (v14 >> 60 == 15)
  {
    sub_1C97A8E8C();
    sub_1C97AA928();
    v16 = swift_allocError();
    sub_1C98DE30C(v16, v17);
    swift_willThrow();
    v18 = sub_1C98DE2C4();
    sub_1C97DA2E8(v18, v19);
  }

  v29 = v8;
  v20 = *(a3 + 16);
  v21 = sub_1C98DE2C4();
  sub_1C97DA2E8(v21, v22);
  v23 = sub_1C98DE2C4();
  sub_1C97DA2E8(v23, v24);
  v25 = sub_1C98DE2C4();
  v20(v25);
  v26 = sub_1C98DE2C4();
  sub_1C97AA780(v26, v27);
  if (v4)
  {
  }

  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));
  return (*(v29 + 32))(a4, v11, a2);
}

uint64_t sub_1C98D3400(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1C98CAEC8();
  v11[3] = MEMORY[0x1E6969080];
  v11[4] = sub_1C98CB4F8();
  v11[0] = a2;
  v11[1] = a3;
  sub_1C97CE3DC(a2, a3);
  v6 = sub_1C9A1DDD0(v11);
  if (v3)
  {

    return sub_1C97A592C(v11);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_1C97A592C(v11);
    sub_1C97CE3DC(v9, v10);
    sub_1C98CA9F8(v9, v10);
    sub_1C97A5978(v9, v10);
    sub_1C97A5978(v9, v10);
  }
}

uint64_t sub_1C98D34E4()
{
  sub_1C98CAEC8();
  v2 = sub_1C9A91748();
  v9[3] = v2;
  v9[4] = sub_1C98DDE28(&unk_1EC3CBB50, MEMORY[0x1E69695A8]);
  v3 = sub_1C981CDF0(v9);
  (*(*(v2 - 8) + 16))(v3, v0, v2);
  v4 = sub_1C9A1DDD0(v9);
  if (v1)
  {

    return sub_1C97A592C(v9);
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_1C97A592C(v9);
    sub_1C97CE3DC(v7, v8);
    sub_1C98CA9F8(v7, v8);
    sub_1C97A5978(v7, v8);
    sub_1C97A5978(v7, v8);
  }
}

uint64_t sub_1C98D3620()
{
  sub_1C98CAEC8();
  v8[3] = &type metadata for AccessibilitySoundRecognition.CustomModelTensors;
  v8[4] = sub_1C98DDC18();
  v8[0] = swift_allocObject();
  memcpy((v8[0] + 16), v0, 0xC0uLL);
  sub_1C98DDC6C(v0, v7);
  v2 = sub_1C9A1DDD0(v8);
  if (v1)
  {

    return sub_1C97A592C(v8);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_1C97A592C(v8);
    sub_1C97CE3DC(v5, v6);
    sub_1C98CA9F8(v5, v6);
    sub_1C97A5978(v5, v6);
    sub_1C97A5978(v5, v6);
  }
}

uint64_t sub_1C98D372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C98CAEC8();
  v11[3] = &type metadata for AccessibilitySoundActions.SoundAction;
  v11[4] = sub_1C98DDF6C();
  v11[0] = a2;
  v11[1] = a3;

  v6 = sub_1C9A1DDD0(v11);
  if (v3)
  {

    return sub_1C97A592C(v11);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_1C97A592C(v11);
    sub_1C97CE3DC(v9, v10);
    sub_1C98CA9F8(v9, v10);
    sub_1C97A5978(v9, v10);
    sub_1C97A5978(v9, v10);
  }
}

uint64_t sub_1C98D380C()
{
  sub_1C98DE100();
  v4 = v3;
  sub_1C98CAEC8();
  v24 = v2;
  v25 = v0();
  v12 = sub_1C98DE2E8(v25, v5, v6, v7, v8, v9, v10, v11, v22, v4 & 1);
  sub_1C9A1DDD0(v12);
  if (v1)
  {

    return sub_1C97A592C(v23);
  }

  else
  {
    sub_1C97A592C(v23);
    v14 = sub_1C97F09E4();
    sub_1C97CE3DC(v14, v15);
    v16 = sub_1C97F09E4();
    sub_1C98CA9F8(v16, v17);
    v18 = sub_1C97F09E4();
    sub_1C97A5978(v18, v19);
    v20 = sub_1C97F09E4();
    sub_1C97A5978(v20, v21);
  }
}

uint64_t sub_1C98D38D4()
{
  sub_1C98CAEC8();
  v8[3] = &type metadata for SoundClassification.Result;
  v8[4] = sub_1C98DDD1C();
  v8[0] = swift_allocObject();
  memcpy((v8[0] + 16), v0, 0x48uLL);
  sub_1C984A444(v0, &v7);
  v2 = sub_1C9A1DDD0(v8);
  if (v1)
  {

    return sub_1C97A592C(v8);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_1C97A592C(v8);
    sub_1C97CE3DC(v5, v6);
    sub_1C98CA9F8(v5, v6);
    sub_1C97A5978(v5, v6);
    sub_1C97A5978(v5, v6);
  }
}

uint64_t sub_1C98D39D8()
{
  sub_1C98CAEC8();
  v8[3] = &type metadata for SoundDetection.Result;
  v8[4] = sub_1C97F95F0();
  v8[0] = swift_allocObject();
  memcpy((v8[0] + 16), v0, 0x60uLL);
  sub_1C97F9900(v0, v7);
  v2 = sub_1C9A1DDD0(v8);
  if (v1)
  {

    return sub_1C97A592C(v8);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_1C97A592C(v8);
    sub_1C97CE3DC(v5, v6);
    sub_1C98CA9F8(v5, v6);
    sub_1C97A5978(v5, v6);
    sub_1C97A5978(v5, v6);
  }
}

uint64_t sub_1C98D3ADC()
{
  sub_1C98CAEC8();
  v9[3] = &unk_1F494DE90;
  v9[4] = sub_1C97A6F78();
  v2 = swift_allocObject();
  v9[0] = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  v4 = sub_1C9A1DDD0(v9);
  if (v1)
  {

    return sub_1C97A592C(v9);
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_1C97A592C(v9);
    sub_1C97CE3DC(v7, v8);
    sub_1C98CA9F8(v7, v8);
    sub_1C97A5978(v7, v8);
    sub_1C97A5978(v7, v8);
  }
}

uint64_t sub_1C98D3BDC()
{
  sub_1C98CAEC8();
  v8[3] = type metadata accessor for RemoteRequest();
  v8[4] = sub_1C98DDE28(&qword_1EC3C98F0, type metadata accessor for RemoteRequest);
  v2 = sub_1C981CDF0(v8);
  sub_1C981CE50(v0, v2);
  v3 = sub_1C9A1DDD0(v8);
  if (v1)
  {

    return sub_1C97A592C(v8);
  }

  else
  {
    v6 = v3;
    v7 = v4;
    sub_1C97A592C(v8);
    sub_1C97CE3DC(v6, v7);
    sub_1C98CA9F8(v6, v7);
    sub_1C97A5978(v6, v7);
    sub_1C97A5978(v6, v7);
  }
}

uint64_t sub_1C98D3CF0()
{
  sub_1C98CAEC8();
  v11[3] = &type metadata for DirectionOfArrival.Result;
  v11[4] = sub_1C97A67F0();
  v2 = swift_allocObject();
  v11[0] = v2;
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v4 = v0[3];
  v2[3] = v0[2];
  v2[4] = v4;
  sub_1C97A6844(v0, v10);
  v5 = sub_1C9A1DDD0(v11);
  if (v1)
  {

    return sub_1C97A592C(v11);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_1C97A592C(v11);
    sub_1C97CE3DC(v8, v9);
    sub_1C98CA9F8(v8, v9);
    sub_1C97A5978(v8, v9);
    sub_1C97A5978(v8, v9);
  }
}

uint64_t sub_1C98D3DF4()
{
  sub_1C98CAEC8();
  v10[3] = &unk_1F49309C0;
  v10[4] = sub_1C97A6550();
  v2 = swift_allocObject();
  v10[0] = v2;
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v4 = v0[3];
  v2[3] = v0[2];
  v2[4] = v4;
  v5 = sub_1C9A1DDD0(v10);
  if (v1)
  {

    return sub_1C97A592C(v10);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_1C97A592C(v10);
    sub_1C97CE3DC(v8, v9);
    sub_1C98CA9F8(v8, v9);
    sub_1C97A5978(v8, v9);
    sub_1C97A5978(v8, v9);
  }
}

uint64_t sub_1C98D3EEC()
{
  sub_1C98CAEC8();
  v8[3] = &unk_1F4950698;
  v8[4] = sub_1C98DDA94();
  v8[0] = swift_allocObject();
  memcpy((v8[0] + 16), v0, 0x68uLL);
  sub_1C98DDAE8(v0, &v7);
  v2 = sub_1C9A1DDD0(v8);
  if (v1)
  {

    return sub_1C97A592C(v8);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_1C97A592C(v8);
    sub_1C97CE3DC(v5, v6);
    sub_1C98CA9F8(v5, v6);
    sub_1C97A5978(v5, v6);
    sub_1C97A5978(v5, v6);
  }
}

uint64_t sub_1C98D3FF0()
{
  sub_1C98CAEC8();
  v11[3] = &unk_1F4945D70;
  v11[4] = sub_1C97A644C();
  v2 = swift_allocObject();
  v11[0] = v2;
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v4 = v0[3];
  v2[3] = v0[2];
  v2[4] = v4;
  sub_1C97A64A0(v0, v10);
  v5 = sub_1C9A1DDD0(v11);
  if (v1)
  {

    return sub_1C97A592C(v11);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_1C97A592C(v11);
    sub_1C97CE3DC(v8, v9);
    sub_1C98CA9F8(v8, v9);
    sub_1C97A5978(v8, v9);
    sub_1C97A5978(v8, v9);
  }
}

uint64_t sub_1C98D40F4(uint64_t a1, uint64_t a2)
{
  sub_1C98CAEC8();
  v9[3] = &type metadata for CLAP.Detection;
  v9[4] = sub_1C98DDDD4();
  v9[0] = a2;

  v4 = sub_1C9A1DDD0(v9);
  if (v2)
  {

    return sub_1C97A592C(v9);
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_1C97A592C(v9);
    sub_1C97CE3DC(v7, v8);
    sub_1C98CA9F8(v7, v8);
    sub_1C97A5978(v7, v8);
    sub_1C97A5978(v7, v8);
  }
}

uint64_t sub_1C98D41D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C98CAEC8();
  v11[3] = MEMORY[0x1E69E6158];
  v11[4] = MEMORY[0x1E69E6160];
  v11[0] = a2;
  v11[1] = a3;

  v6 = sub_1C9A1DDD0(v11);
  if (v3)
  {

    return sub_1C97A592C(v11);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_1C97A592C(v11);
    sub_1C97CE3DC(v9, v10);
    sub_1C98CA9F8(v9, v10);
    sub_1C97A5978(v9, v10);
    sub_1C97A5978(v9, v10);
  }
}

uint64_t sub_1C98D42B0(uint64_t a1, char a2)
{
  sub_1C98CAEC8();
  v9[3] = MEMORY[0x1E69E6370];
  v9[4] = MEMORY[0x1E69E6378];
  LOBYTE(v9[0]) = a2;
  v4 = sub_1C9A1DDD0(v9);
  if (v2)
  {

    return sub_1C97A592C(v9);
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_1C97A592C(v9);
    sub_1C97CE3DC(v7, v8);
    sub_1C98CA9F8(v7, v8);
    sub_1C97A5978(v7, v8);
    sub_1C97A5978(v7, v8);
  }
}

uint64_t sub_1C98D4384()
{
  sub_1C98DE100();
  v4 = v3;
  v5 = sub_1C98CAEC8();
  v25 = v2;
  v26 = v0;
  v13 = sub_1C98DE2E8(v5, v6, v7, v8, v9, v10, v11, v12, v23, v4);
  sub_1C9A1DDD0(v13);
  if (v1)
  {

    return sub_1C97A592C(v24);
  }

  else
  {
    sub_1C97A592C(v24);
    v15 = sub_1C97F09E4();
    sub_1C97CE3DC(v15, v16);
    v17 = sub_1C97F09E4();
    sub_1C98CA9F8(v17, v18);
    v19 = sub_1C97F09E4();
    sub_1C97A5978(v19, v20);
    v21 = sub_1C97F09E4();
    sub_1C97A5978(v21, v22);
  }
}

uint64_t sub_1C98D443C()
{
  sub_1C98DE284();
  sub_1C98CAEC8();
  sub_1C98DE3E0();
  v4 = v3(v2, v1);
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    sub_1C97CE3DC(v4, v5);
    sub_1C98CA9F8(v6, v7);
    sub_1C97A5978(v6, v7);
    sub_1C97A5978(v6, v7);
  }
}

uint64_t sub_1C98D44E4()
{
  sub_1C97AA95C();
  sub_1C98DE0B8();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C98DE1B0();

  return sub_1C98D708C();
}

uint64_t sub_1C98D457C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98D4610;

  return sub_1C988FB68();
}

uint64_t sub_1C98D4610()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D4730()
{
  sub_1C97DA934();
  v5 = v1;
  sub_1C98DE0D4();
  sub_1C98DA128(&v4);

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    **(v1 + 16) = v4;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D47BC()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D4840()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D4960()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98DE49C();
  sub_1C98DA1C0(v0);

  sub_1C97DA91C();
  sub_1C98AE0F8();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C98D49E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98D4A7C;

  return sub_1C988FB68();
}

uint64_t sub_1C98D4A7C()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D4B9C()
{
  v5 = v1;
  sub_1C98DE0D4();
  sub_1C98DA2E4(v4);

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    memcpy(*(v1 + 16), v4, 0xC0uLL);
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D4C30()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D4CB4()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D4DD4()
{
  sub_1C97DA934();
  sub_1C98DE0D4();
  sub_1C98DA384();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    **(v1 + 16) = v4;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D4E60()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D4EE4()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D5004()
{
  sub_1C97DA934();
  sub_1C98DE0D4();
  sub_1C98DA3F0();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    v3 = *(v1 + 16);
    *v3 = v5;
    v3[1] = v6;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D5090()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C98D5120;

  return sub_1C988FB68();
}

uint64_t sub_1C98D5120()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  sub_1C98DE3A0(v4);
  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98D5234()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98DE208();
  sub_1C98DA458();
  if (v0)
  {

    sub_1C981E0A0();
    sub_1C98AE0F8();

    return v2(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {

    sub_1C98AE0F8();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1C98D52FC()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D5380()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D54A0()
{
  v5 = v1;
  sub_1C98DE0D4();
  sub_1C98DA4DC();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    memcpy(*(v1 + 16), __src, 0x48uLL);
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D5534()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D55B8()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D56D8()
{
  v5 = v1;
  sub_1C98DE0D4();
  sub_1C98DA550();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    memcpy(*(v1 + 16), v4, 0x60uLL);
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D576C()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D57F0()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D5910()
{
  sub_1C981E3E4();
  sub_1C98DE0D4();
  sub_1C98DA5C0();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    v3 = *(v1 + 16);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *(v3 + 48) = v8;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D59B0()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D5A34()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D5B54()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98DE49C();
  sub_1C98DA640(v0);

  sub_1C97DA91C();
  sub_1C98AE0F8();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C98D5BDC()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D5C60()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D5D80()
{
  sub_1C981E3E4();
  sub_1C98DE0D4();
  sub_1C98DA708();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    v3 = *(v1 + 16);
    *v3 = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D5E14()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D5E98()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D5FB8()
{
  sub_1C981E3E4();
  sub_1C98DE0D4();
  sub_1C98DA76C();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    v3 = *(v1 + 16);
    *v3 = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D604C()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D60D0()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D61F0()
{
  v5 = v1;
  sub_1C98DE0D4();
  sub_1C98DA7D0();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    memcpy(*(v1 + 16), __src, 0x68uLL);
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D6284()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D6308()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D6428()
{
  sub_1C981E3E4();
  sub_1C98DE0D4();
  sub_1C98DA844();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    v3 = *(v1 + 16);
    *v3 = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D64BC()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98D6540()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 32) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D6660()
{
  sub_1C97DA934();
  sub_1C98DE0D4();
  sub_1C98DA8A8();

  if (v0)
  {
    sub_1C981E0A0();
  }

  else
  {
    **(v1 + 16) = v4;
    sub_1C97DA8DC();
  }

  return v2();
}

uint64_t sub_1C98D66EC()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C988FB68();
}

uint64_t sub_1C98D6774()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  sub_1C98DE3A0(v4);
  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98D6888()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98DE208();
  sub_1C98DA93C();
  if (v0)
  {

    sub_1C981E0A0();
    sub_1C97DABB0();

    return v2(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {

    sub_1C97DABB0();

    return v13(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1C98D6958()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C988FB68();
}

uint64_t sub_1C98D69E0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  *v3 = v4;
  sub_1C98DE3A0(v5);
  if (v0)
  {
    v6 = *(v4 + 8);

    return v6(0);
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C98D6AFC()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98DE208();
  sub_1C98DA994();
  sub_1C98DE2B4();

  sub_1C98AE0F8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C98D6BA4()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C988FB68();
}

uint64_t sub_1C98D6C2C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  sub_1C98DE3A0(v4);
  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98D6D40()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98DE208();
  sub_1C98DAA1C();
  sub_1C98DE2B4();
  if (v0)
  {

    sub_1C98AE0F8();

    return v1(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {

    sub_1C98DE3B8();
    sub_1C98AE0F8();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1C98D6E14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C98D6EA4;

  return sub_1C988FB68();
}

uint64_t sub_1C98D6EA4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  sub_1C98DE3A0(v4);
  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98D6FB8()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98DE208();
  sub_1C98DAA1C();
  sub_1C98DE2B4();
  if (v0)
  {

    sub_1C98AE0F8();

    return v1(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {

    sub_1C98DE3B8();
    sub_1C98AE0F8();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1C98D708C()
{
  sub_1C97AA884();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  sub_1C97DA950(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98D711C()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 48) = v1;

  if (v1)
  {
    sub_1C97DA844();

    return v8();
  }

  else
  {
    *(v4 + 56) = v0;
    v10 = sub_1C97DA730();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C98D723C()
{
  sub_1C97DAA1C();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1C9991F1C(v2, v2, v1, v3);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C98D7314()
{
  sub_1C99DC144();
  v13[3] = type metadata accessor for RemoteRequest();
  v13[4] = &off_1F49353B0;
  v1 = sub_1C981CDF0(v13);
  sub_1C981CE50(v0, v1);

  v10 = sub_1C98DE244(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13[0]);
  sub_1C98CB0DC(v10);

  return sub_1C98DE4EC(v13);
}

uint64_t sub_1C98D73AC()
{
  sub_1C99DC144();
  v3[3] = &type metadata for SoundDetection.Result;
  v3[4] = &off_1F492FD00;
  v3[0] = swift_allocObject();
  memcpy((v3[0] + 16), v0, 0x60uLL);

  sub_1C97F9900(v0, v2);
  sub_1C98CB0DC(v3);

  return sub_1C97A592C(v3);
}

uint64_t sub_1C98D746C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1C99DC144();
  v6[3] = MEMORY[0x1E6969080];
  v6[4] = &off_1F494AC00;
  v6[0] = a2;
  v6[1] = a3;

  sub_1C97CE3DC(a2, a3);
  sub_1C98CB0DC(v6);

  return sub_1C97A592C(v6);
}

uint64_t sub_1C98D7514()
{
  sub_1C99DC144();
  v1 = sub_1C9A91748();
  v4[3] = v1;
  v4[4] = &off_1F494ACB0;
  v2 = sub_1C981CDF0(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);

  sub_1C98CB0DC(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C98D75E4()
{
  sub_1C99DC144();
  v3[3] = &type metadata for AccessibilitySoundRecognition.CustomModelTensors;
  v3[4] = &off_1F4943828;
  v3[0] = swift_allocObject();
  memcpy((v3[0] + 16), v0, 0xC0uLL);

  sub_1C98DDC6C(v0, v2);
  sub_1C98CB0DC(v3);

  return sub_1C97A592C(v3);
}

uint64_t sub_1C98D76AC()
{
  sub_1C98DE100();
  v3 = v2;
  sub_1C99DC144();
  v16 = v1;
  v17 = v0;

  v12 = sub_1C98DE2E8(v4, v5, v6, v7, v8, v9, v10, v11, v14, v3 & 1);
  sub_1C98CB0DC(v12);
  sub_1C98DE4D4();

  return sub_1C98DE4EC(v15);
}

uint64_t sub_1C98D7728()
{
  sub_1C99DC144();
  v3[3] = &type metadata for SoundClassification.Result;
  v3[4] = &off_1F4940FC0;
  v3[0] = swift_allocObject();
  memcpy((v3[0] + 16), v0, 0x48uLL);

  sub_1C984A444(v0, &v2);
  sub_1C98CB0DC(v3);

  return sub_1C97A592C(v3);
}

uint64_t sub_1C98D77E8()
{
  sub_1C99DC144();
  v4[3] = &unk_1F494DE90;
  v4[4] = &off_1F494DF60;
  v1 = swift_allocObject();
  v4[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);

  sub_1C98CB0DC(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C98D78A4()
{
  sub_1C99DC144();
  v6[3] = &type metadata for DirectionOfArrival.Result;
  v6[4] = &off_1F4938ED0;
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v3 = v0[3];
  v1[3] = v0[2];
  v1[4] = v3;

  sub_1C97A6844(v0, v5);
  sub_1C98CB0DC(v6);

  return sub_1C97A592C(v6);
}

uint64_t sub_1C98D7964()
{
  sub_1C99DC144();
  v5[3] = &unk_1F49309C0;
  v5[4] = &off_1F4930B38;
  v1 = swift_allocObject();
  v5[0] = v1;
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v3 = v0[3];
  v1[3] = v0[2];
  v1[4] = v3;

  sub_1C98CB0DC(v5);

  return sub_1C97A592C(v5);
}

uint64_t sub_1C98D7A18()
{
  sub_1C99DC144();
  v3[3] = &unk_1F4950698;
  v3[4] = &off_1F4950780;
  v3[0] = swift_allocObject();
  memcpy((v3[0] + 16), v0, 0x68uLL);

  sub_1C98DDAE8(v0, &v2);
  sub_1C98CB0DC(v3);

  return sub_1C97A592C(v3);
}

uint64_t sub_1C98D7AD8()
{
  sub_1C99DC144();
  v6[3] = &unk_1F4945D70;
  v6[4] = &off_1F4945E48;
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v3 = v0[3];
  v1[3] = v0[2];
  v1[4] = v3;

  sub_1C97A64A0(v0, v5);
  sub_1C98CB0DC(v6);

  return sub_1C97A592C(v6);
}

uint64_t sub_1C98D7B98(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v4[3] = &type metadata for CLAP.Detection;
  v4[4] = &off_1F494EBE0;
  v4[0] = a2;

  sub_1C98CB0DC(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C98D7C30()
{
  sub_1C99DC144();
  v12[3] = sub_1C97BD318(0, &qword_1EC3CBB80);
  v12[4] = &off_1F492D780;

  v1 = v0;
  v9 = sub_1C98DE244(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C98CB0DC(v9);

  return sub_1C98DE4EC(v12);
}

uint64_t sub_1C98D7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C98DE284();
  sub_1C99DC144();
  v22 = a4;
  v23 = a5;
  v21 = v5;

  v17 = sub_1C98DE2E8(v9, v10, v11, v12, v13, v14, v15, v16, v19, v6);
  sub_1C98CB0DC(v17);

  return sub_1C98DE4EC(&v20);
}

uint64_t sub_1C98D7D60(uint64_t a1, char a2)
{
  sub_1C99DC144();
  v4[3] = MEMORY[0x1E69E6370];
  v4[4] = &off_1F494A940;
  LOBYTE(v4[0]) = a2;

  sub_1C98CB0DC(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C98D7DF0()
{
  sub_1C98DE100();
  v3 = v2;
  sub_1C99DC144();
  v16 = v1;
  v17 = v0;

  v12 = sub_1C98DE2E8(v4, v5, v6, v7, v8, v9, v10, v11, v14, v3);
  sub_1C98CB0DC(v12);
  sub_1C98DE4D4();

  return sub_1C98DE4EC(v15);
}

uint64_t sub_1C98D7E68()
{
  sub_1C98DE334();
  v16 = v2;
  v17 = v1;
  v3 = sub_1C981CDF0(v15);
  (*(*(v2 - 8) + 16))(v3, v0, v2);

  v12 = sub_1C98DE244(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15[0]);
  sub_1C98CB0DC(v12);
  sub_1C98DE4D4();

  return sub_1C98DE4EC(v15);
}

uint64_t sub_1C98D7F08()
{
  sub_1C98DE134();
  memcpy(v2, v0, sizeof(v2));
  return sub_1C98D82DC();
}

uint64_t sub_1C98D7F48(uint64_t a1, unint64_t a2)
{
  v6[3] = MEMORY[0x1E6969080];
  v6[4] = sub_1C98CB4F8();
  v6[0] = a1;
  v6[1] = a2;
  sub_1C97CE3DC(a1, a2);
  v4 = sub_1C9A1DDD0(v6);
  sub_1C97A592C(v6);
  return v4;
}

uint64_t sub_1C98D7FD0()
{
  v1 = sub_1C9A91748();
  v5[3] = v1;
  v5[4] = sub_1C98DDE28(&unk_1EC3CBB50, MEMORY[0x1E69695A8]);
  v2 = sub_1C981CDF0(v5);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  v3 = sub_1C9A1DDD0(v5);
  sub_1C97A592C(v5);
  return v3;
}

uint64_t sub_1C98D80AC()
{
  v4[3] = &type metadata for AccessibilitySoundRecognition.CustomModelTensors;
  v4[4] = sub_1C98DDC18();
  v4[0] = swift_allocObject();
  memcpy((v4[0] + 16), v0, 0xC0uLL);
  sub_1C98DDC6C(v0, v3);
  v1 = sub_1C9A1DDD0(v4);
  sub_1C97A592C(v4);
  return v1;
}

uint64_t sub_1C98D8150(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for AccessibilitySoundActions.SoundAction;
  v6[4] = sub_1C98DDF6C();
  v6[0] = a1;
  v6[1] = a2;

  v4 = sub_1C9A1DDD0(v6);
  sub_1C97A592C(v6);
  return v4;
}

uint64_t sub_1C98D81D4(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v15 = a2;
  v16 = a3();
  v11 = sub_1C98DE244(v16, v4, v5, v6, v7, v8, v9, v10, v13, a1 & 1);
  sub_1C9A1DDD0(v11);
  sub_1C98DE1F8();
  sub_1C97A592C(v14);
  return sub_1C98DE18C();
}

uint64_t sub_1C98D8238()
{
  v4[3] = &type metadata for SoundClassification.Result;
  v4[4] = sub_1C98DDD1C();
  v4[0] = swift_allocObject();
  memcpy((v4[0] + 16), v0, 0x48uLL);
  sub_1C984A444(v0, &v3);
  v1 = sub_1C9A1DDD0(v4);
  sub_1C97A592C(v4);
  return v1;
}

uint64_t sub_1C98D82DC()
{
  v4[3] = &type metadata for SoundDetection.Result;
  v4[4] = sub_1C97F95F0();
  v4[0] = swift_allocObject();
  memcpy((v4[0] + 16), v0, 0x60uLL);
  sub_1C97F9900(v0, v3);
  v1 = sub_1C9A1DDD0(v4);
  sub_1C97A592C(v4);
  return v1;
}

uint64_t sub_1C98D8380()
{
  v5[3] = &unk_1F494DE90;
  v5[4] = sub_1C97A6F78();
  v1 = swift_allocObject();
  v5[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = sub_1C9A1DDD0(v5);
  sub_1C97A592C(v5);
  return v3;
}

uint64_t sub_1C98D8420()
{
  v4[3] = type metadata accessor for RemoteRequest();
  v4[4] = sub_1C98DDE28(&qword_1EC3C98F0, type metadata accessor for RemoteRequest);
  v1 = sub_1C981CDF0(v4);
  sub_1C981CE50(v0, v1);
  v2 = sub_1C9A1DDD0(v4);
  sub_1C97A592C(v4);
  return v2;
}

uint64_t sub_1C98D84D4()
{
  v7[3] = &type metadata for DirectionOfArrival.Result;
  v7[4] = sub_1C97A67F0();
  v1 = swift_allocObject();
  v7[0] = v1;
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v3 = v0[3];
  v1[3] = v0[2];
  v1[4] = v3;
  sub_1C97A6844(v0, v6);
  v4 = sub_1C9A1DDD0(v7);
  sub_1C97A592C(v7);
  return v4;
}

uint64_t sub_1C98D8578()
{
  v6[3] = &unk_1F49309C0;
  v6[4] = sub_1C97A6550();
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v3 = v0[3];
  v1[3] = v0[2];
  v1[4] = v3;
  v4 = sub_1C9A1DDD0(v6);
  sub_1C97A592C(v6);
  return v4;
}

uint64_t sub_1C98D8610()
{
  v4[3] = &unk_1F4950698;
  v4[4] = sub_1C98DDA94();
  v4[0] = swift_allocObject();
  memcpy((v4[0] + 16), v0, 0x68uLL);
  sub_1C98DDAE8(v0, &v3);
  v1 = sub_1C9A1DDD0(v4);
  sub_1C97A592C(v4);
  return v1;
}

uint64_t sub_1C98D86B4()
{
  v7[3] = &unk_1F4945D70;
  v7[4] = sub_1C97A644C();
  v1 = swift_allocObject();
  v7[0] = v1;
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v3 = v0[3];
  v1[3] = v0[2];
  v1[4] = v3;
  sub_1C97A64A0(v0, v6);
  v4 = sub_1C9A1DDD0(v7);
  sub_1C97A592C(v7);
  return v4;
}

uint64_t sub_1C98D8758(uint64_t a1)
{
  v4[3] = &type metadata for CLAP.Detection;
  v4[4] = sub_1C98DDDD4();
  v4[0] = a1;

  v2 = sub_1C9A1DDD0(v4);
  sub_1C97A592C(v4);
  return v2;
}

uint64_t sub_1C98D87D8(uint64_t a1, uint64_t a2)
{
  v4[3] = MEMORY[0x1E69E6158];
  v4[4] = MEMORY[0x1E69E6160];
  v4[0] = a1;
  v4[1] = a2;

  v2 = sub_1C9A1DDD0(v4);
  sub_1C97A592C(v4);
  return v2;
}

uint64_t sub_1C98D884C(char a1)
{
  v3[3] = MEMORY[0x1E69E6370];
  v3[4] = MEMORY[0x1E69E6378];
  LOBYTE(v3[0]) = a1;
  v1 = sub_1C9A1DDD0(v3);
  sub_1C97A592C(v3);
  return v1;
}

uint64_t sub_1C98D88B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[3] = a2;
  v4[0] = a1;
  sub_1C9A1DDD0(v4);
  sub_1C98DE1F8();
  sub_1C97A592C(v4);
  return sub_1C98DE18C();
}

uint64_t sub_1C98D8904(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v17[3] = a1;
  v17[4] = v4;
  v5 = sub_1C981CDF0(v17);
  v6 = (*(*(a1 - 8) + 16))(v5, v2, a1);
  v14 = sub_1C98DE244(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17[0]);
  sub_1C9A1DDD0(v14);
  sub_1C98DE1F8();
  sub_1C97A592C(v17);
  return sub_1C98DE18C();
}

uint64_t sub_1C98D8A6C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1C9A91268();
  sub_1C97A7A98();
  sub_1C9A91258();
  sub_1C98DDE28(a4, a5);
  sub_1C9A91248();
  return sub_1C98DE4BC();
}

uint64_t sub_1C98D8C50()
{
  sub_1C98DE054();
  memcpy(v2, v0, sizeof(v2));
  sub_1C98DE1C4();
  return sub_1C98D39D8();
}

uint64_t sub_1C98D8CAC()
{
  sub_1C98DE054();
  memcpy(v2, v0, sizeof(v2));
  sub_1C98DE1C4();
  return sub_1C98D73AC();
}

uint64_t sub_1C98D8CF0()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0650);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98D8E34()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0630);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98D8F04()
{
  sub_1C98DE334();
  v15 = v2;
  v16 = v1;
  v3 = sub_1C981CDF0(v14);
  (*(*(v2 - 8) + 16))(v3, v0, v2);

  sub_1C98DE244(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14[0]);
  sub_1C97A8AA4();
  sub_1C98DE4D4();

  return sub_1C98DE4EC(v14);
}

uint64_t sub_1C98D8FE4()
{
  sub_1C98DE40C();
  swift_getWitnessTable();
  v1 = sub_1C98DE448();
  return v0(v1);
}

uint64_t sub_1C98D9038()
{
  sub_1C98DE284();
  sub_1C97A83D4();
  sub_1C98DE3E0();
  v2 = v1();
  if (v0)
  {
  }

  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;

  sub_1C97A8BD4(v7, v8, v9, v10);
}

uint64_t sub_1C98D9110()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98DE434();
  v2 = swift_task_alloc();
  sub_1C98DE250(v2);
  swift_getWitnessTable();
  *v1 = v0;
  sub_1C98DE2F4();
  sub_1C97DABB0();

  return sub_1C98D92A0();
}

uint64_t sub_1C98D91C0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98D92A0()
{
  sub_1C97AA884();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  sub_1C97DA950(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98D9330()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98D944C()
{
  sub_1C97AA884();
  v0[7] = *(v0[6] + 24);

  swift_task_alloc();
  sub_1C97DA928();
  v0[8] = v1;
  *v1 = v2;
  v1[1] = sub_1C98D94F8;

  return sub_1C987C6C8();
}

uint64_t sub_1C98D94F8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98D95F8()
{
  sub_1C97AA884();

  sub_1C97DA8DC();

  return v0();
}

uint64_t sub_1C98D9650()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98D96B4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98DE434();
  v2 = swift_task_alloc();
  sub_1C98DE250(v2);
  swift_getWitnessTable();
  *v1 = v0;
  sub_1C98DE2F4();
  sub_1C97DABB0();

  return sub_1C98D9764();
}

uint64_t sub_1C98D9764()
{
  sub_1C97AA884();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C98D9814()
{
  sub_1C97DAA1C();
  v1 = v0[3];
  v2 = v1[2];
  v0[8] = v2;
  v3 = v1[3];
  v0[9] = v3;
  v4 = v1[4];
  v0[10] = v4;
  v5 = v1[5];
  v0[11] = v5;
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);
  v7 = sub_1C981DF74();
  sub_1C97A8F30(v7);
  if (v2)
  {

    v8 = sub_1C981DF74();
    sub_1C97AA074(v8);
    sub_1C98DE400();
    v17 = (v9 + *v9);
    swift_task_alloc();
    sub_1C97DA928();
    v0[12] = v10;
    *v10 = v11;
    v10[1] = sub_1C98D99F0;
    v12 = v0[7];

    return v17(v12, v2, v3, v4, v5);
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97AA928();
    v14 = swift_allocError();
    sub_1C98DE30C(v14, v15);
    swift_willThrow();

    sub_1C97DA91C();

    return v16();
  }
}

uint64_t sub_1C98D99F0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98D9AE8()
{
  sub_1C97DAA1C();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  sub_1C98DE45C();
  (*(v2 + 32))(v4, v1, v3);

  sub_1C97DA8DC();

  return v5();
}

uint64_t sub_1C98D9B9C()
{
  sub_1C97AA95C();

  sub_1C98DE45C();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98D9C1C()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  sub_1C981E080(&unk_1C9AADCE8);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  v4 = sub_1C98DE040(v2);

  return v5(v4);
}

uint64_t sub_1C98D9CA8()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97DA70C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  sub_1C97DABB0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C98D9E7C()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB06E8);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98D9FC0()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0610);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DA07C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98DE0B8();
  v1 = swift_task_alloc();
  sub_1C98DE178(v1);
  swift_getWitnessTable();
  sub_1C98DE2A4();
  *v0 = v2;
  sub_1C98DE110();
  sub_1C97DABB0();

  return sub_1C98D92A0();
}

double sub_1C98DA128@<D0>(_OWORD *a1@<X8>)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for XPCDataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  sub_1C97DA2E8(v5, v4);
  sub_1C98D1780(inited, &v8);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));
  if (!v2)
  {
    result = *&v8;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_1C98DA1C0@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1C9A91748();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  type metadata accessor for XPCDataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v9;
  sub_1C97DA2E8(v10, v9);
  sub_1C98D18E4(inited, v8);
  swift_setDeallocating();
  result = sub_1C97AA780(*(inited + 16), *(inited + 24));
  if (!v2)
  {
    return (*(v5 + 32))(a1, v8, v4);
  }

  return result;
}

void *sub_1C98DA2E4@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for XPCDataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v4;
  sub_1C97DA2E8(v5, v4);
  sub_1C98D1AFC(inited, v8);
  swift_setDeallocating();
  result = sub_1C97AA780(*(inited + 16), *(inited + 24));
  if (!v2)
  {
    return memcpy(a1, v8, 0xC0uLL);
  }

  return result;
}

uint64_t sub_1C98DA384()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v4 = sub_1C98DE140();
  sub_1C98D1C68(v4, v5);
  sub_1C98DE26C();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    *v0 = v7;
  }

  return result;
}

uint64_t sub_1C98DA3F0()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v4 = sub_1C98DE0F0();
  sub_1C98D1DCC(v4, v5);
  sub_1C98DE26C();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    *v0 = v7;
    v0[1] = v8;
  }

  return result;
}

uint64_t sub_1C98DA458()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for XPCDataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = v2;
  *(inited + 24) = v1;
  sub_1C97DA2E8(v2, v1);
  v4 = sub_1C98D1F30(inited);
  swift_setDeallocating();
  sub_1C97AA780(*(inited + 16), *(inited + 24));
  return v4 & 1;
}

void *sub_1C98DA4DC()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v4 = sub_1C98DE140();
  sub_1C98D2030(v4, v5);
  sub_1C98DE26C();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    return memcpy(v0, __src, 0x48uLL);
  }

  return result;
}

void *sub_1C98DA550()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v4 = sub_1C98DE0F0();
  sub_1C98D219C(v4, v5);
  sub_1C98DE26C();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    return memcpy(v0, v7, 0x60uLL);
  }

  return result;
}

uint64_t sub_1C98DA5C0()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v4 = sub_1C98DE140();
  sub_1C98D2308(v4, v5);
  sub_1C98DE26C();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    *v0 = v7;
    *(v0 + 16) = v8;
    *(v0 + 32) = v9;
    *(v0 + 48) = v10;
  }

  return result;
}

uint64_t sub_1C98DA640@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for RemoteRequest();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  type metadata accessor for XPCDataDecoder();
  inited = swift_initStackObject();
  sub_1C98DE224(inited);
  sub_1C98D2480(v2, v7);
  swift_setDeallocating();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    return sub_1C98DDD70(v7, a1);
  }

  return result;
}

void sub_1C98DA708()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v3 = sub_1C98DE0F0();
  sub_1C98D2658(v3, v4);
  sub_1C98DE26C();
  v5 = sub_1C97AA780(*(v1 + 16), *(v1 + 24));
  if (!v0)
  {
    sub_1C98DE19C(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v13, v16);
  }
}

void sub_1C98DA76C()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v3 = sub_1C98DE0F0();
  sub_1C98D27C4(v3, v4);
  sub_1C98DE26C();
  v5 = sub_1C97AA780(*(v1 + 16), *(v1 + 24));
  if (!v0)
  {
    sub_1C98DE19C(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v13, v16);
  }
}

void *sub_1C98DA7D0()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v4 = sub_1C98DE140();
  sub_1C98D2930(v4, v5);
  sub_1C98DE26C();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    return memcpy(v0, __src, 0x68uLL);
  }

  return result;
}

void sub_1C98DA844()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v3 = sub_1C98DE0F0();
  sub_1C98D2A9C(v3, v4);
  sub_1C98DE26C();
  v5 = sub_1C97AA780(*(v1 + 16), *(v1 + 24));
  if (!v0)
  {
    sub_1C98DE19C(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v13, v16);
  }
}

uint64_t sub_1C98DA8A8()
{
  sub_1C98DE078();
  inited = swift_initStackObject();
  sub_1C98DE098(inited);
  v4 = sub_1C98DE140();
  sub_1C98D2C08(v4, v5);
  sub_1C98DE26C();
  result = sub_1C97AA780(*(v2 + 16), *(v2 + 24));
  if (!v1)
  {
    *v0 = v7;
  }

  return result;
}

uint64_t sub_1C98DA93C()
{
  sub_1C98DE318();
  inited = swift_initStackObject();
  v2 = sub_1C98DE14C(inited);
  sub_1C98D2D6C(v2);
  sub_1C98DE1F8();
  swift_setDeallocating();
  sub_1C97AA780(*(v0 + 16), *(v0 + 24));
  return sub_1C98DE18C();
}

uint64_t sub_1C98DA994()
{
  sub_1C98DE318();
  inited = swift_initStackObject();
  v2 = sub_1C98DE14C(inited);
  v3 = sub_1C98D2E74(v2);
  swift_setDeallocating();
  sub_1C97AA780(*(v0 + 16), *(v0 + 24));
  return v3 & 1;
}

uint64_t sub_1C98DAA1C()
{
  sub_1C98DE37C();
  inited = swift_initStackObject();
  sub_1C98DE224(inited);
  sub_1C98DE3CC();
  v2 = sub_1C98D2F74();
  swift_setDeallocating();
  sub_1C97AA780(*(v0 + 16), *(v0 + 24));
  return v2;
}

uint64_t sub_1C98DAA88()
{
  sub_1C98DE318();
  inited = swift_initStackObject();
  v2 = sub_1C98DE14C(inited);
  v3 = sub_1C98D311C(v2);
  swift_setDeallocating();
  sub_1C97AA780(*(v0 + 16), *(v0 + 24));
  return v3;
}

unint64_t *sub_1C98DAB10()
{
  sub_1C98DE37C();
  inited = swift_initStackObject();
  sub_1C98DE224(inited);
  sub_1C98DE3CC();
  v2 = sub_1C98D3048();
  swift_setDeallocating();
  sub_1C97AA780(*(v0 + 16), *(v0 + 24));
  return v2;
}

double sub_1C98DAB7C@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DD970();
  sub_1C9A91248();

  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
  }

  return result;
}

void *sub_1C98DAC28@<X0>(void *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DDCC8();
  sub_1C9A91248();

  if (!v1)
  {
    return memcpy(a1, v4, 0xC0uLL);
  }

  return result;
}

uint64_t sub_1C98DACDC@<X0>(_BYTE *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DDE70();
  sub_1C9A91248();

  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1C98DAD88@<X0>(void *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DDF18();
  sub_1C9A91248();

  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1C98DAE34()
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DD814();
  sub_1C9A91248();

  if (!v0)
  {
    return v2;
  }

  return result;
}

void *sub_1C98DAED0@<X0>(void *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DC750();
  sub_1C9A91248();

  if (!v1)
  {
    return memcpy(a1, __src, 0x48uLL);
  }

  return result;
}

void *sub_1C98DAF84@<X0>(void *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C97F9574();
  sub_1C9A91248();

  if (!v1)
  {
    return memcpy(a1, v4, 0x60uLL);
  }

  return result;
}

double sub_1C98DB038@<D0>(uint64_t a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C97A6FCC();
  sub_1C9A91248();

  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

double sub_1C98DB0F8@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C97A68A0();
  sub_1C9A91248();

  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

double sub_1C98DB1AC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C97A65A4();
  sub_1C9A91248();

  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *sub_1C98DB260@<X0>(void *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DD76C();
  sub_1C9A91248();

  if (!v1)
  {
    return memcpy(a1, __src, 0x68uLL);
  }

  return result;
}

double sub_1C98DB314@<D0>(_OWORD *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C97A64FC();
  sub_1C9A91248();

  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1C98DB3C8@<X0>(void *a1@<X8>)
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C98DD9C4();
  sub_1C9A91248();

  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1C98DB474()
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C9A91248();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C98DB510()
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C9A91248();

  if (!v0)
  {
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t sub_1C98DB5B0()
{
  sub_1C98DE100();
  sub_1C9A91268();
  sub_1C97A7A98();
  sub_1C9A91258();
  sub_1C9A91248();
  result = sub_1C98DE4BC();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C98DB63C()
{
  sub_1C9A91268();
  sub_1C97A7A98();
  sub_1C9A91258();
  sub_1C98DC6FC();
  sub_1C9A91248();
  result = sub_1C98DE4BC();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C98DB704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  sub_1C97A2CEC(a3);
  sub_1C9A91268();
  sub_1C97A7A98();
  sub_1C9A91258();
  a5();
  sub_1C9A91248();
  result = sub_1C98DE4BC();
  if (!a5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C98DB840()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0778);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DB8D0()
{
  sub_1C98DE134();
  memcpy(__dst, v0, sizeof(__dst));
  return sub_1C98D8238();
}

uint64_t sub_1C98DB928()
{
  sub_1C98DE054();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C98DE1D4();
  return sub_1C98D38D4();
}

uint64_t sub_1C98DB984()
{
  sub_1C98DE054();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C98DE1D4();
  return sub_1C98D7728();
}

uint64_t sub_1C98DB9C8()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0628);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DBA90()
{
  result = sub_1C98D8A08();
  if (!v0)
  {
    return sub_1C98DE3F4(result);
  }

  return result;
}

uint64_t sub_1C98DBAF4(uint64_t a1)
{
  result = sub_1C98D1F30(a1);
  if (!v1)
  {
    return sub_1C98DE3F4(result);
  }

  return result;
}

uint64_t sub_1C98DBB4C()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  sub_1C981E080(&unk_1C9AB0660);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  v4 = sub_1C98DE040(v2);

  return v5(v4);
}

uint64_t sub_1C98DBBD8()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  sub_1C97DA844();

  return v9();
}

uint64_t sub_1C98DBCCC()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  sub_1C981E080(&unk_1C9AADE98);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 72) = v2;
  *v2 = v3;
  v4 = sub_1C98DE2D0(v2);

  return v5(v4);
}

uint64_t sub_1C98DBD90()
{
  sub_1C98DE134();
  memcpy(v2, v0, sizeof(v2));
  return sub_1C98D80AC();
}

uint64_t sub_1C98DBDE8()
{
  sub_1C98DE054();
  memcpy(v2, v0, sizeof(v2));
  sub_1C98DE1C4();
  return sub_1C98D3620();
}

uint64_t sub_1C98DBE44()
{
  sub_1C98DE054();
  memcpy(v2, v0, sizeof(v2));
  sub_1C98DE1C4();
  return sub_1C98D75E4();
}

uint64_t sub_1C98DBE88()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB06C8);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DBFE4()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0768);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DC128()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0648);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DC1B8()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  sub_1C981E080(&unk_1C9AADE88);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 72) = v2;
  *v2 = v3;
  v4 = sub_1C98DE2D0(v2);

  return v5(v4);
}

uint64_t sub_1C98DC2BC()
{
  sub_1C97AA95C();
  sub_1C98DE0B8();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C98DE1B0();

  return sub_1C98D708C();
}

uint64_t sub_1C98DC3B4()
{
  sub_1C97AA95C();
  sub_1C98DE0B8();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C98DE1B0();

  return sub_1C98D708C();
}

uint64_t sub_1C98DC4E0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98DE0B8();
  v1 = swift_task_alloc();
  sub_1C98DE178(v1);
  swift_getWitnessTable();
  sub_1C98DE2A4();
  *v0 = v2;
  sub_1C98DE110();
  sub_1C97DABB0();

  return sub_1C98D92A0();
}

uint64_t sub_1C98DC58C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98DC688()
{
  result = sub_1C98D8BB4();
  if (!v0)
  {
    return sub_1C98DE3F4(result);
  }

  return result;
}

uint64_t sub_1C98DC6D0(uint64_t a1)
{
  result = sub_1C98D2E74(a1);
  if (!v1)
  {
    return sub_1C98DE3F4(result);
  }

  return result;
}

unint64_t sub_1C98DC6FC()
{
  result = qword_1EC3CBA78;
  if (!qword_1EC3CBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBA78);
  }

  return result;
}

unint64_t sub_1C98DC750()
{
  result = qword_1EC3CBA80;
  if (!qword_1EC3CBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBA80);
  }

  return result;
}

uint64_t sub_1C98DC7C0()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  sub_1C981E080(&unk_1C9AB0618);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  v4 = sub_1C98DE040(v2);

  return v5(v4);
}

uint64_t sub_1C98DC878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98D8BF8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C98DC8D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98D2F74();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C98DC938()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  sub_1C981E080(&unk_1C9AB0740);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  v4 = sub_1C98DE040(v2);

  return v5(v4);
}

uint64_t sub_1C98DC9F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98D8BD0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C98DCA48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98D2F74();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C98DCAB0()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  sub_1C981E080(&unk_1C9AB0730);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  v4 = sub_1C98DE040(v2);

  return v5(v4);
}

uint64_t sub_1C98DCB3C()
{
  sub_1C97AA95C();
  sub_1C98DE030();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  sub_1C97DA844();

  return v8();
}

uint64_t sub_1C98DCC44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98D8B9C();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1C98DCC8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C98D2D6C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C98DCCE4()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  sub_1C981E080(&unk_1C9AB0678);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  v4 = sub_1C98DE040(v2);

  return v5(v4);
}

uint64_t sub_1C98DCDF4()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0718);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DCF40()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0668);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DD010()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98DE0B8();
  v1 = swift_task_alloc();
  sub_1C98DE178(v1);
  swift_getWitnessTable();
  sub_1C98DE2A4();
  *v0 = v2;
  sub_1C98DE110();
  sub_1C97DABB0();

  return sub_1C98D708C();
}

uint64_t sub_1C98DD0FC()
{
  sub_1C98DE40C();
  sub_1C98DE47C();
  v1 = sub_1C98DE448();
  return v0(v1);
}

uint64_t sub_1C98DD29C()
{
  sub_1C97AA884();
  sub_1C98DE0C8(v0);
  sub_1C981E080(&unk_1C9AAE268);
  v1 = swift_task_alloc();
  v2 = sub_1C981E3D8(v1);
  *v2 = v3;
  v4 = sub_1C98DE040(v2);

  return v5(v4);
}

uint64_t sub_1C98DD328()
{
  sub_1C97DAA1C();
  sub_1C98DE1E4();
  sub_1C97AA890();
  v7 = v6;
  sub_1C97DA70C();
  *v8 = v7;
  v9 = *v3;
  sub_1C97AA83C();
  *v10 = v9;

  if (!v1)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v4;
    v11[2] = v2;
    v11[3] = v0;
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1C98DD454()
{
  sub_1C98DE064();
  sub_1C98DE294();
  return sub_1C98D8380();
}

uint64_t sub_1C98DD49C()
{
  sub_1C98DE064();
  sub_1C98DE294();
  return sub_1C98D3ADC();
}

uint64_t sub_1C98DD4E4()
{
  sub_1C98DE064();
  sub_1C98DE294();
  return sub_1C98D77E8();
}

uint64_t sub_1C98DD514()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0640);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DD628()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0670);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

uint64_t sub_1C98DD6B8()
{
  sub_1C98DE134();
  memcpy(__dst, v0, sizeof(__dst));
  return sub_1C98D8610();
}

uint64_t sub_1C98DD710()
{
  sub_1C98DE054();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C98DE1D4();
  return sub_1C98D3EEC();
}

unint64_t sub_1C98DD76C()
{
  result = qword_1EC3CBA90;
  if (!qword_1EC3CBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBA90);
  }

  return result;
}

unint64_t sub_1C98DD7C0()
{
  result = qword_1EC3CBAB0;
  if (!qword_1EC3CBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBAB0);
  }

  return result;
}

unint64_t sub_1C98DD814()
{
  result = qword_1EC3CD5B0;
  if (!qword_1EC3CD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD5B0);
  }

  return result;
}

unint64_t sub_1C98DD868()
{
  result = qword_1EC3CBAC8;
  if (!qword_1EC3CBAC8)
  {
    sub_1C97AA4F0(&qword_1EC3CBAC0);
    sub_1C98DD8EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBAC8);
  }

  return result;
}

unint64_t sub_1C98DD8EC()
{
  result = qword_1EC3CBAD0;
  if (!qword_1EC3CBAD0)
  {
    sub_1C97AA4F0(&unk_1EC3CAD30);
    sub_1C98DD970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBAD0);
  }

  return result;
}

unint64_t sub_1C98DD970()
{
  result = qword_1EC3CBAE0;
  if (!qword_1EC3CBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBAE0);
  }

  return result;
}

unint64_t sub_1C98DD9C4()
{
  result = qword_1EC3CBAF0;
  if (!qword_1EC3CBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBAF0);
  }

  return result;
}

unint64_t sub_1C98DDA18()
{
  result = qword_1EC3CBB00;
  if (!qword_1EC3CBB00)
  {
    sub_1C97AA4F0(&qword_1EC3C9AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB00);
  }

  return result;
}

unint64_t sub_1C98DDA94()
{
  result = qword_1EC3CBB10;
  if (!qword_1EC3CBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB10);
  }

  return result;
}

uint64_t sub_1C98DDB44()
{
  sub_1C98DE054();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C98DE1D4();
  return sub_1C98D7A18();
}

uint64_t sub_1C98DDB88()
{
  sub_1C97AA95C();
  sub_1C98DE128();
  sub_1C981E080(&unk_1C9AB0638);
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98DE000(v1);

  return v4(v3);
}

unint64_t sub_1C98DDC18()
{
  result = qword_1EC3CBB18;
  if (!qword_1EC3CBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB18);
  }

  return result;
}

unint64_t sub_1C98DDCC8()
{
  result = qword_1EC3CBB20;
  if (!qword_1EC3CBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB20);
  }

  return result;
}

unint64_t sub_1C98DDD1C()
{
  result = qword_1EC3CBB30;
  if (!qword_1EC3CBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB30);
  }

  return result;
}

uint64_t sub_1C98DDD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C98DDDD4()
{
  result = qword_1EC3CBB48;
  if (!qword_1EC3CBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB48);
  }

  return result;
}

uint64_t sub_1C98DDE28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C98DDE70()
{
  result = qword_1EC3CE0A0;
  if (!qword_1EC3CE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0A0);
  }

  return result;
}

unint64_t sub_1C98DDEC4()
{
  result = qword_1EC3CBB60;
  if (!qword_1EC3CBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB60);
  }

  return result;
}

unint64_t sub_1C98DDF18()
{
  result = qword_1EC3CBB68;
  if (!qword_1EC3CBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB68);
  }

  return result;
}

unint64_t sub_1C98DDF6C()
{
  result = qword_1EC3CBB70;
  if (!qword_1EC3CBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB70);
  }

  return result;
}

uint64_t sub_1C98DE078()
{

  return type metadata accessor for XPCDataDecoder();
}

uint64_t sub_1C98DE098(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return sub_1C97DA2E8(v2, v1);
}

uint64_t sub_1C98DE0D4()
{
}

uint64_t sub_1C98DE14C(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  sub_1C97DA2E8(v2, v1);
  return a1;
}

uint64_t sub_1C98DE178(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 16) = v2;
  return result;
}

__n128 sub_1C98DE19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11, __int128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a11;
  v12[2] = a11;
  v12[3] = a12;
  return result;
}

uint64_t sub_1C98DE208()
{
}

uint64_t sub_1C98DE224(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return sub_1C97DA2E8(v2, v1);
}

int8x16_t sub_1C98DE250(uint64_t a1)
{
  v3 = *(v1 - 16);
  v2[2].i64[0] = a1;
  result = vextq_s8(v3, v3, 8uLL);
  v2[1] = result;
  return result;
}

uint64_t sub_1C98DE26C()
{

  return swift_setDeallocating();
}

uint64_t sub_1C98DE318()
{

  return type metadata accessor for XPCDataDecoder();
}

uint64_t sub_1C98DE334()
{

  return sub_1C99DC144();
}

uint64_t sub_1C98DE358()
{

  return type metadata accessor for XPCDataDecoder.SingleValueContainer();
}

uint64_t sub_1C98DE37C()
{

  return type metadata accessor for XPCDataDecoder();
}

uint64_t sub_1C98DE3A0(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = v2;
}

uint64_t sub_1C98DE420(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_1C98DE45C()
{

  return sub_1C97AA074(v0);
}

uint64_t sub_1C98DE47C()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C98DE49C()
{
}

uint64_t sub_1C98DE4BC()
{
}

uint64_t sub_1C98DE4D4()
{
}

uint64_t sub_1C98DE50C(uint64_t a1)
{
  v2 = sub_1C98DE698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98DE548(uint64_t a1)
{
  v2 = sub_1C98DE698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExampleRemoteWorkload.Request.encode(to:)(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CBB90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98DE698();
  sub_1C9A93DD8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C98DE698()
{
  result = qword_1EC3CBB98;
  if (!qword_1EC3CBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBB98);
  }

  return result;
}

uint64_t sub_1C98DE798()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  sub_1C99DC5A4();
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1C9AB09D8;
  *(v6 + 24) = v5;
  v7 = sub_1C97A2CEC(&qword_1EC3CBBB8);
  v14 = v7;
  v8 = sub_1C98E0160();
  v15 = v8;
  v13[0] = &unk_1C9AB09E8;
  v13[1] = v6;
  v9 = sub_1C97A5A8C(v13, v7);
  v12[3] = v7;
  v12[4] = *(v8 + 8);
  v10 = sub_1C981CDF0(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);

  sub_1C99DC674(v12);

  if (v1)
  {

    sub_1C97A592C(v12);
  }

  else
  {
    sub_1C97A592C(v12);
    sub_1C97A592C(v13);
    v14 = MEMORY[0x1E69E6530];
    v15 = &off_1F494AAD0;
    v13[0] = v4;
    sub_1C99DC674(v13);
  }

  return sub_1C97A592C(v13);
}

uint64_t sub_1C98DE954(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C98E01E8;

  return v5();
}

uint64_t sub_1C98DEA40()
{
  sub_1C97AA884();
  *(v0 + 40) = v1;

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1C98DEAE8;

  return sub_1C98DEC18();
}

uint64_t sub_1C98DEAE8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98DEBE4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  sub_1C97DA91C();
  return v3();
}

uint64_t sub_1C98DEC18()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C98DECA8;

  return sub_1C988FC80();
}

uint64_t sub_1C98DECA8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C98DEDAC()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C98DEE58;

  return sub_1C9A24B58();
}

uint64_t sub_1C98DEE58(uint64_t a1, uint64_t a2)
{
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v3;
  sub_1C97AA83C();
  *v10 = v9;
  v7[8] = v2;

  if (!v2)
  {
    v7[9] = a2;
    v7[10] = a1;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C98DEF78()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v1[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = &unk_1C9AB09B8;
  *(v2 + 24) = v1;
  v3 = sub_1C97DA8BC();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1C98DF060;

  return v5();
}

uint64_t sub_1C98DF060()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98DF170()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98DF1D8()
{
  sub_1C97AA95C();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[2];

  *v3 = &unk_1C9AB09C8;
  v3[1] = v2;
  v3[2] = v1;
  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C98DF268()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98DF2D8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98DF334(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98DF424;

  return v4(v1 + 16);
}

uint64_t sub_1C98DF424()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_1C98DF568()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;

  return sub_1C98DEA40();
}

uint64_t sub_1C98DF688()
{
  sub_1C97AA95C();
  v0[5] = &unk_1F492E330;
  v0[6] = &off_1F492E6A0;
  sub_1C97A5A8C(v0 + 2, &unk_1F492E330);
  swift_storeEnumTagMultiPayload();
  v1 = sub_1C97DA8BC();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1C98DF754;
  v2 = v0[12];

  return v4(v0 + 7, v2);
}

uint64_t sub_1C98DF754()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98DF850()
{
  sub_1C97AA884();
  v1 = *(v0 + 80);
  sub_1C97AA724(*(v0 + 96));
  v2 = *(v0 + 72);
  *v1 = *(v0 + 56);
  *(v1 + 16) = v2;
  sub_1C97A592C(v0 + 16);

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98DF8D4()
{
  sub_1C97AA884();
  sub_1C97AA724(*(v0 + 96));
  sub_1C97A592C(v0 + 16);

  sub_1C97DA91C();

  return v1();
}

unint64_t sub_1C98DF948()
{
  result = qword_1EC3CBBA0;
  if (!qword_1EC3CBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBA0);
  }

  return result;
}

_BYTE *sub_1C98DF9A8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C98DFA70()
{
  result = qword_1EC3CBBA8;
  if (!qword_1EC3CBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBA8);
  }

  return result;
}

unint64_t sub_1C98DFAC8()
{
  result = qword_1EC3CBBB0;
  if (!qword_1EC3CBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBB0);
  }

  return result;
}

uint64_t sub_1C98DFB44()
{
  sub_1C97AA884();
  v1 = sub_1C986E5A8(0xFFFFFFFFFFFFFFFFLL);
  v2 = *(v0 + 8);
  v3 = v1 ^ 0x8000000000000000;

  return v2(v3);
}

uint64_t sub_1C98DFBA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98E01E8;

  return sub_1C987B628();
}

uint64_t sub_1C98DFC48()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C98DFCDC()
{
  sub_1C97AA95C();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C98DFD84;

  return sub_1C98DF334(v2);
}

uint64_t sub_1C98DFD84()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C98DFE70()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C98DFF04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C98DFFA4;

  return sub_1C97A9A44();
}

uint64_t sub_1C98DFFA4()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C98E00A0(uint64_t a1)
{
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97D9C3C;

  return sub_1C98DFF04(a1);
}

unint64_t sub_1C98E0160()
{
  result = qword_1EC3CBBC0;
  if (!qword_1EC3CBBC0)
  {
    sub_1C97AA4F0(&qword_1EC3CBBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBBC0);
  }

  return result;
}

uint64_t sub_1C98E0290(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3CBBD0);
  sub_1C97AE9C8();
  v51 = v2;
  v52 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  v50 = v4;
  sub_1C97A2CEC(&qword_1EC3CBBD8);
  sub_1C97AE9C8();
  v56 = v5;
  v57 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v49 = v8;
  v9 = sub_1C97A2CEC(&qword_1EC3C79A8);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  v54 = v11;
  v59 = sub_1C97A2CEC(&qword_1EC3CBBE0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v58 = v13;
  v55 = sub_1C9A91748();
  sub_1C97AE9C8();
  v60 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AEAD8();
  v47 = v17 - v16;
  sub_1C9A93008();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AEAD8();
  v19 = sub_1C9A92158();
  v20 = sub_1C97DACE4(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AEAD8();
  v21 = sub_1C9A93018();
  sub_1C97AE9C8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AEAD8();
  v27 = v26 - v25;
  sub_1C97BD318(0, &qword_1EC3C56B0);
  (*(v23 + 104))(v27, *MEMORY[0x1E69E8098], v21);
  sub_1C9A92148();
  v61[0] = MEMORY[0x1E69E7CC0];
  sub_1C98E3058(&qword_1EC3C56C0, MEMORY[0x1E69E8030]);
  sub_1C97A2CEC(&unk_1EC3CDC60);
  sub_1C97AE67C(&qword_1EC3C56E0, &unk_1EC3CDC60);
  sub_1C9A93428();
  v28 = sub_1C9A93048();
  sub_1C9A91738();
  sub_1C97AA878();
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v28;
  sub_1C97AA878();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1C98E2F94;
  *(v30 + 24) = v29;

  v31 = v28;
  sub_1C97A2CEC(&qword_1EC3CBBE8);
  sub_1C97AE67C(&qword_1EC3CBBF0, &qword_1EC3CBBE8);
  sub_1C9A91EF8();
  sub_1C98E0C04(sub_1C98E0BB4, 0, v49);
  (*(v51 + 8))(v50, v52);
  sub_1C97F07FC();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  sub_1C97AA878();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1C98E2FA4;
  *(v33 + 24) = v32;
  v53 = v31;

  v34 = sub_1C97CB094();
  sub_1C97A2CEC(v34);
  sub_1C98E377C();
  sub_1C97AE67C(v35, &qword_1EC3CBBD8);
  sub_1C97AE67C(&qword_1EC3CBC08, &qword_1EC3CBBF8);
  sub_1C9A92078();

  (*(v57 + 8))(v49, v56);
  sub_1C9A935B8();

  sub_1C98E3058(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
  v36 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v36);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  sub_1C97DCFC0();

  sub_1C97DA1E0(v54, &qword_1EC3C79A8);
  sub_1C9A935B8();

  v61[0] = 0xD00000000000001FLL;
  v61[1] = 0x80000001C9AD8530;
  v37 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v37);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0xD00000000000001FLL;
  *(v38 + 32) = 0x80000001C9AD8530;
  *(v38 + 40) = 60;
  sub_1C97DAA28();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = sub_1C98E30A0;
  v39[4] = v38;
  sub_1C97DAA28();
  v40 = swift_allocObject();
  v40[2] = sub_1C98E30B0;
  v40[3] = v39;
  v40[4] = 60;
  v41 = (v58 + *(v59 + 52));
  *v41 = sub_1C9911F58;
  v41[1] = 0;
  v42 = (v58 + *(v59 + 56));
  *v42 = sub_1C98E30BC;
  v42[1] = v40;
  sub_1C97AE67C(&qword_1EC3CBC10, &qword_1EC3CBBE0);
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CBC18);
  sub_1C97AA878();
  swift_allocObject();
  v43 = sub_1C97C926C();
  v44 = sub_1C98E2E50(v43);
  sub_1C97DA1E0(v58, &qword_1EC3CBBE0);
  v61[0] = v44;
  sub_1C9835270();
  sub_1C97AE67C(v45, &qword_1EC3CBC18);
  sub_1C9A91F28();
  sub_1C97C926C();

  (*(v60 + 8))(v47, v55);
  type metadata accessor for SharedHIDReportStream.Instance();
  sub_1C97F07FC();
  result = swift_allocObject();
  *(result + 16) = v61;
  return result;
}