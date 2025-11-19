uint64_t sub_1000010D8()
{
  v0 = sub_1000032FC();
  sub_1000031D4(v0, qword_1000083F0);
  sub_100002F94(v0, qword_1000083F0);
  return sub_1000032EC();
}

uint64_t SiriUserSegmentationExtensionError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C6C65636E6163;
  }

  if (a1 == 1)
  {
    return 0x6F7272456B736174;
  }

  return 0x7463657078656E75;
}

uint64_t sub_1000011C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F7272456B736174;
  v4 = 0xE900000000000072;
  if (v2 == 1)
  {
    v5 = 0xE900000000000072;
  }

  else
  {
    v3 = 0x7463657078656E75;
    v5 = 0xEF726F7272456465;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0x6F7272456B736174;
  if (*a2 != 1)
  {
    v8 = 0x7463657078656E75;
    v4 = 0xEF726F7272456465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000033AC();
  }

  return v11 & 1;
}

Swift::Int sub_1000012D8()
{
  v1 = *v0;
  sub_1000033FC();
  sub_10000330C();

  return sub_10000340C();
}

uint64_t sub_10000138C()
{
  *v0;
  *v0;
  sub_10000330C();
}

Swift::Int sub_10000142C()
{
  v1 = *v0;
  sub_1000033FC();
  sub_10000330C();

  return sub_10000340C();
}

uint64_t sub_1000014DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20SiriUserSegmentation0abC14ExtensionErrorO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000150C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = *v1;
  v4 = 0xE900000000000072;
  v5 = 0x6F7272456B736174;
  if (v3 != 1)
  {
    v5 = 0x7463657078656E75;
    v4 = 0xEF726F7272456465;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_10000158C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003238;

  return sub_100002428();
}

uint64_t sub_10000162C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000016D4;

  return sub_100002604(a1);
}

uint64_t sub_1000016D4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000017D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000018B4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000018B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000019A8(uint64_t a1)
{
  v2 = sub_1000023D4();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002048();
  sub_10000327C();
  return 0;
}

unint64_t sub_100001A54(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001B20(v11, 0, 0, 1, a1, a2);
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
    sub_100003174(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003128(v11);
  return v7;
}

unint64_t sub_100001B20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001C2C(a5, a6);
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
    result = sub_10000337C();
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

char *sub_100001C2C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001C78(a1, a2);
  sub_100001DA8(&off_100004418);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001C78(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001E94(v5, 0);
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

  result = sub_10000337C();
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
        v10 = sub_10000331C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001E94(v10, 0);
        result = sub_10000336C();
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

uint64_t sub_100001DA8(uint64_t result)
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

  result = sub_100001F08(result, v12, 1, v3);
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

void *sub_100001E94(uint64_t a1, uint64_t a2)
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

  sub_100002FCC(&unk_100008050, &qword_1000038E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100001F08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002FCC(&unk_100008050, &qword_1000038E0);
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

uint64_t _s20SiriUserSegmentation0abC14ExtensionErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000043B0;
  v6._object = a2;
  v4 = sub_10000338C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100002048()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_1000020A0()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_1000020F8()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

unint64_t sub_100002150()
{
  result = qword_100008018;
  if (!qword_100008018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008018);
  }

  return result;
}

unint64_t sub_1000021A8()
{
  result = qword_100008020;
  if (!qword_100008020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008020);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriUserSegmentationExtensionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriUserSegmentationExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000023D4()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

uint64_t sub_100002444()
{
  sub_10000325C();
  if (sub_10000324C())
  {
    if (qword_100008060 != -1)
    {
      swift_once();
    }

    v1 = sub_1000032FC();
    sub_100002F94(v1, qword_1000083F0);
    v2 = sub_1000032DC();
    v3 = sub_10000334C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = "Segmentation task is enabled";
LABEL_10:
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, v4, v6, 2u);
    }
  }

  else
  {
    if (qword_100008060 != -1)
    {
      swift_once();
    }

    v5 = sub_1000032FC();
    sub_100002F94(v5, qword_1000083F0);
    v2 = sub_1000032DC();
    v3 = sub_10000334C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = "Segmentation task is not enabled";
      goto LABEL_10;
    }
  }

  objc_allocWithZone(sub_1000032AC());
  v7 = sub_10000329C();
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100002604(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_10000332C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_10000326C();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100002738, 0, 0);
}

uint64_t sub_100002738()
{
  if (qword_100008060 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1000032FC();
  v0[12] = sub_100002F94(v2, qword_1000083F0);
  v3 = v1;
  v4 = sub_1000032DC();
  v5 = sub_10000333C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100003068(v8);
  }

  sub_10000325C();
  v10 = async function pointer to static SegmentationTask.performAsync()[1];
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1000028F4;
  v12 = v0[11];

  return static SegmentationTask.performAsync()(v12);
}

uint64_t sub_1000028F4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100002CC4;
  }

  else
  {
    v3 = sub_100002A08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002A08()
{
  v33 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 16);
  v4(v1, v0[11], v2);
  v5 = (*(v3 + 88))(v1, v2);
  v6 = enum case for SegmentationTaskResult.failure(_:);
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (v5 == v6)
  {
    v8 = v0[12];
    v4(v0[9], v0[11], v0[7]);
    v9 = sub_1000032DC();
    v10 = sub_10000335C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[9];
    v13 = v0[7];
    if (v11)
    {
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v14 = 136315138;
      sub_1000030D0();
      v15 = sub_10000339C();
      v17 = v16;
      v7(v12, v13);
      v18 = sub_100001A54(v15, v17, v32);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Segmentation task error: %s", v14, 0xCu);
      sub_100003128(v31);
    }

    else
    {

      v7(v12, v13);
    }

    v19 = v0[11];
    v20 = v0[7];
    v32[3] = &type metadata for SiriUserSegmentationExtensionError;
    v32[4] = sub_100003014();
    LOBYTE(v32[0]) = 1;
    v23 = objc_allocWithZone(sub_1000032AC());
    v22 = sub_10000328C();
  }

  else
  {
    v19 = v0[11];
    v20 = v0[7];
    v21 = objc_allocWithZone(sub_1000032AC());
    v22 = sub_10000329C();
  }

  v24 = v22;
  v7(v19, v20);
  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29(v24);
}

uint64_t sub_100002CC4()
{
  v0[2] = v0[14];
  v1 = v0[6];
  v2 = v0[4];
  swift_errorRetain();
  sub_100002FCC(&qword_100008030, &qword_1000038D0);
  v3 = swift_dynamicCast();
  v4 = v0[14];
  v5 = v0[12];
  if (v3)
  {
    v6 = v0[14];

    v7 = sub_1000032DC();
    v8 = sub_10000333C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Segmentation cancelled", v9, 2u);
    }

    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];

    sub_100003014();
    v13 = objc_allocWithZone(sub_1000032AC());
    v14 = sub_10000328C();
    (*(v11 + 8))(v10, v12);
    v15 = v0[2];
  }

  else
  {
    v16 = v0[2];

    swift_errorRetain();
    v17 = sub_1000032DC();
    v18 = sub_10000335C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[14];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unexpected error: %@", v20, 0xCu);
      sub_100003068(v21);
    }

    v23 = v0[14];

    sub_100003014();
    v24 = objc_allocWithZone(sub_1000032AC());
    v14 = sub_10000328C();
  }

  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29(v14);
}

uint64_t sub_100002F94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002FCC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003014()
{
  result = qword_100008038;
  if (!qword_100008038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008038);
  }

  return result;
}

uint64_t sub_100003068(uint64_t a1)
{
  v2 = sub_100002FCC(&qword_100008040, &qword_1000038D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000030D0()
{
  result = qword_100008048;
  if (!qword_100008048)
  {
    sub_10000326C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008048);
  }

  return result;
}

uint64_t sub_100003128(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100003174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000031D4(uint64_t a1, uint64_t *a2)
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