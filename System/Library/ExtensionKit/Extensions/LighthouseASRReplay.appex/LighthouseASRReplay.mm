uint64_t sub_100001668()
{
  v0 = sub_100005354();
  sub_100004FAC(v0, qword_10000CA20);
  sub_100004440(v0, qword_10000CA20);
  return sub_100005344();
}

Swift::Int sub_1000016FC()
{
  v1 = *v0;
  sub_100005444();
  sub_100005454(v1);
  return sub_100005464();
}

Swift::Int sub_100001770()
{
  v1 = *v0;
  sub_100005444();
  sub_100005454(v1);
  return sub_100005464();
}

uint64_t sub_1000017B4()
{
  v1 = 0x694664726F636572;
  if (*v0 != 1)
  {
    v1 = 0x795479616C706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x745364726F636572;
  }
}

uint64_t sub_10000182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100003A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000186C(uint64_t a1)
{
  v2 = sub_100004024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000018A8(uint64_t a1)
{
  v2 = sub_100004024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000018E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = sub_100002CD0(&qword_10000C380, &qword_100005B78);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_100003FE0(a1, a1[3]);
  sub_100004024();
  sub_100005484();
  LOBYTE(v19) = 0;
  sub_100005404();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_100002CD0(&qword_10000C348, &qword_100005B60);
    sub_100004214();
    sub_100005414();
    v19 = v13;
    v18 = 2;
    sub_100002CD0(&qword_10000C368, &qword_100005B70);
    sub_10000432C();
    sub_100005414();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100001AD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100003C84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100001B28(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(sub_100002CD0(&qword_10000C3A8, &qword_100005B88) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_100002CD0(&qword_10000C268, &unk_1000059A0);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100001C38, 0, 0);
}

uint64_t sub_100001C38()
{
  if (qword_10000C550 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_100005354();
  v0[13] = sub_100004440(v2, qword_10000CA20);
  v3 = v1;
  v4 = sub_100005334();
  v5 = sub_1000053A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100004D5C(v8, &qword_10000C3B8, &qword_100005B98);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = type metadata accessor for LighthouseASRExtension();
  v13 = sub_10000306C(&qword_10000C308);
  v14 = sub_100002E7C();
  v15 = sub_100002ED0();
  *v11 = v0;
  v11[1] = sub_100001E50;
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[6];

  return MLHostExtension.loadConfig<A>(context:)(v16, v18, v12, &type metadata for LighthouseASRExtensionConfig, v13, v14, v15);
}

uint64_t sub_100001E50()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100001F4C, 0, 0);
}

uint64_t sub_100001F4C()
{
  v34 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[12];
  if (v5 == 1)
  {
    v7 = *(v2 + 16);
    v7(v6, v0[7], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100004D5C(v0[8], &qword_10000C3A8, &qword_100005B88);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
    v7 = *(v2 + 16);
  }

  v8 = v0[13];
  v7(v0[11], v0[12], v0[9]);
  v9 = sub_100005334();
  v10 = sub_1000053A4();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v15 = 136315138;
    sub_100004CAC();
    v16 = sub_100005424();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_1000030B0(v16, v18, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Configuration: %s", v15, 0xCu);
    sub_100004D10(v32);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v0[15] = v19;
  v21 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v22 = [v21 ASR];
  swift_unknownObjectRelease();
  v23 = [v22 ContextualReplayRecord];
  v0[16] = v23;
  swift_unknownObjectRelease();
  v24 = sub_100005364();
  v0[17] = [v23 publisherWithUseCase:v24];

  v0[18] = 0;
  v25 = v0[12];
  v26 = v0[9];
  sub_1000052F4();
  v27 = v0[4];
  v0[19] = v0[3];
  v0[20] = v27;
  v28 = v0[5];
  v0[21] = v28;
  v29 = swift_task_alloc();
  v0[22] = v29;
  *v29 = v0;
  v29[1] = sub_1000022D8;
  v30 = v0[17];

  return sub_100004478(v30, 0, v27, v28);
}

uint64_t sub_1000022D8(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100002438, 0, 0);
}

uint64_t sub_100002438()
{
  v1 = v0[23];
  v2 = v0[18];
  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = v0[23];
    v0[18] = v3;
    v4 = v0[12];
    v5 = v0[9];
    sub_1000052F4();
    v6 = v0[4];
    v0[19] = v0[3];
    v0[20] = v6;
    v7 = v0[5];
    v0[21] = v7;
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_1000022D8;
    v9 = v0[17];

    return sub_100004478(v9, v3, v6, v7);
  }

  else
  {
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[9];
    v17 = v0[10];
    v18 = v0[8];
    v19 = objc_allocWithZone(sub_1000052B4());
    v20 = sub_1000052A4();

    v13(v14, v16);

    v21 = v0[1];

    return v21(v20);
  }
}

void sub_1000025E0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_100002668(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_1000026DC()
{
  objc_allocWithZone(sub_1000052B4());
  v1 = sub_1000052A4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100002750(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000027E4;

  return sub_100001B28(a1);
}

uint64_t sub_1000027E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000028E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000029C4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000029C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002AB8(uint64_t a1)
{
  v2 = sub_10000306C(&qword_10000C308);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100002B20()
{
  sub_100003B74();
  sub_100002E7C();
  sub_100002ED0();
  return sub_1000052E4();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for LighthouseASRExtension();
  sub_10000306C(&qword_10000C260);
  sub_100005294();
  return 0;
}

uint64_t type metadata accessor for LighthouseASRExtension()
{
  result = qword_10000C558;
  if (!qword_10000C558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002CD0(&qword_10000C268, &unk_1000059A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100002CD0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002CD0(&qword_10000C268, &unk_1000059A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100002DA8()
{
  sub_100002E14();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002E14()
{
  if (!qword_10000C2C8)
  {
    sub_100002E7C();
    sub_100002ED0();
    v0 = sub_100005304();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C2C8);
    }
  }
}

unint64_t sub_100002E7C()
{
  result = qword_10000C2D0;
  if (!qword_10000C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D0);
  }

  return result;
}

unint64_t sub_100002ED0()
{
  result = qword_10000C2D8;
  if (!qword_10000C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D8);
  }

  return result;
}

__n128 sub_100002F24(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100002F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000306C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LighthouseASRExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000030B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000317C(v11, 0, 0, 1, a1, a2);
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
    sub_100004DBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004D10(v11);
  return v7;
}

unint64_t sub_10000317C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003288(a5, a6);
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
    result = sub_1000053C4();
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

char *sub_100003288(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000032D4(a1, a2);
  sub_100003404(&off_100008778);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000032D4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000034F0(v5, 0);
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

  result = sub_1000053C4();
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
        v10 = sub_100005394();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000034F0(v10, 0);
        result = sub_1000053B4();
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

uint64_t sub_100003404(uint64_t result)
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

  result = sub_100003564(result, v12, 1, v3);
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

void *sub_1000034F0(uint64_t a1, uint64_t a2)
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

  sub_100002CD0(&qword_10000C3C0, &unk_100005BA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003564(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002CD0(&qword_10000C3C0, &unk_100005BA0);
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

unint64_t sub_100003658(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100005444();
  sub_100005384();
  v6 = sub_100005464();

  return sub_1000036D0(a1, a2, v6);
}

unint64_t sub_1000036D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005434())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100003788(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_100003834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002CD0(&qword_10000C330, &qword_100005B48);
    v3 = sub_1000053D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003658(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100003938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002CD0(&qword_10000C328, &qword_100005B40);
    v3 = sub_1000053D4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100003658(v5, v6);
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

uint64_t sub_100003A4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745364726F636572 && a2 == 0xEC0000006D616572;
  if (v4 || (sub_100005434() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694664726F636572 && a2 == 0xED0000737265746CLL || (sub_100005434() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x795479616C706572 && a2 == 0xEB00000000736570)
  {

    return 2;
  }

  else
  {
    v6 = sub_100005434();

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

unint64_t sub_100003B74()
{
  sub_100003834(&off_100008618);
  sub_100004D5C(&unk_100008638, &qword_10000C310, &qword_100005B28);
  sub_100002CD0(&qword_10000C318, &qword_100005B30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100005990;
  v1 = sub_100003938(&off_100008558);
  sub_100002CD0(&qword_10000C320, &qword_100005B38);
  swift_arrayDestroy();
  *(v0 + 32) = v1;
  v2 = sub_100003938(&off_1000085B8);
  swift_arrayDestroy();
  *(v0 + 40) = v2;
  return 0xD000000000000016;
}

uint64_t sub_100003C84(uint64_t *a1)
{
  v3 = sub_100002CD0(&qword_10000C338, &qword_100005B50);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  sub_100003834(&off_100008740);
  sub_100004D5C(&unk_100008760, &qword_10000C310, &qword_100005B28);

  v8 = sub_100003938(&off_100008680);
  sub_100002CD0(&qword_10000C320, &qword_100005B38);
  swift_arrayDestroy();
  v14 = v8;
  v9 = sub_100003938(&off_1000086E0);
  swift_arrayDestroy();
  v15 = v9;
  v10 = a1[4];
  sub_100003FE0(a1, a1[3]);
  sub_100004024();
  sub_100005474();
  if (v1)
  {
    sub_100004D10(a1);
    sub_100002CD0(&qword_10000C340, &qword_100005B58);
    swift_arrayDestroy();
  }

  else
  {
    LOBYTE(v16) = 0;
    v10 = sub_1000053E4();
    sub_100002CD0(&qword_10000C348, &qword_100005B60);
    v13 = 1;
    sub_100004078();
    sub_1000053F4();
    sub_100002CD0(&qword_10000C368, &qword_100005B70);
    v13 = 2;
    sub_10000416C();
    sub_1000053F4();
    (*(v4 + 8))(v7, v3);
    sub_100002CD0(&qword_10000C340, &qword_100005B58);
    swift_arrayDestroy();
    sub_100004D10(a1);
  }

  return v10;
}

void *sub_100003FE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004024()
{
  result = qword_10000C770[0];
  if (!qword_10000C770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C770);
  }

  return result;
}

unint64_t sub_100004078()
{
  result = qword_10000C350;
  if (!qword_10000C350)
  {
    sub_100004124(&qword_10000C348, &qword_100005B60);
    sub_1000042C0(&qword_10000C358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C350);
  }

  return result;
}

uint64_t sub_100004124(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000416C()
{
  result = qword_10000C370;
  if (!qword_10000C370)
  {
    sub_100004124(&qword_10000C368, &qword_100005B70);
    sub_1000043D4(&qword_10000C378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C370);
  }

  return result;
}

unint64_t sub_100004214()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    sub_100004124(&qword_10000C348, &qword_100005B60);
    sub_1000042C0(&qword_10000C390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}

uint64_t sub_1000042C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004124(&qword_10000C360, &qword_100005B68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000432C()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    sub_100004124(&qword_10000C368, &qword_100005B70);
    sub_1000043D4(&qword_10000C3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

uint64_t sub_1000043D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004124(&qword_10000C340, &qword_100005B58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004440(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  return _swift_task_switch(sub_10000449C, 0, 0);
}

uint64_t sub_10000449C()
{
  v50 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = swift_allocObject();
  v0[26] = v3;
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = 0;
  v0[6] = sub_100004E8C;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000025E0;
  v0[5] = &unk_100008878;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];

  v0[12] = sub_100004EF4;
  v0[13] = v3;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100002668;
  v0[11] = &unk_1000088A0;
  v7 = _Block_copy(v0 + 8);
  v8 = v0[13];

  v9 = [v2 drivableSinkWithBookmark:v1 completion:v5 shouldContinue:v7];
  _Block_release(v7);
  _Block_release(v5);

  swift_beginAccess();
  v10 = *(v3 + 16);
  v0[28] = v10;
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
LABEL_29:
      v44 = v0[27];
      swift_beginAccess();
      v18 = *(v44 + 16);
      swift_unknownObjectRetain();
      goto LABEL_30;
    }

    v12 = v11;
    v13 = *(v0[24] + 16);
    v14 = v10;
    if (v13 && (v15 = sub_100003658(0x746E69486B736174, 0xE800000000000000), (v16 & 1) != 0))
    {
      v17 = *(*(v0[24] + 56) + 8 * v15);
    }

    else
    {
      v17 = 0;
    }

    v19 = [v12 metadata];
    if (v19 && (v20 = v19, v21 = [v19 task], v20, v21))
    {
      v22 = sub_100005374();
      v24 = v23;

      if (!v17)
      {

LABEL_22:
        sub_100005324();
        v40 = async function pointer to static CESRAsrReplayCounterfactualABManager.runReplays(event:replayTypes:)[1];
        v41 = swift_task_alloc();
        v0[29] = v41;
        *v41 = v0;
        v41[1] = sub_100004A44;
        v42 = v0[25];

        return static CESRAsrReplayCounterfactualABManager.runReplays(event:replayTypes:)(v12, v42);
      }

      v0[20] = v22;
      v0[21] = v24;
      v25 = swift_task_alloc();
      *(v25 + 16) = v0 + 20;
      v26 = sub_100003788(sub_100004F54, v25, v17);

      if (v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    if (qword_10000C550 != -1)
    {
      swift_once();
    }

    v27 = sub_100005354();
    sub_100004440(v27, qword_10000CA20);
    v28 = v14;
    v29 = sub_100005334();
    v30 = sub_1000053A4();

    if (!os_log_type_enabled(v29, v30))
    {
LABEL_28:

      goto LABEL_29;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136315138;
    v33 = [v12 metadata];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 ids];

      if (v35)
      {
        v36 = [v35 requestId];

        if (v36)
        {
          v37 = sub_100005374();
          v39 = v38;

          v33 = v37;
LABEL_27:
          v43 = sub_1000030B0(v33, v39, &v49);

          *(v31 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v29, v30, "Record does not meet experiment record filter criteria, skipping replay for requestID %s", v31, 0xCu);
          sub_100004D10(v32);

          goto LABEL_28;
        }
      }

      v33 = 0;
    }

    v39 = 0xE000000000000000;
    goto LABEL_27;
  }

  v18 = 0;
LABEL_30:
  v46 = v0[26];
  v45 = v0[27];

  v47 = v0[1];

  return v47(v18);
}

uint64_t sub_100004A44()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100004BFC;
  }

  else
  {
    v3 = sub_100004B58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004B58()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  swift_unknownObjectRetain();

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_100004BFC()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 216);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  swift_unknownObjectRetain();

  v6 = *(v0 + 8);

  return v6(v3);
}

unint64_t sub_100004CAC()
{
  result = qword_10000C3B0;
  if (!qword_10000C3B0)
  {
    sub_100004124(&qword_10000C268, &unk_1000059A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3B0);
  }

  return result;
}

uint64_t sub_100004D10(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004D5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002CD0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004DBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004E1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004E54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004E8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_100004EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004EF4(void *a1)
{
  v2 = [a1 eventBody];
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;

  return 0;
}

uint64_t sub_100004F54(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100005434() & 1;
  }
}

uint64_t *sub_100004FAC(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for LighthouseASRExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseASRExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005188()
{
  result = qword_10000C880[0];
  if (!qword_10000C880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C880);
  }

  return result;
}

unint64_t sub_1000051E0()
{
  result = qword_10000C990;
  if (!qword_10000C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C990);
  }

  return result;
}

unint64_t sub_100005238()
{
  result = qword_10000C998[0];
  if (!qword_10000C998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C998);
  }

  return result;
}