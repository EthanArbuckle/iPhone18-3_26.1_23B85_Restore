uint64_t sub_100001C0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x656363615F6E6163;
    }

    if (v2)
    {
      v3 = 0x8000000100041CE0;
    }

    else
    {
      v3 = 0xEA00000000007470;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000100041D00;
    v4 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000100041D20;
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x64696C61766E69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x656363615F6E6163;
    }

    if (a2)
    {
      v5 = 0x8000000100041CE0;
    }

    else
    {
      v5 = 0xEA00000000007470;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x8000000100041D00;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000100041D20;
    if (v4 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v4 != 0x64696C61766E69)
    {
LABEL_31:
      v7 = sub_10004133C();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

Swift::Int sub_100001DA8()
{
  sub_1000413CC();
  sub_100040EDC();

  return sub_1000413EC();
}

uint64_t sub_100001E9C()
{
  sub_100040EDC();
}

Swift::Int sub_100001F7C()
{
  sub_1000413CC();
  sub_100040EDC();

  return sub_1000413EC();
}

uint64_t sub_10000206C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000027A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000209C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007470;
  v4 = 0x656363615F6E6163;
  v5 = 0x8000000100041D00;
  v6 = 0x8000000100041D20;
  v7 = 0xD000000000000012;
  if (v2 != 3)
  {
    v7 = 0x64696C61766E69;
    v6 = 0xE700000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000100041CE0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t variable initialization expression of PlayerAvatar.overlay@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlayerAvatar.Overlay(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100002234(uint64_t a1)
{
  sub_1000404DC();
  __chkstk_darwin();
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000405DC();
}

uint64_t sub_100002344@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1000028DC(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000023AC(uint64_t a1, id *a2)
{
  result = sub_100040E7C();
  *a2 = 0;
  return result;
}

uint64_t sub_100002424(uint64_t a1, id *a2)
{
  v3 = sub_100040E8C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000024A4@<X0>(void *a1@<X8>)
{
  sub_100040E9C();
  v2 = sub_100040E6C();

  *a1 = v2;
  return result;
}

uint64_t sub_1000024E8()
{
  sub_100040E9C();
  v0 = sub_100040F4C();

  return v0;
}

uint64_t sub_100002524()
{
  sub_100040E9C();
  sub_100040EDC();
}

Swift::Int sub_100002578()
{
  sub_100040E9C();
  sub_1000413CC();
  sub_100040EDC();
  v0 = sub_1000413EC();

  return v0;
}

uint64_t sub_1000025EC()
{
  v0 = sub_100040E9C();
  v2 = v1;
  if (v0 == sub_100040E9C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10004133C();
  }

  return v5 & 1;
}

uint64_t sub_100002674@<X0>(void *a1@<X8>)
{
  v2 = sub_100040E6C();

  *a1 = v2;
  return result;
}

uint64_t sub_1000026BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100040E9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000026E8(uint64_t a1)
{
  v2 = sub_100003158(&qword_100054730, type metadata accessor for AMSMediaArtworkColorKind);
  v3 = sub_100003158(&qword_100054738, type metadata accessor for AMSMediaArtworkColorKind);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000027A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100051E10;
  v6._object = a2;
  v4 = sub_10004124C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000027F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000028DC(&qword_1000546F0);
    v3 = sub_10004122C();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_100024B3C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1000028DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002924()
{
  if (sub_10003F7B4(2, 26, 4, 0))
  {
    sub_1000404BC();
  }

  else
  {
    sub_10004049C();
  }

  return sub_1000404EC();
}

uint64_t sub_10000298C()
{
  if (sub_10003F7B4(2, 26, 4, 0))
  {
    sub_1000404BC();
    sub_1000404EC();
    sub_100002A80();
  }

  else
  {
    sub_10004049C();
    sub_1000404EC();
    sub_100003158(&qword_1000546A0, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_100002A80()
{
  result = qword_100054698;
  if (!qword_100054698)
  {
    sub_1000404BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054698);
  }

  return result;
}

__n128 sub_100002AD4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002AE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002B04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100002B40(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002B4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002B6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_100002BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000028DC(&qword_1000546E0);
    v3 = sub_10004122C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100024AC4(v5, v6);
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

unint64_t sub_100002CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000028DC(&qword_1000546D8);
    v3 = sub_10004122C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100015818(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_100002DB8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000028DC(&qword_1000546E8);
  v3 = sub_10004122C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_100024B3C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_100024B3C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ChallengeInviteCodeStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChallengeInviteCodeStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_10000306C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000030BC()
{
  result = qword_100054710;
  if (!qword_100054710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054710);
  }

  return result;
}

uint64_t sub_100003158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003238()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058D60 = result;
  *algn_100058D68 = v3;
  return result;
}

uint64_t sub_100003354()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058D70 = result;
  *algn_100058D78 = v3;
  return result;
}

uint64_t sub_10000347C()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058D80 = result;
  *algn_100058D88 = v3;
  return result;
}

uint64_t sub_1000035A4()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058D90 = result;
  *algn_100058D98 = v3;
  return result;
}

uint64_t sub_1000036D0()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058DA0 = result;
  *algn_100058DA8 = v3;
  return result;
}

uint64_t sub_1000037F8()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058DB0 = result;
  *algn_100058DB8 = v3;
  return result;
}

uint64_t sub_100003920()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058DC0 = result;
  *algn_100058DC8 = v3;
  return result;
}

uint64_t sub_100003A4C()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058DD0 = result;
  *algn_100058DD8 = v3;
  return result;
}

uint64_t sub_100003B7C()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058DE0 = result;
  *algn_100058DE8 = v3;
  return result;
}

uint64_t sub_100003CA4()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058DF0 = result;
  *algn_100058DF8 = v3;
  return result;
}

uint64_t sub_100003DC4()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058E00 = result;
  *algn_100058E08 = v3;
  return result;
}

uint64_t sub_100003EEC()
{
  v0 = sub_10003FE8C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100040E5C();
  __chkstk_darwin(v1 - 8);
  sub_100040DFC();
  sub_10003FE7C();
  result = sub_100040EAC();
  qword_100058E10 = result;
  *algn_100058E18 = v3;
  return result;
}

uint64_t sub_100004010(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_10003FE8C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100040E5C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100040E3C();
  __chkstk_darwin(v10 - 8);
  sub_100040E2C();
  v12._object = 0x8000000100042320;
  v12._countAndFlagsBits = 0xD000000000000015;
  sub_100040E1C(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  sub_100040E0C(v13);
  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  sub_100040E1C(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  sub_100040E0C(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100040E1C(v16);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_1000041E4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_10003FE8C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100040E5C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100040E3C();
  __chkstk_darwin(v10 - 8);
  sub_100040E2C();
  v12._object = 0x8000000100041D90;
  v12._countAndFlagsBits = 0x100000000000001ALL;
  sub_100040E1C(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  sub_100040E0C(v13);
  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  sub_100040E1C(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  sub_100040E0C(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100040E1C(v16);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_1000043B8(uint64_t a1, void *a2)
{
  v4 = sub_10003FE8C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100040E5C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100040E3C();
  __chkstk_darwin(v6 - 8);
  sub_100040E2C();
  v8._object = 0x8000000100041ED0;
  v8._countAndFlagsBits = 0xD000000000000017;
  sub_100040E1C(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_100040E0C(v9);
  v10._countAndFlagsBits = 0x6E656C6C61686320;
  v10._object = 0xEA00000000006567;
  sub_100040E1C(v10);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_100004570(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v12 = sub_10003FE8C();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100040E5C();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100040E3C();
  __chkstk_darwin(v14 - 8);
  sub_100040E2C();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100040E1C(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  sub_100040E0C(v17);
  v18._countAndFlagsBits = 0x206E6F7720;
  v18._object = 0xE500000000000000;
  sub_100040E1C(v18);
  v19._countAndFlagsBits = a3;
  v19._object = a4;
  sub_100040E0C(v19);
  v20._countAndFlagsBits = 544106784;
  v20._object = 0xE400000000000000;
  sub_100040E1C(v20);
  v21._countAndFlagsBits = a5;
  v21._object = a6;
  sub_100040E0C(v21);
  v22._countAndFlagsBits = 0x207461657247202ELL;
  v22._object = 0xED000021656D6167;
  sub_100040E1C(v22);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_10000477C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_10003FE8C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100040E5C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100040E3C();
  __chkstk_darwin(v10 - 8);
  sub_100040E2C();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100040E1C(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  sub_100040E0C(v13);
  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  sub_100040E1C(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  sub_100040E0C(v15);
  v16._object = 0x8000000100042090;
  v16._countAndFlagsBits = 0xD000000000000021;
  sub_100040E1C(v16);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_100004950(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v12 = sub_10003FE8C();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100040E5C();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100040E3C();
  __chkstk_darwin(v14 - 8);
  sub_100040E2C();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100040E1C(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  sub_100040E0C(v17);
  v18._object = 0x80000001000421C0;
  v18._countAndFlagsBits = 0x1000000000000010;
  sub_100040E1C(v18);
  v19._countAndFlagsBits = a3;
  v19._object = a4;
  sub_100040E0C(v19);
  v20._countAndFlagsBits = 544106784;
  v20._object = 0xE400000000000000;
  sub_100040E1C(v20);
  v21._countAndFlagsBits = a5;
  v21._object = a6;
  sub_100040E0C(v21);
  v22._countAndFlagsBits = 0x7078652073616820;
  v22._object = 0xEC00000064657269;
  sub_100040E1C(v22);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_100004B60(uint64_t a1, void *a2)
{
  v4 = sub_10003FE8C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100040E5C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100040E3C();
  __chkstk_darwin(v6 - 8);
  sub_100040E2C();
  v8._countAndFlagsBits = 0x2077656976206F54;
  v8._object = 0xE800000000000000;
  sub_100040E1C(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_100040E0C(v9);
  v10._object = 0x80000001000425B0;
  v10._countAndFlagsBits = 0x1000000000000035;
  sub_100040E1C(v10);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_100004D14(uint64_t a1, void *a2)
{
  v4 = sub_10003FE8C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100040E5C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100040E3C();
  __chkstk_darwin(v6 - 8);
  sub_100040E2C();
  v8._object = 0x8000000100042530;
  v8._countAndFlagsBits = 0xD000000000000013;
  sub_100040E1C(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_100040E0C(v9);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100040E1C(v10);
  sub_100040E4C();
  sub_10003FE7C();
  return sub_100040EAC();
}

uint64_t sub_100004EC8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100004F04(uint64_t a1)
{
  v2 = sub_100005FCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004F40(uint64_t a1)
{
  v2 = sub_100005FCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004F7C(uint64_t a1)
{
  v2 = sub_100005F24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004FB8(uint64_t a1)
{
  v2 = sub_100005F24();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100005008()
{
  v1 = *v0;
  sub_1000413CC();
  sub_1000413DC(v1);
  return sub_1000413EC();
}

Swift::Int sub_10000507C()
{
  v1 = *v0;
  sub_1000413CC();
  sub_1000413DC(v1);
  return sub_1000413EC();
}

unint64_t sub_1000050C0()
{
  v1 = *v0;
  v2 = 0x656461637261;
  v3 = 0xD000000000000011;
  v4 = 0x6E6F6349656D6167;
  if (v1 != 3)
  {
    v4 = 0x736567617373656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1953064037;
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

uint64_t sub_100005154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100008248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100005188(uint64_t a1)
{
  v2 = sub_100005E28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000051C4(uint64_t a1)
{
  v2 = sub_100005E28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005200(uint64_t a1)
{
  v2 = sub_100005F78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000523C(uint64_t a1)
{
  v2 = sub_100005F78();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100005278()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1000052B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000100042900 == a2 || (sub_10004133C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000428E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_10004133C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100005398(uint64_t a1)
{
  v2 = sub_100005ED0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000053D4(uint64_t a1)
{
  v2 = sub_100005ED0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100005418()
{
  sub_1000413CC();
  sub_1000413DC(0);
  return sub_1000413EC();
}

Swift::Int sub_100005484()
{
  sub_1000413CC();
  sub_1000413DC(0);
  return sub_1000413EC();
}

uint64_t sub_1000054E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001000428E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_10004133C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100005574(uint64_t a1)
{
  v2 = sub_100005E7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000055B0(uint64_t a1)
{
  v2 = sub_100005E7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlayerAvatar.Overlay.encode(to:)(void *a1)
{
  v2 = sub_1000028DC(&qword_100054740);
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v36 - v3;
  v47 = sub_1000028DC(&qword_100054748);
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v36 - v4;
  v5 = sub_100040D0C();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028DC(&qword_100054750);
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v36 - v8;
  v9 = sub_1000028DC(&qword_100054758);
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1000028DC(&qword_100054760);
  v36 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for PlayerAvatar.Overlay(0);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000028DC(&qword_100054768);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  sub_100005DE4(a1, a1[3]);
  sub_100005E28();
  sub_10004140C();
  sub_1000074C0(v51, v17, type metadata accessor for PlayerAvatar.Overlay);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = v45;
    v27 = v46;
    v28 = v44;
    v29 = v47;
    if (EnumCaseMultiPayload)
    {
      v61 = 4;
      sub_100005E7C();
      v31 = v53;
      sub_1000412CC();
      sub_1000412FC();
      (*(v24 + 8))(v23, v25);
    }

    else
    {
      sub_1000028DC(&qword_100054780);
      v30 = v43;
      (*(v28 + 32))(v43, v17, v26);
      v60 = 3;
      sub_100005ED0();
      v31 = v53;
      sub_1000412CC();
      v59 = 0;
      sub_100006B78(&qword_100054790, &type metadata accessor for MediaArtwork);
      v32 = v54;
      sub_10004130C();
      if (v32)
      {
        (*(v42 + 8))(v27, v29);
        (*(v28 + 8))(v30, v26);
        return (*(v52 + 8))(v20, v31);
      }

      v58 = 1;
      sub_1000412FC();
      (*(v42 + 8))(v27, v29);
      (*(v28 + 8))(v43, v26);
    }

    return (*(v52 + 8))(v20, v31);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v55 = 0;
    sub_100005FCC();
    v34 = v53;
    sub_1000412CC();
    (*(v36 + 8))(v14, v12);
    return (*(v52 + 8))(v20, v34);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v56 = 1;
      sub_100005F78();
      v22 = v53;
      sub_1000412CC();
      (*(v37 + 8))(v11, v38);
    }

    else
    {
      v57 = 2;
      sub_100005F24();
      v35 = v39;
      v22 = v53;
      sub_1000412CC();
      (*(v40 + 8))(v35, v41);
    }

    return (*(v52 + 8))(v20, v22);
  }
}

void *sub_100005DE4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005E28()
{
  result = qword_100054770;
  if (!qword_100054770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054770);
  }

  return result;
}

unint64_t sub_100005E7C()
{
  result = qword_100054778;
  if (!qword_100054778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054778);
  }

  return result;
}

unint64_t sub_100005ED0()
{
  result = qword_100054788;
  if (!qword_100054788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054788);
  }

  return result;
}

unint64_t sub_100005F24()
{
  result = qword_100054798;
  if (!qword_100054798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054798);
  }

  return result;
}

unint64_t sub_100005F78()
{
  result = qword_1000547A0;
  if (!qword_1000547A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000547A0);
  }

  return result;
}

unint64_t sub_100005FCC()
{
  result = qword_1000547A8;
  if (!qword_1000547A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000547A8);
  }

  return result;
}

uint64_t PlayerAvatar.Overlay.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_1000028DC(&qword_1000547B0);
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  (__chkstk_darwin)();
  v69 = &v55 - v5;
  v6 = sub_1000028DC(&qword_1000547B8);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  (__chkstk_darwin)();
  v72 = &v55 - v8;
  v9 = sub_1000028DC(&qword_1000547C0);
  v62 = *(v9 - 8);
  v63 = v9;
  (__chkstk_darwin)();
  v71 = &v55 - v10;
  v11 = sub_1000028DC(&qword_1000547C8);
  v60 = *(v11 - 8);
  v61 = v11;
  (__chkstk_darwin)();
  v70 = &v55 - v12;
  v13 = sub_1000028DC(&qword_1000547D0);
  v58 = *(v13 - 8);
  v59 = v13;
  (__chkstk_darwin)();
  v68 = &v55 - v14;
  v15 = sub_1000028DC(&qword_1000547D8);
  v74 = *(v15 - 8);
  (__chkstk_darwin)();
  v17 = &v55 - v16;
  v18 = type metadata accessor for PlayerAvatar.Overlay(0);
  v19 = (__chkstk_darwin)();
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = a1[3];
  v76 = a1;
  sub_100005DE4(a1, v27);
  sub_100005E28();
  v28 = v75;
  sub_1000413FC();
  if (!v28)
  {
    v55 = v21;
    v30 = v70;
    v29 = v71;
    v56 = v24;
    v57 = v26;
    v75 = v18;
    v32 = v72;
    v31 = v73;
    v33 = sub_1000412BC();
    if (*(v33 + 16) != 1 || (v34 = *(v33 + 32), v34 == 5))
    {
      v37 = sub_1000411DC();
      swift_allocError();
      v38 = v15;
      v40 = v39;
      sub_1000028DC(&qword_1000547E0);
      *v40 = v75;
      sub_10004126C();
      sub_1000411CC();
      (*(*(v37 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v37);
      swift_willThrow();
      (*(v74 + 8))(v17, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v33 + 32) <= 1u)
      {
        v42 = v15;
        v43 = v31;
        v44 = v74;
        if (*(v33 + 32))
        {
          v78 = 1;
          sub_100005F78();
          sub_10004125C();
          (*(v60 + 8))(v30, v61);
        }

        else
        {
          v77 = 0;
          sub_100005FCC();
          v45 = v68;
          sub_10004125C();
          (*(v58 + 8))(v45, v59);
        }

        (*(v44 + 8))(v17, v42);
        swift_unknownObjectRelease();
        v46 = v57;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (v34 == 2)
        {
          v79 = 2;
          sub_100005F24();
          sub_10004125C();
          (*(v62 + 8))(v29, v63);
          (*(v74 + 8))(v17, v15);
          swift_unknownObjectRelease();
          v46 = v57;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v71 = v33;
          if (v34 == 3)
          {
            v82 = 3;
            sub_100005ED0();
            sub_10004125C();
            v70 = v15;
            sub_100040D0C();
            v81 = 0;
            sub_100006B78(&qword_1000547E8, &type metadata accessor for MediaArtwork);
            v35 = v66;
            sub_1000412AC();
            v36 = v74;
            v80 = 1;
            sub_10004129C();
            v52 = v51;
            v53 = *(sub_1000028DC(&qword_100054780) + 48);
            (*(v67 + 8))(v32, v35);
            (*(v36 + 8))(v17, v70);
            swift_unknownObjectRelease();
            v54 = v56;
            *&v56[v53] = v52;
          }

          else
          {
            v83 = 4;
            sub_100005E7C();
            v47 = v69;
            sub_10004125C();
            v48 = v64;
            sub_10004129C();
            v50 = v49;
            (*(v65 + 8))(v47, v48);
            (*(v74 + 8))(v17, v15);
            swift_unknownObjectRelease();
            v54 = v55;
            *v55 = v50;
          }

          swift_storeEnumTagMultiPayload();
          v46 = v57;
          sub_100006B14(v54, v57);
        }

        v43 = v31;
      }

      sub_100006B14(v46, v43);
    }
  }

  return sub_100006AC8(v76);
}

uint64_t sub_100006AC8(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar.Overlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlayerAvatar.init(template:overlay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for PlayerAvatar(0) + 20);
  v9 = type metadata accessor for PlayerAvatar.Overlay(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  *(a4 + 1) = a2;

  return sub_100006CEC(a3, &a4[v8]);
}

uint64_t sub_100006CB4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_1000547F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006D7C()
{
  if (*v0)
  {
    return 0x79616C7265766FLL;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_100006DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v6 || (sub_10004133C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10004133C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100006EA0(uint64_t a1)
{
  v2 = sub_1000070D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006EDC(uint64_t a1)
{
  v2 = sub_1000070D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlayerAvatar.encode(to:)(void *a1)
{
  v3 = sub_1000028DC(&qword_1000547F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100005DE4(a1, a1[3]);
  sub_1000070D0();
  sub_10004140C();
  v8[15] = 0;
  sub_1000412EC();
  if (!v1)
  {
    type metadata accessor for PlayerAvatar(0);
    v8[14] = 1;
    type metadata accessor for PlayerAvatar.Overlay(0);
    sub_100006B78(&qword_100054808, type metadata accessor for PlayerAvatar.Overlay);
    sub_1000412DC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000070D0()
{
  result = qword_100054800;
  if (!qword_100054800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054800);
  }

  return result;
}

uint64_t PlayerAvatar.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1000028DC(&qword_1000547F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1000028DC(&qword_100054810);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for PlayerAvatar(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 28);
  v15 = type metadata accessor for PlayerAvatar.Overlay(0);
  v16 = *(*(v15 - 8) + 56);
  v23 = v14;
  v16(v13 + v14, 1, 1, v15);
  sub_100005DE4(a1, a1[3]);
  sub_1000070D0();
  sub_1000413FC();
  if (v2)
  {
    sub_100006AC8(a1);
    return sub_100007458(v13 + v23);
  }

  else
  {
    v17 = v21;
    v25 = 0;
    *v13 = sub_10004128C();
    v13[1] = v18;
    v24 = 1;
    sub_100006B78(&qword_100054818, type metadata accessor for PlayerAvatar.Overlay);
    sub_10004127C();
    (*(v17 + 8))(v9, v22);
    sub_100006CEC(v6, v13 + v23);
    sub_1000074C0(v13, v20, type metadata accessor for PlayerAvatar);
    sub_100006AC8(a1);
    return sub_100007528(v13);
  }
}

uint64_t sub_100007458(uint64_t a1)
{
  v2 = sub_1000028DC(&qword_1000547F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000074C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100007528(uint64_t a1)
{
  v2 = type metadata accessor for PlayerAvatar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000075C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000028DC(&qword_1000547F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000028DC(&qword_1000547F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100007748()
{
  sub_1000077C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000077C4()
{
  if (!qword_100054888)
  {
    type metadata accessor for PlayerAvatar.Overlay(255);
    v0 = sub_1000410EC();
    if (!v1)
    {
      atomic_store(v0, &qword_100054888);
    }
  }
}

void sub_10000786C()
{
  sub_1000078E0();
  if (v0 <= 0x3F)
  {
    sub_10000794C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000078E0()
{
  if (!qword_100054938)
  {
    sub_100040D0C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100054938);
    }
  }
}

void *sub_10000794C()
{
  result = qword_100054940;
  if (!qword_100054940)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_100054940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChallengesMessageExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChallengesMessageExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayerAvatar.Overlay.MessagesCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PlayerAvatar.Overlay.MessagesCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100007C1C()
{
  result = qword_100054970;
  if (!qword_100054970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054970);
  }

  return result;
}

unint64_t sub_100007C74()
{
  result = qword_100054978;
  if (!qword_100054978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054978);
  }

  return result;
}

unint64_t sub_100007CCC()
{
  result = qword_100054980;
  if (!qword_100054980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054980);
  }

  return result;
}

unint64_t sub_100007D24()
{
  result = qword_100054988;
  if (!qword_100054988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054988);
  }

  return result;
}

unint64_t sub_100007D7C()
{
  result = qword_100054990;
  if (!qword_100054990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054990);
  }

  return result;
}

unint64_t sub_100007DD4()
{
  result = qword_100054998;
  if (!qword_100054998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054998);
  }

  return result;
}

unint64_t sub_100007E2C()
{
  result = qword_1000549A0;
  if (!qword_1000549A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549A0);
  }

  return result;
}

unint64_t sub_100007E84()
{
  result = qword_1000549A8;
  if (!qword_1000549A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549A8);
  }

  return result;
}

unint64_t sub_100007EDC()
{
  result = qword_1000549B0;
  if (!qword_1000549B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549B0);
  }

  return result;
}

unint64_t sub_100007F34()
{
  result = qword_1000549B8;
  if (!qword_1000549B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549B8);
  }

  return result;
}

unint64_t sub_100007F8C()
{
  result = qword_1000549C0;
  if (!qword_1000549C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549C0);
  }

  return result;
}

unint64_t sub_100007FE4()
{
  result = qword_1000549C8;
  if (!qword_1000549C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549C8);
  }

  return result;
}

unint64_t sub_10000803C()
{
  result = qword_1000549D0;
  if (!qword_1000549D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549D0);
  }

  return result;
}

unint64_t sub_100008094()
{
  result = qword_1000549D8;
  if (!qword_1000549D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549D8);
  }

  return result;
}

unint64_t sub_1000080EC()
{
  result = qword_1000549E0;
  if (!qword_1000549E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549E0);
  }

  return result;
}

unint64_t sub_100008144()
{
  result = qword_1000549E8;
  if (!qword_1000549E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549E8);
  }

  return result;
}

unint64_t sub_10000819C()
{
  result = qword_1000549F0;
  if (!qword_1000549F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549F0);
  }

  return result;
}

unint64_t sub_1000081F4()
{
  result = qword_1000549F8;
  if (!qword_1000549F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000549F8);
  }

  return result;
}

uint64_t sub_100008248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656461637261 && a2 == 0xE600000000000000;
  if (v4 || (sub_10004133C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953064037 && a2 == 0xE400000000000000 || (sub_10004133C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000428C0 == a2 || (sub_10004133C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_10004133C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_10004133C();

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

void sub_100008428()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings:v0];

  qword_100054A00 = v1;
}

uint64_t sub_100008494()
{
  v0 = sub_100040D6C();
  sub_10000A7F8(v0, qword_100054A08);
  sub_10000A760(v0, qword_100054A08);
  return sub_100040D4C();
}

uint64_t PlayerMonogramProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = sub_1000028DC(&qword_100054A20);
  __chkstk_darwin(v2);
  v7 = a1;
  (*(v4 + 104))(&v6[-v3], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return sub_10004107C();
}

void sub_100008658(uint64_t a1)
{
  v2 = sub_1000028DC(&qword_100054A68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  sub_1000028DC(&qword_100054A70);
  sub_100040CBC();
  v7 = v6;
  v9 = v8;
  sub_100040CCC();
  v11 = v10;
  v12 = [objc_opt_self() availableColors];
  sub_10000A5EC();
  v13 = sub_100040FAC();

  sub_100040CAC();

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_1000411BC();
LABEL_5:
    v15 = v14;

    v13 = [objc_opt_self() scopeWithPointSize:0 scale:0 strokeWidth:0 strokeColor:v15 rightToLeft:v7 style:v9 color:{v11, 0.0}];

    if (qword_1000545F8 == -1)
    {
LABEL_6:
      v16 = qword_100054A00;
      sub_100040CAC();
      v17 = sub_100040E6C();

      (*(v3 + 16))(v5, a1, v2);
      v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v19 = swift_allocObject();
      (*(v3 + 32))(v19 + v18, v5, v2);
      v25 = sub_10000A6CC;
      v26 = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v23 = sub_100008ACC;
      v24 = &unk_100052F18;
      v20 = _Block_copy(aBlock);

      v21 = [v16 renderMonogramForString:v17 scope:v13 imageHandler:v20];
      _Block_release(v20);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 8 * v23 + 32);
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1000089BC(void *a1)
{
  v2 = sub_1000028DC(&qword_100054A80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v6 = a1;
  v7[1] = sub_100040B0C();
  sub_1000028DC(&qword_100054A68);
  sub_10004105C();
  (*(v3 + 8))(v5, v2);
  sub_10004106C();
}

void sub_100008ACC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100008B3C@<X0>(uint64_t *a1@<X8>)
{
  result = _s26ChallengesMessageExtension22PlayerMonogramProtocolV5matchyAC15MatchedResourceVSg10Foundation3URLVF_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100008B68(uint64_t a1)
{
  v2 = sub_1000028DC(&qword_100054A20);
  __chkstk_darwin(v2);
  v7 = a1;
  (*(v4 + 104))(&v6[-v3], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return sub_10004107C();
}

uint64_t sub_100008C70(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000028DC(&qword_100054A38);
  __chkstk_darwin(v12 - 8);
  v40 = &v32 - v13;
  v39 = sub_10003FCCC();
  v14 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10003FD9C();
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin(v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000091A4(a3, a4);
  v33 = a5;
  v34 = a6;
  if (v21)
  {
    v37 = v21;
    v38 = v20;
  }

  else
  {

    v37 = a6;
    v38 = a5;
  }

  sub_10003FD8C();
  sub_1000028DC(&qword_100054A40);
  sub_10003FD0C();
  v22 = swift_allocObject();
  v35 = xmmword_1000475D0;
  *(v22 + 16) = xmmword_1000475D0;
  v43 = a1;
  v44 = a2;
  sub_10003FCBC();
  sub_10000A550();
  sub_10004112C();
  v32._countAndFlagsBits = a1;
  v32._object = a2;
  v36 = *(v14 + 8);
  v23 = v39;
  v36(v16, v39);
  sub_10003FCDC();

  sub_10003FD2C();
  sub_10003FD6C();
  sub_1000028DC(&qword_100054A50);
  v24 = swift_allocObject();
  *(v24 + 16) = v35;
  v25 = v37;
  *(v24 + 32) = v38;
  *(v24 + 40) = v25;
  v43 = v24;
  sub_1000028DC(&qword_100054A58);
  sub_10000A5A4(&qword_100054A60, &qword_100054A58);
  v43 = sub_100040F6C();
  v44 = v26;
  sub_10003FCAC();
  sub_10004112C();
  v36(v16, v23);

  sub_10003FD5C();
  v27 = v40;
  sub_10003FD4C();
  v28 = sub_10003FE2C();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000A798(v27, &qword_100054A38);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1000411AC(25);
    v45._object = 0xEB000000002F2F3ALL;
    v45._countAndFlagsBits = 0x6D6172676F6E6F6DLL;
    sub_100040EEC(v45);
    sub_100040DDC();
    v46._countAndFlagsBits = 0x49726579616C703FLL;
    v46._object = 0xEA00000000003D44;
    sub_100040EEC(v46);
    sub_100040EEC(v32);
    v30 = v43;
  }

  else
  {
    v30 = sub_10003FDEC();
    (*(v29 + 8))(v27, v28);
  }

  (*(v41 + 8))(v19, v42);
  return v30;
}

uint64_t sub_1000091A4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_100040F5C();
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *sub_1000091EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100040F7C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100009778();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000411EC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100009778()
{
  v0 = sub_100040F8C();
  v4 = sub_1000097F8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000097F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000410FC();
    if (!v9 || (v10 = v9, v11 = sub_100033274(v9, 0), v12 = sub_100009950(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100040ECC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100040ECC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000411EC();
LABEL_4:

  return sub_100040ECC();
}

unint64_t sub_100009950(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100009B70(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100040F2C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000411EC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100009B70(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100040F0C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_100009B70(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100040F3C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100040F1C();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_100009BEC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v33 = 58;
  v34 = 0xE100000000000000;
  sub_10000A550();
  v2 = sub_10004110C();
  if (v2[2] >= 2uLL && ((v4 = v2[6], v3 = v2[7], , result = , v6 = HIBYTE(v3) & 0xF, v7 = v4 & 0xFFFFFFFFFFFFLL, (v3 & 0x2000000000000000) != 0) ? (v8 = HIBYTE(v3) & 0xF) : (v8 = v4 & 0xFFFFFFFFFFFFLL), v8))
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v10 = sub_1000091EC(v4, v3, 10);
      v28 = v32;
      goto LABEL_64;
    }

    if ((v3 & 0x2000000000000000) == 0)
    {
      if ((v4 & 0x1000000000000000) == 0)
      {
        goto LABEL_76;
      }

      for (result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_1000411EC())
      {
        v9 = *result;
        if (v9 == 43)
        {
          if (v7 < 1)
          {
            goto LABEL_80;
          }

          v6 = v7 - 1;
          if (v7 == 1)
          {
            goto LABEL_62;
          }

          v10 = 0;
          if (result)
          {
            v17 = result + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_62;
              }

              v19 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_62;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_62;
              }

              ++v17;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }
        }

        else if (v9 == 45)
        {
          if (v7 < 1)
          {
            goto LABEL_78;
          }

          v6 = v7 - 1;
          if (v7 == 1)
          {
            goto LABEL_62;
          }

          v10 = 0;
          if (result)
          {
            v11 = result + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                break;
              }

              v13 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                break;
              }

              v10 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                break;
              }

              ++v11;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }

LABEL_62:
            v10 = 0;
            LOBYTE(v6) = 1;
            goto LABEL_63;
          }
        }

        else
        {
          if (!v7)
          {
            goto LABEL_62;
          }

          v10 = 0;
          if (result)
          {
            do
            {
              v23 = *result - 48;
              if (v23 > 9)
              {
                goto LABEL_62;
              }

              v24 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_62;
              }

              v10 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_62;
              }

              ++result;
            }

            while (--v7);
          }
        }

        LOBYTE(v6) = 0;
LABEL_63:
        LOBYTE(v33) = v6;
        v28 = v6;
LABEL_64:

        if (v28)
        {
          return 0;
        }

        v29 = [objc_opt_self() availableColors];
        sub_10000A5EC();
        v30 = sub_100040FAC();

        if (v30 >> 62)
        {
          v31 = sub_1000411FC();
        }

        else
        {
          v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v31)
        {
          if (v10 != 0x8000000000000000 || v31 != -1)
          {
            return (v10 % v31);
          }

          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        __break(1u);
LABEL_76:
        ;
      }
    }

    v35 = v4;
    v36 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v4 != 43)
    {
      if (v4 != 45)
      {
        if (v6)
        {
          v10 = 0;
          v25 = &v35;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            v25 = (v25 + 1);
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v6)
      {
        if (--v6)
        {
          v10 = 0;
          v14 = &v35 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v6)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_79;
    }

    if (v6)
    {
      if (--v6)
      {
        v10 = 0;
        v20 = &v35 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

LABEL_81:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_100009FCC(uint64_t a1)
{
  v2 = sub_100040D7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100040D1C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_100040D1C();
    sub_100040D2C();
    v11 = sub_100040D8C();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      sub_100009BEC(v11, v13);
    }

    v15 = sub_100040D3C();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  else
  {
    v14 = sub_100040D3C();
    (*(*(v14 - 8) + 8))(a1, v14);
    return 0;
  }

  return v10;
}

uint64_t _s26ChallengesMessageExtension22PlayerMonogramProtocolV5matchyAC15MatchedResourceVSg10Foundation3URLVF_0()
{
  v0 = sub_1000028DC(&qword_100054A88);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_100040D3C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  if (qword_100054600 != -1)
  {
    swift_once();
  }

  v10 = sub_100040D6C();
  sub_10000A760(v10, qword_100054A08);
  sub_100040D5C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000A798(v2, &qword_100054A88);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    v12 = sub_100009FCC(v7);
    (*(v4 + 8))(v9, v3);
    return v12;
  }
}

uint64_t sub_10000A440(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ChallengesSlashHeaderView.LayoutMetrics(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000A4B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000A500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000A550()
{
  result = qword_100054A48;
  if (!qword_100054A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054A48);
  }

  return result;
}

uint64_t sub_10000A5A4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000A440(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000A5EC()
{
  result = qword_100054A78;
  if (!qword_100054A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054A78);
  }

  return result;
}

uint64_t sub_10000A638()
{
  v1 = sub_1000028DC(&qword_100054A68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10000A6CC(void *a1)
{
  sub_1000028DC(&qword_100054A68);

  sub_1000089BC(a1);
}

uint64_t sub_10000A748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A760(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A798(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000028DC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_10000A7F8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000A874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatarView.AvatarType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028DC(&qword_1000547F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10000A9D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PlayerAvatarView.AvatarType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000028DC(&qword_1000547F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10000AB08()
{
  type metadata accessor for PlayerAvatarView.AvatarType(319);
  if (v0 <= 0x3F)
  {
    sub_10000E9BC(319, &qword_100054888, type metadata accessor for PlayerAvatar.Overlay, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000ABD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000ABD4()
{
  if (!qword_100054AF8)
  {
    sub_10000A440(&unk_100054B00);
    v0 = sub_1000410EC();
    if (!v1)
    {
      atomic_store(v0, &qword_100054AF8);
    }
  }
}

unint64_t sub_10000AC38()
{
  result = sub_100040D0C();
  if (v1 <= 0x3F)
  {
    result = sub_10000ACAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000ACAC()
{
  result = qword_100054BB8;
  if (!qword_100054BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054BB8);
  }

  return result;
}

uint64_t sub_10000AD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v55 = a3;
  v54 = sub_10004050C();
  v47 = *(v54 - 8);
  __chkstk_darwin(v54);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlayerAvatarView(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004048C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000028DC(&qword_100054C08);
  __chkstk_darwin(v11 - 8);
  v40 = &v39 - v12;
  v52 = sub_1000028DC(&qword_100054C10);
  v43 = *(v52 - 8);
  __chkstk_darwin(v52);
  v14 = &v39 - v13;
  v53 = sub_1000028DC(&qword_100054C18);
  v45 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v39 - v15;
  v49 = sub_1000028DC(&qword_100054C20);
  __chkstk_darwin(v49);
  v51 = &v39 - v16;
  v50 = type metadata accessor for PlayerAvatarView.Content(0);
  __chkstk_darwin(v50);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E06C(a2 + *(v5 + 24), &v56, &qword_100054C28);
  if (v58)
  {
    sub_10000E178(&v56, v59);
    v19 = sub_1000403CC();
    (*(*(v19 - 8) + 56))(v40, 1, 1, v19);
    sub_10000E190(v59, &v56);
    (*(v8 + 16))(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v7);
    v20 = a2;
    v21 = v42;
    sub_10000E004(v20, v42, type metadata accessor for PlayerAvatarView);
    v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v23 = (v9 + *(v41 + 80) + v22) & ~*(v41 + 80);
    v24 = swift_allocObject();
    (*(v8 + 32))(v24 + v22, v10, v7);
    sub_10000DE48(v21, v24 + v23);
    sub_10000E130(&qword_100054C40, type metadata accessor for PlayerAvatarView.Content);
    sub_1000402FC();
    v25 = v46;
    sub_1000404FC();
    v26 = sub_10000A5A4(&qword_100054C30, &qword_100054C10);
    v27 = sub_10000E130(&qword_100054C38, &type metadata accessor for PlainButtonStyle);
    v28 = v44;
    v29 = v52;
    v30 = v54;
    sub_100040A2C();
    (*(v47 + 8))(v25, v30);
    (*(v43 + 8))(v14, v29);
    v31 = v45;
    v32 = v53;
    (*(v45 + 16))(v51, v28, v53);
    swift_storeEnumTagMultiPayload();
    *&v56 = v29;
    *(&v56 + 1) = v30;
    v57 = v26;
    v58 = v27;
    swift_getOpaqueTypeConformance2();
    sub_10004076C();
    (*(v31 + 8))(v28, v32);
    return sub_100006AC8(v59);
  }

  else
  {
    sub_10000A798(&v56, &qword_100054C28);
    (*(v8 + 16))(v18, v48, v7);
    v34 = v50;
    sub_10000E004(a2, &v18[*(v50 + 20)], type metadata accessor for PlayerAvatarView.AvatarType);
    sub_10000E06C(a2 + *(v5 + 20), &v18[v34[6]], &qword_1000547F0);
    v35 = v34[7];
    *&v18[v35] = swift_getKeyPath();
    sub_1000028DC(&qword_1000546C0);
    swift_storeEnumTagMultiPayload();
    v36 = &v18[v34[8]];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    sub_10000E004(v18, v51, type metadata accessor for PlayerAvatarView.Content);
    swift_storeEnumTagMultiPayload();
    v37 = sub_10000A5A4(&qword_100054C30, &qword_100054C10);
    v38 = sub_10000E130(&qword_100054C38, &type metadata accessor for PlainButtonStyle);
    v59[0] = v52;
    v59[1] = v54;
    v59[2] = v37;
    v59[3] = v38;
    swift_getOpaqueTypeConformance2();
    sub_10000E130(&qword_100054C40, type metadata accessor for PlayerAvatarView.Content);
    sub_10004076C();
    return sub_1000100E8(v18, type metadata accessor for PlayerAvatarView.Content);
  }
}

uint64_t sub_10000B61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10004048C();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for PlayerAvatarView.Content(0);
  sub_10000E004(a2, a3 + v7[5], type metadata accessor for PlayerAvatarView.AvatarType);
  v8 = type metadata accessor for PlayerAvatarView(0);
  sub_10000E06C(a2 + *(v8 + 20), a3 + v7[6], &qword_1000547F0);
  v9 = v7[7];
  *(a3 + v9) = swift_getKeyPath();
  sub_1000028DC(&qword_1000546C0);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v7[8];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

void sub_10000B738(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v67 = a2;
  v4 = sub_100040B2C();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000028DC(&qword_100054EB0);
  v55 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v48 - v6;
  v63 = sub_100040D0C();
  v54 = *(v63 - 8);
  v7 = __chkstk_darwin(v63);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v48 - v9;
  v66 = sub_1000028DC(&qword_100054EB8);
  __chkstk_darwin(v66);
  v65 = (&v48 - v10);
  v61 = sub_1000028DC(&qword_100054EC0);
  __chkstk_darwin(v61);
  v62 = (&v48 - v11);
  v68 = sub_1000028DC(&qword_100054EC8);
  __chkstk_darwin(v68);
  v60 = &v48 - v12;
  v13 = sub_100040A8C();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000028DC(&qword_100054ED0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v48 - v17);
  v19 = sub_10004052C();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v48 - v24;
  v26 = *(type metadata accessor for PlayerAvatarView.Content(0) + 20);
  sub_1000390D4(v25);
  sub_10004051C();
  sub_10000E130(&qword_100054ED8, &type metadata accessor for RedactionReasons);
  v27 = sub_10004114C();
  v28 = *(v20 + 8);
  v28(v23, v19);
  v28(v25, v19);
  sub_10000E004(v3 + v26, v18, type metadata accessor for PlayerAvatarView.AvatarType);
  if (v27)
  {
    (*(v56 + 104))(v15, enum case for Color.RGBColorSpace.sRGB(_:), v57);
    *v62 = sub_100040AFC();
    swift_storeEnumTagMultiPayload();

    sub_1000028DC(&qword_100054EF8);
    sub_10000FEB0();
    v29 = sub_10000E130(&qword_100054F18, &type metadata accessor for MediaArtwork);
    v30 = sub_10000FFBC();
    v69 = v63;
    v70 = &type metadata for PlayerAvatarMediaArtworkStyle;
    v71 = v29;
    v72 = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v60;
    sub_10004076C();
    sub_10000E06C(v31, v65, &qword_100054EC8);
    swift_storeEnumTagMultiPayload();
    sub_1000028DC(&qword_100054EE0);
    sub_10000FDA8();
    sub_100010010();
    sub_10004076C();

    sub_10000A798(v31, &qword_100054EC8);
    sub_1000100E8(v18, type metadata accessor for PlayerAvatarView.AvatarType);
  }

  else
  {
    v32 = v62;
    v33 = v63;
    v34 = v64;
    type metadata accessor for PlayerAvatarView.AvatarType(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *v18;
      sub_100040B0C();
      v37 = v52;
      v36 = v53;
      v38 = v51;
      (*(v52 + 104))(v51, enum case for Image.ResizingMode.stretch(_:), v53);
      v39 = sub_100040B5C();

      (*(v37 + 8))(v38, v36);
      v40 = v65;
      *v65 = v39;
      v40[1] = 0;
      *(v40 + 8) = 1;
      swift_storeEnumTagMultiPayload();

      sub_1000028DC(&qword_100054EE0);
      sub_10000FDA8();
      sub_100010010();
      sub_10004076C();
    }

    else
    {
      v41 = v54;
      (*(v54 + 32))(v58, v18, v33);
      sub_10004046C();
      v42 = v49;
      sub_100040CEC();
      v43 = sub_10000E130(&qword_100054F18, &type metadata accessor for MediaArtwork);
      v44 = sub_10000FFBC();
      v45 = v59;
      sub_1000409CC();
      v57 = *(v41 + 8);
      v57(v42, v33);
      v46 = v55;
      (*(v55 + 16))(v32, v45, v34);
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054EF8);
      sub_10000FEB0();
      v69 = v33;
      v70 = &type metadata for PlayerAvatarMediaArtworkStyle;
      v71 = v43;
      v72 = v44;
      swift_getOpaqueTypeConformance2();
      v47 = v60;
      sub_10004076C();
      sub_10000E06C(v47, v65, &qword_100054EC8);
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054EE0);
      sub_10000FDA8();
      sub_100010010();
      sub_10004076C();
      sub_10000A798(v47, &qword_100054EC8);
      (*(v46 + 8))(v59, v34);
      v57(v58, v33);
    }
  }
}

uint64_t sub_10000C154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v136 = sub_1000028DC(&qword_100054D10);
  __chkstk_darwin(v136);
  v116 = v109 - v3;
  v137 = sub_1000028DC(&qword_100054D18);
  v120 = *(v137 - 8);
  __chkstk_darwin(v137);
  v128 = v109 - v4;
  v5 = sub_100040D0C();
  v126 = *(v5 - 8);
  v127 = v5;
  __chkstk_darwin(v5);
  v124 = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1000028DC(&qword_100054D20);
  __chkstk_darwin(v130);
  v132 = v109 - v7;
  v145 = sub_1000028DC(&qword_100054D28);
  __chkstk_darwin(v145);
  v135 = v109 - v8;
  v9 = sub_100040B2C();
  v113 = *(v9 - 8);
  v114 = v9;
  __chkstk_darwin(v9);
  v112 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1000028DC(&qword_100054D30);
  v118 = *(v134 - 8);
  __chkstk_darwin(v134);
  v117 = v109 - v11;
  v131 = sub_1000028DC(&qword_100054D38);
  __chkstk_darwin(v131);
  v115 = v109 - v12;
  v133 = sub_1000028DC(&qword_100054D40);
  v119 = *(v133 - 8);
  __chkstk_darwin(v133);
  v122 = v109 - v13;
  v14 = sub_1000028DC(&qword_100054D48);
  __chkstk_darwin(v14);
  v16 = v109 - v15;
  v141 = sub_1000028DC(&qword_100054D50);
  __chkstk_darwin(v141);
  v143 = v109 - v17;
  v121 = sub_1000028DC(&qword_100054D58);
  __chkstk_darwin(v121);
  v123 = v109 - v18;
  v142 = sub_1000028DC(&qword_100054D60);
  __chkstk_darwin(v142);
  v129 = v109 - v19;
  v20 = sub_1000028DC(&qword_100054D68);
  __chkstk_darwin(v20);
  v144 = v109 - v21;
  v22 = sub_100040DAC();
  v139 = *(v22 - 8);
  v140 = v22;
  __chkstk_darwin(v22);
  v138 = v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000028DC(&qword_100054D70);
  v111 = *(v125 - 8);
  __chkstk_darwin(v125);
  v25 = v109 - v24;
  v26 = sub_1000028DC(&qword_1000547F0);
  __chkstk_darwin(v26 - 8);
  v28 = v109 - v27;
  v29 = type metadata accessor for PlayerAvatarView.Content(0);
  sub_10000E06C(a1 + *(v29 + 24), v28, &qword_1000547F0);
  v30 = type metadata accessor for PlayerAvatar.Overlay(0);
  if ((*(*(v30 - 8) + 48))(v28, 1, v30) == 1)
  {
    LOBYTE(v149) = 1;
    sub_10004076C();
    *v16 = v153;
    swift_storeEnumTagMultiPayload();
    sub_1000028DC(&qword_100054D78);
    sub_10000EAF0();
    sub_10000F4EC();
    return sub_10004076C();
  }

  v109[2] = v20;
  v110 = v16;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      LOBYTE(v149) = 0;
      sub_10004076C();
      *v110 = v153;
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054D78);
      sub_10000EAF0();
      sub_10000F4EC();
      return sub_10004076C();
    }

    v63 = *&v28[*(sub_1000028DC(&qword_100054780) + 48)];
    v64 = v126;
    v65 = v127;
    v66 = v124;
    (*(v126 + 32))(v124, v28, v127);
    sub_10004046C();
    v67 = v116;
    (*(v64 + 16))(v116, v66, v65);
    (*(v64 + 56))(v67, 0, 1, v65);
    v68 = type metadata accessor for GameIcon();
    v69 = *(v68 + 24);
    *(v67 + v69) = swift_getKeyPath();
    sub_1000028DC(&qword_1000546C0);
    swift_storeEnumTagMultiPayload();
    *(v67 + *(v68 + 20)) = 0;
    sub_100040C7C();
    sub_10004045C();
    v70 = (v67 + *(sub_1000028DC(&qword_100054E90) + 36));
    v71 = v154;
    *v70 = v153;
    v70[1] = v71;
    v70[2] = *v155;
    sub_100040C9C();
    v72 = v136;
    v73 = v67 + *(v136 + 36);
    *v73 = v63 * 0.0174532925;
    *(v73 + 8) = v74;
    *(v73 + 16) = v75;
    v149 = 0u;
    v150[0] = 0u;
    v157 = 0u;
    v158 = 0u;
    v76 = v138;
    sub_100040D9C();
    sub_10000A798(&v157, &qword_100054EA8);
    sub_10000A798(&v149, &qword_100054EA8);
    v77 = sub_10000F3A4();
    v78 = v128;
    sub_1000409DC();
    (*(v139 + 8))(v76, v140);
    sub_10000A798(v67, &qword_100054D10);
    v79 = v120;
    v80 = v78;
    v81 = v137;
    (*(v120 + 16))(v132, v80, v137);
    swift_storeEnumTagMultiPayload();
    v82 = sub_10000A440(&qword_100054E60);
    v83 = sub_10000F288();
    *&v149 = v82;
    *(&v149 + 1) = v83;
    swift_getOpaqueTypeConformance2();
    *&v149 = v72;
    *(&v149 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    v84 = v135;
    sub_10004076C();
    sub_10000E06C(v84, v143, &qword_100054D28);
    swift_storeEnumTagMultiPayload();
    sub_10000EB7C();
    sub_10000F188();
    v85 = v144;
    sub_10004076C();
    sub_10000A798(v84, &qword_100054D28);
    sub_10000E06C(v85, v110, &qword_100054D68);
    swift_storeEnumTagMultiPayload();
    sub_1000028DC(&qword_100054D78);
    sub_10000EAF0();
    sub_10000F4EC();
    sub_10004076C();
    sub_10000A798(v85, &qword_100054D68);
    (*(v79 + 8))(v128, v81);
    return (*(v126 + 8))(v124, v127);
  }

  else
  {
    v109[1] = v14;
    if (EnumCaseMultiPayload == 2)
    {
      sub_10004046C();
      v86 = sub_100040B6C();
      sub_100040C7C();
      sub_10004045C();
      *&v153 = v86;
      *(&v153 + 1) = v149;
      LOBYTE(v154) = BYTE8(v149);
      *(&v154 + 1) = *&v150[0];
      v155[0] = BYTE8(v150[0]);
      *&v155[8] = v150[1];
      v157 = 0u;
      v158 = 0u;
      v147 = 0u;
      v148 = 0u;
      v87 = v138;
      sub_100040D9C();
      sub_10000A798(&v147, &qword_100054EA8);
      sub_10000A798(&v157, &qword_100054EA8);
      v88 = sub_1000028DC(&qword_100054D90);
      v89 = sub_10000F334(&qword_100054D98, &qword_100054D90);
      sub_1000409DC();
      (*(v139 + 8))(v87, v140);

      v90 = v111;
      v91 = v125;
      (*(v111 + 16))(v123, v25, v125);
      swift_storeEnumTagMultiPayload();
      *&v153 = v88;
      *(&v153 + 1) = v89;
      swift_getOpaqueTypeConformance2();
      v92 = sub_10000EC9C();
      *&v153 = v131;
      *(&v153 + 1) = v92;
      swift_getOpaqueTypeConformance2();
      v93 = v129;
      v94 = v91;
      sub_10004076C();
      sub_10000E06C(v93, v143, &qword_100054D60);
      swift_storeEnumTagMultiPayload();
      sub_10000EB7C();
      sub_10000F188();
      v95 = v144;
      sub_10004076C();
      sub_10000A798(v93, &qword_100054D60);
      sub_10000E06C(v95, v110, &qword_100054D68);
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054D78);
      sub_10000EAF0();
      sub_10000F4EC();
      sub_10004076C();
      sub_10000A798(v95, &qword_100054D68);
      return (*(v90 + 8))(v25, v94);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_10004046C();
      v33 = sub_100040B1C();
      v34 = sub_10004089C();
      KeyPath = swift_getKeyPath();
      *&v153 = v33;
      *(&v153 + 1) = KeyPath;
      *&v154 = v34;
      sub_1000408CC();
      sub_1000028DC(&qword_100054DF8);
      sub_10000F0D0();
      v36 = v115;
      sub_100040A1C();

      v37 = (v36 + *(sub_1000028DC(&qword_100054DF0) + 36));
      v38 = *(sub_1000028DC(&qword_100054E20) + 28);
      v39 = enum case for Image.Scale.medium(_:);
      v40 = sub_100040B4C();
      (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
      *v37 = swift_getKeyPath();
      sub_100040C7C();
      sub_10004045C();
      v41 = (v36 + *(sub_1000028DC(&qword_100054DE0) + 36));
      v42 = v154;
      *v41 = v153;
      v41[1] = v42;
      v41[2] = *v155;
      v43 = sub_100040A9C();
      v44 = swift_getKeyPath();
      v45 = (v36 + *(sub_1000028DC(&qword_100054DD0) + 36));
      *v45 = v44;
      v45[1] = v43;
      v46 = sub_100040ADC();
      LOBYTE(v44) = sub_10004082C();
      v47 = v36 + *(sub_1000028DC(&qword_100054DC0) + 36);
      *v47 = v46;
      *(v47 + 8) = v44;
      *(v36 + *(sub_1000028DC(&qword_100054DB0) + 36)) = 256;
      LOBYTE(v46) = sub_10004082C();
      sub_1000403DC();
      v48 = v131;
      v49 = v36 + *(v131 + 36);
      *v49 = v46;
      *(v49 + 8) = v50;
      *(v49 + 16) = v51;
      *(v49 + 24) = v52;
      *(v49 + 32) = v53;
      *(v49 + 40) = 0;
      v149 = 0u;
      v150[0] = 0u;
      v157 = 0u;
      v158 = 0u;
      v54 = v138;
      sub_100040D9C();
      sub_10000A798(&v157, &qword_100054EA8);
      sub_10000A798(&v149, &qword_100054EA8);
      v55 = sub_10000EC9C();
      v56 = v122;
      sub_1000409DC();
      (*(v139 + 8))(v54, v140);
      sub_10000A798(v36, &qword_100054D38);
      v57 = v119;
      v58 = v133;
      (*(v119 + 16))(v123, v56, v133);
      swift_storeEnumTagMultiPayload();
      v59 = sub_10000A440(&qword_100054D90);
      v60 = sub_10000F334(&qword_100054D98, &qword_100054D90);
      *&v149 = v59;
      *(&v149 + 1) = v60;
      swift_getOpaqueTypeConformance2();
      *&v149 = v48;
      *(&v149 + 1) = v55;
      swift_getOpaqueTypeConformance2();
      v61 = v129;
      sub_10004076C();
      sub_10000E06C(v61, v143, &qword_100054D60);
      swift_storeEnumTagMultiPayload();
      sub_10000EB7C();
      sub_10000F188();
      v62 = v144;
      sub_10004076C();
      sub_10000A798(v61, &qword_100054D60);
      sub_10000E06C(v62, v110, &qword_100054D68);
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054D78);
      sub_10000EAF0();
      sub_10000F4EC();
      sub_10004076C();
      sub_10000A798(v62, &qword_100054D68);
      return (*(v57 + 8))(v122, v58);
    }

    else
    {
      sub_100040B6C();
      v97 = v112;
      v96 = v113;
      v98 = v114;
      (*(v113 + 104))(v112, enum case for Image.ResizingMode.stretch(_:), v114);
      v99 = sub_100040B5C();

      (*(v96 + 8))(v97, v98);
      sub_10004046C();
      sub_100040C7C();
      sub_10004045C();
      *&v151[38] = v159;
      *&v151[22] = v158;
      *&v151[6] = v157;
      *(v150 + 2) = *v151;
      *(&v150[1] + 2) = *&v151[16];
      v152 = 1;
      v149 = v99;
      LOWORD(v150[0]) = 1;
      *(&v150[2] + 2) = *&v151[32];
      *&v150[3] = *(&v159 + 1);
      v153 = 0u;
      v154 = 0u;
      v147 = 0u;
      v148 = 0u;
      v100 = v138;
      sub_100040D9C();
      sub_10000A798(&v147, &qword_100054EA8);
      sub_10000A798(&v153, &qword_100054EA8);
      v101 = sub_1000028DC(&qword_100054E60);
      v102 = sub_10000F288();
      v103 = v117;
      sub_1000409DC();
      (*(v139 + 8))(v100, v140);
      *v155 = v150[1];
      *&v155[16] = v150[2];
      v156 = *&v150[3];
      v153 = v149;
      v154 = v150[0];
      sub_10000A798(&v153, &qword_100054E60);
      v104 = v118;
      v105 = v134;
      (*(v118 + 16))(v132, v103, v134);
      swift_storeEnumTagMultiPayload();
      *&v149 = v101;
      *(&v149 + 1) = v102;
      swift_getOpaqueTypeConformance2();
      v106 = sub_10000F3A4();
      *&v149 = v136;
      *(&v149 + 1) = v106;
      swift_getOpaqueTypeConformance2();
      v107 = v135;
      sub_10004076C();
      sub_10000E06C(v107, v143, &qword_100054D28);
      swift_storeEnumTagMultiPayload();
      sub_10000EB7C();
      sub_10000F188();
      v108 = v144;
      sub_10004076C();
      sub_10000A798(v107, &qword_100054D28);
      sub_10000E06C(v108, v110, &qword_100054D68);
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054D78);
      sub_10000EAF0();
      sub_10000F4EC();
      sub_10004076C();
      sub_10000A798(v108, &qword_100054D68);
      return (*(v104 + 8))(v103, v105);
    }
  }
}

uint64_t sub_10000DA20@<X0>(uint64_t a1@<X8>)
{
  sub_10000B738(v1, a1);
  v3 = sub_100040C6C();
  v5 = v4;
  v6 = a1 + *(sub_1000028DC(&qword_100054D00) + 36);
  sub_10000C154(v1, v6);
  result = sub_1000028DC(&qword_100054D08);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  return result;
}

uint64_t sub_10000DAA4(uint64_t a1)
{
  v3 = sub_1000407DC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E004(v1, v10, type metadata accessor for PlayerAvatarView);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_10000DE48(v10, v12 + v11);
  v14[0] = sub_10000DEAC;
  v14[1] = v12;
  v14[2] = 0x3FF0000000000000;
  v15 = 0;
  sub_1000407CC();
  sub_1000028DC(&qword_100054BE8);
  sub_10000DF2C();
  sub_100040A6C();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_10000DC94()
{
  v1 = type metadata accessor for PlayerAvatarView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for PlayerAvatarView.AvatarType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_100040D0C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  v7 = *(v1 + 20);
  v8 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && !swift_getEnumCaseMultiPayload())
  {
    v9 = sub_100040D0C();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = v5 + *(v1 + 24);
  if (*(v10 + 24))
  {
    sub_100006AC8(v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000DE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PlayerAvatarView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000AD14(a1, v6, a2);
}

unint64_t sub_10000DF2C()
{
  result = qword_100054BF0;
  if (!qword_100054BF0)
  {
    sub_10000A440(&qword_100054BE8);
    sub_10000A5A4(&qword_100054BF8, &qword_100054C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054BF0);
  }

  return result;
}

uint64_t sub_10000E004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E06C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000028DC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E0DC@<X0>(void *a1@<X8>)
{
  result = sub_10004058C();
  *a1 = v3;
  return result;
}

uint64_t sub_10000E130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E178(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000E190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E1F4()
{
  v1 = sub_10004048C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for PlayerAvatarView(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  type metadata accessor for PlayerAvatarView.AvatarType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v11 = sub_100040D0C();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
  }

  v12 = *(v6 + 20);
  v13 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v13 - 8) + 48))(v10 + v12, 1, v13) && !swift_getEnumCaseMultiPayload())
  {
    v14 = sub_100040D0C();
    (*(*(v14 - 8) + 8))(v10 + v12, v14);
  }

  v15 = v10 + *(v6 + 24);
  if (*(v15 + 24))
  {
    sub_100006AC8(v15);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_10000E42C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10004048C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PlayerAvatarView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10000B61C(v1 + v4, v7, a1);
}

uint64_t sub_10000E514(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004048C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for PlayerAvatarView.AvatarType(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = sub_1000028DC(&qword_1000547F0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = sub_1000028DC(&qword_100054C48);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8] + 8);
          if (v17 > 1)
          {
            return (v17 ^ 0xFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10000E6DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10004048C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for PlayerAvatarView.AvatarType(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1000028DC(&qword_1000547F0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1000028DC(&qword_100054C48);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = -a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_10000E890()
{
  sub_10004048C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlayerAvatarView.AvatarType(319);
    if (v1 <= 0x3F)
    {
      sub_10000E9BC(319, &qword_100054888, type metadata accessor for PlayerAvatar.Overlay, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000E9BC(319, &qword_100054CB8, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10000EA20();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000E9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000EA20()
{
  if (!qword_100054CC0)
  {
    v0 = sub_10004040C();
    if (!v1)
    {
      atomic_store(v0, &qword_100054CC0);
    }
  }
}

uint64_t sub_10000EA70()
{
  sub_10000A440(&qword_100054BE8);
  sub_10000DF2C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000EAF0()
{
  result = qword_100054D80;
  if (!qword_100054D80)
  {
    sub_10000A440(&qword_100054D68);
    sub_10000EB7C();
    sub_10000F188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D80);
  }

  return result;
}

unint64_t sub_10000EB7C()
{
  result = qword_100054D88;
  if (!qword_100054D88)
  {
    sub_10000A440(&qword_100054D60);
    sub_10000A440(&qword_100054D90);
    sub_10000F334(&qword_100054D98, &qword_100054D90);
    swift_getOpaqueTypeConformance2();
    sub_10000A440(&qword_100054D38);
    sub_10000EC9C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054D88);
  }

  return result;
}

unint64_t sub_10000EC9C()
{
  result = qword_100054DA0;
  if (!qword_100054DA0)
  {
    sub_10000A440(&qword_100054D38);
    sub_10000ED28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DA0);
  }

  return result;
}

unint64_t sub_10000ED28()
{
  result = qword_100054DA8;
  if (!qword_100054DA8)
  {
    sub_10000A440(&qword_100054DB0);
    sub_10000EDE0();
    sub_10000A5A4(&qword_100054E48, &qword_100054E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DA8);
  }

  return result;
}

unint64_t sub_10000EDE0()
{
  result = qword_100054DB8;
  if (!qword_100054DB8)
  {
    sub_10000A440(&qword_100054DC0);
    sub_10000EE98();
    sub_10000A5A4(&qword_100054E38, &qword_100054E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DB8);
  }

  return result;
}

unint64_t sub_10000EE98()
{
  result = qword_100054DC8;
  if (!qword_100054DC8)
  {
    sub_10000A440(&qword_100054DD0);
    sub_10000EF50();
    sub_10000A5A4(&qword_100054E28, &qword_100054E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DC8);
  }

  return result;
}

unint64_t sub_10000EF50()
{
  result = qword_100054DD8;
  if (!qword_100054DD8)
  {
    sub_10000A440(&qword_100054DE0);
    sub_10000EFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DD8);
  }

  return result;
}

unint64_t sub_10000EFDC()
{
  result = qword_100054DE8;
  if (!qword_100054DE8)
  {
    sub_10000A440(&qword_100054DF0);
    sub_10000A440(&qword_100054DF8);
    sub_10000F0D0();
    swift_getOpaqueTypeConformance2();
    sub_10000A5A4(&qword_100054E18, &qword_100054E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054DE8);
  }

  return result;
}

unint64_t sub_10000F0D0()
{
  result = qword_100054E00;
  if (!qword_100054E00)
  {
    sub_10000A440(&qword_100054DF8);
    sub_10000A5A4(&qword_100054E08, &qword_100054E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E00);
  }

  return result;
}

unint64_t sub_10000F188()
{
  result = qword_100054E58;
  if (!qword_100054E58)
  {
    sub_10000A440(&qword_100054D28);
    sub_10000A440(&qword_100054E60);
    sub_10000F288();
    swift_getOpaqueTypeConformance2();
    sub_10000A440(&qword_100054D10);
    sub_10000F3A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E58);
  }

  return result;
}

unint64_t sub_10000F288()
{
  result = qword_100054E68;
  if (!qword_100054E68)
  {
    sub_10000A440(&qword_100054E60);
    sub_10000F334(&qword_100054E70, &qword_100054E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E68);
  }

  return result;
}

uint64_t sub_10000F334(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000A440(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000F3A4()
{
  result = qword_100054E80;
  if (!qword_100054E80)
  {
    sub_10000A440(&qword_100054D10);
    sub_10000F430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E80);
  }

  return result;
}

unint64_t sub_10000F430()
{
  result = qword_100054E88;
  if (!qword_100054E88)
  {
    sub_10000A440(&qword_100054E90);
    sub_10000E130(&qword_100054E98, type metadata accessor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E88);
  }

  return result;
}

unint64_t sub_10000F4EC()
{
  result = qword_100054EA0;
  if (!qword_100054EA0)
  {
    sub_10000A440(&qword_100054D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054EA0);
  }

  return result;
}

uint64_t sub_10000F568@<X0>(uint64_t a1@<X8>)
{
  v38 = sub_1000028DC(&qword_100054F60);
  __chkstk_darwin(v38);
  v40 = (v33 - v2);
  v36 = sub_1000028DC(&qword_100054F68);
  __chkstk_darwin(v36);
  v4 = v33 - v3;
  v39 = sub_1000028DC(&qword_100054F70);
  __chkstk_darwin(v39);
  v37 = v33 - v5;
  v6 = sub_1000406BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100040B2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000028DC(&qword_100054F78);
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v34 = v33 - v15;
  v16 = sub_10004035C();
  if (v16)
  {
    v17 = *(v11 + 104);
    v33[1] = v16;
    v17(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v18 = sub_100040B5C();
    v33[0] = a1;
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v41 = v19;
    v42 = 0;
    v43 = 1;
    v44 = 0;
    v45 = 1;
    (*(v7 + 104))(v9, enum case for ColorRenderingMode.nonLinear(_:), v6);
    v20 = sub_1000028DC(&qword_100054F90);
    v21 = sub_100010384();
    v22 = v34;
    sub_100040A3C();
    (*(v7 + 8))(v9, v6);

    v23 = v35;
    (*(v35 + 16))(v4, v22, v14);
    swift_storeEnumTagMultiPayload();
    sub_1000028DC(&qword_100054FA8);
    v41 = v20;
    v42 = v21;
    swift_getOpaqueTypeConformance2();
    sub_10001045C();
    v24 = v37;
    sub_10004076C();
    sub_10000E06C(v24, v40, &qword_100054F70);
    swift_storeEnumTagMultiPayload();
    sub_1000028DC(&qword_100054F80);
    sub_1000102BC();
    sub_100010514();
    sub_10004076C();

    sub_10000A798(v24, &qword_100054F70);
    return (*(v23 + 8))(v22, v14);
  }

  else
  {
    v26 = v4;
    v27 = v37;
    v28 = v40;
    v29 = sub_10004034C();
    if (v29)
    {
      v30 = v29;
      *v26 = swift_getKeyPath();
      v26[1] = v30;
      swift_storeEnumTagMultiPayload();

      sub_1000028DC(&qword_100054FA8);
      v31 = sub_10000A440(&qword_100054F90);
      v32 = sub_100010384();
      v41 = v31;
      v42 = v32;
      swift_getOpaqueTypeConformance2();
      sub_10001045C();
      sub_10004076C();
      sub_10000E06C(v27, v28, &qword_100054F70);
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054F80);
      sub_1000102BC();
      sub_100010514();
      sub_10004076C();

      return sub_10000A798(v27, &qword_100054F70);
    }

    else
    {
      *v28 = sub_10004079C();
      swift_storeEnumTagMultiPayload();
      sub_1000028DC(&qword_100054F80);
      sub_1000102BC();
      sub_100010514();
      return sub_10004076C();
    }
  }
}

uint64_t sub_10000FC58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004064C();
  *a1 = result;
  return result;
}

uint64_t sub_10000FCD4(uint64_t a1)
{
  v2 = sub_100040B4C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10004055C();
}

unint64_t sub_10000FDA8()
{
  result = qword_100054EE8;
  if (!qword_100054EE8)
  {
    sub_10000A440(&qword_100054EC8);
    sub_10000FEB0();
    sub_100040D0C();
    sub_10000E130(&qword_100054F18, &type metadata accessor for MediaArtwork);
    sub_10000FFBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054EE8);
  }

  return result;
}

unint64_t sub_10000FEB0()
{
  result = qword_100054EF0;
  if (!qword_100054EF0)
  {
    sub_10000A440(&qword_100054EF8);
    sub_10000FF68();
    sub_10000A5A4(&qword_100054F08, &qword_100054F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054EF0);
  }

  return result;
}

unint64_t sub_10000FF68()
{
  result = qword_100054F00;
  if (!qword_100054F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F00);
  }

  return result;
}

unint64_t sub_10000FFBC()
{
  result = qword_100054F20;
  if (!qword_100054F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F20);
  }

  return result;
}

unint64_t sub_100010010()
{
  result = qword_100054F28;
  if (!qword_100054F28)
  {
    sub_10000A440(&qword_100054EE0);
    sub_10000F334(&qword_100054E70, &qword_100054E78);
    sub_10000A5A4(&qword_100054F30, &qword_100054F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F28);
  }

  return result;
}

uint64_t sub_1000100E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001015C()
{
  result = qword_100054F40;
  if (!qword_100054F40)
  {
    sub_10000A440(&qword_100054D00);
    sub_100010214();
    sub_10000A5A4(&qword_100054F58, &qword_100054D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F40);
  }

  return result;
}

unint64_t sub_100010214()
{
  result = qword_100054F48;
  if (!qword_100054F48)
  {
    sub_10000A440(&qword_100054F50);
    sub_10000FDA8();
    sub_100010010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F48);
  }

  return result;
}

unint64_t sub_1000102BC()
{
  result = qword_100054F88;
  if (!qword_100054F88)
  {
    sub_10000A440(&qword_100054F70);
    sub_10000A440(&qword_100054F90);
    sub_100010384();
    swift_getOpaqueTypeConformance2();
    sub_10001045C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F88);
  }

  return result;
}

unint64_t sub_100010384()
{
  result = qword_100054F98;
  if (!qword_100054F98)
  {
    sub_10000A440(&qword_100054F90);
    sub_10000F334(&qword_100054E70, &qword_100054E78);
    sub_10000A5A4(&qword_100054E48, &qword_100054E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F98);
  }

  return result;
}

unint64_t sub_10001045C()
{
  result = qword_100054FA0;
  if (!qword_100054FA0)
  {
    sub_10000A440(&qword_100054FA8);
    sub_10000FF68();
    sub_10000A5A4(&qword_100054E28, &qword_100054E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FA0);
  }

  return result;
}

unint64_t sub_100010514()
{
  result = qword_100054FB0;
  if (!qword_100054FB0)
  {
    sub_10000A440(&qword_100054F80);
    sub_10000FF68();
    sub_10000A5A4(&qword_100054FB8, &qword_100054FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FB0);
  }

  return result;
}

unint64_t sub_1000105D0()
{
  result = qword_100054FC8;
  if (!qword_100054FC8)
  {
    sub_10000A440(&qword_100054FD0);
    sub_1000102BC();
    sub_100010514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FC8);
  }

  return result;
}

id sub_100010668()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  result = [v0 setNumberStyle:6];
  qword_100058E20 = v0;
  return result;
}

__n128 sub_1000106B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000106CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100010714(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100010770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10003FD0C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = sub_1000028DC(&qword_100054FD8);
  __chkstk_darwin(v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_10003FD9C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003FD3C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = sub_10003FE2C();
    (*(*(v18 - 8) + 8))(a1, v18);
    result = sub_10000A798(v13, &qword_100054FD8);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v60 = v10;
    (*(v15 + 32))(v17, v13, v14);
    v26 = sub_10003FD1C();
    v24 = v26;
    if (v26)
    {
      v58 = a2;
      v59 = v17;
      v55 = a1;
      v56 = v14;
      v57 = v15;
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = 0;
        v29 = 0x64616F6C796170;
        v61 = v5 + 16;
        while (v28 < *(v24 + 16))
        {
          (*(v5 + 16))(v7, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v4);
          if (sub_10003FCEC() == v29 && v30 == 0xE700000000000000)
          {

LABEL_14:

            v35 = v60;
            (*(v5 + 32))(v60, v7, v4);
            sub_10003FCFC();
            v37 = v36;
            (*(v5 + 8))(v35, v4);
            v27 = v59;
            if (!v37)
            {
              goto LABEL_31;
            }

            v7 = sub_10003FE3C();
            v28 = v38;

            if (v28 >> 60 == 15)
            {
              goto LABEL_31;
            }

            v39 = objc_opt_self();
            isa = sub_10003FE4C().super.isa;
            v64[0] = 0;
            v41 = [v39 JSONObjectWithData:isa options:0 error:v64];

            if (v41)
            {
              v42 = v64[0];
              sub_10004113C();
              swift_unknownObjectRelease();
              sub_1000028DC(&qword_100054FE0);
              if (swift_dynamicCast())
              {
                v43 = v62;
                if (v62)
                {
                  if (*(v62 + 16))
                  {

                    v44 = sub_100024AC4(0x676E656C6C616863, 0xEB00000000444965);
                    if (v45)
                    {
                      sub_100011074(*(v43 + 56) + 32 * v44, v64);

                      if (swift_dynamicCast())
                      {
                        v21 = v63;
                        if (!*(v43 + 16))
                        {
                          goto LABEL_40;
                        }

                        v20 = v62;

                        v46 = sub_100024AC4(0x4972657469766E69, 0xE900000000000044);
                        if (v47)
                        {
                          sub_100011074(*(v43 + 56) + 32 * v46, v64);

                          if (swift_dynamicCast())
                          {
                            v24 = v62;
                            v25 = v63;
                            if (*(v43 + 16) && (v48 = sub_100024AC4(0x6F43657469766E69, 0xEA00000000006564), (v49 & 1) != 0))
                            {
                              sub_100011074(*(v43 + 56) + 32 * v48, v64);
                              sub_10001100C(v7, v28);
                              v50 = sub_10003FE2C();
                              (*(*(v50 - 8) + 8))(v55, v50);
                              (*(v57 + 8))(v59, v56);

                              result = swift_dynamicCast();
                              v22 = v62;
                              v23 = v63;
                              if (!result)
                              {
                                v22 = 0;
                                v23 = 0;
                              }
                            }

                            else
                            {
                              sub_10001100C(v7, v28);

                              v53 = sub_10003FE2C();
                              (*(*(v53 - 8) + 8))(v55, v53);
                              result = (*(v57 + 8))(v59, v56);
                              v22 = 0;
                              v23 = 0;
                            }

                            goto LABEL_33;
                          }

LABEL_40:
                          sub_10001100C(v7, v28);

LABEL_37:

LABEL_31:
                          v52 = sub_10003FE2C();
                          (*(*(v52 - 8) + 8))(v55, v52);
                          result = (*(v57 + 8))(v27, v56);
                          goto LABEL_32;
                        }

LABEL_39:

                        goto LABEL_40;
                      }
                    }

                    else
                    {
                    }
                  }

                  sub_10001100C(v7, v28);
                  goto LABEL_37;
                }
              }
            }

            else
            {
              v51 = v64[0];
              sub_10003FDDC();

              swift_willThrow();
            }

            sub_10001100C(v7, v28);
            goto LABEL_31;
          }

          v31 = v29;
          v32 = sub_10004133C();

          if (v32)
          {
            goto LABEL_14;
          }

          ++v28;
          (*(v5 + 8))(v7, v4);
          v29 = v31;
          if (v27 == v28)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_11:

      v33 = sub_10003FE2C();
      (*(*(v33 - 8) + 8))(v55, v33);
      result = (*(v57 + 8))(v59, v56);
LABEL_32:
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_33:
      a2 = v58;
    }

    else
    {
      v34 = sub_10003FE2C();
      (*(*(v34 - 8) + 8))(a1, v34);
      result = (*(v15 + 8))(v17, v14);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v25 = 0;
    }
  }

  *a2 = v20;
  a2[1] = v21;
  a2[2] = v22;
  a2[3] = v23;
  a2[4] = v24;
  a2[5] = v25;
  return result;
}

uint64_t sub_10001100C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011020(a1, a2);
  }

  return a1;
}

uint64_t sub_100011020(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100011074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000110D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1000028DC(&qword_100054A38);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_10003FE2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v18 = [a1 selectedMessage];
  if (!v18)
  {

    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_8:
    result = sub_10000A798(v9, &qword_100054A38);
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v18 URL];

  if (v20)
  {
    sub_10003FE0C();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_100011434(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    goto LABEL_8;
  }

  (*(v11 + 32))(v17, v9, v10);
  (*(v11 + 16))(v13, v17, v10);
  sub_100010770(v13, &v30);
  v27 = v30;
  v26 = v31;
  v25 = v32;

  sub_1000114A4(&v30, &v28);
  result = (*(v11 + 8))(v17, v10);
  if (*(&v30 + 1))
  {
    v28 = v31;
    v29 = v32;
    v33 = v30;
    sub_100011514(&v33);
    v34 = v28;
    sub_10000A798(&v34, &qword_100054FF0);
    v35 = v29;
    result = sub_100011514(&v35);
    v22 = v27;
    v23 = v26;
    v24 = v25;
    goto LABEL_10;
  }

LABEL_9:
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
LABEL_10:
  *a2 = v22;
  a2[1] = v23;
  a2[2] = v24;
  return result;
}

uint64_t sub_100011434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_100054A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000114A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_100054FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011568()
{
  v0 = sub_10004039C();
  sub_10000A7F8(v0, qword_100058E28);
  sub_10000A760(v0, qword_100058E28);
  return sub_10004038C();
}

uint64_t property wrapper backing initializer of ChallengesSlashHeaderView.viewFrames()
{
  sub_1000028DC(&qword_100054FF8);
  sub_100040BDC();
  return v1;
}

uint64_t property wrapper backing initializer of ChallengesSlashHeaderView.containerSize()
{
  sub_1000028DC(&qword_100055000);
  sub_100040BDC();
  return v1;
}

uint64_t ChallengesSlashHeaderView.init(items:style:focusIndex:safeAreaInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  sub_1000027F0(&_swiftEmptyArrayStorage);
  sub_1000028DC(&qword_100054FF8);
  sub_100040BDC();
  *(a8 + 88) = v28;
  sub_1000028DC(&qword_100055000);
  sub_100040BDC();
  *(a8 + 104) = v28;
  *(a8 + 120) = v29;
  *(a8 + 128) = v30;
  v24 = type metadata accessor for ChallengesSlashHeaderView(0);
  v25 = v24[10];
  *(a8 + v25) = swift_getKeyPath();
  sub_1000028DC(&qword_100054690);
  result = swift_storeEnumTagMultiPayload();
  *(a8 + v24[11]) = 0x4031000000000000;
  *(a8 + v24[12]) = 0x4020000000000000;
  v27 = (a8 + v24[13]);
  *v27 = 0xD000000000000017;
  v27[1] = 0x8000000100041D40;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  *(a8 + 56) = a9;
  *(a8 + 64) = a10;
  *(a8 + 72) = a11;
  *(a8 + 80) = a12;
  return result;
}

uint64_t ChallengesSlashHeaderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ChallengesSlashHeaderView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  *a1 = sub_100040C7C();
  a1[1] = v7;
  v8 = sub_1000028DC(&qword_100055008);
  sub_1000119EC(v1, a1 + *(v8 + 44));
  v9 = (v1 + *(v4 + 60));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(sub_1000028DC(&qword_100055010) + 36));
  *v12 = v11;
  v12[1] = v10;
  sub_100016BEC(v1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesSlashHeaderView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100016C54(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ChallengesSlashHeaderView);
  v15 = (a1 + *(sub_1000028DC(&qword_100055018) + 36));
  *v15 = sub_100013858;
  v15[1] = 0;
  v15[2] = sub_1000159DC;
  v15[3] = v14;
}

uint64_t sub_1000119EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = sub_1000028DC(&qword_100055420);
  __chkstk_darwin(v3 - 8);
  *&v95 = &v80 - v4;
  v87 = sub_1000028DC(&qword_100055428);
  v5 = __chkstk_darwin(v87);
  v86 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v80 - v7;
  v90 = sub_1000028DC(&qword_100055430);
  v8 = __chkstk_darwin(v90);
  v91 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v80 - v10;
  v12 = type metadata accessor for ChallengesSlashHeaderView(0);
  v93 = *(v12 - 8);
  v13 = *(v93 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000028DC(&qword_100055438);
  __chkstk_darwin(v15);
  *&v94 = &v80 - v16;
  v17 = sub_1000028DC(&qword_100055440);
  v18 = __chkstk_darwin(v17 - 8);
  v89 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(a1 + 96);
  v97 = *(a1 + 88);
  v98 = v22;
  sub_1000028DC(&qword_100055448);
  sub_100040BEC();
  v23 = *(v96 + 16);

  v24 = *a1;
  v25 = v23 == *(*a1 + 16);
  v84 = v15;
  if (v25)
  {
    v97 = v24;

    sub_1000028DC(&qword_100055468);
    sub_10000A5A4(&qword_100055470, &qword_100055468);
    v88 = v13;
    sub_10004033C();
    KeyPath = swift_getKeyPath();
    sub_100016BEC(a1, v14, type metadata accessor for ChallengesSlashHeaderView);
    v26 = *(v93 + 80);
    v83 = v11;
    v27 = (v26 + 16) & ~v26;
    v28 = swift_allocObject();
    sub_100016C54(v14, v28 + v27, type metadata accessor for ChallengesSlashHeaderView);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_10001741C;
    *(v29 + 24) = v28;
    sub_1000028DC(&qword_1000554C0);
    sub_10000A5A4(&qword_100055480, &qword_100055438);
    sub_100017538();
    v11 = v83;
    sub_100040C2C();
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_1000028DC(&qword_100055450);
  v32 = *(*(v31 - 8) + 56);
  v88 = v21;
  v32(v21, v30, 1, v31);
  v83 = sub_100040ACC();
  KeyPath = sub_100040C7C();
  v81 = v33;
  v34 = *(v24 + 16) < 4uLL;
  v80 = &v11[*(sub_1000028DC(&qword_100055458) + 36)];
  v35 = sub_1000406AC();
  v36 = v95;
  *v95 = v35;
  *(v36 + 8) = 0;
  *(v36 + 16) = v34;
  sub_1000028DC(&qword_100055460);
  v97 = v24;

  sub_1000028DC(&qword_100055468);
  sub_10000A5A4(&qword_100055470, &qword_100055468);
  sub_10004033C();
  swift_getKeyPath();
  sub_100016BEC(a1, v14, type metadata accessor for ChallengesSlashHeaderView);
  v37 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v38 = swift_allocObject();
  sub_100016C54(v14, v38 + v37, type metadata accessor for ChallengesSlashHeaderView);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100017298;
  *(v39 + 24) = v38;
  sub_1000028DC(&qword_100055478);
  sub_10000A5A4(&qword_100055480, &qword_100055438);
  sub_1000172EC();
  sub_100040C2C();
  v40 = *(a1 + 32) ^ 1;
  v41 = v86;
  sub_10001772C(v95, v86, &qword_100055420);
  v42 = (v41 + *(v87 + 36));
  *v42 = v40;
  v42[1] = 1;
  v43 = v41;
  v44 = v85;
  sub_10001772C(v43, v85, &qword_100055428);
  v45 = v44;
  v46 = v80;
  sub_10001772C(v45, v80, &qword_100055428);
  v47 = (v46 + *(sub_1000028DC(&qword_1000554A8) + 36));
  v48 = v81;
  *v47 = KeyPath;
  v47[1] = v48;
  *v11 = v83;
  *(v11 + 4) = 256;
  v49 = sub_100040C7C();
  v51 = v50;
  LOBYTE(v46) = sub_10004087C();
  sub_1000403DC();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = sub_10004081C();
  sub_1000403DC();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  LOBYTE(v97) = 0;
  LOBYTE(v96) = 0;
  v69 = &v11[*(sub_1000028DC(&qword_1000554B0) + 36)];
  *v69 = v49;
  *(v69 + 1) = v51;
  v69[16] = v46;
  *(v69 + 3) = v53;
  *(v69 + 4) = v55;
  *(v69 + 5) = v57;
  *(v69 + 6) = v59;
  v69[56] = 0;
  v69[64] = v60;
  *(v69 + 9) = v62;
  *(v69 + 10) = v64;
  *(v69 + 11) = v66;
  *(v69 + 12) = v68;
  v69[104] = 0;
  v70 = *(a1 + 56);
  v94 = *(a1 + 72);
  v95 = v70;
  v71 = sub_10004082C();
  v72 = v89;
  v73 = &v11[*(v90 + 36)];
  *v73 = v71;
  v74 = v95;
  *(v73 + 24) = v94;
  *(v73 + 8) = v74;
  v73[40] = 0;
  v75 = v88;
  sub_10000E06C(v88, v72, &qword_100055440);
  v76 = v91;
  sub_10000E06C(v11, v91, &qword_100055430);
  v77 = v92;
  sub_10000E06C(v72, v92, &qword_100055440);
  v78 = sub_1000028DC(&qword_1000554B8);
  sub_10000E06C(v76, v77 + *(v78 + 48), &qword_100055430);
  sub_10000A798(v11, &qword_100055430);
  sub_10000A798(v75, &qword_100055440);
  sub_10000A798(v76, &qword_100055430);
  return sub_10000A798(v72, &qword_100055440);
}

uint64_t sub_10001244C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v124 = sub_1000028DC(&qword_100055518);
  __chkstk_darwin(v124);
  v7 = &v107 - v6;
  v8 = COERCE_DOUBLE(sub_1000028DC(&qword_1000554E8));
  __chkstk_darwin(*&v8);
  v122 = &v107 - v9;
  v10 = sub_1000028DC(&qword_1000554D8);
  v125 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v123 = &v107 - v11;
  v12 = sub_1000404DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v14) = *(a2 + 120);
  v16 = *(a2 + 128);
  v129 = *(a2 + 104);
  v130 = v14;
  v131 = v16;
  sub_1000028DC(&qword_100055418);
  sub_100040BEC();
  if (v128)
  {
    v17 = 1;
LABEL_11:
    v31 = a3;
    return (*(v125 + 56))(v31, v17, 1, v10);
  }

  v119 = v8;
  v120 = *&v7;
  v121 = v10;
  v18 = v126;
  v19 = v127;
  v21 = *(a2 + 88);
  v20 = *(a2 + 96);
  *&v129 = v21;
  *(&v129 + 1) = v20;
  sub_1000028DC(&qword_100055448);
  sub_100040BEC();
  v22 = v126;
  if (!*(*&v126 + 16) || (v23 = sub_100024B3C(a1), (v24 & 1) == 0))
  {

    v17 = 1;
    v10 = v121;
    goto LABEL_11;
  }

  v25 = *(*&v22 + 56) + 32 * v23;
  v27 = *v25;
  v26 = *(v25 + 8);
  v29 = *(v25 + 16);
  v28 = *(v25 + 24);

  v116 = a3;
  if (a1)
  {
    if (*(*a2 + 16) - 1 == a1)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    LODWORD(v115) = v30;
  }

  else
  {
    LODWORD(v115) = 0;
  }

  v33 = type metadata accessor for ChallengesSlashHeaderView(0);
  sub_100039BF4(v15);
  result = (*(v13 + 88))(v15, v12);
  v34 = __OFADD__(a1, 1);
  v35 = a1 + 1;
  v36 = v34;
  v117 = v18;
  v118 = v19;
  if (result == enum case for LayoutDirection.rightToLeft(_:))
  {
    if ((v36 & 1) == 0)
    {
      *&v129 = v21;
      *(&v129 + 1) = v20;
      sub_100040BEC();
      v37 = v126;
      if (*(*&v126 + 16))
      {
        v38 = sub_100024B3C(v35);
        v39 = *&v120;
        v40 = v119;
        v41 = *&v123;
        if (v42)
        {
          v43 = 0;
          v44 = *(*&v37 + 56) + 32 * v38;
          v45 = *(v44 + 8);
          v111 = *v44;
          v109 = v45;
          v46 = *(v44 + 24);
          v108 = *(v44 + 16);
        }

        else
        {
          v46 = 0.0;
          v111 = 0.0;
          v43 = 1;
          v109 = 0.0;
          v108 = 0.0;
        }

        v107 = v46;
      }

      else
      {
        v111 = 0.0;
        v43 = 1;
        v109 = 0.0;
        v108 = 0.0;
        v107 = 0.0;
        v39 = *&v120;
        v40 = v119;
        v41 = *&v123;
      }

      v54 = *(a2 + *(v33 + 44));
      v112 = *(a2 + *(v33 + 48));
      v55 = v54 * 3.14159265 / 180.0;
      v132.origin.x = v27;
      v132.origin.y = v26;
      v132.size.width = v29;
      v132.size.height = v28;
      MinY = CGRectGetMinY(v132);
      v57 = tan(v55);
      v133.origin.x = v27;
      v133.origin.y = v26;
      v133.size.width = v29;
      v133.size.height = v28;
      Height = CGRectGetHeight(v133);
      v110 = MinY;
      v59 = v57 * (MinY + Height);
      v134.origin.x = v27;
      v134.origin.y = v26;
      v134.size.width = v29;
      v134.size.height = v28;
      v114 = v19 - CGRectGetMaxY(v134);
      v113 = v59;
      if (v43)
      {
        v135.origin.x = v27;
        v135.origin.y = v26;
        v135.size.width = v29;
        v135.size.height = v28;
        Width = CGRectGetWidth(v135);
      }

      else
      {
        v61 = v111;
        v136.origin.x = v111;
        v62 = v109;
        v136.origin.y = v109;
        v63 = v108;
        v136.size.width = v108;
        v123 = v57;
        v64 = v107;
        v136.size.height = v107;
        v120 = CGRectGetMinY(v136);
        v137.origin.x = v61;
        v137.origin.y = v62;
        v137.size.width = v63;
        v137.size.height = v64;
        v120 = v123 * (v120 + CGRectGetHeight(v137));
        v138.origin.x = v61;
        v138.origin.y = v62;
        v138.size.width = v63;
        v138.size.height = v64;
        v57 = v123;
        v65 = v117 - CGRectGetMaxX(v138) + v120;
        v18 = v117;
        v139.origin.x = v27;
        v139.origin.y = v26;
        v139.size.width = v29;
        v139.size.height = v28;
        v66 = v113 + v18 - CGRectGetMinX(v139) - v65;
        v140.origin.x = v27;
        v140.origin.y = v26;
        v140.size.width = v29;
        v140.size.height = v28;
        Width = CGRectGetWidth(v140) - v66;
      }

      v111 = Width;
      v67 = v116;
      v68 = LOBYTE(v115);
      v69 = v114;
      v70 = v57 * v114;
      v123 = 0.0;
      v120 = v118;
      v71 = v112;
      if (!LOBYTE(v115) || (v141.origin.x = v27, v141.origin.y = v26, v141.size.width = v29, v141.size.height = v28, v123 = v71 + v18 - CGRectGetMaxX(v141) - v70, v142.origin.x = v27, v142.origin.y = v26, v142.size.width = v29, v142.size.height = v28, v72 = CGRectGetMaxY(v142), v69 = v114, v120 = v114 + v72, v119 = v18, v115 = v118, v68 == 1))
      {
        v143.origin.x = v27;
        v143.origin.y = v26;
        v143.size.width = v29;
        v143.size.height = v28;
        v119 = v71 + v18 - (CGRectGetMaxX(v143) - v111) - v70;
        v144.origin.x = v27;
        v144.origin.y = v26;
        v144.size.width = v29;
        v144.size.height = v28;
        MaxY = CGRectGetMaxY(v144);
        v74 = 0.0;
        v115 = v69 + MaxY;
        v75 = 0.0;
        if (!v68)
        {
          goto LABEL_38;
        }
      }

      v145.origin.x = v27;
      v145.origin.y = v26;
      v145.size.width = v29;
      v145.size.height = v28;
      MaxX = CGRectGetMaxX(v145);
      v146.origin.x = v27;
      v146.origin.y = v26;
      v146.size.width = v29;
      v146.size.height = v28;
      v77 = CGRectGetMinY(v146);
      if (v68 != 2)
      {
        v18 = v117;
        v78 = v113 + v117 - MaxX;
        v71 = v112;
        v74 = v112 + v78;
        v75 = v77 - v110;
LABEL_38:
        v114 = v74;
        v147.origin.x = v27;
        v147.origin.y = v26;
        v147.size.width = v29;
        v147.size.height = v28;
        v79 = v71 + v113 + v18 - (CGRectGetMaxX(v147) - v111);
        v148.origin.x = v27;
        v148.origin.y = v26;
        v148.size.width = v29;
        v148.size.height = v28;
        v80 = CGRectGetMinY(v148) - v110;
LABEL_49:
        v97 = sub_100040ADC();
        v98 = v122;
        v99 = &v122[*(*&v40 + 36)];
        v100 = v123;
        v101 = v120;
        *v99 = v123;
        v99[1] = v101;
        v102 = v119;
        v103 = v115;
        v99[2] = v119;
        v99[3] = v103;
        v99[4] = v79;
        v99[5] = v80;
        v104 = v114;
        v99[6] = v114;
        v99[7] = v75;
        v105 = v118;
        v99[8] = v117;
        v99[9] = v105;
        v106 = *(type metadata accessor for BackgroundGradient(0) + 24);
        *(v99 + v106) = swift_getKeyPath();
        sub_1000028DC(&qword_100054690);
        swift_storeEnumTagMultiPayload();
        *v98 = v100;
        *(v98 + 8) = v101;
        *(v98 + 16) = v102;
        *(v98 + 24) = v103;
        *(v98 + 32) = v79;
        *(v98 + 40) = v80;
        *(v98 + 48) = v104;
        *(v98 + 56) = v75;
        *(v98 + 64) = v97;
        *(v98 + 72) = 256;
        sub_10000E06C(v98, v39, &qword_1000554E8);
        swift_storeEnumTagMultiPayload();
        sub_100017648();
        sub_10004076C();
        sub_10000A798(v98, &qword_1000554E8);
LABEL_51:
        v10 = v121;
        sub_10001772C(v41, v67, &qword_1000554D8);
        v31 = v67;
        v17 = 0;
        return (*(v125 + 56))(v31, v17, 1, v10);
      }

LABEL_50:
      swift_storeEnumTagMultiPayload();
      sub_100017648();
      sub_10004076C();
      goto LABEL_51;
    }

    __break(1u);
  }

  else if ((v36 & 1) == 0)
  {
    *&v129 = v21;
    *(&v129 + 1) = v20;
    sub_100040BEC();
    v47 = v126;
    if (*(*&v126 + 16))
    {
      v48 = sub_100024B3C(v35);
      v39 = *&v120;
      v40 = v119;
      v41 = *&v123;
      if (v49)
      {
        v50 = 0;
        v51 = *(*&v47 + 56) + 32 * v48;
        v52 = *v51;
        v114 = *(v51 + 8);
        v53 = *(v51 + 24);
        v111 = *(v51 + 16);
      }

      else
      {
        v52 = 0.0;
        v50 = 1;
        v53 = 0.0;
        v114 = 0.0;
        v111 = 0.0;
      }

      v108 = v53;
    }

    else
    {
      v52 = 0.0;
      v50 = 1;
      v114 = 0.0;
      v111 = 0.0;
      v108 = 0.0;
      v39 = *&v120;
      v40 = v119;
      v41 = *&v123;
    }

    v81 = *(a2 + *(v33 + 48));
    v82 = *(a2 + *(v33 + 44)) * 3.14159265 / 180.0;
    v149.origin.x = v27;
    v149.origin.y = v26;
    v149.size.width = v29;
    v149.size.height = v28;
    v83 = CGRectGetMinY(v149);
    v84 = tan(v82);
    v150.origin.x = v27;
    v150.origin.y = v26;
    v150.size.width = v29;
    v150.size.height = v28;
    v85 = CGRectGetHeight(v150);
    v110 = v83;
    v86 = v84 * (v83 + v85);
    v151.origin.x = v27;
    v151.origin.y = v26;
    v151.size.width = v29;
    v151.size.height = v28;
    v113 = v118 - CGRectGetMaxY(v151);
    v109 = v81;
    v112 = v86;
    if (v50)
    {
      v152.origin.x = v27;
      v152.origin.y = v26;
      v152.size.width = v29;
      v152.size.height = v28;
      v87 = CGRectGetWidth(v152);
    }

    else
    {
      v153.origin.x = v52;
      v88 = v114;
      v153.origin.y = v114;
      v123 = v84;
      v89 = v111;
      v153.size.width = v111;
      v90 = v108;
      v153.size.height = v108;
      v120 = CGRectGetMinY(v153);
      v154.origin.x = v52;
      v154.origin.y = v88;
      v154.size.width = v89;
      v154.size.height = v90;
      v120 = v123 * (v120 + CGRectGetHeight(v154));
      v155.origin.x = v52;
      v155.origin.y = v88;
      v155.size.width = v89;
      v84 = v123;
      v155.size.height = v90;
      v91 = CGRectGetMinX(v155) + v120;
      v156.origin.x = v27;
      v156.origin.y = v26;
      v156.size.width = v29;
      v156.size.height = v28;
      v92 = v112 + CGRectGetMinX(v156);
      v157.origin.x = v27;
      v157.origin.y = v26;
      v157.size.width = v29;
      v157.size.height = v28;
      v93 = v92 + CGRectGetWidth(v157) - v91;
      v158.origin.x = v27;
      v158.origin.y = v26;
      v158.size.width = v29;
      v158.size.height = v28;
      v87 = CGRectGetWidth(v158) - v93;
    }

    v94 = v116;
    v95 = LOBYTE(v115);
    v111 = v84 * v113;
    v114 = 0.0;
    v123 = 0.0;
    v120 = 0.0;
    v96 = v109;
    if (LOBYTE(v115) && (v159.origin.x = v27, v159.origin.y = v26, v159.size.width = v29, v159.size.height = v28, v123 = v96 + v112 + CGRectGetMinX(v159), v160.origin.x = v27, v160.origin.y = v26, v160.size.width = v29, v160.size.height = v28, v120 = CGRectGetMinY(v160) - v110, v115 = 0.0, v79 = v117, v80 = v118, v119 = v117, v95 != 1) || (v161.origin.x = v27, v161.origin.y = v26, v161.size.width = v29, v161.size.height = v28, v119 = v96 + v87 + v112 + CGRectGetMinX(v161), v162.origin.x = v27, v162.origin.y = v26, v162.size.width = v29, v162.size.height = v28, v115 = CGRectGetMinY(v162) - v110, v163.origin.x = v27, v163.origin.y = v26, v163.size.width = v29, v163.size.height = v28, v79 = v96 + v87 + CGRectGetMinX(v163) - v111, v164.origin.x = v27, v164.origin.y = v26, v164.size.width = v29, v164.size.height = v28, v80 = v113 + CGRectGetMaxY(v164), v75 = v118, v95))
    {
      v165.origin.x = v27;
      v165.origin.y = v26;
      v165.size.width = v29;
      v165.size.height = v28;
      v114 = v96 + CGRectGetMinX(v165) - v111;
      v166.origin.x = v27;
      v166.origin.y = v26;
      v166.size.width = v29;
      v166.size.height = v28;
      v75 = v113 + CGRectGetMaxY(v166);
    }

    (*(v13 + 8))(v15, v12);
    v67 = v94;
    if (v95 <= 1u)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_100013254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ChallengesSlashHeaderView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 8);
  v13 = *(*a3 + 16);
  v14 = *(a3 + 16);
  v15 = *(a3 + 40);
  v16 = *(a3 + 48);
  if (v15 == a1)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a3 + 48);
  }

  if (*(a3 + 32) == 1)
  {
    v18 = *(a3 + 24);
    if (!(v14 | v12 | v18))
    {
      v20 = v17 == 0;
      v21 = 68.0;
      v22 = 126.0;
      goto LABEL_17;
    }

    v19 = v18 | v14;
    if (v12 == 1 && !v19)
    {
      v20 = v17 == 0;
      v21 = 56.0;
      v22 = 100.0;
      goto LABEL_17;
    }

    if (v12 == 2 && !v19)
    {
      v20 = v17 == 0;
      v21 = 50.0;
      v22 = 75.0;
LABEL_17:
      if (v20)
      {
        v24 = v21;
      }

      else
      {
        v24 = v22;
      }

      goto LABEL_20;
    }

    if (v13 == 1)
    {
      goto LABEL_30;
    }

    if (v13 != 2)
    {
      if (v13 >= 4)
      {
        v21 = 64.0;
        if (v17)
        {
          v21 = 111.0;
        }

        v20 = v16 == 0;
        v22 = 70.0;
      }

      else
      {
        v21 = 72.0;
        if (v17)
        {
          v21 = 132.0;
        }

        v20 = v16 == 0;
        v22 = 88.0;
      }

      goto LABEL_17;
    }

    if (v16)
    {
LABEL_30:
      v24 = 132.0;
    }

    else
    {
      v40 = 88.0;
      if (!v15)
      {
        v40 = 72.0;
      }

      if (v15 == a1)
      {
        v24 = 132.0;
      }

      else
      {
        v24 = v40;
      }
    }
  }

  else
  {
    if (v17)
    {
      v23 = *(a3 + 8);
    }

    else
    {
      v23 = *(a3 + 16);
    }

    v24 = v23;
  }

LABEL_20:
  if (v13 - 1 == a1)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  if (a1)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  sub_100016BEC(a2, a4, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  v27 = *(a3 + 56);
  v41 = *(a3 + 72);
  v42 = v27;
  sub_1000408BC();
  v28 = sub_1000408AC();

  v29 = *(a3 + *(v8 + 44));
  v30 = *(a3 + *(v8 + 48));
  v31 = type metadata accessor for ItemView(0);
  *(a4 + v31[5]) = v24;
  v32 = (a4 + v31[6]);
  v33 = v41;
  *v32 = v42;
  v32[1] = v33;
  *(a4 + v31[7]) = v28;
  *(a4 + v31[8]) = v29;
  *(a4 + v31[9]) = v30;
  *(a4 + v31[10]) = v26;
  sub_100016BEC(a3, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesSlashHeaderView);
  v34 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v35 = v34 + v10;
  v36 = swift_allocObject();
  sub_100016C54(v11, v36 + v34, type metadata accessor for ChallengesSlashHeaderView);
  sub_100016BEC(a3, v11, type metadata accessor for ChallengesSlashHeaderView);
  v37 = swift_allocObject();
  sub_100016C54(v11, v37 + v34, type metadata accessor for ChallengesSlashHeaderView);
  *(v37 + ((v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  result = sub_1000028DC(&qword_100055478);
  v39 = (a4 + *(result + 36));
  *v39 = sub_100017794;
  v39[1] = v36;
  v39[2] = sub_100017970;
  v39[3] = v37;
  return result;
}

uint64_t sub_10001362C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_10004077C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for ChallengesSlashHeaderView(0) + 52));
  v10 = *v8;
  v9 = v8[1];
  v20[0] = v10;
  v20[1] = v9;
  sub_1000407BC();
  sub_10004047C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v18;
  return result;
}

uint64_t sub_100013770(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];

  sub_1000028DC(&qword_100055448);
  sub_100040BEC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003D824(a3, isUniquelyReferenced_nonNull_native, v4, v5, v6, v7);
  sub_100040BFC();
}

uint64_t sub_100013858@<X0>(void *a1@<X8>)
{
  result = sub_10004046C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000138F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_100040C7C();
  a2[1] = v9;
  v10 = sub_1000028DC(&qword_100055008);
  sub_1000119EC(v3, a2 + *(v10 + 44));
  v11 = (v3 + *(v5 + 60));
  v13 = *v11;
  v12 = v11[1];
  v14 = (a2 + *(sub_1000028DC(&qword_100055010) + 36));
  *v14 = v13;
  v14[1] = v12;
  sub_100016BEC(v3, v8, type metadata accessor for ChallengesSlashHeaderView);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_100016C54(v8, v16 + v15, type metadata accessor for ChallengesSlashHeaderView);
  v17 = (a2 + *(sub_1000028DC(&qword_100055018) + 36));
  *v17 = sub_100013858;
  v17[1] = 0;
  v17[2] = sub_100017D00;
  v17[3] = v16;
}

uint64_t sub_100013AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000028DC(&qword_1000547F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_100016BEC(v1, &v25 - v16, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  v18 = &v17[*(sub_1000028DC(&qword_100055100) + 48)];
  v19 = *v18;
  v20 = v18[8];
  sub_100016C54(v17, v11, type metadata accessor for PlayerAvatar);
  if (*(v1 + *(type metadata accessor for ItemView(0) + 40)))
  {
    v21 = 1;
  }

  else
  {
    sub_100016BEC(v1, v15, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
    sub_100016C54(v15, v9, type metadata accessor for PlayerAvatar);
    sub_10000E06C(&v9[*(v6 + 20)], v5, &qword_1000547F0);
    sub_100007528(v9);
    v22 = type metadata accessor for PlayerAvatar.Overlay(0);
    v21 = (*(*(v22 - 8) + 48))(v5, 1, v22) == 1;
    sub_10000A798(v5, &qword_1000547F0);
  }

  *a1 = sub_1000406AC();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v23 = sub_1000028DC(&qword_100055368);
  sub_100013D94(v21, v19, v20, v1, v11, a1 + *(v23 + 44));
  return sub_100007528(v11);
}

uint64_t sub_100013D94@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v109 = a6;
  v110 = a4;
  v10 = sub_1000028DC(&qword_1000547F0);
  __chkstk_darwin(v10 - 8);
  v103 = &v95[-v11];
  v12 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  __chkstk_darwin(v12 - 8);
  v100 = &v95[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for PlayerAvatar(0);
  v15 = __chkstk_darwin(v14);
  v99 = &v95[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v95[-v17];
  v98 = sub_1000028DC(&qword_100055370);
  __chkstk_darwin(v98);
  v20 = &v95[-v19];
  v102 = sub_1000028DC(&qword_100055378);
  __chkstk_darwin(v102);
  v107 = &v95[-v21];
  v105 = sub_1000028DC(&qword_100055380);
  __chkstk_darwin(v105);
  v104 = &v95[-v22];
  v23 = sub_1000028DC(&qword_100055388);
  __chkstk_darwin(v23 - 8);
  v106 = &v95[-v24];
  v101 = sub_1000028DC(&qword_100055390);
  v25 = __chkstk_darwin(v101);
  v118 = &v95[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v95[-v28];
  __chkstk_darwin(v27);
  v120 = &v95[-v30];
  LODWORD(v108) = a1;
  v97 = a2;
  v96 = a3;
  if ((a1 & 1) != 0 || (sub_100016CBC(a2, a3 & 1), !v31))
  {
    v116 = 0;
    v117 = 0;
    KeyPath = 0;
    v115 = 0;
    v112 = 0;
    v113 = 0uLL;
    v119 = 0;
    v111 = 0;
  }

  else
  {
    type metadata accessor for ItemView(0);
    v32 = sub_10004099C();
    v116 = v33;
    v117 = v32;
    v35 = v34;
    v115 = v36;

    KeyPath = swift_getKeyPath();
    v37 = swift_getKeyPath();
    LOBYTE(v132) = v35 & 1;
    LOBYTE(v131[0]) = 0;
    v111 = v35 & 1;
    *&v113 = 0;
    *(&v113 + 1) = v37;
    v119 = 0x3FD3333333333333;
    v112 = 1;
  }

  sub_100016BEC(a5, v18, type metadata accessor for PlayerAvatar);

  sub_100002CC0(&_swiftEmptyArrayStorage);
  sub_100040CDC();
  type metadata accessor for PlayerAvatarView.AvatarType(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(v14 + 20);
  v39 = type metadata accessor for PlayerAvatarView(0);
  sub_10000E06C(&v18[v38], &v20[*(v39 + 20)], &qword_1000547F0);
  sub_100007528(v18);
  v40 = &v20[*(v39 + 24)];
  *(v40 + 4) = 0;
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_1000411AC(17);

  v132 = 0x612D726579616C70;
  v133 = 0xEF402D7261746176;
  v41 = type metadata accessor for ItemView(0);
  v42 = v110;
  v143._countAndFlagsBits = sub_10004108C();
  sub_100040EEC(v143);

  v43 = v132;
  v44 = v133;
  v45 = &v20[*(sub_1000028DC(&qword_100055398) + 52)];
  *v45 = v43;
  v45[1] = v44;
  sub_100040C7C();
  sub_10004045C();
  v46 = &v20[*(v98 + 36)];
  v47 = v141;
  *v46 = v140;
  v46[1] = v47;
  v46[2] = v142;
  LOBYTE(v43) = sub_10004086C();
  v48 = v100;
  sub_100016BEC(v42, v100, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  v49 = v48;
  v50 = v99;
  sub_100016C54(v49, v99, type metadata accessor for PlayerAvatar);
  v51 = &v50[*(v14 + 20)];
  v52 = v103;
  sub_10000E06C(v51, v103, &qword_1000547F0);
  sub_100007528(v50);
  v53 = type metadata accessor for PlayerAvatar.Overlay(0);
  (*(*(v53 - 8) + 48))(v52, 1, v53);
  sub_10000A798(v52, &qword_1000547F0);
  sub_1000403DC();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v107;
  sub_10001772C(v20, v107, &qword_100055370);
  v63 = &v62[*(v102 + 36)];
  *v63 = v43;
  *(v63 + 1) = v55;
  *(v63 + 2) = v57;
  *(v63 + 3) = v59;
  *(v63 + 4) = v61;
  v63[40] = 0;
  v64 = *(v42 + v41[8]);
  LOBYTE(v43) = *(v42 + v41[10]);
  v65 = *(v42 + v41[9]);
  v66 = v62;
  v67 = v104;
  sub_10001772C(v66, v104, &qword_100055378);
  v68 = v106;
  v69 = v67 + *(v105 + 36);
  *v69 = v64;
  *(v69 + 8) = v43;
  *(v69 + 16) = v65;
  *(v69 + 24) = 256;
  sub_10001772C(v67, v68, &qword_100055380);
  sub_100040ABC();
  v70 = sub_100040AEC();

  sub_10001772C(v68, v29, &qword_100055388);
  v71 = &v29[*(v101 + 36)];
  *v71 = v70;
  *(v71 + 8) = xmmword_100047BC0;
  *(v71 + 3) = 0x4024000000000000;
  sub_10001772C(v29, v120, &qword_100055390);
  if ((v108 & 1) != 0 && (sub_100016CBC(v97, v96 & 1), v72))
  {
    v110 = sub_10004099C();
    v107 = v74;
    v108 = v73;
    v76 = v75;

    v106 = swift_getKeyPath();
    v77 = swift_getKeyPath();
    LOBYTE(v132) = v76 & 1;
    LOBYTE(v131[0]) = 0;
    v78 = v76 & 1;
    v104 = 0x3FD3333333333333;
    v105 = v77;
    v79 = 1;
  }

  else
  {
    v110 = 0;
    v107 = 0;
    v108 = 0;
    v105 = 0;
    v106 = 0;
    v79 = 0;
    v104 = 0;
    v78 = 0;
  }

  v101 = v79;
  v102 = v78;
  v103 = 0;
  v80 = v118;
  sub_10000E06C(v120, v118, &qword_100055390);
  *&v121 = v117;
  *(&v121 + 1) = v116;
  *&v122 = v111;
  *(&v122 + 1) = v115;
  *&v123 = KeyPath;
  *(&v123 + 1) = v112;
  v124 = v113;
  v125 = v119;
  v81 = v109;
  *(v109 + 64) = v119;
  v82 = v124;
  v81[2] = v123;
  v81[3] = v82;
  v83 = v122;
  *v81 = v121;
  v81[1] = v83;
  v84 = sub_1000028DC(&qword_1000553A0);
  sub_10000E06C(v80, v81 + *(v84 + 48), &qword_100055390);
  v85 = v81 + *(v84 + 64);
  v86 = v110;
  v88 = v107;
  v87 = v108;
  *&v126 = v110;
  *(&v126 + 1) = v108;
  *&v127 = v78;
  *(&v127 + 1) = v107;
  v89 = v106;
  *&v128 = v106;
  *(&v128 + 1) = v79;
  *&v129 = 0;
  v90 = v104;
  v91 = v105;
  *(&v129 + 1) = v105;
  v130 = v104;
  v92 = v129;
  *(v85 + 2) = v128;
  *(v85 + 3) = v92;
  *(v85 + 8) = v90;
  v93 = v127;
  *v85 = v126;
  *(v85 + 1) = v93;
  sub_10000E06C(&v121, &v132, &qword_1000553A8);
  sub_10000E06C(&v126, &v132, &qword_1000553A8);
  sub_10000A798(v120, &qword_100055390);
  v131[0] = v86;
  v131[1] = v87;
  v131[2] = v102;
  v131[3] = v88;
  v131[4] = v89;
  v131[5] = v101;
  v131[6] = v103;
  v131[7] = v91;
  v131[8] = v90;
  sub_10000A798(v131, &qword_1000553A8);
  sub_10000A798(v118, &qword_100055390);
  v132 = v117;
  v133 = v116;
  v134 = v111;
  v135 = v115;
  v136 = KeyPath;
  v137 = v112;
  v138 = v113;
  v139 = v119;
  return sub_10000A798(&v132, &qword_1000553A8);
}

uint64_t sub_10001480C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v77 = sub_1000028DC(&qword_1000553B0);
  __chkstk_darwin(v77);
  *&v64 = &v63 - v1;
  v75 = sub_1000028DC(&qword_1000553B8);
  __chkstk_darwin(v75);
  v76 = &v63 - v2;
  v3 = sub_10004042C();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v5 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10004043C();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_100040C4C();
  v9 = *(v70 - 8);
  v10 = __chkstk_darwin(v70);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v74 = sub_1000028DC(&qword_1000553C0);
  __chkstk_darwin(v74);
  v15 = &v63 - v14;
  v16 = sub_1000404DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackgroundGradient(0);
  sub_100039BF4(v19);
  v71 = v17;
  v20 = *(v17 + 88);
  v73 = v16;
  if (v20(v19, v16) == enum case for LayoutDirection.rightToLeft(_:))
  {
    sub_1000028DC(&qword_1000553C8);
    v21 = swift_allocObject();
    v64 = xmmword_100047BD0;
    *(v21 + 16) = xmmword_100047BD0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1065353216;
    *(v21 + 48) = 0x3F4CCCCD00000000;
    *(v21 + 56) = 0x3F6666663F800000;
    sub_1000028DC(&qword_1000553D0);
    v22 = swift_allocObject();
    *(v22 + 16) = v64;
    sub_100040ADC();
    v23 = sub_100040AEC();

    *(v22 + 32) = v23;
    *(v22 + 40) = sub_100040ACC();
    *(v22 + 48) = sub_100040ACC();
    *(v22 + 56) = sub_100040ACC();
    sub_100040ACC();
    sub_100040C3C();
    *v8 = v21;
    (*(v65 + 104))(v8, enum case for MeshGradient.Locations.points(_:), v66);
    *v5 = v22;
    (*(v68 + 104))(v5, enum case for MeshGradient.Colors.colors(_:), v69);
    v24 = v70;
    (*(v9 + 16))(v67, v13, v70);
    sub_10004041C();
    (*(v9 + 8))(v13, v24);
    LOBYTE(v24) = sub_10004085C();
    sub_1000403DC();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = &v15[*(sub_1000028DC(&qword_1000553D8) + 36)];
    *v33 = v24;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    LOBYTE(v24) = sub_10004086C();
    sub_1000403DC();
    v34 = &v15[*(v77 + 36)];
    *v34 = v24;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    KeyPath = swift_getKeyPath();
    v40 = &v15[*(v74 + 36)];
    v41 = sub_1000028DC(&qword_100055408);
    (*(v71 + 104))(v40 + *(v41 + 28), enum case for LayoutDirection.leftToRight(_:), v73);
    *v40 = KeyPath;
    sub_10000E06C(v15, v76, &qword_1000553C0);
    swift_storeEnumTagMultiPayload();
    sub_100016E7C();
    sub_100016F34();
    sub_10004076C();
    return sub_10000A798(v15, &qword_1000553C0);
  }

  else
  {
    sub_1000028DC(&qword_1000553C8);
    v43 = swift_allocObject();
    v63 = xmmword_100047BD0;
    *(v43 + 16) = xmmword_100047BD0;
    *(v43 + 32) = 0;
    *(v43 + 40) = 1065353216;
    *(v43 + 48) = 0x3F4CCCCD00000000;
    *(v43 + 56) = 0x3F6666663F800000;
    sub_1000028DC(&qword_1000553D0);
    v44 = swift_allocObject();
    *(v44 + 16) = v63;
    *(v44 + 32) = sub_100040ACC();
    sub_100040ADC();
    v45 = sub_100040AEC();

    *(v44 + 40) = v45;
    *(v44 + 48) = sub_100040ACC();
    *(v44 + 56) = sub_100040ACC();
    sub_100040ACC();
    sub_100040C3C();
    *v8 = v43;
    (*(v65 + 104))(v8, enum case for MeshGradient.Locations.points(_:), v66);
    *v5 = v44;
    (*(v68 + 104))(v5, enum case for MeshGradient.Colors.colors(_:), v69);
    v46 = v70;
    (*(v9 + 16))(v67, v13, v70);
    v47 = v64;
    sub_10004041C();
    (*(v9 + 8))(v13, v46);
    LOBYTE(v46) = sub_10004085C();
    sub_1000403DC();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v47 + *(sub_1000028DC(&qword_1000553D8) + 36);
    *v56 = v46;
    *(v56 + 8) = v49;
    *(v56 + 16) = v51;
    *(v56 + 24) = v53;
    *(v56 + 32) = v55;
    *(v56 + 40) = 0;
    LOBYTE(v46) = sub_10004086C();
    sub_1000403DC();
    v57 = v76;
    v58 = v47 + *(v77 + 36);
    *v58 = v46;
    *(v58 + 8) = v59;
    *(v58 + 16) = v60;
    *(v58 + 24) = v61;
    *(v58 + 32) = v62;
    *(v58 + 40) = 0;
    sub_10000E06C(v47, v57, &qword_1000553B0);
    swift_storeEnumTagMultiPayload();
    sub_100016E7C();
    sub_100016F34();
    sub_10004076C();
    sub_10000A798(v47, &qword_1000553B0);
    return (*(v71 + 8))(v19, v73);
  }
}

void sub_100015138()
{
  sub_10004094C();
  sub_10004095C();
  sub_10004095C();
  sub_10004095C();
  sub_10004093C();
}

double sub_1000151AC@<D0>(uint64_t a1@<X8>)
{
  sub_10004096C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*sub_10001523C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000403AC();
  return sub_100017CFC;
}

uint64_t sub_1000152C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017084();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100015328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017084();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001538C(uint64_t a1)
{
  v2 = sub_100017084();

  return Shape.body.getter(a1, v2);
}

double sub_1000153D8@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>)
{
  v13 = a1;
  CGRectGetHeight(*&a3);
  if (v13)
  {
    tan(a7 * 3.14159265 / 180.0);
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  CGRectGetWidth(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGRectGetWidth(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGRectGetHeight(v21);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  CGRectGetHeight(v22);
  __chkstk_darwin(v14);
  sub_10004096C();
  result = *&v16;
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  return result;
}

void sub_10001555C()
{
  sub_10004094C();
  sub_10004095C();
  sub_10004095C();
  sub_10004095C();
  sub_10004093C();
}

double sub_1000155D8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1000153D8(*(v5 + 8), v9, a2, a3, a4, a5, *v5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t (*sub_10001562C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000403AC();
  return sub_1000156B4;
}

void sub_1000156B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100015704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017C84();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100015768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017C84();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000157CC(uint64_t a1)
{
  v2 = sub_100017C84();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_100015818(uint64_t a1)
{
  sub_100040E9C();
  sub_1000413CC();
  sub_100040EDC();
  v2 = sub_1000413EC();

  return sub_1000158AC(a1, v2);
}

unint64_t sub_1000158AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100040E9C();
      v8 = v7;
      if (v6 == sub_100040E9C() && v8 == v9)
      {
        break;
      }

      v11 = sub_10004133C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100015A10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000028DC(&qword_100055020);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100015AE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000028DC(&qword_100055020);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100015B90()
{
  sub_100015DD4(319, &qword_100055090, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100015D30();
    if (v1 <= 0x3F)
    {
      sub_100015D80(319, &qword_1000550A0, &qword_100054FF8);
      if (v2 <= 0x3F)
      {
        sub_100015D80(319, &qword_1000550A8, &qword_100055000);
        if (v3 <= 0x3F)
        {
          sub_100015DD4(319, &unk_1000550B0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100015D30()
{
  if (!qword_100055098)
  {
    v0 = sub_1000410EC();
    if (!v1)
    {
      atomic_store(v0, &qword_100055098);
    }
  }
}

void sub_100015D80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10000A440(a3);
    v4 = sub_100040C0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100015DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100015E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028DC(&qword_100055100);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100015EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000028DC(&qword_100055100);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100015F38(uint64_t a1)
{
  sub_10001600C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for PlayerAvatar(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_10001600C()
{
  if (!qword_100055188)
  {
    type metadata accessor for PlayerAvatar(255);
    sub_10000A440(&unk_100055190);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100055188);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ChallengesSlashHeaderView.Style(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for ChallengesSlashHeaderView.Style(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ChallengesSlashHeaderView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChallengesSlashHeaderView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_100016124(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016140(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChallengesSlashHeaderView.LayoutMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChallengesSlashHeaderView.LayoutMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1000161D4()
{
  result = qword_1000551B8;
  if (!qword_1000551B8)
  {
    sub_10000A440(&qword_100055018);
    sub_10001628C();
    sub_10000A5A4(&qword_1000551E8, &qword_1000551F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000551B8);
  }

  return result;
}

unint64_t sub_10001628C()
{
  result = qword_1000551C0;
  if (!qword_1000551C0)
  {
    sub_10000A440(&qword_100055010);
    sub_10000A5A4(&qword_1000551C8, &qword_1000551D0);
    sub_10000A5A4(&qword_1000551D8, &qword_1000551E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000551C0);
  }

  return result;
}

uint64_t sub_100016384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0) - 8) + 84) == a2)
  {
    v6 = sub_1000028DC(&qword_100055100);
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10001647C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1000028DC(&qword_100055100);
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001657C()
{
  result = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Position(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Position(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100016780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1000028DC(&qword_100055020);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100016818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1000028DC(&qword_100055020);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1000168C0()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_100015DD4(319, &unk_1000550B0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_100016984(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100016998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000169B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

unint64_t sub_100016A58()
{
  result = qword_100055348;
  if (!qword_100055348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055348);
  }

  return result;
}

unint64_t sub_100016AB0()
{
  result = qword_100055350;
  if (!qword_100055350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055350);
  }

  return result;
}

unint64_t sub_100016B08()
{
  result = qword_100055358;
  if (!qword_100055358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055358);
  }

  return result;
}

unint64_t sub_100016B7C()
{
  result = qword_100055360;
  if (!qword_100055360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055360);
  }

  return result;
}

uint64_t sub_100016BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100016C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100016CBC(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  if (qword_100054608 != -1)
  {
    swift_once();
  }

  v3 = qword_100058E20;
  isa = sub_10004109C().super.super.isa;
  v5 = [v3 stringForObjectValue:isa];

  if (!v5)
  {
    return 0;
  }

  sub_100040E9C();

  sub_10000A550();
  v6 = sub_10004111C();

  return v6;
}

uint64_t sub_100016DC4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004066C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100016E28@<X0>(void *a1@<X8>)
{
  result = sub_10004060C();
  *a1 = v3;
  return result;
}

unint64_t sub_100016E7C()
{
  result = qword_1000553E0;
  if (!qword_1000553E0)
  {
    sub_10000A440(&qword_1000553C0);
    sub_100016F34();
    sub_10000A5A4(&qword_100055400, &qword_100055408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000553E0);
  }

  return result;
}

unint64_t sub_100016F34()
{
  result = qword_1000553E8;
  if (!qword_1000553E8)
  {
    sub_10000A440(&qword_1000553B0);
    sub_100016FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000553E8);
  }

  return result;
}

unint64_t sub_100016FC0()
{
  result = qword_1000553F0;
  if (!qword_1000553F0)
  {
    sub_10000A440(&qword_1000553D8);
    sub_1000173D4(&qword_1000553F8, &type metadata accessor for MeshGradient);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000553F0);
  }

  return result;
}

unint64_t sub_100017084()
{
  result = qword_100055410;
  if (!qword_100055410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055410);
  }

  return result;
}

uint64_t sub_1000170D8()
{
  v1 = type metadata accessor for ChallengesSlashHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 40);
  sub_1000028DC(&qword_100054690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000404DC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100017228()
{
  type metadata accessor for ChallengesSlashHeaderView(0);

  return sub_100013884();
}

uint64_t sub_1000172B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000172EC()
{
  result = qword_100055488;
  if (!qword_100055488)
  {
    sub_10000A440(&qword_100055478);
    sub_1000173D4(&qword_100055490, type metadata accessor for ItemView);
    sub_10000A5A4(&qword_100055498, &qword_1000554A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055488);
  }

  return result;
}

uint64_t sub_1000173D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017434(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ChallengesSlashHeaderView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1000174D0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_1000028DC(&qword_100055510);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100017538()
{
  result = qword_1000554C8;
  if (!qword_1000554C8)
  {
    sub_10000A440(&qword_1000554C0);
    sub_1000175BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000554C8);
  }

  return result;
}

unint64_t sub_1000175BC()
{
  result = qword_1000554D0;
  if (!qword_1000554D0)
  {
    sub_10000A440(&qword_1000554D8);
    sub_100017648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000554D0);
  }

  return result;
}

unint64_t sub_100017648()
{
  result = qword_1000554E0;
  if (!qword_1000554E0)
  {
    sub_10000A440(&qword_1000554E8);
    sub_10000A5A4(&qword_1000554F0, &qword_1000554F8);
    sub_10000A5A4(&qword_100055500, &qword_100055508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000554E0);
  }

  return result;
}

uint64_t sub_10001772C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000028DC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017794@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengesSlashHeaderView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001362C(v4, a1);
}

uint64_t sub_100017814()
{
  v1 = type metadata accessor for ChallengesSlashHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 40);
  sub_1000028DC(&qword_100054690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000404DC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100017970(double *a1)
{
  v3 = *(type metadata accessor for ChallengesSlashHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100013770(a1, v1 + v4, v5);
}

uint64_t getEnumTagSinglePayload for AvatarClipShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AvatarClipShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_100017AEC()
{
  result = qword_100055530;
  if (!qword_100055530)
  {
    sub_10000A440(&qword_100055538);
    sub_100016E7C();
    sub_100016F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055530);
  }

  return result;
}

unint64_t sub_100017BC4()
{
  result = qword_100055550;
  if (!qword_100055550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055550);
  }

  return result;
}

unint64_t sub_100017C1C()
{
  result = qword_100055558;
  if (!qword_100055558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055558);
  }

  return result;
}

unint64_t sub_100017C84()
{
  result = qword_100055560;
  if (!qword_100055560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055560);
  }

  return result;
}

uint64_t sub_100017D1C()
{
  v0 = sub_1000404CC();
  sub_10000A7F8(v0, qword_100058E40);
  v1 = sub_10000A760(v0, qword_100058E40);
  v2 = enum case for DynamicTypeSize.xxxLarge(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void sub_100017DA4(void *a1)
{
  v3 = sub_10003FE2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028DC(&qword_100054A38);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_1000028DC(&qword_1000555B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = a1;
  sub_1000110D0(v16, v40);
  v17 = *(&v40[0] + 1);
  if (*(&v40[0] + 1))
  {
    v18 = *&v40[0];
    v41 = v40[1];
    v42 = v40[2];
    v19 = sub_10004104C();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    sub_10004101C();
    v20 = v1;
    v21 = sub_10004100C();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = &protocol witness table for MainActor;
    *(v22 + 32) = v20;
    *(v22 + 40) = v18;
    *(v22 + 48) = v17;
    v23 = v42;
    *(v22 + 56) = v41;
    *(v22 + 72) = v23;
    sub_1000292EC(0, 0, v15, &unk_100048430, v22);
  }

  else
  {
    if (qword_100054610 != -1)
    {
      swift_once();
    }

    v24 = sub_10004039C();
    sub_10000A760(v24, qword_100058E28);
    v25 = v16;
    v39 = sub_10004037C();
    v26 = sub_1000410BC();

    if (os_log_type_enabled(v39, v26))
    {
      v27 = 7104878;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v41 = v29;
      *v28 = 136315138;
      v30 = [v25 selectedMessage];
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        v33 = [v30 URL];

        if (v33)
        {
          sub_10003FE0C();

          (*(v4 + 56))(v9, 0, 1, v3);
        }

        else
        {
          (*(v4 + 56))(v9, 1, 1, v3);
        }

        sub_100011434(v9, v12);
        v29 = v31;
        if ((*(v4 + 48))(v12, 1, v3))
        {
          sub_10000A798(v12, &qword_100054A38);
          v35 = 0xE300000000000000;
          v27 = 7104878;
        }

        else
        {
          (*(v4 + 16))(v6, v12, v3);
          sub_10000A798(v12, &qword_100054A38);
          v27 = sub_10003FDEC();
          v35 = v36;
          (*(v4 + 8))(v6, v3);
        }
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v37 = sub_100032E34(v27, v35, &v41);

      *(v28 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v39, v26, "Failed to parse payload, url; %s", v28, 0xCu);
      sub_100006AC8(v29);
    }

    else
    {
      v34 = v39;
    }
  }
}

uint64_t sub_1000182AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[19] = type metadata accessor for ChallengeInviteInfoLoader();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v6 = sub_10004027C();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = *(sub_1000028DC(&qword_1000555F0) - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v7 = sub_1000028DC(&qword_1000555F8);
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v8 = sub_1000402EC();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  sub_10004101C();
  v5[38] = sub_10004100C();
  v10 = sub_100040FDC();
  v5[39] = v10;
  v5[40] = v9;

  return _swift_task_switch(sub_100018540, v10, v9);
}

uint64_t sub_100018540()
{
  v1 = [objc_opt_self() daemonProxy];
  sub_1000402AC();
  sub_1000402CC();
  v2 = v0[5];
  v3 = v0[6];
  sub_100005DE4(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_100018830;

  return dispatch thunk of AuthenticationServiceProtocol.listLocalPlayers()(v2, v3);
}

uint64_t sub_100018830(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v5 = *(v3 + 320);
  v6 = *(v3 + 312);
  if (v1)
  {
    v7 = sub_100019988;
  }

  else
  {
    v7 = sub_100018974;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100018974()
{
  v1 = v0[42];
  if (!*(v1 + 16))
  {
    v14 = v0[37];
    v15 = v0[34];
    v16 = v0[35];

    sub_10001EAA4();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    (*(v16 + 8))(v14, v15);
    goto LABEL_5;
  }

  v2 = v0[43];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];
  v6 = v0[30];
  v7 = *(v6 + 16);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v7(v3, v1 + v32, v5);

  v7(v4, v3, v5);
  sub_1000402BC();
  if (v2)
  {
    v8 = v0[37];
    v9 = v0[34];
    v10 = v0[35];
    v11 = v0[33];
    v12 = v0[29];
    v13 = v0[30];

    (*(v13 + 8))(v11, v12);
    (*(v10 + 8))(v8, v9);
LABEL_5:
    sub_100006AC8((v0 + 2));
    if (qword_100054610 != -1)
    {
      swift_once();
    }

    v18 = sub_10004039C();
    sub_10000A760(v18, qword_100058E28);
    swift_errorRetain();
    v19 = sub_10004037C();
    v20 = sub_1000410BC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to Setup extension %@", v21, 0xCu);
      sub_10000A798(v22, &qword_1000555B8);
    }

    sub_10001A794();

    v24 = v0[1];

    return v24();
  }

  v26 = v0[33];
  v27 = v0[29];
  sub_1000402DC();
  v28 = v0[10];
  v31 = v0[11];
  sub_100005DE4(v0 + 7, v28);
  sub_1000028DC(&qword_100055600);
  v29 = swift_allocObject();
  v0[44] = v29;
  *(v29 + 16) = xmmword_1000475D0;
  v7(v29 + v32, v26, v27);
  v30 = swift_task_alloc();
  v0[45] = v30;
  *v30 = v0;
  v30[1] = sub_100018DA4;

  return dispatch thunk of ProfileServiceProtocol.describeProfiles(players:)(v29, v28, v31);
}

uint64_t sub_100018DA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = v1;

  v5 = *(v3 + 320);
  v6 = *(v3 + 312);
  if (v1)
  {
    v7 = sub_100019BCC;
  }

  else
  {
    v7 = sub_100018F00;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100018F00()
{
  v1 = v0[46];
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[22];
  v5 = v0[23];
  v6 = *(v0[26] + 80);
  sub_10000E06C(v1 + ((v6 + 32) & ~v6), v2, &qword_1000555F0);

  sub_10000E06C(v2, v3, &qword_1000555F0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v7 = v0[27];
    sub_10000A798(v0[28], &qword_1000555F0);

    sub_10000A798(v7, &qword_1000555F0);
LABEL_5:
    v9 = v0[36];
    v8 = v0[37];
    v10 = v0[34];
    v11 = v0[35];
    v12 = v0[33];
    v13 = v0[29];
    v14 = v0[30];
    sub_10001EAA4();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = *(v11 + 8);
    v16(v9, v10);
    (*(v14 + 8))(v12, v13);
    v16(v8, v10);
    sub_100006AC8((v0 + 7));
    sub_100006AC8((v0 + 2));
    if (qword_100054610 != -1)
    {
      swift_once();
    }

    v17 = sub_10004039C();
    sub_10000A760(v17, qword_100058E28);
    swift_errorRetain();
    v18 = sub_10004037C();
    v19 = sub_1000410BC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to Setup extension %@", v20, 0xCu);
      sub_10000A798(v21, &qword_1000555B8);
    }

    sub_10001A794();

    v23 = v0[1];

    return v23();
  }

  (*(v0[23] + 32))(v0[25], v0[27], v0[22]);
  v25 = swift_task_alloc();
  v0[48] = v25;
  *v25 = v0;
  v25[1] = sub_100019318;
  v26 = v0[36];
  v27 = v0[33];

  return sub_10001CFCC(v26, v27);
}

uint64_t sub_100019318(char a1)
{
  v2 = *v1;
  *(*v1 + 392) = a1;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);

  return _swift_task_switch(sub_100019440, v4, v3);
}

uint64_t sub_100019440()
{
  v1 = *(v0 + 392);

  if (v1 == 1)
  {
    v2 = *(v0 + 376);
    v3 = *(v0 + 272);
    v4 = *(v0 + 192);
    v5 = *(v0 + 176);
    v6 = *(v0 + 160);
    v7 = *(*(v0 + 184) + 16);
    v7(v4, *(v0 + 200), v5);
    v7(v6, v4, v5);
    sub_10004024C();
    *(v0 + 120) = v3;
    *(v0 + 128) = sub_10001EAF8();
    sub_10001E928((v0 + 96));
    sub_1000402BC();
    v8 = v2;
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v47 = *(v0 + 264);
    v49 = *(v0 + 296);
    v11 = *(v0 + 240);
    v43 = *(v0 + 288);
    v45 = *(v0 + 232);
    v42 = *(v0 + 224);
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    if (!v8)
    {
      v37 = *(v0 + 160);
      v36 = *(v0 + 168);
      v38 = *(v0 + 152);
      v41 = *(v0 + 144);
      v39 = *(v14 + 8);
      v39(v12, v15);
      sub_10000E178((v0 + 96), v37 + *(v38 + 20));
      sub_10001E8C0(v37, v36, type metadata accessor for ChallengeInviteInfoLoader);
      sub_100019EB4(v41, v36, v13);
      sub_10001EBA0(v36, type metadata accessor for ChallengeInviteInfoLoader);
      v39(v13, v15);
      sub_10000A798(v42, &qword_1000555F0);
      v40 = *(v10 + 8);
      v40(v43, v9);
      (*(v11 + 8))(v47, v45);
      v40(v49, v9);
      sub_100006AC8(v0 + 56);
      sub_100006AC8(v0 + 16);
      goto LABEL_10;
    }

    v16 = *(v0 + 160);
    v17 = *(v14 + 8);
    v17(v12, *(v0 + 176));
    v17(v13, v15);
    sub_10000A798(v42, &qword_1000555F0);
    v18 = *(v10 + 8);
    v18(v43, v9);
    (*(v11 + 8))(v47, v45);
    v18(v49, v9);
    sub_10001EB50(v0 + 96);
    v17(v16, v15);
  }

  else
  {
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v48 = *(v0 + 264);
    v50 = *(v0 + 296);
    v21 = *(v0 + 240);
    v44 = *(v0 + 288);
    v46 = *(v0 + 232);
    v22 = *(v0 + 224);
    v23 = *(v0 + 200);
    v24 = *(v0 + 176);
    v25 = *(v0 + 184);
    sub_10001EAA4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    (*(v25 + 8))(v23, v24);
    sub_10000A798(v22, &qword_1000555F0);
    v27 = *(v20 + 8);
    v27(v44, v19);
    (*(v21 + 8))(v48, v46);
    v27(v50, v19);
  }

  sub_100006AC8(v0 + 56);
  sub_100006AC8(v0 + 16);
  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v28 = sub_10004039C();
  sub_10000A760(v28, qword_100058E28);
  swift_errorRetain();
  v29 = sub_10004037C();
  v30 = sub_1000410BC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to Setup extension %@", v31, 0xCu);
    sub_10000A798(v32, &qword_1000555B8);
  }

  sub_10001A794();

LABEL_10:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100019988()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];

  (*(v3 + 8))(v1, v2);
  sub_100006AC8((v0 + 2));
  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v4 = sub_10004039C();
  sub_10000A760(v4, qword_100058E28);
  swift_errorRetain();
  v5 = sub_10004037C();
  v6 = sub_1000410BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to Setup extension %@", v7, 0xCu);
    sub_10000A798(v8, &qword_1000555B8);
  }

  sub_10001A794();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100019BCC()
{
  v1 = v0[37];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[29];
  v7 = v0[30];

  v8 = *(v3 + 8);
  v8(v2, v4);
  (*(v7 + 8))(v5, v6);
  v8(v1, v4);
  sub_100006AC8((v0 + 7));
  sub_100006AC8((v0 + 2));
  if (qword_100054610 != -1)
  {
    swift_once();
  }

  v9 = sub_10004039C();
  sub_10000A760(v9, qword_100058E28);
  swift_errorRetain();
  v10 = sub_10004037C();
  v11 = sub_1000410BC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to Setup extension %@", v12, 0xCu);
    sub_10000A798(v13, &qword_1000555B8);
  }

  sub_10001A794();

  v15 = v0[1];

  return v15();
}