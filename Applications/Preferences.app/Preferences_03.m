unint64_t sub_100054C28()
{
  result = qword_10015B340;
  if (!qword_10015B340)
  {
    type metadata accessor for FamilyRowStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B340);
  }

  return result;
}

uint64_t sub_100054C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100054D80(v5, v7) & 1;
}

uint64_t sub_100054D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v9 = *a1;
  v8 = *(a1 + 8);
  v11 = *a2;
  v10 = *(a2 + 8);
  if (*(a1 + 16) > 1u)
  {
    if (v2 != 2)
    {
      v7 = v9 | v8;
      if (v7)
      {
        v7 = 0;
        if (v3 != 3 || v11 != 1 || v10)
        {
          return v7;
        }
      }

      else if (v3 != 3 || v10 | v11)
      {
        return v7;
      }

      goto LABEL_3;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v12 = a1;
        v13 = a2;
        sub_1000548F0();
        v14 = v11;
        v15 = static NSObject.== infix(_:_:)();
        sub_100054F18(v11, v10, 0);
        a1 = v12;
        a2 = v13;
        if (v15)
        {
          goto LABEL_3;
        }
      }

      return 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  if (v9 != v11 || v8 != v10)
  {
    v16 = a1;
    v17 = *a1;
    v18 = a2;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v18;
    v20 = v19;
    a1 = v16;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_3:
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  v5 = *(a1 + 24);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100054F18(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_10002A748(a1, a2, a3);
  }
}

uint64_t sub_100054F2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10005502C(v5, v7) & 1;
}

uint64_t sub_10005502C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v13 = *a1;
  v12 = *(a1 + 8);
  v15 = *a2;
  v14 = *(a2 + 8);
  if (*(a1 + 16) > 1u)
  {
    if (v2 != 2)
    {
      v10 = v13 | v12;
      if (v10)
      {
        v10 = 0;
        if (v3 != 3 || v15 != 1 || v14)
        {
          return v10;
        }
      }

      else if (v3 != 3 || v14 | v15)
      {
        return v10;
      }

      goto LABEL_3;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v16 = a1;
        v17 = a2;
        sub_1000548F0();
        v18 = v15;
        v19 = static NSObject.== infix(_:_:)();
        sub_100054F18(v15, v14, 0);
        a1 = v16;
        a2 = v17;
        if (v19)
        {
          goto LABEL_3;
        }
      }

      return 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  if (v13 != v15 || v12 != v14)
  {
    v21 = a1;
    v22 = *a1;
    v23 = a2;
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v23;
    v25 = v24;
    a1 = v21;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_3:
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    v5 = a1;
    v6 = *(a1 + 24);
    v7 = a2;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v7;
    v9 = v8;
    a1 = v5;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  v20 = *(a1 + 40);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100055204(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100055234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10005527C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

BOOL sub_100055318(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100055348@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100055374@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10005544C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10008D580();

  *a1 = v2;
  return result;
}

unint64_t sub_100055490()
{
  result = qword_10015B348;
  if (!qword_10015B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B348);
  }

  return result;
}

unint64_t sub_1000554E8()
{
  result = qword_10015B350;
  if (!qword_10015B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B350);
  }

  return result;
}

unint64_t sub_100055540()
{
  result = qword_10015B358;
  if (!qword_10015B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B358);
  }

  return result;
}

unint64_t sub_100055598()
{
  result = qword_10015B360;
  if (!qword_10015B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B360);
  }

  return result;
}

uint64_t sub_1000555F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_10005560C()
{
  if (*(v0 + 32) < 6u)
  {
    return 0;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2] | v0[3];
  if (!(v4 | *v0 | v3))
  {
    return 0xD000000000000035;
  }

  v5 = v4 | v3;
  if (v2 == 1 && v5 == 0)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 2 && v5 == 0)
  {
    return 0;
  }

  if (v2 == 3 && !v5)
  {
    return 0xD00000000000002DLL;
  }

  if (v2 == 4 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 5 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 6 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 7 && !v5)
  {
    return 0xD000000000000038;
  }

  if (v2 == 8 && !v5)
  {
    return 0xD00000000000002CLL;
  }

  if (v2 == 9 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 10 && !v5)
  {
    return 0;
  }

  if (v2 == 11 && !v5)
  {
    return 0xD000000000000036;
  }

  if (v2 == 12 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 13 && !v5)
  {
    return 0xD00000000000002ELL;
  }

  if (v2 == 14 && !v5)
  {
    return 0xD000000000000033;
  }

  if (v2 == 15 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 16 && !v5)
  {
    return 0xD000000000000036;
  }

  if (v2 == 17 && !v5)
  {
    return 0xD000000000000035;
  }

  if (v2 == 18 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 19 && !v5 || v2 == 20 && !v5)
  {
    return 0xD000000000000040;
  }

  if (v2 == 21 && !v5)
  {
    return 0xD000000000000036;
  }

  if (v2 == 22 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 23 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 24 && !v5)
  {
    return 0xD00000000000002DLL;
  }

  if (v2 == 25 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 26 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 27 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 28 && !v5)
  {
    return 0xD00000000000002CLL;
  }

  if (v2 == 29 && !v5)
  {
    return 0xD00000000000003ELL;
  }

  if (v2 == 30 && !v5)
  {
    return 0xD000000000000030;
  }

  if (v2 == 31 && !v5)
  {
    return 0xD00000000000003BLL;
  }

  if (v2 == 32 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 33 && !v5)
  {
    return 0xD000000000000034;
  }

  if (v2 == 34 && !v5)
  {
    return 0xD000000000000031;
  }

  if (v2 == 35 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 36 && !v5)
  {
    return 0xD000000000000033;
  }

  if (v2 == 37 && !v5)
  {
    return 0xD00000000000002FLL;
  }

  if (v2 == 38 && !v5)
  {
    return 0xD000000000000032;
  }

  if (v2 == 39 && !v5)
  {
    return 0;
  }

  if (v2 != 40 || v5)
  {
    if ((v2 - 41) > 3 || v5)
    {
      return 0xD00000000000002DLL;
    }

    return 0;
  }

  return 0xD000000000000039;
}

uint64_t sub_100055B70()
{
  if (*(v0 + 32) != 6)
  {
    return 74;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2] | v0[3];
  if (!(v3 | *v0 | v2))
  {
    return 3;
  }

  v4 = v3 | v2;
  if (v1 == 1 && v4 == 0)
  {
    return 4;
  }

  if (v1 == 2 && !v4)
  {
    return 73;
  }

  if (v1 == 3 && !v4)
  {
    return 5;
  }

  if (v1 == 4 && !v4)
  {
    return 6;
  }

  if (v1 == 5 && !v4)
  {
    return 7;
  }

  if (v1 == 6 && !v4)
  {
    return 8;
  }

  if (v1 == 7 && !v4)
  {
    return 9;
  }

  if (v1 == 8 && !v4)
  {
    return 10;
  }

  if (v1 == 9 && !v4)
  {
    return 11;
  }

  if (v1 == 11 && !v4)
  {
    return 12;
  }

  if (v1 == 12 && !v4)
  {
    return 13;
  }

  if (v1 == 13 && !v4)
  {
    return 14;
  }

  if (v1 == 14 && !v4)
  {
    return 15;
  }

  if (v1 == 15 && !v4)
  {
    return 16;
  }

  if (v1 == 16 && !v4)
  {
    return 17;
  }

  if (v1 == 17 && !v4)
  {
    return 18;
  }

  if (v1 == 18 && !v4)
  {
    return 20;
  }

  if (v1 == 19 && !v4)
  {
    return 21;
  }

  if (v1 == 20 && !v4)
  {
    return 1;
  }

  if (v1 == 21 && !v4)
  {
    return 23;
  }

  if (v1 == 22 && !v4)
  {
    return 24;
  }

  if (v1 == 23 && !v4)
  {
    return 19;
  }

  if (v1 == 24 && !v4)
  {
    return 25;
  }

  if (v1 == 26 && !v4)
  {
    return 26;
  }

  if (v1 == 27 && !v4)
  {
    return 27;
  }

  if (v1 == 28 && !v4)
  {
    return 30;
  }

  if (v1 == 29 && !v4)
  {
    return 31;
  }

  if (v1 == 30 && !v4)
  {
    return 32;
  }

  if (v1 == 31 && !v4)
  {
    return 33;
  }

  if (v1 == 32 && !v4)
  {
    return 36;
  }

  if (v1 == 34 && !v4)
  {
    return 59;
  }

  if (v1 == 35 && !v4)
  {
    return 64;
  }

  if (v1 == 36 && !v4)
  {
    return 67;
  }

  if (v1 == 38 && !v4)
  {
    return 69;
  }

  if (v1 == 39 && !v4)
  {
    return 70;
  }

  if (v1 == 40 && !v4)
  {
    return 71;
  }

  else
  {
    return 74;
  }
}

Swift::Int sub_100055E78()
{
  Hasher.init(_seed:)();
  sub_10002FE78();
  return Hasher._finalize()();
}

uint64_t sub_100055EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100056108(v5, v7) & 1;
}

BOOL sub_100055F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (sub_100056108(v5, v7) & 1) == 0;
}

BOOL sub_100055F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return (sub_100056108(v5, v7) & 1) == 0;
}

uint64_t sub_100055FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_100056108(v5, v7) & 1;
}

uint64_t sub_100055FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  result = sub_100029920(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_100056058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = v6;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  *(inited + 48) = v9;
  sub_100029920(v5, v6, v7, v8, v9);
  sub_10005AFAC(a1, a2);
  swift_setDeallocating();
  return sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
}

uint64_t sub_100056108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(a2 + 32);
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = *(a1 + 32);
  if (v11 > 2)
  {
    if (*(a1 + 32) <= 4u)
    {
      if (v11 == 3)
      {
        if (v6 != 3)
        {
          v12 = 5;
LABEL_356:
          if (*(a2 + 32) <= 2u)
          {
            v22 = 3;
            if (v6 != 1)
            {
              v22 = 4;
            }

            if (*(a2 + 32))
            {
              v21 = v22;
            }

            else
            {
              v21 = 2;
            }

            return v12 < v21;
          }

          if (*(a2 + 32) <= 4u)
          {
            v19 = v6 == 3;
            v21 = 5;
            if (!v19)
            {
              v21 = 6;
            }

            return v12 < v21;
          }

          if (v6 == 5)
          {
            v21 = 7;
            return v12 < v21;
          }

LABEL_368:
          if (v5 | v3 | v2 | v4)
          {
            v23 = v5 | v3 | v4;
            if (v2 != 1 || v23)
            {
              if (v2 != 2 || v23)
              {
                if (v2 != 3 || v23)
                {
                  if (v2 != 4 || v23)
                  {
                    if (v2 != 5 || v23)
                    {
                      if (v2 != 6 || v23)
                      {
                        if (v2 != 7 || v23)
                        {
                          if (v2 != 8 || v23)
                          {
                            if (v2 != 9 || v23)
                            {
                              if (v2 != 10 || v23)
                              {
                                if (v2 != 11 || v23)
                                {
                                  if (v2 != 12 || v23)
                                  {
                                    if (v2 != 13 || v23)
                                    {
                                      if (v2 != 14 || v23)
                                      {
                                        if (v2 != 15 || v23)
                                        {
                                          if (v2 != 16 || v23)
                                          {
                                            if (v2 != 17 || v23)
                                            {
                                              if (v2 != 18 || v23)
                                              {
                                                if (v2 != 19 || v23)
                                                {
                                                  if (v2 != 20 || v23)
                                                  {
                                                    if (v2 != 21 || v23)
                                                    {
                                                      if (v2 != 22 || v23)
                                                      {
                                                        if (v2 != 23 || v23)
                                                        {
                                                          if (v2 != 24 || v23)
                                                          {
                                                            if (v2 != 25 || v23)
                                                            {
                                                              if (v2 != 26 || v23)
                                                              {
                                                                if (v2 != 27 || v23)
                                                                {
                                                                  if (v2 != 28 || v23)
                                                                  {
                                                                    if (v2 != 29 || v23)
                                                                    {
                                                                      if (v2 != 30 || v23)
                                                                      {
                                                                        if (v2 != 31 || v23)
                                                                        {
                                                                          if (v2 != 32 || v23)
                                                                          {
                                                                            if (v2 != 33 || v23)
                                                                            {
                                                                              if (v2 != 34 || v23)
                                                                              {
                                                                                if (v2 != 35 || v23)
                                                                                {
                                                                                  if (v2 != 36 || v23)
                                                                                  {
                                                                                    if (v2 != 37 || v23)
                                                                                    {
                                                                                      if (v2 != 38 || v23)
                                                                                      {
                                                                                        if (v2 != 39 || v23)
                                                                                        {
                                                                                          if (v2 != 40 || v23)
                                                                                          {
                                                                                            if (v2 != 41 || v23)
                                                                                            {
                                                                                              if (v2 != 42 || v23)
                                                                                              {
                                                                                                if (v2 != 43 || v23)
                                                                                                {
                                                                                                  if (v23)
                                                                                                  {
                                                                                                    v24 = 0;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v24 = v2 == 44;
                                                                                                  }

                                                                                                  v21 = 50;
                                                                                                  if (!v24)
                                                                                                  {
                                                                                                    v21 = 51;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v21 = 49;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v21 = 48;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v21 = 47;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v21 = 46;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v21 = 45;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v21 = 44;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v21 = 43;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v21 = 42;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v21 = 41;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v21 = 40;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v21 = 39;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v21 = 38;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v21 = 37;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v21 = 36;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v21 = 35;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v21 = 34;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v21 = 33;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v21 = 32;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v21 = 31;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v21 = 30;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v21 = 29;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v21 = 28;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v21 = 27;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v21 = 26;
                                                  }
                                                }

                                                else
                                                {
                                                  v21 = 25;
                                                }
                                              }

                                              else
                                              {
                                                v21 = 24;
                                              }
                                            }

                                            else
                                            {
                                              v21 = 23;
                                            }
                                          }

                                          else
                                          {
                                            v21 = 22;
                                          }
                                        }

                                        else
                                        {
                                          v21 = 21;
                                        }
                                      }

                                      else
                                      {
                                        v21 = 20;
                                      }
                                    }

                                    else
                                    {
                                      v21 = 19;
                                    }
                                  }

                                  else
                                  {
                                    v21 = 18;
                                  }
                                }

                                else
                                {
                                  v21 = 17;
                                }
                              }

                              else
                              {
                                v21 = 16;
                              }
                            }

                            else
                            {
                              v21 = 15;
                            }
                          }

                          else
                          {
                            v21 = 14;
                          }
                        }

                        else
                        {
                          v21 = 13;
                        }
                      }

                      else
                      {
                        v21 = 12;
                      }
                    }

                    else
                    {
                      v21 = 11;
                    }
                  }

                  else
                  {
                    v21 = 10;
                  }
                }

                else
                {
                  v21 = 9;
                }
              }

              else
              {
                v21 = 8;
              }
            }

            else
            {
              v21 = 1;
            }
          }

          else
          {
            v21 = 0;
          }

          return v12 < v21;
        }
      }

      else if (v6 != 4)
      {
        v12 = 6;
        goto LABEL_356;
      }

      goto LABEL_22;
    }

    if (v11 == 5)
    {
      if (v6 != 5)
      {
        v12 = 7;
        goto LABEL_356;
      }

      goto LABEL_22;
    }

    v16 = v10 | v8;
    if (!(v10 | v8 | v7 | v9))
    {
      if (v6 != 6)
      {
        v12 = 0;
        goto LABEL_356;
      }

      if (v5 | v3 | v2 | v4)
      {
        v12 = 0;
        goto LABEL_368;
      }

      return 0;
    }

    v17 = v16 | v9;
    v18 = (v16 | v9) == 0;
    if (v7 != 1 || v17)
    {
      if (v7 != 2 || v17)
      {
        if (v7 != 3 || v17)
        {
          if (v7 != 4 || v17)
          {
            if (v7 != 5 || v17)
            {
              if (v7 != 6 || v17)
              {
                if (v7 != 7 || v17)
                {
                  if (v7 != 8 || v17)
                  {
                    if (v7 != 9 || v17)
                    {
                      if (v7 != 10 || v17)
                      {
                        if (v7 != 11 || v17)
                        {
                          if (v7 != 12 || v17)
                          {
                            if (v7 != 13 || v17)
                            {
                              if (v7 != 14 || v17)
                              {
                                if (v7 != 15 || v17)
                                {
                                  if (v7 != 16 || v17)
                                  {
                                    if (v7 != 17 || v17)
                                    {
                                      if (v7 != 18 || v17)
                                      {
                                        if (v7 != 19 || v17)
                                        {
                                          if (v7 != 20 || v17)
                                          {
                                            if (v7 != 21 || v17)
                                            {
                                              if (v7 != 22 || v17)
                                              {
                                                if (v7 != 23 || v17)
                                                {
                                                  if (v7 != 24 || v17)
                                                  {
                                                    if (v7 != 25 || v17)
                                                    {
                                                      if (v7 != 26 || v17)
                                                      {
                                                        if (v7 != 27 || v17)
                                                        {
                                                          if (v7 != 28 || v17)
                                                          {
                                                            if (v7 != 29 || v17)
                                                            {
                                                              if (v7 != 30 || v17)
                                                              {
                                                                if (v7 != 31 || v17)
                                                                {
                                                                  if (v7 != 32 || v17)
                                                                  {
                                                                    if (v7 != 33 || v17)
                                                                    {
                                                                      if (v7 != 34 || v17)
                                                                      {
                                                                        if (v7 != 35 || v17)
                                                                        {
                                                                          if (v7 != 36 || v17)
                                                                          {
                                                                            if (v7 != 37 || v17)
                                                                            {
                                                                              if (v7 != 38 || v17)
                                                                              {
                                                                                if (v7 != 39 || v17)
                                                                                {
                                                                                  if (v7 != 40 || v17)
                                                                                  {
                                                                                    if (v7 != 41 || v17)
                                                                                    {
                                                                                      if (v7 != 42 || v17)
                                                                                      {
                                                                                        if (v7 != 43 || v17)
                                                                                        {
                                                                                          if (v7 != 44 || v17)
                                                                                          {
                                                                                            if (v6 != 6 || v2 != 45)
                                                                                            {
                                                                                              goto LABEL_354;
                                                                                            }
                                                                                          }

                                                                                          else if (v6 != 6 || v2 != 44)
                                                                                          {
                                                                                            goto LABEL_354;
                                                                                          }

                                                                                          if (!(v5 | v3 | v4))
                                                                                          {
                                                                                            return 0;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          if (v6 == 6 && v2 == 43 && !(v5 | v3 | v4))
                                                                                          {
                                                                                            return 0;
                                                                                          }

                                                                                          v18 = v16 == 0;
                                                                                          if (!v16)
                                                                                          {
                                                                                            v12 = 49;
                                                                                            goto LABEL_356;
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        if (v6 == 6 && v2 == 42 && !(v5 | v3 | v4))
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        v18 = v16 == 0;
                                                                                        if (!v16)
                                                                                        {
                                                                                          v12 = 48;
                                                                                          goto LABEL_356;
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      if (v6 == 6 && v2 == 41 && !(v5 | v3 | v4))
                                                                                      {
                                                                                        return 0;
                                                                                      }

                                                                                      v18 = v16 == 0;
                                                                                      if (!v16)
                                                                                      {
                                                                                        v12 = 47;
                                                                                        goto LABEL_356;
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    if (v6 == 6 && v2 == 40 && !(v5 | v3 | v4))
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    v18 = v16 == 0;
                                                                                    if (!v16)
                                                                                    {
                                                                                      v12 = 46;
                                                                                      goto LABEL_356;
                                                                                    }
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  if (v6 == 6 && v2 == 39 && !(v5 | v3 | v4))
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  v18 = v16 == 0;
                                                                                  if (!v16)
                                                                                  {
                                                                                    v12 = 45;
                                                                                    goto LABEL_356;
                                                                                  }
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                if (v6 == 6 && v2 == 38 && !(v5 | v3 | v4))
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                v18 = v16 == 0;
                                                                                if (!v16)
                                                                                {
                                                                                  v12 = 44;
                                                                                  goto LABEL_356;
                                                                                }
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              if (v6 == 6 && v2 == 37 && !(v5 | v3 | v4))
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              v18 = v16 == 0;
                                                                              if (!v16)
                                                                              {
                                                                                v12 = 43;
                                                                                goto LABEL_356;
                                                                              }
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            if (v6 == 6 && v2 == 36 && !(v5 | v3 | v4))
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            v18 = v16 == 0;
                                                                            if (!v16)
                                                                            {
                                                                              v12 = 42;
                                                                              goto LABEL_356;
                                                                            }
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          if (v6 == 6 && v2 == 35 && !(v5 | v3 | v4))
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          v18 = v16 == 0;
                                                                          if (!v16)
                                                                          {
                                                                            v12 = 41;
                                                                            goto LABEL_356;
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        if (v6 == 6 && v2 == 34 && !(v5 | v3 | v4))
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        v18 = v16 == 0;
                                                                        if (!v16)
                                                                        {
                                                                          v12 = 40;
                                                                          goto LABEL_356;
                                                                        }
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      if (v6 == 6 && v2 == 33 && !(v5 | v3 | v4))
                                                                      {
                                                                        return 0;
                                                                      }

                                                                      v18 = v16 == 0;
                                                                      if (!v16)
                                                                      {
                                                                        v12 = 39;
                                                                        goto LABEL_356;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    if (v6 == 6 && v2 == 32 && !(v5 | v3 | v4))
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    v18 = v16 == 0;
                                                                    if (!v16)
                                                                    {
                                                                      v12 = 38;
                                                                      goto LABEL_356;
                                                                    }
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  if (v6 == 6 && v2 == 31 && !(v5 | v3 | v4))
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  v18 = v16 == 0;
                                                                  if (!v16)
                                                                  {
                                                                    v12 = 37;
                                                                    goto LABEL_356;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                if (v6 == 6 && v2 == 30 && !(v5 | v3 | v4))
                                                                {
                                                                  return 0;
                                                                }

                                                                v18 = v16 == 0;
                                                                if (!v16)
                                                                {
                                                                  v12 = 36;
                                                                  goto LABEL_356;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (v6 == 6 && v2 == 29 && !(v5 | v3 | v4))
                                                              {
                                                                return 0;
                                                              }

                                                              v18 = v16 == 0;
                                                              if (!v16)
                                                              {
                                                                v12 = 35;
                                                                goto LABEL_356;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (v6 == 6 && v2 == 28 && !(v5 | v3 | v4))
                                                            {
                                                              return 0;
                                                            }

                                                            v18 = v16 == 0;
                                                            if (!v16)
                                                            {
                                                              v12 = 34;
                                                              goto LABEL_356;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          if (v6 == 6 && v2 == 27 && !(v5 | v3 | v4))
                                                          {
                                                            return 0;
                                                          }

                                                          v18 = v16 == 0;
                                                          if (!v16)
                                                          {
                                                            v12 = 33;
                                                            goto LABEL_356;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v6 == 6 && v2 == 26 && !(v5 | v3 | v4))
                                                        {
                                                          return 0;
                                                        }

                                                        v18 = v16 == 0;
                                                        if (!v16)
                                                        {
                                                          v12 = 32;
                                                          goto LABEL_356;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v6 == 6 && v2 == 25 && !(v5 | v3 | v4))
                                                      {
                                                        return 0;
                                                      }

                                                      v18 = v16 == 0;
                                                      if (!v16)
                                                      {
                                                        v12 = 31;
                                                        goto LABEL_356;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v6 == 6 && v2 == 24 && !(v5 | v3 | v4))
                                                    {
                                                      return 0;
                                                    }

                                                    v18 = v16 == 0;
                                                    if (!v16)
                                                    {
                                                      v12 = 30;
                                                      goto LABEL_356;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  if (v6 == 6 && v2 == 23 && !(v5 | v3 | v4))
                                                  {
                                                    return 0;
                                                  }

                                                  v18 = v16 == 0;
                                                  if (!v16)
                                                  {
                                                    v12 = 29;
                                                    goto LABEL_356;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                if (v6 == 6 && v2 == 22 && !(v5 | v3 | v4))
                                                {
                                                  return 0;
                                                }

                                                v18 = v16 == 0;
                                                if (!v16)
                                                {
                                                  v12 = 28;
                                                  goto LABEL_356;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              if (v6 == 6 && v2 == 21 && !(v5 | v3 | v4))
                                              {
                                                return 0;
                                              }

                                              v18 = v16 == 0;
                                              if (!v16)
                                              {
                                                v12 = 27;
                                                goto LABEL_356;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            if (v6 == 6 && v2 == 20 && !(v5 | v3 | v4))
                                            {
                                              return 0;
                                            }

                                            v18 = v16 == 0;
                                            if (!v16)
                                            {
                                              v12 = 26;
                                              goto LABEL_356;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          if (v6 == 6 && v2 == 19 && !(v5 | v3 | v4))
                                          {
                                            return 0;
                                          }

                                          v18 = v16 == 0;
                                          if (!v16)
                                          {
                                            v12 = 25;
                                            goto LABEL_356;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        if (v6 == 6 && v2 == 18 && !(v5 | v3 | v4))
                                        {
                                          return 0;
                                        }

                                        v18 = v16 == 0;
                                        if (!v16)
                                        {
                                          v12 = 24;
                                          goto LABEL_356;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v6 == 6 && v2 == 17 && !(v5 | v3 | v4))
                                      {
                                        return 0;
                                      }

                                      v18 = v16 == 0;
                                      if (!v16)
                                      {
                                        v12 = 23;
                                        goto LABEL_356;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (v6 == 6 && v2 == 16 && !(v5 | v3 | v4))
                                    {
                                      return 0;
                                    }

                                    v18 = v16 == 0;
                                    if (!v16)
                                    {
                                      v12 = 22;
                                      goto LABEL_356;
                                    }
                                  }
                                }

                                else
                                {
                                  if (v6 == 6 && v2 == 15 && !(v5 | v3 | v4))
                                  {
                                    return 0;
                                  }

                                  v18 = v16 == 0;
                                  if (!v16)
                                  {
                                    v12 = 21;
                                    goto LABEL_356;
                                  }
                                }
                              }

                              else
                              {
                                if (v6 == 6 && v2 == 14 && !(v5 | v3 | v4))
                                {
                                  return 0;
                                }

                                v18 = v16 == 0;
                                if (!v16)
                                {
                                  v12 = 20;
                                  goto LABEL_356;
                                }
                              }
                            }

                            else
                            {
                              if (v6 == 6 && v2 == 13 && !(v5 | v3 | v4))
                              {
                                return 0;
                              }

                              v18 = v16 == 0;
                              if (!v16)
                              {
                                v12 = 19;
                                goto LABEL_356;
                              }
                            }
                          }

                          else
                          {
                            if (v6 == 6 && v2 == 12 && !(v5 | v3 | v4))
                            {
                              return 0;
                            }

                            v18 = v16 == 0;
                            if (!v16)
                            {
                              v12 = 18;
                              goto LABEL_356;
                            }
                          }
                        }

                        else
                        {
                          if (v6 == 6 && v2 == 11 && !(v5 | v3 | v4))
                          {
                            return 0;
                          }

                          v18 = v16 == 0;
                          if (!v16)
                          {
                            v12 = 17;
                            goto LABEL_356;
                          }
                        }
                      }

                      else
                      {
                        if (v6 == 6 && v2 == 10 && !(v5 | v3 | v4))
                        {
                          return 0;
                        }

                        v18 = v16 == 0;
                        if (!v16)
                        {
                          v12 = 16;
                          goto LABEL_356;
                        }
                      }
                    }

                    else
                    {
                      if (v6 == 6 && v2 == 9 && !(v5 | v3 | v4))
                      {
                        return 0;
                      }

                      v18 = v16 == 0;
                      if (!v16)
                      {
                        v12 = 15;
                        goto LABEL_356;
                      }
                    }
                  }

                  else
                  {
                    if (v6 == 6 && v2 == 8 && !(v5 | v3 | v4))
                    {
                      return 0;
                    }

                    v18 = v16 == 0;
                    if (!v16)
                    {
                      v12 = 14;
                      goto LABEL_356;
                    }
                  }
                }

                else
                {
                  if (v6 == 6 && v2 == 7 && !(v5 | v3 | v4))
                  {
                    return 0;
                  }

                  v18 = v16 == 0;
                  if (!v16)
                  {
                    v12 = 13;
                    goto LABEL_356;
                  }
                }
              }

              else
              {
                if (v6 == 6 && v2 == 6 && !(v5 | v3 | v4))
                {
                  return 0;
                }

                v18 = v16 == 0;
                if (!v16)
                {
                  v12 = 12;
                  goto LABEL_356;
                }
              }
            }

            else
            {
              if (v6 == 6 && v2 == 5 && !(v5 | v3 | v4))
              {
                return 0;
              }

              v18 = v16 == 0;
              if (!v16)
              {
                v12 = 11;
                goto LABEL_356;
              }
            }
          }

          else
          {
            if (v6 == 6 && v2 == 4 && !(v5 | v3 | v4))
            {
              return 0;
            }

            v18 = v16 == 0;
            if (!v16)
            {
              v12 = 10;
              goto LABEL_356;
            }
          }
        }

        else
        {
          if (v6 == 6 && v2 == 3 && !(v5 | v3 | v4))
          {
            return 0;
          }

          v18 = v16 == 0;
          if (!v16)
          {
            v12 = 9;
            goto LABEL_356;
          }
        }
      }

      else
      {
        if (v6 == 6 && v2 == 2 && !(v5 | v3 | v4))
        {
          return 0;
        }

        v18 = v16 == 0;
        if (!v16)
        {
          v12 = 8;
          goto LABEL_356;
        }
      }
    }

    else
    {
      if (v6 == 6 && v2 == 1 && !(v5 | v3 | v4))
      {
        return 0;
      }

      v18 = v16 == 0;
      if (!v16)
      {
        v12 = 1;
        goto LABEL_356;
      }
    }

LABEL_354:
    v12 = 50;
    if (v7 != 44 || !v18)
    {
      v12 = 51;
    }

    goto LABEL_356;
  }

  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      v12 = 2;
      goto LABEL_356;
    }

    v19 = v7 == v2 && v8 == v3;
    if (!v19)
    {
      v20 = *a1;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (v10 != v5)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v11 == 1)
  {
    if (v6 != 1)
    {
      v12 = 3;
      goto LABEL_356;
    }

LABEL_22:
    if (v7 != v2 || v8 != v3)
    {
      v14 = *a1;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  if (v6 != 2)
  {
    v12 = 4;
    goto LABEL_356;
  }

  if (v7 == v2 && v8 == v3 || (v13 = *a1, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (v10 != v5)
    {
LABEL_45:
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 0;
      }

      goto LABEL_25;
    }

LABEL_44:
    if (v9 == v4)
    {
      return 0;
    }

    goto LABEL_45;
  }

LABEL_25:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_10005717C()
{
  v1 = type metadata accessor for PrimarySettingsListItemViewType();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrimarySettingsListItemModel();
  sub_10003B29C(v0 + *(v5 + 20), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          v7 = *(v4 + 3);
          v17 = *(v4 + 4);
          sub_100054F18(*v4, *(v4 + 1), v4[16]);
          return v7;
        }

        v7 = *(v4 + 3);
        v10 = *(v4 + 4);
        v11 = *(v4 + 6);
        sub_100054F18(*v4, *(v4 + 1), v4[16]);
        goto LABEL_13;
      }
    }

    else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
      v7 = *(v4 + 3);
      v8 = *(v4 + 4);
      sub_10002A748(*v4, *(v4 + 1), v4[16]);
      return v7;
    }

    v7 = *(v4 + 3);
    v12 = *(v4 + 4);
    v13 = *(v4 + 6);
    sub_10002A748(*v4, *(v4 + 1), v4[16]);
LABEL_13:

    return v7;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
    }

    else
    {
      v14 = type metadata accessor for PrimarySettingsListItemViewType;
    }

    sub_100057510(v4, v14);
    return 0;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = *(v4 + 3);
    v15 = *(v4 + 4);
    v16 = *(v4 + 5);
    sub_10002A748(*v4, *(v4 + 1), v4[16]);
  }

  else
  {
    v7 = *v4;
    v9 = *(v4 + 1);
  }

  return v7;
}

unint64_t sub_100057384(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 32);
  v2._countAndFlagsBits = sub_100026A58(a1);
  String.append(_:)(v2);

  return 0xD00000000000001DLL;
}

unint64_t sub_1000573F8()
{
  result = qword_10015B398;
  if (!qword_10015B398)
  {
    type metadata accessor for PrimarySettingsListItemModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B398);
  }

  return result;
}

BOOL sub_100057450()
{
  sub_10005717C();
  v1 = v0;
  sub_10005717C();
  if (v1)
  {
    if (v2)
    {
      sub_10002EAE0();
      v3 = StringProtocol.localizedStandardCompare<A>(_:)();

      return v3 == -1;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    if (v2)
    {
    }

    return 0;
  }
}

uint64_t sub_100057510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100057574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057638()
{
  swift_getKeyPath();
  sub_100057930();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000576A8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100057930();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100057790()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC11SettingsApp30PrimarySettingsListToggleState___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrimarySettingsListToggleState()
{
  result = qword_10015B578;
  if (!qword_10015B578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057888()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100057930()
{
  result = qword_10015B610;
  if (!qword_10015B610)
  {
    type metadata accessor for PrimarySettingsListToggleState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B610);
  }

  return result;
}

id sub_100057998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v3 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for PrimarySettingsListItemModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v16 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = v13;
  *(inited + 32) = v14;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  v18 = v13;
  v19 = v7;
  v20 = v14;
  v21 = v8;
  v22 = v36;
  sub_100029920(v12, v18, v20, v15, v16);
  sub_10005AFAC(v22, v6);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v21 + 48))(v6, 1, v7) == 1)
  {
    sub_10002C8C0(v6);
    v23 = 1;
    v24 = v35;
    return (*(v21 + 56))(v24, v23, 1, v19);
  }

  sub_10002C634(v6, v11);
  v25 = *(v7 + 24);
  if (*(v22 + 64) >= 0x40u)
  {
    v26 = *&v11[v25] | 4;
  }

  else
  {
    v26 = *&v11[v25];
  }

  v27 = v11;
  if (v26)
  {
    goto LABEL_16;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v29 = result;
    v30 = [result aa_primaryAppleAccount];

    if (v30)
    {
      if (([v30 aa_isSuspended] & 1) != 0 || !objc_msgSend(v30, "aa_isPrimaryEmailVerified"))
      {
      }

      else
      {
        v31 = [v30 aa_suspensionInfo];
        if (!v31)
        {

          goto LABEL_16;
        }

        v32 = v31;
        v33 = [v31 isiCloudSuspended];

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v26 |= 1uLL;
    }

LABEL_16:
    *(v27 + v25) = v26;
    v24 = v35;
    sub_10002C634(v27, v35);
    v23 = 0;
    return (*(v21 + 56))(v24, v23, 1, v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_100057C78()
{
  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

double sub_100057CEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 >> 6) > 1u)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v8 = Text.init(_:tableName:bundle:comment:)();
    v10 = v9;
    v12 = v11 & 1;
    sub_100009670(v8, v9, v11 & 1);

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    if (a3 >> 6)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v5 = Text.init(_:tableName:bundle:comment:)();
    }

    else
    {
      *&v14 = a1;
      *(&v14 + 1) = a2;
      sub_10002EAE0();

      v5 = Text.init<A>(_:)();
    }

    v8 = v5;
    v10 = v6;
    v12 = v7 & 1;
    sub_100009670(v5, v6, v7 & 1);

    _ConditionalContent<>.init(storage:)();
  }

  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  _ConditionalContent<>.init(storage:)();
  sub_100009680(v8, v10, v12);

  result = *&v14;
  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 33) = v17;
  return result;
}

uint64_t sub_100058024@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 2)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v8._countAndFlagsBits = 543516481;
      v8._object = 0xE400000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
      sub_100058918();
      v9 = BinaryInteger.formatted()();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);

      v10._countAndFlagsBits = 544175136;
      v10._object = 0xE400000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
      *&v28 = a1;
      v11 = BinaryInteger.formatted()();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11);

      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
      LocalizedStringKey.init(stringInterpolation:)();
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
    }

    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v13;
    v22 = v14 & 1;
    sub_100009670(v18, v13, v14 & 1);

    _ConditionalContent<>.init(storage:)();
    sub_10004DED0(&qword_10015B6E8, &unk_100110F60);
    sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
    sub_100040FEC();
    sub_100040F70();
    goto LABEL_9;
  }

  if (a2 >> 6)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 543516481;
    v15._object = 0xE400000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
    *&v28 = a1;
    sub_100058918();
    v16 = BinaryInteger.formatted()();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

    v17._countAndFlagsBits = 0x6E756F7920726F20;
    v17._object = 0xEB00000000726567;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    LocalizedStringKey.init(stringInterpolation:)();
    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v19;
    v22 = v21 & 1;
    sub_100009670(v18, v19, v21 & 1);

    sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
    sub_100040F70();
    _ConditionalContent<>.init(storage:)();
    sub_10004DED0(&qword_10015B6E8, &unk_100110F60);
    sub_100040FEC();
LABEL_9:
    _ConditionalContent<>.init(storage:)();
    sub_100009680(v18, v20, v22);

    v24 = v28;
    v25 = v29;
    v26 = v30;
    v27 = v31;
    goto LABEL_10;
  }

  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  sub_10005887C(v28, *(&v28 + 1), v29);
  sub_10005887C(v28, *(&v28 + 1), v29);
  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  _ConditionalContent<>.init(storage:)();
  sub_100041078(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, SHIBYTE(v30));
  sub_10004DED0(&qword_10015B6E8, &unk_100110F60);
  sub_100040FEC();
  _ConditionalContent<>.init(storage:)();
  sub_1000588D4(v28, *(&v28 + 1), v29);
  sub_1000410CC(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, SHIBYTE(v30));
  result = sub_1000588D4(v28, *(&v28 + 1), v29);
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
LABEL_10:
  *a3 = v24;
  *(a3 + 16) = v25;
  *(a3 + 32) = v26;
  *(a3 + 34) = v27;
  return result;
}

uint64_t sub_10005879C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B6C0, &qword_100110F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005880C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B6C0, &qword_100110F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005887C(uint64_t a1, uint64_t a2, char a3)
{
  sub_100009670(a1, a2, a3 & 1);
}

uint64_t sub_1000588B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    return a8(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
    return a7(a1, a2, a3, a4, a5, (a5 >> 8) & 1);
  }
}

uint64_t sub_1000588D4(uint64_t a1, uint64_t a2, char a3)
{
  sub_100009680(a1, a2, a3 & 1);
}

unint64_t sub_100058918()
{
  result = qword_10015B708;
  if (!qword_10015B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B708);
  }

  return result;
}

uint64_t sub_100058988@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v12 = *v1;
  v13 = v1[1];
  sub_10002EAE0();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7 & 1;
  View.badge(_:)();
  sub_100009680(v4, v6, v8);

  v9 = (a1 + *(sub_10004DED0(&qword_10015B720, &qword_100111018) + 36));
  v10 = v9 + *(sub_10004DED0(&qword_10015B728, &qword_100111020) + 28);
  static BadgeProminence.increased.getter();
  result = swift_getKeyPath();
  *v9 = result;
  return result;
}

unint64_t sub_100058A98()
{
  result = qword_10015B730;
  if (!qword_10015B730)
  {
    sub_100052374(&qword_10015B720, &qword_100111018);
    swift_getOpaqueTypeConformance2();
    sub_100058B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B730);
  }

  return result;
}

unint64_t sub_100058B54()
{
  result = qword_10015B738;
  if (!qword_10015B738)
  {
    sub_100052374(&qword_10015B728, &qword_100111020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B738);
  }

  return result;
}

uint64_t sub_100058BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004DED0(&qword_10015B740, &qword_100111160);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = v1[1];
  v15[0] = *v1;
  v15[1] = v8;
  v15[2] = v1[2];
  v14 = v15;
  v13 = v15;
  sub_100042EB8();
  Label.init(title:icon:)();
  sub_1000525A0(&qword_10015B750, &qword_10015B740, &qword_100111160);
  View.badge(_:)();
  (*(v4 + 8))(v7, v3);
  v9 = (a1 + *(sub_10004DED0(&qword_10015B758, &unk_100111168) + 36));
  v10 = v9 + *(sub_10004DED0(&qword_10015B728, &qword_100111020) + 28);
  static BadgeProminence.increased.getter();
  result = swift_getKeyPath();
  *v9 = result;
  return result;
}

uint64_t sub_100058DDC(uint64_t a1)
{
  v2 = type metadata accessor for BadgeProminence();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.badgeProminence.setter();
}

unint64_t sub_100058EA4()
{
  result = qword_10015B760;
  if (!qword_10015B760)
  {
    sub_100052374(&qword_10015B758, &unk_100111168);
    sub_100052374(&qword_10015B740, &qword_100111160);
    sub_1000525A0(&qword_10015B750, &qword_10015B740, &qword_100111160);
    swift_getOpaqueTypeConformance2();
    sub_1000525A0(&qword_10015B738, &qword_10015B728, &qword_100111020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B760);
  }

  return result;
}

uint64_t sub_100059010@<X0>(uint64_t *a1@<X8>)
{
  static FamilySettingsFactory.sharedProvider.getter();
  sub_100018544(v8, v8[3]);
  v3 = (v1 + *(type metadata accessor for PrimarySettingsListFamilyLinkModel() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = dispatch thunk of FamilySettingsViewsProtocol.familyRow(for:info:)();
  result = sub_10000665C(v8);
  *a1 = v6;
  return result;
}

uint64_t sub_1000590B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  sub_10002EAE0();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Color.blue.getter();
  v8 = Text.foregroundStyle<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100009680(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

double sub_1000591B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v4 == 255)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 == 255)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_10005950C(*a1, *(a1 + 8), v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  result = *&v12;
  *(a2 + 56) = v12;
  return result;
}

uint64_t sub_10005925C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_10004DED0(&qword_10015B7F8, &qword_100111348);
  sub_10005931C();
  return Label.init(title:icon:)();
}

unint64_t sub_10005931C()
{
  result = qword_10015B800;
  if (!qword_10015B800)
  {
    sub_100052374(&qword_10015B7F8, &qword_100111348);
    sub_1000593A8();
    sub_1000594B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B800);
  }

  return result;
}

unint64_t sub_1000593A8()
{
  result = qword_10015B808;
  if (!qword_10015B808)
  {
    sub_100052374(&qword_10015B810, &qword_100111350);
    sub_100059434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B808);
  }

  return result;
}

unint64_t sub_100059434()
{
  result = qword_10015B818;
  if (!qword_10015B818)
  {
    sub_100052374(&qword_10015B820, &qword_100111358);
    sub_100042EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B818);
  }

  return result;
}

unint64_t sub_1000594B8()
{
  result = qword_10015B828;
  if (!qword_10015B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B828);
  }

  return result;
}

id sub_10005950C(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100039F14(result, a2, a3);
  }

  return result;
}

unint64_t sub_100059520()
{
  result = qword_10015B830;
  if (!qword_10015B830)
  {
    sub_100052374(&qword_10015B838, &unk_100111360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B830);
  }

  return result;
}

uint64_t sub_1000595C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015B918, &qword_100111400);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = (&v51 - v8);
  v9 = *(a1 + 16);
  if (v9 == 255)
  {
    sub_100059C60(&v80);
  }

  else
  {
    v11 = *a1;
    v10 = *(a1 + 8);
    sub_10005950C(*a1, v10, *(a1 + 16));
    sub_100039F14(v11, v10, v9);
    LODWORD(v54) = static Edge.Set.top.getter();
    v12 = type metadata accessor for PrimarySettingsListFollowUpHeader();
    v13 = v12[8];
    sub_10004DED0(&qword_10015B848, &qword_100111378);
    ScaledMetric.wrappedValue.getter();
    v14 = *(a1 + v12[9]);
    EdgeInsets.init(_all:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    LOBYTE(v71) = 0;
    v53 = static Edge.Set.leading.getter();
    v23 = *(a1 + v12[7]);
    EdgeInsets.init(_all:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    LOBYTE(v80) = 0;
    v52 = static Edge.Set.all.getter();
    v32 = v12[5];
    sub_10004DED0(&qword_10015B840, &qword_100111370);
    ScaledMetric.wrappedValue.getter();
    v33 = *&v80 + *(a1 + v12[6]);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_100054F18(v11, v10, v9);
    *&v57[6] = v78[4];
    *&v57[22] = v78[5];
    *&v57[38] = v79;
    *&v71 = v11;
    *(&v71 + 1) = v10;
    LOBYTE(v72) = v9;
    BYTE8(v72) = v54;
    *&v73 = v16;
    *(&v73 + 1) = v18;
    *&v74 = v20;
    *(&v74 + 1) = v22;
    LOBYTE(v75) = 0;
    BYTE8(v75) = v53;
    *&v76 = v25;
    *(&v76 + 1) = v27;
    *&v77 = v29;
    *(&v77 + 1) = v31;
    LOBYTE(v78[0]) = 0;
    BYTE1(v78[0]) = v52;
    *(v78 + 2) = *v57;
    *(&v78[1] + 2) = *&v57[16];
    *(&v78[2] + 2) = *&v57[32];
    *&v78[3] = *(&v79 + 1);
    nullsub_1(&v71, v34);
    v88 = v78[1];
    v89 = v78[2];
    v90 = *&v78[3];
    v84 = v75;
    v85 = v76;
    v86 = v77;
    v87 = v78[0];
    v80 = v71;
    v81 = v72;
    v82 = v73;
    v83 = v74;
  }

  v35 = static HorizontalAlignment.leading.getter();
  v36 = v55;
  *v55 = v35;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  v37 = sub_10004DED0(&qword_10015B920, &qword_100111408);
  v54 = &v51;
  v38 = *(v37 + 44);
  __chkstk_darwin(v37);
  *(&v51 - 2) = a1;
  sub_10004DED0(&qword_10015B0B8, &qword_100111410);
  sub_1000525A0(&qword_10015B0C0, &qword_10015B0B8, &qword_100111410);
  LabelGroup.init(content:)();
  v65 = v87;
  v66 = v88;
  v67 = v89;
  v68 = v90;
  v63 = v85;
  v64 = v86;
  v58 = v80;
  v59 = v81;
  v61 = v83;
  v62 = v84;
  v60 = v82;
  v39 = v56;
  sub_100059CA0(v36, v56, &qword_10015B918, &qword_100111400);
  v40 = v65;
  v69[8] = v66;
  v69[9] = v67;
  v69[4] = v62;
  v69[5] = v63;
  v41 = v63;
  v42 = v64;
  v69[6] = v64;
  v69[7] = v65;
  v43 = v58;
  v44 = v59;
  v69[0] = v58;
  v69[1] = v59;
  v45 = v62;
  v46 = v61;
  v47 = v60;
  v69[2] = v60;
  v69[3] = v61;
  v48 = v67;
  *(a2 + 128) = v66;
  *(a2 + 144) = v48;
  *(a2 + 64) = v45;
  *(a2 + 80) = v41;
  *(a2 + 96) = v42;
  *(a2 + 112) = v40;
  *a2 = v43;
  *(a2 + 16) = v44;
  v70 = v68;
  *(a2 + 160) = v68;
  *(a2 + 32) = v47;
  *(a2 + 48) = v46;
  v49 = sub_10004DED0(&qword_10015B928, &qword_100111418);
  sub_100059CA0(v39, a2 + *(v49 + 48), &qword_10015B918, &qword_100111400);
  sub_100059CA0(v69, &v71, &qword_10015B930, &qword_100111420);
  sub_1000068B0(v36, &qword_10015B918, &qword_100111400);
  sub_1000068B0(v39, &qword_10015B918, &qword_100111400);
  v78[1] = v66;
  v78[2] = v67;
  v75 = v62;
  v76 = v63;
  *&v78[3] = v68;
  v77 = v64;
  v78[0] = v65;
  v71 = v58;
  v72 = v59;
  v73 = v60;
  v74 = v61;
  return sub_1000068B0(&v71, &qword_10015B930, &qword_100111420);
}

uint64_t sub_100059AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1[3];
  v22 = a1[4];
  sub_10002EAE0();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21 = a1[5];
  v23 = a1[6];

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v14 = v8 & 1;
  v19 = v8 & 1;
  v16 = v15 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;
  sub_100009670(v4, v6, v14);

  sub_100009670(v11, v13, v16);

  sub_100009680(v11, v13, v16);

  sub_100009680(v4, v6, v19);
}

uint64_t sub_100059C0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.top.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10004DED0(&qword_10015B910, &qword_1001113F8);
  return sub_1000595C8(v1, a1 + *(v3 + 44));
}

double sub_100059C60(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_100059CA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100059D24@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  v8 = v1[1];
  sub_10002EAE0();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_100059DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v6 = *(a1 + 16);
  *(a2 + 16) = v6;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  sub_10005950C(v3, v2, v6);
}

unint64_t sub_100059E10()
{
  result = qword_10015BA88;
  if (!qword_10015BA88)
  {
    sub_100052374(&qword_10015BA80, &qword_1001115E0);
    sub_100038EA0();
    sub_10003900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA88);
  }

  return result;
}

uint64_t sub_100059E9C()
{
  sub_10002A748(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100059EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v7 = *(a1 + 16);
  *(a2 + 16) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  sub_100039F14(v3, v2, v7);
}

uint64_t sub_100059F48(uint64_t a1)
{
  sub_10002A748(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  v3 = *(v1 + 48);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100059F98@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_100059FAC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10005A04C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  v25 = a1[3];
  v26 = a1[4];
  sub_10002EAE0();

  v5 = Text.init<A>(_:)();
  v22 = v6;
  v23 = v5;
  v21 = v7;
  v24 = v8;

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.footnote.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  LOBYTE(v3) = v17;
  v19 = v18;

  sub_100009680(v9, v11, v13 & 1);

  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v3 & 1;
  *(a2 + 56) = v19;
  sub_100009670(v23, v22, v21 & 1);

  sub_100009670(v14, v16, v3 & 1);

  sub_100009680(v14, v16, v3 & 1);

  sub_100009680(v23, v22, v21 & 1);
}

uint64_t sub_10005A1E0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_10004DED0(&qword_10015B0B8, &qword_100111410);
  sub_1000525A0(&qword_10015B0C0, &qword_10015B0B8, &qword_100111410);
  sub_100042EB8();
  return Label.init(title:icon:)();
}

uint64_t sub_10005A2D8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_10004DED0(&qword_10015BBA8, &qword_100111990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v10 = sub_10004DED0(&qword_10015BBB0, &qword_100111998);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  swift_allocBox();
  v16 = v15;
  v17 = *(v1 + 40);
  type metadata accessor for PrimarySettingsListToggleState();
  v21[2] = sub_100057930();

  Bindable<A>.init(wrappedValue:)();
  (*(v3 + 16))(v7, v16, v2);
  Bindable.projectedValue.getter();
  v18 = *(v3 + 8);
  v18(v7, v2);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v18(v9, v2);
  v25 = v21[1];
  sub_10004DED0(&qword_10015B740, &qword_100111160);
  sub_1000525A0(&qword_10015B750, &qword_10015B740, &qword_100111160);
  Toggle.init(isOn:label:)();
  swift_getKeyPath();
  v26 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v26) = *(v17 + 16);
  sub_1000525A0(&qword_10015BBB8, &qword_10015BBB0, &qword_100111998);

  v19 = v22;
  View.onChange<A>(of:initial:_:)();

  (*(v23 + 8))(v14, v19);
}

uint64_t sub_10005A688(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_10004DED0(&qword_10015BBA8, &qword_100111990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = *a2;
  v9 = swift_projectBox();
  (*(v4 + 16))(v7, v9, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v11 = *(v14 + 24);
  v10 = *(v14 + 32);

  v11(v8);
}

id sub_10005A7F4()
{
  v1 = OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver;
  swift_beginAccess();
  sub_10005AF3C(v0 + v1, &v4);
  if (v5)
  {
    sub_10001EFEC(&v4, &v6);
    sub_100018544(&v6, *(&v7 + 1));
    [v0 na_removeNotificationBlockObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    sub_10000665C(&v6);
  }

  else
  {
    sub_10005AED4(&v4);
  }

  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_10005AE64(&v6, v0 + v1);
  swift_endAccess();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DefaultsObservingPrimarySettingsListItemProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005A9A4()
{
  v1 = *&v0[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults];
  v2 = *&v0[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey];
  v3 = *&v0[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey + 8];
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10005AE5C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005AC08;
  aBlock[3] = &unk_10014E268;
  v6 = _Block_copy(aBlock);

  v7 = [v0 na_addNotificationBlockObserverForObject:v1 keyPath:v4 options:1 usingBlock:v6];

  _Block_release(v6);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsObserver;
  swift_beginAccess();
  sub_10005AE64(aBlock, &v0[v8]);
  return swift_endAccess();
}

void sub_10005AB00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_userDefaults);
    v3 = Strong + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey;
    v4 = *(Strong + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey);
    v5 = *(v3 + 8);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v2 BOOLForKey:v6];

    v8 = OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow;
    if (v7 != v1[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow])
    {
      v9 = *&v1[OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_invalidator];
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
    }

    v1[v8] = v7;
  }
}

uint64_t sub_10005AC08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[3] = swift_getObjectType();
  v7[0] = a2;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v4(v7, v5);

  return sub_10000665C(v7);
}

uint64_t sub_10005AD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_shouldShow) == 1)
  {
    v4 = *v2 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    sub_100029920(v5, v6, v7, v8, v9);
    sub_10005AFAC(a1, a2);
    swift_setDeallocating();
    return sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  }

  else
  {
    v13 = type metadata accessor for PrimarySettingsListItemModel();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_10005AE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C8D0, &unk_100116750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AED4(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015C8D0, &unk_100116750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005AF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C8D0, &unk_100116750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrimarySettingsListItemViewType();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v40[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 32);
  v41 = *(v2 + 16);
  v42 = v9;
  v43 = *(v2 + 48);
  v10 = sub_100027320();
  v11 = sub_100062250(0, v10, a1);

  if ((v11 & 1) == 0)
  {
    v23 = sub_100027320();
    v24 = sub_100062250(1, v23, a1);

    v25 = v24 & 1;
    v26 = sub_100029F88();
    if (v28 >= 3u)
    {
      if (!(v26 | v27))
      {
        *v8 = sub_10002A770(v26);
        v36 = 8;
        goto LABEL_13;
      }
    }

    else
    {
      sub_10002A748(v26, v27, v28);
    }

    v29 = sub_100029F88();
    v31 = v30;
    v33 = v32;
    v34 = sub_10002A770(v29);
    *v8 = v29;
    *(v8 + 1) = v31;
    v8[16] = v33;
    *(v8 + 3) = v34;
    v36 = 32;
LABEL_13:
    *&v8[v36] = v35;
    swift_storeEnumTagMultiPayload();
    v37 = v42;
    *a2 = v41;
    *(a2 + 16) = v37;
    *(a2 + 32) = v43;
    v38 = type metadata accessor for PrimarySettingsListItemModel();
    sub_10002C3F0(v8, a2 + *(v38 + 20));
    *(a2 + *(v38 + 24)) = v25;
    (*(*(v38 - 8) + 56))(a2, 0, 1, v38);
    return sub_10002698C(&v41, v40);
  }

  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000659C(v12, qword_1001696D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40[0] = v16;
    *v15 = 136446210;
    v17 = sub_100026A58(v16);
    v19 = sub_100025CF0(v17, v18, v40);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Not including %{public}s due to being hidden.", v15, 0xCu);
    sub_10000665C(v16);
  }

  v20 = type metadata accessor for PrimarySettingsListItemModel();
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, 1, 1, v20);
}

uint64_t sub_10005B338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a1;
  v4 = sub_10004DED0(&qword_10015BDA8, &unk_100111BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for PrimarySettingsListSectionModel();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = *(v2 + 40);
  v20 = *(v19 + 16);
  if (v20)
  {
    v44 = v2;
    v45 = a2;
    v55 = &_swiftEmptyArrayStorage;
    v21 = type metadata accessor for LocalizedStringResource();
    v22 = *(v21 - 8);
    v23 = *(v22 + 56);
    v24 = v22 + 56;
    v48 = v21;
    v49 = v18;
    v23(v18, 1, 1);
    v47 = 0;
    v50 = 0;
    v25 = v19 + 32;
    v26 = (v46 + 48);
    v27 = (v24 - 8);
    do
    {
      sub_10000B270(v25, v52);
      v28 = v53;
      v29 = v54;
      sub_100018544(v52, v53);
      sub_10006041C(v51, v28, v29);
      sub_10000665C(v52);
      if ((*v26)(v7, 1, v8) == 1)
      {
        sub_1000068B0(v7, &qword_10015BDA8, &unk_100111BF0);
      }

      else
      {
        sub_10002C928(v7, v11);
        if (!v50)
        {
          v30 = *(v11 + 4);
          v47 = *(v11 + 3);
          v50 = v30;
        }

        v31 = v49;
        sub_10002C98C(v49, v16);
        if ((*v27)(v16, 1, v48) == 1)
        {
          sub_1000068B0(v31, &unk_10015FB70, &unk_100112010);
          sub_1000068B0(v16, &unk_10015FB70, &unk_100112010);
          sub_10002C98C(&v11[*(v8 + 24)], v31);
        }

        else
        {
          sub_1000068B0(v16, &unk_10015FB70, &unk_100112010);
        }

        v32 = *&v11[*(v8 + 28)];

        sub_10002C9FC(v33);
        sub_10002CA38(v11);
      }

      v25 += 40;
      --v20;
    }

    while (v20);
    v34 = v44;
    v35 = v45;
    v36 = *(v44 + 16);
    v37 = *(v44 + 24);
    v38 = v55;
    *v45 = v36;
    v35[1] = v37;
    v39 = *(v34 + 32);
    *(v35 + 16) = v39;
    v40 = v49;
    v41 = v50;
    v35[3] = v47;
    v35[4] = v41;
    sub_10002CA94(v40, v35 + *(v8 + 24));
    *(v35 + *(v8 + 28)) = v38;
    (*(v46 + 56))(v35, 0, 1, v8);
    return sub_100025974(v36, v37, v39);
  }

  else
  {
    v43 = *(v46 + 56);

    return v43(a2, 1, 1, v8);
  }
}

uint64_t sub_10005B76C()
{
  sub_100025CD8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_10005B7B0()
{
  v1 = *(*v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10000B270(v3, v7);
      v4 = v8;
      v5 = v9;
      sub_100018544(v7, v8);
      sub_10005FEBC(v4, v5);
      result = sub_10000665C(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10005B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for OSSignpostError();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  __chkstk_darwin(v5);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v88 = &v80 - v15;
  __chkstk_darwin(v14);
  v89 = &v80 - v16;
  v17 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v80 - v19;
  v21 = type metadata accessor for PrimarySettingsListItemModel();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 40);
  v27 = *(v26 + 16);
  if (v27)
  {
    v82 = v13;
    v83 = v8;
    v90 = v2;
    v91 = v9;
    v87 = a2;
    v28 = v26 + 32;
    v92 = v23;
    v29 = (v23 + 48);
    v30 = &_swiftEmptyArrayStorage;
    do
    {
      sub_10000B270(v28, v93);
      v31 = v94;
      v32 = v95;
      sub_100018544(v93, v94);
      sub_10005ECBC(a1, v31, v32);
      sub_10000665C(v93);
      if ((*v29)(v20, 1, v21) == 1)
      {
        sub_10002C8C0(v20);
      }

      else
      {
        sub_10002C634(v20, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_10002C850(0, v30[2] + 1, 1, v30);
        }

        v34 = v30[2];
        v33 = v30[3];
        v35 = v92;
        if (v34 >= v33 >> 1)
        {
          v36 = sub_10002C850(v33 > 1, v34 + 1, 1, v30);
          v35 = v92;
          v30 = v36;
        }

        v30[2] = v34 + 1;
        sub_10002C634(v25, v30 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 9) * v34);
      }

      v28 += 40;
      --v27;
    }

    while (v27);
    v37 = v90;
    if (*(v90 + 33))
    {
      v81 = sub_10002E11C();
      v39 = v38;
      if (qword_10015AAE0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for OSSignposter();
      v41 = sub_10000659C(v40, qword_100169718);

      v42 = v89;
      static OSSignpostID.exclusive.getter();
      v43 = OSSignposter.logHandle.getter();
      v44 = static os_signpost_type_t.begin.getter();

      v45 = OS_os_log.signpostsEnabled.getter();
      v46 = v83;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v80 = v41;
        v49 = v48;
        v93[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_100025CF0(v81, v39, v93);
        v50 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v50, "StaticPrimarySettingsListSectionProvider.produceListSectionModel(with:) Sorting", "Section Provider: %s", v47, 0xCu);
        sub_10000665C(v49);
      }

      v51 = v91;
      (*(v91 + 16))(v88, v42, v46);
      v52 = type metadata accessor for OSSignpostIntervalState();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      v55 = *(v51 + 8);
      v91 = v51 + 8;
      v55(v42, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1000BA19C(v30);
      }

      v56 = v30[2];
      v93[0] = v30 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v93[1] = v56;
      sub_10002E75C(v93);

      v57 = OSSignposter.logHandle.getter();
      v58 = v82;
      OSSignpostIntervalState.signpostID.getter();
      v59 = static os_signpost_type_t.end.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {

        v60 = v84;
        checkForErrorAndConsumeState(state:)();

        v62 = v85;
        v61 = v86;
        if ((*(v85 + 88))(v60, v86) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v63 = 0;
          v64 = 0;
          v92 = "[Error] Interval already ended";
        }

        else
        {
          (*(v62 + 8))(v60, v61);
          v92 = "Section Provider: %s";
          v64 = 2;
          v63 = 1;
        }

        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v93[0] = v69;
        *v68 = v64;
        *(v68 + 1) = v63;
        *(v68 + 2) = 2080;
        v70 = sub_100025CF0(v81, v39, v93);

        *(v68 + 4) = v70;
        v71 = v82;
        v72 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, v59, v72, "StaticPrimarySettingsListSectionProvider.produceListSectionModel(with:) Sorting", v92, v68, 0xCu);
        sub_10000665C(v69);

        v55(v71, v83);
        v37 = v90;
      }

      else
      {

        v55(v58, v46);
      }
    }

    v73 = *(v37 + 16);
    v74 = *(v37 + 24);
    v75 = *(v37 + 32);
    v76 = type metadata accessor for PrimarySettingsListSectionModel();
    v77 = *(v76 + 24);
    v78 = type metadata accessor for LocalizedStringResource();
    v79 = v87;
    (*(*(v78 - 8) + 56))(v87 + v77, 1, 1, v78);
    *v79 = v73;
    *(v79 + 8) = v74;
    *(v79 + 16) = v75;
    *(v79 + 24) = 0;
    *(v79 + 32) = 0;
    *(v79 + *(v76 + 28)) = v30;
    (*(*(v76 - 8) + 56))(v79, 0, 1, v76);
    return sub_100025974(v73, v74, v75);
  }

  else
  {
    v65 = type metadata accessor for PrimarySettingsListSectionModel();
    v66 = *(*(v65 - 8) + 56);

    return v66(a2, 1, 1, v65);
  }
}

uint64_t sub_10005C0E8()
{
  v1 = *(*v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10000B270(v3, v7);
      v4 = v8;
      v5 = v9;
      sub_100018544(v7, v8);
      sub_10005E75C(v4, v5);
      result = sub_10000665C(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10005C190(unint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v161 = a4;
  v159 = a1;
  v7 = type metadata accessor for PrimarySettingsListItemViewType();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v182 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v155 - v12;
  v14 = __chkstk_darwin(v11);
  v173 = &v155 - v15;
  __chkstk_darwin(v14);
  v172 = &v155 - v16;
  v17 = type metadata accessor for PrimarySettingsListItemModel();
  v169 = *(v17 - 8);
  v18 = *(v169 + 64);
  v19 = __chkstk_darwin(v17);
  v163 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v178 = &v155 - v22;
  v23 = __chkstk_darwin(v21);
  v183 = &v155 - v24;
  v25 = __chkstk_darwin(v23);
  v181 = &v155 - v26;
  v27 = __chkstk_darwin(v25);
  v175 = &v155 - v28;
  v29 = __chkstk_darwin(v27);
  v171 = &v155 - v30;
  v31 = __chkstk_darwin(v29);
  v157 = &v155 - v32;
  result = __chkstk_darwin(v31);
  v156 = &v155 - v34;
  v170 = a3;
  v35 = *(a3 + 1);
  if (v35 < 1)
  {
    v37 = &_swiftEmptyArrayStorage;
LABEL_192:
    v13 = *v159;
    if (!*v159)
    {
      goto LABEL_231;
    }

    a3 = v37;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
LABEL_195:
      v188 = result;
      v151 = *(result + 16);
      if (v151 >= 2)
      {
        while (*v170)
        {
          v152 = *(result + 16 * v151);
          a3 = result;
          v153 = *(result + 16 * (v151 - 1) + 40);
          sub_10005D330(*v170 + *(v169 + 72) * v152, *v170 + *(v169 + 72) * *(result + 16 * (v151 - 1) + 32), *v170 + *(v169 + 72) * v153, v13);
          if (v5)
          {
          }

          if (v153 < v152)
          {
            goto LABEL_218;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10005E064(a3);
          }

          if (v151 - 2 >= *(a3 + 2))
          {
            goto LABEL_219;
          }

          v154 = &a3[16 * v151];
          *v154 = v152;
          *(v154 + 1) = v153;
          v188 = a3;
          sub_10005DFD8(v151 - 1);
          result = v188;
          v151 = *(v188 + 16);
          if (v151 <= 1)
          {
          }
        }

        goto LABEL_229;
      }
    }

LABEL_225:
    result = sub_10005E064(a3);
    goto LABEL_195;
  }

  v36 = 0;
  v37 = &_swiftEmptyArrayStorage;
  v179 = v7;
  v180 = v17;
LABEL_4:
  v164 = v37;
  v160 = v36;
  if (v36 + 1 >= v35)
  {
    v47 = v36 + 1;
    v72 = v161;
    goto LABEL_72;
  }

  v174 = v35;
  v158 = v5;
  v38 = *v170;
  v39 = *(v169 + 72);
  a3 = (*v170 + v39 * (v36 + 1));
  v40 = v156;
  sub_10002E9A8(a3, v156, type metadata accessor for PrimarySettingsListItemModel);
  v41 = v38 + v39 * v36;
  v42 = v157;
  sub_10002E9A8(v41, v157, type metadata accessor for PrimarySettingsListItemModel);
  LODWORD(v168) = sub_100057450();
  sub_10002E888(v42, type metadata accessor for PrimarySettingsListItemModel);
  result = sub_10002E888(v40, type metadata accessor for PrimarySettingsListItemModel);
  v43 = v160 + 2;
  v177 = v39;
  v44 = v38 + v39 * (v160 + 2);
  while (1)
  {
    v47 = v174;
    if (v174 == v43)
    {
      break;
    }

    v48 = v171;
    sub_10002E9A8(v44, v171, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(a3, v175, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(v48 + *(v17 + 20), v172, type metadata accessor for PrimarySettingsListItemViewType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v59 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
        }

        else
        {
          v59 = type metadata accessor for PrimarySettingsListItemViewType;
        }

        sub_10002E888(v172, v59);
        v176 = 0;
        v52 = 0;
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v60 = *v172;
        v61 = *(v172 + 8);
        v52 = *(v172 + 32);
        v176 = *(v172 + 24);
        v62 = *(v172 + 40);
        sub_10002A748(v60, v61, *(v172 + 16));
      }

      else
      {
        v52 = *(v172 + 8);
        v176 = *v172;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          v50 = *v172;
          v51 = *(v172 + 8);
          v52 = *(v172 + 32);
          v176 = *(v172 + 24);
          sub_10002A748(v50, v51, *(v172 + 16));
          goto LABEL_28;
        }

LABEL_20:
        v56 = *v172;
        v57 = *(v172 + 8);
        v52 = *(v172 + 32);
        v176 = *(v172 + 24);
        v58 = *(v172 + 48);
        sub_10002A748(v56, v57, *(v172 + 16));
LABEL_21:

        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 8)
      {
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v53 = *v172;
        v54 = *(v172 + 8);
        v52 = *(v172 + 32);
        v176 = *(v172 + 24);
        v55 = *(v172 + 48);
        sub_100054F18(v53, v54, *(v172 + 16));
        goto LABEL_21;
      }

      v63 = *v172;
      v64 = *(v172 + 8);
      v52 = *(v172 + 32);
      v176 = *(v172 + 24);
      sub_100054F18(v63, v64, *(v172 + 16));
    }

LABEL_28:
    sub_10002E9A8(v175 + *(v17 + 20), v173, type metadata accessor for PrimarySettingsListItemViewType);
    v65 = swift_getEnumCaseMultiPayload();
    if (v65 <= 4)
    {
      if (v65 <= 1)
      {
        if (v65)
        {
          v70 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
        }

        else
        {
          v70 = type metadata accessor for PrimarySettingsListItemViewType;
        }

        sub_10002E888(v173, v70);
        v66 = 0;
        v67 = 0;
        if (!v52)
        {
LABEL_53:
          if (v67)
          {
          }

          v46 = 0;
          goto LABEL_7;
        }
      }

      else if (v65 == 2)
      {
        v66 = *(v173 + 24);
        v67 = *(v173 + 32);
        v71 = *(v173 + 40);
        sub_10002A748(*v173, *(v173 + 8), *(v173 + 16));

        if (!v52)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v66 = *v173;
        v67 = *(v173 + 8);
        if (!v52)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      if (v65 <= 7)
      {
        if (v65 == 5 || v65 == 6)
        {
          v66 = *(v173 + 24);
          v67 = *(v173 + 32);
          sub_10002A748(*v173, *(v173 + 8), *(v173 + 16));
          if (!v52)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }

LABEL_41:
        v66 = *(v173 + 24);
        v67 = *(v173 + 32);
        v69 = *(v173 + 48);
        sub_10002A748(*v173, *(v173 + 8), *(v173 + 16));
LABEL_42:

        if (!v52)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if (v65 == 8)
      {
        goto LABEL_41;
      }

      if (v65 == 9)
      {
        v66 = *(v173 + 24);
        v67 = *(v173 + 32);
        v68 = *(v173 + 48);
        sub_100054F18(*v173, *(v173 + 8), *(v173 + 16));
        goto LABEL_42;
      }

      v66 = *(v173 + 24);
      v67 = *(v173 + 32);
      sub_100054F18(*v173, *(v173 + 8), *(v173 + 16));
      if (!v52)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v67)
    {
      v186 = v176;
      v187 = v52;
      v184 = v66;
      v185 = v67;
      sub_10002EAE0();
      v45 = StringProtocol.localizedStandardCompare<A>(_:)();

      v46 = v45 == -1;
    }

    else
    {

      v46 = 1;
    }

LABEL_7:
    v17 = v180;
    sub_10002E888(v175, type metadata accessor for PrimarySettingsListItemModel);
    result = sub_10002E888(v171, type metadata accessor for PrimarySettingsListItemModel);
    ++v43;
    v44 += v177;
    a3 += v177;
    if ((v168 ^ v46))
    {
      v47 = v43 - 1;
      break;
    }
  }

  v5 = v158;
  v72 = v161;
  v36 = v160;
  if (v168)
  {
    if (v47 < v160)
    {
      goto LABEL_222;
    }

    if (v160 < v47)
    {
      v73 = v177 * (v47 - 1);
      v74 = v47 * v177;
      v174 = v47;
      v75 = v160;
      v76 = v160 * v177;
      do
      {
        if (v75 != --v47)
        {
          v77 = *v170;
          if (!*v170)
          {
            goto LABEL_228;
          }

          a3 = (v77 + v76);
          sub_10002C634(v77 + v76, v163);
          if (v76 < v73 || a3 >= v77 + v74)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_10002C634(v163, v77 + v73);
          v72 = v161;
        }

        ++v75;
        v73 -= v177;
        v74 -= v177;
        v76 += v177;
      }

      while (v75 < v47);
      v5 = v158;
      v17 = v180;
      v36 = v160;
      v47 = v174;
    }
  }

LABEL_72:
  v78 = *(v170 + 1);
  if (v47 >= v78)
  {
    goto LABEL_81;
  }

  if (__OFSUB__(v47, v36))
  {
    goto LABEL_221;
  }

  if (v47 - v36 >= v72)
  {
LABEL_81:
    a3 = v47;
    if (v47 < v36)
    {
      goto LABEL_220;
    }

    goto LABEL_82;
  }

  if (__OFADD__(v36, v72))
  {
    goto LABEL_223;
  }

  if (v36 + v72 >= v78)
  {
    a3 = *(v170 + 1);
  }

  else
  {
    a3 = (v36 + v72);
  }

  if (a3 < v36)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  if (v47 == a3)
  {
    goto LABEL_81;
  }

  v158 = v5;
  v127 = *v170;
  v128 = *(v169 + 72);
  v129 = *v170 + v128 * (v47 - 1);
  v176 = -v128;
  v177 = v127;
  v130 = v36 - v47;
  v162 = v128;
  v131 = v127 + v47 * v128;
  v165 = a3;
  while (2)
  {
    v174 = v47;
    v166 = v131;
    v132 = v131;
    v167 = v130;
    v168 = v129;
LABEL_135:
    v133 = v181;
    sub_10002E9A8(v132, v181, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(v129, v183, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002E9A8(v133 + *(v17 + 20), v13, type metadata accessor for PrimarySettingsListItemViewType);
    v134 = swift_getEnumCaseMultiPayload();
    if (v134 <= 4)
    {
      if (v134 <= 1)
      {
        if (v134)
        {
          v139 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
        }

        else
        {
          v139 = type metadata accessor for PrimarySettingsListItemViewType;
        }

        sub_10002E888(v13, v139);
        v135 = 0;
        v136 = 0;
      }

      else if (v134 == 2)
      {
        v135 = *(v13 + 3);
        v136 = *(v13 + 4);
        v140 = *(v13 + 5);
        sub_10002A748(*v13, *(v13 + 1), v13[16]);
      }

      else
      {
        v135 = *v13;
        v136 = *(v13 + 1);
      }
    }

    else if (v134 > 7)
    {
      if (v134 == 8)
      {
        goto LABEL_146;
      }

      if (v134 == 9)
      {
        v135 = *(v13 + 3);
        v136 = *(v13 + 4);
        v137 = *(v13 + 6);
        sub_100054F18(*v13, *(v13 + 1), v13[16]);
        goto LABEL_147;
      }

      v135 = *(v13 + 3);
      v136 = *(v13 + 4);
      sub_100054F18(*v13, *(v13 + 1), v13[16]);
    }

    else
    {
      if (v134 == 5 || v134 == 6)
      {
        v135 = *(v13 + 3);
        v136 = *(v13 + 4);
        sub_10002A748(*v13, *(v13 + 1), v13[16]);
        goto LABEL_154;
      }

LABEL_146:
      v135 = *(v13 + 3);
      v136 = *(v13 + 4);
      v138 = *(v13 + 6);
      sub_10002A748(*v13, *(v13 + 1), v13[16]);
LABEL_147:
    }

LABEL_154:
    sub_10002E9A8(v183 + *(v17 + 20), v182, type metadata accessor for PrimarySettingsListItemViewType);
    v141 = swift_getEnumCaseMultiPayload();
    if (v141 <= 4)
    {
      if (v141 > 1)
      {
        if (v141 == 2)
        {
          v143 = *(v182 + 24);
          v142 = *(v182 + 32);
          v147 = *(v182 + 40);
          sub_10002A748(*v182, *(v182 + 8), *(v182 + 16));

          if (!v136)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v143 = *v182;
          v142 = *(v182 + 8);
          if (!v136)
          {
            goto LABEL_186;
          }
        }

        goto LABEL_178;
      }

      if (v141)
      {
        v146 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
      }

      else
      {
        v146 = type metadata accessor for PrimarySettingsListItemViewType;
      }

      sub_10002E888(v182, v146);
      v143 = 0;
      v142 = 0;
      if (v136)
      {
        goto LABEL_178;
      }

LABEL_186:
      if (v142)
      {
      }

      sub_10002E888(v183, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E888(v181, type metadata accessor for PrimarySettingsListItemModel);
      v17 = v180;
LABEL_133:
      v47 = v174 + 1;
      v129 = v168 + v162;
      v130 = v167 - 1;
      v131 = v166 + v162;
      a3 = v165;
      if ((v174 + 1) != v165)
      {
        continue;
      }

      v5 = v158;
      if (v165 < v160)
      {
        goto LABEL_220;
      }

LABEL_82:
      result = swift_isUniquelyReferenced_nonNull_native();
      v165 = a3;
      if (result)
      {
        v37 = v164;
      }

      else
      {
        result = sub_10005E15C(0, *(v164 + 2) + 1, 1, v164);
        v37 = result;
      }

      v80 = *(v37 + 2);
      v79 = *(v37 + 3);
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        result = sub_10005E15C((v79 > 1), v80 + 1, 1, v37);
        v37 = result;
      }

      *(v37 + 2) = v81;
      v82 = &v37[16 * v80];
      v83 = v165;
      *(v82 + 4) = v160;
      *(v82 + 5) = v83;
      v84 = *v159;
      if (!*v159)
      {
        goto LABEL_230;
      }

      if (v80)
      {
        while (2)
        {
          v85 = v81 - 1;
          if (v81 >= 4)
          {
            v90 = &v37[16 * v81 + 32];
            v91 = *(v90 - 64);
            v92 = *(v90 - 56);
            v96 = __OFSUB__(v92, v91);
            v93 = v92 - v91;
            if (v96)
            {
              goto LABEL_207;
            }

            v95 = *(v90 - 48);
            v94 = *(v90 - 40);
            v96 = __OFSUB__(v94, v95);
            v88 = v94 - v95;
            v89 = v96;
            if (v96)
            {
              goto LABEL_208;
            }

            v97 = &v37[16 * v81];
            v99 = *v97;
            v98 = *(v97 + 1);
            v96 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v96)
            {
              goto LABEL_210;
            }

            v96 = __OFADD__(v88, v100);
            v101 = v88 + v100;
            if (v96)
            {
              goto LABEL_213;
            }

            if (v101 >= v93)
            {
              v119 = &v37[16 * v85 + 32];
              v121 = *v119;
              v120 = *(v119 + 1);
              v96 = __OFSUB__(v120, v121);
              v122 = v120 - v121;
              if (v96)
              {
                goto LABEL_217;
              }

              if (v88 < v122)
              {
                v85 = v81 - 2;
              }
            }

            else
            {
LABEL_101:
              if (v89)
              {
                goto LABEL_209;
              }

              v102 = &v37[16 * v81];
              v104 = *v102;
              v103 = *(v102 + 1);
              v105 = __OFSUB__(v103, v104);
              v106 = v103 - v104;
              v107 = v105;
              if (v105)
              {
                goto LABEL_212;
              }

              v108 = &v37[16 * v85 + 32];
              v110 = *v108;
              v109 = *(v108 + 1);
              v96 = __OFSUB__(v109, v110);
              v111 = v109 - v110;
              if (v96)
              {
                goto LABEL_215;
              }

              if (__OFADD__(v106, v111))
              {
                goto LABEL_216;
              }

              if (v106 + v111 < v88)
              {
                goto LABEL_115;
              }

              if (v88 < v111)
              {
                v85 = v81 - 2;
              }
            }
          }

          else
          {
            if (v81 == 3)
            {
              v86 = *(v37 + 4);
              v87 = *(v37 + 5);
              v96 = __OFSUB__(v87, v86);
              v88 = v87 - v86;
              v89 = v96;
              goto LABEL_101;
            }

            v112 = &v37[16 * v81];
            v114 = *v112;
            v113 = *(v112 + 1);
            v96 = __OFSUB__(v113, v114);
            v106 = v113 - v114;
            v107 = v96;
LABEL_115:
            if (v107)
            {
              goto LABEL_211;
            }

            v115 = &v37[16 * v85];
            v117 = *(v115 + 4);
            v116 = *(v115 + 5);
            v96 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v96)
            {
              goto LABEL_214;
            }

            if (v118 < v106)
            {
              break;
            }
          }

          v123 = v85 - 1;
          if (v85 - 1 >= v81)
          {
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
            goto LABEL_224;
          }

          if (!*v170)
          {
            goto LABEL_227;
          }

          a3 = v37;
          v124 = *&v37[16 * v123 + 32];
          v125 = *&v37[16 * v85 + 40];
          sub_10005D330(*v170 + *(v169 + 72) * v124, *v170 + *(v169 + 72) * *&v37[16 * v85 + 32], *v170 + *(v169 + 72) * v125, v84);
          if (v5)
          {
          }

          if (v125 < v124)
          {
            goto LABEL_205;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10005E064(a3);
          }

          if (v123 >= *(a3 + 2))
          {
            goto LABEL_206;
          }

          v126 = &a3[16 * v123];
          *(v126 + 4) = v124;
          *(v126 + 5) = v125;
          v188 = a3;
          result = sub_10005DFD8(v85);
          v37 = v188;
          v81 = *(v188 + 16);
          if (v81 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v35 = *(v170 + 1);
      v36 = v165;
      v17 = v180;
      if (v165 >= v35)
      {
        goto LABEL_192;
      }

      goto LABEL_4;
    }

    break;
  }

  if (v141 > 7)
  {
    if (v141 == 8)
    {
      goto LABEL_167;
    }

    if (v141 == 9)
    {
      v143 = *(v182 + 24);
      v142 = *(v182 + 32);
      v144 = *(v182 + 48);
      sub_100054F18(*v182, *(v182 + 8), *(v182 + 16));
      goto LABEL_168;
    }

    v143 = *(v182 + 24);
    v142 = *(v182 + 32);
    sub_100054F18(*v182, *(v182 + 8), *(v182 + 16));
    if (!v136)
    {
      goto LABEL_186;
    }
  }

  else
  {
    if (v141 == 5 || v141 == 6)
    {
      v143 = *(v182 + 24);
      v142 = *(v182 + 32);
      sub_10002A748(*v182, *(v182 + 8), *(v182 + 16));
      if (!v136)
      {
        goto LABEL_186;
      }

      goto LABEL_178;
    }

LABEL_167:
    v143 = *(v182 + 24);
    v142 = *(v182 + 32);
    v145 = *(v182 + 48);
    sub_10002A748(*v182, *(v182 + 8), *(v182 + 16));
LABEL_168:

    if (!v136)
    {
      goto LABEL_186;
    }
  }

LABEL_178:
  if (!v142)
  {

    sub_10002E888(v183, type metadata accessor for PrimarySettingsListItemModel);
    result = sub_10002E888(v181, type metadata accessor for PrimarySettingsListItemModel);
    v17 = v180;
    if (!v177)
    {
      goto LABEL_226;
    }

LABEL_183:
    v149 = v178;
    sub_10002C634(v132, v178);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002C634(v149, v129);
    v129 += v176;
    v132 += v176;
    if (__CFADD__(v130++, 1))
    {
      goto LABEL_133;
    }

    goto LABEL_135;
  }

  v186 = v135;
  v187 = v136;
  v184 = v143;
  v185 = v142;
  sub_10002EAE0();
  v148 = StringProtocol.localizedStandardCompare<A>(_:)();

  sub_10002E888(v183, type metadata accessor for PrimarySettingsListItemModel);
  result = sub_10002E888(v181, type metadata accessor for PrimarySettingsListItemModel);
  v17 = v180;
  if (v148 != -1)
  {
    goto LABEL_133;
  }

  if (v177)
  {
    goto LABEL_183;
  }

LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
  return result;
}

uint64_t sub_10005D330(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v113 = a3;
  v7 = type metadata accessor for PrimarySettingsListItemViewType();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v101 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v101 - v16;
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  v20 = type metadata accessor for PrimarySettingsListItemModel();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v110 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v106 = &v101 - v25;
  v26 = __chkstk_darwin(v24);
  v112 = &v101 - v27;
  result = __chkstk_darwin(v26);
  v111 = &v101 - v29;
  v107 = *(v30 + 72);
  if (!v107)
  {
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v107 == -1)
  {
    goto LABEL_156;
  }

  v31 = v113 - a2;
  if (v113 - a2 == 0x8000000000000000 && v107 == -1)
  {
    goto LABEL_157;
  }

  v32 = (a2 - a1) / v107;
  v120 = a1;
  v119 = a4;
  v108 = v7;
  v109 = v20;
  if (v32 < v31 / v107)
  {
    v33 = v32 * v107;
    if (a4 < a1 || a1 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v106 = a4 + v33;
    v118 = a4 + v33;
    if (v33 < 1 || a2 >= v113)
    {
      goto LABEL_154;
    }

    while (1)
    {
      v36 = v111;
      sub_10002E9A8(a2, v111, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(a4, v112, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(v36 + *(v20 + 20), v19, type metadata accessor for PrimarySettingsListItemViewType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v47 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v47 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v19, v47);
          v110 = 0;
          v40 = 0;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v48 = *v19;
          v49 = *(v19 + 1);
          v40 = *(v19 + 4);
          v110 = *(v19 + 3);
          v50 = *(v19 + 5);
          sub_10002A748(v48, v49, v19[16]);
        }

        else
        {
          v40 = *(v19 + 1);
          v110 = *v19;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 7)
        {
          if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
          {
            v38 = *v19;
            v39 = *(v19 + 1);
            v40 = *(v19 + 4);
            v110 = *(v19 + 3);
            sub_10002A748(v38, v39, v19[16]);
            goto LABEL_39;
          }

LABEL_31:
          v44 = *v19;
          v45 = *(v19 + 1);
          v40 = *(v19 + 4);
          v110 = *(v19 + 3);
          v46 = *(v19 + 6);
          sub_10002A748(v44, v45, v19[16]);
LABEL_32:

          goto LABEL_39;
        }

        if (EnumCaseMultiPayload == 8)
        {
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload == 9)
        {
          v41 = *v19;
          v42 = *(v19 + 1);
          v40 = *(v19 + 4);
          v110 = *(v19 + 3);
          v43 = *(v19 + 6);
          sub_100054F18(v41, v42, v19[16]);
          goto LABEL_32;
        }

        v51 = *v19;
        v52 = *(v19 + 1);
        v40 = *(v19 + 4);
        v110 = *(v19 + 3);
        sub_100054F18(v51, v52, v19[16]);
      }

LABEL_39:
      sub_10002E9A8(v112 + *(v20 + 20), v17, type metadata accessor for PrimarySettingsListItemViewType);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = a4;
      v55 = a2;
      if (v53 <= 4)
      {
        if (v53 <= 1)
        {
          if (v53)
          {
            v63 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v63 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v17, v63);
          v57 = 0;
          v56 = 0;
          if (!v40)
          {
LABEL_44:
            if (v56)
            {
            }

            sub_10002E888(v112, type metadata accessor for PrimarySettingsListItemModel);
            sub_10002E888(v111, type metadata accessor for PrimarySettingsListItemModel);
            a2 = v55;
            v58 = v107;
            goto LABEL_58;
          }
        }

        else if (v53 == 2)
        {
          v57 = *(v17 + 3);
          v56 = *(v17 + 4);
          v64 = *(v17 + 5);
          sub_10002A748(*v17, *(v17 + 1), v17[16]);

          if (!v40)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v57 = *v17;
          v56 = *(v17 + 1);
          if (!v40)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v53 <= 7)
        {
          if (v53 == 5 || v53 == 6)
          {
            v57 = *(v17 + 3);
            v56 = *(v17 + 4);
            sub_10002A748(*v17, *(v17 + 1), v17[16]);
            if (!v40)
            {
              goto LABEL_44;
            }

            goto LABEL_56;
          }

LABEL_54:
          v57 = *(v17 + 3);
          v56 = *(v17 + 4);
          v60 = *(v17 + 6);
          sub_10002A748(*v17, *(v17 + 1), v17[16]);
LABEL_55:

          if (!v40)
          {
            goto LABEL_44;
          }

          goto LABEL_56;
        }

        if (v53 == 8)
        {
          goto LABEL_54;
        }

        if (v53 == 9)
        {
          v57 = *(v17 + 3);
          v56 = *(v17 + 4);
          v59 = *(v17 + 6);
          sub_100054F18(*v17, *(v17 + 1), v17[16]);
          goto LABEL_55;
        }

        v57 = *(v17 + 3);
        v56 = *(v17 + 4);
        sub_100054F18(*v17, *(v17 + 1), v17[16]);
        if (!v40)
        {
          goto LABEL_44;
        }
      }

LABEL_56:
      if (!v56)
      {

        sub_10002E888(v112, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E888(v111, type metadata accessor for PrimarySettingsListItemModel);
        a2 = v55;
        v58 = v107;
LABEL_65:
        a4 = v54;
        if (a1 < a2 || a1 >= a2 + v58)
        {
          v20 = v109;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v20 = v109;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a2 += v58;
        goto LABEL_71;
      }

      v116 = v110;
      v117 = v40;
      v114 = v57;
      v115 = v56;
      sub_10002EAE0();
      v61 = StringProtocol.localizedStandardCompare<A>(_:)();

      sub_10002E888(v112, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E888(v111, type metadata accessor for PrimarySettingsListItemModel);
      v58 = v107;
      a2 = v55;
      if (v61 == -1)
      {
        goto LABEL_65;
      }

LABEL_58:
      v62 = v54;
      a4 = v54 + v58;
      if (a1 < v54 || a1 >= a4)
      {
        v20 = v109;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v20 = v109;
        if (a1 != v62)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v119 = a4;
LABEL_71:
      a1 += v58;
      v120 = a1;
      if (a4 >= v106 || a2 >= v113)
      {
        goto LABEL_154;
      }
    }
  }

  v34 = v31 / v107 * v107;
  if (a4 < a2 || a2 + v34 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v111 = a2;
  v65 = a4 + v34;
  if (v34 < 1)
  {
    goto LABEL_153;
  }

  v66 = -v107;
  v67 = v65;
  v105 = a4;
  v112 = -v107;
  while (2)
  {
    while (2)
    {
      v102 = v65;
      v68 = v111;
      v111 += v66;
      v107 = v68;
      while (1)
      {
        v69 = v113;
        if (v68 <= a1)
        {
          v120 = v68;
          v118 = v102;
          goto LABEL_154;
        }

        v104 = v65;
        v70 = v67 + v66;
        v71 = v106;
        sub_10002E9A8(v67 + v66, v106, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E9A8(v111, v110, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E9A8(v71 + *(v20 + 20), v14, type metadata accessor for PrimarySettingsListItemViewType);
        v72 = swift_getEnumCaseMultiPayload();
        if (v72 <= 4)
        {
          if (v72 <= 1)
          {
            v82 = v72 ? type metadata accessor for PrimarySettingsListFamilyLinkModel : type metadata accessor for PrimarySettingsListItemViewType;
            sub_10002E888(v14, v82);
            v113 = 0;
            v75 = 0;
          }

          else if (v72 == 2)
          {
            v83 = *v14;
            v84 = *(v14 + 1);
            v75 = *(v14 + 4);
            v113 = *(v14 + 3);
            v85 = *(v14 + 5);
            sub_10002A748(v83, v84, v14[16]);
          }

          else
          {
            v75 = *(v14 + 1);
            v113 = *v14;
          }
        }

        else
        {
          if (v72 <= 7)
          {
            if (v72 == 5 || v72 == 6)
            {
              v73 = *v14;
              v74 = *(v14 + 1);
              v75 = *(v14 + 4);
              v113 = *(v14 + 3);
              sub_10002A748(v73, v74, v14[16]);
              goto LABEL_109;
            }

LABEL_101:
            v79 = *v14;
            v80 = *(v14 + 1);
            v75 = *(v14 + 4);
            v113 = *(v14 + 3);
            v81 = *(v14 + 6);
            sub_10002A748(v79, v80, v14[16]);
LABEL_102:

            goto LABEL_109;
          }

          if (v72 == 8)
          {
            goto LABEL_101;
          }

          if (v72 == 9)
          {
            v76 = *v14;
            v77 = *(v14 + 1);
            v75 = *(v14 + 4);
            v113 = *(v14 + 3);
            v78 = *(v14 + 6);
            sub_100054F18(v76, v77, v14[16]);
            goto LABEL_102;
          }

          v86 = *v14;
          v87 = *(v14 + 1);
          v75 = *(v14 + 4);
          v113 = *(v14 + 3);
          sub_100054F18(v86, v87, v14[16]);
        }

LABEL_109:
        sub_10002E9A8(v110 + *(v20 + 20), v11, type metadata accessor for PrimarySettingsListItemViewType);
        v88 = swift_getEnumCaseMultiPayload();
        if (v88 <= 4)
        {
          if (v88 <= 1)
          {
            if (v88)
            {
              v97 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
            }

            else
            {
              v97 = type metadata accessor for PrimarySettingsListItemViewType;
            }

            sub_10002E888(v11, v97);
            v89 = 0;
            v90 = 0;
            if (v75)
            {
LABEL_126:
              if (v90)
              {
                v116 = v113;
                v117 = v75;
                v114 = v89;
                v115 = v90;
                sub_10002EAE0();
                v96 = StringProtocol.localizedStandardCompare<A>(_:)();

                v91 = v96 == -1;
              }

              else
              {

                v91 = 1;
              }

              goto LABEL_129;
            }
          }

          else if (v88 == 2)
          {
            v98 = *v11;
            v99 = *(v11 + 1);
            v89 = *(v11 + 3);
            v90 = *(v11 + 4);
            v103 = *(v11 + 5);
            sub_10002A748(v98, v99, v11[16]);

            if (v75)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v89 = *v11;
            v90 = *(v11 + 1);
            if (v75)
            {
              goto LABEL_126;
            }
          }
        }

        else
        {
          if (v88 <= 7)
          {
            if (v88 == 5 || v88 == 6)
            {
              v89 = *(v11 + 3);
              v90 = *(v11 + 4);
              sub_10002A748(*v11, *(v11 + 1), v11[16]);
              if (v75)
              {
                goto LABEL_126;
              }

              goto LABEL_114;
            }

LABEL_124:
            v94 = *v11;
            v95 = *(v11 + 1);
            v89 = *(v11 + 3);
            v90 = *(v11 + 4);
            v103 = *(v11 + 6);
            sub_10002A748(v94, v95, v11[16]);
LABEL_125:

            if (v75)
            {
              goto LABEL_126;
            }

            goto LABEL_114;
          }

          if (v88 == 8)
          {
            goto LABEL_124;
          }

          if (v88 == 9)
          {
            v92 = *v11;
            v93 = *(v11 + 1);
            v89 = *(v11 + 3);
            v90 = *(v11 + 4);
            v103 = *(v11 + 6);
            sub_100054F18(v92, v93, v11[16]);
            goto LABEL_125;
          }

          v89 = *(v11 + 3);
          v90 = *(v11 + 4);
          sub_100054F18(*v11, *(v11 + 1), v11[16]);
          if (v75)
          {
            goto LABEL_126;
          }
        }

LABEL_114:
        if (v90)
        {
        }

        v91 = 0;
LABEL_129:
        v20 = v109;
        v113 = v69 + v112;
        sub_10002E888(v110, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E888(v106, type metadata accessor for PrimarySettingsListItemModel);
        if (v91)
        {
          break;
        }

        v65 = v70;
        if (v69 < v67 || v113 >= v67)
        {
          swift_arrayInitWithTakeFrontToBack();
          v66 = v112;
        }

        else
        {
          v66 = v112;
          if (v69 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v67 = v70;
        v68 = v107;
        if (v70 <= v105)
        {
          v111 = v107;
          goto LABEL_153;
        }
      }

      if (v69 >= v107 && v113 < v107)
      {
        v65 = v104;
        v100 = v105;
        v66 = v112;
        if (v69 != v107)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v67 <= v100)
        {
          goto LABEL_153;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v65 = v104;
    v66 = v112;
    if (v67 > v105)
    {
      continue;
    }

    break;
  }

LABEL_153:
  v120 = v111;
  v118 = v65;
LABEL_154:
  sub_10005E078(&v120, &v119, &v118);
  return 1;
}

uint64_t sub_10005DFD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005E064(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10005E078(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PrimarySettingsListItemModel();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10005E15C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015BE70, &qword_100116A80);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10005E274(uint64_t a1)
{
  v3 = sub_10004DED0(&qword_10015BDA8, &unk_100111BF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for PrimarySettingsListSectionModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[5];
  v13 = v1[6];
  sub_100018544(v1 + 2, v12);
  sub_10006041C(a1, v12, v13);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000260A0(v6);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_10002C928(v6, v11);
    sub_10004DED0(&qword_10015BF30, &qword_100111CE8);
    v15 = *(v8 + 72);
    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001103C0;
    sub_10002C928(v11, v17 + v16);
    return v17;
  }
}

uint64_t sub_10005E434()
{
  sub_10000665C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10005E46C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_100018544((v1 + 16), v2);
  return sub_10005FEBC(v2, v3);
}

uint64_t sub_10005E4D4(void *a1)
{
  swift_getObjectType();
  v15 = _typeName(_:qualified:)();
  v16 = v3;
  v4._countAndFlagsBits = 0x203A6469207B20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = v1 + *a1;
  v6 = *(v5 + 16);
  v17[0] = *v5;
  v17[1] = v6;
  v18 = *(v5 + 32);
  v7 = sub_10002698C(v17, v14);
  v8 = sub_100026A58(v7);
  v10 = v9;
  sub_100026A04(v17);
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 32032;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  return v15;
}

uint64_t sub_10005E5A0()
{
  v1 = *v0;
  v13 = _typeName(_:qualified:)();
  v14 = v2;
  v3._countAndFlagsBits = 0x203A6469207B20;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = *(v0 + 2);
  v15[0] = *(v0 + 1);
  v15[1] = v4;
  v16 = *(v0 + 48);
  v5 = sub_10002698C(v15, v12);
  v6 = sub_100026A58(v5);
  v8 = v7;
  sub_100026A04(v15);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  return v13;
}

uint64_t sub_10005E680(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  v12 = _typeName(_:qualified:)();
  v4._countAndFlagsBits = 0x203A6469207B20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = (*(a2 + 8))(v13, a1, a2);
  v6 = sub_100026A58(v5);
  v8 = v7;
  sub_100026A04(v13);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  return v12;
}

uint64_t sub_10005E75C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v61 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v9);
  v62 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v54[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v54[-v17];
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSSignposter();
  v24 = sub_10000659C(v23, qword_100169718);
  (*(v19 + 16))(v22, v3, a1);
  static OSSignpostID.exclusive.getter();
  v60 = v24;
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    v57 = v3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v56 = v15;
    v30 = v29;
    v65 = v29;
    *v28 = 136315138;
    v31 = (*(a2 + 16))(a1, a2);
    v55 = v26;
    v32 = a2;
    v34 = v33;
    (*(v19 + 8))(v22, a1);
    v35 = sub_100025CF0(v31, v34, &v65);
    a2 = v32;

    *(v28 + 4) = v35;
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v55, v36, "PrimarySettingsListItemModelProviding.performDeferredSetupForProvider()", "Item Provider: %s", v28, 0xCu);
    sub_10000665C(v30);
    v15 = v56;
  }

  else
  {

    (*(v19 + 8))(v22, a1);
  }

  v37 = v63;
  v38 = v64;
  (*(v63 + 16))(v15, v18, v64);
  v39 = type metadata accessor for OSSignpostIntervalState();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v42 = *(v37 + 8);
  v42(v18, v38);
  (*(a2 + 24))(a1, a2);
  v43 = OSSignposter.logHandle.getter();
  v44 = v62;
  OSSignpostIntervalState.signpostID.getter();
  v45 = static os_signpost_type_t.end.getter();
  v46 = OS_os_log.signpostsEnabled.getter();
  v47 = v61;
  if (v46)
  {

    checkForErrorAndConsumeState(state:)();

    v49 = v58;
    v48 = v59;
    if ((*(v58 + 88))(v47, v59) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v47, v48);
      v50 = "";
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v45, v52, "PrimarySettingsListItemModelProviding.performDeferredSetupForProvider()", v50, v51, 2u);
  }

  return (v42)(v44, v38);
}

uint64_t sub_10005ECBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  sub_10000659C(v19, qword_100169718);
  (*(v15 + 16))(v18, v3, a2);
  static OSSignpostID.exclusive.getter();
  v20 = OSSignposter.logHandle.getter();
  v39 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v38 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = v14;
    v24 = v23;
    v44 = v23;
    *v22 = 136315138;
    v25 = (*(a3 + 16))(a2, a3);
    v37 = v4;
    v26 = a3;
    v28 = v27;
    (*(v15 + 8))(v18, a2);
    v29 = sub_100025CF0(v25, v28, &v44);
    a3 = v26;

    *(v22 + 4) = v29;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v39, v30, "PrimarySettingsListItemModelProviding.produceListItemModel(with:)", "Item Provider: %s", v22, 0xCu);
    sub_10000665C(v24);
    v14 = v40;

    a1 = v38;
  }

  else
  {

    (*(v15 + 8))(v18, a2);
  }

  v31 = v42;
  v32 = v43;
  (*(v42 + 16))(v41, v14, v43);
  v33 = type metadata accessor for OSSignpostIntervalState();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v31 + 8))(v14, v32);
  (*(a3 + 32))(a1, a2, a3);
  sub_10005F080();
}

uint64_t sub_10005F080()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000659C(v10, qword_100169718);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "PrimarySettingsListItemModelProviding.produceListItemModel(with:)", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005F30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v61 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v9);
  v62 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v54[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v54[-v17];
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSSignposter();
  v24 = sub_10000659C(v23, qword_100169718);
  (*(v19 + 16))(v22, v3, a1);
  static OSSignpostID.exclusive.getter();
  v60 = v24;
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    v57 = v3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v56 = v15;
    v30 = v29;
    v65 = v29;
    *v28 = 136315138;
    v31 = (*(a2 + 8))(a1, a2);
    v55 = v26;
    v32 = a2;
    v34 = v33;
    (*(v19 + 8))(v22, a1);
    v35 = sub_100025CF0(v31, v34, &v65);
    a2 = v32;

    *(v28 + 4) = v35;
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v55, v36, "PrimarySettingsListSectionCollectionModelProviding.performDeferredSetupForProvider()", "Section Collection Provider: %s", v28, 0xCu);
    sub_10000665C(v30);
    v15 = v56;
  }

  else
  {

    (*(v19 + 8))(v22, a1);
  }

  v37 = v63;
  v38 = v64;
  (*(v63 + 16))(v15, v18, v64);
  v39 = type metadata accessor for OSSignpostIntervalState();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v42 = *(v37 + 8);
  v42(v18, v38);
  (*(a2 + 16))(a1, a2);
  v43 = OSSignposter.logHandle.getter();
  v44 = v62;
  OSSignpostIntervalState.signpostID.getter();
  v45 = static os_signpost_type_t.end.getter();
  v46 = OS_os_log.signpostsEnabled.getter();
  v47 = v61;
  if (v46)
  {

    checkForErrorAndConsumeState(state:)();

    v49 = v58;
    v48 = v59;
    if ((*(v58 + 88))(v47, v59) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v47, v48);
      v50 = "";
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v45, v52, "PrimarySettingsListSectionCollectionModelProviding.performDeferredSetupForProvider()", v50, v51, 2u);
  }

  return (v42)(v44, v38);
}

uint64_t sub_10005F86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v41 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v37 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  sub_10000659C(v19, qword_100169718);
  (*(v15 + 16))(v18, v3, a2);
  static OSSignpostID.exclusive.getter();
  v20 = OSSignposter.logHandle.getter();
  v39 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v38 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = v14;
    v24 = v23;
    v43 = v23;
    *v22 = 136315138;
    v25 = (*(a3 + 8))(a2, a3);
    v37[1] = v4;
    v26 = a3;
    v28 = v27;
    (*(v15 + 8))(v18, a2);
    v29 = sub_100025CF0(v25, v28, &v43);
    a3 = v26;

    *(v22 + 4) = v29;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v39, v30, "PrimarySettingsListSectionCollectionModelProviding.produceListSectionCollectionModel(with:)", "Section Collection Provider: %s", v22, 0xCu);
    sub_10000665C(v24);
    v14 = v40;

    a1 = v38;
  }

  else
  {

    (*(v15 + 8))(v18, a2);
  }

  v31 = v42;
  (*(v42 + 16))(v41, v14, v8);
  v32 = type metadata accessor for OSSignpostIntervalState();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v31 + 8))(v14, v8);
  v35 = (*(a3 + 24))(a1, a2, a3);
  sub_10005FC30();

  return v35;
}

uint64_t sub_10005FC30()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000659C(v10, qword_100169718);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "PrimarySettingsListSectionCollectionModelProviding.produceListSectionCollectionModel(with:)", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10005FEBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v61 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v9);
  v62 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v54[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v54[-v17];
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSSignposter();
  v24 = sub_10000659C(v23, qword_100169718);
  (*(v19 + 16))(v22, v3, a1);
  static OSSignpostID.exclusive.getter();
  v60 = v24;
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    v57 = v3;
    v28 = v27;
    v29 = swift_slowAlloc();
    v56 = v15;
    v30 = v29;
    v65 = v29;
    *v28 = 136315138;
    v31 = (*(a2 + 16))(a1, a2);
    v55 = v26;
    v32 = a2;
    v34 = v33;
    (*(v19 + 8))(v22, a1);
    v35 = sub_100025CF0(v31, v34, &v65);
    a2 = v32;

    *(v28 + 4) = v35;
    v36 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v55, v36, "PrimarySettingsListSectionModelProviding.performDeferredSetupForProvider()", "Section Provider: %s", v28, 0xCu);
    sub_10000665C(v30);
    v15 = v56;
  }

  else
  {

    (*(v19 + 8))(v22, a1);
  }

  v37 = v63;
  v38 = v64;
  (*(v63 + 16))(v15, v18, v64);
  v39 = type metadata accessor for OSSignpostIntervalState();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v42 = *(v37 + 8);
  v42(v18, v38);
  (*(a2 + 24))(a1, a2);
  v43 = OSSignposter.logHandle.getter();
  v44 = v62;
  OSSignpostIntervalState.signpostID.getter();
  v45 = static os_signpost_type_t.end.getter();
  v46 = OS_os_log.signpostsEnabled.getter();
  v47 = v61;
  if (v46)
  {

    checkForErrorAndConsumeState(state:)();

    v49 = v58;
    v48 = v59;
    if ((*(v58 + 88))(v47, v59) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v47, v48);
      v50 = "";
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v45, v52, "PrimarySettingsListSectionModelProviding.performDeferredSetupForProvider()", v50, v51, 2u);
  }

  return (v42)(v44, v38);
}

uint64_t sub_10006041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  sub_10000659C(v19, qword_100169718);
  (*(v15 + 16))(v18, v3, a2);
  static OSSignpostID.exclusive.getter();
  v20 = OSSignposter.logHandle.getter();
  v39 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v38 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = v14;
    v24 = v23;
    v44 = v23;
    *v22 = 136315138;
    v25 = (*(a3 + 16))(a2, a3);
    v37 = v4;
    v26 = a3;
    v28 = v27;
    (*(v15 + 8))(v18, a2);
    v29 = sub_100025CF0(v25, v28, &v44);
    a3 = v26;

    *(v22 + 4) = v29;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v39, v30, "PrimarySettingsListSectionModelProviding.produceListSectionModel(with:)", "Section Provider: %s", v22, 0xCu);
    sub_10000665C(v24);
    v14 = v40;

    a1 = v38;
  }

  else
  {

    (*(v15 + 8))(v18, a2);
  }

  v31 = v42;
  v32 = v43;
  (*(v42 + 16))(v41, v14, v43);
  v33 = type metadata accessor for OSSignpostIntervalState();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v31 + 8))(v14, v32);
  (*(a3 + 32))(a1, a2, a3);
  sub_1000608D4();
}

uint64_t sub_1000607E0()
{
  v1 = v0;
  v2 = *v0;
  v12 = _typeName(_:qualified:)();
  v3._countAndFlagsBits = 0x203A6469207B20;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = v0[2];
  v5 = v1[3];
  LOBYTE(v1) = *(v1 + 32);
  sub_100025974(v4, v5, v1);
  v6 = sub_10002598C(v4, v5, v1);
  v8 = v7;
  sub_100025CD8(v4, v5, v1);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  return v12;
}

uint64_t sub_1000608D4()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000659C(v10, qword_100169718);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "PrimarySettingsListSectionModelProviding.produceListSectionModel(with:)", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100060B60(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

Swift::Int sub_100060B78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10002F3D4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100060C90(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      switch(a1)
      {
        case 1:
          if (a6 != 3)
          {
            v6 = 1;
            goto LABEL_20;
          }

          v6 = 1;
          if (a4 == 1)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 2:
          if (a6 != 3)
          {
            v6 = 2;
            goto LABEL_20;
          }

          v6 = 2;
          if (a4 == 2)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 3:
          if (a6 != 3)
          {
            v6 = 3;
            goto LABEL_20;
          }

          v6 = 3;
          if (a4 == 3)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 4:
          if (a6 != 3)
          {
            v6 = 4;
            goto LABEL_20;
          }

          v6 = 4;
          if (a4 == 4)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 5:
          if (a6 != 3)
          {
            v6 = 8;
            goto LABEL_20;
          }

          v6 = 8;
          if (a4 == 5)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 6:
          if (a6 != 3)
          {
            v6 = 9;
            goto LABEL_20;
          }

          v6 = 9;
          if (a4 == 6)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 7:
          if (a6 != 3)
          {
            v6 = 10;
            goto LABEL_20;
          }

          v6 = 10;
          if (a4 == 7)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 8:
          if (a6 != 3)
          {
            v6 = 11;
            goto LABEL_20;
          }

          v6 = 11;
          if (a4 != 8)
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        case 9:
          if (a6 != 3)
          {
            v6 = 12;
            goto LABEL_20;
          }

          v6 = 12;
          if (a4 == 9)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 10:
          if (a6 != 3)
          {
            v6 = 13;
            goto LABEL_20;
          }

          v6 = 13;
          if (a4 == 10)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 11:
          if (a6 != 3)
          {
            v6 = 14;
            goto LABEL_20;
          }

          v6 = 14;
          if (a4 == 11)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 12:
          if (a6 != 3)
          {
            v6 = 15;
            goto LABEL_20;
          }

          v6 = 15;
          if (a4 == 12)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 13:
          if (a6 != 3)
          {
            v6 = 16;
            goto LABEL_20;
          }

          v6 = 16;
          if (a4 == 13)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 14:
          if (a6 != 3)
          {
            v6 = 17;
            goto LABEL_20;
          }

          v6 = 17;
          if (a4 == 14)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 15:
          if (a6 != 3)
          {
            v6 = 18;
            goto LABEL_20;
          }

          v6 = 18;
          if (a4 == 15)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 16:
          if (a6 != 3)
          {
            v6 = 19;
            goto LABEL_20;
          }

          v6 = 19;
          if (a4 == 16)
          {
            goto LABEL_76;
          }

          goto LABEL_78;
        case 17:
          if (a6 != 3)
          {
            v6 = 20;
            goto LABEL_20;
          }

          v6 = 20;
LABEL_76:
          if (!a5)
          {
            return 0;
          }

          goto LABEL_78;
        default:
          v6 = 0;
          if (a6 != 3 || a5 | a4)
          {
            goto LABEL_20;
          }

          return 0;
      }
    }

    if (a6 != 2)
    {
      v6 = 7;
      goto LABEL_20;
    }

LABEL_9:
    if (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (a3)
  {
    if (a6 != 1)
    {
      v6 = 6;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  if (!a6)
  {
    goto LABEL_9;
  }

  v6 = 5;
LABEL_20:
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      v8 = 7;
    }

    else
    {
LABEL_78:
      v8 = 0;
      switch(a4)
      {
        case 0:
          return v6 < v8;
        case 1:
          v8 = 1;
          break;
        case 2:
          v8 = 2;
          break;
        case 3:
          v8 = 3;
          break;
        case 4:
          v8 = 4;
          break;
        case 5:
          v8 = 8;
          break;
        case 6:
          v8 = 9;
          break;
        case 7:
          v8 = 10;
          break;
        case 8:
          v8 = 11;
          break;
        case 9:
          v8 = 12;
          break;
        case 10:
          v8 = 13;
          break;
        case 11:
          v8 = 14;
          break;
        case 12:
          v8 = 15;
          break;
        case 13:
          v8 = 16;
          break;
        case 14:
          v8 = 17;
          break;
        case 15:
          v8 = 18;
          break;
        case 16:
          v8 = 19;
          break;
        case 17:
          v8 = 20;
          break;
        default:
          JUMPOUT(0);
      }
    }
  }

  else if (a6)
  {
    v8 = 6;
  }

  else
  {
    v8 = 5;
  }

  return v6 < v8;
}

unint64_t sub_1000610F8()
{
  v1._countAndFlagsBits = sub_10002598C(*v0, *(v0 + 8), *(v0 + 16));
  String.append(_:)(v1);

  return 0xD000000000000020;
}

unint64_t sub_10006115C()
{
  result = qword_10015BF48;
  if (!qword_10015BF48)
  {
    type metadata accessor for LocalizedStringResource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BF48);
  }

  return result;
}

uint64_t sub_1000611DC(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_1000612A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PrimarySettingsListSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  v11 = URL.scheme.getter();
  v13 = sub_1000BBCA4(v11, v12);
  if (v13 == 10)
  {

    return static OpenURLAction.Result.systemAction.getter();
  }

  else
  {
    v14 = v13;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_100034514(a2, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimarySettingsListSection);
    type metadata accessor for MainActor();
    v16 = static MainActor.shared.getter();
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = v17 + v5;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = &protocol witness table for MainActor;
    sub_100061724(v6, v19 + v17);
    *(v19 + v18) = v14;
    sub_100094AF4(0, 0, v10, &unk_100112160, v19);

    return static OpenURLAction.Result.handled.getter();
  }
}

uint64_t sub_1000614D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 24) = a4;
  v6 = type metadata accessor for EnvironmentValues();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000615D0, v10, v9);
}

uint64_t sub_1000615D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);

  if ((v2 & 1) == 0)
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 16);
  }

  v8 = *(v0 + 48);
  v9 = *(v3 + 24);
  v10 = *(v0 + 64);

  sub_100010CD0();

  sub_1000951B0(v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100061724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061788(uint64_t a1)
{
  v3 = *(type metadata accessor for PrimarySettingsListSection() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000612A4(a1, v4);
}

uint64_t sub_100061808(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C0D0, &qword_100112108);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061878(uint64_t a1)
{
  v4 = *(type metadata accessor for PrimarySettingsListSection() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000614D8(a1, v5, v6, v7, v8);
}

unint64_t sub_100061990()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x6E6564646968;
  }

  *v0;
  return result;
}

Swift::Int sub_1000619CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100061A14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100061A58()
{
  if (!qword_10015C1A8)
  {
    sub_100052374(&unk_10015FC00, &qword_100111C00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015C1A8);
    }
  }
}

void sub_100061AD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100052374(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TapToRadarManager.SearchActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarManager.SearchActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100061C94()
{
  result = qword_10015C210;
  if (!qword_10015C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C210);
  }

  return result;
}

uint64_t sub_100061D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100061E00(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100063E44(&qword_10015C2B8), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_100063E44(&qword_10015C2C0);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100061FF0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_1000069D8(*(a2 + 48) + 40 * v5, v9);
      v7 = static AnyHashable.== infix(_:_:)();
      sub_100017E04(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000620C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

id sub_100062250(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NSBundle.PluginLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v206 - v13;
  __chkstk_darwin(v12);
  v16 = &v206 - v15;
  v17 = type metadata accessor for PrimarySettingsListItemVisibilityRule();
  v221 = *(v17 - 8);
  v222 = v17;
  v18 = *(v221 + 64);
  __chkstk_darwin(v17);
  v20 = (&v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a2 + 16);
  if (!v21)
  {
    return (v21 & 1);
  }

  v22 = sub_100029DE0(a1 & 1);
  if ((v23 & 1) == 0)
  {
LABEL_93:
    LOBYTE(v21) = 0;
    return (v21 & 1);
  }

  v211 = v11;
  v218 = v7;
  v212 = v14;
  v216 = a1;
  v24 = *(*(a2 + 56) + 8 * v22);
  v25 = *(v24 + 16);

  v220 = v25;
  if (!v25)
  {
LABEL_92:

    goto LABEL_93;
  }

  v26 = 0;
  v213 = (v218 + 32);
  v214 = (v218 + 8);
  v219 = a3;
  v215 = v6;
  v217 = v16;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      swift_once();
LABEL_95:
      v92 = type metadata accessor for Logger();
      sub_10000659C(v92, qword_1001696B8);

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();

      v95 = os_log_type_enabled(v93, v94);
      v96 = v216;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v228[0] = swift_slowAlloc();
        *v97 = 136446466;
        v98 = Array.description.getter();
        v100 = v99;

        v101 = sub_100025CF0(v98, v100, v228);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2082;
        if (v96)
        {
          v102 = 0xD000000000000013;
        }

        else
        {
          v102 = 0x6E6564646968;
        }

        if (v96)
        {
          v103 = 0x80000001001216D0;
        }

        else
        {
          v103 = 0xE600000000000000;
        }

        v104 = sub_100025CF0(v102, v103, v228);

        *(v97 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v93, v94, "Some Features in '%{public}s' are restricted, should apply '%{public}s' visibility.", v97, 0x16u);
        swift_arrayDestroy();

        sub_100063DF0(v6);
        v105 = v6;
LABEL_103:
        sub_100063DF0(v105);
        goto LABEL_140;
      }

      sub_100063DF0(v6);
      v130 = v6;
LABEL_138:
      sub_100063DF0(v130);
      goto LABEL_139;
    }

    sub_100029F24(v24 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v26, v20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v57 = *v20;
          v58 = *(*v20 + 16);
          v44 = *(v20 + 8) == 1;
          v210 = v58;
          if (v44)
          {
            sub_100063D94(a3, v228);
            sub_100063D94(a3, v228);
            if (v58)
            {
              v59 = 0;
              v208 = v57 + 32;
              v209 = v24;
              while (1)
              {
                if (v59 >= *(v57 + 16))
                {
                  goto LABEL_213;
                }

                v61 = *(a3 + 8);
                if (!*(v61 + 16))
                {
                  break;
                }

                v62 = v57;
                v63 = (v208 + 16 * v59);
                v65 = *v63;
                v64 = v63[1];
                v66 = *(v61 + 40);
                Hasher.init(_seed:)();

                String.hash(into:)();
                v67 = Hasher._finalize()();
                v68 = -1 << *(v61 + 32);
                v6 = v67 & ~v68;
                if (((*(v61 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
LABEL_61:

                  a3 = v219;
                  v24 = v209;
LABEL_62:
                  sub_100063DF0(a3);
                  sub_100063DF0(a3);
                  goto LABEL_6;
                }

                ++v59;
                v69 = ~v68;
                while (1)
                {
                  v70 = (*(v61 + 48) + 16 * v6);
                  v71 = *v70 == v65 && v70[1] == v64;
                  if (v71 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v6 = (v6 + 1) & v69;
                  if (((*(v61 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                  {
                    goto LABEL_61;
                  }
                }

                a3 = v219;
                v57 = v62;
                v24 = v209;
                if (v59 == v210)
                {
                  goto LABEL_143;
                }
              }

              goto LABEL_62;
            }

LABEL_143:

            if (qword_10015AAC0 != -1)
            {
              swift_once();
            }

            v131 = type metadata accessor for Logger();
            sub_10000659C(v131, qword_1001696B8);

            v93 = Logger.logObject.getter();
            v132 = static os_log_type_t.debug.getter();

            v133 = os_log_type_enabled(v93, v132);
            v134 = v216;
            if (v133)
            {
              v135 = swift_slowAlloc();
              v228[0] = swift_slowAlloc();
              *v135 = 136446466;
              v136 = Array.description.getter();
              v138 = v137;

              v139 = sub_100025CF0(v136, v138, v228);

              *(v135 + 4) = v139;
              *(v135 + 12) = 2082;
              if (v134)
              {
                v140 = 0xD000000000000013;
              }

              else
              {
                v140 = 0x6E6564646968;
              }

              if (v134)
              {
                v141 = 0x80000001001216D0;
              }

              else
              {
                v141 = 0xE600000000000000;
              }

              v142 = sub_100025CF0(v140, v141, v228);

              *(v135 + 14) = v142;
              _os_log_impl(&_mh_execute_header, v93, v132, "All Features in '%{public}s' are restricted, should apply '%{public}s' visibility.", v135, 0x16u);
              swift_arrayDestroy();

              sub_100063DF0(a3);
              v105 = a3;
              goto LABEL_103;
            }

            sub_100063DF0(a3);
            v130 = a3;
            goto LABEL_138;
          }

          sub_100063D94(a3, v228);
          sub_100063D94(a3, v228);
          if (v58)
          {
            v79 = 0;
            v208 = v57 + 32;
            v207 = v57;
            while (v79 < *(v57 + 16))
            {
              v80 = *(a3 + 8);
              if (*(v80 + 16))
              {
                v81 = (v208 + 16 * v79);
                v83 = *v81;
                v82 = v81[1];
                v84 = *(v80 + 40);
                Hasher.init(_seed:)();

                String.hash(into:)();
                v85 = Hasher._finalize()();
                v86 = -1 << *(v80 + 32);
                v87 = v85 & ~v86;
                if ((*(v80 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
                {
                  v88 = ~v86;
                  while (1)
                  {
                    v89 = (*(v80 + 48) + 16 * v87);
                    v90 = *v89 == v83 && v89[1] == v82;
                    if (v90 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }

                    v87 = (v87 + 1) & v88;
                    if (((*(v80 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
                    {
                      goto LABEL_75;
                    }
                  }

                  v6 = v219;
                  if (qword_10015AAC0 != -1)
                  {
                    goto LABEL_215;
                  }

                  goto LABEL_95;
                }

LABEL_75:

                a3 = v219;
                v6 = v215;
                v57 = v207;
                v58 = v210;
              }

              if (++v79 == v58)
              {
                goto LABEL_90;
              }
            }

            goto LABEL_214;
          }

LABEL_90:
          sub_100063DF0(a3);
          sub_100063DF0(a3);

          goto LABEL_7;
        }

        v35 = v20[1];
        v36 = *(a3 + 8);
        if (!*(v36 + 16))
        {
          v91 = v20[1];

          goto LABEL_7;
        }

        v37 = *v20;
        v38 = *(v36 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v39 = Hasher._finalize()();
        v40 = -1 << *(v36 + 32);
        v41 = v39 & ~v40;
        if ((*(v36 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
        {
          v42 = ~v40;
          while (1)
          {
            v43 = (*(v36 + 48) + 16 * v41);
            v44 = *v43 == v37 && v43[1] == v35;
            if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v41 = (v41 + 1) & v42;
            if (((*(v36 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          if (qword_10015AAC0 != -1)
          {
            swift_once();
          }

          v106 = type metadata accessor for Logger();
          sub_10000659C(v106, qword_1001696B8);

          v93 = Logger.logObject.getter();
          v107 = static os_log_type_t.debug.getter();

          v108 = os_log_type_enabled(v93, v107);
          v109 = v216;
          if (!v108)
          {
            goto LABEL_139;
          }

          v110 = swift_slowAlloc();
          v228[0] = swift_slowAlloc();
          *v110 = 136446466;
          v111 = sub_100025CF0(v37, v35, v228);

          *(v110 + 4) = v111;
          *(v110 + 12) = 2082;
          if (v109)
          {
            v112 = 0xD000000000000013;
          }

          else
          {
            v112 = 0x6E6564646968;
          }

          if (v109)
          {
            v113 = 0x80000001001216D0;
          }

          else
          {
            v113 = 0xE600000000000000;
          }

          v114 = sub_100025CF0(v112, v113, v228);

          *(v110 + 14) = v114;
          v115 = "Feature '%{public}s' is restricted, should apply '%{public}s' visibility.";
LABEL_134:
          _os_log_impl(&_mh_execute_header, v93, v107, v115, v110, 0x16u);
          swift_arrayDestroy();

          goto LABEL_135;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v29 = *v20;
          v28 = v20[1];
          v30 = sub_10004DED0(&qword_10015B390, &qword_100110640);
          (*v213)(v16, v20 + *(v30 + 48), v6);
          sub_10002CC5C();
          if ((static NSBundle.settingsExperiencePluginExists(name:location:)() & 1) == 0)
          {

            if (qword_10015AAC0 != -1)
            {
              swift_once();
            }

            v143 = type metadata accessor for Logger();
            sub_10000659C(v143, qword_1001696B8);
            v144 = *(v218 + 16);
            v145 = v212;
            v146 = v217;
            v144(v212, v217, v6);

            v147 = Logger.logObject.getter();
            v148 = v6;
            v149 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v147, v149))
            {
              v150 = swift_slowAlloc();
              v228[0] = swift_slowAlloc();
              *v150 = 136446722;
              v151 = sub_100025CF0(v29, v28, v228);

              *(v150 + 4) = v151;
              *(v150 + 12) = 2082;
              v144(v211, v145, v148);
              v152 = String.init<A>(describing:)();
              v154 = v153;
              v155 = *v214;
              (*v214)(v145, v148);
              v156 = sub_100025CF0(v152, v154, v228);

              *(v150 + 14) = v156;
              *(v150 + 22) = 2082;
              if (v216)
              {
                v157 = 0xD000000000000013;
              }

              else
              {
                v157 = 0x6E6564646968;
              }

              if (v216)
              {
                v158 = 0x80000001001216D0;
              }

              else
              {
                v158 = 0xE600000000000000;
              }

              v159 = sub_100025CF0(v157, v158, v228);

              *(v150 + 24) = v159;
              _os_log_impl(&_mh_execute_header, v147, v149, "Bundle '%{public}s' in location '%{public}s' does not exist, should apply '%{public}s' visibility.", v150, 0x20u);
              swift_arrayDestroy();

              v155(v217, v148);
            }

            else
            {

              v197 = *v214;
              (*v214)(v145, v148);
              v197(v146, v148);
            }

            goto LABEL_141;
          }

          (*v214)(v16, v6);

          goto LABEL_8;
        }

        v47 = *v20;
        v46 = v20[1];
        v48 = *(a3 + 16);
        v49 = *(a3 + 24);
        if (*(v49 + 16))
        {
          v50 = *(v49 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v51 = Hasher._finalize()();
          v52 = -1 << *(v49 + 32);
          v53 = v51 & ~v52;
          if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
LABEL_114:

            if (qword_10015AAC0 != -1)
            {
              swift_once();
            }

            v116 = type metadata accessor for Logger();
            sub_10000659C(v116, qword_1001696B8);

            v93 = Logger.logObject.getter();
            v107 = static os_log_type_t.debug.getter();

            v117 = os_log_type_enabled(v93, v107);
            v118 = v216;
            if (v117)
            {
              v110 = swift_slowAlloc();
              v228[0] = swift_slowAlloc();
              *v110 = 136446466;
              v119 = sub_100025CF0(v47, v46, v228);

              *(v110 + 4) = v119;
              *(v110 + 12) = 2082;
              if (v118)
              {
                v120 = 0xD000000000000013;
              }

              else
              {
                v120 = 0x6E6564646968;
              }

              if (v118)
              {
                v121 = 0x80000001001216D0;
              }

              else
              {
                v121 = 0xE600000000000000;
              }

              v122 = sub_100025CF0(v120, v121, v228);

              *(v110 + 14) = v122;
              v115 = "Application '%{public}s' is not in allowed application list, should apply '%{public}s' visibility.";
              goto LABEL_134;
            }

            goto LABEL_139;
          }

          v54 = ~v52;
          while (1)
          {
            v55 = (*(v49 + 48) + 16 * v53);
            v56 = *v55 == v47 && v55[1] == v46;
            if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v53 = (v53 + 1) & v54;
            if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
            {
              goto LABEL_114;
            }
          }
        }

        if (!*(v48 + 16))
        {

          a3 = v219;
          goto LABEL_6;
        }

        v72 = *(v48 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v73 = Hasher._finalize()();
        v74 = -1 << *(v48 + 32);
        v75 = v73 & ~v74;
        a3 = v219;
        if ((*(v48 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
        {
          v76 = ~v74;
          while (1)
          {
            v77 = (*(v48 + 48) + 16 * v75);
            v78 = *v77 == v47 && v77[1] == v46;
            if (v78 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v75 = (v75 + 1) & v76;
            if (((*(v48 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          if (qword_10015AAC0 != -1)
          {
            swift_once();
          }

          v123 = type metadata accessor for Logger();
          sub_10000659C(v123, qword_1001696B8);

          v93 = Logger.logObject.getter();
          v107 = static os_log_type_t.debug.getter();

          v124 = os_log_type_enabled(v93, v107);
          v125 = v216;
          if (v124)
          {
            v110 = swift_slowAlloc();
            v228[0] = swift_slowAlloc();
            *v110 = 136446466;
            v126 = sub_100025CF0(v47, v46, v228);

            *(v110 + 4) = v126;
            *(v110 + 12) = 2082;
            if (v125)
            {
              v127 = 0xD000000000000013;
            }

            else
            {
              v127 = 0x6E6564646968;
            }

            if (v125)
            {
              v128 = 0x80000001001216D0;
            }

            else
            {
              v128 = 0xE600000000000000;
            }

            v129 = sub_100025CF0(v127, v128, v228);

            *(v110 + 14) = v129;
            v115 = "Application '%{public}s' is in restricted application list, should apply '%{public}s' visibility.";
            goto LABEL_134;
          }

LABEL_139:

LABEL_140:

LABEL_141:
          LOBYTE(v21) = 1;
          return (v21 & 1);
        }
      }

LABEL_5:

LABEL_6:
      v6 = v215;
LABEL_7:
      v16 = v217;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload <= 5)
    {
      break;
    }

    if (EnumCaseMultiPayload != 7)
    {

      LOBYTE(v21) = *v20 ^ *(v20 + 1) ^ 1;
      return (v21 & 1);
    }

    v45 = *v20;
    if (v45 == (*a3 & 1))
    {

      if (qword_10015AAC0 != -1)
      {
        swift_once();
      }

      v176 = type metadata accessor for Logger();
      sub_10000659C(v176, qword_1001696B8);
      v93 = Logger.logObject.getter();
      v177 = static os_log_type_t.debug.getter();
      v178 = os_log_type_enabled(v93, v177);
      v179 = v216;
      if (!v178)
      {
        goto LABEL_140;
      }

      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v228[0] = v181;
      *v180 = 67240450;
      *(v180 + 4) = v45;
      *(v180 + 8) = 2082;
      if (v179)
      {
        v182 = 0xD000000000000013;
      }

      else
      {
        v182 = 0x6E6564646968;
      }

      if (v179)
      {
        v183 = 0x80000001001216D0;
      }

      else
      {
        v183 = 0xE600000000000000;
      }

      v184 = sub_100025CF0(v182, v183, v228);

      *(v180 + 10) = v184;
      _os_log_impl(&_mh_execute_header, v93, v177, "Shared iPad is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v180, 0x12u);
      sub_10000665C(v181);

LABEL_135:

      goto LABEL_140;
    }

LABEL_8:
    if (++v26 == v220)
    {
      goto LABEL_92;
    }
  }

  if (EnumCaseMultiPayload != 4)
  {
    v60 = *(v20 + 40);
    sub_100046A2C(v20, v228);
    if (v60 == (isFeatureEnabled(_:)() & 1))
    {

      if (qword_10015AAC0 != -1)
      {
        swift_once();
      }

      v160 = type metadata accessor for Logger();
      sub_10000659C(v160, qword_1001696B8);
      sub_10000B270(v228, v226);
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.debug.getter();
      v163 = os_log_type_enabled(v161, v162);
      v164 = v216;
      if (v163)
      {
        v165 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        *v165 = 136315650;
        sub_100018544(v226, v227);
        dispatch thunk of FeatureFlagsKey.domain.getter();
        v223 = StaticString.description.getter();
        v224 = v166;
        v167._countAndFlagsBits = 47;
        v167._object = 0xE100000000000000;
        String.append(_:)(v167);
        sub_100018544(v226, v227);
        dispatch thunk of FeatureFlagsKey.feature.getter();
        v168._countAndFlagsBits = StaticString.description.getter();
        String.append(_:)(v168);

        v169 = v223;
        v170 = v224;
        sub_10000665C(v226);
        v171 = sub_100025CF0(v169, v170, &v225);

        *(v165 + 4) = v171;
        *(v165 + 12) = 1026;
        *(v165 + 14) = v60;
        *(v165 + 18) = 2082;
        if (v164)
        {
          v172 = 0xD000000000000013;
        }

        else
        {
          v172 = 0x6E6564646968;
        }

        if (v164)
        {
          v173 = 0x80000001001216D0;
        }

        else
        {
          v173 = 0xE600000000000000;
        }

        v174 = sub_100025CF0(v172, v173, &v225);

        *(v165 + 20) = v174;
        _os_log_impl(&_mh_execute_header, v161, v162, "Feature Flag '%s' is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v165, 0x1Cu);
        swift_arrayDestroy();

        v175 = v228;
      }

      else
      {

        sub_10000665C(v228);
        v175 = v226;
      }

      sub_10000665C(v175);
      goto LABEL_141;
    }

    sub_10000665C(v228);
    goto LABEL_8;
  }

  v31 = *v20;
  v32 = *(v20 + 8);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v34 = result;
    v228[0] = result;
    swift_getAtKeyPath();

    if (v32 == LOBYTE(v226[0]))
    {

      v185 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      v187 = v186;

      if (v187)
      {
        v188 = v216;
        if (qword_10015AAC0 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_10000659C(v189, qword_1001696B8);

        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v228[0] = swift_slowAlloc();
          *v192 = 136446722;
          v193 = sub_100025CF0(v185, v187, v228);

          *(v192 + 4) = v193;
          *(v192 + 12) = 1026;
          *(v192 + 14) = v32;
          *(v192 + 18) = 2082;
          if (v188)
          {
            v194 = 0xD000000000000013;
          }

          else
          {
            v194 = 0x6E6564646968;
          }

          if (v188)
          {
            v195 = 0x80000001001216D0;
          }

          else
          {
            v195 = 0xE600000000000000;
          }

          v196 = sub_100025CF0(v194, v195, v228);

          *(v192 + 20) = v196;
          _os_log_impl(&_mh_execute_header, v190, v191, "Capability '%{public}s' is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v192, 0x1Cu);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {
        v198 = v216;
        if (qword_10015AAC0 != -1)
        {
          swift_once();
        }

        v199 = type metadata accessor for Logger();
        sub_10000659C(v199, qword_1001696B8);
        v190 = Logger.logObject.getter();
        v200 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v190, v200))
        {
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          v228[0] = v202;
          *v201 = 67240450;
          *(v201 + 4) = v32;
          *(v201 + 8) = 2082;
          if (v198)
          {
            v203 = 0xD000000000000013;
          }

          else
          {
            v203 = 0x6E6564646968;
          }

          if (v198)
          {
            v204 = 0x80000001001216D0;
          }

          else
          {
            v204 = 0xE600000000000000;
          }

          v205 = sub_100025CF0(v203, v204, v228);

          *(v201 + 10) = v205;
          _os_log_impl(&_mh_execute_header, v190, v200, "Capability is equal to '%{BOOL,public}d', should apply '%{public}s' visibility.", v201, 0x12u);
          sub_10000665C(v202);
        }
      }

      goto LABEL_141;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100063C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + 8 * v13);

    LOBYTE(v14) = sub_100062250(v14, a1, a2);

    if (v14)
    {
      v16 = 0;
LABEL_13:

      return v16;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v16 = 1;
      goto LABEL_13;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063E44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063E88()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000640F4;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = sub_100063FA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100063FC0()
{
  if (*(v0 + 97) == 1)
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    AsyncStream.Continuation.yield<A>()();
    (*(v6 + 8))(v5, v8);
    v9 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    v11 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
    *v10 = v0;
    v10[1] = sub_100063E88;

    return AsyncDebounceSequence.Iterator.next()(v0 + 96, v11);
  }
}

uint64_t sub_1000640F4()
{
  *(v0 + 24) = *(v0 + 88);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100064180(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v4 = swift_task_alloc();
  v2[5] = v4;
  v5 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v4 = v2;
  v4[1] = sub_100064234;

  return AsyncDebounceSequence.Iterator.next()(v2 + 7, v5);
}

uint64_t sub_100064234()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(v2 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    if (v5)
    {
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1000643F0;
  }

  else
  {
    *(v2 + 57) = *(v2 + 56);
    if (v5)
    {
      v11 = *(v2 + 32);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1000643D4;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1000643F0()
{
  v0[2] = v0[6];
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100064498()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - v5;
  v32 = sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v10 = &v29 - v9;
  v33 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationTasks;
  v11 = *(v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationTasks);
  v12 = *(v11 + 16);
  if (v12)
  {
    v34 = v7;
    v30 = v3;
    v31 = v2;

    v13 = 32;
    do
    {
      v14 = *(v11 + v13);

      Task.cancel()();

      v13 += 8;
      --v12;
    }

    while (v12);

    v3 = v30;
    v2 = v31;
    v7 = v34;
  }

  v15 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshotsContinuation;
  v16 = v32;
  (*(v7 + 16))(v10, v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshotsContinuation, v32);
  AsyncStream.Continuation.finish()();
  v17 = *(v7 + 8);
  v34 = v7 + 8;
  v17(v10, v16);
  v18 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEventContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEventContinuation, v2);
  AsyncStream.Continuation.finish()();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v20 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken;
  v21 = *(v1 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken);
  if (v21)
  {
    v22 = v21;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v23 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshots;
  v24 = sub_10004DED0(&qword_10015C448, qword_1001123D8);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  v17((v1 + v15), v16);
  v25 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEvent;
  v26 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v26 - 8) + 8))(v1 + v25, v26);
  v19((v1 + v18), v2);

  v27 = *(v1 + v33);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100064834()
{
  sub_100064498();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100064874()
{
  v1 = v0;
  v4 = v0 + 160;
  v3 = *(v0 + 160);
  v2 = *(v4 + 8);
  swift_willThrow();

  result = [*(v1 + 152) defaultStore];
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v6 = result;
  v7 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:result];

  v8 = [v7 accountForService:AIDAServiceTypeStore];
  v73 = v8;
  if (v8)
  {
    v9 = v8;
    v10 = [v9 userFullName];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v13;
      v72 = v12;

      v70 = [v9 aa_isCloudSubscriber];
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = [v15 protoAccount];

  if (!v16)
  {
LABEL_12:
    v23 = [v14 sharedInstance];
    v24 = [v23 protoAccount];

    if (v24)
    {
      if ([v24 proto_ageRange] == 2)
      {
        v25 = [objc_opt_self() sharedManager];
        v26 = [v25 isAgeBasedAccountSupportEnabled];

        if (v26)
        {
          v27 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v28 = [v27 ageRangeSettings];

          if (v28)
          {
            v29 = [v28 u18Limit];

            v30 = v29 - 1;
          }

          else
          {
            v30 = 17;
          }

          v72 = v30;
          v65 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v66 = [v65 ageRangeSettings];

          if (v66)
          {
            v67 = [v66 u13Limit];

            v71 = v67;
            v22 = 128;
            goto LABEL_19;
          }

          v70 = 128;
          v71 = 13;
          goto LABEL_20;
        }
      }
    }

LABEL_18:
    v71 = 0;
    v72 = 0;
    v22 = 192;
    goto LABEL_19;
  }

  if ([v16 proto_ageRange] != 1 || (v17 = objc_msgSend(objc_opt_self(), "sharedManager"), v18 = objc_msgSend(v17, "isAgeAttestationPhase1Enabled"), v17, !v18))
  {

    goto LABEL_12;
  }

  v19 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  v20 = [v19 ageRangeSettings];

  if (v20)
  {
    v21 = [v20 u13Limit];

    v71 = 0;
    v72 = v21 - 1;
    v22 = 64;
LABEL_19:
    v70 = v22;
    goto LABEL_20;
  }

  v70 = 64;
  v71 = 0;
  v72 = 12;
LABEL_20:
  result = [*(v1 + 152) defaultStore];
  if (!result)
  {
LABEL_60:
    __break(1u);
    return result;
  }

  v31 = result;
  v32 = [result dmc_visibleSecondaryRemoteManagementAccounts];

  sub_100018308();
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
LABEL_50:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    v69 = v1;
    if (v34)
    {
LABEL_23:
      v1 = 0;
      v76 = v33 & 0xFFFFFFFFFFFFFF8;
      v77 = v33 & 0xC000000000000001;
      v79 = &_swiftEmptyArrayStorage;
      v74 = v34;
      v75 = v33;
      while (1)
      {
        if (v77)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v1 >= *(v76 + 16))
          {
            goto LABEL_49;
          }

          v36 = *(v33 + 8 * v1 + 32);
        }

        v37 = v36;
        v33 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        result = [v36 identifier];
        if (!result)
        {
          break;
        }

        v38 = result;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        result = [v37 accountDescription];
        if (!result)
        {
          goto LABEL_56;
        }

        v42 = result;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        result = [v37 username];
        if (!result)
        {
          goto LABEL_57;
        }

        v46 = result;

        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v78 = v1 + 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1000C50C0(0, *(v79 + 2) + 1, 1, v79);
        }

        v51 = *(v79 + 2);
        v50 = *(v79 + 3);
        if (v51 >= v50 >> 1)
        {
          v79 = sub_1000C50C0((v50 > 1), v51 + 1, 1, v79);
        }

        *(v79 + 2) = v51 + 1;
        v52 = &v79[56 * v51];
        *(v52 + 4) = v39;
        *(v52 + 5) = v41;
        *(v52 + 6) = v43;
        *(v52 + 7) = v45;
        *(v52 + 8) = v47;
        *(v52 + 9) = v49;
        v52[80] = 0;
        v53 = [v37 dmc_bearerReauthURL];
        if (v53)
        {

          result = [v37 identifier];
          v33 = v75;
          if (!result)
          {
            goto LABEL_58;
          }

          v54 = result;

          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58 = [objc_opt_self() mainBundle];
          v81._object = 0x800000010011EB70;
          v59._countAndFlagsBits = 0x6150207265746E45;
          v59._object = 0xEE0064726F777373;
          v60._countAndFlagsBits = 0;
          v60._object = 0xE000000000000000;
          v81._countAndFlagsBits = 0xD000000000000014;
          v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v81);

          v63 = *(v79 + 2);
          v62 = *(v79 + 3);
          if (v63 >= v62 >> 1)
          {
            v79 = sub_1000C50C0((v62 > 1), v63 + 1, 1, v79);
          }

          v35 = v74;

          *(v79 + 2) = v63 + 1;
          v64 = &v79[56 * v63];
          *(v64 + 4) = v55;
          *(v64 + 5) = v57;
          *(v64 + 3) = v61;
          *(v64 + 4) = xmmword_100110E00;
          v64[80] = 1;
        }

        else
        {

          v35 = v74;
          v33 = v75;
        }

        ++v1;
        if (v78 == v35)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v1;
    if (v34)
    {
      goto LABEL_23;
    }
  }

  v79 = &_swiftEmptyArrayStorage;
LABEL_52:

  v68 = *(v69 + 8);

  return v68(v72, v71, v70, v79);
}

void *sub_100065070(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10004DED0(&qword_10015C480, &qword_100112498);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10006555C(&qword_10015C488);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10006555C(&qword_10015C490);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}