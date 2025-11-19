int64_t sub_1001521BC()
{
  result = sub_100152188();
  if (!v0)
  {
    if (result < -128)
    {
      __break(1u);
    }

    else if (result <= 127)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

int64_t sub_1001521F0()
{
  result = sub_100152188();
  if (!v0)
  {
    if (result < -32768)
    {
      __break(1u);
    }

    else if (result < 0x8000)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100152224()
{
  if (*(v0 + 24) < 1)
  {
    sub_10014E8FC();
    v2 = sub_100007F60();
    sub_100004C34(v2, v3);
  }

  else
  {
    v1 = **(v0 + 16);
    sub_1001520C4(1);
  }

  return v1;
}

unint64_t sub_100152284()
{
  result = sub_100152188();
  if (!v0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(result >> 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001522B4()
{
  v2 = 0;
  result = sub_1001527A0(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

float sub_100152314()
{
  v2 = 0.0;
  sub_1001527A0(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

double sub_100152374()
{
  v2 = 0.0;
  sub_10015272C(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

char *sub_1001523D4()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001524E8();
  if (!v0)
  {
    v10[1] = v5;
    static String.Encoding.utf8.getter();
    sub_100099DF4(&qword_1002DEA90, &qword_10023B9D0);
    sub_1001528D4();
    v4 = String.init<A>(bytes:encoding:)();
    v7 = v6;

    if (!v7)
    {
      sub_10014E8FC();
      sub_100007F60();
      *v9 = 1;
      swift_willThrow();
    }
  }

  return v4;
}

int64_t sub_1001524E8()
{
  result = sub_100152188();
  if (!v1)
  {
    v3 = result;
    if (*(v0 + 24) >= result)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v5 = *(v0 + 16);
        sub_1001520C4(result);
        return sub_10015201C(v5, v3);
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_10014E8FC();
    sub_100007F60();
    *v6 = v4;
    return swift_willThrow();
  }

  return result;
}

void *sub_10015257C(uint64_t a1)
{
  if (*(v1 + 24) >= a1)
  {
    v6 = *(v1 + 16);
    sub_1001520C4(a1);
    return sub_10015201C(v6, a1);
  }

  else
  {
    sub_10014E8FC();
    v2 = sub_100007F60();
    return sub_100004C34(v2, v3);
  }
}

void *sub_1001525E8(uint64_t a1)
{
  if (*(v1 + 24) >= a1)
  {
    v6 = a1 >> 2;
    if (a1 >> 2 < 0)
    {
      __break(1u);
    }

    v3 = _swiftEmptyArrayStorage;
    if (v6)
    {
      while (1)
      {
        v13 = 0;
        sub_1001527A0(&v13);
        if (v2)
        {
          break;
        }

        v7 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = v3[2];
          sub_10013C4A4();
          v3 = v10;
        }

        v8 = v3[2];
        if (v8 >= v3[3] >> 1)
        {
          sub_10013C4A4();
          v3 = v11;
        }

        v3[2] = v8 + 1;
        *(v3 + v8 + 8) = v7;
        if (!--v6)
        {
          return v3;
        }
      }
    }
  }

  else
  {
    sub_10014E8FC();
    v4 = sub_100007F60();
    sub_100004C34(v4, v5);
  }

  return v3;
}

uint64_t sub_10015272C(void *a1)
{
  if (*(v1 + 24) > 7)
  {
    *a1 = **(v1 + 16);
    return sub_1001520C4(8);
  }

  else
  {
    sub_10014E8FC();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1001527A0(_DWORD *a1)
{
  if (*(v1 + 24) > 3)
  {
    *a1 = **(v1 + 16);
    return sub_1001520C4(4);
  }

  else
  {
    sub_10014E8FC();
    v2 = sub_100007F60();
    return sub_100004C34(v2, v3);
  }
}

uint64_t sub_100152800()
{
  v1 = *(v0 + 24);
  v2 = v1 < 1;
  v3 = v1 - 1;
  if (v2)
  {
    v9 = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v7 = *v4;
    v6 = v4 + 1;
    result = v7;
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_7:
      *(v0 + 16) = v6;
      *(v0 + 24) = v3;
      return result;
    }

    result &= 0x7Fu;
    v8 = 7;
    v9 = 1;
    while (1)
    {
      v2 = v3-- < 1;
      if (v2 || v8 > 0x3F)
      {
        break;
      }

      v10 = *v6++;
      result |= (v10 & 0x7F) << v8;
      v8 += 7;
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  sub_10014E8FC();
  sub_100007F60();
  *v11 = v9;
  return swift_willThrow();
}

unint64_t sub_1001528D4()
{
  result = qword_1002DED28;
  if (!qword_1002DED28)
  {
    sub_10009A468(&qword_1002DEA90, &qword_10023B9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED28);
  }

  return result;
}

uint64_t sub_100152938(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000064695FLL;
  v3 = 0x72656D75736E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000100271E40;
    }

    else
    {
      v6 = 0x8000000100271E60;
    }
  }

  else
  {
    v5 = 0x72656D75736E6F63;
    v6 = 0xEB0000000064695FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000100271E40;
    }

    else
    {
      v2 = 0x8000000100271E60;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008ADC();
  }

  return v8 & 1;
}

uint64_t sub_100152A1C(unsigned __int8 a1, char a2)
{
  v2 = 1701080941;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701080941;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = sub_10015D670();
      break;
    case 2:
      v5 = sub_10015D670();
      v3 = 0xEF6374755F7A745FLL;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x797469726F697270;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      sub_10015D65C();
      break;
    case 2:
      sub_10015D65C();
      v6 = 0xEF6374755F7A745FLL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x797469726F697270;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152B48(char a1)
{
  sub_10000EE88(a1, 0xD000000000000016);
  sub_10000F3DC();
  if (v7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v2 == v3 && v1 == (v6 | 0x8000000000000000);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152BEC(unsigned __int8 a1, char a2)
{
  v2 = 1684632420;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x444972657375;
    }

    else
    {
      v4 = 0x4449746E65696C63;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1684632420;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x444972657375;
    }

    else
    {
      v2 = 0x4449746E65696C63;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152CD8(unsigned __int8 a1, char a2)
{
  v2 = 1684632420;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64695F72657375;
    }

    else
    {
      v4 = 0x695F746E65696C63;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1684632420;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64695F72657375;
    }

    else
    {
      v2 = 0x695F746E65696C63;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152DD4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1701080931;
  }

  else
  {
    v3 = 0x64695F666572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1701080931;
  }

  else
  {
    v5 = 0x64695F666572;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152E64(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000617461;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100152EFC(unsigned __int8 a1, char a2)
{
  v2 = 0xED00003436625F70;
  v3 = 0x697A675F6F727661;
  v4 = a1;
  v5 = 0x697A675F6F727661;
  v6 = 0xED00003436625F70;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v6 = 0x80000001002721F0;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v5 = 0x697A675F6E6F736ALL;
      v6 = 0xED00003436625F70;
      break;
    case 4:
      v5 = 0x7461625F6E6F736ALL;
      v6 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000013;
      v2 = 0x80000001002721F0;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v3 = 0x697A675F6E6F736ALL;
      break;
    case 4:
      v3 = 0x7461625F6E6F736ALL;
      v2 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008ADC();
  }

  return v8 & 1;
}

uint64_t sub_10015308C(char a1)
{
  sub_10000EE88(a1, 0xD000000000000013);
  sub_10000F3DC();
  if (v7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v2 == v3 && v1 == (v6 | 0x8000000000000000);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153130(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 1635018093;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x8000000100271EC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 1635018093;
  }

  if (a2)
  {
    v6 = 0x8000000100271EC0;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001531C8(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000657079;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153268(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000656D616ELL;
  v3 = 0x5F74657361746164;
  v4 = a1;
  v5 = 0x5F74657361746164;
  v6 = 0xEC000000656D616ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6372735F6469;
      break;
    case 2:
      v5 = 0x69616D6F645F6469;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x79726576696C6564;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6372735F6469;
      break;
    case 2:
      v3 = 0x69616D6F645F6469;
      v2 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x79726576696C6564;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008ADC();
  }

  return v8 & 1;
}

uint64_t sub_1001533B0(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657079;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153450(char a1, char a2)
{
  v2 = "y";
  if (a1)
  {
    v3 = "accountDataV2GetUrl";
  }

  else
  {
    v3 = "y";
  }

  if (a2)
  {
    v2 = "accountDataV2GetUrl";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    sub_100003288();
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_100153500(char a1)
{
  sub_10000EE88(a1, 0xD000000000000010);
  sub_10000F3DC();
  if (v7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v2 == v3 && v1 == (v6 | 0x8000000000000000);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001535C8(unsigned __int8 a1, char a2)
{
  v2 = 0x64656C62616E65;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x64656C62616E65;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6769666E6F63;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    case 3:
      v5 = 0x5F7363697274656DLL;
      v3 = 0xED00006369706F74;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x6769666E6F63;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 3:
      v2 = 0x5F7363697274656DLL;
      v6 = 0xED00006369706F74;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153740(char a1)
{
  if (a1)
  {
    v1 = 0xEF6E6F6974617A69;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001537FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    sub_100003288();
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100153888(unsigned __int8 a1, char a2)
{
  v2 = 1701667182;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667182;
  switch(v4)
  {
    case 1:
      v5 = 1701869940;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726564726FLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x73657361696C61;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x746C7561666564;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x6C616E6F6974706FLL;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 6516580;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1701869940;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726564726FLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x73657361696C61;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x746C7561666564;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x6C616E6F6974706FLL;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 6516580;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153A30(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616D69636564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6C616D69636564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1702125924;
      break;
    case 2:
      v5 = 0x6C696D2D656D6974;
      v3 = 0xEB0000000073696CLL;
      break;
    case 3:
      v5 = 0x63696D2D656D6974;
      v3 = 0xEB00000000736F72;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v6 = "millis";
      goto LABEL_7;
    case 5:
      v5 = 0xD000000000000010;
      v6 = "timestamp-millis";
LABEL_7:
      v3 = v6 | 0x8000000000000000;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F697461727564;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1702125924;
      break;
    case 2:
      v2 = 0x6C696D2D656D6974;
      v7 = 0xEB0000000073696CLL;
      break;
    case 3:
      v2 = 0x63696D2D656D6974;
      v7 = 0xEB00000000736F72;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v8 = "millis";
      goto LABEL_15;
    case 5:
      v2 = 0xD000000000000010;
      v8 = "timestamp-millis";
LABEL_15:
      v7 = v8 | 0x8000000000000000;
      break;
    case 6:
      v7 = 0xE800000000000000;
      v2 = 0x6E6F697461727564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    sub_100003288();
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100153C0C(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  sub_100005164();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    sub_100003288();
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100153CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - v7;
  result = sub_1000C87E0(a1, v6);
  if (v11)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return sub_100002728(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    sub_10015CF08(v8, &v8[v12], result, v10, 0, a1);
    v13 = type metadata accessor for CodingUserInfoKey();
    (*(*(v13 - 8) + 32))(a2, v8, v13);
    sub_1001514B8(&v8[v12], (a2 + *(v4 + 48)));
    return sub_100002728(a2, 0, 1, v4);
  }
}

uint64_t sub_100153E24(char a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 34;
  v11[1] = 0xE100000000000000;
  v7._countAndFlagsBits = sub_10016176C(a1);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_100153F58(char a1, char a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v15 = 0x3A2265707974227BLL;
  v16 = 0xE900000000000022;
  v9._countAndFlagsBits = sub_10016176C(a1);
  String.append(_:)(v9);

  v10._object = 0x8000000100274B00;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_100161910(a2);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 32034;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();

  (*(v5 + 8))(v8, v4);
  return v13;
}

double sub_1001540EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v5 || (sub_10015D5D8(), sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    sub_100004C50();
    v13 = 0uLL;
  }

  else
  {
    v17 = a1 == 0x6E61656C6F6F62 && a2 == 0xE700000000000000;
    if (v17 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      sub_100004C50();
      v13 = xmmword_10023CCA0;
    }

    else
    {
      v18 = a1 == 7630441 && a2 == 0xE300000000000000;
      if (v18 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        sub_100008BAC();
        v9 = &unk_10023C000;
        v13 = xmmword_10023CC90;
        goto LABEL_8;
      }

      v19 = a1 == 1735290732 && a2 == 0xE400000000000000;
      if (v19 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        sub_100008BAC();
        v9 = &unk_10023C000;
        v13 = xmmword_10023CC80;
        v15 = 4096;
        goto LABEL_8;
      }

      v20 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
      if (v20 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        sub_100004C50();
        v13 = xmmword_10023CC70;
      }

      else
      {
        v21 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
        if (v21 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {

          sub_100004C50();
          v13 = xmmword_10023CC60;
        }

        else
        {
          v22 = a1 == 0x7365747962 && a2 == 0xE500000000000000;
          if (v22 || (sub_100003288(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {

            v9 = 0;
            v7 = 0;
            v8 = 0;
            v10 = 0;
            v11 = 1;
            LOBYTE(v24[0]) = 1;
            v14 = xmmword_10023CC40;
            v13 = xmmword_10023CC50;
            v15 = 0x2000;
            v12 = 1;
            goto LABEL_8;
          }

          if (a1 != 0x676E69727473 || a2 != 0xE600000000000000)
          {
            sub_100003288();
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              sub_1001619E8(a1, a2, v24);
              v13 = v24[0];
              v14 = v24[1];
              v12 = v25;
              v9 = v26;
              v11 = v27;
              v10 = v25 & 0xFFFFFFFFFFFFFF00;
              v7 = v28;
              v8 = v27 & 0xFFFFFFFFFFFFFF00;
              v15 = -16384;
              goto LABEL_8;
            }
          }

          sub_100004C50();
          v13 = xmmword_10023B6F0;
        }
      }
    }
  }

  v14 = 0uLL;
  v15 = -12288;
LABEL_8:
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 32) = v10 | v12;
  *(a3 + 40) = v9;
  *(a3 + 48) = v8 | v11;
  *(a3 + 56) = v7;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = v15;
  return result;
}

void AvroSchema.init(schemaJson:decoder:)()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for String.Encoding();
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D560();
  if (String.count.getter() <= 9)
  {
    v21[5] = v4;
    v21[6] = v2;
    v21[3] = 34;
    v21[4] = 0xE100000000000000;
    v21[1] = 0;
    v21[2] = 0xE000000000000000;
    sub_1000BBBB0();
    sub_1000109B8();
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v17 = v16;

    sub_1001540EC(v15, v17, v23);
    goto LABEL_7;
  }

  v24 = v6;
  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  (*(v10 + 8))(v14, v7);
  if (v20 >> 60 != 15)
  {

    sub_100154604(v18, v20, v22);
    if (v0)
    {
      swift_willThrow();

LABEL_8:
      sub_100005074();
      return;
    }

    memcpy(v23, v22, 0x62uLL);
    v6 = v24;
LABEL_7:

    memcpy(v6, v23, 0x62uLL);
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_100154604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100157420();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    swift_willThrow();

    return sub_10000D170(a1, a2);
  }

  else
  {

    sub_10000D170(a1, a2);
    return memcpy(a3, __src, 0x62uLL);
  }
}

uint64_t sub_1001546CC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10015472C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      return 1701667182;
    case 2:
      return 0x63617073656D616ELL;
    case 3:
      v4 = 0x657361696C61;
      return v4 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 4:
      return 6516580;
    case 5:
      return 0x6C6F636F746F7270;
    case 6:
      return 0x736D657469;
    case 7:
      return 0x7365756C6176;
    case 8:
      return 0x73646C656966;
    case 9:
      v4 = 0x6C6F626D7973;
      return v4 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 10:
      return 1702521203;
    case 11:
      v3 = 1701081711;
      goto LABEL_6;
    case 12:
      return sub_10015D520();
    case 13:
      return sub_10015D624();
    case 14:
      return 0x6F69736963657270;
    case 15:
      return 0x656C616373;
    case 16:
      v3 = 1869771365;
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 17:
      result = 0x736567617373656DLL;
      break;
    case 18:
      result = sub_10000B068();
      break;
    case 19:
      result = 0x6E6F696E75;
      break;
    case 20:
      result = 0x736568636E617262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100154934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001546CC();
  *a2 = result;
  return result;
}

uint64_t sub_100154964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015472C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100154998@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100154720();
  *a1 = result;
  return result;
}

uint64_t sub_1001549C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100154724();
  *a1 = result;
  return result;
}

uint64_t sub_1001549E8(uint64_t a1)
{
  v2 = sub_1001572F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100154A24(uint64_t a1)
{
  v2 = sub_1001572F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100154A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a1;
  v112 = a3;
  v5 = sub_100099DF4(&qword_1002DED38, &qword_10023CCB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v99 - v8;
  v10 = *(a2 + 32);
  sub_10000C4FC(a2, *(a2 + 24));
  sub_1001572F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v3)
  {
    (*(v6 + 8))(v150, v5);
    return sub_100004118(a2);
  }

  v110 = v6;
  v11 = v112;
  LOBYTE(v115[0]) = 8;
  v12 = v9;
  v13 = KeyedDecodingContainer.contains(_:)();
  v14 = v5;
  v111 = a2;
  v109 = v9;
  if (v13)
  {
    sub_1001512EC(a2, v115);
    AvroSchema.RecordSchema.init(from:)();
    v15 = v11;
    memcpy(v116, v117, 0x51uLL);
    sub_100155D7C();
    v26 = v116[4] == 0x726F727265 && v116[5] == 0xE500000000000000;
    v108 = 0;
    if (v26)
    {
      v46 = *(v110 + 8);
      v46(v150, v5);
      v46(v109, v5);
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v11 = v110 + 8;
      v28 = *(v110 + 8);
      v28(v150, v5);
      v28(v109, v5);
      if ((v27 & 1) == 0)
      {
        v21 = swift_allocObject();
        memcpy((v21 + 16), v116, 0x51uLL);
        v106 = 0;
        v107 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 12288;
        goto LABEL_63;
      }
    }

    v21 = swift_allocObject();
    memcpy(v114, v116, 0x51uLL);
    memcpy((v21 + 16), v116, 0x51uLL);
    memcpy(v115, v116, 0x51uLL);
    sub_10015BE18(v114, &v113);
    sub_10015BE74(v115);
    v106 = 0;
    v107 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -28672;
    goto LABEL_63;
  }

  LOBYTE(v115[0]) = 9;
  v15 = v11;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(a2, v115);
    v11 = v118;
    AvroSchema.EnumSchema.init(from:)();
    v108 = 0;
    a2 = 1836412517;
    v16 = v120;
    v17 = v121;
    v105 = v118[0];
    v5 = v118[1];
    if (v120 == 1836412517 && v121 == 0xE400000000000000)
    {
      v43 = *(v110 + 8);
      v43(v150, v14);
      v43(v109, v14);
      v17 = 0xE400000000000000;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = *(v110 + 8);
      v20(v150, v14);
      v20(v109, v14);
      if (v19)
      {
        a2 = v16;
        v11 = v118;
      }

      else
      {
        v11 = v118;
        if (v5)
        {
          a2 = v16;
        }

        else
        {
          v5 = v17;
          v17 = 0xE400000000000000;
          v105 = v16;
          a2 = 1836412517;
        }
      }
    }

    v21 = swift_allocObject();
    v106 = 0;
    v107 = 0;
    v22 = 0;
    v23 = 0;
    *(v21 + 16) = v105;
    *(v21 + 24) = v5;
    *(v21 + 32) = v119;
    *(v21 + 48) = a2;
    *(v21 + 56) = v17;
    v44 = v122;
    v45 = v123;
    *(v21 + 96) = v124;
    v24 = 0x4000;
    *(v21 + 64) = v44;
    *(v21 + 80) = v45;
    goto LABEL_63;
  }

  LOBYTE(v115[0]) = 6;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(a2, v115);
    AvroSchema.ArraySchema.init(from:)();
    v108 = 0;
    v11 = *(v110 + 8);
    (v11)(v150, v5);
    (v11)(v12, v5);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v125, 0x73uLL);
    v106 = 0;
    v107 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 20480;
LABEL_63:
    result = sub_100004118(v111);
    v74 = v105;
    *v15 = v21;
    *(v15 + 8) = v74;
    v75 = v103;
    *(v15 + 16) = v11;
    *(v15 + 24) = v75;
    *(v15 + 32) = v23 | v5;
    *(v15 + 40) = v104;
    *(v15 + 48) = v22 | a2;
    v76 = v106;
    *(v15 + 56) = v107;
    *(v15 + 64) = v101;
    v77 = v102;
    *(v15 + 80) = v76;
    *(v15 + 88) = v77;
    *(v15 + 96) = v24;
    return result;
  }

  LOBYTE(v115[0]) = 7;
  v25 = KeyedDecodingContainer.contains(_:)();
  v5 = v150;
  if (v25)
  {
    sub_1001512EC(a2, v115);
    AvroSchema.MapSchema.init(from:)();
    v108 = 0;
    v11 = *(v110 + 8);
    (v11)(v5, v14);
    (v11)(v12, v14);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v126, 0x73uLL);
    v106 = 0;
    v107 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 24576;
    goto LABEL_63;
  }

  a2 = v127;
  LOBYTE(v115[0]) = 10;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(v111, v115);
    AvroSchema.FixedSchema.init(from:)(v115, v29, v30, v31, v32, v33, v34, v35, v99, v100);
    v61 = v128;
    v21 = v127[0];
    v62 = v127[2];
    v100 = v130;
    v107 = v131;
    v108 = 0;
    v101 = v132;
    v105 = v127[1];
    v106 = v133;
    v102 = v134;
    v103 = v127[3];
    LODWORD(v99) = v135;
    if (v128 == 0x6465786966 && v129 == 0xE500000000000000)
    {
      v73 = *(v110 + 8);
      v73(v150, v14);
      v73(v109, v14);
      v5 = 0x6465786966;
      v104 = 0xE500000000000000;
    }

    else
    {
      v104 = v129;
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v65 = *(v110 + 8);
      v65(v150, v14);
      v65(v109, v14);
      if ((v64 & 1) == 0 && !v105)
      {
        v66 = v104;
        v104 = 0xE500000000000000;
        v105 = v66;
        v21 = v61;
        v11 = v62;
        v5 = 0x6465786966;
LABEL_61:
        v106 &= 1u;
        v24 = v99 & 0x301 | 0x8000;
        v23 = v5 & 0xFFFFFFFFFFFFFF00;
        a2 = v100;
        goto LABEL_62;
      }

      v5 = v61;
    }

    v11 = v62;
    goto LABEL_61;
  }

  LOBYTE(v115[0]) = 20;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_1001512EC(v111, v114);
    AvroSchema.UnionSchema.init(from:)();
    v115[0] = v136;
    v115[1] = v137;
    *&v115[2] = v138;
    sub_100156CD8();
    v108 = 0;
    v78 = *(v110 + 8);
    v78(v150, v14);
    v78(v109, v14);
    v21 = swift_allocObject();
    v106 = 0;
    v107 = 0;
    v22 = 0;
    v23 = 0;
    v79 = *&v115[2];
    v80 = v115[1];
    *(v21 + 16) = v115[0];
    *(v21 + 32) = v80;
    *(v21 + 48) = v79;
    v24 = 28672;
    goto LABEL_63;
  }

  LOBYTE(v115[0]) = 0;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    LOBYTE(v115[0]) = 0;
    v67 = KeyedDecodingContainer.decode(_:forKey:)();
    v5 = v12;
    v108 = 0;
    sub_1001540EC(v67, v68, v145);
    v21 = v145[0];
    v11 = v145[2];
    v104 = v145[5];
    v105 = v145[1];
    v99 = v145[6];
    v100 = v145[4];
    v107 = v145[7];
    v101 = v146;
    v106 = v147;
    v102 = v148;
    v103 = v145[3];
    v24 = v149;
    v69 = *(v110 + 8);
    v69(v150, v14);
    v69(v5, v14);
    a2 = v99;
    LOBYTE(v5) = v100;
    v23 = v100 & 0xFFFFFFFFFFFFFF00;
LABEL_62:
    v22 = a2 & 0xFFFFFFFFFFFFFF00;
    goto LABEL_63;
  }

  LOBYTE(v115[0]) = 1;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0 || (v5 = *(KeyedDecodingContainer.allKeys.getter() + 16), , v5 != 2))
  {
    v114[0] = 0;
    sub_10015CFE8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (LOBYTE(v115[0]) != 20)
    {
      switch(LOBYTE(v115[0]))
      {
        case 0:
          v108 = 0;
          v81 = *(v110 + 8);
          v81(v150, v14);
          v81(v109, v14);
          v21 = 0;
          v104 = 0;
          v105 = 0;
          v11 = 0;
          v102 = 0;
          v103 = 0;
          v106 = 0;
          v107 = 0;
          LOBYTE(a2) = 0;
          v22 = 0;
          LOBYTE(v5) = 0;
          v23 = 0;
          v101 = 0u;
          v24 = -12288;
          goto LABEL_63;
        case 1:
          v108 = 0;
          v87 = *(v110 + 8);
          v87(v150, v14);
          v87(v109, v14);
          v104 = 0;
          v105 = 0;
          v11 = 0;
          v102 = 0;
          v103 = 0;
          v106 = 0;
          v107 = 0;
          LOBYTE(a2) = 0;
          v22 = 0;
          LOBYTE(v5) = 0;
          v23 = 0;
          v101 = 0u;
          v24 = -12288;
          v21 = 1;
          goto LABEL_63;
        case 2:
          v114[0] = 13;
          sub_10015D03C();
          LOBYTE(a2) = v14;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v108 = 0;
          v100 = LOBYTE(v115[0]);
          if (LOBYTE(v115[0]) == 7)
          {
            v84 = *(v110 + 8);
            v84(v150, v14);
            v84(v109, v14);
            v106 = 0;
            v107 = 0;
            v24 = 0;
            v22 = 0;
            v23 = 0;
            v105 = 0xE300000000000000;
            v21 = 7630441;
            goto LABEL_82;
          }

          v21 = sub_10016176C(2);
          v105 = v92;
          v93 = *(v110 + 8);
          v93(v150, v14);
          v93(v109, v14);
          v106 = 0;
          v107 = 0;
          v24 = 0;
          v22 = 0;
          v23 = 0;
          goto LABEL_85;
        case 3:
          v114[0] = 13;
          sub_10015D03C();
          LOBYTE(a2) = v14;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v108 = 0;
          v100 = LOBYTE(v115[0]);
          if (LOBYTE(v115[0]) == 7)
          {
            v85 = *(v110 + 8);
            v85(v150, v14);
            v85(v109, v14);
            v106 = 0;
            v107 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 4096;
            v105 = 0xE400000000000000;
            v21 = 1735290732;
            goto LABEL_82;
          }

          v21 = sub_10016176C(3);
          v105 = v94;
          v95 = *(v110 + 8);
          v95(v150, v14);
          v95(v109, v14);
          v106 = 0;
          v107 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 4096;
          goto LABEL_85;
        case 4:
          v108 = 0;
          v83 = *(v110 + 8);
          v83(v150, v14);
          v83(v109, v14);
          v104 = 0;
          v105 = 0;
          v11 = 0;
          v102 = 0;
          v103 = 0;
          v106 = 0;
          v107 = 0;
          LOBYTE(a2) = 0;
          v22 = 0;
          LOBYTE(v5) = 0;
          v23 = 0;
          v101 = 0u;
          v24 = -12288;
          v21 = 2;
          goto LABEL_63;
        case 5:
          v108 = 0;
          v88 = *(v110 + 8);
          v88(v150, v14);
          v88(v109, v14);
          v104 = 0;
          v105 = 0;
          v11 = 0;
          v102 = 0;
          v103 = 0;
          v106 = 0;
          v107 = 0;
          LOBYTE(a2) = 0;
          v22 = 0;
          LOBYTE(v5) = 0;
          v23 = 0;
          v101 = 0u;
          v24 = -12288;
          v21 = 3;
          goto LABEL_63;
        case 6:
          v114[0] = 13;
          sub_10015D03C();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v108 = 0;
          v100 = LOBYTE(v115[0]);
          if (LOBYTE(v115[0]) == 7)
          {
            v21 = 0x7365747962;
            v91 = *(v110 + 8);
            v91(v150, v14);
            v91(v109, v14);
            v103 = 0;
            v104 = 0;
            v106 = 0;
            v107 = 0;
            v22 = 0;
            v23 = 0;
            LOBYTE(a2) = 1;
            LOBYTE(v115[0]) = 1;
            v114[0] = 1;
            v24 = 0x2000;
            v105 = 0xE500000000000000;
            LOBYTE(v5) = 1;
LABEL_82:
            v15 = v11;
            v11 = 7;
            goto LABEL_63;
          }

          LOBYTE(v115[0]) = 14;
          result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v103 = result;
          if (v96)
          {
            goto LABEL_90;
          }

          LOBYTE(v115[0]) = 15;
          result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v104 = result;
          v108 = 0;
          if (v97)
          {
            goto LABEL_91;
          }

          v21 = 0x7365747962;
          v98 = *(v110 + 8);
          v98(v150, v14);
          v98(v109, v14);
          v106 = 0;
          v107 = 0;
          LOBYTE(a2) = 0;
          v22 = 0;
          LOBYTE(v5) = 0;
          v23 = 0;
          LOBYTE(v115[0]) = 0;
          v114[0] = 0;
          v24 = 0x2000;
          v105 = 0xE500000000000000;
LABEL_85:
          v15 = v11;
          v11 = v100;
          break;
        case 7:
          v108 = 0;
          v86 = *(v110 + 8);
          v86(v150, v14);
          v86(v109, v14);
          v104 = 0;
          v105 = 0;
          v11 = 0;
          v102 = 0;
          v103 = 0;
          v106 = 0;
          v107 = 0;
          LOBYTE(a2) = 0;
          v22 = 0;
          LOBYTE(v5) = 0;
          v23 = 0;
          v101 = 0u;
          v24 = -12288;
          v21 = 4;
          goto LABEL_63;
        default:
          v108 = 0;
          v89 = sub_10016176C(v115[0]);
          v70 = sub_1001619E8(v89, v90, v143);
          v21 = v143[0];
          v71 = v143[2];
          v103 = v143[3];
          v5 = v143[4];
          v104 = v143[5];
          v105 = v143[1];
          a2 = v143[6];
          v72 = v144;
          goto LABEL_57;
      }

      goto LABEL_63;
    }

    v108 = 0;
    v70 = sub_1001619E8(0, 0xE000000000000000, v141);
    v21 = v141[0];
    v71 = v141[2];
    v103 = v141[3];
    v5 = v141[4];
    v104 = v141[5];
    v105 = v141[1];
    a2 = v141[6];
    v72 = v142;
LABEL_57:
    v107 = v72;
    v57 = v110;
    goto LABEL_68;
  }

  v108 = 0;
  result = KeyedDecodingContainer.allKeys.getter();
  v107 = *(result + 16);
  if (!v107)
  {

    v58 = 0;
    v60 = 0;
    v59 = 0xE000000000000000;
    v49 = 0xE000000000000000;
    v57 = v110;
LABEL_67:
    v70 = sub_100162FD0(v58, v59, v60, v49, v139);
    v21 = v139[0];
    v71 = v139[2];
    v103 = v139[3];
    v5 = v139[4];
    v104 = v139[5];
    v105 = v139[1];
    a2 = v139[6];
    v107 = v140;
LABEL_68:
    v82 = *(v57 + 8);
    v82(v150, v14, v70);
    (v82)(v109, v14);
    v11 = v71;
    v106 = 0;
    v23 = v5 & 0xFFFFFFFFFFFFFF00;
    v22 = a2 & 0xFFFFFFFFFFFFFF00;
    v24 = -16384;
    goto LABEL_63;
  }

  v47 = 0;
  v48 = 0;
  v105 = 0;
  v106 = 0xE000000000000000;
  v49 = 0xE000000000000000;
  while (v48 < *(result + 16))
  {
    v50 = result;
    if (*(result + v48 + 32))
    {

      LOBYTE(v115[0]) = 1;
      v51 = v108;
      v52 = KeyedDecodingContainer.decode(_:forKey:)();
      v108 = v51;
      if (v51)
      {
        goto LABEL_69;
      }

      v47 = v52;
      v49 = v53;
    }

    else
    {

      LOBYTE(v115[0]) = 0;
      v54 = v108;
      v55 = KeyedDecodingContainer.decode(_:forKey:)();
      v106 = v56;
      v108 = v54;
      if (v54)
      {
LABEL_69:

        v36 = type metadata accessor for DecodingError();
        swift_allocError();
        v38 = v37;
        v39 = v109;
        KeyedDecodingContainer.codingPath.getter();
        sub_100157348();
        swift_allocError();
        *v40 = 0;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.dataCorrupted(_:), v36);
        swift_willThrow();

        v41 = *(v110 + 8);
        v41(v150, v14);
        v41(v39, v14);
        a2 = v111;
        return sub_100004118(a2);
      }

      v105 = v55;
    }

    ++v48;
    result = v50;
    if (v107 == v48)
    {

      v57 = v110;
      v58 = v105;
      v59 = v106;
      v60 = v47;
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

void sub_100155D7C()
{
  sub_100004868();
  sub_100004FEC();
  v193 = v4;
  v194 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *(v0 + 4);
  v11 = *(v0 + 5);
  if (v12 != v9 || v11 != v2)
  {
    v14 = v2;
    v15 = *(v0 + 4);
    v16 = *(v0 + 5);
    v17 = v10;
    v18 = v14;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || *(v0 + 1))
    {
      v10 = v12;
    }

    else
    {
      *v0 = v12;
      *(v0 + 1) = v11;
      *(v0 + 4) = v17;
      *(v0 + 5) = v18;
      v11 = v18;

      v10 = v17;
    }

    v3 = v194;
  }

  v206 = v11;
  v207 = v10;
  if (v6)
  {
    v19 = *(v0 + 1);

    v3 = v194;
    *v0 = v8;
    *(v0 + 1) = v6;
  }

  if (v3)
  {
    v20 = *(v0 + 3);

    *(v0 + 2) = v193;
    *(v0 + 3) = v194;
  }

  v21 = *(v0 + 6);
  v208 = *(v21 + 16);
  if (!v208)
  {
    goto LABEL_118;
  }

  v22 = 0;
  v209 = v0;
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_125;
    }

    memcpy(__dst, (v21 + 184 * v22 + 48), 0x62uLL);
    v23 = LOWORD(__dst[12]) >> 12;
    v215 = v21;
    v239 = v22;
    if (v23 == 7)
    {
      v204 = v21 + 184 * v22;
      v210 = v1;
      v214 = 184 * v22;
      v31 = *(__dst[0] + 40);
      v30 = *(__dst[0] + 48);
      *v219 = *(__dst[0] + 16);
      *&v219[8] = *(__dst[0] + 24);
      *&v219[24] = v31;
      *&v219[32] = v30;
      v196 = *&v219[8];
      v198 = v31;
      if (!v22)
      {
        sub_10014416C(__dst, __src);

        v0 = &_swiftEmptyDictionarySingleton;
LABEL_63:
        v105 = v21;
        v107 = *v209;
        v106 = *(v209 + 1);
        v109 = *(v209 + 2);
        v108 = *(v209 + 3);
        v110 = *(v209 + 9);
        v111 = v209[80];
        *v220 = *v209;
        *&v220[8] = v106;
        *&v220[16] = v109;
        *&v220[24] = v108;
        *&v220[32] = v207;
        *&v220[40] = v206;
        *&v220[48] = v105;
        *&v220[56] = *(v209 + 56);
        *&v220[72] = v110;
        v220[80] = v111;
        if (v22 >= *(v105 + 16))
        {
          goto LABEL_127;
        }

        v112 = *(v204 + 32);
        v113 = *(v204 + 40);
        sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v22 = sub_10015D5B4();
        sub_10000F0DC(v22, v114, v115, v116, v117, v118, v119, v120, v193, v194, v196, v198, v199, v201, v202, v204, v206, v207, v121);
        if (v106)
        {
          v203 = v112;
          v217 = v107;
          v218 = v106;
          v221 = 46;
          v222 = 0xE100000000000000;
          sub_10015BE18(v220, __src);
          sub_1000BBBB0();

          if ((sub_10015D598() & 1) == 0 && v108)
          {
            v122 = sub_10015D5B4();
            sub_10000F0DC(v122, v123, v124, v125, v126, v127, v128, v129, v193, v194, v195, v197, v200, v201, v202, v112, v206, v207, v130);
            v131[4] = v109;
            v131[5] = v108;
            v131[6] = v107;
            v131[7] = v106;
            __src[0] = v131;

            sub_100099DF4(&qword_1002DA600, &qword_10022E490);
            sub_100010288();
            sub_10000C098();
            v107 = BidirectionalCollection<>.joined(separator:)();
            v106 = v132;
          }

          v112 = v203;
        }

        else
        {
          sub_10015BE18(v220, __src);

          v106 = v206;

          v107 = v207;
        }

        *(v22 + 32) = v107;
        *(v22 + 40) = v106;
        *(v22 + 48) = v112;
        *(v22 + 56) = v113;
        __src[0] = v22;

        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_10000C098();
        BidirectionalCollection<>.joined(separator:)();

        sub_10015BE74(v220);
        sub_1001591F0();
        v1 = v210;
        if (v210)
        {

          sub_1001441C8(__dst);
          goto LABEL_118;
        }

        sub_1000140AC();
        v134 = swift_allocObject();
        v135 = *&v219[32];
        v136 = *&v219[16];
        *(v134 + 16) = *v219;
        *(v134 + 32) = v136;
        *(v134 + 48) = v135;
        v21 = v215;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001612B8(v215);
          v21 = v191;
        }

        sub_10000BF28();
        if (v133)
        {
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v137 = v21 + v214;
        memcpy(__src, (v21 + v214 + 48), 0x62uLL);
        *(v137 + 48) = v134;
        v199 = v200 & 1;
        v201 = v201;
        *(v137 + 104) = v201;
        *(v137 + 128) = v199;
        HIDWORD(v202) = WORD2(v202) & 0x301 | 0x7000;
        *(v137 + 144) = WORD2(v202);
        sub_1001441C8(__src);
        sub_1001441C8(__dst);
        goto LABEL_81;
      }

      sub_10014416C(__dst, __src);
      v32 = (v21 + 48);

      v33 = 0;
      v0 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v33 >= *(v21 + 16))
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        memcpy(v238, v32, sizeof(v238));
        v34 = AvroSchema.getName()();
        if (v34.value._object)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v220 = v0;
        v51 = sub_10015D5D8();
        v53 = sub_10014EB30(v51, v52);
        v55 = *(v0 + 2);
        v56 = (v54 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_122;
        }

        v58 = v53;
        v59 = v54;
        sub_100099DF4(&qword_1002DE968, &unk_10023B920);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v57))
        {
          v60 = sub_10015D5D8();
          v62 = sub_10014EB30(v60, v61);
          v21 = v215;
          if ((v59 & 1) != (v63 & 1))
          {
            goto LABEL_136;
          }

          v58 = v62;
          if ((v59 & 1) == 0)
          {
LABEL_48:
            v0 = *v220;
            sub_1000035B8(*v220 + 8 * (v58 >> 6));
            v64 = (*(v0 + 6) + 16 * v58);
            *v64 = 1819047278;
            v64[1] = 0xE400000000000000;
            sub_100006314();
            v67 = v65 + v58 * v66;
            *v67 = 0u;
            *(v67 + 16) = 0u;
            *(v67 + 32) = 0u;
            *(v67 + 48) = 0u;
            *(v67 + 64) = 0u;
            *(v67 + 80) = 0u;
            *(v67 + 96) = -12288;
            v68 = *(v0 + 2);
            v48 = __OFADD__(v68, 1);
            v69 = v68 + 1;
            if (v48)
            {
              goto LABEL_124;
            }

            *(v0 + 2) = v69;
            goto LABEL_55;
          }
        }

        else
        {
          v21 = v215;
          if ((v59 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v0 = *v220;
        sub_100006314();
        v75 = (v73 + v58 * v74);
        memcpy(__src, v75, 0x62uLL);
        *v75 = 0u;
        v75[1] = 0u;
        v75[2] = 0u;
        v75[3] = 0u;
        v75[4] = 0u;
        v75[5] = 0u;
        *(v75 + 48) = -12288;
        sub_1001441C8(__src);
LABEL_55:
        v33 = (v33 + 1);
        v32 += 184;
        if (v22 == v33)
        {
          goto LABEL_63;
        }
      }

      memcpy(__src, v32, 0x62uLL);
      sub_10014416C(__src, v220);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v217 = v0;
      v36 = sub_10014EB30(v34.value._countAndFlagsBits, v34.value._object);
      v38 = *(v0 + 2);
      v39 = (v37 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_120;
      }

      v41 = v36;
      v42 = v37;
      sub_100099DF4(&qword_1002DE968, &unk_10023B920);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v35, v40))
      {
        v43 = sub_10014EB30(v34.value._countAndFlagsBits, v34.value._object);
        v22 = v239;
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_136;
        }

        v41 = v43;
        if ((v42 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v22 = v239;
        if ((v42 & 1) == 0)
        {
LABEL_42:
          v0 = v217;
          sub_1000035B8(v217 + 8 * (v41 >> 6));
          *(*(v0 + 6) + 16 * v41) = v34;
          sub_100006314();
          memcpy((v45 + v41 * v46), __src, 0x62uLL);
          v47 = *(v0 + 2);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_123;
          }

          *(v0 + 2) = v49;
          goto LABEL_52;
        }
      }

      v0 = v217;
      sub_100006314();
      v72 = (v70 + v41 * v71);
      memcpy(v220, v72, sizeof(v220));
      memcpy(v72, __src, 0x62uLL);
      sub_1001441C8(v220);
LABEL_52:
      v21 = v215;
      goto LABEL_55;
    }

    if (v23 != 12)
    {
      v211 = v1;
      v76 = v21 + 184 * v22;
      v77 = v21;
      v79 = *v0;
      v78 = *(v0 + 1);
      v81 = *(v0 + 2);
      v80 = *(v0 + 3);
      v82 = *(v0 + 9);
      v83 = v0[80];
      __src[0] = *v0;
      __src[1] = v78;
      __src[2] = v81;
      __src[3] = v80;
      v85 = v206;
      v84 = v207;
      __src[4] = v207;
      __src[5] = v206;
      *&__src[7] = *(v0 + 56);
      __src[6] = v77;
      __src[9] = v82;
      LOBYTE(__src[10]) = v83;
      v0 = *(v76 + 40);
      v205 = *(v76 + 32);
      sub_100099DF4(&qword_1002DD538, &unk_100238260);
      v22 = sub_10015D5B4();
      sub_10000F0DC(v22, v86, v87, v88, v89, v90, v91, v92, v193, v194, v195, v197, v199, v201, v202, v205, v206, v207, v93);
      if (v78)
      {
        *v219 = v79;
        *&v219[8] = v78;
        v217 = 46;
        v218 = 0xE100000000000000;
        sub_10015BE18(__src, v220);
        sub_1000BBBB0();

        if ((sub_10015D598() & 1) == 0 && v80)
        {
          v94 = sub_10015D5B4();
          sub_10000F0DC(v94, v95, v96, v97, v98, v99, v100, v101, v193, v194, v195, v197, v199, v201, v202, v203, v206, v207, v102);
          v103[4] = v81;
          v103[5] = v80;
          v103[6] = v79;
          v103[7] = v78;
          *v220 = v103;

          sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_10000C098();
          v79 = BidirectionalCollection<>.joined(separator:)();
          v78 = v104;
        }

        sub_10015BE74(__src);
      }

      else
      {

        v79 = v84;
        v78 = v85;
      }

      *(v22 + 32) = v79;
      *(v22 + 40) = v78;
      *(v22 + 48) = v203;
      *(v22 + 56) = v0;
      *v220 = v22;
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      sub_100010288();
      sub_10000C098();
      BidirectionalCollection<>.joined(separator:)();

      v21 = v215;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001612B8(v215);
        v21 = v190;
      }

      sub_10000BF28();
      if (v133)
      {
        goto LABEL_126;
      }

      sub_1000109B8();
      sub_1001583E4();
      v1 = v211;
      if (v211)
      {

        *(v0 + 6) = v21;
        goto LABEL_118;
      }

LABEL_81:
      *(v0 + 6) = v21;
      goto LABEL_112;
    }

    if (v22)
    {
      break;
    }

LABEL_112:
    if (++v22 == v208)
    {
      goto LABEL_118;
    }
  }

  v213 = 184 * v22;
  v24 = __dst[2];
  v25 = __dst[3];

  v26 = 0;
  v27 = 48;
  while (1)
  {
    if (v26 >= *(v21 + 16))
    {
      goto LABEL_121;
    }

    memcpy(v237, (v21 + v27), sizeof(v237));
    v28 = AvroSchema.getName()();
    if (!v28.value._object)
    {
      if (!v25)
      {
        goto LABEL_83;
      }

      goto LABEL_32;
    }

    if (v25)
    {
      break;
    }

LABEL_32:
    v26 = (v26 + 1);
    v27 += 184;
    if (v239 == v26)
    {
      sub_1001441C8(__dst);
LABEL_111:
      v22 = v239;
      goto LABEL_112;
    }
  }

  if (v28.value._countAndFlagsBits != v24 || v28.value._object != v25)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10015D600();

    if (v237)
    {
      goto LABEL_83;
    }

    goto LABEL_32;
  }

LABEL_83:
  if (v26 >= *(v21 + 16))
  {
    goto LABEL_129;
  }

  memcpy(__src, (v21 + v27), 0x62uLL);
  sub_10014416C(__src, v220);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001612B8(v21);
    v21 = v192;
  }

  if (v239 >= *(v21 + 16))
  {
    goto LABEL_130;
  }

  v138 = v21;
  v139 = (v21 + v213);
  memcpy(v219, v139 + 6, sizeof(v219));
  memcpy(v139 + 6, __src, 0x62uLL);
  sub_1001441C8(v219);
  v140 = *(v138 + 16);
  if (v26 >= v140)
  {
    goto LABEL_131;
  }

  v216 = v138;
  memcpy(v220, (v138 + v27), sizeof(v220));
  v141 = *&v220[96] >> 12;
  switch(v141)
  {
    case 3:
      sub_10015D644(v236, *v220);
      if (v239 >= v140)
      {
        goto LABEL_135;
      }

      v175 = v139[4];
      v174 = v139[5];

      sub_10014416C(v220, &v217);

      sub_10015BE18(v236, &v217);
      v176 = sub_10015CBF8(sub_10011D0A8);
      if (v177)
      {
        v178 = v176;
        v179 = v177;
        sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v180 = sub_10015D5B4();
        sub_10000F0DC(v180, v181, v182, v183, v184, v185, v186, v187, v193, v194, v195, v197, v199, v201, v202, v203, v206, v207, v188);
        v189[4] = v178;
        v189[5] = v179;
        v189[6] = v175;
        v189[7] = v174;
        v217 = v189;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_100006AEC();
        BidirectionalCollection<>.joined(separator:)();
        sub_10015D684();
      }

      else
      {
      }

      sub_10015BE74(v236);
LABEL_107:

      sub_1001441C8(v220);
      break;
    case 8:
      v227 = *v220;
      v228 = *&v220[8];
      v229 = *&v220[16];
      v230 = *&v220[24];
      v231 = *&v220[32];
      v232 = *&v220[48];
      v233 = *&v220[64];
      v234 = *&v220[80];
      v235 = *&v220[96] & 0xFFF;
      if (v239 >= v140)
      {
        goto LABEL_134;
      }

      v212 = v1;
      v159 = v139[4];
      v158 = v139[5];

      sub_10014416C(v220, &v217);

      v160 = sub_10015CAB0();
      if (v161)
      {
        v162 = v160;
        v163 = v161;
        sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v164 = sub_10015D5B4();
        sub_10000F0DC(v164, v165, v166, v167, v168, v169, v170, v171, v193, v194, v195, v197, v199, v201, v202, v203, v206, v207, v172);
        v173[4] = v162;
        v173[5] = v163;
        v173[6] = v159;
        v173[7] = v158;
        v217 = v173;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_100006AEC();
        BidirectionalCollection<>.joined(separator:)();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_1001441C8(v220);
      v1 = v212;
      break;
    case 4:
      sub_10015D644(v226, *v220);
      if (v239 >= v140)
      {
        goto LABEL_133;
      }

      v143 = v139[4];
      v142 = v139[5];
      swift_bridgeObjectRetain_n();
      sub_10014416C(v220, &v217);
      sub_10015C048(v226, &v217);
      v144 = sub_10015CBF8(sub_10011C524);
      if (v145)
      {
        v146 = v144;
        v147 = v145;
        sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v148 = sub_10015D5B4();
        sub_10000F0DC(v148, v149, v150, v151, v152, v153, v154, v155, v193, v194, v195, v197, v199, v201, v202, v203, v206, v207, v156);
        v157[4] = v146;
        v157[5] = v147;
        v157[6] = v143;
        v157[7] = v142;
        v217 = v157;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_100006AEC();
        BidirectionalCollection<>.joined(separator:)();
        sub_10015D684();
      }

      else
      {
      }

      sub_10015C0A4(v226);
      goto LABEL_107;
    default:

      break;
  }

  if (v239 >= *(v216 + 16))
  {
    goto LABEL_132;
  }

  memcpy(v225, v139 + 6, sizeof(v225));
  AvroSchema.getTypeName()();
  sub_1001583E4();
  if (!v1)
  {

    sub_1001441C8(__dst);
    v0 = v209;
    v21 = v216;
    *(v209 + 6) = v216;
    goto LABEL_111;
  }

  sub_1001441C8(__dst);
  *(v209 + 6) = v216;
LABEL_118:
  sub_100005074();
}

void sub_100156CD8()
{
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_8:
    sub_1001612CC(v2);
    v2 = v6;
  }

  v4 = v2 + 32;
  v5 = -v3;
  v3 = -1;
  while (v5 + v3 != -1)
  {
    if (++v3 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    sub_1001583E4();
    v4 += 104;
    if (v1)
    {
      break;
    }
  }

  *(v7 + 32) = v2;
}

void AvroSchema.init(from:)()
{
  sub_100004868();
  v32 = v3;
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002DED30, &qword_10023CCB0);
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003B38();
  v10 = sub_100099DF4(&qword_1002DED38, &qword_10023CCB8);
  v11 = sub_100003724(v10);
  v40 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_10000A850();
  v19 = v5[4];
  sub_100008B3C(v5, v5[3]);
  sub_1001572F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {

    sub_100002728(v1, 1, 1, v10);
    sub_10015D090(v1, &qword_1002DED30, &qword_10023CCB0);
    v20 = v5[4];
    sub_10000C4FC(v5, v5[3]);
    sub_100002A98();
    dispatch thunk of Decoder.singleValueContainer()();
    sub_10000601C(&v34, v35);
    sub_100008B3C(v35, v35[3]);
    sub_100002A98();
    v24 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_1001540EC(v24, v25, v38);
    v33 = v38[0];
    v28 = v38[2];
    v29 = v38[1];
    v30 = v38[5];
    v31 = v38[3];
    v27 = v38[4];
    v26 = v39;
    sub_100004118(v35);
  }

  else
  {
    sub_100002728(v1, 0, 1, v10);
    v21 = *(v40 + 32);
    v22 = sub_10000D560();
    v23(v22);
    (*(v40 + 16))(v17, v2, v10);
    sub_1001512EC(v5, v35);
    sub_100154A60(v17, v35, v36);
    v33 = v36[0];
    v28 = v36[2];
    v29 = v36[1];
    v30 = v36[5];
    v31 = v36[3];
    v27 = v36[4];
    v26 = v37;
    (*(v40 + 8))(v2, v10);
  }

  sub_100004118(v5);
  *v32 = v33;
  *(v32 + 16) = v29;
  *(v32 + 32) = v28;
  *(v32 + 48) = v31;
  *(v32 + 64) = v27;
  *(v32 + 80) = v30;
  *(v32 + 96) = v26;
  sub_100005074();
}

unint64_t sub_1001572F4()
{
  result = qword_1002DED40;
  if (!qword_1002DED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED40);
  }

  return result;
}

unint64_t sub_100157348()
{
  result = qword_1002DED50;
  if (!qword_1002DED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED50);
  }

  return result;
}

unint64_t sub_10015739C()
{
  result = qword_1002DED60;
  if (!qword_1002DED60)
  {
    sub_10009A468(&qword_1002DED58, &unk_10023CCC8);
    sub_100157420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED60);
  }

  return result;
}

unint64_t sub_100157420()
{
  result = qword_1002DED68;
  if (!qword_1002DED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED68);
  }

  return result;
}

uint64_t AvroSchema.encode(jsonEncoder:)()
{
  v1 = v0[2];
  v2 = *(v0 + 48);
  v3 = v2 >> 12;
  if (!(v2 >> 12))
  {
    v16 = v0[2];
    v15 = 2;
    goto LABEL_12;
  }

  switch(v3)
  {
    case 1u:
      v16 = v0[2];
      v15 = 3;
LABEL_12:
      if (v16 == 7)
      {
        return sub_100153E24(v15);
      }

      return sub_100153F58(v15, v1);
    case 2u:
      if (v0[2] == 7)
      {
        v15 = 6;
        return sub_100153E24(v15);
      }

      break;
    case 0xDu:
      v5 = v0[10];
      v4 = v0[11];
      v6 = v0[8];
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v11 = v0[4];
      v10 = v0[5];
      v12 = v0[3];
      v14 = *v0;
      v13 = v0[1];
      if (v2 == 53248 && !(v1 | v14 | v4 | v5 | v7 | v6 | v8 | v9 | v10 | v11 | v12 | v13))
      {
        v15 = 0;
        return sub_100153E24(v15);
      }

      v18 = v4 | v1 | v5 | v7 | v6 | v8 | v9 | v10 | v11 | v12 | v13;
      v19 = v2 == 53248 && v14 == 1;
      if (v19 && !v18)
      {
        v15 = 1;
        return sub_100153E24(v15);
      }

      v20 = v2 == 53248 && v14 == 2;
      if (v20 && !v18)
      {
        v15 = 4;
        return sub_100153E24(v15);
      }

      v21 = v2 == 53248 && v14 == 3;
      if (v21 && !v18)
      {
        v15 = 5;
        return sub_100153E24(v15);
      }

      v22 = v2 == 53248 && v14 == 4;
      if (v22 && !v18)
      {
        v15 = 7;
        return sub_100153E24(v15);
      }

      break;
  }

  sub_10015D5E8(v23);
  sub_100157620();
  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

unint64_t sub_100157620()
{
  result = qword_1002DED70;
  if (!qword_1002DED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED70);
  }

  return result;
}

void AvroSchema.encode(to:)()
{
  sub_100004868();
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v6[4];
  sub_10000C4FC(v6, v6[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v15 = *v0;
  v16 = v0[2];
  v17 = v0[4];
  v18 = v0[7];
  v19 = v0[8];
  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[11];
  v23 = *(v0 + 48);
  switch(v23 >> 12)
  {
    case 1u:
      if (v0[2] != 7)
      {
        goto LABEL_16;
      }

      v24 = 3;
      goto LABEL_63;
    case 2u:
      v55 = *v0;
      v56 = v2;
      v57 = v16;
      v58 = v3;
      v59 = v17;
      v60 = v4;
      v61 = v5;
      if (v16 == 7)
      {
        v24 = 6;
        goto LABEL_63;
      }

      sub_10000C6A0();
      AvroSchema.BytesSchema.encode(to:)();
      if (!v1 && ((v59 & 1) != 0 || v58 < 1 || (v61 & 1) != 0 || v58 < v60))
      {
        goto LABEL_54;
      }

      goto LABEL_66;
    case 3u:
      sub_10015D644(v75, v15);
      sub_10015BE18(v75, __dst);
      sub_10000C6A0();
      AvroSchema.RecordSchema.encode(to:)();
      v36 = v75;
      goto LABEL_12;
    case 4u:
      sub_10015D644(v78, v15);
      sub_10015C048(v78, __dst);
      sub_10000C6A0();
      AvroSchema.EnumSchema.encode(to:)();
      sub_10015C0A4(v78);
      goto LABEL_66;
    case 5u:
      memcpy(v76, v15 + 2, 0x73uLL);
      sub_100150F70(v76, __dst);
      sub_10000C6A0();
      AvroSchema.ArraySchema.encode(to:)();
      sub_100150FCC(v76);
      goto LABEL_66;
    case 6u:
      memcpy(v77, v15 + 2, 0x73uLL);
      sub_10014EA68(v77, __dst);
      sub_10000C6A0();
      AvroSchema.MapSchema.encode(to:)();
      sub_10014EAC4(v77);
      goto LABEL_66;
    case 7u:
      sub_10000D07C(v18, v8, v9, v10, v11, v12, v13, v14, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], v15[2], v15[3], v15[4], v15[5], v15[6], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v50, v51, v52, v53, v54);
      sub_10015BFF4();
      goto LABEL_65;
    case 8u:
      v62 = *v0;
      v63 = v2;
      v64 = v16;
      v65 = v3;
      v66 = v17;
      v67 = v4;
      v68 = v5;
      v69 = v18;
      v70 = v19;
      v71 = v21;
      v72 = v20;
      v73 = v22;
      v74 = v23 & 0xFFF;
      if (v18 == 7)
      {
        goto LABEL_24;
      }

      if (sub_100161910(v18) == 0x6C616D69636564 && v40 == 0xE700000000000000)
      {
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
LABEL_24:
          sub_10000C6A0();
          AvroSchema.FixedSchema.encode(to:)();
          goto LABEL_66;
        }
      }

      sub_10000C6A0();
      AvroSchema.FixedSchema.encode(to:)();
      if (!v1 && (sub_1001636AC() & 1) == 0)
      {
LABEL_54:
        sub_100151350();
        sub_100007F60();
        *v44 = 7;
LABEL_7:
        swift_willThrow();
      }

      goto LABEL_66;
    case 9u:
      sub_10015D644(v79, v15);
      sub_10015BE18(v79, __dst);
      sub_10000C6A0();
      AvroSchema.RecordSchema.encode(to:)();
      v36 = v79;
LABEL_12:
      sub_10015BE74(v36);
      goto LABEL_66;
    case 0xAu:
      sub_10000D07C(v18, v8, v9, v10, v11, v12, v13, v14, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], v15[2], *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v50, v51, v52, v53, v54);
      sub_100099DF4(&qword_1002DED88, &qword_10023CCE0);
      sub_10015BF1C();
      goto LABEL_65;
    case 0xBu:
      memcpy(__dst, v15 + 2, 0xB2uLL);
      v25 = memcpy(v48, __dst, 0xB2uLL);
      sub_10000D07C(v25, v26, v27, v28, v29, v30, v31, v32, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v50, v51, v52, v53, v54);
      sub_10015BFA0();
      goto LABEL_65;
    case 0xCu:
      v80 = type metadata accessor for EncodingError();
      sub_100007F60();
      v34 = v33;
      v47 = *(sub_100099DF4(&qword_1002DED78, &qword_10023CCD8) + 48);
      v34[3] = &type metadata for AvroSchema;
      v35 = swift_allocObject();
      *v34 = v35;
      memcpy((v35 + 16), v0, 0x62uLL);
      sub_100008B3C(&v51, v54);

      dispatch thunk of SingleValueEncodingContainer.codingPath.getter();
      sub_10015BEC8();
      sub_100007F60();
      EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v80 - 8) + 104))(v34, enum case for EncodingError.invalidValue(_:));
      goto LABEL_7;
    case 0xDu:
      v37 = v3 | v2 | v4 | v5;
      if (v23 == 53248 && !(v37 | v15 | v16 | v17 | v18 | v19 | v21 | v20 | v22))
      {
        __dst[0] = 0;
        goto LABEL_64;
      }

      v38 = v37 | v16 | v17 | v18 | v19 | v21 | v20 | v22;
      v39 = v23 == 53248 && v15 == 1;
      if (!v39 || v38)
      {
        v43 = v23 == 53248 && v15 == 2;
        if (!v43 || v38)
        {
          v45 = v23 == 53248 && v15 == 3;
          if (!v45 || v38)
          {
            v24 = 7;
          }

          else
          {
            v24 = 5;
          }
        }

        else
        {
          v24 = 4;
        }
      }

      else
      {
        v24 = 1;
      }

      goto LABEL_63;
    default:
      if (v0[2] == 7)
      {
        v24 = 2;
LABEL_63:
        __dst[0] = v24;
LABEL_64:
        sub_10000D07C(v18, v8, v9, v10, v11, v12, v13, v14, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v50, v51, v52, v53, v54);
        sub_10015C0F8();
      }

      else
      {
LABEL_16:
        __dst[0] = v0[2];
        sub_10000D07C(v18, v8, v9, v10, v11, v12, v13, v14, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], v48[14], v48[15], v48[16], v48[17], v48[18], v48[19], v48[20], v48[21], v48[22], *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], v50, v51, v52, v53, v54);
        sub_10015C14C();
      }

LABEL_65:
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
LABEL_66:
      sub_100004118(&v51);
      sub_100005074();
      return;
  }
}

void AvroSchema.RecordSchema.encode(to:)()
{
  sub_100004868();
  v62 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DEDB8, &qword_10023CCE8);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v11 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  v12 = sub_10000307C(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000308C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_10000A850();
  v19 = sub_100099DF4(&qword_1002DEDC8, &qword_10023CCF8);
  sub_100003724(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_100003774();
  __chkstk_darwin(v24);
  sub_100004880();
  v25 = v62;
  sub_100158D20(v4);
  if (!v25)
  {
    v59 = v2;
    v60 = v10;
    v58 = v17;
    v61 = v21;
    v62 = v0;
    v26 = v4[4];
    sub_100008B3C(v4, v4[3]);
    sub_10015C1A0();
    sub_10015D6A4();
    v66 = v62[6];
    v65 = 0;
    sub_100099DF4(&qword_1002DED88, &qword_10023CCE0);
    sub_10015BF1C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v30 = v4[3];
    v31 = v4[4];
    v32 = *(sub_10000A600(v4) + 16);

    if (v32)
    {
      v33 = v4[3];
      v34 = v4[4];
      v35 = sub_10000A600(v4);
      v36 = v60;
      sub_100153CA8(v35, v60);

      if (sub_100004DFC(v36, 1, v11) == 1)
      {
        v37 = *(v61 + 8);
        v38 = sub_10015D60C();
        v39(v38);
        sub_10015D090(v36, &qword_1002DEDB8, &qword_10023CCE8);
      }

      else
      {
        v40 = v59;
        sub_10015C1F4(v36, v59);
        v41 = v58;
        sub_10015C264(v40, v58);
        v42 = *(v11 + 48);
        v43 = sub_10000AE5C();
        v44 = v61;
        if (v43)
        {
          v45 = v64;
          v46 = type metadata accessor for CodingUserInfoKey();
          sub_100006EF0(v46);
          (*(v47 + 8))(v41);
          if (v45 == 2)
          {
            v48 = v62[8];
            v49 = v62[9];
            v63 = 1;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          }

          sub_10015D090(v40, &qword_1002DEDC0, &qword_10023CCF0);
          v50 = *(v44 + 8);
          v51 = sub_10015D60C();
          v52(v51);
        }

        else
        {
          sub_10015D090(v40, &qword_1002DEDC0, &qword_10023CCF0);
          v53 = *(v44 + 8);
          v54 = sub_10015D60C();
          v55(v54);
          v56 = type metadata accessor for CodingUserInfoKey();
          sub_100006EF0(v56);
          (*(v57 + 8))(v41);
        }
      }
    }

    else
    {
      v27 = *(v61 + 8);
      v28 = sub_10015D60C();
      v29(v28);
    }
  }

  sub_100005074();
}

void AvroSchema.EnumSchema.encode(to:)()
{
  sub_100004868();
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002DEDB8, &qword_10023CCE8);
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003B38();
  v10 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  v11 = sub_10000307C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  sub_10000A850();
  v51 = sub_100099DF4(&qword_1002DEDD8, &unk_10023CD00);
  sub_100003724(v51);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  sub_100004880();
  sub_100158F88(v5);
  if (!v1)
  {
    v49 = v3;
    v50 = v19;
    v52 = v0;
    v23 = v5[4];
    sub_100008B3C(v5, v5[3]);
    sub_10015C2D4();
    sub_10015D6A4();
    v54 = *(v0 + 72);
    sub_100099DF4(&qword_1002DA600, &qword_10022E490);
    sub_10000ABC8(&qword_1002DEDE8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v5[3];
    v28 = v5[4];
    v29 = *(sub_10000A600(v5) + 16);

    if (v29)
    {
      v30 = v5[3];
      v31 = v5[4];
      v32 = sub_10000A600(v5);
      sub_100153CA8(v32, v2);

      if (sub_100004DFC(v2, 1, v10) == 1)
      {
        v33 = *(v50 + 8);
        v34 = sub_100005CF0();
        v35(v34);
        sub_10015D090(v2, &qword_1002DEDB8, &qword_10023CCE8);
      }

      else
      {
        sub_10015C1F4(v2, v49);
        sub_10015C264(v49, v16);
        v36 = *(v10 + 48);
        if (sub_10000AE5C())
        {
          v37 = type metadata accessor for CodingUserInfoKey();
          sub_100006EF0(v37);
          (*(v38 + 8))(v16);
          if (v53 == 2)
          {
            v39 = *(v52 + 56);
            v40 = *(v52 + 64);
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          }

          sub_10015D090(v49, &qword_1002DEDC0, &qword_10023CCF0);
          v41 = *(v50 + 8);
          v42 = sub_100005CF0();
          v43(v42);
        }

        else
        {
          sub_10015D090(v49, &qword_1002DEDC0, &qword_10023CCF0);
          v44 = *(v50 + 8);
          v45 = sub_100005CF0();
          v46(v45);
          v47 = type metadata accessor for CodingUserInfoKey();
          sub_100006EF0(v47);
          (*(v48 + 8))(v16);
        }
      }
    }

    else
    {
      v24 = *(v50 + 8);
      v25 = sub_100005CF0();
      v26(v25);
    }
  }

  sub_100005074();
}

void sub_1001583E4()
{
  sub_100004868();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_10015D5E8(v105);
  v19 = v105[12];
  v20 = v105[0];
  switch(LOWORD(v105[12]) >> 12)
  {
    case 3:
      sub_1000040C0(v11, v12, v13, v14, v15, v16, v17, v18, v65, v67, v69, v71, v73, v75, v77, v79, v82, v85, v88, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v94, *(&v94 + 1), v95, *(&v95 + 1), v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v98[0]);
      memcpy(__dst, (v20 + 16), 0x51uLL);
      sub_10014416C(v105, v100);
      sub_10015BE18(v98, v100);
      sub_1000039B0();
      sub_100155D7C();
      if (v1)
      {
        v21 = __dst;
        goto LABEL_37;
      }

      sub_10000776C(v100);
      sub_1001441C8(v100);
      sub_100004650();
      v58 = swift_allocObject();
      v59 = sub_10015D564(v58);
      memcpy(v59, __dst, 0x51uLL);
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 12288;
      goto LABEL_62;
    case 4:
      v106 = v6;
      sub_10000776C(v100);

      v25 = sub_1001441C8(v100);
      sub_1000040C0(v25, v26, v27, v28, v29, v30, v31, v32, v65, v67, v69, v71, v73, v75, v77, v79, v82, v85, v10, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v94, *(&v94 + 1), v95, *(&v95 + 1), v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v98[0]);
      v34 = *(&v98[2] + 1);
      v33 = *&v98[2];
      v35 = *(&v98[0] + 1);
      v80 = *(&v98[1] + 1);
      v83 = *&v98[1];
      v36 = *(v20 + 80);
      v94 = *(v20 + 64);
      v95 = v36;
      LOBYTE(v96) = *(v20 + 96);
      v86 = 1836412517;
      if (*&v98[2] == 1836412517 && *(&v98[2] + 1) == 0xE400000000000000)
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        if ((sub_10015D6C4() & 1) == 0 && !*(&v98[0] + 1))
        {
          v35 = *(&v98[2] + 1);
          v34 = 0xE400000000000000;
          goto LABEL_55;
        }

        v86 = *&v98[2];
      }

      v33 = *&v98[0];
LABEL_55:
      sub_10015C048(v98, v103);
      if (v8)
      {
      }

      else
      {
        v8 = v35;
        v89 = v33;
      }

      v62 = v106;
      if (v4)
      {
      }

      else
      {
        v4 = v80;
        v62 = v83;
      }

      sub_100004650();
      v63 = swift_allocObject();
      *(v63 + 16) = v89;
      *(v63 + 24) = v8;
      *(v63 + 32) = v62;
      *(v63 + 40) = v4;
      *(v63 + 48) = v86;
      *(v63 + 56) = v34;
      v64 = v95;
      *(v63 + 64) = v94;
      *(v63 + 80) = v64;
      *(v63 + 96) = v96;
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 0x4000;
      goto LABEL_62;
    case 5:
      sub_100008CAC(v100);
      sub_100008CAC(__src);
      sub_10014416C(v105, v98);
      sub_100150F70(v100, v98);
      sub_1000039B0();
      sub_1001583E4();
      if (v1)
      {
        memcpy(v98, __src, 0x73uLL);
        sub_100150FCC(v98);
        goto LABEL_38;
      }

      sub_10000776C(v98);
      sub_1001441C8(v98);
      v54 = swift_allocObject();
      v55 = sub_10015D564(v54);
      memcpy(v55, __src, 0x73uLL);
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 20480;
      goto LABEL_62;
    case 6:
      sub_100008CAC(v100);
      sub_100008CAC(v99);
      sub_10014416C(v105, v98);
      sub_10014EA68(v100, v98);
      sub_1000039B0();
      sub_1001583E4();
      if (v1)
      {
        memcpy(v98, v99, 0x73uLL);
        sub_10014EAC4(v98);
        goto LABEL_38;
      }

      sub_10000776C(v98);
      sub_1001441C8(v98);
      v56 = swift_allocObject();
      v57 = sub_10015D564(v56);
      memcpy(v57, v99, 0x73uLL);
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 24576;
      goto LABEL_62;
    case 7:
      v22 = *(v105[0] + 16);
      v24 = *(v105[0] + 40);
      v23 = *(v105[0] + 48);
      *(v98 + 8) = *(v105[0] + 24);
      *&v98[0] = v22;
      *(&v98[1] + 1) = v24;
      *&v98[2] = v23;
      sub_10014416C(v105, v100);

      sub_1000039B0();
      sub_100156CD8();
      if (v10)
      {

        goto LABEL_38;
      }

      sub_10000776C(v100);
      sub_1001441C8(v100);
      sub_1000140AC();
      v50 = swift_allocObject();
      v51 = *&v98[2];
      v52 = v98[1];
      *(v50 + 16) = v98[0];
      *(v50 + 32) = v52;
      *(v50 + 48) = v51;
      sub_1001441C8(v105);
      sub_10000678C();
      v53 = 28672;
      goto LABEL_62;
    case 8:
      v90 = v10;
      v107 = v6;
      v38 = v105[1];
      v66 = v105[2];
      v39 = v105[4];
      v40 = v105[5];
      v84 = v105[6];
      v87 = LOBYTE(v105[7]);
      v78 = v105[9];
      v81 = v105[8];
      v72 = v105[10];
      v74 = v105[3];
      v76 = v105[11];
      sub_10000776C(v98);
      sub_10000776C(v100);
      v101 &= 0xFFFu;
      sub_10014EA0C(v100, v103);
      sub_1001441C8(v98);
      v41 = 0xE500000000000000;
      if (v39 == 0x6465786966 && v40 == 0xE500000000000000)
      {
        v70 = 0x6465786966;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v41 = 0xE500000000000000;
        if (v38)
        {
          v44 = v20;
        }

        else
        {
          v44 = v39;
        }

        if (v38)
        {
          v45 = v38;
        }

        else
        {
          v45 = v40;
        }

        v46 = 0x6465786966;
        if (v38)
        {
          v46 = v39;
          v41 = v40;
        }

        if (v43)
        {
          v47 = v39;
        }

        else
        {
          v20 = v44;
          v38 = v45;
          v47 = v46;
        }

        v70 = v47;
        if (v43)
        {
          v41 = v40;
        }
      }

      v68 = v41;
      v48 = v107;
      v49 = v90;
      if (v8)
      {
        sub_10014416C(v105, v103);
      }

      else
      {
        memcpy(v103, v105, 0x62uLL);
        v103[48] &= 0xFFFu;
        sub_10014EA0C(v103, v102);
        v49 = v20;
        v8 = v38;
      }

      if (v4)
      {
      }

      else
      {
        v48 = v66;
        v4 = v74;
      }

      sub_1001441C8(v105);
      *v2 = v49;
      *(v2 + 8) = v8;
      *(v2 + 16) = v48;
      *(v2 + 24) = v4;
      *(v2 + 32) = v70;
      *(v2 + 40) = v68;
      *(v2 + 48) = v84;
      *(v2 + 56) = v87;
      *(v2 + 64) = v81;
      *(v2 + 72) = v78;
      *(v2 + 80) = v72 & 1;
      *(v2 + 88) = v76;
      *(v2 + 96) = v19 & 0x301 | 0x8000;
      goto LABEL_63;
    case 9:
      sub_1000040C0(v11, v12, v13, v14, v15, v16, v17, v18, v65, v67, v69, v71, v73, v75, v77, v79, v82, v85, v88, v91, v92, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v94, *(&v94 + 1), v95, *(&v95 + 1), v96, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v98[0]);
      memcpy(v104, (v20 + 16), 0x51uLL);
      sub_10014416C(v105, v100);
      sub_10015BE18(v98, v100);
      sub_1000039B0();
      sub_100155D7C();
      if (v1)
      {
        v21 = v104;
LABEL_37:
        memcpy(v100, v21, 0x51uLL);
        sub_10015BE74(v100);
LABEL_38:
        sub_1001441C8(v105);
      }

      else
      {
        sub_10000776C(v100);
        sub_1001441C8(v100);
        sub_100004650();
        v60 = swift_allocObject();
        v61 = sub_10015D564(v60);
        memcpy(v61, v104, 0x51uLL);
        sub_1001441C8(v105);
        sub_10000678C();
        v53 = -28672;
LABEL_62:
        *(v2 + 96) = v53;
      }

LABEL_63:
      sub_100005074();
      return;
    default:
      goto LABEL_63;
  }
}

uint64_t sub_100158AD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100004EE8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_100004EE8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (sub_100004EE8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657361696C61 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        sub_100004EE8();
        sub_10015D600();

        if (a1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_100158C0C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = sub_10015D618();
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100158C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100158AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100158CA8(uint64_t a1)
{
  v2 = sub_10015CD34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158CE4(uint64_t a1)
{
  v2 = sub_10015CD34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100158D20(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DEE88, &qword_10023D230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10015CD34();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001613E0(v11);
  v23 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v13 = v1[4];
    v14 = v1[5];
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = a1[4];
    sub_10000C4FC(a1, a1[3]);
    v16 = *(dispatch thunk of Encoder.userInfo.getter() + 16);

    if (v16)
    {
      v17 = v3[2];
      v18 = v3[3];
      v21 = 2;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v19[1] = v3[7];
      v20 = 3;
      sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
      sub_10015CD88();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100158F88(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DEE88, &qword_10023D230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10015CD34();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001613E0(v11);
  v23 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v13 = v1[4];
    v14 = v1[5];
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = a1[4];
    sub_10000C4FC(a1, a1[3]);
    v16 = *(dispatch thunk of Encoder.userInfo.getter() + 16);

    if (v16)
    {
      v17 = v3[2];
      v18 = v3[3];
      v21 = 2;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v19[1] = v3[6];
      v20 = 3;
      sub_100099DF4(&qword_1002DEE98, &qword_10023D238);
      sub_10015CD88();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    return (*(v6 + 8))(v9, v5);
  }
}

void sub_1001591F0()
{
  sub_100004868();
  v118 = v3;
  v119 = v4;
  object = *(v0 + 32);
  v121 = object[2];
  if (!v121)
  {
    goto LABEL_84;
  }

  v117 = v2;
  v109 = v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_3:
  v6 = 0;
  v120 = (object + 4);
  v7 = &_swiftEmptyDictionarySingleton;
  v139 = object;
  while (1)
  {
    sub_10015D538();
    if (v8)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      sub_1001612CC(object);
      object = v107;
      goto LABEL_3;
    }

    v9 = &v120[104 * v6];
    sub_10000DF44(v129);
    v10 = v129[0];
    v11 = v131 >> 12;
    if (v11 != 3)
    {
      break;
    }

    sub_100002EBC(v127);
    sub_100002EBC(v125);
    sub_10014416C(v129, __src);
    sub_10015BE18(v127, __src);
    v36 = sub_100159AAC(0x64726F636572, 0xE600000000000000, v117, v118, v119);
    if (v1)
    {
      sub_10015D5CC(v36, v37, v38, v39, v40, v41, v42, v43, v108, v109);
      v103 = v125;
      goto LABEL_75;
    }

    sub_100004650();
    v44 = swift_allocObject();
    v45 = sub_10015D564(v44);
    memcpy(v45, v125, 0x51uLL);
    sub_10015D538();
    if (v8)
    {
      goto LABEL_91;
    }

    sub_10000DF44(__src);
    *v9 = v125;
    v115 &= 1u;
    *(v9 + 7) = v114;
    *(v9 + 10) = v115;
    v112 = v112 & 0x301 | 0x3000;
    *(v9 + 48) = v112;
LABEL_20:
    v25 = __src;
LABEL_21:
    sub_1001441C8(v25);
    sub_1001441C8(v129);
LABEL_23:
    if (!v6)
    {
      goto LABEL_54;
    }

LABEL_24:
    sub_10015D538();
    if (v8)
    {
      goto LABEL_89;
    }

    sub_10000DF44(v135);
    v46 = AvroSchema.getTypeName()();
    object = v46._object;
    if (!v7[2])
    {
      goto LABEL_50;
    }

    v47 = sub_10014EB30(v46._countAndFlagsBits, v46._object);
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      goto LABEL_51;
    }

    memcpy(v134, (v7[7] + 104 * v47), 0x62uLL);
    v50 = AvroSchema.getName()();
    if (v6 >= v139[2])
    {
      goto LABEL_93;
    }

    sub_10000DF44(v133);
    v51 = AvroSchema.getName()();
    if (!v50.value._object)
    {
      if (!v51.value._object)
      {
        v54 = sub_10014416C(v134, __src);
LABEL_79:
        sub_10015D5CC(v54, v55, v56, v57, v58, v59, v60, v61, v108, v109);
        sub_100157348();
        sub_100007F60();
        *v105 = 3;
        swift_willThrow();
        v106 = v134;
LABEL_83:
        sub_1001441C8(v106);

LABEL_84:
        sub_100005074();
        return;
      }

LABEL_50:

LABEL_51:
      object = v139;
      goto LABEL_54;
    }

    if (!v51.value._object)
    {
      goto LABEL_50;
    }

    if (v50.value._countAndFlagsBits == v51.value._countAndFlagsBits && v50.value._object == v51.value._object)
    {
      sub_10014416C(v134, __src);

      goto LABEL_79;
    }

    sub_10000D560();
    sub_100003288();
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10014416C(v134, __src);

    object = v139;
    if (v53)
    {
      goto LABEL_79;
    }

    v62 = v134;
LABEL_53:
    sub_1001441C8(v62);
LABEL_54:
    sub_10015D538();
    if (v8)
    {
      goto LABEL_87;
    }

    sub_10000DF44(v132);
    v68 = AvroSchema.getTypeName()();
    object = v68._object;
    sub_10000DF44(__src);
    sub_10014416C(__src, v127);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v7;
    v70 = sub_10000D560();
    v72 = sub_10014EB30(v70, v71);
    v74 = v7[2];
    v75 = (v73 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      goto LABEL_88;
    }

    v77 = v72;
    v78 = v73;
    sub_100099DF4(&qword_1002DE968, &unk_10023B920);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v76))
    {
      v79 = sub_10000D560();
      v81 = sub_10014EB30(v79, v80);
      if ((v78 & 1) != (v82 & 1))
      {
        goto LABEL_99;
      }

      v77 = v81;
      if ((v78 & 1) == 0)
      {
LABEL_59:
        v7 = v124[0];
        sub_1000035B8(v124[0] + 8 * (v77 >> 6));
        *(v7[6] + 16 * v77) = v68;
        memcpy((v7[7] + 104 * v77), __src, 0x62uLL);
        v83 = v7[2];
        v84 = __OFADD__(v83, 1);
        v85 = v83 + 1;
        if (v84)
        {
          goto LABEL_90;
        }

        v7[2] = v85;
        goto LABEL_63;
      }
    }

    else if ((v78 & 1) == 0)
    {
      goto LABEL_59;
    }

    v7 = v124[0];
    v86 = (*(v124[0] + 56) + 104 * v77);
    sub_10015D5E8(v127);
    memcpy(v86, __src, 0x62uLL);
    sub_1001441C8(v127);

LABEL_63:
    ++v6;
    object = v139;
    if (v6 == v121)
    {

      goto LABEL_72;
    }
  }

  if (v11 == 9)
  {
    sub_100002EBC(v127);
    sub_100002EBC(v126);
    sub_10014416C(v129, __src);
    sub_10015BE18(v127, __src);
    v26 = sub_100159AAC(0x726F727265, 0xE500000000000000, v117, v118, v119);
    if (v1)
    {
      sub_10015D5CC(v26, v27, v28, v29, v30, v31, v32, v33, v108, v109);
      v103 = v126;
LABEL_75:
      memcpy(__src, v103, 0x51uLL);
      sub_10015BE74(__src);
LABEL_82:
      v106 = v129;
      goto LABEL_83;
    }

    sub_100004650();
    v34 = swift_allocObject();
    v35 = sub_10015D564(v34);
    memcpy(v35, v126, 0x51uLL);
    sub_10015D538();
    if (v8)
    {
      goto LABEL_92;
    }

    sub_10000DF44(__src);
    *v9 = v126;
    *(v9 + 7) = v113;
    v111 &= 1u;
    *(v9 + 10) = v111;
    v110 = v110 & 0x301 | 0x9000;
    *(v9 + 48) = v110;
    goto LABEL_20;
  }

  if (v11 != 12)
  {
    sub_1000109B8();
    sub_1001583E4();
    if (v1)
    {

LABEL_72:
      sub_10015D5CC(v95, v96, v97, v98, v99, v100, v101, v102, v108, v109);
      goto LABEL_84;
    }

    goto LABEL_23;
  }

  v116 = v130;
  if (!v130)
  {
    goto LABEL_98;
  }

  v12 = v129[1];
  v13 = v129[2];
  if (*(v117 + 16))
  {

    v14 = sub_10014EB30(v13, v116);
    if ((v15 & 1) == 0)
    {
      goto LABEL_38;
    }

    v16 = *(v117 + 56) + 104 * v14;
    sub_10015D5E8(v127);
    sub_10015D5E8(__src);
    sub_10015D5E8(&v138);
    AvroSchema.getTypeName()();
    sub_10014416C(v127, v124);
    sub_1001583E4();
    if (v1)
    {
      sub_10015D5CC(v17, v18, v19, v20, v21, v22, v23, v24, v108, v109);
      v104 = __src;
LABEL_81:
      memcpy(v124, v104, 0x62uLL);
      sub_1001441C8(v124);

      goto LABEL_82;
    }

    memcpy(__dst, __src, 0x62uLL);
    sub_10014416C(__dst, v124);
    sub_10015D538();
    if (v8)
    {
      goto LABEL_94;
    }

    sub_10000DF44(v123);
    memcpy(v9, __dst, 0x62uLL);
    sub_1001441C8(v123);
    memcpy(v124, __src, 0x62uLL);
    v25 = v124;
    goto LABEL_21;
  }

LABEL_38:
  if (!v6)
  {
    v62 = v129;
    goto LABEL_53;
  }

  v63 = 0;
  v64 = 32;
  while (2)
  {
    if (v63 >= object[2])
    {
      __break(1u);
      goto LABEL_86;
    }

    sub_10015D6E4(v137);
    v65 = AvroSchema.getName()();
    if (!v65.value._object)
    {
LABEL_47:
      ++v63;
      v64 += 104;
      object = v139;
      if (v6 == v63)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  if (v65.value._countAndFlagsBits != v10 || v65.value._object != v12)
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_66;
    }

    goto LABEL_47;
  }

LABEL_66:
  object = v139;
  if (v63 >= v139[2])
  {
    __break(1u);
  }

  else
  {
    sub_10015D6E4(__src);
    sub_10015D6E4(v127);
    sub_10015D6E4(v136);
    AvroSchema.getTypeName()();
    sub_10014416C(__src, v124);
    sub_1001583E4();
    if (v1)
    {
      sub_10015D5CC(v87, v88, v89, v90, v91, v92, v93, v94, v108, v109);
      v104 = v127;
      goto LABEL_81;
    }

    memcpy(__dst, v127, 0x62uLL);
    sub_10014416C(__dst, v124);
    sub_10015D538();
    if (!v8)
    {
      sub_10000DF44(v123);
      memcpy(v9, __dst, 0x62uLL);
      sub_1001441C8(v123);
      memcpy(v124, v127, 0x62uLL);
      sub_1001441C8(v124);
LABEL_70:
      sub_1001441C8(v129);
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100159AAC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v50 = a3;
  v11 = *(v5 + 32);
  v10 = *(v5 + 40);
  v12 = v11 == result && v10 == a2;
  v55 = result;
  if (v12)
  {
LABEL_8:
    v13 = v10;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = a2;
  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((result & 1) != 0 || *(v5 + 8))
  {
    v55 = v11;
    goto LABEL_8;
  }

  *v5 = v11;
  *(v5 + 8) = v10;
  *(v5 + 32) = v55;
  *(v5 + 40) = v13;

  if (a5)
  {
LABEL_9:
    v14 = *(v5 + 24);

    *(v5 + 16) = a4;
    *(v5 + 24) = a5;
  }

LABEL_10:
  v15 = *(v5 + 48);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v5 + 48);
    v59 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_35:
      sub_1001612B8(v15);
      v15 = v47;
    }

    v18 = 0;
    v19 = 0;
    v20 = *v5;
    v21 = *(v5 + 8);
    v51 = v16 - 1;
    v57 = *(v5 + 16);
    v58 = *(v5 + 24);
    v54 = *(v5 + 56);
    v53 = *(v5 + 72);
    v49 = v5;
    HIDWORD(v52) = *(v5 + 80);
    for (i = *v5; ; v20 = i)
    {
      v63[0] = v20;
      v63[1] = v21;
      v63[2] = v57;
      v63[3] = v58;
      v5 = v55;
      v63[4] = v55;
      v63[5] = v59;
      v63[6] = v15;
      v64 = v54;
      v65 = v53;
      v66 = BYTE4(v52);
      if (v19 >= *(v15 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v67 = v18;
      v22 = *(v15 + v18 + 40);
      v61 = *(v15 + v18 + 32);
      sub_100099DF4(&qword_1002DD538, &unk_100238260);
      v23 = sub_10015D5B4();
      sub_10000F0DC(v23, v24, v25, v26, v27, v28, v29, v30, v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1), v55, v56, v31);
      if (v21)
      {
        v56 = v7;
        v62[13] = i;
        v62[14] = v21;
        v62[11] = 46;
        v62[12] = 0xE100000000000000;
        sub_10015BE18(v63, v62);
        sub_1000BBBB0();

        if ((sub_10015D598() & 1) != 0 || !v58)
        {
          sub_10015BE74(v63);
          v5 = i;
          v32 = v21;
        }

        else
        {
          v33 = sub_10015D5B4();
          sub_10000F0DC(v33, v34, v35, v36, v37, v38, v39, v40, v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1), v55, v7, v41);
          v42[4] = v57;
          v42[5] = v58;
          v42[6] = i;
          v42[7] = v21;
          v62[0] = v42;

          sub_100099DF4(&qword_1002DA600, &qword_10022E490);
          sub_100010288();
          sub_100006AEC();
          v5 = BidirectionalCollection<>.joined(separator:)();
          v32 = v43;

          sub_10015BE74(v63);
        }

        v7 = v56;
      }

      else
      {

        v32 = v59;
      }

      v23[2].n128_u64[0] = v5;
      v23[2].n128_u64[1] = v32;
      v23[3].n128_u64[0] = v61;
      v23[3].n128_u64[1] = v22;
      v62[0] = v23;
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      sub_100010288();
      sub_100006AEC();
      BidirectionalCollection<>.joined(separator:)();
      v16 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001612B8(v15);
        v15 = v46;
      }

      v45 = v67;
      if (v19 >= *(v15 + 16))
      {
        goto LABEL_34;
      }

      sub_100005CF0();
      sub_100159FE8();
      if (v7)
      {
        break;
      }

      if (v51 == v19)
      {
        goto LABEL_29;
      }

      v18 = v45 + 184;
      ++v19;
    }

LABEL_29:
    *(v49 + 48) = v15;
  }

  return result;
}

uint64_t sub_100159E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
  if (v4 || (sub_100004EE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6516580 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    sub_100004EE8();
    sub_10015D600();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100159EFC(char a1)
{
  if (a1)
  {
    return 6516580;
  }

  else
  {
    return 0x73646C656966;
  }
}

uint64_t sub_100159F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100159E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100159F70(uint64_t a1)
{
  v2 = sub_10015C1A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100159FAC(uint64_t a1)
{
  v2 = sub_10015C1A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100159FE8()
{
  sub_100004868();
  v114 = v2;
  v4 = v3;
  v6 = v5;
  memcpy(v139, (v0 + 16), 0x62uLL);
  v7 = LOWORD(v139[12]);
  v140 = v6;
  v103 = v0;
  v8 = v139[0];
  v9 = v139[1];
  v11 = v139[2];
  v10 = v139[3];
  v13 = v139[5];
  v12 = v139[6];
  switch(LOWORD(v139[12]) >> 12)
  {
    case 3:
      v14 = v4;
      sub_100002EBC(v130);
      v15 = v131;
      v16 = v132;
      v7 = *v130;
      v17 = *&v130[8];
      v119 = *&v130[16];
      v18 = *&v130[24];
      v19 = v133;
      *v126 = *(v8 + 72);
      *&v126[9] = *(v8 + 81);
      v112 = 0xE600000000000000;
      v20 = v131 == 0x64726F636572 && v132 == 0xE600000000000000;
      v108 = 0x64726F636572;
      if (v20)
      {
        v15 = *v130;
      }

      else
      {
        v21 = v133;
        v22 = *&v130[8];
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v108 = v15;
          v112 = v16;
          v15 = v7;
          v17 = v22;
        }

        else if (v22)
        {
          v17 = v22;
          v108 = v15;
          v112 = v16;
          v15 = v7;
        }

        else
        {
          v112 = 0xE600000000000000;
          v17 = v16;
        }

        v19 = v21;
      }

      v122 = v17;
      if (v14)
      {
        v75 = v14;
        v76 = sub_10000A2A8();
        sub_10014416C(v76, v77);

        v78 = sub_10000424C();
        sub_10015BE18(v78, v79);

        v80 = v140;
      }

      else
      {
        v81 = sub_10000A2A8();
        sub_10014416C(v81, v82);
        v83 = sub_10000424C();
        sub_10015BE18(v83, v84);
        v80 = v119;
        v75 = v18;
      }

      v85 = v108;
      v107 = *(v133 + 16);
      if (!v107)
      {
        goto LABEL_65;
      }

      v86 = 0;
      v7 = 0;
      v106 = v136;
      v105 = v135;
      *v104 = v134;
      v19 = v133;
      v141 = v80;
      v111 = v75;
      v117 = v15;
      while (2)
      {
        __src[0] = v15;
        __src[1] = v122;
        __src[2] = v80;
        __src[3] = v75;
        __src[4] = v85;
        __src[5] = v112;
        __src[6] = v19;
        *&__src[7] = *v104;
        __src[9] = v105;
        LOBYTE(__src[10]) = v106;
        if (v7 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_72;
        }

        v87 = *(v19 + v86 + 40);
        v121 = *(v19 + v86 + 32);
        sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v88 = sub_10015D5B4();
        *(v88 + 16) = xmmword_1002329F0;
        if (v122)
        {
          v128[0] = v117;
          v128[1] = v122;
          v127[0] = 46;
          v127[1] = 0xE100000000000000;
          sub_10015BE18(__src, __dst);
          sub_1000BBBB0();

          if ((sub_10015D598() & 1) != 0 || !v111)
          {
            sub_10015BE74(__src);
            v85 = v117;
            v89 = v122;
          }

          else
          {
            v90 = sub_10015D5B4();
            *(v90 + 16) = xmmword_1002329F0;
            *(v90 + 32) = v141;
            *(v90 + 40) = v111;
            *(v90 + 48) = v117;
            *(v90 + 56) = v122;
            __dst[0] = v90;

            sub_100099DF4(&qword_1002DA600, &qword_10022E490);
            sub_100010288();
            sub_10000C098();
            v85 = BidirectionalCollection<>.joined(separator:)();
            v89 = v91;

            sub_10015BE74(__src);
          }
        }

        else
        {

          v89 = v112;
        }

        *(v88 + 32) = v85;
        *(v88 + 40) = v89;
        *(v88 + 48) = v121;
        *(v88 + 56) = v87;
        __dst[0] = v88;
        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        sub_10000C098();
        BidirectionalCollection<>.joined(separator:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001612B8(v19);
          v19 = v93;
        }

        v80 = v141;
        if (v7 >= *(v19 + 16))
        {
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return;
        }

        v92 = sub_10000D560();
        sub_100159FE8(v92);
        if (!v1)
        {
          ++v7;

          v86 += 184;
          v85 = v108;
          v75 = v111;
          v15 = v117;
          if (v107 == v7)
          {
LABEL_65:
            sub_100004650();
            v94 = swift_allocObject();
            *(v94 + 16) = v15;
            *(v94 + 24) = v122;
            *(v94 + 32) = v80;
            *(v94 + 40) = v75;
            *(v94 + 48) = v85;
            *(v94 + 56) = v112;
            *(v94 + 64) = v19;
            *(v94 + 72) = *v126;
            *(v94 + 81) = *&v126[9];
            sub_10015D544(v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
            sub_1001441C8(__src);
            sub_1001441C8(v139);
            sub_10000DBE4();
            v55 = 12288;
            goto LABEL_66;
          }

          continue;
        }

        break;
      }

      __dst[0] = v117;
      __dst[1] = v122;
      __dst[2] = v141;
      __dst[3] = v111;
      __dst[4] = v108;
      __dst[5] = v112;
      __dst[6] = v19;
      *&__dst[7] = *v126;
      *(&__dst[8] + 1) = *&v126[9];
      sub_10015BE74(__dst);
LABEL_68:
      sub_1001441C8(v139);
LABEL_69:
      sub_100005074();
      return;
    case 4:
      v29 = 1836412517;
      sub_100002EBC(v130);
      v30 = v131;
      v31 = v132;
      v32 = *v130;
      v33 = *&v130[8];
      v34 = *&v130[16];
      v35 = *&v130[24];
      *v123 = *(v8 + 64);
      v124 = *(v8 + 80);
      v125 = *(v8 + 96);
      v36 = 0xE400000000000000;
      if (v131 != 1836412517 || v132 != 0xE400000000000000)
      {
        sub_100005CF0();
        if ((sub_10015D6C4() & 1) != 0 || v33)
        {
          v29 = v30;
          v36 = v31;
        }

        else
        {
          v32 = v30;
          v33 = v31;
        }
      }

      v56 = sub_10000A2A8();
      sub_10014416C(v56, v57);
      if (v4)
      {

        v58 = sub_10000424C();
        sub_10015C048(v58, v59);

        v34 = v140;
      }

      else
      {
        v60 = sub_10000424C();
        sub_10015C048(v60, v61);
        v4 = v35;
      }

      sub_100004650();
      v62 = swift_allocObject();
      *(v62 + 16) = v32;
      *(v62 + 24) = v33;
      *(v62 + 32) = v34;
      *(v62 + 40) = v4;
      *(v62 + 48) = v29;
      *(v62 + 56) = v36;
      *(v62 + 64) = *v123;
      *(v62 + 80) = v124;
      *(v62 + 96) = v125;
      sub_10015D544(v62, v63, v64, v65, v66, v67, v68, v69, v102, v103);
      sub_1001441C8(__src);
      sub_1001441C8(v139);
      sub_10000DBE4();
      *(v29 + 112) = 0x4000;
      goto LABEL_69;
    case 7:
      v23 = *(v139[0] + 16);
      v25 = *(v139[0] + 40);
      v24 = *(v139[0] + 48);
      *&v130[8] = *(v139[0] + 24);
      *v130 = v23;
      *&v130[24] = v25;
      v131 = v24;
      v26 = sub_10000A2A8();
      sub_10014416C(v26, v27);

      sub_1001591F0(v28);
      if (v1)
      {

        goto LABEL_30;
      }

      sub_1000140AC();
      v45 = swift_allocObject();
      v46 = v131;
      v47 = *&v130[16];
      *(v45 + 16) = *v130;
      *(v45 + 32) = v47;
      *(v45 + 48) = v46;
      sub_10015D544(v45, v48, v49, v50, v51, v52, v53, v54, v102, v103);
      sub_1001441C8(__src);
      sub_1001441C8(v139);
      sub_10000DBE4();
      v55 = 28672;
LABEL_66:
      *(v7 + 112) = v55;
      goto LABEL_69;
    case 8:
      v110 = v4;
      v38 = v139[4];
      v120 = LOBYTE(v139[7]);
      v116 = v139[9];
      v118 = v139[8];
      v109 = v139[10];
      v115 = v139[11];
      v39 = 0x6465786966;
      v40 = 0xE500000000000000;
      if (v139[4] == 0x6465786966 && v139[5] == 0xE500000000000000)
      {
        goto LABEL_39;
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9)
      {
        v40 = v13;
        v39 = v38;
LABEL_39:
        v13 = v9;
        v38 = v8;
      }

      else
      {
        v39 = 0x6465786966;
      }

      v113 = v39;
      v70 = v110;
      if (v110)
      {
        v71 = sub_10000A2A8();
        sub_10014416C(v71, v72);
        v73 = sub_10000A2A8();
        sub_10014416C(v73, v74);

        v11 = v140;
      }

      else
      {
        memcpy(__src, v139, 0x62uLL);
        LOWORD(__src[12]) &= 0xFFFu;
        sub_10014416C(v139, v130);
        sub_10014EA0C(__src, v130);
        v70 = v10;
      }

      memcpy(__src, (v103 + 16), 0x62uLL);
      sub_1001441C8(__src);
      sub_1001441C8(v139);
      *(v103 + 16) = v38;
      *(v103 + 24) = v13;
      *(v103 + 32) = v11;
      *(v103 + 40) = v70;
      *(v103 + 48) = v113;
      *(v103 + 56) = v40;
      *(v103 + 64) = v12;
      *(v103 + 72) = v120;
      *(v103 + 80) = v118;
      *(v103 + 88) = v116;
      *(v103 + 96) = v109 & 1;
      *(v103 + 104) = v115;
      *(v103 + 112) = v7 & 0x301 | 0x8000;
      goto LABEL_69;
    case 0xC:
      if (!v139[3])
      {
        goto LABEL_73;
      }

      if (!*(v114 + 16))
      {
        goto LABEL_69;
      }

      v42 = sub_10014EB30(v11, v10);
      if ((v43 & 1) == 0)
      {
        goto LABEL_68;
      }

      v44 = *(v114 + 56) + 104 * v42;
      sub_10015D5E8(v130);
      sub_10015D5E8(__src);
      sub_10015D5E8(v138);
      AvroSchema.getTypeName()();
      sub_10014416C(v130, __dst);
      sub_1000109B8();
      sub_1001583E4();
      if (!v1)
      {

        memcpy(v127, __src, 0x62uLL);
        memcpy(v128, __src, 0x62uLL);
        sub_10014416C(v127, __dst);
        sub_1001441C8(v128);
        memcpy(__dst, (v103 + 16), 0x62uLL);
        sub_1001441C8(__dst);
        sub_1001441C8(v139);
        memcpy((v103 + 16), v127, 0x62uLL);
        goto LABEL_69;
      }

      memcpy(__dst, __src, 0x62uLL);
      sub_1001441C8(__dst);
LABEL_30:

      goto LABEL_68;
    default:
      goto LABEL_69;
  }
}

unint64_t sub_10015A968(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3E80, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10015A9B8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = sub_10015D618();
      break;
    case 2:
      result = 0x726564726FLL;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = sub_10015D520();
      break;
    case 5:
      result = sub_10000B068();
      break;
    case 6:
      result = 6516580;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10015AA58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015A968(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10015AA88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015A9B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10015AABC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10015A9B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10015AAF0(uint64_t a1)
{
  v2 = sub_10015C328();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015AB2C(uint64_t a1)
{
  v2 = sub_10015C328();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroSchema.FieldSchema.encode(to:)()
{
  sub_100004868();
  v64 = v0;
  v65 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DEDB8, &qword_10023CCE8);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v63 = &v59 - v9;
  v62 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  v10 = sub_10000307C(v62);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000308C();
  v61 = v13 - v14;
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  v18 = sub_100099DF4(&qword_1002DEDF0, &qword_10023CD10);
  sub_100003724(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_100003774();
  __chkstk_darwin(v23);
  sub_100004880();
  v24 = v4[4];
  sub_100008B3C(v4, v4[3]);
  sub_10015C328();
  v25 = v18;
  v26 = v64;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = *v26;
  v28 = v26[1];
  v68[0] = 0;
  v29 = v65;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v29)
  {
    (*(v20 + 8))(v2, v25);
  }

  else
  {
    memcpy(v69, v26 + 2, 0x62uLL);
    memcpy(v68, v26 + 2, sizeof(v68));
    sub_10014416C(v69, v67);
    sub_100157620();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v67, v68, 0x62uLL);
    sub_1001441C8(v67);
    v30 = v26[17];
    v31 = v26[18];
    sub_1000028BC(2);
    v32 = v26[20];
    v33 = v26[21];
    sub_1000028BC(4);
    v65 = v25;
    v35 = v4[3];
    v60 = v4[4];
    sub_100008B3C(v4, v35);
    v36 = *(dispatch thunk of Encoder.userInfo.getter() + 16);

    if (v36)
    {
      v66 = v26[19];
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      sub_10000ABC8(&qword_1002DEDE8);
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v60 = 0;
      v37 = v4[4];
      sub_100008B3C(v4, v4[3]);
      v38 = dispatch thunk of Encoder.userInfo.getter();
      v39 = v63;
      sub_100153CA8(v38, v63);

      v40 = v62;
      if (sub_100004DFC(v39, 1, v62) == 1)
      {
        v41 = sub_10015D58C();
        v42(v41, v65);
        sub_10015D090(v39, &qword_1002DEDB8, &qword_10023CCE8);
      }

      else
      {
        sub_10015C1F4(v39, v17);
        v45 = v61;
        sub_10015C264(v17, v61);
        v46 = *(v40 + 48);
        v47 = sub_10000AE5C();
        v48 = v65;
        if (v47)
        {
          v49 = v66;
          v50 = type metadata accessor for CodingUserInfoKey();
          sub_100006EF0(v50);
          (*(v51 + 8))(v45);
          if (v49 == 2)
          {
            v52 = v26[15];
            v53 = v26[16];
            LOBYTE(v66) = 6;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          }

          sub_10015D090(v17, &qword_1002DEDC0, &qword_10023CCF0);
          v54 = sub_10015D58C();
          v34(v54, v48);
        }

        else
        {
          sub_10015D090(v17, &qword_1002DEDC0, &qword_10023CCF0);
          v55 = sub_10015D58C();
          v56(v55, v48);
          v57 = type metadata accessor for CodingUserInfoKey();
          sub_100006EF0(v57);
          (*(v58 + 8))(v45);
        }
      }
    }

    else
    {
      v43 = sub_10015D58C();
      v44(v43, v65);
    }
  }

  sub_100005074();
}

void AvroSchema.FieldSchema.init(from:)()
{
  sub_100004868();
  v3 = v2;
  v80 = v4;
  v5 = sub_100099DF4(&qword_1002DEE00, &qword_10023CD18);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003B38();
  v9 = sub_100099DF4(&qword_1002DEE08, &unk_10023CD20);
  sub_100003724(v9);
  v109 = v10;
  v12 = *(v11 + 64);
  sub_100003774();
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v17 = v3[3];
  v16 = v3[4];
  v18 = sub_10015D60C();
  sub_100008B3C(v18, v19);
  sub_10015C328();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {

    sub_100002728(v1, 1, 1, v9);
    sub_10015D090(v1, &qword_1002DEE00, &qword_10023CD18);
    sub_100157348();
    v20 = sub_100007F60();
    sub_10015D570(v20, v21);
    sub_100004118(v3);
    goto LABEL_4;
  }

  v22 = v3;
  sub_100002728(v1, 0, 1, v9);
  (*(v109 + 32))(v15, v1, v9);
  LOBYTE(v82) = 0;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v24;
  v79 = v23;
  LOBYTE(v81[0]) = 1;
  sub_100157420();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v89 >> 8 != 0xFFFFFFFF || v92 > 1;
  if (v26 || (v94 & 0xFCFE) != 0)
  {
    v76 = v94;
    v66 = v91;
    v67 = v93;
    v74 = v88;
    v75 = v89;
    v72 = v87;
    v73 = v90;
    v71 = v86;
    v69 = v84;
    v70 = v85;
    v68 = v83;
    v77 = v92;
    v78 = v82;
  }

  else
  {
    sub_100099DF4(&qword_1002DED58, &unk_10023CCC8);
    LOBYTE(v81[0]) = 1;
    sub_10015739C();
    sub_100010E74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v82;
    if (!v82)
    {
      sub_100157348();
      v44 = sub_100007F60();
      sub_10015D570(v44, v45);
      v27 = *(v109 + 8);
      v28 = sub_100002A98();
      v29(v28);
      sub_100004118(v3);
LABEL_44:

      goto LABEL_4;
    }

    sub_1000140AC();
    v31 = swift_allocObject();
    v75 = 0;
    v77 = 0;
    v78 = v31;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = v30;
    v76 = 28672;
  }

  v32 = 2;
  sub_10000677C();
  v33 = v15;
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_10000677C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FEC();
    if (!v35)
    {
      v43 = v9;
      LODWORD(v80) = 0;
      LODWORD(v9) = 0;
      goto LABEL_39;
    }

    v62 = v34;
    v65 = v35;
    v33 = 2;
  }

  else
  {
    v62 = 0;
    v65 = 0xE000000000000000;
  }

  sub_10000677C();
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_10000677C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FEC();
    v54 = v37;
    if (v37)
    {
      v33 = 3;
      v55 = v36;
      sub_100099DF4(&qword_1002DD538, &unk_100238260);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10022E400;
      *(v38 + 32) = v55;
      *(v38 + 40) = v54;
    }

    else
    {
      sub_100099DF4(&qword_1002DA600, &qword_10022E490);
      LOBYTE(v81[0]) = 3;
      sub_10015C37C(&qword_1002DEE10);
      sub_100010E74();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v33 = 3;
      v38 = v82;
      if (!v82)
      {
        v43 = v9;
        LODWORD(v9) = 0;
        LODWORD(v80) = 1;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  v64 = v38;
  sub_10000677C();
  if ((KeyedDecodingContainer.contains(_:)() & 1) != 0 && (sub_10000677C(), v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v40))
  {
    v41 = v39;
    v63 = v40;
  }

  else
  {
    v41 = 0;
    v63 = 0xE000000000000000;
  }

  sub_10000677C();
  if (KeyedDecodingContainer.contains(_:)())
  {
    sub_10000677C();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_100004FEC();
    v33 = 5;
    if (v42 == 2)
    {
      v43 = v9;
      sub_100013E20();
LABEL_38:
      v32 = v33;
LABEL_39:
      v49 = v77;
      goto LABEL_40;
    }
  }

  else
  {
    v42 = 0;
  }

  v61 = v42;
  v32 = 6;
  sub_10000677C();
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    v59 = 0;
    v60 = v41;
    v58 = 0xE000000000000000;
    v48 = v109;
    v32 = v33;
    v49 = v77;
LABEL_33:
    (*(v48 + 8))(v32, v9);
    v81[0] = v79;
    v81[1] = v25;
    v81[2] = v78;
    v81[3] = v68;
    v81[4] = v69;
    v81[5] = v70;
    v81[6] = v71;
    v81[7] = v72;
    v50 = v75;
    v81[8] = v74;
    v81[9] = v75;
    v51 = v66;
    v52 = v67;
    v81[10] = v73;
    v81[11] = v66;
    v81[12] = v49;
    v81[13] = v67;
    v53 = v76;
    LOWORD(v81[14]) = v76;
    *(&v81[14] + 2) = v107;
    HIWORD(v81[14]) = v108;
    v81[15] = v59;
    v81[16] = v58;
    v81[17] = v62;
    v81[18] = v65;
    v81[19] = v64;
    v81[20] = v60;
    v81[21] = v63;
    LOWORD(v81[22]) = v61;
    sub_10014421C(v81, &v82);
    sub_100004118(v22);
    v82 = v79;
    v83 = v25;
    v84 = v78;
    v85 = v68;
    v86 = v69;
    v87 = v70;
    v88 = v71;
    v89 = v72;
    v90 = v74;
    v91 = v50;
    v92 = v73;
    v93 = v51;
    v94 = v49;
    v95 = v52;
    v96 = v53;
    v97 = v107;
    v98 = v108;
    v99 = v59;
    v100 = v58;
    v101 = v62;
    v102 = v65;
    v103 = v64;
    v104 = v60;
    v105 = v63;
    v106 = v61;
    sub_100144278(&v82);
    memcpy(v80, v81, 0xB2uLL);
    goto LABEL_4;
  }

  sub_10000677C();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100004FEC();
  v49 = v77;
  if (v47)
  {
    v48 = v109;
    v59 = v46;
    v60 = v41;
    v58 = v47;
    goto LABEL_33;
  }

  v43 = v9;
  sub_100013E20();
LABEL_40:
  sub_100157348();
  v56 = sub_100007F60();
  sub_10015D570(v56, v57);
  (*(v109 + 8))(v32, v43);
  sub_100004118(v3);

  v82 = v78;
  v83 = v68;
  v84 = v69;
  v85 = v70;
  v86 = v71;
  v87 = v72;
  v88 = v74;
  v89 = v75;
  v90 = v73;
  v91 = v66;
  v92 = v49;
  v93 = v67;
  LOWORD(v94) = v76;
  sub_1001441C8(&v82);
  if (v80)
  {
  }

  if (v9)
  {

    goto LABEL_44;
  }

LABEL_4:
  sub_100005074();
}

uint64_t sub_10015B8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
  if (v4 || (sub_100004EE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6516580 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    sub_100004EE8();
    sub_10015D600();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10015B954(char a1)
{
  if (a1)
  {
    return 6516580;
  }

  else
  {
    return 0x736C6F626D7973;
  }
}

uint64_t sub_10015B984(uint64_t a1, uint64_t a2)
{
  v5 = a1 == sub_10015D624() && a2 == v4;
  if (v5 || (sub_100004EE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    sub_100004EE8();
    sub_10015D600();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10015BA1C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x546C616369676F6CLL;
  }
}

uint64_t sub_10015BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015B8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015BA9C(uint64_t a1)
{
  v2 = sub_10015C2D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015BAD8(uint64_t a1)
{
  v2 = sub_10015C2D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10015BB14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_10015BB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015B984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015BB90(uint64_t a1)
{
  v2 = sub_10015CA5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015BBCC(uint64_t a1)
{
  v2 = sub_10015CA5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015BC08(void *a1, unsigned __int8 a2)
{
  v5 = a2;
  v6 = sub_100099DF4(&qword_1002DEE78, &qword_10023D228);
  sub_100003724(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  v13 = &v18[-1] - v12;
  if (v5 == 1)
  {
    v14 = a1[4];
    sub_100008B3C(a1, a1[3]);
    sub_10015CA5C();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    sub_100161910(1);
    LOBYTE(v18[0]) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      (*(v8 + 8))(v13, v6);
    }

    else
    {

      LOBYTE(v18[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v8 + 8))(v13, v6);
    }
  }

  else
  {
    v16 = a1[4];
    sub_10000C4FC(a1, a1[3]);
    sub_100002A98();
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100161910(a2);
    sub_100008494(v18, v18[3]);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    return sub_100004118(v18);
  }
}

unint64_t sub_10015BEC8()
{
  result = qword_1002DED80;
  if (!qword_1002DED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED80);
  }

  return result;
}

unint64_t sub_10015BF1C()
{
  result = qword_1002DED90;
  if (!qword_1002DED90)
  {
    sub_10009A468(&qword_1002DED88, &qword_10023CCE0);
    sub_10015BFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED90);
  }

  return result;
}

unint64_t sub_10015BFA0()
{
  result = qword_1002DED98;
  if (!qword_1002DED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DED98);
  }

  return result;
}

unint64_t sub_10015BFF4()
{
  result = qword_1002DEDA0;
  if (!qword_1002DEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEDA0);
  }

  return result;
}

unint64_t sub_10015C0F8()
{
  result = qword_1002DEDA8;
  if (!qword_1002DEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEDA8);
  }

  return result;
}

unint64_t sub_10015C14C()
{
  result = qword_1002DEDB0;
  if (!qword_1002DEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEDB0);
  }

  return result;
}

unint64_t sub_10015C1A0()
{
  result = qword_1002DEDD0;
  if (!qword_1002DEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEDD0);
  }

  return result;
}

uint64_t sub_10015C1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015C264(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DEDC0, &qword_10023CCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10015C2D4()
{
  result = qword_1002DEDE0;
  if (!qword_1002DEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEDE0);
  }

  return result;
}

unint64_t sub_10015C328()
{
  result = qword_1002DEDF8;
  if (!qword_1002DEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEDF8);
  }

  return result;
}

uint64_t sub_10015C37C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DA600, &qword_10022E490);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_10015C3E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10015C640()
{
  result = qword_1002DEE18;
  if (!qword_1002DEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE18);
  }

  return result;
}

unint64_t sub_10015C698()
{
  result = qword_1002DEE20;
  if (!qword_1002DEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE20);
  }

  return result;
}

unint64_t sub_10015C6F0()
{
  result = qword_1002DEE28;
  if (!qword_1002DEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE28);
  }

  return result;
}

unint64_t sub_10015C748()
{
  result = qword_1002DEE30;
  if (!qword_1002DEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE30);
  }

  return result;
}

unint64_t sub_10015C7A0()
{
  result = qword_1002DEE38;
  if (!qword_1002DEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE38);
  }

  return result;
}

unint64_t sub_10015C7F8()
{
  result = qword_1002DEE40;
  if (!qword_1002DEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE40);
  }

  return result;
}

unint64_t sub_10015C850()
{
  result = qword_1002DEE48;
  if (!qword_1002DEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE48);
  }

  return result;
}

unint64_t sub_10015C8A8()
{
  result = qword_1002DEE50;
  if (!qword_1002DEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE50);
  }

  return result;
}

unint64_t sub_10015C900()
{
  result = qword_1002DEE58;
  if (!qword_1002DEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE58);
  }

  return result;
}

unint64_t sub_10015C958()
{
  result = qword_1002DEE60;
  if (!qword_1002DEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE60);
  }

  return result;
}

unint64_t sub_10015C9B0()
{
  result = qword_1002DEE68;
  if (!qword_1002DEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE68);
  }

  return result;
}

unint64_t sub_10015CA08()
{
  result = qword_1002DEE70;
  if (!qword_1002DEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE70);
  }

  return result;
}

unint64_t sub_10015CA5C()
{
  result = qword_1002DEE80;
  if (!qword_1002DEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE80);
  }

  return result;
}

unint64_t sub_10015CAB0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v6 = v2;
    v7 = v1;
    v5[6] = 46;
    v5[7] = 0xE100000000000000;
    sub_1000BBBB0();
    v3 = StringProtocol.contains<A>(_:)();
    if (v3)
    {
      v6 = 46;
      v7 = 0xE100000000000000;
      __chkstk_darwin(v3);
      v5[2] = &v6;
      sub_10015CE04(sub_10011D0A8, v5, v2, v1);
      String.subscript.getter();
      v1 = static String._fromSubstring(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

unint64_t sub_10015CBF8(uint64_t (*a1)(void *))
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = *(v1 + 16);
    v8 = v4;
    v9 = v2;
    v7[6] = 46;
    v7[7] = 0xE100000000000000;
    sub_1000BBBB0();
    v5 = StringProtocol.contains<A>(_:)();
    if (v5)
    {
      v8 = 46;
      v9 = 0xE100000000000000;
      __chkstk_darwin(v5);
      v7[2] = &v8;
      sub_10015CE04(a1, v7, v4, v2);
      String.subscript.getter();
      v2 = static String._fromSubstring(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

unint64_t sub_10015CD34()
{
  result = qword_1002DEE90;
  if (!qword_1002DEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEE90);
  }

  return result;
}

unint64_t sub_10015CD88()
{
  result = qword_1002DEEA0;
  if (!qword_1002DEEA0)
  {
    sub_10009A468(&qword_1002DEE98, &qword_10023D238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEA0);
  }

  return result;
}

unint64_t sub_10015CE04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_10015CF08(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = type metadata accessor for CodingUserInfoKey();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56) + 32 * a3;

  return sub_100009F20(v12, a2);
}

unint64_t sub_10015CFE8()
{
  result = qword_1002DEEA8;
  if (!qword_1002DEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEA8);
  }

  return result;
}

unint64_t sub_10015D03C()
{
  result = qword_1002DEEB0;
  if (!qword_1002DEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEB0);
  }

  return result;
}

uint64_t sub_10015D090(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100099DF4(a2, a3);
  sub_100006EF0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10015D0E4()
{
  v1 = *(v0 + 24);

  sub_10014E7B4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return _swift_deallocObject(v0, 131, 7);
}

_BYTE *sub_10015D150(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10015D228(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10015D304()
{
  result = qword_1002DEEB8;
  if (!qword_1002DEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEB8);
  }

  return result;
}

unint64_t sub_10015D35C()
{
  result = qword_1002DEEC0;
  if (!qword_1002DEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEC0);
  }

  return result;
}

unint64_t sub_10015D3B4()
{
  result = qword_1002DEEC8;
  if (!qword_1002DEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEC8);
  }

  return result;
}

unint64_t sub_10015D40C()
{
  result = qword_1002DEED0;
  if (!qword_1002DEED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEED0);
  }

  return result;
}

unint64_t sub_10015D464()
{
  result = qword_1002DEED8;
  if (!qword_1002DEED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEED8);
  }

  return result;
}

unint64_t sub_10015D4BC()
{
  result = qword_1002DEEE0;
  if (!qword_1002DEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEE0);
  }

  return result;
}

void *sub_10015D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return memcpy(&STACK[0x288], (a10 + 16), 0x62uLL);
}

uint64_t sub_10015D570(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_10015D598()
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t sub_10015D5B4()
{

  return swift_allocObject();
}

void *sub_10015D5E8(void *a1)
{

  return memcpy(a1, v1, 0x62uLL);
}

void *sub_10015D644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (a2 + 16), 0x51uLL);
}

uint64_t sub_10015D684()
{
}

uint64_t sub_10015D6A4()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10015D6C4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_10015D6E4(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x62uLL);
}

BOOL sub_10015D6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C0A4(a1, a2, a3);
  do
  {
    if (!--v5)
    {
      break;
    }

    v7 = *v6;
    v11[0] = *(v6 - 1);
    v11[1] = v7;

    v8 = v4(v11);
    if (v3)
    {

      return v5 != 0;
    }

    v9 = v8;
    v6 += 2;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

BOOL sub_10015D798(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 32);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    memcpy(__dst, v5, 0xB2uLL);
    memcpy(__src, v5, 0xB2uLL);
    sub_10014421C(__dst, v10);
    v7 = a1(__src);
    if (v3)
    {
      memcpy(v10, __src, 0xB2uLL);
      sub_100144278(v10);
      return v6 != 0;
    }

    v8 = v7;
    v5 += 184;
    memcpy(v10, __src, 0xB2uLL);
    sub_100144278(v10);
  }

  while ((v8 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_10015D89C()
{
  String.hash(into:)();
}

uint64_t sub_10015D93C()
{
  String.hash(into:)();
}

uint64_t sub_10015D9E8()
{
  sub_10000A634();
  String.hash(into:)();
}

uint64_t sub_10015DA48()
{
  String.hash(into:)();
}

uint64_t sub_10015DAD0()
{
  String.hash(into:)();
}

uint64_t sub_10015DB30()
{
  String.hash(into:)();
}

uint64_t sub_10015DB9C()
{
  String.hash(into:)();
}

uint64_t sub_10015DCA8()
{
  sub_10000A634();
  String.hash(into:)();
}

uint64_t sub_10015DD08()
{
  String.hash(into:)();
}

uint64_t sub_10015DD70()
{
  String.hash(into:)();
}

uint64_t sub_10015DDE4()
{
  String.hash(into:)();
}

uint64_t sub_10015DEA4()
{
  String.hash(into:)();
}

uint64_t sub_10015DF40()
{
  String.hash(into:)();
}

uint64_t sub_10015DFB4()
{
  String.hash(into:)();
}

uint64_t sub_10015E040()
{
  sub_10000A634();
  String.hash(into:)();
}

uint64_t sub_10015E170()
{
  String.hash(into:)();
}

uint64_t sub_10015E258()
{
  String.hash(into:)();
}

uint64_t sub_10015E2E8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_10016140C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_10015E400(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

uint64_t sub_10015E458()
{
  String.hash(into:)();
}

uint64_t sub_10015E538()
{
  String.hash(into:)();
}

Swift::Bool __swiftcall AvroSchema.isNull()()
{
  v1 = v0[6].i16[0];
  if (sub_10000B458(v0[2], v0[3], *v0, v0[1], v0[5], v0[4]))
  {
    return 0;
  }

  else
  {
    return v2 == -12288;
  }
}

Swift::Bool __swiftcall AvroSchema.isBoolean()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 1;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

Swift::Bool __swiftcall AvroSchema.isFloat()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 2;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

Swift::Bool __swiftcall AvroSchema.isDouble()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 3;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

Swift::Bool __swiftcall AvroSchema.isString()()
{
  v1 = sub_1000039C4();
  v11 = v2 == 4;
  v6 = vorrq_s8(vorrq_s8(v5, v1), vorrq_s8(v4, v3));
  v10 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v7 | v8 | v9;
  v11 = v11 && v10 == 0;
  return v11 && v0 == -12288;
}

void *sub_10015E780()
{
  switch(v1[48] >> 12)
  {
    case 3:
      v2 = *(*v1 + 64);
      v3 = *(v2 + 16);
      if (!v3)
      {
        return _swiftEmptyArrayStorage;
      }

      v0 = _swiftEmptyArrayStorage;
      v4 = v3 - 1;
      for (i = 32; ; i += 184)
      {
        memcpy(__dst, (v2 + i), 0xB2uLL);
        v6 = swift_allocObject();
        v7 = memmove((v6 + 16), (v2 + i), 0xB2uLL);
        v15 = sub_10000465C(v7, v8, v9, v10, v11, v12, v13, v14, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, __dst[0]);
        v17 = sub_10014421C(v15, v16);
        v25 = sub_10000465C(v17, v18, v19, v20, v21, v22, v23, v24, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, __dst[0]);
        sub_10014421C(v25, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = v0[2];
          sub_100013CD0();
          v0 = v30;
        }

        v27 = v0[2];
        if (v27 >= v0[3] >> 1)
        {
          sub_100013CD0();
          v0 = v31;
        }

        sub_100144278(__dst);
        v0[2] = v27 + 1;
        v28 = &v0[13 * v27];
        v28[4] = v6;
        v28[11] = 0;
        v28[14] = 0;
        *(v28 + 64) = -20480;
        if (!v4)
        {
          break;
        }

        --v4;
      }

      return v0;
    case 5:
      sub_10000ABEC();
      v52 = memcpy(v50, v51, 0x73uLL);
      v60 = sub_10000465C(v52, v53, v54, v55, v56, v57, v58, v59, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, __dst[0]);
      v62 = sub_100150F70(v60, v61);
      sub_1001613F4(v62);
      sub_1000073C0();
      sub_100006B00(v63);
      if (v49)
      {
        sub_100008108(v64);
        sub_10013C2FC();
        v0 = v88;
      }

      sub_100150FCC(__dst);
      goto LABEL_25;
    case 6:
      sub_10000ABEC();
      v36 = memcpy(v34, v35, 0x73uLL);
      v44 = sub_10000465C(v36, v37, v38, v39, v40, v41, v42, v43, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, __dst[0]);
      v46 = sub_10014EA68(v44, v45);
      sub_1001613F4(v46);
      sub_1000073C0();
      sub_100006B00(v47);
      if (v49)
      {
        sub_100008108(v48);
        sub_10013C2FC();
        v0 = v87;
      }

      sub_10014EAC4(__dst);
      goto LABEL_25;
    case 7:
      sub_1000073C0();
      v0 = v65;
      v66 = v65[2];
      if (v66 >= v65[3] >> 1)
      {
        sub_100013CD0();
        v0 = v89;
      }

      v0[2] = v66 + 1;
      memcpy(&v0[13 * v66 + 4], v1, 0x62uLL);

      return v0;
    case 0xB:
      sub_10000ABEC();
      v69 = memcpy(v67, v68, 0xB2uLL);
      v77 = sub_10000465C(v69, v70, v71, v72, v73, v74, v75, v76, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, __dst[0]);
      v79 = sub_10014421C(v77, v78);
      sub_1001613F4(v79);
      sub_1000073C0();
      sub_100006B00(v80);
      if (v49)
      {
        sub_100008108(v81);
        sub_10013C2FC();
        v0 = v90;
      }

      sub_100144278(__dst);
LABEL_25:
      v0[2] = v1;
      sub_10000C6AC();
      memcpy(v82, v83, v84);
      break;
    default:
      sub_1000073C0();
      v0 = v32;
      v33 = v32[2];
      if (v33 >= v32[3] >> 1)
      {
        sub_100013CD0();
        v0 = v86;
      }

      v0[2] = v33 + 1;
      memcpy(&v0[13 * v33 + 4], v1, 0x62uLL);
      sub_10014416C(v1, __dst);
      break;
  }

  return v0;
}

uint64_t sub_10015EAF8()
{
  v1 = v0;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    v9 = *v0;
    v10 = v0[1];
    sub_1000BBBB0();

    if ((StringProtocol.contains<A>(_:)() & 1) == 0)
    {
      v4 = v0[3];
      if (v4)
      {
        v5 = v1[2];
        sub_100099DF4(&qword_1002DD538, &unk_100238260);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1002329F0;
        *(v6 + 32) = v5;
        *(v6 + 40) = v4;
        *(v6 + 48) = v3;
        *(v6 + 56) = v2;

        sub_100099DF4(&qword_1002DA600, &qword_10022E490);
        sub_100010288();
        v3 = BidirectionalCollection<>.joined(separator:)();
      }
    }
  }

  else
  {
    v3 = v0[4];
    v7 = v0[5];
  }

  return v3;
}

void AvroSchema.resolving(from:)(int8x16_t *a1)
{
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x62uLL);
  if ((static AvroSchema.== infix(_:_:)(__dst, a1) & 1) == 0)
  {
    sub_10015F370(a1);
    return;
  }

  sub_10000776C(&v63);
  v6 = v73;
  v7 = v63;
  switch(v73 >> 12)
  {
    case 3:
      memcpy(v59, v63 + 2, 0x51uLL);
      memcpy(__src, v63 + 2, 0x51uLL);
      sub_10000A2B4();
      if (v8 != 12288)
      {
        goto LABEL_46;
      }

      v9 = a1->i64[0];
      sub_1000053BC();
      memcpy(v10, v11, v12);
      sub_10014416C(&v63, v61);
      sub_10015BE18(v59, v61);
      sub_10015BE18(v74, v61);
      sub_100160230(v74);
      if (v2)
      {
        memcpy(v61, __src, 0x51uLL);
        sub_10015BE74(v61);
        sub_10015BE74(v74);
        goto LABEL_33;
      }

      memcpy(v56, __src, 0x51uLL);
      sub_10015BE74(v56);
      sub_10000776C(v61);
      sub_1001441C8(v61);
      sub_100004650();
      v43 = swift_allocObject();
      memcpy((v43 + 16), v74, 0x51uLL);
      sub_1001441C8(&v63);
      sub_10000678C();
      v30 = 12288;
      goto LABEL_38;
    case 4:
      sub_10000776C(v61);

      sub_1001441C8(v61);
      memcpy(v59, v7 + 2, 0x51uLL);
      sub_100004650();
      v29 = swift_allocObject();
      memmove((v29 + 16), v7 + 2, 0x50uLL);
      *(v29 + 96) = 1;
      sub_10015C048(v59, __src);
      sub_1001441C8(&v63);
      *v4 = v29;
      *(v4 + 7) = 0;
      *(v4 + 10) = 0;
      v30 = 0x4000;
      goto LABEL_38;
    case 5:
      sub_100008CAC(v61);
      sub_100008CAC(v58);
      sub_10000A2B4();
      if (v18 != 20480)
      {
        goto LABEL_45;
      }

      v19 = a1->i64[0];
      sub_1000083CC();
      memcpy(v20, v21, v22);
      sub_10014416C(&v63, v59);
      sub_100150F70(v61, v59);
      sub_10014416C(v75, v59);
      AvroSchema.resolving(from:)(v75);
      if (v2)
      {
        memcpy(v59, v58, 0x73uLL);
        sub_100150FCC(v59);
        v23 = v75;
        goto LABEL_15;
      }

      sub_1001441C8(v75);
      sub_10000776C(v59);
      sub_1001441C8(v59);
      v41 = swift_allocObject();
      memcpy((v41 + 16), v58, 0x73uLL);
      sub_1001441C8(&v63);
      sub_10000678C();
      v30 = 20480;
      goto LABEL_38;
    case 6:
      sub_100008CAC(v61);
      sub_100008CAC(v60);
      sub_10000A2B4();
      if (v24 != 24576)
      {
        goto LABEL_47;
      }

      v25 = a1->i64[0];
      sub_1000083CC();
      memcpy(v26, v27, v28);
      sub_10014416C(&v63, v59);
      sub_10014EA68(v61, v59);
      sub_10014416C(v76, v59);
      AvroSchema.resolving(from:)(v76);
      if (!v2)
      {
        sub_1001441C8(v76);
        sub_10000776C(v59);
        sub_1001441C8(v59);
        v42 = swift_allocObject();
        memcpy((v42 + 16), v60, 0x73uLL);
        sub_1001441C8(&v63);
        sub_10000678C();
        v30 = 24576;
        goto LABEL_38;
      }

      memcpy(v59, v60, 0x73uLL);
      sub_10014EAC4(v59);
      v23 = v76;
LABEL_15:
      sub_1001441C8(v23);
      goto LABEL_33;
    case 7:
      v13 = v63[3];
      v14 = v63[5];
      v47 = v63[4];
      v48 = v63[2];
      v15 = v63[6];
      sub_10000A2B4();
      if (v16 == 28672)
      {
        v17 = *(a1->i64[0] + 48);
      }

      else
      {
        v17 = _swiftEmptyArrayStorage;
      }

      v35 = *(v15 + 16);
      sub_10014416C(&v63, v61);
      v36 = v15 + 32;
      v51 = v13;

      v53 = v14;

      v37 = 0;
      v81 = v15;
      v49 = v15 + 32;
      break;
    case 8:
      v81 = v72;
      v31 = v71;
      v54 = v69;
      v55 = v70;
      v32 = v68;
      v33 = v67;
      v34 = v66;
      sub_10000776C(v59);
      sub_10000776C(v61);
      v62 &= 0xFFFu;
      v50 = v65;
      v52 = v64;
      sub_10014EA0C(v61, __src);
      sub_1001441C8(v59);
      *v4 = v7;
      *(v4 + 24) = v50;
      *(v4 + 8) = v52;
      *(v4 + 5) = v34;
      *(v4 + 6) = v33;
      *(v4 + 7) = v32;
      *(v4 + 8) = v54;
      *(v4 + 9) = v55;
      *(v4 + 10) = v31 & 1;
      *(v4 + 11) = v81;
      *(v4 + 48) = v6 & 1 | 0x8100;
      return;
    default:
      return;
  }

LABEL_20:
  if (v37 == v35)
  {

    sub_10016057C();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();
    goto LABEL_32;
  }

  if (v37 >= *(v15 + 16))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  memcpy(v79, (v36 + 104 * v37), 0x62uLL);
  v15 = v17[2];
  sub_10014416C(v79, v61);
  v38 = 0;
  for (i = 4; ; i += 13)
  {
    if (v15 == v38)
    {
      sub_1001441C8(v79);
      ++v37;
      v15 = v81;
      v36 = v49;
      goto LABEL_20;
    }

    memcpy(v78, &v17[i], 0x62uLL);
    sub_10014416C(v78, v61);
    v40 = static AvroSchema.== infix(_:_:)(v78, v79);
    sub_1001441C8(v78);
    if (v40)
    {
      break;
    }

    ++v38;
  }

  sub_1001441C8(v79);
  if (v38 >= v17[2])
  {
    goto LABEL_42;
  }

  memcpy(v77, &v17[i], 0x62uLL);
  sub_10014416C(v77, v61);

  v15 = v81;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_43:
    sub_1001612CC(v15);
    v15 = v46;
  }

  if (v37 >= *(v15 + 16))
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  AvroSchema.resolving(from:)(v77);
  if (!v3)
  {
    sub_1001441C8(v77);
    sub_10000776C(v61);
    sub_1001441C8(v61);
    v44 = swift_allocObject();
    v44[2] = v48;
    v44[3] = v51;
    v44[4] = v47;
    v44[5] = v53;
    v44[6] = v15;
    sub_1001441C8(&v63);
    sub_10000678C();
    v30 = 28672;
LABEL_38:
    *(v4 + 48) = v30;
    return;
  }

  sub_1001441C8(v77);

LABEL_32:

LABEL_33:
  sub_1001441C8(&v63);
}

void sub_10015F370(int8x16_t *a1)
{
  v2 = v1;
  v4 = a1->i64[0];
  v94 = a1[1].i64[0];
  v92 = a1->i64[1];
  v93 = a1[1].i64[1];
  v5 = a1[2].i64[0];
  v7 = a1[3].i64[0];
  v6 = a1[3].i64[1];
  v8 = a1[4].i64[1];
  v89 = a1[4].i64[0];
  v90 = a1[2].i64[1];
  v9 = a1[5].i64[0];
  v91 = a1[5].i64[1];
  v10 = a1[6].u16[0];
  sub_10000776C(v116);
  if ((v117 & 0xF000) != 0x7000)
  {
    switch(v10 >> 12)
    {
      case 0u:
        v20 = v2[6].u16[0] >> 12;
        if (v20 == 1)
        {
          return;
        }

        v21 = v20 == 13;
LABEL_39:
        if (!v21)
        {
          goto LABEL_4;
        }

        v44 = v2[1].i64[0];
        v43 = v2[1].i64[1];
        v45 = v2->i64[0];
        v46 = v2->i64[1];
        v49 = sub_100007D40(v2[4], v2[5], v2[2], v2[3]);
        v53 = *&v49 | v50 | v51 | v52;
        v54 = v47 == 53248 && *&v48 == 2;
        if (!v54 || v53)
        {
          v55 = v47 == 53248 && *&v48 == 3;
          if (!v55 || v53)
          {
            goto LABEL_4;
          }
        }

        return;
      case 1u:
        v21 = (v2[6].i16[0] & 0xF000) == 53248;
        goto LABEL_39;
      case 2u:
        v113 = v5;
        v112 = v7;
        sub_10000776C(__src);
        v25 = __src[7];
        v26 = __src[9];
        LOBYTE(v96) = __src[10];
        v27 = __src[11];
        v28 = BYTE1(__src[12]) >> 4;
        if (v28 != 8)
        {
          if (v28 == 13 && (LOBYTE(__src[12]) | (BYTE1(__src[12]) << 8)) == 0xD000 && __src[0] == 4)
          {
            v30 = __src[2] | __src[1] | __src[3] | __src[4] | __src[5] | __src[6] | __src[8] | LOBYTE(__src[10]) | ((*(&__src[10] + 1) | ((*(&__src[10] + 5) | (HIBYTE(__src[10]) << 16)) << 32)) << 8);
            v31 = __src[7] | __src[9] | __src[11];
            goto LABEL_36;
          }

          goto LABEL_4;
        }

        LOBYTE(v95) = __src[12];
        if (v94 == 7)
        {
          if (LOBYTE(__src[7]) != 7)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (LOBYTE(__src[7]) == 7)
          {
            goto LABEL_4;
          }

          v70 = sub_100161910(v94);
          v72 = v71;
          if (v70 == sub_100161910(v25) && v72 == v73)
          {
            memcpy(__dst, __src, 0x62uLL);
            sub_10000D098(__dst[12] & 0xFFF, v81, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12]);

            sub_1001441C8(__src);
          }

          else
          {
            v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
            memcpy(__dst, __src, 0x62uLL);
            sub_10000D098(__dst[12] & 0xFFF, v81, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12]);

            sub_1001441C8(__src);
            if ((v75 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        if (v113)
        {
          if ((v96 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v96 & 1) != 0 || v93 != v26)
        {
          goto LABEL_4;
        }

        if (v112)
        {
          if ((v95 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v95 & 1) != 0 || v90 != v27)
        {
          goto LABEL_4;
        }

        v78 = sub_100007B1C();
        sub_10015078C(v78, v79);

        return;
      case 7u:
        v56 = *(v4 + 48);
        sub_10000776C(v115);

        v57 = sub_1001604D8(v115, v56);
        if (v58)
        {

          goto LABEL_4;
        }

        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        if (v57 >= *(v56 + 16))
        {
          goto LABEL_117;
        }

        sub_1000083CC();
        memcpy(v64, v65, v66);
        sub_10014416C(v114, __src);

        AvroSchema.resolving(from:)(v114);
        v23 = v114;
        goto LABEL_13;
      case 8u:
        sub_10000776C(__src);
        if ((__src[12] & 0xF000) != 0x2000)
        {
          goto LABEL_4;
        }

        v59 = __src[3];
        v60 = __src[4];
        v61 = __src[5];
        v62 = __src[6];
        if (v6 == 7)
        {
          if (LOBYTE(__src[2]) != 7)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (LOBYTE(__src[2]) == 7)
          {
            goto LABEL_4;
          }

          HIDWORD(v84) = LOBYTE(__src[4]);
          v85 = __src[3];
          HIDWORD(v86) = LOBYTE(__src[6]);
          v87 = __src[5];
          v83 = __src[2];
          v81 = sub_100161910(v6);
          v88 = v67;
          v69 = v81 == sub_100161910(v83) && v88 == v68;
          v82 = v68;
          if (v69)
          {

            sub_1001441C8(__src);
            sub_1000140B8();
          }

          else
          {
            LODWORD(v81) = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_1001441C8(__src);
            sub_1000140B8();
            if ((v81 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        if (v9)
        {
          if ((v60 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v60 & 1) != 0 || v8 != v59)
        {
          goto LABEL_4;
        }

        if (v10)
        {
          if ((v62 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v62 & 1) != 0 || v91 != v61)
        {
          goto LABEL_4;
        }

        v76 = sub_100007B1C();
        sub_10015078C(v76, v77);
        sub_10000D098(v10 & 0xFFF, v81, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v4, v92, v94, v93, v5, v90, v7, v6, v89, v8, v9, v91, __dst[12]);
        return;
      case 0xDu:
        v32 = v94 | v92 | v93 | v5 | v90 | v7 | v6 | v89 | v8 | v9 | v91;
        v33 = v10 == 53248 && v4 == 2;
        if (!v33 || v32)
        {
          v63 = v10 == 53248 && v4 == 4;
          if (!v63 || v32 || (v2[6].i16[0] & 0xF000) != 0x2000)
          {
            goto LABEL_4;
          }

          return;
        }

        v34 = v2[6].u16[0];
        if ((v34 & 0xF000) == 0xD000 && v34 == 53248 && v2->i64[0] == 3)
        {
          v37 = v2[1].i64[0];
          v36 = v2[1].i64[1];
          v38 = v2->i64[1];
          v39 = sub_100007D40(v2[4], v2[5], v2[2], v2[3]);
          v30 = *&v39 | v40;
          v31 = v41 | v42;
LABEL_36:
          if (!(v30 | v31))
          {
            return;
          }
        }

        goto LABEL_4;
      default:
        goto LABEL_4;
    }
  }

  v11 = *(v116[0] + 16);
  v12 = *(v116[0] + 24);
  v14 = *(v116[0] + 32);
  v13 = *(v116[0] + 40);
  v15 = *(v116[0] + 48);
  swift_bridgeObjectRetain_n();
  sub_10014416C(v116, __src);

  v16 = sub_1001604D8(a1, v15);
  v18 = v17;

  if (v18)
  {

    sub_1001441C8(v116);
LABEL_4:
    sub_10016057C();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    return;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  sub_1001612CC(v15);
  v15 = v80;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_114;
  }

LABEL_10:
  if (v16 >= *(v15 + 16))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return;
  }

  v22 = v118;
  AvroSchema.resolving(from:)(a1);
  if (v22)
  {

    v23 = v116;
LABEL_13:
    sub_1001441C8(v23);
  }

  else
  {
    sub_10000776C(__src);
    sub_1001441C8(__src);
    v24 = swift_allocObject();
    v24[2] = v11;
    v24[3] = v12;
    v24[4] = v14;
    v24[5] = v13;
    v24[6] = v15;
    sub_1001441C8(v116);
    sub_10000678C();
    v2[6].i16[0] = 28672;
  }
}

uint64_t static AvroSchema.== infix(_:_:)(uint64_t *a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v11 = a1[6];
  v10 = a1[7];
  v12 = a1[8];
  switch(v2 >> 12)
  {
    case 0u:
      if (a2[6].u16[0] <= 0xFFFu)
      {
        goto LABEL_30;
      }

      goto LABEL_161;
    case 1u:
      sub_10000F0E8();
      if (v49 != 4096)
      {
        goto LABEL_161;
      }

LABEL_30:
      v50 = a2[1].i8[0];
      v51 = v5 == a2->i64[0] && v4 == a2->i64[1];
      if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_161;
      }

      LOBYTE(a2) = v50 == 7 && v6 == 7;
      if (v6 == 7 || v50 == 7)
      {
        return a2 & 1;
      }

      v53 = sub_100161910(v6);
      v55 = v54;
      if (v53 == sub_100161910(v50) && v55 == v56)
      {
        goto LABEL_107;
      }

      v58 = sub_100008ADC();
      goto LABEL_145;
    case 2u:
      sub_10000F0E8();
      if (v26 != 0x2000)
      {
        goto LABEL_161;
      }

      v27 = a2[1].i64[0];
      v153 = a2[1].i64[1];
      v28 = a2[2].i64[1];
      v29 = a2[3].i32[0];
      v30 = a2[2].i32[0];
      v31 = v25 == a2->i64[0] && v24 == a2->i64[1];
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_161;
      }

      if (v6 == 7)
      {
        if (v27 != 7)
        {
          goto LABEL_161;
        }
      }

      else
      {
        if (v27 == 7)
        {
          goto LABEL_161;
        }

        v151 = v28;
        v121 = sub_100161910(v6);
        v123 = v122;
        if (v121 == sub_100161910(v27) && v123 == v124)
        {

          v28 = v151;
        }

        else
        {
          v126 = sub_100008ADC();

          v28 = v151;
          if ((v126 & 1) == 0)
          {
            goto LABEL_161;
          }
        }
      }

      if (v9)
      {
        if (v11 & 1 | ((v30 & 1) == 0))
        {
          LOBYTE(a2) = v30 & v29;
          return a2 & 1;
        }
      }

      else if (v30 & 1 | (v7 != v153) | v11 & 1)
      {
        LOBYTE(a2) = ((v30 | (v7 != v153)) ^ 1) & v29;
        return a2 & 1;
      }

      LOBYTE(a2) = (v8 == v28) & ~v29;
      return a2 & 1;
    case 3u:
      sub_1000053BC();
      memcpy(v83, v84, v85);
      sub_10000B080();
      if (v86 != 12288)
      {
        goto LABEL_161;
      }

      v87 = a2->i64[0];
      sub_1000053BC();
      memcpy(v88, v89, v90);
      sub_10015BE18(__dst, v179);
      static AvroSchema.RecordSchema.== infix(_:_:)(&v154, __dst);
      sub_1001613E8();
      sub_10015BE74(v91);
      return a2 & 1;
    case 4u:
      sub_1000053BC();
      memcpy(v92, v93, v94);
      sub_10000B080();
      if (v95 != 0x4000)
      {
        goto LABEL_161;
      }

      v96 = a2->i64[0];
      sub_1000053BC();
      memcpy(v97, v98, v99);
      sub_10015C048(__dst, v179);
      static AvroSchema.EnumSchema.== infix(_:_:)(&v154, __dst);
      sub_1001613E8();
      sub_10015C0A4(v100);
      return a2 & 1;
    case 5u:
      sub_1000083CC();
      memcpy(v32, v33, v34);
      sub_10000B080();
      if (v43 != 20480)
      {
        goto LABEL_161;
      }

      sub_10016142C(v35, v36, v37, v38, v39, v40, v41, v42, v149, v150, v152, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, __dst[0]);
      memcpy(v179, &a2[2], 0x62uLL);
      sub_100150F70(__dst, &v154);
      static AvroSchema.== infix(_:_:)(v178, v179);
      sub_1001613E8();
      sub_100150FCC(v44);
      return a2 & 1;
    case 6u:
      sub_1000083CC();
      memcpy(v59, v60, v61);
      sub_10000B080();
      if (v70 != 24576)
      {
        goto LABEL_161;
      }

      sub_10016142C(v62, v63, v64, v65, v66, v67, v68, v69, v149, v150, v152, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, __dst[0]);
      memcpy(v179, &a2[2], 0x62uLL);
      sub_10014EA68(__dst, &v154);
      static AvroSchema.== infix(_:_:)(v178, v179);
      sub_1001613E8();
      sub_10014EAC4(v71);
      return a2 & 1;
    case 7u:
      sub_10000F0E8();
      if (v73 != 28672)
      {
        goto LABEL_161;
      }

      v74 = v72[3];
      v75 = v72[4];
      v77 = v72[5];
      v76 = v72[6];
      v78 = a2->i64[0];
      a2 = *(a2->i64[0] + 24);
      v79 = v78[4];
      v80 = v78[5];
      v81 = v78[6];
      if (v74)
      {
        if (!a2)
        {
          return a2 & 1;
        }

        v82 = v72[2] == v78[2] && v74 == a2;
        if (!v82 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else if (a2)
      {
        goto LABEL_161;
      }

      if (v77)
      {
        if (!v80)
        {
          goto LABEL_161;
        }

        v127 = v75 == v79 && v77 == v80;
        if (!v127 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else if (v80)
      {
        goto LABEL_161;
      }

      v58 = sub_100143B9C(v76, v81);

LABEL_145:

      return v58 & 1;
    case 8u:
      sub_10000F0E8();
      if (v110 != 0x8000 || v109 != a2[4].i64[0])
      {
        goto LABEL_161;
      }

      v111 = a2->i64[1];
      v112 = a2[3].i64[1];
      if (v107)
      {
        if (!v111)
        {
          goto LABEL_161;
        }

        v113 = v108 == a2->i64[0] && v107 == v111;
        if (!v113 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else if (v111)
      {
        goto LABEL_161;
      }

      LOBYTE(a2) = v112 == 7 && v10 == 7;
      if (v10 == 7 || v112 == 7)
      {
        return a2 & 1;
      }

      v132 = sub_100161910(v10);
      v134 = v133;
      if (v132 == sub_100161910(v112) && v134 == v135)
      {
LABEL_107:

        goto LABEL_160;
      }

      v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v137 & 1;
    case 0xAu:
      sub_10000F0E8();
      if (v102 != 40960)
      {
        goto LABEL_161;
      }

      v103 = a2->i64[0];
      a2 = *(v101 + 16);
      v104 = *(v103 + 16);

      v105 = sub_1000050CC();
      LOBYTE(a2) = sub_100143C78(v105, v106);

      return a2 & 1;
    case 0xBu:
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);
      sub_1000083CC();
      memcpy(v15, v16, v17);
      sub_10000B080();
      if (v18 != 45056)
      {
        goto LABEL_161;
      }

      memcpy(__dst, (a2->i64[0] + 16), 0xB2uLL);
      v19 = v13 == __dst[0] && v14 == __dst[1];
      if (v19 || (LOBYTE(a2) = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        sub_10000C6AC();
        memcpy(v20, v21, v22);
        sub_10014421C(__dst, &v154);
        static AvroSchema.== infix(_:_:)(v178, v179);
        sub_1001613E8();
        sub_100144278(v23);
      }

      return a2 & 1;
    case 0xDu:
      v46 = a1[10];
      v45 = a1[11];
      v47 = a1[9];
      if (v2 == 53248 && !(v4 | v5 | v6 | v7 | v9 | v8 | v11 | v10 | v12 | v45 | v46 | v47))
      {
        sub_100006F04();
        if (!v19 || v48 != 53248 || *&sub_10000B458(a2[4], a2[5], a2[2], a2[3], a2[1], *a2))
        {
          goto LABEL_161;
        }

LABEL_160:
        LOBYTE(a2) = 1;
        return a2 & 1;
      }

      v114 = v6 | v4 | v7 | v9 | v8 | v11 | v10 | v12 | v45 | v46 | v47;
      v115 = v2 == 53248 && v5 == 1;
      if (!v115 || v114)
      {
        v118 = v2 == 53248 && v5 == 2;
        if (!v118 || v114)
        {
          v128 = v2 == 53248 && v5 == 3;
          if (!v128 || v114)
          {
            if (v2 != 53248 || v5 != 4)
            {
              goto LABEL_161;
            }

            if (v114)
            {
              goto LABEL_161;
            }

            sub_100006F04();
            if (!v19)
            {
              goto LABEL_161;
            }

            sub_100161420();
            if (!v19 || v140 != 4)
            {
              goto LABEL_161;
            }
          }

          else
          {
            sub_100006F04();
            if (!v19)
            {
              goto LABEL_161;
            }

            sub_100161420();
            if (!v19 || v129 != 3)
            {
              goto LABEL_161;
            }
          }
        }

        else
        {
          sub_100006F04();
          if (!v19)
          {
            goto LABEL_161;
          }

          sub_100161420();
          if (!v19 || v119 != 2)
          {
            goto LABEL_161;
          }
        }
      }

      else
      {
        sub_100006F04();
        if (!v19)
        {
          goto LABEL_161;
        }

        sub_100161420();
        if (!v19 || v116 != 1)
        {
          goto LABEL_161;
        }
      }

      v143 = a2[1].i64[0];
      v142 = a2[1].i64[1];
      v144 = a2->i64[1];
      v145 = sub_100007D40(a2[4], a2[5], a2[2], a2[3]);
      if (!(*&v145 | v146 | v147 | v148))
      {
        goto LABEL_160;
      }

LABEL_161:
      LOBYTE(a2) = 0;
      return a2 & 1;
    default:
      goto LABEL_161;
  }
}

void sub_100160230(uint64_t a1)
{
  v2 = *(a1 + 48);
  v30 = *(v2 + 16);
  if (v30)
  {
    v3 = 0;
    v23 = v2 + 32;
    v4 = *(v1 + 48);
    while (1)
    {
      memcpy(__dst, (v23 + 184 * v3), 0xB2uLL);
      v5 = *(v4 + 16);
      if (!v5)
      {
        sub_10014421C(__dst, v26);
LABEL_15:
        memcpy(__src, __dst, sizeof(__src));
        memcpy(v26, __dst, 0xB1uLL);
        BYTE1(v26[22]) = 2;
        sub_10014421C(__dst, v24);
        sub_10014421C(v26, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v4 + 16);
          sub_10013C3D0();
          v4 = v18;
        }

        v16 = *(v4 + 16);
        v15 = *(v4 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_100008108(v15);
          sub_10013C3D0();
          v4 = v19;
        }

        sub_100144278(__dst);
        memcpy(v24, __src, 0xB1uLL);
        v24[177] = 2;
        sub_100144278(v24);
        *(v4 + 16) = v16 + 1;
        memcpy((v4 + 184 * v16 + 32), v26, 0xB2uLL);
        goto LABEL_24;
      }

      memcpy(v28, (v23 + 184 * v3 + 16), 0x62uLL);
      v6 = __dst[0];
      v7 = __dst[1];
      sub_10014421C(__dst, v26);
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        memcpy(v26, (v4 + v8 + 32), 0xB2uLL);
        v10 = v26[0] == v6 && v26[1] == v7;
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_10000C6AC();
          memcpy(v11, v12, v13);
          sub_10014421C(v26, v24);
          v14 = static AvroSchema.== infix(_:_:)(v29, v28);
          sub_100144278(v26);
          if (v14)
          {
            break;
          }
        }

        ++v9;
        v8 += 184;
        if (v5 == v9)
        {
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001612B8(v4);
        v4 = v20;
      }

      if (v9 >= *(v4 + 16))
      {
        goto LABEL_28;
      }

      *(v4 + v8 + 209) = 1;
      AvroSchema.resolving(from:)(v28);
      sub_100144278(__dst);
      if (v22)
      {
        goto LABEL_25;
      }

LABEL_24:
      if (++v3 == v30)
      {
LABEL_25:
        *(v21 + 48) = v4;
        return;
      }
    }
  }
}

uint64_t sub_1001604D8(int8x16_t *a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  for (i = (a2 + 32); ; i += 104)
  {
    if (v4 == v3)
    {
      return 0;
    }

    memcpy(__dst, i, 0x62uLL);
    sub_10014416C(__dst, &v8);
    v6 = static AvroSchema.== infix(_:_:)(__dst, a1);
    sub_1001441C8(__dst);
    if (v6)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

unint64_t sub_10016057C()
{
  result = qword_1002DEEE8;
  if (!qword_1002DEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DEEE8);
  }

  return result;
}

uint64_t static AvroSchema.RecordSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015EAF8();
  v6 = v5;
  if (v4 == sub_10015EAF8() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 48);
  v11 = *(v10 + 16);
  v12 = *(a2 + 48);
  if (v11 < *(v12 + 16))
  {
    return 0;
  }

  if (v11)
  {
    v14 = (v10 + 32);
    do
    {
      memcpy(v18, v14, 0xB2uLL);
      v15 = memcpy(v17, v18, sizeof(v17));
      __chkstk_darwin(v15);
      sub_10000D56C();
      sub_10014421C(v18, &v16);
      if (sub_10015D798(sub_1001613B8, v6, v12))
      {
        sub_100144278(v18);
      }

      else
      {
        v6 = v18[21];

        sub_100144278(v18);
        if (!v6)
        {
          return 0;
        }
      }

      v14 += 184;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t static AvroSchema.FieldSchema.== infix(_:_:)(void *a1, int8x16_t *a2)
{
  v4 = *a1 == a2->i64[0] && a1[1] == a2->i64[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static AvroSchema.== infix(_:_:)(a1 + 2, a2 + 1);
}

BOOL static AvroSchema.EnumSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015EAF8();
  v6 = v5;
  if (v4 == sub_10015EAF8() && v6 == v7)
  {
  }

  else
  {
    sub_100007B1C();
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  v12 = *(v11 + 16);
  if (*(v10 + 16) < v12)
  {
    return 0;
  }

  v14 = (v11 + 40);
  v15 = v12 + 1;
  do
  {
    v13 = --v15 == 0;
    if (!v15)
    {
      break;
    }

    v16 = v14 + 2;
    v18 = *(v14 - 1);
    v19 = *v14;
    __chkstk_darwin(v9);
    sub_10000D56C();

    LOBYTE(v4) = sub_10015D6FC(sub_10012632C, v4, v10);

    v14 = v16;
  }

  while ((v4 & 1) != 0);
  return v13;
}

uint64_t static AvroSchema.FixedSchema.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if (a1[8] != *(a2 + 64))
  {
    goto LABEL_22;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_22:
    v10 = 0;
    return v10 & 1;
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = *a1;
  v7 = *a1 == *a2 && v4 == v5;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  v10 = v9 == 7 && v8 == 7;
  if (v8 != 7 && v9 != 7)
  {
    v12 = sub_100161910(v8);
    v14 = v13;
    if (v12 == sub_100161910(v9) && v14 == v15)
    {
      v10 = 1;
    }

    else
    {
      sub_1000050CC();
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v10 & 1;
}

uint64_t static AvroSchema.IntSchema.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v9 = a6 == 7 && a3 == 7;
    if (a3 != 7 && a6 != 7)
    {
      v11 = sub_100161910(a3);
      v13 = v12;
      if (v11 == sub_100161910(a6) && v13 == v14)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_100008ADC();
      }
    }
  }

  return v9 & 1;
}

uint64_t static AvroSchema.BytesSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == 7)
  {
    if (v6 != 7)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == 7)
    {
      return 0;
    }

    v7 = sub_100161910(v5);
    v9 = v8;
    if (v7 == sub_100161910(v6) && v9 == v10)
    {
    }

    else
    {
      sub_100007B1C();
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v13 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  result = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    return (*(a1 + 40) == *(a2 + 40)) & ~result;
  }

  return result;
}

void AvroSchema.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 96);
  switch(v4 >> 12)
  {
    case 3u:
    case 4u:
    case 9u:
      v7 = v2[2];
      v6 = v2[3];
      if (v2[5])
      {
        v8 = v2[4];
        sub_100005C20();

        String.hash(into:)();

        if (!v6)
        {
          goto LABEL_32;
        }
      }

      else
      {
        Hasher._combine(_:)(0);

        if (!v6)
        {
          goto LABEL_32;
        }
      }

      sub_100005C20();
      String.hash(into:)();

      return;
    case 5u:
      sub_10016144C();
      v18 = sub_100003D20();
      sub_100150F70(v18, v19);

      sub_1000050CC();
      String.hash(into:)();

      sub_10000C6AC();
      v23 = memcpy(v20, v21, v22);
      sub_1001613F4(v23);
      AvroSchema.hash(into:)(a1);
      sub_100150FCC(__dst);
      goto LABEL_21;
    case 6u:
      sub_10016144C();
      v12 = sub_100003D20();
      sub_10014EA68(v12, v13);

      sub_1000050CC();
      String.hash(into:)();

      sub_10000C6AC();
      v17 = memcpy(v14, v15, v16);
      sub_1001613F4(v17);
      AvroSchema.hash(into:)(a1);
      sub_10014EAC4(__dst);
LABEL_21:
      sub_1001441C8(v3 + 16);
      return;
    case 7u:
      v28 = v2[6];
      v29 = *(v28 + 16);
      if (!v29)
      {
        return;
      }

      v30 = 32;
      do
      {
        memcpy(__dst, (v28 + v30), 0x62uLL);
        sub_10014416C(__dst, v31);
        AvroSchema.hash(into:)(a1);
        sub_1001441C8(__dst);
        v30 += 104;
        --v29;
      }

      while (v29);
      goto LABEL_29;
    case 8u:
      if (*(v1 + 24))
      {
        sub_100005C20();
        String.hash(into:)();
        if (v3)
        {
          goto LABEL_16;
        }

LABEL_32:
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(0);
      if (!v3)
      {
        goto LABEL_32;
      }

LABEL_16:
      sub_100005C20();
LABEL_2:

      String.hash(into:)();
      return;
    case 0xAu:
      v24 = v2[2];
      v25 = *(v24 + 16);
      if (!v25)
      {
        return;
      }

      v26 = v25 - 1;
      for (i = 32; ; i += 184)
      {
        memcpy(__dst, (v24 + i), 0xB2uLL);
        sub_10014421C(__dst, v31);

        String.hash(into:)();
        sub_100144278(__dst);

        if (!v26)
        {
          break;
        }

        --v26;
      }

LABEL_29:

      return;
    case 0xBu:
      memcpy(__dst, v2 + 2, 0xB2uLL);
      v9 = sub_100003D20();
      sub_10014421C(v9, v10);

      sub_1000050CC();
      String.hash(into:)();
      sub_100144278(__dst);
      goto LABEL_29;
    case 0xCu:
      Hasher.init(_seed:)();
      AvroSchema.hash(into:)(__dst);
      v11 = Hasher._finalize()();
      Hasher._combine(_:)(v11);
      return;
    case 0xDu:
      if (v4 == 53248)
      {
        *(v1 + 16);
        *(v1 + 88);
        *(v1 + 80);
        *(v1 + 72);
        *(v1 + 64);
        *(v1 + 56);
        *(v1 + 48);
        *(v1 + 40);
        *(v1 + 32);
      }

      goto LABEL_2;
    default:
      goto LABEL_2;
  }
}

Swift::Bool __swiftcall AvroSchema.isDecimal()()
{
  v1 = *(v0 + 96) >> 12;
  if (v1 == 8)
  {
    switch(*(v0 + 56))
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 6:
        goto LABEL_7;
      case 3:
LABEL_6:
        sub_10016140C();
LABEL_7:
        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v2)
        {
          goto LABEL_8;
        }

        return 0;
      case 7:
        return 0;
      default:
LABEL_5:

LABEL_8:
        result = 1;
        break;
    }
  }

  else
  {
    if (v1 == 2)
    {
      switch(*(v0 + 16))
      {
        case 1:
        case 2:
        case 4:
        case 5:
        case 6:
          goto LABEL_7;
        case 3:
          goto LABEL_6;
        case 7:
          return 0;
        default:
          goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001612E0()
{
  v1 = *(v0 + 24);

  sub_10000BB3C();

  return _swift_deallocObject(v0, 131, 7);
}

uint64_t sub_100161350(void *__src, const void *a2)
{
  memcpy(v4, __src, 0xB2uLL);
  memcpy(__dst, a2, 0xB2uLL);
  return sub_10011C380(v4, __dst) & 1;
}

uint64_t sub_1001613F4(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_10014416C(v1 + 16, va);
}

void *sub_10016142C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char __dst)
{
  v37 = (*v35 + 16);

  return memcpy(&__dst, v37, 0x73uLL);
}

void *sub_10016144C()
{

  return memcpy((v1 - 248), (v0 + 16), 0x73uLL);
}

Swift::String_optional __swiftcall AvroSchema.getName()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 96);
  v5 = 0xE500000000000000;
  v6 = 0x6E6F696E75;
  switch(v4 >> 12)
  {
    case 1u:
      sub_10000811C();
      switch(v9)
      {
        case 1:
          goto LABEL_11;
        case 2:
          goto LABEL_24;
        case 3:
          goto LABEL_25;
        case 4:
          goto LABEL_23;
        case 5:
          goto LABEL_26;
        case 6:
          goto LABEL_28;
        case 7:
          v5 = 0xE400000000000000;
          v6 = 1735290732;
          break;
        default:
          goto LABEL_3;
      }

      break;
    case 2u:
      sub_10000811C();
      switch(v10)
      {
        case 1:
          goto LABEL_11;
        case 2:
          goto LABEL_24;
        case 3:
          goto LABEL_25;
        case 4:
          goto LABEL_23;
        case 5:
          goto LABEL_26;
        case 6:
          goto LABEL_28;
        case 7:
          sub_10016931C();
          break;
        default:
          goto LABEL_3;
      }

      break;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 9u:
    case 0xBu:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);

      break;
    case 7u:
      break;
    case 8u:
      v6 = *v0;

      break;
    case 0xAu:
      sub_100169330();
      break;
    case 0xCu:
      v6 = 0;
      v5 = 0;
      break;
    case 0xDu:
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      v15 = *(v0 + 64);
      v14 = *(v0 + 72);
      v16 = *(v0 + 48);
      v17 = *(v0 + 56);
      v19 = *(v0 + 32);
      v18 = *(v0 + 40);
      v20 = *(v0 + 24);
      if (v4 != 53248 || v1 | v2 | v3 | v12 | v13 | v14 | v15 | v17 | v16 | v18 | v19 | v20)
      {
        v21 = v3 | v1 | v12 | v13 | v14 | v15 | v17 | v16 | v18 | v19 | v20;
        v22 = v4 == 53248 && v2 == 1;
        if (!v22 || v21)
        {
          v24 = v4 == 53248 && v2 == 2;
          if (!v24 || v21)
          {
            if (v21)
            {
              v25 = 0;
            }

            else
            {
              v25 = v2 == 3;
            }

            if (v25 && v4 == 53248)
            {
              v6 = 0x656C62756F64;
            }

            else
            {
              v6 = 0x676E69727473;
            }

            v5 = 0xE600000000000000;
          }

          else
          {
            v6 = 0x74616F6C66;
          }
        }

        else
        {
          sub_10000F3EC();
        }
      }

      else
      {
        v5 = 0xE400000000000000;
        v6 = 1819047278;
      }

      break;
    default:
      sub_10000811C();
      switch(v11)
      {
        case 1:
LABEL_11:
          v5 = 0xE400000000000000;
          v6 = 1702125924;
          break;
        case 2:
LABEL_24:
          v5 = 0xEB0000000073696CLL;
          sub_100169214();
          v6 = 0x6C69006E6F696E75;
          break;
        case 3:
LABEL_25:
          sub_100169214();
          sub_100169264();
          break;
        case 4:
LABEL_23:
          sub_10000AE78();
          v23 = "timestamp-millis";
          goto LABEL_27;
        case 5:
LABEL_26:
          sub_10000AE78();
          v23 = "timestamp-micros";
LABEL_27:
          v5 = (v23 - 32) | 0x8000000000000000;
          break;
        case 6:
LABEL_28:
          sub_10016924C();
          break;
        case 7:
          v5 = 0xE300000000000000;
          v6 = 7630441;
          break;
        default:
          goto LABEL_3;
      }

      break;
  }

LABEL_3:
  v7 = v6;
  v8 = v5;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}