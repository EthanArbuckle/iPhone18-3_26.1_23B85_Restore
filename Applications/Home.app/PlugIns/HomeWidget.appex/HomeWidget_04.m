uint64_t sub_10005A298(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A2D0@<X0>(void *a1@<X8>)
{
  result = sub_10009DC04();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10005A31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CEC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005A3EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009CEC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005A4A4()
{
  result = sub_10009CEC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10005A580()
{
  result = qword_1000C1C70;
  if (!qword_1000C1C70)
  {
    sub_10000375C(&qword_1000C1998, &qword_1000A1A08);
    sub_10005A638();
    sub_10001CDC8(&qword_1000C1CB0, &qword_1000C1CB8, &qword_1000A1CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C70);
  }

  return result;
}

unint64_t sub_10005A638()
{
  result = qword_1000C1C78;
  if (!qword_1000C1C78)
  {
    sub_10000375C(&qword_1000C1958, &qword_1000A19B8);
    sub_10005A6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C78);
  }

  return result;
}

unint64_t sub_10005A6C4()
{
  result = qword_1000C1C80;
  if (!qword_1000C1C80)
  {
    sub_10000375C(&qword_1000C1990, &qword_1000A1A00);
    sub_10005A750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C80);
  }

  return result;
}

unint64_t sub_10005A750()
{
  result = qword_1000C1C88;
  if (!qword_1000C1C88)
  {
    sub_10000375C(&qword_1000C1988, &qword_1000A19F8);
    sub_10001CDC8(&qword_1000C1C90, &qword_1000C1C98, &qword_1000A1CA0);
    sub_10001CDC8(&qword_1000C1CA0, &qword_1000C1CA8, &qword_1000A1CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C88);
  }

  return result;
}

unint64_t sub_10005A838()
{
  result = qword_1000C1CC0;
  if (!qword_1000C1CC0)
  {
    sub_10000375C(&qword_1000C1AB0, &qword_1000A1B18);
    sub_10005A91C(&qword_1000C1CC8, &qword_1000C1A58, &qword_1000A1AB8, sub_10005A9A0);
    sub_10001CDC8(&qword_1000C1CB0, &qword_1000C1CB8, &qword_1000A1CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CC0);
  }

  return result;
}

uint64_t sub_10005A91C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005A9A0()
{
  result = qword_1000C1CD0;
  if (!qword_1000C1CD0)
  {
    sub_10000375C(&qword_1000C1AA8, &qword_1000A1B10);
    sub_10005AA58();
    sub_10001CDC8(&qword_1000C1CA0, &qword_1000C1CA8, &qword_1000A1CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CD0);
  }

  return result;
}

unint64_t sub_10005AA58()
{
  result = qword_1000C1CD8;
  if (!qword_1000C1CD8)
  {
    sub_10000375C(&qword_1000C1AA0, &qword_1000A1B08);
    sub_10001CDC8(&qword_1000C1CE0, &qword_1000C1CE8, &qword_1000A1CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CD8);
  }

  return result;
}

unint64_t sub_10005AB14()
{
  result = qword_1000C1CF0;
  if (!qword_1000C1CF0)
  {
    sub_10000375C(&qword_1000C1B58, &qword_1000A1BA0);
    sub_10005A91C(&qword_1000C1CF8, &qword_1000C1B18, &qword_1000A1B70, sub_10005ABF8);
    sub_10001CDC8(&qword_1000C1CB0, &qword_1000C1CB8, &qword_1000A1CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CF0);
  }

  return result;
}

unint64_t sub_10005ABF8()
{
  result = qword_1000C1D00;
  if (!qword_1000C1D00)
  {
    sub_10000375C(&qword_1000C1B50, &qword_1000A1B98);
    sub_10005ACB0();
    sub_10001CDC8(&qword_1000C1CA0, &qword_1000C1CA8, &qword_1000A1CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D00);
  }

  return result;
}

unint64_t sub_10005ACB0()
{
  result = qword_1000C1D08;
  if (!qword_1000C1D08)
  {
    sub_10000375C(&qword_1000C1B48, &qword_1000A1B90);
    sub_10001CDC8(&qword_1000C1D10, &qword_1000C1D18, &qword_1000A1CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D08);
  }

  return result;
}

uint64_t sub_10005AD68()
{
  sub_10000375C(&qword_1000C0B28, &qword_1000A1BF0);
  sub_10000375C(&qword_1000C0AE8, "\\x");
  sub_10000375C(&qword_1000C0AF0, &unk_1000A1BE0);
  sub_10000375C(&qword_1000C0AF8, &qword_10009F928);
  sub_10000375C(&qword_1000C0B00, &unk_1000A1BD0);
  sub_10000375C(&qword_1000C0B08, &qword_10009F930);
  sub_10000375C(&qword_1000C0B10, &unk_1000A1BC0);
  sub_10001CDC8(&qword_1000C0B18, &qword_1000C0B10, &unk_1000A1BC0);
  sub_1000037A4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10005AFE4()
{
  result = qword_1000C1D38;
  if (!qword_1000C1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D38);
  }

  return result;
}

unint64_t sub_10005B038()
{
  result = qword_1000C1D40;
  if (!qword_1000C1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D40);
  }

  return result;
}

uint64_t sub_10005B0AC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for AccessoryAndSceneEntity() + 20);
  return sub_10009CEF4() & 1;
}

uint64_t sub_10005B0FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10005B180(unsigned __int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = v2;
  sub_10009D4D4();
  return sub_10009D1F4();
}

uint64_t sub_10005B1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005B2CC()
{
  v1 = sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10005B39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100003714(&qword_1000C1D78, &qword_1000A1E38) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_10005B4C0()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C8278);
  sub_100015B68(v0, qword_1000C8278);
  return sub_10009D914();
}

uint64_t sub_10005B548()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C8290);
  sub_100015B68(v0, qword_1000C8290);
  return sub_10009D914();
}

uint64_t sub_10005B5D0()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C82A8);
  sub_100015B68(v0, qword_1000C82A8);
  return sub_10009D914();
}

uint64_t sub_10005B654@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005BE7C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v14 = *(v9 + 16);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
  }

  return result;
}

Class sub_10005B720(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10005C458();
    v5.super.isa = sub_10009E4B4().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_10005B7AC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      sub_10001B558(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10005B8F4()
{
  v1 = *v0;
  v2 = 0x7361487865646E69;
  v3 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v3 = 0x7470697263736564;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005B9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005FE04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005B9E4(uint64_t a1)
{
  v2 = sub_10005FDB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005BA20(uint64_t a1)
{
  v2 = sub_10005FDB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005BA5C(void *a1)
{
  v3 = v1;
  v5 = sub_100003714(&qword_1000C1E50, &qword_1000A1F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_100024330(a1, a1[3]);
  sub_10005FDB0();
  sub_10009EE24();
  v11 = *v3;
  v21 = 0;
  sub_10009ECE4();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v20 = 1;
    sub_10009ECB4();
    v13 = v3[2];
    v19 = 2;
    sub_10009ECC4();
    v18 = v3[3];
    v17[15] = 3;
    sub_100003714(&qword_1000C1E18, "ƃ");
    sub_10006027C(&qword_1000C1E60);
    sub_10009ECD4();
    v14 = v3[4];
    v15 = v3[5];
    v17[14] = 4;
    sub_10009ECA4();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_10005BCBC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005FFCC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10005BD18()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_10005BD48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_10001B558(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_10005BE90()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10009E5B4();
  v2 = [v0 dataForKey:v1];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_10009CE74();
  v5 = v4;

  v6 = sub_10009CC84();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_10009CC74();
  sub_100003714(&qword_1000C1E28, &qword_1000A1EA8);
  sub_10005FC40(&qword_1000C1E40, sub_10005FCB8);
  sub_10009CC64();

  sub_100033B34(v3, v5);
  return v10;
}

void sub_10005C010()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10009CCB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_10009CCA4();
  sub_100003714(&qword_1000C1E28, &qword_1000A1EA8);
  sub_10005FC40(&qword_1000C1E30, sub_10005FB98);
  v4 = sub_10009CC94();
  v6 = v5;

  v9[0] = v4;
  v9[1] = v6;
  v7 = sub_10009ED24();
  sub_10005FBEC(v9);
  v8 = sub_10009E5B4();
  [v0 setObject:v7 forKey:v8];

  swift_unknownObjectRelease();
}

void sub_10005C194(uint64_t a1)
{
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8278);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4F70, v15);
    *(v5 + 12) = 2080;
    v6 = sub_10008A88C(*(a1 + 16));
    v8 = sub_10002AD68(v6, v7, v15);

    *(v5 + 14) = v8;
    *(v5 + 22) = 2080;
    sub_10008A954();
    sub_10005C458();
    v9 = sub_10009E4D4();
    v11 = v10;

    v12 = sub_10002AD68(v9, v11, v15);

    *(v5 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Sending analytics event for [%s]: %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  sub_10008A88C(*(a1 + 16));
  v13 = sub_10009E5B4();

  v15[4] = sub_10005C43C;
  v15[5] = a1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10005B720;
  v15[3] = &unk_1000BBCC0;
  v14 = _Block_copy(v15);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_10005C440(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005C458()
{
  result = qword_1000C0B60;
  if (!qword_1000C0B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C0B60);
  }

  return result;
}

void sub_10005C4A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v331 = a4;
  v340 = a3;
  v6 = sub_10009E3D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v317 = &v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v319 = &v296 - v12;
  v13 = __chkstk_darwin(v11);
  v318 = &v296 - v14;
  v15 = __chkstk_darwin(v13);
  v316 = &v296 - v16;
  v17 = __chkstk_darwin(v15);
  v322 = &v296 - v18;
  v19 = __chkstk_darwin(v17);
  v320 = &v296 - v20;
  v21 = __chkstk_darwin(v19);
  v321 = &v296 - v22;
  v23 = __chkstk_darwin(v21);
  v328 = &v296 - v24;
  __chkstk_darwin(v23);
  v326 = &v296 - v25;
  *&v342 = type metadata accessor for AccessoryAndSceneEntity();
  v338 = *(v342 - 8);
  v26 = *(v338 + 64);
  v27 = __chkstk_darwin(v342);
  v29 = &v296 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  j = &v296 - v30;
  if (qword_1000C0A90 != -1)
  {
LABEL_281:
    swift_once();
  }

  v32 = sub_10009D924();
  v333 = sub_100015B68(v32, qword_1000C8278);
  v33 = sub_10009D904();
  v34 = sub_10009E844();
  v35 = os_log_type_enabled(v33, v34);
  v329 = v7;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v347 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v347);
    _os_log_impl(&_mh_execute_header, v33, v34, "%s Loading Timeline for interactive widget...", v36, 0xCu);
    sub_100015F44(v37);
  }

  v347 = a1;
  v348 = a2;
  v349 = v340;
  sub_1000309FC();
  v38 = sub_10009C854();
  if (!v38)
  {
    v143 = sub_10009D904();
    v144 = sub_10009E824();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v347 = v146;
      *v145 = 136315138;
      *(v145 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v347);
      _os_log_impl(&_mh_execute_header, v143, v144, "%s Failed to convert RecommendedItemIntent to INIntent", v145, 0xCu);
      sub_100015F44(v146);
    }

    return;
  }

  v39 = v38;
  v332 = a1;
  v40 = [v38 _indexingHash];
  v41 = v39;
  v42 = sub_10009D904();
  v43 = sub_10009E844();

  v44 = os_log_type_enabled(v42, v43);
  v330 = v6;
  v324 = v41;
  v327 = v40;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v41;
    v48 = swift_slowAlloc();
    v347 = v48;
    *v45 = 136315650;
    *(v45 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v347);
    *(v45 + 12) = 2112;
    *(v45 + 14) = v47;
    *v46 = v39;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v40;
    v49 = v47;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s App intent: %@ with indexingHash:%lld", v45, 0x20u);
    sub_1000160CC(v46, &qword_1000C0E28, &qword_1000A1DC0);

    sub_100015F44(v48);
  }

  v50 = sub_10001D23C(_swiftEmptyArrayStorage);
  v51 = v340;
  sub_10009C954();
  v52 = v347;
  if (!v347)
  {
    goto LABEL_76;
  }

  v337 = *(v347 + 16);
  if (!v337)
  {
    goto LABEL_75;
  }

  v53 = 0;
  v334 = (*(v338 + 80) + 32) & ~*(v338 + 80);
  v336 = v347 + v334;
  v335 = v347;
  do
  {
    if (v53 >= *(v52 + 16))
    {
      __break(1u);
LABEL_278:
      v306 = v327;
      v312 = v29;
      goto LABEL_279;
    }

    v54 = *(v338 + 72);
    sub_10005FA2C(v336 + v54 * v53, j);
    sub_10009C954();
    if (!v347)
    {
      goto LABEL_61;
    }

    v339 = v50;
    v341 = v347;
    v55 = *(v347 + 16);
    if (!v55)
    {
LABEL_60:

      v50 = v339;
      v52 = v335;
LABEL_61:
      v104 = sub_10009CEE4();
      v106 = sub_10001B558(v104, v105);
      v51 = v107;

      if (v51)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v347 = v50;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v51 = &v347;
          sub_10008C674();
          v50 = v347;
        }

        v109 = *(v50[6] + 16 * v106 + 8);

        sub_10004C60C(v106, v50);
      }

      sub_10005FA90(j);
      goto LABEL_66;
    }

    v56 = 0;
    v57 = v341 + v334;
    while (1)
    {
      sub_10005FA2C(v57, v29);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_15;
      }

      v58 = *(v342 + 20);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_15;
      }

      v59 = *(v342 + 24);
      v60 = &v29[v59];
      v61 = j + v59;
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_15;
      }

      v62 = type metadata accessor for WidgetTileInfo();
      v63 = v62[6];
      v64 = *&v60[v63];
      v65 = *&v60[v63 + 8];
      v66 = (v61 + v63);
      v67 = v64 == *v66 && v65 == v66[1];
      if (!v67 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_15;
      }

      v68 = v62[7];
      v69 = &v60[v68];
      v70 = *&v60[v68 + 8];
      v71 = (v61 + v68);
      v72 = v71[1];
      if (v70)
      {
        if (!v72)
        {
          goto LABEL_15;
        }

        v73 = *v69 == *v71 && v70 == v72;
        if (!v73 && (sub_10009ED34() & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v72)
      {
        goto LABEL_15;
      }

      v74 = v62[8];
      v75 = *&v60[v74];
      v76 = *&v60[v74 + 8];
      v77 = (v61 + v74);
      v78 = v75 == *v77 && v76 == v77[1];
      if (!v78 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_15;
      }

      v79 = v62[9];
      v80 = *&v60[v79];
      v81 = *&v60[v79 + 8];
      v82 = (v61 + v79);
      if ((v80 != *v82 || v81 != v82[1]) && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_15;
      }

      v83 = v62[12];
      v84 = *&v60[v83];
      v85 = *(v61 + v83);
      if ((sub_10009E134() & 1) == 0 || v60[v62[13]] != *(v61 + v62[13]))
      {
        goto LABEL_15;
      }

      v86 = v62[15];
      v87 = *&v60[v86];
      v88 = v60[v86 + 8];
      v89 = (v61 + v86);
      v90 = *v89;
      v91 = *(v89 + 8);
      if (v88 <= 1)
      {
        if (v88)
        {
          if (v91 != 1)
          {
            goto LABEL_15;
          }
        }

        else if (v91)
        {
          goto LABEL_15;
        }

        goto LABEL_55;
      }

      if (v88 != 2)
      {
        break;
      }

      if (v91 != 2)
      {
        goto LABEL_15;
      }

LABEL_55:
      sub_10005C458();
      if (sub_10009E8E4())
      {
        goto LABEL_56;
      }

LABEL_15:
      sub_10005FA90(v29);
      ++v56;
      v57 += v54;
      if (v55 == v56)
      {
        goto LABEL_60;
      }
    }

    if (v88 == 3)
    {
      if (v91 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }

    if (v91 != 4 || v90)
    {
      goto LABEL_15;
    }

LABEL_56:
    sub_10005FA90(v29);

    v92 = sub_10009CEE4();
    v94 = v93;
    v51 = v339;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v347 = v51;
    v96 = sub_10001B558(v92, v94);
    v98 = *(v51 + 16);
    v99 = (v97 & 1) == 0;
    v100 = __OFADD__(v98, v99);
    v101 = v98 + v99;
    if (v100)
    {
      goto LABEL_289;
    }

    v102 = v97;
    if (*(v51 + 24) < v101)
    {
      sub_10008BA4C(v101, v95);
      v51 = v347;
      v96 = sub_10001B558(v92, v94);
      if ((v102 & 1) != (v103 & 1))
      {
LABEL_292:
        sub_10009ED74();
        __break(1u);
        return;
      }

LABEL_69:
      if (v102)
      {
        goto LABEL_70;
      }

LABEL_72:
      v50 = v347;
      *(v347 + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v111 = (v50[6] + 16 * v96);
      *v111 = v92;
      v111[1] = v94;
      *(v50[7] + 8 * v96) = v56;
      sub_10005FA90(j);
      v112 = v50[2];
      v100 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (!v100)
      {
        v50[2] = v113;
        goto LABEL_74;
      }

LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    if (v95)
    {
      goto LABEL_69;
    }

    v51 = &v347;
    v110 = v96;
    sub_10008C674();
    v96 = v110;
    if ((v102 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_70:
    v51 = v96;

    v50 = v347;
    *(*(v347 + 56) + 8 * v51) = v56;
    sub_10005FA90(j);
LABEL_74:
    v52 = v335;
LABEL_66:
    ++v53;
  }

  while (v53 != v337);
LABEL_75:

LABEL_76:
  v334 = v50;
  i = 0xD000000000000012;
  v323 = objc_opt_self();
  v115 = [v323 standardUserDefaults];
  v116 = sub_10005BE90();

  v346 = v116;
  v117 = sub_10009D904();
  v118 = sub_10009E844();
  v119 = os_log_type_enabled(v117, v118);
  a1 = v327;
  v29 = v50;
  if (v119)
  {
    v120 = swift_slowAlloc();
    v347 = swift_slowAlloc();
    *v120 = 136315394;
    *(v120 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v347);
    *(v120 + 12) = 2080;

    v121 = sub_10009E6B4();
    v123 = v122;

    v124 = sub_10002AD68(v121, v123, &v347);
    v50 = v29;

    *(v120 + 14) = v124;
    _os_log_impl(&_mh_execute_header, v117, v118, "%s (Before) Cached widget metrics infos: %s", v120, 0x16u);
    swift_arrayDestroy();
  }

  v125 = v116 + 2;
  v126 = v116[2];
  v339 = v116;
  if (!v126)
  {
    *&v342 = [v323 standardUserDefaults];
    sub_100003714(&qword_1000C1E20, "ȃ");
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_10009F8D0;
    sub_10009C954();
    v148 = v347;
    v149 = v326;
    sub_10009E424();
    v150 = sub_10009E3C4();
    v341 = *(v329 + 8);
    (v341)(v149, v330);
    v347 = 0;
    v348 = 0xE000000000000000;
    v151 = v334;

    sub_10009EAC4(90);
    v354._countAndFlagsBits = 0x7361487865646E69;
    v354._object = 0xEA00000000003A68;
    sub_10009E634(v354);
    v345 = a1;
    v355._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v355);

    v356._countAndFlagsBits = 0xD00000000000001ALL;
    v356._object = 0x80000001000A4FD0;
    sub_10009E634(v356);
    if (v148)
    {
      v152._countAndFlagsBits = 1702195828;
    }

    else
    {
      v152._countAndFlagsBits = 0x65736C6166;
    }

    if (v148)
    {
      v153 = 0xE400000000000000;
    }

    else
    {
      v153 = 0xE500000000000000;
    }

    v152._object = v153;
    sub_10009E634(v152);

    v357._object = 0x80000001000A4FF0;
    v357._countAndFlagsBits = 0xD000000000000012;
    sub_10009E634(v357);
    v345 = v150;
    v358._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v358);

    v359._countAndFlagsBits = 0xD00000000000001CLL;
    v359._object = 0x80000001000A5010;
    sub_10009E634(v359);
    v360._countAndFlagsBits = sub_10009E4D4();
    sub_10009E634(v360);

    v154 = v347;
    v155 = v348;
    *(v147 + 32) = a1;
    *(v147 + 40) = v148;
    *(v147 + 48) = v150;
    *(v147 + 56) = v151;
    *(v147 + 64) = v154;
    *(v147 + 72) = v155;
    sub_10005C010();

    v156 = v328;
    sub_10009E424();
    v157 = sub_10009E3C4();
    (v341)(v156, v330);
    LOBYTE(v345) = 0;
    type metadata accessor for WidgetAnalyticsEvent();
    v158 = swift_allocObject();
    *(v158 + 16) = 0;
    *(v158 + 24) = 2;
    *(v158 + 32) = 0;
    *(v158 + 40) = 0;
    *(v158 + 48) = 33686018;
    *(v158 + 56) = v157;
    *(v158 + 64) = 0;
    sub_10005FAEC(0, 0, 1);
    sub_10005C194(v158);

    goto LABEL_272;
  }

  v51 = (v116 + 4);
  v127 = -1;
  v128 = v116 + 2;
  v325 = v116 + 2;
  v326 = (v116 + 4);
  while (v126 != ++v127)
  {
    v129 = v128 + 6;
    v130 = v128[2];
    v128 += 6;
    if (v130 == a1)
    {
      v341 = *(v129 - 24);
      v132 = *(v129 - 2);
      v131 = *(v129 - 1);
      v133 = v129[1];
      v338 = *v129;

      *&v342 = v133;

      v134 = v328;
      sub_10009E424();
      v135 = sub_10009E3C4();
      v136 = *(v329 + 8);
      v137 = v330;
      v136(v134, v330);
      v340 = v132;
      if (v132 == v135)
      {

        v138 = 0;
        v139 = 0;
        v118 = 0;
        v140 = 0;
        v337 = 0;
        v141 = v323;
        v142 = &NSObject__properties;
        goto LABEL_271;
      }

      v339 = v131;
      sub_10009E424();
      v225 = sub_10009E3C4();
      v136(v134, v137);
      LOBYTE(v352) = 0;
      type metadata accessor for WidgetAnalyticsEvent();
      v226 = swift_allocObject();
      *(v226 + 16) = 3;
      *(v226 + 24) = 2;
      *(v226 + 32) = 0;
      *(v226 + 40) = 0;
      *(v226 + 48) = 33686018;
      *(v226 + 56) = v225;
      *(v226 + 64) = 0;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v226);

      sub_10009C954();
      v227 = v347;
      v228 = v321;
      sub_10009E424();
      v229 = sub_10009E3C4();
      v136(v228, v137);
      v347 = 0;
      v348 = 0xE000000000000000;
      i = v334;

      sub_10009EAC4(90);
      v375._countAndFlagsBits = 0x7361487865646E69;
      v375._object = 0xEA00000000003A68;
      sub_10009E634(v375);
      v345 = a1;
      v376._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v376);

      v377._countAndFlagsBits = 0xD00000000000001ALL;
      v377._object = 0x80000001000A4FD0;
      sub_10009E634(v377);
      if (v227)
      {
        v230._countAndFlagsBits = 1702195828;
      }

      else
      {
        v230._countAndFlagsBits = 0x65736C6166;
      }

      if (v227)
      {
        v231 = 0xE400000000000000;
      }

      else
      {
        v231 = 0xE500000000000000;
      }

      v230._object = v231;
      sub_10009E634(v230);

      v378._object = 0x80000001000A4FF0;
      v378._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v378);
      v321 = v229;
      v345 = v229;
      v379._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v379);
      LOBYTE(v126) = v227;

      v380._countAndFlagsBits = 0xD00000000000001CLL;
      v380._object = 0x80000001000A5010;
      sub_10009E634(v380);
      v381._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v381);
      v232 = v325;

      v329 = 0;
      v336 = 0;
      v118 = 0;
      v315 = 0;
      v337 = 0;
      v314 = 0;
      v29 = v348;
      v313 = v347;
      v233 = a1;
      v51 = v326;
      v234 = *v232;
      if (!*v232)
      {
LABEL_266:
        sub_10005FB00(v233, v341, v340, v339);
        swift_beginAccess();
        v162 = v346;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_267;
        }

        goto LABEL_284;
      }

LABEL_261:
      v281 = 0;
      while (1)
      {
        v282 = *v51;
        v51 += 48;
        if (v282 == v233)
        {
          break;
        }

        if (v234 == ++v281)
        {
          goto LABEL_266;
        }
      }

      v283 = v118;
      v284 = v126;
      v126 = v233;
      swift_beginAccess();
      sub_10005B654(v281, &v347);
      v353 = v350;
      v352 = v351;
      swift_endAccess();
      sub_1000160CC(&v353, &qword_1000C1E18, "ƃ");
      sub_10005FB44(&v352);
      v233 = v126;
      LOBYTE(v126) = v284;
      v118 = v283;
      goto LABEL_266;
    }
  }

  v311 = (v329 + 8);
  v307 = "uration(for:in:)";
  v308 = " useHomeKitRecommendation:";
  v309 = " systemFamilySize:";

  v159 = 0;
  v305 = 0;
  v304 = 0;
  v312 = 0;
  v310 = 0;
  v303 = 0;
  v306 = 0;
  v296 = 0;
  v313 = 0;
  v334 = 0;
  v321 = 0;
  v297 = 0;
  v298 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = v50 + 8;
  v342 = xmmword_1000A1E60;
LABEL_95:
  v314 = v160;
  v302 = v161;
  v315 = v162;
  v301 = v163;
  v300 = v164;
  v299 = v165;
  a1 = v332;
LABEL_97:
  if (v159 >= *v125)
  {
LABEL_283:
    __break(1u);
LABEL_284:
    v162 = sub_1000655A0(0, *(v162 + 2) + 1, 1, v162);
LABEL_267:
    v286 = *(v162 + 2);
    v285 = *(v162 + 3);
    if (v286 >= v285 >> 1)
    {
      v162 = sub_1000655A0((v285 > 1), v286 + 1, 1, v162);
    }

    *(v162 + 2) = v286 + 1;
    v287 = &v162[48 * v286];
    *(v287 + 4) = a1;
    v287[40] = v126 & 1;
    *(v287 + 6) = v321;
    *(v287 + 7) = i;
    *(v287 + 8) = v313;
    *(v287 + 9) = v29;
    v346 = v162;
    swift_endAccess();
    v141 = v323;
    v142 = &NSObject__properties;
    v138 = v329;
    v139 = v336;
    goto LABEL_270;
  }

  v167 = v51 + 48 * v159;
  v329 = *v167;
  v336 = *(v167 + 8);
  v162 = *(v167 + 24);
  v335 = *(v167 + 16);
  v168 = *(v167 + 40);
  v337 = *(v167 + 32);
  swift_bridgeObjectRetain_n();

  v169 = sub_10005B7AC(v162, v29);

  v341 = v168;
  if (v169)
  {

    sub_10005FB00(v299, v300, v301, v315);
    sub_10005FB00(v298, v297, v321, v334);

    if ((sub_10005BD48(v162, v29) & 1) == 0)
    {
      type metadata accessor for WidgetAnalyticsEvent();
      v252 = swift_allocObject();
      *(v252 + 16) = 4;
      *(v252 + 32) = 0;
      *(v252 + 40) = 0;
      *(v252 + 24) = 2;
      *(v252 + 48) = v342;
      *(v252 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v252);
    }

    sub_10009C954();

    v253 = v336 ^ v347;
    a1 = v327;
    if ((v336 ^ v347))
    {
      sub_10009C954();
      v254 = v347;
      LOBYTE(v347) = 1;
      if (v254)
      {
        v255 = 16908802;
      }

      else
      {
        v255 = 131586;
      }

      type metadata accessor for WidgetAnalyticsEvent();
      v256 = swift_allocObject();
      *(v256 + 16) = 2;
      *(v256 + 24) = 2;
      *(v256 + 32) = 0;
      *(v256 + 40) = 0;
      *(v256 + 48) = v255;
      *(v256 + 56) = 0;
      *(v256 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v256);
    }

    sub_10009C954();
    v126 = v347;
    v257 = v320;
    sub_10009E424();
    v321 = sub_10009E3C4();
    (*v311)(v257, v330);
    if (v253)
    {
      v258 = sub_10001D23C(_swiftEmptyArrayStorage);
    }

    else
    {

      v258 = v29;
    }

    v347 = 0;
    v348 = 0xE000000000000000;
    sub_10009EAC4(90);
    v389._countAndFlagsBits = 0x7361487865646E69;
    v389._object = 0xEA00000000003A68;
    sub_10009E634(v389);
    v345 = a1;
    v390._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v390);

    v391._countAndFlagsBits = 0xD00000000000001ALL;
    v391._object = (v307 | 0x8000000000000000);
    sub_10009E634(v391);
    if (v126)
    {
      v259._countAndFlagsBits = 1702195828;
    }

    else
    {
      v259._countAndFlagsBits = 0x65736C6166;
    }

    if (v126)
    {
      v260 = 0xE400000000000000;
    }

    else
    {
      v260 = 0xE500000000000000;
    }

    v259._object = v260;
    sub_10009E634(v259);

    v392._object = (v308 | 0x8000000000000000);
    v392._countAndFlagsBits = 0xD000000000000012;
    sub_10009E634(v392);
    v345 = v321;
    v393._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v393);

    v394._countAndFlagsBits = 0xD00000000000001CLL;
    v394._object = (v309 | 0x8000000000000000);
    sub_10009E634(v394);
    v395._countAndFlagsBits = sub_10009E4D4();
    sub_10009E634(v395);

    v249 = v347;
    v250 = v348;
    v315 = v162;
    v251 = v341;
    v162 = v339;
    v51 = v326;
    i = v258;
LABEL_251:
    v118 = v335;
    goto LABEL_252;
  }

  v338 = v159 + 1;
  v118 = (v162 + 64);
  v170 = 1 << v162[32];
  if (v170 < 64)
  {
    v171 = ~(-1 << v170);
  }

  else
  {
    v171 = -1;
  }

  i = v171 & *(v162 + 8);
  v172 = (v170 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v173 = 0;
  while (2)
  {
    if (i)
    {
      v174 = i;
      goto LABEL_109;
    }

LABEL_105:
    v175 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:

      sub_10005FB00(v298, v297, v321, v334);
      sub_10005FB00(v299, v300, v301, v315);
      if (v336)
      {
        sub_10009C954();
        v261 = v347;
        LOBYTE(v347) = 1;
        if (v261)
        {
          v262 = 16908802;
        }

        else
        {
          v262 = 131586;
        }

        type metadata accessor for WidgetAnalyticsEvent();
        v263 = swift_allocObject();
        *(v263 + 16) = 2;
        *(v263 + 24) = 2;
        *(v263 + 32) = 0;
        *(v263 + 40) = 0;
        *(v263 + 48) = v262;
        *(v263 + 56) = 0;
        *(v263 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v263);
      }

      sub_10009C954();
      a1 = v327;
      if (v347)
      {
        v264 = *(v347 + 16);
        if (v264)
        {
          type metadata accessor for WidgetAnalyticsEvent();
          do
          {
            v265 = swift_allocObject();
            *(v265 + 16) = 5;
            *(v265 + 32) = 0;
            *(v265 + 40) = 0;
            *(v265 + 24) = 2;
            *(v265 + 48) = v342;
            *(v265 + 64) = 1;
            sub_10005FAEC(0, 0, 1);
            sub_10005C194(v265);

            --v264;
          }

          while (v264);
        }

        i = 0xD000000000000012;
      }

      sub_10009C954();
      v126 = v347;
      v266 = v317;
      sub_10009E424();
      v267 = sub_10009E3C4();
      (*v311)(v266, v330);
      v347 = 0;
      v348 = 0xE000000000000000;
      v268 = v29;

      sub_10009EAC4(90);
      v396._countAndFlagsBits = 0x7361487865646E69;
      v396._object = 0xEA00000000003A68;
      sub_10009E634(v396);
      v345 = a1;
      v397._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v397);

      v398._countAndFlagsBits = i + 8;
      v398._object = (v307 | 0x8000000000000000);
      sub_10009E634(v398);
      if (v126)
      {
        v269._countAndFlagsBits = 1702195828;
      }

      else
      {
        v269._countAndFlagsBits = 0x65736C6166;
      }

      if (v126)
      {
        v270 = 0xE400000000000000;
      }

      else
      {
        v270 = 0xE500000000000000;
      }

      v269._object = v270;
      sub_10009E634(v269);

      v399._object = (v308 | 0x8000000000000000);
      v399._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v399);
      v321 = v267;
      v345 = v267;
      v400._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v400);

      v401._countAndFlagsBits = i + 10;
      v401._object = (v309 | 0x8000000000000000);
      sub_10009E634(v401);
      v402._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v402);

      v249 = v347;
      v250 = v348;
      v315 = v162;
      v251 = v341;
      i = v268;
      v162 = v339;
      v51 = v326;
      goto LABEL_251;
    }

    if (v175 < v172)
    {
      v174 = *(v118 + 8 * v175);
      ++v173;
      if (v174)
      {
        v173 = v175;
LABEL_109:
        i = (v174 - 1) & v174;
        if (*(v29 + 2))
        {
          v176 = (*(v162 + 6) + ((v173 << 10) | (16 * __clz(__rbit64(v174)))));
          v178 = *v176;
          v177 = v176[1];

          sub_10001B558(v178, v177);
          LOBYTE(v178) = v179;

          if (v178)
          {
            v51 = v29;
            goto LABEL_184;
          }
        }

        continue;
      }

      goto LABEL_105;
    }

    break;
  }

  v180 = 1 << v29[32];
  if (v180 < 64)
  {
    v181 = ~(-1 << v180);
  }

  else
  {
    v181 = -1;
  }

  i = v181 & *(v29 + 8);
  v182 = (v180 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v183 = 0;
  while (1)
  {
    if (!i)
    {
      while (1)
      {
        v185 = v183 + 1;
        if (__OFADD__(v183, 1))
        {
          goto LABEL_233;
        }

        if (v185 >= v182)
        {
          break;
        }

        v184 = v166[v185];
        ++v183;
        if (v184)
        {
          v183 = v185;
          goto LABEL_122;
        }
      }

      v125 = v325;
      if (*v325 != 1)
      {
        a1 = v332;
        sub_10009C954();
        i = 0xD000000000000012;
        v159 = v338;
        if (v347 != 1)
        {
          if (!*(v162 + 2) && *(v29 + 2))
          {
            goto LABEL_234;
          }

          v162 = v339;
          v51 = v326;
          if (v159 == v126)
          {
            goto LABEL_223;
          }

          goto LABEL_97;
        }

        sub_10005FB00(v306, v303, v310, v312);

        v195 = v328;
        sub_10009E424();
        v196 = sub_10009E3C4();
        v341 = *v311;
        v162 = v330;
        (v341)(v195, v330);
        LOBYTE(v352) = 0;
        type metadata accessor for WidgetAnalyticsEvent();
        v197 = swift_allocObject();
        *(v197 + 16) = 0;
        *(v197 + 24) = 2;
        *(v197 + 32) = 0;
        *(v197 + 40) = 0;
        *(v197 + 48) = 33686018;
        *(v197 + 56) = v196;
        *(v197 + 64) = 0;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v197);

        sub_10009C954();
        v193 = v347;
        v194 = &v344;
        goto LABEL_133;
      }

      a1 = v332;
      sub_10009C954();
      i = 0xD000000000000012;
      if (v347)
      {
        sub_10005FB00(v306, v303, v310, v312);

        v190 = v328;
        sub_10009E424();
        v191 = sub_10009E3C4();
        v341 = *v311;
        v162 = v330;
        (v341)(v190, v330);
        LOBYTE(v352) = 0;
        type metadata accessor for WidgetAnalyticsEvent();
        v192 = swift_allocObject();
        *(v192 + 16) = 0;
        *(v192 + 24) = 2;
        *(v192 + 32) = 0;
        *(v192 + 40) = 0;
        *(v192 + 48) = 33686018;
        *(v192 + 56) = v191;
        *(v192 + 64) = 0;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v192);

        sub_10009C954();
        v193 = v347;
        v194 = &v343;
LABEL_133:
        v198 = *(v194 - 32);
        i = 0xD000000000000012;
        sub_10009E424();
        v310 = sub_10009E3C4();
        (v341)(v198, v162);
        v347 = 0;
        v348 = 0xE000000000000000;

        sub_10009EAC4(90);
        v361._countAndFlagsBits = 0x7361487865646E69;
        v361._object = 0xEA00000000003A68;
        sub_10009E634(v361);
        v199 = v327;
        v345 = v327;
        v362._countAndFlagsBits = sub_10009ED04();
        sub_10009E634(v362);

        v363._countAndFlagsBits = 0xD00000000000001ALL;
        v363._object = (v307 | 0x8000000000000000);
        sub_10009E634(v363);
        LODWORD(v341) = v193;
        if (v193)
        {
          v200._countAndFlagsBits = 1702195828;
        }

        else
        {
          v200._countAndFlagsBits = 0x65736C6166;
        }

        if (v193)
        {
          v201 = 0xE400000000000000;
        }

        else
        {
          v201 = 0xE500000000000000;
        }

        v200._object = v201;
        sub_10009E634(v200);

        v364._object = (v308 | 0x8000000000000000);
        v364._countAndFlagsBits = 0xD000000000000012;
        sub_10009E634(v364);
        v345 = v310;
        v118 = &type metadata for Int;
        v365._countAndFlagsBits = sub_10009ED04();
        sub_10009E634(v365);

        v366._countAndFlagsBits = 0xD00000000000001CLL;
        v366._object = (v309 | 0x8000000000000000);
        sub_10009E634(v366);
        v367._countAndFlagsBits = sub_10009E4D4();
        sub_10009E634(v367);

        v304 = v347;
        v305 = v348;
        v303 = v341;
        v312 = v29;
        v306 = v199;
        v159 = v338;
        v51 = v326;
        v125 = v325;
        if (v338 != v126)
        {
          goto LABEL_97;
        }

        goto LABEL_278;
      }

      sub_10005FB00(v299, v300, v301, v315);
      if (!v336)
      {

        sub_10009C954();
        if (v347)
        {
          v202 = *(v347 + 16);
          if (v202)
          {
            v315 = v347;
            type metadata accessor for WidgetAnalyticsEvent();
            do
            {
              v203 = swift_allocObject();
              *(v203 + 16) = 5;
              *(v203 + 32) = 0;
              *(v203 + 40) = 0;
              *(v203 + 24) = 2;
              *(v203 + 48) = v342;
              *(v203 + 64) = 1;
              sub_10005FAEC(0, 0, 1);
              sub_10005C194(v203);

              --v202;
            }

            while (v202);

            i = 0xD000000000000012;
          }

          else
          {
          }

          a1 = v332;
        }

        else
        {
        }

        v204 = 0;
        v205 = 1 << v162[32];
        if (v205 < 64)
        {
          v206 = ~(-1 << v205);
        }

        else
        {
          v206 = -1;
        }

        v207 = v206 & *(v162 + 8);
        v208 = (v205 + 63) >> 6;
        v315 = v208;
        while (v207)
        {
LABEL_154:
          v207 &= v207 - 1;
          type metadata accessor for WidgetAnalyticsEvent();
          v209 = swift_allocObject();
          *(v209 + 16) = 6;
          *(v209 + 32) = 0;
          *(v209 + 40) = 0;
          *(v209 + 24) = 2;
          *(v209 + 48) = v342;
          *(v209 + 64) = 1;
          sub_10005FAEC(0, 0, 1);
          sub_10005C194(v209);

          v208 = v315;
        }

        while (1)
        {
          v210 = v204 + 1;
          if (__OFADD__(v204, 1))
          {
            goto LABEL_288;
          }

          if (v210 >= v208)
          {

            v211 = v341;
            v314 = v341;
            v212 = v337;
            v302 = v337;
            v315 = v162;
            v213 = v335;
            v301 = v335;
            v214 = v336;
            v300 = v336;
            v215 = v329;
            v299 = v329;
            v159 = v338;
            v51 = v326;
            v125 = v325;
            if (v338 != v126)
            {
              goto LABEL_97;
            }

            goto LABEL_286;
          }

          v207 = *(v118 + 8 * v210);
          ++v204;
          if (v207)
          {
            v204 = v210;
            goto LABEL_154;
          }
        }
      }

      sub_10005FB00(v298, v297, v321, v334);
      sub_10009C954();
      LOBYTE(v352) = 1;
      if (v347)
      {
        v216 = 16908802;
      }

      else
      {
        v216 = 131586;
      }

      type metadata accessor for WidgetAnalyticsEvent();
      v217 = swift_allocObject();
      *(v217 + 16) = 2;
      *(v217 + 24) = 2;
      *(v217 + 32) = 0;
      *(v217 + 40) = 0;
      *(v217 + 48) = v216;
      *(v217 + 56) = 0;
      *(v217 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v217);

      v218 = *(v29 + 2);
      if (!v218)
      {
        goto LABEL_291;
      }

      do
      {
        v219 = swift_allocObject();
        *(v219 + 16) = 5;
        *(v219 + 32) = 0;
        *(v219 + 40) = 0;
        *(v219 + 24) = 2;
        *(v219 + 48) = v342;
        *(v219 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v219);

        --v218;
      }

      while (v218);
      sub_10009C954();
      v220 = v347;
      v221 = v316;
      sub_10009E424();
      v222 = sub_10009E3C4();
      (*v311)(v221, v330);
      v347 = 0;
      v348 = 0xE000000000000000;
      sub_10009EAC4(90);
      v368._countAndFlagsBits = 0x7361487865646E69;
      v368._object = 0xEA00000000003A68;
      sub_10009E634(v368);
      v118 = v327;
      v345 = v327;
      v369._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v369);

      i = 0xD000000000000012;
      v370._countAndFlagsBits = 0xD00000000000001ALL;
      v370._object = (v307 | 0x8000000000000000);
      sub_10009E634(v370);
      v297 = v220;
      if (v220)
      {
        v223._countAndFlagsBits = 1702195828;
      }

      else
      {
        v223._countAndFlagsBits = 0x65736C6166;
      }

      if (v220)
      {
        v224 = 0xE400000000000000;
      }

      else
      {
        v224 = 0xE500000000000000;
      }

      v223._object = v224;
      sub_10009E634(v223);

      v371._object = (v308 | 0x8000000000000000);
      v371._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v371);
      v321 = v222;
      v345 = v222;
      v372._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v372);

      v373._countAndFlagsBits = 0xD00000000000001CLL;
      v373._object = (v309 | 0x8000000000000000);
      sub_10009E634(v373);
      v374._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v374);

      v313 = v347;
      v296 = v348;
      v334 = v29;
      v298 = v118;
      v159 = v338;
      v51 = v326;
      v125 = v325;
      v165 = v329;
      v164 = v336;
      v163 = v335;
      v161 = v337;
      v160 = v341;
      if (v338 == v126)
      {
        v298 = v327;
        v334 = v29;
        v299 = v329;
        v300 = v336;
        v301 = v335;
        v315 = v162;
        v302 = v337;
        v314 = v341;
        goto LABEL_279;
      }

      goto LABEL_95;
    }

    v184 = i;
LABEL_122:
    i = (v184 - 1) & v184;
    if (*(v162 + 2))
    {
      v186 = (*(v29 + 6) + ((v183 << 10) | (16 * __clz(__rbit64(v184)))));
      v188 = *v186;
      v187 = v186[1];

      sub_10001B558(v188, v187);
      LOBYTE(v188) = v189;

      if (v188)
      {
        break;
      }
    }
  }

  v51 = v29;
LABEL_184:

  sub_10005FB00(v298, v297, v321, v334);
  sub_10005FB00(v299, v300, v301, v315);

  v215 = *(v162 + 2);
  v214 = *(v51 + 16);
  v118 = v215 - v214;
  v213 = &v350;
  a1 = v327;
  if (v215 >= v214)
  {
    if (v214 >= v215)
    {

      goto LABEL_197;
    }

    if (v118 >= 1)
    {
      type metadata accessor for WidgetAnalyticsEvent();

      LOBYTE(v126) = 6;
      for (i = 1; ; ++i)
      {
        v236 = swift_allocObject();
        *(v236 + 16) = 6;
        *(v236 + 32) = 0;
        *(v236 + 40) = 0;
        *(v236 + 24) = 2;
        *(v236 + 48) = v342;
        *(v236 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v236);

        if (v118 == i)
        {
          break;
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
          goto LABEL_283;
        }
      }

LABEL_197:
      v237 = v328;
      sub_10009E424();
      v238 = sub_10009E3C4();
      v239 = *v311;
      (*v311)(v237, v330);
      if (v335 != v238)
      {
        sub_10009E424();
        v240 = sub_10009E3C4();
        v239(v237, v330);
        LOBYTE(v347) = 0;
        type metadata accessor for WidgetAnalyticsEvent();
        v241 = swift_allocObject();
        *(v241 + 16) = 3;
        *(v241 + 24) = 2;
        *(v241 + 32) = 0;
        *(v241 + 40) = 0;
        *(v241 + 48) = 33686018;
        *(v241 + 56) = v240;
        *(v241 + 64) = 0;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v241);
      }

      sub_10009C954();

      v242 = v347 ^ 1 | v336;
      if ((v242 & 1) == 0)
      {
        sub_10009C954();
        v243 = v347;
        LOBYTE(v347) = 1;
        if (v243)
        {
          v244 = 16908802;
        }

        else
        {
          v244 = 131586;
        }

        type metadata accessor for WidgetAnalyticsEvent();
        v245 = swift_allocObject();
        *(v245 + 16) = 2;
        *(v245 + 24) = 2;
        *(v245 + 32) = 0;
        *(v245 + 40) = 0;
        *(v245 + 48) = v244;
        *(v245 + 56) = 0;
        *(v245 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v245);
      }

      sub_10009C954();
      v126 = v347;
      v246 = v322;
      sub_10009E424();
      v321 = sub_10009E3C4();
      v239(v246, v330);
      v118 = v335;
      if (v242)
      {

        i = v29;
      }

      else
      {
        i = sub_10001D23C(_swiftEmptyArrayStorage);
      }

      v347 = 0;
      v348 = 0xE000000000000000;
      sub_10009EAC4(90);
      v382._countAndFlagsBits = 0x7361487865646E69;
      v382._object = 0xEA00000000003A68;
      sub_10009E634(v382);
      v345 = a1;
      v383._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v383);

      v384._countAndFlagsBits = 0xD00000000000001ALL;
      v384._object = (v307 | 0x8000000000000000);
      sub_10009E634(v384);
      if (v126)
      {
        v247._countAndFlagsBits = 1702195828;
      }

      else
      {
        v247._countAndFlagsBits = 0x65736C6166;
      }

      if (v126)
      {
        v248 = 0xE400000000000000;
      }

      else
      {
        v248 = 0xE500000000000000;
      }

      v247._object = v248;
      sub_10009E634(v247);

      v385._object = (v308 | 0x8000000000000000);
      v385._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v385);
      v345 = v321;
      v386._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v386);

      v387._countAndFlagsBits = 0xD00000000000001CLL;
      v387._object = (v309 | 0x8000000000000000);
      sub_10009E634(v387);
      v388._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v388);

      v249 = v347;
      v250 = v348;
      v315 = v162;
      v251 = v341;
      v162 = v339;
      v51 = v326;
      goto LABEL_252;
    }

    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  a2 = v214 - v215;
  if ((v214 - v215) >= 1)
  {
    type metadata accessor for WidgetAnalyticsEvent();

    v7 = 1;
    v6 = 2;
    for (j = 1; ; ++j)
    {
      v235 = swift_allocObject();
      *(v235 + 16) = 5;
      *(v235 + 32) = 0;
      *(v235 + 40) = 0;
      *(v235 + 24) = 2;
      *(v235 + 48) = v342;
      *(v235 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v235);

      if (a2 == j)
      {
        break;
      }

      if (__OFADD__(j, 1))
      {
        __break(1u);
        goto LABEL_281;
      }
    }

    goto LABEL_197;
  }

  __break(1u);
LABEL_286:
  v299 = v215;
  v300 = v214;
  v301 = v213;
  v315 = v162;
  v302 = v212;
  v314 = v211;
LABEL_279:
  v162 = v339;
LABEL_223:

  v329 = v299;
  v336 = v300;
  v118 = v301;
  v337 = v302;
  a1 = v298;
  i = v334;
  v126 = v297;
  v249 = v313;
  v250 = v296;
  v251 = v314;
LABEL_252:
  if (!v312)
  {
    v278 = v325;
    if (!v315)
    {
      sub_10005FB00(a1, v126, v321, i);
      v140 = 0;
      v141 = v323;
      v142 = &NSObject__properties;
      v138 = v329;
      v139 = v336;
      goto LABEL_271;
    }

    if (i)
    {
      v279 = v251;
      v29 = v250;
      v313 = v249;
      v280 = v315;

      v233 = v329;
      v341 = v336;
      v340 = v118;
      v339 = v280;
      v338 = v337;
      v314 = v279;
      v234 = *v278;
      if (!*v278)
      {
        goto LABEL_266;
      }

      goto LABEL_261;
    }

    v141 = v323;
    v142 = &NSObject__properties;
    v138 = v329;
    v139 = v336;
LABEL_270:
    v140 = v315;
    goto LABEL_271;
  }

  v335 = v118;
  sub_10005FB00(a1, v126, v321, i);
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v162 = sub_1000655A0(0, *(v162 + 2) + 1, 1, v162);
  }

  v271 = v323;
  v142 = &NSObject__properties;
  v272 = v310;
  v138 = v329;
  v139 = v336;
  v274 = *(v162 + 2);
  v273 = *(v162 + 3);
  if (v274 >= v273 >> 1)
  {
    v162 = sub_1000655A0((v273 > 1), v274 + 1, 1, v162);
  }

  *(v162 + 2) = v274 + 1;
  v275 = &v162[48 * v274];
  *(v275 + 4) = v306;
  v275[40] = v303;
  v276 = v312;
  *(v275 + 6) = v272;
  *(v275 + 7) = v276;
  v277 = v305;
  *(v275 + 8) = v304;
  *(v275 + 9) = v277;
  v346 = v162;
  swift_endAccess();
  v141 = v271;
  v140 = v315;
  v118 = v335;
LABEL_271:
  v288 = [v141 *&v142[273]];

  sub_10005C010();
  sub_10005FB00(v138, v139, v118, v140);

LABEL_272:
  v289 = sub_10009D904();
  v290 = sub_10009E844();
  if (os_log_type_enabled(v289, v290))
  {
    v291 = swift_slowAlloc();
    v345 = swift_slowAlloc();
    *v291 = 136315394;
    *(v291 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v345);
    *(v291 + 12) = 2080;

    v292 = sub_10009E6B4();
    v294 = v293;

    v295 = sub_10002AD68(v292, v294, &v345);

    *(v291 + 14) = v295;
    _os_log_impl(&_mh_execute_header, v289, v290, "%s (After) Cached widget metrics infos: %s", v291, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10005FA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryAndSceneEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FA90(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryAndSceneEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10005FB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_10005FB98()
{
  result = qword_1000C1E38;
  if (!qword_1000C1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E38);
  }

  return result;
}

uint64_t sub_10005FC40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(&qword_1000C1E28, &qword_1000A1EA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005FCB8()
{
  result = qword_1000C1E48;
  if (!qword_1000C1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E48);
  }

  return result;
}

uint64_t sub_10005FD0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005FD54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005FDB0()
{
  result = qword_1000C1E58;
  if (!qword_1000C1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E58);
  }

  return result;
}

uint64_t sub_10005FE04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7361487865646E69 && a2 == 0xE900000000000068;
  if (v4 || (sub_10009ED34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000A5060 == a2 || (sub_10009ED34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A5080 == a2 || (sub_10009ED34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000A50A0 == a2 || (sub_10009ED34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 4;
  }

  else
  {
    v6 = sub_10009ED34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10005FFCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003714(&qword_1000C1E68, &qword_1000A1F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_100024330(a1, a1[3]);
  sub_10005FDB0();
  sub_10009EE14();
  if (v2)
  {
    return sub_100015F44(a1);
  }

  v27 = 0;
  v11 = sub_10009EC64();
  v26 = 1;
  v12 = sub_10009EC34();
  v25 = 2;
  v21 = sub_10009EC44();
  sub_100003714(&qword_1000C1E18, "ƃ");
  v24 = 3;
  sub_10006027C(&qword_1000C1E70);
  sub_10009EC54();
  v20 = v22;
  v23 = 4;
  v13 = sub_10009EC24();
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100015F44(a1);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;
  v18 = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v18;
  *(a2 + 32) = v13;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_10006027C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(&qword_1000C1E18, "ƃ");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetMetricsInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMetricsInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100060440()
{
  result = qword_1000C1E78;
  if (!qword_1000C1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E78);
  }

  return result;
}

unint64_t sub_100060498()
{
  result = qword_1000C1E80;
  if (!qword_1000C1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E80);
  }

  return result;
}

unint64_t sub_1000604F0()
{
  result = qword_1000C1E88;
  if (!qword_1000C1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E88);
  }

  return result;
}

uint64_t sub_100060544(uint64_t a1, void *a2)
{
  v3 = sub_100024330((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

void *sub_1000605F0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10009EAE4();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        sub_10009E684();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10009E6C4();
        }

        sub_10009E6E4();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006079C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AccessoryAndSceneEntity();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v31 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v29 = &v25 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = a3 + v26;
  v30 = (v15 + 48);
  v19 = _swiftEmptyArrayStorage;
  v20 = *(v15 + 72);
  v27 = v11;
  v28 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v30)(v10, 1, v11) == 1)
    {
      sub_1000160CC(v10, &qword_1000C1258, &unk_1000A08D0);
    }

    else
    {
      v21 = v29;
      sub_100065D58(v10, v29, type metadata accessor for AccessoryAndSceneEntity);
      sub_100065D58(v21, v31, type metadata accessor for AccessoryAndSceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100064FC4(0, v19[2] + 1, 1, v19, &qword_1000C0EC0, &qword_10009FCE8, type metadata accessor for AccessoryAndSceneEntity);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_100064FC4(v22 > 1, v23 + 1, 1, v19, &qword_1000C0EC0, &qword_10009FCE8, type metadata accessor for AccessoryAndSceneEntity);
      }

      v19[2] = v23 + 1;
      sub_100065D58(v31, v19 + v26 + v23 * v20, type metadata accessor for AccessoryAndSceneEntity);
      v11 = v27;
    }

    v18 += v20;
    if (!--v17)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_100060AB0(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009EBA4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v16 = _swiftEmptyArrayStorage;
    sub_10009EB54();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_10009EAE4();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_10009EB34();
      v12 = v16[2];
      sub_10009EB64();
      sub_10009EB74();
      sub_10009EB44();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void *sub_100060C24(void (*a1)(__int16 *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_10009D204();
  v5 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v36 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v39 = _swiftEmptyArrayStorage;
    v10 = v6;
    sub_10001BD4C(0, v8, 0);
    v37 = v39;
    v11 = -1 << *(a3 + 32);
    v35 = a3 + 64;
    v12 = sub_10009E994();
    v13 = 0;
    v28[1] = v10 + 32;
    v29 = v10;
    v28[0] = a3 + 72;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v35 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v33 = v13;
      v16 = *(a3 + 36);
      v38 = *(*(a3 + 48) + 2 * v12);
      v31(&v38);
      v34 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v17 = v37;
      v39 = v37;
      v19 = v37[2];
      v18 = v37[3];
      if (v19 >= v18 >> 1)
      {
        sub_10001BD4C(v18 > 1, v19 + 1, 1);
        v17 = v39;
      }

      v17[2] = v19 + 1;
      v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v37 = v17;
      (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v36, v30);
      v14 = 1 << *(a3 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v21 = *(v35 + 8 * v15);
      if ((v21 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v16 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v12 & 0x3F));
      if (v22)
      {
        v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v25 = (v28[0] + 8 * v15);
        while (v24 < (v14 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_100015F90(v12, v16, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_100015F90(v12, v16, 0);
      }

LABEL_4:
      v3 = v34;
      v13 = v33 + 1;
      v12 = v14;
      if (v33 + 1 == v8)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_100060F3C(uint64_t a1)
{
  v69 = type metadata accessor for WidgetTileInfo();
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v69);
  v67 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v66 = &v56 - v13;
  result = __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = *(a1 + 16);
  v18 = *v2;
  v19 = *(*v2 + 16);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v18[3] >> 1, v23 < v20))
  {
    if (v19 <= v20)
    {
      v24 = v19 + v17;
    }

    else
    {
      v24 = v19;
    }

    v18 = sub_100064FC4(isUniquelyReferenced_nonNull_native, v24, 1, v18, &qword_1000C0EB8, &qword_10009FCE0, type metadata accessor for WidgetTileInfo);
    v23 = v18[3] >> 1;
  }

  v25 = v18[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v26 = v23 - v25;
  result = sub_10002C054(&v70, v18 + v20 + v19 * v25, v23 - v25, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = v18[2];
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v18[2] = v30;
  }

  if (result != v26)
  {
    result = sub_100015F9C();
LABEL_14:
    *v2 = v18;
    return result;
  }

LABEL_17:
  v65 = v18[2];
  v27 = v71;
  v58 = v71;
  v59 = v70;
  v30 = v73;
  v56 = v72;
  v31 = v74;
  if (v74)
  {
    v32 = v73;
LABEL_27:
    v36 = (v31 - 1) & v31;
    sub_100006850(*(v59 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v16);
    v61 = *(v1 + 56);
    v61(v16, 0, 1, v69);
    v35 = v32;
    while (1)
    {
      v37 = v66;
      sub_100065CE8(v16, v66);
      v38 = *(v1 + 48);
      v1 += 48;
      v64 = v38;
      if (v38(v37, 1, v69) == 1)
      {
        break;
      }

      v57 = (v56 + 64) >> 6;
      v60 = v4 + 56;
      v39 = v65;
      while (1)
      {
        sub_1000160CC(v37, &qword_1000C0C20, &qword_1000A1E30);
        v43 = v18[3];
        v44 = v43 >> 1;
        v65 = v39;
        if ((v43 >> 1) < v39 + 1)
        {
          v18 = sub_100064FC4(v43 > 1, v39 + 1, 1, v18, &qword_1000C0EB8, &qword_10009FCE0, type metadata accessor for WidgetTileInfo);
          v44 = v18[3] >> 1;
        }

        v45 = v68;
        sub_100065CE8(v16, v68);
        if (v64(v45, 1, v69) != 1)
        {
          break;
        }

        v46 = v35;
        v47 = v68;
LABEL_37:
        sub_1000160CC(v47, &qword_1000C0C20, &qword_1000A1E30);
        v40 = v65;
        v35 = v46;
LABEL_32:
        v41 = v69;
        v18[2] = v40;
        v37 = v66;
        sub_100065CE8(v16, v66);
        v42 = v64(v37, 1, v41);
        v39 = v65;
        if (v42 == 1)
        {
          goto LABEL_29;
        }
      }

      v62 = v18 + v20;
      v48 = v65;
      if (v65 <= v44)
      {
        v48 = v44;
      }

      v63 = v48;
      v47 = v68;
      while (1)
      {
        v52 = v67;
        sub_100065D58(v47, v67, type metadata accessor for WidgetTileInfo);
        if (v65 == v63)
        {
          sub_100006918(v52);
          v40 = v63;
          v65 = v63;
          goto LABEL_32;
        }

        v4 = v65;
        sub_1000160CC(v16, &qword_1000C0C20, &qword_1000A1E30);
        sub_100065D58(v52, &v62[v4 * v19], type metadata accessor for WidgetTileInfo);
        if (!v36)
        {
          break;
        }

        v53 = v35;
LABEL_52:
        v55 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        sub_100006850(*(v59 + 48) + (v55 | (v53 << 6)) * v19, v16);
        v49 = 0;
        v35 = v53;
LABEL_42:
        v65 = v4 + 1;
        v50 = v69;
        v61(v16, v49, 1, v69);
        v47 = v68;
        sub_100065CE8(v16, v68);
        v51 = v64(v47, 1, v50);
        v46 = v35;
        if (v51 == 1)
        {
          goto LABEL_37;
        }
      }

      if (v57 <= (v35 + 1))
      {
        v54 = v35 + 1;
      }

      else
      {
        v54 = v57;
      }

      while (1)
      {
        v53 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v53 >= v57)
        {
          v36 = 0;
          v49 = 1;
          v35 = v54 - 1;
          goto LABEL_42;
        }

        v36 = *(v58 + 8 * v53);
        ++v35;
        if (v36)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_54:
      v61 = *(v1 + 56);
      v61(v16, 1, 1, v69);
      v36 = 0;
    }

LABEL_29:
    sub_1000160CC(v16, &qword_1000C0C20, &qword_1000A1E30);
    sub_100015F9C();
    result = sub_1000160CC(v37, &qword_1000C0C20, &qword_1000A1E30);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (v56 + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = (v56 + 64) >> 6;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_54;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100061624(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_100064FC4(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100061780(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10009EBA4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_10009EBA4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1000657F4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100065894(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100061870()
{
  v1[2] = v0;
  v2 = type metadata accessor for WidgetTileInfo();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100061904, 0, 0);
}

uint64_t sub_100061904()
{
  v1 = v0[2];
  v2 = v1 + *(v0[3] + 60);
  v3 = *v2;
  v0[5] = *v2;
  v4 = *(v2 + 8);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_100006850(v1, v0[4]);
      v10 = v3;
      v11 = swift_task_alloc();
      v0[11] = v11;
      *v11 = v0;
      v11[1] = sub_100061FE4;
      v12 = v0[4];

      return sub_100065A24();
    }

    else
    {
      v0[13] = _swiftEmptyArrayStorage;
      v16 = swift_task_alloc();
      v0[14] = v16;
      *v16 = v0;
      v16[1] = sub_10006221C;

      return sub_100063F0C(_swiftEmptyArrayStorage);
    }
  }

  else if (v4 >= 2)
  {
    v13 = v3;
    v14 = swift_task_alloc();
    v0[6] = v14;
    *v14 = v0;
    v14[1] = sub_100061B74;
    v15 = v0[2];

    return sub_100062514(v13);
  }

  else
  {
    v5 = sub_1000187B0();
    v0[8] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_100061DAC;
      v8 = v0[2];

      return sub_100062890(v6);
    }

    else
    {
      v17 = v0[4];

      v18 = v0[1];

      return v18();
    }
  }
}

uint64_t sub_100061B74(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100061C74, 0, 0);
}

uint64_t sub_100061C74()
{
  v1 = v0[7];
  v2 = v0[5];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[7];
    }

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);

    v4 = sub_10009EB94();

    v8 = v0[7];
  }

  else
  {
    v3 = v0[7];

    sub_10009ED44();

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    v4 = v0[7];
  }

  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10006221C;

  return sub_100063F0C(v4);
}

uint64_t sub_100061DAC(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100061EAC, 0, 0);
}

uint64_t sub_100061EAC()
{
  v1 = v0[10];
  v2 = v0[8];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[10];
    }

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);

    v4 = sub_10009EB94();

    v8 = v0[10];
  }

  else
  {
    v3 = v0[10];

    sub_10009ED44();

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    v4 = v0[10];
  }

  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10006221C;

  return sub_100063F0C(v4);
}

uint64_t sub_100061FE4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1000620E4, 0, 0);
}

uint64_t sub_1000620E4()
{
  v1 = v0[12];
  v2 = v0[5];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[12];
    }

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);

    v4 = sub_10009EB94();

    v8 = v0[12];
  }

  else
  {
    v3 = v0[12];

    sub_10009ED44();

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    v4 = v0[12];
  }

  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10006221C;

  return sub_100063F0C(v4);
}

uint64_t sub_10006221C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100062360, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[4];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100062360()
{
  v1 = v0[13];

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_10009D924();
  sub_100015B68(v3, qword_1000C8278);
  swift_errorRetain();
  v4 = sub_10009D904();
  v5 = sub_10009E824();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %@", v8, 0xCu);
    sub_1000160CC(v9, &qword_1000C0E28, &qword_1000A1DC0);
  }

  else
  {
  }

  v11 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100062514(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100062534, 0, 0);
}

uint64_t sub_100062534()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for WidgetTileInfo() + 64);
  *(v0 + 56) = v2;
  v3 = *(v1 + v2);
  *(v0 + 32) = v3;
  if (*(v3 + 16))
  {
    v4 = *(v0 + 16);
    v5 = sub_100017C60();
    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v6 = swift_allocObject();
    v7 = HMExecuteTurnOffRequest_ptr;
    *(v6 + 16) = xmmword_10009FA10;
    if ((v5 & 1) == 0)
    {
      v7 = HMExecuteRequest_ptr;
    }

    v8 = *v7;
    *(v6 + 32) = [objc_opt_self() executeRequestWithActionSet:v4];
    v9 = *(v0 + 8);

    return v9(v6);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 40) = v11;
    *v11 = v0;
    v11[1] = sub_1000626A0;
    v12 = *(v0 + 24);

    return sub_1000188E0();
  }
}

uint64_t sub_1000626A0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000627A0, 0, 0);
}

uint64_t sub_1000627A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  *(v4 + v2) = v1;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  LOBYTE(v6) = sub_100017C60();
  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v7 = swift_allocObject();
  v8 = HMExecuteTurnOffRequest_ptr;
  *(v7 + 16) = xmmword_10009FA10;
  if ((v6 & 1) == 0)
  {
    v8 = HMExecuteRequest_ptr;
  }

  v9 = *v8;
  *(v7 + 32) = [objc_opt_self() executeRequestWithActionSet:v5];
  v10 = *(v0 + 8);

  return v10(v7);
}

uint64_t sub_100062890(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = type metadata accessor for WidgetTileInfo();
  v2[36] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v5 = sub_10009D464();
  v2[38] = v5;
  v6 = *(v5 - 8);
  v2[39] = v6;
  v7 = *(v6 + 64) + 15;
  v2[40] = swift_task_alloc();
  v8 = sub_10009D1C4();
  v2[41] = v8;
  v9 = *(v8 - 8);
  v2[42] = v9;
  v10 = *(v9 + 64) + 15;
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_1000629DC, 0, 0);
}

uint64_t sub_1000629DC()
{
  v1 = *(v0 + 280);
  v2 = *(*(v0 + 288) + 64);
  *(v0 + 376) = v2;
  v3 = *(v1 + v2);
  *(v0 + 352) = v3;
  if (*(v3 + 16))
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = *(v0 + 328);
    v7 = *(v0 + 272);
    v108 = _swiftEmptyArrayStorage;
    sub_10009E904();
    v8 = (*(v5 + 88))(v4, v6);
    if (v8 == enum case for ServiceKind.door(_:))
    {
      goto LABEL_3;
    }

    if (v8 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      v29 = *(v0 + 312);
      v28 = *(v0 + 320);
      v30 = *(v0 + 304);
      v31 = *(v0 + 272);
      v32 = *(v29 + 104);
      v32(v28, enum case for CharacteristicKind.currentDoorState(_:), v30);
      v33 = sub_100016C54(v28, v3);
      LOBYTE(v31) = v34;
      v35 = *(v29 + 8);
      v35(v28, v30);
      if (v31)
      {
        goto LABEL_32;
      }

      v17 = (v0 + 144);
      if (v33 > 4)
      {
        v36 = 0;
      }

      else
      {
        v36 = qword_1000A20F0[v33];
      }

      v68 = *(v0 + 320);
      v69 = *(v0 + 304);
      v70 = *(v0 + 280);
      *(v0 + 168) = &type metadata for Int;
      *(v0 + 144) = v36;
      v32(v68, enum case for CharacteristicKind.targetDoorState(_:), v69);
      v71 = sub_100064D48(v70, v68);
      v72 = swift_task_alloc();
      *(v72 + 16) = v17;
      v24 = sub_100060AB0(sub_100065DC0, v72, v71);

      v73 = v68;
      v74 = v69;
    }

    else
    {
      if (v8 == enum case for ServiceKind.lightbulb(_:))
      {
        v38 = *(v0 + 312);
        v37 = *(v0 + 320);
        v39 = *(v0 + 304);
        v40 = *(v0 + 280);
        v106 = *(v0 + 272);
        v41 = sub_100017C60();
        *(v0 + 232) = &type metadata for Bool;
        *(v0 + 208) = (v41 & 1) == 0;
        v104 = *(v38 + 104);
        v104(v37, enum case for CharacteristicKind.powerState(_:), v39);
        v42 = sub_100064D48(v40, v37);
        v43 = swift_task_alloc();
        *(v43 + 16) = v0 + 208;
        v102 = sub_100060AB0(sub_100065DC0, v43, v42);

        v44 = *(v38 + 8);
        v44(v37, v39);
        sub_100015F44((v0 + 208));
        v108 = v102;
        v45 = enum case for CharacteristicKind.brightness(_:);
        v104(v37, enum case for CharacteristicKind.brightness(_:), v39);
        v46 = sub_100016C54(v37, v3);
        v48 = v47;
        v44(v37, v39);
        if ((v48 & 1) == 0 && !v46)
        {
          v49 = *(v0 + 280);
          if ((sub_100017C60() & 1) == 0)
          {
            v50 = *(v0 + 320);
            v51 = *(v0 + 304);
            v52 = *(v0 + 280);
            *(v0 + 264) = &type metadata for Int;
            *(v0 + 240) = 100;
            v104(v50, v45, v51);
            v53 = sub_100064D48(v52, v50);
            v54 = swift_task_alloc();
            *(v54 + 16) = v0 + 240;
            v55 = sub_100060AB0(sub_100065DC0, v54, v53);

            v44(v50, v51);
            sub_100015F44((v0 + 240));
            sub_100061780(v55);
          }
        }

        goto LABEL_32;
      }

      if (v8 == enum case for ServiceKind.lockMechanism(_:))
      {
        v57 = *(v0 + 312);
        v56 = *(v0 + 320);
        v58 = *(v0 + 304);
        v59 = *(v0 + 272);
        v60 = *(v57 + 104);
        v60(v56, enum case for CharacteristicKind.currentLockMechanismState(_:), v58);
        v61 = sub_100016C54(v56, v3);
        LOBYTE(v59) = v62;
        v35 = *(v57 + 8);
        v35(v56, v58);
        if (v59)
        {
          goto LABEL_32;
        }

        v17 = (v0 + 112);
        v63 = *(v0 + 320);
        v64 = *(v0 + 304);
        v65 = *(v0 + 280);
        *(v0 + 136) = &type metadata for Int;
        *(v0 + 112) = v61 == 0;
        v60(v63, enum case for CharacteristicKind.targetLockMechanismState(_:), v64);
        v66 = sub_100064D48(v65, v63);
        v67 = swift_task_alloc();
        *(v67 + 16) = v0 + 112;
      }

      else
      {
        if (v8 != enum case for ServiceKind.securitySystem(_:))
        {
          if (v8 != enum case for ServiceKind.window(_:) && v8 != enum case for ServiceKind.windowCovering(_:))
          {
            v103 = *(v0 + 336);
            v88 = *(v0 + 320);
            v105 = *(v0 + 328);
            v107 = *(v0 + 344);
            v89 = *(v0 + 304);
            v90 = *(v0 + 312);
            v91 = *(v0 + 280);
            v92 = sub_100017C60();
            *(v0 + 40) = &type metadata for Bool;
            *(v0 + 16) = (v92 & 1) == 0;
            v101 = *(v90 + 104);
            v101(v88, enum case for CharacteristicKind.powerState(_:), v89);
            v93 = sub_100064D48(v91, v88);
            v94 = swift_task_alloc();
            *(v94 + 16) = v0 + 16;
            v95 = sub_100060AB0(sub_100065C08, v94, v93);

            v96 = *(v90 + 8);
            v96(v88, v89);
            sub_100015F44((v0 + 16));
            sub_100061780(v95);
            v97 = sub_100017C60();
            *(v0 + 72) = &type metadata for Bool;
            *(v0 + 48) = (v97 & 1) == 0;
            v101(v88, enum case for CharacteristicKind.active(_:), v89);
            v98 = sub_100064D48(v91, v88);
            v99 = swift_task_alloc();
            *(v99 + 16) = v0 + 48;
            v100 = sub_100060AB0(sub_100065DC0, v99, v98);

            v96(v88, v89);
            sub_100015F44((v0 + 48));
            sub_100061780(v100);
            (*(v103 + 8))(v107, v105);
            goto LABEL_32;
          }

LABEL_3:
          v10 = *(v0 + 312);
          v9 = *(v0 + 320);
          v11 = *(v0 + 304);
          v12 = *(v0 + 272);
          v13 = *(v10 + 104);
          v13(v9, enum case for CharacteristicKind.currentPosition(_:), v11);
          v14 = sub_100016C54(v9, v3);
          LOBYTE(v12) = v15;
          v16 = *(v10 + 8);
          v16(v9, v11);
          if ((v12 & 1) == 0)
          {
            v17 = (v0 + 176);
            v18 = *(v0 + 320);
            v19 = *(v0 + 296);
            v20 = *(v0 + 304);
            sub_100006850(*(v0 + 280), v19);
            v21 = 100;
            if (v14 > 0)
            {
              v21 = 0;
            }

            *(v0 + 200) = &type metadata for Int;
            *(v0 + 176) = v21;
            v13(v18, enum case for CharacteristicKind.targetPosition(_:), v20);
            v22 = sub_100064D48(v19, v18);
            v23 = swift_task_alloc();
            *(v23 + 16) = v17;
            v24 = sub_100060AB0(sub_100065DC0, v23, v22);

            v16(v18, v20);
            sub_100006918(v19);
            goto LABEL_31;
          }

LABEL_32:
          v84 = *(v0 + 344);
          v85 = *(v0 + 320);
          v86 = *(v0 + 296);

          v87 = *(v0 + 8);

          return v87(v108);
        }

        v76 = *(v0 + 312);
        v75 = *(v0 + 320);
        v77 = *(v0 + 304);
        v78 = *(v0 + 272);
        v79 = *(v76 + 104);
        v79(v75, enum case for CharacteristicKind.currentSecuritySystemState(_:), v77);
        v80 = sub_100016C54(v75, v3);
        LOBYTE(v78) = v81;
        v35 = *(v76 + 8);
        v35(v75, v77);
        if (v78)
        {
          goto LABEL_32;
        }

        v17 = (v0 + 80);
        v63 = *(v0 + 320);
        v64 = *(v0 + 304);
        v82 = *(v0 + 280);
        v83 = 3;
        if (v80 == 3)
        {
          v83 = 0;
        }

        *(v0 + 104) = &type metadata for Int;
        *(v0 + 80) = v83;
        v79(v63, enum case for CharacteristicKind.targetSecuritySystemState(_:), v64);
        v66 = sub_100064D48(v82, v63);
        v67 = swift_task_alloc();
        *(v67 + 16) = v17;
      }

      v24 = sub_100060AB0(sub_100065DC0, v67, v66);

      v73 = v63;
      v74 = v64;
    }

    v35(v73, v74);
LABEL_31:
    sub_100015F44(v17);
    v108 = v24;
    goto LABEL_32;
  }

  v25 = swift_task_alloc();
  *(v0 + 360) = v25;
  *v25 = v0;
  v25[1] = sub_100063430;
  v26 = *(v0 + 280);

  return sub_1000188E0();
}

uint64_t sub_100063430(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_100063530, 0, 0);
}

uint64_t sub_100063530()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 376);
  v4 = *(v0 + 280);

  *(v4 + v3) = v1;
  v5 = *(v0 + 368);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 328);
  v9 = *(v0 + 272);
  v108 = _swiftEmptyArrayStorage;
  sub_10009E904();
  v10 = (*(v7 + 88))(v6, v8);
  if (v10 == enum case for ServiceKind.door(_:))
  {
    goto LABEL_2;
  }

  if (v10 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 304);
    v30 = *(v0 + 272);
    v31 = *(v28 + 104);
    v31(v27, enum case for CharacteristicKind.currentDoorState(_:), v29);
    v32 = sub_100016C54(v27, v5);
    LOBYTE(v30) = v33;
    v34 = *(v28 + 8);
    v34(v27, v29);
    if (v30)
    {
      goto LABEL_28;
    }

    v19 = (v0 + 144);
    if (v32 > 4)
    {
      v35 = 0;
    }

    else
    {
      v35 = qword_1000A20F0[v32];
    }

    v67 = *(v0 + 320);
    v68 = *(v0 + 304);
    v69 = *(v0 + 280);
    *(v0 + 168) = &type metadata for Int;
    *(v0 + 144) = v35;
    v31(v67, enum case for CharacteristicKind.targetDoorState(_:), v68);
    v70 = sub_100064D48(v69, v67);
    v71 = swift_task_alloc();
    *(v71 + 16) = v19;
    v26 = sub_100060AB0(sub_100065DC0, v71, v70);

    v72 = v67;
    v73 = v68;
    goto LABEL_26;
  }

  if (v10 == enum case for ServiceKind.lightbulb(_:))
  {
    v37 = *(v0 + 312);
    v36 = *(v0 + 320);
    v38 = *(v0 + 304);
    v39 = *(v0 + 280);
    v106 = *(v0 + 272);
    v40 = sub_100017C60();
    *(v0 + 232) = &type metadata for Bool;
    *(v0 + 208) = (v40 & 1) == 0;
    v104 = *(v37 + 104);
    v104(v36, enum case for CharacteristicKind.powerState(_:), v38);
    v41 = sub_100064D48(v39, v36);
    v42 = swift_task_alloc();
    *(v42 + 16) = v0 + 208;
    v102 = sub_100060AB0(sub_100065DC0, v42, v41);

    v43 = *(v37 + 8);
    v43(v36, v38);
    sub_100015F44((v0 + 208));
    v108 = v102;
    v44 = enum case for CharacteristicKind.brightness(_:);
    v104(v36, enum case for CharacteristicKind.brightness(_:), v38);
    v45 = sub_100016C54(v36, v5);
    v47 = v46;
    v43(v36, v38);
    if ((v47 & 1) == 0 && !v45)
    {
      v48 = *(v0 + 280);
      if ((sub_100017C60() & 1) == 0)
      {
        v49 = *(v0 + 320);
        v50 = *(v0 + 304);
        v51 = *(v0 + 280);
        *(v0 + 264) = &type metadata for Int;
        *(v0 + 240) = 100;
        v104(v49, v44, v50);
        v52 = sub_100064D48(v51, v49);
        v53 = swift_task_alloc();
        *(v53 + 16) = v0 + 240;
        v54 = sub_100060AB0(sub_100065DC0, v53, v52);

        v43(v49, v50);
        sub_100015F44((v0 + 240));
        sub_100061780(v54);
      }
    }

    goto LABEL_28;
  }

  if (v10 == enum case for ServiceKind.lockMechanism(_:))
  {
    v56 = *(v0 + 312);
    v55 = *(v0 + 320);
    v57 = *(v0 + 304);
    v58 = *(v0 + 272);
    v59 = *(v56 + 104);
    v59(v55, enum case for CharacteristicKind.currentLockMechanismState(_:), v57);
    v60 = sub_100016C54(v55, v5);
    LOBYTE(v58) = v61;
    v34 = *(v56 + 8);
    v34(v55, v57);
    if (v58)
    {
      goto LABEL_28;
    }

    v19 = (v0 + 112);
    v62 = *(v0 + 320);
    v63 = *(v0 + 304);
    v64 = *(v0 + 280);
    *(v0 + 136) = &type metadata for Int;
    *(v0 + 112) = v60 == 0;
    v59(v62, enum case for CharacteristicKind.targetLockMechanismState(_:), v63);
    v65 = sub_100064D48(v64, v62);
    v66 = swift_task_alloc();
    *(v66 + 16) = v0 + 112;
LABEL_25:
    v26 = sub_100060AB0(sub_100065DC0, v66, v65);

    v72 = v62;
    v73 = v63;
LABEL_26:
    v34(v72, v73);
LABEL_27:
    sub_100015F44(v19);
    v108 = v26;
    goto LABEL_28;
  }

  if (v10 == enum case for ServiceKind.securitySystem(_:))
  {
    v75 = *(v0 + 312);
    v74 = *(v0 + 320);
    v76 = *(v0 + 304);
    v77 = *(v0 + 272);
    v78 = *(v75 + 104);
    v78(v74, enum case for CharacteristicKind.currentSecuritySystemState(_:), v76);
    v79 = sub_100016C54(v74, v5);
    LOBYTE(v77) = v80;
    v34 = *(v75 + 8);
    v34(v74, v76);
    if (v77)
    {
      goto LABEL_28;
    }

    v19 = (v0 + 80);
    v62 = *(v0 + 320);
    v63 = *(v0 + 304);
    v81 = *(v0 + 280);
    v82 = 3;
    if (v79 == 3)
    {
      v82 = 0;
    }

    *(v0 + 104) = &type metadata for Int;
    *(v0 + 80) = v82;
    v78(v62, enum case for CharacteristicKind.targetSecuritySystemState(_:), v63);
    v65 = sub_100064D48(v81, v62);
    v66 = swift_task_alloc();
    *(v66 + 16) = v19;
    goto LABEL_25;
  }

  if (v10 == enum case for ServiceKind.window(_:) || v10 == enum case for ServiceKind.windowCovering(_:))
  {
LABEL_2:
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = *(v0 + 304);
    v14 = *(v0 + 272);
    v15 = *(v12 + 104);
    v15(v11, enum case for CharacteristicKind.currentPosition(_:), v13);
    v16 = sub_100016C54(v11, v5);
    LOBYTE(v14) = v17;
    v18 = *(v12 + 8);
    v18(v11, v13);
    if (v14)
    {
      goto LABEL_28;
    }

    v19 = (v0 + 176);
    v20 = *(v0 + 320);
    v21 = *(v0 + 296);
    v22 = *(v0 + 304);
    sub_100006850(*(v0 + 280), v21);
    v23 = 100;
    if (v16 > 0)
    {
      v23 = 0;
    }

    *(v0 + 200) = &type metadata for Int;
    *(v0 + 176) = v23;
    v15(v20, enum case for CharacteristicKind.targetPosition(_:), v22);
    v24 = sub_100064D48(v21, v20);
    v25 = swift_task_alloc();
    *(v25 + 16) = v19;
    v26 = sub_100060AB0(sub_100065DC0, v25, v24);

    v18(v20, v22);
    sub_100006918(v21);
    goto LABEL_27;
  }

  v103 = *(v0 + 336);
  v88 = *(v0 + 320);
  v105 = *(v0 + 328);
  v107 = *(v0 + 344);
  v89 = *(v0 + 304);
  v90 = *(v0 + 312);
  v91 = *(v0 + 280);
  v92 = sub_100017C60();
  *(v0 + 40) = &type metadata for Bool;
  *(v0 + 16) = (v92 & 1) == 0;
  v101 = *(v90 + 104);
  v101(v88, enum case for CharacteristicKind.powerState(_:), v89);
  v93 = sub_100064D48(v91, v88);
  v94 = swift_task_alloc();
  *(v94 + 16) = v0 + 16;
  v95 = sub_100060AB0(sub_100065C08, v94, v93);

  v96 = *(v90 + 8);
  v96(v88, v89);
  sub_100015F44((v0 + 16));
  sub_100061780(v95);
  v97 = sub_100017C60();
  *(v0 + 72) = &type metadata for Bool;
  *(v0 + 48) = (v97 & 1) == 0;
  v101(v88, enum case for CharacteristicKind.active(_:), v89);
  v98 = sub_100064D48(v91, v88);
  v99 = swift_task_alloc();
  *(v99 + 16) = v0 + 48;
  v100 = sub_100060AB0(sub_100065DC0, v99, v98);

  v96(v88, v89);
  sub_100015F44((v0 + 48));
  sub_100061780(v100);
  (*(v103 + 8))(v107, v105);
LABEL_28:
  v83 = *(v0 + 344);
  v84 = *(v0 + 320);
  v85 = *(v0 + 296);

  v86 = *(v0 + 8);

  return v86(v108);
}

uint64_t sub_100063F2C()
{
  v71 = v0;
  if (qword_1000C0A90 != -1)
  {
LABEL_24:
    swift_once();
  }

  v1 = *(v0 + 22);
  v2 = sub_10009D924();
  *(v0 + 23) = sub_100015B68(v2, qword_1000C8278);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 22);
    v6 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v69 = v62;
    buf = v6;
    *v6 = 136315138;
    v70 = _swiftEmptyArrayStorage;
    if (!(v5 >> 62))
    {
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = v4;
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_5;
    }

    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (*(v0 + 22) < 0)
    {
      v19 = *(v0 + 22);
    }

    v8 = sub_10009EBA4();
    v66 = v4;
    if (v8)
    {
LABEL_5:
      v9 = 0;
      v10 = v5 & 0xC000000000000001;
      v11 = *(v0 + 22) + 32;
      v59 = v3;
      do
      {
        v12 = v9;
        while (1)
        {
          if (v10)
          {
            v17 = *(v0 + 22);
            v13 = sub_10009EAE4();
          }

          else
          {
            if (v12 >= *(v7 + 16))
            {
              goto LABEL_23;
            }

            v13 = *(v11 + 8 * v12);
          }

          v14 = v13;
          v9 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            break;
          }

LABEL_8:
          ++v12;
          if (v9 == v8)
          {
            v3 = v59;
            goto LABEL_28;
          }
        }

        v16 = [v15 characteristic];

        if (!v16)
        {
          goto LABEL_8;
        }

        sub_10009E684();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10009E6C4();
        }

        sub_10009E6E4();
        v3 = v59;
      }

      while (v9 != v8);
    }

LABEL_28:
    sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
    v20 = sub_10009E6B4();
    v22 = v21;

    v23 = sub_10002AD68(v20, v22, &v69);

    *(buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v3, v66, "Writing characteristics: %s", buf, 0xCu);
    sub_100015F44(v62);
  }

  v24 = *(v0 + 22);

  v25 = sub_10009D904();
  v26 = sub_10009E844();

  if (!os_log_type_enabled(v25, v26))
  {

    goto LABEL_55;
  }

  v68 = v26;
  v27 = *(v0 + 22);
  v28 = swift_slowAlloc();
  bufa = swift_slowAlloc();
  v70 = bufa;
  v67 = v28;
  *v28 = 136315138;
  if (v27 >> 62)
  {
LABEL_51:
    v29 = v27 & 0xFFFFFFFFFFFFFF8;
    if (*(v0 + 22) < 0)
    {
      v48 = *(v0 + 22);
    }

    v30 = sub_10009EBA4();
    v61 = v0;
    if (v30)
    {
LABEL_32:
      v31 = 0;
      v32 = v27 & 0xC000000000000001;
      v33 = *(v0 + 22) + 32;
      v0 = _swiftEmptyArrayStorage;
      v27 = &objc_retain_ptr;
      do
      {
        v34 = v31;
        while (1)
        {
          if (v32)
          {
            v38 = *(v61 + 22);
            v35 = sub_10009EAE4();
          }

          else
          {
            if (v34 >= *(v29 + 16))
            {
              goto LABEL_50;
            }

            v35 = *(v33 + 8 * v34);
          }

          v36 = v35;
          v31 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (v37)
          {
            break;
          }

          ++v34;
          if (v31 == v30)
          {
            goto LABEL_54;
          }
        }

        v63 = v25;
        v39 = [v37 actionSet];
        v40 = [v39 name];

        v41 = sub_10009E5C4();
        v60 = v42;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_100065390(0, *(v0 + 2) + 1, 1, v0);
        }

        v43 = v0;
        v44 = *(v0 + 2);
        v45 = v43;
        v46 = *(v43 + 3);
        v25 = v63;
        if (v44 >= v46 >> 1)
        {
          v45 = sub_100065390((v46 > 1), v44 + 1, 1, v45);
        }

        *(v45 + 2) = v44 + 1;
        v47 = &v45[16 * v44];
        v0 = v45;
        *(v47 + 4) = v41;
        *(v47 + 5) = v60;
      }

      while (v31 != v30);
    }
  }

  else
  {
    v29 = v27 & 0xFFFFFFFFFFFFFF8;
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v0;
    if (v30)
    {
      goto LABEL_32;
    }
  }

LABEL_54:
  v49 = sub_10009E6B4();
  v51 = v50;

  v52 = sub_10002AD68(v49, v51, &v70);

  *(v67 + 4) = v52;
  _os_log_impl(&_mh_execute_header, v25, v68, "Executing actionSets: %s", v67, 0xCu);
  sub_100015F44(bufa);

  v0 = v61;
LABEL_55:
  type metadata accessor for HomeWidget();
  *(v0 + 24) = static HomeWidget.shared.getter();
  v53 = sub_10009D224();
  *(v0 + 25) = v54;
  *(v0 + 26) = v55;
  *(v0 + 18) = v53;
  *(v0 + 19) = v54;
  *(v0 + 20) = v56;
  *(v0 + 21) = v55;
  v57 = swift_task_alloc();
  *(v0 + 27) = v57;
  *v57 = v0;
  v57[1] = sub_1000645BC;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 144), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000645BC(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10006471C, 0, 0);
}

uint64_t sub_10006471C()
{
  v15 = v0;
  v1 = v0[28];
  if (v1)
  {
    v2 = v0[22];
    v3 = [v1 widgetManager];
    v0[29] = v3;
    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    isa = sub_10009E694().super.isa;
    v0[30] = isa;
    v5 = sub_10009E5B4();
    v0[31] = v5;
    v0[2] = v0;
    v0[3] = sub_1000649C0;
    v6 = swift_continuation_init();
    v0[17] = sub_100003714(&qword_1000C1EB0, &qword_1000A20D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100060544;
    v0[13] = &unk_1000BBE08;
    v0[14] = v6;
    [v3 performRequests:isa forKind:v5 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v7 = v0[23];
    v8 = sub_10009D904();
    v9 = sub_10009E824();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10002AD68(0x3A5F286574697277, 0xE900000000000029, &v14);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s unable to get shared HMHomeManager instance", v10, 0xCu);
      sub_100015F44(v11);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000649C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_100064BCC;
  }

  else
  {
    v3 = sub_100064AD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100064AD0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 184);

  v4 = sub_10009D904();
  v5 = sub_10009E844();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 224);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Write request complete.", v8, 2u);
  }

  else
  {

    v4 = v7;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100064BCC()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[23];
  swift_willThrow();

  swift_errorRetain();
  v6 = sub_10009D904();
  v7 = sub_10009E824();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[32];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error on write: %@", v9, 0xCu);
    sub_1000160CC(v10, &qword_1000C0E28, &qword_1000A1DC0);
  }

  v12 = v0[32];
  v13 = v0[28];

  swift_willThrow();
  v14 = v0[1];
  v15 = v0[32];

  return v14();
}

void *sub_100064D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for WidgetTileInfo() + 60);
  v4 = *(v3 + 8);
  if ((v4 - 2) < 3)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *v3;
  if (v4)
  {
    v11 = v6;
    v12 = [v11 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v13 = sub_10009E6A4();

    __chkstk_darwin(v14);
    v16[2] = a2;
    v15 = sub_1000605F0(sub_100065C8C, v16, v13);

    return v15;
  }

  else
  {
    v7 = v6;
    v8 = sub_10009E914();
    if (!v8)
    {

      return _swiftEmptyArrayStorage;
    }

    v9 = v8;
    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10009FA10;
    *(v10 + 32) = v9;

    return v10;
  }
}

uint64_t sub_100064EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_100024330(a2, a2[3]);
  v5 = sub_10009ED24();
  v6 = [objc_opt_self() writeRequestWithCharacteristic:v4 value:v5];
  result = swift_unknownObjectRelease();
  *a3 = v6;
  return result;
}

size_t sub_100064FC4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003714(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1000651A0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003714(&qword_1000C1EB8, &qword_1000A20D8);
  v10 = *(sub_100003714(&qword_1000C1240, &unk_1000A0898) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003714(&qword_1000C1240, &unk_1000A0898) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100065390(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C0E58, &qword_10009FCA8);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10006549C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1EC8, &qword_1000A20E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000655A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1E20, "ȃ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000656C0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003714(&qword_1000C1EC0, &qword_1000A20E0);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100003714(&unk_1000C15B0, &unk_1000A1360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000657F4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10009EBA4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10009EAF4();
  *v1 = result;
  return result;
}

uint64_t sub_100065894(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10009EBA4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10009EBA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100065C28();
          for (i = 0; i != v6; ++i)
          {
            sub_100003714(&qword_1000C1EA0, &qword_1000A20C8);
            v9 = sub_10001C6AC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100007330(0, &qword_1000C1E98, HMCharacteristicWriteRequest_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100065A24()
{
  sub_100006918(v0);

  return _swift_task_switch(sub_100065A8C, 0, 0);
}

uint64_t sub_100065A8C()
{
  v9 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);
  v2 = sub_10009D904();
  v3 = sub_10009E824();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10002AD68(0xD000000000000022, 0x80000001000A50C0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Write attempted on a Native Matter device without client support.", v4, 0xCu);
    sub_100015F44(v5);
  }

  v6 = *(v0 + 8);

  return v6(_swiftEmptyArrayStorage);
}

unint64_t sub_100065C28()
{
  result = qword_1000C1EA8;
  if (!qword_1000C1EA8)
  {
    sub_10000375C(&qword_1000C1EA0, &qword_1000A20C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1EA8);
  }

  return result;
}

uint64_t sub_100065C8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_10009E914();
  *a2 = result;
  return result;
}

uint64_t sub_100065CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065E04@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v1 = sub_10009E344();
  v86 = *(v1 - 8);
  v87 = v1;
  v2 = *(v86 + 64);
  __chkstk_darwin(v1);
  v85 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10009CD34();
  v91 = *(v75 - 8);
  v4 = *(v91 + 64);
  __chkstk_darwin(v75);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009CF54();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v69 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009E5A4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10009CD54();
  v12 = *(v11 - 8);
  v89 = v11;
  v90 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100003714(&qword_1000C1EE0, &qword_1000A2168);
  v68 = *(v66 - 8);
  v15 = *(v68 + 64);
  __chkstk_darwin(v66);
  v17 = &v59 - v16;
  v73 = sub_100003714(&qword_1000C1EE8, &qword_1000A2170);
  v74 = *(v73 - 8);
  v18 = *(v74 + 64);
  __chkstk_darwin(v73);
  v64 = &v59 - v19;
  v76 = sub_100003714(&qword_1000C1EF0, &qword_1000A2178);
  v77 = *(v76 - 8);
  v20 = *(v77 + 64);
  __chkstk_darwin(v76);
  v67 = &v59 - v21;
  v78 = sub_100003714(&qword_1000C1EF8, &qword_1000A2180);
  v79 = *(v78 - 8);
  v22 = *(v79 + 64);
  __chkstk_darwin(v78);
  v70 = &v59 - v23;
  v24 = sub_100003714(&qword_1000C1F00, &qword_1000A2188);
  v25 = *(v24 - 8);
  v81 = v24;
  v82 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v71 = &v59 - v27;
  v28 = sub_100003714(&qword_1000C1F08, &qword_1000A2190);
  v29 = *(v28 - 8);
  v83 = v28;
  v84 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v80 = &v59 - v31;
  sub_10009D894();

  sub_100003714(&qword_1000C1F10, &qword_1000A2198);
  v32 = sub_10000375C(&qword_1000C1F18, &qword_1000A21A0);
  v33 = sub_10001CDC8(&qword_1000C1F20, &qword_1000C1F18, &qword_1000A21A0);
  v94 = v32;
  v95 = v33;
  swift_getOpaqueTypeConformance2();
  sub_100068E68();
  sub_10009E494();
  sub_10009E554();
  v63 = "LaunchHomeAppControlDisplayName";
  sub_10009CF44();
  v62 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v34 = *(v91 + 104);
  v91 += 104;
  v61 = v34;
  v35 = v72;
  v36 = v75;
  v34(v72);
  v37 = v65;
  sub_10009CD64();
  v38 = sub_10001CDC8(&qword_1000C1F30, &qword_1000C1EE0, &qword_1000A2168);
  v39 = v66;
  sub_10009DE44();
  v40 = *(v90 + 8);
  v90 += 8;
  v60 = v40;
  v40(v37, v89);
  (*(v68 + 8))(v17, v39);
  sub_10009E554();
  sub_10009CF44();
  v61(v35, v62, v36);
  sub_10009CD64();
  v94 = v39;
  v95 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v67;
  v43 = v73;
  v44 = v64;
  sub_10009DE34();
  v60(v37, v89);
  (*(v74 + 8))(v44, v43);
  v45 = v85;
  sub_10009E334();
  v94 = v43;
  v95 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v70;
  v48 = v76;
  sub_10009DE24();
  (*(v86 + 8))(v45, v87);
  (*(v77 + 8))(v42, v48);
  v94 = v48;
  v95 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v71;
  v51 = v78;
  sub_10009DE14();
  (*(v79 + 8))(v47, v51);
  v52 = sub_10009D034();
  v96 = v52;
  v97 = sub_10006A2C8(&qword_1000C1F38, &type metadata accessor for HomeAppFeatures);
  v53 = sub_100031E00(&v94);
  (*(*(v52 - 8) + 104))(v53, enum case for HomeAppFeatures.controlsAPI(_:), v52);
  v92 = v51;
  v93 = v49;
  v54 = swift_getOpaqueTypeConformance2();
  v56 = v80;
  v55 = v81;
  sub_10009DE54();
  (*(v82 + 8))(v50, v55);
  sub_100015F44(&v94);
  v94 = v55;
  v95 = v54;
  swift_getOpaqueTypeConformance2();
  v57 = v83;
  sub_10009DE64();
  return (*(v84 + 8))(v56, v57);
}

uint64_t sub_100066938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = _s5StateVMa();
  v48 = *(v3 - 1);
  v4 = *(v48 + 64);
  v5 = __chkstk_darwin(v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v47 - v6;
  v7 = sub_100003714(&qword_1000C1470, &qword_1000A1108);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v47 - v9;
  v11 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = sub_100003714(&qword_1000C1F18, &qword_1000A21A0);
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  __chkstk_darwin(v18);
  v51 = &v47 - v20;
  v21 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v47 - v23;
  v49 = sub_100066FEC();
  sub_10001E0A8(a1 + v3[5], v24, &qword_1000C1F40, &qword_1000A21A8);
  v25 = sub_10009D964();
  v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
  sub_1000160CC(v24, &qword_1000C1F40, &qword_1000A21A8);
  if (v26 == 1)
  {
    sub_10001E0A8(a1, v55, &qword_1000C1F48, &qword_1000A21B0);
    v27 = v55[3] == 0;
    sub_1000160CC(v55, &qword_1000C1F48, &qword_1000A21B0);
  }

  else
  {
    v27 = 0;
  }

  sub_10001E0A8(a1 + v3[6], v10, &qword_1000C1470, &qword_1000A1108);
  v28 = sub_10009CF94();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v10, 1, v28) == 1)
  {
    sub_1000160CC(v10, &qword_1000C1470, &qword_1000A1108);
    v30 = 1;
  }

  else
  {
    sub_10009CF64();
    (*(v29 + 8))(v10, v28);
    v30 = 0;
  }

  v31 = sub_10009CF14();
  (*(*(v31 - 8) + 56))(v17, v30, 1, v31);
  sub_1000671A4(v15);
  v32 = sub_100067304();
  sub_100068EBC(a1 + v3[8], &v56);
  sub_100023744(v17, v15, v32 & 1, &v56, v55);
  v33 = v47;
  sub_100069BB8(a1, v47);
  v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v35 = v34 + v4;
  v36 = swift_allocObject();
  sub_100069C20(v33, v36 + v34);
  *(v36 + v35) = v27;
  v37 = v50;
  sub_100069BB8(a1, v50);
  v38 = swift_allocObject();
  sub_100069C20(v37, v38 + v34);
  *(v38 + v35) = v27;
  sub_100003714(&qword_1000C1F50, &qword_1000A21B8);
  sub_100003714(&qword_1000C1F58, &qword_1000A21C0);
  sub_100069FE0();
  v39 = sub_10000375C(&qword_1000C1F68, &qword_1000A21C8);
  v40 = sub_10000375C(&qword_1000C1F70, &qword_1000A21D0);
  v41 = sub_10006A094();
  v42 = sub_1000037A4();
  v56 = v40;
  v57 = &type metadata for String;
  v58 = v41;
  v59 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v39;
  v57 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10006A18C();
  v44 = v51;
  sub_10009E364();
  sub_100068CD4();
  sub_10001CDC8(&qword_1000C1F20, &qword_1000C1F18, &qword_1000A21A0);
  v45 = v53;
  sub_10009DDA4();

  return (*(v52 + 8))(v44, v45);
}

uint64_t sub_100066FEC()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  sub_10001E0A8(v0, &v12, &qword_1000C1F48, &qword_1000A21B0);
  if (!v13)
  {
    sub_1000160CC(&v12, &qword_1000C1F48, &qword_1000A21B0);
LABEL_8:
    v10 = 0;
    return v10 & 1;
  }

  sub_100031E64(&v12, v14);
  v5 = _s5StateVMa();
  sub_10001E0A8(v0 + *(v5 + 20), v4, &qword_1000C1F40, &qword_1000A21A8);
  v6 = sub_10009D964();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1000160CC(v4, &qword_1000C1F40, &qword_1000A21A8);
  if (v7 != 1)
  {
    sub_100015F44(v14);
    goto LABEL_8;
  }

  sub_100024330(v14, v15);
  v8 = sub_10009D344();
  sub_100024330(v14, v15);
  v9 = sub_10009D2F4();
  v10 = v9;
  if (v8)
  {
    v10 = v9 ^ 1;
  }

  sub_100015F44(v14);
  return v10 & 1;
}

uint64_t sub_1000671A4@<X0>(uint64_t a1@<X8>)
{
  if (sub_100067304())
  {
    sub_10001E0A8(v1, v10, &qword_1000C1F48, &qword_1000A21B0);
    if (v11)
    {
      v3 = v12;
      sub_100024330(v10, v11);
      v4 = *(v3 + 48);
      sub_10009EAD4();
      v5 = sub_10009CF14();
      (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
      return sub_100015F44(v10);
    }
  }

  else
  {
    sub_10001E0A8(v1, v10, &qword_1000C1F48, &qword_1000A21B0);
    v6 = v11;
    if (v11)
    {
      v7 = v12;
      sub_100024330(v10, v11);
      sub_100068F20(v6, v7, a1);
      return sub_100015F44(v10);
    }
  }

  sub_1000160CC(v10, &qword_1000C1F48, &qword_1000A21B0);
  v9 = sub_10009CF14();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t sub_100067304()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  sub_10001E0A8(v0, &v10, &qword_1000C1F48, &qword_1000A21B0);
  if (!v11)
  {
    sub_1000160CC(&v10, &qword_1000C1F48, &qword_1000A21B0);
    goto LABEL_7;
  }

  sub_100031E64(&v10, v12);
  sub_100024330(v12, v13);
  if ((sub_10009D304() & 1) == 0 || (v5 = _s5StateVMa(), sub_10001E0A8(v0 + *(v5 + 20), v4, &qword_1000C1F40, &qword_1000A21A8), v6 = sub_10009D964(), v7 = (*(*(v6 - 8) + 48))(v4, 1, v6), sub_1000160CC(v4, &qword_1000C1F40, &qword_1000A21A8), v7 != 1))
  {
    sub_100015F44(v12);
LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  sub_100024330(v12, v13);
  v8 = sub_10009D314();
  sub_100015F44(v12);
  return v8 & 1;
}

uint64_t sub_1000674C0@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_100067518();
  sub_100067758(v4, v5, a1, a2);
}

uint64_t sub_100067518()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  v5 = sub_10009D964();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateVMa();
  sub_10001E0A8(v0 + *(v10 + 20), v4, &qword_1000C1F40, &qword_1000A21A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000160CC(v4, &qword_1000C1F40, &qword_1000A21A8);
    sub_10001E0A8(v0, &v13, &qword_1000C1F48, &qword_1000A21B0);
    if (v14)
    {
      sub_100031E64(&v13, v15);
      sub_100024330(v15, v15[3]);
      v11 = sub_10009D364();
      sub_100015F44(v15);
    }

    else
    {
      sub_1000160CC(&v13, &qword_1000C1F48, &qword_1000A21B0);
      return 0;
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = sub_10009D944();
    (*(v6 + 8))(v9, v5);
  }

  return v11;
}

uint64_t sub_100067758@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v35 = sub_100003714(&qword_1000C1F98, &qword_1000A21E8);
  v8 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v10 = &v32 - v9;
  v11 = sub_10009DAD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100003714(&qword_1000C1FA0, &unk_1000A21F0);
  v16 = *(v36 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v36);
  v19 = &v32 - v18;
  if (a3)
  {
    sub_10009DCC4();
    v20 = sub_10009DFD4();
    v33 = v11;
    v34 = a4;
    v21 = v20;
    v23 = v22;
    v37 = v20;
    v38 = v22;
    v25 = v24 & 1;
    v39 = v24 & 1;
    v40 = v26;
    sub_10009DAC4();
    sub_10009E0F4();
    (*(v12 + 8))(v15, v33);
    sub_10006A2B8(v21, v23, v25);

    v27 = v36;
    (*(v16 + 16))(v10, v19, v36);
    swift_storeEnumTagMultiPayload();
    v37 = &type metadata for Text;
    v38 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_10009DD94();
    return (*(v16 + 8))(v19, v27);
  }

  else
  {
    v37 = a1;
    v38 = a2;
    sub_1000037A4();

    *v10 = sub_10009DFE4();
    *(v10 + 1) = v29;
    v10[16] = v30 & 1;
    *(v10 + 3) = v31;
    swift_storeEnumTagMultiPayload();
    v37 = &type metadata for Text;
    v38 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    return sub_10009DD94();
  }
}

uint64_t sub_100067AF0@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v46 = a2;
  v57 = a3;
  v4 = sub_10009DCB4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v50 = sub_100003714(&qword_1000C1F88, &qword_1000A21D8);
  v6 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v51 = &v43 - v7;
  v8 = sub_10009DAD4();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000C14C8, &qword_1000A11A8);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v49 = sub_100003714(&qword_1000C1F90, &qword_1000A21E0);
  v43 = *(v49 - 8);
  v16 = *(v43 + 64);
  __chkstk_darwin(v49);
  v18 = &v43 - v17;
  v53 = sub_100003714(&qword_1000C1F70, &qword_1000A21D0);
  v19 = *(*(v53 - 8) + 64);
  v20 = __chkstk_darwin(v53);
  v47 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  v24 = sub_100003714(&qword_1000C1F68, &qword_1000A21C8);
  v54 = *(v24 - 8);
  v55 = v24;
  v25 = *(v54 + 64);
  __chkstk_darwin(v24);
  v52 = &v43 - v26;
  v27 = sub_100068244();
  v29 = v28;
  v56 = a1;
  sub_10006860C();
  if (v46)
  {

    sub_10009DCC4();
    sub_10009E244();
    sub_10009DAC4();
    v30 = sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8);
    sub_10009E0F4();
    (*(v44 + 8))(v11, v45);
    (*(v48 + 8))(v15, v12);
    v31 = v43;
    v32 = v49;
    (*(v43 + 16))(v51, v18, v49);
    swift_storeEnumTagMultiPayload();
    v58 = v12;
    v59 = v30;
    swift_getOpaqueTypeConformance2();
    v33 = v47;
    sub_10009DD94();
    (*(v31 + 8))(v18, v32);
  }

  else
  {
    v58 = v27;
    v59 = v29;
    sub_1000037A4();
    sub_10009E254();
    v34 = v48;
    (*(v48 + 16))(v51, v15, v12);
    swift_storeEnumTagMultiPayload();
    v35 = sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8);
    v58 = v12;
    v59 = v35;
    swift_getOpaqueTypeConformance2();
    v33 = v47;
    sub_10009DD94();
    (*(v34 + 8))(v15, v12);
  }

  sub_10006A1E0(v33, v23);
  v58 = sub_1000689F8();
  v59 = v36;
  v37 = sub_10006A094();
  v38 = sub_1000037A4();
  v40 = v52;
  v39 = v53;
  sub_10009E034();

  sub_10006A250(v23);
  sub_10009DCA4();
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_10009DC94(v62);
  v63._countAndFlagsBits = sub_100067518();
  sub_10009DC84(v63);

  v64._countAndFlagsBits = 32;
  v64._object = 0xE100000000000000;
  sub_10009DC94(v64);
  v65._countAndFlagsBits = sub_100068244();
  sub_10009DC84(v65);

  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_10009DC94(v66);
  sub_10009DCD4();
  v58 = v39;
  v59 = &type metadata for String;
  v60 = v37;
  v61 = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v55;
  sub_10009E044();

  return (*(v54 + 8))(v40, v41);
}

uint64_t sub_100068244()
{
  v1 = v0;
  v2 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_10009D2A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009D2C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E0A8(v1, v34, &qword_1000C1F48, &qword_1000A21B0);
  if (!v35)
  {
    v28 = &qword_1000C1F48;
    v29 = &qword_1000A21B0;
    v30 = v34;
LABEL_7:
    sub_1000160CC(v30, v28, v29);
    return 0;
  }

  v32 = v1;
  v33 = v5;
  sub_100024330(v34, v35);
  (*(v11 + 104))(v14, enum case for StatusContext.tile(_:), v10);
  sub_10009D2B4();
  (*(v11 + 8))(v14, v10);
  v20 = sub_10009D4F4();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = sub_10009D324();
  v23 = v22;
  sub_1000160CC(v9, &qword_1000C0C80, &qword_1000A1E10);
  (*(v16 + 8))(v19, v15);
  sub_100015F44(v34);
  if (v23)
  {
    v24 = _s5StateVMa();
    v25 = v33;
    sub_10001E0A8(v32 + *(v24 + 20), v33, &qword_1000C1F40, &qword_1000A21A8);
    v26 = sub_10009D964();
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      sub_1000160CC(v25, &qword_1000C1F40, &qword_1000A21A8);
      return v21;
    }

    v28 = &qword_1000C1F40;
    v29 = &qword_1000A21A8;
    v30 = v25;
    goto LABEL_7;
  }

  return 0;
}

unint64_t sub_10006860C()
{
  v1 = sub_10009D7F4();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D804();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10009D964();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s5StateVMa();
  sub_10001E0A8(v0 + *(v18 + 20), v12, &qword_1000C1F40, &qword_1000A21A8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000160CC(v12, &qword_1000C1F40, &qword_1000A21A8);
    sub_10001E0A8(v0, &v28, &qword_1000C1F48, &qword_1000A21B0);
    if (v29)
    {
      sub_100031E64(&v28, v30);
      sub_100024330(v30, v31);
      if (sub_10009D304())
      {
        v19 = sub_100066FEC();
        sub_100024330(v30, v31);
        sub_10009D374();
        v20 = (v25 + 8);
        v21 = (v26 + 8);
        if (v19)
        {
          sub_10009D7B4();
        }

        else
        {
          sub_10009D7C4();
        }

        (*v20)(v8, v5);
        v22 = sub_10009D7E4();
        (*v21)(v4, v27);
        sub_100015F44(v30);
      }

      else
      {
        sub_100015F44(v30);
        return 0xD000000000000020;
      }
    }

    else
    {
      sub_1000160CC(&v28, &qword_1000C1F48, &qword_1000A21B0);
      return 0;
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v22 = sub_10009D954();
    (*(v14 + 8))(v17, v13);
  }

  return v22;
}

uint64_t sub_1000689F8()
{
  v1 = sub_10009CF54();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10009E5A4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  sub_10001E0A8(v0, &v19, &qword_1000C1F48, &qword_1000A21B0);
  if (!v20)
  {
    sub_1000160CC(&v19, &qword_1000C1F48, &qword_1000A21B0);
    return sub_100067518();
  }

  sub_100031E64(&v19, v21);
  v9 = _s5StateVMa();
  sub_10001E0A8(v0 + *(v9 + 20), v8, &qword_1000C1F40, &qword_1000A21A8);
  v10 = sub_10009D964();
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_1000160CC(v8, &qword_1000C1F40, &qword_1000A21A8);
  if (v11 != 1)
  {
    sub_100015F44(v21);
    return sub_100067518();
  }

  if (sub_100067304())
  {
  }

  else
  {
    v13 = sub_10009ED34();

    if ((v13 & 1) == 0)
    {
      sub_10009E554();
      sub_10009CF44();
      v16 = sub_10009E5E4();
      goto LABEL_11;
    }
  }

  v14 = v22;
  v15 = v23;
  sub_100024330(v21, v22);
  v16 = sub_1000695F4(v14, v15);
LABEL_11:
  v17 = v16;
  sub_100015F44(v21);
  return v17;
}

uint64_t sub_100068CD4()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  sub_10001E0A8(v0, &v10, &qword_1000C1F48, &qword_1000A21B0);
  if (v11)
  {
    sub_100031E64(&v10, v12);
    v5 = _s5StateVMa();
    sub_10001E0A8(v0 + *(v5 + 20), v4, &qword_1000C1F40, &qword_1000A21A8);
    v6 = sub_10009D964();
    v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
    sub_1000160CC(v4, &qword_1000C1F40, &qword_1000A21A8);
    if (v7 == 1)
    {
      sub_100024330(v12, v12[3]);
      v8 = sub_10009D334();
      sub_100015F44(v12);
      return v8;
    }

    sub_100015F44(v12);
  }

  else
  {
    sub_1000160CC(&v10, &qword_1000C1F48, &qword_1000A21B0);
  }

  return sub_10009E114();
}

unint64_t sub_100068E68()
{
  result = qword_1000C1F28;
  if (!qword_1000C1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F28);
  }

  return result;
}

uint64_t sub_100068EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100068F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v70 = a3;
  v65 = sub_10009D514();
  v61 = *(v65 - 8);
  v5 = *(v61 + 64);
  v6 = __chkstk_darwin(v65);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v58 - v8;
  v9 = sub_10009D524();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  v11 = __chkstk_darwin(v9);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v58 - v13;
  v14 = sub_10009D294();
  v69 = *(v14 - 8);
  v15 = *(v69 + 64);
  v16 = __chkstk_darwin(v14);
  v62 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v58 - v22;
  v24 = *(a1 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v21);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v58 - v30;
  __chkstk_darwin(v29);
  v33 = &v58 - v32;
  v71 = v24;
  v34 = *(v24 + 16);
  v34(&v58 - v32, v3, a1);
  if (swift_dynamicCast())
  {
    v34(v31, v3, a1);
    swift_dynamicCast();
    v35 = v70;
    sub_10009D284();
    v36 = *(v69 + 8);
    v36(v20, v14);
    v37 = sub_10009CF14();
    (*(*(v37 - 8) + 56))(v35, 0, 1, v37);
    v36(v23, v14);
  }

  else
  {
    v58 = v14;
    v38 = v69;
    v39 = v67;
    if (swift_dynamicCast())
    {
      v34(v28, v3, a1);
      v40 = v63;
      v65 = a1;
      swift_dynamicCast();
      sub_10006A2C8(&qword_1000C1FA8, &type metadata accessor for StaticServiceGroup);
      v41 = sub_10009D384();
      v42 = *(v66 + 8);
      v42(v40, v39);
      if (*(v41 + 16))
      {
        v43 = v62;
        v44 = v58;
        (*(v38 + 16))(v62, v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v58);

        v45 = v70;
        sub_10009D284();
        (*(v38 + 8))(v43, v44);
        v46 = 0;
      }

      else
      {

        v46 = 1;
        v45 = v70;
      }

      v56 = sub_10009CF14();
      (*(*(v56 - 8) + 56))(v45, v46, 1, v56);
      v42(v68, v39);
      a1 = v65;
    }

    else
    {
      v48 = v64;
      v47 = v65;
      if (swift_dynamicCast())
      {
        v34(v31, v3, a1);
        v49 = v60;
        swift_dynamicCast();
        v50 = v70;
        sub_10009D504();
        v51 = *(v61 + 8);
        v51(v49, v47);
        v52 = sub_10009CF14();
        (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
        v51(v48, v47);
      }

      else
      {
        v53 = *(v59 + 48);
        v54 = v70;
        sub_10009EAD4();
        v55 = sub_10009CF14();
        (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
      }
    }
  }

  return (*(v71 + 8))(v33, a1);
}

uint64_t sub_1000695F4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = sub_10009D1C4();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009CF54();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10009E5A4();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v38 = &v35 - v15;
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v18 = sub_10009D394();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v21);
  (*(v26 + 16))(&v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  if (swift_dynamicCast())
  {
    (*(v19 + 8))(v23, v18);
    sub_10009E554();
    sub_10009CF44();
    return sub_10009E5E4();
  }

  sub_10009D354();
  v28 = v36;
  v29 = (*(v36 + 88))(v7, v4);
  if (v29 == enum case for ServiceKind.door(_:) || v29 == enum case for ServiceKind.garageDoorOpener(_:) || v29 == enum case for ServiceKind.lockMechanism(_:))
  {
    goto LABEL_12;
  }

  if (v29 == enum case for ServiceKind.securitySystem(_:))
  {
    if ((sub_10009D2F4() & 1) == 0)
    {
      v30 = v39;
      goto LABEL_14;
    }

LABEL_13:
    v30 = v39;
LABEL_14:
    sub_10009E554();
    goto LABEL_15;
  }

  if (v29 == enum case for ServiceKind.window(_:) || v29 == enum case for ServiceKind.windowCovering(_:))
  {
LABEL_12:
    sub_10009D2F4();
    goto LABEL_13;
  }

  sub_10009D2F4();
  v30 = v39;
  sub_10009E554();
  (*(v28 + 8))(v7, v4);
LABEL_15:
  v32 = v40;
  v31 = v41;
  v33 = v38;
  (*(v40 + 32))(v38, v30, v41);
  (*(v32 + 16))(v17, v33, v31);
  sub_10009CF44();
  v34 = sub_10009E5E4();
  (*(v32 + 8))(v33, v31);
  return v34;
}

uint64_t sub_100069BB8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069C20(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069C84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s5StateVMa() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64));

  return sub_1000674C0(v4, a1);
}

uint64_t sub_100069D14()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    sub_100015F44((v0 + v3));
  }

  v6 = v1[5];
  v7 = sub_10009D964();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[6];
  v10 = sub_10009CF94();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v4 + v3;
  v13 = v1[7];
  v14 = sub_10009CEC4();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  sub_100015F44((v5 + v1[8]));

  return _swift_deallocObject(v0, v12 + 1, v2 | 7);
}

uint64_t sub_100069F40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s5StateVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_100067AF0(v4, v5, a1);
}

unint64_t sub_100069FE0()
{
  result = qword_1000C1F60;
  if (!qword_1000C1F60)
  {
    sub_10000375C(&qword_1000C1F50, &qword_1000A21B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F60);
  }

  return result;
}

unint64_t sub_10006A094()
{
  result = qword_1000C1F78;
  if (!qword_1000C1F78)
  {
    sub_10000375C(&qword_1000C1F70, &qword_1000A21D0);
    sub_10000375C(&qword_1000C14C8, &qword_1000A11A8);
    sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F78);
  }

  return result;
}

unint64_t sub_10006A18C()
{
  result = qword_1000C1F80;
  if (!qword_1000C1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F80);
  }

  return result;
}

uint64_t sub_10006A1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1F70, &qword_1000A21D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A250(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C1F70, &qword_1000A21D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A2B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10006A2C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006A310()
{
  sub_10000375C(&qword_1000C1F08, &qword_1000A2190);
  sub_10000375C(&qword_1000C1F00, &qword_1000A2188);
  sub_10000375C(&qword_1000C1EF8, &qword_1000A2180);
  sub_10000375C(&qword_1000C1EF0, &qword_1000A2178);
  sub_10000375C(&qword_1000C1EE8, &qword_1000A2170);
  sub_10000375C(&qword_1000C1EE0, &qword_1000A2168);
  sub_10001CDC8(&qword_1000C1F30, &qword_1000C1EE0, &qword_1000A2168);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006A4E8(void *a1)
{
  v2 = sub_10009CF54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSNumberFormatter) init];
  [v7 setNumberStyle:3];
  [v7 setUsesSignificantDigits:0];
  sub_100033B88();
  isa = sub_10009E8C4(1).super.super.isa;
  [v7 setMultiplier:isa];

  sub_10009CF44();
  v9 = sub_10009CF24().super.isa;
  (*(v3 + 8))(v6, v2);
  [v7 setLocale:v9];

  v10 = [v7 stringFromNumber:a1];
  if (v10)
  {
    v11 = v10;
    v12 = sub_10009E5C4();
  }

  else
  {
    v13 = [a1 description];
    v14 = sub_10009E5C4();
    v16 = v15;

    v18[0] = v14;
    v18[1] = v16;
    v19._countAndFlagsBits = 37;
    v19._object = 0xE100000000000000;
    sub_10009E634(v19);

    return v18[0];
  }

  return v12;
}

uint64_t sub_10006A6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10006A824(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for InFlightProgressView()
{
  result = qword_1000C2008;
  if (!qword_1000C2008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006A994()
{
  sub_10006AA70(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_10006AA70(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_10006AAC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006AA70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009DA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006AAC4()
{
  if (!qword_1000C1590)
  {
    v0 = sub_10009DA14();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C1590);
    }
  }
}

uint64_t sub_10006AB50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_100003714(&qword_1000C2048, &unk_1000A2280);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for AccessoryAndSceneEntity();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_10006AD34(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_100003714(&qword_1000C2048, &unk_1000A2280);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for AccessoryAndSceneEntity();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for SmallSquareTileView()
{
  result = qword_1000C20A8;
  if (!qword_1000C20A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006AF54()
{
  sub_10006AAC4();
  if (v0 <= 0x3F)
  {
    sub_10006B08C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_10006B08C(319, &qword_1000C1810, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_10006B08C(319, &unk_1000C20B8, &type metadata accessor for ContentSizeCategory);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AccessoryAndSceneEntity();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CGSize();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10006B08C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009DA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006B0FC()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    v7 = *(v0 + 16);

    sub_10009E834();
    v8 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_10006B244@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SmallSquareTileView();
  sub_10001E0A8(v1 + *(v12 + 24), v11, &qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009E3A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10006B44C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SmallSquareTileView();
  sub_10001E0A8(v1 + *(v12 + 28), v11, &qword_1000C16C8, &unk_1000A2A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009DA04();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10006B654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_100003714(&qword_1000C2100, &qword_1000A22F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v72 - v5;
  v7 = sub_100003714(&qword_1000C2108, &qword_1000A2300);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v72 - v9;
  v11 = sub_100003714(&qword_1000C2110, &qword_1000A2308);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v72 - v13;
  v73 = sub_100003714(&qword_1000C2118, &qword_1000A2310);
  v15 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v17 = &v72 - v16;
  v74 = sub_100003714(&qword_1000C2120, &qword_1000A2318);
  v18 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v20 = &v72 - v19;
  v75 = sub_100003714(&qword_1000C2128, &qword_1000A2320);
  v21 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v23 = &v72 - v22;
  *v6 = sub_10009DD04();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v24 = &v6[*(sub_100003714(&qword_1000C2130, &qword_1000A2328) + 44)];
  v76 = v2;
  sub_10006BB94(v2, v24);
  LOBYTE(v2) = sub_10009DEC4();
  v25 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v2)
  {
    v25 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10005B0FC(v6, v10, &qword_1000C2100, &qword_1000A22F8);
  v34 = &v10[*(v7 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_10009DED4();
  v36 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v35)
  {
    v36 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_10005B0FC(v10, v14, &qword_1000C2108, &qword_1000A2300);
  v45 = &v14[*(v11 + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = sub_10009DEE4();
  v47 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v46)
  {
    v47 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_10005B0FC(v14, v17, &qword_1000C2110, &qword_1000A2308);
  v56 = &v17[*(v73 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = sub_10009DF04();
  v58 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v57)
  {
    v58 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  sub_10005B0FC(v17, v20, &qword_1000C2118, &qword_1000A2310);
  v67 = &v20[*(v74 + 36)];
  *v67 = v58;
  *(v67 + 1) = v60;
  *(v67 + 2) = v62;
  *(v67 + 3) = v64;
  *(v67 + 4) = v66;
  v67[40] = 0;
  v68 = *(v76 + *(type metadata accessor for SmallSquareTileView() + 40) + 8);
  sub_10009E2F4();
  sub_10009DA74();
  sub_10005B0FC(v20, v23, &qword_1000C2120, &qword_1000A2318);
  v69 = &v23[*(v75 + 36)];
  v70 = v79;
  *v69 = v78;
  *(v69 + 1) = v70;
  *(v69 + 2) = v80;
  sub_10006DCF4();
  sub_10009DFF4();
  return sub_1000160CC(v23, &qword_1000C2128, &qword_1000A2320);
}

uint64_t sub_10006BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v69 = sub_10009D494();
  v67 = *(v69 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v69);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetTileInfo();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003714(&qword_1000C2168, &qword_1000A2330);
  v12 = *(v11 - 8);
  v68 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v65 = &v64 - v14;
  v15 = sub_100003714(&qword_1000C2170, &qword_1000A2338);
  v16 = *(v15 - 8);
  v73 = v15 - 8;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v71 = &v64 - v18;
  v19 = sub_100003714(&qword_1000C2178, &qword_1000A2340);
  v20 = *(v19 - 8);
  v74 = v19 - 8;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19 - 8);
  v75 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v70 = &v64 - v25;
  __chkstk_darwin(v24);
  v72 = &v64 - v26;
  v27 = sub_100003714(&qword_1000C2180, &qword_1000A2348);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v66 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v64 - v31;
  *v32 = sub_10009DC74();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = sub_100003714(&qword_1000C2188, &qword_1000A2350);
  sub_10006C1A0(a1, &v32[*(v33 + 44)]);
  v34 = a1 + *(type metadata accessor for SmallSquareTileView() + 36);
  v35 = v34 + *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  sub_10006E0E4(v35, v10, type metadata accessor for WidgetTileInfo);
  v36 = *(v7 + 36);
  v37 = &v10[*(v7 + 32)];
  v39 = *v37;
  v38 = *(v37 + 1);
  v40 = *&v10[v36];
  v41 = *&v10[v36 + 8];

  sub_10009D484();
  sub_10009D474();
  (*(v67 + 8))(v5, v69);
  sub_10006E14C(v10, type metadata accessor for WidgetTileInfo);
  v42 = (v35 + *(v7 + 36));
  v43 = *v42;
  v44 = v42[1];

  sub_10009DC64();
  v45 = v65;
  sub_10009D9B4();
  LOBYTE(v43) = sub_10009DF04();
  sub_10009D9E4();
  v46 = v45 + *(v68 + 44);
  *v46 = v43;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  sub_10009E2E4();
  sub_10009DAE4();
  v51 = v71;
  sub_10005B0FC(v45, v71, &qword_1000C2168, &qword_1000A2330);
  v52 = (v51 + *(v73 + 44));
  v53 = v82;
  v52[4] = v81;
  v52[5] = v53;
  v52[6] = v83;
  v54 = v78;
  *v52 = v77;
  v52[1] = v54;
  v55 = v80;
  v52[2] = v79;
  v52[3] = v55;
  v56 = v51;
  v57 = v70;
  sub_10005B0FC(v56, v70, &qword_1000C2170, &qword_1000A2338);
  *(v57 + *(v74 + 44)) = 0x3FF0000000000000;
  v58 = v72;
  sub_10005B0FC(v57, v72, &qword_1000C2178, &qword_1000A2340);
  v59 = v66;
  sub_10001E0A8(v32, v66, &qword_1000C2180, &qword_1000A2348);
  v60 = v75;
  sub_10001E0A8(v58, v75, &qword_1000C2178, &qword_1000A2340);
  v61 = v76;
  sub_10001E0A8(v59, v76, &qword_1000C2180, &qword_1000A2348);
  v62 = sub_100003714(&qword_1000C2190, &qword_1000A2358);
  sub_10001E0A8(v60, v61 + *(v62 + 48), &qword_1000C2178, &qword_1000A2340);
  sub_1000160CC(v58, &qword_1000C2178, &qword_1000A2340);
  sub_1000160CC(v32, &qword_1000C2180, &qword_1000A2348);
  sub_1000160CC(v60, &qword_1000C2178, &qword_1000A2340);
  return sub_1000160CC(v59, &qword_1000C2180, &qword_1000A2348);
}

uint64_t sub_10006C1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a2;
  v211 = sub_100003714(&qword_1000C2198, &qword_1000A2360);
  v3 = *(*(v211 - 8) + 64);
  __chkstk_darwin(v211);
  v181 = (&v171 - v4);
  v178 = type metadata accessor for InFlightProgressView();
  v5 = *(*(v178 - 8) + 64);
  v6 = __chkstk_darwin(v178);
  v179 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v180 = (&v171 - v8);
  v208 = sub_100003714(&qword_1000C21A0, &qword_1000A2368);
  v9 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v210 = &v171 - v10;
  v209 = sub_100003714(&qword_1000C21A8, &unk_1000A2370);
  v11 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v207 = (&v171 - v12);
  v13 = sub_100003714(&qword_1000C18C0, &qword_1000A1908);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v204 = &v171 - v15;
  v200 = sub_10009E324();
  v199 = *(v200 - 8);
  v16 = *(v199 + 64);
  __chkstk_darwin(v200);
  v193 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_10009DA04();
  v184 = *(v185 - 8);
  v18 = *(v184 + 64);
  v19 = __chkstk_darwin(v185);
  v183 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v182 = &v171 - v21;
  v191 = sub_100003714(&qword_1000C21B0, &qword_1000A2380);
  v22 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v191);
  v194 = &v171 - v23;
  v192 = sub_100003714(&qword_1000C21B8, &qword_1000A2388);
  v24 = *(*(v192 - 8) + 64);
  __chkstk_darwin(v192);
  v198 = &v171 - v25;
  v196 = sub_100003714(&qword_1000C21C0, &qword_1000A2390);
  v26 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v197 = &v171 - v27;
  v195 = sub_100003714(&qword_1000C21C8, &qword_1000A2398);
  v28 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v203 = &v171 - v29;
  v202 = sub_100003714(&qword_1000C21D0, &qword_1000A23A0);
  v30 = *(*(v202 - 8) + 64);
  v31 = __chkstk_darwin(v202);
  v205 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v201 = &v171 - v34;
  __chkstk_darwin(v33);
  v206 = &v171 - v35;
  v36 = sub_100003714(&qword_1000C21D8, &qword_1000A23A8);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v215 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v219 = &v171 - v40;
  v190 = sub_10009DD14();
  v189 = *(v190 - 8);
  v41 = *(v189 + 64);
  v42 = __chkstk_darwin(v190);
  v218 = &v171 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v217 = &v171 - v44;
  v212 = sub_100003714(&qword_1000C21E0, &unk_1000A23B0);
  v45 = *(*(v212 - 8) + 64);
  __chkstk_darwin(v212);
  v47 = &v171 - v46;
  v213 = sub_100003714(&qword_1000C21E8, &unk_1000A29C0);
  v48 = *(*(v213 - 8) + 64);
  __chkstk_darwin(v213);
  v50 = (&v171 - v49);
  v188 = sub_10009DC44();
  v187 = *(v188 - 8);
  v51 = *(v187 + 64);
  __chkstk_darwin(v188);
  v186 = &v171 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TileIconView();
  v54 = *(*(v53 - 8) + 64);
  v55 = __chkstk_darwin(v53);
  v57 = &v171 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v59 = &v171 - v58;
  v60 = sub_100003714(&qword_1000C21F0, &qword_1000A23C0);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60 - 8);
  v214 = &v171 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v65 = &v171 - v64;
  v66 = a1;
  v67 = a1 + *(type metadata accessor for SmallSquareTileView() + 36);
  v68 = v67 + *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  v69 = sub_10008CFDC();
  if (v70)
  {
    v71 = v69;
    v72 = v70;
    *v50 = sub_10009E2D4();
    v50[1] = v73;
    v74 = sub_100003714(&qword_1000C2248, &unk_1000A2520);
    sub_10006D880(v66, v71, v72, (v50 + *(v74 + 44)));

    sub_10009E2F4();
    sub_10009DA74();
    v75 = (v50 + *(v213 + 36));
    v76 = v221;
    *v75 = v220;
    v75[1] = v76;
    v75[2] = v222;
    sub_10001E0A8(v50, v47, &qword_1000C21E8, &unk_1000A29C0);
    swift_storeEnumTagMultiPayload();
    sub_10006DFC8();
    sub_10006E080();
    sub_10009DD94();
    sub_1000160CC(v50, &qword_1000C21E8, &unk_1000A29C0);
    v77 = v66;
    goto LABEL_14;
  }

  v175 = v59;
  v176 = v53;
  v78 = *v66;
  v177 = v66;
  if (*(v66 + 8) != 1)
  {

    sub_10009E834();
    v81 = sub_10009DEA4();
    sub_10009D8C4();

    v82 = v186;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v78, 0);
    (*(v187 + 8))(v82, v188);
    v79 = v189;
    if (v223)
    {
      goto LABEL_5;
    }

LABEL_7:
    v80 = 8;
    goto LABEL_8;
  }

  v79 = v189;
  if ((v78 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v80 = 9;
LABEL_8:
  v83 = v47;
  v84 = type metadata accessor for WidgetTileInfo();
  v85 = (v68 + v84[v80]);
  v86 = v85[1];
  v172 = *v85;

  v87 = v68 + v84[10];
  sub_10009D594();
  v88 = v68 + v84[11];
  sub_10009D594();
  v89 = v176;
  if (*(v68 + v84[13]) == 1)
  {
    v90 = *(v68 + v84[12]);
  }

  else
  {
    v90 = sub_10009E174();
  }

  v174 = sub_10009E304();
  v173 = v91;
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v92 = v89[5];
  *&v57[v92] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v93 = &v57[v89[6]];
  *v93 = swift_getKeyPath();
  v93[8] = 0;
  v94 = v89[7];
  *&v57[v94] = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v95 = &v57[v89[8]];
  *v95 = v172;
  *(v95 + 1) = v86;
  v96 = *(v79 + 16);
  v97 = v190;
  v96(&v57[v89[9]], v217, v190);
  v96(&v57[v89[10]], v218, v97);
  sub_10009E174();
  LOBYTE(v96) = sub_10009E134();

  if (v96)
  {
    v98 = sub_10009E1B4();

    v90 = v98;
  }

  v99 = *(v189 + 8);
  v100 = v190;
  v99(v218, v190);
  v99(v217, v100);
  *&v57[v89[11]] = v90;
  *&v57[v89[12]] = 0x402E000000000000;
  *&v57[v89[13]] = 0x402E000000000000;
  v101 = &v57[v89[14]];
  v102 = v173;
  *v101 = v174;
  v101[1] = v102;
  v103 = v175;
  sub_10006DF64(v57, v175);
  sub_10006E0E4(v103, v83, type metadata accessor for TileIconView);
  swift_storeEnumTagMultiPayload();
  sub_10006DFC8();
  sub_10006E080();
  sub_10009DD94();
  sub_10006E14C(v103, type metadata accessor for TileIconView);
  v77 = v177;
LABEL_14:
  v104 = type metadata accessor for WidgetTileInfo();
  v105 = v219;
  if (*(v68 + *(v104 + 52)) != 1 || *(v68 + *(v104 + 68)) == 1)
  {
    v106 = sub_10009E214();
    v107 = sub_10009DDD4();
    v108 = *v77;
    if (*(v77 + 8) == 1)
    {
      v109 = 1.0;
      if (v108)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v110 = *v77;

      sub_10009E834();
      v111 = sub_10009DEA4();
      sub_10009D8C4();

      v112 = v186;
      sub_10009DC34();
      swift_getAtKeyPath();
      sub_10004D760(v108, 0);
      (*(v187 + 8))(v112, v188);
      v109 = 1.0;
      if (v223)
      {
LABEL_23:
        v218 = v65;
        v123 = sub_10006B0FC();
        v124 = v199;
        v125 = &enum case for BlendMode.normal(_:);
        if ((v123 & 1) == 0)
        {
          v125 = &enum case for BlendMode.difference(_:);
        }

        v126 = v193;
        v127 = v200;
        (*(v199 + 104))(v193, *v125, v200);
        v128 = v194;
        (*(v124 + 32))(&v194[*(v191 + 36)], v126, v127);
        *v128 = v106;
        *(v128 + 8) = v107;
        *(v128 + 16) = v109;
        v129 = sub_10009DF24();
        v130 = v204;
        (*(*(v129 - 8) + 56))(v204, 1, 1, v129);
        v131 = sub_10009DF64();
        sub_1000160CC(v130, &qword_1000C18C0, &qword_1000A1908);
        KeyPath = swift_getKeyPath();
        v133 = v198;
        sub_10005B0FC(v128, v198, &qword_1000C21B0, &qword_1000A2380);
        v134 = (v133 + *(v192 + 36));
        *v134 = KeyPath;
        v134[1] = v131;
        sub_10009E2F4();
        sub_10009DA74();
        v135 = v197;
        sub_10005B0FC(v133, v197, &qword_1000C21B8, &qword_1000A2388);
        v136 = (v135 + *(v196 + 36));
        v137 = v224;
        *v136 = v223;
        v136[1] = v137;
        v136[2] = v225;
        v138 = v203;
        sub_10005B0FC(v135, v203, &qword_1000C21C0, &qword_1000A2390);
        *(v138 + *(v195 + 36)) = 257;
        LOBYTE(KeyPath) = sub_10009DF04();
        v139 = sub_10009DEF4();
        sub_10009DEF4();
        if (sub_10009DEF4() != KeyPath)
        {
          v139 = sub_10009DEF4();
        }

        sub_10009D9E4();
        v141 = v140;
        v143 = v142;
        v145 = v144;
        v147 = v146;
        v148 = v138;
        v149 = v201;
        sub_10005B0FC(v148, v201, &qword_1000C21C8, &qword_1000A2398);
        v150 = v149 + *(v202 + 36);
        *v150 = v139;
        *(v150 + 8) = v141;
        *(v150 + 16) = v143;
        *(v150 + 24) = v145;
        *(v150 + 32) = v147;
        *(v150 + 40) = 0;
        v151 = v206;
        sub_10005B0FC(v149, v206, &qword_1000C21D0, &qword_1000A23A0);
        v152 = v205;
        sub_10001E0A8(v151, v205, &qword_1000C21D0, &qword_1000A23A0);
        v153 = v207;
        *v207 = 0;
        *(v153 + 8) = 1;
        v154 = sub_100003714(&qword_1000C2218, &qword_1000A24C8);
        sub_10001E0A8(v152, v153 + *(v154 + 48), &qword_1000C21D0, &qword_1000A23A0);
        sub_1000160CC(v152, &qword_1000C21D0, &qword_1000A23A0);
        sub_10001E0A8(v153, v210, &qword_1000C21A8, &unk_1000A2370);
        swift_storeEnumTagMultiPayload();
        sub_10001CDC8(&qword_1000C2220, &qword_1000C21A8, &unk_1000A2370);
        sub_10001CDC8(&qword_1000C2228, &qword_1000C2198, &qword_1000A2360);
        sub_10009DD94();
        sub_1000160CC(v153, &qword_1000C21A8, &unk_1000A2370);
        sub_1000160CC(v151, &qword_1000C21D0, &qword_1000A23A0);
        v155 = 0;
        v65 = v218;
        goto LABEL_28;
      }
    }

    v113 = v182;
    sub_10006B44C(v182);
    v114 = v65;
    v115 = v107;
    v116 = v106;
    v117 = v184;
    v118 = v183;
    v119 = v185;
    (*(v184 + 104))(v183, enum case for ColorScheme.light(_:), v185);
    v120 = sub_10009D9F4();
    v121 = *(v117 + 8);
    v121(v118, v119);
    v122 = v113;
    v105 = v219;
    v121(v122, v119);
    v106 = v116;
    v107 = v115;
    v65 = v114;
    if (v120)
    {
      v109 = 0.7;
    }

    else
    {
      v109 = 0.5;
    }

    goto LABEL_23;
  }

  v155 = 1;
  if (sub_100018634())
  {
    v162 = sub_100018634();
    v163 = swift_getKeyPath();
    v164 = v180;
    *v180 = v163;
    sub_100003714(&qword_1000C15F8, &qword_1000A2510);
    swift_storeEnumTagMultiPayload();
    v165 = v178;
    v166 = *(v178 + 20);
    *(v164 + v166) = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v167 = v164 + *(v165 + 24);
    *v167 = swift_getKeyPath();
    *(v167 + 8) = 0;
    *(v164 + *(v165 + 28)) = v162 & 1;
    v168 = v179;
    sub_10006E0E4(v164, v179, type metadata accessor for InFlightProgressView);
    v169 = v181;
    *v181 = 0;
    *(v169 + 8) = 1;
    v170 = sub_100003714(&qword_1000C2240, &qword_1000A2518);
    sub_10006E0E4(v168, v169 + *(v170 + 48), type metadata accessor for InFlightProgressView);
    sub_10006E14C(v168, type metadata accessor for InFlightProgressView);
    sub_10001E0A8(v169, v210, &qword_1000C2198, &qword_1000A2360);
    swift_storeEnumTagMultiPayload();
    sub_10001CDC8(&qword_1000C2220, &qword_1000C21A8, &unk_1000A2370);
    sub_10001CDC8(&qword_1000C2228, &qword_1000C2198, &qword_1000A2360);
    sub_10009DD94();
    sub_1000160CC(v169, &qword_1000C2198, &qword_1000A2360);
    sub_10006E14C(v164, type metadata accessor for InFlightProgressView);
    v155 = 0;
  }

LABEL_28:
  v156 = sub_100003714(&qword_1000C2230, &qword_1000A24D0);
  (*(*(v156 - 8) + 56))(v105, v155, 1, v156);
  v157 = v214;
  sub_10001E0A8(v65, v214, &qword_1000C21F0, &qword_1000A23C0);
  v158 = v215;
  sub_10001E0A8(v105, v215, &qword_1000C21D8, &qword_1000A23A8);
  v159 = v216;
  sub_10001E0A8(v157, v216, &qword_1000C21F0, &qword_1000A23C0);
  v160 = sub_100003714(&qword_1000C2238, &qword_1000A24D8);
  sub_10001E0A8(v158, v159 + *(v160 + 48), &qword_1000C21D8, &qword_1000A23A8);
  sub_1000160CC(v105, &qword_1000C21D8, &qword_1000A23A8);
  sub_1000160CC(v65, &qword_1000C21F0, &qword_1000A23C0);
  sub_1000160CC(v158, &qword_1000C21D8, &qword_1000A23A8);
  return sub_1000160CC(v157, &qword_1000C21F0, &qword_1000A23C0);
}

uint64_t sub_10006D880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a4;
  v42 = sub_100003714(&qword_1000C2250, &qword_1000A2A20);
  v7 = *(v42 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v42);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v39 - v11;
  v12 = sub_10009E3A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10009E164();
  v17 = a1 + *(type metadata accessor for SmallSquareTileView() + 36);
  v18 = *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  sub_10006B244(v16);
  sub_10006B0FC();
  v40 = sub_10001D53C(v16);
  (*(v13 + 8))(v16, v12);
  *&v55[0] = a2;
  *(&v55[0] + 1) = a3;
  sub_1000037A4();

  v19 = sub_10009DFE4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  LOBYTE(v18) = v23 & 1;
  LOBYTE(v48) = v23 & 1;
  v27 = swift_getKeyPath();
  LOBYTE(v55[0]) = 0;
  sub_10009DF34();
  v28 = sub_10009DF84();
  v29 = swift_getKeyPath();
  *&v48 = v19;
  *(&v48 + 1) = v21;
  LOBYTE(v49) = v18;
  *(&v49 + 1) = v25;
  LOWORD(v50) = 256;
  *(&v50 + 1) = KeyPath;
  LOBYTE(v51) = 1;
  *(&v51 + 1) = v27;
  *&v52 = 1;
  BYTE8(v52) = 0;
  *&v53 = v29;
  *(&v53 + 1) = v28;
  v54 = v40;
  v46 = a2;
  v47 = a3;

  sub_100003714(&qword_1000C2258, &unk_1000A2590);
  sub_10006E1BC();
  sub_10009E024();
  v30 = v41;
  sub_10009E014();
  v55[3] = v51;
  v55[4] = v52;
  v55[5] = v53;
  v56 = v54;
  v55[0] = v48;
  v55[1] = v49;
  v55[2] = v50;
  sub_1000160CC(v55, &qword_1000C2258, &unk_1000A2590);
  v31 = v7[2];
  v32 = v44;
  v33 = v42;
  v31(v44, v30, v42);
  v34 = v45;
  *v45 = v43;
  v34[1] = 0x3FF0000000000000;
  v35 = v34;
  v36 = sub_100003714(&qword_1000C22D8, qword_1000A2AF0);
  v31(v35 + *(v36 + 48), v32, v33);

  v37 = v7[1];
  v37(v30, v33);
  v37(v32, v33);
}

unint64_t sub_10006DCF4()
{
  result = qword_1000C2138;
  if (!qword_1000C2138)
  {
    sub_10000375C(&qword_1000C2128, &qword_1000A2320);
    sub_10006DDDC(&qword_1000C2140, &qword_1000C2120, &qword_1000A2318, sub_10006DDAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2138);
  }

  return result;
}

uint64_t sub_10006DDDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006DE90()
{
  result = qword_1000C2158;
  if (!qword_1000C2158)
  {
    sub_10000375C(&qword_1000C2108, &qword_1000A2300);
    sub_10001CDC8(&qword_1000C2160, &qword_1000C2100, &qword_1000A22F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2158);
  }

  return result;
}

uint64_t sub_10006DF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileIconView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006DFC8()
{
  result = qword_1000C21F8;
  if (!qword_1000C21F8)
  {
    sub_10000375C(&qword_1000C21E8, &unk_1000A29C0);
    sub_10001CDC8(&qword_1000C2200, &qword_1000C2208, &qword_1000A2490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C21F8);
  }

  return result;
}

unint64_t sub_10006E080()
{
  result = qword_1000C2210;
  if (!qword_1000C2210)
  {
    type metadata accessor for TileIconView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2210);
  }

  return result;
}

uint64_t sub_10006E0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006E14C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006E1BC()
{
  result = qword_1000C2260;
  if (!qword_1000C2260)
  {
    sub_10000375C(&qword_1000C2258, &unk_1000A2590);
    sub_10006E274();
    sub_10001CDC8(&qword_1000C22C8, &qword_1000C22D0, &qword_1000A25D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2260);
  }

  return result;
}

unint64_t sub_10006E274()
{
  result = qword_1000C2268;
  if (!qword_1000C2268)
  {
    sub_10000375C(&qword_1000C2270, &unk_1000A2AC0);
    sub_10006E32C();
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2268);
  }

  return result;
}

unint64_t sub_10006E32C()
{
  result = qword_1000C2278;
  if (!qword_1000C2278)
  {
    sub_10000375C(&qword_1000C2280, &unk_1000A25A0);
    sub_10006E3E4();
    sub_10001CDC8(&qword_1000C22B8, &qword_1000C22C0, &unk_1000A25C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2278);
  }

  return result;
}

unint64_t sub_10006E3E4()
{
  result = qword_1000C2288;
  if (!qword_1000C2288)
  {
    sub_10000375C(&qword_1000C2290, &unk_1000A2AD0);
    sub_10006E49C();
    sub_10001CDC8(&qword_1000C22A8, &qword_1000C22B0, &unk_1000A2AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2288);
  }

  return result;
}

unint64_t sub_10006E49C()
{
  result = qword_1000C2298;
  if (!qword_1000C2298)
  {
    sub_10000375C(&qword_1000C22A0, &unk_1000A25B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2298);
  }

  return result;
}

uint64_t sub_10006E520()
{
  sub_10000375C(&qword_1000C2128, &qword_1000A2320);
  sub_10006DCF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006E598(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[8] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_10009DD14();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_10006E738(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v14 = sub_10009DD14();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[9];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t type metadata accessor for TileIconView()
{
  result = qword_1000C2338;
  if (!qword_1000C2338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006E910()
{
  sub_10006AAC4();
  if (v0 <= 0x3F)
  {
    sub_10006EA2C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_10006EA2C(319, &qword_1000C1810, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_10009DD14();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006EA2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009DA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006EA9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TileIconView();
  sub_10006F6BC(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009DA04();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_10006EC8C@<D0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v80 = sub_10009DA04();
  v79 = *(v80 - 8);
  v2 = *(v79 + 64);
  v3 = __chkstk_darwin(v80);
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v77 = &v77 - v5;
  v85 = sub_10009D174();
  v84 = *(v85 - 8);
  v6 = *(v84 + 64);
  __chkstk_darwin(v85);
  v92 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C18C0, &qword_1000A1908);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v77 - v10;
  v12 = sub_10009DC44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v90 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003714(&qword_1000C2398, &qword_1000A2638);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v77 - v18;
  v88 = sub_100003714(&qword_1000C23A0, &qword_1000A2640);
  v20 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v22 = &v77 - v21;
  v23 = type metadata accessor for TileIconView();
  v24 = (v1 + *(v23 + 32));
  v25 = *v24;
  v26 = v24[1];

  sub_10009E224();
  v27 = v23;
  v28 = v1 + *(v23 + 24);
  v29 = *v28;
  v91 = *(v28 + 8);
  v86 = v13;
  v87 = v12;
  v30 = v1;
  if (v91 == 1)
  {
    if (v29)
    {
LABEL_3:
      v31 = 10;
      goto LABEL_6;
    }
  }

  else
  {

    sub_10009E834();
    v83 = v22;
    v32 = v13;
    v33 = sub_10009DEA4();
    v34 = v90;
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v29, 0);
    v35 = v32;
    v22 = v83;
    (*(v35 + 8))(v34, v12);
    if (v96)
    {
      goto LABEL_3;
    }
  }

  v31 = 9;
LABEL_6:
  v36 = v27[v31];
  v37 = sub_10009DD14();
  v38 = *(v37 - 8);
  v39 = v30 + v36;
  v40 = v30;
  (*(v38 + 16))(v19, v39, v37);
  (*(v38 + 56))(v19, 0, 1, v37);
  v83 = sub_10009E234();

  sub_1000160CC(v19, &qword_1000C2398, &qword_1000A2638);
  v41 = *(v30 + v27[13]);
  v42 = sub_10009DF24();
  (*(*(v42 - 8) + 56))(v11, 1, 1, v42);
  v82 = sub_10009DF64();
  sub_1000160CC(v11, &qword_1000C18C0, &qword_1000A1908);
  KeyPath = swift_getKeyPath();
  v43 = *(v30 + v27[11]);
  *(&v97 + 1) = &type metadata for Color;
  *&v98 = &protocol witness table for Color;
  *&v96 = v43;

  v44 = sub_10009E174();
  v94 = &type metadata for Color;
  v95 = &protocol witness table for Color;
  v93 = v44;
  sub_10009D144();
  if (v91)
  {
    v45 = v86;
    if ((v29 & 1) == 0)
    {
LABEL_8:
      v46 = v92;
      sub_10009D164();
      goto LABEL_11;
    }
  }

  else
  {

    sub_10009E834();
    v47 = sub_10009DEA4();
    sub_10009D8C4();

    v48 = v90;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v29, 0);
    v45 = v86;
    (*(v86 + 8))(v48, v87);
    if (v96 != 1)
    {
      goto LABEL_8;
    }
  }

  v46 = v92;
  sub_10009D154();
LABEL_11:
  v49 = *(&v97 + 1);
  v50 = sub_100024330(&v96, *(&v97 + 1));
  v51 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v50);
  (*(v53 + 16))(&v77 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_10009DA84();
  (*(v84 + 8))(v46, v85);
  sub_100015F44(&v96);
  if (v91)
  {
    v55 = 1.0;
    if (v29)
    {
      goto LABEL_18;
    }
  }

  else
  {

    sub_10009E834();
    v56 = sub_10009DEA4();
    sub_10009D8C4();

    v57 = v90;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v29, 0);
    (*(v45 + 8))(v57, v87);
    v55 = 1.0;
    if (v96)
    {
      goto LABEL_18;
    }
  }

  v58 = v77;
  sub_10006EA9C(v77);
  v59 = v79;
  v60 = v78;
  v61 = v80;
  (*(v79 + 104))(v78, enum case for ColorScheme.light(_:), v80);
  v62 = sub_10009D9F4();
  v63 = *(v59 + 8);
  v63(v60, v61);
  v63(v58, v61);
  if (v62)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.7;
  }

LABEL_18:
  v64 = &v22[*(v88 + 36)];
  *v64 = swift_getKeyPath();
  v64[8] = 0;
  v65 = type metadata accessor for WidgetBlendMode(0);
  v66 = *(v65 + 20);
  *&v64[v66] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v67 = &v64[*(v65 + 24)];
  *v67 = swift_getKeyPath();
  v67[8] = 0;
  v68 = KeyPath;
  *v22 = v83;
  *(v22 + 1) = v68;
  *(v22 + 2) = v82;
  *(v22 + 12) = 257;
  *(v22 + 4) = v54;
  *(v22 + 5) = v55;
  v69 = *(v40 + v27[12]);
  v70 = (v40 + v27[14]);
  v71 = *v70;
  v72 = v70[1];
  sub_10009DA74();
  v73 = v89;
  sub_10006F64C(v22, v89);
  v74 = (v73 + *(sub_100003714(&qword_1000C23A8, &qword_1000A2700) + 36));
  v75 = v97;
  *v74 = v96;
  v74[1] = v75;
  result = *&v98;
  v74[2] = v98;
  return result;
}

uint64_t sub_10006F64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C23A0, &qword_1000A2640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006F730()
{
  result = qword_1000C23B0;
  if (!qword_1000C23B0)
  {
    sub_10000375C(&qword_1000C23A8, &qword_1000A2700);
    sub_10006F7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23B0);
  }

  return result;
}

unint64_t sub_10006F7BC()
{
  result = qword_1000C23B8;
  if (!qword_1000C23B8)
  {
    sub_10000375C(&qword_1000C23A0, &qword_1000A2640);
    sub_10006F848();
    sub_10006FAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23B8);
  }

  return result;
}

unint64_t sub_10006F848()
{
  result = qword_1000C23C0;
  if (!qword_1000C23C0)
  {
    sub_10000375C(&qword_1000C23C8, &qword_1000A2708);
    sub_10006F8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23C0);
  }

  return result;
}

unint64_t sub_10006F8D4()
{
  result = qword_1000C23D0;
  if (!qword_1000C23D0)
  {
    sub_10000375C(&qword_1000C23D8, &qword_1000A2710);
    sub_10006F98C();
    sub_10001CDC8(&qword_1000C2400, &qword_1000C2408, &qword_1000A2728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23D0);
  }

  return result;
}

unint64_t sub_10006F98C()
{
  result = qword_1000C23E0;
  if (!qword_1000C23E0)
  {
    sub_10000375C(&qword_1000C23E8, &qword_1000A2718);
    sub_10006FA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23E0);
  }

  return result;
}

unint64_t sub_10006FA18()
{
  result = qword_1000C23F0;
  if (!qword_1000C23F0)
  {
    sub_10000375C(&qword_1000C23F8, &qword_1000A2720);
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23F0);
  }

  return result;
}

unint64_t sub_10006FAD0()
{
  result = qword_1000C2410;
  if (!qword_1000C2410)
  {
    type metadata accessor for WidgetBlendMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2410);
  }

  return result;
}

double sub_10006FB28@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10009E2C4();
  v12[3] = v2;
  v12[4] = &protocol witness table for Material;
  sub_100031E00(v12);
  sub_10009E2B4();
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  v7 = 0u;
  v6 = 0u;
  v5[3] = v2;
  v5[4] = &protocol witness table for Material;
  sub_100031E00(v5);
  sub_10009E2A4();
  sub_10009E164();
  sub_10009D974();
  result = *&v13;
  v4 = v14;
  *a1 = v13;
  *(a1 + 16) = v4;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_10006FC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AccessoryAndSceneEntity();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006FD38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AccessoryAndSceneEntity();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10006FE60()
{
  sub_10006FEFC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryAndSceneEntity();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006FEFC()
{
  if (!qword_1000C1818)
  {
    sub_10009E3A4();
    v0 = sub_10009DA14();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C1818);
    }
  }
}

uint64_t sub_10006FF70()
{
  sub_10009DDC4();
  sub_10009DDC4();
  sub_10009E174();
  sub_10009D974();
  sub_100003714(&qword_1000C2520, &qword_1000A27F8);
  sub_10001CDC8(&qword_1000C2528, &qword_1000C2520, &qword_1000A27F8);
  v1 = swift_allocObject();
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  return sub_10009D144();
}

uint64_t sub_1000700B8()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = objc_opt_self();
  v3 = [v2 traitCollectionWithUserInterfaceStyle:1];
  v4 = [v1 resolvedColorWithTraitCollection:v3];

  sub_10009E104();
  v5 = [v0 secondaryLabelColor];
  v6 = [v2 traitCollectionWithUserInterfaceStyle:2];
  v7 = [v5 resolvedColorWithTraitCollection:v6];

  sub_10009E104();
  return sub_10009D144();
}

uint64_t sub_100070210()
{
  if (qword_1000C0AD8 != -1)
  {
    swift_once();
  }

  *(&v10 + 1) = &type metadata for Color;
  *&v9 = qword_1000C8310;

  sub_10009E164();
  sub_10009D974();
  sub_100003714(&qword_1000C2520, &qword_1000A27F8);
  sub_10001CDC8(&qword_1000C2528, &qword_1000C2520, &qword_1000A27F8);
  v5 = swift_allocObject();
  *(v5 + 16) = v6;
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  if (qword_1000C0AC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000C0AD0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C0AB8;
  swift_retain_n();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1000C0AC0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_10009D974();
  v4 = swift_allocObject();
  *(v4 + 16) = v9;
  *(v4 + 32) = v10;
  *(v4 + 48) = &protocol witness table for Color;
  return sub_10009D144();
}

double sub_100070504@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  v5 = sub_10009D174();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v63 - v11;
  v13 = sub_100003714(&qword_1000C24B0, &qword_1000A2788);
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  __chkstk_darwin(v13);
  v16 = &v63 - v15;
  v17 = sub_100003714(&qword_1000C24B8, &qword_1000A2790);
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = *(v69 + 64);
  __chkstk_darwin(v17);
  v67 = &v63 - v19;
  v66 = sub_100003714(&qword_1000C24C0, &qword_1000A2798);
  v20 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v63 = &v63 - v21;
  v68 = a1;
  v22 = sub_10009DDE4();
  v65 = type metadata accessor for WidgetTileViewToggleStyle(0);
  v23 = *(v65 + 20);
  v73 = v3;
  v24 = v3 + v23;
  v25 = sub_100025AD4();
  v64 = v24;
  if ((v25 & 1) == 0 || (v26 = *(type metadata accessor for AccessoryAndSceneEntity() + 24), (v22 & 1) == (sub_100017C60() & 1)))
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((sub_100017C60() & 1) == 0)
  {
LABEL_4:
    v27 = 0;
    goto LABEL_7;
  }

  v28 = v24 + *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  v27 = *(v28 + *(type metadata accessor for WidgetTileInfo() + 52));
LABEL_7:
  sub_10009E154();
  v29 = sub_10009E1A4();

  *(&v79 + 1) = &type metadata for Color;
  *&v80 = &protocol witness table for Color;
  *&v78 = v29;
  sub_10009E154();
  v30 = sub_10009E1A4();

  v76 = &type metadata for Color;
  v77 = &protocol witness table for Color;
  v75 = v30;
  sub_10009D144();
  if (v27)
  {
    sub_10009D154();
    v31 = *(&v79 + 1);
    v32 = sub_100024330(&v78, *(&v79 + 1));
    v33 = *(*(v31 - 8) + 64);
    __chkstk_darwin(v32);
    (*(v35 + 16))(&v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = sub_10009DA84();
    v37 = *(v6 + 8);
    v37(v12, v5);
    sub_100015F44(&v78);
    v75 = v36;
    sub_100070210();
    sub_10009D154();
  }

  else
  {
    sub_10009D164();
    v38 = *(&v79 + 1);
    v39 = sub_100024330(&v78, *(&v79 + 1));
    v40 = *(*(v38 - 8) + 64);
    __chkstk_darwin(v39);
    (*(v42 + 16))(&v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = sub_10009DA84();
    v37 = *(v6 + 8);
    v37(v12, v5);
    sub_100015F44(&v78);
    v75 = v43;
    sub_100070210();
    sub_10009D164();
  }

  v44 = *(&v79 + 1);
  v45 = sub_100024330(&v78, *(&v79 + 1));
  v46 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v45);
  (*(v48 + 16))(&v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_10009DA84();
  v37(v10, v5);
  v50 = sub_100015F44(&v78);
  *&v78 = v49;
  __chkstk_darwin(v50);
  sub_100003714(&qword_1000C24C8, &qword_1000A27A0);
  sub_10007139C();
  sub_10009D984();
  sub_10001CDC8(&qword_1000C2510, &qword_1000C24B0, &qword_1000A2788);
  v51 = v67;
  v52 = v72;
  sub_10009E004();
  (*(v71 + 8))(v16, v52);
  v53 = v63;
  (*(v69 + 32))(v63, v51, v70);
  v54 = *(v66 + 52);
  v55 = sub_10009CF14();
  (*(*(v55 - 8) + 16))(v53 + v54, v64, v55);
  v56 = (v73 + *(v65 + 24));
  v57 = *v56;
  v58 = v56[1];
  sub_10009E2F4();
  sub_10009DA74();
  v59 = v74;
  sub_100071564(v53, v74);
  v60 = (v59 + *(sub_100003714(&qword_1000C2518, &qword_1000A27C0) + 36));
  v61 = v79;
  *v60 = v78;
  v60[1] = v61;
  result = *&v80;
  v60[2] = v80;
  return result;
}

uint64_t sub_100070CF4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_10009DA04();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin(v3);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D174();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = sub_10009DDF4();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100003714(&qword_1000C24E0, &qword_1000A27A8);
  v18 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v20 = &v55 - v19;
  sub_10009DE04();
  sub_10006FF70();
  if (a1)
  {
    sub_10009D154();
    v21 = v65;
    v22 = sub_100024330(v64, v65);
    v23 = *(*(v21 - 8) + 64);
    __chkstk_darwin(v22);
    (*(v25 + 16))(&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v56 = sub_10009DA84();
    v26 = *(v7 + 8);
    v26(v13, v6);
    sub_100015F44(v64);
    sub_1000700B8();
    sub_10009D154();
    v27 = v65;
    v28 = sub_100024330(v64, v65);
    v29 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v28);
    (*(v31 + 16))(&v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = sub_10009DA84();
    v26(v11, v6);
    sub_100015F44(v64);
    v33 = &enum case for ColorScheme.light(_:);
  }

  else
  {
    sub_10009D164();
    v34 = v65;
    v35 = sub_100024330(v64, v65);
    v36 = *(*(v34 - 8) + 64);
    __chkstk_darwin(v35);
    (*(v38 + 16))(&v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    v56 = sub_10009DA84();
    v39 = *(v7 + 8);
    v39(v13, v6);
    sub_100015F44(v64);
    sub_1000700B8();
    sub_10009D164();
    v40 = v65;
    v41 = sub_100024330(v64, v65);
    v42 = *(*(v40 - 8) + 64);
    __chkstk_darwin(v41);
    (*(v44 + 16))(&v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = sub_10009DA84();
    v39(v11, v6);
    sub_100015F44(v64);
    v33 = &enum case for ColorScheme.dark(_:);
  }

  (*(v58 + 32))(v20, v17, v59);
  v45 = &v20[*(v57 + 36)];
  *v45 = v56;
  v45[1] = v32;
  KeyPath = swift_getKeyPath();
  v48 = v60;
  v47 = v61;
  v49 = v62;
  (*(v61 + 104))(v60, *v33, v62);
  v50 = sub_100003714(&qword_1000C24C8, &qword_1000A27A0);
  v51 = v63;
  v52 = (v63 + *(v50 + 36));
  v53 = sub_100003714(&qword_1000C2508, &qword_1000A3280);
  (*(v47 + 32))(v52 + *(v53 + 28), v48, v49);
  *v52 = KeyPath;
  return sub_1000715DC(v20, v51);
}

unint64_t sub_10007139C()
{
  result = qword_1000C24D0;
  if (!qword_1000C24D0)
  {
    sub_10000375C(&qword_1000C24C8, &qword_1000A27A0);
    sub_100071454();
    sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C24D0);
  }

  return result;
}

unint64_t sub_100071454()
{
  result = qword_1000C24D8;
  if (!qword_1000C24D8)
  {
    sub_10000375C(&qword_1000C24E0, &qword_1000A27A8);
    sub_10007150C();
    sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C24D8);
  }

  return result;
}

unint64_t sub_10007150C()
{
  result = qword_1000C24E8;
  if (!qword_1000C24E8)
  {
    sub_10009DDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C24E8);
  }

  return result;
}

uint64_t sub_100071564(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C24C0, &qword_1000A2798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000715DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C24E0, &qword_1000A27A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007164C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000716A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = sub_10009E3A4();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  v6 = __chkstk_darwin(v4);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v8;
  v9 = sub_10009DC44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10009E324();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v50);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for WidgetBlendMode(0);
  v18 = v2;
  v19 = v2 + *(v45 + 24);
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_10009E834();
    v21 = sub_10009DEA4();
    v44 = v14;
    v22 = v17;
    v23 = v9;
    v24 = v18;
    v25 = v21;
    sub_10009D8C4();

    v18 = v24;
    v9 = v23;
    v17 = v22;
    v14 = v44;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v20, 0);
    (*(v10 + 8))(v13, v9);
    if (v53 != 1)
    {
LABEL_7:
      v27 = &enum case for BlendMode.normal(_:);
      goto LABEL_11;
    }
  }

  v26 = *v18;
  if (*(v18 + 8) == 1)
  {
    if (v26)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v28 = *v18;

    sub_10009E834();
    v29 = sub_10009DEA4();
    v44 = v9;
    v30 = v29;
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v26, 0);
    (*(v10 + 8))(v13, v44);
    if (v52)
    {
      goto LABEL_7;
    }
  }

  v31 = v46;
  v32 = v18 + *(v45 + 20);
  sub_100074480();
  v33 = v47;
  sub_10009E394();
  v34 = sub_10009E374();
  v35 = *(v48 + 8);
  v36 = v33;
  v37 = v49;
  v35(v36, v49);
  v35(v31, v37);
  v27 = &enum case for BlendMode.difference(_:);
  if (v34)
  {
    v27 = &enum case for BlendMode.normal(_:);
  }

LABEL_11:
  v38 = v50;
  (*(v14 + 104))(v17, *v27, v50);
  v39 = sub_100003714(&qword_1000C25D8, &qword_1000A2860);
  v40 = v51;
  (*(v14 + 32))(v51 + *(v39 + 36), v17, v38);
  v41 = sub_100003714(&qword_1000C25E0, &qword_1000A2868);
  return (*(*(v41 - 8) + 16))(v40, a1, v41);
}

unint64_t sub_100071B6C()
{
  result = qword_1000C2530;
  if (!qword_1000C2530)
  {
    sub_10000375C(&qword_1000C2518, &qword_1000A27C0);
    sub_10001CDC8(&qword_1000C2538, &qword_1000C24C0, &qword_1000A2798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2530);
  }

  return result;
}