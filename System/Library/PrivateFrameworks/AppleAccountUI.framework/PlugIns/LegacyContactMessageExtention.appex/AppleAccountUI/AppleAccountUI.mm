__n128 sub_100001730(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100001774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 194))
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

uint64_t sub_1000017BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 194) = 1;
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

    *(result + 194) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000184C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000656C646ELL;
  v3 = 0x546567617373656DLL;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xEC000000656C7469;
    v13 = 0x8000000100010450;
    v14 = 0xD000000000000012;
    if (a1 == 2)
    {
      v14 = 0xD000000000000011;
    }

    else
    {
      v13 = 0x8000000100010470;
    }

    v15 = 0x536567617373656DLL;
    if (a1)
    {
      v12 = 0xEF656C7469546275;
    }

    else
    {
      v15 = 0x546567617373656DLL;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v14;
    }

    if (v4 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = 0x69636966656E6562;
    v6 = 0xED00004449797261;
    v7 = 0x61487265646E6573;
    v8 = 0xE700000000000000;
    if (a1 == 7)
    {
      v8 = 0xEC000000656C646ELL;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x8000000100010490;
    if (a1 != 4)
    {
      v9 = 0x80000001000104B0;
    }

    if (a1 <= 5u)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v10 = v5;
    }

    if (v4 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x8000000100010450;
        v3 = 0xD000000000000011;
      }

      else
      {
        v2 = 0x8000000100010470;
        v3 = 0xD000000000000012;
      }
    }

    else if (a2)
    {
      v3 = 0x536567617373656DLL;
      v2 = 0xEF656C7469546275;
    }

    else
    {
      v2 = 0xEC000000656C7469;
    }
  }

  else if (a2 <= 5u)
  {
    v3 = 0xD000000000000013;
    if (a2 == 4)
    {
      v16 = "acceptedButtonLabel";
    }

    else
    {
      v16 = "declinedButtonLabel";
    }

    v2 = (v16 - 32) | 0x8000000000000000;
  }

  else if (a2 == 6)
  {
    v3 = 0x69636966656E6562;
    v2 = 0xED00004449797261;
  }

  else if (a2 == 7)
  {
    v3 = 0x61487265646E6573;
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  if (v10 == v3 && v11 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_10000F6F0();
  }

  return v17 & 1;
}

Swift::Int sub_100001B18()
{
  v1 = *v0;
  sub_10000F730();
  sub_100001B68();
  return sub_10000F750();
}

uint64_t sub_100001B68()
{
  sub_10000F500();
}

Swift::Int sub_100001CE8()
{
  v1 = *v0;
  sub_10000F730();
  sub_100001B68();
  return sub_10000F750();
}

uint64_t sub_100001D2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003570(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100001D5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001D8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100001D8C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x546567617373656DLL;
    v5 = 0xD000000000000012;
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    if (a1)
    {
      v4 = 0x536567617373656DLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x69636966656E6562;
    v2 = 0x61487265646E6573;
    if (a1 != 7)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000013;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100001EF4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100006940((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000066E8(&qword_100018458, &qword_10000FDD8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100001FCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006940((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000066E8(&qword_100018458, &qword_10000FDD8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100006984();
    **(*(v4 + 64) + 40) = sub_10000F530();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000020B4(uint64_t a1, uint64_t a2)
{
  result = sub_10000F5A0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002108(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F5B0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100002160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F5C0();
  *a1 = result;
  return result;
}

void *sub_100002188@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000021B8()
{
  v2 = *v0;
  sub_100006C84(&qword_100018488);
  sub_100006C84(&qword_100018490);
  return sub_10000F6C0();
}

uint64_t sub_1000022BC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100002318(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100002318(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000023E4(v11, 0, 0, 1, a1, a2);
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
    sub_1000067FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006860(v11);
  return v7;
}

unint64_t sub_1000023E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000024F0(a5, a6);
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
    result = sub_10000F670();
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

char *sub_1000024F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000253C(a1, a2);
  sub_10000266C(&off_100014B80);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000253C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002758(v5, 0);
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

  result = sub_10000F670();
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
        v10 = sub_10000F510();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002758(v10, 0);
        result = sub_10000F650();
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

uint64_t sub_10000266C(uint64_t result)
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

  result = sub_1000027CC(result, v12, 1, v3);
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

void *sub_100002758(uint64_t a1, uint64_t a2)
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

  sub_1000066E8(&qword_100018448, &qword_10000FDD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000027CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066E8(&qword_100018448, &qword_10000FDD0);
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

_BYTE **sub_1000028C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1000028D0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100002944@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100002974(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10000F730();
  sub_100001B68();
  v4 = sub_10000F750();

  return sub_1000029E0(a1, v4);
}

unint64_t sub_1000029E0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xD000000000000011;
    v26 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 <= 3)
      {
        v9 = 0xEC000000656C7469;
        if (v6 == 2)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0xD000000000000012;
        }

        if (v6 == 2)
        {
          v11 = 0x8000000100010450;
        }

        else
        {
          v11 = 0x8000000100010470;
        }

        if (v6)
        {
          v12 = 0x536567617373656DLL;
        }

        else
        {
          v12 = 0x546567617373656DLL;
        }

        if (v6)
        {
          v9 = 0xEF656C7469546275;
        }

        v7 = v6 <= 1 ? v12 : v10;
        v8 = v6 <= 1 ? v9 : v11;
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        v8 = v6 == 4 ? 0x8000000100010490 : 0x80000001000104B0;
        v7 = 0xD000000000000013;
      }

      else if (v6 == 6)
      {
        v7 = 0x69636966656E6562;
        v8 = 0xED00004449797261;
      }

      else if (v6 == 7)
      {
        v7 = 0x61487265646E6573;
        v8 = 0xEC000000656C646ELL;
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
      }

      v13 = 0xEC000000656C7469;
      v14 = 0x61487265646E6573;
      if (v26 != 7)
      {
        v14 = 0x6E776F6E6B6E75;
      }

      v15 = 0xE700000000000000;
      if (v26 == 7)
      {
        v15 = 0xEC000000656C646ELL;
      }

      if (v26 == 6)
      {
        v14 = 0x69636966656E6562;
        v15 = 0xED00004449797261;
      }

      v16 = 0x80000001000104B0;
      if (v26 == 4)
      {
        v16 = 0x8000000100010490;
      }

      if (v26 <= 5)
      {
        v14 = 0xD000000000000013;
        v15 = v16;
      }

      if (v26 == 2)
      {
        v17 = v5;
      }

      else
      {
        v17 = 0xD000000000000012;
      }

      if (v26 == 2)
      {
        v18 = 0x8000000100010450;
      }

      else
      {
        v18 = 0x8000000100010470;
      }

      if (v26)
      {
        v19 = 0x536567617373656DLL;
      }

      else
      {
        v19 = 0x546567617373656DLL;
      }

      if (v26)
      {
        v13 = 0xEF656C7469546275;
      }

      if (v26 > 1)
      {
        v13 = v18;
      }

      else
      {
        v17 = v19;
      }

      v20 = v26 <= 3 ? v17 : v14;
      v21 = v26 <= 3 ? v13 : v15;
      if (v7 == v20 && v8 == v21)
      {
        break;
      }

      v22 = v5;
      v23 = sub_10000F6F0();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      v5 = v22;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

uint64_t sub_100002D00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000066E8(&qword_100018440, &qword_10000FDC8);
  v35 = a2;
  result = sub_10000F6A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v3;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_10000F730();
      sub_10000F500();

      result = sub_10000F750();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

Swift::Int sub_100003104(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000F640() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_10000F730();
      sub_10000F500();

      result = sub_10000F750();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_100003408()
{
  v1 = v0;
  sub_1000066E8(&qword_100018440, &qword_10000FDC8);
  v2 = *v0;
  v3 = sub_10000F690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100003570(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100014A88;
  v6._object = a2;
  v4 = sub_10000F6D0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000035BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000066E8(&qword_100018440, &qword_10000FDC8);
    v3 = sub_10000F6B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100002974(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

uint64_t sub_1000036B4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 338) = a3;
  *(v3 + 3808) = a2;
  *(v3 + 3800) = a1;
  v4 = *(*(sub_1000066E8(&qword_100018418, &qword_10000FDA8) - 8) + 64) + 15;
  *(v3 + 3816) = swift_task_alloc();
  v5 = sub_10000F150();
  *(v3 + 3824) = v5;
  v6 = *(v5 - 8);
  *(v3 + 3832) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 3840) = swift_task_alloc();
  *(v3 + 3848) = swift_task_alloc();
  v8 = sub_10000F180();
  *(v3 + 3856) = v8;
  v9 = *(v8 - 8);
  *(v3 + 3864) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 3872) = swift_task_alloc();
  *(v3 + 3880) = swift_task_alloc();
  *(v3 + 3888) = swift_task_alloc();
  *(v3 + 3896) = swift_task_alloc();
  *(v3 + 3904) = swift_task_alloc();
  v11 = sub_10000F0A0();
  *(v3 + 3912) = v11;
  v12 = *(v11 - 8);
  *(v3 + 3920) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 3928) = swift_task_alloc();

  return _swift_task_switch(sub_1000038A8, 0, 0);
}

uint64_t sub_1000038A8()
{
  v1 = *(v0 + 3808);
  v2 = sub_10000F0B0();
  if (!v2)
  {
    v6 = sub_1000035BC(&_swiftEmptyArrayStorage);
LABEL_28:
    v40 = *(v0 + 3904);
    sub_10000F160();
    v41 = sub_10000F170();
    v42 = sub_10000F5F0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Building message..", v43, 2u);
    }

    v44 = *(v0 + 3904);
    v45 = *(v0 + 3864);
    v46 = *(v0 + 3856);

    v47 = *(v45 + 8);
    *(v0 + 3936) = v47;
    v47(v44, v46);
    *(v0 + 4016) = 0;
    v48 = 0xE000000000000000;
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    *(v0 + 376) = 0;
    *(v0 + 384) = 0xE000000000000000;
    *(v0 + 392) = 0;
    *(v0 + 400) = 0xE000000000000000;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0xE000000000000000;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0xE000000000000000;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0;
    *(v0 + 456) = 0xE000000000000000;
    *(v0 + 464) = xmmword_10000FC90;
    *(v0 + 480) = 0xE000000000000000;
    *(v0 + 488) = 0;
    *(v0 + 496) = 0xE000000000000000;
    *(v0 + 504) = 0;
    *(v0 + 512) = 0xE000000000000000;
    *(v0 + 520) = 0;
    *(v0 + 528) = 0xE000000000000000;
    *(v0 + 536) = 0;
    if (v6[2])
    {
      v49 = sub_100002974(6u);
      if (v50)
      {
        v51 = (v6[7] + 16 * v49);
        v52 = *v51;
        v48 = v51[1];
      }

      else
      {
        v52 = 0;
        v48 = 0xE000000000000000;
      }
    }

    else
    {
      v52 = 0;
    }

    *(v0 + 3952) = v48;
    *(v0 + 3944) = v52;
    v53 = *(v0 + 3832);
    v54 = *(v0 + 3824);
    v55 = *(v0 + 3816);

    *(v0 + 448) = v52;
    *(v0 + 456) = v48;
    sub_10000F110();

    if ((*(v53 + 48))(v55, 1, v54) == 1)
    {
      sub_100006730(*(v0 + 3816));
      sub_100006798(v0 + 544);
      v56 = *(v0 + 3928);
      v57 = *(v0 + 3904);
      v58 = *(v0 + 3896);
      v59 = *(v0 + 3888);
      v60 = *(v0 + 3880);
      v61 = *(v0 + 3872);
      v85 = *(v0 + 3848);
      v87 = *(v0 + 3840);
      v89 = *(v0 + 3816);
      v62 = *(v0 + 3800);
      v63 = *(v0 + 520);
      *(v0 + 904) = *(v0 + 504);
      *(v0 + 920) = v63;
      *(v0 + 936) = *(v0 + 536);
      v64 = *(v0 + 456);
      *(v0 + 840) = *(v0 + 440);
      *(v0 + 856) = v64;
      v65 = *(v0 + 488);
      *(v0 + 872) = *(v0 + 472);
      *(v0 + 888) = v65;
      v66 = *(v0 + 392);
      *(v0 + 776) = *(v0 + 376);
      *(v0 + 792) = v66;
      v67 = *(v0 + 424);
      *(v0 + 808) = *(v0 + 408);
      *(v0 + 824) = v67;
      v68 = *(v0 + 360);
      *(v0 + 744) = *(v0 + 344);
      *(v0 + 760) = v68;
      sub_1000067BC(v0 + 744);
      *v62 = *(v0 + 544);
      v69 = *(v0 + 608);
      v71 = *(v0 + 560);
      v70 = *(v0 + 576);
      *(v62 + 48) = *(v0 + 592);
      *(v62 + 64) = v69;
      *(v62 + 16) = v71;
      *(v62 + 32) = v70;
      v72 = *(v0 + 672);
      v74 = *(v0 + 624);
      v73 = *(v0 + 640);
      *(v62 + 112) = *(v0 + 656);
      *(v62 + 128) = v72;
      *(v62 + 80) = v74;
      *(v62 + 96) = v73;
      v76 = *(v0 + 704);
      v75 = *(v0 + 720);
      v77 = *(v0 + 688);
      *(v62 + 192) = *(v0 + 736);
      *(v62 + 160) = v76;
      *(v62 + 176) = v75;
      *(v62 + 144) = v77;

      v78 = *(v0 + 8);

      return v78();
    }

    else
    {
      (*(*(v0 + 3832) + 32))(*(v0 + 3848), *(v0 + 3816), *(v0 + 3824));
      v80 = [objc_allocWithZone(AAInheritanceController) init];
      *(v0 + 3960) = v80;
      isa = sub_10000F130().super.isa;
      *(v0 + 3968) = isa;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 3776;
      *(v0 + 24) = sub_100004018;
      v82 = swift_continuation_init();
      *(v0 + 3600) = sub_1000066E8(&qword_100018420, &qword_10000FDB0);
      *(v0 + 3576) = v82;
      *(v0 + 3544) = _NSConcreteStackBlock;
      *(v0 + 3552) = 1107296256;
      *(v0 + 3560) = sub_100001EF4;
      *(v0 + 3568) = &unk_100014C60;
      [v80 fetchInvitationWithBeneficiaryID:isa completion:v0 + 3544];

      return _swift_continuation_await(v0 + 16);
    }
  }

  v3 = v2;
  v88 = *(v2 + 16);
  if (!v88)
  {

    v6 = &_swiftEmptyDictionarySingleton;
    goto LABEL_28;
  }

  v4 = 0;
  v5 = *(v0 + 3920);
  v84 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v86 = v5;
  v83 = (v5 + 8);
  v6 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v2);
    }

    (*(v86 + 16))(*(v0 + 3928), v84 + *(v86 + 72) * v4, *(v0 + 3912));
    v9 = sub_10000F080();
    v11 = v10;
    v12._rawValue = &off_100014A88;
    v92._countAndFlagsBits = v9;
    v92._object = v11;
    v13 = sub_10000F6D0(v12, v92);

    if (v13 >= 9)
    {
      v14 = 8;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(v0 + 3928);
    v16 = sub_10000F090();
    if (!v17)
    {
      v28 = sub_100002974(v14);
      if (v29)
      {
        v30 = v28;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100003408();
        }

        v31 = *(v0 + 3928);
        v32 = *(v0 + 3912);
        v33 = *(v6[7] + 16 * v30 + 8);

        sub_100003104(v30, v6);
        v2 = (*v83)(v31, v32);
      }

      else
      {
        v2 = (*v83)(*(v0 + 3928), *(v0 + 3912));
      }

      goto LABEL_5;
    }

    v18 = v16;
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v6;
    v2 = sub_100002974(v14);
    v22 = v6[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_46;
    }

    v26 = v21;
    if (v6[3] < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = v2;
      sub_100003408();
      v2 = v39;
      v6 = v90;
    }

LABEL_21:
    v34 = *(v0 + 3928);
    v35 = *(v0 + 3912);
    if (v26)
    {
      v7 = (v6[7] + 16 * v2);
      v8 = v7[1];
      *v7 = v18;
      v7[1] = v19;

      v2 = (*v83)(v34, v35);
    }

    else
    {
      v6[(v2 >> 6) + 8] |= 1 << v2;
      *(v6[6] + v2) = v14;
      v36 = (v6[7] + 16 * v2);
      *v36 = v18;
      v36[1] = v19;
      v2 = (*v83)(v34, v35);
      v37 = v6[2];
      v24 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v24)
      {
        goto LABEL_47;
      }

      v6[2] = v38;
    }

LABEL_5:
    if (v88 == ++v4)
    {

      goto LABEL_28;
    }
  }

  sub_100002D00(v25, isUniquelyReferenced_nonNull_native);
  v2 = sub_100002974(v14);
  if ((v26 & 1) == (v27 & 1))
  {
    goto LABEL_21;
  }

  v2 = &type metadata for InviteQueryItem;

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v2);
}

uint64_t sub_100004018()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 3976) = v2;
  if (v2)
  {
    v3 = sub_1000054CC;
  }

  else
  {
    v3 = sub_100004128;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004128()
{
  v175 = v0;
  v1 = *(v0 + 3968);
  v2 = *(v0 + 3776);

  *(v0 + 536) = 1;
  v171 = v2;
  v3 = [v2 beneficiaryDisplayName];
  if (v3)
  {
    v4 = v3;
    sub_10000F4D0();
  }

  type metadata accessor for MessagesViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v164 = objc_opt_self();
  v166 = ObjCClassFromMetadata;
  v6 = [v164 bundleForClass:ObjCClassFromMetadata];
  v177._object = 0xEC000000454C5449;
  v161._countAndFlagsBits = 0xEC000000454C5449;
  v177._countAndFlagsBits = 0x545F5245444E4553;
  v179.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v179.value._object = 0xEB00000000656C62;
  v7.super.isa = v6;
  v181._countAndFlagsBits = 0;
  v181._object = 0xE000000000000000;
  v162._object = sub_10000F0E0(v177, v179, v7, v181, v161);

  sub_1000066E8(&qword_100018430, &qword_10000FDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10000FCA0;
  v9 = [v2 beneficiaryFirstName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_10000F4D0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = (v0 + 344);
  v169 = (v0 + 1344);
  *(v8 + 56) = &type metadata for String;
  v15 = sub_1000068E8();
  *(v8 + 64) = v15;
  if (v13)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v13)
  {
    v17 = v13;
  }

  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v18 = sub_10000F4E0();
  v20 = v19;

  *(v0 + 344) = v18;
  *(v0 + 352) = v20;
  v21 = [v164 bundleForClass:v166];
  v178._object = 0xEF454C5449544255;
  v162._countAndFlagsBits = 0xEF454C5449544255;
  v178._countAndFlagsBits = 0x535F5245444E4553;
  v180.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v180.value._object = 0xEB00000000656C62;
  v22.super.isa = v21;
  v182._countAndFlagsBits = 0;
  v182._object = 0xE000000000000000;
  sub_10000F0E0(v178, v180, v22, v182, v162);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10000FCA0;
  v24 = [v171 beneficiaryFirstName];
  v168 = (v0 + 1544);
  v163 = (v0 + 1744);
  if (v24)
  {
    v25 = v24;
    v26 = sub_10000F4D0();
    v28 = v27;

    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v15;
    if (v28)
    {
      goto LABEL_16;
    }

    v26 = 0;
  }

  else
  {
    v26 = 0;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v15;
  }

  v28 = 0xE000000000000000;
LABEL_16:
  v29 = *(v0 + 3848);
  v30 = *(v0 + 3832);
  v31 = *(v0 + 3824);
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  v32 = sub_10000F4E0();
  v34 = v33;

  *(v0 + 360) = v32;
  *(v0 + 368) = v34;
  v35 = [v171 status];

  (*(v30 + 8))(v29, v31);
  *(v0 + 464) = v35;
  v36 = *(v0 + 3896);
  sub_10000F160();
  v37 = *(v0 + 488);
  v38 = *(v0 + 504);
  v39 = *(v0 + 520);
  *(v0 + 2104) = v38;
  *(v0 + 2120) = v39;
  v40 = *(v0 + 424);
  v41 = *(v0 + 440);
  v42 = *(v0 + 456);
  *(v0 + 2040) = v41;
  *(v0 + 2056) = v42;
  v43 = *(v0 + 456);
  v44 = *(v0 + 472);
  v45 = *(v0 + 488);
  *(v0 + 2072) = v44;
  *(v0 + 2088) = v45;
  v46 = *(v0 + 360);
  v47 = *(v0 + 376);
  v48 = *(v0 + 392);
  *(v0 + 1976) = v47;
  *(v0 + 1992) = v48;
  v49 = *(v0 + 392);
  v50 = *(v0 + 408);
  v51 = *(v0 + 424);
  *(v0 + 2008) = v50;
  *(v0 + 2024) = v51;
  v52 = *(v0 + 360);
  *(v0 + 1944) = *v14;
  *(v0 + 1960) = v52;
  v53 = *(v0 + 488);
  v54 = *(v0 + 520);
  *(v0 + 1904) = *(v0 + 504);
  *(v0 + 1920) = v54;
  v55 = *(v0 + 424);
  v56 = *(v0 + 456);
  *(v0 + 1840) = *(v0 + 440);
  *(v0 + 1856) = v56;
  *(v0 + 1872) = *(v0 + 472);
  *(v0 + 1888) = v53;
  v57 = *v14;
  v58 = *(v0 + 360);
  v59 = *(v0 + 392);
  *(v0 + 1776) = *(v0 + 376);
  *(v0 + 1792) = v59;
  *(v0 + 1808) = *(v0 + 408);
  *(v0 + 1824) = v55;
  *v163 = *v14;
  *(v0 + 1760) = v58;
  v60 = *(v0 + 488);
  v61 = *(v0 + 520);
  *(v0 + 1704) = *(v0 + 504);
  *(v0 + 1720) = v61;
  v62 = *(v0 + 424);
  v63 = *(v0 + 456);
  *(v0 + 1640) = *(v0 + 440);
  *(v0 + 1656) = v63;
  *(v0 + 1672) = *(v0 + 472);
  *(v0 + 1688) = v60;
  v64 = *(v0 + 360);
  v65 = *(v0 + 392);
  *(v0 + 1576) = *(v0 + 376);
  *(v0 + 1592) = v65;
  *(v0 + 1608) = *(v0 + 408);
  *(v0 + 1624) = v62;
  *v168 = *v14;
  *(v0 + 1560) = v64;
  v66 = *(v0 + 520);
  *(v0 + 1504) = v38;
  *(v0 + 1520) = v66;
  *(v0 + 1440) = v41;
  *(v0 + 1456) = v43;
  *(v0 + 1472) = v44;
  *(v0 + 1488) = v37;
  *(v0 + 1376) = v47;
  *(v0 + 1392) = v49;
  *(v0 + 1408) = v50;
  *(v0 + 1424) = v40;
  *(v0 + 2136) = *(v0 + 536);
  *(v0 + 1936) = *(v0 + 536);
  *(v0 + 1736) = *(v0 + 536);
  *(v0 + 1536) = *(v0 + 536);
  *v169 = v57;
  *(v0 + 1360) = v46;
  sub_1000068AC(v163, v0 + 2144);
  sub_1000068AC(v168, v0 + 2344);
  sub_1000068AC(v169, v0 + 2544);
  sub_1000068AC(v0 + 1944, v0 + 2744);
  v67 = sub_10000F170();
  v68 = sub_10000F5F0();
  sub_1000067BC(v0 + 1944);
  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v0 + 3936);
  v71 = *(v0 + 3896);
  v172 = *(v0 + 3864);
  v72 = *(v0 + 3856);
  if (v69)
  {
    v167 = *(v0 + 3856);
    v73 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *v73 = 136315906;
    v74 = *(v0 + 2072);
    v165 = v71;
    v75 = *(v0 + 2080);

    v76 = sub_100002318(v74, v75, &v174);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    v77 = *(v0 + 1920);
    v78 = *(v0 + 1928);

    sub_1000067BC(v163);
    v79 = sub_100002318(v77, v78, &v174);

    *(v73 + 14) = v79;
    *(v73 + 22) = 1024;
    *(v73 + 24) = *(v0 + 1736);
    sub_1000067BC(v168);
    *(v73 + 28) = 2080;
    v80 = *(v0 + 1448);
    v81 = *(v0 + 1456);

    sub_1000067BC(v169);
    v82 = sub_100002318(v80, v81, &v174);

    *(v73 + 30) = v82;
    _os_log_impl(&_mh_execute_header, v67, v68, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v73, 0x26u);
    swift_arrayDestroy();

    v70(v165, v167);
  }

  else
  {
    sub_1000067BC(v169);
    sub_1000067BC(v168);
    sub_1000067BC(v163);

    v70(v71, v72);
  }

  if (*(v0 + 338) == 1)
  {
    v83 = v0 + 3344;
    v84 = *(v0 + 3888);
    sub_10000F160();
    v85 = sub_10000F170();
    v86 = sub_10000F5F0();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Message is in compose screen, return message with minimal details", v87, 2u);
    }

    v88 = *(v0 + 3936);
    v89 = *(v0 + 3888);
    v90 = *(v0 + 3864);
    v91 = *(v0 + 3856);

    v88(v89, v91);
    swift_beginAccess();
    v92 = *(v0 + 488);
    v94 = *(v0 + 504);
    v93 = *(v0 + 520);
    *(v0 + 1304) = v94;
    *(v0 + 1320) = v93;
    v95 = *(v0 + 424);
    v97 = *(v0 + 440);
    v96 = *(v0 + 456);
    *(v0 + 1240) = v97;
    *(v0 + 1256) = v96;
    v98 = *(v0 + 456);
    v100 = *(v0 + 472);
    v99 = *(v0 + 488);
    *(v0 + 1272) = v100;
    *(v0 + 1288) = v99;
    v101 = *(v0 + 360);
    v103 = *(v0 + 376);
    v102 = *(v0 + 392);
    *(v0 + 1176) = v103;
    *(v0 + 1192) = v102;
    v104 = *(v0 + 392);
    v106 = *(v0 + 408);
    v105 = *(v0 + 424);
    *(v0 + 1208) = v106;
    *(v0 + 1224) = v105;
    v107 = *(v0 + 360);
    v108 = *v14;
    *(v0 + 1144) = *v14;
    *(v0 + 1160) = v107;
    v109 = *(v0 + 520);
    *(v0 + 3504) = v94;
    *(v0 + 3520) = v109;
    *(v0 + 3440) = v97;
    *(v0 + 3456) = v98;
    *(v0 + 3472) = v100;
    *(v0 + 3488) = v92;
    *(v0 + 3376) = v103;
    *(v0 + 3392) = v104;
    *(v0 + 3408) = v106;
    *(v0 + 3424) = v95;
    *(v0 + 1336) = *(v0 + 536);
    *(v0 + 3536) = *(v0 + 536);
    *v83 = v108;
    *(v0 + 3360) = v101;
    nullsub_1(v0 + 3344);
    v110 = v0 + 944;
    v111 = v0 + 1144;
  }

  else
  {
    v83 = v0 + 2944;
    swift_beginAccess();
    v112 = *(v0 + 488);
    v114 = *(v0 + 504);
    v113 = *(v0 + 520);
    *(v0 + 3304) = v114;
    *(v0 + 3320) = v113;
    v115 = *(v0 + 424);
    v117 = *(v0 + 440);
    v116 = *(v0 + 456);
    *(v0 + 3240) = v117;
    *(v0 + 3256) = v116;
    v118 = *(v0 + 456);
    v120 = *(v0 + 472);
    v119 = *(v0 + 488);
    *(v0 + 3272) = v120;
    *(v0 + 3288) = v119;
    v121 = *(v0 + 360);
    v123 = *(v0 + 376);
    v122 = *(v0 + 392);
    *(v0 + 3176) = v123;
    *(v0 + 3192) = v122;
    v124 = *(v0 + 392);
    v126 = *(v0 + 408);
    v125 = *(v0 + 424);
    *(v0 + 3208) = v126;
    *(v0 + 3224) = v125;
    v127 = *(v0 + 360);
    v128 = *v14;
    *(v0 + 3144) = *v14;
    *(v0 + 3160) = v127;
    v129 = *(v0 + 520);
    *(v0 + 3104) = v114;
    *(v0 + 3120) = v129;
    *(v0 + 3040) = v117;
    *(v0 + 3056) = v118;
    *(v0 + 3072) = v120;
    *(v0 + 3088) = v112;
    *(v0 + 2976) = v123;
    *(v0 + 2992) = v124;
    *(v0 + 3008) = v126;
    *(v0 + 3024) = v115;
    *(v0 + 3336) = *(v0 + 536);
    *(v0 + 3136) = *(v0 + 536);
    *(v0 + 2944) = v128;
    *(v0 + 2960) = v121;
    nullsub_1(v0 + 2944);
    v110 = v0 + 144;
    v111 = v0 + 3144;
  }

  sub_1000068AC(v111, v110);
  v130 = *(v83 + 176);
  *(v0 + 704) = *(v83 + 160);
  *(v0 + 720) = v130;
  *(v0 + 736) = *(v83 + 192);
  v131 = *(v83 + 112);
  *(v0 + 640) = *(v83 + 96);
  *(v0 + 656) = v131;
  v132 = *(v83 + 144);
  *(v0 + 672) = *(v83 + 128);
  *(v0 + 688) = v132;
  v133 = *(v83 + 48);
  *(v0 + 576) = *(v83 + 32);
  *(v0 + 592) = v133;
  v134 = *(v83 + 80);
  *(v0 + 608) = *(v83 + 64);
  *(v0 + 624) = v134;
  v135 = *(v83 + 16);
  *(v0 + 544) = *v83;
  *(v0 + 560) = v135;
  v136 = *(v0 + 3928);
  v137 = *(v0 + 3904);
  v138 = *(v0 + 3896);
  v139 = *(v0 + 3888);
  v140 = *(v0 + 3880);
  v141 = *(v0 + 3872);
  v142 = *(v0 + 3848);
  v170 = *(v0 + 3840);
  v173 = *(v0 + 3816);
  v143 = *(v0 + 3800);
  v144 = *(v0 + 520);
  *(v0 + 904) = *(v0 + 504);
  *(v0 + 920) = v144;
  *(v0 + 936) = *(v0 + 536);
  v145 = *(v0 + 456);
  *(v0 + 840) = *(v0 + 440);
  *(v0 + 856) = v145;
  v146 = *(v0 + 488);
  *(v0 + 872) = *(v0 + 472);
  *(v0 + 888) = v146;
  v147 = *(v0 + 392);
  *(v0 + 776) = *(v0 + 376);
  *(v0 + 792) = v147;
  v148 = *(v0 + 424);
  *(v0 + 808) = *(v0 + 408);
  *(v0 + 824) = v148;
  v149 = *(v0 + 360);
  *(v0 + 744) = *v14;
  *(v0 + 760) = v149;
  sub_1000067BC(v0 + 744);
  *v143 = *(v0 + 544);
  v150 = *(v0 + 608);
  v152 = *(v0 + 560);
  v151 = *(v0 + 576);
  *(v143 + 48) = *(v0 + 592);
  *(v143 + 64) = v150;
  *(v143 + 16) = v152;
  *(v143 + 32) = v151;
  v153 = *(v0 + 672);
  v155 = *(v0 + 624);
  v154 = *(v0 + 640);
  *(v143 + 112) = *(v0 + 656);
  *(v143 + 128) = v153;
  *(v143 + 80) = v155;
  *(v143 + 96) = v154;
  v157 = *(v0 + 704);
  v156 = *(v0 + 720);
  v158 = *(v0 + 688);
  *(v143 + 192) = *(v0 + 736);
  *(v143 + 160) = v157;
  *(v143 + 176) = v156;
  *(v143 + 144) = v158;

  v159 = *(v0 + 8);

  return v159();
}

uint64_t sub_100004B48()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 3992) = v2;
  if (v2)
  {
    v3 = sub_100005E7C;
  }

  else
  {
    v3 = sub_100004C58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004C58()
{
  v161 = v0;
  v1 = *(v0 + 3768);

  v2 = v1;
  if (v1 >> 62)
  {
    result = sub_10000F680();
    v2 = v1;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    v20 = (v0 + 344);

    v21 = *(v0 + 3896);
    sub_10000F160();
    v22 = *(v0 + 488);
    v23 = *(v0 + 504);
    v24 = *(v0 + 520);
    *(v0 + 2104) = v23;
    *(v0 + 2120) = v24;
    v25 = *(v0 + 424);
    v26 = *(v0 + 440);
    v27 = *(v0 + 456);
    *(v0 + 2040) = v26;
    *(v0 + 2056) = v27;
    v28 = *(v0 + 456);
    v29 = *(v0 + 472);
    v30 = *(v0 + 488);
    *(v0 + 2072) = v29;
    *(v0 + 2088) = v30;
    v31 = *(v0 + 360);
    v32 = *(v0 + 376);
    v33 = *(v0 + 392);
    *(v0 + 1976) = v32;
    *(v0 + 1992) = v33;
    v34 = *(v0 + 392);
    v35 = *(v0 + 408);
    v36 = *(v0 + 424);
    *(v0 + 2008) = v35;
    *(v0 + 2024) = v36;
    v37 = *(v0 + 360);
    *(v0 + 1944) = *(v0 + 344);
    *(v0 + 1960) = v37;
    v38 = *(v0 + 488);
    v39 = *(v0 + 520);
    *(v0 + 1904) = *(v0 + 504);
    *(v0 + 1920) = v39;
    v40 = *(v0 + 424);
    v41 = *(v0 + 456);
    *(v0 + 1840) = *(v0 + 440);
    *(v0 + 1856) = v41;
    *(v0 + 1872) = *(v0 + 472);
    *(v0 + 1888) = v38;
    v42 = *(v0 + 344);
    v43 = *(v0 + 360);
    v44 = *(v0 + 392);
    *(v0 + 1776) = *(v0 + 376);
    *(v0 + 1792) = v44;
    *(v0 + 1808) = *(v0 + 408);
    *(v0 + 1824) = v40;
    *(v0 + 1744) = *(v0 + 344);
    *(v0 + 1760) = v43;
    v45 = *(v0 + 488);
    v46 = *(v0 + 520);
    *(v0 + 1704) = *(v0 + 504);
    *(v0 + 1720) = v46;
    v47 = *(v0 + 424);
    v48 = *(v0 + 456);
    *(v0 + 1640) = *(v0 + 440);
    *(v0 + 1656) = v48;
    *(v0 + 1672) = *(v0 + 472);
    *(v0 + 1688) = v45;
    v49 = *(v0 + 360);
    v50 = *(v0 + 392);
    *(v0 + 1576) = *(v0 + 376);
    *(v0 + 1592) = v50;
    *(v0 + 1608) = *(v0 + 408);
    *(v0 + 1624) = v47;
    *(v0 + 1544) = *(v0 + 344);
    *(v0 + 1560) = v49;
    v51 = *(v0 + 520);
    *(v0 + 1504) = v23;
    *(v0 + 1520) = v51;
    *(v0 + 1440) = v26;
    *(v0 + 1456) = v28;
    *(v0 + 1472) = v29;
    *(v0 + 1488) = v22;
    *(v0 + 1376) = v32;
    *(v0 + 1392) = v34;
    *(v0 + 1408) = v35;
    *(v0 + 1424) = v25;
    *(v0 + 2136) = *(v0 + 536);
    *(v0 + 1936) = *(v0 + 536);
    *(v0 + 1736) = *(v0 + 536);
    *(v0 + 1536) = *(v0 + 536);
    *(v0 + 1344) = v42;
    *(v0 + 1360) = v31;
    sub_1000068AC(v0 + 1744, v0 + 2144);
    sub_1000068AC(v0 + 1544, v0 + 2344);
    sub_1000068AC(v0 + 1344, v0 + 2544);
    sub_1000068AC(v0 + 1944, v0 + 2744);
    v52 = sub_10000F170();
    v53 = sub_10000F5F0();
    sub_1000067BC(v0 + 1944);
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 3936);
    v56 = *(v0 + 3896);
    v158 = *(v0 + 3864);
    v57 = *(v0 + 3856);
    if (v54)
    {
      v154 = *(v0 + 3856);
      v58 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *v58 = 136315906;
      v150 = v56;
      v152 = v55;
      v59 = *(v0 + 2072);
      v60 = *(v0 + 2080);

      v61 = sub_100002318(v59, v60, &v160);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v62 = *(v0 + 1920);
      v63 = *(v0 + 1928);

      sub_1000067BC(v0 + 1744);
      v64 = sub_100002318(v62, v63, &v160);

      *(v58 + 14) = v64;
      *(v58 + 22) = 1024;
      *(v58 + 24) = *(v0 + 1736);
      sub_1000067BC(v0 + 1544);
      *(v58 + 28) = 2080;
      v65 = *(v0 + 1448);
      v66 = *(v0 + 1456);

      sub_1000067BC(v0 + 1344);
      v67 = sub_100002318(v65, v66, &v160);

      *(v58 + 30) = v67;
      _os_log_impl(&_mh_execute_header, v52, v53, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v58, 0x26u);
      swift_arrayDestroy();

      v152(v150, v154);
    }

    else
    {
      sub_1000067BC(v0 + 1344);
      sub_1000067BC(v0 + 1544);
      sub_1000067BC(v0 + 1744);

      v55(v56, v57);
    }

    v68 = v0;
    if (*(v0 + 338) == 1)
    {
      v69 = (v0 + 1144);
      v70 = v0 + 3344;
      v71 = *(v0 + 3888);
      sub_10000F160();
      v72 = sub_10000F170();
      v73 = sub_10000F5F0();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "Message is in compose screen, return message with minimal details", v74, 2u);
      }

      v75 = *(v0 + 3936);
      v76 = *(v68 + 3888);
      v77 = *(v68 + 3864);
      v78 = *(v68 + 3856);

      v75(v76, v78);
      swift_beginAccess();
      v79 = v20[9];
      v81 = v20[10];
      v80 = v20[11];
      *(v68 + 1304) = v81;
      *(v68 + 1320) = v80;
      v82 = v20[5];
      v84 = v20[6];
      v83 = v20[7];
      *(v68 + 1240) = v84;
      *(v68 + 1256) = v83;
      v85 = v20[7];
      v87 = v20[8];
      v86 = v20[9];
      *(v68 + 1272) = v87;
      *(v68 + 1288) = v86;
      v88 = v20[1];
      v90 = v20[2];
      v89 = v20[3];
      *(v68 + 1176) = v90;
      *(v68 + 1192) = v89;
      v91 = v20[3];
      v93 = v20[4];
      v92 = v20[5];
      *(v68 + 1208) = v93;
      *(v68 + 1224) = v92;
      v94 = v20[1];
      v95 = *v20;
      *v69 = *v20;
      *(v68 + 1160) = v94;
      v96 = v20[11];
      *(v68 + 3504) = v81;
      *(v68 + 3520) = v96;
      *(v68 + 3440) = v84;
      *(v68 + 3456) = v85;
      *(v68 + 3472) = v87;
      *(v68 + 3488) = v79;
      *(v68 + 3376) = v90;
      *(v68 + 3392) = v91;
      *(v68 + 3408) = v93;
      *(v68 + 3424) = v82;
      *(v68 + 1336) = *(v20 + 96);
      *(v68 + 3536) = *(v20 + 96);
      *v70 = v95;
      *(v68 + 3360) = v88;
      nullsub_1(v68 + 3344);
      v97 = v68 + 944;
      v98 = v68 + 1144;
    }

    else
    {
      v70 = v0 + 2944;
      swift_beginAccess();
      v99 = *(v0 + 488);
      v101 = *(v0 + 504);
      v100 = *(v0 + 520);
      *(v0 + 3304) = v101;
      *(v0 + 3320) = v100;
      v102 = *(v0 + 424);
      v104 = *(v0 + 440);
      v103 = *(v0 + 456);
      *(v0 + 3240) = v104;
      *(v0 + 3256) = v103;
      v105 = *(v0 + 456);
      v107 = *(v0 + 472);
      v106 = *(v0 + 488);
      *(v0 + 3272) = v107;
      *(v0 + 3288) = v106;
      v108 = *(v0 + 360);
      v110 = *(v0 + 376);
      v109 = *(v0 + 392);
      *(v0 + 3176) = v110;
      *(v0 + 3192) = v109;
      v111 = *(v0 + 392);
      v113 = *(v0 + 408);
      v112 = *(v0 + 424);
      *(v0 + 3208) = v113;
      *(v0 + 3224) = v112;
      v114 = *(v0 + 360);
      v115 = *v20;
      *(v0 + 3144) = *v20;
      *(v0 + 3160) = v114;
      v116 = *(v0 + 520);
      *(v0 + 3104) = v101;
      *(v0 + 3120) = v116;
      *(v0 + 3040) = v104;
      *(v0 + 3056) = v105;
      *(v0 + 3072) = v107;
      *(v0 + 3088) = v99;
      *(v0 + 2976) = v110;
      *(v0 + 2992) = v111;
      *(v0 + 3008) = v113;
      *(v0 + 3024) = v102;
      *(v0 + 3336) = *(v0 + 536);
      *(v0 + 3136) = *(v0 + 536);
      *(v0 + 2944) = v115;
      *(v0 + 2960) = v108;
      nullsub_1(v0 + 2944);
      v97 = v0 + 144;
      v98 = v0 + 3144;
    }

    sub_1000068AC(v98, v97);
    v117 = *(v70 + 176);
    *(v68 + 704) = *(v70 + 160);
    *(v68 + 720) = v117;
    *(v68 + 736) = *(v70 + 192);
    v118 = *(v70 + 112);
    *(v68 + 640) = *(v70 + 96);
    *(v68 + 656) = v118;
    v119 = *(v70 + 144);
    *(v68 + 672) = *(v70 + 128);
    *(v68 + 688) = v119;
    v120 = *(v70 + 48);
    *(v68 + 576) = *(v70 + 32);
    *(v68 + 592) = v120;
    v121 = *(v70 + 80);
    *(v68 + 608) = *(v70 + 64);
    *(v68 + 624) = v121;
    v122 = *(v70 + 16);
    *(v68 + 544) = *v70;
    *(v68 + 560) = v122;
    v123 = (v68 + 744);
    v124 = *(v68 + 3928);
    v125 = *(v68 + 3904);
    v126 = v68;
    v127 = *(v68 + 3896);
    v128 = *(v126 + 3888);
    v129 = *(v126 + 3880);
    v130 = *(v126 + 3872);
    v131 = *(v126 + 3848);
    v155 = *(v126 + 3840);
    v159 = *(v126 + 3816);
    v132 = *(v126 + 3800);
    v133 = v20[11];
    v123[10] = v20[10];
    v123[11] = v133;
    *(v126 + 936) = *(v20 + 96);
    v134 = v20[7];
    v123[6] = v20[6];
    v123[7] = v134;
    v135 = v20[9];
    v123[8] = v20[8];
    v123[9] = v135;
    v136 = v20[3];
    v123[2] = v20[2];
    v123[3] = v136;
    v137 = v20[5];
    v123[4] = v20[4];
    v123[5] = v137;
    v138 = v20[1];
    *v123 = *v20;
    v123[1] = v138;
    sub_1000067BC(v123);
    *v132 = *(v126 + 544);
    v139 = *(v126 + 608);
    v141 = *(v126 + 560);
    v140 = *(v126 + 576);
    *(v132 + 48) = *(v126 + 592);
    *(v132 + 64) = v139;
    *(v132 + 16) = v141;
    *(v132 + 32) = v140;
    v142 = *(v126 + 672);
    v144 = *(v126 + 624);
    v143 = *(v126 + 640);
    *(v132 + 112) = *(v126 + 656);
    *(v132 + 128) = v142;
    *(v132 + 80) = v144;
    *(v132 + 96) = v143;
    v146 = *(v126 + 704);
    v145 = *(v126 + 720);
    v147 = *(v126 + 688);
    *(v132 + 192) = *(v126 + 736);
    *(v132 + 160) = v146;
    *(v132 + 176) = v145;
    *(v132 + 144) = v147;

    v148 = *(v126 + 8);

    return v148();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (result >= 1)
  {
    v4 = 0;
    v149 = v2 & 0xC000000000000001;
    v151 = result;
    v153 = v2;
    v156 = v0;
    while (1)
    {
      v5 = v149 ? sub_10000F660() : *(v2 + 8 * v4 + 32);
      v6 = v5;
      v7 = *(v0 + 4008);
      v8 = *(v0 + 4000);
      v157 = *(v0 + 3952);
      v9 = *(v0 + 3944);
      v10 = *(v0 + 3840);
      v11 = *(v0 + 3824);

      v12 = [v6 beneficiaryID];
      sub_10000F140();

      v13 = sub_10000F120();
      v15 = v14;
      v8(v10, v11);
      if (v9 == v13 && v157 == v15)
      {
        break;
      }

      v0 = v156;
      v16 = *(v156 + 3952);
      v17 = *(v156 + 3944);
      v18 = sub_10000F6F0();

      if (v18)
      {
        goto LABEL_14;
      }

LABEL_6:
      v2 = v153;
      if (v151 == ++v4)
      {
        goto LABEL_16;
      }
    }

    v0 = v156;
LABEL_14:
    *(v0 + 537) = 1;
    v19 = [v6 status];

    *(v0 + 464) = v19;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000054CC()
{
  v164 = v0;
  v1 = *(v0 + 3976);
  v2 = *(v0 + 3968);
  v3 = *(v0 + 3960);
  v4 = *(v0 + 3880);
  v5 = *(v0 + 3848);
  v6 = *(v0 + 3832);
  v7 = *(v0 + 3824);
  swift_willThrow();
  v8 = *(v6 + 8);
  *(v0 + 4000) = v8;
  *(v0 + 4008) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  sub_10000F160();
  swift_errorRetain();
  v9 = sub_10000F170();
  v10 = sub_10000F5E0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 3976);
    v157 = *(v0 + 3880);
    v160 = *(v0 + 3936);
    v12 = *(v0 + 3864);
    v13 = *(v0 + 3856);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v163[0] = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = *(v0 + 3672);
    v17 = *(v0 + 3680);
    v18 = *(v0 + 3688);
    v19 = sub_10000F710();
    v21 = sub_100002318(v19, v20, v163);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchTrustedContacts : %s", v14, 0xCu);
    sub_100006860(v15);

    v160(v157, v13);
    if ((*(v0 + 4016) & 1) == 0)
    {
LABEL_3:
      v22 = [objc_allocWithZone(AAInheritanceController) init];
      *(v0 + 3984) = v22;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 3768;
      *(v0 + 88) = sub_100004B48;
      v23 = swift_continuation_init();
      *(v0 + 3664) = sub_1000066E8(&qword_100018428, &qword_10000FDB8);
      *(v0 + 3640) = v23;
      *(v0 + 3608) = _NSConcreteStackBlock;
      *(v0 + 3616) = 1107296256;
      *(v0 + 3624) = sub_100001FCC;
      *(v0 + 3632) = &unk_100014C88;
      [v22 fetchBenefactorsWithCompletion:v0 + 3608];

      return _swift_continuation_await(v0 + 80);
    }
  }

  else
  {
    v24 = *(v0 + 3976);
    v25 = *(v0 + 3936);
    v26 = *(v0 + 3880);
    v27 = *(v0 + 3864);
    v28 = *(v0 + 3856);

    v25(v26, v28);
    if ((*(v0 + 4016) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v29 = (v0 + 344);
  v30 = *(v0 + 3896);
  sub_10000F160();
  v31 = *(v0 + 488);
  v32 = *(v0 + 504);
  v33 = *(v0 + 520);
  *(v0 + 2104) = v32;
  *(v0 + 2120) = v33;
  v34 = *(v0 + 424);
  v35 = *(v0 + 440);
  v36 = *(v0 + 456);
  *(v0 + 2040) = v35;
  *(v0 + 2056) = v36;
  v37 = *(v0 + 456);
  v38 = *(v0 + 472);
  v39 = *(v0 + 488);
  *(v0 + 2072) = v38;
  *(v0 + 2088) = v39;
  v40 = *(v0 + 360);
  v41 = *(v0 + 376);
  v42 = *(v0 + 392);
  *(v0 + 1976) = v41;
  *(v0 + 1992) = v42;
  v43 = *(v0 + 392);
  v44 = *(v0 + 408);
  v45 = *(v0 + 424);
  *(v0 + 2008) = v44;
  *(v0 + 2024) = v45;
  v46 = *(v0 + 360);
  *(v0 + 1944) = *(v0 + 344);
  *(v0 + 1960) = v46;
  v47 = *(v0 + 488);
  v48 = *(v0 + 520);
  *(v0 + 1904) = *(v0 + 504);
  *(v0 + 1920) = v48;
  v49 = *(v0 + 424);
  v50 = *(v0 + 456);
  *(v0 + 1840) = *(v0 + 440);
  *(v0 + 1856) = v50;
  *(v0 + 1872) = *(v0 + 472);
  *(v0 + 1888) = v47;
  v51 = *(v0 + 344);
  v52 = *(v0 + 360);
  v53 = *(v0 + 392);
  *(v0 + 1776) = *(v0 + 376);
  *(v0 + 1792) = v53;
  *(v0 + 1808) = *(v0 + 408);
  *(v0 + 1824) = v49;
  *(v0 + 1744) = *(v0 + 344);
  *(v0 + 1760) = v52;
  v54 = *(v0 + 488);
  v55 = *(v0 + 520);
  *(v0 + 1704) = *(v0 + 504);
  *(v0 + 1720) = v55;
  v56 = *(v0 + 424);
  v57 = *(v0 + 456);
  *(v0 + 1640) = *(v0 + 440);
  *(v0 + 1656) = v57;
  *(v0 + 1672) = *(v0 + 472);
  *(v0 + 1688) = v54;
  v58 = *(v0 + 360);
  v59 = *(v0 + 392);
  *(v0 + 1576) = *(v0 + 376);
  *(v0 + 1592) = v59;
  *(v0 + 1608) = *(v0 + 408);
  *(v0 + 1624) = v56;
  *(v0 + 1544) = *(v0 + 344);
  *(v0 + 1560) = v58;
  v60 = *(v0 + 520);
  *(v0 + 1504) = v32;
  *(v0 + 1520) = v60;
  *(v0 + 1440) = v35;
  *(v0 + 1456) = v37;
  *(v0 + 1472) = v38;
  *(v0 + 1488) = v31;
  *(v0 + 1376) = v41;
  *(v0 + 1392) = v43;
  *(v0 + 1408) = v44;
  *(v0 + 1424) = v34;
  *(v0 + 2136) = *(v0 + 536);
  *(v0 + 1936) = *(v0 + 536);
  *(v0 + 1736) = *(v0 + 536);
  *(v0 + 1536) = *(v0 + 536);
  *(v0 + 1344) = v51;
  *(v0 + 1360) = v40;
  sub_1000068AC(v0 + 1744, v0 + 2144);
  sub_1000068AC(v0 + 1544, v0 + 2344);
  sub_1000068AC(v0 + 1344, v0 + 2544);
  sub_1000068AC(v0 + 1944, v0 + 2744);
  v61 = sub_10000F170();
  v62 = sub_10000F5F0();
  sub_1000067BC(v0 + 1944);
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 3936);
  v65 = *(v0 + 3896);
  v161 = *(v0 + 3864);
  v66 = *(v0 + 3856);
  if (v63)
  {
    v158 = *(v0 + 3856);
    v67 = swift_slowAlloc();
    v163[0] = swift_slowAlloc();
    *v67 = 136315906;
    v155 = v65;
    v156 = v64;
    v68 = *(v0 + 2072);
    v69 = *(v0 + 2080);

    v70 = sub_100002318(v68, v69, v163);

    *(v67 + 4) = v70;
    *(v67 + 12) = 2080;
    v71 = *(v0 + 1920);
    v72 = *(v0 + 1928);

    sub_1000067BC(v0 + 1744);
    v73 = sub_100002318(v71, v72, v163);

    *(v67 + 14) = v73;
    *(v67 + 22) = 1024;
    *(v67 + 24) = *(v0 + 1736);
    sub_1000067BC(v0 + 1544);
    *(v67 + 28) = 2080;
    v74 = *(v0 + 1448);
    v75 = *(v0 + 1456);

    sub_1000067BC(v0 + 1344);
    v76 = sub_100002318(v74, v75, v163);

    *(v67 + 30) = v76;
    _os_log_impl(&_mh_execute_header, v61, v62, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v67, 0x26u);
    swift_arrayDestroy();

    v156(v155, v158);
  }

  else
  {
    sub_1000067BC(v0 + 1344);
    sub_1000067BC(v0 + 1544);
    sub_1000067BC(v0 + 1744);

    v64(v65, v66);
  }

  if (*(v0 + 338) == 1)
  {
    v77 = v0 + 3344;
    v78 = *(v0 + 3888);
    sub_10000F160();
    v79 = sub_10000F170();
    v80 = sub_10000F5F0();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Message is in compose screen, return message with minimal details", v81, 2u);
    }

    v82 = *(v0 + 3936);
    v83 = *(v0 + 3888);
    v84 = *(v0 + 3864);
    v85 = *(v0 + 3856);

    v82(v83, v85);
    swift_beginAccess();
    v86 = *(v0 + 488);
    v88 = *(v0 + 504);
    v87 = *(v0 + 520);
    *(v0 + 1304) = v88;
    *(v0 + 1320) = v87;
    v89 = *(v0 + 424);
    v91 = *(v0 + 440);
    v90 = *(v0 + 456);
    *(v0 + 1240) = v91;
    *(v0 + 1256) = v90;
    v92 = *(v0 + 456);
    v94 = *(v0 + 472);
    v93 = *(v0 + 488);
    *(v0 + 1272) = v94;
    *(v0 + 1288) = v93;
    v95 = *(v0 + 360);
    v97 = *(v0 + 376);
    v96 = *(v0 + 392);
    *(v0 + 1176) = v97;
    *(v0 + 1192) = v96;
    v98 = *(v0 + 392);
    v100 = *(v0 + 408);
    v99 = *(v0 + 424);
    *(v0 + 1208) = v100;
    *(v0 + 1224) = v99;
    v101 = *(v0 + 360);
    v102 = *v29;
    *(v0 + 1144) = *v29;
    *(v0 + 1160) = v101;
    v103 = *(v0 + 520);
    *(v0 + 3504) = v88;
    *(v0 + 3520) = v103;
    *(v0 + 3440) = v91;
    *(v0 + 3456) = v92;
    *(v0 + 3472) = v94;
    *(v0 + 3488) = v86;
    *(v0 + 3376) = v97;
    *(v0 + 3392) = v98;
    *(v0 + 3408) = v100;
    *(v0 + 3424) = v89;
    *(v0 + 1336) = *(v0 + 536);
    *(v0 + 3536) = *(v0 + 536);
    *v77 = v102;
    *(v0 + 3360) = v95;
    nullsub_1(v0 + 3344);
    v104 = v0 + 944;
    v105 = v0 + 1144;
  }

  else
  {
    v77 = v0 + 2944;
    swift_beginAccess();
    v106 = *(v0 + 488);
    v108 = *(v0 + 504);
    v107 = *(v0 + 520);
    *(v0 + 3304) = v108;
    *(v0 + 3320) = v107;
    v109 = *(v0 + 424);
    v111 = *(v0 + 440);
    v110 = *(v0 + 456);
    *(v0 + 3240) = v111;
    *(v0 + 3256) = v110;
    v112 = *(v0 + 456);
    v114 = *(v0 + 472);
    v113 = *(v0 + 488);
    *(v0 + 3272) = v114;
    *(v0 + 3288) = v113;
    v115 = *(v0 + 360);
    v117 = *(v0 + 376);
    v116 = *(v0 + 392);
    *(v0 + 3176) = v117;
    *(v0 + 3192) = v116;
    v118 = *(v0 + 392);
    v120 = *(v0 + 408);
    v119 = *(v0 + 424);
    *(v0 + 3208) = v120;
    *(v0 + 3224) = v119;
    v121 = *(v0 + 360);
    v122 = *v29;
    *(v0 + 3144) = *v29;
    *(v0 + 3160) = v121;
    v123 = *(v0 + 520);
    *(v0 + 3104) = v108;
    *(v0 + 3120) = v123;
    *(v0 + 3040) = v111;
    *(v0 + 3056) = v112;
    *(v0 + 3072) = v114;
    *(v0 + 3088) = v106;
    *(v0 + 2976) = v117;
    *(v0 + 2992) = v118;
    *(v0 + 3008) = v120;
    *(v0 + 3024) = v109;
    *(v0 + 3336) = *(v0 + 536);
    *(v0 + 3136) = *(v0 + 536);
    *(v0 + 2944) = v122;
    *(v0 + 2960) = v115;
    nullsub_1(v0 + 2944);
    v104 = v0 + 144;
    v105 = v0 + 3144;
  }

  sub_1000068AC(v105, v104);
  v124 = *(v77 + 176);
  *(v0 + 704) = *(v77 + 160);
  *(v0 + 720) = v124;
  *(v0 + 736) = *(v77 + 192);
  v125 = *(v77 + 112);
  *(v0 + 640) = *(v77 + 96);
  *(v0 + 656) = v125;
  v126 = *(v77 + 144);
  *(v0 + 672) = *(v77 + 128);
  *(v0 + 688) = v126;
  v127 = *(v77 + 48);
  *(v0 + 576) = *(v77 + 32);
  *(v0 + 592) = v127;
  v128 = *(v77 + 80);
  *(v0 + 608) = *(v77 + 64);
  *(v0 + 624) = v128;
  v129 = *(v77 + 16);
  *(v0 + 544) = *v77;
  *(v0 + 560) = v129;
  v130 = *(v0 + 3928);
  v131 = *(v0 + 3904);
  v132 = *(v0 + 3896);
  v133 = *(v0 + 3888);
  v134 = *(v0 + 3880);
  v135 = *(v0 + 3872);
  v136 = *(v0 + 3848);
  v159 = *(v0 + 3840);
  v162 = *(v0 + 3816);
  v137 = *(v0 + 3800);
  v138 = *(v0 + 520);
  *(v0 + 904) = *(v0 + 504);
  *(v0 + 920) = v138;
  *(v0 + 936) = *(v0 + 536);
  v139 = *(v0 + 456);
  *(v0 + 840) = *(v0 + 440);
  *(v0 + 856) = v139;
  v140 = *(v0 + 488);
  *(v0 + 872) = *(v0 + 472);
  *(v0 + 888) = v140;
  v141 = *(v0 + 392);
  *(v0 + 776) = *(v0 + 376);
  *(v0 + 792) = v141;
  v142 = *(v0 + 424);
  *(v0 + 808) = *(v0 + 408);
  *(v0 + 824) = v142;
  v143 = *(v0 + 360);
  *(v0 + 744) = *v29;
  *(v0 + 760) = v143;
  sub_1000067BC(v0 + 744);
  *v137 = *(v0 + 544);
  v144 = *(v0 + 608);
  v146 = *(v0 + 560);
  v145 = *(v0 + 576);
  *(v137 + 48) = *(v0 + 592);
  *(v137 + 64) = v144;
  *(v137 + 16) = v146;
  *(v137 + 32) = v145;
  v147 = *(v0 + 672);
  v149 = *(v0 + 624);
  v148 = *(v0 + 640);
  *(v137 + 112) = *(v0 + 656);
  *(v137 + 128) = v147;
  *(v137 + 80) = v149;
  *(v137 + 96) = v148;
  v151 = *(v0 + 704);
  v150 = *(v0 + 720);
  v152 = *(v0 + 688);
  *(v137 + 192) = *(v0 + 736);
  *(v137 + 160) = v151;
  *(v137 + 176) = v150;
  *(v137 + 144) = v152;

  v153 = *(v0 + 8);

  return v153();
}

uint64_t sub_100005E7C()
{
  v159 = v0;
  v1 = (v0 + 344);
  v2 = *(v0 + 3992);
  v3 = *(v0 + 3984);
  v4 = *(v0 + 3872);
  swift_willThrow();

  sub_10000F160();
  swift_errorRetain();
  v5 = sub_10000F170();
  v6 = sub_10000F5E0();

  log = v5;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 3992);
    v150 = *(v0 + 3872);
    v152 = *(v0 + 3936);
    v147 = *(v0 + 3864);
    v148 = *(v0 + 3856);
    v8 = swift_slowAlloc();
    v146 = v6;
    v9 = swift_slowAlloc();
    v158[0] = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 3744);
    v11 = *(v0 + 3752);
    v12 = *(v0 + 3760);
    v13 = sub_10000F710();
    v15 = sub_100002318(v13, v14, v158);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, log, v146, "fetchMyCustodianshipOwners : %s", v8, 0xCu);
    sub_100006860(v9);

    v152(v150, v148);
  }

  else
  {
    v16 = *(v0 + 3992);
    v17 = *(v0 + 3936);
    v18 = *(v0 + 3872);
    v19 = *(v0 + 3864);
    v20 = *(v0 + 3856);

    v17(v18, v20);
  }

  v21 = *(v0 + 3896);
  sub_10000F160();
  v22 = *(v0 + 488);
  v23 = *(v0 + 504);
  v24 = *(v0 + 520);
  *(v0 + 2104) = v23;
  *(v0 + 2120) = v24;
  v25 = *(v0 + 424);
  v26 = *(v0 + 440);
  v27 = *(v0 + 456);
  *(v0 + 2040) = v26;
  *(v0 + 2056) = v27;
  v28 = *(v0 + 456);
  v29 = *(v0 + 472);
  v30 = *(v0 + 488);
  *(v0 + 2072) = v29;
  *(v0 + 2088) = v30;
  v31 = *(v0 + 360);
  v32 = *(v0 + 376);
  v33 = *(v0 + 392);
  *(v0 + 1976) = v32;
  *(v0 + 1992) = v33;
  v34 = *(v0 + 392);
  v35 = *(v0 + 408);
  v36 = *(v0 + 424);
  *(v0 + 2008) = v35;
  *(v0 + 2024) = v36;
  v37 = *(v0 + 360);
  *(v0 + 1944) = *v1;
  *(v0 + 1960) = v37;
  v38 = *(v0 + 488);
  v39 = *(v0 + 520);
  *(v0 + 1904) = *(v0 + 504);
  *(v0 + 1920) = v39;
  v40 = *(v0 + 424);
  v41 = *(v0 + 456);
  *(v0 + 1840) = *(v0 + 440);
  *(v0 + 1856) = v41;
  *(v0 + 1872) = *(v0 + 472);
  *(v0 + 1888) = v38;
  v42 = *v1;
  v43 = *(v0 + 360);
  v44 = *(v0 + 392);
  *(v0 + 1776) = *(v0 + 376);
  *(v0 + 1792) = v44;
  *(v0 + 1808) = *(v0 + 408);
  *(v0 + 1824) = v40;
  *(v0 + 1744) = *v1;
  *(v0 + 1760) = v43;
  v45 = *(v0 + 488);
  v46 = *(v0 + 520);
  *(v0 + 1704) = *(v0 + 504);
  *(v0 + 1720) = v46;
  v47 = *(v0 + 424);
  v48 = *(v0 + 456);
  *(v0 + 1640) = *(v0 + 440);
  *(v0 + 1656) = v48;
  *(v0 + 1672) = *(v0 + 472);
  *(v0 + 1688) = v45;
  v49 = *(v0 + 360);
  v50 = *(v0 + 392);
  *(v0 + 1576) = *(v0 + 376);
  *(v0 + 1592) = v50;
  *(v0 + 1608) = *(v0 + 408);
  *(v0 + 1624) = v47;
  *(v0 + 1544) = *v1;
  *(v0 + 1560) = v49;
  v51 = *(v0 + 520);
  *(v0 + 1504) = v23;
  *(v0 + 1520) = v51;
  *(v0 + 1440) = v26;
  *(v0 + 1456) = v28;
  *(v0 + 1472) = v29;
  *(v0 + 1488) = v22;
  *(v0 + 1376) = v32;
  *(v0 + 1392) = v34;
  *(v0 + 1408) = v35;
  *(v0 + 1424) = v25;
  *(v0 + 2136) = *(v0 + 536);
  *(v0 + 1936) = *(v0 + 536);
  *(v0 + 1736) = *(v0 + 536);
  *(v0 + 1536) = *(v0 + 536);
  *(v0 + 1344) = v42;
  *(v0 + 1360) = v31;
  sub_1000068AC(v0 + 1744, v0 + 2144);
  sub_1000068AC(v0 + 1544, v0 + 2344);
  sub_1000068AC(v0 + 1344, v0 + 2544);
  sub_1000068AC(v0 + 1944, v0 + 2744);
  v52 = sub_10000F170();
  v53 = sub_10000F5F0();
  sub_1000067BC(v0 + 1944);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 3936);
  v56 = *(v0 + 3896);
  loga = *(v0 + 3864);
  v57 = *(v0 + 3856);
  if (v54)
  {
    v153 = *(v0 + 3856);
    v58 = swift_slowAlloc();
    v158[0] = swift_slowAlloc();
    *v58 = 136315906;
    v149 = v56;
    v151 = v55;
    v59 = *(v0 + 2072);
    v60 = *(v0 + 2080);

    v61 = sub_100002318(v59, v60, v158);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2080;
    v62 = *(v0 + 1920);
    v63 = *(v0 + 1928);

    sub_1000067BC(v0 + 1744);
    v64 = sub_100002318(v62, v63, v158);

    *(v58 + 14) = v64;
    *(v58 + 22) = 1024;
    *(v58 + 24) = *(v0 + 1736);
    sub_1000067BC(v0 + 1544);
    *(v58 + 28) = 2080;
    v65 = *(v0 + 1448);
    v66 = *(v0 + 1456);

    sub_1000067BC(v0 + 1344);
    v67 = sub_100002318(v65, v66, v158);

    *(v58 + 30) = v67;
    _os_log_impl(&_mh_execute_header, v52, v53, "lcContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.beneficiaryID :%s", v58, 0x26u);
    swift_arrayDestroy();

    v151(v149, v153);
  }

  else
  {
    sub_1000067BC(v0 + 1344);
    sub_1000067BC(v0 + 1544);
    sub_1000067BC(v0 + 1744);

    v55(v56, v57);
  }

  if (*(v0 + 338) == 1)
  {
    v68 = v0 + 3344;
    v69 = *(v0 + 3888);
    sub_10000F160();
    v70 = sub_10000F170();
    v71 = sub_10000F5F0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Message is in compose screen, return message with minimal details", v72, 2u);
    }

    v73 = *(v0 + 3936);
    v74 = *(v0 + 3888);
    v75 = *(v0 + 3864);
    v76 = *(v0 + 3856);

    v73(v74, v76);
    swift_beginAccess();
    v77 = *(v0 + 488);
    v79 = *(v0 + 504);
    v78 = *(v0 + 520);
    *(v0 + 1304) = v79;
    *(v0 + 1320) = v78;
    v80 = *(v0 + 424);
    v82 = *(v0 + 440);
    v81 = *(v0 + 456);
    *(v0 + 1240) = v82;
    *(v0 + 1256) = v81;
    v83 = *(v0 + 456);
    v85 = *(v0 + 472);
    v84 = *(v0 + 488);
    *(v0 + 1272) = v85;
    *(v0 + 1288) = v84;
    v86 = *(v0 + 360);
    v88 = *(v0 + 376);
    v87 = *(v0 + 392);
    *(v0 + 1176) = v88;
    *(v0 + 1192) = v87;
    v89 = *(v0 + 392);
    v91 = *(v0 + 408);
    v90 = *(v0 + 424);
    *(v0 + 1208) = v91;
    *(v0 + 1224) = v90;
    v92 = *(v0 + 360);
    v93 = *v1;
    *(v0 + 1144) = *v1;
    *(v0 + 1160) = v92;
    v94 = *(v0 + 520);
    *(v0 + 3504) = v79;
    *(v0 + 3520) = v94;
    *(v0 + 3440) = v82;
    *(v0 + 3456) = v83;
    *(v0 + 3472) = v85;
    *(v0 + 3488) = v77;
    *(v0 + 3376) = v88;
    *(v0 + 3392) = v89;
    *(v0 + 3408) = v91;
    *(v0 + 3424) = v80;
    *(v0 + 1336) = *(v0 + 536);
    *(v0 + 3536) = *(v0 + 536);
    *v68 = v93;
    *(v0 + 3360) = v86;
    nullsub_1(v0 + 3344);
    v95 = v0 + 944;
    v96 = v0 + 1144;
  }

  else
  {
    v68 = v0 + 2944;
    swift_beginAccess();
    v97 = *(v0 + 488);
    v99 = *(v0 + 504);
    v98 = *(v0 + 520);
    *(v0 + 3304) = v99;
    *(v0 + 3320) = v98;
    v100 = *(v0 + 424);
    v102 = *(v0 + 440);
    v101 = *(v0 + 456);
    *(v0 + 3240) = v102;
    *(v0 + 3256) = v101;
    v103 = *(v0 + 456);
    v105 = *(v0 + 472);
    v104 = *(v0 + 488);
    *(v0 + 3272) = v105;
    *(v0 + 3288) = v104;
    v106 = *(v0 + 360);
    v108 = *(v0 + 376);
    v107 = *(v0 + 392);
    *(v0 + 3176) = v108;
    *(v0 + 3192) = v107;
    v109 = *(v0 + 392);
    v111 = *(v0 + 408);
    v110 = *(v0 + 424);
    *(v0 + 3208) = v111;
    *(v0 + 3224) = v110;
    v112 = *(v0 + 360);
    v113 = *v1;
    *(v0 + 3144) = *v1;
    *(v0 + 3160) = v112;
    v114 = *(v0 + 520);
    *(v0 + 3104) = v99;
    *(v0 + 3120) = v114;
    *(v0 + 3040) = v102;
    *(v0 + 3056) = v103;
    *(v0 + 3072) = v105;
    *(v0 + 3088) = v97;
    *(v0 + 2976) = v108;
    *(v0 + 2992) = v109;
    *(v0 + 3008) = v111;
    *(v0 + 3024) = v100;
    *(v0 + 3336) = *(v0 + 536);
    *(v0 + 3136) = *(v0 + 536);
    *(v0 + 2944) = v113;
    *(v0 + 2960) = v106;
    nullsub_1(v0 + 2944);
    v95 = v0 + 144;
    v96 = v0 + 3144;
  }

  sub_1000068AC(v96, v95);
  v115 = *(v68 + 176);
  *(v0 + 704) = *(v68 + 160);
  *(v0 + 720) = v115;
  *(v0 + 736) = *(v68 + 192);
  v116 = *(v68 + 112);
  *(v0 + 640) = *(v68 + 96);
  *(v0 + 656) = v116;
  v117 = *(v68 + 144);
  *(v0 + 672) = *(v68 + 128);
  *(v0 + 688) = v117;
  v118 = *(v68 + 48);
  *(v0 + 576) = *(v68 + 32);
  *(v0 + 592) = v118;
  v119 = *(v68 + 80);
  *(v0 + 608) = *(v68 + 64);
  *(v0 + 624) = v119;
  v120 = *(v68 + 16);
  *(v0 + 544) = *v68;
  *(v0 + 560) = v120;
  v121 = *(v0 + 3928);
  v122 = *(v0 + 3904);
  v123 = *(v0 + 3896);
  v124 = *(v0 + 3888);
  v125 = *(v0 + 3880);
  v126 = *(v0 + 3872);
  v127 = *(v0 + 3848);
  v154 = *(v0 + 3840);
  logb = *(v0 + 3816);
  v128 = *(v0 + 3800);
  v129 = *(v0 + 520);
  *(v0 + 904) = *(v0 + 504);
  *(v0 + 920) = v129;
  *(v0 + 936) = *(v0 + 536);
  v130 = *(v0 + 456);
  *(v0 + 840) = *(v0 + 440);
  *(v0 + 856) = v130;
  v131 = *(v0 + 488);
  *(v0 + 872) = *(v0 + 472);
  *(v0 + 888) = v131;
  v132 = *(v0 + 392);
  *(v0 + 776) = *(v0 + 376);
  *(v0 + 792) = v132;
  v133 = *(v0 + 424);
  *(v0 + 808) = *(v0 + 408);
  *(v0 + 824) = v133;
  v134 = *(v0 + 360);
  *(v0 + 744) = *v1;
  *(v0 + 760) = v134;
  sub_1000067BC(v0 + 744);
  *v128 = *(v0 + 544);
  v135 = *(v0 + 608);
  v137 = *(v0 + 560);
  v136 = *(v0 + 576);
  *(v128 + 48) = *(v0 + 592);
  *(v128 + 64) = v135;
  *(v128 + 16) = v137;
  *(v128 + 32) = v136;
  v138 = *(v0 + 672);
  v140 = *(v0 + 624);
  v139 = *(v0 + 640);
  *(v128 + 112) = *(v0 + 656);
  *(v128 + 128) = v138;
  *(v128 + 80) = v140;
  *(v128 + 96) = v139;
  v142 = *(v0 + 704);
  v141 = *(v0 + 720);
  v143 = *(v0 + 688);
  *(v128 + 192) = *(v0 + 736);
  *(v128 + 160) = v142;
  *(v128 + 176) = v141;
  *(v128 + 144) = v143;

  v144 = *(v0 + 8);

  return v144();
}

uint64_t sub_1000066E8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006730(uint64_t a1)
{
  v2 = sub_1000066E8(&qword_100018418, &qword_10000FDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100006798(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000067FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006860(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000068E8()
{
  result = qword_100018438;
  if (!qword_100018438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018438);
  }

  return result;
}

void *sub_100006940(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006984()
{
  result = qword_100018450;
  if (!qword_100018450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018450);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InviteQueryItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InviteQueryItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for Status()
{
  if (!qword_100018460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018460);
    }
  }
}

unint64_t sub_100006C30()
{
  result = qword_100018480;
  if (!qword_100018480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018480);
  }

  return result;
}

uint64_t sub_100006C84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Status();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_1000066E8(&qword_100018498, &qword_100010138);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v65 - v5;
  v7 = sub_1000066E8(&qword_1000184A0, &qword_100010140);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v65 - v9;
  v65 = sub_1000066E8(&qword_1000184A8, &qword_100010148);
  v11 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v13 = &v65 - v12;
  v66 = sub_1000066E8(&qword_1000184B0, &qword_100010150);
  v14 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v16 = &v65 - v15;
  v67 = sub_1000066E8(&qword_1000184B8, &qword_100010158);
  v17 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v19 = &v65 - v18;
  *v6 = sub_10000F250();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v20 = sub_1000066E8(&qword_1000184C0, &qword_100010160);
  sub_100007204(v2, &v6[*(v20 + 44)]);
  sub_1000066E8(&qword_1000184C8, &qword_100010168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100010020;
  v22 = sub_10000F2B0();
  *(inited + 32) = v22;
  v23 = sub_10000F2D0();
  *(inited + 33) = v23;
  v24 = sub_10000F2C0();
  sub_10000F2C0();
  if (sub_10000F2C0() != v22)
  {
    v24 = sub_10000F2C0();
  }

  sub_10000F2C0();
  if (sub_10000F2C0() != v23)
  {
    v24 = sub_10000F2C0();
  }

  sub_10000F190();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10000A4FC(v6, v10, &qword_100018498, &qword_100010138);
  v33 = &v10[*(v7 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_10000F2A0();
  sub_10000F190();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000A4FC(v10, v13, &qword_1000184A0, &qword_100010140);
  v43 = &v13[*(v65 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = sub_10000F290();
  sub_10000F190();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_10000A4FC(v13, v16, &qword_1000184A8, &qword_100010148);
  v53 = &v16[*(v66 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_10000F470();
  sub_10000F1D0();
  sub_10000A4FC(v16, v19, &qword_1000184B0, &qword_100010150);
  v54 = &v19[*(v67 + 36)];
  v55 = v74;
  *(v54 + 4) = v73;
  *(v54 + 5) = v55;
  *(v54 + 6) = v75;
  v56 = v70;
  *v54 = v69;
  *(v54 + 1) = v56;
  v57 = v72;
  *(v54 + 2) = v71;
  *(v54 + 3) = v57;
  v58 = [objc_opt_self() systemGray5Color];
  v59 = sub_10000F3C0();
  v60 = sub_10000F280();
  v61 = v19;
  v62 = v68;
  sub_10000A4FC(v61, v68, &qword_1000184B8, &qword_100010158);
  result = sub_1000066E8(&qword_1000184D0, &qword_100010170);
  v64 = v62 + *(result + 36);
  *v64 = v59;
  *(v64 + 8) = v60;
  return result;
}

uint64_t sub_100007204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000066E8(&qword_1000184D8, &qword_100010178);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_1000066E8(&qword_1000184E0, &qword_100010180);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_10000A564();
  sub_10000F3B0();
  v28 = sub_10000F250();
  v31 = 0;
  sub_1000075A0(a1, &v41);
  v35 = *&v42[32];
  v36 = *&v42[48];
  v33 = *v42;
  v34 = *&v42[16];
  v32 = v41;
  v37[2] = *&v42[16];
  v37[3] = *&v42[32];
  v38 = *&v42[48];
  v37[0] = v41;
  v37[1] = *v42;
  sub_10000A5B8(&v32, v39, &qword_1000184F0, &qword_100010188);
  sub_10000AE94(v37, &qword_1000184F0, &qword_100010188);
  *(&v30[1] + 7) = v33;
  *(&v30[2] + 7) = v34;
  *(&v30[3] + 7) = v35;
  *(&v30[4] + 7) = v36;
  *(v30 + 7) = v32;
  v17 = v31;
  sub_100007958(v9);
  sub_10000A5B8(v16, v14, &qword_1000184E0, &qword_100010180);
  sub_10000A5B8(v9, v7, &qword_1000184D8, &qword_100010178);
  v18 = v29;
  sub_10000A5B8(v14, v29, &qword_1000184E0, &qword_100010180);
  v19 = sub_1000066E8(&qword_1000184F8, &qword_100010190);
  v20 = (v18 + *(v19 + 48));
  v21 = v28;
  v39[0] = v28;
  v39[1] = 0;
  LOBYTE(v40[0]) = v17;
  *(v40 + 1) = v30[0];
  *(&v40[1] + 1) = v30[1];
  *(&v40[2] + 1) = v30[2];
  *(&v40[3] + 10) = *(&v30[3] + 9);
  *(&v40[3] + 1) = v30[3];
  v22 = v40[0];
  *v20 = v28;
  v20[1] = v22;
  v23 = v40[1];
  v24 = v40[2];
  v25 = v40[3];
  *(v20 + 74) = *(&v40[3] + 10);
  v20[3] = v24;
  v20[4] = v25;
  v20[2] = v23;
  sub_10000A5B8(v7, v18 + *(v19 + 64), &qword_1000184D8, &qword_100010178);
  sub_10000A5B8(v39, &v41, &qword_100018500, &qword_100010198);
  sub_10000AE94(v9, &qword_1000184D8, &qword_100010178);
  sub_10000AE94(v16, &qword_1000184E0, &qword_100010180);
  sub_10000AE94(v7, &qword_1000184D8, &qword_100010178);
  v41 = v21;
  v42[0] = v17;
  *&v42[17] = v30[1];
  *&v42[33] = v30[2];
  *&v42[49] = v30[3];
  *&v42[58] = *(&v30[3] + 9);
  *&v42[1] = v30[0];
  sub_10000AE94(&v41, &qword_100018500, &qword_100010198);
  return sub_10000AE94(v14, &qword_1000184E0, &qword_100010180);
}

uint64_t sub_1000075A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000F300();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  __chkstk_darwin();
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v51 = a1[3];
  v52 = v9;
  v62 = v7;
  v63 = v8;
  v50 = sub_10000AE20();

  v10 = sub_10000F360();
  v12 = v11;
  v14 = v13;
  sub_10000F2E0();
  v15 = sub_10000F350();
  v17 = v16;
  v19 = v18;

  sub_10000AE74(v10, v12, v14 & 1);

  sub_10000F2F0();
  v20 = sub_10000F330();
  v22 = v21;
  LOBYTE(v10) = v23;
  sub_10000AE74(v15, v17, v19 & 1);

  sub_10000F3F0();
  v24 = sub_10000F340();
  v54 = v25;
  v55 = v24;
  v53 = v26;
  v56 = v27;

  sub_10000AE74(v20, v22, v10 & 1);

  v62 = v52;
  v63 = v51;

  v28 = sub_10000F360();
  v30 = v29;
  LOBYTE(v12) = v31;
  sub_10000F3F0();
  v32 = sub_10000F340();
  v34 = v33;
  LOBYTE(v20) = v35;

  sub_10000AE74(v28, v30, v12 & 1);

  sub_10000F320();
  v37 = v57;
  v36 = v58;
  v38 = v59;
  (*(v58 + 104))(v57, enum case for Font.Leading.tight(_:), v59);
  sub_10000F310();

  (*(v36 + 8))(v37, v38);
  v39 = sub_10000F350();
  v41 = v40;
  LOBYTE(v37) = v42;
  v44 = v43;

  sub_10000AE74(v32, v34, v20 & 1);

  v45 = v53 & 1;
  LOBYTE(v62) = v53 & 1;
  v61 = v53 & 1;
  v60 = v37 & 1;
  v47 = v54;
  v46 = v55;
  *a2 = v55;
  *(a2 + 8) = v47;
  *(a2 + 16) = v45;
  *(a2 + 24) = v56;
  *(a2 + 32) = v39;
  *(a2 + 40) = v41;
  *(a2 + 48) = v37 & 1;
  *(a2 + 56) = v44;
  *(a2 + 64) = 256;
  v48 = v46;
  sub_10000AE84(v46, v47, v45);

  sub_10000AE84(v39, v41, v37 & 1);

  sub_10000AE74(v39, v41, v37 & 1);

  sub_10000AE74(v48, v47, v62);
}

uint64_t sub_100007958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1000066E8(&qword_100018508, &qword_1000101A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v28 = v27 - v5;
  v6 = sub_1000066E8(&qword_100018510, &qword_1000101A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v27 - v8;
  v10 = sub_1000066E8(&qword_100018518, &qword_1000101B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v27 - v12;
  v14 = sub_1000066E8(&qword_100018520, &qword_1000101B8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v27 - v16;
  v18 = sub_1000066E8(&qword_100018528, &qword_1000101C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v27 - v20;
  if (*(v2 + 192))
  {
    *v21 = sub_10000F250();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v22 = sub_1000066E8(&qword_100018530, &qword_1000101C8);
    sub_100008EC0(v2, sub_10000A804, &v21[*(v22 + 44)]);
    v28 = v6;
    sub_10000A5B8(v21, v13, &qword_100018528, &qword_1000101C0);
    swift_storeEnumTagMultiPayload();
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0);
    sub_10000A720();
    sub_10000F270();
    sub_10000A5B8(v17, v9, &qword_100018520, &qword_1000101B8);
    swift_storeEnumTagMultiPayload();
    sub_10000A620();
    sub_10000F270();
    sub_10000AE94(v17, &qword_100018520, &qword_1000101B8);
    v23 = v21;
  }

  else
  {
    v27[1] = v14;
    if (*(v2 + 193))
    {
      v24 = v28;
      sub_100007E70();
      sub_10000A5B8(v24, v13, &qword_100018508, &qword_1000101A0);
      swift_storeEnumTagMultiPayload();
      sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0);
      sub_10000A720();
      sub_10000F270();
      sub_10000A5B8(v17, v9, &qword_100018520, &qword_1000101B8);
      swift_storeEnumTagMultiPayload();
      sub_10000A620();
      sub_10000F270();
      sub_10000AE94(v17, &qword_100018520, &qword_1000101B8);
      return sub_10000AE94(v24, &qword_100018508, &qword_1000101A0);
    }

    *v21 = sub_10000F250();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v26 = sub_1000066E8(&qword_100018530, &qword_1000101C8);
    sub_1000094C8(&v21[*(v26 + 44)]);
    sub_10000A5B8(v21, v9, &qword_100018528, &qword_1000101C0);
    swift_storeEnumTagMultiPayload();
    sub_10000A620();
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0);
    sub_10000F270();
    v23 = v21;
  }

  return sub_10000AE94(v23, &qword_100018528, &qword_1000101C0);
}

uint64_t sub_100007E70()
{
  v1 = sub_1000066E8(&qword_100018528, &qword_1000101C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = sub_1000066E8(&qword_100018588, &qword_1000101F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_1000066E8(&qword_100018558, &qword_1000101D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  if (*(v0 + 120) == 1)
  {
    *v12 = sub_10000F210();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = sub_1000066E8(&qword_100018590, &qword_100010200);
    sub_1000084E0(v0, &v12[*(v13 + 44)]);
    sub_10000A5B8(v12, v8, &qword_100018558, &qword_1000101D0);
    swift_storeEnumTagMultiPayload();
    sub_10000BAA0(&qword_100018550, &qword_100018558, &qword_1000101D0);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0);
    sub_10000F270();
    return sub_10000AE94(v12, &qword_100018558, &qword_1000101D0);
  }

  else
  {
    *v4 = sub_10000F250();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v15 = sub_1000066E8(&qword_100018530, &qword_1000101C8);
    sub_100008EC0(v0, sub_10000B4C0, &v4[*(v15 + 44)]);
    sub_10000A5B8(v4, v8, &qword_100018528, &qword_1000101C0);
    swift_storeEnumTagMultiPayload();
    sub_10000BAA0(&qword_100018550, &qword_100018558, &qword_1000101D0);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0);
    sub_10000F270();
    return sub_10000AE94(v4, &qword_100018528, &qword_1000101C0);
  }
}

uint64_t sub_1000081B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = sub_10000F200();
  sub_100008360(a1, &v24);
  v19 = v25;
  v20 = v24;
  v18 = v26;
  v21 = v28;
  v22 = v27;
  v30 = 0;
  v29 = v26;
  v24 = sub_10000AC2C(a1[15], a1[18], a1[19]);
  v25 = v4;
  sub_10000AE20();
  v5 = sub_10000F360();
  v7 = v6;
  v9 = v8;
  sub_10000F320();
  v10 = sub_10000F350();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10000AE74(v5, v7, v9 & 1);

  LOBYTE(v24) = v18;
  *a2 = v23;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v18;
  *(a2 + 48) = v22;
  *(a2 + 56) = v21;
  *(a2 + 64) = v10;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14 & 1;
  *(a2 + 88) = v16;
  sub_10000AE84(v20, v19, v18);

  sub_10000AE84(v10, v12, v14 & 1);

  sub_10000AE74(v10, v12, v14 & 1);

  sub_10000AE74(v20, v19, v24);
}

uint64_t sub_100008360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[15];
  sub_10000A994(v3, a1[18], a1[19]);
  sub_10000AE20();
  v4 = sub_10000F360();
  v6 = v5;
  v8 = v7;
  sub_10000F320();
  v9 = sub_10000F350();
  v11 = v10;
  v17 = v12;
  v14 = v13;

  sub_10000AE74(v4, v6, v8 & 1);

  v15 = sub_10000F400();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  sub_10000AE84(v9, v11, v17 & 1);

  sub_10000AE74(v9, v11, v17 & 1);
}

uint64_t sub_1000084E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v70 = sub_10000F240();
  v78 = *(v70 - 8);
  v3 = *(v78 + 64);
  (__chkstk_darwin)();
  v67 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000066E8(&qword_100018598, &qword_100010208);
  v5 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = v61 - v6;
  v8 = sub_1000066E8(&qword_1000185A0, &qword_100010210);
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  v10 = (__chkstk_darwin)();
  v73 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v72 = v61 - v13;
  v14 = __chkstk_darwin(v12);
  v71 = v61 - v15;
  __chkstk_darwin(v14);
  v76 = v61 - v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 176);
  *(v17 + 176) = *(a1 + 160);
  *(v17 + 192) = v18;
  *(v17 + 208) = *(a1 + 192);
  v19 = *(a1 + 112);
  *(v17 + 112) = *(a1 + 96);
  *(v17 + 128) = v19;
  v20 = *(a1 + 144);
  *(v17 + 144) = *(a1 + 128);
  *(v17 + 160) = v20;
  v21 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v21;
  v22 = *(a1 + 80);
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = v22;
  v23 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v23;
  v80 = a1;
  sub_10000AF28(a1, v81);
  sub_10000F440();
  v69 = sub_1000066E8(&qword_1000185A8, &qword_100010218);
  v24 = &v7[*(v69 + 36)];
  v68 = sub_10000F1C0();
  v25 = *(v68 + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v65 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_10000F220();
  v28 = *(v27 - 8);
  v64 = *(v28 + 104);
  v66 = v28 + 104;
  v64(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #10.0 }

  v63 = _Q0;
  *v24 = _Q0;
  v62 = sub_1000066E8(&qword_1000185B0, &qword_100010220);
  *&v24[*(v62 + 36)] = 256;
  v34 = sub_10000F3E0();
  KeyPath = swift_getKeyPath();
  v36 = &v7[*(v77 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = v67;
  sub_10000F230();
  v61[2] = sub_10000AFB8();
  v61[1] = sub_10000B154();
  v38 = v70;
  sub_10000F390();
  v39 = *(v78 + 8);
  v78 += 8;
  v61[0] = v39;
  v39(v37, v38);
  sub_10000AE94(v7, &qword_100018598, &qword_100010208);
  v40 = swift_allocObject();
  v41 = *(a1 + 176);
  *(v40 + 176) = *(a1 + 160);
  *(v40 + 192) = v41;
  *(v40 + 208) = *(a1 + 192);
  v42 = *(a1 + 112);
  *(v40 + 112) = *(a1 + 96);
  *(v40 + 128) = v42;
  v43 = *(a1 + 144);
  *(v40 + 144) = *(a1 + 128);
  *(v40 + 160) = v43;
  v44 = *(a1 + 48);
  *(v40 + 48) = *(a1 + 32);
  *(v40 + 64) = v44;
  v45 = *(a1 + 80);
  *(v40 + 80) = *(a1 + 64);
  *(v40 + 96) = v45;
  v46 = *(a1 + 16);
  *(v40 + 16) = *a1;
  *(v40 + 32) = v46;
  v79 = a1;
  sub_10000AF28(a1, v81);
  sub_10000F440();
  v47 = &v7[*(v69 + 36)];
  v64(&v47[*(v68 + 20)], v65, v27);
  *v47 = v63;
  *&v47[*(v62 + 36)] = 256;
  v48 = sub_10000F3D0();
  v49 = swift_getKeyPath();
  v50 = &v7[*(v77 + 36)];
  *v50 = v49;
  v50[1] = v48;
  sub_10000F230();
  v51 = v71;
  sub_10000F390();
  (v61[0])(v37, v38);
  sub_10000AE94(v7, &qword_100018598, &qword_100010208);
  v52 = v74;
  v53 = *(v74 + 16);
  v54 = v72;
  v55 = v76;
  v53(v72, v76, v8);
  v56 = v73;
  v53(v73, v51, v8);
  v57 = v75;
  v53(v75, v54, v8);
  v58 = sub_1000066E8(&qword_1000185F8, &qword_100010268);
  v53(&v57[*(v58 + 48)], v56, v8);
  v59 = *(v52 + 8);
  v59(v51, v8);
  v59(v55, v8);
  v59(v56, v8);
  return (v59)(v54, v8);
}

uint64_t sub_100008B50(char a1)
{
  v2 = v1;
  v4 = (*(*(sub_1000066E8(&qword_100018600, &qword_100010270) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v26[-v5 - 8];
  v7 = sub_10000F180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000F160();
  v12 = sub_10000F170();
  v13 = sub_10000F5E0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "handleInvite : %{BOOL}d", v14, 8u);
  }

  (*(v8 + 8))(v11, v7);
  v15 = sub_10000F580();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_10000F560();
  sub_10000AF28(v2, v26);
  v16 = sub_10000F550();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  v18 = *(v2 + 176);
  *(v17 + 192) = *(v2 + 160);
  *(v17 + 208) = v18;
  *(v17 + 224) = *(v2 + 192);
  v19 = *(v2 + 112);
  *(v17 + 128) = *(v2 + 96);
  *(v17 + 144) = v19;
  v20 = *(v2 + 144);
  *(v17 + 160) = *(v2 + 128);
  *(v17 + 176) = v20;
  v21 = *(v2 + 48);
  *(v17 + 64) = *(v2 + 32);
  *(v17 + 80) = v21;
  v22 = *(v2 + 80);
  *(v17 + 96) = *(v2 + 64);
  *(v17 + 112) = v22;
  v23 = *(v2 + 16);
  *(v17 + 32) = *v2;
  *(v17 + 48) = v23;
  *(v17 + 226) = a1 & 1;
  sub_10000BB9C(0, 0, v6, &unk_100010280, v17);
}

uint64_t sub_100008DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_10000AE20();

  result = sub_10000F360();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100008E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_10000AE20();

  result = sub_10000F360();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100008EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a2;
  v35 = a3;
  v34 = sub_1000066E8(&qword_100018560, &qword_1000101D8);
  v31 = *(v34 - 8);
  v4 = v31;
  v5 = *(v31 + 64);
  v6 = __chkstk_darwin(v34);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = sub_10000F460();
  v32 = *(v11 - 8);
  v12 = v32;
  v13 = *(v32 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_10000F450();
  v36 = a1;
  sub_1000066E8(&qword_100018568, &qword_1000101E0);
  sub_10000BAA0(&qword_100018570, &qword_100018568, &qword_1000101E0);
  v30 = v10;
  sub_10000F1A0();
  v19 = *(v12 + 16);
  v19(v16, v18, v11);
  v20 = *(v4 + 16);
  v21 = v8;
  v22 = v10;
  v23 = v34;
  v20(v8, v22, v34);
  v24 = v35;
  v19(v35, v16, v11);
  v25 = sub_1000066E8(&qword_100018578, &unk_1000101E8);
  v20(&v24[*(v25 + 48)], v21, v23);
  v26 = *(v31 + 8);
  v27 = v23;
  v26(v30, v23);
  v28 = *(v32 + 8);
  v28(v18, v11);
  v26(v21, v27);
  return (v28)(v16, v11);
}

uint64_t sub_1000091C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_10000F200();
  sub_10000936C(a1, &v23);
  v18 = v24;
  v19 = v23;
  v4 = v25;
  v20 = v27;
  v21 = v26;
  v29 = 0;
  v28 = v25;
  v23 = sub_10000B63C(*(a1 + 120));
  v24 = v5;
  sub_10000AE20();
  v6 = sub_10000F360();
  v8 = v7;
  v10 = v9;
  sub_10000F320();
  v11 = sub_10000F350();
  v13 = v12;
  LOBYTE(a1) = v14;
  v17 = v15;

  sub_10000AE74(v6, v8, v10 & 1);

  LOBYTE(v23) = v4;
  *a2 = v22;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v19;
  *(a2 + 32) = v18;
  *(a2 + 40) = v4;
  *(a2 + 48) = v21;
  *(a2 + 56) = v20;
  *(a2 + 64) = v11;
  *(a2 + 72) = v13;
  *(a2 + 80) = a1 & 1;
  *(a2 + 88) = v17;
  sub_10000AE84(v19, v18, v4);

  sub_10000AE84(v11, v13, a1 & 1);

  sub_10000AE74(v11, v13, a1 & 1);

  sub_10000AE74(v19, v18, v23);
}

uint64_t sub_10000936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 120);
  sub_10000B4C8(v3);
  sub_10000AE20();
  v4 = sub_10000F360();
  v6 = v5;
  v8 = v7;
  sub_10000F320();
  v9 = sub_10000F350();
  v11 = v10;
  v17 = v12;
  v14 = v13;

  sub_10000AE74(v4, v6, v8 & 1);

  v15 = sub_10000F400();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  sub_10000AE84(v9, v11, v17 & 1);

  sub_10000AE74(v9, v11, v17 & 1);
}

uint64_t sub_1000094C8@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v31 = sub_1000066E8(&qword_100018560, &qword_1000101D8);
  v29 = *(v31 - 8);
  v1 = v29;
  v2 = *(v29 + 64);
  v3 = __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_10000F460();
  v30 = *(v8 - 8);
  v9 = v30;
  v10 = *(v30 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_10000F450();
  sub_1000066E8(&qword_100018568, &qword_1000101E0);
  sub_10000BAA0(&qword_100018570, &qword_100018568, &qword_1000101E0);
  v28 = v7;
  sub_10000F1A0();
  v16 = *(v9 + 16);
  v16(v13, v15, v8);
  v17 = *(v1 + 16);
  v18 = v5;
  v19 = v7;
  v20 = v31;
  v17(v5, v19, v31);
  v21 = v32;
  v16(v32, v13, v8);
  v22 = sub_1000066E8(&qword_100018578, &unk_1000101E8);
  v17(&v21[*(v22 + 48)], v18, v20);
  v23 = *(v29 + 8);
  v24 = v20;
  v23(v28, v20);
  v25 = *(v30 + 8);
  v25(v15, v8);
  v23(v18, v24);
  return (v25)(v13, v8);
}

uint64_t sub_1000097CC@<X0>(uint64_t a1@<X8>)
{
  v27 = sub_10000F200();
  sub_100009A00(&v28);
  v23 = v29;
  v24 = v28;
  HIDWORD(v21._object) = v30;
  v25 = v32;
  v26 = v31;
  v34 = 0;
  v33 = v30;
  type metadata accessor for MessagesViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21._countAndFlagsBits = 0x8000000100010710;
  v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v36.value._object = 0xEB00000000656C62;
  v35._countAndFlagsBits = 0xD000000000000017;
  v35._object = 0x8000000100010710;
  v4.super.isa = v3;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v5 = sub_10000F0E0(v35, v36, v4, v37, v21);
  v7 = v6;

  v28 = v5;
  v29 = v7;
  sub_10000AE20();
  v8 = sub_10000F360();
  v10 = v9;
  v12 = v11;
  sub_10000F320();
  v13 = sub_10000F350();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_10000AE74(v8, v10, v12 & 1);

  LOBYTE(v28) = v22;
  *a1 = v27;
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = v24;
  *(a1 + 32) = v23;
  *(a1 + 40) = v22;
  *(a1 + 48) = v26;
  *(a1 + 56) = v25;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v17 & 1;
  *(a1 + 88) = v19;
  sub_10000AE84(v24, v23, v22);

  sub_10000AE84(v13, v15, v17 & 1);

  sub_10000AE74(v13, v15, v17 & 1);

  sub_10000AE74(v24, v23, v28);
}

uint64_t sub_100009A00@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 0x8000000100010730;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0xD000000000000014;
  v20._object = 0x8000000100010730;
  v4.super.isa = v3;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_10000F0E0(v20, v21, v4, v22, v19);

  sub_10000AE20();
  v5 = sub_10000F360();
  v7 = v6;
  v9 = v8;
  sub_10000F320();
  v10 = sub_10000F350();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10000AE74(v5, v7, v9 & 1);

  v17 = sub_10000F400();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  sub_10000AE84(v10, v12, v14 & 1);

  sub_10000AE74(v10, v12, v14 & 1);
}

uint64_t sub_100009BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 288) = a5;
  *(v5 + 176) = a4;
  v6 = sub_10000F180();
  *(v5 + 184) = v6;
  v7 = *(v6 - 8);
  *(v5 + 192) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v9 = *(*(sub_1000066E8(&qword_100018418, &qword_10000FDA8) - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v10 = sub_10000F150();
  *(v5 + 216) = v10;
  v11 = *(v10 - 8);
  *(v5 + 224) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  sub_10000F560();
  *(v5 + 240) = sub_10000F550();
  v14 = sub_10000F540();
  *(v5 + 248) = v14;
  *(v5 + 256) = v13;

  return _swift_task_switch(sub_100009D44, v14, v13);
}

uint64_t sub_100009D44()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v4 + 104);
  v6 = *(v4 + 112);
  sub_10000F110();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 208);

    sub_10000AE94(v8, &qword_100018418, &qword_10000FDA8);
    v9 = *(v0 + 232);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 288);
    (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    v15 = objc_allocWithZone(AACustodianInvitationResponseContext);
    isa = sub_10000F130().super.isa;
    v17 = [v15 initWithCustodianID:isa didAccept:v14];
    *(v0 + 264) = v17;

    v18 = [objc_allocWithZone(AACustodianController) init];
    *(v0 + 272) = v18;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100009F8C;
    v19 = swift_continuation_init();
    *(v0 + 136) = sub_1000066E8(&qword_100018608, &unk_100010290);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000A3C8;
    *(v0 + 104) = &unk_100014E60;
    *(v0 + 112) = v19;
    [v18 respondToCustodianRequestWithResponse:v17 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100009F8C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = sub_10000A170;
  }

  else
  {
    v6 = sub_10000A0BC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000A0BC()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];

  (*(v6 + 8))(v4, v5);
  v7 = v0[29];
  v8 = v0[25];
  v9 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000A170()
{
  v36 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);

  swift_willThrow();

  sub_10000F160();
  swift_errorRetain();
  v5 = sub_10000F170();
  v6 = sub_10000F5E0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 224);
    v33 = *(v0 + 216);
    v34 = *(v0 + 232);
    v9 = *(v0 + 192);
    v32 = *(v0 + 200);
    v30 = *(v0 + 264);
    v31 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = sub_10000F710();
    v17 = sub_100002318(v15, v16, &v35);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "respondToCustodianRequest : %s", v10, 0xCu);
    sub_100006860(v11);

    (*(v9 + 8))(v32, v31);
    (*(v8 + 8))(v34, v33);
  }

  else
  {
    v18 = *(v0 + 280);
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v21 = *(v0 + 216);
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v24 = *(v0 + 184);

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
  }

  v25 = *(v0 + 232);
  v26 = *(v0 + 200);
  v27 = *(v0 + 208);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10000A3C8(uint64_t a1, void *a2)
{
  v3 = sub_100006940((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000066E8(&qword_100018458, &qword_10000FDD8);
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

uint64_t sub_10000A498@<X0>(uint64_t a1@<X8>)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = *(v1 + 96);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_100006D00(a1);
}

uint64_t sub_10000A4FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000066E8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000A564()
{
  result = qword_1000184E8;
  if (!qword_1000184E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184E8);
  }

  return result;
}

uint64_t sub_10000A5B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000066E8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000A620()
{
  result = qword_100018538;
  if (!qword_100018538)
  {
    sub_10000A6D8(&qword_100018520, &qword_1000101B8);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0);
    sub_10000A720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018538);
  }

  return result;
}

uint64_t sub_10000A6D8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000A720()
{
  result = qword_100018548;
  if (!qword_100018548)
  {
    sub_10000A6D8(&qword_100018508, &qword_1000101A0);
    sub_10000BAA0(&qword_100018550, &qword_100018558, &qword_1000101D0);
    sub_10000BAA0(&qword_100018540, &qword_100018528, &qword_1000101C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018548);
  }

  return result;
}

double sub_10000A80C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10000F410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F430();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = sub_10000F420();

  (*(v3 + 8))(v6, v2);
  sub_10000F480();
  sub_10000F1B0();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  result = *&v17;
  *(a1 + 40) = v17;
  return result;
}

uint64_t sub_10000A994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v18._countAndFlagsBits = 0x80000001000105F0;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v19._countAndFlagsBits = 0xD000000000000017;
    v19._object = 0x80000001000105F0;
    v15.super.isa = v14;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_10000F0E0(v19, v20, v15, v21, v18);

    sub_1000066E8(&qword_100018430, &qword_10000FDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10000FCA0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000068E8();
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;

    v10 = sub_10000F4E0();
  }

  else
  {
    if (a1 == 2)
    {
      type metadata accessor for MessagesViewController();
      v9 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass:v9];
      v18._countAndFlagsBits = 0x8000000100010610;
      v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v5.value._object = 0xEB00000000656C62;
      v6._countAndFlagsBits = 0xD000000000000017;
      v6._object = 0x8000000100010610;
      v7.super.isa = v4;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
    }

    else
    {
      if (a1 != 1)
      {
        return 0;
      }

      type metadata accessor for MessagesViewController();
      v3 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass:v3];
      v6._countAndFlagsBits = 0xD000000000000013;
      v18._countAndFlagsBits = 0x8000000100010630;
      v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v5.value._object = 0xEB00000000656C62;
      v6._object = 0x8000000100010630;
      v7.super.isa = v4;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
    }

    v10 = sub_10000F0E0(v6, v5, v7, v8, v18);
  }

  return v10;
}

uint64_t sub_10000AC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v15._countAndFlagsBits = 0x8000000100010540;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._countAndFlagsBits = 0xD00000000000001FLL;
    v8._object = 0x8000000100010540;
    v9.super.isa = v6;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    type metadata accessor for MessagesViewController();
    v5 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:v5];
    v15._countAndFlagsBits = 0x8000000100010560;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._countAndFlagsBits = 0xD000000000000020;
    v8._object = 0x8000000100010560;
    v9.super.isa = v6;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
  }

  sub_10000F0E0(v8, v7, v9, v10, v15);

  sub_1000066E8(&qword_100018430, &qword_10000FDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10000FCA0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1000068E8();
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_10000F4E0();

  return v13;
}

unint64_t sub_10000AE20()
{
  result = qword_100018580;
  if (!qword_100018580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018580);
  }

  return result;
}

uint64_t sub_10000AE74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000AE84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000AE94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000066E8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000AF60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F1E0();
  *a1 = result;
  return result;
}

uint64_t sub_10000AF8C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10000F1F0();
}

unint64_t sub_10000AFB8()
{
  result = qword_1000185B8;
  if (!qword_1000185B8)
  {
    sub_10000A6D8(&qword_100018598, &qword_100010208);
    sub_10000B070();
    sub_10000BAA0(&qword_1000185E0, &qword_1000185E8, &qword_100010260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185B8);
  }

  return result;
}

unint64_t sub_10000B070()
{
  result = qword_1000185C0;
  if (!qword_1000185C0)
  {
    sub_10000A6D8(&qword_1000185A8, &qword_100010218);
    sub_10000BAA0(&qword_1000185C8, &qword_1000185D0, &qword_100010258);
    sub_10000BAA0(&qword_1000185D8, &qword_1000185B0, &qword_100010220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185C0);
  }

  return result;
}

unint64_t sub_10000B154()
{
  result = qword_1000185F0;
  if (!qword_1000185F0)
  {
    sub_10000F240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185F0);
  }

  return result;
}

uint64_t sub_10000B1AC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[16];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[25];

  return _swift_deallocObject(v0, 210, 7);
}

uint64_t sub_10000B264()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[18];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[25];

  v12 = v0[27];

  return _swift_deallocObject(v0, 227, 7);
}

uint64_t sub_10000B2F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 226);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B3B4;

  return sub_100009BB8(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_10000B3B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B4C8(uint64_t a1)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v10._countAndFlagsBits = 0x80000001000106D0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0xD000000000000018;
    v4._object = 0x80000001000106D0;
    v5.super.isa = v2;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    type metadata accessor for MessagesViewController();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:v1];
    v10._countAndFlagsBits = 0x80000001000106F0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0xD000000000000019;
    v4._object = 0x80000001000106F0;
    v5.super.isa = v2;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
  }

  v8 = sub_10000F0E0(v4, v3, v5, v6, v10);

  return v8;
}

uint64_t sub_10000B63C(uint64_t a1)
{
  if (a1 == 4)
  {
    type metadata accessor for MessagesViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v10._countAndFlagsBits = 0x8000000100010670;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0xD000000000000021;
    v4._object = 0x8000000100010670;
    v5.super.isa = v2;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    type metadata accessor for MessagesViewController();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass:v1];
    v10._countAndFlagsBits = 0x80000001000106A0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0xD000000000000022;
    v4._object = 0x80000001000106A0;
    v5.super.isa = v2;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
  }

  v8 = sub_10000F0E0(v4, v3, v5, v6, v10);

  return v8;
}

unint64_t sub_10000B7C4()
{
  result = qword_100018610;
  if (!qword_100018610)
  {
    sub_10000A6D8(&qword_1000184D0, &qword_100010170);
    sub_10000B87C();
    sub_10000BAA0(&qword_100018640, &qword_100018648, &qword_1000102B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018610);
  }

  return result;
}

unint64_t sub_10000B87C()
{
  result = qword_100018618;
  if (!qword_100018618)
  {
    sub_10000A6D8(&qword_1000184B8, &qword_100010158);
    sub_10000B934(&qword_100018620, &qword_1000184B0, &qword_100010150, sub_10000B9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018618);
  }

  return result;
}

uint64_t sub_10000B934(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000A6D8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000B9E8()
{
  result = qword_100018630;
  if (!qword_100018630)
  {
    sub_10000A6D8(&qword_1000184A0, &qword_100010140);
    sub_10000BAA0(&qword_100018638, &qword_100018498, &qword_100010138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018630);
  }

  return result;
}

uint64_t sub_10000BAA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A6D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BB08()
{
  result = qword_100018650;
  if (!qword_100018650)
  {
    sub_10000A6D8(&qword_100018658, &unk_100010310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018650);
  }

  return result;
}

uint64_t sub_10000BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000066E8(&qword_100018600, &qword_100010270) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000A5B8(a3, v26 - v10, &qword_100018600, &qword_100010270);
  v12 = sub_10000F580();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000AE94(v11, &qword_100018600, &qword_100010270);
  }

  else
  {
    sub_10000F570();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10000F540();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10000F4F0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000AE94(a3, &qword_100018600, &qword_100010270);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000AE94(a3, &qword_100018600, &qword_100010270);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_10000BEAC(char a1)
{
  v2 = v1;
  v4 = sub_10000F180();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessagesViewController();
  v14.receiver = v2;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  sub_10000F160();
  v10 = sub_10000F170();
  v11 = sub_10000F5F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Register for LegacyContactMessageExtention update notification", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v2 selector:"handleLegacyContactDidUpdate" name:AAInheritanceContactChangedNotification object:0];
}

void sub_10000C0B8(char a1)
{
  v2 = v1;
  v4 = sub_10000F180();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessagesViewController();
  v14.receiver = v2;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  sub_10000F160();
  v10 = sub_10000F170();
  v11 = sub_10000F5F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unregister for LegacyContactMessageExtention update notification", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [objc_opt_self() defaultCenter];
  [v13 removeObserver:v2 name:AAInheritanceContactChangedNotification object:0];
}

id sub_10000C2BC(void *a1)
{
  v117 = a1;
  v1 = sub_1000066E8(&qword_100018600, &qword_100010270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v106 = &v102 - v3;
  v4 = sub_1000066E8(&qword_1000186C8, &qword_1000103D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v104 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v102 - v8;
  v109 = sub_10000F0D0();
  v9 = *(v109 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v109);
  v105 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000066E8(&qword_100018700, &qword_1000103F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v113 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v116 = (&v102 - v16);
  v17 = sub_10000F100();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v114 = &v102 - v24;
  __chkstk_darwin(v23);
  v26 = &v102 - v25;
  v27 = sub_10000F180();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v111 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v107 = &v102 - v33;
  v34 = __chkstk_darwin(v32);
  v115 = &v102 - v35;
  __chkstk_darwin(v34);
  v37 = &v102 - v36;
  sub_10000F160();
  v38 = sub_10000F170();
  v39 = sub_10000F5F0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v112 = v28;
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "LegacyContactMessageExtention willBecomeActive", v40, 2u);
    v28 = v112;
  }

  v43 = *(v28 + 8);
  v42 = v28 + 8;
  v41 = v43;
  v43(v37, v27);
  v44 = [v117 selectedMessage];
  if (!v44)
  {
    v52 = v116;
    (*(v18 + 56))(v116, 1, 1, v17);
    return sub_10000AE94(v52, &qword_100018700, &qword_1000103F0);
  }

  v103 = v41;
  v45 = v44;
  v46 = [v44 URL];

  if (v46)
  {
    v47 = v113;
    sub_10000F0F0();

    v48 = v47;
    v49 = 0;
    v51 = v114;
    v50 = v115;
  }

  else
  {
    v49 = 1;
    v51 = v114;
    v50 = v115;
    v48 = v113;
  }

  (*(v18 + 56))(v48, v49, 1, v17);
  v53 = v48;
  v52 = v116;
  sub_10000EE14(v53, v116);
  if ((*(v18 + 48))(v52, 1, v17) == 1)
  {
    return sub_10000AE94(v52, &qword_100018700, &qword_1000103F0);
  }

  v114 = v27;
  (*(v18 + 32))(v26, v52, v17);
  sub_10000F160();
  (*(v18 + 16))(v51, v26, v17);
  v55 = sub_10000F170();
  v56 = v51;
  v57 = sub_10000F5F0();
  if (os_log_type_enabled(v55, v57))
  {
    v58 = swift_slowAlloc();
    v112 = v42;
    v59 = v58;
    v102 = v58;
    v113 = swift_slowAlloc();
    v118 = v113;
    *v59 = 136315138;
    sub_10000EFF8(&qword_100018708, &type metadata accessor for URL);
    v60 = v26;
    v61 = v9;
    v62 = sub_10000F6E0();
    v63 = v18;
    v64 = v17;
    v66 = v65;
    v116 = *(v63 + 8);
    (v116)(v56, v64);
    v67 = v62;
    v9 = v61;
    v26 = v60;
    v68 = sub_100002318(v67, v66, &v118);
    v17 = v64;

    v69 = v102;
    *(v102 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v55, v57, "LegacyContactMessageExtention messageURL %s", v69, 0xCu);
    sub_100006860(v113);

    v70 = v115;
  }

  else
  {

    v116 = *(v18 + 8);
    (v116)(v56, v17);
    v70 = v50;
  }

  v71 = v114;
  v72 = v103;
  v103(v70, v114);
  v73 = [v117 selectedMessage];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 URL];
    if (v75)
    {
      v76 = v75;
      sub_10000F0F0();

      v77 = v108;
      sub_10000F0C0();
      v78 = v109;
      if ((*(v9 + 48))(v77, 1, v109) == 1)
      {
        v79 = v22;
        sub_10000AE94(v77, &qword_1000186C8, &qword_1000103D0);
        sub_10000F160();
        v80 = sub_10000F170();
        v81 = sub_10000F5F0();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "Missing url components for invite message url", v82, 2u);
        }

        v72(v107, v114);
        result = [v110 view];
        if (result)
        {
          v83 = result;
          v84 = [objc_opt_self() blackColor];
          [v83 setBackgroundColor:v84];

          v85 = v116;
          (v116)(v79, v17);
          return (v85)(v26, v17);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v90 = *(v9 + 32);
        v91 = v105;
        v117 = v22;
        v90(v105, v77, v78);
        v92 = v104;
        (*(v9 + 16))(v104, v91, v78);
        (*(v9 + 56))(v92, 0, 1, v78);
        v115 = v26;
        v93 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
        v94 = v110;
        swift_beginAccess();
        sub_10000EE84(v92, v94 + v93);
        swift_endAccess();
        LOBYTE(v92) = [v74 isPending];
        v95 = sub_10000F580();
        v96 = v106;
        (*(*(v95 - 8) + 56))(v106, 1, 1, v95);
        sub_10000F560();
        v97 = v78;
        v98 = v94;
        v99 = sub_10000F550();
        v100 = swift_allocObject();
        *(v100 + 16) = v99;
        *(v100 + 24) = &protocol witness table for MainActor;
        *(v100 + 32) = v98;
        *(v100 + 40) = v92;
        sub_10000BB9C(0, 0, v96, &unk_1000103F8, v100);

        (*(v9 + 8))(v91, v97);
        v101 = v116;
        (v116)(v117, v17);
        return (v101)(v115, v17);
      }

      return result;
    }
  }

  v86 = v111;
  sub_10000F160();
  v87 = sub_10000F170();
  v88 = sub_10000F5F0();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Missing invite message url", v89, 2u);
  }

  v72(v86, v71);
  return (v116)(v26, v17);
}

uint64_t sub_10000CEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 210) = a5;
  *(v5 + 1496) = a4;
  v6 = sub_10000F490();
  *(v5 + 1504) = v6;
  v7 = *(v6 - 8);
  *(v5 + 1512) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 1520) = swift_task_alloc();
  v9 = sub_10000F4B0();
  *(v5 + 1528) = v9;
  v10 = *(v9 - 8);
  *(v5 + 1536) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 1544) = swift_task_alloc();
  v12 = sub_10000F180();
  *(v5 + 1552) = v12;
  v13 = *(v12 - 8);
  *(v5 + 1560) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 1568) = swift_task_alloc();
  *(v5 + 1576) = swift_task_alloc();
  v15 = *(*(sub_1000066E8(&qword_1000186C8, &qword_1000103D0) - 8) + 64) + 15;
  *(v5 + 1584) = swift_task_alloc();
  v16 = sub_10000F0D0();
  *(v5 + 1592) = v16;
  v17 = *(v16 - 8);
  *(v5 + 1600) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 1608) = swift_task_alloc();
  sub_10000F560();
  *(v5 + 1616) = sub_10000F550();
  v20 = sub_10000F540();
  *(v5 + 1624) = v20;
  *(v5 + 1632) = v19;

  return _swift_task_switch(sub_10000D140, v20, v19);
}

uint64_t sub_10000D140()
{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1496);
  v5 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
  swift_beginAccess();
  sub_10000A5B8(v4 + v5, v3, &qword_1000186C8, &qword_1000103D0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 1616);
    v7 = *(v0 + 1584);
    v8 = *(v0 + 1576);

    sub_10000AE94(v7, &qword_1000186C8, &qword_1000103D0);
    sub_10000F160();
    v9 = sub_10000F170();
    v10 = sub_10000F5E0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1576);
    v13 = *(v0 + 1560);
    v14 = *(v0 + 1552);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Message bubble missing urlComponents", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);
    v16 = *(v0 + 1608);
    v17 = *(v0 + 1584);
    v18 = *(v0 + 1576);
    v19 = *(v0 + 1568);
    v20 = *(v0 + 1544);
    v21 = *(v0 + 1520);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    (*(*(v0 + 1600) + 32))(*(v0 + 1608), *(v0 + 1584), *(v0 + 1592));
    v24 = swift_task_alloc();
    *(v0 + 1640) = v24;
    *v24 = v0;
    v24[1] = sub_10000D3D4;
    v25 = *(v0 + 1608);
    v26 = *(v0 + 210);

    return sub_1000036B4(v0 + 416, v25, v26);
  }
}

uint64_t sub_10000D3D4()
{
  v1 = *v0;
  v2 = *(*v0 + 1640);
  v12 = *v0;

  v3 = *(v1 + 592);
  *(v1 + 776) = *(v1 + 576);
  *(v1 + 792) = v3;
  *(v1 + 808) = *(v1 + 608);
  v4 = *(v1 + 528);
  *(v1 + 712) = *(v1 + 512);
  *(v1 + 728) = v4;
  v5 = *(v1 + 560);
  *(v1 + 744) = *(v1 + 544);
  *(v1 + 760) = v5;
  v6 = *(v1 + 464);
  *(v1 + 648) = *(v1 + 448);
  *(v1 + 664) = v6;
  v7 = *(v1 + 496);
  *(v1 + 680) = *(v1 + 480);
  *(v1 + 696) = v7;
  v8 = *(v1 + 432);
  *(v1 + 616) = *(v1 + 416);
  *(v1 + 632) = v8;
  v9 = *(v1 + 1632);
  v10 = *(v1 + 1624);

  return _swift_task_switch(sub_10000D534, v10, v9);
}

uint64_t sub_10000D534()
{
  v1 = *(v0 + 1616);

  v2 = *(v0 + 576);
  v3 = *(v0 + 592);
  v4 = *(v0 + 544);
  *(v0 + 360) = *(v0 + 560);
  *(v0 + 376) = v2;
  *(v0 + 392) = v3;
  v5 = *(v0 + 512);
  v6 = *(v0 + 528);
  v7 = *(v0 + 480);
  *(v0 + 296) = *(v0 + 496);
  *(v0 + 312) = v5;
  *(v0 + 328) = v6;
  *(v0 + 344) = v4;
  v8 = *(v0 + 416);
  *(v0 + 232) = *(v0 + 432);
  v9 = *(v0 + 464);
  *(v0 + 248) = *(v0 + 448);
  *(v0 + 264) = v9;
  *(v0 + 280) = v7;
  *(v0 + 408) = *(v0 + 608);
  *(v0 + 216) = v8;
  if (sub_10000EC9C(v0 + 216) == 1)
  {
    v10 = *(v0 + 1568);
    sub_10000F160();
    v11 = sub_10000F170();
    v12 = sub_10000F5E0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1608);
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1592);
    v17 = *(v0 + 1568);
    v18 = *(v0 + 1560);
    v19 = *(v0 + 1552);
    if (v13)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Message bubble could not build inviteMessageDetail", v20, 2u);
    }

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    v79 = *(v0 + 1592);
    v80 = *(v0 + 1608);
    v21 = *(v0 + 1544);
    v22 = *(v0 + 1536);
    v77 = *(v0 + 1528);
    v78 = *(v0 + 1600);
    v23 = *(v0 + 1520);
    v24 = *(v0 + 1512);
    v25 = *(v0 + 1504);
    v26 = *(v0 + 1496);
    v27 = *(v0 + 264);
    *(v0 + 48) = *(v0 + 248);
    *(v0 + 64) = v27;
    v28 = *(v0 + 328);
    *(v0 + 112) = *(v0 + 312);
    *(v0 + 128) = v28;
    v29 = *(v0 + 296);
    *(v0 + 80) = *(v0 + 280);
    *(v0 + 96) = v29;
    *(v0 + 208) = *(v0 + 408);
    v30 = *(v0 + 392);
    *(v0 + 176) = *(v0 + 376);
    *(v0 + 192) = v30;
    v31 = *(v0 + 360);
    *(v0 + 144) = *(v0 + 344);
    *(v0 + 160) = v31;
    v32 = *(v0 + 232);
    *(v0 + 16) = *(v0 + 216);
    *(v0 + 32) = v32;
    v33 = &v26[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
    *(v0 + 1016) = *&v26[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
    v34 = *(v33 + 4);
    v36 = *(v33 + 1);
    v35 = *(v33 + 2);
    *(v0 + 1064) = *(v33 + 3);
    *(v0 + 1080) = v34;
    *(v0 + 1032) = v36;
    *(v0 + 1048) = v35;
    v37 = *(v33 + 8);
    v39 = *(v33 + 5);
    v38 = *(v33 + 6);
    *(v0 + 1128) = *(v33 + 7);
    *(v0 + 1144) = v37;
    *(v0 + 1096) = v39;
    *(v0 + 1112) = v38;
    v41 = *(v33 + 10);
    v40 = *(v33 + 11);
    v42 = *(v33 + 9);
    *(v0 + 1208) = *(v33 + 96);
    *(v0 + 1176) = v41;
    *(v0 + 1192) = v40;
    *(v0 + 1160) = v42;
    *v33 = *(v0 + 416);
    v43 = *(v0 + 432);
    v44 = *(v0 + 448);
    v45 = *(v0 + 480);
    *(v33 + 3) = *(v0 + 464);
    *(v33 + 4) = v45;
    *(v33 + 1) = v43;
    *(v33 + 2) = v44;
    v46 = *(v0 + 496);
    v47 = *(v0 + 512);
    v48 = *(v0 + 544);
    *(v33 + 7) = *(v0 + 528);
    *(v33 + 8) = v48;
    *(v33 + 5) = v46;
    *(v33 + 6) = v47;
    v49 = *(v0 + 560);
    v50 = *(v0 + 576);
    v51 = *(v0 + 592);
    *(v33 + 96) = *(v0 + 608);
    *(v33 + 10) = v50;
    *(v33 + 11) = v51;
    *(v33 + 9) = v49;
    v52 = *(v0 + 792);
    *(v0 + 976) = *(v0 + 776);
    *(v0 + 992) = v52;
    *(v0 + 1008) = *(v0 + 808);
    v53 = *(v0 + 728);
    *(v0 + 912) = *(v0 + 712);
    *(v0 + 928) = v53;
    v54 = *(v0 + 760);
    *(v0 + 944) = *(v0 + 744);
    *(v0 + 960) = v54;
    v55 = *(v0 + 664);
    *(v0 + 848) = *(v0 + 648);
    *(v0 + 864) = v55;
    v56 = *(v0 + 696);
    *(v0 + 880) = *(v0 + 680);
    *(v0 + 896) = v56;
    v57 = *(v0 + 632);
    *(v0 + 816) = *(v0 + 616);
    *(v0 + 832) = v57;
    sub_1000068AC(v0 + 816, v0 + 1216);
    sub_10000AE94(v0 + 1016, &qword_1000186D0, &qword_1000103D8);
    sub_10000ECB4(0, &qword_1000186D8, OS_dispatch_queue_ptr);
    v58 = sub_10000F600();
    v59 = swift_allocObject();
    v60 = *(v0 + 192);
    *(v59 + 176) = *(v0 + 176);
    *(v59 + 192) = v60;
    *(v59 + 208) = *(v0 + 208);
    v61 = *(v0 + 128);
    *(v59 + 112) = *(v0 + 112);
    *(v59 + 128) = v61;
    v62 = *(v0 + 160);
    *(v59 + 144) = *(v0 + 144);
    *(v59 + 160) = v62;
    v63 = *(v0 + 64);
    *(v59 + 48) = *(v0 + 48);
    *(v59 + 64) = v63;
    v64 = *(v0 + 96);
    *(v59 + 80) = *(v0 + 80);
    *(v59 + 96) = v64;
    v65 = *(v0 + 32);
    *(v59 + 16) = *(v0 + 16);
    *(v59 + 32) = v65;
    *(v59 + 216) = v26;
    *(v0 + 1448) = sub_10000ED8C;
    *(v0 + 1456) = v59;
    *(v0 + 1416) = _NSConcreteStackBlock;
    *(v0 + 1424) = 1107296256;
    *(v0 + 1432) = sub_10000DAFC;
    *(v0 + 1440) = &unk_100014F48;
    v66 = _Block_copy((v0 + 1416));
    v67 = v26;
    sub_10000F4A0();
    *(v0 + 1488) = &_swiftEmptyArrayStorage;
    sub_10000EFF8(&qword_1000186E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000066E8(&qword_1000186E8, &qword_1000103E0);
    sub_10000EDB0();
    sub_10000F630();
    sub_10000F610();
    _Block_release(v66);

    (*(v24 + 8))(v23, v25);
    (*(v22 + 8))(v21, v77);
    (*(v78 + 8))(v80, v79);
    v68 = *(v0 + 1456);
  }

  v69 = *(v0 + 1608);
  v70 = *(v0 + 1584);
  v71 = *(v0 + 1576);
  v72 = *(v0 + 1568);
  v73 = *(v0 + 1544);
  v74 = *(v0 + 1520);

  v75 = *(v0 + 8);

  return v75();
}

void sub_10000DA48(uint64_t a1)
{
  v2 = *(a1 + 176);
  v21 = *(a1 + 160);
  v22 = v2;
  v23 = *(a1 + 192);
  v3 = *(a1 + 112);
  v17 = *(a1 + 96);
  v18 = v3;
  v4 = *(a1 + 144);
  v19 = *(a1 + 128);
  v20 = v4;
  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v6 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = v6;
  v7 = *(a1 + 16);
  v11 = *a1;
  v12 = v7;
  v8 = objc_allocWithZone(sub_1000066E8(&qword_1000186F8, &qword_1000103E8));
  sub_1000068AC(a1, v10);
  v9 = sub_10000F260();
  sub_10000DDC4(v9);
}

uint64_t sub_10000DAFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000DB40()
{
  v1 = v0;
  v2 = sub_1000066E8(&qword_100018600, &qword_100010270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_10000F180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F160();
  v11 = sub_10000F170();
  v12 = sub_10000F5F0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received notification for LegacyContactMessageExtention update notification", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_10000F580();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_10000F560();
  v15 = v1;
  v16 = sub_10000F550();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  sub_10000BB9C(0, 0, v5, &unk_1000103B0, v17);
}

void sub_10000DDC4(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v36 = v3;
    v4 = [v1 view];
    if (v4)
    {
      v34 = v4;
      v5 = [v1 childViewControllers];
      sub_10000ECB4(0, &qword_1000186B0, UIViewController_ptr);
      v6 = sub_10000F530();

      v35 = v1;
      if (v6 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000F680())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_10000F660();
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          [v9 willMoveToParentViewController:0];
          v12 = [v10 view];
          [v12 removeFromSuperview];

          [v10 removeFromParentViewController];
          ++v8;
          if (v11 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      [v35 addChildViewController:a1];
      v14 = [v35 view];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      [v14 addSubview:v36];

      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v33 = objc_opt_self();
      sub_1000066E8(&qword_1000186B8, &unk_100010398);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100010320;
      v17 = [v36 topAnchor];
      v18 = [v34 safeAreaLayoutGuide];
      v19 = [v18 topAnchor];

      v20 = [v17 constraintEqualToAnchor:v19];
      *(v16 + 32) = v20;
      v21 = [v36 bottomAnchor];
      v22 = [v34 bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v16 + 40) = v23;
      v24 = [v36 leadingAnchor];
      v25 = [v34 safeAreaLayoutGuide];
      v26 = [v25 leadingAnchor];

      v27 = [v24 constraintEqualToAnchor:v26];
      *(v16 + 48) = v27;
      v28 = [v36 trailingAnchor];
      v29 = [v34 safeAreaLayoutGuide];
      v30 = [v29 trailingAnchor];

      v31 = [v28 constraintEqualToAnchor:v30];
      *(v16 + 56) = v31;
      sub_10000ECB4(0, &qword_1000186C0, NSLayoutConstraint_ptr);
      isa = sub_10000F520().super.isa;

      [v33 activateConstraints:isa];

      [a1 didMoveToParentViewController:v35];
      v13 = v34;
    }

    else
    {
      v13 = v36;
    }
  }
}

id sub_10000E278(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_optimalBubbleSize] = 0x406F400000000000;
  v6 = &v3[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_recipientHandleFromConversation];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
  v8 = sub_10000F0D0();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
  sub_100006798(v20);
  v10 = v20[11];
  *(v9 + 10) = v20[10];
  *(v9 + 11) = v10;
  *(v9 + 96) = v21;
  v11 = v20[7];
  *(v9 + 6) = v20[6];
  *(v9 + 7) = v11;
  v12 = v20[9];
  *(v9 + 8) = v20[8];
  *(v9 + 9) = v12;
  v13 = v20[3];
  *(v9 + 2) = v20[2];
  *(v9 + 3) = v13;
  v14 = v20[5];
  *(v9 + 4) = v20[4];
  *(v9 + 5) = v14;
  v15 = v20[1];
  *v9 = v20[0];
  *(v9 + 1) = v15;
  if (a2)
  {
    v16 = sub_10000F4C0();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for MessagesViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_10000E440(void *a1)
{
  *&v1[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_optimalBubbleSize] = 0x406F400000000000;
  v3 = &v1[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_recipientHandleFromConversation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_urlComponents;
  v5 = sub_10000F0D0();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC29LegacyContactMessageExtention22MessagesViewController_inviteMessageDetails];
  sub_100006798(v16);
  v7 = v16[11];
  *(v6 + 10) = v16[10];
  *(v6 + 11) = v7;
  *(v6 + 96) = v17;
  v8 = v16[7];
  *(v6 + 6) = v16[6];
  *(v6 + 7) = v8;
  v9 = v16[9];
  *(v6 + 8) = v16[8];
  *(v6 + 9) = v9;
  v10 = v16[3];
  *(v6 + 2) = v16[2];
  *(v6 + 3) = v10;
  v11 = v16[5];
  *(v6 + 4) = v16[4];
  *(v6 + 5) = v11;
  v12 = v16[1];
  *v6 = v16[0];
  *(v6 + 1) = v12;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for MessagesViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id sub_10000E5A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesViewController()
{
  result = qword_100018698;
  if (!qword_100018698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E6E8()
{
  sub_10000E798();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000E798()
{
  if (!qword_1000186A8)
  {
    sub_10000F0D0();
    v0 = sub_10000F620();
    if (!v1)
    {
      atomic_store(v0, &qword_1000186A8);
    }
  }
}

uint64_t sub_10000E7F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F048;

  return sub_10000CEEC(a1, v4, v5, v6, v7);
}

uint64_t sub_10000E8B8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000E904(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E9FC;

  return v7(a1);
}

uint64_t sub_10000E9FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000EAF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EB2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F048;

  return sub_10000E904(a1, v5);
}

uint64_t sub_10000EBE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B3B4;

  return sub_10000E904(a1, v5);
}

uint64_t sub_10000EC9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000ECB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000ECFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 128);

  v8 = *(v0 + 152);

  v9 = *(v0 + 168);

  v10 = *(v0 + 184);

  v11 = *(v0 + 200);

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_10000ED98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000EDB0()
{
  result = qword_1000186F0;
  if (!qword_1000186F0)
  {
    sub_10000A6D8(&qword_1000186E8, &qword_1000103E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000186F0);
  }

  return result;
}

uint64_t sub_10000EE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066E8(&qword_100018700, &qword_1000103F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066E8(&qword_1000186C8, &qword_1000103D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EEF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000EF34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B3B4;

  return sub_10000CEEC(a1, v4, v5, v6, v7);
}

uint64_t sub_10000EFF8(unint64_t *a1, void (*a2)(uint64_t))
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