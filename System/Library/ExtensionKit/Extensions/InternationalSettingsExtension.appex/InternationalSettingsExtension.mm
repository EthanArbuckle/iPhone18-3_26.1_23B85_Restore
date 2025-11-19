uint64_t sub_1000010D8()
{
  v0 = (*(*(sub_100003E3C(&qword_10000C098, &qword_100005930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_10000509C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_10000506C();
  sub_100003EBC(v6, qword_10000C148);
  sub_100003E84(v6, qword_10000C148);
  sub_10000507C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000505C();
}

uint64_t sub_100001248()
{
  v0 = sub_100003E3C(&qword_10000C0C8, &qword_100005640);
  sub_100003EBC(v0, qword_10000C160);
  sub_100003E84(v0, qword_10000C160);
  sub_100003E3C(&qword_10000C0D0, &qword_100005648);
  v1 = sub_100003E3C(&qword_10000C0D8, &qword_100005650);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000052B0;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  *(v4 + v3) = 0;
  sub_1000019F8();
  sub_100004FEC();
  v7 = *(v1 + 48);
  *(v5 + v2) = 1;
  sub_100004FEC();
  v8 = *(v1 + 48);
  *(v5 + 2 * v2) = 2;
  sub_100004FEC();
  v9 = *(v1 + 48);
  *(v5 + 3 * v2) = 3;
  sub_100004FEC();
  v10 = *(v1 + 48);
  *(v5 + 4 * v2) = 4;
  sub_100004FEC();
  v11 = *(v1 + 48);
  *(v5 + 5 * v2) = 5;
  sub_100004FEC();
  v12 = *(v1 + 48);
  *(v5 + 6 * v2) = 6;
  sub_100004FEC();
  v13 = *(v1 + 48);
  *(v5 + 7 * v2) = 7;
  sub_100004FEC();
  v14 = *(v1 + 48);
  *(v5 + 8 * v2) = 8;
  sub_100004FEC();
  v15 = *(v1 + 48);
  *(v5 + 9 * v2) = 9;
  sub_100004FEC();
  v16 = *(v1 + 48);
  *(v5 + 10 * v2) = 10;
  sub_100004FEC();
  sub_100003F74(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100004FFC();
}

unint64_t sub_10000161C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1953460082;
    v7 = 0x75676E614C646461;
    v8 = 0x6E6F69676572;
    if (a1 != 3)
    {
      v8 = 0x7261646E656C6163;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6D726F4665746164;
    v2 = 0x6F467265626D756ELL;
    if (a1 != 9)
    {
      v2 = 0x747865546576696CLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x74617265706D6574;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x7961447473726966;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000017A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000161C(*a1);
  v5 = v4;
  if (v3 == sub_10000161C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000513C();
  }

  return v8 & 1;
}

unint64_t sub_10000182C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

Swift::Int sub_100001880()
{
  v1 = *v0;
  sub_10000514C();
  sub_10000161C(v1);
  sub_10000510C();

  return sub_10000515C();
}

uint64_t sub_1000018E4()
{
  sub_10000161C(*v0);
  sub_10000510C();
}

Swift::Int sub_100001938()
{
  v1 = *v0;
  sub_10000514C();
  sub_10000161C(v1);
  sub_10000510C();

  return sub_10000515C();
}

uint64_t sub_100001998@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000041D0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000019C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000161C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000019F8()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_100001A50()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001AA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E3C(&qword_10000C0C8, &qword_100005640);
  v3 = sub_100003E84(v2, qword_10000C160);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100001B5C()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100001BB4()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001C0C()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_100001C6C()
{
  sub_100003F20();
  v1 = sub_100004F9C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100001CDC()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001D34()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100001D8C()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001DE4()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100001E3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_10000506C();
  v3 = sub_100003E84(v2, qword_10000C148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001F34(uint64_t a1)
{
  v2 = sub_1000019F8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100001F84()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001FDC()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002034()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

uint64_t sub_10000208C(uint64_t a1)
{
  v2 = sub_100001DE4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000020DC()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    sub_100002140(&qword_10000C088, &qword_100005590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100002140(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for InternationalSettingsDeepLink(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternationalSettingsDeepLink(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000230C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10000514C();
  sub_10000161C(a1);
  sub_10000510C();

  v4 = sub_10000515C();

  return sub_100002394(a1, v4);
}

unint64_t sub_100002394(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          v9 = 0x6E6F69676572;
        }

        else
        {
          v9 = 0x7261646E656C6163;
        }

        if (v6 == 3)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE800000000000000;
        }

        if (v6 == 2)
        {
          v9 = 0x75676E614C646461;
          v10 = 0xEB00000000656761;
        }

        v11 = *(*(v28 + 48) + v4) ? 0xD000000000000012 : 1953460082;
        v12 = *(*(v28 + 48) + v4) ? 0x8000000100005940 : 0xE400000000000000;
        v7 = *(*(v28 + 48) + v4) <= 1u ? v11 : v9;
        v8 = *(*(v28 + 48) + v4) <= 1u ? v12 : v10;
      }

      else if (*(*(v28 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0x6D726F4665746164;
          v8 = 0xEA00000000007461;
        }

        else if (v6 == 9)
        {
          v7 = 0x6F467265626D756ELL;
          v8 = 0xEC00000074616D72;
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x747865546576696CLL;
        }
      }

      else if (v6 == 5)
      {
        v8 = 0xEB00000000657275;
        v7 = 0x74617265706D6574;
      }

      else if (v6 == 6)
      {
        v7 = 0xD000000000000011;
        v8 = 0x8000000100005980;
      }

      else
      {
        v7 = 0x7961447473726966;
        v8 = 0xEE006B656557664FLL;
      }

      v13 = 0x747865546576696CLL;
      if (v5 == 9)
      {
        v13 = 0x6F467265626D756ELL;
      }

      v14 = 0xEC00000074616D72;
      if (v5 != 9)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 8)
      {
        v13 = 0x6D726F4665746164;
        v14 = 0xEA00000000007461;
      }

      v15 = 0xEB00000000657275;
      v16 = 0x7961447473726966;
      if (v5 == 6)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0xEE006B656557664FLL;
      if (v5 == 6)
      {
        v17 = 0x8000000100005980;
      }

      if (v5 == 5)
      {
        v16 = 0x74617265706D6574;
      }

      else
      {
        v15 = v17;
      }

      if (v5 <= 7)
      {
        v13 = v16;
        v14 = v15;
      }

      if (v5 == 3)
      {
        v18 = 0x6E6F69676572;
      }

      else
      {
        v18 = 0x7261646E656C6163;
      }

      if (v5 == 3)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      if (v5 == 2)
      {
        v18 = 0x75676E614C646461;
        v19 = 0xEB00000000656761;
      }

      if (v5)
      {
        v20 = 0xD000000000000012;
      }

      else
      {
        v20 = 1953460082;
      }

      if (v5)
      {
        v21 = 0x8000000100005940;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v5 <= 1)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v5 <= 4 ? v18 : v13;
      v23 = v5 <= 4 ? v19 : v14;
      if (v7 == v22 && v8 == v23)
      {
        break;
      }

      v24 = sub_10000513C();

      if ((v24 & 1) == 0)
      {
        v4 = (v4 + 1) & v26;
        if ((*(v27 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100002724(uint64_t a1)
{
  v2 = sub_100003E3C(&qword_10000C0A8, &qword_100005628);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003E3C(&qword_10000C0B8, &qword_100005638);
    v8 = sub_10000511C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004168(v10, v6, &qword_10000C0A8, &qword_100005628);
      v12 = *v6;
      result = sub_10000230C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100004FDC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10000290C()
{
  v84 = sub_10000508C();
  v101 = *(v84 - 8);
  v0 = *(v101 + 64);
  (__chkstk_darwin)();
  v97 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = *(*(sub_1000050CC() - 8) + 64);
  (__chkstk_darwin)();
  v83 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000050FC() - 8) + 64);
  (__chkstk_darwin)();
  v91 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_100003E3C(&qword_10000C090, &unk_100005610) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v75 - v7;
  v9 = (*(*(sub_100003E3C(&qword_10000C098, &qword_100005930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v11 = &v75 - v10;
  v12 = sub_10000509C();
  v94 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (__chkstk_darwin)();
  v100 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v75 - v17;
  sub_100003E3C(&qword_10000C0A0, &qword_100005620);
  v19 = sub_100003E3C(&qword_10000C0A8, &qword_100005628);
  v99 = v19;
  v20 = *(v19 - 8);
  v95 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v78 = v22;
  *(v22 + 16) = xmmword_1000052B0;
  v23 = v22 + v21;
  v93 = *(v19 + 48);
  *(v22 + v21) = 0;
  v77 = 0xD000000000000011;
  sub_10000507C();
  sub_10000507C();
  v24 = *(v13 + 56);
  v92 = v13 + 56;
  v89 = v24;
  v24(v11, 0, 1, v12);
  v88 = "Language & Region";
  sub_100004FAC();
  v82 = sub_100004FBC();
  v25 = *(v82 - 8);
  v85 = *(v25 + 56);
  v87 = v25 + 56;
  v85(v8, 0, 1, v82);
  sub_1000050EC();
  sub_1000050BC();
  v86 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v90 = *(v101 + 104);
  v101 += 104;
  v26 = v84;
  v90(v97);
  sub_1000050AC();
  v98 = v23;
  v96 = v18;
  sub_100004FCC();
  v79 = *(v99 + 48);
  *(v23 + v95) = 1;
  sub_10000507C();
  v93 = "Preferred Languages";
  v81 = v11;
  sub_10000507C();
  v27 = v89;
  v89(v11, 0, 1, v94);
  sub_100004FAC();
  v28 = v8;
  v29 = v82;
  v30 = v85;
  v85(v8, 0, 1, v82);
  sub_1000050EC();
  sub_1000050BC();
  (v90)(v97, v86, v26);
  sub_1000050AC();
  v31 = v81;
  sub_100004FCC();
  v32 = v95;
  v79 = 2 * v95;
  v75 = v98 + 2 * v95;
  v33 = v99;
  v76 = *(v99 + 48);
  *v75 = 2;
  sub_10000507C();
  sub_10000507C();
  v27(v31, 0, 1, v94);
  sub_100004FAC();
  v30(v28, 0, 1, v29);
  sub_1000050EC();
  sub_1000050BC();
  v34 = v86;
  (v90)(v97, v86, v84);
  sub_1000050AC();
  v35 = v81;
  sub_100004FCC();
  v36 = v98;
  v76 = v98 + v79 + v32;
  v79 = *(v33 + 48);
  *v76 = 3;
  sub_10000507C();
  sub_10000507C();
  v37 = v35;
  v38 = v35;
  v39 = v94;
  v40 = v89;
  v89(v37, 0, 1, v94);
  v80 = v28;
  sub_100004FAC();
  v85(v28, 0, 1, v82);
  sub_1000050EC();
  sub_1000050BC();
  v41 = v84;
  (v90)(v97, v34, v84);
  sub_1000050AC();
  v42 = v80;
  sub_100004FCC();
  v76 = 4 * v95;
  v75 = *(v99 + 48);
  *(v36 + v76) = 4;
  sub_10000507C();
  sub_10000507C();
  v40(v38, 0, 1, v39);
  sub_100004FAC();
  v43 = v82;
  v44 = v85;
  v85(v42, 0, 1, v82);
  v79 = "anguage & Region Settings pane";
  sub_1000050EC();
  sub_1000050BC();
  (v90)(v97, v86, v41);
  sub_1000050AC();
  v45 = v81;
  sub_100004FCC();
  v75 = v98 + v76 + v95;
  v76 = *(v99 + 48);
  *v75 = 5;
  sub_10000507C();
  sub_10000507C();
  v46 = v92;
  v89(v45, 0, 1, v94);
  sub_100004FAC();
  v44(v42, 0, 1, v43);
  sub_100003E3C(&qword_10000C0B0, &qword_100005630);
  v47 = *(v46 + 16);
  v48 = (*(v46 + 24) + 32) & ~*(v46 + 24);
  *(swift_allocObject() + 16) = xmmword_1000052C0;
  sub_10000507C();
  sub_10000507C();
  sub_1000050EC();
  sub_1000050BC();
  v49 = v86;
  v50 = v84;
  v51 = v90;
  (v90)(v97, v86, v84);
  sub_1000050AC();
  v52 = v45;
  v53 = v80;
  sub_100004FCC();
  v76 = v98 + 6 * v95;
  v79 = *(v99 + 48);
  *v76 = 6;
  sub_10000507C();
  sub_10000507C();
  v89(v52, 0, 1, v94);
  sub_100004FAC();
  v54 = v82;
  v55 = v85;
  v85(v53, 0, 1, v82);
  sub_1000050EC();
  sub_1000050BC();
  v51(v97, v49, v50);
  sub_1000050AC();
  v56 = v81;
  v57 = v80;
  sub_100004FCC();
  v79 = 8 * v95;
  v75 = v98 + 7 * v95;
  v76 = *(v99 + 48);
  *v75 = 7;
  sub_10000507C();
  sub_10000507C();
  v58 = v56;
  v59 = v94;
  v89(v58, 0, 1, v94);
  sub_100004FAC();
  v55(v57, 0, 1, v54);
  sub_1000050EC();
  sub_1000050BC();
  v60 = v84;
  (v90)(v97, v86, v84);
  sub_1000050AC();
  v61 = v81;
  sub_100004FCC();
  v76 = v98 + v79;
  v77 = *(v99 + 48);
  *v76 = 8;
  sub_10000507C();
  sub_10000507C();
  v62 = v89;
  v89(v61, 0, 1, v59);
  v63 = v57;
  sub_100004FAC();
  v64 = v82;
  v85(v57, 0, 1, v82);
  sub_1000050EC();
  sub_1000050BC();
  v65 = v97;
  v66 = v86;
  v67 = v90;
  (v90)(v97, v86, v60);
  v68 = v65;
  sub_1000050AC();
  v69 = v81;
  sub_100004FCC();
  v77 = v98 + v79 + v95;
  v70 = v99;
  v79 = *(v99 + 48);
  *v77 = 9;
  sub_10000507C();
  sub_10000507C();
  v62(v69, 0, 1, v94);
  sub_100004FAC();
  v85(v63, 0, 1, v64);
  sub_1000050EC();
  sub_1000050BC();
  v71 = v84;
  v67(v68, v66, v84);
  sub_1000050AC();
  sub_100004FCC();
  v72 = *(v70 + 48);
  *(v98 + 10 * v95) = 10;
  sub_10000507C();
  sub_10000507C();
  v89(v69, 0, 1, v94);
  sub_100004FAC();
  v85(v63, 0, 1, v82);
  sub_1000050EC();
  sub_1000050BC();
  (v90)(v68, v86, v71);
  sub_1000050AC();
  sub_100004FCC();
  v73 = sub_100002724(v78);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v73;
}

uint64_t sub_100003E3C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003E84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003EBC(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003F20()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100003F74(uint64_t a1)
{
  v2 = sub_100003E3C(&qword_10000C0D8, &qword_100005650);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003E3C(&qword_10000C0E0, &qword_100005658);
    v8 = sub_10000511C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100004168(v10, v6, &qword_10000C0D8, &qword_100005650);
      v12 = *v6;
      result = sub_10000230C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100003E3C(&qword_10000C0E8, &unk_100005660);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_100004168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003E3C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000041D0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008650;
  v6._object = a2;
  v4 = sub_10000512C(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100004224(uint64_t a1)
{
  v2 = sub_100004374();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000042CC();
  sub_1000050DC();
  return 0;
}

unint64_t sub_1000042CC()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100004374()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_1000043DC()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100004430()
{
  v0 = sub_10000509C();
  sub_100003EBC(v0, qword_10000C178);
  sub_100003E84(v0, qword_10000C178);
  return sub_10000507C();
}

uint64_t sub_100004494@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100004F6C();
  *a1 = v5;
  return result;
}

uint64_t sub_1000044D0(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100004F7C();
}

void (*sub_100004508(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100004F5C();
  return sub_10000457C;
}

void sub_10000457C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000045C8()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_10000461C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E00();
  v5 = sub_100003F20();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100004698()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_1000046F0()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

unint64_t sub_100004748()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

uint64_t sub_1000047EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_10000509C();
  v3 = sub_100003E84(v2, qword_10000C178);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000048B4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004E00();
  v7 = sub_100004E54();
  v8 = sub_100003F20();
  *v5 = v2;
  v5[1] = sub_100004980;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100004980()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100004A88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004AFC();
  *a1 = result;
  return result;
}

uint64_t sub_100004AB0(uint64_t a1)
{
  v2 = sub_1000045C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004AFC()
{
  v21 = sub_10000502C();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003E3C(&qword_10000C128, &qword_100005928);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003E3C(&qword_10000C098, &qword_100005930);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10000509C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003E3C(&qword_10000C130, qword_100005938);
  sub_10000507C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 11;
  v18 = sub_100004F4C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_1000019F8();
  return sub_100004F8C();
}

unint64_t sub_100004E00()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C138);
  }

  return result;
}

unint64_t sub_100004E54()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}