uint64_t sub_100001190()
{
  v0 = sub_1000033A4();
  sub_100003240(v0, qword_100008048);
  sub_1000030FC(v0, qword_100008048);
  return sub_100003394();
}

uint64_t sub_10000120C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000012B4;

  return sub_100001C40(a1);
}

uint64_t sub_1000012B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000013A8(uint64_t a1)
{
  v2 = sub_100001510();

  return IngestionExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001454();
  sub_1000032E4();
  return 0;
}

unint64_t sub_100001454()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_100001510()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

void *sub_100001564(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000030B4(&qword_100008030, &qword_1000037B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000030B4(&qword_100008038, &qword_1000037B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100001698(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001764(v11, 0, 0, 1, a1, a2);
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
    sub_1000031E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003194(v11);
  return v7;
}

unint64_t sub_100001764(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001870(a5, a6);
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
    result = sub_100003404();
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

char *sub_100001870(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000018BC(a1, a2);
  sub_1000019EC(&off_1000042E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000018BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001AD8(v5, 0);
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

  result = sub_100003404();
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
        v10 = sub_1000033C4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001AD8(v10, 0);
        result = sub_1000033F4();
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

uint64_t sub_1000019EC(uint64_t result)
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

  result = sub_100001B4C(result, v12, 1, v3);
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

void *sub_100001AD8(uint64_t a1, uint64_t a2)
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

  sub_1000030B4(&qword_100008028, &qword_1000037A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100001B4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000030B4(&qword_100008028, &qword_1000037A8);
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

uint64_t sub_100001C40(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100003374();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_1000030B4(&qword_100008018, &qword_100003798) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_100003344();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100001DA0, 0, 0);
}

uint64_t sub_100001DA0()
{
  v1 = sub_1000032D4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[11] = sub_1000032C4();
  if (qword_100008040 != -1)
  {
    swift_once();
  }

  v4 = sub_1000033A4();
  v0[12] = sub_1000030FC(v4, qword_100008048);
  v5 = sub_100003384();
  v6 = sub_1000033D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Begin ingesting", v7, 2u);
  }

  sub_100003314();

  v0[13] = sub_100003304();
  v8 = *(&async function pointer to dispatch thunk of ObjCSELFMapper.loadBiomeEvent() + 1);
  v11 = (&async function pointer to dispatch thunk of ObjCSELFMapper.loadBiomeEvent() + async function pointer to dispatch thunk of ObjCSELFMapper.loadBiomeEvent());
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100001F64;

  return v11();
}

uint64_t sub_100001F64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  v3[15] = a1;

  v6 = async function pointer to IFTranscriptSELFMapper.adaptToSELF(events:)[1];
  v7 = swift_task_alloc();
  v3[16] = v7;
  *v7 = v5;
  v7[1] = sub_1000020BC;
  v8 = v3[13];

  return IFTranscriptSELFMapper.adaptToSELF(events:)(a1);
}

uint64_t sub_1000020BC(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1000021DC, 0, 0);
}

uint64_t sub_1000021DC()
{
  v52 = v0;
  v1 = v0[17];
  v2 = v0[12];

  v3 = sub_100003384();
  v4 = sub_1000033D4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v6[2];

    _os_log_impl(&_mh_execute_header, v3, v4, "SELF message count: %ld", v7, 0xCu);
  }

  else
  {
    v8 = v0[17];
  }

  v10 = v0[17];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v48 = v0[8];
    v49 = (v48 + 8);
    v44 = v0[17];
    v43 = *(v10 + 16);
    while (1)
    {
      v13 = *(v10 + 16);
      if (v12 >= v13)
      {
        break;
      }

      v14 = v0[6];
      v15 = v0[2];
      v16 = *(v48 + 16);
      v16(v0[10], v0[17] + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v12, v0[7]);
      sub_100003324();
      v17 = sub_100003334();
      sub_1000032A4();
      v0[18] = 0;
      v18 = v0[12];
      v20 = v0[9];
      v19 = v0[10];
      v21 = v0[7];
      sub_100003134(v0[6], &qword_100008018, &qword_100003798);

      v16(v20, v19, v21);
      v6 = sub_100003384();
      v22 = sub_1000033D4();
      v23 = os_log_type_enabled(v6, v22);
      v3 = v0[9];
      v24 = v0[10];
      v25 = v0[7];
      if (v23)
      {
        v26 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v26 = 136315138;
        v27 = sub_100003334();
        v45 = v22;
        v28 = [v27 qualifiedMessageName];

        v29 = sub_1000033B4();
        v46 = v24;
        v31 = v30;

        v4 = v48 + 8;
        v32 = *v49;
        (*v49)(v3, v25);
        v33 = v29;
        v10 = v44;
        v34 = sub_100001698(v33, v31, &v51);
        v11 = v43;

        *(v26 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v6, v45, "appended %s to SELF staging pool", v26, 0xCu);
        v3 = v47;
        sub_100003194(v47);

        v32(v46, v25);
      }

      else
      {

        v6 = (v48 + 8);
        v4 = *v49;
        (*v49)(v3, v25);
        (v4)(v24, v25);
      }

      if (v11 == ++v12)
      {
        v36 = v0[17];
        goto LABEL_12;
      }
    }

    __break(1u);
    v42 = sub_100001564((v13 > 1), v3, 1, v9);
    v0[23] = v42;
    v42[2] = v3;
    v42[v4 + 4] = v6;
    v35 = *(&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + 1);
    v50 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v38 = swift_task_alloc();
    v0[24] = v38;
    *v38 = v0;
    v39 = sub_100002C38;
  }

  else
  {
LABEL_12:

    v37 = *(&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + 1);
    v50 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v38 = swift_task_alloc();
    v0[19] = v38;
    *v38 = v0;
    v39 = sub_1000027B0;
  }

  v38[1] = v39;
  v40 = v0[11];

  return v50();
}

uint64_t sub_1000027B0()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_1000028AC, 0, 0);
}

uint64_t sub_1000028AC()
{
  v1 = v0[13];

  v0[20] = &_swiftEmptyArrayStorage;
  v2 = v0[12];
  v3 = sub_100003384();
  v4 = sub_1000033D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "IF RequestLinks: begin ingesting", v5, 2u);
  }

  v6 = v0[5];

  sub_100003354();
  v7 = async function pointer to IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1000029F8;
  v9 = v0[5];
  v10 = v0[2];

  return IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)(v10);
}

uint64_t sub_1000029F8()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100002E7C;
  }

  else
  {
    v3 = sub_100002B0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002B0C()
{
  v1 = v0[20];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v2 = *(v1 + 16);
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
  if (v2)
  {
    v8 = *(v0[20] + 32);
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {
    v10 = v0[11];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100002C38()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return _swift_task_switch(sub_100002D34, 0, 0);
}

uint64_t sub_100002D34()
{
  v1 = v0[18];

  v0[20] = v0[23];
  v2 = v0[12];
  v3 = sub_100003384();
  v4 = sub_1000033D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "IF RequestLinks: begin ingesting", v5, 2u);
  }

  v6 = v0[5];

  sub_100003354();
  v7 = async function pointer to IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1000029F8;
  v9 = v0[5];
  v10 = v0[2];

  return IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)(v10);
}

uint64_t sub_100002E7C()
{
  v1 = v0[22];
  v2 = v0[12];
  (*(v0[4] + 8))(v0[5], v0[3]);
  swift_errorRetain();
  v3 = sub_100003384();
  v4 = sub_1000033E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error ingesting IF RequestLinks: %@", v6, 0xCu);
    sub_100003134(v7, &qword_100008020, &qword_1000037A0);
  }

  v9 = v0[20];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100001564(0, v11[2] + 1, 1, v0[20]);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100001564((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = v0[22];
  v11[2] = v13 + 1;
  v11[v13 + 4] = v14;
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  v19 = v0[5];
  v18 = v0[6];
  v20 = v11[4];
  swift_errorRetain();

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000030B4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000030FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003134(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000030B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003194(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000031E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003240(uint64_t a1, uint64_t *a2)
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