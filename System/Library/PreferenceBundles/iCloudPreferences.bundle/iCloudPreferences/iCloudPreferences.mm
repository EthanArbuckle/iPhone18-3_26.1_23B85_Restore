unint64_t sub_1730()
{
  result = qword_8140;
  if (!qword_8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8140);
  }

  return result;
}

uint64_t sub_17A0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(sub_34A0() - 8) + 64);
  __chkstk_darwin();
  sub_3420();
  v4 = [objc_allocWithZone(PSSpecifier) init];
  [v4 setProperty:a2 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_3490();
  return sub_3470();
}

uint64_t sub_187C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(*(sub_25A8(&qword_8160, &qword_39A0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = sub_34A0();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v8 = sub_34F0();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = sub_3410();
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_35A0();
  v3[24] = sub_3590();
  v15 = sub_3580();

  return _swift_task_switch(sub_1A70, v15, v14);
}

uint64_t sub_1A70()
{
  v67 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[11];

  sub_3520();
  sub_3510();
  v5 = sub_3400();
  v7 = v6;
  if (qword_80A0 != -1)
  {
    swift_once();
  }

  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v12 = sub_34D0();
  sub_2890(v12, qword_82A0);
  (*(v10 + 16))(v9, v8, v11);
  v13 = sub_34B0();
  v14 = sub_35B0();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[21];
  v17 = v0[22];
  v18 = v0[20];
  if (v15)
  {
    v64 = v7;
    v19 = swift_slowAlloc();
    v63 = v5;
    v20 = swift_slowAlloc();
    v66 = v20;
    *v19 = 136315138;
    sub_3160(&qword_8180, &type metadata accessor for URL);
    v21 = sub_3600();
    v23 = v22;
    v65 = *(v16 + 8);
    v65(v17, v18);
    v24 = sub_28C8(v21, v23, &v66);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_0, v13, v14, "Handling iCloudSettingsExperience URL: %s", v19, 0xCu);
    sub_3114(v20);
    v5 = v63;

    v7 = v64;
  }

  else
  {

    v65 = *(v16 + 8);
    v65(v17, v18);
  }

  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[12];
  v28 = v0[13];
  sub_3430();
  if ((*(v25 + 48))(v28, 1, v26) == 1)
  {
    v29 = v0[23];
    v30 = v0[13];

    sub_30B4(v30, &qword_8160, &qword_39A0);
    sub_25A8(&qword_8168, &qword_39A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_38C0;
    *(inited + 32) = 1752457584;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = sub_33F0();
    *(inited + 56) = v32;
    v33 = sub_2FA0(inited);
    swift_setDeallocating();
    sub_30B4(inited + 32, &qword_8170, &qword_39B0);
    v34 = sub_34B0();
    v35 = sub_35B0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v66 = v37;
      *v36 = 136315138;
      v38 = sub_3550();
      v40 = sub_28C8(v38, v39, &v66);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "Opening iCloudSettings with payload: %s", v36, 0xCu);
      sub_3114(v37);
    }

    v41 = v0[12];
    sub_20B0(v33);

    sub_3440();
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);

    v42 = sub_34B0();
    v43 = sub_35B0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v44 = 136315138;
      v46 = sub_28C8(v5, v7, &v66);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_0, v42, v43, "Obtained matching recipe for URL component: %s", v44, 0xCu);
      sub_3114(v45);
    }

    else
    {
    }

    v47 = v0[19];
    v49 = v0[15];
    v48 = v0[16];
    v50 = v0[14];
    sub_3160(&qword_8178, &type metadata accessor for PreferencesControllerRecipe);
    sub_34E0();
    (*(v49 + 8))(v48, v50);
  }

  v51 = v0[22];
  v52 = v0[23];
  v53 = v0[20];
  v54 = v0[21];
  v56 = v0[18];
  v55 = v0[19];
  v58 = v0[16];
  v57 = v0[17];
  v59 = v0[13];
  v60 = v0[10];
  sub_3530();
  (*(v56 + 8))(v55, v57);
  v65(v52, v53);

  v61 = v0[1];

  return v61();
}

uint64_t sub_20B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25A8(&qword_8190, &qword_39C0);
    v2 = sub_35F0();
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
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_3208(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_3208(v33, v34);
    result = sub_35C0(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_3208(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2378()
{
  v1 = sub_25A8(&qword_8148, &qword_3988);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = *v0;
  v7 = v0[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_3480();
  sub_3160(&qword_8150, &type metadata accessor for PreferencesControllerView);

  v9 = v7;
  sub_3540();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v9;
  sub_27E4();

  v11 = v9;
  sub_3500();
  return (*(v2 + 8))(v5, v1);
}

id sub_254C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3460();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_3450();
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v5;
  a1[1] = result;
  return result;
}

uint64_t sub_25A8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_25FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_263C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F0;

  return sub_187C(a1, a2, v7);
}

uint64_t sub_26F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_27E4()
{
  result = qword_8158;
  if (!qword_8158)
  {
    sub_2848(&qword_8148, &qword_3988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8158);
  }

  return result;
}

uint64_t sub_2848(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2890(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_28C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2994(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_31A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3114(v11);
  return v7;
}

unint64_t sub_2994(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2AA0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_35E0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_2AA0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2AEC(a1, a2);
  sub_2C1C(&off_4470);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_2AEC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_2D08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_35E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_3570();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2D08(v10, 0);
        result = sub_35D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2C1C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2D7C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2D08(uint64_t a1, uint64_t a2)
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

  sub_25A8(&qword_8188, &qword_39B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2D7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25A8(&qword_8188, &qword_39B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2E70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_3620();
  sub_3560();
  v6 = sub_3630();

  return sub_2EE8(a1, a2, v6);
}

unint64_t sub_2EE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_3610())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2FA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25A8(&qword_8198, &qword_39C8);
    v3 = sub_35F0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2E70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_30B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_25A8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3114(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_31A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_3208(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_3218(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3224(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_326C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_32B8()
{
  sub_2848(&qword_8148, &qword_3988);
  sub_27E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3320()
{
  v0 = sub_34D0();
  sub_338C(v0, qword_82A0);
  sub_2890(v0, qword_82A0);
  return sub_34C0();
}

uint64_t *sub_338C(uint64_t a1, uint64_t *a2)
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