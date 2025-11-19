uint64_t sub_1000013D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000038A0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1000037B0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_100003820();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_100003950();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000015AC, 0, 0);
}

uint64_t sub_1000015AC()
{
  v57 = v0;
  v1 = v0;
  v2 = v0[16];
  v3 = v0[3];
  sub_100003930();

  v4 = sub_100003940();
  v5 = sub_1000039A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v7 = 136315138;
    v8 = *(v6 + 16);
    v9 = &_swiftEmptyArrayStorage;
    if (v8)
    {
      v44 = v7;
      v45 = v5;
      v46 = v4;
      v10 = v0[12];
      v11 = v0[9];
      v12 = v1[6];
      v13 = v1[3];
      v56 = &_swiftEmptyArrayStorage;
      sub_1000029D4(0, v8, 0);
      v9 = &_swiftEmptyArrayStorage;
      v14 = *(v10 + 16);
      v10 += 16;
      v15 = v13 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v51 = *(v10 + 56);
      v52 = v14;
      v49 = (v11 + 8);
      v50 = (v12 + 8);
      v53 = v1;
      v48 = (v10 - 8);
      do
      {
        v16 = v1[13];
        v17 = v1[10];
        v18 = v1[11];
        v20 = v1[7];
        v19 = v1[8];
        v21 = v1[5];
        v52(v16, v15, v18);
        sub_100003810();
        sub_1000037A0();
        v22 = sub_100003890();
        v54 = v23;
        (*v50)(v20, v21);
        (*v49)(v17, v19);
        (*v48)(v16, v18);
        v56 = v9;
        v25 = v9[2];
        v24 = v9[3];
        if (v25 >= v24 >> 1)
        {
          sub_1000029D4((v24 > 1), v25 + 1, 1);
          v9 = v56;
        }

        v9[2] = v25 + 1;
        v26 = &v9[2 * v25];
        v1 = v53;
        v26[4] = v22;
        v26[5] = v54;
        v15 += v51;
        --v8;
      }

      while (v8);
      v4 = v46;
      v5 = v45;
      v7 = v44;
    }

    v30 = v1[15];
    v31 = v1[16];
    v32 = v1[14];
    v1[2] = v9;
    sub_10000340C(&qword_10000C190, &qword_100003E28);
    sub_100003598();
    v33 = sub_100003960();
    v35 = v34;

    v36 = sub_1000022FC(v33, v35, &v55);

    *(v7 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v4, v5, "Classifying transactions: %s", v7, 0xCu);
    sub_1000036A4(v47);

    (*(v30 + 8))(v31, v32);
  }

  else
  {
    v27 = v0[15];
    v28 = v0[16];
    v29 = v0[14];

    (*(v27 + 8))(v28, v29);
  }

  v37 = v1[4];
  v38 = v37[5];
  v39 = v37[6];
  sub_100003554(v37 + 2, v38);
  v40 = async function pointer to dispatch thunk of MapsTransactionClassifying.classifyTransactions(_:)[1];
  v41 = swift_task_alloc();
  v1[17] = v41;
  *v41 = v1;
  v41[1] = sub_100001990;
  v42 = v1[3];

  return dispatch thunk of MapsTransactionClassifying.classifyTransactions(_:)(v42, v38, v39);
}

uint64_t sub_100001990(uint64_t a1)
{
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 56);
  v10 = *v1;

  v8 = *(v10 + 8);

  return v8(a1);
}

uint64_t sub_100001B0C()
{
  sub_1000036A4((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100001B44(uint64_t a1)
{
  v2 = sub_1000022BC(&qword_10000C168);

  return MapsInsightsExtension.configuration.getter(a1, v2);
}

uint64_t sub_100001BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002C10();
  *a1 = result;
  return result;
}

uint64_t sub_100001BD4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001C6C;

  return sub_1000013D8(a1);
}

uint64_t sub_100001C6C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100001D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return _swift_task_switch(sub_100001D94, 0, 0);
}

uint64_t sub_100001D94()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v1[5];
  v4 = v1[6];
  sub_100003554(v1 + 2, v3);
  v5 = async function pointer to dispatch thunk of MapsTransactionClassifying.fetchHeroImageDetails(muid:resultProviderID:entity:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100001E70;
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return dispatch thunk of MapsTransactionClassifying.fetchHeroImageDetails(muid:resultProviderID:entity:)(v8, v9, v2 | ((HIDWORD(v2) & 1) << 32), v7, v3, v4);
}

uint64_t sub_100001E70()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001F64(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100001F88, 0, 0);
}

uint64_t sub_100001F88()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  sub_100003554(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of MapsTransactionClassifying.encodedStylingInfo(for:)[1];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100002048;
  v6 = v0[2];

  return dispatch thunk of MapsTransactionClassifying.encodedStylingInfo(for:)(v6, v2, v3);
}

uint64_t sub_100002048(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for MapsTransactionInsightsExtensionImplementation();
  sub_1000022BC(&qword_10000C0B8);
  sub_100003920();
  return 0;
}

uint64_t sub_1000022BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MapsTransactionInsightsExtensionImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000022FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000023C8(v11, 0, 0, 1, a1, a2);
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
    sub_100003644(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000036A4(v11);
  return v7;
}

unint64_t sub_1000023C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000024D4(a5, a6);
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
    result = sub_1000039D0();
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

char *sub_1000024D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002520(a1, a2);
  sub_100002650(&off_100008498);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002520(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000273C(v5, 0);
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

  result = sub_1000039D0();
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
        v10 = sub_100003990();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000273C(v10, 0);
        result = sub_1000039C0();
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

uint64_t sub_100002650(uint64_t result)
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

  result = sub_1000027B0(result, v12, 1, v3);
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

void *sub_10000273C(uint64_t a1, uint64_t a2)
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

  sub_10000340C(&qword_10000C1A0, &qword_100003E30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000027B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000340C(&qword_10000C1A0, &qword_100003E30);
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

unint64_t sub_1000028A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100003A00();
  sub_100003980();
  v6 = sub_100003A10();

  return sub_10000291C(a1, a2, v6);
}

unint64_t sub_10000291C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000039F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1000029D4(char *a1, int64_t a2, char a3)
{
  result = sub_1000029F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000029F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000340C(&qword_10000C1A8, &qword_100003E38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100002B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000340C(&qword_10000C188, &qword_100003E18);
    v3 = sub_1000039E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000034D4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000028A4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100003544(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100002C10()
{
  v0 = *(*(sub_100003880() - 8) + 64);
  (__chkstk_darwin)();
  v61 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003950();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  (__chkstk_darwin)();
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100003860() - 8) + 64);
  (__chkstk_darwin)();
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003800();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  v9 = (__chkstk_darwin)();
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_100003740();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003700();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000036F0();
  v67 = v18;
  v68 = &protocol witness table for FinanceTrialProvider;
  v23 = sub_1000033A8(&v66);
  (*(v19 + 16))(v23, v22, v18);
  v24 = sub_100003850();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_100003840();
  (*(v19 + 8))(v22, v18);
  v67 = v24;
  v68 = &protocol witness table for PIIRedactionRegexCollectionProvider;
  *&v66 = v27;
  v28 = sub_100003790();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v60 = v28;
  swift_allocObject();
  v31 = sub_100003780();
  sub_10000340C(&qword_10000C170, &qword_100003E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100003CC0;
  *(inited + 32) = sub_100003970();
  *(inited + 40) = v33;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_100003970();
  *(inited + 88) = v34;
  (*(v14 + 104))(v17, enum case for XPCMachService.coreDataStore(_:), v13);
  v35 = sub_100003730();
  v37 = v36;
  v38 = v13;
  v39 = v57;
  (*(v14 + 8))(v17, v38);
  v40 = v56;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v35;
  *(inited + 104) = v37;
  sub_100002B00(inited);
  swift_setDeallocating();
  sub_10000340C(&qword_10000C178, &qword_100003E08);
  swift_arrayDestroy();
  sub_1000037F0();
  sub_100003830();
  (*(v40 + 104))(v12, enum case for CoreDataStoreConfiguration.client(_:), v39);
  (*(v40 + 16))(v58, v12, v39);
  v41 = sub_100003720();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_100003710();
  v44 = sub_1000037D0();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_1000037C0();
  (*(v40 + 8))(v12, v39);

  v67 = v60;
  v68 = &protocol witness table for PIIStringProcessor;
  *&v66 = v31;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62[3] = sub_100003910();
  v62[4] = &protocol witness table for MerchantLookupRequestExecutor;
  sub_1000033A8(v62);

  sub_100003900();
  sub_100003870();
  sub_100003770();
  sub_100003760();
  sub_100003750();

  v47 = sub_1000038C0();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_1000038B0();

  v67 = v47;
  v68 = &protocol witness table for MapsTransactionClassifier;
  *&v66 = v50;
  type metadata accessor for MapsTransactionInsightsExtensionImplementation();
  v51 = swift_allocObject();
  sub_100003454(&v66, v51 + 16);
  return v51;
}

uint64_t *sub_1000033A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000340C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003454(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000346C(uint64_t a1)
{
  v2 = sub_10000340C(&qword_10000C180, &qword_100003E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000034D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000340C(&qword_10000C178, &qword_100003E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100003544(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100003554(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100003598()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    sub_1000035FC(&qword_10000C190, &qword_100003E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_1000035FC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003644(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000036A4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}