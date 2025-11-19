uint64_t sub_100001388()
{
  v0 = sub_100004138();
  sub_100003D78(v0, qword_10000C5D0);
  sub_100003BD0(v0, qword_10000C5D0);
  return sub_100004128();
}

Swift::Int sub_10000141C()
{
  v1 = *v0;
  sub_100004238();
  sub_100004248(v1);
  return sub_100004258();
}

Swift::Int sub_100001490()
{
  v1 = *v0;
  sub_100004238();
  sub_100004248(v1);
  return sub_100004258();
}

uint64_t sub_1000014D4()
{
  v1 = *v0;
  v2 = 0x726F63655278616DLL;
  v3 = 0x656C6261736964;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x685464696C637565;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000015A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000035A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000015E8(uint64_t a1)
{
  v2 = sub_100003AC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001624(uint64_t a1)
{
  v2 = sub_100003AC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001660(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14[1] = a4;
  v7 = sub_100002C0C(&qword_10000C0C8, &qword_1000046B0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100003A84(a1, a1[3]);
  sub_100003AC8();
  sub_100004278();
  v21 = 0;
  sub_1000041F8();
  if (!v4)
  {
    v20 = a3;
    v19 = 1;
    sub_100002C0C(&qword_10000C0B8, &qword_1000046A8);
    sub_100003B64(&qword_10000C0D0);
    sub_100004208();
    v18 = 2;
    sub_1000041E8();
    v17 = 3;
    sub_1000041D8();
    v16 = 4;
    sub_1000041D8();
    v15 = 5;
    sub_1000041D8();
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_1000018D0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1000037C4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6 & 1;
    *(a2 + 25) = BYTE1(v6) & 1;
    *(a2 + 26) = BYTE2(v6) & 1;
  }
}

uint64_t sub_100001918(void *a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_100001660(a1, *v1, *(v1 + 8), v4 | v5);
}

uint64_t sub_100001964(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(sub_100002C0C(&qword_10000C0D8, &qword_1000046C0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = sub_100002C0C(&qword_10000C008, &unk_100004510);
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_100001A74, 0, 0);
}

uint64_t sub_100001A74()
{
  if (qword_10000C100 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_100004138();
  v0[33] = sub_100003BD0(v2, qword_10000C5D0);
  v3 = v1;
  v4 = sub_100004118();
  v5 = sub_100004158();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "ASRFullPayloadCorrectionExtension::Context %@", v7, 0xCu);
    sub_100003C08(v8, &qword_10000C0E0, &qword_1000046C8);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[34] = v11;
  v12 = type metadata accessor for ASRFullPayloadCorrectionExtension();
  v13 = sub_100002FB8(&qword_10000C0A8);
  v14 = sub_100002DB8();
  v15 = sub_100002E0C();
  *v11 = v0;
  v11[1] = sub_100001C8C;
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[26];

  return MLHostExtension.loadConfig<A>(context:)(v16, v18, v12, &type metadata for ASRFullPayloadCorrectionExtensionConfig, v13, v14, v15);
}

uint64_t sub_100001C8C()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_100001D88, 0, 0);
}

uint64_t sub_100001D88()
{
  v50 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 256);
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, *(v0 + 216), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100003C08(*(v0 + 224), &qword_10000C0D8, &qword_1000046C0);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  sub_1000040B8();
  v9 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v10 = *(v0 + 240);
    v11 = objc_allocWithZone(sub_100004078());
    v12 = sub_100004068();
    v13 = *(v0 + 248);
    v14 = *(v0 + 224);
    v15 = *(v0 + 240) + 8;
    (*(v10 + 8))(*(v0 + 256), *(v0 + 232));

    v16 = *(v0 + 8);

    return v16(v12);
  }

  else
  {
    v18 = *(v0 + 264);
    (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
    v19 = sub_100004118();
    v20 = sub_100004158();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 232);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v25 = 136315138;
      sub_100003C68();
      v26 = sub_100004218();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v22, v24);
      v30 = sub_100002FFC(v26, v28, &v49);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "ASRFullPayloadCorrectionExtension::Configuration %s", v25, 0xCu);
      sub_100003CCC(v47);
    }

    else
    {

      v29 = *(v23 + 8);
      v29(v22, v24);
    }

    *(v0 + 280) = v29;
    v31 = *(v0 + 256);
    v32 = *(v0 + 232);
    v33 = *(v0 + 208);
    sub_1000040D8();
    sub_1000040E8();
    sub_1000040B8();
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);

    sub_1000040B8();
    v36 = *(v0 + 88);
    sub_1000040B8();
    v37 = *(v0 + 120);

    v38 = *(v0 + 138);
    sub_1000040B8();
    v39 = *(v0 + 152);

    v40 = *(v0 + 169);
    sub_1000040B8();
    v41 = *(v0 + 184);

    v42 = *(v0 + 192);
    sub_100004108();
    swift_allocObject();
    v43 = sub_1000040F8();
    *(v0 + 288) = v43;
    v46 = (*v43 + 304);
    v48 = (*v46 + **v46);
    v44 = (*v46)[1];
    v45 = swift_task_alloc();
    *(v0 + 296) = v45;
    *v45 = v0;
    v45[1] = sub_10000224C;

    return v48();
  }
}

uint64_t sub_10000224C()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_10000242C;
  }

  else
  {
    v3 = sub_100002360;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002360()
{
  v1 = *(v0 + 288);
  v2 = objc_allocWithZone(sub_100004078());
  v3 = sub_100004068();

  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 240) + 8;
  (*(v0 + 280))(*(v0 + 256), *(v0 + 232));

  v7 = *(v0 + 8);

  return v7(v3);
}

uint64_t sub_10000242C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);

  swift_errorRetain();
  v4 = sub_100004118();
  v5 = sub_100004168();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "ASRFullPayloadCorrectionExtension::Exception thrown: %@", v7, 0xCu);
    sub_100003C08(v8, &qword_10000C0E0, &qword_1000046C8);
  }

  v10 = *(v0 + 304);

  v11 = objc_allocWithZone(sub_100004078());
  v12 = sub_100004068();

  v13 = *(v0 + 248);
  v14 = *(v0 + 224);
  v15 = *(v0 + 240) + 8;
  (*(v0 + 280))(*(v0 + 256), *(v0 + 232));

  v16 = *(v0 + 8);

  return v16(v12);
}

uint64_t sub_100002604()
{
  objc_allocWithZone(sub_100004078());
  v1 = sub_100004068();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100002678(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000270C;

  return sub_100001964(a1);
}

uint64_t sub_10000270C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000028EC;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000028EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000029E0(uint64_t a1)
{
  v2 = sub_100002FB8(&qword_10000C0A8);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100002A48()
{
  sub_100002DB8();
  sub_100002E0C();
  return sub_1000040A8();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ASRFullPayloadCorrectionExtension();
  sub_100002FB8(&qword_10000C000);
  sub_100004058();
  return 0;
}

uint64_t type metadata accessor for ASRFullPayloadCorrectionExtension()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C0C(&qword_10000C008, &unk_100004510);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100002C0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C0C(&qword_10000C008, &unk_100004510);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100002CE4()
{
  sub_100002D50();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002D50()
{
  if (!qword_10000C068)
  {
    sub_100002DB8();
    sub_100002E0C();
    v0 = sub_1000040C8();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C068);
    }
  }
}

unint64_t sub_100002DB8()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002E0C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

__n128 sub_100002E60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_100002E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_100002EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002FB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASRFullPayloadCorrectionExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002FFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000030C8(v11, 0, 0, 1, a1, a2);
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
    sub_100003D18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003CCC(v11);
  return v7;
}

unint64_t sub_1000030C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000031D4(a5, a6);
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
    result = sub_100004188();
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

char *sub_1000031D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003220(a1, a2);
  sub_100003350(&off_100008478);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003220(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000343C(v5, 0);
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

  result = sub_100004188();
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
        v10 = sub_100004148();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000343C(v10, 0);
        result = sub_100004178();
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

uint64_t sub_100003350(uint64_t result)
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

  result = sub_1000034B0(result, v12, 1, v3);
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

void *sub_10000343C(uint64_t a1, uint64_t a2)
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

  sub_100002C0C(&unk_10000C0F0, &qword_1000046D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000034B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002C0C(&unk_10000C0F0, &qword_1000046D0);
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

uint64_t sub_1000035A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F63655278616DLL && a2 == 0xEA00000000007364;
  if (v4 || (sub_100004228() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C61636F6CLL && a2 == 0xE700000000000000 || (sub_100004228() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x685464696C637565 && a2 == 0xEF646C6F68736572 || (sub_100004228() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6261736964 && a2 == 0xE700000000000000 || (sub_100004228() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000100004B70 == a2 || (sub_100004228() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100004B90 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_100004228();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

double sub_1000037C4(uint64_t *a1)
{
  v4 = sub_100002C0C(&qword_10000C0B0, &qword_1000046A0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v12 - v7;
  v9 = a1[4];
  sub_100003A84(a1, a1[3]);
  sub_100003AC8();
  sub_100004268();
  if (!v1)
  {
    v18 = 0;
    sub_1000041B8();
    sub_100002C0C(&qword_10000C0B8, &qword_1000046A8);
    v17 = 1;
    sub_100003B64(&qword_10000C0C0);
    sub_1000041C8();
    v16 = 2;
    sub_1000041A8();
    v2 = v10;
    v15 = 3;
    sub_100004198();
    v14 = 4;
    v12[1] = sub_100004198();
    v13 = 5;
    sub_100004198();
    (*(v5 + 8))(v8, v4);
  }

  sub_100003CCC(a1);
  return v2;
}

void *sub_100003A84(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100003AC8()
{
  result = qword_10000C320[0];
  if (!qword_10000C320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C320);
  }

  return result;
}

uint64_t sub_100003B1C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003B64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003B1C(&qword_10000C0B8, &qword_1000046A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003BD0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003C08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002C0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003C68()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    sub_100003B1C(&qword_10000C008, &unk_100004510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

uint64_t sub_100003CCC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003D78(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ASRFullPayloadCorrectionExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASRFullPayloadCorrectionExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003F54()
{
  result = qword_10000C430[0];
  if (!qword_10000C430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C430);
  }

  return result;
}

unint64_t sub_100003FAC()
{
  result = qword_10000C540;
  if (!qword_10000C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C540);
  }

  return result;
}

unint64_t sub_100004004()
{
  result = qword_10000C548[0];
  if (!qword_10000C548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C548);
  }

  return result;
}