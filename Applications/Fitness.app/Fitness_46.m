uint64_t sub_10052CBDC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10052CBF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10052CC40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10052CC84(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10052CCC8(uint64_t a1, double a2, double a3, double a4)
{
  *(v5 + 176) = v4;
  *(v5 + 160) = a3;
  *(v5 + 168) = a4;
  *(v5 + 152) = a2;
  *(v5 + 144) = a1;
  sub_100140278(&qword_1008E1760);
  *(v5 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_10052CD70, v4, 0);
}

uint64_t sub_10052CD70()
{
  v51 = v0;
  v1 = *(v0 + 144);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000066AC(v1, v2);
  v49 = (*(v3 + 24))(v2, v3);
  v50 = v4;
  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 120;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 120;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v10);

  v12 = v49;
  v11 = v50;
  *(v0 + 192) = v49;
  *(v0 + 200) = v11;
  v13 = static os_log_type_t.default.getter();
  v14 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v13))
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10000AFDC(v12, v11, &v49);
    _os_log_impl(&_mh_execute_header, v15, v13, "[AppRecommendationDataProvider] Looking up artwork for key %s", v16, 0xCu);
    sub_100005A40(v17);
  }

  v18 = *(v0 + 176);
  swift_beginAccess();
  v19 = *(v18 + 112);
  if (!*(v19 + 16))
  {
    goto LABEL_9;
  }

  v20 = sub_100066F20(v12, v11);
  if ((v21 & 1) == 0)
  {

LABEL_9:
    v37 = *(v0 + 184);
    v38 = *(v0 + 168);
    v48 = *(v0 + 152);
    v39 = *(v0 + 144);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v37, 1, 1, v40);
    sub_100007C5C(v39, v0 + 16);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = v12;
    *(v41 + 40) = v11;
    sub_1001AB740((v0 + 16), v41 + 48);
    *(v41 + 88) = v48;
    *(v41 + 104) = v38;

    v42 = sub_100654268(0, 0, v37, &unk_1006F8598, v41);
    *(v0 + 232) = v42;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v18 + 112);
    *(v18 + 112) = 0x8000000000000000;
    sub_100490D88(v42, 0, v12, v11, isUniquelyReferenced_nonNull_native);

    *(v18 + 112) = v49;
    swift_endAccess();
    v44 = swift_task_alloc();
    *(v0 + 240) = v44;
    v45 = sub_100527FF8();
    v33 = sub_100140278(&qword_1008EB640);
    *v44 = v0;
    v44[1] = sub_10052D4FC;
    v34 = v0 + 128;
    v35 = v42;
    v36 = v45;
    goto LABEL_10;
  }

  v22 = *(v19 + 56) + 16 * v20;
  v23 = *v22;
  *(v0 + 208) = *v22;
  v24 = *(v22 + 8);
  sub_1004A94B0(v23, v24);

  v25 = static os_log_type_t.debug.getter();
  v26 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v25))
  {
    v27 = v26;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49 = v29;
    *v28 = 136315138;
    v30 = sub_10000AFDC(v12, v11, &v49);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v27, v25, "[AppRecommendationDataProvider][%s] Found artwork in cache.", v28, 0xCu);
    sub_100005A40(v29);

    if ((v24 & 1) == 0)
    {
LABEL_7:
      v31 = swift_task_alloc();
      *(v0 + 216) = v31;
      v32 = sub_100527FF8();
      v33 = sub_100140278(&qword_1008EB640);
      *v31 = v0;
      v31[1] = sub_10052D358;
      v34 = v0 + 136;
      v35 = v23;
      v36 = v32;
LABEL_10:

      return Task.value.getter(v34, v35, v36, v33, &protocol self-conformance witness table for Error);
    }
  }

  else
  {

    if ((v24 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v46 = *(v0 + 8);

  return v46(v23);
}

uint64_t sub_10052D358()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_10052D724;
  }

  else
  {
    v4 = sub_10052D484;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10052D484()
{
  sub_1004A94AC(*(v0 + 208), 0);
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10052D4FC()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_10052D794;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_10052D624;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10052D624()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[16];
  swift_beginAccess();
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_100490D88(v4, 1, v2, v1, isUniquelyReferenced_nonNull_native);

  *(v3 + 112) = v9;
  swift_endAccess();

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_10052D724()
{
  sub_1004A94AC(*(v0 + 208), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052D794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052D800(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 56) = a2;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 24) = a1;
  *(v9 + 32) = a7;
  return _swift_task_switch(sub_10052D82C, 0, 0);
}

uint64_t sub_10052D82C()
{
  v18 = v0;
  v1 = static os_log_type_t.debug.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v2;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000AFDC(v4, v3, &v17);
    _os_log_impl(&_mh_execute_header, v5, v1, "[AppRecommendationDataProvider][%s] Fetching artwork.", v6, 0xCu);
    sub_100005A40(v7);
  }

  v8 = v0[6];
  v9 = v8[3];
  v10 = v8[4];
  sub_1000066AC(v8, v9);
  v16 = (*(v10 + 40) + **(v10 + 40));
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_10052DA2C;
  v12.n128_u64[0] = v0[8];
  v13.n128_u64[0] = v0[9];
  v14.n128_u64[0] = v0[7];

  return v16(v9, v10, v14, v12, v13);
}

uint64_t sub_10052DA2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_10052DBF0;
  }

  else
  {
    v4 = sub_10052DB40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10052DB40()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    **(v0 + 24) = v1;
  }

  else
  {
    sub_10052DEB8();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10052DBF0()
{
  v15 = v0;
  v1 = static os_log_type_t.error.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v0[12];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v2;
    v7 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000AFDC(v5, v4, v14);
    *(v7 + 12) = 2080;
    v0[2] = v3;
    swift_errorRetain();
    sub_100140278(&qword_1008EB640);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000AFDC(v8, v9, v14);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v6, v1, "[AppRecommendationDataProvider][%s] Failed to fetch artwork: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10052DEB8();
  swift_allocError();
  *v11 = 2;
  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10052DDD0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BACC;

  return sub_10052D800(a1, v8, v9, v10, v4, v5, v6, v7, (v1 + 6));
}

unint64_t sub_10052DEB8()
{
  result = qword_1008F1F68;
  if (!qword_1008F1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1F68);
  }

  return result;
}

uint64_t sub_10052DF0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002BBC0;

  return sub_10052C660(a1, v1);
}

uint64_t sub_10052DFA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002BBC0;

  return sub_10052C928(a1, v1);
}

unint64_t sub_10052E058()
{
  result = qword_1008F1F78;
  if (!qword_1008F1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1F78);
  }

  return result;
}

__n128 sub_10052E0B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10052E0D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_10052E11C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10052E184(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v28 = a1 + 32;
  v3 = &unk_1008E4010;
  while (1)
  {
    v5 = *(v28 + 16 * v1);

    v6 = sub_1005305AC();

    v7 = v6 >> 62;
    if (v6 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v33)
    {
      goto LABEL_36;
    }

    v30 = v1;
    v31 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_10014A6B0(&qword_1008EE708, v3);
      for (i = 0; i != v15; ++i)
      {
        sub_100140278(v3);
        v19 = sub_10047463C(v32, i, v6);
        v21 = v3;
        v22 = *v20;
        (v19)(v32, 0);
        *(v17 + 8 * i) = v22;
        v3 = v21;
      }
    }

    else
    {
      sub_1000059F8(0, &qword_1008ED7C0);
      swift_arrayInitWithCopy();
    }

    v1 = v30;
    v2 = v31;
    if (v33 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v33);
      v25 = v23 + v33;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  v16 = v12;
  result = _CocoaArrayWrapper.endIndex.getter();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
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

unint64_t sub_10052E494(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1001AB73C(v19, 0);
      sub_10047486C(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = &_swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_10057FAF8(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_10057FAF8(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_10052E6A4(void *a1)
{
  v2 = sub_100140278(&qword_1008DF220);
  v15 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v16 = &v15 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v14 = *(v15 + 72);
    result = sub_100530DCC(a1 + v13 + v14 * v9, v16);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_100530DCC(a1 + v13 + v14 * i, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_10057F608(a1);
    }

    result = sub_100530E3C(v5, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_100530E3C(v16, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10052E860()
{
  *(v1 + 152) = v0;
  type metadata accessor for MainActor();
  *(v1 + 160) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10052E8F8, v3, v2);
}

uint64_t sub_10052E8F8()
{
  v1 = *(v0 + 152);

  if (*(v1 + 32))
  {
    v2 = *(v0 + 152);
    v3 = swift_allocObject();
    v4 = *(v2 + 16);
    v3[1] = *v2;
    v3[2] = v4;
    v6 = *(v2 + 48);
    v5 = *(v2 + 64);
    v7 = *(v2 + 32);
    *(v3 + 89) = *(v2 + 73);
    v3[4] = v6;
    v3[5] = v5;
    v3[3] = v7;
    v8 = swift_allocObject();
    v9 = *(v2 + 16);
    *(v8 + 16) = *v2;
    *(v8 + 32) = v9;
    v10 = *(v2 + 32);
    v11 = *(v2 + 48);
    v12 = *(v2 + 64);
    *(v8 + 89) = *(v2 + 73);
    *(v8 + 64) = v11;
    *(v8 + 80) = v12;
    *(v8 + 48) = v10;
    *(v8 + 112) = &unk_1006F8828;
    *(v8 + 120) = v3;
    v13 = *(v2 + 40);
    v14 = *(v2 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 112) = v13;
    *(v0 + 120) = v14;
    *(v0 + 128) = &unk_1006F8838;
    *(v0 + 136) = v8;
    *(v0 + 144) = 8;
    sub_1002F7A50(v2, v0 + 16);
    sub_1002F7A50(v2, v0 + 16);
    v15 = v13;
  }

  else
  {
    v16 = *(*(v0 + 152) + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v16;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 7;
    v17 = v16;
  }

  static Published.subscript.setter();
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10052EAE4(uint64_t a1)
{
  v1[23] = a1;
  v1[24] = sub_100140278(&unk_1008DB8A0);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[29] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v3;
  v1[31] = v2;

  return _swift_task_switch(sub_10052EBDC, v3, v2);
}

uint64_t sub_10052EBDC()
{
  v1 = v0[23];
  v2 = *(v1 + 8);
  v3 = *(v1 + 40);
  v0[32] = v3;
  v0[2] = v0;
  v0[7] = v0 + 177;
  v0[3] = sub_10052ED14;
  v4 = swift_continuation_init();
  v0[17] = sub_100140278(&unk_1008EB630);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003B7520;
  v0[13] = &unk_10085F3A0;
  v0[14] = v4;
  [v2 sendCompetitionRequestToFriend:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10052ED14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_10052F0AC;
  }

  else
  {

    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_10052EE2C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10052EE2C()
{
  v23 = v0;

  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v0[32];
    log = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v4 = 136446466;
    v7 = [v3 UUID];
    if (v7)
    {
      v8 = v7;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = v0[32];
    v12 = v0[27];
    v11 = v0[28];
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, v9, 1, v13);
    sub_100315E0C(v12, v11);
    v14 = Optional.description.getter();
    v16 = v15;
    sub_10000EA04(v11, &unk_1008DB8A0);
    v17 = sub_10000AFDC(v14, v16, &v22);

    *(v4 + 4) = v17;
    *(v4 + 12) = 2112;
    *(v4 + 14) = v10;
    *v5 = v10;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, log, v1, "Successfully sent competition request to friend: %{public}s - %@", v4, 0x16u);
    sub_10000EA04(v5, &unk_1008DB8B0);

    sub_100005A40(v6);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10052F0AC()
{
  v26 = v0;

  swift_willThrow();
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 256);
    log = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v4 = 136446722;
    v6 = [v3 UUID];
    if (v6)
    {
      v7 = v6;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(v0 + 256);
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, v8, 1, v12);
    sub_100315E0C(v11, v10);
    v13 = Optional.description.getter();
    v15 = v14;
    sub_10000EA04(v10, &unk_1008DB8A0);
    v16 = sub_10000AFDC(v13, v15, &v25);

    *(v4 + 4) = v16;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v17;
    *(v4 + 22) = 2112;
    *(v4 + 24) = v9;
    *v5 = v17;
    v5[1] = v9;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, log, v1, "Failed to send competition request to friend: %{public}s error: %{public}@ - %@", v4, 0x20u);
    sub_100140278(&unk_1008DB8B0);
    swift_arrayDestroy();

    sub_100005A40(v23);
  }

  v19 = *(v0 + 256);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = v19;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0;
  *(v0 + 176) = 9;
  v20 = v19;

  static Published.subscript.setter();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10052F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v5;
  v3[17] = v4;

  return _swift_task_switch(sub_10052F470, v5, v4);
}

uint64_t sub_10052F470()
{
  v1 = *(*(v0 + 96) + 40);
  if (![v1 supportsCompetitions])
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v1;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = 0;
    *(v0 + 48) = 10;

    goto LABEL_5;
  }

  if ([v1 isMyActivityDataCurrentlyHidden])
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 104);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 56) = v1;
    *(v0 + 64) = v3;
    *(v0 + 72) = v2;
    *(v0 + 80) = 0;
    *(v0 + 88) = 11;

LABEL_5:
    static Published.subscript.setter();
    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 104);

  v8 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_10052F6AC;

  return v8();
}

uint64_t sub_10052F6AC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10052F7CC, v3, v2);
}

uint64_t sub_10052F7CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052F82C(uint64_t a1)
{
  v1[28] = a1;
  v1[29] = sub_100140278(&unk_1008DB8A0);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[34] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[35] = v3;
  v1[36] = v2;

  return _swift_task_switch(sub_10052F924, v3, v2);
}

uint64_t sub_10052F924()
{
  v1 = v0[28];
  v2 = *(v1 + 8);
  v3 = *(v1 + 40);
  v0[37] = v3;
  v0[2] = v0;
  v0[7] = v0 + 177;
  v0[3] = sub_10052FA60;
  v4 = swift_continuation_init();
  v0[17] = sub_100140278(&unk_1008EB630);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003B7520;
  v0[13] = &unk_10085F328;
  v0[14] = v4;
  [v2 acceptCompetitionRequestFromFriend:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10052FA60()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;

  v4 = *(v1 + 288);
  v5 = *(v1 + 280);
  if (v3)
  {
    v6 = sub_10052FE98;
  }

  else
  {
    v6 = sub_10052FBB4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10052FBB4()
{
  v25 = v0;

  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 296);
    log = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v4 = 136446466;
    v7 = [v3 UUID];
    if (v7)
    {
      v8 = v7;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(v0 + 296);
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, v9, 1, v13);
    sub_100315E0C(v12, v11);
    v14 = Optional.description.getter();
    v16 = v15;
    sub_10000EA04(v11, &unk_1008DB8A0);
    v17 = sub_10000AFDC(v14, v16, &v24);

    *(v4 + 4) = v17;
    *(v4 + 12) = 2112;
    *(v4 + 14) = v10;
    *v5 = v10;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, log, v1, "Successfully accepted competition request from friend: %{public}s - %@", v4, 0x16u);
    sub_10000EA04(v5, &unk_1008DB8B0);

    sub_100005A40(v6);
  }

  v19 = *(v0 + 296);
  v20 = *(*(v0 + 224) + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 184) = v19;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 192) = v20;
  *(v0 + 216) = 13;

  static Published.subscript.setter();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10052FE98()
{
  v26 = v0;

  swift_willThrow();
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 296);
    log = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v4 = 136446722;
    v6 = [v3 UUID];
    if (v6)
    {
      v7 = v6;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(v0 + 296);
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, v8, 1, v12);
    sub_100315E0C(v11, v10);
    v13 = Optional.description.getter();
    v15 = v14;
    sub_10000EA04(v10, &unk_1008DB8A0);
    v16 = sub_10000AFDC(v13, v15, &v25);

    *(v4 + 4) = v16;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v17;
    *(v4 + 22) = 2112;
    *(v4 + 24) = v9;
    *v5 = v17;
    v5[1] = v9;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, log, v1, "Failed to accept competition request from friend: %{public}s error: %{public}@ - %@", v4, 0x20u);
    sub_100140278(&unk_1008DB8B0);
    swift_arrayDestroy();

    sub_100005A40(v23);
  }

  v19 = *(v0 + 296);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = v19;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0;
  *(v0 + 176) = 14;
  v20 = v19;

  static Published.subscript.setter();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1005301C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_10053025C, v5, v4);
}

uint64_t sub_10053025C()
{
  v1 = *(*(v0 + 56) + 40);
  if ([v1 isMyActivityDataCurrentlyHidden])
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 64);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v1;
    *(v0 + 24) = v3;
    *(v0 + 32) = v2;
    *(v0 + 40) = 0;
    *(v0 + 48) = 15;

    static Published.subscript.setter();
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 64);

    v8 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_10053042C;

    return v8();
  }
}

uint64_t sub_10053042C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10053054C, v3, v2);
}

uint64_t sub_10053054C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1005305AC()
{
  swift_getKeyPath();
  sub_100140278(&qword_1008DE948);
  sub_10014A6B0(&unk_1008F1F90, &qword_1008DE948);
  sub_10005FC74(&qword_1008E4080, &type metadata accessor for Date);
  v0 = Sequence.sorted<A>(key:)();

  if (v0 >> 62)
  {
LABEL_17:
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  while (v1 != v2)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v3 = *(v0 + 8 * v2 + 32);
    }

    v4 = v3;
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = [v3 hkWorkoutFromFriendWorkout];

    ++v2;
    if (v6)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v5;
    }
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_1005307C0(void *a1)
{
  v1 = [a1 friendWorkouts];
  if (v1)
  {
    v2 = v1;
    sub_1000059F8(0, &qword_1008E1750);
    sub_100140278(&qword_1008DE948);
    sub_1004F6630();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    sub_100140278(&qword_1008F1F80);
    sub_10014A6B0(&qword_1008F1F88, &qword_1008F1F80);
    v3 = Sequence.sorted<A>(key:)();

    v4 = sub_10052E184(v3);

    v5 = sub_10052E494(v4);
    if (!(v5 >> 62))
    {
      return (v5 & 0xFFFFFFFFFFFFFF8);
    }
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
      return (v5 & 0xFFFFFFFFFFFFFF8);
    }
  }

  v7 = v5;
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
LABEL_9:

    return &_swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = sub_1001AB73C(v8, 0);
  sub_10047486C(v10 + 32, v9, v7);
  v12 = v11;

  result = v10;
  if (v12 != v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

id sub_100530990(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v4 = [a1 as_detailedSharingDurationString];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v7 = objc_opt_self();
  v31 = NSForegroundColorAttributeName;
  v32 = v7;
  v8 = [v7 secondaryLabelColor];
  v9 = sub_1000059F8(0, &qword_1008E7FC0);
  *(inited + 40) = v8;
  v30 = v9;
  *(inited + 64) = v9;
  *(inited + 72) = NSFontAttributeName;
  v10 = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 104) = v10;
  *(inited + 80) = v3;
  v28 = NSFontAttributeName;
  v34 = v3;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10005FC74(&qword_1008E7FD0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithString:v12 attributes:isa];

  if (([a1 hasPendingCompetitionRequestFromMe] & 1) != 0 || objc_msgSend(a1, "isCompetitionActive"))
  {
    v15 = [a1 as_competitionStatusBreadcrumbStringForExperienceType:{a2, v28}];
    if (v15)
    {
      v16 = v15;
      v17 = objc_allocWithZone(NSAttributedString);
      v18 = String._bridgeToObjectiveC()();
      v19 = [v17 initWithString:v18];

      [v14 appendAttributedString:v19];
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1006D1F70;
      *(v20 + 32) = v31;
      v21 = v31;
      *(v20 + 40) = [v32 as_darkCompetitionGold];
      *(v20 + 64) = v30;
      *(v20 + 72) = v29;
      *(v20 + 104) = v10;
      *(v20 + 80) = v34;
      v22 = v29;
      v23 = v34;
      sub_1004C9200(v20);
      swift_setDeallocating();
      swift_arrayDestroy();
      v24 = objc_allocWithZone(NSAttributedString);
      v25 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = [v24 initWithString:v16 attributes:v25];

      [v14 appendAttributedString:v26];
    }
  }

  return v14;
}

uint64_t sub_100530DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100530E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100530EAC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_10052EAE4(v0 + 16);
}

uint64_t sub_100530F40()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BACC;

  return sub_10052F3D4(v0 + 16, v2, v3);
}

id sub_100531048()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window] = 0;
  v44 = [objc_allocWithZone(HKHealthStore) init];
  v2 = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:v44];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  *&v1[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_wheelchairUseCache] = v2;
  type metadata accessor for Dependencies();
  v53 = sub_1000059F8(0, &unk_1008F2050);
  v54 = &protocol witness table for _HKWheelchairUseCharacteristicCache;
  *&v52 = v3;
  sub_1000059F8(0, &qword_1008E3FD0);
  v4 = v3;
  v5 = static OS_dispatch_queue.main.getter();
  v6 = static Dependencies.browsing(wheelchairStatus:queue:)();

  sub_100005A40(&v52);
  *&v1[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_dependencies] = v6;
  type metadata accessor for SeymourBrowsingCoordinator();
  swift_allocObject();

  v7 = sub_10000CF48();
  v8 = OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_browsingCoordinator;
  *&v1[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_browsingCoordinator] = v7;
  type metadata accessor for EngagementAppBadgeProvider();
  v9 = swift_allocObject();

  sub_100140278(&qword_1008F2060);
  Dependencies.resolve<A>(failureHandler:)();

  v10 = OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_engagementAppBadgeProvider;
  *&v1[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_engagementAppBadgeProvider] = v9;

  sub_100140278(&unk_1008F5010);
  Dependencies.resolve<A>(failureHandler:)();

  v11 = *&v1[v10];

  sub_100140278(&qword_1008E4F20);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100140278(&qword_1008F2068);
  v45 = v50;
  Dependencies.resolve<A>(failureHandler:)();

  v12 = type metadata accessor for FitnessAppBadgeAggregator();
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_appBadgeCount] = 0;
  *&v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedActivitySharingCount] = 0;
  *&v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges] = &_swiftEmptySetSingleton;
  v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_hasAmeliaBadge] = 0;
  v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour] = 0;
  *&v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_engagementAppBadgeProvider] = v11;
  *&v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_activitySharingClient] = 0;
  sub_100007C5C(&v52, &v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_contentAvailabilityClient]);
  *&v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_eventHub] = v45;
  sub_100007C5C(v51, &v13[OBJC_IVAR___CHFitnessAppBadgeAggregator_privacyPreferenceClient]);
  v49.receiver = v13;
  v49.super_class = v12;

  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v49, "init");
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  if (qword_1008DA5E0 != -1)
  {
    swift_once();
  }

  [v17 addObserver:v16 selector:ObjectType name:? object:?];

  swift_unknownObjectRelease();

  sub_100005A40(v51);
  sub_100005A40(&v52);
  *&v1[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_fitnessAppBadgeAggregator] = v16;
  v18 = *&v1[v8];
  swift_retain_n();

  v20 = sub_1005D5520(v19, v18, v18, 0);

  v21 = OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator;
  *&v1[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator] = v20;

  sub_100140278(&unk_1008F2070);
  Dependencies.resolve<A>(failureHandler:)();

  v22 = v52;
  swift_unknownObjectRetain();

  Dependencies.resolve<A>(failureHandler:)();

  v23 = *&v1[v21];
  v24 = type metadata accessor for SeymourNotificationResponseCoordinator();
  v46 = v52;
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_amsBag] = v22;
  *&v25[OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_eventHub] = v46;
  *&v25[OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_urlNavigator] = v23;
  v48.receiver = v25;
  v48.super_class = v24;

  *&v1[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_seymourNotificationResponseCoordinator] = objc_msgSendSuper2(&v48, "init");
  v47.receiver = v1;
  v47.super_class = type metadata accessor for TabletSceneDelegate();
  v26 = objc_msgSendSuper2(&v47, "init");
  swift_unknownObjectWeakAssign();
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 currentNotificationCenter];
  [v29 setDelegate:v28];

  v30 = [objc_opt_self() sharedInstance];
  *&v52 = 0;
  LODWORD(v24) = [v30 setCategory:AVAudioSessionCategoryAmbient error:&v52];

  if (v24)
  {
    v31 = v52;
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = v52;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v33 = static os_log_type_t.default.getter();
    v34 = HKLogActivity;
    v35 = os_log_type_enabled(HKLogActivity, v33);
    v36 = v34;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v52 = v38;
      *v37 = 136315138;
      v39 = _typeName(_:qualified:)();
      v41 = sub_10000AFDC(v39, v40, &v52);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v36, v33, "%s failed to set AVAudioSession category to ambient", v37, 0xCu);
      sub_100005A40(v38);
    }

    swift_unknownObjectRelease();
  }

  return v28;
}

id sub_10053183C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabletSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100531940(void *a1)
{
  if ([a1 userInterfaceStyle] == 1)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithRed:0.419607843 green:0.760784314 blue:0.0 alpha:1.0];
  }

  else
  {
    sub_1000059F8(0, &qword_1008E7FC0);
    return static UIColor.keyTint.getter();
  }
}

uint64_t sub_1005319D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100531A74, v8, v7);
}

uint64_t sub_100531A74()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100531B18;
  v2 = *(v0 + 24);

  return sub_100223BE0(v2);
}

uint64_t sub_100531B18()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_100531CD0;
  }

  else
  {
    v5 = sub_100531C54;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100531C54()
{
  v1 = *(v0 + 32);

  sub_1005EAF0C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100531CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005321C8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v71 - v7;
  v82 = type metadata accessor for URL();
  v9 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v71 - v12;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = a1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();

  [v16 setTitle:v18];
  v73 = v17;

  v19 = objc_allocWithZone(UIWindow);
  v74 = v16;
  v20 = [v19 initWithWindowScene:v16];
  v21 = OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window;
  v22 = *&v3[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window];
  *&v3[OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window] = v20;
  v23 = v20;

  if (v23)
  {
    v24 = objc_allocWithZone(UIColor);
    v91 = sub_100531940;
    v92 = 0;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v89 = sub_10014977C;
    v90 = &unk_10085F490;
    v25 = _Block_copy(&aBlock);
    v26 = [v24 initWithDynamicProvider:v25];
    _Block_release(v25);

    [v23 setTintColor:v26];
  }

  v27 = *&v3[v21];
  if (v27)
  {
    v28 = v27;
    v29 = AppCoordinator.rootViewController.getter();
    [v28 setRootViewController:v29];

    v30 = *&v3[v21];
  }

  else
  {
    v30 = 0;
  }

  v78 = v3;
  [v30 makeKeyAndVisible];
  v31 = [a2 URLContexts];
  v32 = sub_1000059F8(0, &qword_1008F2028);
  sub_1005342B0();
  v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = a2;
  v76 = v8;
  v72 = v33;
  v77 = v32;
  if ((v33 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v33 = aBlock;
    v34 = v88;
    v35 = v89;
    v36 = v90;
    v37 = v91;
  }

  else
  {
    v38 = -1 << *(v33 + 32);
    v34 = v33 + 56;
    v35 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v37 = (v40 & *(v33 + 56));

    v36 = 0;
  }

  v71 = v35;
  v41 = (v35 + 64) >> 6;
  v42 = (v9 + 8);
  v79 = v33;
  while (v33 < 0)
  {
    v48 = __CocoaSet.Iterator.next()();
    if (!v48)
    {
      goto LABEL_29;
    }

    v83 = v48;
    swift_dynamicCast();
    v47 = v85;
    v45 = v36;
    v46 = v37;
    if (!v85)
    {
      goto LABEL_29;
    }

LABEL_24:
    v49 = [v47 URL];
    v50 = v80;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = URL.scheme.getter();
    v53 = v52;
    v54 = *v42;
    (*v42)(v50, v82);
    if (v53)
    {
      v85 = static EngagementConstants.badgeLaunchURLString.getter();
      v86 = v55;
      v83 = v51;
      v84 = v53;
      sub_10000FCBC();
      v56 = StringProtocol.contains<A>(_:)();

      if (v56)
      {
        sub_1001CAA5C();
        sub_1001CB1C4();
        sub_1001CB964();
      }
    }

    v57 = [v47 URL];
    v58 = v81;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = URL.scheme.getter();
    v61 = v60;
    v54(v58, v82);
    if (v61)
    {
      v85 = static EngagementConstants.notificationNewFeaturesTopic.getter();
      v86 = v62;
      v83 = v59;
      v84 = v61;
      sub_10000FCBC();
      StringProtocol.contains<A>(_:)();
    }

    v36 = v45;
    v37 = v46;
    v33 = v79;
  }

  v43 = v36;
  v44 = v37;
  v45 = v36;
  if (!v37)
  {
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v41)
      {
        goto LABEL_29;
      }

      v44 = *(v34 + 8 * v45);
      ++v43;
      if (v44)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_20:
  v46 = (v44 - 1) & v44;
  v47 = *(*(v33 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
  if (v47)
  {
    goto LABEL_24;
  }

LABEL_29:
  sub_100022DEC();

  v37 = v78;
  if (qword_1008DAF58 == -1)
  {
    goto LABEL_30;
  }

LABEL_33:
  swift_once();
LABEL_30:
  sub_1002240F0(qword_100926148);
  v63 = type metadata accessor for TaskPriority();
  v64 = v76;
  (*(*(v63 - 8) + 56))(v76, 1, 1, v63);
  type metadata accessor for MainActor();
  v65 = v73;
  v66 = v37;
  v67 = v75;
  v68 = static MainActor.shared.getter();
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = &protocol witness table for MainActor;
  v70 = v74;
  v69[4] = v66;
  v69[5] = v70;
  v69[6] = v67;
  sub_100653FFC(0, 0, v64, &unk_1006F88A0, v69);
}

uint64_t sub_1005329E0(void *a1)
{
  v13[0] = a1;
  v1 = type metadata accessor for NavigationAnnotation();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008F2010);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_100140278(&unk_1008F2040);
  v9 = swift_allocObject();
  v9[1] = xmmword_1006D46C0;
  static NavigationAnnotation.external.getter();
  v13[1] = v9;
  sub_100534140();
  sub_100140278(&qword_1008F2020);
  sub_100534198();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1005ED2BC(v13[0], v4, v8);
  (*(v2 + 8))(v4, v1);
  v10 = Promise.operation.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v10(sub_100173F20, v11);

  return (*(v6 + 8))(v8, v5);
}

void sub_100532C70(uint64_t a1)
{
  v2 = type metadata accessor for NavigationAnnotation();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&unk_1008F2010);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v38 - v5;
  v47 = type metadata accessor for URL();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000059F8(0, &qword_1008F2028);
    sub_1005342B0();
    Set.Iterator.init(_cocoa:)();
    a1 = v53;
    v9 = v54;
    v10 = v55;
    v11 = v56;
    v12 = v57;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v45 = v10;
  v16 = (v10 + 64) >> 6;
  v17 = (v6 + 8);
  v48 = a1;
  while (a1 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23 || (v49 = v23, sub_1000059F8(0, &qword_1008F2028), swift_dynamicCast(), v22 = v51, v20 = v11, v21 = v12, !v51))
    {
LABEL_21:
      sub_100022DEC();
      v30 = sub_1005EADC4(v46);
      if (v30)
      {
        v31 = v30;
        v51 = _swiftEmptyArrayStorage;
        sub_100534140();
        sub_100140278(&qword_1008F2020);
        sub_100534198();
        v32 = v39;
        v33 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v42;
        sub_1005EE14C(v31, v32, v42);
        (*(v40 + 8))(v32, v33);
        v35 = v44;
        v36 = Promise.operation.getter();
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        v36(sub_100173F20, v37);

        (*(v43 + 8))(v34, v35);
      }

      return;
    }

LABEL_18:
    v24 = [v22 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = URL.scheme.getter();
    v27 = v26;
    (*v17)(v8, v47);
    if (v27)
    {
      v51 = static EngagementConstants.badgeLaunchURLString.getter();
      v52 = v28;
      v49 = v25;
      v50 = v27;
      sub_10000FCBC();
      v29 = StringProtocol.contains<A>(_:)();

      if (v29)
      {
        sub_1001CAA5C();
        sub_1001CB1C4();
        sub_1001CB964();
      }
    }

    v11 = v20;
    v12 = v21;
    a1 = v48;
  }

  v18 = v11;
  v19 = v12;
  v20 = v11;
  if (v12)
  {
LABEL_14:
    v21 = (v19 - 1) & v19;
    v22 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      goto LABEL_21;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1005331BC()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008F2010);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - v4;
  v6 = type metadata accessor for BadgingCountsUpdated();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_fitnessAppBadgeAggregator);
  static Log.default.getter();
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  v13._object = 0x800000010074B8E0;
  v14._object = 0x800000010074B910;
  v14._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v13, v14);
  (*(v9 + 8))(v11, v8);
  v15 = *(v12 + OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges);
  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_4;
  }

  v25[1] = *(v12 + OBJC_IVAR___CHFitnessAppBadgeAggregator_appBadgeCount);
  v26 = v1;
  v27 = v5;
  v28 = v3;
  v29 = v2;
  v17 = sub_1001A3CF4(v16, 0);
  v18 = *(type metadata accessor for EngagementBadge() - 8);
  v19 = sub_1001A9BD0(&v33, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v15);

  result = sub_100022DEC();
  if (v19 == v16)
  {
    v3 = v28;
    v2 = v29;
    v1 = v26;
    v5 = v27;
LABEL_4:
    v21 = v30;
    BadgingCountsUpdated.init(appBadgeCount:seymourTabBadges:)();
    swift_getObjectType();
    v22 = v32;
    dispatch thunk of EventHubProtocol.publish<A>(_:)();
    (*(v31 + 8))(v21, v22);
    *(v12 + OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour) = 1;
    sub_1000066AC((*(v1 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_engagementAppBadgeProvider) + 16), *(*(v1 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_engagementAppBadgeProvider) + 40));
    dispatch thunk of EngagementClientProtocol.deleteAllEngagementBadges()();
    v23 = Promise.operation.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v23(sub_100173F20, v24);

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005335DC()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-1] - v3;
  sub_1001CAA5C();
  sub_1001CB1C4();
  sub_1001CB964();
  v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_browsingCoordinator);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_100653FFC(0, 0, v4, &unk_1006F8888, v7);

  sub_100007C5C(*(v1 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator) + 88, v10);
  sub_1000066AC(v10, v10[3]);
  dispatch thunk of MetricSceneLifecycleReporting.reportDidBecomeActive()();
  return sub_100005A40(v10);
}

uint64_t sub_100533750()
{
  v36 = sub_100140278(&unk_1008F2010);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v30 - v0;
  v48 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v48);
  v47 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NavigationRoutingBehavior();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v46 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NavigationSource();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v43 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for NavigationPriority();
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationIntent();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationRequest();
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v37 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.engagement.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = v8;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Fitness received open notification settings", v22, 2u);
    v8 = v30;
  }

  (*(v17 + 8))(v19, v16);
  (*(v11 + 104))(v13, enum case for NavigationResource.notificationSettings(_:), v10);
  v23 = v35;
  *v35 = 1;
  (*(v31 + 104))(v23, enum case for NavigationIntent.presentModal(_:), v8);
  (*(v6 + 104))(v40, enum case for NavigationPriority.takeover(_:), v32);
  (*(v38 + 104))(v43, enum case for NavigationSource.default(_:), v39);
  (*(v44 + 104))(v46, enum case for NavigationRoutingBehavior.default(_:), v45);
  v50 = _swiftEmptyArrayStorage;
  sub_100534140();
  sub_100140278(&qword_1008F2020);
  sub_100534198();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v37;
  NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
  sub_1000066AC((*(v49 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator) + 48), *(*(v49 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator) + 72));
  v25 = v33;
  AppCoordinator.navigateToRequest(_:)();
  v26 = v36;
  v27 = Promise.operation.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v27(sub_100173A1C, v28);

  (*(v34 + 8))(v25, v26);
  return (*(v41 + 8))(v24, v42);
}

void sub_100533E78(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  _Block_copy(a3);
  static Log.engagement.getter();
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a2;
    v17 = v6;
    v18 = v16;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v13;
    *v19 = v13;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fitness received notification response %@", v18, 0xCu);
    sub_1001F3454(v19);

    v6 = v17;
    a2 = v27;
  }

  v21 = *(v7 + 8);
  v21(v12, v6);
  if ([objc_opt_self() shouldHandleNotificationResponse:v13])
  {
    v22 = *(a2 + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_seymourNotificationResponseCoordinator);
    _Block_copy(a3);
    sub_10053F6B0(v13, v22, a3);
    _Block_release(a3);
  }

  else
  {
    static Log.engagement.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unhandled user notification response", v25, 2u);
    }

    v21(v9, v6);
    a3[2](a3);
  }

  _Block_release(a3);
}

unint64_t sub_100534140()
{
  result = qword_1008F2370;
  if (!qword_1008F2370)
  {
    type metadata accessor for NavigationAnnotation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2370);
  }

  return result;
}

unint64_t sub_100534198()
{
  result = qword_1008F2380;
  if (!qword_1008F2380)
  {
    sub_100141EEC(&qword_1008F2020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2380);
  }

  return result;
}

uint64_t sub_1005341FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100223A34(a1, v4, v5, v6);
}

unint64_t sub_1005342B0()
{
  result = qword_1008F2030;
  if (!qword_1008F2030)
  {
    sub_1000059F8(255, &qword_1008F2028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2030);
  }

  return result;
}

uint64_t sub_100534318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_1005319D8(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for FriendCardRingsView()
{
  result = qword_1008F2138;
  if (!qword_1008F2138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100534454()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008E53D0);
    if (v1 <= 0x3F)
    {
      sub_10006DAB0(319, &unk_1008F2148, &qword_1008E9FF8);
      if (v2 <= 0x3F)
      {
        sub_10006DAB0(319, &qword_1008E30A0, &qword_1008F24B0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10053456C()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.footnote(_:), v7, v9);
  v12 = enum case for Font.Design.rounded(_:);
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  sub_10000EA04(v6, &qword_1008DC448);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v15 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925DC0 = v15;
  return result;
}

id sub_10053483C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v164 = sub_100140278(&qword_1008F2198);
  __chkstk_darwin(v164);
  v157 = &v153 - v3;
  v4 = type metadata accessor for Font.Leading();
  v155 = *(v4 - 8);
  v156 = v4;
  __chkstk_darwin(v4);
  v154 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008F21A0);
  __chkstk_darwin(v6 - 8);
  v160 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v166 = (&v153 - v9);
  v161 = sub_100140278(&qword_1008F21A8);
  __chkstk_darwin(v161);
  v163 = &v153 - v10;
  v162 = sub_100140278(&qword_1008F21B0);
  __chkstk_darwin(v162);
  v159 = &v153 - v11;
  v12 = sub_100140278(&qword_1008F21B8);
  __chkstk_darwin(v12);
  v158 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v167 = (&v153 - v15);
  v16 = type metadata accessor for DynamicTypeSize();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FriendCardRingsView();
  v21 = a1 + *(v20 + 32);
  v23 = *v21;
  v22 = *(v21 + 8);
  v24 = *(v21 + 16);
  v168 = a1;
  sub_10005491C(v19);
  LODWORD(v22) = sub_10001DEC8(v19, v23, v22, v24);
  (*(v17 + 8))(v19, v16);
  if (v22 == 2)
  {
    v25 = static VerticalAlignment.center.getter();
    v26 = v167;
    *v167 = v25;
    v26[1] = 0;
    *(v26 + 16) = 1;
    v27 = sub_100140278(&qword_1008F21E8);
    v28 = v168;
    sub_1005359D4(v168, v26 + *(v27 + 44));
    v29 = static Edge.Set.all.getter();
    v30 = v26 + *(v12 + 36);
    *v30 = v29;
    *(v30 + 8) = xmmword_1006DCA20;
    *(v30 + 24) = xmmword_1006D46B0;
    v30[40] = 0;
    result = [*(v28 + *(v20 + 20)) displayName];
    if (result)
    {
      v32 = result;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *&v230 = v33;
      *(&v230 + 1) = v35;
      sub_10000FCBC();
      v36 = Text.init<A>(_:)();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      KeyPath = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v250[55] = v257;
      *&v250[71] = v258;
      *&v250[87] = v259;
      *&v250[103] = v260;
      *&v250[7] = v254;
      *&v250[23] = v255;
      *&v250[39] = v256;
      *(&v249[4] + 9) = *&v250[64];
      *(&v249[5] + 9) = *&v250[80];
      *(&v249[6] + 9) = *&v250[96];
      *(v249 + 9) = *v250;
      *(&v249[1] + 9) = *&v250[16];
      *(&v249[2] + 9) = *&v250[32];
      v251 = v40 & 1;
      *&v247 = v36;
      *(&v247 + 1) = v38;
      LOBYTE(v248) = v40 & 1;
      *(&v248 + 1) = v42;
      *&v249[0] = KeyPath;
      BYTE8(v249[0]) = 1;
      *(&v249[7] + 1) = *(&v260 + 1);
      *(&v249[3] + 9) = *&v250[48];
      sub_100536668(v246);
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      sub_1000059F8(0, &qword_1008E7FC0);
      isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.0, 0.28631, 1.0).super.isa;
      v45 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.19608, 0.52941, 1.0).super.isa;
      v46 = type metadata accessor for GradientColors();
      v47 = objc_allocWithZone(v46);
      *&v47[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
      *&v47[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v45;
      v197.receiver = v47;
      v197.super_class = v46;
      v48 = objc_msgSendSuper2(&v197, "init");
      v49 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.066667, 0.3098, 1.0).super.isa;
      v50 = type metadata accessor for MetricColors();
      v51 = objc_allocWithZone(v50);
      *&v51[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v48;
      *&v51[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v49;
      v196.receiver = v51;
      v196.super_class = v50;
      v52 = objc_msgSendSuper2(&v196, "init");
      v53 = *&v52[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

      v54 = Color.init(uiColor:)();
      v210 = v246[13];
      v211 = v246[14];
      v205 = v246[8];
      v206 = v246[9];
      v208 = v246[11];
      v209 = v246[12];
      v207 = v246[10];
      v202 = v246[4];
      v203 = v246[5];
      v204[0] = v246[6];
      v204[1] = v246[7];
      v198 = v246[0];
      v199 = v246[1];
      v200 = v246[2];
      v201 = v246[3];
      v212 = v54;
      v55 = v158;
      sub_10001B104(v167, v158, &qword_1008F21B8);
      v192 = v249[4];
      v193 = v249[5];
      v194 = v249[6];
      v195 = v249[7];
      v188 = v249[0];
      v189 = v249[1];
      v190 = v249[2];
      v191 = v249[3];
      v186 = v247;
      v187 = v248;
      v182 = v209;
      v183 = v210;
      v184 = v211;
      v185 = v212;
      v178 = v205;
      v179 = v206;
      v180 = v207;
      v181 = v208;
      v174 = v202;
      v175 = v203;
      v176 = v204[0];
      v177 = v204[1];
      v170 = v198;
      v171 = v199;
      v172 = v200;
      v173 = v201;
      v56 = v159;
      sub_10001B104(v55, v159, &qword_1008F21B8);
      v57 = sub_100140278(&qword_1008F21F0);
      v58 = (v56 + *(v57 + 48));
      v60 = v192;
      v59 = v193;
      v213[6] = v192;
      v213[7] = v193;
      v62 = v194;
      v61 = v195;
      v213[8] = v194;
      v213[9] = v195;
      v63 = v191;
      v213[4] = v190;
      v213[5] = v191;
      v65 = v188;
      v64 = v189;
      v213[3] = v189;
      v213[2] = v188;
      v66 = v186;
      v67 = v187;
      v213[0] = v186;
      v213[1] = v187;
      v58[4] = v190;
      v58[5] = v63;
      v58[2] = v65;
      v58[3] = v64;
      v58[8] = v62;
      v58[9] = v61;
      v58[6] = v60;
      v58[7] = v59;
      *v58 = v66;
      v58[1] = v67;
      v68 = v56 + *(v57 + 64);
      v69 = v182;
      v226 = v182;
      v227 = v183;
      v70 = v184;
      v228 = v184;
      v71 = v178;
      v72 = v178;
      v222 = v178;
      v223 = v179;
      v73 = v180;
      v74 = v180;
      v224 = v180;
      v225 = v181;
      v75 = v174;
      v76 = v174;
      v218 = v174;
      v219 = v175;
      v77 = v176;
      v78 = v176;
      v220 = v176;
      v221 = v177;
      v79 = v170;
      v80 = v170;
      v214 = v170;
      v215 = v171;
      v81 = v172;
      v82 = v172;
      v216 = v172;
      v217 = v173;
      v83 = v183;
      v84 = v183;
      *(v68 + 192) = v182;
      *(v68 + 208) = v83;
      *(v68 + 224) = v70;
      v85 = v179;
      v86 = v179;
      *(v68 + 128) = v71;
      *(v68 + 144) = v85;
      v87 = v181;
      v88 = v181;
      *(v68 + 160) = v73;
      *(v68 + 176) = v87;
      v89 = v175;
      v90 = v175;
      *(v68 + 64) = v75;
      *(v68 + 80) = v89;
      v91 = v177;
      v92 = v177;
      *(v68 + 96) = v77;
      *(v68 + 112) = v91;
      v93 = v171;
      v94 = v171;
      *v68 = v79;
      *(v68 + 16) = v93;
      v95 = v173;
      v96 = v173;
      *(v68 + 32) = v81;
      *(v68 + 48) = v95;
      v242 = v69;
      v243 = v84;
      v244 = v184;
      v238 = v72;
      v239 = v86;
      v240 = v74;
      v241 = v88;
      v234 = v76;
      v235 = v90;
      v236 = v78;
      v237 = v92;
      v230 = v80;
      v231 = v94;
      v229 = v185;
      *(v68 + 240) = v185;
      v245 = v185;
      v232 = v82;
      v233 = v96;
      sub_10001B104(&v247, v169, &qword_1008F21F8);
      sub_10001B104(&v198, v169, &qword_1008F2200);
      sub_10001B104(v213, v169, &qword_1008F21F8);
      sub_10001B104(&v214, v169, &qword_1008F2200);
      sub_10000EA04(&v230, &qword_1008F2200);
      v169[6] = v192;
      v169[7] = v193;
      v169[8] = v194;
      v169[9] = v195;
      v169[2] = v188;
      v169[3] = v189;
      v169[4] = v190;
      v169[5] = v191;
      v169[0] = v186;
      v169[1] = v187;
      sub_10000EA04(v169, &qword_1008F21F8);
      sub_10000EA04(v55, &qword_1008F21B8);
      sub_10001B104(v56, v163, &qword_1008F21B0);
      swift_storeEnumTagMultiPayload();
      sub_10014A6B0(&qword_1008F21D8, &qword_1008F21B0);
      sub_10014A6B0(&qword_1008F21E0, &qword_1008F2198);
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(&v198, &qword_1008F2200);
      sub_10000EA04(&v247, &qword_1008F21F8);
      sub_10000EA04(v56, &qword_1008F21B0);
      v97 = v167;
      v98 = &qword_1008F21B8;
      return sub_10000EA04(v97, v98);
    }

    __break(1u);
  }

  else
  {
    v99 = static Alignment.bottomTrailing.getter();
    v100 = v166;
    *v166 = v99;
    v100[1] = v101;
    v102 = sub_100140278(&qword_1008F21C0);
    v103 = v168;
    sub_100536118(v168, (v100 + *(v102 + 44)));
    result = [*(v103 + *(v20 + 20)) displayName];
    if (result)
    {
      v104 = result;
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      *&v230 = v105;
      *(&v230 + 1) = v107;
      sub_10000FCBC();
      v108 = Text.init<A>(_:)();
      v110 = v109;
      LOBYTE(v105) = v111;
      static Font.body.getter();
      v112 = v154;
      v113 = v155;
      v114 = v156;
      (*(v155 + 104))(v154, enum case for Font.Leading.tight(_:), v156);
      Font.leading(_:)();

      (*(v113 + 8))(v112, v114);
      v115 = Text.font(_:)();
      v117 = v116;
      LODWORD(v159) = v118;
      v167 = v119;

      sub_10004642C(v108, v110, v105 & 1);

      v120 = swift_getKeyPath();
      sub_100536668(&v247);
      sub_1000059F8(0, &qword_1008E7FC0);
      v121 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.0, 0.28631, 1.0).super.isa;
      v122 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.19608, 0.52941, 1.0).super.isa;
      v123 = type metadata accessor for GradientColors();
      v124 = objc_allocWithZone(v123);
      *&v124[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v121;
      *&v124[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v122;
      v253.receiver = v124;
      v253.super_class = v123;
      v125 = objc_msgSendSuper2(&v253, "init");
      v126 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.066667, 0.3098, 1.0).super.isa;
      v127 = type metadata accessor for MetricColors();
      v128 = objc_allocWithZone(v127);
      *&v128[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v125;
      *&v128[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v126;
      v252.receiver = v128;
      v252.super_class = v127;
      v129 = objc_msgSendSuper2(&v252, "init");
      v130 = *&v129[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

      v131 = Color.init(uiColor:)();
      v202 = v249[2];
      v203 = v249[3];
      v204[0] = v249[4];
      *(v204 + 10) = *(&v249[4] + 10);
      v198 = v247;
      v199 = v248;
      v200 = v249[0];
      v201 = v249[1];
      *&v205 = v131;
      v132 = v160;
      sub_10001B104(v166, v160, &qword_1008F21A0);
      v176 = v204[0];
      v177 = v204[1];
      *&v178 = v205;
      v172 = v200;
      v173 = v201;
      v174 = v202;
      v175 = v203;
      v170 = v198;
      v171 = v199;
      v133 = v157;
      sub_10001B104(v132, v157, &qword_1008F21A0);
      v134 = sub_100140278(&qword_1008F21C8);
      v135 = v133 + v134[12];
      *v135 = 0;
      *(v135 + 8) = 0;
      v136 = v133 + v134[16];
      *v136 = v115;
      *(v136 + 8) = v117;
      LOBYTE(v129) = v159 & 1;
      *(v136 + 16) = v159 & 1;
      *(v136 + 24) = v167;
      *(v136 + 32) = v120;
      *(v136 + 40) = 1;
      v137 = v133 + v134[20];
      v138 = v172;
      v139 = v172;
      v217 = v173;
      v216 = v172;
      v140 = v170;
      v141 = v170;
      v215 = v171;
      v214 = v170;
      v218 = v174;
      v219 = v175;
      v220 = v176;
      v221 = v177;
      v142 = v177;
      v144 = v176;
      v143 = v177;
      *(v137 + 96) = v176;
      *(v137 + 112) = v142;
      v145 = v173;
      v146 = v174;
      v147 = v173;
      v148 = v174;
      *(v137 + 32) = v138;
      *(v137 + 48) = v145;
      v149 = v175;
      v150 = v175;
      *(v137 + 64) = v146;
      *(v137 + 80) = v149;
      v151 = v171;
      v152 = v171;
      *v137 = v140;
      *(v137 + 16) = v151;
      v236 = v144;
      v237 = v143;
      v232 = v139;
      v233 = v147;
      v235 = v150;
      v234 = v148;
      *&v222 = v178;
      *(v137 + 128) = v178;
      *&v238 = v178;
      v231 = v152;
      v230 = v141;
      sub_10006965C(v115, v117, v129);

      sub_10001B104(&v198, v169, &qword_1008F21D0);
      v158 = v117;
      sub_10006965C(v115, v117, v129);

      v156 = v120;

      sub_10001B104(&v214, v169, &qword_1008F21D0);
      sub_10000EA04(&v230, &qword_1008F21D0);
      sub_10004642C(v115, v117, v129);

      sub_10000EA04(v160, &qword_1008F21A0);
      sub_10001B104(v133, v163, &qword_1008F2198);
      swift_storeEnumTagMultiPayload();
      sub_10014A6B0(&qword_1008F21D8, &qword_1008F21B0);
      sub_10014A6B0(&qword_1008F21E0, &qword_1008F2198);
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(&v198, &qword_1008F21D0);
      sub_10004642C(v115, v158, v129);

      sub_10000EA04(v133, &qword_1008F2198);
      v97 = v166;
      v98 = &qword_1008F21A0;
      return sub_10000EA04(v97, v98);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005359D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F2208);
  __chkstk_darwin(v4 - 8);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v31 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for FriendCardRingsView();
  v32 = *(a1 + *(v15 + 20));
  v16 = a1 + *(v15 + 32);
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  sub_10005491C(v14);
  v20 = sub_10001DEC8(v14, v18, v17, v19);
  v21 = *(v9 + 8);
  v21(v14, v8);
  if (v20 > 1)
  {
    v23 = 60.0;
  }

  else
  {
    sub_10005491C(v14);
    (*(v9 + 104))(v11, enum case for DynamicTypeSize.xxxLarge(_:), v8);
    v22 = static DynamicTypeSize.< infix(_:_:)();
    v21(v11, v8);
    v21(v14, v8);
    if (v22)
    {
      v23 = 80.0;
    }

    else
    {
      v23 = 50.0;
    }
  }

  type metadata accessor for ActivitySharingAvatarProvider();
  sub_100549740(v32, v23);
  v24 = Image.init(uiImage:)();
  v25 = static Edge.Set.all.getter();
  v26 = v33;
  sub_100535D1C(v33);
  v27 = v34;
  sub_10001B104(v26, v34, &qword_1008F2208);
  *a2 = v24;
  *(a2 + 8) = v25;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0x4014000000000000;
  *(a2 + 48) = 0;
  v28 = sub_100140278(&qword_1008F2210);
  sub_10001B104(v27, a2 + *(v28 + 48), &qword_1008F2208);
  v29 = a2 + *(v28 + 64);
  *v29 = 0;
  *(v29 + 8) = 1;

  sub_10000EA04(v26, &qword_1008F2208);
  sub_10000EA04(v27, &qword_1008F2208);
}

__n128 sub_100535D1C@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for FriendCardRingsView();
  v40 = [*(v1 + *(v10 + 24)) activitySummary];
  v11 = v1 + *(v10 + 32);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_10005491C(v9);
  LODWORD(v12) = sub_10001DEC8(v9, v12, v13, v14);
  v15 = *(v4 + 8);
  v15(v9, v3);
  if (v12 > 1)
  {
    v17 = 60.0;
  }

  else
  {
    sub_10005491C(v9);
    (*(v4 + 104))(v6, enum case for DynamicTypeSize.xxLarge(_:), v3);
    v16 = static DynamicTypeSize.< infix(_:_:)();
    v15(v6, v3);
    v15(v9, v3);
    if (v16)
    {
      v17 = 40.0;
    }

    else
    {
      v17 = 30.0;
    }
  }

  v18 = objc_opt_self();
  [v18 preferredActivityRingThicknessForDiameter:v17];
  v20 = v19;
  [v18 preferredActivityRingInterspacingForDiameter:v17];
  v22 = v21;
  v23 = v40;
  if (v40)
  {
    v24 = [v40 paused];
  }

  else
  {
    v24 = 0;
  }

  v25 = v17;
  *&v41 = v23;
  *&v26 = v20;
  *&v27 = v22;
  BYTE8(v41) = v24;
  *(&v41 + 3) = v25;
  *&v42 = __PAIR64__(v27, v26);
  BYTE8(v42) = 2;
  *(&v42 + 9) = 0;
  v43 = 0uLL;
  v44 = v23;
  v45 = v24;
  v46 = v25;
  v47 = v26;
  v48 = v27;
  v49 = 2;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  sub_1004B7008(&v41, v57);
  sub_1004B7064(&v44);
  v28 = sub_100046170();
  v29 = Color.init(uiColor:)();
  v30 = static Edge.Set.all.getter();
  v53 = v41;
  v54 = v42;
  v55 = v43;
  sub_100537FAC();
  sub_100537FAC();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v56[7] = v57[0];
  *&v56[23] = v57[1];
  *&v56[39] = v57[2];
  v31 = sub_100537FAC() * 0.5;
  v32 = (a1 + *(sub_100140278(&qword_1008F2208) + 36));
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = v31;
  v32[1] = v31;
  *(v32 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  v36 = v54;
  *a1 = v53;
  *(a1 + 16) = v36;
  *(a1 + 32) = v55;
  v37 = *&v56[16];
  *(a1 + 57) = *v56;
  *(a1 + 48) = v29;
  *(a1 + 56) = v30;
  *(a1 + 73) = v37;
  result = *&v56[32];
  *(a1 + 89) = *&v56[32];
  *(a1 + 104) = *&v56[47];
  return result;
}

uint64_t sub_100536118@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v31 = sub_100140278(&qword_1008F2240);
  __chkstk_darwin(v31);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for FriendCardRingsView();
  v30 = *(a1 + *(v14 + 20));
  v15 = a1 + *(v14 + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  sub_10005491C(v13);
  LODWORD(v16) = sub_10001DEC8(v13, v16, v17, v18);
  v19 = *(v8 + 8);
  v19(v13, v7);
  if (v16 > 1)
  {
    v21 = 60.0;
  }

  else
  {
    sub_10005491C(v13);
    (*(v8 + 104))(v10, enum case for DynamicTypeSize.xxxLarge(_:), v7);
    v20 = static DynamicTypeSize.< infix(_:_:)();
    v19(v10, v7);
    v19(v13, v7);
    if (v20)
    {
      v21 = 80.0;
    }

    else
    {
      v21 = 50.0;
    }
  }

  type metadata accessor for ActivitySharingAvatarProvider();
  sub_100549740(v30, v21);
  v22 = Image.init(uiImage:)();
  sub_100535D1C(v6);
  v23 = sub_100536440();
  v24 = v32;
  v25 = &v6[*(v31 + 36)];
  *v25 = v23;
  *(v25 + 1) = v26;
  sub_10001B104(v6, v24, &qword_1008F2240);
  v27 = v33;
  *v33 = v22;
  v28 = sub_100140278(&qword_1008F2248);
  sub_10001B104(v24, v27 + *(v28 + 48), &qword_1008F2240);

  sub_10000EA04(v6, &qword_1008F2240);
  sub_10000EA04(v24, &qword_1008F2240);
}

double sub_100536440()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = v0 + *(type metadata accessor for FriendCardRingsView() + 32);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  sub_10005491C(v7);
  LODWORD(v9) = sub_10001DEC8(v7, v9, v10, v11);
  v12 = *(v2 + 8);
  v12(v7, v1);
  result = 0.0;
  if (v9 <= 1)
  {
    sub_10005491C(v7);
    v14 = enum case for DynamicTypeSize.xxLarge(_:);
    v15 = *(v2 + 104);
    v15(v4, enum case for DynamicTypeSize.xxLarge(_:), v1);
    v16 = static DynamicTypeSize.< infix(_:_:)();
    v12(v4, v1);
    v12(v7, v1);
    result = 10.0;
    if ((v16 & 1) == 0)
    {
      sub_10005491C(v7);
      v15(v4, v14, v1);
      v17 = static DynamicTypeSize.== infix(_:_:)();
      v12(v4, v1);
      v12(v7, v1);
      if (v17)
      {
        return 5.0;
      }

      else
      {
        return sub_100537FAC() * 0.5;
      }
    }
  }

  return result;
}

double sub_100536668@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v49 - v5;
  v6 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v58 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  sub_100536ECC(v11);
  v18 = *(v13 + 48);
  if (v18(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &unk_1008EE8E0);
LABEL_5:
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 localizedStringForKey:v22 value:0 table:0];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *&v88 = v24;
    *(&v88 + 1) = v26;
    sub_10000FCBC();
    *&v81 = Text.init<A>(_:)();
    *(&v81 + 1) = v27;
    LOBYTE(v82) = v28 & 1;
    *(&v82 + 1) = v29;
    sub_1005382E4(&v81);
    v78 = v85;
    v79 = v86;
    v80[0] = v87[0];
    *(v80 + 10) = *(v87 + 10);
    v74 = v81;
    v75 = v82;
    v76 = v83;
    v77 = v84;
    sub_100140278(&qword_1008F2218);
    sub_1005382F0();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_11;
  }

  v53 = a1;
  v19 = v11;
  v20 = *(v13 + 32);
  v20(v17, v19, v12);
  sub_1005370F0(v8);
  if (v18(v8, 1, v12) == 1)
  {
    sub_10000EA04(v8, &unk_1008EE8E0);
    (*(v13 + 8))(v17, v12);
    a1 = v53;
    goto LABEL_5;
  }

  v51 = v13;
  v52 = v17;
  v50 = v12;
  v20(v58, v8, v12);
  v30 = v54;
  sub_10005491C(v54);
  v32 = v55;
  v31 = v56;
  v33 = v57;
  v34 = *(v56 + 104);
  v34(v55, enum case for DynamicTypeSize.xxLarge(_:), v57);
  v35 = static DynamicTypeSize.== infix(_:_:)();
  v36 = *(v31 + 8);
  v36(v32, v33);
  v36(v30, v33);
  if (v35 & 1) != 0 || (sub_10005491C(v30), v34(v32, enum case for DynamicTypeSize.xxxLarge(_:), v33), v37 = static DynamicTypeSize.== infix(_:_:)(), v36(v32, v33), v36(v30, v33), (v37))
  {
    v38 = static HorizontalAlignment.center.getter();
    LOBYTE(v88) = 0;
    v39 = v58;
    sub_100537AF0(v52, v58, &v74);
    *&v59[7] = v74;
    *&v59[55] = v77;
    *&v59[39] = v76;
    *&v59[23] = v75;
    v40 = v88;
    v88 = v38;
    v89[0] = v40;
    *&v89[1] = *v59;
    *&v89[64] = *(&v77 + 1);
    *&v89[49] = *&v59[48];
    *&v89[33] = *&v59[32];
    *&v89[17] = *&v59[16];
    sub_1005383E8(&v88);
  }

  else
  {
    v41 = static VerticalAlignment.center.getter();
    LOBYTE(v67) = 0;
    v39 = v58;
    sub_100537CA4(v52, v58, &v88);
    v63 = *&v89[16];
    v64 = *&v89[32];
    v65 = *&v89[48];
    v66 = *&v89[64];
    v61 = v88;
    v62 = *v89;
    v76 = *&v89[16];
    v77 = *&v89[32];
    v78 = *&v89[48];
    v79 = *&v89[64];
    v74 = v88;
    v75 = *v89;
    sub_10001B104(&v61, &v81, &qword_1008F2238);
    sub_10000EA04(&v74, &qword_1008F2238);
    *&v60[39] = v63;
    *&v60[55] = v64;
    *&v60[71] = v65;
    *&v60[87] = v66;
    *&v60[7] = v61;
    *&v60[23] = v62;
    v88 = v41;
    v89[0] = v67;
    *&v89[33] = *&v60[32];
    *&v89[17] = *&v60[16];
    *&v89[1] = *v60;
    *&v89[96] = *(&v66 + 1);
    *&v89[81] = *&v60[80];
    *&v89[65] = *&v60[64];
    *&v89[49] = *&v60[48];
    sub_1005383D4(&v88);
  }

  v85 = *&v89[48];
  v86 = *&v89[64];
  v87[0] = *&v89[80];
  *(v87 + 9) = *&v89[89];
  v81 = v88;
  v82 = *v89;
  v83 = *&v89[16];
  v84 = *&v89[32];
  sub_100140278(&qword_1008E3220);
  sub_100140278(&qword_1008F2230);
  sub_10014A6B0(&qword_1008E3230, &qword_1008E3220);
  sub_10014A6B0(&qword_1008F2228, &qword_1008F2230);
  _ConditionalContent<>.init(storage:)();
  v78 = v71;
  v79 = v72;
  v80[0] = v73[0];
  *(v80 + 9) = *(v73 + 9);
  v74 = v67;
  v75 = v68;
  v76 = v69;
  v77 = v70;
  sub_1005383E0(&v74);
  *&v89[48] = v78;
  *&v89[64] = v79;
  *&v89[80] = v80[0];
  *&v89[90] = *(v80 + 10);
  v88 = v74;
  *v89 = v75;
  *&v89[16] = v76;
  *&v89[32] = v77;
  sub_100140278(&qword_1008F2218);
  sub_1005382F0();
  _ConditionalContent<>.init(storage:)();
  v42 = *(v51 + 8);
  v43 = v39;
  v44 = v50;
  v42(v43, v50);
  v42(v52, v44);
  *&v89[48] = v85;
  *&v89[64] = v86;
  *&v89[80] = v87[0];
  *&v89[90] = *(v87 + 10);
  v88 = v81;
  *v89 = v82;
  *&v89[16] = v83;
  *&v89[32] = v84;
  a1 = v53;
LABEL_11:
  v45 = *&v89[64];
  a1[4] = *&v89[48];
  a1[5] = v45;
  a1[6] = *&v89[80];
  *(a1 + 106) = *&v89[90];
  v46 = *v89;
  *a1 = v88;
  a1[1] = v46;
  result = *&v89[16];
  v48 = *&v89[32];
  a1[2] = *&v89[16];
  a1[3] = v48;
  return result;
}

uint64_t sub_100536ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FriendCardRingsView() + 24));
  if (v3)
  {
    v4 = v3;
    v5 = [v4 activitySummary];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();

      v8 = [objc_opt_self() displayContextWithName:v7];

      v9 = [v6 as_movePercentStringWithContext:v8 snapshot:v4];
      if (v9)
      {
        v10 = v9;
        AttributedString.init(_:)();
        if (qword_1008DAD40 != -1)
        {
          swift_once();
        }

        sub_10005F988();

        AttributedString.subscript.setter();

        v11 = type metadata accessor for AttributedString();
        return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
      }
    }

    else
    {
      v6 = v4;
    }
  }

  v13 = type metadata accessor for AttributedString();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

id sub_1005370F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v99 - v4;
  v6 = type metadata accessor for FriendCardRingsView();
  v7 = *(v1 + *(v6 + 24));
  if (v7)
  {
    v8 = *(v1 + *(v6 + 28));
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      v11 = [v10 activitySummary];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 activityMoveMode];
        v105 = v9;
        v106 = a1;
        v104 = v10;
        if (v13 == 2)
        {
          v14 = [v12 appleMoveTime];
          v15 = [v12 appleMoveTimeGoal];
          if (qword_1008DAD40 != -1)
          {
            swift_once();
          }

          v103 = qword_100925DC0;
          if (v14)
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = objc_opt_self();
            v18 = [v17 mainBundle];
            v19 = String._bridgeToObjectiveC()();
            v20 = [v18 localizedStringForKey:v19 value:0 table:0];

            v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            v23 = [v17 mainBundle];
            v24 = String._bridgeToObjectiveC()();
            v25 = [v23 localizedStringForKey:v24 value:0 table:0];

            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = v27;

            sub_1004C2DD4(v102, v22, v26, v28, 0, 0xE000000000000000, v103, v5);

LABEL_28:
            goto LABEL_29;
          }

          v47 = objc_opt_self();
          v48 = v14;
          v15 = v15;
          v49 = [v47 minuteUnit];
          v50 = objc_opt_self();
          v102 = v48;
          [v48 doubleValueForUnit:v49];
          v52 = [objc_allocWithZone(NSNumber) initWithDouble:v51];
          v53 = [v50 stringWithNumber:v52 decimalPrecision:1 roundingMode:1];

          if (v53)
          {
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v101 = v54;

            [v15 doubleValueForUnit:v49];
            v56 = [objc_allocWithZone(NSNumber) initWithDouble:v55];
            v57 = [v50 stringWithNumber:v56 decimalPrecision:1 roundingMode:1];

            if (v57)
            {
              v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v60 = v59;

              v61 = [objc_opt_self() mainBundle];
              v62 = String._bridgeToObjectiveC()();
              v63 = [v61 localizedStringForKey:v62 value:0 table:0];

              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;

              sub_1004C2DD4(v100, v101, v58, v60, v64, v66, v103, v5);

              v67 = v102;
              goto LABEL_28;
            }
          }

          v95 = v102;
LABEL_40:

          v98 = type metadata accessor for AttributedString();
          (*(*(v98 - 8) + 56))(v5, 1, 1, v98);
          return sub_1005383F0(v5, v106);
        }

        v32 = [v12 activeEnergyBurned];
        v33 = [v12 activeEnergyBurnedGoal];
        if (qword_1008DAD40 != -1)
        {
          swift_once();
        }

        if (v32)
        {
          v34 = v33 == 0;
        }

        else
        {
          v34 = 1;
        }

        v103 = qword_100925DC0;
        if (v34)
        {
          v35 = objc_opt_self();
          v36 = [v35 mainBundle];
          v37 = String._bridgeToObjectiveC()();
          v38 = [v36 localizedStringForKey:v37 value:0 table:0];

          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          v41 = [v35 mainBundle];
          v42 = String._bridgeToObjectiveC()();
          v43 = [v41 localizedStringForKey:v42 value:0 table:0];

          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          sub_1004C2838(v102, v40, v44, v46, 0, 0xE000000000000000, v103, v5);

LABEL_29:
LABEL_30:

          v68 = type metadata accessor for AttributedString();
          (*(*(v68 - 8) + 56))(v5, 0, 1, v68);
          return sub_1005383F0(v5, v106);
        }

        v69 = v32;
        v102 = v33;
        result = [v9 unitManager];
        if (result)
        {
          v70 = result;
          v71 = [result userActiveEnergyBurnedUnit];

          v72 = objc_opt_self();
          v101 = v69;
          [v69 doubleValueForUnit:v71];
          v74 = [objc_allocWithZone(NSNumber) initWithDouble:v73];
          v75 = [v72 stringWithNumber:v74 decimalPrecision:1 roundingMode:1];

          if (v75)
          {
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v76;

            [v102 doubleValueForUnit:v71];
            v79 = [objc_allocWithZone(NSNumber) initWithDouble:v78];
            v80 = [v72 stringWithNumber:v79 decimalPrecision:1 roundingMode:1];

            if (v80)
            {
              v81 = v77;
              v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v84 = v83;

              v85 = v105;
              result = [v105 localizedShortActiveEnergyUnitString];
              if (result)
              {
                v86 = result;
                v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v89 = v88;

                v107 = v87;
                v108 = v89;
                sub_10000FCBC();
                v90 = StringProtocol.localizedUppercase.getter();
                v92 = v91;

                sub_1004C2838(v100, v81, v82, v84, v90, v92, v103, v5);

                v93 = v101;
                v94 = v102;

                goto LABEL_30;
              }

              goto LABEL_43;
            }
          }

          v96 = v101;
          v97 = v102;

          goto LABEL_40;
        }

        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }
    }
  }

  v29 = type metadata accessor for AttributedString();
  v30 = *(*(v29 - 8) + 56);

  return v30(a1, 1, 1, v29);
}

uint64_t sub_100537AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a1, v6, v8);
  v12 = Text.init(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (v11)(v10, a2, v6);
  v19 = Text.init(_:)();
  v21 = v20;
  v22 = v16 & 1;
  v28 = v16 & 1;
  v30 = v16 & 1;
  v24 = v23 & 1;
  v29 = v23 & 1;
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v22;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v23 & 1;
  *(a3 + 56) = v25;
  sub_10006965C(v12, v14, v22);

  sub_10006965C(v19, v21, v24);

  sub_10004642C(v19, v21, v24);

  sub_10004642C(v12, v14, v28);
}

uint64_t sub_100537CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a1, v6, v8);
  v36 = Text.init(_:)();
  v37 = v12;
  v39 = v13;
  HIDWORD(v35) = v14;
  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v18 = Text.init(_:)();
  v20 = v19;
  LOBYTE(a1) = v21;
  v23 = v22;
  (v11)(v10, v38, v6);
  v24 = Text.init(_:)();
  v26 = v25;
  v27 = BYTE4(v35) & 1;
  v44 = BYTE4(v35) & 1;
  LOBYTE(a1) = a1 & 1;
  v43 = a1;
  v42 = BYTE4(v35) & 1;
  v41 = a1;
  LOBYTE(v7) = v28 & 1;
  v40 = v28 & 1;
  v29 = v36;
  v30 = v37;
  v31 = v39;
  *a3 = v36;
  *(a3 + 8) = v31;
  *(a3 + 16) = v27;
  *(a3 + 24) = v30;
  *(a3 + 32) = v18;
  *(a3 + 40) = v20;
  *(a3 + 48) = a1;
  *(a3 + 56) = v23;
  *(a3 + 64) = v24;
  *(a3 + 72) = v26;
  *(a3 + 80) = v28 & 1;
  *(a3 + 88) = v32;
  v33 = v29;
  sub_10006965C(v29, v31, v27);

  sub_10006965C(v18, v20, a1);

  sub_10006965C(v24, v26, v7);

  sub_10004642C(v24, v26, v7);

  sub_10004642C(v18, v20, v43);

  sub_10004642C(v33, v39, v44);
}

double sub_100537FAC()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = v0 + *(type metadata accessor for FriendCardRingsView() + 32);
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  sub_10005491C(v7);
  v20 = v10;
  LODWORD(v10) = sub_10001DEC8(v7, v10, v9, v11);
  v12 = *(v2 + 8);
  v12(v7, v1);
  v19 = v2;
  if (v10 > 1)
  {
    v14 = 60.0;
  }

  else
  {
    sub_10005491C(v7);
    (*(v2 + 104))(v4, enum case for DynamicTypeSize.xxLarge(_:), v1);
    v13 = static DynamicTypeSize.< infix(_:_:)();
    v12(v4, v1);
    v12(v7, v1);
    if (v13)
    {
      v14 = 40.0;
    }

    else
    {
      v14 = 30.0;
    }
  }

  sub_10005491C(v7);
  v15 = sub_10001DEC8(v7, v20, v9, v11);
  v12(v7, v1);
  v16 = 2.0;
  if (v15 <= 1)
  {
    sub_10005491C(v7);
    (*(v19 + 104))(v4, enum case for DynamicTypeSize.xxLarge(_:), v1);
    v17 = static DynamicTypeSize.< infix(_:_:)();
    v12(v4, v1);
    v12(v7, v1);
    v16 = 2.0;
    if (v17)
    {
      v16 = 4.0;
    }
  }

  return v14 + v16;
}

uint64_t sub_100538238@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100140278(&qword_1008F2188);
  sub_10053483C(v1, a1 + *(v3 + 44));
  v4 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_100140278(&qword_1008F2190);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

unint64_t sub_1005382F0()
{
  result = qword_1008F2220;
  if (!qword_1008F2220)
  {
    sub_100141EEC(&qword_1008F2218);
    sub_10014A6B0(&qword_1008E3230, &qword_1008E3220);
    sub_10014A6B0(&qword_1008F2228, &qword_1008F2230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2220);
  }

  return result;
}

uint64_t sub_1005383F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008EE8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100538460()
{
  result = qword_1008F2250;
  if (!qword_1008F2250)
  {
    sub_100141EEC(&qword_1008F2190);
    sub_10014A6B0(&qword_1008F2258, &qword_1008F2260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2250);
  }

  return result;
}

void (*sub_100538518(uint64_t **a1, uint64_t a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10053C858(v4, a2);
  return sub_100538590;
}

void (*sub_100538594(uint64_t **a1, uint64_t a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10053C900(v4, a2);
  return sub_10053CF8C;
}

void (*sub_100538620(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100222CA8;
}

id sub_1005386D8(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v42 = a4;
  v43 = a3;
  v39 = a2;
  v41 = a1;
  v40 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E81D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_100140278(&qword_1008F1058);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR___CHWorkoutDetailSplitDataSource__metrics;
  v45 = &_swiftEmptyDictionarySingleton;
  sub_100140278(&qword_1008F1018);
  Published.init(initialValue:)();
  (*(v14 + 32))(&v5[v17], v16, v13);
  v18 = OBJC_IVAR___CHWorkoutDetailSplitDataSource__columns;
  v45 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E81B0);
  Published.init(initialValue:)();
  (*(v10 + 32))(&v5[v18], v12, v9);
  v19 = v39;
  *&v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  v20 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_internalQueue;
  sub_1000059F8(0, &qword_1008E3FD0);
  v21 = v40;
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInitiated(_:), v40);
  v22 = static OS_dispatch_queue.global(qos:)();
  v23 = v8;
  v24 = v41;
  (*(v6 + 8))(v23, v21);
  *&v5[v20] = v22;
  v25 = v42;
  v26 = v43;
  *&v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_didFinishLoadingStandardSplits] = 0;
  v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_didFinishLoadingCustomSplits] = 0;
  *&v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_dataCalculator] = v26;
  *&v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_formattingManager] = v25;
  *&v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_workout] = v24;
  *&v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_workoutActivity] = v19;
  if (v19)
  {
    v27 = v26;
    v28 = v25;
    v29 = v24;
    v19 = v19;
    result = [v19 fiui_activityType];
  }

  else
  {
    v31 = v26;
    v32 = v25;
    result = [v24 fiui_activityType];
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v33 = result;
  if (FIUIPaceFormatForWorkoutActivityType() == 4)
  {
    v34 = 8;
  }

  else
  {
    v34 = 3;
  }

  if ([v33 effectiveTypeIdentifier] == 13)
  {
    v35 = 9;
  }

  else
  {
    v35 = 6;
  }

  sub_100140278(&qword_1008DE488);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1006E87A0;
  *(v36 + 32) = 512;
  *(v36 + 34) = v34;
  *(v36 + 35) = 1284;
  *(v36 + 37) = v35;
  *&v5[OBJC_IVAR___CHWorkoutDetailSplitDataSource_defaultColumns] = v36;
  v37 = type metadata accessor for WorkoutDetailSplitDataSource();
  v44.receiver = v5;
  v44.super_class = v37;
  v38 = objc_msgSendSuper2(&v44, "init");
  sub_100538BD8();

  return v38;
}

void sub_100538BD8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator) startAnimating];
    swift_unknownObjectRelease();
  }

  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailSplitDataSource_dataCalculator];
  v3 = *&v0[OBJC_IVAR___CHWorkoutDetailSplitDataSource_workout];
  v4 = *&v0[OBJC_IVAR___CHWorkoutDetailSplitDataSource_workoutActivity];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v15 = sub_10053CDA0;
  v16 = v5;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100539698;
  v14 = &unk_10085F558;
  v6 = _Block_copy(&v11);
  v7 = v0;

  [v2 customSplitsForWorkout:v3 workoutActivity:v4 completion:v6];
  _Block_release(v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_10053CDA8;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100539698;
  v14 = &unk_10085F5A8;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v2 splitsForWorkout:v3 workoutActivity:v4 completion:v9];
  _Block_release(v9);
}

void sub_100538DD0(id *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    v15 = v77;
    v16 = v78;
    *(v14 + 56) = v78;
    v17 = sub_100005994((v14 + 32));
    (*(*(v16 - 8) + 16))(v17, v15, v16);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  else if (a1)
  {
    v70 = dispatch_group_create();
    v58[0] = sub_1000059F8(0, &qword_1008E3FD0);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a1;
    v84 = sub_10053CE9C;
    v85 = v19;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000449A8;
    v83 = &unk_10085F738;
    v20 = _Block_copy(&aBlock);
    v73 = a1;
    v21 = v20;
    v22 = a3;
    v23 = v9;
    v69 = v22;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v24 = sub_10053CDD4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    v25 = sub_100140278(&unk_1008E7F50);
    v26 = sub_10002621C();
    v67 = v25;
    v66 = v26;
    v68 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v27 = v73;
    _Block_release(v21);

    v29 = *(v7 + 8);
    v28 = v7 + 8;
    v71 = v23;
    v65 = v29;
    v29(v23, v6);
    v31 = *(v11 + 8);
    v30 = v11 + 8;
    v64 = v31;
    v31(v13, v10);
    v32 = v27 & 0xFFFFFFFFFFFFFF8;
    v72 = v6;
    if (v27 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v34 = 0;
      v59 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_internalQueue;
      v63 = v27 & 0xC000000000000001;
      v58[1] = &v82;
      v62 = v10;
      v61 = v32;
      v60 = i;
      while (1)
      {
        if (v63)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_15;
          }

          v35 = *(v27 + 8 * v34 + 32);
        }

        v27 = v35;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v36 = v69;
        v76 = v34 + 1;
        v75 = *&v69[v59];
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = v27;
        v37[4] = v34;
        v84 = sub_10053CEC0;
        v85 = v37;
        aBlock = _NSConcreteStackBlock;
        v81 = 1107296256;
        v82 = sub_1000449A8;
        v83 = &unk_10085F788;
        v38 = _Block_copy(&aBlock);
        v39 = v36;
        v74 = v70;
        v40 = v27;
        static DispatchQoS.unspecified.getter();
        v79 = _swiftEmptyArrayStorage;
        v41 = v30;
        v42 = v71;
        v43 = v28;
        v44 = v72;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v45 = v60;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v46 = v38;
        v32 = v61;
        _Block_release(v46);

        v10 = v62;
        v47 = v42;
        v30 = v41;
        v27 = v73;
        v48 = v44;
        v28 = v43;
        v65(v47, v48);
        v64(v13, v10);

        ++v34;
        if (v76 == v45)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
    v49 = v13;
    v50 = static OS_dispatch_queue.main.getter();
    v51 = swift_allocObject();
    v52 = v69;
    *(v51 + 16) = v69;
    v84 = sub_10053CF04;
    v85 = v51;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000449A8;
    v83 = &unk_10085F7D8;
    v53 = _Block_copy(&aBlock);
    v54 = v52;
    static DispatchQoS.unspecified.getter();
    v79 = _swiftEmptyArrayStorage;
    v56 = v71;
    v55 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v70;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v53);

    v65(v56, v55);
    v64(v49, v10);
  }
}

uint64_t sub_10053954C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_100538620(v12);
  v7 = sub_100538594(v11, 0);
  v8 = *v6;
  if (!*v6)
  {
    (v7)(v11, 0);
    (v5)(v12, 0);
    return sub_10053B52C(0);
  }

  v9 = v6;

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v9 = v8;
  if (v8 >> 62 || (result & 1) == 0)
  {
    result = sub_10057FAF8(v8);
    v8 = result;
    *v9 = result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a3;

    (v7)(v11, 0);
    (v5)(v12, 0);
    return sub_10053B52C(0);
  }

  __break(1u);
  return result;
}

uint64_t sub_100539698(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008F1810);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_10053973C(id *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    v15 = v77;
    v16 = v78;
    *(v14 + 56) = v78;
    v17 = sub_100005994((v14 + 32));
    (*(*(v16 - 8) + 16))(v17, v15, v16);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  else if (a1)
  {
    v70 = dispatch_group_create();
    v58[0] = sub_1000059F8(0, &qword_1008E3FD0);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a1;
    v84 = sub_10053CDB0;
    v85 = v19;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000449A8;
    v83 = &unk_10085F5F8;
    v20 = _Block_copy(&aBlock);
    v73 = a1;
    v21 = v20;
    v22 = a3;
    v23 = v9;
    v69 = v22;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v24 = sub_10053CDD4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    v25 = sub_100140278(&unk_1008E7F50);
    v26 = sub_10002621C();
    v67 = v25;
    v66 = v26;
    v68 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v27 = v73;
    _Block_release(v21);

    v29 = *(v7 + 8);
    v28 = v7 + 8;
    v71 = v23;
    v65 = v29;
    v29(v23, v6);
    v31 = *(v11 + 8);
    v30 = v11 + 8;
    v64 = v31;
    v31(v13, v10);
    v32 = v27 & 0xFFFFFFFFFFFFFF8;
    v72 = v6;
    if (v27 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v34 = 0;
      v59 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_internalQueue;
      v63 = v27 & 0xC000000000000001;
      v58[1] = &v82;
      v62 = v10;
      v61 = v32;
      v60 = i;
      while (1)
      {
        if (v63)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_15;
          }

          v35 = *(v27 + 8 * v34 + 32);
        }

        v27 = v35;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v36 = v69;
        v76 = v34 + 1;
        v75 = *&v69[v59];
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = v27;
        v37[4] = v34;
        v84 = sub_10053CE1C;
        v85 = v37;
        aBlock = _NSConcreteStackBlock;
        v81 = 1107296256;
        v82 = sub_1000449A8;
        v83 = &unk_10085F648;
        v38 = _Block_copy(&aBlock);
        v39 = v36;
        v74 = v70;
        v40 = v27;
        static DispatchQoS.unspecified.getter();
        v79 = _swiftEmptyArrayStorage;
        v41 = v30;
        v42 = v71;
        v43 = v28;
        v44 = v72;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v45 = v60;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v46 = v38;
        v32 = v61;
        _Block_release(v46);

        v10 = v62;
        v47 = v42;
        v30 = v41;
        v27 = v73;
        v48 = v44;
        v28 = v43;
        v65(v47, v48);
        v64(v13, v10);

        ++v34;
        if (v76 == v45)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
    v49 = v13;
    v50 = static OS_dispatch_queue.main.getter();
    v51 = swift_allocObject();
    v52 = v69;
    *(v51 + 16) = v69;
    v84 = sub_10053CE60;
    v85 = v51;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000449A8;
    v83 = &unk_10085F698;
    v53 = _Block_copy(&aBlock);
    v54 = v52;
    static DispatchQoS.unspecified.getter();
    v79 = _swiftEmptyArrayStorage;
    v56 = v71;
    v55 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v70;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v53);

    v65(v56, v55);
    v64(v49, v10);
  }
}

uint64_t sub_100539EB8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = static Published.subscript.modify();
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v21;
    *v21 = 0x8000000000000000;
    sub_1004919C4(v9, a3, isUniquelyReferenced_nonNull_native);
    *v21 = v25;
    v19(&v26, 0);

    return sub_10053B52C(a4);
  }

  v26 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v23 = a3;
    v24 = a1;
    v11 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(a2 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      [v12 distanceInMeters];
      v15 = v14;
      [v13 duration];
      v17 = v16;

      type metadata accessor for WorkoutDurationMetrics();
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 1;
      *(v18 + 72) = 0;
      *(v18 + 80) = 1;
      *(v18 + 88) = 0u;
      *(v18 + 104) = 0u;
      *(v18 + 120) = 0;
      *(v18 + 128) = 1;
      *(v18 + 144) = 0;
      *(v18 + 152) = 0;
      *(v18 + 136) = 0;
      *(v18 + 32) = v15;
      *(v18 + 40) = 0;
      *(v18 + 64) = v17;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v11);
    v9 = v26;
    a3 = v23;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10053A108(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26 = a4;
  v27 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a1[OBJC_IVAR___CHWorkoutDetailSplitDataSource_workout];
  v15 = *&a1[OBJC_IVAR___CHWorkoutDetailSplitDataSource_workoutActivity];
  v16 = *&a1[OBJC_IVAR___CHWorkoutDetailSplitDataSource_dataCalculator];
  type metadata accessor for WorkoutDurationMetrics();
  swift_allocObject();
  v17 = v15;
  v18 = sub_1003CF288(v14, v15, a2, v16, 0, 0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  v20[2] = a1;
  v20[3] = v22;
  v20[4] = v18;
  aBlock[4] = v21;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10053CDD4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v31 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v30);
}

uint64_t sub_10053A450(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_100538620(v12);
  v7 = sub_100538594(v11, 1);
  v8 = *v6;
  if (*v6)
  {
    v9 = v6;

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v9 = v8;
    if (v8 >> 62 || (result & 1) == 0)
    {
      result = sub_10057FAF8(v8);
      v8 = result;
      *v9 = result;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a3;

      (v7)(v11, 0);
      return (v5)(v12, 0);
    }

    __break(1u);
  }

  else
  {
    (v7)(v11, 0);
    return (v5)(v12, 0);
  }

  return result;
}

uint64_t sub_10053A584(uint64_t a1, char a2, void *a3, void *a4)
{
  result = sub_10053B52C(a2);
  *(a1 + *a3) = 1;
  if (*(a1 + *a4) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [*(result + OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator) stopAnimating];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10053A630(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v7 + 16) && (v2 = sub_1004C5998(a1), (v3 & 1) != 0))
  {
    v4 = *(*(v7 + 56) + 8 * v2);

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v5;
  }

  else
  {

    return 0;
  }
}

id sub_10053A718(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008DEC88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v41;
  if (!*(v41 + 16))
  {
    goto LABEL_14;
  }

  v12 = sub_1004C5998(a1);
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v16 = *(v14 + 32);
  }

  v17 = *(v16 + 32);
  v18 = *(v16 + 40);

  if (v18)
  {
    return 0;
  }

  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailSplitDataSource_formattingManager) unitManager];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = result;
  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailSplitDataSource_workout) fiui_activityType];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = FIUIDistanceTypeForActivityType();

  v22 = [v19 userDistanceHKUnitForDistanceType:v21];
  if (HKUnit.measurementSystem.getter() == 1)
  {
    v23 = objc_opt_self();
    v24 = [v23 meters];
    sub_1000059F8(0, &qword_1008DEE38);
    Measurement.init(value:unit:)();
    if (v17 >= 1000.0)
    {
      v32 = [v23 kilometers];
      Measurement<>.converted(to:)();

      v33 = *(v5 + 8);
      v33(v7, v4);
      Measurement.value.getter();
      v26 = v34;
      v33(v10, v4);
    }

    else
    {
      Measurement.value.getter();
      v26 = v25;
      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 meters];
    sub_1000059F8(0, &qword_1008DEE38);
    Measurement.init(value:unit:)();
    v29 = [v27 miles];
    Measurement<>.converted(to:)();

    v30 = *(v5 + 8);
    v30(v7, v4);
    Measurement.value.getter();
    v26 = v31;
    v30(v10, v4);
  }

  v35 = [objc_opt_self() mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 localizedStringForKey:v36 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1006D46C0;
  *(v38 + 56) = &type metadata for Double;
  *(v38 + 64) = &protocol witness table for Double;
  *(v38 + 32) = v26;
  v39 = static String.localizedStringWithFormat(_:_:)();

  return v39;
}

uint64_t sub_10053ACC4(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = v7;
  if (*(v7 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = *(v7 + a1 + 32);

  v5 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_columnSizes;
  result = swift_beginAccess();
  if (*(*(v1 + v5) + 16))
  {

    sub_1004C5C04(v4);
    if (v6)
    {
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10053ADD0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  v14 = type metadata accessor for DynamicTypeSize();
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin(v14);
  v75 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100140278(&qword_1008DDBE0);
  __chkstk_darwin(v78);
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  static Published.subscript.getter();

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v79[2] <= a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  KeyPath = 0x72656B72616DLL;
  v18 = *(v79 + a2 + 32);

  v20 = sub_10020ECB8(v18, v19);
  v17 = v21;
  if (v20 == 0x72656B72616DLL && v21 == 0xE600000000000000)
  {

    goto LABEL_7;
  }

  KeyPath = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (KeyPath)
  {
LABEL_7:
    v22 = objc_opt_self();
    v23 = __OFADD__(a1, 1);
    v24 = a1 + 1;
    if (!v23)
    {
      v25 = v22;
      v26 = [objc_allocWithZone(NSNumber) initWithInteger:v24];
      v27 = [v25 localizedStringFromNumber:v26 numberStyle:0];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v79 = v28;
      v80 = v30;
      sub_10000FCBC();
      v31 = Text.init<A>(_:)();
      v33 = v32;
      v35 = v34;
      sub_10020A2B4(v18);
      KeyPath = Text.foregroundColor(_:)();
      v17 = v36;
      LOBYTE(v4) = v37;

      sub_10004642C(v31, v33, v35 & 1);

      if (qword_1008DA660 == -1)
      {
LABEL_9:
        v38 = qword_100925298;
        Font.init(_:)();
        v39 = Text.font(_:)();
        v41 = v40;
        v43 = v42;
        v45 = v44;

        sub_10004642C(KeyPath, v17, v4 & 1);

        v79 = v39;
        v80 = v41;
        v46 = v43 & 1;
        v81 = v43 & 1;
        v82 = v45;
        v47 = v75;
        v48 = v76;
        v49 = v77;
        (*(v76 + 104))(v75, enum case for DynamicTypeSize.large(_:), v77);
        View.dynamicTypeSize(_:)();
        (*(v48 + 8))(v47, v49);
        sub_10004642C(v39, v41, v46);

        v79 = &type metadata for Text;
        v80 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        return AnyView.init<A>(_:)();
      }

LABEL_23:
      swift_once();
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v52 = v79;
  if (!v79[2] || (v53 = sub_1004C5998(v74), (v54 & 1) == 0))
  {

    return AnyView.init<A>(_:)();
  }

  v55 = *(*(v52 + 56) + 8 * v53);

  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
    v77 = v56;
    v73 = v51;

    sub_10020A5C0(v56, *(v4 + OBJC_IVAR___CHWorkoutDetailSplitDataSource_workout), *(v4 + OBJC_IVAR___CHWorkoutDetailSplitDataSource_workoutActivity), *(v4 + OBJC_IVAR___CHWorkoutDetailSplitDataSource_formattingManager), v18, v51);
    (*(v8 + 16))(v10, v51, v7);
    v57 = Text.init(_:)();
    v59 = v58;
    v61 = v60;
    sub_10020A2B4(v18);
    v52 = Text.foregroundColor(_:)();
    a1 = v62;
    v78 = v7;
    LOBYTE(v7) = v63;

    sub_10004642C(v57, v59, v61 & 1);

    if (qword_1008DA668 == -1)
    {
LABEL_18:
      v64 = qword_1009252A0;
      Font.init(_:)();
      v65 = Text.font(_:)();
      v67 = v66;
      v69 = v68;
      v71 = v70;

      sub_10004642C(v52, a1, v7 & 1);

      v79 = v65;
      v80 = v67;
      v81 = v69 & 1;
      v82 = v71;
      v72 = AnyView.init<A>(_:)();

      (*(v8 + 8))(v73, v78);
      return v72;
    }

LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v56 = *(v55 + 8 * a1 + 32);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10053B52C(char a1)
{
  v2 = v1;
  v127 = type metadata accessor for AttributedString();
  isa = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v132 = &v116 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v135;
  p_info = 0x1008F2000;
  if (*(v135 + 16) && (v10 = sub_1004C5998(a1 & 1), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);

    v116 = v12;
    if (v12 >> 62)
    {
      goto LABEL_54;
    }

    p_info = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (p_info)
    {
LABEL_5:
      v13 = 0;
      v119 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_defaultColumns;
      v125 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_workout;
      v121 = v116 & 0xC000000000000001;
      v120 = v116 & 0xFFFFFFFFFFFFFF8;
      v124 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_formattingManager;
      v134 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_columnSizes;
      v118 = v116 + 32;
      v128 = 0x8000000100746F70;
      v123 = (isa + 16);
      v122 = (isa + 8);
      v130 = NSFontAttributeName;
      v117 = p_info;
      while (1)
      {
        if (v121)
        {
          v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = __OFADD__(v13++, 1);
          if (v14)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v13 >= *(v120 + 16))
          {
            goto LABEL_53;
          }

          v131 = *(v118 + 8 * v13);

          v14 = __OFADD__(v13++, 1);
          if (v14)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v15 = *(v2 + v119);
        v16 = v15[2];
        if (v16)
        {
          break;
        }

LABEL_6:

        p_info = v117;
        if (v13 == v117)
        {
          goto LABEL_55;
        }
      }

      v133 = (v15 + 4);
      swift_beginAccess();
      v17 = 0;
      v129 = v16;
      while (1)
      {
        if (v17 >= v15[2])
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          p_info = _CocoaArrayWrapper.endIndex.getter();
          if (!p_info)
          {
            break;
          }

          goto LABEL_5;
        }

        v18 = *(v133 + v17);
        if (*(v133 + v17))
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {
            v35 = v132;
            sub_10020A5C0(v131, *(v2 + v125), 0, *(v2 + v124), v18, v132);
            sub_1000059F8(0, &qword_1008DD230);
            isa = v127;
            (*v123)(v126, v35, v127);
            v34 = NSAttributedString.init(_:)();
            (*v122)(v35, isa);
            goto LABEL_26;
          }
        }

        else
        {
        }

        v20 = objc_opt_self();
        v21 = [objc_allocWithZone(NSNumber) initWithInteger:v13];
        v22 = [v20 localizedStringFromNumber:v21 numberStyle:0];

        if (!v22)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = String._bridgeToObjectiveC()();
        }

        v137[0] = v130;
        v23 = qword_1008DA660;
        v24 = v130;
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = qword_100925298;
        v137[4] = sub_1000059F8(0, &qword_1008F73C0);
        v137[1] = v25;
        sub_100140278(&qword_1008E2568);
        v26 = static _DictionaryStorage.allocate(capacity:)();
        v27 = v25;
        sub_10022EF60(v137, &v135);
        v28 = v135;
        v29 = sub_1004C53E8(v135);
        if (v30)
        {
          goto LABEL_49;
        }

        v26[(v29 >> 6) + 8] |= 1 << v29;
        *(v26[6] + 8 * v29) = v28;
        sub_1001AA76C(&v136, (v26[7] + 32 * v29));
        v31 = v26[2];
        v14 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v14)
        {
          goto LABEL_50;
        }

        v26[2] = v32;
        sub_100198304(v137);
        v33 = objc_allocWithZone(NSMutableAttributedString);
        type metadata accessor for Key(0);
        sub_10053CDD4(&qword_1008E7FD0, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v34 = [v33 initWithString:v22 attributes:isa];

LABEL_26:
        v36 = v34;
        [v36 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;

        v140.origin.x = v38;
        v140.origin.y = v40;
        v140.size.width = v42;
        v140.size.height = v44;
        v45 = ceil(CGRectGetWidth(v140));
        v46 = *&v134[v2];
        if (!*(v46 + 16))
        {
          goto LABEL_31;
        }

        v47 = sub_1004C5C04(v18);
        if ((v48 & 1) == 0)
        {

LABEL_31:
          if (v45 <= 0.0)
          {
            goto LABEL_14;
          }

          goto LABEL_32;
        }

        v49 = *(*(v46 + 56) + 8 * v47);

        if (v49 >= v45)
        {
          goto LABEL_14;
        }

LABEL_32:
        v50 = v2;
        v2 = v15;
        v51 = v13;
        v52 = v134;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = *&v52[v50];
        v54 = v139;
        v55 = v50;
        *&v52[v50] = 0x8000000000000000;
        isa = sub_1004C5C04(v18);
        v57 = v54[2];
        v58 = (v56 & 1) == 0;
        v59 = v57 + v58;
        if (__OFADD__(v57, v58))
        {
          goto LABEL_51;
        }

        v60 = v56;
        if (v54[3] >= v59)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v63 = v139;
            if ((v56 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_100493170();
            v63 = v139;
            if ((v60 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          sub_10048964C(v59, isUniquelyReferenced_nonNull_native);
          v61 = sub_1004C5C04(v18);
          if ((v60 & 1) != (v62 & 1))
          {
            goto LABEL_92;
          }

          isa = v61;
          v63 = v139;
          if ((v60 & 1) == 0)
          {
LABEL_39:
            v63[(isa >> 6) + 8] |= 1 << isa;
            *(v63[6] + isa) = v18;
            *(v63[7] + 8 * isa) = v45;
            v64 = v63[2];
            v14 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v14)
            {
              goto LABEL_52;
            }

            v63[2] = v65;
            goto LABEL_13;
          }
        }

        *(v63[7] + 8 * isa) = v45;
LABEL_13:
        *&v134[v55] = v63;
        swift_endAccess();
        v13 = v51;
        v15 = v2;
        v2 = v55;
        v16 = v129;
LABEL_14:
        ++v17;

        if (v16 == v17)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_55:

    p_info = &OBJC_METACLASS____TtC10FitnessApp19TabletSceneDelegate.info;
  }

  else
  {
LABEL_47:
  }

  v66 = *(v2 + *(p_info + 664));
  v67 = *(v66 + 16);
  if (v67)
  {
    v68 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_columnSizes;
    v69 = (v66 + 32);
    swift_beginAccess();
    v70 = _swiftEmptyArrayStorage;
    do
    {
      v74 = *v69++;
      v73 = v74;
      if (*(*(v2 + v68) + 16))
      {

        sub_1004C5C04(v73);
        v76 = v75;

        if (v76)
        {
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v139 = v70;
          if ((v77 & 1) == 0)
          {
            sub_100185F28(0, v70[2] + 1, 1);
            v70 = v139;
          }

          v72 = v70[2];
          v71 = v70[3];
          if (v72 >= v71 >> 1)
          {
            sub_100185F28((v71 > 1), v72 + 1, 1);
            v70 = v139;
          }

          v70[2] = v72 + 1;
          *(v70 + v72 + 32) = v73;
        }
      }

      --v67;
    }

    while (v67);
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v139 = v70;
  v78 = v2;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v79 = v139;
  v80 = v139[2];
  if (!v80)
  {
  }

  v133 = sub_1000059F8(0, &qword_1008DD230);
  v81 = OBJC_IVAR___CHWorkoutDetailSplitDataSource_columnSizes;
  v82 = *&v78[OBJC_IVAR___CHWorkoutDetailSplitDataSource_formattingManager];
  v83 = v79 + 4;
  swift_beginAccess();
  v84 = 0;
  v85 = &selRef__setFont_;
  v131 = v82;
  v130 = v79;
  while (v84 < v79[2])
  {
    v86 = v80;
    v87 = *(v83 + v84);
    sub_100209CE0(v82, *(v83 + v84));
    v88 = NSAttributedString.init(_:)();
    v89 = v85[324];
    v134 = v88;
    [v88 v89];
    v90 = ceil(CGRectGetWidth(v141));
    v91 = *&v78[v81];
    if (*(v91 + 16))
    {

      v92 = sub_1004C5C04(v87);
      if (v93)
      {
        v94 = *(*(v91 + 56) + 8 * v92);

        v80 = v86;
        if (v94 >= v90)
        {
          goto LABEL_71;
        }

        goto LABEL_79;
      }
    }

    v80 = v86;
    if (v90 <= 0.0)
    {
      goto LABEL_71;
    }

LABEL_79:
    v95 = v83;
    v96 = v80;
    swift_beginAccess();
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v78;
    v99 = v97;
    v138 = *&v98[v81];
    v100 = v138;
    v101 = v81;
    v102 = v98;
    v103 = v101;
    *&v98[v101] = 0x8000000000000000;
    v104 = sub_1004C5C04(v87);
    v106 = v100[2];
    v107 = (v105 & 1) == 0;
    v14 = __OFADD__(v106, v107);
    v108 = v106 + v107;
    if (v14)
    {
      goto LABEL_90;
    }

    v109 = v105;
    if (v100[3] >= v108)
    {
      if ((v99 & 1) == 0)
      {
        v114 = v104;
        sub_100493170();
        v104 = v114;
      }
    }

    else
    {
      sub_10048964C(v108, v99);
      v104 = sub_1004C5C04(v87);
      if ((v109 & 1) != (v110 & 1))
      {
        goto LABEL_92;
      }
    }

    v78 = v102;
    v111 = v138;
    v81 = v103;
    if (v109)
    {
      *(v138[7] + 8 * v104) = v90;
      v83 = v95;
    }

    else
    {
      v138[(v104 >> 6) + 8] |= 1 << v104;
      *(v111[6] + v104) = v87;
      *(v111[7] + 8 * v104) = v90;
      v112 = v111[2];
      v14 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (v14)
      {
        goto LABEL_91;
      }

      v83 = v95;
      v111[2] = v113;
    }

    *&v78[v81] = v111;
    swift_endAccess();
    v80 = v96;
    v79 = v130;
    v82 = v131;
    v85 = &selRef__setFont_;
LABEL_71:
    ++v84;

    if (v80 == v84)
    {
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10053C358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailSplitDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailSplitDataSource()
{
  result = qword_1008F22D8;
  if (!qword_1008F22D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10053C528()
{
  sub_100144538(319, &qword_1008F1010, &qword_1008F1018);
  if (v0 <= 0x3F)
  {
    sub_100144538(319, &qword_1008E81A8, &qword_1008E81B0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10053C670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = *(v2 + 16);

  return v0;
}

void sub_10053C6F8(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > a1)
  {
    v3 = *(v4 + a1 + 32);

    sub_100209CE0(*(v1 + OBJC_IVAR___CHWorkoutDetailSplitDataSource_formattingManager), v3);
    return;
  }

  __break(1u);
}

uint64_t sub_10053C7C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDetailSplitDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10053C800(uint64_t a1)
{
  result = sub_10053CDD4(&qword_1008E6718, type metadata accessor for WorkoutDetailSplitDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t (*sub_10053C858(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10053CD44(v5);
  v5[9] = sub_10053CA04((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_10053C8FC;
}

uint64_t (*sub_10053C900(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10053CD78(v5);
  v5[9] = sub_10053CB68(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10053CF90;
}

void sub_10053C9A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_10053CA04(uint64_t a1, uint64_t a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1004CD4B0(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10049294C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100488838(v14, a3 & 1);
    v9 = sub_1004CD4B0(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_10053CB20;
}

Swift::Int sub_10053CB20(Swift::Int result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_100491F00(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_10056D208(*(result + 16), **(result + 8));
  }

  return result;
}

void (*sub_10053CB68(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1004C5998(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100495D5C();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10048E27C(v16, a3 & 1);
    v11 = sub_1004C5998(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_10053CCB0;
}

void sub_10053CCB0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100492448(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_10056E778(v1[3], *v1[2]);
  }

  free(v1);
}

uint64_t (*sub_10053CD44(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10053CD6C;
}

uint64_t (*sub_10053CD78(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10053CF64;
}

uint64_t sub_10053CDD4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10053CF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC10FitnessApp29TrendsPregnancyDisclaimerCell_textView;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v3[v7] = sub_100555C98();
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v46.receiver = v4;
  v46.super_class = type metadata accessor for TrendsPregnancyDisclaimerCell();
  v9 = objc_msgSendSuper2(&v46, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  v11 = [v10 contentView];
  v12 = OBJC_IVAR____TtC10FitnessApp29TrendsPregnancyDisclaimerCell_textView;
  [v11 addSubview:*&v10[OBJC_IVAR____TtC10FitnessApp29TrendsPregnancyDisclaimerCell_textView]];

  v13 = [*&v10[v12] leadingAnchor];
  v14 = [v10 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
  v17 = [*&v10[v12] topAnchor];
  v18 = [v10 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:10.0];
  v21 = [*&v10[v12] trailingAnchor];
  v22 = [v10 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:-16.0];
  v25 = [*&v10[v12] bottomAnchor];
  v26 = [v10 contentView];

  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:-10.0];

  v29 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1006D5300;
  *(v30 + 32) = v16;
  *(v30 + 40) = v20;
  *(v30 + 48) = v24;
  *(v30 + 56) = v28;
  sub_1000059F8(0, &qword_1008DC980);
  v31 = v16;
  v32 = v20;
  v33 = v24;
  v34 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  v36 = *&v10[v12];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 _preferredFontForTextStyle:UIFontTextStyleFootnote variant:256];
  [v38 setFont:v39];

  v40 = *&v10[v12];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 secondaryLabelColor];
  [v42 setTextColor:v43];

  [*&v10[v12] setNumberOfLines:0];
  LODWORD(v44) = 1148846080;
  [*&v10[v12] setContentCompressionResistancePriority:1 forAxis:v44];

  return v10;
}

void sub_10053D47C(uint64_t a1)
{
  if (a1 == 1 || a1 == 2)
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 localizedStringForKey:v3 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp29TrendsPregnancyDisclaimerCell_textView);
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];
}

id sub_10053D64C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendsPregnancyDisclaimerCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10053D6B4(char *a1)
{
  v2 = *&a1[OBJC_IVAR___CHFitnessAppContext_amsBag];
  v3 = OBJC_IVAR___CHFitnessAppContext_eventHub;
  v4 = *&a1[OBJC_IVAR___CHFitnessAppContext_navigator];
  v5 = type metadata accessor for SeymourNotificationResponseCoordinator();
  v9 = *&a1[v3];
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_amsBag] = v2;
  *&v6[OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_eventHub] = v9;
  *&v6[OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_urlNavigator] = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  v7 = objc_msgSendSuper2(&v10, "init");
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_10053D800(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t), void (*a7)(uint64_t), uint64_t a8)
{
  v25 = a8;
  v26 = a6;
  v27 = a7;
  v13 = type metadata accessor for NavigationRequest();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008ED010);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  sub_10053FD7C(a1, &v24 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000EA04(v19, &qword_1008ED010);
    v20 = [objc_opt_self() handleNotificationResponse:v25 bag:*(a2 + OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_amsBag)];
    v21 = swift_allocObject();
    v22 = v27;
    *(v21 + 16) = v26;
    *(v21 + 24) = v22;
    aBlock[4] = sub_10053FDEC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004DCFFC;
    aBlock[3] = &unk_10085F9E0;
    v23 = _Block_copy(aBlock);

    [v20 addFinishBlock:v23];
    _Block_release(v23);
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    sub_10053DB30(v16, a3, a4, a5, v26, v27);
    (*(v14 + 8))(v16, v13);
  }
}

void sub_10053DB30(void *a1, void *a2, void *a3, void *a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v70 = a5;
  v65 = a4;
  v62 = a1;
  v68 = type metadata accessor for URL();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = v10;
  v71 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for NavigationRequest();
  v63 = *(v66 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v66);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v57 - v18;
  [a3 setDefaultURL:{0, v17}];
  v69 = v6;
  v20 = [a2 handleSelectedButton:a3 bag:*&v6[OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_amsBag]];
  v76 = sub_10053E31C;
  v77 = 0;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_1004DCFFC;
  v75 = &unk_10085F850;
  v21 = _Block_copy(&aBlock);
  [v20 addFinishBlock:v21];
  _Block_release(v21);
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v60 = a6;
    static Log.engagement.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Foregrounding app", v26, 2u);
    }

    (*(v13 + 8))(v19, v12);
    sub_100140278(&unk_1008F2360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D1F70;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v28;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v29;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    sub_1004CA070(inited);
    swift_setDeallocating();
    sub_100140278(&qword_1008F4FA0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = [objc_opt_self() optionsWithDictionary:isa];

    v32 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v32)
    {
      v33 = v63;
      v34 = *(v63 + 16);
      v59 = v31;
      v35 = v61;
      v58 = v32;
      v36 = v66;
      v34(v61, v62, v66);
      v62 = v20;
      v37 = v67;
      v38 = *(v67 + 16);
      v39 = v65;
      v65 = v23;
      v40 = v68;
      v38(v71, v39, v68);
      v41 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = (*(v37 + 80) + v42 + 8) & ~*(v37 + 80);
      v44 = (v64 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      (*(v33 + 32))(v45 + v41, v35, v36);
      v46 = v69;
      *(v45 + v42) = v69;
      (*(v37 + 32))(v45 + v43, v71, v40);
      v47 = (v45 + v44);
      v48 = v60;
      *v47 = v70;
      v47[1] = v48;
      v76 = sub_10053F480;
      v77 = v45;
      aBlock = _NSConcreteStackBlock;
      v73 = 1107296256;
      v74 = sub_100212B08;
      v75 = &unk_10085F8A0;
      v49 = _Block_copy(&aBlock);
      v50 = v46;

      v51 = v58;
      v20 = v65;
      v52 = v59;
      [v58 openApplication:v65 withOptions:v59 completion:v49];

      _Block_release(v49);
    }

    else
    {

      v20 = v23;
    }
  }

  else
  {
    static Log.engagement.getter();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed to retrieve app bundle identifier", v55, 2u);
    }

    v56 = (*(v13 + 8))(v15, v12);
    v70(v56);
  }
}

uint64_t sub_10053E31C(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.engagement.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v10 + 10) = v12;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "AMS handled button action: success %{BOOL}d, error %@", v10, 0x12u);
    sub_10000EA04(v11, &unk_1008DB8B0);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10053E4F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a4;
  v57 = a7;
  v54 = a3;
  v55 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v9 - 8);
  __chkstk_darwin(v9);
  v61 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v52 = *(v13 - 8);
  v53 = v13;
  __chkstk_darwin(v13);
  v51 = v14;
  v64 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NavigationRequest();
  v48 = *(v50 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v50);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.engagement.getter();
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v63 = v9;
  if (v23)
  {
    v49 = a5;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v24 + 4) = v26;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Foregrounded app (error %@", v24, 0xCu);
    sub_10000EA04(v25, &unk_1008DB8B0);

    a5 = v49;
  }

  (*(v18 + 8))(v20, v17);
  sub_1000078CC();
  v49 = static OS_dispatch_queue.main.getter();
  v28 = a5;
  v29 = v48;
  v30 = v50;
  (*(v48 + 16))(&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v50);
  v31 = v52;
  v32 = v53;
  (*(v52 + 16))(v64, v28, v53);
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v31 + 80) + v34 + 8) & ~*(v31 + 80);
  v36 = (v51 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v29 + 32))(v37 + v33, v16, v30);
  v38 = v56;
  *(v37 + v34) = v56;
  (*(v31 + 32))(v37 + v35, v64, v32);
  v39 = (v37 + v36);
  v40 = v57;
  *v39 = v55;
  v39[1] = v40;
  aBlock[4] = sub_10053F5A4;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085F8F0;
  v41 = _Block_copy(aBlock);
  v42 = v38;

  v43 = v58;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045EA8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
  v44 = v61;
  v45 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = v49;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);

  (*(v62 + 8))(v44, v45);
  return (*(v59 + 8))(v43, v60);
}

uint64_t sub_10053EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v24 = a3;
  v6 = type metadata accessor for NavigationAnnotation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&unk_1008F2010);
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for TrainerTipsGalleryNavigationBegan();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (NavigationRequest.isTrainerTipsGalleryRequest.getter())
  {
    v23 = a2;
    swift_getObjectType();
    TrainerTipsGalleryNavigationBegan.init()();
    sub_100045EA8(&unk_1008F4F90, &type metadata accessor for TrainerTipsGalleryNavigationBegan);
    a2 = v23;
    dispatch thunk of EventHubProtocol.publish<A>(_:)();
    (*(v14 + 8))(v16, v13);
  }

  sub_1000066AC((*(a2 + OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_urlNavigator) + 48), *(*(a2 + OBJC_IVAR____TtC10FitnessApp38SeymourNotificationResponseCoordinator_urlNavigator) + 72));
  v29 = _swiftEmptyArrayStorage;
  sub_100045EA8(&qword_1008F2370, &type metadata accessor for NavigationAnnotation);
  sub_100140278(&qword_1008F2020);
  sub_100282B7C(&qword_1008F2380, &qword_1008F2020);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AppCoordinator.navigateToURL(_:annotation:)();
  (*(v7 + 8))(v9, v6);
  v17 = v26;
  v18 = Promise.operation.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v18(sub_100173A1C, v19);

  v20 = (*(v25 + 8))(v12, v17);
  return v28(v20);
}

uint64_t sub_10053EF24(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.engagement.getter();
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v29 = a3;
    v30 = a4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 67109378;
    *(v19 + 4) = v31 & 1;
    *(v19 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v19 + 10) = v21;
    *v20 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "AMS handled URL: success %{BOOL}d, error %@", v19, 0x12u);
    sub_10000EA04(v20, &unk_1008DB8B0);

    a3 = v29;
    a4 = v30;
  }

  (*(v14 + 8))(v16, v13);
  sub_1000078CC();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  aBlock[4] = sub_10007BD68;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085FA30;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045EA8(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50);
  v26 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v34 + 8))(v9, v26);
  return (*(v32 + 8))(v12, v33);
}

id sub_10053F3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourNotificationResponseCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053F480(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_10053E4F4(a1, a2, v2 + v6, v10, v2 + v9, v12, v13);
}

uint64_t sub_10053F5A4()
{
  v1 = *(type metadata accessor for NavigationRequest() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10053EB60(v0 + v2, v6, v0 + v5, v8, v9);
}

void sub_10053F6B0(void *a1, void *a2, void (**a3)(void))
{
  v55 = a2;
  v62 = a1;
  v4 = sub_100140278(qword_1008F2390);
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v60 = &v52 - v5;
  v6 = type metadata accessor for URL();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v61 = swift_allocObject();
  *(v61 + 16) = a3;
  _Block_copy(a3);
  static Log.engagement.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Handling notification response for AMS", v20, 2u);
  }

  v21 = *(v12 + 8);
  v21(v17, v11);
  v22 = v62;
  v23 = [v62 notification];
  v24 = [objc_allocWithZone(AMSUserNotification) initWithUNNotification:v23];

  v63 = 0;
  v25 = [v24 determineSelectedActionFromResponse:v22 error:&v63];
  if (v25)
  {
    v26 = v25;
    v27 = v63;
    v28 = [v26 defaultURL];
    if (v28)
    {
      v53 = v10;
      v29 = v28;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v55;
      sub_1005EC5FC(v10, v60);
      v31 = v56;
      v32 = v54;
      v33 = v10;
      v34 = v57;
      (*(v56 + 16))(v54, v33, v57);
      v35 = (*(v31 + 80) + 40) & ~*(v31 + 80);
      v36 = (v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 2) = v30;
      *(v37 + 3) = v24;
      *(v37 + 4) = v26;
      (*(v31 + 32))(&v37[v35], v32, v34);
      v38 = &v37[v36];
      v40 = v61;
      v39 = v62;
      *v38 = sub_10016B148;
      v38[1] = v40;
      *&v37[(v36 + 23) & 0xFFFFFFFFFFFFFFF8] = v39;
      v41 = v30;
      v55 = v24;
      v42 = v26;

      v43 = v39;
      v44 = v59;
      v45 = v60;
      v46 = Promise.operation.getter();
      v47 = swift_allocObject();
      *(v47 + 16) = sub_10053FCC8;
      *(v47 + 24) = v37;

      v46(sub_1001C870C, v47);

      (*(v58 + 8))(v45, v44);
      (*(v31 + 8))(v53, v34);

      return;
    }
  }

  else
  {
    v48 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  static Log.engagement.getter();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Error determining selected action", v51, 2u);
  }

  v21(v14, v11);
  a3[2](a3);
}

void sub_10053FCC8(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);

  sub_10053D800(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

uint64_t sub_10053FD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ARUIRingGroup.center.getter()
{
  [v0 translation];
  v2 = v1;
  [v0 translation];
  return v2;
}

void sub_10053FEF0()
{
  sub_100182A34();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1005402E8();
      if (v2 <= 0x3F)
      {
        sub_10054034C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10053FFA8(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1005400F8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        *result = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1005402E8()
{
  if (!qword_1008F2418)
  {
    sub_100141EEC(&qword_1008E2B98);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F2418);
    }
  }
}

void sub_10054034C()
{
  if (!qword_1008DC320)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DC320);
    }
  }
}

uint64_t sub_1005403E0()
{
  sub_100140278(&unk_1008F2420);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10054048C()
{
  sub_100140278(&qword_1008DC400);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100540538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v36 = &v35 - v6;
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  v11 = v8;
  v12 = type metadata accessor for Button();
  v43 = v12;
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v35 - v13;
  WitnessTable = swift_getWitnessTable();
  v54 = v12;
  v55 = WitnessTable;
  v46 = &opaque type descriptor for <<opaque return type of View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v47 = OpaqueTypeMetadata2;
  v48 = v15;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v42 = &v35 - v18;
  v51 = v10;
  v52 = v9;
  v38 = v10;
  v39 = v2;
  v53 = v2;
  v37 = v9;
  Button.init(action:label:)();
  v19 = *(v3 + 16);
  v19(v7, v2, v11);
  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  *(v21 + 24) = v9;
  v22 = *(v3 + 32);
  v22(v21 + v20, v36, v11);
  v23 = v45;
  v19(v45, v39, v11);
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v38;
  *(v24 + 24) = v25;
  v22(v24 + v20, v23, v11);
  v26 = v40;
  v27 = v41;
  v28 = v43;
  v29 = WitnessTable;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  (*(v49 + 8))(v26, v28);
  v54 = v28;
  v55 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v42;
  v32 = v47;
  sub_100073018(v27, v47, OpaqueTypeConformance2);
  v33 = *(v48 + 8);
  v33(v27, v32);
  sub_100073018(v31, v32, OpaqueTypeConformance2);
  return (v33)(v31, v32);
}

uint64_t sub_10054098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScheduleDayRowButton();
  sub_100073018(a1 + *(v9 + 36), a2, a3);
  sub_100073018(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

void sub_100540A84()
{
  type metadata accessor for ScheduleDayRowButton();
  v0 = sub_1005403E0();
  [v0 invalidate];
}

uint64_t sub_100540ADC(char a1)
{
  v2 = type metadata accessor for ScheduleDayRowButton();
  if (a1)
  {
    return sub_100540B4C(v2);
  }

  v4 = sub_1005403E0();
  [v4 invalidate];

  return sub_1005404E0();
}

uint64_t sub_100540B4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(v7 + 52));
  v10 = *v8;
  v9 = v8[1];
  aBlock = *v8;
  v20 = v9;

  sub_100140278(&qword_1008DC400);
  result = State.wrappedValue.getter();
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v26 = v10;
    v27 = v9;
    v25 = v28 + 1;
    State.wrappedValue.setter();

    (*v1)(v12);
    v13 = fmax(0.5 / sub_10054048C(), 0.01);
    v14 = objc_opt_self();
    (*(v4 + 16))(&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = *(a1 + 16);
    (*(v4 + 32))(v16 + v15, v6, a1);
    v23 = sub_100540EEC;
    v24 = v16;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1001CA96C;
    v22 = &unk_10085FB28;
    v17 = _Block_copy(&aBlock);

    v18 = [v14 scheduledTimerWithTimeInterval:0 repeats:v17 block:v13];
    _Block_release(v17);
    return sub_100540434();
  }

  return result;
}

void sub_100540DDC()
{
  type metadata accessor for ScheduleDayRowButton();

  sub_100540A84();
}

uint64_t sub_100540E60(char a1)
{
  type metadata accessor for ScheduleDayRowButton();

  return sub_100540ADC(a1);
}

void sub_100540F4C(void *a1)
{
  static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for FitnessAppDelegate();
  objc_msgSendSuper2(&v7, "buildMenuWithBuilder:", a1);
  sub_1000059F8(0, &qword_1008F2498);
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    if (qword_1008DAF58 != -1)
    {
      swift_once();
    }

    sub_100617880(a1);
  }
}

id sub_100541110()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100541270@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for Dependencies();
  sub_1000059F8(0, &qword_1008E3FD0);
  v4 = static OS_dispatch_queue.main.getter();
  static Dependencies.standard(queue:)();

  sub_100140278(&qword_1008F0F30);
  Dependencies.resolve<A>(failureHandler:)();

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100007C5C(v32, &v29);
      v16 = type metadata accessor for CHINPauseWorkoutIntentHandler();
      v17 = objc_allocWithZone(v16);
      sub_100007C5C(&v29, v28);
      sub_100007C5C(v28, v17 + OBJC_IVAR____TtC10FitnessApp24CHINWorkoutIntentHandler_sessionClient);
      v25.receiver = v17;
      v25.super_class = type metadata accessor for CHINWorkoutIntentHandler();
      v18 = objc_msgSendSuper2(&v25, "init");
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_100007C5C(v32, &v29);
        v16 = type metadata accessor for CHINResumeWorkoutIntentHandler();
        v19 = objc_allocWithZone(v16);
        sub_100007C5C(&v29, v28);
        sub_100007C5C(v28, v19 + OBJC_IVAR____TtC10FitnessApp24CHINWorkoutIntentHandler_sessionClient);
        v26.receiver = v19;
        v26.super_class = type metadata accessor for CHINWorkoutIntentHandler();
        v18 = objc_msgSendSuper2(&v26, "init");
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          sub_100005A40(v32);
          result = 0.0;
          *a2 = 0u;
          *(a2 + 16) = 0u;
          return result;
        }

        sub_100007C5C(v32, &v29);
        v16 = type metadata accessor for CHINEndWorkoutIntentHandler();
        v22 = objc_allocWithZone(v16);
        sub_100007C5C(&v29, v28);
        sub_100007C5C(v28, v22 + OBJC_IVAR____TtC10FitnessApp24CHINWorkoutIntentHandler_sessionClient);
        v27.receiver = v22;
        v27.super_class = type metadata accessor for CHINWorkoutIntentHandler();
        v18 = objc_msgSendSuper2(&v27, "init");
      }
    }

    v23 = v18;
    sub_100005A40(v28);
    sub_100005A40(&v29);
    *(a2 + 24) = v16;
    *a2 = v23;
    goto LABEL_16;
  }

  v5 = type metadata accessor for WorkoutFeatures();
  *(&v30 + 1) = v5;
  v31 = sub_100043B08();
  v6 = sub_100005994(&v29);
  (*(*(v5 - 8) + 104))(v6, enum case for WorkoutFeatures.Kahana(_:), v5);
  LOBYTE(v5) = isFeatureEnabled(_:)();
  sub_100005A40(&v29);
  if ((v5 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    sub_100007C5C(v32, &v29);
    v9 = type metadata accessor for CHINStartWorkoutIntentHandler();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC10FitnessApp29CHINStartWorkoutIntentHandler_healthStore;
    type metadata accessor for WorkoutCoreInjector();
    v12 = static WorkoutCoreInjector.shared.getter();
    v13 = dispatch thunk of WorkoutCoreInjector.inject()();

    *&v10[v11] = v13;
    v14 = OBJC_IVAR____TtC10FitnessApp29CHINStartWorkoutIntentHandler_vocabulary;
    *&v10[v14] = sub_1002020D4();
    sub_100007C5C(&v29, v28);
    sub_100007C5C(v28, &v10[OBJC_IVAR____TtC10FitnessApp24CHINWorkoutIntentHandler_sessionClient]);
    v24.receiver = v10;
    v24.super_class = type metadata accessor for CHINWorkoutIntentHandler();
    v15 = objc_msgSendSuper2(&v24, "init");
    sub_100005A40(&v29);
    sub_100005A40(v28);
    *(a2 + 24) = v9;
    *a2 = v15;
LABEL_16:
    sub_100005A40(v32);
    return result;
  }

  v7 = [objc_allocWithZone(type metadata accessor for IntentDispatcher()) init];
  v8 = [v7 handlerForIntent:a1];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005A40(v32);
  }

  else
  {
    sub_100005A40(v32);
    v29 = 0u;
    v30 = 0u;
  }

  result = *&v29;
  v21 = v30;
  *a2 = v29;
  *(a2 + 16) = v21;
  return result;
}

id sub_10054180C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  MGGetSInt32Answer();

  v3 = [a1 role];
  v4 = objc_allocWithZone(UISceneConfiguration);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithName:v5 sessionRole:v3];

  return v6;
}

id sub_1005418FC@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___CHFitnessAppDelegate_healthStore);
  *a1 = v2;
  return v2;
}

id sub_100541914@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___CHFitnessAppDelegate_historyDataProvider);
  *a1 = v2;
  return v2;
}

id sub_10054192C@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___CHFitnessAppDelegate_fitnessUIFormattingManager);
  *a1 = v2;
  return v2;
}

id sub_100541944@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___CHFitnessAppDelegate_workoutFormattingManager);
  *a1 = v2;
  return v2;
}

id sub_10054195C@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___CHFitnessAppDelegate_pauseRingsCoordinator);
  *a1 = v2;
  return v2;
}

uint64_t sub_1005419A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a1;
  v30[1] = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F24C0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = sub_100140278(&qword_1008F24C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - v12;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = sub_100140278(&qword_1008F24D0);
  sub_100541D78(a1, &v9[*(v14 + 44)]);
  v15 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(sub_100140278(&qword_1008F24D8) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = static Color.secondary.getter();
  v19 = swift_getKeyPath();
  v20 = &v9[*(v7 + 36)];
  *v20 = v19;
  v20[1] = v18;
  static AccessibilityChildBehavior.ignore.getter();
  v21 = sub_1005422A8();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v3);
  sub_10000EA04(v9, &qword_1008F24C0);
  v22 = [objc_opt_self() mainBundle];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 localizedStringForKey:v23 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006D46C0;
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v30[0];
  v26 = String.init(format:_:)();
  v28 = v27;

  v30[4] = v26;
  v30[5] = v28;
  v30[2] = v7;
  v30[3] = v21;
  swift_getOpaqueTypeConformance2();
  sub_10000FCBC();
  View.accessibilityLabel<A>(_:)();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100541D78@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  v3 = sub_100140278(&qword_1008E9840);
  __chkstk_darwin(v3);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v42 - v6);
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AttributedString();
  __chkstk_darwin(v9 - 8);
  if (qword_1008DAD48 != -1)
  {
    swift_once();
  }

  v10 = qword_1008F24B8;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v12 = [v10 stringForObjectValue:isa];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v50[0] = a1;
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v13 = Text.init(_:)();
  v42 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v43 = v18;
  v20 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v17 & 1;
  v64 = v17 & 1;
  v61 = 0;
  v30 = Image.init(_internalSystemName:)();
  v31 = (v7 + *(v3 + 36));
  v32 = *(sub_100140278(&qword_1008E97F8) + 28);
  v33 = enum case for Image.Scale.small(_:);
  v34 = type metadata accessor for Image.Scale();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  *v7 = v30;
  v35 = v45;
  sub_10001B104(v7, v45, &qword_1008E9840);
  *&v46 = v13;
  *(&v46 + 1) = v15;
  LOBYTE(v47) = v29;
  *(&v47 + 1) = *v63;
  DWORD1(v47) = *&v63[3];
  *(&v47 + 1) = v19;
  LOBYTE(v48) = v20;
  *(&v48 + 1) = *v62;
  DWORD1(v48) = *&v62[3];
  *(&v48 + 1) = v22;
  *v49 = v24;
  *&v49[8] = v26;
  *&v49[16] = v28;
  v49[24] = 0;
  v36 = v46;
  v37 = v47;
  v38 = v44;
  *(v44 + 57) = *&v49[9];
  v39 = *v49;
  v38[2] = v48;
  v38[3] = v39;
  *v38 = v36;
  v38[1] = v37;
  v40 = sub_100140278(&qword_1008F2500);
  sub_10001B104(v35, v38 + *(v40 + 48), &qword_1008E9840);
  sub_10001B104(&v46, v50, &qword_1008DC4C0);
  sub_10000EA04(v7, &qword_1008E9840);
  sub_10000EA04(v35, &qword_1008E9840);
  v50[0] = v42;
  v50[1] = v15;
  v51 = v29;
  *v52 = *v63;
  *&v52[3] = *&v63[3];
  v53 = v43;
  v54 = v20;
  *v55 = *v62;
  *&v55[3] = *&v62[3];
  v56 = v22;
  v57 = v24;
  v58 = v26;
  v59 = v28;
  v60 = 0;
  return sub_10000EA04(v50, &qword_1008DC4C0);
}

id sub_10054223C()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:0];
  result = [v0 setRoundingMode:4];
  qword_1008F24B8 = v0;
  return result;
}

unint64_t sub_1005422A8()
{
  result = qword_1008F24E0;
  if (!qword_1008F24E0)
  {
    sub_100141EEC(&qword_1008F24C0);
    sub_100542360();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F24E0);
  }

  return result;
}

unint64_t sub_100542360()
{
  result = qword_1008F24E8;
  if (!qword_1008F24E8)
  {
    sub_100141EEC(&qword_1008F24D8);
    sub_10014A6B0(&qword_1008F24F0, &qword_1008F24F8);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F24E8);
  }

  return result;
}

unint64_t sub_100542444()
{
  result = qword_1008F2508;
  if (!qword_1008F2508)
  {
    sub_100141EEC(&qword_1008F2510);
    sub_100141EEC(&qword_1008F24C0);
    sub_1005422A8();
    swift_getOpaqueTypeConformance2();
    sub_100313908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2508);
  }

  return result;
}

uint64_t sub_10054250C()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925DE0);
  sub_10001AC90(v5, qword_100925DE0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10054267C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x747365676E6F6CLL;
  }

  else
  {
    v2 = 0x746E6572727563;
  }

  if (*a2)
  {
    v3 = 0x747365676E6F6CLL;
  }

  else
  {
    v3 = 0x746E6572727563;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_100542708()
{
  result = qword_1008F2518;
  if (!qword_1008F2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2518);
  }

  return result;
}

Swift::Int sub_10054275C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005427D4()
{
  String.hash(into:)();
}

Swift::Int sub_100542830()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005428A4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100846098, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100542904(uint64_t *a1@<X8>)
{
  v2 = 0x746E6572727563;
  if (*v1)
  {
    v2 = 0x747365676E6F6CLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_100542940()
{
  result = qword_1008F2520;
  if (!qword_1008F2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2520);
  }

  return result;
}

unint64_t sub_100542998()
{
  result = qword_1008F2528;
  if (!qword_1008F2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2528);
  }

  return result;
}

unint64_t sub_1005429F0()
{
  result = qword_1008F2530;
  if (!qword_1008F2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2530);
  }

  return result;
}

unint64_t sub_100542A48()
{
  result = qword_1008F2538;
  if (!qword_1008F2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2538);
  }

  return result;
}

unint64_t sub_100542A9C()
{
  result = qword_1008F2540;
  if (!qword_1008F2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2540);
  }

  return result;
}

unint64_t sub_100542AF4()
{
  result = qword_1008F2548;
  if (!qword_1008F2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2548);
  }

  return result;
}

uint64_t sub_100542B48@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAD50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925DE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100542C40(uint64_t a1)
{
  v2 = sub_10047C9FC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100542C90()
{
  result = qword_1008F2550;
  if (!qword_1008F2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2550);
  }

  return result;
}

unint64_t sub_100542CE8()
{
  result = qword_1008F2558;
  if (!qword_1008F2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2558);
  }

  return result;
}

unint64_t sub_100542D40()
{
  result = qword_1008F2560;
  if (!qword_1008F2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2560);
  }

  return result;
}

uint64_t sub_100542D98(uint64_t a1)
{
  v2 = sub_100542AF4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100542DE8()
{
  result = qword_1008F2568;
  if (!qword_1008F2568)
  {
    sub_100141EEC(&qword_1008F2570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2568);
  }

  return result;
}

unint64_t sub_100542E6C()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v19 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_100140278(&qword_1008F2578);
  v6 = sub_100140278(&qword_1008EF9A8);
  v21 = v6;
  v7 = *(v6 - 8);
  v20 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  v16 = *(v6 + 48);
  *(v9 + v8) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v18 = *(v5 + 56);
  v18(v3, 1, 1, v4);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v15 = sub_100140278(&qword_1008E60A0);
  v10 = swift_allocObject();
  v14 = xmmword_1006D46C0;
  *(v10 + 16) = xmmword_1006D46C0;
  LocalizedStringResource.init(stringLiteral:)();
  v17 = v9 + v8;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v11 = (v9 + v8 + v20);
  v20 = *(v21 + 48);
  *v11 = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v18(v3, 1, 1, v19);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = v14;
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v12 = sub_1004CC8C8(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

void sub_100543264(_BYTE *a1, char a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_trendType) = *a1;
  sub_100543384();
  v6 = *(v2 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel);
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_valueLabel);
  type metadata accessor for TrendListMetric();
  v9 = sub_100604A98();
  isa = AttributedString.nsAttributedStringWithMatchingTextScales(font:)(v9).super.isa;

  [v8 setAttributedText:isa];
  v11 = a1[1];
  sub_100514B5C(v11, 0);
  *(v3 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection) = v11;

  sub_100543738(a2);
}

void sub_100543384()
{
  v1 = v0;
  v2 = sub_100582888(*(v0 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_trendType));
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowIndicator);
  v4 = *&v2[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];
  v5 = *(v3 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors);
  *(v3 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors) = v4;
  v6 = v4;

  sub_100513D74();
  [*(v1 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_valueLabel) setTextColor:*&v2[OBJC_IVAR____TtC10FitnessApp12MetricColors_text]];
  v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel);
  v8 = [objc_opt_self() labelColor];
  [v7 setTextColor:v8];
}

id sub_100543498()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel);
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle:UIFontTextStyleCallout];
  [v1 setFont:v3];

  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_valueLabel);
  v5 = [v2 _preferredFontForTextStyle:UIFontTextStyleTitle3 design:UIFontSystemFontDesignRounded variant:1024];
  [v4 setFont:v5];

  [v1 setAdjustsFontSizeToFitWidth:1];

  return [v4 setAdjustsFontSizeToFitWidth:1];
}

char *sub_1005435A4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection] = 1;
  v9 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowIndicator;
  type metadata accessor for TrendArrowIndicatorView();
  *&v4[v9] = sub_10065AF60();
  v10 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v10] = sub_100555C98();
  v11 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_valueLabel;
  *&v4[v11] = sub_100555C98();
  *&v4[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_activeConstraints] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_trendType] = 1;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TrendListMetricView();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowIndicator];
  v14 = v12;
  [v14 addSubview:v13];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_valueLabel]];
  sub_100543384();
  sub_100543498();
  sub_100543738(0);

  return v14;
}

void sub_100543738(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v76 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_activeConstraints;
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_activeConstraints];
  if (v4 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setActive:0];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_12;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_12:

  *&v2[v76] = _swiftEmptyArrayStorage;

  v10 = *&v2[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowIndicator];
  v11 = [v10 leadingAnchor];
  v12 = [v2 leadingAnchor];
  v13 = 20.0;
  if (v3)
  {
    v14 = 15.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = [v11 constraintEqualToAnchor:v12 constant:v14];

  v16 = [v10 widthAnchor];
  v17 = [v16 constraintEqualToConstant:40.0];

  v18 = [v10 heightAnchor];
  v19 = [v18 constraintEqualToConstant:40.0];

  v20 = [v10 topAnchor];
  v21 = [v2 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v14];

  v72 = v15;
  v73 = v22;
  v74 = v19;
  v75 = v17;
  if (v3)
  {
    v23 = [v10 centerYAnchor];
    v24 = [v2 centerYAnchor];
    v70 = [v23 constraintEqualToAnchor:v24];

    v13 = 8.0;
  }

  else
  {
    v70 = 0;
  }

  v25 = *&v2[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel];
  v26 = [v25 leadingAnchor];
  v27 = [v10 trailingAnchor];
  v68 = [v26 constraintEqualToAnchor:v27 constant:8.0];

  v28 = [v25 trailingAnchor];
  v29 = [v2 trailingAnchor];
  v66 = [v28 constraintEqualToAnchor:v29 constant:-v13];

  v30 = [v25 topAnchor];
  v31 = [v2 topAnchor];
  v64 = [v30 constraintEqualToAnchor:v31 constant:16.0];

  v32 = *&v2[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_valueLabel];
  v33 = [v32 leadingAnchor];
  v34 = [v25 leadingAnchor];
  v62 = [v33 constraintEqualToAnchor:v34];

  v35 = [v32 trailingAnchor];
  v36 = [v25 trailingAnchor];
  v60 = [v35 constraintEqualToAnchor:v36];

  v37 = [v32 topAnchor];
  v38 = [v25 bottomAnchor];
  v58 = [v37 constraintEqualToAnchor:v38 constant:-2.5];

  v39 = [v32 bottomAnchor];
  v40 = [v2 bottomAnchor];
  v41 = [v39 constraintLessThanOrEqualToAnchor:v40 constant:-16.0];

  LODWORD(v42) = 1144750080;
  v43 = v41;
  v57 = v41;
  [v41 setPriority:v42];
  LODWORD(v44) = 1148846080;
  [v25 setContentCompressionResistancePriority:1 forAxis:v44];
  LODWORD(v45) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v45];
  v77[5] = v72;
  v77[6] = v75;
  v77[7] = v74;
  v77[8] = v22;
  v77[9] = v70;
  v77[10] = v68;
  v4 = v64;
  v77[11] = v66;
  v77[12] = v64;
  v77[13] = v62;
  v77[14] = v60;
  v77[15] = v58;
  v77[16] = v43;
  v46 = _swiftEmptyArrayStorage;
  v77[0] = _swiftEmptyArrayStorage;
  v71 = v70;
  v69 = v68;
  v67 = v66;
  v65 = v64;
  v63 = v62;
  v61 = v60;
  v59 = v58;
  v3 = v57;
  v47 = v72;
  v48 = v75;
  v49 = v74;
  v50 = v73;
  v51 = 0;
LABEL_19:
  v52 = 12;
  if (v51 > 0xC)
  {
    v52 = v51;
  }

  while (v51 != 12)
  {
    if (v52 == v51)
    {
      __break(1u);
      goto LABEL_29;
    }

    v53 = v77[v51++ + 5];
    if (v53)
    {
      v54 = v53;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v77;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = v77[0];
      goto LABEL_19;
    }
  }

  sub_100140278(&qword_1008F25D8);
  swift_arrayDestroy();
  *&v2[v76] = v46;

  v55 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 activateConstraints:isa];
}

uint64_t sub_100543F78(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection) = 1;
  v4 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowIndicator;
  type metadata accessor for TrendArrowIndicatorView();
  *(v1 + v4) = sub_10065AF60();
  v5 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *(v1 + v5) = sub_100555C98();
  v6 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_valueLabel;
  *(v1 + v6) = sub_100555C98();
  v7 = OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_activeConstraints;

  *(v2 + v7) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_trendType) = 1;

  type metadata accessor for TrendListMetricView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1005440A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendListMetricView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005441A8()
{
  result = *(*v0 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection);
  if (result != 1)
  {
    return sub_100515494(result);
  }

  return result;
}

uint64_t sub_1005441EC()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  sub_1001B1314(sub_1005442E8, v2);
}

uint64_t sub_100544328()
{
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection) && *(v0 + OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_arrowDirection) == 1)
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v1;
}

id sub_100544418(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings] = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for WorkoutOverlayPathRenderer();
  v6 = objc_msgSendSuper2(&v8, "initWithOverlay:", a1);
  swift_unknownObjectRelease();
  return v6;
}

id sub_100544498()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.298039216 green:0.490196078 blue:0.501960784 alpha:0.8];
  qword_100925DF8 = result;
  return result;
}

void sub_100544618(CGContext *a1, double (*a2)(double, double), uint64_t a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  v70 = a3;
  v76 = a2;
  v83 = a8;
  v79.size.height = a7;
  v79.size.width = a6;
  v79.origin.y = a5;
  v79.origin.x = a4;
  v75 = type metadata accessor for DateInterval();
  v10 = *(v75 - 8);
  __chkstk_darwin(v75);
  v90 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for Date();
  v12 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v63 - v15);
  v72 = a1;
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v74 = v8;
  v17 = *(v8 + OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings);
  v18 = [v17 workout];
  v19 = [v18 workoutActivityType];

  v20 = 5.0;
  if (v19 == 46)
  {
    v20 = 15.0;
  }

  v71 = v20;
  v21 = [v17 workout];
  v92 = sub_1001454C8();

  v22 = [v17 workout];
  v73 = [v22 workoutActivityType];

  v23 = [v17 allValidLocations];
  sub_10028CAC8();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = v76;
    v27 = v75;
    if (!i)
    {
      break;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v28 = *(v24 + 32);
    }

    v93 = v28;

    v24 = [v17 inOrderLocationArrays];
    sub_100140278(&qword_1008E55D8);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = *(v17 + 16);
    if (!v66)
    {
LABEL_47:

      return;
    }

    v65 = v17 + 32;
    v95 = (v12 + 8);
    v12 = 0;
    v29 = v83;
    v84 = v29 * v29;
    v78 = v83 * 0.5;
    v89 = v10 + 16;
    v88 = v10 + 8;
    v68 = v29 + v29;
    v67 = xmmword_1006D1F70;
    v64 = v17;
    while (v12 < *(v17 + 16))
    {
      v17 = *(v65 + 8 * v12);

      v30 = [v93 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v16;
      Date.timeIntervalSinceReferenceDate.getter();
      v32 = v31;
      v94 = *v95;
      v94(v16, v96);
      if (v17 >> 62)
      {
        v33 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v33 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v12;
      if (v33)
      {
        v12 = 0;
        v34 = v17 & 0xC000000000000001;
        v87 = v17 & 0xFFFFFFFFFFFFFF8;
        v86 = v17 + 32;
        v85 = v17;
        v77 = v17 & 0xC000000000000001;
        while (1)
        {
          if (v34)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *(v87 + 16))
            {
              goto LABEL_50;
            }

            v41 = *(v86 + 8 * v12);
          }

          v17 = v41;
          if (__OFADD__(v12++, 1))
          {
            break;
          }

          v43 = [v41 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = v16;
          Date.timeIntervalSinceReferenceDate.getter();
          v45 = v44;
          v94(v16, v96);
          if (v45 < v32)
          {

            goto LABEL_12;
          }

          [v93 coordinate];
          v46 = MKMapPointForCoordinate(v104);
          [v17 coordinate];
          v47 = MKMapPointForCoordinate(v105);
          v48 = v26(v46.x, v46.y);
          v50 = v49;
          v51 = v26(v47.x, v47.y);
          if (v84 <= (v51 - v48) * (v51 - v48) + (v52 - v50) * (v52 - v50))
          {
            v82 = v52;
            v81 = v51;
            v106.origin.x = fmin(v46.x, v47.x) - v78;
            v106.origin.y = fmin(v46.y, v47.y) - v78;
            v106.size.width = vabdd_f64(v46.x, v47.x) + v83;
            v106.size.height = vabdd_f64(v46.y, v47.y) + v83;
            if (MKMapRectIntersectsRect(v79, v106))
            {
              [v17 speed];
              v80 = sub_10054511C(v53);
              if (v73 == 67 || v73 == 61)
              {
                v54 = v92;
                if (v92)
                {

                  v24 = [v17 timestamp];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v55 = 0;
                  v56 = v54[2];
                  while (v56 != v55)
                  {
                    if (v55 >= v92[2])
                    {
                      __break(1u);
                      goto LABEL_49;
                    }

                    v24 = v90;
                    (*(v10 + 16))(v90, v92 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v55++, v27);
                    v57 = DateInterval.contains(_:)();
                    (*(v10 + 8))(v24, v27);
                    if (v57)
                    {

                      v94(v91, v96);
                      goto LABEL_40;
                    }
                  }

                  v94(v91, v96);
                  if (qword_1008DAD58 != -1)
                  {
                    swift_once();
                  }

                  v58 = [qword_100925DF8 CGColor];

                  v80 = v58;
                }
              }

LABEL_40:
              Mutable = CGPathCreateMutable();
              v98 = 0;
              v99 = 0;
              v97 = 0x3FF0000000000000;
              v100 = 0x3FF0000000000000;
              v101 = 0;
              v102 = 0;
              CGMutablePathRef.move(to:transform:)();
              CGMutablePathRef.addLine(to:transform:)();
              if (v71 >= v45 - v32)
              {
                v35 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
                v36 = v72;
                CGContextAddPath(v72, v35);
                v37 = v80;
                CGContextSetFillColorWithColor(v36, v80);
                v38 = kCGPathFill;
              }

              else
              {
                sub_100140278(&qword_1008DE450);
                v60 = swift_allocObject();
                *(v60 + 16) = v67;
                *(v60 + 32) = 0;
                *(v60 + 40) = v68;
                v35 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();

                v36 = v72;
                CGContextAddPath(v72, v35);
                CGContextSetLineWidth(v36, v83);
                CGContextSetLineCap(v36, kCGLineCapRound);
                v61 = [objc_opt_self() grayColor];
                v62 = [v61 CGColor];

                CGContextSetStrokeColorWithColor(v36, v62);
                v38 = kCGPathStroke;
                v37 = v80;
              }

              CGContextDrawPath(v36, v38);

              v26 = v76;
              v27 = v75;
              v34 = v77;
            }

            v93 = v17;
          }

          v39 = [v17 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = v16;
          Date.timeIntervalSinceReferenceDate.getter();
          v32 = v40;

          v94(v16, v96);
          v17 = v85;
          if (v12 == v33)
          {
            goto LABEL_12;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        break;
      }

LABEL_12:
      v12 = v69 + 1;

      v17 = v64;
      if (v12 == v66)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_52:
    ;
  }
}

id sub_10054511C(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings);
  [v3 bottomSpeed];
  v5 = v4;
  [v3 averageSpeed];
  v7 = v6;
  [v3 topSpeed];
  if (v7 * 0.9 >= a1)
  {
    if (a1 < 0.0 || v7 == 0.0)
    {
LABEL_12:
      v15 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
      goto LABEL_15;
    }
  }

  else
  {
    if (a1 < 0.0)
    {
      goto LABEL_12;
    }

    if (v7 == 0.0 || v7 * 1.1 > a1)
    {
      goto LABEL_12;
    }
  }

  v10 = (a1 - v5) / (v8 - v5);
  if (v10 >= 0.5)
  {
    v16 = v10 + -0.5 + v10 + -0.5;
    v12 = round(v16 * -179.0 + 255.0);
    v13 = round(v16 * 13.0 + 204.0);
    v14 = v16 * 100.0 + 0.0;
  }

  else
  {
    v11 = v10 + v10;
    v12 = round(v11 * 0.0 + 255.0);
    v13 = round(v11 * 145.0 + 59.0);
    v14 = 48.0 - v11 * 48.0;
  }

  v15 = [objc_allocWithZone(UIColor) initWithRed:v12 / 255.0 green:v13 / 255.0 blue:round(v14) / 255.0 alpha:0.85];
LABEL_15:
  v17 = v15;
  v18 = [v15 CGColor];

  return v18;
}

id sub_100545344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutGradientPathRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005453A0(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6, CGFloat a7, double a8, double a9)
{
  v76 = a9;
  v75 = a8;
  v73 = a7;
  v72.size.height = a6;
  v72.size.width = a5;
  v72.origin.y = a4;
  v72.origin.x = a3;
  v68 = type metadata accessor for DateInterval();
  v11 = *(v68 - 8);
  __chkstk_darwin(v68);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Date();
  v14 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = (&v58 - v17);
  v69 = a1;
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v67 = a2;
  v19 = *(a2 + OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings);
  v20 = [v19 workout];
  v21 = [v20 workoutActivityType];

  v22 = 5.0;
  if (v21 == 46)
  {
    v22 = 15.0;
  }

  v65 = v22;
  v23 = [v19 workout];
  v84 = sub_1001454C8();

  v24 = [v19 workout];
  v66 = [v24 workoutActivityType];

  v25 = [v19 allValidLocations];
  sub_10028CAC8();
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = v69;
    v29 = v68;
    if (!i)
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v30 = *(v26 + 32);
    }

    v85 = v30;

    v26 = [v19 inOrderLocationArrays];
    sub_100140278(&qword_1008E55D8);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = *(v31 + 16);
    if (!v61)
    {
LABEL_47:

      return;
    }

    v19 = 0;
    v60 = v31 + 32;
    v87 = (v14 + 8);
    v32 = v73;
    v74 = v32 * v32;
    v71 = v73 * 0.5;
    v82 = v11 + 16;
    v81 = v11 + 8;
    v63 = v32 + v32;
    v62 = xmmword_1006D1F70;
    v59 = v31;
    while (v19 < *(v31 + 16))
    {
      v14 = *(v60 + 8 * v19);

      v33 = [v85 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = v18;
      Date.timeIntervalSinceReferenceDate.getter();
      v35 = v34;
      v86 = *v87;
      v86(v18, v88);
      if (v14 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = v19;
      if (v36)
      {
        v19 = 0;
        v80 = v14 & 0xC000000000000001;
        v79 = v14 & 0xFFFFFFFFFFFFFF8;
        v78 = (v14 + 32);
        v77 = v14;
        while (1)
        {
          if (v80)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(v79 + 16))
            {
              goto LABEL_50;
            }

            v41 = *&v78[8 * v19];
          }

          v14 = v41;
          if (__OFADD__(v19++, 1))
          {
            break;
          }

          v43 = [v41 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = v18;
          Date.timeIntervalSinceReferenceDate.getter();
          v45 = v44;
          v86(v18, v88);
          if (v45 < v35)
          {

            v14 = v77;
            goto LABEL_12;
          }

          [v85 coordinate];
          v46 = MKMapPointForCoordinate(v96);
          [v14 coordinate];
          v47 = MKMapPointForCoordinate(v97);
          if (v74 <= (v47.x - v75 - (v46.x - v75)) * (v47.x - v75 - (v46.x - v75)) + (v47.y - v76 - (v46.y - v76)) * (v47.y - v76 - (v46.y - v76)))
          {
            v98.origin.x = fmin(v46.x, v47.x) - v71;
            v98.origin.y = fmin(v46.y, v47.y) - v71;
            v98.size.width = vabdd_f64(v46.x, v47.x) + v73;
            v98.size.height = vabdd_f64(v46.y, v47.y) + v73;
            if (MKMapRectIntersectsRect(v72, v98))
            {
              [v14 speed];
              v49 = sub_10054511C(v48);
              v50 = v49;
              if ((v66 == 67 || v66 == 61) && v84)
              {
                v70 = v49;
                v51 = v84;

                v26 = [v14 timestamp];
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v52 = 0;
                v53 = v51[2];
                while (v53 != v52)
                {
                  if (v52 >= v84[2])
                  {
                    __break(1u);
                    goto LABEL_49;
                  }

                  (*(v11 + 16))(v13, v84 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v52++, v29);
                  v26 = DateInterval.contains(_:)();
                  (*(v11 + 8))(v13, v29);
                  if (v26)
                  {

                    v86(v83, v88);
                    v28 = v69;
                    v50 = v70;
                    goto LABEL_40;
                  }
                }

                v86(v83, v88);
                v28 = v69;
                if (qword_1008DAD58 != -1)
                {
                  swift_once();
                }

                v50 = [qword_100925DF8 CGColor];
              }

LABEL_40:
              Mutable = CGPathCreateMutable();
              v90 = 0;
              v91 = 0;
              v89 = 0x3FF0000000000000;
              v92 = 0x3FF0000000000000;
              v93 = 0;
              v94 = 0;
              CGMutablePathRef.move(to:transform:)();
              CGMutablePathRef.addLine(to:transform:)();
              if (v65 >= v45 - v35)
              {
                v37 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
                CGContextAddPath(v28, v37);
                CGContextSetFillColorWithColor(v28, v50);
                v38 = kCGPathFill;
              }

              else
              {
                sub_100140278(&qword_1008DE450);
                v55 = swift_allocObject();
                v70 = v50;
                *(v55 + 16) = v62;
                *(v55 + 32) = 0;
                *(v55 + 40) = v63;
                v37 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();

                CGContextAddPath(v28, v37);
                CGContextSetLineWidth(v28, v73);
                CGContextSetLineCap(v28, kCGLineCapRound);
                v56 = [objc_opt_self() grayColor];
                v57 = [v56 CGColor];

                v50 = v70;
                CGContextSetStrokeColorWithColor(v69, v57);

                v28 = v69;
                v38 = kCGPathStroke;
              }

              CGContextDrawPath(v28, v38);

              v29 = v68;
            }

            v85 = v14;
          }

          v39 = [v14 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = v18;
          Date.timeIntervalSinceReferenceDate.getter();
          v35 = v40;

          v86(v18, v88);
          v14 = v77;
          if (v19 == v36)
          {
            goto LABEL_12;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        break;
      }

LABEL_12:
      v19 = v64 + 1;

      v31 = v59;
      if (v19 == v61)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_52:
    ;
  }
}

NSString sub_100545E64()
{
  result = String._bridgeToObjectiveC()();
  qword_100925E00 = result;
  return result;
}

uint64_t sub_100545EF0(uint64_t a1)
{
  v23 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008E5718);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078CC();
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInteractive(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  sub_10054673C(v23, v9);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v24;
  sub_1005467AC(v9, v16 + v15);
  aBlock[4] = sub_10054681C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085FDA8;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v2, v20);
  (*(v26 + 8))(v5, v27);
}

void sub_100546404()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1008DAD60 != -1)
  {
    swift_once();
  }

  v1 = qword_100925E00;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v0 postNotificationName:v1 object:Strong];
}

id sub_100546628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendsAvailabilityManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005466E0()
{
  result = qword_1008F2648;
  if (!qword_1008F2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2648);
  }

  return result;
}

uint64_t sub_10054673C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005467AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LoadTypeScrollView()
{
  result = qword_1008F26A8;
  if (!qword_1008F26A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005468C8()
{
  type metadata accessor for TrainingLoadViewModel();
  if (v0 <= 0x3F)
  {
    sub_1005469C4(319, &qword_1008F03A0, &type metadata accessor for TrainingLoadDataType, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1005469C4(319, &qword_1008E0B78, type metadata accessor for BalanceDataProvider, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005469C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100546A44(uint64_t a1, uint64_t a2)
{
  v16 = type metadata accessor for ScrollIndicatorVisibility();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F26E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  static Axis.Set.horizontal.getter();
  v17 = a2;
  v18 = a1;
  sub_100140278(&qword_1008F26F0);
  sub_100548EEC();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_100140278(&qword_1008E0960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v12 = static Axis.Set.vertical.getter();
  *(inited + 32) = v12;
  v13 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v13;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v12)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v13)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_10014A6B0(&qword_1008F2710, &qword_1008F26E8);
  View.scrollIndicators(_:axes:)();
  (*(v4 + 8))(v6, v16);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100546D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = sub_100140278(&qword_1008F2718);
  sub_100546DD0(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = sub_100140278(&qword_1008F26F0);
  v16 = a3 + *(result + 36);
  *v16 = a2;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}