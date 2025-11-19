uint64_t sub_1AEAB33AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_1AEAB3458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1AEAB3594()
{
  result = qword_1ED989AE8;
  if (!qword_1ED989AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED989AE8);
  }

  return result;
}

uint64_t sub_1AEAB35E0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AEAFA2BC() & 1;
  }
}

uint64_t sub_1AEAB3648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AEAB3690(uint64_t result, int a2, int a3)
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

uint64_t sub_1AEAB36E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA5E1AC;

  return sub_1AEAB2838(a1);
}

id SCMediaAnalysisServiceResult.__allocating_init(isNudity:isGoreAndViolence:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isNudity] = a1;
  v5[OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isGoreAndViolence] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SCMediaAnalysisServiceResult.init(isNudity:isGoreAndViolence:)(char a1, char a2)
{
  v2[OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isNudity] = a1;
  v2[OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isGoreAndViolence] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SCMediaAnalysisServiceResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SCMediaAnalysisServiceResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMediaAnalysisServiceResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMediaAnalysisServiceResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AEAB3A34(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8CA0);
  swift_allocObject();
  result = sub_1AEAFA46C();
  *a2 = result;
  return result;
}

uint64_t sub_1AEAB3AE8(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_1AEAFA47C();
}

uint64_t static Entitlements.advisoryChecks(for:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = v1;
  return _s24SensitiveContentAnalysis12EntitlementsV6checks3forAC6ChecksCAC6SourceO_tFZ_0(v4);
}

__n128 Entitlements.Checks.__allocating_init(entitlements:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 72) = 0;
  *(v2 + 80) = -1;
  *(v2 + 88) = 0;
  *(v2 + 96) = -1;
  *(v2 + 104) = 0;
  *(v2 + 112) = -1;
  *(v2 + 120) = 0;
  *(v2 + 128) = -1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 32);
  *(v2 + 48) = result;
  *(v2 + 64) = v3;
  return result;
}

uint64_t Entitlements.Checks.init(entitlements:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 72) = 0;
  *(v1 + 80) = -1;
  *(v1 + 88) = 0;
  *(v1 + 96) = -1;
  *(v1 + 104) = 0;
  *(v1 + 112) = -1;
  *(v1 + 120) = 0;
  *(v1 + 128) = -1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  return v1;
}

void *sub_1AEAB3C24(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  if (v3 == 255)
  {
    if (qword_1ED98CE60 != -1)
    {
      a1 = swift_once();
    }

    v5 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v5);
    type metadata accessor for SCAError(0);
    sub_1AEA45E88(&qword_1ED98AAC0, type metadata accessor for SCAError);
    _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEA462B4, &v10);
    v4 = v10;
    v6 = v11;
    v7 = *(v1 + 88);
    *(v1 + 88) = v10;
    v8 = *(v1 + 96);
    *(v1 + 96) = v6;
    sub_1AEA486FC(v4, v6);
    sub_1AEA486E4(v7, v8);
  }

  else
  {
    v4 = *(v1 + 88);
  }

  sub_1AEA48708(v2, v3);
  return v4;
}

void *sub_1AEAB3E2C(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (v3 == 255)
  {
    if (qword_1EB5ED1A0 != -1)
    {
      a1 = swift_once();
    }

    v5 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v5);
    type metadata accessor for SCAError(0);
    sub_1AEA45E88(&qword_1ED98AAC0, type metadata accessor for SCAError);
    _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEA4629C, &v10);
    v4 = v10;
    v6 = v11;
    v7 = *(v1 + 120);
    *(v1 + 120) = v10;
    v8 = *(v1 + 128);
    *(v1 + 128) = v6;
    sub_1AEA486FC(v4, v6);
    sub_1AEA486E4(v7, v8);
  }

  else
  {
    v4 = *(v1 + 120);
  }

  sub_1AEA48708(v2, v3);
  return v4;
}

uint64_t sub_1AEAB3FDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFC470;
  static Entitlements.Key.oneOf(_:)(&unk_1F248CE80, inited + 32);
  *(inited + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  *(inited + 56) = &unk_1F248CED0;
  v1 = sub_1AEA45018(inited);
  swift_setDeallocating();
  result = sub_1AEA41FAC(inited + 32, &qword_1EB5E9240);
  qword_1ED98CE68 = v1;
  return result;
}

uint64_t sub_1AEAB40DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFC460;
  static Entitlements.Key.oneOf(_:)(a2, inited + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  *(inited + 80) = v10;
  *(inited + 56) = a3;
  Entitlements.Key.init(stringLiteral:)(0xD000000000000031, 0x80000001AEB07DB0, inited + 88);
  *(inited + 136) = v10;
  *(inited + 112) = a4;
  v11 = sub_1AEA45018(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9240);
  result = swift_arrayDestroy();
  *a5 = v11;
  return result;
}

uint64_t Entitlements.Checks.deinit()
{
  sub_1AEA44C1C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1AEA486E4(*(v0 + 72), *(v0 + 80));
  sub_1AEA486E4(*(v0 + 88), *(v0 + 96));
  sub_1AEA486E4(*(v0 + 104), *(v0 + 112));
  sub_1AEA486E4(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t Entitlements.Checks.__deallocating_deinit()
{
  sub_1AEA44C1C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1AEA486E4(*(v0 + 72), *(v0 + 80));
  sub_1AEA486E4(*(v0 + 88), *(v0 + 96));
  sub_1AEA486E4(*(v0 + 104), *(v0 + 112));
  sub_1AEA486E4(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x1EEE6BDC0](v0, 129, 7);
}

uint64_t sub_1AEAB4304(uint64_t (*a1)(void))
{
  v2 = a1();
  if (v3)
  {
    v1 = v2;
    type metadata accessor for SCAError(0);
    sub_1AEA45E88(&qword_1ED98AAC0, type metadata accessor for SCAError);
    swift_willThrowTypedImpl();
  }

  return v1;
}

void *sub_1AEAB43A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9258);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(*(v2 + 56) + v17);
        v28 = *(v4 + 48) + v19;
        v29 = *(v20 + 48);
        *v28 = *v20;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v29;
        *(*(v4 + 56) + v17) = v27;
        sub_1AEA43B10(v21, v22, v23, v24, v25, v26, v29);
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

uint64_t _s24SensitiveContentAnalysis12EntitlementsV6checks3forAC6ChecksCAC6SourceO_tFZ_0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (!v7)
  {
    if (qword_1ED98D720 != -1)
    {
      swift_once();
    }

    sub_1AEAFA47C();
    v8 = v17;
    if (v17 != 255)
    {
      goto LABEL_9;
    }
  }

  if (qword_1ED98D710 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  v8 = v17;
  if (v17 == 255)
  {
    sub_1AEA43B10(v2, v1, v4, v3, v6, v5, v7);
    v8 = v7;
  }

  else
  {
LABEL_9:
    v6 = v15;
    v5 = v16;
    v4 = v13;
    v3 = v14;
    v2 = v11;
    v1 = v12;
  }

  if (qword_1ED98DD40 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1ED98DD48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9250);
  type metadata accessor for Entitlements.Checks();
  Atomic.withLock<A>(_:)();
  sub_1AEA44C1C(v2, v1, v4, v3, v6, v5, v8);

  return v10;
}

void sub_1AEAB4754(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_1AEAB478C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E90E0);
    v3 = sub_1AEAFA06C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AEA63BD4(v4, &v13, &qword_1EB5E89F0);
      v5 = v13;
      v6 = v14;
      result = sub_1AEA8EECC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1AEA45304(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AEAB48D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9360);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98AD58 = result;
  return result;
}

uint64_t *sub_1AEAB4930()
{
  if (qword_1ED98AD60 != -1)
  {
    swift_once();
  }

  return &qword_1ED98AD58;
}

uint64_t static VideoStreamAnalyzer.Sampler.$processBufferOverride.getter()
{
  if (qword_1ED98AD60 != -1)
  {
    swift_once();
  }
}

uint64_t (*static VideoStreamAnalyzer.Sampler.processBufferOverride.getter())(uint64_t a1, uint64_t a2)
{
  if (qword_1ED98AD60 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1AEAB4B20;
}

uint64_t sub_1AEAB4A88(uint64_t a1, uint64_t a2, void (*a3)(unsigned __int8 *__return_ptr, void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[0] = sub_1AEAB8158;
  v9[1] = v6;

  a3(&v8, v9);

  return v8;
}

double static VideoStreamAnalyzer.Sampler.minimumFrameArea.getter()
{
  if (qword_1EB5ED1B0 != -1)
  {
    swift_once();
  }

  return *&qword_1EB5ED1B8;
}

uint64_t sub_1AEAB4BA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler____lazy_storage___ttrFrameBuffer;
  v3 = *(v0 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler____lazy_storage___ttrFrameBuffer);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for CountedFrameBuffer();
    v5 = (*(v1 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_sampleTimer) + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(v1 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_options);

    v4 = CountedFrameBuffer.__allocating_init(streamID:isOutgoing:interval:maxFrames:)(v6, v7, v8 & 1, 0, 1, 0, 1);
    v9 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1AEAB5014(v9);
  }

  sub_1AEAB8114(v3);
  return v4;
}

id sub_1AEAB4CA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v43 = *MEMORY[0x1E69E9840];
  v33 = v6;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_task] = 0;
  v12 = OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler____lazy_storage___ttrFrameBuffer;
  *&v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler____lazy_storage___ttrFrameBuffer] = 1;
  v30 = v12;
  v31 = OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_streamStartTime;
  sub_1AEAF8D5C();
  v13 = OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler__stats;
  v38[0] = 0;
  Atomic.init(wrappedValue:)(v38, &_s7SamplerC5StatsVN, v40);
  *&v11[v13] = v40[0];
  v14 = OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_sampleTimer;
  *&v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_sampleTimer] = a1;
  *&v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_options] = a2;
  v15 = &v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_analysisResultHandler];
  *v15 = a4;
  v15[1] = a5;
  v16 = objc_allocWithZone(SCMADVideoSession);
  v40[0] = 0;
  v17 = a1;

  v18 = [v16 initWithError_];
  v19 = v40[0];
  if (v18)
  {
    *&v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_madSession] = v18;
    sub_1AEA5D204(a3, &v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_context]);
    sub_1AEA49EF8(0, &qword_1ED989AE0);
    v20 = v19;
    v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_verboseLogging] = sub_1AEAAD8D0() & 1;
    type metadata accessor for CoreAnalyticsManager.StreamStats();
    v21 = sub_1AEA5FEA4(a2);
    *&v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_analytics] = CoreAnalyticsManager.StreamStats.__allocating_init(_:)(v21);
    v22 = sub_1AEAF9BBC();
    TimestampFaker.init(start:framesPerSecond:)(v22, v23, v24, 30, v38);
    v35 = v38[0];
    v36 = v38[1];
    v37 = v39;
    TimestampFaker.makeIterator()(v40);
    v25 = v42;
    v26 = &v11[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_timestampSeq];
    *v26 = v40[0];
    v26[1] = v40[1];
    *(v26 + 1) = v41;
    v26[4] = v25;
    v34.receiver = v11;
    v34.super_class = v33;
    v19 = objc_msgSendSuper2(&v34, sel_init);

    sub_1AEA62F28(a3);
  }

  else
  {
    v27 = v40[0];
    sub_1AEAF8C5C();

    swift_willThrow();

    sub_1AEA62F28(a3);

    sub_1AEAB5014(*&v11[v30]);
    v28 = sub_1AEAF8D6C();
    (*(*(v28 - 8) + 8))(&v11[v31], v28);

    swift_deallocPartialClassInstance();
  }

  return v19;
}

uint64_t sub_1AEAB5014(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

id VideoStreamAnalyzer.Sampler.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_task])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    sub_1AEAF985C();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1AEAB5274(uint64_t a1, CMTimeValue a2, unint64_t a3, CMTimeEpoch a4, char a5, int *a6)
{
  v7 = *a6;
  v9 = *(a6 + 3);
  v8 = *(a6 + 4);
  v11 = *(a6 + 5);
  v10 = *(a6 + 6);
  v12 = *(a6 + 56);
  aBlock[0] = 4;
  SCFeatures.check()();
  if (v13)
  {
    v14 = v13;
    v15 = v72;
LABEL_3:
    v16 = *(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_analysisResultHandler);
    v17 = v14;
    v16(v14, 1);

    return;
  }

  v62 = v12;
  v63 = v7;
  v58 = v10;
  v59 = v11;
  v60 = *&v8;
  v61 = v9;
  v18 = a6;
  if (a5)
  {
    v15 = v72;
    v19 = *(v72 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_timestampSeq + 32);
    *aBlock = *(v72 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_timestampSeq);
    *&aBlock[16] = *(v72 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_timestampSeq + 16);
    v77 = v19;

    v81 = TimestampFaker.Iterator.next()();
    value = v81.value.value;
    v21 = *&v81.value.timescale;
    epoch = v81.value.epoch;
    is_nil = v81.is_nil;

    v24 = v63;
    v26 = v8;
    v25 = v9;
    v27 = v18;
    if (is_nil)
    {
      value = *MEMORY[0x1E6960CC0];
      LODWORD(v21) = *(MEMORY[0x1E6960CC0] + 8);
      v70 = *(MEMORY[0x1E6960CC0] + 12);
      epoch = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v70 = HIDWORD(v21);
    }
  }

  else
  {
    LODWORD(v21) = a3;
    v70 = HIDWORD(a3);
    v24 = v63;
    value = a2;
    epoch = a4;
    v15 = v72;
    v26 = v8;
    v25 = v9;
    v27 = v18;
  }

  v28 = sub_1AEAB4BA8();
  v29 = v21 | (v70 << 32);
  if (v28)
  {
    (*(*v28 + 112))(a1, value, v29, epoch, v24);
  }

  v30 = *(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_analytics);
  *aBlock = v24;
  *&aBlock[4] = *(v27 + 1);
  *&aBlock[20] = v27[5];
  *&aBlock[24] = v25;
  v77 = v26;
  v78 = *&v59;
  v79 = v58;
  v80 = v62;
  v31 = OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_sampleTimer;
  v32 = *(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_sampleTimer) + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  swift_beginAccess();
  (*(*v30 + 240))(value, v29, epoch, aBlock, *v32, *(v32 + 8));
  v33 = *(v15 + v31);
  v34 = sub_1AEAF8470();
  v35 = SampleTimer.shouldSampleFrame(now:)(v34);

  if (v35)
  {
    v36 = sub_1AEA61794();
    v38 = sub_1AEA8A710(v36, v37);
    if (qword_1EB5ED1B0 != -1)
    {
      v57 = v38;
      swift_once();
      v38 = v57;
    }

    if (*&qword_1EB5ED1B8 >= v38)
    {
      v43 = *(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler__stats);
      v75 = v43;

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9290);
      Atomic.wrappedValue.getter(aBlock);
      if (__OFADD__(*aBlock, 1))
      {
        __break(1u);
      }

      else
      {
        v74[0] = *aBlock + 1;
        v74[1] = v43;
        Atomic.wrappedValue.setter(v74, v44);
      }
    }

    else
    {
      if (*(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_task))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
        sub_1AEAF985C();
      }

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = qword_1ED98AD60;

      if (v40 != -1)
      {
        swift_once();
      }

      sub_1AEAFA47C();
      v41 = *aBlock;
      if (*aBlock)
      {
        v42 = swift_allocObject();
        *(v42 + 16) = sub_1AEAB5B60;
        *(v42 + 24) = v39;
        *aBlock = sub_1AEAB7C90;
        *&aBlock[8] = v42;

        v41(&v75, aBlock);

        sub_1AEA438E0(v41);

        if ((v75 & 1) == 0)
        {
LABEL_28:
          type metadata accessor for SCAError(0);
          v75 = 56;
          sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
          sub_1AEA4175C(&unk_1ED98A750, type metadata accessor for SCAError);
          sub_1AEAF8C3C();
          v14 = *aBlock;
          swift_willThrow();
          goto LABEL_3;
        }
      }

      else
      {
        v45 = *(v15 + v31);
        v66 = *&v45[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id];
        v68 = *&v45[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id + 8];
        v73 = *(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_madSession);
        v46 = 0.0;
        v47 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        if ((v62 & 1) == 0)
        {
          v47 = v60;
          v46 = v61;
          v49 = v58;
          v48 = v59;
        }

        v50 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = *(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_verboseLogging);
        v52 = *(v15 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_options);
        v53 = swift_allocObject();
        *(v53 + 16) = v52;
        *(v53 + 24) = v45;
        *(v53 + 32) = v50;
        *(v53 + 40) = value;
        *(v53 + 48) = v21;
        *(v53 + 52) = v70;
        *(v53 + 56) = epoch;
        *(v53 + 64) = v63;
        *(v53 + 68) = *(v27 + 1);
        *(v53 + 84) = v27[5];
        *(v53 + 88) = v61;
        *(v53 + 96) = v60;
        *(v53 + 104) = v59;
        *(v53 + 112) = v58;
        *(v53 + 120) = v62;
        *(v53 + 128) = v66;
        *(v53 + 136) = v68;
        *(v53 + 144) = sub_1AEAB5B60;
        *(v53 + 152) = v39;
        *(v53 + 160) = v51;
        v77 = sub_1AEAB6094;
        v78 = v53;
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 1107296256;
        *&aBlock[16] = sub_1AEAB6C04;
        *&aBlock[24] = &block_descriptor_7;
        v54 = _Block_copy(aBlock);

        v55 = v45;

        *aBlock = value;
        *&aBlock[8] = v21;
        *&aBlock[12] = v70;
        *&aBlock[16] = epoch;
        v56 = [v73 processPixelBuffer:a1 timestamp:aBlock orientation:v63 regionOfInterest:v54 resultHandler:{v46, v47, v48, v49}];

        _Block_release(v54);

        if ((v56 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }
  }
}

uint64_t sub_1AEAB59B4(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_1AEAF982C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = a1;
    *(v12 + 48) = a2 & 1;
    sub_1AEA62CA0(a1);
    *&v8[OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_task] = sub_1AEA67464(0, 0, v6, &unk_1AEB00328, v12);
  }

  return result;
}

uint64_t sub_1AEAB5B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AEAB5B90, 0, 0);
}

uint64_t sub_1AEAB5B90()
{
  sub_1AEAF988C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 48);
    v4 = *(Strong + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_analysisResultHandler);
    v5 = Strong;

    v4(v3, v2 & 1);
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1AEAB5C80(unint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, void (*a12)(char *, uint64_t), uint64_t a13, char a14)
{
  v51 = a7;
  v50 = a6;
  v19 = a13;
  v47 = sub_1AEAF8D6C();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = a2;
  sub_1AEAB1C5C(a1, a2, a3, &v56);
  v22 = v56;
  v23 = v57;
  v24 = BYTE1(v57);
  sub_1AEAF8470();
  v25 = SampleTimer.shouldReportDetection(now:for:)(&v56);
  swift_beginAccess();
  v48 = a5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = a8;
    v27 = *(Strong + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_analytics);
    v28 = Strong;

    v19 = a13;
    v29 = a9[1];
    v56 = *a9;
    v57 = v29;
    v58[0] = a9[2];
    *(v58 + 9) = *(a9 + 41);
    v53 = v22;
    v54 = v23;
    v55 = v24;
    (*(*v27 + 248))(v50, v51, v49, &v56, &v53, v25 & 1);
  }

  if (v24)
  {
    v30 = v22;
    a12(v22, 1);
    sub_1AEAB8060(v22, *(&v22 + 1), v23, 1);
    sub_1AEAB8060(v22, *(&v22 + 1), v23, 1);
  }

  else if ((v23 & 0x80000000) == 0)
  {
    if (v25)
    {
      v51 = v19;
      swift_beginAccess();
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        sub_1AEAB60E4();
      }

      swift_beginAccess();
      v33 = swift_unknownObjectWeakLoadStrong();
      if (v33)
      {
        v34 = v33;
        sub_1AEAB6374(*(&v22 + 1), v23 & 1, 1);
      }

      type metadata accessor for SampleTimer();
      v35 = v45;
      sub_1AEAF8D5C();
      sub_1AEAF8D3C();
      v37 = v36;
      (*(v46 + 8))(v35, v47);
      v38 = sub_1AEAF405C(&v56);
      v40 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v40;
      *v40 = 0x8000000000000000;
      sub_1AEA6245C(a10, a11, isUniquelyReferenced_nonNull_native, v37);
      *v40 = v52;

      (v38)(&v56, 0);
      LODWORD(v56) = v22;
      v42 = SensitivityAnalysis.scSensitivityAnalysis.getter();
      a12(v42, 0);
    }

    else if (a14)
    {
      swift_beginAccess();
      v43 = swift_unknownObjectWeakLoadStrong();
      if (v43)
      {
        v44 = v43;
        sub_1AEAB6374(*(&v22 + 1), v23 & 1, 0);
      }
    }
  }
}

uint64_t sub_1AEAB60E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1AEAF8FEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AEAB4BA8();
  if (result)
  {
    v10 = result;
    v11 = os_transaction_create();
    v12 = sub_1AEA8BFEC();
    (*(v6 + 16))(v8, v12, v5);
    v13 = sub_1AEAF8FCC();
    v14 = sub_1AEAF9A7C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEA3F000, v13, v14, "Took transaction for TTR dump.", v15, 2u);
      MEMORY[0x1B270E620](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v16 = sub_1AEAF982C();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v10;
    v18[5] = v17;
    v18[6] = v1;
    v18[7] = v11;
    v19 = v1;
    sub_1AEA5E2A0(0, 0, v4, &unk_1AEAFFE58, v18);
  }

  return result;
}

uint64_t sub_1AEAB6374(void (*a1)(char *, uint64_t, uint64_t), char a2, char a3)
{
  v79 = a1;
  v6 = sub_1AEAF8FEC();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v76 = &v67 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v67 - v13;
  v14 = OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_sampleTimer;
  v15 = (*(v3 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler_sampleTimer) + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_id);
  v17 = *v15;
  v16 = v15[1];

  sub_1AEA72280();
  v18 = sub_1AEA8C9E4();

  v81 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v68 = sub_1AEAF955C();
  v72 = v19;

  if (a3)
  {
    v20 = 0x6F69746365746544;
  }

  else
  {
    v20 = 0xD000000000000017;
  }

  if (a3)
  {
    v21 = 0xE90000000000006ELL;
  }

  else
  {
    v21 = 0x80000001AEB081C0;
  }

  if (a2)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    MEMORY[0x1B270CB50](0x3A65726F637328, 0xE700000000000000);
    sub_1AEAF999C();
    MEMORY[0x1B270CB50](41, 0xE100000000000000);
    v22 = v81;
    v23 = v82;
  }

  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1AEAF9E1C();

  v81 = v20;
  v82 = v21;
  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  MEMORY[0x1B270CB50](v22, v23);

  MEMORY[0x1B270CB50](0x65727473206E6F20, 0xEC00000022206D61);
  MEMORY[0x1B270CB50](v17, v16);

  MEMORY[0x1B270CB50](14882, 0xE200000000000000);
  v25 = v81;
  v24 = v82;
  v81 = *(v3 + OBJC_IVAR____TtCC24SensitiveContentAnalysis19VideoStreamAnalyzer7Sampler__stats);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9290);
  Atomic.wrappedValue.getter(&v80);
  v26 = v80;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1AEAF9E1C();

  v81 = 0xD000000000000016;
  v82 = 0x80000001AEB081E0;
  v80 = v26;
  v27 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v27);

  v67 = v81;
  v70 = v82;
  v28 = *(v3 + v14);
  v69 = SampleTimer.debugDescription.getter();
  v73 = v29;

  v30 = sub_1AEA8BFEC();
  v32 = v77;
  v31 = v78;
  v33 = v71;
  v79 = *(v77 + 16);
  v79(v71, v30, v78);

  v34 = sub_1AEAF8FCC();
  v35 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v25;
    v37 = swift_slowAlloc();
    v38 = v33;
    v39 = swift_slowAlloc();
    v81 = v39;
    *v37 = 136380675;
    v40 = sub_1AEA45C14(v36, v24, &v81);

    *(v37 + 4) = v40;
    v31 = v78;
    _os_log_impl(&dword_1AEA3F000, v34, v35, "%{private}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1B270E620](v39, -1, -1);
    MEMORY[0x1B270E620](v37, -1, -1);

    v41 = *(v32 + 8);
    v41(v38, v31);
  }

  else
  {

    v41 = *(v32 + 8);
    v41(v33, v31);
  }

  v42 = v75;
  v79(v75, v30, v31);
  v43 = v72;

  v44 = sub_1AEAF8FCC();
  v45 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v43;
    v48 = swift_slowAlloc();
    v81 = v48;
    *v46 = 136380675;
    v49 = sub_1AEA45C14(v68, v47, &v81);

    *(v46 + 4) = v49;
    v31 = v78;
    _os_log_impl(&dword_1AEA3F000, v44, v45, "\n%{private}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1B270E620](v48, -1, -1);
    MEMORY[0x1B270E620](v46, -1, -1);

    v41(v75, v31);
  }

  else
  {

    v41(v42, v31);
  }

  v50 = v76;
  v79(v76, v30, v31);
  v51 = v70;

  v52 = sub_1AEAF8FCC();
  v53 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = v51;
    v56 = swift_slowAlloc();
    v81 = v56;
    *v54 = 136380675;
    v57 = sub_1AEA45C14(v67, v55, &v81);

    *(v54 + 4) = v57;
    v31 = v78;
    _os_log_impl(&dword_1AEA3F000, v52, v53, "%{private}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1B270E620](v56, -1, -1);
    MEMORY[0x1B270E620](v54, -1, -1);

    v58 = v76;
  }

  else
  {

    v58 = v50;
  }

  v41(v58, v31);
  v59 = v74;
  v79(v74, v30, v31);
  v60 = v73;

  v61 = sub_1AEAF8FCC();
  v62 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v81 = v64;
    *v63 = 136380675;
    v65 = sub_1AEA45C14(v69, v60, &v81);

    *(v63 + 4) = v65;
    _os_log_impl(&dword_1AEA3F000, v61, v62, "%{private}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1B270E620](v64, -1, -1);
    MEMORY[0x1B270E620](v63, -1, -1);
  }

  else
  {
  }

  return (v41)(v59, v31);
}

uint64_t sub_1AEAB6C04(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1AEA49EF8(0, &unk_1EB5E9350);
    v5 = sub_1AEAF96EC();
  }

  v10 = a4;
  v9(v5, v6, v7, v8, a4);
}

id VideoStreamAnalyzer.Sampler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1AEAB6D5C()
{
  sub_1AEAF9E1C();

  v0 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v0);

  return 0xD000000000000016;
}

uint64_t sub_1AEAB6DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v8 = sub_1AEAF8FEC();
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v11 = (*(*a4 + 120) + **(*a4 + 120));
  v9 = swift_task_alloc();
  v6[29] = v9;
  *v9 = v6;
  v9[1] = sub_1AEAB6F90;

  return v11();
}

uint64_t sub_1AEAB6F90(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AEAB7090, 0, 0);
}

uint64_t sub_1AEAB7090()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[24];
  v4 = sub_1AEA8BFEC();
  v0[31] = v4;
  v5 = *(v3 + 16);
  v0[32] = v5;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_1AEAF8FCC();
  v7 = sub_1AEAF9A7C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[30];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v9 >> 62)
    {
      v40 = v10;
      v11 = sub_1AEAF9FFC();
      v10 = v40;
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v11;
    v12 = v10;

    _os_log_impl(&dword_1AEA3F000, v6, v7, "Dumping %ld frames for TTR...", v12, 0xCu);
    MEMORY[0x1B270E620](v12, -1, -1);
  }

  else
  {
  }

  v13 = v0[28];
  v14 = v0[23];
  v15 = v0[24];
  v16 = *(v15 + 8);
  v0[34] = v16;
  v0[35] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v18 = Strong;
    sub_1AEA49EF8(0, &qword_1EB5E8B98);
    v19 = sub_1AEAF96CC();
    v0[37] = v19;

    v20 = sub_1AEAF958C();
    v0[38] = v20;

    v21 = sub_1AEAF8D2C();
    v0[39] = v21;
    v0[2] = v0;
    v0[7] = v0 + 41;
    v0[3] = sub_1AEAB75C4;
    v22 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9340);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1AEAB7BBC;
    v0[13] = &block_descriptor_39;
    v0[14] = v22;
    [v18 requestTTRNotificationWithVideoFrames:v19 streamID:v20 startDate:v21 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    (v0[32])(v0[27], v0[31], v0[23]);

    v23 = sub_1AEAF8FCC();
    v24 = sub_1AEAF9A7C();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[30];
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      if (v26 >> 62)
      {
        v28 = sub_1AEAF9FFC();
      }

      else
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v27 + 4) = v28;

      _os_log_impl(&dword_1AEA3F000, v23, v24, "Finished dumping %ld frames for TTR...", v27, 0xCu);
      MEMORY[0x1B270E620](v27, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v29 = v0[32];
    v30 = v0[31];
    v31 = v0[26];
    v32 = v0[23];
    (v0[34])(v0[27], v32);
    v29(v31, v30, v32);
    v33 = sub_1AEAF8FCC();
    v34 = sub_1AEAF9A7C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1AEA3F000, v33, v34, "Dropping transaction for TTR dump.", v35, 2u);
      MEMORY[0x1B270E620](v35, -1, -1);
    }

    v36 = v0[34];
    v37 = v0[26];
    v38 = v0[23];

    v36(v37, v38);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1AEAB75C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {

    v2 = sub_1AEAB792C;
  }

  else
  {
    v2 = sub_1AEAB76DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEAB76DC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);

  (*(v0 + 256))(*(v0 + 216), *(v0 + 248), *(v0 + 184));

  v4 = sub_1AEAF8FCC();
  v5 = sub_1AEAF9A7C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7 >> 62)
    {
      v9 = sub_1AEAF9FFC();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&dword_1AEA3F000, v4, v5, "Finished dumping %ld frames for TTR...", v8, 0xCu);
    MEMORY[0x1B270E620](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v10 = *(v0 + 256);
  v11 = *(v0 + 248);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  (*(v0 + 272))(*(v0 + 216), v13);
  v10(v12, v11, v13);
  v14 = sub_1AEAF8FCC();
  v15 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1AEA3F000, v14, v15, "Dropping transaction for TTR dump.", v16, 2u);
    MEMORY[0x1B270E620](v16, -1, -1);
  }

  v17 = *(v0 + 272);
  v18 = *(v0 + 208);
  v19 = *(v0 + 184);

  v17(v18, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1AEAB792C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 288);
  v30 = *(v0 + 256);
  v6 = *(v0 + 248);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  swift_willThrow();

  v30(v7, v6, v8);
  v9 = v1;
  v10 = sub_1AEAF8FCC();
  v11 = sub_1AEAF9A9C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 320);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1AEA3F000, v10, v11, "Failed to pop TTR notification! %@", v14, 0xCu);
    sub_1AEA41FAC(v15, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v15, -1, -1);
    MEMORY[0x1B270E620](v14, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 256);
  v19 = *(v0 + 248);
  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  (*(v0 + 272))(*(v0 + 200), v21);
  v18(v20, v19, v21);
  v22 = sub_1AEAF8FCC();
  v23 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1AEA3F000, v22, v23, "Dropping transaction for TTR dump.", v24, 2u);
    MEMORY[0x1B270E620](v24, -1, -1);
  }

  v25 = *(v0 + 272);
  v26 = *(v0 + 208);
  v27 = *(v0 + 184);

  v25(v26, v27);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1AEAB7BBC(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1AEAB7C94()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA5E1AC;

  return sub_1AEAB6DF0(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_1AEAB7D3C()
{
  result = qword_1EB5E8F40;
  if (!qword_1EB5E8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E89A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8F40);
  }

  return result;
}

uint64_t type metadata accessor for VideoStreamAnalyzer.Sampler()
{
  result = qword_1ED98AD20;
  if (!qword_1ED98AD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AEAB7DF4()
{
  result = sub_1AEAF8D6C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1AEAB8060(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1AEAB806C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA5E1AC;

  return sub_1AEAB5B6C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1AEAB8114(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1AEAB815C()
{
  v1 = 0x7069636974726170;
  if (*v0 != 1)
  {
    v1 = 0x506564756C637865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1AEAB81D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEABA8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAB8204(uint64_t a1)
{
  v2 = sub_1AEAB8480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAB8240(uint64_t a1)
{
  v2 = sub_1AEAB8480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchSensitiveParticipants.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9380);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB8480();
  sub_1AEAFA42C();
  v13 = 0;
  sub_1AEAFA1EC();
  if (!v2)
  {
    v9[1] = v9[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9388);
    sub_1AEAB8734(&qword_1ED989B10, sub_1AEAB02B8);
    sub_1AEAFA22C();
    v11 = 2;
    sub_1AEAFA1EC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1AEAB8480()
{
  result = qword_1ED98CDC0[0];
  if (!qword_1ED98CDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED98CDC0);
  }

  return result;
}

uint64_t sub_1AEAB84D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t FetchSensitiveParticipants.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9390);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB8480();
  sub_1AEAFA41C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  v9 = sub_1AEAFA10C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9388);
  v15 = 1;
  sub_1AEAB8734(&qword_1ED989B08, sub_1AEAB030C);
  sub_1AEAFA14C();
  v10 = v13[1];
  v14 = 2;
  v11 = sub_1AEAFA10C();
  (*(v6 + 8))(v8, v5);
  *a2 = v9 & 1;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAB8734(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E9388);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AEAB87DC()
{
  v1 = 0x736973796C616E61;
  if (*v0 != 1)
  {
    v1 = 0x73656C646E6168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616E4165726F7473;
  }
}

uint64_t sub_1AEAB8844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEABA9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAB886C(uint64_t a1)
{
  v2 = sub_1AEAB8AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAB88A8(uint64_t a1)
{
  v2 = sub_1AEAB8AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoreAnalysis.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9398);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 2);
  v13 = *(v1 + 4);
  v14 = v8;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB8AF8();
  sub_1AEAFA42C();
  v20 = 0;
  sub_1AEAFA1EC();
  if (!v2)
  {
    v9 = v12;
    v17 = v14;
    v18 = v13;
    v19 = 1;
    sub_1AEA5AA30();
    sub_1AEAFA22C();
    v15 = v9;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
    sub_1AEA83BD8(&qword_1EB5E8C58);
    sub_1AEAFA22C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1AEAB8AF8()
{
  result = qword_1ED98BBC8;
  if (!qword_1ED98BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98BBC8);
  }

  return result;
}

uint64_t StoreAnalysis.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E93A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB8AF8();
  sub_1AEAFA41C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1AEAFA10C();
  v18 = 1;
  sub_1AEA5AAD8();
  sub_1AEAFA14C();
  v10 = v16;
  HIDWORD(v13) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  v15 = 2;
  sub_1AEA83BD8(&qword_1EB5E8C50);
  sub_1AEAFA14C();
  (*(v6 + 8))(v8, v5);
  v11 = v14;
  *a2 = v9 & 1;
  *(a2 + 2) = v10;
  *(a2 + 4) = WORD2(v13);
  *(a2 + 8) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAB8DB4@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 2) = v4;
  *(a4 + 8) = a3;
  return result;
}

uint64_t sub_1AEAB8DF8()
{
  if (*v0)
  {
    return 0x7069636974726170;
  }

  else
  {
    return 0x6E4165766F6D6572;
  }
}

uint64_t sub_1AEAB8E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E4165766F6D6572 && a2 == 0xEE00736573796C61;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

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

uint64_t sub_1AEAB8F30(uint64_t a1)
{
  v2 = sub_1AEAB9178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAB8F6C(uint64_t a1)
{
  v2 = sub_1AEAB9178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoveAnalyses.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E93A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB9178();
  sub_1AEAFA42C();
  v11 = 0;
  sub_1AEAFA1EC();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9388);
    sub_1AEAB8734(&qword_1ED989B10, sub_1AEAB02B8);
    sub_1AEAFA22C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1AEAB9178()
{
  result = qword_1ED98B1A0[0];
  if (!qword_1ED98B1A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED98B1A0);
  }

  return result;
}

uint64_t RemoveAnalyses.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E93B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB9178();
  sub_1AEAFA41C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  v9 = sub_1AEAFA10C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9388);
  v13 = 1;
  sub_1AEAB8734(&qword_1ED989B08, sub_1AEAB030C);
  sub_1AEAFA14C();
  (*(v6 + 8))(v8, v5);
  v10 = v12[1];
  *a2 = v9 & 1;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAB93EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_1AEAB9428()
{
  v1 = 0x6465646461;
  if (*v0 != 1)
  {
    v1 = 0x6465766F6D6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1AEAB9484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEABAB00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAB94AC(uint64_t a1)
{
  v2 = sub_1AEAB9770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAB94E8(uint64_t a1)
{
  v2 = sub_1AEAB9770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateSensitiveParticipantCache.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E93B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB9770();
  sub_1AEAFA42C();
  LOBYTE(v15) = 0;
  sub_1AEAFA1EC();
  if (!v2)
  {
    v9 = v12;
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E93C0);
    sub_1AEAB9A80(&qword_1EB5E93C8, sub_1AEA5AA30);
    sub_1AEAFA22C();
    v15 = v9;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
    sub_1AEA83BD8(&qword_1EB5E8C58);
    sub_1AEAFA22C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1AEAB9770()
{
  result = qword_1EB5ED5C8;
  if (!qword_1EB5ED5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5ED5C8);
  }

  return result;
}

uint64_t UpdateSensitiveParticipantCache.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E93D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB9770();
  sub_1AEAFA41C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v15) = 0;
  v9 = sub_1AEAFA10C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E93C0);
  v14 = 1;
  sub_1AEAB9A80(&qword_1EB5E93D8, sub_1AEA5AAD8);
  sub_1AEAFA14C();
  v10 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  v14 = 2;
  sub_1AEA83BD8(&qword_1EB5E8C50);
  sub_1AEAFA14C();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9 & 1;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAB9A80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E93C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AEAB9B04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_1AEAB9B14()
{
  result = qword_1ED98A4B8;
  if (!qword_1ED98A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A4B8);
  }

  return result;
}

unint64_t sub_1AEAB9B6C()
{
  result = qword_1ED98A4C0;
  if (!qword_1ED98A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A4C0);
  }

  return result;
}

unint64_t sub_1AEAB9BC4()
{
  result = qword_1ED98A4B0;
  if (!qword_1ED98A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A4B0);
  }

  return result;
}

uint64_t sub_1AEAB9C60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E9168);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AEAB9CD8()
{
  result = qword_1ED98A5A0;
  if (!qword_1ED98A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5A0);
  }

  return result;
}

unint64_t sub_1AEAB9D74()
{
  result = qword_1ED98A5A8;
  if (!qword_1ED98A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5A8);
  }

  return result;
}

unint64_t sub_1AEAB9DF4()
{
  result = qword_1ED98A5B8;
  if (!qword_1ED98A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5B8);
  }

  return result;
}

unint64_t sub_1AEAB9E48()
{
  result = qword_1ED98A5C0;
  if (!qword_1ED98A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A5C0);
  }

  return result;
}

unint64_t sub_1AEAB9EA0()
{
  result = qword_1EB5E93E0;
  if (!qword_1EB5E93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E93E0);
  }

  return result;
}

unint64_t sub_1AEAB9EF8()
{
  result = qword_1EB5E93E8;
  if (!qword_1EB5E93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E93E8);
  }

  return result;
}

unint64_t sub_1AEAB9F78()
{
  result = qword_1ED98A308;
  if (!qword_1ED98A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A308);
  }

  return result;
}

unint64_t sub_1AEAB9FCC()
{
  result = qword_1ED98A310;
  if (!qword_1ED98A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A310);
  }

  return result;
}

unint64_t sub_1AEABA04C()
{
  result = qword_1ED989F98;
  if (!qword_1ED989F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED989F98);
  }

  return result;
}

unint64_t sub_1AEABA0A0()
{
  result = qword_1ED989FA0;
  if (!qword_1ED989FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED989FA0);
  }

  return result;
}

uint64_t sub_1AEABA144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AEABA180()
{
  result = qword_1ED98A2F0;
  if (!qword_1ED98A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A2F0);
  }

  return result;
}

unint64_t sub_1AEABA1D4()
{
  result = qword_1ED98A2F8;
  if (!qword_1ED98A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98A2F8);
  }

  return result;
}

uint64_t sub_1AEABA258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1AEABA2A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AEABA308(uint64_t a1, int a2)
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

uint64_t sub_1AEABA350(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AEABA3B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1AEABA3F8(uint64_t result, int a2, int a3)
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

unint64_t sub_1AEABA494()
{
  result = qword_1EB5ED5D0[0];
  if (!qword_1EB5ED5D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ED5D0);
  }

  return result;
}

unint64_t sub_1AEABA4EC()
{
  result = qword_1EB5ED6E0[0];
  if (!qword_1EB5ED6E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ED6E0);
  }

  return result;
}

unint64_t sub_1AEABA544()
{
  result = qword_1EB5ED7F0[0];
  if (!qword_1EB5ED7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ED7F0);
  }

  return result;
}

unint64_t sub_1AEABA59C()
{
  result = qword_1EB5EDA00[0];
  if (!qword_1EB5EDA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EDA00);
  }

  return result;
}

unint64_t sub_1AEABA5F4()
{
  result = qword_1EB5EDB10;
  if (!qword_1EB5EDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EDB10);
  }

  return result;
}

unint64_t sub_1AEABA64C()
{
  result = qword_1EB5EDB18[0];
  if (!qword_1EB5EDB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EDB18);
  }

  return result;
}

unint64_t sub_1AEABA6A4()
{
  result = qword_1ED98B190;
  if (!qword_1ED98B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98B190);
  }

  return result;
}

unint64_t sub_1AEABA6FC()
{
  result = qword_1ED98B198;
  if (!qword_1ED98B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98B198);
  }

  return result;
}

unint64_t sub_1AEABA754()
{
  result = qword_1ED98BBB0;
  if (!qword_1ED98BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98BBB0);
  }

  return result;
}

unint64_t sub_1AEABA7AC()
{
  result = qword_1ED98BBB8;
  if (!qword_1ED98BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98BBB8);
  }

  return result;
}

unint64_t sub_1AEABA804()
{
  result = qword_1ED98CDB0;
  if (!qword_1ED98CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98CDB0);
  }

  return result;
}

unint64_t sub_1AEABA85C()
{
  result = qword_1ED98CDB8;
  if (!qword_1ED98CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED98CDB8);
  }

  return result;
}

uint64_t sub_1AEABA8B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000001AEB08340 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x506564756C637865 && a2 == 0xEE0073746E657261)
  {

    return 2;
  }

  else
  {
    v5 = sub_1AEAFA2BC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AEABA9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616E4165726F7473 && a2 == 0xED0000736973796CLL;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736973796C616E61 && a2 == 0xE800000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AEABAB00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001AEB08360 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646461 && a2 == 0xE500000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1AEAFA2BC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 FrameDetails.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FrameDetails.init(orientation:frameSize:regionOfInterest:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if ((a1 & 0x100000000) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  *a3 = v5;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  result = *a2;
  v7 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = v7;
  *(a3 + 56) = *(a2 + 32);
  return result;
}

_DWORD *sub_1AEABACA4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t _s24SensitiveContentAnalysis12FrameDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 56))
    {
      if (*(a2 + 56))
      {
        return 1;
      }
    }

    else if ((*(a2 + 56) & 1) == 0 && CGRectEqualToRect(*(a1 + 24), *(a2 + 24)))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AEABAD60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEABAD80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1AEABAE30()
{
  v1 = sub_1AEAF8F3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6];
  v8 = *v0;
  v14 = MEMORY[0x1E69E7CC0];
  sub_1AEABDC88(&qword_1EB5E9418, 255, MEMORY[0x1E69AA048]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9420);
  sub_1AEABB084();
  sub_1AEAF9D5C();
  LOWORD(v14) = *sub_1AEAD9310();
  v13 = v8;
  sub_1AEA631F4();
  if (sub_1AEAF9CFC())
  {
    sub_1AEAF8ECC();
    sub_1AEABD1BC(v7, v4);
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
  }

  LOWORD(v14) = *sub_1AEAD9304();
  v13 = v8;
  result = sub_1AEAF9CFC();
  if (result)
  {
    sub_1AEAF8F2C();
    sub_1AEABD1BC(v7, v4);
    v11 = *(v2 + 8);
    v11(v4, v1);
    return (v11)(v7, v1);
  }

  return result;
}

unint64_t sub_1AEABB084()
{
  result = qword_1EB5E9428;
  if (!qword_1EB5E9428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E9420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9428);
  }

  return result;
}

void sub_1AEABB198(void *a1, char *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v82 = a4;
  v88 = a1;
  v89 = a3;
  v96 = a2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v70 - v6;
  v7 = sub_1AEAF8E8C();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9400);
  v81 = *(v9 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9408);
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = sub_1AEAF8EDC();
  v95 = *(v19 - 8);
  v20 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9410);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v70 - v25;
  v27 = sub_1AEAF8F3C();
  MEMORY[0x1EEE9AC00](v27);
  v34 = MEMORY[0x1EEE9AC00](v28);
  if (!v96)
  {
    v71 = v33;
    v75 = v32;
    v72 = v20;
    v76 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v15;
    v85 = &v70 - v30;
    v78 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v29;
    v74 = v10;
    v86 = v23;
    v96 = v18;
    v36 = v19;
    v79 = v13;
    v37 = v94;
    v38 = v88;
    v77 = v31;
    if (v88)
    {
      v39 = v31;
      SCSensitivityAnalysis.analysis.getter(&v98);
      v97 = v98;
      sub_1AEABAE30();
      v40 = v35;
      (*(v39 + 56))(v26, 0, 1, v35);
      v41 = (*(v39 + 32))(v85, v26, v35);
      v42 = v95;
      v43 = v76;
      v44 = v93;
    }

    else
    {
      v40 = v29;
      v45 = v31;
      (*(v31 + 56))(v26, 1, 1, v29, v34);
      v99 = MEMORY[0x1E69E7CC0];
      sub_1AEABDC88(&qword_1EB5E9418, 255, MEMORY[0x1E69AA048]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9420);
      sub_1AEABB084();
      sub_1AEAF9D5C();
      v41 = (*(v45 + 48))(v26, 1, v40);
      v42 = v95;
      v43 = v76;
      v44 = v93;
      if (v41 != 1)
      {
        v41 = sub_1AEA41FAC(v26, &qword_1EB5E9410);
      }
    }

    v89(v41);
    v46 = sub_1AEAF8EAC();
    (*(*(v46 - 8) + 56))(v96, 1, 1, v46);
    v47 = v37;
    v93 = v36;
    v48 = v78;
    if (v38 && ([v38 isSensitive] & 1) != 0)
    {
      v49 = MEMORY[0x1E69AA030];
    }

    else
    {
      v49 = MEMORY[0x1E69AA028];
    }

    v50 = v79;
    v51 = v91;
    v52 = v92;
    v53 = v90;
    (*(v92 + 104))(v90, *v49, v44);
    (*(v52 + 32))(v50, v53, v44);
    (*(v52 + 56))(v50, 0, 1, v44);
    v54 = [objc_opt_self() isEnabled];
    v55 = v96;
    v56 = v86;
    if (v54)
    {
      v57 = sub_1AEAF982C();
      (*(*(v57 - 8) + 56))(v47, 1, 1, v57);
      v58 = v93;
      (*(v42 + 16))(v43, v56, v93);
      sub_1AEA63BD4(v55, v48, &qword_1EB5E9408);
      v59 = v77;
      (*(v77 + 16))(v75, v85, v40);
      sub_1AEA63BD4(v50, v87, &qword_1EB5E9400);
      v60 = qword_1EB5EDCD0;
      v91 = v51;
      v92 = v40;
      if (v60 != -1)
      {
        swift_once();
      }

      v62 = qword_1EB5F5C60;
      v63 = sub_1AEABDC88(&qword_1EB5E9430, v61, type metadata accessor for AnalyticsActor);
      v64 = (*(v42 + 80) + 40) & ~*(v42 + 80);
      v65 = (v72 + *(v80 + 80) + v64) & ~*(v80 + 80);
      v66 = (v73 + *(v59 + 80) + v65) & ~*(v59 + 80);
      v67 = (v71 + *(v81 + 80) + v66) & ~*(v81 + 80);
      v68 = (v74 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      *(v69 + 2) = v62;
      *(v69 + 3) = v63;
      *(v69 + 4) = v91;
      (*(v95 + 32))(&v69[v64], v76, v58);
      sub_1AEABDB6C(v78, &v69[v65], &qword_1EB5E9408);
      v40 = v92;
      (*(v59 + 32))(&v69[v66], v75, v92);
      sub_1AEABDB6C(v87, &v69[v67], &qword_1EB5E9400);
      *&v69[v68] = ObjectType;
      v42 = v95;

      sub_1AEA5E2A0(0, 0, v94, v84, v69);

      v50 = v79;
      v55 = v96;
      v56 = v86;
    }

    sub_1AEA41FAC(v50, &qword_1EB5E9400);
    sub_1AEA41FAC(v55, &qword_1EB5E9408);
    (*(v42 + 8))(v56, v93);
    (*(v77 + 8))(v85, v40);
  }
}

id Analytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Analytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Analytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Analytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Analytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AEABBCCC(int a1)
{
  LODWORD(v65) = a1;
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v70 = &v51 - v2;
  v3 = sub_1AEAF8E8C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9400);
  v60 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = sub_1AEAF8F3C();
  v64 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9408);
  v57 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - v20;
  v22 = sub_1AEAF8EDC();
  v71 = *(v22 - 1);
  v23 = *(v71 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v67 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  sub_1AEAF8ECC();
  v27 = sub_1AEAF8EAC();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  sub_1AEAF8F2C();
  v28 = MEMORY[0x1E69AA030];
  if ((v65 & 1) == 0)
  {
    v28 = MEMORY[0x1E69AA028];
  }

  (*(v4 + 104))(v6, *v28, v3);
  (*(v4 + 32))(v11, v6, v3);
  v29 = v3;
  v30 = v64;
  (*(v4 + 56))(v11, 0, 1, v29);
  if ([objc_opt_self() isEnabled])
  {
    v31 = sub_1AEAF982C();
    (*(*(v31 - 8) + 56))(v70, 1, 1, v31);
    v32 = v71;
    v33 = *(v71 + 16);
    v54 = v26;
    v33(v67, v26, v22);
    v55 = v21;
    sub_1AEA63BD4(v21, v69, &qword_1EB5E9408);
    v34 = *(v30 + 16);
    v56 = v16;
    v34(v66, v16, v12);
    v65 = v11;
    sub_1AEA63BD4(v11, v68, &qword_1EB5E9400);
    v53 = v12;
    v35 = qword_1EB5EDCD0;
    v52 = v62;
    v37 = v30;
    v62 = v22;
    if (v35 != -1)
    {
      swift_once();
    }

    v38 = qword_1EB5F5C60;
    v39 = sub_1AEABDC88(&qword_1EB5E9430, v36, type metadata accessor for AnalyticsActor);
    v40 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v41 = (v23 + *(v57 + 80) + v40) & ~*(v57 + 80);
    v42 = (v58 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = v32;
    v44 = (v59 + *(v60 + 80) + v42) & ~*(v60 + 80);
    v45 = (v61 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 2) = v38;
    *(v46 + 3) = v39;
    *(v46 + 4) = v52;
    v47 = &v46[v40];
    v22 = v62;
    (*(v43 + 32))(v47, v67, v62);
    sub_1AEABDB6C(v69, &v46[v41], &qword_1EB5E9408);
    v30 = v37;
    v48 = *(v37 + 32);
    v49 = v53;
    v48(&v46[v42], v66, v53);
    sub_1AEABDB6C(v68, &v46[v44], &qword_1EB5E9400);
    *&v46[v45] = ObjectType;

    sub_1AEA5E2A0(0, 0, v70, &unk_1AEB00BA0, v46);

    v12 = v49;
    v11 = v65;
    v21 = v55;
    v16 = v56;
    v26 = v54;
  }

  sub_1AEA41FAC(v11, &qword_1EB5E9400);
  (*(v30 + 8))(v16, v12);
  sub_1AEA41FAC(v21, &qword_1EB5E9408);
  return (*(v71 + 8))(v26, v22);
}

uint64_t sub_1AEABC470()
{
  sub_1AEAF8F8C();
  sub_1AEABDC88(&qword_1EB5E9448, 255, MEMORY[0x1E69AA2B8]);
  return sub_1AEAF8F9C();
}

unint64_t static Analytics.bundleIdWithThirdPartyConsolidation(for:)(uint64_t a1)
{
  if ((sub_1AEAF960C() & 1) == 0)
  {
    return 0xD000000000000035;
  }

  return a1;
}

uint64_t sub_1AEABC58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v13;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v9 = sub_1AEAF8F7C();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  if (qword_1EB5EDCD0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB5F5C60;
  v8[18] = qword_1EB5F5C60;

  return MEMORY[0x1EEE6DFA0](sub_1AEABC694, v10, 0);
}

uint64_t sub_1AEABC694()
{
  type metadata accessor for PolicyCache();
  *(v0 + 152) = static PolicyCache.shared.getter();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1AEABC744;

  return PolicyCache.prefetch()(v0 + 56);
}

uint64_t sub_1AEABC744()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_1AEABCA3C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1AEABC868;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AEABC868()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = swift_task_alloc();
  v6 = *(v0 + 88);
  *(v5 + 16) = *(v0 + 72);
  *(v5 + 32) = v6;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  *(v5 + 72) = v1;
  sub_1AEAF8FBC();

  if (qword_1EB5EDCA0 != -1)
  {
    swift_once();
  }

  if (qword_1EB5EDCC0)
  {
    sub_1AEA5B924(&xmmword_1EB5EDCA8, v0 + 16);
  }

  else
  {
    v7 = qword_1EB5EDCC8;
    v8 = *algn_1EB5EDCB8;
    *(v0 + 16) = xmmword_1EB5EDCA8;
    *(v0 + 32) = v8;
    *(v0 + 48) = v7;
  }

  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  if (*(v0 + 40))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_1AEAF8FAC();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    (*(v10 + 8))(*(v0 + 136), *(v0 + 120));
    if (!*(v0 + 40))
    {
      goto LABEL_10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
LABEL_10:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AEABCA3C()
{

  if (qword_1EB5EDCD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1EB5EDCE0);
  v3 = v1;
  v4 = sub_1AEAF8FCC();
  v5 = sub_1AEAF9A9C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1AEA3F000, v4, v5, "Failed to retrieve policy %@", v8, 0xCu);
    sub_1AEA41FAC(v9, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v9, -1, -1);
    MEMORY[0x1B270E620](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AEABCBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = a7;
  v26 = a6;
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9450);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v26 - v10;
  v27 = sub_1AEAF8F3C();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9408);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_1AEAF8EDC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() mainBundle];
  v22 = [v21 bundleIdentifier];

  if (v22)
  {
    sub_1AEAF95BC();

    if ((sub_1AEAF960C() & 1) == 0)
    {
    }
  }

  v23 = v34;
  sub_1AEAF8EFC();
  sub_1AEAF8F0C();
  (*(v18 + 16))(v20, v28, v17);
  sub_1AEAF8EEC();
  sub_1AEA63BD4(v30, v16, &qword_1EB5E9408);
  sub_1AEAF8EBC();
  (*(v11 + 16))(v13, v31, v27);
  sub_1AEAF8F4C();
  sub_1AEA63BD4(v32, v29, &qword_1EB5E9400);
  sub_1AEAF8E9C();
  if (v33)
  {
    v24 = sub_1AEAF8F5C();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  else
  {
    v35 = v26;
    sub_1AEABCFF8(v23);
  }

  return sub_1AEAF8F6C();
}

uint64_t sub_1AEABCFF8@<X0>(uint64_t a1@<X8>)
{
  sub_1AEA9B3D4();
  sub_1AEA76774();
  if (sub_1AEAF9CFC())
  {
    v2 = MEMORY[0x1E69AA070];
  }

  else
  {
    sub_1AEA9B3EC();
    if (sub_1AEAF9CFC())
    {
      v2 = MEMORY[0x1E69AA068];
    }

    else
    {
      sub_1AEA9B404();
      if ((sub_1AEAF9CFC() & 1) == 0)
      {
        v7 = sub_1AEAF8F5C();
        return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
      }

      v2 = MEMORY[0x1E69AA060];
    }
  }

  v3 = *v2;
  v4 = sub_1AEAF8F5C();
  v5 = *(v4 - 8);
  (*(v5 + 104))(a1, v3, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1AEABD1BC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9438);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = sub_1AEAF8F3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - v15;
  v27 = *(v10 + 16);
  v28 = v2;
  v27(v12, v2, v9, v14);
  v17 = MEMORY[0x1E69AA048];
  v26[1] = sub_1AEABDC88(&qword_1EB5E9418, 255, MEMORY[0x1E69AA048]);
  sub_1AEAF9D0C();
  v18 = v17;
  v19 = v4;
  sub_1AEABDC88(&qword_1EB5E9440, 255, v18);
  v20 = sub_1AEAF957C();
  v21 = *(v4 + 48);
  *v8 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v10 + 32))(&v8[v21], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v22 = v27;
    (v27)(&v8[v21], a2, v9);
    v22(v12, a2, v9);
    sub_1AEAF9D3C();
  }

  v23 = v29;
  sub_1AEABDB6C(v8, v29, &qword_1EB5E9438);
  v24 = *v23;
  (*(v10 + 32))(v30, &v23[*(v19 + 48)], v9);
  return v24;
}

uint64_t sub_1AEABD4CC()
{
  type metadata accessor for AnalyticsActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EB5F5C60 = v0;
  return result;
}

uint64_t sub_1AEABD52C()
{
  v2 = *(sub_1AEAF8EDC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9408) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1AEAF8F3C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9400) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v0 + 32);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_1AEA63D38;

  return sub_1AEABC58C(v14, v15, v16, v13, v0 + v3, v0 + v6, v0 + v9, v0 + v12);
}

uint64_t sub_1AEABD798()
{
  v2 = *(sub_1AEAF8EDC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9408) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1AEAF8F3C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9400) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v0 + 32);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_1AEA5E1AC;

  return sub_1AEABC58C(v14, v15, v16, v13, v0 + v3, v0 + v6, v0 + v9, v0 + v12);
}

uint64_t sub_1AEABD9E0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AEABDA58()
{
  if (qword_1EB5EDCD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AEABDAB4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnalyticsActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1AEABDB6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AEABDBD4()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5EDCE0);
  __swift_project_value_buffer(v0, qword_1EB5EDCE0);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEABDC88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1AEABDCD0(uint64_t a1)
{
  v1[2] = a1;
  sub_1AEAF97FC();
  v1[3] = sub_1AEAF97EC();
  v3 = sub_1AEAF977C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1AEABDD68, v3, v2);
}

uint64_t sub_1AEABDD68()
{
  type metadata accessor for AnalysisHistoryCache(0);
  v0[6] = static AnalysisHistoryCache.shared.getter();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1AEABDE28;
  v2 = v0[2];

  return sub_1AEAC2C08(v2);
}

uint64_t sub_1AEABDE28(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1AEABDF74, v4, v3);
}

uint64_t sub_1AEABDF74()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1AEABDFD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA79A54;

  return sub_1AEAC2C08(a1);
}

uint64_t sub_1AEABE20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = sub_1AEAF97FC();
  v3[7] = sub_1AEAF97EC();
  v5 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEABE2A8, v5, v4);
}

uint64_t sub_1AEABE2A8()
{
  v1 = v0[5];

  v0[8] = _Block_copy(v1);
  v0[9] = sub_1AEAF96EC();
  v0[10] = sub_1AEAF97EC();
  v3 = sub_1AEAF977C();
  v0[11] = v3;
  v0[12] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1AEABE364, v3, v2);
}

uint64_t sub_1AEABE364()
{
  type metadata accessor for AnalysisHistoryCache(0);
  v0[13] = static AnalysisHistoryCache.shared.getter();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1AEABE424;
  v2 = v0[9];

  return sub_1AEAC2C08(v2);
}

uint64_t sub_1AEABE424(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;

  v4 = *(v2 + 96);
  v5 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1AEABE58C, v5, v4);
}

uint64_t sub_1AEABE58C()
{
  v1 = *(v0 + 64);

  if (v1)
  {
    v2 = *(v0 + 64);
    v2[2](v2, *(v0 + 24));
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1AEABE614(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AEA88E0C;

  return (sub_1AEAC38C4)(a1, a2);
}

uint64_t sub_1AEABE6C8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = v2;
  v5 = sub_1AEAF8FEC();
  *(v3 + 328) = v5;
  *(v3 + 336) = *(v5 - 8);
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 76) = *a2;
  sub_1AEAF97FC();
  *(v3 + 352) = sub_1AEAF97EC();
  v7 = sub_1AEAF977C();
  *(v3 + 360) = v7;
  *(v3 + 368) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AEABE7C8, v7, v6);
}

uint64_t sub_1AEABE7C8()
{
  if (*(v0 + 76) == 2)
  {

    type metadata accessor for SCAError(0);
    *(v0 + 304) = 20;
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA417A4(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    v1 = *(v0 + 296);
    swift_willThrow();
LABEL_5:
    v4 = *(v0 + 336);
    v3 = *(v0 + 344);
    v5 = *(v0 + 328);
    v6 = sub_1AEA4351C();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v1;
    v8 = sub_1AEAF8FCC();
    v9 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1AEA3F000, v8, v9, "Failed to check analysis history for outgoing call: %@", v10, 0xCu);
      sub_1AEA41FAC(v11, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v11, -1, -1);
      MEMORY[0x1B270E620](v10, -1, -1);
    }

    v15 = *(v0 + 336);
    v14 = *(v0 + 344);
    v16 = *(v0 + 328);

    (*(v15 + 8))(v14, v16);
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }

  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysisHistoryRead()();
  if (v2)
  {
    v1 = v2;

    goto LABEL_5;
  }

  v19 = swift_task_alloc();
  *(v0 + 376) = v19;
  *v19 = v0;
  v19[1] = sub_1AEABEA94;

  return static SensitiveContentPolicy.prefetch()();
}

uint64_t sub_1AEABEA94()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_1AEABF5D0;
  }

  else
  {
    v5 = sub_1AEABEBD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

char *sub_1AEABEBD0()
{
  v55 = v0;
  v1 = v0[48];
  static SensitiveContentPolicy.current.getter(&v47);
  v50 = v47;
  LOBYTE(v51) = v48;
  v49 = *sub_1AEA4F830();
  Optional<A>.check(for:)(&v49, &v46);
  if (v1)
  {
    v2 = v1;

    v4 = v0[42];
    v3 = v0[43];
    v5 = v0[41];
    v6 = sub_1AEA4351C();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v2;
    v8 = sub_1AEAF8FCC();
    v9 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1AEA3F000, v8, v9, "Failed to check analysis history for outgoing call: %@", v10, 0xCu);
      sub_1AEA41FAC(v11, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v11, -1, -1);
      MEMORY[0x1B270E620](v10, -1, -1);
    }

    v15 = v0[42];
    v14 = v0[43];
    v16 = v0[41];

    (*(v15 + 8))(v14, v16);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[39];
    if (v19 >> 62)
    {
      v20 = sub_1AEAF9FFC();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v47 = MEMORY[0x1E69E7CC0];
      result = sub_1AEA4FF44(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
        return result;
      }

      v21 = v47;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = 0;
        do
        {
          MEMORY[0x1B270D3B0](v22, v0[39]);
          sub_1AEA50004(&v50);
          swift_unknownObjectRelease();
          v23 = v50;
          v24 = v51;
          v25 = v52;
          v26 = v53;
          v27 = v54;
          v47 = v21;
          v29 = *(v21 + 16);
          v28 = *(v21 + 24);
          if (v29 >= v28 >> 1)
          {
            v42 = v53;
            v44 = v52;
            sub_1AEA4FF44((v28 > 1), v29 + 1, 1);
            v26 = v42;
            v25 = v44;
            v21 = v47;
          }

          ++v22;
          *(v21 + 16) = v29 + 1;
          v30 = v21 + 56 * v29;
          *(v30 + 32) = v23;
          *(v30 + 40) = v24;
          *(v30 + 48) = v25;
          *(v30 + 64) = v26;
          *(v30 + 80) = v27;
        }

        while (v20 != v22);
      }

      else
      {
        v31 = (v0[39] + 32);
        do
        {
          v32 = *v31;
          sub_1AEA50004(&v50);

          v33 = v50;
          v34 = v51;
          v35 = v52;
          v36 = v53;
          v37 = v54;
          v47 = v21;
          v39 = *(v21 + 16);
          v38 = *(v21 + 24);
          if (v39 >= v38 >> 1)
          {
            v43 = v53;
            v45 = v52;
            sub_1AEA4FF44((v38 > 1), v39 + 1, 1);
            v36 = v43;
            v35 = v45;
            v21 = v47;
          }

          *(v21 + 16) = v39 + 1;
          v40 = v21 + 56 * v39;
          *(v40 + 32) = v33;
          *(v40 + 40) = v34;
          *(v40 + 48) = v35;
          *(v40 + 64) = v36;
          *(v40 + 80) = v37;
          ++v31;
          --v20;
        }

        while (v20);
      }
    }

    v0[49] = v21;
    v41 = swift_task_alloc();
    v0[50] = v41;
    *v41 = v0;
    v41[1] = sub_1AEABEFD8;

    return AnalysisHistoryCache.fetchAnalyses(for:checkCache:)(v21, 0);
  }
}

uint64_t sub_1AEABEFD8(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v4 = v3[45];
    v5 = v3[46];
    v6 = sub_1AEABF774;
  }

  else
  {

    v4 = v3[45];
    v5 = v3[46];
    v6 = sub_1AEABF0F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void sub_1AEABF0F4()
{
  v51 = v0;
  v1 = *(v0 + 408);

  v2 = *(v1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v3 = 0;
  v4 = *(v0 + 408) + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v6 = (v4 + (v3 << 6));
    v7 = v3;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v8 = *v6;
      v9 = v6[1];
      v10 = v6[2];
      *(v0 + 60) = *(v6 + 44);
      *(v0 + 32) = v9;
      *(v0 + 48) = v10;
      *(v0 + 16) = v8;
      v3 = v7 + 1;
      sub_1AEAAD510(v0 + 16, v0 + 80);
      if (SensitivityAnalysis.shouldInterveneWithOutgoingCalls.getter())
      {
        break;
      }

      sub_1AEAAD5C0(v0 + 16);
      v6 += 4;
      ++v7;
      if (v2 == v3)
      {
        goto LABEL_15;
      }
    }

    *&v49[0] = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AEAC203C(0, *(v5 + 16) + 1, 1);
      v5 = *&v49[0];
    }

    v11 = v5;
    v12 = *(v5 + 16);
    v13 = *(v11 + 24);
    if (v12 >= v13 >> 1)
    {
      sub_1AEAC203C((v13 > 1), v12 + 1, 1);
      v11 = *&v49[0];
    }

    *(v11 + 16) = v12 + 1;
    v14 = (v11 + (v12 << 6));
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    *(v14 + 76) = *(v0 + 60);
    v14[3] = v16;
    v14[4] = v17;
    v14[2] = v15;
    v5 = v11;
    if (v2 - 1 != v7)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v18 = sub_1AEAC37CC(MEMORY[0x1E69E7CC0]);
  v48 = *(v5 + 16);
  if (v48)
  {
    v19 = 0;
    v20 = (v5 + 32);
    v47 = v5;
    do
    {
      if (v19 >= *(v5 + 16))
      {
        goto LABEL_44;
      }

      v23 = *v20;
      v24 = v20[1];
      v25 = v20[2];
      *(v0 + 188) = *(v20 + 44);
      *(v0 + 160) = v24;
      *(v0 + 176) = v25;
      *(v0 + 144) = v23;
      swift_getKeyPath();
      sub_1AEAAD510(v0 + 144, v0 + 208);
      SensitiveParticipant.subscript.getter();

      swift_getKeyPath();
      v26 = *(v0 + 160);
      v49[0] = *(v0 + 144);
      v49[1] = v26;
      v50[0] = *(v0 + 176);
      *(v50 + 12) = *(v0 + 188);
      SensitiveParticipant.subscript.getter();

      v27 = objc_allocWithZone(SCAParticipant);
      v28 = sub_1AEAF958C();

      v29 = sub_1AEAF99AC();

      v30 = [v27 initWithDisplayName:v28 handles:v29];

      type metadata accessor for SCSensitivityAnalysis(0);
      LODWORD(v49[0]) = *(v0 + 200);
      v31 = SCSensitivityAnalysis.init(analysis:)(v49);
      if ((v18 & 0xC000000000000001) != 0)
      {
        if (v18 < 0)
        {
          v32 = v18;
        }

        else
        {
          v32 = v18 & 0xFFFFFFFFFFFFFF8;
        }

        v33 = sub_1AEAF9FFC();
        if (__OFADD__(v33, 1))
        {
          goto LABEL_46;
        }

        v18 = sub_1AEAC2168(v32, v33 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49[0] = v18;
      v36 = sub_1AEAC1F24(v30);
      v37 = *(v18 + 16);
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_45;
      }

      v40 = v35;
      if (*(v18 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v35)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_1AEAC2604();
          v18 = *&v49[0];
          if (v40)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_1AEAC239C(v39, isUniquelyReferenced_nonNull_native);
        v18 = *&v49[0];
        v41 = sub_1AEAC1F24(v30);
        if ((v40 & 1) != (v42 & 1))
        {
          sub_1AEA49EF8(0, &qword_1ED98A488);

          sub_1AEAFA31C();
          return;
        }

        v36 = v41;
        if (v40)
        {
LABEL_17:
          v21 = *(v18 + 56);
          v22 = *(v21 + 8 * v36);
          *(v21 + 8 * v36) = v31;

          sub_1AEAAD5C0(v0 + 144);
          goto LABEL_18;
        }
      }

      *(v18 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(*(v18 + 48) + 8 * v36) = v30;
      *(*(v18 + 56) + 8 * v36) = v31;
      sub_1AEAAD5C0(v0 + 144);
      v43 = *(v18 + 16);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_47;
      }

      *(v18 + 16) = v45;
LABEL_18:
      ++v19;
      v20 += 4;
      v5 = v47;
    }

    while (v48 != v19);
  }

  v46 = *(v0 + 8);

  v46(v18);
}

uint64_t sub_1AEABF5D0()
{

  v1 = v0[48];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = sub_1AEA4351C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to check analysis history for outgoing call: %@", v9, 0xCu);
    sub_1AEA41FAC(v10, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v10, -1, -1);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  v14 = v0[42];
  v13 = v0[43];
  v15 = v0[41];

  (*(v14 + 8))(v13, v15);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1AEABF774()
{

  v1 = v0[52];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = sub_1AEA4351C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to check analysis history for outgoing call: %@", v9, 0xCu);
    sub_1AEA41FAC(v10, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v10, -1, -1);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  v14 = v0[42];
  v13 = v0[43];
  v15 = v0[41];

  (*(v14 + 8))(v13, v15);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1AEABF924()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {
    if (v4)
    {
      v6 = *(v3 + 48);
      v7 = sub_1AEAF8C4C();

      (v6)[2](v6, 0, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v8 = *(v3 + 48);
    type metadata accessor for SCSensitivityAnalysis(0);
    sub_1AEAC4068();
    v9 = sub_1AEAF94FC();

    (v8)[2](v8, v9, 0);
    _Block_release(v8);
  }

  else
  {
  }

  v10 = *(v5 + 8);

  return v10();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnalysisHistoryStorage.shouldDeclineIncomingCall(from:callType:)(Swift::OpaquePointer from, SensitiveContentAnalysis::CallType callType)
{
  v3 = v2;
  v30 = sub_1AEAF8FEC();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AEAF92DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysisHistoryRead()();
  if (v12)
  {

    v14 = sub_1AEA4351C();
    v15 = v30;
    (*(v5 + 16))(v7, v14, v30);
    v16 = v12;
    v17 = sub_1AEAF8FCC();
    v25 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v17, v25))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v12;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1AEA3F000, v17, v25, "Failed to check analysis history for incoming call: %@", v18, 0xCu);
      sub_1AEA41FAC(v19, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v19, -1, -1);
      MEMORY[0x1B270E620](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v15);
    swift_willThrow();
  }

  else
  {
    v26 = v9;
    v27 = v8;
    v13 = v29;

    static SensitiveContentPolicy.blockingCurrent.getter(&v33);
    v31[1] = v33;
    v32 = v34;
    v31[0] = *sub_1AEA9B428();
    Optional<A>.check(for:)(v31, &v35);
    *v11 = 2;
    v23 = v26;
    (*(v26 + 104))(v11, *MEMORY[0x1E69E7F48], v27);
    v24 = swift_allocObject();
    v24[2]._rawValue = v3;
    v24[3]._rawValue = v13;
    v24[4]._rawValue = v28;
    v24[5]._rawValue = from._rawValue;
    swift_unknownObjectRetain();

    v25 = sub_1AEAC0A7C(v11, v24);
    (*(v23 + 8))(v11, v27);
  }

  return v25 & 1;
}

SCAnalysisHistory __swiftcall SCAnalysisHistory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t CallType.hashValue.getter()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](v1);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAC005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (*(a5 + 32) + **(a5 + 32));
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1AEAC0194;

  return v11(a3, 1, a4, a5);
}

uint64_t sub_1AEAC0194(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEAC02C8, 0, 0);
  }
}

void sub_1AEAC02C8()
{
  v1 = v0[4];
  v2 = v1 + 90;
  v3 = -*(v1 + 16);
  v4 = -1;
  do
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
      break;
    }

    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v2 + 64;
    v7 = SensitivityAnalysis.shouldBlockIncomingCalls.getter();
    v2 = v6;
  }

  while (!v7);
  v8 = v0[2];

  *v8 = v5 != -1;
  v9 = v0[1];

  v9();
}

void sub_1AEAC03A4(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v3 = sub_1AEAF8FEC();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v53 - v8;
  v9 = sub_1AEAF934C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - v17;
  v19 = swift_allocObject();
  v60 = 0;
  v61 = -1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9478);
  Atomic.init(wrappedValue:)(&v60, v20, (v19 + 16));
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  v22 = sub_1AEAF982C();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = &unk_1AEB00CC0;
  v23[6] = a2;
  v23[7] = v21;

  v24 = v21;
  sub_1AEA5E2A0(0, 0, v18, &unk_1AEB00E28, v23);

  sub_1AEAF932C();
  sub_1AEAF933C();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_1AEAF9ABC();
  v25(v15, v9);
  if ((sub_1AEAF92EC() & 1) == 0)
  {
    v39 = sub_1AEA4351C();
    v40 = v58;
    v41 = v59;
    v42 = v56;
    (*(v58 + 16))(v56, v39, v59);
    v43 = sub_1AEAF8FCC();
    v44 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1AEA3F000, v43, v44, "Timed-out checking analysis history for incoming call.", v45, 2u);
      MEMORY[0x1B270E620](v45, -1, -1);
    }

    (*(v40 + 8))(v42, v41);
    goto LABEL_13;
  }

  v27 = v58;
  v26 = v59;
  v62 = *(v19 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9480);
  Atomic.wrappedValue.getter(&v60);
  v28 = v61;
  if (v61 == 255)
  {
    v46 = sub_1AEA4351C();
    v47 = v27;
    v48 = *(v27 + 16);
    v49 = v54;
    v48(v54, v46, v26);
    v50 = sub_1AEAF8FCC();
    v51 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1AEA3F000, v50, v51, "No result checking analysis history for incoming call.", v52, 2u);
      MEMORY[0x1B270E620](v52, -1, -1);
    }

    (*(v47 + 8))(v49, v26);
LABEL_13:
    sub_1AEA97768();
    swift_allocError();
    swift_willThrow();
    goto LABEL_14;
  }

  if ((v61 & 1) == 0)
  {

    return;
  }

  v29 = v60;
  sub_1AEA4C6F4(v60, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  swift_willThrowTypedImpl();
  v30 = sub_1AEA4351C();
  (*(v27 + 16))(v55, v30, v26);
  sub_1AEA4C6F4(v29, 1);
  v31 = sub_1AEAF8FCC();
  v32 = sub_1AEAF9A9C();
  sub_1AEA4E9D4(v29, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v57 = v19;
    v34 = v29;
    v35 = v33;
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    sub_1AEA4C6F4(v34, 1);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&dword_1AEA3F000, v31, v32, "Failed to check analysis history for incoming call: %@", v35, 0xCu);
    sub_1AEA41FAC(v36, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v36, -1, -1);
    v38 = v35;
    v29 = v34;
    MEMORY[0x1B270E620](v38, -1, -1);
  }

  (*(v27 + 8))(v55, v26);
  swift_willThrow();
  sub_1AEA4E9D4(v29, v28);
LABEL_14:
}

uint64_t sub_1AEAC0A7C(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = sub_1AEAF8FEC();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v50 - v8;
  v9 = sub_1AEAF934C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - v17;
  v19 = swift_allocObject();
  v57 = 0;
  v58 = -1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9468);
  Atomic.init(wrappedValue:)(&v57, v20, (v19 + 16));
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  v22 = sub_1AEAF982C();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = &unk_1AEB00CD0;
  v23[6] = a2;
  v23[7] = v21;

  v24 = v21;
  sub_1AEA5E2A0(0, 0, v18, &unk_1AEB00DF8, v23);

  sub_1AEAF932C();
  sub_1AEAF933C();
  v25 = *(v10 + 8);
  v25(v12, v9);
  sub_1AEAF9ABC();
  v25(v15, v9);
  if ((sub_1AEAF92EC() & 1) == 0)
  {
    v38 = sub_1AEA4351C();
    v39 = v55;
    v40 = v56;
    v30 = v53;
    (*(v55 + 16))(v53, v38, v56);
    v41 = sub_1AEAF8FCC();
    v42 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1AEA3F000, v41, v42, "Timed-out checking analysis history for incoming call.", v43, 2u);
      MEMORY[0x1B270E620](v43, -1, -1);
    }

    (*(v39 + 8))(v30, v40);
    sub_1AEA97768();
    swift_allocError();
    swift_willThrow();
    goto LABEL_13;
  }

  v27 = v55;
  v26 = v56;
  v59 = *(v19 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9470);
  Atomic.wrappedValue.getter(&v57);
  v28 = v58;
  v29 = v19;
  if (v58 == 255)
  {
    v44 = sub_1AEA4351C();
    v45 = v51;
    (*(v27 + 16))(v51, v44, v26);
    v46 = sub_1AEAF8FCC();
    v47 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1AEA3F000, v46, v47, "No result checking analysis history for incoming call.", v48, 2u);
      MEMORY[0x1B270E620](v48, -1, -1);
    }

    LOBYTE(v30) = v27 + 8;
    (*(v27 + 8))(v45, v26);
    sub_1AEA97768();
    swift_allocError();
    swift_willThrow();
LABEL_13:

    goto LABEL_14;
  }

  v30 = v57;
  if ((v58 & 1) == 0)
  {

    return v30 & 1;
  }

  sub_1AEA4C6F4(v57, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  swift_willThrowTypedImpl();
  v31 = sub_1AEA4351C();
  (*(v27 + 16))(v52, v31, v26);
  sub_1AEA4C6F4(v30, 1);
  v32 = sub_1AEAF8FCC();
  v33 = sub_1AEAF9A9C();
  sub_1AEA4E9D4(v30, v28);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v54 = v29;
    v35 = v34;
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    sub_1AEA4C6F4(v30, 1);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&dword_1AEA3F000, v32, v33, "Failed to check analysis history for incoming call: %@", v35, 0xCu);
    sub_1AEA41FAC(v36, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v36, -1, -1);
    MEMORY[0x1B270E620](v35, -1, -1);
  }

  (*(v27 + 8))(v52, v26);
  swift_willThrow();
  sub_1AEA4E9D4(v30, v28);

LABEL_14:

  return v30 & 1;
}

uint64_t sub_1AEAC119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AEAF8A8C();
  v5[2] = v9;
  v5[3] = *(v9 - 8);
  v5[4] = swift_task_alloc();
  v12 = (*(a5 + 32) + **(a5 + 32));
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1AEAC1328;

  return v12(a3, 1, a4, a5);
}

uint64_t sub_1AEAC1328(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEAC1478, 0, 0);
  }
}

void sub_1AEAC1478()
{
  v1 = *(v0 + 48);
  v2 = v1 + 90;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 64;
    v6 = SensitivityAnalysis.shouldInterveneWithOutgoingCalls.getter();
    v2 = v5;
    if (v6)
    {

      v7 = *(v0 + 8);
      goto LABEL_7;
    }
  }

  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 16);

  *(v0 + 56) = 2;
  sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
  sub_1AEA417A4(&qword_1EB5E9160, MEMORY[0x1E6967EB8]);
  sub_1AEAF8C3C();
  sub_1AEAF8A7C();
  (*(v9 + 8))(v8, v10);
  swift_willThrow();

  v7 = *(v0 + 8);
LABEL_7:

  v7();
}

uint64_t sub_1AEAC1604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AEAC1628, 0, 0);
}

uint64_t sub_1AEAC1628()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *(v1 + 16) = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  *v2 = v0;
  v2[1] = sub_1AEAC171C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_GxyYaq_YKXE_tYacfC(v0 + 16, &unk_1AEB00E40, v1, v4, v3);
}

uint64_t sub_1AEAC171C()
{
  v1 = *v0;

  *(v1 + 96) = *(v1 + 16);
  *(v1 + 25) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1AEAC185C, 0, 0);
}

uint64_t sub_1AEAC185C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 72);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 40) = v1;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9480);
  Atomic.wrappedValue.setter(v0 + 32, v3);

  dispatch_group_leave(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AEAC1918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AEAC193C, 0, 0);
}

uint64_t sub_1AEAC193C()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *(v1 + 16) = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  *v2 = v0;
  v2[1] = sub_1AEAC1A2C;
  v4 = MEMORY[0x1E69E6370];

  return _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_GxyYaq_YKXE_tYacfC(v0 + 16, &unk_1AEB00E10, v1, v4, v3);
}

uint64_t sub_1AEAC1A2C()
{
  v1 = *v0;

  *(v1 + 96) = *(v1 + 16);
  *(v1 + 25) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1AEAC1B6C, 0, 0);
}

uint64_t sub_1AEAC1B6C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 72);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 40) = v1;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9470);
  Atomic.wrappedValue.setter(v0 + 32, v3);

  dispatch_group_leave(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AEAC1C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00]();
  v10 = v22 - v9;
  sub_1AEA63BD4(a3, v22 - v9, &qword_1EB5E8F30);
  v11 = sub_1AEAF982C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1AEA41FAC(v10, &qword_1EB5E8F30);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1AEAF981C();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_1AEAF977C();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1AEAF95CC() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_1AEA41FAC(a3, &qword_1EB5E8F30);

    return v20;
  }

LABEL_8:
  sub_1AEA41FAC(a3, &qword_1EB5E8F30);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_1AEAC1F24(uint64_t a1)
{
  v2 = sub_1AEAF9BFC();

  return sub_1AEAC1F68(a1, v2);
}

unint64_t sub_1AEAC1F68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1AEA49EF8(0, &qword_1ED98A488);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1AEAF9C0C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_1AEAC203C(char *a1, int64_t a2, char a3)
{
  result = sub_1AEAC205C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AEAC205C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AEAC2168(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9488);
    v2 = sub_1AEAFA05C();
    v19 = v2;
    sub_1AEAF9FEC();
    v3 = sub_1AEAFA00C();
    if (v3)
    {
      v4 = v3;
      sub_1AEA49EF8(0, &qword_1ED98A488);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for SCSensitivityAnalysis(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1AEAC239C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1AEAF9BFC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1AEAFA00C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1AEAC239C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9488);
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1AEAF9BFC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_1AEAC2604()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9488);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_1AEAC2764(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1AEAC2860;

  return v8(a1);
}

uint64_t sub_1AEAC2860()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEAC2994, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AEAC29B8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1AEAC2AAC;

  return v7(v4 + 6);
}

uint64_t sub_1AEAC2AAC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AEAC2BE4;
  }

  else
  {
    v2 = sub_1AEAC2BC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEAC2C08(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1AEAF8FEC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1AEAF97FC();
  v2[13] = sub_1AEAF97EC();
  v5 = sub_1AEAF977C();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AEAC2CFC, v5, v4);
}

uint64_t sub_1AEAC2CFC()
{
  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysisHistoryRead()();
  if (v1)
  {

    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[10];
    v5 = sub_1AEA4351C();
    (*(v3 + 16))(v2, v5, v4);
    v6 = v1;
    v7 = sub_1AEAF8FCC();
    v8 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to check analysis history for incoming handles: %@", v9, 0xCu);
      sub_1AEA41FAC(v10, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v10, -1, -1);
      MEMORY[0x1B270E620](v9, -1, -1);
    }

    else
    {
    }

    (*(v0[11] + 8))(v0[12], v0[10]);

    v15 = v0[1];

    return v15(0);
  }

  else
  {

    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1AEAC2F38;

    return static SensitiveContentPolicy.prefetch()();
  }
}

uint64_t sub_1AEAC2F38()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1AEAC3468;
  }

  else
  {
    v5 = sub_1AEAC3074;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1AEAC3074()
{
  v27 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1AEA4FF44(0, v2, 0);
    v3 = v22;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AEAFC470;
      *(inited + 32) = v6;
      *(inited + 40) = v5;
      swift_bridgeObjectRetain_n();
      v8 = sub_1AEAACFD0(inited);
      swift_setDeallocating();
      sub_1AEAAD764(inited + 32);
      Participant.init(displayName:handles:)(63, 0xE100000000000000, v8, v23);

      v9 = v23[0];
      v10 = v23[1];
      v11 = v24;
      v12 = v25;
      v13 = v26;
      v15 = *(v22 + 16);
      v14 = *(v22 + 24);
      if (v15 >= v14 >> 1)
      {
        v20 = v25;
        v21 = v24;
        sub_1AEA4FF44((v14 > 1), v15 + 1, 1);
        v12 = v20;
        v11 = v21;
      }

      *(v22 + 16) = v15 + 1;
      v16 = v22 + 56 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;
      *(v16 + 48) = v11;
      *(v16 + 64) = v12;
      *(v16 + 80) = v13;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v0[18] = v3;
  v17 = sub_1AEA92F20();
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_1AEAC3268;

  return AnalysisHistoryCache.fetchAnalyses(for:checkCache:)(v3, v17 & 1);
}

uint64_t sub_1AEAC3268(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = v3[14];
    v5 = v3[15];
    v6 = sub_1AEAC3614;
  }

  else
  {

    v4 = v3[14];
    v5 = v3[15];
    v6 = sub_1AEAC3384;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1AEAC3384()
{
  v1 = *(v0 + 160);

  v3 = v1 + 90;
  v4 = -*(v1 + 16);
  v5 = -1;
  do
  {
    v6 = v4 + v5;
    if (v4 + v5 == -1)
    {
      break;
    }

    if (++v5 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v3 + 64;
    result = SensitivityAnalysis.shouldBlockIncomingCalls.getter();
    v3 = v7;
  }

  while ((result & 1) == 0);

  v8 = *(v0 + 8);

  return v8(v6 != -1);
}

uint64_t sub_1AEAC3468()
{

  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = sub_1AEA4351C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to check analysis history for incoming handles: %@", v9, 0xCu);
    sub_1AEA41FAC(v10, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v10, -1, -1);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1AEAC3614()
{

  v1 = v0[21];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = sub_1AEA4351C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to check analysis history for incoming handles: %@", v9, 0xCu);
    sub_1AEA41FAC(v10, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v10, -1, -1);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v13 = v0[1];

  return v13(0);
}

unint64_t sub_1AEAC37CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9488);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1AEAC1F24(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AEAC38C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1AEAF97FC();
  v2[4] = sub_1AEAF97EC();
  v4 = sub_1AEAF977C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1AEAC395C, v4, v3);
}

uint64_t sub_1AEAC395C()
{
  v1 = *(v0 + 24);
  type metadata accessor for AnalysisHistoryCache(0);
  *(v0 + 56) = static AnalysisHistoryCache.shared.getter();
  v2 = 0x302000101uLL >> (8 * v1);
  if (v1 >= 5)
  {
    LOBYTE(v2) = 1;
  }

  *(v0 + 88) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1AEAC3A34;
  v4 = *(v0 + 16);

  return sub_1AEABE6C8(v4, (v0 + 88));
}

uint64_t sub_1AEAC3A34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1AEAC3BE8;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1AEAC3B80;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1AEAC3B80()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1AEAC3BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAC3C4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1AEA63D38;

  return sub_1AEAC119C(v6, v5, v4, v2, v3);
}

char *sub_1AEAC3CF8(unint64_t a1)
{
  type metadata accessor for AnalysisHistory();
  static AnalysisHistory.shared.getter();
  if (a1 >> 62)
  {
    v2 = sub_1AEAF9FFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3._rawValue = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    rawValue = MEMORY[0x1E69E7CC0];
    result = sub_1AEA4FF44(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3._rawValue = rawValue;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1B270D3B0](v5, a1);
        sub_1AEA50004(&v32);
        swift_unknownObjectRelease();
        v7 = v32;
        v6 = v33;
        v8 = v34;
        v9 = v35;
        v10 = v36;
        rawValue = v3._rawValue;
        v12 = *(v3._rawValue + 2);
        v11 = *(v3._rawValue + 3);
        if (v12 >= v11 >> 1)
        {
          v28 = v35;
          v30 = v34;
          sub_1AEA4FF44((v11 > 1), v12 + 1, 1);
          v9 = v28;
          v8 = v30;
          v3._rawValue = rawValue;
        }

        ++v5;
        *(v3._rawValue + 2) = v12 + 1;
        v13 = v3._rawValue + 56 * v12;
        *(v13 + 4) = v7;
        *(v13 + 5) = v6;
        *(v13 + 3) = v8;
        *(v13 + 4) = v9;
        *(v13 + 10) = v10;
      }

      while (v2 != v5);
    }

    else
    {
      v14 = (a1 + 32);
      do
      {
        v15 = *v14;
        sub_1AEA50004(&v32);

        v16 = v32;
        v17 = v33;
        v18 = v34;
        v19 = v35;
        v20 = v36;
        rawValue = v3._rawValue;
        v22 = *(v3._rawValue + 2);
        v21 = *(v3._rawValue + 3);
        if (v22 >= v21 >> 1)
        {
          v29 = v35;
          v31 = v34;
          sub_1AEA4FF44((v21 > 1), v22 + 1, 1);
          v19 = v29;
          v18 = v31;
          v3._rawValue = rawValue;
        }

        *(v3._rawValue + 2) = v22 + 1;
        v23 = v3._rawValue + 56 * v22;
        *(v23 + 4) = v16;
        *(v23 + 5) = v17;
        *(v23 + 3) = v18;
        *(v23 + 4) = v19;
        *(v23 + 10) = v20;
        ++v14;
        --v2;
      }

      while (v2);
    }
  }

  swift_getObjectType();
  v25 = AnalysisHistoryStorage.shouldDeclineIncomingCall(from:callType:)(v3, v24);
  if (v26)
  {

    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_1AEAC3F2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AEA5E1AC;

  return sub_1AEAC005C(a1, v7, v6, v4, v5);
}

unint64_t sub_1AEAC3FF0()
{
  result = qword_1EB5E9458;
  if (!qword_1EB5E9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9458);
  }

  return result;
}

unint64_t sub_1AEAC4068()
{
  result = qword_1EB5E9460;
  if (!qword_1EB5E9460)
  {
    sub_1AEA49EF8(255, &qword_1ED98A488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9460);
  }

  return result;
}

uint64_t sub_1AEAC40D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA63D38;

  return sub_1AEABE20C(v2, v3, v4);
}

uint64_t sub_1AEAC4190()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1AEA5E1AC;

  return sub_1AEAC1918(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1AEAC423C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AEA63D38;

  return sub_1AEAC29B8(a1, v7, v6, a2);
}

uint64_t objectdestroy_64Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEAC4354()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1AEA63D38;

  return sub_1AEAC1604(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1AEAC4400(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AEA63D38;

  return sub_1AEAC2764(a1, v7, v6, a2);
}

uint64_t Frequency.init(first:last:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness();
  v43 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v41 - v17;
  v18 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v24 = v23;
  type metadata accessor for Frequency();
  v45 = a1;
  sub_1AEAF965C();
  v25 = a2;
  sub_1AEAF965C();
  sub_1AEAF965C();
  if ((sub_1AEAF9C9C() & 1) == 0 || sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_14;
  }

  v46 = 0x8000000000000000;
  if (sub_1AEAF9C9C())
  {
    if (sub_1AEAF9C8C() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v26 = sub_1AEAF9C9C();
  v27 = sub_1AEAF9C8C();
  if (v26)
  {
    if (v27 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1AEAFA2EC();
      v31 = v44;
      sub_1AEAFA29C();
      v32 = sub_1AEAF956C();
      result = (*(v24 + 8))(v31, v18);
      if (v32)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_1AEAC4A60();
    v28 = v44;
    sub_1AEAF9C6C();
    v29 = sub_1AEAF956C();
    result = (*(v24 + 8))(v28, v18);
    if (v29)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  if (v27 < 64)
  {
LABEL_13:
    sub_1AEAF9C7C();
  }

LABEL_14:
  if (sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = sub_1AEAF9C9C();
    v34 = sub_1AEAF9C8C();
    if ((v33 & 1) == 0)
    {
      break;
    }

    if (v34 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1AEAC4A60();
    v35 = v44;
    sub_1AEAF9C6C();
    v36 = sub_1AEAF956C();
    (*(v24 + 8))(v35, v18);
    if (v36)
    {
      __break(1u);
LABEL_19:
      if (sub_1AEAF9C8C() == 64 && (sub_1AEAF9C9C() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v34 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1AEAF9C7C();
LABEL_24:
  v37 = sub_1AEAF9C7C();
  result = (*(v24 + 8))(v22, v18);
  v38 = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v38 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v37 == -1)
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = sub_1AEAF972C();
    *(v39 + 16) = v38;
    bzero((v39 + 32), 8 * v37 + 8);
  }

  v40 = *(*(a3 - 8) + 8);
  v40(v25, a3);
  result = (v40)(v45, a3);
  *a8 = v39;
  return result;
}

unint64_t sub_1AEAC4A60()
{
  result = qword_1EB5E9498;
  if (!qword_1EB5E9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9498);
  }

  return result;
}

uint64_t Frequency.mostFrequent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v26 - v11;
  v13 = sub_1AEAF9C3C();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v29 = a1;
  (*(v10 + 16))(v12, v3 + *(a1 + 60), AssociatedTypeWitness, v14);
  sub_1AEAF966C();
  result = (*(v7 + 48))(v16, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = *(v7 + 32);
    v27 = a2;
    result = v26(a2, v16, v6);
    v18 = *(*v3 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = *v3 + 32;
      v22 = (v7 + 8);
      do
      {
        v23 = *(v21 + 8 * v20);
        if (v19 < v23)
        {
          v24 = v28;
          sub_1AEAC4D64(v20, v29, v28);
          v25 = v27;
          (*v22)(v27, v6);
          result = v26(v25, v24, v6);
          v19 = v23;
        }

        ++v20;
      }

      while (v18 != v20);
    }
  }

  return result;
}

uint64_t sub_1AEAC4D64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v38 = a3;
  v39 = a1;
  v5 = a2[4];
  v6 = *(*(v5 + 3) + 16);
  v7 = a2[2];
  v37 = a2[3];
  swift_getAssociatedTypeWitness();
  v35 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v33 - v9;
  v11 = sub_1AEAF9C3C();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v33 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  (*(v14 + 16))(&v33 - v19, v3 + *(v4 + 60), v13, v18);
  if ((sub_1AEAF9C9C() & 1) == 0 || sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_14;
  }

  v41 = 0x8000000000000000;
  if (sub_1AEAF9C9C())
  {
    if (sub_1AEAF9C8C() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v4 = sub_1AEAF9C9C();
  v21 = sub_1AEAF9C8C();
  if (v4)
  {
    if (v21 <= 64)
    {
      v4 = v35;
      swift_getAssociatedConformanceWitness();
      sub_1AEAFA2EC();
      sub_1AEAFA29C();
      v23 = sub_1AEAF956C();
      (*(v14 + 8))(v16, v13);
      if (v23)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_1AEAC4A60();
    sub_1AEAF9C6C();
    v22 = sub_1AEAF956C();
    (*(v14 + 8))(v16, v13);
    if (v22)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (v21 < 64)
  {
LABEL_13:
    sub_1AEAF9C7C();
  }

LABEL_14:
  if (sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = sub_1AEAF9C9C();
    v25 = sub_1AEAF9C8C();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1AEAC4A60();
    sub_1AEAF9C6C();
    v26 = sub_1AEAF956C();
    (*(v14 + 8))(v16, v13);
    if (v26)
    {
      __break(1u);
LABEL_19:
      if (sub_1AEAF9C8C() == 64 && (sub_1AEAF9C9C() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v25 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1AEAF9C7C();
LABEL_24:
  v27 = sub_1AEAF9C7C();
  (*(v14 + 8))(v20, v13);
  v4 = v39;
  v10 = (v39 + v27);
  if (__OFADD__(v39, v27))
  {
    __break(1u);
    goto LABEL_28;
  }

  v41 = v39 + v27;
  sub_1AEAC4A60();
  sub_1AEAF9CBC();
  v5 = v36;
  sub_1AEAF966C();
  v28 = *(v7 - 8);
  if ((*(v28 + 48))(v5, 1, v7) != 1)
  {
    return (*(v28 + 32))(v38, v5, v7);
  }

LABEL_29:
  (*(v33 + 8))(v5, v34);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1AEAF9E1C();

  v41 = 0xD000000000000013;
  v42 = 0x80000001AEB08550;
  v30 = sub_1AEAFA4AC();
  MEMORY[0x1B270CB50](v30);

  MEMORY[0x1B270CB50](0x6E69206D6F726620, 0xEC00000020786564);
  v40 = v4;
  v31 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v31);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v40 = v10;
  v32 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v32);

  result = sub_1AEAFA01C();
  __break(1u);
  return result;
}

uint64_t sub_1AEAC5454(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 32) + 24) + 16);
  swift_getAssociatedTypeWitness();
  v34 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v32 - v4;
  v5 = swift_checkMetadataState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  sub_1AEAF965C();
  if ((sub_1AEAF9C9C() & 1) == 0 || sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_14;
  }

  v37 = 0x8000000000000000;
  if (sub_1AEAF9C9C())
  {
    if (sub_1AEAF9C8C() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v15 = sub_1AEAF9C9C();
  v16 = sub_1AEAF9C8C();
  if (v15)
  {
    if (v16 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1AEAFA2EC();
      sub_1AEAFA29C();
      v19 = sub_1AEAF956C();
      result = (*(v6 + 8))(v8, v5);
      if (v19)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_1AEAC4A60();
    sub_1AEAF9C6C();
    v17 = sub_1AEAF956C();
    result = (*(v6 + 8))(v8, v5);
    if (v17)
    {
      goto LABEL_50;
    }

    goto LABEL_14;
  }

  if (v16 < 64)
  {
LABEL_13:
    sub_1AEAF9C7C();
  }

LABEL_14:
  if (sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = sub_1AEAF9C9C();
    v21 = sub_1AEAF9C8C();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1AEAC4A60();
    sub_1AEAF9C6C();
    v22 = sub_1AEAF956C();
    (*(v6 + 8))(v8, v5);
    if (v22)
    {
      __break(1u);
LABEL_19:
      if (sub_1AEAF9C8C() == 64 && (sub_1AEAF9C9C() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1AEAF9C7C();
LABEL_24:
  v35 = sub_1AEAF9C7C();
  v23 = *(v6 + 8);
  v23(v14, v5);
  (*(v6 + 16))(v11, v36 + *(a2 + 60), v5);
  if ((sub_1AEAF9C9C() & 1) != 0 && sub_1AEAF9C8C() > 64)
  {
    v37 = 0x8000000000000000;
    if (sub_1AEAF9C9C())
    {
      if (sub_1AEAF9C8C() < 64)
      {
LABEL_36:
        sub_1AEAF9C7C();
        goto LABEL_37;
      }

LABEL_31:
      sub_1AEAC4A60();
      sub_1AEAF9C6C();
      v26 = sub_1AEAF956C();
      result = (v23)(v8, v5);
      if (v26)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v24 = sub_1AEAF9C9C();
      v25 = sub_1AEAF9C8C();
      if (v24)
      {
        if (v25 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        sub_1AEAFA2EC();
        sub_1AEAFA29C();
        v27 = sub_1AEAF956C();
        result = (v23)(v8, v5);
        if ((v27 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_51:
        __break(1u);
        return result;
      }

      if (v25 < 64)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  if (sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = sub_1AEAF9C9C();
    v29 = sub_1AEAF9C8C();
    if (v28)
    {
      if (v29 < 65)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v29 >= 64)
    {
LABEL_40:
      sub_1AEAC4A60();
      sub_1AEAF9C6C();
      v30 = sub_1AEAF956C();
      v23(v8, v5);
      if ((v30 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (sub_1AEAF9C8C() != 64 || (sub_1AEAF9C9C() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  sub_1AEAF9C7C();
LABEL_47:
  v31 = sub_1AEAF9C7C();
  v23(v11, v5);
  result = v35 - v31;
  if (__OFSUB__(v35, v31))
  {
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

unint64_t Frequency.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  result = sub_1AEAC5454(a1, a2);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v3 + 16))
  {
    return *(v3 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AEAC5C24@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Frequency();
  result = Frequency.subscript.getter(a1, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1AEAC5C90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = type metadata accessor for Frequency();
  return sub_1AEAC7D80(v4, a3, v5);
}

uint64_t Frequency.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AEAC7D80(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a2);
}

void (*Frequency.subscript.modify(unint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v8[4] = v11;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v9[5] = v13;
  (*(v12 + 16))();
  *v9 = Frequency.subscript.getter(a2, a3);
  return sub_1AEAC5E80;
}

void sub_1AEAC5E80(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[4];
  v2 = (*a1)[5];
  v4 = (*a1)[3];
  sub_1AEAC7D80(**a1, v2, (*a1)[1]);
  (*(v3 + 8))(v2, v4);
  free(v2);

  free(v1);
}

uint64_t static Frequency.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Frequency();
  result = (*(*(v6 - 8) + 16))(a3, a1, v6);
  v8 = *a3;
  v9 = *(*a3 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = *a2;
  if (v9 > *(v10 + 16))
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_4;
    }
  }

  result = sub_1AEAC7C68(v8);
  v8 = result;
LABEL_4:
  v11 = 32;
  do
  {
    v12 = *(v10 + v11);
    v13 = *(v8 + v11);
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (v14)
    {
      __break(1u);
      goto LABEL_10;
    }

    *(v8 + v11) = v15;
    v11 += 8;
    --v9;
  }

  while (v9);
  *a3 = v8;
  return result;
}

uint64_t static Frequency.+= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v9 = type metadata accessor for Frequency();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(v10 + 32))(v15 - v12, a1, v9, v11);
  static Frequency.+ infix(_:_:)(v13, a2, a1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1AEAC6124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473726966 && a2 == 0xE500000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953718636 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AEAC626C(unsigned __int8 a1)
{
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](a1);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAC62B4(char a1)
{
  if (!a1)
  {
    return 0x65726F7473;
  }

  if (a1 == 1)
  {
    return 0x7473726966;
  }

  return 1953718636;
}

uint64_t sub_1AEAC6318()
{
  sub_1AEAFA3BC();
  sub_1AEAC6244(v2, *v0);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAC6360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAC6124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAC6388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AEAC63DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Frequency.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  v13 = *(a2 + 16);
  v14 = v4;
  v17 = v13;
  v12 = *(a2 + 24);
  v18 = v12;
  v19 = v3;
  v20 = v4;
  type metadata accessor for Frequency.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1AEAFA25C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v15;
  sub_1AEAFA42C();
  v17 = *v9;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94A0);
  sub_1AEAC7E14(&qword_1EB5E94A8);
  v10 = v16;
  sub_1AEAFA22C();
  if (!v10)
  {
    LOBYTE(v17) = 1;
    swift_getAssociatedTypeWitness();
    sub_1AEAFA22C();
    LOBYTE(v17) = 2;
    sub_1AEAFA22C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Frequency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = v32 - v15;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  type metadata accessor for Frequency.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_1AEAFA18C();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v17 = v32 - v16;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v42 = a5;
  v50 = a6;
  v18 = type metadata accessor for Frequency();
  v35 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v17;
  v21 = v45;
  sub_1AEAFA41C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v39;
  v23 = v40;
  v33 = v18;
  v34 = v20;
  v45 = a1;
  v24 = AssociatedTypeWitness;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94A0);
  v51 = 0;
  sub_1AEAC7E14(&qword_1EB5E94B0);
  sub_1AEAFA14C();
  v25 = v34;
  v32[1] = v46;
  *v34 = v46;
  LOBYTE(v46) = 1;
  v26 = v23;
  sub_1AEAFA14C();
  v27 = v33;
  v28 = v25 + *(v33 + 60);
  v40 = *(v38 + 32);
  (v40)(v28, v26, v24);
  LOBYTE(v46) = 2;
  v29 = v43;
  sub_1AEAFA14C();
  (*(v22 + 8))(v29, v44);
  (v40)(v25 + *(v27 + 64), v37, v24);
  v30 = v35;
  (*(v35 + 16))(v36, v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return (*(v30 + 8))(v25, v27);
}

uint64_t sub_1AEAC6BC8(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v24 = *a1;
  v25 = a1;
  v9 = v8;
  sub_1AEAF965C();
  if ((sub_1AEAF9C9C() & 1) != 0 && sub_1AEAF9C8C() > 64)
  {
    v26 = 0x8000000000000000;
    if (sub_1AEAF9C9C())
    {
      if (sub_1AEAF9C8C() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v10 = sub_1AEAF9C9C();
    v11 = sub_1AEAF9C8C();
    if (v10)
    {
      if (v11 > 64)
      {
LABEL_8:
        sub_1AEAC4A60();
        v12 = v23;
        sub_1AEAF9C6C();
        v13 = sub_1AEAF956C();
        result = (*(v9 + 8))(v12, v3);
        if ((v13 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_1AEAFA2EC();
      v15 = v23;
      sub_1AEAFA29C();
      v16 = sub_1AEAF956C();
      result = (*(v9 + 8))(v15, v3);
      if (v16)
      {
        goto LABEL_27;
      }

LABEL_13:
      sub_1AEAF9C7C();
      goto LABEL_14;
    }

    if (v11 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = sub_1AEAF9C9C();
    v18 = sub_1AEAF9C8C();
    if ((v17 & 1) == 0)
    {
      break;
    }

    if (v18 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1AEAC4A60();
    v19 = v23;
    sub_1AEAF9C6C();
    v20 = sub_1AEAF956C();
    (*(v9 + 8))(v19, v3);
    if (v20)
    {
      __break(1u);
LABEL_19:
      if (sub_1AEAF9C8C() == 64 && (sub_1AEAF9C9C() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v18 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1AEAF9C7C();
LABEL_24:
  v21 = sub_1AEAF9C7C();
  result = (*(v9 + 8))(v7, v3);
  v22 = v24;
  if (v21 < v24)
  {
    v22 = v21;
  }

  *v25 = v22;
  return result;
}

uint64_t sub_1AEAC7058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = v20 - v17;
  sub_1AEAF9E2C();
  v20[12] = a7;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = a6;
  swift_getAssociatedConformanceWitness();
  sub_1AEAF963C();
  (*(v16 + 8))(v18, AssociatedTypeWitness);
  return v20[13];
}

uint64_t sub_1AEAC71CC(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v24 = *a1;
  v25 = a1;
  v9 = v8;
  sub_1AEAF965C();
  if ((sub_1AEAF9C9C() & 1) != 0 && sub_1AEAF9C8C() > 64)
  {
    v26 = 0x8000000000000000;
    if (sub_1AEAF9C9C())
    {
      if (sub_1AEAF9C8C() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v10 = sub_1AEAF9C9C();
    v11 = sub_1AEAF9C8C();
    if (v10)
    {
      if (v11 > 64)
      {
LABEL_8:
        sub_1AEAC4A60();
        v12 = v23;
        sub_1AEAF9C6C();
        v13 = sub_1AEAF956C();
        result = (*(v9 + 8))(v12, v3);
        if ((v13 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_1AEAFA2EC();
      v15 = v23;
      sub_1AEAFA29C();
      v16 = sub_1AEAF956C();
      result = (*(v9 + 8))(v15, v3);
      if (v16)
      {
        goto LABEL_27;
      }

LABEL_13:
      sub_1AEAF9C7C();
      goto LABEL_14;
    }

    if (v11 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_1AEAF9C8C() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = sub_1AEAF9C9C();
    v18 = sub_1AEAF9C8C();
    if ((v17 & 1) == 0)
    {
      break;
    }

    if (v18 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1AEAC4A60();
    v19 = v23;
    sub_1AEAF9C6C();
    v20 = sub_1AEAF956C();
    (*(v9 + 8))(v19, v3);
    if (v20)
    {
      __break(1u);
LABEL_19:
      if (sub_1AEAF9C8C() == 64 && (sub_1AEAF9C9C() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v18 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1AEAF9C7C();
LABEL_24:
  v21 = sub_1AEAF9C7C();
  result = (*(v9 + 8))(v7, v3);
  v22 = v24;
  if (v21 > v24)
  {
    v22 = v21;
  }

  *v25 = v22;
  return result;
}

uint64_t Frequency<>.init()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v52 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = sub_1AEAF9C3C();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v47 = &v42 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v53 = &v42 - v27;
  v49 = a2;
  v56 = a5;
  v57 = a6;
  v42 = sub_1AEAC7058(a1, a2, a3, a4, a5, a6, 0x8000000000000000, sub_1AEAC845C);
  v59 = v42;
  v45 = sub_1AEAC4A60();
  v51 = AssociatedTypeWitness;
  v55 = a4;
  sub_1AEAF9CBC();
  v54 = a3;
  sub_1AEAF966C();
  v28 = v19[6];
  if (v28(v18, 1, a1) == 1)
  {
    (*(v43 + 8))(v18, v44);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1AEAF9E1C();

    v59 = 0xD000000000000027;
    v60 = 0x80000001AEB084F0;
    v38 = sub_1AEAFA4AC();
    MEMORY[0x1B270CB50](v38);

    MEMORY[0x1B270CB50](32, 0xE100000000000000);
    v58 = v42;
    v39 = sub_1AEAFA27C();
    MEMORY[0x1B270CB50](v39);
  }

  else
  {
    v29 = v19[4];
    v29(v53, v18, a1);
    v49 = sub_1AEAC7058(a1, v49, v54, v55, v56, v57, 0x7FFFFFFFFFFFFFFFLL, sub_1AEAC842C);
    v59 = v49;
    sub_1AEAF9CBC();
    v30 = v50;
    sub_1AEAF966C();
    if (v28(v30, 1, a1) != 1)
    {
      v31 = v47;
      v29(v47, v30, a1);
      v32 = v19[2];
      v33 = v46;
      v32(v46, v31, a1);
      v34 = v48;
      v35 = v53;
      v32(v48, v53, a1);
      Frequency.init(first:last:)(v33, v34, a1, v54, v55, v56, v57, v52);
      v36 = v19[1];
      v36(v31, a1);
      return (v36)(v35, a1);
    }

    (*(v43 + 8))(v30, v44);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1AEAF9E1C();

    v59 = 0xD000000000000025;
    v60 = 0x80000001AEB08520;
    v40 = sub_1AEAFA4AC();
    MEMORY[0x1B270CB50](v40);

    MEMORY[0x1B270CB50](32, 0xE100000000000000);
    v58 = v49;
    v41 = sub_1AEAFA27C();
    MEMORY[0x1B270CB50](v41);
  }

  result = sub_1AEAFA01C();
  __break(1u);
  return result;
}

char *sub_1AEAC7C7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AEAC7D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AEAC5454(a2, a3);
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1AEAC7C68(v6);
  v6 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 < *(v6 + 16))
  {
    *(v6 + 8 * v5 + 32) = a1;
    *v3 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AEAC7E14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E94A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AEAC7E88()
{
  sub_1AEAC8380();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AEAC7F20(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v9 + v8 + ((v8 + 8) & ~v8)) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v6 & 0x80000000) != 0)
      {
        v17 = *(v5 + 48);

        return v17((a1 + v8 + 8) & ~v8);
      }

      else
      {
        v16 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v16) = -1;
        }

        return (v16 + 1);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1AEAC8100(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((*(v6 + 64) + v8 + ((v8 + 8) & ~v8)) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_47:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v18 = *(v6 + 56);

    v18(&a1[v8 + 8] & ~v8, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v17 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v17 = (a2 - 1);
    }

    *a1 = v17;
  }
}

void sub_1AEAC8380()
{
  if (!qword_1EB5E94B8)
  {
    v0 = sub_1AEAF975C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5E94B8);
    }
  }
}

uint64_t CoreAnalyticsManager.streamStatsByUUID.getter()
{
  v2[1] = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D0);
  Atomic.wrappedValue.getter(v2);
  return v2[0];
}

void sub_1AEAC84DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3[1] = *(*a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D0);
  Atomic.wrappedValue.getter(v3);
  *a2 = v3[0];
}

uint64_t sub_1AEAC8538(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v5[0] = *a1;
  v5[1] = v2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D0);
  Atomic.wrappedValue.setter(v5, v3);
}

uint64_t CoreAnalyticsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94C8);
  Atomic.init(wrappedValue:)(&v3, v1, &v4);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t CoreAnalyticsManager.init()()
{
  v3 = MEMORY[0x1E69E7CC8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94C8);
  Atomic.init(wrappedValue:)(&v3, v1, &v4);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t CoreAnalyticsManager.aggregateWithStreamStats(_:_:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D0);
  Atomic.withLock<A>(_:)();
}

uint64_t sub_1AEAC8704(uint64_t *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1AEA8EECC(v4, v3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = (*(*v5 + 144))();
    type metadata accessor for CoreAnalyticsManager.StreamStats();
    v9 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v9 + 16) = v11;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 1;
    *(v9 + 88) = MEMORY[0x1E69E7CC0];
    type metadata accessor for CoreAnalyticsManager.StreamStats.Aggregate();
    *(v9 + 96) = CoreAnalyticsManager.StreamStats.Aggregate.__allocating_init()();
    *(v9 + 80) = v10;
  }

  (*(*v9 + 256))(v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a1;
  sub_1AEACB1E0(v9, v4, v3, isUniquelyReferenced_nonNull_native);

  *a1 = v14;
  return result;
}

uint64_t CoreAnalyticsManager.StreamStats.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 1;
  *(v2 + 88) = MEMORY[0x1E69E7CC0];
  type metadata accessor for CoreAnalyticsManager.StreamStats.Aggregate();
  *(v2 + 96) = CoreAnalyticsManager.StreamStats.Aggregate.__allocating_init()();
  *(v2 + 80) = a1;
  return v2;
}

void sub_1AEAC8940()
{
  v1 = sub_1AEAF8FEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  v58 = *(v0 + 16);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D0);
  Atomic.wrappedValue.getter(&v57);
  v6 = 0;
  v7 = 0;
  v9 = v57 + 64;
  v8 = *(v57 + 64);
  v54 = v57;
  v10 = 1 << *(v57 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v51 = (v2 + 8);
  v52 = (v2 + 16);
  *&v5 = 136315138;
  v49 = v5;
  v55 = v4;
  v53 = v57 + 64;
  while (v12)
  {
LABEL_11:
    v18 = __clz(__rbit64(v12)) | (v6 << 6);
    v19 = (*(v54 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = *(*(v54 + 56) + 8 * v18);

    v56 = v22;

    v23 = sub_1AEAD583C();
    (*v52)(v4, v23, v1);

    v24 = sub_1AEAF8FCC();
    v25 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v50 = v7;
      v27 = v1;
      v28 = v26;
      v29 = swift_slowAlloc();
      v58 = v29;
      *v28 = v49;
      v30 = sub_1AEA45C14(v21, v20, &v58);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_1AEA3F000, v24, v25, "Sending analytics for stream %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B270E620](v29, -1, -1);
      v31 = v28;
      v1 = v27;
      v7 = v50;
      MEMORY[0x1B270E620](v31, -1, -1);

      v14 = (*v51)(v55, v1);
    }

    else
    {

      v14 = (*v51)(v4, v1);
    }

    v9 = v53;
    v12 &= v12 - 1;
    v15 = v56;
    v16 = *(v56 + 16);
    MEMORY[0x1EEE9AC00](v14);
    *(&v47 - 2) = sub_1AEACA13C;
    *(&v47 - 1) = v15;
    os_unfair_lock_lock(v16 + 4);
    sub_1AEA6E584();
    os_unfair_lock_unlock(v16 + 4);

    v4 = v55;
  }

  while (1)
  {
    v17 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v6;
    if (v12)
    {
      v6 = v17;
      goto LABEL_11;
    }
  }

  v58 = *(v48 + 16);
  Atomic.wrappedValue.getter(&v57);
  v32 = v57;
  v33 = v57 + 64;
  v34 = 1 << *(v57 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v57 + 64);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  while (v36)
  {
    v39 = v38;
LABEL_22:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = *(**(*(v32 + 56) + ((v39 << 9) | (8 * v40))) + 168);

    v43 = v41(v42);

    v44 = *(v43 + 16);

    if (v44)
    {
      v45 = 1;
LABEL_25:

      type metadata accessor for Analytics();
      v46 = Analytics.__allocating_init()();
      sub_1AEABBCCC(v45);

      return;
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v37)
    {
      v45 = 0;
      goto LABEL_25;
    }

    v36 = *(v33 + 8 * v39);
    ++v38;
    if (v36)
    {
      v38 = v39;
      goto LABEL_22;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1AEAC8DCC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94C8);
  Atomic.withLock<A>(_:)();

  return v1;
}

unint64_t sub_1AEAC8E6C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_1AEACB7B0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  *a2 = v4;
  return result;
}

uint64_t CoreAnalyticsManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AEAC8F44(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_1AEAC900C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1AEAC90A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEAC90F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

uint64_t sub_1AEAC9188(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t CoreAnalyticsManager.StreamStats.init(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 1;
  *(v1 + 88) = MEMORY[0x1E69E7CC0];
  type metadata accessor for CoreAnalyticsManager.StreamStats.Aggregate();
  *(v1 + 96) = CoreAnalyticsManager.StreamStats.Aggregate.__allocating_init()();
  *(v1 + 80) = a1;
  return v1;
}

unint64_t sub_1AEAC9264()
{
  v1 = 0x7461676572676761;
  if (*v0 != 1)
  {
    v1 = 0x69446D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1AEAC92D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEACB8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAC92FC(uint64_t a1)
{
  v2 = sub_1AEACB9E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAC9338(uint64_t a1)
{
  v2 = sub_1AEACB9E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsManager.StreamStats.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CoreAnalyticsManager.StreamStats.init(from:)(a1);
  return v2;
}

uint64_t CoreAnalyticsManager.StreamStats.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D8);
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v1 + 16) = v7;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 1;
  *(v1 + 88) = MEMORY[0x1E69E7CC0];
  v8 = (v1 + 88);
  type metadata accessor for CoreAnalyticsManager.StreamStats.Aggregate();
  *(v1 + 96) = CoreAnalyticsManager.StreamStats.Aggregate.__allocating_init()();
  v9 = (v1 + 96);
  v10 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1AEACB9E8();
  v11 = v19;
  sub_1AEAFA41C();
  if (v11)
  {

    type metadata accessor for CoreAnalyticsManager.StreamStats();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94E8);
    v22 = 0;
    sub_1AEACC5CC(&qword_1EB5E94F0, sub_1AEACBA60);
    v13 = v18;
    sub_1AEAFA14C();
    v14 = v21;
    swift_beginAccess();
    *v8 = v14;

    LOBYTE(v21) = 2;
    *(v2 + 80) = sub_1AEAFA12C();
    LOBYTE(v21) = 1;
    sub_1AEACC698(&qword_1EB5E9500);
    sub_1AEAFA14C();
    (*(v12 + 8))(v6, v13);
    v16 = v23;
    swift_beginAccess();
    *v9 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v2;
}

void sub_1AEAC9710()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1AEAC9784(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9528);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEACB9E8();
  v9 = sub_1AEAFA42C();
  v14 = (*(*a2 + 168))(v9);
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94E8);
  sub_1AEACC5CC(&qword_1EB5E9530, sub_1AEACC644);
  sub_1AEAFA22C();

  if (!v2)
  {
    v14 = (*(*a2 + 192))(v10);
    HIBYTE(v13) = 1;
    type metadata accessor for CoreAnalyticsManager.StreamStats.Aggregate();
    sub_1AEACC698(&qword_1EB5E9540);
    sub_1AEAFA22C();

    (*(*a2 + 144))(v11);
    LOBYTE(v14) = 2;
    sub_1AEAFA20C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AEAC9A2C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  v14 = a4[1];
  v17[0] = *a4;
  v17[1] = v14;
  v18[0] = a4[2];
  *(v18 + 9) = *(a4 + 41);
  v15 = (*(*v8 + 192))(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*v15 + 176))(a1, a2, a3, v17, a5, v9 & 1);
}

void sub_1AEAC9B04()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1AEAC9BB0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1AEAC9C18(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1AEACAB78(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 96 * v7 + 32), (v6 + 32), 96 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AEAC9D0C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AEA61C58(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1AEAC9E00(uint64_t a1)
{
  v2 = sub_1AEAF8FEC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*a1 + 192))(v4);
  v8 = (*(*v7 + 200))(v7);

  v9 = sub_1AEACC6DC();
  v10 = *v9;
  v11 = v9[1];
  v12 = *(*a1 + 144);

  v12(v13);
  v14 = sub_1AEAF99EC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v8;
  sub_1AEACB35C(v14, v10, v11, isUniquelyReferenced_nonNull_native);

  v16 = sub_1AEAD1AB4();
  (*(v3 + 16))(v6, v16, v2);
  v17 = sub_1AEAF8FCC();
  v18 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_1AEA4668C();

    v21 = sub_1AEAF952C();
    v23 = v22;

    v24 = sub_1AEA45C14(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1AEA3F000, v17, v18, "Sending analytics: %s ", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1B270E620](v20, -1, -1);
    MEMORY[0x1B270E620](v19, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v25 = sub_1AEAF958C();
  sub_1AEA4668C();

  v26 = sub_1AEAF94FC();

  AnalyticsSendEvent();
}

uint64_t CoreAnalyticsManager.StreamStats.deinit()
{

  return v0;
}

uint64_t CoreAnalyticsManager.StreamStats.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1AEACA1E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 224))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CoreAnalyticsManager.description.getter()
{
  v1 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v3 + 1;
  if (v3 < v2 >> 1)
  {
    goto LABEL_2;
  }

LABEL_15:
  v1 = sub_1AEA61C58((v2 > 1), v4, 1, v1);
LABEL_2:
  *(v1 + 2) = v4;
  v5 = &v1[16 * v3];
  *(v5 + 4) = 0xD000000000000012;
  *(v5 + 5) = 0x80000001AEB085C0;
  v25 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94D0);
  v0 = &v25;
  Atomic.wrappedValue.getter(&v27);
  v6 = 0;
  v8 = v27 + 64;
  v7 = *(v27 + 64);
  v24 = v27;
  v9 = 1 << *(v27 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v7) != 0)
  {
    do
    {
LABEL_9:
      v13 = __clz(__rbit64(v11)) | (v6 << 6);
      v14 = (*(v24 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v3 = *(*(v24 + 56) + 8 * v13);
      v25 = 0x2044495555;
      v26 = 0xE500000000000000;

      MEMORY[0x1B270CB50](v15, v16);

      MEMORY[0x1B270CB50](540945696, 0xE400000000000000);
      v17 = CoreAnalyticsManager.StreamStats.description.getter();
      MEMORY[0x1B270CB50](v17);

      v18 = v25;
      v19 = v26;
      v4 = *(v1 + 2);
      v20 = *(v1 + 3);
      v0 = (v4 + 1);
      if (v4 >= v20 >> 1)
      {
        v1 = sub_1AEA61C58((v20 > 1), v4 + 1, 1, v1);
      }

      v11 &= v11 - 1;

      *(v1 + 2) = v0;
      v21 = &v1[16 * v4];
      *(v21 + 4) = v18;
      *(v21 + 5) = v19;
    }

    while (v11);
  }

  while (1)
  {
    v2 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v2 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v2);
    ++v6;
    if (v11)
    {
      v6 = v2;
      goto LABEL_9;
    }
  }

  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v22 = sub_1AEAF955C();

  return v22;
}

uint64_t CoreAnalyticsManager.StreamStats.description.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1AEA61C58((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 0xD000000000000014;
  *(v6 + 5) = 0x80000001AEB085E0;
  v51 = v3;
  v7 = (*(*v0 + 168))();
  v8 = *(v7 + 16);
  if (v8)
  {
    sub_1AEA61E58(0, v8, 0);
    v9 = 32;
    do
    {
      v48 = *(v7 + v9);
      v49 = *(v7 + v9 + 16);
      v10 = CoreAnalyticsManager.StreamStats.PositiveDetection.description.getter();
      v50 = v2;
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_1AEA61E58((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v2 = v50;
      }

      *(v2 + 16) = v13 + 1;
      v14 = v2 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 96;
      --v8;
    }

    while (v8);
  }

  sub_1AEAC9D0C(v2);
  v17 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AEA61C58(0, *(v51 + 2) + 1, 1, v51);
  }

  v26 = *(v17 + 2);
  v25 = *(v17 + 3);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    v17 = sub_1AEA61C58((v25 > 1), v26 + 1, 1, v17);
  }

  *(v17 + 2) = v27;
  v28 = &v17[16 * v26];
  *(v28 + 4) = 0xD000000000000015;
  *(v28 + 5) = 0x80000001AEB08600;
  if (*(v1 + 72))
  {
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    v24.n128_u64[0] = *(v1 + 56);
    *&v48 = *(v1 + 24);
    BYTE8(v48) = *(v1 + 32) & 1;
    HIDWORD(v48) = HIDWORD(*(v1 + 32));
    *&v49 = *(v1 + 40);
    BYTE8(v49) = *(v1 + 48) & 1;
    v30 = CoreAnalyticsManager.StreamStats.PositiveFrame.description.getter(v24);
    v27 = *(v17 + 2);
  }

  v31 = *(v17 + 3);
  v32 = v27 + 1;
  if (v27 >= v31 >> 1)
  {
    v45 = v30;
    v46 = v29;
    v47 = sub_1AEA61C58((v31 > 1), v27 + 1, 1, v17);
    v29 = v46;
    v17 = v47;
    v30 = v45;
  }

  *(v17 + 2) = v32;
  v33 = &v17[16 * v27];
  *(v33 + 4) = v30;
  *(v33 + 5) = v29;
  v34 = *(v17 + 3);
  v35 = v27 + 2;
  if (v35 > (v34 >> 1))
  {
    v30 = sub_1AEA61C58((v34 > 1), v35, 1, v17);
    v17 = v30;
  }

  *(v17 + 2) = v35;
  v36 = &v17[16 * v32];
  *(v36 + 4) = 0x7461676572676761;
  *(v36 + 5) = 0xEB00000000203A65;
  (*(*v1 + 192))(v30, v29, v18, v19, v20, v21, v22, v23, v48, *(&v48 + 1), v49, *(&v49 + 1));
  v37 = CoreAnalyticsManager.StreamStats.Aggregate.description.getter();
  v39 = v38;

  v41 = *(v17 + 2);
  v40 = *(v17 + 3);
  if (v41 >= v40 >> 1)
  {
    v17 = sub_1AEA61C58((v40 > 1), v41 + 1, 1, v17);
  }

  *(v17 + 2) = v41 + 1;
  v42 = &v17[16 * v41];
  *(v42 + 4) = v37;
  *(v42 + 5) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v43 = sub_1AEAF955C();

  return v43;
}

Swift::Void __swiftcall CoreAnalyticsManager.StreamStats.log()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1AEACA9A4()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5C68);
  __swift_project_value_buffer(v0, qword_1EB5F5C68);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEACAA28()
{
  v0 = sub_1AEAF8FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AEAD583C();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1AEAF8FCC();
  v6 = sub_1AEAF9A9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AEA3F000, v5, v6, "Ingested positive second frame without matching first frame, \nif you see this error - please file a radar!", v7, 2u);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

char *sub_1AEACAB78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
  }

  return v10;
}

uint64_t sub_1AEACAC94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9548);
  v34 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}