uint64_t SelfLoggingHelper.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SelfLoggingHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t SelfLoggingPreheatWithPowerContainer.__deallocating_deinit()
{
  SelfLoggingPreheatWithPowerContainer.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000167D0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_10000ECEC(&qword_10006F130, &qword_10004CCC0);
  result = sub_10004721C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    sub_10004745C();

    sub_100046EAC();
    result = sub_10004748C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_1000473EC() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100016960(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1000029E4(0, a3, a4);
  sub_100005424();
  v8 = sub_100046EFC();

  return v8;
}

unint64_t sub_1000169D0()
{
  result = qword_10006F160;
  if (!qword_10006F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F160);
  }

  return result;
}

__n128 sub_100016AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  *v17 = a17.n128_u32[0];
  return result;
}

void sub_100016B20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 96);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

id sub_100016B40(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100016B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000ECEC(&qword_10006F228, &qword_10004CD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CCE0;
  *(inited + 32) = 0x6E65764520525341;
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v7 = sub_100046D8C();
  if (a3)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v7;
    sub_100017048(a3, sub_100017304, 0, isUniquelyReferenced_nonNull_native, &v11);
    v7 = v11;
  }

  v9 = sub_100046E4C();
  sub_100023550(v7);

  isa = sub_100046D6C().super.isa;

  SFPLLogRegisteredEvent();
}

uint64_t sub_100016CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *v7;
  sub_10000ECEC(&qword_10006F228, &qword_10004CD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CCE0;
  *(inited + 32) = 0x746163696C707041;
  *(inited + 40) = 0xEF656D614E6E6F69;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v16 = sub_100046D8C();
  if (a4)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100025B6C(a3, a4, 0x65676175676E614CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v18 = sub_1000041D0(0x65676175676E614CLL, 0xE800000000000000);
    if (v19)
    {
      v20 = v18;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      v22 = *(v16 + 24);
      sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
      sub_1000472EC(v21, v22);
      v16 = v34;
      v23 = *(*(v34 + 48) + 16 * v20 + 8);

      v24 = *(*(v34 + 56) + 16 * v20 + 8);
      sub_10004730C();
    }
  }

  if (a6)
  {

    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_100025B6C(a5, a6, 0x7265566C65646F4DLL, 0xEC0000006E6F6973, v25);
  }

  else
  {
    v26 = sub_1000041D0(0x7265566C65646F4DLL, 0xEC0000006E6F6973);
    if (v27)
    {
      v28 = v26;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v16;
      v30 = *(v16 + 24);
      sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
      sub_1000472EC(v29, v30);
      v16 = v35;
      v31 = *(*(v35 + 48) + 16 * v28 + 8);

      v32 = *(*(v35 + 56) + 16 * v28 + 8);
      sub_10004730C();
    }
  }

  sub_100016B58(0xD000000000000024, 0x800000010004E430, v16);
}

uint64_t sub_100016FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_100017048(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  sub_100019824(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v45 = v53[5];
  v46 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v45(&v48, v52);

      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      v23 = *v54;
      v25 = sub_1000041D0(v48, v49);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
          sub_1000472FC();
        }
      }

      else
      {
        v30 = v54;
        sub_10002DB48(v28, v47 & 1);
        v31 = *v30;
        v32 = sub_1000041D0(v19, v20);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v54;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100003C40();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_10004740C();
  __break(1u);
  return result;
}

uint64_t sub_100017304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100016FFC(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_100017348()
{
  sub_10000619C(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_asrId);
  sub_10000619C(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_requestId);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_invocationType);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_triggerType);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_asrTask);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_bundleId);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_clientId);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_geoLMRegionId);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_locale);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_deviceClass);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_deviceType);
  sub_100004E68(OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_deviceBuild);
  v1 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_enabledDictationLocales);

  v2 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition14OndeviceRecord_activeDictationLanguages);

  return v0;
}

uint64_t sub_100017418()
{
  sub_100017348();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for OndeviceRecord()
{
  result = qword_10006F258;
  if (!qword_10006F258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000174C4()
{
  sub_1000175D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000175D4()
{
  if (!qword_100070000)
  {
    sub_100046BBC();
    v0 = sub_10004710C();
    if (!v1)
    {
      atomic_store(v0, &qword_100070000);
    }
  }
}

uint64_t sub_10001762C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

localspeechrecognition::TaskHint_optional __swiftcall TaskHint.init(taskString:)(Swift::String taskString)
{
  v1 = sub_100046E8C();
  v3 = v2;

  v4 = 0;
LABEL_2:
  v5 = &off_100065740 + v4;
  v6 = *(&off_100065740 + v4++ + 32);
  v7 = TaskHint.preferredModelTaskNames.getter(v5[32]);
  v8 = v7;
  v9 = v7 + 5;
  v10 = -v7[2];
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {

      if (v4 != 16)
      {
        goto LABEL_2;
      }

      v6 = 16;
      goto LABEL_15;
    }

    if (++v11 >= v8[2])
    {
      break;
    }

    v12 = *(v9 - 1);
    v13 = *v9;
    if (sub_100046E8C() == v1 && v14 == v3)
    {

LABEL_14:

LABEL_15:
      LOBYTE(v7) = v6;
      return v7;
    }

    v9 += 2;
    v16 = sub_1000473EC();

    if (v16)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
  return v7;
}

BOOL sub_1000177C8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

Swift::Int TaskHint.hashValue.getter(unsigned __int8 a1)
{
  sub_10004745C();
  sub_10004746C(a1);
  return sub_10004748C();
}

Swift::Int sub_100017928()
{
  v1 = *v0;
  sub_10004745C();
  TaskHint.hash(into:)(v3, v1);
  return sub_10004748C();
}

unint64_t sub_100017970()
{
  result = qword_10006F730;
  if (!qword_10006F730)
  {
    sub_1000179D4(&qword_10006F738, &qword_10004CE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F730);
  }

  return result;
}

uint64_t sub_1000179D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100017A20()
{
  result = qword_10006F740;
  if (!qword_10006F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F740);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TaskHint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

void sub_100017C00(uint64_t a1, void (**a2)(void, void))
{
  v4 = &_swiftEmptySetSingleton;
  sub_1000186D8(a1, &v4);
  sub_100046C3C();
  sub_100019FCC(&qword_10006F878);
  isa = sub_100046FAC().super.isa;
  (a2)[2](a2, isa);

  _Block_release(a2);
}

void sub_100017D20(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v50 = a2;
  v5 = sub_100046E3C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100046C3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v55 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v47 - v13;
  v14 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v47 - v16;
  v18 = [objc_opt_self() supportedLanguagesForAssetType:3];
  v19 = sub_100046EFC();

  v20 = *(v19 + 16);
  if (v20)
  {
    v48 = v17;
    v49 = a1;
    v52 = v9;
    v53 = v8;
    v54 = a3;
    v62 = _swiftEmptyArrayStorage;
    sub_100004A54(0, v20, 0);
    v21 = v62;
    v22 = sub_1000169D0();
    v47 = v19;
    v23 = (v19 + 40);
    do
    {
      v24 = *v23;
      v60 = *(v23 - 1);
      v61 = v24;
      v58 = 45;
      v59 = 0xE100000000000000;
      v57[0] = 95;
      v57[1] = 0xE100000000000000;
      v45 = v22;
      v46 = v22;
      v43 = &type metadata for String;
      v44 = v22;
      v25 = sub_10004711C();
      v27 = v26;
      v62 = v21;
      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        sub_100004A54((v28 > 1), v29 + 1, 1);
        v21 = v62;
      }

      v21[2] = v29 + 1;
      v30 = &v21[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
      v23 += 2;
      --v20;
    }

    while (v20);

    v8 = v53;
    a3 = v54;
    v9 = v52;
    v17 = v48;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  sub_100046C0C();
  if (sub_100004844(v17, 1, v8) == 1)
  {

    sub_100019F64(v17);
LABEL_14:
    sub_100046DCC();
    sub_10001A010();
    sub_1000470BC();
    sub_100046C2C();
    sub_100046E6C();
    sub_10004706C();
    v41 = sub_100046D5C();
    v42 = sub_100046A6C();
    (a3)[2](a3, 0, v42);

    goto LABEL_17;
  }

  v31 = sub_100046BDC();
  v33 = v32;
  v34 = *(v9 + 8);
  v35 = v34(v17, v8);
  v60 = v31;
  v61 = v33;
  __chkstk_darwin(v35);
  v45 = &v60;
  v36 = sub_1000177C8(sub_10001A080, &v43, v21);

  if (!v36)
  {

    goto LABEL_14;
  }

  v37 = v51;
  v38 = sub_100046BCC();
  LOBYTE(v57[0]) = 0;
  LOBYTE(v62) = 0;
  __chkstk_darwin(v38);
  v43 = &v62;
  v44 = v37;
  v45 = v57;
  sub_100018B4C(sub_10001A0A0, (&v47 - 6));
  if (v57[0])
  {
    sub_10004705C();
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_10004723C(39);

    v60 = 0xD00000000000001CLL;
    v61 = 0x800000010004E7A0;
    sub_100046D4C();
    v58 = sub_100046D3C();
    v63._countAndFlagsBits = sub_1000473CC();
    sub_100046EBC(v63);

    v64._countAndFlagsBits = 0x6D756D6978616D20;
    v64._object = 0xE90000000000002ELL;
    sub_100046EBC(v64);
    v39 = sub_100046D5C();
    v40 = sub_100046A6C();
    (a3)[2](a3, 0, v40);
  }

  else
  {
    a3[2](a3, v62, 0);
  }

  v34(v37, v8);
LABEL_17:
  _Block_release(a3);
}

BOOL sub_100018304(uint64_t a1, _BYTE *a2, uint64_t a3, char *a4)
{
  v8 = sub_100046C3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  (*(v9 + 16))(v13, a3, v8);
  LOBYTE(a3) = sub_10002E1BC(v15, v13);
  (*(v9 + 8))(v15, v8);
  *a2 = a3 & 1;
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v16 = *(*a1 + 16);
  sub_100046D4C();
  v17 = sub_100046D3C();
  v18 = v17 < v16;
  result = v17 >= v16;
  v20 = v18;
  *a4 = v20;
  return result;
}

void sub_100018480(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = 0;
  v4[2] = &v5;
  v4[3] = a1;
  sub_100018B4C(sub_100019F5C, v4);
  a3[2](a3, v5);
  _Block_release(a3);
}

BOOL sub_1000184F0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  sub_1000191E4(a3, &v12 - v7);
  v9 = sub_100046C3C();
  v10 = sub_100004844(v8, 1, v9) != 1;
  sub_100019F64(v8);
  *a2 = v10;
  return v10;
}

uint64_t sub_1000185C4(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = sub_100046C3C();
  v9 = sub_100004E00(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  sub_100046BFC();
  _Block_copy(v16);
  v17 = a1;
  a5(v15, v17, v16);
  _Block_release(v16);

  return (*(v11 + 8))(v15, v8);
}

uint64_t sub_1000186D8(uint64_t a1, uint64_t *a2)
{
  v39 = a2;
  v3 = sub_100046C3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v44 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = v38 - v8;
  v49 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition20LSRLSRAssetInventory_bundleId);
  v47 = 0xD000000000000040;
  v48 = 0x800000010004E6F0;
  sub_100046EBC(v49);
  v9 = v48;
  v10 = [objc_opt_self() standardUserDefaults];
  v38[1] = v9;
  v11 = sub_100046E4C();
  v12 = [v10 stringArrayForKey:v11];

  if (v12)
  {
    v13 = sub_100046EFC();
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  v14 = sub_100026780(v13, sub_100019078, 0);
  v47 = v14;
  v15 = sub_100046D4C();
  v16 = *(v14 + 16);
  v43 = v15;
  result = sub_100046D3C();
  if (result >= v16)
  {
LABEL_18:
    v37 = *v39;
    *v39 = v14;
  }

  else
  {
    v19 = (v4 + 16);
    v42 = (v4 + 8);
    p_base_props = &EARInterface.base_props;
    *&v18 = 136315138;
    v41 = v18;
    v40 = (v4 + 16);
    while (*(v14 + 16))
    {
      v21 = 0;
      v22 = (v14 + 56);
      v23 = 1 << *(v14 + 32);
      v24 = (v23 + 63) >> 6;
      if (v24)
      {
        while (!*v22)
        {
          v21 -= 64;
          --v24;
          ++v22;
          if (!v24)
          {
            goto LABEL_12;
          }
        }

        v23 = __clz(__rbit64(*v22)) - v21;
      }

LABEL_12:
      sub_100019728(v23, *(v14 + 36), v45);
      if (p_base_props[424] != -1)
      {
        swift_once();
      }

      v25 = sub_100046D1C();
      sub_100004D64(v25, qword_1000714B8);
      (*v19)(v44, v45, v3);
      v26 = sub_100046D0C();
      v27 = sub_10004700C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = v41;
        sub_100019FCC(&qword_10006F870);
        v30 = v44;
        v31 = sub_1000473CC();
        v33 = v32;
        v34 = *v42;
        (*v42)(v30, v3);
        v35 = sub_100004EB4(v31, v33, &v46);
        v19 = v40;

        *(v28 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "Too many locales in allocatedLocales, removing %s.", v28, 0xCu);
        sub_1000050D4(v29);

        p_base_props = (&EARInterface + 64);
      }

      else
      {

        v34 = *v42;
        (*v42)(v44, v3);
      }

      v34(v45, v3);
      v14 = v47;
      v36 = *(v47 + 16);
      result = sub_100046D3C();
      if (result >= v36)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100018B4C(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v49 = a2;
  v50 = a1;
  v3 = sub_100046C3C();
  v4 = sub_100004E00(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v60 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition20LSRLSRAssetInventory_bundleId);
  v58 = 0xD000000000000040;
  v59 = 0x800000010004E6F0;
  sub_100046EBC(v60);
  v15 = v58;
  v14 = v59;
  v47 = objc_opt_self();
  v16 = [v47 standardUserDefaults];
  v48 = v15;
  v51 = v14;
  v17 = sub_100046E4C();
  v18 = [v16 stringArrayForKey:v17];

  if (v18)
  {
    v19 = sub_100046EFC();
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = sub_100026780(v19, sub_100019078, 0);
  v58 = v20;
  v21 = sub_100046D4C();
  v22 = *(v20 + 16);
  v56 = v21;
  if (sub_100046D3C() >= v22)
  {
LABEL_18:
    if (v50(&v58))
    {
      sub_10001989C(v58, sub_1000190C8, 0);

      v43 = [v47 standardUserDefaults];
      isa = sub_100046EEC().super.isa;

      v45 = sub_100046E4C();

      [v43 setObject:isa forKey:v45];
    }

    else
    {
    }
  }

  else
  {
    v24 = (v6 + 16);
    v55 = (v6 + 8);
    p_base_props = &EARInterface.base_props;
    *&v23 = 136315138;
    v52 = v23;
    v53 = v13;
    v54 = (v6 + 16);
    while (*(v20 + 16))
    {
      v26 = 0;
      v27 = (v20 + 56);
      v28 = 1 << *(v20 + 32);
      v29 = (v28 + 63) >> 6;
      if (v29)
      {
        while (!*v27)
        {
          v26 -= 64;
          --v29;
          ++v27;
          if (!v29)
          {
            goto LABEL_12;
          }
        }

        v28 = __clz(__rbit64(*v27)) - v26;
      }

LABEL_12:
      sub_100019728(v28, *(v20 + 36), v13);
      if (p_base_props[424] != -1)
      {
        swift_once();
      }

      v30 = sub_100046D1C();
      sub_100004D64(v30, qword_1000714B8);
      (*v24)(v11, v13, v3);
      v31 = sub_100046D0C();
      v32 = sub_10004700C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v57 = v34;
        *v33 = v52;
        sub_100019FCC(&qword_10006F870);
        v35 = sub_1000473CC();
        v37 = v36;
        v38 = v11;
        v39 = *v55;
        (*v55)(v38, v3);
        v40 = sub_100004EB4(v35, v37, &v57);

        *(v33 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "Too many locales in allocatedLocales, removing %s.", v33, 0xCu);
        sub_1000050D4(v34);
        v13 = v53;

        v24 = v54;

        v39(v13, v3);
        v11 = v38;
        p_base_props = (&EARInterface + 64);
      }

      else
      {

        v41 = *v55;
        (*v55)(v11, v3);
        v41(v13, v3);
      }

      v20 = v58;
      v42 = *(v58 + 16);
      if (sub_100046D3C() >= v42)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100019078(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100046BCC();
}

uint64_t sub_1000190C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100046BDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_100019134()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LSRLSRAssetInventory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000191A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1000473EC() & 1;
  }
}

uint64_t sub_1000191E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_100046C3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_100019FCC(&qword_10006F878);
  v28 = a1;
  v11 = sub_100046D9C();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_1000045DC(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_100019FCC(&qword_10006FF30);
    v15 = sub_100046DBC();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10002F750();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_100019430(v13);
  v16 = 0;
  *v18 = v29;
  return sub_1000045DC(v17, v16, 1, v4);
}

uint64_t sub_100019430(int64_t a1)
{
  v3 = sub_100046C3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_10004714C();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_100019FCC(&qword_10006F878);
        v27 = sub_100046D9C();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_100019728@<X0>(int64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v10 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v10 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v10 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_10002F750();
    v10 = v14;
  }

  v11 = *(v10 + 48);
  v12 = sub_100046C3C();
  (*(*(v12 - 8) + 32))(a3, v11 + *(*(v12 - 8) + 72) * a1, v12);
  result = sub_100019430(a1);
  *v4 = v14;
  return result;
}

uint64_t sub_100019824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_100019860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 56);
  result = a1 + 56;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10001989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = sub_100046C3C();
  v71 = *(v75 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v75);
  v73 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v66 = (v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v76 = v62 - v13;
  v14 = __chkstk_darwin(v12);
  v69 = v62 - v15;
  __chkstk_darwin(v14);
  v17 = v62 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
    v19 = swift_allocObject();
    v20 = 2 * ((j__malloc_size(v19) - 32) / 16);
    v19[2] = v18;
    v19[3] = v20;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v20 = _swiftEmptyArrayStorage[3];
  }

  v67 = v19;
  v21 = v19 + 4;
  v22 = v20 >> 1;
  sub_100019860(a1, a2, a3, v79);
  v70 = v79[0];
  v23 = v79[1];
  v24 = v81;
  v25 = v82;
  v72 = v83;
  v74 = v84;
  v62[0] = v80;
  v26 = (v80 + 64) >> 6;
  v68 = v17;
  if (v18)
  {
    v27 = v18;
    v62[1] = v71 + 16;
    v64 = (v71 + 32);
    v63 = (v71 + 8);
    v22 -= v18;

    v29 = 0;
    v30 = v75;
    v65 = v27;
    while (v25)
    {
      v31 = v24;
      v32 = v76;
LABEL_13:
      v33 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v71 + 16))(v32, *(v70 + 48) + *(v71 + 72) * (v33 | (v31 << 6)), v30);
      v34 = 0;
LABEL_14:
      sub_1000045DC(v32, v34, 1, v30);
      v35 = v66;
      sub_100019EEC(v32, v66);
      result = sub_100004844(v35, 1, v30);
      if (result == 1)
      {
        goto LABEL_53;
      }

      v29 = (v29 + 1);
      v36 = v73;
      (*v64)(v73, v35, v30);
      v72(&v77, v36);
      v30 = v75;
      result = (*v63)(v36, v75);
      v37 = v78;
      *v21 = v77;
      v21[1] = v37;
      v21 += 2;
      if (v29 == v65)
      {
        v17 = v68;
        goto LABEL_19;
      }
    }

    v32 = v76;
    while (1)
    {
      v31 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v31 >= v26)
      {
        v25 = 0;
        v34 = 1;
        goto LABEL_14;
      }

      v25 = *(v23 + 8 * v31);
      ++v24;
      if (v25)
      {
        v24 = v31;
        goto LABEL_13;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v30 = v75;
LABEL_19:
    v64 = (v71 + 16);
    v65 = (v71 + 8);
    v66 = (v71 + 32);
    while (1)
    {
      v38 = v25;
      v39 = v24;
      if (!v25)
      {
        v40 = v24;
        while (1)
        {
          v39 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v39 >= v26)
          {
            v76 = 0;
            v41 = 1;
            goto LABEL_26;
          }

          v38 = *(v23 + 8 * v39);
          ++v40;
          if (v38)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

LABEL_25:
      v76 = ((v38 - 1) & v38);
      (*(v71 + 16))(v17, *(v70 + 48) + *(v71 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v30);
      v41 = 0;
      v40 = v39;
LABEL_26:
      sub_1000045DC(v17, v41, 1, v30);
      v42 = v69;
      sub_100019EEC(v17, v69);
      if (sub_100004844(v42, 1, v30) == 1)
      {
        break;
      }

      v43 = v73;
      (*v66)(v73, v42, v30);
      v72(&v77, v43);
      result = (*v65)(v43, v30);
      v45 = v77;
      v44 = v78;
      if (!v22)
      {
        v46 = v67;
        v47 = v67[3];
        if (((v47 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
        if (v48 <= 1)
        {
          v49 = 1;
        }

        else
        {
          v49 = v48;
        }

        sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
        v50 = swift_allocObject();
        v51 = (j__malloc_size(v50) - 32) / 16;
        v50[2] = v49;
        v50[3] = 2 * v51;
        v52 = (v50 + 4);
        v53 = v46[2];
        v54 = v46[3];
        v55 = v46;
        v56 = v54 >> 1;
        if (v53)
        {
          if (v50 != v55 || v52 >= &v55[2 * v56 + 4])
          {
            memmove(v50 + 4, v55 + 4, 16 * v56);
          }

          v67[2] = 0;
        }

        v21 = (v52 + 16 * v56);
        v22 = (v51 & 0x7FFFFFFFFFFFFFFFLL) - (v54 >> 1);

        v67 = v50;
      }

      v58 = __OFSUB__(v22--, 1);
      if (v58)
      {
        goto LABEL_50;
      }

      *v21 = v45;
      v21[1] = v44;
      v21 += 2;
      v24 = v40;
      v30 = v75;
      v25 = v76;
      v17 = v68;
    }

    sub_100003C40();

    result = v67;
    v59 = v67[3];
    if (v59 < 2)
    {
      return result;
    }

    v60 = v59 >> 1;
    v58 = __OFSUB__(v60, v22);
    v61 = v60 - v22;
    if (!v58)
    {
      v67[2] = v61;
      return result;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_100019EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019F64(uint64_t a1)
{
  v2 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019FCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100046C3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001A010()
{
  result = qword_10006F888;
  if (!qword_10006F888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006F888);
  }

  return result;
}

id sub_10001A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a4;
  v76 = a5;
  v6 = sub_100046C3C();
  v7 = sub_100004E00(v6);
  v84 = v8;
  v85 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000B804();
  v78 = v11;
  v12 = sub_100046E3C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_10000B804();
  v77 = v14;
  v81 = sub_100046A8C();
  v15 = sub_100004E00(v81);
  v79 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10000B804();
  v80 = v19;
  v20 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = v74 - v26;
  __chkstk_darwin(v25);
  v29 = v74 - v28;
  v30 = sub_100046B0C();
  v31 = sub_100004E00(v30);
  v88 = v32;
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v31);
  v37 = v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v82 = v74 - v38;
  v86 = a1;
  v39 = sub_100046C1C();
  v41 = v40;
  sub_1000045DC(v29, 1, 1, v30);
  v74[1] = v39;
  v83 = v41;
  v42 = sub_100046E4C();
  v43 = sub_100046E4C();

  sub_1000048DC(v29, v27);
  v45 = 0;
  if (sub_100004844(v27, 1, v30) != 1)
  {
    sub_100046A9C(v44);
    v45 = v46;
    (*(v88 + 8))(v27, v30);
  }

  v47 = objc_opt_self();
  v90 = 0;
  v48 = [v47 modelRootWithLanguage:v42 assetType:3 shouldSubscribe:1 clientID:v43 modelOverrideURL:v45 isSpelling:0 error:&v90];

  v49 = v90;
  if (!v48)
  {
    v66 = v90;

    sub_100046A7C();

    swift_willThrow();
    v67 = sub_100004160();
    v68(v67);
    sub_100005808(v29, &qword_10006FED0, &qword_10004CF38);
LABEL_15:
    type metadata accessor for EAREuclid();
    swift_deallocPartialClassInstance();
    return v49;
  }

  sub_100046E5C();
  v50 = v49;

  (*(v79 + 104))(v80, enum case for URL.DirectoryHint.isDirectory(_:), v81);
  sub_1000045DC(v24, 1, 1, v30);
  v51 = v82;
  sub_100046AFC();
  sub_100005808(v29, &qword_10006FED0, &qword_10004CF38);
  v52 = [objc_opt_self() jsonFilenameForAssetType:3];
  sub_100046E5C();

  sub_100046AAC();

  v53 = sub_100046ADC();
  v55 = v54;
  v56 = *(v88 + 8);
  v56(v37, v30);
  sub_100046ADC();
  v57 = sub_100046E4C();

  v58 = [v47 isEuclidAvailableForConfigPath:v57];

  if ((v58 & 1) == 0)
  {

    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34();
    }

    v69 = off_100071650;
    sub_100046C2C();
    v49 = sub_100002B8C();
    sub_10004707C();
    goto LABEL_14;
  }

  v59 = objc_allocWithZone(_EAREuclid);
  v60 = sub_10001C410(v53, v55, v75, v76);
  if (!v60)
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34();
    }

    v49 = off_100071650;
    v70 = off_100071650;
    sub_100046C2C();
    sub_100002B8C();
LABEL_14:
    sub_100046D5C();
    swift_willThrow();
    v71 = sub_100004160();
    v72(v71);
    v56(v51, v30);
    goto LABEL_15;
  }

  v61 = v60;
  v56(v51, v30);
  v62 = v87;
  *&v87[OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance] = v61;
  v63 = type metadata accessor for EAREuclid();
  v89.receiver = v62;
  v89.super_class = v63;
  v49 = objc_msgSendSuper2(&v89, "init");
  v64 = sub_100004160();
  v65(v64);
  return v49;
}

void sub_10001A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v7 = sub_100046D1C();
  sub_100004D64(v7, qword_1000714B8);
  v8 = sub_100046D0C();
  v9 = sub_100046FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100004EB4(0xD000000000000030, 0x800000010004E9B0, &v28);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "EAREuclid.%s with %ld requested neighbor(s)", v10, 0x16u);
    sub_1000050D4(v11);
  }

  v12 = *(a4 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance);
  v13 = sub_100046E4C();
  v14 = [v12 findNearestNeighbors:v13 numberOfNeighbors:a3];

  sub_1000029E4(0, &qword_10006F928, _EAREuclidNeighbor_ptr);
  v15 = sub_100046EFC();

  v16 = sub_100046D0C();
  v17 = sub_100046FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_100004EB4(0xD000000000000030, 0x800000010004E9B0, &v28);
    *(v18 + 12) = 2048;
    *(v18 + 14) = sub_10000AD40(v15);

    _os_log_impl(&_mh_execute_header, v16, v17, "EAREuclid.%s replying with %ld neighbor(s)", v18, 0x16u);
    sub_1000050D4(v19);
  }

  else
  {
  }

  v20 = sub_10000AD40(v15);
  if (v20)
  {
    v21 = v20;
    v28 = _swiftEmptyArrayStorage;
    sub_1000472AC();
    if (v21 < 0)
    {
      __break(1u);
      return;
    }

    v22 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v23 = sub_10004725C();
      }

      else
      {
        v23 = *(v15 + 8 * v22 + 32);
      }

      v24 = v23;
      ++v22;
      [objc_allocWithZone(EAREuclidNeighbor) initWithEuclidNeighbor:v23];

      sub_10004728C();
      v25 = v28[2];
      sub_1000472BC();
      sub_1000472CC();
      sub_10004729C();
    }

    while (v21 != v22);
  }

  sub_1000029E4(0, &qword_10006F930, EAREuclidNeighbor_ptr);
  isa = sub_100046EEC().super.isa;
  (a5)[2](a5, isa);

  _Block_release(a5);
}

void sub_10001AC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v8 = sub_100046D1C();
  sub_100004D64(v8, qword_1000714B8);
  v9 = sub_100046D0C();
  v10 = sub_100046FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = a6;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100004EB4(0xD000000000000026, 0x800000010004E980, &v25);
    _os_log_impl(&_mh_execute_header, v9, v10, "EAREuclid.%s", v12, 0xCu);
    sub_1000050D4(v13);

    a6 = v11;
  }

  v14 = *(a5 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance);
  v15 = sub_100046E4C();
  v16 = sub_100046E4C();
  v17 = [v14 distanceBetweenSource:v15 target:v16];

  v18 = v17;
  v19 = sub_100046D0C();
  v20 = sub_100046FFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_100004EB4(0xD000000000000026, 0x800000010004E980, &v25);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v18;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "EAREuclid.%s replying with distance of %@", v21, 0x16u);
    sub_100005808(v22, &qword_1000704F0, &qword_10004CF40);

    sub_1000050D4(v23);
  }

  (a6)[2](a6, v18);

  _Block_release(a6);
}

void sub_10001B090(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = *(a2 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance);
  isa = sub_100046EEC().super.isa;
  v6 = [v4 computeEmbeddings:isa];

  sub_10000ECEC(&qword_10006F920, &qword_10004CF48);
  sub_100046EFC();

  v7 = sub_100046EEC().super.isa;
  (a3)[2](a3, v7);

  _Block_release(a3);
}

void sub_10001B1F4(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E960, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) maxInputLength];
  v10 = sub_100046D0C();
  v11 = sub_100046FFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E960, &v16);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "EAREuclid.%s replying with %@", v12, 0x16u);
    sub_100005808(v13, &qword_1000704F0, &qword_10004CF40);

    sub_1000050D4(v14);
  }

  (a2)[2](a2, v9);

  _Block_release(a2);
}

void sub_10001B4C4(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E940, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) embeddingDim];
  v10 = sub_100046D0C();
  v11 = sub_100046FFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E940, &v16);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "EAREuclid.%s replying with %@", v12, 0x16u);
    sub_100005808(v13, &qword_1000704F0, &qword_10004CF40);

    sub_1000050D4(v14);
  }

  (a2)[2](a2, v9);

  _Block_release(a2);
}

void sub_10001B794(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000013, 0x800000010004E920, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) fullVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100004EB4(0xD000000000000013, 0x800000010004E920, &v17);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100004EB4(v10, v12, &v17);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = sub_100046E4C();
  (a2)[2](a2, v16);

  _Block_release(a2);
}

void sub_10001BA6C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E900, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) majorVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E900, &v17);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100004EB4(v10, v12, &v17);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = sub_100046E4C();
  (a2)[2](a2, v16);

  _Block_release(a2);
}

void sub_10001BD44(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8E0, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) minorVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8E0, &v17);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100004EB4(v10, v12, &v17);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = sub_100046E4C();
  (a2)[2](a2, v16);

  _Block_release(a2);
}

void sub_10001C01C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8C0, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "EAREuclid.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition9EAREuclid_euclidInstance) patchVersion];
  v10 = sub_100046E5C();
  v12 = v11;

  v13 = sub_100046D0C();
  v14 = sub_100046FFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100004EB4(0xD000000000000014, 0x800000010004E8C0, &v17);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100004EB4(v10, v12, &v17);
    _os_log_impl(&_mh_execute_header, v13, v14, "EAREuclid.%s replying with %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = sub_100046E4C();
  (a2)[2](a2, v16);

  _Block_release(a2);
}

void sub_10001C2F4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id sub_10001C3A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EAREuclid();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100046E4C();

  v8 = sub_100046E4C();

  v9 = [v4 initWithConfiguration:v7 euclidEncoderType:a3 initFlag:a4 language:v8];

  return v9;
}

void *sub_10001C4B4(uint64_t a1)
{
  result = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v6 = objc_allocWithZone(_EARSpeechMessagesContext);

      v7 = [v6 init];
      if (*(v5 + 16))
      {
        v8 = sub_1000041D0(0x7265646E6573, 0xE600000000000000);
        if (v9)
        {
          v10 = *(*(v5 + 56) + 8 * v8);
          if (v10[2])
          {
            v12 = v10[4];
            v11 = v10[5];
          }
        }
      }

      v13 = sub_100046E4C();

      [v7 setSender:v13];

      if (*(v5 + 16))
      {
        v14 = sub_1000041D0(0x736567617373656DLL, 0xE800000000000000);
        if (v15)
        {
          v16 = *(*(v5 + 56) + 8 * v14);
        }
      }

      isa = sub_100046EEC().super.isa;

      [v7 setMessages:isa];

      v18 = v7;
      sub_100046EDC();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100046F1C();
      }

      sub_100046F3C();

      ++v4;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10001C6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (**a10)(void, void))
{
  v34 = a4;
  v35 = a6;
  v12 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v32 - v14;
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v16 = a10;
  v17 = sub_100046D1C();
  sub_100004D64(v17, qword_1000714B8);
  v18 = sub_100046D0C();
  v19 = sub_100046FFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32[1] = a5;
    v33 = a10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100004EB4(0xD000000000000056, 0x800000010004EA50, &v36);
    _os_log_impl(&_mh_execute_header, v18, v19, "EARTranscriptionEvaluator.%s", v21, 0xCu);
    sub_1000050D4(v22);

    v16 = v33;
  }

  v23 = [objc_allocWithZone(_EARVisualContextEvaluation) init];
  sub_10001C4B4(a1);
  sub_1000029E4(0, &qword_10006F9C8, _EARSpeechMessagesContext_ptr);
  isa = sub_100046EEC().super.isa;

  v25 = sub_100046E4C();
  v26 = sub_100046E4C();

  v27 = sub_100046E4C();

  v28 = [v23 computeContextualizationMetricsWithMesssagesContext:isa correctedText:v25 recognizedText:v26 profilePath:v27];

  sub_1000029E4(0, &unk_10006F9D0, _EARVisualContextMetrics_ptr);
  v29 = sub_100046EFC();

  if (qword_10006DD30 != -1)
  {
    swift_once();
  }

  v30 = sub_100046BBC();
  (*(*(v30 - 8) + 16))(v15, v35, v30);
  sub_1000045DC(v15, 0, 1, v30);
  v31 = mach_continuous_time();
  sub_10000DD78(v15, v29, v31);

  sub_10000619C(v15);
  v16[2](v16, 1);

  _Block_release(v16);
}

id sub_10001CC34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARTranscriptionEvaluator();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10001CC8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARTranscriptionEvaluator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001CCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_10001FCA0(a3, v26 - v11, &qword_10006FAD8, &qword_10004CFA0);
  v13 = sub_100046F9C();
  v14 = sub_100004844(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100005808(v12, &qword_10006FAD8, &qword_10004CFA0);
  }

  else
  {
    sub_100046F8C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100046F4C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_100046E9C() + 32;
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

      sub_100005808(a3, &qword_10006FAD8, &qword_10004CFA0);

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

  sub_100005808(a3, &qword_10006FAD8, &qword_10004CFA0);
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

unint64_t sub_10001CFC8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v13 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v34 - v19;
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  if (!a4)
  {
    v26 = sub_100046F9C();
    sub_1000045DC(v20, 1, 1, v26);
    v23 = 0;
    goto LABEL_6;
  }

  v23 = a4;
  result = [v23 priority];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    sub_100046F7C();

    v25 = sub_100046F9C();
    sub_1000045DC(v20, 0, 1, v25);
LABEL_6:
    sub_10001F954(v20, v22);
    sub_10001FCA0(v22, v17, &qword_10006FAD8, &qword_10004CFA0);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a1;
    v27[5] = a2;
    v27[6] = a3;
    v27[7] = a4;
    v27[8] = a5;
    v27[9] = v7;
    v28 = v35;
    v27[10] = v34;
    v27[11] = v28;
    v29 = v23;
    v30 = a1;
    v31 = a2;
    v32 = a3;

    v33 = v7;

    sub_10001CCE4(0, 0, v17, &unk_10004CFE8, v27);

    return sub_100005808(v22, &qword_10006FAD8, &qword_10004CFA0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  return _swift_task_switch(sub_10001D228, 0, 0);
}

uint64_t sub_10001D228()
{
  if (qword_10006DD70 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100071640);
  v1 = qword_100071648;
  os_unfair_lock_unlock(&dword_100071640);
  if (v1 >= 2)
  {
    if (qword_10006DD38 != -1)
    {
      swift_once();
    }

    v2 = sub_100046D1C();
    sub_100004D64(v2, qword_1000714A0);
    v3 = sub_100046D0C();
    v4 = sub_10004700C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Maximum number of recognizers reached. This will be an error in a future release!", v5, 2u);
      sub_100002B44();
    }
  }

  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  objc_allocWithZone(type metadata accessor for EARSpeechRecognizer());

  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_10001D418;
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[4];

  return sub_100026A7C();
}

uint64_t sub_10001D418()
{
  sub_10000BDA0();
  sub_100005C1C();
  v3 = v2;
  v4 = *(v2 + 96);
  v8 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v6 = sub_10001D608;
  }

  else
  {
    v6 = sub_10001D524;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_10001D524()
{
  sub_10001FD20();
  os_unfair_lock_lock(&dword_100071640);
  if (__OFADD__(qword_100071648, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = v0[13];
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];
    ++qword_100071648;
    os_unfair_lock_unlock(&dword_100071640);
    v5 = v1;
    v6 = sub_10001EEB0();

    v7 = [v6 endpoint];
    v3();

    sub_100004170();

    v8();
  }
}

uint64_t sub_10001D608()
{
  sub_10001FD20();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v1 = *(v0 + 112);
  v2 = sub_100046D1C();
  sub_100004D64(v2, qword_1000714B8);
  swift_errorRetain();
  v3 = sub_100046D0C();
  v4 = sub_10004700C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_10000C618(&_mh_execute_header, v9, v10, "Could not create EARSpeechRecognizer local actor: %@");
    sub_100005808(v7, &qword_1000704F0, &qword_10004CF40);
    sub_100002B44();
    sub_100002B44();
  }

  v11 = *(v0 + 112);

  *(v0 + 16) = v11;
  swift_errorRetain();
  sub_10000ECEC(&unk_10006FAE0, &unk_10004CFD0);
  type metadata accessor for LSRError(0);
  v12 = sub_10000427C();
  v13 = *(v0 + 24);
  if (v12)
  {
    v14 = *(v0 + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_100023AD4(v14);
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 112);
  }

  else
  {
    v18 = *(v0 + 112);
    swift_errorRetain();
    v16 = *(v0 + 112);
  }

  v19 = *(v0 + 88);
  (*(v0 + 80))(0, v16);

  sub_100004170();

  return v20();
}

void sub_10001D8F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void (**a8)(void, void, void))
{
  v23 = a7;
  v15 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v23 - v17;
  sub_10001FCA0(a5, &v23 - v17, &qword_10006FED0, &qword_10004CF38);
  v19 = objc_allocWithZone(type metadata accessor for LSRAssets());

  v20 = sub_10001FD2C(a1, a2, a3, a4, v18, a6);
  v21 = sub_10001EEB0();

  v22 = [v21 endpoint];
  (a8)[2](a8, v22, 0);

  _Block_release(a8);
}

void sub_10001DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v13 = sub_100046C3C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1);
  objc_allocWithZone(type metadata accessor for EAREuclid());

  v18 = sub_10001A0AC(v16, a2, a3, a4, a5);
  v19 = sub_10001EEB0();

  v20 = [v19 endpoint];
  (a7)[2](a7, v20, 0);

  _Block_release(a7);
}

unint64_t sub_10001E23C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v29 - v17;
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  if (!a3)
  {
    v23 = sub_100046F9C();
    v24 = 1;
    goto LABEL_6;
  }

  v21 = a3;
  result = [v21 priority];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    sub_100046F7C();

    v23 = sub_100046F9C();
    v24 = 0;
LABEL_6:
    sub_1000045DC(v18, v24, 1, v23);
    sub_10001F954(v18, v20);
    sub_10001FCA0(v20, v15, &qword_10006FAD8, &qword_10004CFA0);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = a1;
    v25[5] = a2;
    v25[6] = v5;
    v25[7] = a4;
    v25[8] = a5;
    v26 = a1;
    v27 = a2;
    v28 = v5;

    sub_10001CCE4(0, 0, v15, &unk_10004CFB0, v25);

    return sub_100005808(v20, &qword_10006FAD8, &qword_10004CFA0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E430(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[4] = a6;
  objc_allocWithZone(type metadata accessor for EARLanguageDetector());
  v11 = a4;
  v12 = a5;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_10001E504;

  return sub_1000110FC(v11, v12);
}

uint64_t sub_10001E504(uint64_t a1)
{
  sub_100005C1C();
  v5 = v4;
  v6 = *(v4 + 56);
  v7 = *v2;
  sub_100004B48();
  *v8 = v7;
  *(v5 + 64) = v1;

  if (v1)
  {
    v9 = sub_10001E6D8;
  }

  else
  {
    *(v5 + 72) = a1;
    v9 = sub_10001E620;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10001E620()
{
  sub_10001FD20();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);
  v5 = sub_10001EEB0();

  v6 = [v5 endpoint];
  v2();

  sub_100004170();

  return v7();
}

uint64_t sub_10001E6D8()
{
  sub_10001FD20();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v1 = *(v0 + 64);
  v2 = sub_100046D1C();
  sub_100004D64(v2, qword_1000714B8);
  swift_errorRetain();
  v3 = sub_100046D0C();
  v4 = sub_10004700C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_10000C618(&_mh_execute_header, v9, v10, "Could not create EARLanguageDetector local actor: %@");
    sub_100005808(v7, &qword_1000704F0, &qword_10004CF40);
    sub_100002B44();
    sub_100002B44();
  }

  v11 = *(v0 + 64);

  *(v0 + 16) = v11;
  swift_errorRetain();
  sub_10000ECEC(&unk_10006FAE0, &unk_10004CFD0);
  type metadata accessor for LSRError(0);
  v12 = sub_10000427C();
  v13 = *(v0 + 24);
  if (v12)
  {
    v14 = *(v0 + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_100023AD4(v14);
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 64);
  }

  else
  {
    v18 = *(v0 + 64);
    swift_errorRetain();
    v16 = *(v0 + 64);
  }

  v19 = *(v0 + 48);
  (*(v0 + 40))(0, v16);

  sub_100004170();

  return v20();
}

void sub_10001E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v7 = sub_100046C3C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  objc_allocWithZone(type metadata accessor for EARFullPayloadCorrector());

  v12 = sub_10001062C(v10);
  v13 = sub_10001EEB0();

  v14 = [v13 endpoint];
  (a5)[2](a5, v14, 0);

  _Block_release(a5);
}

void sub_10001EDF8(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = [objc_allocWithZone(type metadata accessor for EARTranscriptionEvaluator()) init];
  v4 = sub_10001EEB0();
  v5 = [v4 endpoint];
  (a2)[2](a2, v5, 0);

  _Block_release(a2);
}

id sub_10001EEB0()
{
  v1 = [objc_opt_self() anonymousListener];
  [v1 setDelegate:v0];
  [v1 activate];
  v2 = (v0 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners));
  swift_unknownObjectRetain();
  sub_10002D61C();
  os_unfair_lock_unlock(v2);
  return v1;
}

uint64_t sub_10001EF50(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners));
  sub_10002D190(a1, v6, v7, v8, v9, v10, v11, v12, v22, v23);
  v14 = v13;
  os_unfair_lock_unlock(v5);
  if (!v14)
  {
    return v14 != 0;
  }

  type metadata accessor for EARSpeechRecognizer();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v15 = &protocolRef__SFXPCEARSpeechRecognizer;
LABEL_14:
    swift_unknownObjectRelease();
LABEL_15:
    v16 = [objc_opt_self() interfaceWithProtocol:*v15];
    [a2 setExportedInterface:v16];
    [a2 setExportedObject:v14];
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    aBlock[4] = sub_10001F92C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002673C;
    aBlock[3] = &unk_100065E20;
    v18 = _Block_copy(aBlock);
    v19 = a1;

    [a2 setInvalidationHandler:v18];
    _Block_release(v18);
    [a2 activate];
    swift_unknownObjectRelease();

    return v14 != 0;
  }

  type metadata accessor for LSRAssets();
  if (sub_100004B58())
  {
    v15 = &protocolRef__SFXPCLSRAssets;
    goto LABEL_14;
  }

  type metadata accessor for EAREuclid();
  if (sub_100004B58())
  {
    v15 = &protocolRef__SFXPCEAREuclid;
    goto LABEL_14;
  }

  type metadata accessor for EARLanguageDetector();
  if (sub_100004B58())
  {
    v15 = &protocolRef__SFXPCEARLanguageDetector;
    goto LABEL_14;
  }

  type metadata accessor for EARFullPayloadCorrector();
  if (sub_100004B58())
  {
    v15 = &protocolRef__SFXPCEARFullPayloadCorrector;
    goto LABEL_14;
  }

  type metadata accessor for EARTranscriptionEvaluator();
  if (sub_100004B58())
  {
    v15 = &protocolRef__SFXPCEARTranscriptionEvaluator;
    goto LABEL_14;
  }

  type metadata accessor for LSRLSRAssetInventory();
  v21 = sub_100004B58();
  swift_unknownObjectRelease();
  if (v21)
  {
    v15 = &protocolRef__SFXPCLSRAssetInventory;
    goto LABEL_15;
  }

  sub_10004723C(23);
  v25._object = 0x800000010004EBA0;
  v25._countAndFlagsBits = 0xD000000000000015;
  sub_100046EBC(v25);
  sub_1000472DC();
  result = sub_10004735C();
  __break(1u);
  return result;
}

void sub_10001F2AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  v9 = sub_100023C84(a1, a2, a3, a4, a5, a6, a7, 0);
  v11 = v10;
  if (v10 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100046B2C().super.isa;
  }

  (a9)[2](a9, isa, 0);

  sub_10000C198(v9, v11);

  _Block_release(a9);
}

void sub_10001F5C0(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = [objc_opt_self() processStartTimeOnce];
  (a2)[2](a2, v3, 0);

  _Block_release(a2);
}

void sub_10001F64C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10001F6C0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = type metadata accessor for LSRLSRAssetInventory();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC22localspeechrecognition20LSRLSRAssetInventory_bundleId];
  *v9 = a1;
  *(v9 + 1) = a2;
  v13.receiver = v8;
  v13.super_class = v7;

  v10 = objc_msgSendSuper2(&v13, "init");
  v11 = sub_10001EEB0();
  v12 = [v11 endpoint];
  (a4)[2](a4, v12, 0);

  _Block_release(a4);
}

void sub_10001F7AC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = objc_opt_self();
  v6 = sub_100046E4C();
  v7 = [v5 isEuclidAvailableForConfigPath:v6];

  (a4)[2](a4, v7, 0);

  _Block_release(a4);
}

uint64_t sub_10001F85C(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_100046E5C();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
}

id sub_10001F8F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARInterface();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001F93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F954(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F9C4()
{
  sub_10001FD0C();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_100005430(v2);
  *v3 = v4;
  v3[1] = sub_10000C1AC;
  sub_100004E80();
  sub_10000BF38();

  return sub_10001E430(v5, v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_10001FA74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005430(v3);
  *v4 = v5;
  v4[1] = sub_10000C28C;
  v6 = sub_100004E80();

  return v7(v6);
}

uint64_t sub_10001FB1C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005430(v3);
  *v4 = v5;
  v4[1] = sub_10000C1AC;
  v6 = sub_100004E80();

  return v7(v6);
}

uint64_t sub_10001FBC4()
{
  sub_10001FD0C();
  v1 = *(v0 + 64);
  v14 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  v4 = sub_100005430(v3);
  *v4 = v5;
  v4[1] = sub_10000C28C;
  sub_100004E80();
  sub_10000BF38();

  return sub_10001D1EC(v6, v7, v8, v9, v10, v11, v12, v1);
}

uint64_t sub_10001FCA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ECEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_10001FD0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t sub_10001FD2C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v203 = a4;
  v199 = a6;
  v204 = a5;
  v201 = a3;
  v193 = a2;
  v183 = sub_100046A8C();
  v8 = sub_100004E00(v183);
  v181 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100002B2C();
  v182 = v13 - v12;
  v14 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_100004AB8();
  sub_1000042A0();
  __chkstk_darwin(v16);
  sub_1000042A0();
  __chkstk_darwin(v17);
  v192 = &v174 - v18;
  v195 = sub_100046B0C();
  v19 = sub_100004E00(v195);
  v197 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_100004AB8();
  sub_1000042A0();
  __chkstk_darwin(v23);
  v180 = &v174 - v24;
  v25 = sub_100046C3C();
  v26 = sub_100004E00(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_100002B2C();
  v33 = v32 - v31;
  v189 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData;
  *&v6[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData] = 1;
  v188 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper;
  *&v6[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper] = 1;
  v191 = v6;
  v34 = v6;
  v35 = [a1 language];
  v36 = sub_100046E5C();
  v38 = v37;

  v39 = &v34[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language];
  *v39 = v36;
  v39[1] = v38;
  v200 = v39;
  v40 = [a1 language];
  sub_100046E5C();

  sub_100046BCC();
  v187 = v28;
  v41 = *(v28 + 32);
  v186 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_locale;
  v190 = v25;
  v41(&v34[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_locale], v33, v25);
  v42 = &v34[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_clientID];
  v184 = &v34[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_clientID];
  v43 = v203;
  *v42 = v201;
  v42[1] = v43;
  v185 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelOverridePath;
  v44 = v204;
  sub_10000905C(v204, &v34[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelOverridePath], &qword_10006FED0, &qword_10004CF38);
  v45 = v34;

  v46 = [a1 assetType];
  v47 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_assetType;
  *&v34[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_assetType] = v46;
  v48 = SFEntitledAssetTypeToString();
  v194 = sub_100046E5C();
  v50 = v49;

  v51 = v44;
  v52 = a1;
  v53 = v195;
  v54 = sub_100004844(v51, 1, v195);
  v205 = v45;
  v55 = v45;
  v198 = v52;
  v196 = v50;
  if (v54 == 1)
  {
    v55 = v205;
    if ((v199 & 1) == 0)
    {
      v56 = *&v205[v47];

      if ((v56 | 4) != 7)
      {
        goto LABEL_32;
      }

      v177 = v47;
      v57 = *&v205[v47];
      v58 = v200;
      if (v57 == 7)
      {
        if (qword_10006DD88 != -1)
        {
          swift_once();
        }

        v62 = *v58;
        v63 = v58[1];

        v61 = sub_100033E68(v62, v63);
      }

      else
      {
        if (v57 != 3)
        {
          if (qword_10006DD38 != -1)
          {
            sub_100004E14();
          }

          v65 = sub_100046D1C();
          sub_100004D64(v65, qword_1000714A0);

          v66 = sub_100046D0C();
          v67 = sub_10004700C();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v208 = swift_slowAlloc();
            *v68 = 136315394;
            *(v68 + 4) = sub_10000BF50("init(assetConfig:shouldSubscribe:clientID:modelOverridePath:isSpelling:)");
            *(v68 + 12) = 2080;
            *(v68 + 14) = sub_100004EB4(v194, v50, &v208);
            _os_log_impl(&_mh_execute_header, v66, v67, "LSRAssets.%s %s assets are not cached by an asset delegate.", v68, 0x16u);
            swift_arrayDestroy();
            sub_10000B818();

            sub_100002BBC();
          }

          v64 = 0;
          goto LABEL_18;
        }

        if (qword_10006DD80 != -1)
        {
          swift_once();
        }

        v59 = *v58;
        v60 = v58[1];

        v61 = sub_100033D7C(v59, v60);
      }

      v64 = v61;

LABEL_18:
      if (qword_10006DD38 != -1)
      {
        sub_100004E14();
      }

      v69 = sub_100046D1C();
      sub_100004D64(v69, qword_1000714A0);
      v70 = v205;

      v71 = sub_100046D0C();
      v72 = sub_10004701C();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = v50;
        v74 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v208 = v175;
        *v74 = 136315906;
        *(v74 + 4) = sub_10000BF50("init(assetConfig:shouldSubscribe:clientID:modelOverridePath:isSpelling:)");
        *(v74 + 12) = 2080;
        if (v64)
        {
          v75 = 0x646E756F46;
        }

        else
        {
          v75 = 28494;
        }

        if (v64)
        {
          v76 = 0xE500000000000000;
        }

        else
        {
          v76 = 0xE200000000000000;
        }

        v77 = v53;
        v78 = v58;
        v79 = sub_100004EB4(v75, v76, &v208);

        *(v74 + 14) = v79;
        *(v74 + 22) = 2080;
        *(v74 + 24) = sub_100004EB4(v194, v73, &v208);
        *(v74 + 32) = 2080;
        v80 = *v78;
        v81 = v78[1];
        v53 = v77;

        v82 = sub_100004EB4(v80, v81, &v208);

        *(v74 + 34) = v82;
        sub_100023294();
        _os_log_impl(v83, v84, v85, v86, v87, 0x2Au);
        swift_arrayDestroy();
        sub_100002BBC();

        sub_10000B818();
      }

      v88 = v197;
      v47 = v177;
      if (v64)
      {
        (*(v197 + 16))(&v205[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot], v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot, v53);
        goto LABEL_46;
      }

      v55 = [objc_opt_self() sharedInstance];
      [v55 refreshAssetSetWithConfig:v198 regionId:0];
      v50 = v196;
    }
  }

LABEL_32:
  if (qword_10006DD38 != -1)
  {
    sub_100004E14();
  }

  v89 = sub_100046D1C();
  sub_100004D64(v89, qword_1000714A0);
  v90 = v205;

  v91 = sub_100046D0C();
  v92 = sub_10004701C();

  v93 = os_log_type_enabled(v91, v92);
  v177 = v90;
  if (v93)
  {
    v94 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    *v94 = 136315650;
    *(v94 + 4) = sub_10000BF50("init(assetConfig:shouldSubscribe:clientID:modelOverridePath:isSpelling:)");
    v95 = v47;
    *(v94 + 12) = 2080;
    *(v94 + 14) = sub_100004EB4(v194, v50, &v208);
    *(v94 + 22) = 2080;
    v96 = v200;
    v97 = *v200;
    v98 = v200[1];

    v99 = sub_100004EB4(v97, v98, &v208);
    v47 = v95;

    *(v94 + 24) = v99;
    sub_100023294();
    _os_log_impl(v100, v101, v102, v103, v104, 0x20u);
    swift_arrayDestroy();
    sub_100002BBC();

    sub_10000B818();

    v105 = v202;
  }

  else
  {

    v105 = v202;
    v96 = v200;
  }

  v107 = *v96;
  v106 = v96[1];
  v108 = *&v205[v47];

  v109 = sub_100046E4C();

  v110 = sub_100046E4C();
  v111 = v192;
  sub_10000905C(v204, v192, &qword_10006FED0, &qword_10004CF38);
  v113 = v96;
  if (sub_100004844(v111, 1, v53) == 1)
  {
    v114 = 0;
    v88 = v197;
  }

  else
  {
    sub_100046A9C(v112);
    v114 = v115;
    v88 = v197;
    v116 = sub_10000BDAC();
    v117(v116);
  }

  v118 = objc_opt_self();
  v208 = 0;
  v119 = [v118 modelRootWithLanguage:v109 assetType:v108 shouldSubscribe:v193 & 1 clientID:v110 modelOverrideURL:v114 isSpelling:v199 & 1 error:&v208];

  v120 = v208;
  if (!v119)
  {
    v130 = v208;

    v131 = sub_100046A7C();

    v202 = v131;
    swift_willThrow();

    goto LABEL_44;
  }

  sub_100046E5C();
  v121 = v120;

  (*(v181 + 104))(v182, enum case for URL.DirectoryHint.isDirectory(_:), v183);
  sub_1000045DC(v178, 1, 1, v53);
  v122 = v180;
  sub_100046AFC();
  v123 = *(v88 + 16);
  v124 = v179;
  v123(v179, v122, v53);
  v125 = type metadata accessor for LSRModelInfo();
  v126 = *(v125 + 48);
  v127 = *(v125 + 52);
  swift_allocObject();
  v128 = v198;
  v129 = sub_100034160(v124, v128);
  v202 = v105;
  if (v105)
  {
    (*(v88 + 8))(v122, v53);

    v113 = v200;
LABEL_44:
    sub_1000064CC(v204, &qword_10006FED0, &qword_10004CF38);
    v132 = v205;
    (*(v187 + 8))(&v205[v186], v190);
    v133 = v113[1];

    v134 = *(v184 + 1);

    sub_1000064CC(&v132[v185], &qword_10006FED0, &qword_10004CF38);
    v135 = v191;
    sub_10000CCCC(*&v191[v189]);
    sub_10000CCCC(*&v135[v188]);
    type metadata accessor for LSRAssets();
    v136 = *((swift_isaMask & *v177) + 0x30);
    v137 = *((swift_isaMask & *v177) + 0x34);
    swift_deallocPartialClassInstance();
    return v135;
  }

  v64 = v129;
  v138 = sub_10000BDAC();
  v139(v138);
  v123(&v205[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot], (v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot), v53);
LABEL_46:
  v140 = OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile;
  swift_beginAccess();
  v141 = v64 + v140;
  v142 = v53;
  v143 = v176;
  sub_10000905C(v141, v176, &qword_10006FED0, &qword_10004CF38);
  result = sub_100004844(v143, 1, v142);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_58;
  }

  result = (*(v88 + 32))(&v205[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_configurationFile], v143, v142);
  v145 = *(v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion + 8);
  if (!v145)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v146 = v205;
  v147 = &v205[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelVersion];
  *v147 = *(v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion);
  *(v147 + 1) = v145;
  v148 = *(v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType + 8);
  v149 = &v146[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType];
  *v149 = *(v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType);
  *(v149 + 1) = v148;
  v150 = *(v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);
  if (!v150)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v151 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelTaskNames;
  *&v205[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelTaskNames] = v150;
  v152 = *(v64 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);
  if (v152)
  {

    *&v205[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelSamplingRates] = v152;
    if (qword_10006DD38 != -1)
    {
      sub_100004E14();
    }

    v153 = sub_100046D1C();
    sub_100004D64(v153, qword_1000714A0);
    v154 = v205;
    v155 = v196;

    v156 = sub_100046D0C();
    v157 = sub_100046FFC();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v207 = v203;
      *v158 = 136315906;
      *(v158 + 4) = sub_100004EB4(0xD000000000000048, 0x800000010004EE70, &v207);
      v201 = v151;
      *(v158 + 12) = 2080;
      v159 = sub_100004EB4(v194, v155, &v207);

      *(v158 + 14) = v159;
      *(v158 + 22) = 2080;
      v160 = *v200;
      v161 = v200[1];

      v162 = sub_100004EB4(v160, v161, &v207);

      *(v158 + 24) = v162;
      *(v158 + 32) = 2080;
      v163 = *&v205[v201];

      v164 = sub_100046F0C();
      v166 = v165;

      v167 = sub_100004EB4(v164, v166, &v207);

      *(v158 + 34) = v167;
      sub_100023294();
      _os_log_impl(v168, v169, v170, v171, v172, 0x2Au);
      swift_arrayDestroy();
      sub_100002BBC();

      sub_10000B818();
    }

    else
    {
    }

    v173 = type metadata accessor for LSRAssets();
    v206.receiver = v154;
    v206.super_class = v173;
    v135 = objc_msgSendSuper2(&v206, "init");

    sub_1000064CC(v204, &qword_10006FED0, &qword_10004CF38);
    return v135;
  }

LABEL_60:
  __break(1u);
  return result;
}

id sub_100020E50()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData;
  v3 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___contextualData);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = sub_100046ADC();
    v7 = v6;
    v8 = objc_allocWithZone(_EARContextualData);
    v4 = sub_100025608(v5, v7);
    v9 = *(v1 + v2);
    *(v1 + v2) = v4;
    v10 = v4;
    sub_10000CCCC(v9);
  }

  sub_10000CCDC(v3);
  return v4;
}

id sub_100020EF4()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper;
  v2 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets____lazy_storage___geoLMHelper);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100022510(*(v0 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language), *(v0 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language + 8));
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10000CCCC(v4);
  }

  sub_10000CCDC(v2);
  return v3;
}

void sub_100020F74(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100046B0C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot);
  v9 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelVersion);
  v10 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelVersion + 8);
  v11 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelTaskNames);
  v12 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType + 8);
  v13 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelSamplingRates);
  v14 = *(v13 + 16);
  if (v14)
  {
    v22[1] = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType);
    v22[3] = v9;
    v23 = a2;
    v24 = _swiftEmptyArrayStorage;
    v22[2] = v10;

    sub_1000472AC();
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;
      [objc_allocWithZone(NSNumber) initWithInteger:v16];
      sub_10004728C();
      v17 = v24[2];
      sub_1000472BC();
      sub_1000472CC();
      sub_10004729C();
      --v14;
    }

    while (v14);
    a2 = v23;
  }

  else
  {
    v18 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelVersion + 8);
  }

  v19 = objc_allocWithZone(_SFModelProperties);
  v21 = sub_100022E38(v7, v20);
  (a2)[2](a2, v21);

  _Block_release(a2);
}

void sub_100021218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD00000000000003FLL, 0x800000010004EE30, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "LSRAssets.%s", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v16 = sub_100020E50();
  if (v16)
  {
    v17 = v16;
    aBlock[4] = sub_100023284;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000217C4;
    aBlock[3] = &unk_100065FB0;
    v18 = _Block_copy(aBlock);

    sub_1000231F4(a1, a2, a3, a4, v18, v17, &selRef_iterNamedEntitySourceWithApplication_task_block_);
    _Block_release(v18);
  }

  v19 = sub_100046D0C();
  v20 = sub_100046FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_100004EB4(0xD00000000000003FLL, 0x800000010004EE30, aBlock);
    *(v21 + 12) = 2048;
    swift_beginAccess();
    *(v21 + 14) = sub_10000AD40(*(v15 + 16));

    _os_log_impl(&_mh_execute_header, v19, v20, "LSRAssets.%s replying with %ld sources", v21, 0x16u);
    sub_1000050D4(v22);
  }

  else
  {
  }

  swift_beginAccess();
  v23 = *(v15 + 16);
  sub_1000029E4(0, &qword_10006FB88, _SFContextualNamedEntitySource_ptr);

  isa = sub_100046EEC().super.isa;
  (a6)[2](a6, isa);

  _Block_release(a6);
}

uint64_t sub_1000215FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v17 = &v21 - v16;
  if (!a1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = sub_100033C00(a1);
  sub_10000905C(a2, v17, &qword_10006FB80, &unk_10004D060);
  v19 = sub_100046B7C();
  result = sub_100004844(v17, 1, v19);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_10000905C(a3, v14, &qword_10006FB80, &unk_10004D060);
  result = sub_100004844(v14, 1, v19);
  if (result != 1)
  {
    v20 = objc_allocWithZone(_SFContextualNamedEntitySource);
    sub_100022F90(v18, v17, v14, a4);
    swift_beginAccess();
    sub_100046EDC();
    sub_100023484(*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_100046F3C();
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000217C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (a2)
  {
    a2 = sub_100046FBC();
  }

  if (a3)
  {
    sub_100046B6C();
    v19 = sub_100046B7C();
    v20 = 0;
  }

  else
  {
    v19 = sub_100046B7C();
    v20 = 1;
  }

  v21 = 1;
  sub_1000045DC(v16, v20, 1, v19);
  if (a4)
  {
    sub_100046B6C();
    v21 = 0;
  }

  v22 = sub_100046B7C();
  sub_1000045DC(v14, v21, 1, v22);

  v18(a2, v16, v14, a5);

  sub_1000064CC(v14, &qword_10006FB80, &unk_10004D060);
  return sub_1000064CC(v16, &qword_10006FB80, &unk_10004D060);
}

void sub_100021990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD000000000000041, 0x800000010004EDB0, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "LSRAssets.%s", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v16 = sub_100020E50();
  if (v16)
  {
    v17 = v16;
    aBlock[4] = sub_1000231D4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100021EE0;
    aBlock[3] = &unk_100065F60;
    v18 = _Block_copy(aBlock);

    sub_1000231F4(a1, a2, a3, a4, v18, v17, &selRef_iterRankedContactSourceWithApplication_task_block_);
    _Block_release(v18);
  }

  v19 = sub_100046D0C();
  v20 = sub_100046FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_100004EB4(0xD000000000000041, 0x800000010004EDB0, aBlock);
    *(v21 + 12) = 2048;
    swift_beginAccess();
    *(v21 + 14) = sub_10000AD40(*(v15 + 16));

    _os_log_impl(&_mh_execute_header, v19, v20, "LSRAssets.%s replying with %ld sources", v21, 0x16u);
    sub_1000050D4(v22);
  }

  else
  {
  }

  swift_beginAccess();
  v23 = *(v15 + 16);
  sub_1000029E4(0, &qword_10006FB78, _SFContextualRankedContactSource_ptr);

  isa = sub_100046EEC().super.isa;
  (a6)[2](a6, isa);

  _Block_release(a6);
}

uint64_t sub_100021D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12 - 8);
  v16 = &v18 - v15;
  if (a2)
  {
    sub_10000905C(a3, &v18 - v15, &qword_10006FB80, &unk_10004D060);
    v17 = sub_100046B7C();
    result = sub_100004844(v16, 1, v17);
    if (result != 1)
    {
      objc_allocWithZone(_SFContextualRankedContactSource);

      sub_10002308C(a1, a2, v16, a4 & 1, a5);
      swift_beginAccess();
      sub_100046EDC();
      sub_100023484(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_100046F3C();
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100021EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (!a2)
  {
    v16 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = sub_100046B7C();
    v19 = 1;
    goto LABEL_6;
  }

  v16 = sub_100046E5C();
  a2 = v17;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_100046B6C();
  v18 = sub_100046B7C();
  v19 = 0;
LABEL_6:
  sub_1000045DC(v13, v19, 1, v18);

  v15(v16, a2, v13, a4, a5);

  return sub_1000064CC(v13, &qword_10006FB80, &unk_10004D060);
}

uint64_t sub_100022040(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = sub_100046E5C();
  v11 = v10;
  v12 = sub_100046E5C();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
}

void sub_100022108(double a1, double a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v7 = sub_100046D1C();
  sub_100004D64(v7, qword_1000714B8);
  v8 = sub_100046D0C();
  v9 = sub_100046FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100004EB4(0xD00000000000002ELL, 0x800000010004ED50, &v24);
    _os_log_impl(&_mh_execute_header, v8, v9, "LSRAssets.%s", v10, 0xCu);
    sub_1000050D4(v11);
  }

  v12 = sub_100020EF4();
  if (v12)
  {
    sub_100046BDC();
    v13 = sub_100046E4C();

    v14 = [v12 regionIdForLocale:v13 latitude:a1 longitude:a2];

    if (v14)
    {
      v12 = sub_100046E5C();
      v16 = v15;

      goto LABEL_10;
    }

    v12 = 0;
  }

  v16 = 0;
LABEL_10:

  v17 = sub_100046D0C();
  v18 = sub_100046FFC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100004EB4(0xD00000000000002ELL, 0x800000010004ED50, &v26);
    *(v19 + 12) = 2080;
    if (v16)
    {
      v24 = 34;
      v25 = 0xE100000000000000;
      v28._countAndFlagsBits = v12;
      v28._object = v16;
      sub_100046EBC(v28);
      v29._countAndFlagsBits = 34;
      v29._object = 0xE100000000000000;
      sub_100046EBC(v29);
      v20 = v24;
      v21 = v25;
    }

    else
    {
      v21 = 0xE300000000000000;
      v20 = 7104878;
    }

    v22 = sub_100004EB4(v20, v21, &v26);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "LSRAssets.%s replying %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  if (v16)
  {
    v23 = sub_100046E4C();
  }

  else
  {
    v23 = 0;
  }

  (a4)[2](a4, v23);

  _Block_release(a4);
}

id sub_100022510(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v56 - v8;
  v10 = sub_100046B0C();
  v11 = sub_100004E00(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002B2C();
  v18 = (v17 - v16);
  sub_1000029E4(0, &qword_10006FB70, SFEntitledAssetConfig_ptr);

  v19 = sub_100022A54(a1, a2, 4);
  v20 = objc_opt_self();
  v21 = [v20 sharedInstance];
  v56[1] = v3;
  v22 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_clientID);
  v23 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_clientID + 8);
  v24 = sub_100046E4C();
  v57 = v19;
  v25 = [v21 installedAssetWithConfig:v19 regionId:0 shouldSubscribe:1 subscriberId:v24 expiration:0];

  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = sub_100046E5C();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

LABEL_8:
    if (qword_10006DD40 != -1)
    {
      sub_100002B5C();
    }

    v33 = sub_100046D1C();
    sub_100004D64(v33, qword_1000714B8);

    v34 = sub_100046D0C();
    v35 = sub_10004700C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100004EB4(a1, a2, &v58);
      _os_log_impl(&_mh_execute_header, v34, v35, "GeoLM: region mapping json file is nil Or there is no regionMapping for given language=%s", v36, 0xCu);
      sub_1000050D4(v37);
      sub_10000B818();

      sub_100002BBC();
    }

    goto LABEL_13;
  }

  v30 = [v20 jsonFilenameForAssetType:4];
  sub_100046E5C();

  sub_100046AEC();

  if (sub_100004844(v9, 1, v10) == 1)
  {

    sub_1000064CC(v9, &qword_10006FED0, &qword_10004CF38);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    sub_100046AAC();

    v39 = *(v13 + 8);
    v39(v9, v10);
    v31 = sub_100046ACC(0);
    v32 = v40;
    v39(v18, v10);
  }

  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v41 = sub_100046D1C();
  sub_100004D64(v41, qword_1000714B8);

  v42 = sub_100046D0C();
  v43 = sub_100046FFC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v44 = 136315138;
    if (v32)
    {
      v46 = v31;
    }

    else
    {
      v46 = 7104878;
    }

    if (v32)
    {
      v47 = v32;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    v48 = sub_100004EB4(v46, v47, &v58);

    *(v44 + 4) = v48;
    sub_100023294();
    _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
    sub_1000050D4(v45);
    sub_100002BBC();

    sub_10000B818();
  }

  if (v32)
  {
    sub_100046BDC();
    v54 = objc_allocWithZone(_EARGeoLMHelper);
    v38 = sub_10002314C();

    return v38;
  }

LABEL_13:

  return 0;
}

id sub_100022A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_100046E4C();

  v6 = [v4 initWithLanguage:v5 assetType:a3];

  return v6;
}

id sub_100022B10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LSRAssets();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LSRAssets()
{
  result = qword_10006FB58;
  if (!qword_10006FB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022CF8()
{
  v0 = sub_100046C3C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000020D4();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_100046B0C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

id sub_100022E38@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  v3 = v2;
  sub_100046A9C(a2);
  v6 = v5;
  v7 = sub_100046E4C();

  isa = sub_100046EEC().super.isa;

  v9 = sub_100046E4C();

  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  v10 = sub_100046EEC().super.isa;

  v11 = [v3 initWithModelRoot:v6 modelVersion:v7 modelTaskNames:isa modelQualityType:v9 modelSamplingRates:v10];

  v12 = sub_100046B0C();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id sub_100022F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = sub_100046EEC().super.isa;

  v10 = sub_100046B4C().super.isa;
  v11 = sub_100046B4C().super.isa;
  v12 = [v5 initWithSourceApplications:isa fromDate:v10 toDate:v11 limit:a4];

  v13 = sub_100046B7C();
  v14 = *(*(v13 - 8) + 8);
  v14(a3, v13);
  v14(a2, v13);
  return v12;
}

id sub_10002308C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_100046E4C();

  isa = sub_100046B4C().super.isa;
  v12 = [v6 initWithSourceApplication:v10 rankDate:isa contactOnly:a4 & 1 limit:a5];

  v13 = sub_100046B7C();
  (*(*(v13 - 8) + 8))(a3, v13);
  return v12;
}

id sub_10002314C()
{
  v1 = sub_100046E4C();

  v2 = sub_100046E4C();

  v3 = [v0 initWithLocale:v1 config:v2];

  return v3;
}

uint64_t sub_1000231DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000231F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, SEL *a7)
{
  v10 = sub_100046E4C();
  v11 = sub_100046E4C();
  [a6 *a7];
}

uint64_t sub_1000232A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

id sub_10002333C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARModelContextDelegateInterface();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000233DC()
{
  sub_1000175D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100023488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
}

char *sub_1000234BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_100025B48((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_10004725C();
  }

  result = sub_10004736C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100023550(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000ECEC(&qword_10006FC50, &unk_10004D0C0);
    sub_100026488();
    v2 = sub_1000473AC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v34[0] = *v12;
    *(&v34[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100026414(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100026414(v33, v34);
    result = sub_1000471AC(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v7[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = v2[6] + 40 * v20;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    result = sub_100026414(v34, (v2[7] + 32 * v20));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100023810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000ECEC(&qword_10006FC50, &unk_10004D0C0);
    v2 = sub_1000473AC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100005078(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100026414(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100026414(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100026414(v31, v32);
    result = sub_1000471AC(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_100026414(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_100023AD4(void *result)
{
  if (result)
  {
    v1 = result;
    v8 = result;
    type metadata accessor for LSRError(0);
    sub_100025B04(&qword_10006E820, type metadata accessor for LSRError);
    sub_100046A1C();
    if ((v7 - 2) >= 2 && (v7 - 101) >= 2)
    {
      if (v7 == 6)
      {
        type metadata accessor for SFSpeechError(0);
        sub_10004704C();
        sub_100046A3C();
        sub_100005440();
        sub_100025B04(v4, v5);
        sub_100046A5C();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      type metadata accessor for SFSpeechError(0);
      sub_10004707C();
      sub_100046A3C();
      sub_100005440();
      sub_100025B04(v2, v3);
      sub_100046A5C();

      return v8;
    }
  }

  return result;
}

uint64_t sub_100023C84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v188) = a8;
  v181 = a6;
  v182 = a7;
  v180 = a5;
  v186 = a3;
  v187 = a4;
  v9 = sub_100046C3C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100046E3C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v178 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100046B0C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v174 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026450();
  __chkstk_darwin(v20);
  sub_100026470();
  v175 = v21;
  sub_100026450();
  __chkstk_darwin(v22);
  sub_100026470();
  v176 = v23;
  sub_100026450();
  __chkstk_darwin(v24);
  sub_100026470();
  v177 = v25;
  sub_100026450();
  v27 = __chkstk_darwin(v26);
  v29 = &v165 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v165 - v31;
  v33 = __chkstk_darwin(v30);
  v34 = __chkstk_darwin(v33);
  v36 = &v165 - v35;
  __chkstk_darwin(v34);
  sub_100026470();
  v183 = v37;
  sub_100026450();
  __chkstk_darwin(v38);
  v184 = &v165 - v39;
  v40 = sub_1000261EC(a1);
  if (v41 >> 60 != 15)
  {
    sub_10000C198(v40, v41);
    if (qword_10006DD40 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_33;
  }

  v173 = v29;
  v170 = v32;
  v42 = sub_1000262A8(a1, &selRef_enhancedContextualStrings, &qword_10006FC68, _SFEnhancedContextualString_ptr);
  if (v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  v44 = sub_100026250(a1);
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
  }

  v185 = v45;
  v46 = sub_1000262A8(a1, &selRef_contextualNamedEntities, &qword_10006FC60, _SFContextualNamedEntityCodingObject_ptr);
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  v190 = v43;
  v179 = sub_10000AD1C(v43);
  if (!v179 && !v185[2] && !sub_10000AD1C(v47))
  {

    return 0;
  }

  if (v188)
  {
    if (qword_10006DD30 != -1)
    {
      sub_10000418C();
    }

    mach_continuous_time();
    sub_10000D8DC();
  }

  v172 = v16;
  if (v179)
  {
    v171 = v17;

    sub_100002BC8();
    v48 = v184;
    sub_100005BC4();
    sub_10000C690();
    v49 = sub_100046ADC();
    sub_100046ADC();
    v50 = objc_allocWithZone(_EARJitProfile);
    v51 = v187;

    v52 = sub_100004B70();
    if (v52)
    {
      v53 = v52;
      v54 = sub_10000AD40(v190);
      v55 = v171;
      if (!v54)
      {
LABEL_31:
        sub_1000029E4(0, &qword_10006FC38, _EARWordPart_ptr);
        sub_100026488();
        sub_100046EEC();
        sub_100026494();

        v74 = [v53 jitProfileFromWordsWithMetadata:v49];

        v75 = sub_100046B3C();
        v77 = v76;

        v78 = *(v55 + 8);
        sub_10002647C();
        v78();
        (v78)(v48, v74);
LABEL_52:
        v119 = v189;
LABEL_53:
        v120 = v179;
        if (v188)
        {
          v110 = v185;
          if (qword_10006DD30 != -1)
          {
            goto LABEL_106;
          }

          goto LABEL_55;
        }

LABEL_82:

        return v75;
      }

      v49 = v54;
      v187 = v53;
      v191 = _swiftEmptyArrayStorage;
      sub_1000472AC();
      if ((v49 & 0x8000000000000000) == 0)
      {
        v36 = 0;
        v56 = v190 & 0xC000000000000001;
        do
        {
          if (v56)
          {
            v57 = sub_10004725C();
          }

          else
          {
            v57 = *(v190 + 8 * v36 + 32);
          }

          v58 = v57;
          v59 = sub_10002631C(v57, &selRef_tagName);
          if (v60)
          {
            v61 = v59;
            v62 = v60;
            v63 = [v58 context];
            v64 = sub_100046E5C();
            v66 = v65;

            v67 = objc_allocWithZone(_EARWordPart);
            sub_100025724(v64, v66, &_swiftEmptySetSingleton, v61, v62, 1, 0, 0);
          }

          else
          {
            v68 = [v58 context];
            v69 = sub_100046E5C();
            v71 = v70;

            v72 = objc_allocWithZone(_EARWordPart);
            sub_100025834(v69, v71, &_swiftEmptySetSingleton, 7);
          }

          ++v36;
          sub_10004728C();
          v73 = v191[2];
          sub_1000472BC();
          sub_1000472CC();
          sub_10004729C();
        }

        while (v49 != v36);
        v55 = v171;
        v48 = v184;
        v53 = v187;
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {

      sub_10004703C();
      sub_100026428();
      v51 = v171;
      if (qword_10006DD78 == -1)
      {
LABEL_40:
        v91 = off_100071650;
        v92 = off_100071650;
        sub_100046C2C();
        sub_100005C28();
        sub_100004124();
        sub_10000BF74();
        sub_1000264A0();
        v93 = *(v51 + 8);
        v75 = (v51 + 8);
        sub_10002647C();
        v93();
        (v93)(v48, v91);
        return v75;
      }
    }

    sub_100004E34();
    goto LABEL_40;
  }

  if (v185[2])
  {
    v83 = v17;

    sub_100002BC8();
    sub_100005BC4();
    sub_10000C690();
    sub_100046ADC();
    sub_100046ADC();
    v84 = objc_allocWithZone(_EARJitProfile);
    v75 = v187;

    v85 = sub_100004B70();
    if (v85)
    {
      v86 = v85;
      isa = sub_100046EEC().super.isa;
      v88 = [v86 jitProfileFromContextualStrings:isa];

      v75 = sub_100046B3C();
      v77 = v89;

      v90 = *(v83 + 8);
      sub_10002647C();
      v90();
      (v90)(v36, v86);
      goto LABEL_52;
    }

    sub_10004703C();
    sub_100026428();
    if (qword_10006DD78 == -1)
    {
LABEL_49:
      v116 = off_100071650;
      v117 = off_100071650;
      sub_100046C2C();
      sub_100005C28();
      sub_100004124();
      sub_10000BF74();
      sub_1000264A0();
      v118 = *(v83 + 8);
      sub_10002647C();
      v118();
      (v118)(v36, v116);
      return v75;
    }

LABEL_110:
    sub_100004E34();
    goto LABEL_49;
  }

  v94 = sub_10000AD1C(v47);
  if (!v94)
  {

    v75 = 0;
    v77 = 0xF000000000000000;
    goto LABEL_52;
  }

  v166 = v94;
  v184 = v47;
  v167 = v12;
  v171 = v17;
  sub_100002BC8();
  sub_100005BC4();
  sub_10000C690();
  sub_100046AAC();
  sub_100046AAC();
  sub_100046AAC();
  sub_100046AAC();
  v183 = sub_100046ADC();
  v169 = v95;
  v96 = v187;

  v168 = sub_100046ADC();
  v98 = v97;
  v99 = sub_100046ADC();
  v101 = v100;
  v36 = sub_100046ADC();
  v103 = v102;
  v104 = sub_100046ADC();
  v106 = v105;
  v107 = objc_allocWithZone(_EARUserProfileBuilder);
  v108 = v189;
  v109 = sub_1000258CC(v183, v169, v186, v96, 0, 0, 0, v168, v98, v99, v101, v36, v103, v104, v106, 1);
  v77 = v108;
  if (v108)
  {

    v110 = v178;
LABEL_44:

    v111 = sub_10004703C();
    sub_100046DCC();
    v112 = v170;
    v75 = v173;
    if (qword_10006DD78 != -1)
    {
      sub_100004E34();
    }

    v113 = off_100071650;
    sub_100046C2C();
    sub_100005C28();
    sub_100004124();
    sub_10000BF74();
    sub_1000264A0();
    v114 = sub_10002645C();
    v111(v114);
    (v111)(v175, v110);
    (v111)(v176, v110);
    (v111)(v177, v110);
    (v111)(v75, v110);
    v115 = v112;
LABEL_47:
    (v111)(v115, v110);
    return v75;
  }

  v145 = v109;
  v110 = v178;
  if (!v109)
  {
    goto LABEL_44;
  }

  v75 = v170;
  v146 = sub_100046ADC();
  v148 = v147;
  v149 = objc_allocWithZone(_EARContextualData);
  v150 = sub_100025608(v146, v148);
  if (!v150)
  {

    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34();
    }

    v111 = off_100071650;
    v159 = off_100071650;
    sub_100046C2C();
    sub_100005C28();
    sub_100004124();
    sub_100046D5C();
    sub_1000264A0();

    v160 = sub_10002645C();
    v111(v160);
    (v111)(v175, v110);
    (v111)(v176, v110);
    (v111)(v177, v110);
    (v111)(v173, v110);
    v115 = v75;
    goto LABEL_47;
  }

  v151 = v150;
  v120 = 0;
  v152 = v184;
  v75 = (v184 & 0xC000000000000001);
  v153 = v184 & 0xFFFFFFFFFFFFFF8;
  v119 = v166;
  while (1)
  {
    if (v119 == v120)
    {

      v155 = sub_100046B2C().super.isa;
      v156 = [v145 createInlineLmeUserDataForContextData:v151 speechProfile:v155];

      if (v156)
      {
        v157 = sub_100046B3C();
        v36 = v158;
      }

      else
      {

        v157 = 0;
        v36 = 0xF000000000000000;
      }

      v119 = 0;
      v161 = v170;
      v162 = v173;
      v163 = v172;
      v164 = *(v171 + 8);
      v164(v174, v172);
      v164(v175, v163);
      v164(v176, v163);
      v164(v177, v163);
      v164(v162, v163);
      v164(v161, v163);
      v75 = v157;
      v77 = v36;
      goto LABEL_53;
    }

    if (v75)
    {
      v154 = sub_10004725C();
    }

    else
    {
      if (v120 >= *(v153 + 16))
      {
        goto LABEL_105;
      }

      v154 = *(v152 + 8 * v120 + 32);
    }

    v110 = v154;
    if (__OFADD__(v120, 1))
    {
      break;
    }

    v191 = v154;
    sub_100025348(&v191, v151);

    ++v120;
    v152 = v184;
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  sub_10000418C();
LABEL_55:
  v121 = qword_100071498;
  v122 = mach_continuous_time();
  v123 = v122;
  if (!v120)
  {

LABEL_81:
    sub_10000D914(v180, v181, v182, v123, v110, v141, v142, v143, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176);
    goto LABEL_82;
  }

  v184 = v122;
  v186 = v121;
  v187 = v77;
  v188 = v75;
  v189 = v119;

  a1 = 0;
  v191 = _swiftEmptyArrayStorage;
  v124 = v190 & 0xC000000000000001;
  v125 = v190 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v120 == a1)
    {

      v128 = v191;
      v129 = sub_10000AD40(v191);
      if (v129)
      {
        v83 = v129;
        v191 = _swiftEmptyArrayStorage;
        sub_100004A54(0, v129 & ~(v129 >> 63), 0);
        if (v83 < 0)
        {
          __break(1u);
          goto LABEL_110;
        }

        v130 = 0;
        v110 = v191;
        v190 = v128 & 0xC000000000000001;
        v131 = v128;
        do
        {
          if (v190)
          {
            v132 = sub_10004725C();
          }

          else
          {
            v132 = *(v128 + 8 * v130 + 32);
          }

          v133 = v132;
          v134 = [v132 context];
          v135 = sub_100046E5C();
          v137 = v136;

          v191 = v110;
          v139 = v110[2];
          v138 = v110[3];
          if (v139 >= v138 >> 1)
          {
            sub_100004A54((v138 > 1), v139 + 1, 1);
            v110 = v191;
          }

          ++v130;
          v110[2] = v139 + 1;
          v140 = &v110[2 * v139];
          v140[4] = v135;
          v140[5] = v137;
          v128 = v131;
        }

        while (v83 != v130);
      }

      else
      {

        v110 = _swiftEmptyArrayStorage;
      }

      v75 = v188;
      v123 = v184;
      goto LABEL_81;
    }

    if (v124)
    {
      v126 = sub_10004725C();
    }

    else
    {
      if (a1 >= *(v125 + 16))
      {
        goto LABEL_102;
      }

      v126 = *(v190 + 8 * a1 + 32);
    }

    v75 = v126;
    if (!__OFADD__(a1, 1))
    {
      if ([v126 isLoggable])
      {
        sub_10004728C();
        v127 = v191[2];
        sub_1000472BC();
        sub_1000472CC();
        sub_10004729C();
      }

      else
      {
      }

      ++a1;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  swift_once();
LABEL_33:
  v79 = sub_100046D1C();
  sub_100004D64(v79, qword_1000714B8);
  v80 = sub_100046D0C();
  v81 = sub_100046FFC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "Using JIT profile data from context", v82, 2u);
  }

  return sub_1000261EC(a1);
}

uint64_t sub_100024E30(void *a1)
{
  v1 = [a1 recognition];
  v2 = [v1 tokenSausage];

  sub_10000ECEC(&qword_10006FC30, &qword_10004D0B0);
  sub_100026488();
  v3 = sub_100046EFC();

  v4 = sub_100023488(v3);

  if (!v4)
  {
    return 0;
  }

  v5 = sub_100023488(v4);

  if (!v5)
  {
    return 0;
  }

  sub_1000234BC(v5);
  sub_100026494();

  v6 = [v4 tokenName];
  v7 = sub_100046E5C();

  if ([v4 hasSpaceBefore])
  {
    sub_10000B828();

    v7 = v9;
  }

  if ([v4 hasSpaceAfter])
  {

    sub_10000C638();
  }

  return v7;
}

uint64_t sub_100024F98(void *a1)
{
  v1 = [a1 recognition];
  v2 = [v1 tokenSausage];

  sub_10000ECEC(&qword_10006FC30, &qword_10004D0B0);
  v3 = sub_100046EFC();

  if (!*(v3 + 16) || (v4 = *(v3 + 32), , , !v4[2]) || (v5 = v4[4], , , (result = sub_10000AD1C(v5)) == 0))
  {

    return 0;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_10004725C();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_7:
    sub_100026494();

    v8 = [v4 tokenName];
    v9 = sub_100046E5C();

    if ([v4 hasSpaceBefore])
    {
      sub_10000B828();

      v9 = v10;
    }

    if ([v4 hasSpaceAfter])
    {

      sub_10000C638();
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002514C(void *a1)
{
  v1 = [a1 tokens];
  sub_1000029E4(0, &qword_10006FC28, _EARSpeechRecognitionToken_ptr);
  v2 = sub_100046EFC();

  result = sub_10000AD1C(v2);
  if (!result)
  {

    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_10004725C();
    goto LABEL_5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_5:
    sub_100026494();

    v5 = [v1 tokenName];
    v6 = sub_100046E5C();

    if ([v1 hasSpaceBefore])
    {
      sub_10000B828();

      v6 = v7;
    }

    if ([v1 hasSpaceAfter])
    {

      sub_10000C638();
    }

    return v6;
  }

  __break(1u);
  return result;
}

id sub_1000252A8()
{
  sub_1000029E4(0, &qword_10006FC58, &off_100064B68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  off_100071650 = result;
  return result;
}

unint64_t sub_100025310()
{
  v1 = [v0 sensitivityLevel];
  v2 = __CFADD__(v1, 1);
  result = (v1 + 1);
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_100025348(void **a1, void *a2)
{
  v3 = *a1;
  sub_10000ECEC(&qword_10006FC40, &qword_10004D290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CCE0;
  *(inited + 32) = sub_100046E5C();
  *(inited + 40) = v5;
  [v3 sourceFramework];
  isa = sub_100046FDC().super.super.isa;
  v7 = sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  *(inited + 72) = v7;
  *(inited + 48) = isa;
  v8 = sub_100046D8C();
  v9 = [v3 score];
  if (v9)
  {
    v10 = v9;
    v11 = sub_100046E5C();
    v13 = v12;
    v37 = v7;
    *&v36 = v10;
    sub_100026414(&v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v8;
    sub_100025DD0(v35, v11, v13, isUniquelyReferenced_nonNull_native);

    v8 = v38;
  }

  v15 = [v3 category];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100046E5C();
    v19 = v18;
    v37 = v7;
    *&v36 = v16;
    sub_100026414(&v36, v35);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v8;
    sub_100025DD0(v35, v17, v19, v20);

    v8 = v38;
  }

  v21 = sub_10002631C(v3, &selRef_language);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = sub_100046E5C();
    v27 = v26;
    v37 = &type metadata for String;
    *&v36 = v23;
    *(&v36 + 1) = v24;
    sub_100026414(&v36, v35);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v8;
    sub_100025DD0(v35, v25, v27, v28);

    v8 = v38;
  }

  v29 = [v3 content];
  v30 = sub_100046E5C();
  v32 = v31;

  v33 = sub_100023810(v8);

  return sub_10002637C(v30, v32, v33, a2);
}

id sub_100025608(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100046E4C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithConfiguration:v3];

  return v4;
}

id sub_10002566C()
{
  v1 = sub_100046E4C();

  v2 = sub_100046E4C();

  v3 = sub_100046E4C();

  v4 = [v0 initWithConfiguration:v1 ncsRoot:v2 language:v3];

  return v4;
}

id sub_100025724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_100046E4C();

  if (a3)
  {
    v13.super.isa = sub_100046FAC().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  v14 = sub_100046E4C();

  if (a8)
  {
    v15 = sub_100046E4C();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v8 initWithOrthography:v12 pronunciations:v13.super.isa tagName:v14 frequency:a6 phoneticOrthography:v15];

  return v16;
}

id sub_100025834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100046E4C();

  isa = sub_100046FAC().super.isa;

  v8 = [v4 initWithOrthography:v6 pronunciations:isa tag:a4];

  return v8;
}

id sub_1000258CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v30 = sub_100046E4C();

  v18 = sub_100046E4C();

  if (a5)
  {
    v19.super.isa = sub_100046D6C().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  if (a7)
  {
    v20 = sub_100046E4C();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_100046E4C();

  v22 = sub_100046E4C();

  v23 = sub_100046E4C();

  v24 = sub_100046E4C();

  v32 = 0;
  LOBYTE(v29) = a16 & 1;
  v25 = [v31 initWithConfig:v30 language:v18 overrides:v19.super.isa textNormalizationModelRoot:v20 sdapiOverrides:v21 emptyVoc:v22 pgVoc:v23 paramsetHolder:v24 isJit:v29 error:&v32];

  if (v25)
  {
    v26 = v32;
  }

  else
  {
    v27 = v32;
    sub_100046A7C();

    swift_willThrow();
  }

  return v25;
}

uint64_t sub_100025B04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100026488();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100025B48(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100025B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000041D0(a3, a4);
  sub_1000042B0(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
  if (!sub_1000472EC(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_1000041D0(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_10004740C();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_100026040(v18, a3, a4, a1, a2, v23);
  }
}

id sub_100025CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BDC0(a1, a2);
  sub_1000042B0(v4, v5);
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  sub_10000ECEC(&qword_10006FEC0, &qword_10004D270);
  if (!sub_10000ADC0())
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_100034548(v18);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
    result = sub_10004740C();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = v2;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10002613C(v9, v18, v2, v14);

    return v18;
  }
}

_OWORD *sub_100025DD0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000041D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10000ECEC(&qword_10006FC48, &qword_10004D0B8);
  if (!sub_1000472EC(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000041D0(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_10004740C();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    sub_1000050D4(v22);

    return sub_100026414(a1, v22);
  }

  else
  {
    sub_100026180(v16, a2, a3, a1, v21);
  }
}

void sub_100025F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_10000BDC0(a1, a2);
  sub_1000042B0(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_10000ECEC(a4, a5);
  if (!sub_10000ADC0())
  {
    goto LABEL_5;
  }

  v16 = *v6;
  v17 = sub_100034548(v23);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
    sub_10004740C();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v6;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = v5;
  }

  else
  {
    sub_10002613C(v14, v23, v5, v19);

    v22 = v23;
  }
}

unint64_t sub_100026040(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_10002608C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100046C6C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_10002613C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_100026180(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100026414(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000261EC(void *a1)
{
  v1 = [a1 jitProfileData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100046B3C();

  return v3;
}

uint64_t sub_100026250(void *a1)
{
  v1 = [a1 contextualStrings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100046EFC();

  return v3;
}

uint64_t sub_1000262A8(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1000029E4(0, a3, a4);
  v8 = sub_100046EFC();

  return v8;
}

uint64_t sub_10002631C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100046E5C();

  return v4;
}

id sub_10002637C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_100046E4C();

  isa = sub_100046D6C().super.isa;

  v7 = [a4 addNamedEntity:v5 metadata:isa];

  return v7;
}

_OWORD *sub_100026414(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100026428()
{
  v2 = *(v0 - 200);

  return sub_100046DCC();
}

uint64_t sub_10002645C()
{
  v1 = *(v0 - 248);
  v2 = *(*(v0 - 256) + 8);
  return *(v0 - 232);
}

uint64_t sub_1000264A0()
{

  return swift_willThrow();
}

uint64_t sub_1000264B8(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];
  }

  return sub_1000041C4();
}

double sub_1000264F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100005078(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100026518(uint64_t a1)
{
  result = sub_100035098();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_100030B18(result, v3, 0, a1);
  }
}

void sub_100026580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000313BC();
  v15 = v10;
  v16 = v14;
  v17 = v13;
  if (v12)
  {
    v18 = v12;
    v19 = v11;
    v20 = *v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    sub_100025B6C(v19, v18, v17, v16, v21);

    *v10 = a10;
LABEL_5:
    sub_1000313A8();
    return;
  }

  v22 = *v10;
  v23 = sub_1000041D0(v13, v14);
  if (v24)
  {
    v25 = v23;
    v26 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    v29 = *(v28 + 24);
    sub_10000ECEC(&qword_10006FF10, &unk_10004CD10);
    sub_1000472EC(isUniquelyReferenced_nonNull_native, v29);
    v30 = *(*(a10 + 48) + 16 * v25 + 8);

    v31 = *(*(a10 + 56) + 16 * v25 + 8);
    sub_10004730C();

    *v15 = a10;
    goto LABEL_5;
  }

  sub_1000313A8();
}

void sub_1000266D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_100046A6C();
  }

  v4 = *(a3 + 16);
  v5 = sub_1000041C4();
  v8 = v6;
  v7(v5);
}

uint64_t sub_10002673C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100026780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046C3C();
  v7 = sub_100004E00(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10000425C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v31 - v16;
  v18 = sub_10000ECEC(&unk_10006FF20, &qword_10004D2E0);
  v19 = sub_100004250(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v31 - v22;
  v24 = *(a1 + 16);
  sub_1000041AC();
  sub_100030C98(v25, v26);
  v27 = sub_100046FCC();
  v31[4] = a3;
  v32 = v27;
  v31[1] = a1;
  v31[2] = 0;
  v28 = (v9 + 32);
  v29 = (v9 + 8);
  v31[3] = a2;
  while (1)
  {
    sub_100030A58(v23);
    if (sub_100004844(v23, 1, v6) == 1)
    {
      break;
    }

    (*v28)(v14, v23, v6);
    sub_10002E1BC(v17, v14);
    (*v29)(v17, v6);
  }

  return v32;
}

void sub_100026968(unint64_t a1)
{
  sub_10000AD1C(a1);
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  sub_100030BE8(&qword_10006FEA8, &qword_10006F140, NSNumber_ptr);
  v5[1] = sub_100046FCC();
  v2 = sub_10000AD40(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10004725C();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10002E59C(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_100026A7C()
{
  sub_10000BDA0();
  v1[141] = v0;
  v1[140] = v2;
  v1[139] = v3;
  v1[138] = v4;
  v1[137] = v5;
  v1[136] = v6;
  v1[142] = swift_getObjectType();
  v7 = sub_100046E3C();
  sub_100004250(v7);
  v9 = *(v8 + 64) + 15;
  v1[143] = swift_task_alloc();
  v10 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  sub_100004250(v10);
  v12 = *(v11 + 64) + 15;
  v1[144] = swift_task_alloc();
  v13 = sub_100046F9C();
  v1[145] = v13;
  sub_10000BDE8(v13);
  v1[146] = v14;
  v16 = *(v15 + 64);
  v1[147] = sub_100031360();
  v1[148] = swift_task_alloc();
  v17 = sub_100046B0C();
  v1[149] = v17;
  sub_10000BDE8(v17);
  v1[150] = v18;
  v20 = *(v19 + 64);
  v1[151] = sub_100031360();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v21 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  sub_100004250(v21);
  v23 = *(v22 + 64);
  v1[156] = sub_100031360();
  v1[157] = swift_task_alloc();
  v24 = sub_100046C3C();
  sub_100004250(v24);
  v26 = *(v25 + 64) + 15;
  v1[158] = swift_task_alloc();
  v27 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_10000BDE8(v27);
  v1[159] = v28;
  v1[160] = *(v29 + 64);
  v1[161] = sub_100031360();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();

  return _swift_task_switch(sub_100006E0C, 0, 0);
}

uint64_t sub_100026D20()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1416);
  v35 = *(v0 + 1312);
  v37 = *(v0 + 1504);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);

  v10 = sub_100031138();
  v1(v10);
  sub_1000064CC(v35, &unk_10006FB00, &qword_10004C590);
  v36 = *(v0 + 1528);
  v38 = *(v0 + 1600);
  sub_10000AD94();

  sub_1000064CC(v5 + 8, &qword_10006FEB8, &qword_10004D268);
  sub_10003101C();
  if (v3)
  {

    sub_1000064CC(v1 + v9, &qword_10006FB80, &unk_10004D060);
    v11 = v8[1];
  }

  else
  {

    sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr);

    v12 = *(v9 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles);

    sub_1000064CC(v1 + v9, &qword_10006FB80, &unk_10004D060);
    v13 = v8[1];

    sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);

    sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
  }

  v14 = *(v0 + 1312);
  v15 = *(v0 + 1304);
  v16 = *(v0 + 1296);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1264);
  v19 = *(v0 + 1256);
  v20 = *(v0 + 1248);
  v21 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  v29 = *(v0 + 1216);
  v30 = *(v0 + 1208);
  v31 = *(v0 + 1184);
  v32 = *(v0 + 1176);
  v33 = *(v0 + 1152);
  v34 = *(v0 + 1144);
  v22 = *(v0 + 1128);
  type metadata accessor for EARSpeechRecognizer();
  v23 = *((swift_isaMask & *v22) + 0x30);
  v24 = *((swift_isaMask & *v22) + 0x34);
  swift_deallocPartialClassInstance();
  sub_10000BD34(&unk_10004D2A0);

  sub_100004170();

  return v25();
}

uint64_t sub_100027080()
{
  receiver = v0[94].receiver;
  super_class = v0[93].super_class;
  v3 = v0[91].receiver;
  v4 = v0[88].super_class;
  v5 = v0[82].receiver;
  v17 = v0[95].super_class;
  v18 = v0[81].super_class;
  v19 = v0[81].receiver;
  v20 = v0[80].super_class;
  v21 = v0[79].receiver;
  v22 = v0[78].super_class;
  v23 = v0[78].receiver;
  v24 = v0[77].super_class;
  v6 = v0[77].receiver;
  v25 = v0[76].super_class;
  v26 = v0[76].receiver;
  v27 = v0[75].super_class;
  v7 = v0[74].super_class;
  v28 = v0[74].receiver;
  v29 = v0[73].super_class;
  v30 = v0[72].receiver;
  v31 = v0[71].super_class;
  v8 = v0[70].super_class;
  v9 = v0[69].receiver;
  v14 = v0[68].super_class;
  v15 = v0[68].receiver;
  v16 = v0[69].super_class;

  super_class(v6, v7);
  sub_1000064CC(v5, &unk_10006FB00, &qword_10004C590);
  v10 = type metadata accessor for EARSpeechRecognizer();
  v0[65].receiver = v8;
  v0[65].super_class = v10;
  v11 = objc_msgSendSuper2(v0 + 65, "init");

  v12 = v0->super_class;

  return v12(v11);
}

BOOL sub_100027290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_10004745C();
  sub_100046EAC();
  v7 = sub_10004748C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1000473EC();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

BOOL sub_10002737C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000471AC(*(a2 + 40));
  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = v3 & v4;
    v6 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    sub_10000408C(*(a2 + 48) + 40 * v5, v10);
    v8 = sub_1000471BC();
    sub_100030B94(v10);
    v3 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v7;
}

uint64_t sub_100027450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100027478, 0, 0);
}

uint64_t sub_100027478()
{
  sub_10000BF04();
  v1 = sub_100023C84(v0[3], v0[4] + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot, *(v0[4] + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language), *(v0[4] + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language + 8), v0[5], v0[6], v0[7], 1);
  v2 = v0[2];
  *v2 = v1;
  v2[1] = v3;
  sub_100004170();

  return v4();
}

uint64_t sub_10002752C(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    v4 = sub_100046E4C();
    v5 = EtiquetteReplacementsForLanguage(v4);

    if (v5)
    {
      v3 = sub_100046D7C();
    }

    else
    {
      v3 = 0;
    }

    swift_beginAccess();
    v6 = *v2;
    *v2 = v3;

    sub_100030F0C(v6);
  }

  sub_100030F1C(v1);
  return v3;
}

void sub_1000275F8()
{
  v1 = *&v0[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles];

    v4 = 32;
    do
    {
      if (*(v1 + v4) != -1)
      {
        sandbox_extension_release();
      }

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  if (qword_10006DD70 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100071640);
  if (__OFSUB__(qword_100071648, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_100071648;
    os_unfair_lock_unlock(&dword_100071640);
    v5.receiver = v0;
    v5.super_class = type metadata accessor for EARSpeechRecognizer();
    objc_msgSendSuper2(&v5, "dealloc");
  }
}

uint64_t sub_100027854(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v163 = a4;
  v165 = a3;
  v8 = sub_100046F9C();
  v9 = sub_100004E00(v8);
  v154 = v10;
  v155 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000425C();
  v153 = v13 - v14;
  __chkstk_darwin(v15);
  v152 = v151 - v16;
  v17 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v18 = sub_100004250(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000425C();
  v157 = v21 - v22;
  __chkstk_darwin(v23);
  v25 = v151 - v24;
  v26 = sub_100046B0C();
  v27 = sub_100004E00(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_100002B2C();
  v34 = v33 - v32;
  *&v5[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_cpuInstructionsUsedAtStart] = 0;
  v35 = [a1 taskNames];
  v36 = sub_100046FBC();
  v162 = sub_100026518(v36);
  v38 = v37;

  v161 = v38;
  if (!v38)
  {
    __break(1u);
    return result;
  }

  v164 = v5;
  v40 = *&v5[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_assets];
  (*(v29 + 16))(v34, v40 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelRoot, v26);
  v41 = v40 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language;
  v42 = *(v40 + OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language);
  v43 = *(v41 + 8);

  v160 = a2;
  v44 = [a2 asrID];
  if (v44)
  {
    v45 = v44;
    sub_100046BAC();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = sub_100046BBC();
  sub_1000045DC(v25, v46, 1, v47);
  v48 = sub_100023C84(v165, v34, v42, v43, v25, v162, v161, 1);
  v159 = v49;

  sub_1000064CC(v25, &unk_10006FB00, &qword_10004C590);
  (*(v29 + 8))(v34, v26);
  v50 = v164;
  if (v163)
  {
    v51 = v163;
    v52 = [v51 priority];
    if ((v52 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v52 <= 0xFF)
    {
      v53 = v152;
      sub_100046F7C();
      v54 = v153;
      sub_100046F7C();
      v55 = sub_100046F6C();

      v56 = *(v154 + 8);
      v57 = v54;
      v58 = v155;
      v56(v57, v155);
      v56(v53, v58);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_96;
  }

  v55 = 0;
LABEL_10:
  v59 = sub_100030478(v165, &selRef_leftContext);
  v151[1] = v26;
  if (v59)
  {
    if (v59[2])
    {
      v61 = v59[4];
      v60 = v59[5];

      goto LABEL_15;
    }
  }

  v61 = 0;
  v60 = 0;
LABEL_15:
  v62 = &v50[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext];
  v63 = *&v50[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8];
  *v62 = v61;
  v62[1] = v60;

  if ((sub_1000310C8() & 0x40) != 0)
  {
    v64 = 1;
  }

  else if ((sub_1000310C8() & 0x400) != 0 && (v164[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic] & 1) == 0)
  {
    v64 = [a1 concatenateUtterances] ^ 1;
  }

  else
  {
    v64 = 0;
  }

  v51 = *&v164[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer];
  [v51 setAllowUtteranceDelay:(sub_1000310C8() >> 6) & 1];
  v156 = v47;
  v158 = v48;
  if (!v163 || (sub_1000306D8(v163, &selRef_aneContext), !v65))
  {

    sub_1000311E0();
  }

  v66 = sub_100046E4C();

  v67 = sub_100031204();
  [v67 v68];

  v69 = sub_100031164();
  if (v69)
  {
    v70 = v69;
    v71 = [v69 atypicalSpeech];
  }

  else
  {
    v71 = 0;
  }

  [v51 setAtypicalSpeech:v71];
  [v51 setConcatenateUtterances:{objc_msgSend(a1, "concatenateUtterances")}];
  v72 = v163;
  if (!v163 || (sub_1000306D8(v163, &selRef_cpuContext), !v73))
  {

    sub_1000311E0();
  }

  v74 = sub_100046E4C();

  v75 = sub_100031204();
  [v75 v76];

  [v51 setDetectUtterances:{objc_msgSend(a1, "isSingleUtteranceTask") ^ 1}];
  [v51 setDisableAutoPunctuation:(sub_1000310C8() & 2) == 0];
  [v51 setDisablePartialResults:(sub_1000310C8() & 4) == 0];
  v77 = sub_100031164();
  if (v77)
  {
    v78 = v77;
    v79 = [v77 enableFullPayloadCorrection];
  }

  else
  {
    v79 = 0;
  }

  [v51 setEnableFullPayloadCorrection:v79];
  [v51 setEnableVoiceCommands:(sub_1000310C8() >> 9) & 1];
  v80 = [a1 endpointDetectionOptions];
  if (v80)
  {
    v81 = v80;
    [v80 detectAfterTime];
    v83 = v82;
  }

  else
  {
    v83 = 0.0;
  }

  [v51 setEndpointStart:v83];
  v84 = sub_100031164();
  if (v84)
  {
    v85 = v84;
    v86 = [v84 farField];
  }

  else
  {
    v86 = 0;
  }

  v87 = v160;
  [v51 setFarField:v86];
  [v51 setFormatAcrossUtterances:v64];
  if (!v72 || (sub_1000306D8(v72, &selRef_gpuContext), !v88))
  {

    sub_1000311E0();
  }

  v89 = v159;
  sub_100046E4C();
  sub_100030F98();

  sub_100031390(v90, "setGpuContext:");

  [v51 setHighPriority:v55 & 1];
  v91 = sub_1000306D8(v87, &selRef_inputOrigin);
  sub_100006DF4(v91, v92);
  sub_100046E4C();
  sub_100030F98();

  sub_100031390(v93, "setInputOrigin:");

  if (v89 >> 60 != 15)
  {
    v72 = v158;
    v94 = sub_10000C134();
    sub_100030A00(v94, v95);
    sub_10000C134();
    sub_100046B2C();
    v96 = sub_100026494();
    sub_10000C198(v96, v89);
  }

  [v51 setJitProfileData:0];

  [v51 setRecognizeEagerCandidates:(sub_1000310C8() >> 2) & 1];
  [v51 setRecognizeEmoji:sub_1000310C8() & 1];
  v97 = sub_100030478(v165, &selRef_rightContext);
  if (v97)
  {
    if (v97[2])
    {
      v72 = v97[4];
      v98 = v97[5];
    }

    else
    {
      sub_100031248();
    }
  }

  else
  {
    sub_100031248();
  }

  sub_100005BE0();
  sub_100046E4C();
  sub_100030F98();

  sub_100031390(v99, "setRightContext:");

  v100 = sub_100030478(v165, &selRef_selectedText);
  if (v100)
  {
    if (v100[2])
    {
      v72 = v100[4];
      v101 = v100[5];
    }

    else
    {
      sub_100031248();
    }
  }

  else
  {
    sub_100031248();
  }

  sub_100005BE0();
  sub_100046E4C();
  sub_100030F98();

  sub_100031390(v102, "setSelectedText:");

  if (v62[1])
  {
    v103 = *v62;
    v104 = v62[1];
  }

  else
  {
    v103 = 0;
  }

  v43 = v164;

  v105 = sub_1000041C4();
  sub_1000304CC(v105, v106, v51, v107);
  [v51 setShouldGenerateVoiceCommandCandidates:(sub_1000310C8() >> 8) & 1];
  sub_10000B260(v165);
  if (v108 >> 60 == 15)
  {
    v103 = 0;
  }

  else
  {
    v109 = v108;
    sub_100046B2C();
    v110 = sub_100026494();
    sub_10000C198(v110, v109);
  }

  [v51 setUserProfileData:v103];

  v111 = [a1 speechDetectionOptions];
  if (v111)
  {
    v112 = v111;
    v113 = sub_100025310();
  }

  else
  {
    v113 = 0;
  }

  [v51 setVadGatingLevel:v113];
  v25 = [v51 activeConfiguration];
  v167 = sub_100030678(v25);
  if (v167)
  {
    v114 = v161;

    sub_10002E450(&v166, v162, v114);

    if (v167)
    {
      sub_100046FAC();
      sub_100026494();
    }

    else
    {
      v114 = 0;
    }

    [v25 setTaskTypeFilter:v114];
  }

  else
  {
    [v25 setTaskTypeFilter:0];
  }

  [v51 setActiveConfiguration:v25];
  v115 = [v87 clientID];
  sub_100046E5C();

  v116 = sub_10000C134();
  sub_1000304CC(v116, v117, v51, v118);
  v119 = sub_100031164();
  if (v119 && (v120 = sub_10000AC34(v119)) != 0)
  {
    v121 = v120;
  }

  else
  {

    v121 = _swiftEmptyArrayStorage;
  }

  v122 = sub_100031164();
  if (v122 && (v123 = sub_10000ACAC(v122)) != 0)
  {
    v124 = v123;
  }

  else
  {
    v124 = sub_100046D8C();
  }

  v125 = sub_100031164();
  if (v125)
  {
    v126 = v125;
    v127 = [v125 speechProfileURLs];

    v128 = sub_100046EFC();
  }

  else
  {
    v128 = _swiftEmptyArrayStorage;
  }

  if (!sub_10000AD40(v121))
  {
    v129 = v128[2];

    if (v129)
    {
      goto LABEL_84;
    }

    if (qword_10006DD40 == -1)
    {
LABEL_90:
      v146 = sub_100046D1C();
      v147 = sub_100008FA4(v146, qword_1000714B8);
      v148 = sub_100046FFC();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = sub_100004A8C();
        v150 = sub_100004A74();
        v166 = v150;
        *v149 = 136315138;
        *(v149 + 4) = sub_100004EB4(0xD000000000000055, 0x800000010004F5D0, &v166);
        sub_100031378(&_mh_execute_header, v147, v148, "EARSpeechRecognizer.%s clearing the configured speech profile.");
        sub_1000050D4(v150);
        sub_100004ACC();
        sub_100030F7C();
      }

      v133 = v157;
      v135 = v158;
      v134 = v160;
      [v51 setUserProfile:0];
      goto LABEL_85;
    }

LABEL_96:
    sub_100002B5C();
    goto LABEL_90;
  }

LABEL_84:
  type metadata accessor for EARSpeechRecognizer();
  v130 = *&v43[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr];
  v131 = *&v43[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr + 8];
  v132 = *&v43[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles];

  sub_10000ADE0(v132, v121, v124, v165, v130, v131, v51);

  v133 = v157;
  v134 = v160;
  v135 = v158;
LABEL_85:
  v136 = *&v43[OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface];
  v137 = [v134 asrID];
  if (v137)
  {
    v138 = v137;
    sub_100046BAC();

    sub_10000C198(v135, v159);
  }

  else
  {

    sub_10000C198(v135, v159);
  }

  sub_100031228();
  sub_1000045DC(v139, v140, v141, v142);
  v143 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_asrId;
  swift_beginAccess();
  sub_100030E74(v133, v136 + v143, &unk_10006FB00, &qword_10004C590);
  swift_endAccess();
  sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName);
  v144 = v161;
  *v145 = v162;
  v145[1] = v144;
}

void sub_10002875C(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) modelInfo];
  v4 = [v3 samplingRates];

  v5 = sub_100046FBC();
  v6 = *(v5 + 16);
  if (v6)
  {
    aBlock = a2;
    v32 = _swiftEmptyArrayStorage;
    v27 = v5;
    sub_1000472AC();
    v8 = sub_100035098(v5);
    v10 = v9;
    v11 = 0;
    v12 = v5 + 56;
    v28 = v9;
    v26 = v5 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v5 + 36) != v10)
      {
        goto LABEL_25;
      }

      v29 = v11;
      v30 = v7;
      sub_10000408C(*(v5 + 48) + 40 * v8, v31);
      sub_1000471CC();
      sub_100030B94(v31);
      sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
      swift_dynamicCast();
      sub_10004728C();
      v14 = v32[2];
      sub_1000472BC();
      sub_1000472CC();
      sub_10004729C();
      if (v30)
      {
        goto LABEL_29;
      }

      v15 = 1 << *(v5 + 32);
      if (v8 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(v12 + 8 * v13);
      if ((v16 & (1 << v8)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v5 + 36) != v10)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v8 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v13 << 6;
        v19 = v13 + 1;
        v20 = (v26 + 8 * v13);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_100004B9C(v8, v10, 0);
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        sub_100004B9C(v8, v10, 0);
LABEL_18:
        v5 = v27;
      }

      v10 = v28;
      v7 = 0;
      v11 = v29 + 1;
      v8 = v15;
      if (v29 + 1 == v6)
      {

        v23 = v32;
        a2 = aBlock;
        goto LABEL_22;
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
    _Block_release(aBlock);
    __break(1u);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
LABEL_22:
    sub_100026968(v23);
    sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
    sub_100030BE8(&qword_10006FEA8, &qword_10006F140, NSNumber_ptr);
    isa = sub_100046FAC().super.isa;
    (a2)[2](a2, isa);

    _Block_release(a2);
  }
}

void sub_100028AE8(void *a1, uint64_t a2, id a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v148 = a8;
  v151 = a7;
  v147 = a1;
  v16 = a9;
  v17 = sub_100046C3C();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v157 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100046E3C();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v156 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100046E1C();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v146 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v150 = &v130 - v29;
  v30 = sub_10000ECEC(&qword_10006FB80, &unk_10004D060);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v144 = &v130 - v32;
  v145 = sub_100046B7C();
  v143 = *(v145 - 1);
  v33 = *(v143 + 64);
  __chkstk_darwin(v145);
  v142 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_100046BBC();
  v149 = *(v153 - 8);
  v35 = *(v149 + 64);
  __chkstk_darwin(v153);
  v152 = &v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v37 = a10;
  v38 = sub_100046D1C();
  sub_100004D64(v38, qword_1000714B8);
  v39 = sub_100046D0C();
  v40 = sub_100046FFC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v158 = a3;
    v155 = a4;
    v42 = a6;
    v43 = v41;
    v44 = swift_slowAlloc();
    v159[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_100004EB4(0xD00000000000005FLL, 0x800000010004F6A0, v159);
    _os_log_impl(&_mh_execute_header, v39, v40, "EARSpeechRecognizer.%s", v43, 0xCu);
    sub_1000050D4(v44);

    a6 = v42;
    v37 = a10;
    v16 = a9;
    a4 = v155;
    a3 = v158;
  }

  v45 = sub_100046E4C();
  SetQuasarLoggingLevel(v45);

  v159[0] = a2;
  v159[1] = a3;
  v160 = 45;
  v161 = 0xE100000000000000;
  v159[5] = 95;
  v159[6] = 0xE100000000000000;
  sub_1000169D0();
  v158 = sub_10004711C();
  v47 = v46;
  v154 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  v48 = [v154 modelInfo];
  v49 = [v48 samplingRates];
  v50 = sub_100046FBC();

  v160 = a6;
  sub_1000471DC();
  LOBYTE(v49) = sub_10002737C(v159, v50);

  sub_100030B94(v159);
  if ((v49 & 1) == 0)
  {
    goto LABEL_10;
  }

  v51 = [v48 tasks];
  v52 = sub_100046FBC();

  v160 = a4;
  v161 = a5;

  sub_1000471DC();
  LOBYTE(v51) = sub_10002737C(v159, v52);

  sub_100030B94(v159);
  if (v51)
  {
    v155 = a4;
    v156 = v37;
    v157 = a6;
    v53 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo;
    v54 = [*(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo) asrID];
    v140 = v48;
    v55 = v151;
    v141 = v16;
    if (!v54)
    {
      goto LABEL_26;
    }

    v56 = v54;
    sub_100046BAC();

    v57 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_speechProfileLastModifiedDate;
    swift_beginAccess();
    v58 = v144;
    sub_100030CE0(v16 + v57, v144, &qword_10006FB80, &unk_10004D060);
    v59 = v145;
    if (sub_100004844(v58, 1, v145) == 1)
    {
      sub_1000064CC(v58, &qword_10006FB80, &unk_10004D060);
      v10 = 0.0;
    }

    else
    {
      v63 = v143;
      v64 = v142;
      (*(v143 + 32))(v142, v58, v59);
      sub_100046B5C();
      v66 = v65;
      (*(v63 + 8))(v64, v59);
      v10 = -v66;
    }

    v145 = a5;
    if (qword_10006DD30 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v144 = qword_100071498;
      v67 = v150;
      v68 = v153;
      (*(v149 + 16))(v150, v152, v153);
      sub_1000045DC(v67, 0, 1, v68);
      v69 = sub_100008FD8(*(v16 + v53), &selRef_applicationName);
      if (v70)
      {
        v71 = v69;
      }

      else
      {
        v71 = 0;
      }

      v142 = v71;
      v72 = 0xE000000000000000;
      if (v70)
      {
        v72 = v70;
      }

      v143 = v72;
      v73 = [v48 language];
      v138 = sub_100046E5C();
      v139 = v74;

      v75 = [v48 version];
      v137 = sub_100046E5C();
      v77 = v76;

      v136 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isHighQualityAsset);
      v78 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion + 8);
      v135 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);
      v134 = v78;
      v79 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID + 8);
      v133 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
      v132 = v79;
      v131 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLanguageModelLoaded);
      v130 = sub_100008FD8(*(v16 + v53), &selRef_dictationUIInteractionID);
      v81 = v80;
      v82 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_atypicalSpeechEnabled);
      v83 = mach_continuous_time();
      v84 = v154;
      v85 = [v154 leftContext];
      v86 = sub_100046EFC();

      v87 = *(v86 + 16);

      if (v87)
      {
        goto LABEL_24;
      }

      v88 = [v84 rightContext];
      v89 = sub_100046E5C();
      v91 = v90;

      v92 = HIBYTE(v91) & 0xF;
      if ((v91 & 0x2000000000000000) == 0)
      {
        v92 = v89 & 0xFFFFFFFFFFFFLL;
      }

      if (v92)
      {
LABEL_24:
        v93 = 0;
      }

      else
      {
        v125 = [v84 selectedText];
        v126 = sub_100046E5C();
        v128 = v127;

        v129 = HIBYTE(v128) & 0xF;
        if ((v128 & 0x2000000000000000) == 0)
        {
          v129 = v126 & 0xFFFFFFFFFFFFLL;
        }

        v93 = v129 == 0;
      }

      v94 = v150;
      sub_10000DAAC(v150, v155, v145, v142, v143, v138, v139, v137, v10, v77, v136, v135, v134, v133, v132, v131, v130, v81, 0, 0xE000000000000000, v82, v83, v93);

      sub_1000064CC(v94, &unk_10006FB00, &qword_10004C590);
      (*(v149 + 8))(v152, v153);
      v16 = v141;
      v55 = v151;
LABEL_26:
      v95 = v148;
      if (*(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8))
      {
        v96 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext);
        v97 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8);
      }

      else
      {

        v96 = v55;
        v97 = v95;
      }

      sub_1000304CC(v96, v97, v154, &selRef_setLeftContextText_);
      v98 = [*(v16 + v53) asrID];
      if (v98)
      {
        v99 = v98;
        v53 = v146;
        sub_100046BAC();

        v100 = 0;
        v48 = v157;
      }

      else
      {
        v100 = 1;
        v48 = v157;
        v53 = v146;
      }

      sub_1000045DC(v53, v100, 1, v153);
      v101 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface);
      v102 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic);
      v103 = objc_allocWithZone(type metadata accessor for EARSpeechRecognitionResultStream());

      v104 = v101;
      v105 = sub_1000313D0(v147, v53, v104, v102, v55, v95);
      v106 = *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream);
      *(v16 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream) = v105;
      v107 = v105;

      v108 = v107;
      v109 = sub_100046E4C();

      v110 = sub_100046E4C();
      if ((v48 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_47:
      swift_once();
    }

    v111 = v110;
    v112 = v154;
    v158 = [v154 runRecognitionWithResultStream:v108 language:v109 task:v110 samplingRate:v48];

    v113 = sub_100046E4C();
    v114 = [v112 deviceId];
    if (!v114)
    {
      sub_100046E5C();
      v114 = sub_100046E4C();
    }

    v115 = [v112 farField];
    v116 = [v112 atypicalSpeech];
    v117 = [v112 aneContext];
    if (!v117)
    {
      sub_100046E5C();
      v117 = sub_100046E4C();
    }

    v118 = [v112 cpuContext];
    if (!v118)
    {
      sub_100046E5C();
      v118 = sub_100046E4C();
    }

    v119 = [v112 gpuContext];
    if (!v119)
    {
      sub_100046E5C();
      v119 = sub_100046E4C();
    }

    v120 = [v112 isVadGatingSupported:v157 task:v113 device:v114 farField:v115 atypicalSpeech:v116 aneContext:v117 cpuContext:v118 gpuContext:v119];

    v121 = v141;
    *(v141 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isVADSupportedForRequest) = v120;
    v61 = [objc_opt_self() anonymousListener];
    [v61 setDelegate:v121];
    [v61 activate];
    v122 = (v121 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners);
    os_unfair_lock_lock(v122);
    v123 = objc_allocWithZone(type metadata accessor for EARSpeechRecognitionAudioBuffer());
    v48 = v158;
    v124 = sub_10002BD50(v48);
    sub_10002D680(v124, v61);
    os_unfair_lock_unlock(v122);
    v62 = [v61 endpoint];
    v37 = v156;
    (*(v156 + 2))(v156, v62, 0);
  }

  else
  {
LABEL_10:
    sub_100046E0C();
    v162._object = 0x800000010004F680;
    v162._countAndFlagsBits = 0xD000000000000018;
    sub_100046DFC(v162);
    v163._countAndFlagsBits = a4;
    v163._object = a5;
    sub_100046DEC(v163);
    v164._countAndFlagsBits = 32;
    v164._object = 0xE100000000000000;
    sub_100046DFC(v164);
    v165._countAndFlagsBits = v158;
    v165._object = v47;
    sub_100046DEC(v165);

    v166._countAndFlagsBits = 32;
    v166._object = 0xE100000000000000;
    sub_100046DFC(v166);
    v159[0] = a6;
    sub_100046DDC();
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    sub_100046DFC(v167);
    sub_100046E2C();
    if (qword_10006DD78 != -1)
    {
      swift_once();
    }

    v60 = off_100071650;
    sub_100046C2C();
    sub_100046E6C();
    sub_10004707C();
    v61 = sub_100046D5C();
    v62 = sub_100046A6C();
    (*(v37 + 2))(v37, 0, v62);
  }

  _Block_release(v37);
}

BOOL sub_100029C48(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners));
  v6 = sub_10002D368(a1);
  os_unfair_lock_unlock(v5);
  if (v6)
  {
    v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____SFXPCEARSpeechRecognitionAudioBuffer];
    [a2 setExportedInterface:v7];

    v8 = sub_100003730();
    [v8 v9];
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = a1;
    v15[4] = sub_1000309F8;
    v15[5] = v10;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10002673C;
    v15[3] = &unk_100066140;
    v11 = _Block_copy(v15);
    v12 = v6;
    v13 = a1;

    [a2 setInvalidationHandler:v11];
    _Block_release(v11);
    [a2 activate];
  }

  return v6 != 0;
}

uint64_t sub_100029E80(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_100034518(0, v5, 0);
    v7 = (a2 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      sub_100046E9C();

      v10 = sandbox_extension_consume();

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        v13 = sub_100031108(v11);
        result = sub_100034518(v13, v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v14 = 0;
  v31 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  v15 = *(v4 + 16);
  v16 = v4 + 40;
  v30 = v4 + 40;
LABEL_7:
  v17 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_24;
    }

    v19 = *(v17 - 1);
    v20 = *v17;
    v21 = objc_allocWithZone(_EARAppLmArtifact);
    swift_bridgeObjectRetain_n();
    v22 = sub_10002CAC8(v19, v20);
    v23 = [v22 loadLmHandle];

    ++v14;
    v17 += 2;
    if (v23)
    {
      sub_100046EDC();
      v24 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
      {
        sub_100031108(v24);
        sub_100046F1C();
      }

      sub_1000310AC();
      result = sub_100046F3C();
      v14 = v18;
      v16 = v30;
      goto LABEL_7;
    }
  }

  v25 = [v31 extraLmList];
  sub_1000029E4(0, &qword_10006FE58, _EARLmHandle_ptr);
  sub_100046EFC();

  sub_10002A150(_swiftEmptyArrayStorage);
  isa = sub_100046EEC().super.isa;

  [v31 setExtraLmList:isa];

  v27 = _swiftEmptyArrayStorage[2];
  if (v27)
  {
    v28 = &_swiftEmptyArrayStorage[4];
    do
    {
      v29 = *v28++;
      if (v29 != -1)
      {
        sandbox_extension_release();
      }

      --v27;
    }

    while (v27);
  }
}

uint64_t sub_10002A150(unint64_t a1)
{
  v3 = sub_10000AD1C(a1);
  v4 = sub_10000AD1C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100030364(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10003078C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10002A2D0()
{
  sub_1000313BC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v3;
  sub_100046B3C();

  v6 = sub_1000310AC();
  v1(v6);
  v7 = sub_1000310AC();
  sub_10000C140(v7, v8);
  sub_1000313A8();
}

void sub_10002A364(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  isa = sub_100046B2C().super.isa;
  [v5 *a3];
}

void sub_10002A3DC(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) rightContext];
  sub_100046E5C();

  v4 = sub_100046E4C();
  (a2)[2](a2, v4);

  _Block_release(a2);
}

void sub_10002A494(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) modelInfo];
  v4 = [objc_allocWithZone(EARSpeechModelInfo) initWithModelInfo:v3];

  (a2)[2](a2, v4);

  _Block_release(a2);
}

void sub_10002A548(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) recognitionStatistics];
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  sub_100046D7C();

  isa = sub_100046D6C().super.isa;
  (a2)[2](a2, isa);

  _Block_release(a2);
}

void sub_10002A648(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) recognitionUtterenceStatistics];
  sub_100046D7C();

  isa = sub_100046D6C().super.isa;
  (a2)[2](a2, isa);

  _Block_release(a2);
}

void sub_10002A728(uint64_t a1, void (**a2)(void, void))
{
  type metadata accessor for Instrumentation();
  v4 = sub_10000ABC4();
  v5 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_cpuInstructionsUsedAtStart);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    v8 = v7 / 1000000.0;
    v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) recognitionMetrics];
    v10 = [objc_allocWithZone(EARRecognitionMetrics) initWithRecognitionMetrics:v9 cpuInstructions:v8];

    (a2)[2](a2, v10);

    _Block_release(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10002A824()
{
  sub_1000313BC();
  v1 = v0;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v2 = sub_100046D1C();
  v3 = sub_100008FA4(v2, qword_1000714B8);
  v4 = sub_100046FFC();
  if (sub_100030F60(v4))
  {
    v5 = sub_100004A8C();
    v18 = sub_100004A74();
    *v5 = 136315138;
    sub_10000BF98();
    *(v5 + 4) = sub_100004EB4(0xD000000000000012, v6, v7);
    sub_10003103C();
    sub_100031378(v8, v9, v10, v11);
    sub_1000050D4(v18);
    sub_100004ACC();
    sub_100030F7C();
  }

  [*(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer) pauseRecognition];
  if (qword_10006DD30 != -1)
  {
    sub_10000418C();
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v12, v13, v14, v15, v16, v17);
  sub_1000313A8();
}

void sub_10002A9A4()
{
  sub_100031290();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v6 = sub_100046D1C();
  v7 = sub_100008FA4(v6, qword_1000714B8);
  v8 = sub_100046FFC();
  if (sub_10000BD64(v8))
  {
    v9 = sub_100004A8C();
    v26 = sub_100004A74();
    *v9 = 136315138;
    sub_10000BF98();
    *(v9 + 4) = sub_100004EB4(0xD00000000000003DLL, v10, v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "EARSpeechRecognizer.%s", v9, 0xCu);
    sub_1000050D4(v26);
    sub_100002B44();
    sub_100002B44();
  }

  v12 = (v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext);
  v13 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8);
  *v12 = v5;
  v12[1] = v3;

  v14 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);

  v15 = sub_100046E4C();
  v16 = sub_100046E4C();
  v17 = sub_100046E4C();
  v18 = sub_100003730();
  [v18 v19];

  if (qword_10006DD30 != -1)
  {
    sub_10000418C();
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v20, v21, v22, v23, v24, v25);
  sub_1000312AC();
}

void sub_10002AC54(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v16 = a10;
  v15 = a11;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v17 = sub_100046D1C();
  v18 = sub_100008FA4(v17, qword_1000714B8);
  v19 = sub_100046FFC();
  if (sub_100030FB0(v19))
  {
    v29 = v12;
    v20 = sub_100004A8C();
    v21 = sub_100004A74();
    v32 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100004EB4(0xD0000000000000A6, 0x800000010004F4A0, &v32);
    sub_100006B04();
    _os_log_impl(v22, v23, v24, v25, v20, 0xCu);
    sub_1000050D4(v21);
    v15 = a11;
    v16 = a10;
    sub_100002B44();
    v12 = v29;
    sub_100002B44();
  }

  v26 = *(v12 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  if ([v26 respondsToSelector:"updateVoiceCommandContextWithPrefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:"])
  {
    if (a2)
    {
      a2 = sub_100046E4C();
    }

    if (a4)
    {
      v27 = sub_100046E4C();
      if (a6)
      {
LABEL_10:
        v28 = sub_100046E4C();
LABEL_14:
        v31 = v28;
        [v26 updateVoiceCommandContextWithPrefixText:a2 postfixText:v27 selectedText:v16 disambiguationActive:v15 cursorInVisibleText:? favorCommandSuppression:? abortCommandSuppression:? undoEvent:?];

        return;
      }
    }

    else
    {
      v27 = 0;
      if (a6)
      {
        goto LABEL_10;
      }
    }

    v28 = 0;
    goto LABEL_14;
  }
}

void sub_10002AFE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000311BC();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v23 = sub_100046D1C();
  v24 = sub_100008FA4(v23, qword_1000714B8);
  v25 = sub_100046FFC();
  if (os_log_type_enabled(v24, v25))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v21 = 136315138;
    sub_10000BF98();
    *(v21 + 4) = sub_100004EB4(0xD000000000000016, v26, v27);
    _os_log_impl(&_mh_execute_header, v24, v25, "EARSpeechRecognizer.%s", v21, 0xCu);
    sub_1000050D4(v22);
    sub_100030F44();
    sub_100005408();
  }

  v28 = *(v20 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  if ([v28 detectUtterances])
  {
    osloga = sub_100046D0C();
    v29 = sub_100046FEC();
    if (os_log_type_enabled(osloga, v29))
    {
      v30 = sub_1000090C8();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v29, "Ignoring requestEagerResult; not supported with detectUtterances", v30, 2u);
      sub_100002B44();
    }
  }

  else
  {
    sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
    sub_100046EEC();
    [v28 requestEagerResult:?];
  }

  sub_100009044();
}

void sub_10002B210()
{
  sub_1000313BC();
  v1 = v0;
  v3 = v2;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v4 = sub_100046D1C();
  v5 = sub_100008FA4(v4, qword_1000714B8);
  v6 = sub_100046FFC();
  if (sub_10000BD64(v6))
  {
    v7 = sub_100004A8C();
    v17 = sub_100004A74();
    *v7 = 136315138;
    sub_10000BF98();
    *(v7 + 4) = sub_100004EB4(0xD000000000000011, v8, v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "EARSpeechRecognizer.%s", v7, 0xCu);
    sub_1000050D4(v17);
    sub_100005408();
    sub_100004ACC();
  }

  v10 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo);
  *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo) = v3;

  v11 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  v12 = sub_1000306D8(v3, &selRef_inputOrigin);
  sub_100006DF4(v12, v13);
  v16 = sub_100046E4C();

  [v11 setInputOrigin:v16];
  sub_1000313A8();
}

void sub_10002B3E0(uint64_t a1, void (**a2)(void, void))
{
  (a2)[2](a2, [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles) count] > 0);

  _Block_release(a2);
}

void sub_10002B45C(uint64_t a1, void (**a2)(void, void))
{
  v3 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles) allValues];
  v4 = sub_100046EFC();

  sub_1000264F8(v4, &v8);

  if (v9)
  {
    sub_1000029E4(0, &unk_10006FE98, _EARUserProfileContainer_ptr);
    if (swift_dynamicCast())
    {
      v5 = [v7 experimentIds];
      sub_100046FBC();
    }
  }

  else
  {
    sub_1000064CC(&v8, &qword_10006FE90, &unk_10004CCD0);
  }

  isa = sub_100046FAC().super.isa;
  (a2)[2](a2, isa);

  _Block_release(a2);
}

void sub_10002B5D8(uint64_t a1, void (**a2)(void, double))
{
  a2[2](a2, *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelLoadTime));

  _Block_release(a2);
}

void sub_10002B640()
{
  sub_1000311BC();
  sub_100006B10();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v5 = sub_100046D1C();
  v6 = sub_100008FA4(v5, qword_1000714B8);
  v7 = sub_100046FFC();
  if (sub_10000BD64(v7))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v3 = 136315138;
    sub_10000BF98();
    *(v3 + 4) = sub_100004EB4(0xD000000000000016, v8, v9);
    sub_100004B04(&_mh_execute_header, v10, v11, "EARSpeechRecognizer.%s");
    sub_1000050D4(v4);
    sub_100030F44();
    sub_100005408();
  }

  v12 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  v13 = sub_100030FA4();
  sub_100030734(v13, v14, v15);
  v16 = (v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext);
  v17 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext + 8);
  *v16 = v1;
  v16[1] = v0;

  v18 = qword_10006DD30;

  if (v18 != -1)
  {
    sub_10000418C();
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v19, v20, v21, v22, v23, v24);
  sub_100009044();
}

void sub_10002B7A4()
{
  sub_1000311BC();
  sub_100006B10();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v3 = sub_100046D1C();
  v4 = sub_100008FA4(v3, qword_1000714B8);
  v5 = sub_100046FFC();
  if (sub_10000BD64(v5))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v1 = 136315138;
    sub_10000BF98();
    *(v1 + 4) = sub_100004EB4(0xD000000000000013, v6, v7);
    sub_100004B04(&_mh_execute_header, v8, v9, "EARSpeechRecognizer.%s");
    sub_1000050D4(v2);
    sub_100030F44();
    sub_100005408();
  }

  v10 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  sub_100030FA4();
  v11 = sub_100046E4C();
  [v10 setRightContext:v11];

  if (qword_10006DD30 != -1)
  {
    sub_10000418C();
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v12, v13, v14, v15, v16, v17);
  sub_100009044();
}

void sub_10002B904()
{
  sub_1000311BC();
  sub_100006B10();
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v3 = sub_100046D1C();
  v4 = sub_100008FA4(v3, qword_1000714B8);
  v5 = sub_100046FFC();
  if (sub_10000BD64(v5))
  {
    sub_100004A8C();
    sub_10000C394();
    sub_1000311D4();
    *v1 = 136315138;
    sub_10000BF98();
    *(v1 + 4) = sub_100004EB4(0xD000000000000013, v6, v7);
    sub_100004B04(&_mh_execute_header, v8, v9, "EARSpeechRecognizer.%s");
    sub_1000050D4(v2);
    sub_100030F44();
    sub_100005408();
  }

  v10 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer);
  sub_100030FA4();
  v11 = sub_100046E4C();
  [v10 setSelectedText:v11];

  if (qword_10006DD30 != -1)
  {
    sub_10000418C();
  }

  mach_continuous_time();
  sub_100031114();
  sub_1000042C4();
  sub_10000FFF0(v12, v13, v14, v15, v16, v17);
  sub_100009044();
}

uint64_t sub_10002BA64(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_100046E5C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_10002BAD0(uint64_t a1, void (**a2)(void, void))
{
  a2[2](a2, *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isVADSupportedForRequest));

  _Block_release(a2);
}

void sub_10002BB38(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10002BBEC()
{
  sub_10002BCF8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002BCF8()
{
  if (!qword_10006FDB0)
  {
    sub_100046B7C();
    v0 = sub_10004710C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006FDB0);
    }
  }
}

id sub_10002BD50(uint64_t a1)
{
  v2 = v1;
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0x293A5F2874696E69, 0xE800000000000000, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "EARSpeechRecognitionAudioBuffer.%s", v7, 0xCu);
    sub_1000050D4(v8);
  }

  *&v2[OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer] = a1;
  v9 = type metadata accessor for EARSpeechRecognitionAudioBuffer();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10002BEBC()
{
  sub_10000BDA0();
  sub_100005C1C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_100004B48();
  *v5 = v4;

  return _swift_task_switch(sub_10002BFC4, 0, 0);
}

void sub_10002BFDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_10000ECEC(&qword_10006FE50, &qword_10004D1E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  v12 = *(a2 + OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer);
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100046B2C().super.isa;
  }

  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  aBlock[4] = sub_10002CE14;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C218;
  aBlock[3] = &unk_100066000;
  v16 = _Block_copy(aBlock);

  [v12 addAudio2SampleData:isa withCompletion:v16];
  _Block_release(v16);
}

uint64_t sub_10002C218(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_10002C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000313BC();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v22 = sub_100046D1C();
  v23 = sub_100008FA4(v22, qword_1000714B8);
  v24 = sub_100046FFC();
  if (sub_100030F60(v24))
  {
    v25 = sub_100004A8C();
    v26 = sub_100004A74();
    a10 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100004EB4(0x6F69647541646E65, 0xEA00000000002928, &a10);
    sub_10003103C();
    sub_100031378(v27, v28, v29, v30);
    sub_1000050D4(v26);
    sub_100004ACC();
    sub_100030F7C();
  }

  v31 = *(v21 + OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer);
  sub_1000313A8();

  return [v32 v33];
}

id sub_10002C3BC()
{
  sub_1000313BC();
  v1 = v0;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v2 = sub_100046D1C();
  v3 = sub_100008FA4(v2, qword_1000714B8);
  v4 = sub_100046FFC();
  if (sub_100030F60(v4))
  {
    v5 = sub_100004A8C();
    v17 = sub_100004A74();
    *v5 = 136315138;
    sub_10000BF98();
    *(v5 + 4) = sub_100004EB4(0xD000000000000013, v6, v7);
    sub_10003103C();
    sub_100031378(v8, v9, v10, v11);
    sub_1000050D4(v17);
    sub_100004ACC();
    sub_100030F7C();
  }

  v12 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer);
  sub_1000313A8();

  return [v13 v14];
}

uint64_t sub_10002C504(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return sub_100002BDC(sub_10002C520);
}

uint64_t sub_10002C520()
{
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v1 = sub_100046D1C();
  v2 = sub_100008FA4(v1, qword_1000714B8);
  v3 = sub_100046FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100004A8C();
    v18 = sub_100004A74();
    *(v4 + 4) = sub_1000310E0(4.8149e-34, v18);
    sub_100031308(&_mh_execute_header, v5, v6, "EARSpeechRecognitionAudioBuffer.%s");
    sub_1000050D4(v18);
    sub_100005408();
    sub_100004ACC();
  }

  LODWORD(v7) = *(v0 + 24);
  v8 = [*(*(v0 + 16) + OBJC_IVAR____TtC22localspeechrecognition31EARSpeechRecognitionAudioBuffer_audioBuffer) packetArrivalTimestampFromAudioTime:v7];
  v9 = sub_100046D0C();
  v10 = sub_100046FFC();
  if (sub_100030F60(v10))
  {
    v11 = swift_slowAlloc();
    v19 = sub_100004A74();
    *(v11 + 4) = sub_1000310E0(4.8151e-34, v19);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v8;
    sub_10003103C();
    _os_log_impl(v12, v13, v14, v15, v11, 0x16u);
    sub_1000050D4(v19);
    sub_100005408();
    sub_100004ACC();
  }

  v16 = *(v0 + 8);

  return v16(v8);
}

uint64_t sub_10002C798(const void *a1, void *a2, float a3)
{
  v3[2] = a2;
  v3[3] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10002C850;

  return sub_10002C504(a3);
}

uint64_t sub_10002C850()
{
  sub_10000BF04();
  sub_100005C1C();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100004B48();
  *v6 = v5;

  v7 = v3[2];
  v8 = sub_1000041C4();
  v9(v8);
  _Block_release(v3);
  sub_100004170();

  return v10();
}

id sub_10002C990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARSpeechRecognitionAudioBuffer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10002C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9.super.isa = sub_100046BEC().super.isa;
  if (a4)
  {
    v10 = sub_100046E4C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithAssetType:a1 locale:v9.super.isa regionId:v10];

  v12 = sub_100046C3C();
  (*(*(v12 - 8) + 8))(a2, v12);
  return v11;
}

id sub_10002CAC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100046E4C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPath:v3];

  return v4;
}

uint64_t sub_10002CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100030CE0(a3, v25 - v11, &qword_10006FAD8, &qword_10004CFA0);
  v13 = sub_100046F9C();
  if (sub_100004844(v12, 1, v13) == 1)
  {
    sub_1000064CC(v12, &qword_10006FAD8, &qword_10004CFA0);
  }

  else
  {
    sub_100046F8C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_100046F4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100046E9C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000064CC(a3, &qword_10006FAD8, &qword_10004CFA0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000064CC(a3, &qword_10006FAD8, &qword_10004CFA0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002CE14()
{
  v0 = sub_10000ECEC(&qword_10006FE50, &qword_10004D1E0);
  sub_100004250(v0);
  v2 = *(v1 + 80);

  return sub_10002C1CC();
}

uint64_t sub_10002CE8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002CEA4()
{
  sub_10000BF04();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_100008FCC(v4);
  *v5 = v6;
  v5[1] = sub_10000C28C;
  v7 = sub_1000041C4();

  return v8(v7);
}

uint64_t sub_10002CF4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10002CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Swift::Int a10)
{
  sub_100031290();
  v12 = v10;
  v13 = *v10;
  if ((*v10 & 0xC000000000000001) == 0)
  {
    v32 = *v10;
    v33 = sub_100034548(v11);
    if ((v34 & 1) == 0)
    {
LABEL_11:
      sub_1000312AC();
      return;
    }

    v35 = v33;
    v36 = *v12;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    v38 = *(v37 + 24);
    sub_10000ECEC(&qword_10006FF40, &qword_10004D2F0);
    sub_1000312C8();
    v21 = a10;

    v39 = *(*(a10 + 56) + 8 * v35);
    sub_100031210();
    sub_1000029E4(v40, v41, v42);
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    sub_100031210();
    sub_100030BE8(v43, v44, v45);
    sub_10004730C();
LABEL_10:
    *v12 = v21;
    goto LABEL_11;
  }

  if (v13 < 0)
  {
    v14 = *v10;
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = v11;
  v16 = sub_10004733C();

  if (!v16)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  sub_10004732C();
  sub_10000C6AC();
  v21 = sub_10002D928(v14, v17, v18, v19, 0, v20);

  v22 = sub_100034548(v15);
  v24 = v23;

  if (v24)
  {

    v25 = *(*(v21 + 56) + 8 * v22);
    sub_1000311EC();
    sub_1000029E4(v26, v27, v28);
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    sub_1000311EC();
    sub_100030BE8(v29, v30, v31);
    sub_10004730C();

    goto LABEL_10;
  }

  __break(1u);
}

void sub_10002D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Swift::Int a10)
{
  sub_1000311BC();
  v12 = v10;
  v13 = *v10;
  if ((*v10 & 0xC000000000000001) == 0)
  {
    v29 = *v10;
    v30 = sub_100034548(v11);
    if ((v31 & 1) == 0)
    {
LABEL_11:
      sub_100009044();
      return;
    }

    v32 = v30;
    v33 = *v12;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000090BC();
    v35 = *(v34 + 24);
    sub_10000ECEC(&qword_10006FEC0, &qword_10004D270);
    sub_1000312C8();
    v18 = a10;

    v36 = *(*(a10 + 56) + 8 * v32);
    sub_100031210();
    sub_1000029E4(v37, v38, v39);
    sub_100031210();
    sub_100030BE8(v40, v41, v42);
    sub_10004730C();
LABEL_10:
    *v12 = v18;
    goto LABEL_11;
  }

  if (v13 < 0)
  {
    v14 = *v10;
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = v11;
  v16 = sub_10004733C();

  if (!v16)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  v17 = sub_10004732C();
  v18 = sub_10002D73C(v14, v17);

  v19 = sub_100034548(v15);
  v21 = v20;

  if (v21)
  {

    v22 = *(*(v18 + 56) + 8 * v19);
    sub_1000311EC();
    sub_1000029E4(v23, v24, v25);
    sub_1000311EC();
    sub_100030BE8(v26, v27, v28);
    sub_10004730C();

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10002D368(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v15 = *v1;
    v16 = sub_100034548(a1);
    if (v17)
    {
      v18 = v16;
      v19 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;
      v21 = *(*v2 + 24);
      sub_10000ECEC(&qword_10006FE70, &qword_10004D250);
      sub_1000472EC(isUniquelyReferenced_nonNull_native, v21);
      v9 = v22;

      v14 = *(*(v22 + 56) + 8 * v18);
      sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
      type metadata accessor for EARSpeechRecognitionAudioBuffer();
      sub_100030BE8(&qword_10006EE10, &qword_10006FAF0, NSXPCListener_ptr);
      sub_10004730C();
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_10004733C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_10004732C();
  v9 = sub_10002D928(v4, v7, &unk_10006FE78, &qword_10004D258, v8, type metadata accessor for EARSpeechRecognitionAudioBuffer);

  v10 = sub_100034548(v5);
  v12 = v11;

  if (v12)
  {

    v14 = *(*(v9 + 56) + 8 * v10);
    sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    sub_100030BE8(&qword_10006EE10, &qword_10006FAF0, NSXPCListener_ptr);
    sub_10004730C();

LABEL_10:
    *v2 = v9;
    return v14;
  }

  __break(1u);
  return result;
}

void sub_10002D5A0()
{
  sub_100031120();
  if (v2)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(sub_100031328(), 1))
  {
    sub_10000C6AC();
    *v0 = sub_10002D928(v1, v3, v4, v5, 0, v6);
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_100031068();
    sub_100025CB4(v7, v8, v9);
    *v0 = v10;
    return;
  }

  __break(1u);
}

uint64_t sub_10002D61C()
{
  sub_100031120();
  if (v2)
  {
    goto LABEL_4;
  }

  result = sub_100031328();
  if (!__OFADD__(result, 1))
  {
    *v0 = sub_10002D73C(v1, result + 1);
LABEL_4:
    swift_isUniquelyReferenced_nonNull_native();
    v4 = sub_100031068();
    result = sub_100025CC8(v4, v5);
    *v0 = v6;
    return result;
  }

  __break(1u);
  return result;
}

void sub_10002D680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_10004732C();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_10002D928(v7, v8 + 1, &unk_10006FE78, &qword_10004D258, v9, type metadata accessor for EARSpeechRecognitionAudioBuffer);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_100025F18(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v11;
    return;
  }

  __break(1u);
}

Swift::Int sub_10002D73C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000ECEC(&qword_10006FEC8, &qword_10004D278);
    v2 = sub_10004739C();
    v17 = v2;
    sub_10004731C();
    while (1)
    {
      if (!sub_10004734C())
      {

        return v2;
      }

      v4 = v3;
      sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
      swift_dynamicCast();
      v5 = *(v2 + 16);
      if (*(v2 + 24) <= v5)
      {
        sub_10002DD84(v5 + 1, 1);
      }

      v2 = v17;
      result = sub_1000470CC(*(v17 + 40));
      v7 = v17 + 64;
      v8 = -1 << *(v17 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v17 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v17 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v17 + 48) + 8 * v11) = v16;
      *(*(v17 + 56) + 8 * v11) = v4;
      ++*(v17 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}