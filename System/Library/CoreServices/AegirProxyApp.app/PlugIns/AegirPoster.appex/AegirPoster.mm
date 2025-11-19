__n128 sub_100001DDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001DE8(uint64_t a1, int a2)
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

uint64_t sub_100001E08(uint64_t result, int a2, int a3)
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

id sub_100001E48(uint64_t a1, unint64_t a2)
{
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v32 - v10;
  v33[0] = a1;
  v33[1] = a2;
  v32[2] = 44;
  v32[3] = 0xE100000000000000;
  sub_1000023D0();
  v12 = sub_100034D34();
  if (v12[2] != 2)
  {

    sub_100034804();

    v22 = sub_100034854();
    v23 = sub_100034C54();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136315138;
      v26 = sub_10001AF94(a1, a2, v33);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to load location from string. %s ", v24, 0xCu);
      sub_1000026BC(v25);
    }

    else
    {
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  v13 = v12[4];
  v14 = v12[5];
  v15 = v12;
  v33[0] = 0;

  v16 = sub_100002708(v13, v14);

  if (!v16)
  {

LABEL_9:
    sub_100034804();

    v27 = sub_100034854();
    v28 = sub_100034C54();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33[0] = v30;
      *v29 = 136315138;
      v31 = sub_10001AF94(a1, a2, v33);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to load location from string. %s ", v29, 0xCu);
      sub_1000026BC(v30);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
    return 0;
  }

  if (v15[2] >= 2uLL)
  {
    v18 = v15;
    v19 = *v33;
    v20 = v15[6];
    v21 = v18[7];

    v33[0] = 0;
    LOBYTE(v20) = sub_100002708(v20, v21);

    if (v20)
    {

      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:v19 longitude:*v33];
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void *sub_100002240@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002278(uint64_t a1, id *a2)
{
  result = sub_100034994();
  *a2 = 0;
  return result;
}

uint64_t sub_1000022F0(uint64_t a1, id *a2)
{
  v3 = sub_1000349A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002370@<X0>(void *a1@<X8>)
{
  sub_1000349B4();
  v2 = sub_100034984();

  *a1 = v2;
  return result;
}

_DWORD *sub_1000023B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_1000023D0()
{
  result = qword_100046AF0;
  if (!qword_100046AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046AF0);
  }

  return result;
}

uint64_t sub_100002424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100034984();

  *a2 = v5;
  return result;
}

uint64_t sub_10000246C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000349B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002498(uint64_t a1)
{
  v2 = sub_1000029EC(&qword_100046B38);
  v3 = sub_1000029EC(&qword_100046B40);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002530()
{
  v1 = *v0;
  sub_1000349B4();
  v2 = sub_100034A74();

  return v2;
}

uint64_t sub_10000256C()
{
  v1 = *v0;
  sub_1000349B4();
  sub_100034A04();
}

Swift::Int sub_1000025C0()
{
  v1 = *v0;
  sub_1000349B4();
  sub_100034EF4();
  sub_100034A04();
  v2 = sub_100034F14();

  return v2;
}

uint64_t sub_100002634(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000349B4();
  v6 = v5;
  if (v4 == sub_1000349B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100034EC4();
  }

  return v9 & 1;
}

uint64_t sub_1000026BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

BOOL sub_100002708(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_100034DA4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_100002800@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

__n128 sub_1000028BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000028C8(uint64_t a1, int a2)
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

uint64_t sub_1000028E8(uint64_t result, int a2, int a3)
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

void sub_100002938(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000029EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PRTimeFontIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002A80()
{
  sub_100034484();
  sub_1000035B0(&qword_1000483A0, qword_100037210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100036610;
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v1 = static PreferencePane.aegirGeneralPreferencePane;
  *(v0 + 32) = static PreferencePane.aegirGeneralPreferencePane;
  v2 = v1;
  *(v0 + 40) = sub_1000343F4();
  *(v0 + 48) = sub_100034404();
  result = sub_100034464();
  static PreferencePane.aegirPreferencePane = result;
  return result;
}

uint64_t *PreferencePane.aegirGeneralPreferencePane.unsafeMutableAddressor()
{
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  return &static PreferencePane.aegirGeneralPreferencePane;
}

uint64_t *PreferencePane.aegirPreferencePane.unsafeMutableAddressor()
{
  if (qword_1000469A0 != -1)
  {
    swift_once();
  }

  return &static PreferencePane.aegirPreferencePane;
}

uint64_t sub_100002C40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_10001B778(&off_1000411C8);
  sub_1000035B0(&qword_100046B48, &qword_100036628);
  swift_arrayDestroy();
  sub_10001B874(&off_100041400);
  sub_1000035B0(&qword_100046B50, &qword_100036630);
  swift_arrayDestroy();
  sub_10001B978(&off_100041380);
  sub_1000035B0(&qword_100046B58, &qword_100036638);
  swift_arrayDestroy();
  v1 = objc_allocWithZone(sub_100034484());
  result = sub_100034454();
  static PreferencePane.aegirGeneralPreferencePane = result;
  return result;
}

id sub_100002DA8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_100002E2C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

BOOL sub_100002E90(id a1, SEL a2)
{
  v2 = a1;
  v3 = sub_100034424();

  return v3 & 1;
}

unint64_t sub_100002F20(id a1, SEL a2)
{
  v2 = a1;
  v3 = PreferencePane.vista.getter();

  return v3;
}

uint64_t PreferencePane.vista.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = v2 == 0x6874726145 && v3 == 0xE500000000000000;
  if (v4 || (sub_100034EC4() & 1) != 0)
  {

    return 0;
  }

  else if (v2 == 1852796749 && v3 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 1;
  }

  else if (v2 == 0x79532072616C6F53 && v3 == 0xEC0000006D657473 || (sub_100034EC4() & 1) != 0)
  {

    return 2;
  }

  else if (v2 == 0x7972756372654DLL && v3 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 4;
  }

  else if (v2 == 0x73756E6556 && v3 == 0xE500000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 5;
  }

  else if (v2 == 1936875853 && v3 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 6;
  }

  else if (v2 == 0x7265746970754ALL && v3 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 7;
  }

  else if (v2 == 0x6E7275746153 && v3 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 3;
  }

  else if (v2 == 0x73756E617255 && v3 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 8;
  }

  else if (v2 == 0x656E757470654ELL && v3 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_100034EC4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t PreferencePane.crop.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = v2 == 1819047238 && v3 == 0xE400000000000000;
  if (v4 || (sub_100034EC4() & 1) != 0)
  {

    v5 = 0;
  }

  else if (v2 == 0x6C6961746544 && v3 == 0xE600000000000000)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_100034EC4();
  }

  return v5 & 1;
}

uint64_t PreferencePane.isCalliopeRenderingStyle.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    if (v0 == 0x65706F696C6C6143 && v1 == 0xE800000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100034EC4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PreferencePane.isAegirRenderingStyle.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    if (v0 == 0x7269676541 && v1 == 0xE500000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100034EC4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PreferencePane.isClassicRenderingStyle.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    if (v0 == 0x63697373616C43 && v1 == 0xE700000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100034EC4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1000035B0(uint64_t *a1, uint64_t *a2)
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

double sub_1000035F8()
{
  sub_1000035B0(&qword_100046B60, &qword_100036658);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100036640;
  sub_100003820();
  v1 = sub_10001DE84(10589063);
  *(v0 + 32) = 4;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0u;
  v2 = sub_10001DE84(11435597);
  *(v0 + 80) = 5;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = v2;
  *(v0 + 112) = 0u;
  v3 = sub_10001DE84(7442351);
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0u;
  v4 = sub_10001DE84(7442351);
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0u;
  v5 = sub_10001DE84(9211020);
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = v5;
  *(v0 + 256) = 0u;
  v6 = sub_10001DE84(9211020);
  *(v0 + 272) = 1;
  *(v0 + 280) = 1;
  *(v0 + 288) = 0;
  *(v0 + 296) = v6;
  *(v0 + 304) = 0u;
  v7 = sub_10001DE84(14452348);
  *(v0 + 320) = 6;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = v7;
  *(v0 + 352) = 0u;
  v8 = sub_10001DE84(12544846);
  *(v0 + 368) = 7;
  *(v0 + 376) = 0;
  *(v0 + 384) = 0;
  *(v0 + 392) = v8;
  *(v0 + 400) = 0u;
  v9 = sub_10001DE84(12426329);
  *(v0 + 416) = 3;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = v9;
  *(v0 + 448) = 0u;
  v10 = sub_10001DE84(8308450);
  *(v0 + 464) = 8;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = v10;
  *(v0 + 496) = 0u;
  v11 = sub_10001DE84(6920424);
  *(v0 + 512) = 9;
  *(v0 + 520) = 0;
  *(v0 + 528) = 0;
  *(v0 + 536) = v11;
  *(v0 + 544) = 0u;
  v12 = [objc_opt_self() vibrantMaterialColor];
  *(v0 + 560) = 2;
  *(v0 + 568) = 0;
  *(v0 + 576) = 0;
  *(v0 + 584) = v12;
  result = 0.0;
  *(v0 + 592) = 0u;
  qword_1000493C0 = v0;
  return result;
}

unint64_t sub_100003820()
{
  result = qword_100046B68;
  if (!qword_100046B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100046B68);
  }

  return result;
}

uint64_t sub_10000386C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100034DD4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100003B6C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_100003B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100034A84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000040F8();
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
      result = sub_100034DD4();
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

uint64_t sub_1000040F8()
{
  v0 = sub_100034A94();
  v4 = sub_100004178(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100004178(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000349F4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100034D24();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10001B3D4(v9, 0);
  v12 = sub_1000042D0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1000349F4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_100034DD4();
LABEL_4:

  return sub_1000349F4();
}

unint64_t sub_1000042D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1000044F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100034A54();
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
          result = sub_100034DD4();
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

    result = sub_1000044F0(v12, a6, a7);
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

    result = sub_100034A34();
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

uint64_t sub_1000044F0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100034A64();
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
    v5 = sub_100034A44();
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

void *sub_10000456C()
{
  if (qword_1000469B0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v0 = qword_1000493C0;
    v1 = *(qword_1000493C0 + 16);
    result = &_swiftEmptyArrayStorage;
    if (!v1)
    {
      return result;
    }

    v40 = &_swiftEmptyArrayStorage;

    sub_100034E04();
    v33 = *(v0 + 16);
    v30 = objc_opt_self();
    v31 = v1;
    v3 = 0;
    v4 = (v0 + 72);
    v32 = v0;
    while (v33 != v3)
    {
      if (v3 >= *(v0 + 16))
      {
        goto LABEL_22;
      }

      v7 = *(v4 - 5);
      v8 = *(v4 - 32);
      v9 = *(v4 - 3);
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;
      v38._countAndFlagsBits = v3;
      v13 = v10;
      v35 = v9;
      v36 = v12;
      v37 = v11;
      sub_1000053EC(v11);
      v34 = sub_100034EA4();
      v38._countAndFlagsBits = sub_10001D27C(v7);
      v38._object = v14;
      v41._countAndFlagsBits = 32;
      v41._object = 0xE100000000000000;
      sub_100034A14(v41);
      if (v8)
      {
        v15._countAndFlagsBits = 0x6C6961746544;
      }

      else
      {
        v15._countAndFlagsBits = 1819047238;
      }

      if (v8)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      v15._object = v16;
      sub_100034A14(v15);

      v17 = v38;
      v18 = [v30 mainBundle];
      v29._countAndFlagsBits = 0xE000000000000000;
      v42.value._countAndFlagsBits = 0;
      v42.value._object = 0;
      v19.super.isa = v18;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      sub_100034284(v17, v42, v19, v43, v29);

      if (v10)
      {
        *(&v39 + 1) = sub_100003820();
        v38._countAndFlagsBits = v13;
      }

      else
      {
        v38 = 0;
        v39 = 0u;
      }

      v20 = v13;
      v21 = sub_100034984();

      v22 = sub_100034984();

      v23 = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        v24 = sub_1000054E4(&v38, *(&v39 + 1));
        v25 = *(v23 - 8);
        v26 = *(v25 + 64);
        __chkstk_darwin(v24);
        v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v28);
        v5 = sub_100034EB4();
        (*(v25 + 8))(v28, v23);
        sub_1000026BC(&v38._countAndFlagsBits);
      }

      else
      {
        v5 = 0;
      }

      ++v3;
      [objc_allocWithZone(PREditingLook) initWithIdentifier:v21 displayName:v22 initialTimeFontConfiguration:0 initialTitleColor:v5];

      swift_unknownObjectRelease();
      sub_1000054D4(v37);
      sub_100034DE4();
      v6 = v40[2];
      sub_100034E14();
      sub_100034E24();
      sub_100034DF4();
      v4 += 6;
      v0 = v32;
      if (v31 == v3)
      {

        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }
}

uint64_t sub_100004930(uint64_t a1)
{
  v2 = sub_100034874();
  v54 = *(v2 - 1);
  v3 = *(v54 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v51 - v7;
  if (qword_1000469B0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v9 = *(qword_1000493C0 + 16);
  if (!v9)
  {
LABEL_26:
    sub_100034814();
    v24 = *(a1 + 16);
    v60 = *(a1 + 24);
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = v24;
    sub_1000053FC(&v60, &v59);
    sub_1000053EC(v25);
    v28 = sub_100034854();
    v29 = sub_100034C54();

    sub_10000546C(&v60);
    sub_1000054D4(v25);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59 = v31;
      *v30 = 136315138;
      v32 = sub_1000076E0(*a1, *(a1 + 8), v24);
      v34 = sub_10001AF94(v32, v33, &v59);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not figure out look identifier for configuration: %s", v30, 0xCu);
      sub_1000026BC(v31);
    }

    (*(v54 + 8))(v6, v2);
    v59 = 0;
    return sub_100034EA4();
  }

  v51 = v6;
  v52 = v8;
  v53 = v2;
  v10 = *a1;

  v12 = 0;
  v2 = (v11 + 72);
  v56 = v11;
  v57 = v10;
  while (1)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (*(v2 - 5) != v10)
    {
      goto LABEL_4;
    }

    v13 = *(v2 - 3);
    v14 = *(v2 - 2);
    v6 = *(v2 - 1);
    v15 = *v2;
    v16 = *(v2 - 32) ? 0x6C6961746544 : 1819047238;
    v8 = (*(v2 - 32) ? 0xE600000000000000 : 0xE400000000000000);
    v17 = a1;
    v18 = *(a1 + 8);
    v55 = v18;
    v19 = v18 ? 0x6C6961746544 : 1819047238;
    v20 = v18 ? 0xE600000000000000 : 0xE400000000000000;
    if (v16 == v19 && v8 == v20)
    {
      break;
    }

    v58 = sub_100034EC4();
    v22 = v14;
    v23 = v13;
    sub_1000053EC(v6);

    sub_1000054D4(v6);
    a1 = v17;
    v11 = v56;
    v10 = v57;
    if (v58)
    {
      goto LABEL_30;
    }

LABEL_4:
    ++v12;
    v2 += 6;
    if (v9 == v12)
    {

      v2 = v53;
      v6 = v51;
      goto LABEL_26;
    }
  }

  v35 = v14;
  v36 = v13;
  sub_1000053EC(v6);

  sub_1000054D4(v6);
  a1 = v17;
  v10 = v57;
LABEL_30:

  v37 = a1;
  v38 = v52;
  sub_100034814();
  v39 = v37[2];
  v60 = v37[3];
  v40 = v37[4];
  v41 = v37[5];
  v42 = v39;
  sub_1000053FC(&v60, &v59);
  sub_1000053EC(v40);
  v43 = sub_100034854();
  v44 = sub_100034C34();

  sub_10000546C(&v60);
  sub_1000054D4(v40);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59 = v46;
    *v45 = 134218242;
    *(v45 + 4) = v12;
    *(v45 + 12) = 2080;
    v47 = sub_1000076E0(v10, v55, v39);
    v49 = sub_10001AF94(v47, v48, &v59);

    *(v45 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "Look identifier %ld for configuration: %s", v45, 0x16u);
    sub_1000026BC(v46);
  }

  (*(v54 + 8))(v38, v53);
  v59 = v12;
  return sub_100034EA4();
}

void sub_100004E58(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v59[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  v10 = sub_1000349B4();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if ((v12 & 0x1000000000000000) != 0)
    {
      v60 = 0;
      v18 = sub_100003B6C(v10, v12, 10);
      v36 = v57;
      goto LABEL_63;
    }

    if ((v12 & 0x2000000000000000) == 0)
    {
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_77;
      }

      for (i = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_100034DD4())
      {
        v17 = *i;
        if (v17 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_81;
          }

          v13 = v14 - 1;
          if (v14 == 1)
          {
            goto LABEL_61;
          }

          v18 = 0;
          if (i)
          {
            v25 = i + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_61;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_61;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_61;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_62;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_79;
          }

          v13 = v14 - 1;
          if (v14 == 1)
          {
            goto LABEL_61;
          }

          v18 = 0;
          if (i)
          {
            v19 = i + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v13)
              {
                goto LABEL_62;
              }
            }

LABEL_61:
            v18 = 0;
            LOBYTE(v13) = 1;
            goto LABEL_62;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_61;
          }

          v18 = 0;
          if (i)
          {
            do
            {
              v31 = *i - 48;
              if (v31 > 9)
              {
                goto LABEL_61;
              }

              v32 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_61;
              }

              v18 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_61;
              }

              ++i;
            }

            while (--v14);
          }
        }

        LOBYTE(v13) = 0;
LABEL_62:
        v60 = v13;
        v36 = v13;
LABEL_63:

        if (v36)
        {
          goto LABEL_64;
        }

        if (qword_1000469B0 == -1)
        {
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          swift_once();
          if ((v18 & 0x8000000000000000) == 0)
          {
LABEL_68:
            if (v18 < *(qword_1000493C0 + 16))
            {
              v48 = qword_1000493C0 + 48 * v18;
              v49 = *(v48 + 32);
              v50 = *(v48 + 40);
              v52 = *(v48 + 48);
              v51 = *(v48 + 56);
              v53 = *(v48 + 64);
              v54 = *(v48 + 72);
              v55 = v51;
              v56 = v52;
              sub_1000053EC(v53);
              goto LABEL_72;
            }

            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_77:
        ;
      }
    }

    v59[0] = v10;
    v59[1] = v12 & 0xFFFFFFFFFFFFFFLL;
    if (v10 != 43)
    {
      if (v10 != 45)
      {
        if (v13)
        {
          v18 = 0;
          v33 = v59;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v13)
      {
        if (--v13)
        {
          v18 = 0;
          v22 = v59 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_80;
    }

    if (v13)
    {
      if (--v13)
      {
        v18 = 0;
        v28 = v59 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

LABEL_82:
    __break(1u);
  }

  else
  {

LABEL_64:
    sub_100034814();
    v37 = a1;
    v38 = sub_100034854();
    v39 = sub_100034C54();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v59[0] = v41;
      *v40 = 136315138;
      v42 = [v37 identifier];
      v43 = sub_1000349B4();
      v58 = v4;
      v44 = v5;
      v46 = v45;

      v47 = sub_10001AF94(v43, v46, v59);

      *(v40 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Could not convert look identifier to Int: %s", v40, 0xCu);
      sub_1000026BC(v41);

      (*(v44 + 8))(v8, v58);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 1;
LABEL_72:
    *a2 = v49;
    a2[1] = v50;
    a2[2] = v52;
    a2[3] = v51;
    a2[4] = v53;
    a2[5] = v54;
  }
}

uint64_t sub_1000053EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000053FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035B0(&unk_1000481C0, &qword_100036F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000546C(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_1000481C0, &qword_100036F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000054D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1000054E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100005528(void *a1, void *a2)
{
  v5 = [objc_opt_self() blackColor];
  [a1 setBackgroundColor:v5];

  v6 = [v2 vistaView];
  [a1 addSubview:v6];

  v7 = [v2 vistaView];
  v8 = [v7 quadViews];

  sub_1000057F4();
  v9 = sub_100034AC4();

  if (v9 >> 62)
  {
    if (sub_100034E44())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_100034DC4();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  [a2 addSubview:v11];
}

unint64_t sub_1000056D8()
{
  v1 = [v0 vistaView];
  v2 = [v1 quadViews];

  sub_1000057F4();
  v3 = sub_100034AC4();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  v4 = sub_100034E44();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v7 = sub_100034DC4();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = *(v3 + 8 * result + 32);
LABEL_8:
  v8 = v7;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

unint64_t sub_1000057F4()
{
  result = qword_1000481B0;
  if (!qword_1000481B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000481B0);
  }

  return result;
}

uint64_t sub_100005840(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100005858(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000586C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000058C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100005938()
{
  v0 = sub_100034354();
  sub_100007D20(v0, qword_1000493C8);
  v1 = sub_100007CE8(v0, qword_1000493C8);
  return sub_100005984(v1);
}

uint64_t sub_100005984@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_1000035B0(&qword_100046B70, &qword_100036738);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1000035B0(&qword_100046B78, &unk_100036740);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_100034274();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100034394();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_1000343C4();
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 1, 1, v19);
  sub_100034254();
  sub_100034224();
  sub_100034234();
  sub_1000341F4();
  sub_100034214();
  sub_100034244();
  sub_1000343B4();
  v20(v8, 0, 1, v19);
  sub_100034264();
  sub_100034204();
  v21 = sub_100034354();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v4, 1, v21) == 1)
  {
    sub_100034334();
    (*(v14 + 8))(v17, v13);
    result = v23(v4, 1, v21);
    if (result != 1)
    {
      return sub_100007DDC(v4, &unk_100048480, &qword_100036730);
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    return (*(v22 + 32))(v26, v4, v21);
  }

  return result;
}

uint64_t sub_100005D94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v11 = sub_100034984();
  v12 = CFPreferencesCopyAppValue(v11, kCFPreferencesAnyApplication);

  if (v12)
  {
    v18[1] = v12;
    v13 = sub_100034354();
    swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v13 = sub_100034354();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  sub_100007C78(v10, v8);
  sub_100034354();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v8, 1, v13) == 1)
  {
    if (a1)
    {
      if (qword_1000469B8 != -1)
      {
        swift_once();
      }

      v16 = sub_100007CE8(v13, qword_1000493C8);
      (*(v14 + 16))(a2, v16, v13);
    }

    else
    {
      sub_100034334();
    }

    if (v15(v8, 1, v13) != 1)
    {
      sub_100007DDC(v8, &unk_100048480, &qword_100036730);
    }
  }

  else
  {
    (*(v14 + 32))(a2, v8, v13);
  }

  return sub_100007DDC(v10, &unk_100048480, &qword_100036730);
}

uint64_t sub_100006064(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a1 + 8) == 0;
    if (*(a1 + 8))
    {
      v4 = 0x6C6961746544;
    }

    else
    {
      v4 = 1819047238;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (*(a2 + 8))
    {
      v6 = 0x6C6961746544;
    }

    else
    {
      v6 = 1819047238;
    }

    if (*(a2 + 8))
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 == v6 && v5 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_100034EC4();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_100006128(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_100034374();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100034394();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  __chkstk_darwin();
  v54 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (*(*(sub_1000035B0(&unk_100048480, &qword_100036730) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v43[-v12];
  v57 = sub_100034354();
  v14 = *(v57 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v53 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *v2;
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  v20 = *(v2 + 32);
  v46 = *(v2 + 40);
  sub_10001D27C(v17);
  v48 = sub_1000349D4();
  v50 = v21;

  v49 = sub_1000349D4();
  v51 = v22;

  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v24 = v19;
  [v23 coordinate];

  v25 = sub_100034B94(2);
  v26 = sub_100034B94(2);
  v27 = v25 * 100.0;
  v28 = v57;
  if (v27 <= -2147483650.0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v27 >= 2147483650.0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v26 * 100.0;
  v30 = COERCE__INT64(fabs(v26 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v30)
  {
    goto LABEL_17;
  }

  if (v29 <= -2147483650.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v29 >= 2147483650.0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v14;
  v47 = v14;
  if (v20)
  {
    v20();
    (*(v14 + 56))(v13, 0, 1, v28);
    v32 = v53;
    (*(v31 + 32))(v53, v13, v28);
  }

  else
  {
    (*(v14 + 56))(v13, 1, 1, v57);
    v32 = v53;
    sub_100034334();
    if ((*(v31 + 48))(v13, 1, v28) != 1)
    {
      sub_100007DDC(v13, &unk_100048480, &qword_100036730);
    }
  }

  v44 = (36691 * v29) ^ (33469 * v27);
  v33 = v54;
  sub_100034364();
  v34 = v4[13];
  v34(v7, enum case for Calendar.Component.month(_:), v3);
  v45 = sub_100034384();
  v35 = v4[1];
  v35(v7, v3);
  v34(v7, enum case for Calendar.Component.day(_:), v3);
  v46 = sub_100034384();
  v35(v7, v3);
  v34(v7, enum case for Calendar.Component.timeZone(_:), v3);
  v36 = v32;
  v53 = sub_100034384();
  v35(v7, v3);
  v38 = *(v2 + 48);
  v37 = *(v2 + 52);
  v39 = *(v2 + 64);
  sub_100034BB4(3);
  sub_100034BB4(3);
  v40 = sub_100034CD4();
  v42 = v41;
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_100034DB4(48);
  v61._countAndFlagsBits = 40;
  v61._object = 0xE100000000000000;
  sub_100034A14(v61);
  sub_1000345B4();
  sub_100007D84();
  v62._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v62);

  v63._countAndFlagsBits = 2633001;
  v63._object = 0xE300000000000000;
  sub_100034A14(v63);
  v64._countAndFlagsBits = v48;
  v64._object = v50;
  sub_100034A14(v64);

  v65._countAndFlagsBits = 2633001;
  v65._object = 0xE300000000000000;
  sub_100034A14(v65);
  v66._countAndFlagsBits = v49;
  v66._object = v51;
  sub_100034A14(v66);

  v67._countAndFlagsBits = 2633001;
  v67._object = 0xE300000000000000;
  sub_100034A14(v67);
  LODWORD(v58) = v44;
  v68._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v68);

  v69._countAndFlagsBits = 2633001;
  v69._object = 0xE300000000000000;
  sub_100034A14(v69);
  v70._countAndFlagsBits = v40;
  v70._object = v42;
  sub_100034A14(v70);

  v71._countAndFlagsBits = 2633001;
  v71._object = 0xE300000000000000;
  sub_100034A14(v71);
  sub_100034BC4();
  v72._countAndFlagsBits = 10285;
  v72._object = 0xE200000000000000;
  sub_100034A14(v72);
  sub_100034BC4();
  v73._countAndFlagsBits = 2633001;
  v73._object = 0xE300000000000000;
  sub_100034A14(v73);
  v58 = v45;
  v74._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v74);

  v75._countAndFlagsBits = 2633001;
  v75._object = 0xE300000000000000;
  sub_100034A14(v75);
  v58 = v46;
  v76._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v76);

  v77._countAndFlagsBits = 2633001;
  v77._object = 0xE300000000000000;
  sub_100034A14(v77);
  v58 = v53;
  v78._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v78);

  v79._countAndFlagsBits = 41;
  v79._object = 0xE100000000000000;
  sub_100034A14(v79);
  sub_100034984();

  (*(v55 + 8))(v33, v56);
  (*(v47 + 8))(v36, v57);
}

uint64_t sub_10000695C(uint64_t a1)
{
  sub_100006128(a1);
  v2 = v1;
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];

  v9._countAndFlagsBits = sub_100034B84();
  sub_100034A14(v9);

  v10._countAndFlagsBits = 120;
  v10._object = 0xE100000000000000;
  sub_100034A14(v10);
  sub_100034DB4(16);

  sub_1000345B4();
  sub_100007D84();
  v11._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v11);

  v4 = [v2 description];
  v5 = sub_1000349B4();
  v7 = v6;

  v12._countAndFlagsBits = v5;
  v12._object = v7;
  sub_100034A14(v12);

  v13._countAndFlagsBits = 64;
  v13._object = 0xE100000000000000;
  sub_100034A14(v13);

  v14._countAndFlagsBits = 1735290926;
  v14._object = 0xE400000000000000;
  sub_100034A14(v14);

  return 0x2D7269676561;
}

uint64_t sub_100006AFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000035B0(&qword_100046B88, &qword_100036750);
  v40 = a2;
  result = sub_100034E64();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_100034EF4();
      sub_100034A04();
      result = sub_100034F14();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100006DBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000035B0(&qword_100046B90, &qword_100036758);
  result = sub_100034E64();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100007E98((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100007E3C(v24, &v37);
        sub_100007EA8(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100034D64(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100007E98(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100007074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001B53C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100006AFC(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10001B53C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_100034ED4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000073C4();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_1000071FC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10001B5B4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000753C();
      goto LABEL_7;
    }

    sub_100006DBC(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10001B5B4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100007E3C(a2, v22);
      return sub_100007348(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_100034ED4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000026BC(v17);

  return sub_100007E98(a1, v17);
}

_OWORD *sub_100007348(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100007E98(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1000073C4()
{
  v1 = v0;
  sub_1000035B0(&qword_100046B88, &qword_100036750);
  v2 = *v0;
  v3 = sub_100034E54();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_10000753C()
{
  v1 = v0;
  sub_1000035B0(&qword_100046B90, &qword_100036758);
  v2 = *v0;
  v3 = sub_100034E54();
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
        v18 = 40 * v17;
        sub_100007E3C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100007EA8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100007E98(v22, (*(v4 + 56) + v17));
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

uint64_t sub_1000076E0(uint64_t a1, char a2, void *a3)
{
  v10 = sub_10001D27C(a1);

  v11._countAndFlagsBits = 44;
  v11._object = 0xE100000000000000;
  sub_100034A14(v11);

  v5 = (a2 & 1) == 0;
  if (a2)
  {
    v6 = 0x6C6961746544;
  }

  else
  {
    v6 = 1819047238;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v12._countAndFlagsBits = v6;
  v12._object = v7;
  sub_100034A14(v12);

  result = v10;
  if (a3)
  {
    v9 = a3;
    [v9 coordinate];
    sub_100034BA4();
    v13._countAndFlagsBits = 44;
    v13._object = 0xE100000000000000;
    sub_100034A14(v13);
    [v9 coordinate];
    sub_100034BA4();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_100034A14(v14);

    v15._countAndFlagsBits = 44;
    v15._object = 0xE100000000000000;
    sub_100034A14(v15);

    return v10;
  }

  return result;
}

void sub_100007864(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 currentLook];
  sub_100004E58(v4, &v17);

  v5 = v19;
  if (v19 == 1)
  {
    [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v6 = sub_10001D800();
    v8 = v7;
    v10 = v9;

    swift_unknownObjectRelease();
    v11 = v8 & 1;
    if (v10 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6;
    }

    if (v10 == 1)
    {
      v11 = 0;
      v5 = 1;
    }

    else
    {
      v5 = v10;
    }
  }

  else
  {
    v13 = v21;
    v14 = v20;
    v15 = v18;
    v12 = v17;

    v22 = v14;
    v16 = v5;
    sub_100007DDC(&v22, &unk_1000481C0, &qword_100036F70);
    sub_1000054D4(v13);

    v11 = v15 & 1;
  }

  *a2 = v12;
  a2[1] = v11;
  a2[2] = v5;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
}

void *sub_1000079B0(uint64_t a1, char a2, void *a3)
{
  v5 = sub_10001D27C(a1);
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100007074(v5, v7, 0x6174736956, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v9 = (a2 & 1) == 0;
  if (a2)
  {
    v10 = 0x6C6961746544;
  }

  else
  {
    v10 = 1819047238;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_100007074(v10, v11, 0x656C797453, 0xE500000000000000, v12);
  if (a3)
  {
    v13 = a3;
    [v13 coordinate];
    sub_100034BA4();
    v16._countAndFlagsBits = 44;
    v16._object = 0xE100000000000000;
    sub_100034A14(v16);
    [v13 coordinate];
    sub_100034BA4();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_100007074(0, 0xE000000000000000, 0x6E6F697461636F4CLL, 0xE800000000000000, v14);
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100007B44(uint64_t a1, uint64_t a2, void *a3)
{
  v5._countAndFlagsBits = sub_10001D27C(a1);
  sub_100034A14(v5);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  sub_100034A14(v6);
  sub_100034E34();
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  sub_100034A14(v7);
  if (a3)
  {
    [a3 coordinate];
    sub_100034BA4();
    v8._countAndFlagsBits = 44;
    v8._object = 0xE100000000000000;
    sub_100034A14(v8);
    [a3 coordinate];
    sub_100034BA4();
  }

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100034A14(v9);

  return 0;
}

uint64_t sub_100007C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035B0(&unk_100048480, &qword_100036730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007CE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007D20(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100007D84()
{
  result = qword_100046B80;
  if (!qword_100046B80)
  {
    sub_1000345B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046B80);
  }

  return result;
}

uint64_t sub_100007DDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_100007E98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100007F04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100007F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100007F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_100007FF8()
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(NUNIAstronomyVistaConfiguration) initWithDevice:result];

    [v2 setRendererStyle:3];
    v3 = [objc_opt_self() currentDevice];
    [v3 userInterfaceIdiom];

    v4 = sub_100034984();

    [v2 setTextureSuffix:v4];

    [v2 setColorSpace:2];
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
    v7 = v6;

    [v2 setScreenScale:v7];
    [v2 setQuadViewOptions:370];
    [v2 setIsGPUEnabled:1];
    [v2 setIsRTLLayout:0];
    v8 = sub_100034984();
    LODWORD(v4) = MGGetBoolAnswer();

    LODWORD(v9) = 1028443341;
    if (!v4)
    {
      *&v9 = 1.0;
    }

    [v2 setMaxAPL:v9];
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100008250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v7 = result;
    v8 = [objc_allocWithZone(NUNIAstronomyVistaConfiguration) initWithDevice:result];

    [v8 setRendererStyle:a1];
    v9 = sub_100034984();
    [v8 setTextureSuffix:v9];

    [v8 setColorSpace:a1];
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
    v12 = v11;

    [v8 setScreenScale:v12];
    [v8 setQuadViewOptions:a4];
    [v8 setIsGPUEnabled:1];
    [v8 setIsRTLLayout:0];
    v13 = sub_100034984();
    LODWORD(v10) = MGGetBoolAnswer();

    LODWORD(v14) = 1028443341;
    if (!v10)
    {
      *&v14 = 1.0;
    }

    [v8 setMaxAPL:v14];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

const mach_header_64 *sub_100008414(uint64_t a1)
{
  if (a1 != 2)
  {
    return &_mh_execute_header;
  }

  sub_1000084E0();
  sub_100034964();
  v2 = v3;
  return (LODWORD(v2) ^ 0x80000000);
}

unint64_t sub_1000084E0()
{
  result = qword_1000479E0;
  if (!qword_1000479E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000479E0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AegirPosterEnvironment(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AegirPosterEnvironment(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AegirPosterEnvironment(uint64_t result, int a2, int a3)
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

uint64_t sub_1000085A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100034314() & 1) == 0)
  {
    return 0;
  }

  sub_10000A83C(0, &qword_100048390, NSObject_ptr);
  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return sub_100034CF4() & 1;
}

uint64_t sub_100008654()
{
  sub_100034DB4(65);
  v1._object = 0x80000001000373B0;
  v1._countAndFlagsBits = 0xD000000000000013;
  sub_100034A14(v1);
  sub_100034BC4();
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v2._object = 0x80000001000373D0;
  sub_100034A14(v2);
  sub_100034BC4();
  v3._countAndFlagsBits = 0x746E6569726F202CLL;
  v3._object = 0xEE003D6E6F697461;
  sub_100034A14(v3);
  v4._countAndFlagsBits = sub_100034CD4();
  sub_100034A14(v4);

  return 0;
}

uint64_t sub_10000877C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  return sub_100008654();
}

double sub_1000087A0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.05;
  if (!v1)
  {
    v2 = -0.15;
  }

  LODWORD(v3) = 0;
  *(&v3 + 1) = v2;
  dword_100046BB8 = 1091792046;
  result = -0.125;
  qword_100046BC0 = v3;
  unk_100046BC8 = 0xBFC0000000000000;
  dword_100046BD0 = 1065353216;
  return result;
}

void sub_100008844()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.1;
  if (!v1)
  {
    v2 = -0.1;
  }

  LODWORD(v3) = 0;
  *(&v3 + 1) = v2;
  dword_100046BD8 = 1085818841;
  qword_100046BE0 = v3;
  qword_100046BE8 = 0;
  dword_100046BF0 = 1065353216;
}

void sub_1000088FC(uint64_t a1, _DWORD *a2, void *a3, void *a4, _DWORD *a5)
{
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = 0.15;
  if (!v10)
  {
    v11 = -0.05;
  }

  LODWORD(v12) = 0;
  *(&v12 + 1) = v11;
  *a2 = 1085818841;
  *a3 = v12;
  *a4 = 0;
  *a5 = 1065353216;
}

double sub_1000089B4()
{
  dword_100046C18 = 1089441946;
  *&result = 3187671040;
  qword_100046C20 = 3187671040;
  qword_100046C28 = 0;
  dword_100046C30 = 1065353216;
  return result;
}

double sub_1000089E4()
{
  dword_100046C38 = 1092395897;
  *&result = 3156465418;
  qword_100046C40 = 3156465418;
  unk_100046C48 = 0xBF80000000000000;
  dword_100046C50 = 1065353216;
  return result;
}

double sub_100008A18()
{
  dword_100046C58 = 1089441946;
  *&result = 3186328863;
  qword_100046C60 = 3186328863;
  qword_100046C68 = 0;
  dword_100046C70 = 1065353216;
  return result;
}

double sub_100008A48()
{
  dword_100046C78 = 1089441946;
  *&result = 3187671040;
  qword_100046C80 = 3187671040;
  qword_100046C88 = 0;
  dword_100046C90 = 1065353216;
  return result;
}

float sub_100008A78()
{
  if (qword_1000469C0 != -1)
  {
    swift_once();
  }

  v0 = dword_100046B98;
  v1 = qword_100046BA0;
  v2 = qword_100046BA8;
  v3 = dword_100046BB0;
  if (qword_1000469E0 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C18;
  dword_100046C98 = v0;
  qword_100046CA0 = v1;
  unk_100046CA8 = v2;
  dword_100046CB0 = v3;
  dword_100046CB8 = dword_100046C18;
  qword_100046CC0 = qword_100046C20;
  unk_100046CC8 = qword_100046C28;
  dword_100046CD0 = dword_100046C30;
  return result;
}

float sub_100008B44()
{
  if (qword_1000469C8 != -1)
  {
    swift_once();
  }

  v0 = dword_100046BB8;
  v1 = qword_100046BC0;
  v2 = unk_100046BC8;
  v3 = dword_100046BD0;
  if (qword_1000469E8 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C38;
  dword_100046CD8 = v0;
  qword_100046CE0 = v1;
  unk_100046CE8 = v2;
  dword_100046CF0 = v3;
  dword_100046CF8 = dword_100046C38;
  qword_100046D00 = qword_100046C40;
  unk_100046D08 = unk_100046C48;
  dword_100046D10 = dword_100046C50;
  return result;
}

float sub_100008C10()
{
  if (qword_1000469D0 != -1)
  {
    swift_once();
  }

  v0 = dword_100046BD8;
  v1 = qword_100046BE0;
  v2 = qword_100046BE8;
  v3 = dword_100046BF0;
  if (qword_1000469F0 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C58;
  dword_100046D18 = v0;
  qword_100046D20 = v1;
  unk_100046D28 = v2;
  dword_100046D30 = v3;
  dword_100046D38 = dword_100046C58;
  qword_100046D40 = qword_100046C60;
  unk_100046D48 = qword_100046C68;
  dword_100046D50 = dword_100046C70;
  return result;
}

float sub_100008CDC()
{
  if (qword_1000469D8 != -1)
  {
    swift_once();
  }

  v0 = dword_100046BF8;
  v1 = qword_100046C00;
  v2 = qword_100046C08;
  v3 = dword_100046C10;
  if (qword_1000469F8 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C78;
  dword_100046D58 = v0;
  qword_100046D60 = v1;
  unk_100046D68 = v2;
  dword_100046D70 = v3;
  dword_100046D78 = dword_100046C78;
  qword_100046D80 = qword_100046C80;
  unk_100046D88 = qword_100046C88;
  dword_100046D90 = dword_100046C90;
  return result;
}

double sub_100008DA8()
{
  dword_100046D98 = 1079845637;
  result = 0.5;
  qword_100046DA0 = 0x3FE0000000000000;
  unk_100046DA8 = 0x3FE0000000000000;
  dword_100046DB0 = 1065353216;
  return result;
}

double sub_100008DD4()
{
  dword_100046DB8 = 1087026543;
  result = 0.00273437425;
  qword_100046DC0 = 0x3F66666600000000;
  qword_100046DC8 = 0;
  dword_100046DD0 = 1065353216;
  return result;
}

double sub_100008E04()
{
  dword_100046DD8 = 1079845637;
  *&result = 3217450598;
  qword_100046DE0 = 3217450598;
  unk_100046DE8 = 0x4010000000000000;
  dword_100046DF0 = 1065353216;
  return result;
}

double sub_100008E38()
{
  dword_100046DF8 = 1087026543;
  *&result = 3208642560;
  qword_100046E00 = 3208642560;
  qword_100046E08 = 0;
  dword_100046E10 = 1065353216;
  return result;
}

float sub_100008E68()
{
  if (qword_100046A20 != -1)
  {
    swift_once();
  }

  v0 = dword_100046D98;
  v1 = qword_100046DA0;
  v2 = unk_100046DA8;
  v3 = dword_100046DB0;
  if (qword_100046A30 != -1)
  {
    swift_once();
  }

  result = *&dword_100046DD8;
  dword_100046E18 = v0;
  qword_100046E20 = v1;
  qword_100046E28 = v2;
  dword_100046E30 = v3;
  dword_100046E38 = dword_100046DD8;
  qword_100046E40 = qword_100046DE0;
  qword_100046E48 = unk_100046DE8;
  dword_100046E50 = dword_100046DF0;
  return result;
}

float sub_100008F34()
{
  if (qword_100046A28 != -1)
  {
    swift_once();
  }

  v0 = dword_100046DB8;
  v1 = qword_100046DC0;
  v2 = qword_100046DC8;
  v3 = dword_100046DD0;
  if (qword_100046A38 != -1)
  {
    swift_once();
  }

  result = *&dword_100046DF8;
  dword_100046E58 = v0;
  qword_100046E60 = v1;
  qword_100046E68 = v2;
  dword_100046E70 = v3;
  dword_100046E78 = dword_100046DF8;
  qword_100046E80 = qword_100046E00;
  qword_100046E88 = qword_100046E08;
  dword_100046E90 = dword_100046E10;
  return result;
}

double sub_100009000()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.9;
  if (v1)
  {
    v2 = 1.25;
  }

  __asm { FMOV            V1.2S, #-1.0 }

  *(&_D1 + 1) = v2;
  dword_100046E98 = 1075860221;
  result = 0.00781250558;
  qword_100046EA0 = _D1;
  unk_100046EA8 = 0x3F800000BFB9999ALL;
  dword_100046EB0 = 1065353216;
  return result;
}

double sub_10000909C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v3 = 0.7;
  if (!v1)
  {
    v3 = 0.35;
  }

  v2.i32[0] = -1085485875;
  LODWORD(v4) = vdup_lane_s32(v2, 0).u32[0];
  *(&v4 + 1) = v3;
  dword_100046EB8 = 1079362555;
  result = 0.0000256347812;
  qword_100046EC0 = v4;
  unk_100046EC8 = 0x3EFAE148BF4CCCCDLL;
  dword_100046ED0 = 1065353216;
  return result;
}

double sub_10000914C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v3 = 0.7;
  if (!v1)
  {
    v3 = 0.35;
  }

  v2.i32[0] = 1061997773;
  LODWORD(v4) = vdup_lane_s32(v2, 0).u32[0];
  *(&v4 + 1) = v3;
  dword_100046ED8 = 1079362555;
  result = 0.0000256347739;
  qword_100046EE0 = v4;
  unk_100046EE8 = 0x3EFAE1483F4CCCCDLL;
  dword_100046EF0 = 1065353216;
  return result;
}

double sub_1000091FC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.925;
  if (!v1)
  {
    v2 = 0.575;
  }

  LODWORD(v3) = 0;
  *(&v3 + 1) = v2;
  dword_100046EF8 = 1078637935;
  result = 0.000170898391;
  qword_100046F00 = v3;
  unk_100046F08 = 0x3F26666600000000;
  dword_100046F10 = 1065353216;
  return result;
}

double sub_1000092A0()
{
  dword_100046F18 = 1083161897;
  *&result = 3206662849;
  qword_100046F20 = 3206662849;
  unk_100046F28 = 0x3F86666600000000;
  dword_100046F30 = 1065353216;
  return result;
}

double sub_1000092D4()
{
  dword_100046F38 = 1083161897;
  *&result = 3206662849;
  qword_100046F40 = 3206662849;
  unk_100046F48 = 0x3F26666600000000;
  dword_100046F50 = 1065353216;
  return result;
}

float sub_100009308()
{
  if (qword_100046A50 != -1)
  {
    swift_once();
  }

  v0 = dword_100046E98;
  v1 = qword_100046EA0;
  v2 = unk_100046EA8;
  v3 = dword_100046EB0;
  if (qword_100046A70 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F18;
  dword_100046F58 = v0;
  qword_100046F60 = v1;
  unk_100046F68 = v2;
  dword_100046F70 = v3;
  dword_100046F78 = dword_100046F18;
  qword_100046F80 = qword_100046F20;
  unk_100046F88 = unk_100046F28;
  dword_100046F90 = dword_100046F30;
  return result;
}

float sub_1000093D4()
{
  if (qword_100046A60 != -1)
  {
    swift_once();
  }

  v0 = dword_100046ED8;
  v1 = qword_100046EE0;
  v2 = unk_100046EE8;
  v3 = dword_100046EF0;
  if (qword_100046A78 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F38;
  dword_100046F98 = v0;
  qword_100046FA0 = v1;
  unk_100046FA8 = v2;
  dword_100046FB0 = v3;
  dword_100046FB8 = dword_100046F38;
  qword_100046FC0 = qword_100046F40;
  unk_100046FC8 = unk_100046F48;
  dword_100046FD0 = dword_100046F50;
  return result;
}

float sub_1000094A0()
{
  if (qword_100046A58 != -1)
  {
    swift_once();
  }

  v0 = dword_100046EB8;
  v1 = qword_100046EC0;
  v2 = unk_100046EC8;
  v3 = dword_100046ED0;
  if (qword_100046A78 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F38;
  dword_100046FD8 = v0;
  qword_100046FE0 = v1;
  unk_100046FE8 = v2;
  dword_100046FF0 = v3;
  dword_100046FF8 = dword_100046F38;
  qword_100047000 = qword_100046F40;
  unk_100047008 = unk_100046F48;
  dword_100047010 = dword_100046F50;
  return result;
}

float sub_10000956C()
{
  if (qword_100046A68 != -1)
  {
    swift_once();
  }

  v0 = dword_100046EF8;
  v1 = qword_100046F00;
  v2 = unk_100046F08;
  v3 = dword_100046F10;
  if (qword_100046A78 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F38;
  dword_100047018 = v0;
  qword_100047020 = v1;
  unk_100047028 = v2;
  dword_100047030 = v3;
  dword_100047038 = dword_100046F38;
  qword_100047040 = qword_100046F40;
  unk_100047048 = unk_100046F48;
  dword_100047050 = dword_100046F50;
  return result;
}

uint64_t sub_100009650(void *a1, uint64_t a2, SEL *a3)
{
  v5 = [a1 *a3];
  [v5 bounds];

  [objc_msgSend(a1 "environment")];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  CGRectGetMinY(v23);
  [objc_msgSend(a1 "environment")];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  swift_unknownObjectRelease();
  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  CGRectGetMinY(v24);
  return a2;
}

BOOL sub_1000097C8(char a1, uint64_t a2)
{
  if (qword_100046AD0 != -1)
  {
    v9 = a2;
    swift_once();
    a2 = v9;
  }

  if (static DeviceUtilities.forceDisableForeground)
  {
    return 0;
  }

  v4 = a2;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    if ((a1 & 1) == 0)
    {
      v7 = sub_100034EC4();

      if ((v7 & 1) == 0)
      {
        return (v4 - 3) < 2;
      }

      return 1;
    }

LABEL_10:

    return 1;
  }

  if (a1)
  {
    goto LABEL_10;
  }

  v8 = sub_100034EC4();

  return v8 & 1;
}

void sub_100009914(char a1, uint64_t a2)
{
  if ((a2 - 3) > 1)
  {
    if (a1)
    {
      v2 = sub_100034EC4();

      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v3 = [objc_opt_self() currentDevice];
    [v3 userInterfaceIdiom];

LABEL_10:
    v4 = [objc_opt_self() currentDevice];
    [v4 userInterfaceIdiom];

    return;
  }

  if (a1)
  {
    sub_100034EC4();

    sub_100034EC4();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

float sub_100009BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000343C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_1000342F4().super.isa;
  sub_1000343B4();
  v10 = sub_1000343A4().super.isa;
  (*(v5 + 8))(v8, v4);
  [*(a1 + *(type metadata accessor for Geotime() + 20)) coordinate];
  v11 = NUNIMoonPhaseFor();

  if (v11 > 8 || ((1 << v11) & 0x23) != 0)
  {
    if (qword_100046A98 != -1)
    {
      swift_once();
    }

    v12 = &dword_100047038;
    v13 = &dword_100047050;
    v14 = &unk_100047048;
    v15 = &qword_100047040;
    v16 = (a2 - 3) >= 2;
    v17 = &dword_100047018;
  }

  else if (((1 << v11) & 0x4C) != 0)
  {
    if (qword_100046A88 != -1)
    {
      swift_once();
    }

    v12 = &dword_100046FB8;
    v13 = &dword_100046FD0;
    v14 = &unk_100046FC8;
    v15 = &qword_100046FC0;
    v16 = (a2 - 3) >= 2;
    v17 = &dword_100046F98;
  }

  else
  {
    if (qword_100046A90 != -1)
    {
      swift_once();
    }

    v12 = &dword_100046FF8;
    v13 = &dword_100047010;
    v14 = &unk_100047008;
    v15 = &qword_100047000;
    v16 = (a2 - 3) >= 2;
    v17 = &dword_100046FD8;
  }

  v18 = v17 + 6;
  v19 = v17 + 4;
  if (v16)
  {
    v20 = (v17 + 2);
  }

  else
  {
    v17 = v12;
    v20 = v15;
  }

  if (v16)
  {
    v14 = v19;
  }

  if (v16)
  {
    v13 = v18;
  }

  v21 = *v13;
  v22 = *v14;
  v23 = *v20;
  return *v17;
}

uint64_t type metadata accessor for Geotime()
{
  result = qword_1000470B0;
  if (!qword_1000470B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009EC0(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v56 = a1;
  v57 = a6;
  v9 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v56 - v11;
  v13 = sub_100034354();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Geotime();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    a4(v20);
    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v17, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_100034334();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_10000A548(v12);
    }
  }

  if (a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  (*(v14 + 32))(v22, v17, v13);
  *&v22[*(v18 + 20)] = v23;
  if ((a2 & 1) == 0)
  {
    v33 = a3;

    if (v56 != 2)
    {
      if (v56 != 3)
      {
        goto LABEL_12;
      }

LABEL_17:
      v26 = v57;
      if (qword_100046A48 != -1)
      {
        v54 = v57;
        swift_once();
        v26 = v54;
      }

      v27 = &dword_100046E78;
      v28 = &dword_100046E90;
      v29 = &qword_100046E88;
      v30 = &qword_100046E80;
      v31 = (v26 - 3) >= 2;
      v32 = &dword_100046E58;
      goto LABEL_20;
    }

    goto LABEL_39;
  }

  v24 = sub_100034EC4();
  v25 = a3;

  if ((v24 & 1) == 0 || v56 == 2)
  {
    if (v56 > 2)
    {
      if ((v56 - 4) < 6)
      {
        if (qword_100046A18 != -1)
        {
          swift_once();
        }

        v42 = v57;
        if ((v57 - 3) < 2)
        {
          v43 = &dword_100046D78;
LABEL_43:
          v44 = *v43;
          v45 = *(v43 + 1);
          v46 = *(v43 + 2);
          v47 = v43[6];
LABEL_47:
          sub_100009914(a2 & 1, v42);
          return sub_10000A5B0(v22);
        }

        v48 = &dword_100046D58;
        goto LABEL_46;
      }

      if (v56 == 3)
      {
        if (qword_100046A08 != -1)
        {
          swift_once();
        }

        v42 = v57;
        if ((v57 - 3) < 2)
        {
          v43 = &dword_100046CF8;
          goto LABEL_43;
        }

        v48 = &dword_100046CD8;
        goto LABEL_46;
      }

LABEL_58:
      if (qword_100046A00 != -1)
      {
        swift_once();
      }

      v42 = v57;
      if ((v57 - 3) < 2)
      {
        v43 = &dword_100046CB8;
        goto LABEL_43;
      }

      v48 = &dword_100046C98;
      goto LABEL_46;
    }

    if (!v56)
    {
      if (qword_100046A80 != -1)
      {
        swift_once();
      }

      v42 = v57;
      if ((v57 - 3) < 2)
      {
        v43 = &dword_100046F78;
        goto LABEL_43;
      }

      v48 = &dword_100046F58;
      goto LABEL_46;
    }

    if (v56 == 1)
    {
      v53 = v57;
      sub_100009BF0(v22, v57);
      v42 = v53;
      goto LABEL_47;
    }

    if (v56 != 2)
    {
      goto LABEL_58;
    }

LABEL_39:
    if (qword_100046A10 != -1)
    {
      swift_once();
    }

    v42 = v57;
    if ((v57 - 3) < 2)
    {
      v43 = &dword_100046D38;
      goto LABEL_43;
    }

    v48 = &dword_100046D18;
LABEL_46:
    v49 = v48[6];
    v50 = *(v48 + 1);
    v51 = *(v48 + 2);
    v52 = *v48;
    goto LABEL_47;
  }

  if (v56 == 3)
  {
    goto LABEL_17;
  }

LABEL_12:
  v26 = v57;
  if (qword_100046A40 != -1)
  {
    v55 = v57;
    swift_once();
    v26 = v55;
  }

  v27 = &dword_100046E38;
  v28 = &dword_100046E50;
  v29 = &qword_100046E48;
  v30 = &qword_100046E40;
  v31 = (v26 - 3) >= 2;
  v32 = &dword_100046E18;
LABEL_20:
  v34 = v32 + 6;
  v35 = (v32 + 4);
  if (v31)
  {
    v36 = (v32 + 2);
  }

  else
  {
    v32 = v27;
    v36 = v30;
  }

  if (v31)
  {
    v29 = v35;
  }

  if (v31)
  {
    v28 = v34;
  }

  v37 = *v28;
  v38 = *v29;
  v39 = *v36;
  v40 = *v32;
  sub_100009914(a2 & 1, v26);
  return sub_10000A5B0(v22);
}

uint64_t sub_10000A548(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A5B0(uint64_t a1)
{
  v2 = type metadata accessor for Geotime();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100034354();
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

uint64_t sub_10000A6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100034354();
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

uint64_t sub_10000A7A8()
{
  result = sub_100034354();
  if (v1 <= 0x3F)
  {
    result = sub_10000A83C(319, &qword_1000470C0, CLLocation_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A83C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

float sub_10000A8E8()
{
  v1 = v0;
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v82 - v4;
  v6 = sub_100034354();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Geotime();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v16 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

  v17 = sub_100034714();

  v18 = *(v1 + 16);
  v92 = sub_100009638(v18, v17);

  v19 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  if (IsReduceMotionEnabled)
  {
    v86 = v11;
    v87 = v10;
    v84 = v7;
    v88 = v6;
    v90 = v14;
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v24 = v19[4];
    v25 = v19[5];
    if (v22 == 1)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v82 = v5;
      v83 = v26;
      LODWORD(v91) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v27 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v28 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v30 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v29 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v31 = v23;
      v32 = v24;
      v33 = v20;
      v34 = v28;
      v85 = v27;
      v35 = v27;
      v36 = v28;
      v89 = v29;
      sub_1000053EC(v30);
      v20 = v33;
      v24 = v32;
      v23 = v31;
      v5 = v82;
      if (v30)
      {
LABEL_4:
        sub_10001BC90(v20, v21, v22, v23, v24);
        v30();
        v37 = v84;
        v38 = v88;
        (*(v84 + 56))(v5, 0, 1, v88);
        v39 = v87;
        (*(v37 + 32))(v87, v5, v38);
        goto LABEL_10;
      }
    }

    else
    {
      v83 = *v19;
      LODWORD(v91) = v21;
      v85 = v22;
      v36 = v23;
      v30 = v24;
      v89 = v25;
      if (v24)
      {
        goto LABEL_4;
      }
    }

    v37 = v84;
    v51 = *(v84 + 56);
    v52 = v20;
    v82 = v36;
    v53 = v88;
    v51(v5, 1, 1, v88);
    v54 = v23;
    v38 = v53;
    v36 = v82;
    sub_10001BC90(v52, v21, v22, v54, v24);
    v39 = v87;
    sub_100034334();
    if ((*(v37 + 48))(v5, 1, v38) != 1)
    {
      sub_100007DDC(v5, &unk_100048480, &qword_100036730);
    }

LABEL_10:
    v55 = v36;
    v56 = v90;
    v57 = v85;
    if (v85)
    {
      v58 = v85;
    }

    else
    {
      v58 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    (*(v37 + 32))(v56, v39, v38);
    *&v56[*(v86 + 20)] = v58;
    if (v83 <= 2)
    {
      if (v83)
      {
        if (v83 == 1)
        {
          if (v91)
          {
            v63 = v57;
            v70 = v92;
            sub_100009BF0(v56, v92);
            v64 = v70;
LABEL_51:
            sub_100009914(v91 & 1, v64);
            v60 = v80;
            sub_10000A5B0(v56);

            v61 = v30;
            goto LABEL_52;
          }
        }

        else if (v83 == 2)
        {
          v66 = qword_100046A10;
          v63 = v57;
          if (v66 != -1)
          {
            swift_once();
          }

          v64 = v92;
          if ((v92 - 3) < 2)
          {
            v65 = &dword_100046D38;
            goto LABEL_45;
          }

          v67 = &dword_100046D18;
LABEL_50:
          v76 = v67[6];
          v77 = *(v67 + 1);
          v78 = *(v67 + 2);
          v79 = *v67;
          goto LABEL_51;
        }
      }

      else if (v91)
      {
        v69 = qword_100046A80;
        v63 = v57;
        if (v69 != -1)
        {
          swift_once();
        }

        v64 = v92;
        if ((v92 - 3) < 2)
        {
          v65 = &dword_100046F78;
          goto LABEL_45;
        }

        v67 = &dword_100046F58;
        goto LABEL_50;
      }
    }

    else
    {
      if ((v83 - 4) < 6)
      {
        v62 = qword_100046A18;
        v63 = v57;
        if (v62 != -1)
        {
          swift_once();
        }

        v64 = v92;
        if ((v92 - 3) < 2)
        {
          v65 = &dword_100046D78;
LABEL_45:
          v72 = *v65;
          v73 = *(v65 + 1);
          v74 = *(v65 + 2);
          v75 = v65[6];
          goto LABEL_51;
        }

        v67 = &dword_100046D58;
        goto LABEL_50;
      }

      if (v83 == 3)
      {
        v68 = qword_100046A08;
        v63 = v57;
        if (v68 != -1)
        {
          swift_once();
        }

        v64 = v92;
        if ((v92 - 3) < 2)
        {
          v65 = &dword_100046CF8;
          goto LABEL_45;
        }

        v67 = &dword_100046CD8;
        goto LABEL_50;
      }
    }

    v71 = qword_100046A00;
    v63 = v57;
    if (v71 != -1)
    {
      swift_once();
    }

    v64 = v92;
    if ((v92 - 3) < 2)
    {
      v65 = &dword_100046CB8;
      goto LABEL_45;
    }

    v67 = &dword_100046C98;
    goto LABEL_50;
  }

  swift_beginAccess();
  v40 = *v19;
  v41 = v19[1];
  v42 = v19[2];
  v43 = v19[3];
  v44 = v19[4];
  v45 = v19[5];
  if (v42 == 1)
  {
    v46 = v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
    v89 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v47 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v48 = *(v46 + 16);
    v49 = *(v46 + 32);
    v50 = *(v46 + 40);
    v91 = *(v46 + 24);
    v90 = v48;
    sub_1000053EC(v49);
  }

  else
  {
    v90 = v19[2];
    v91 = v43;
    v89 = v40;
    v47 = v41;
    v48 = v42;
    v49 = v44;
    v50 = v45;
  }

  sub_10001BC90(v40, v41, v42, v43, v44);
  sub_100009EC0(v89, v47 & 1, v48, v49, v50, v92);
  v60 = v59;

  v61 = v49;
LABEL_52:
  sub_1000054D4(v61);
  return v60;
}

float sub_10000B0AC()
{
  v1 = v0;
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v71 - v4;
  v6 = sub_100034354();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  __chkstk_darwin(v6);
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Geotime();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000345A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v71 - v19;
  v21 = *(v0 + 16);
  sub_100034BE4();

  LOBYTE(v21) = sub_100034584();
  v22 = *(v14 + 8);
  v22(v20, v13);
  if ((v21 & 1) != 0 || (v23 = *(v1 + 16), sub_100034BE4(), v23, sub_100034594(), v25 = v24, v22(v18, v13), v25 < 0.01))
  {
    v73 = v5;
    v74 = v9;
    v75 = v12;
    v26 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

    v27 = sub_100034714();

    v28 = *(v1 + 16);
    v77 = sub_100009638(v28, v27);

    v29 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    v33 = v29[2];
    v32 = v29[3];
    v34 = v29[4];
    v35 = v29[5];
    if (v33 == 1)
    {
      v71 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v78 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v36 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v37 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v38 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v76 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v39 = v76;
      v72 = v36;
      v40 = v36;
      sub_1000053EC(v37);
      v41 = v81;
      if (v37)
      {
LABEL_5:
        sub_10001BC90(v30, v31, v33, v32, v34);
        v42 = v73;
        v37();
        v43 = v80;
        (*(v80 + 56))(v42, 0, 1, v41);
        v44 = v79;
        (*(v43 + 32))(v79, v42, v41);
        goto LABEL_9;
      }
    }

    else
    {
      v71 = v30;
      v72 = v33;
      v78 = v31;
      v76 = v32;
      v37 = v34;
      v41 = v81;
      if (v34)
      {
        goto LABEL_5;
      }
    }

    v81 = v35;
    v43 = v80;
    v45 = v73;
    (*(v80 + 56))(v73, 1, 1, v41);
    sub_10001BC90(v30, v31, v33, v32, v34);
    v44 = v79;
    sub_100034334();
    if ((*(v43 + 48))(v45, 1, v41) != 1)
    {
      sub_100007DDC(v45, &unk_100048480, &qword_100036730);
    }

LABEL_9:
    v46 = v75;
    v47 = v72;
    if (v72)
    {
      v48 = v72;
    }

    else
    {
      v48 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    (*(v43 + 32))(v46, v44, v41);
    *(v46 + *(v74 + 20)) = v48;
    if (v71 <= 2)
    {
      if (v71)
      {
        if (v71 == 1)
        {
          if (v78)
          {
            v50 = v47;
            v59 = v77;
            sub_100009BF0(v46, v77);
            v51 = v59;
            v52 = v76;
LABEL_49:
            sub_100009914(v78 & 1, v51);
            v55 = v69;
            sub_10000A5B0(v46);

            sub_1000054D4(v37);
            return v55;
          }
        }

        else if (v71 == 2)
        {
          v54 = qword_100046A10;
          v50 = v47;
          if (v54 != -1)
          {
            swift_once();
          }

          v52 = v76;
          v51 = v77;
          if ((v77 - 3) < 2)
          {
            v53 = &dword_100046D38;
            goto LABEL_43;
          }

          v56 = &dword_100046D18;
LABEL_48:
          v65 = v56[6];
          v66 = *(v56 + 1);
          v67 = *(v56 + 2);
          v68 = *v56;
          goto LABEL_49;
        }
      }

      else if (v78)
      {
        v58 = qword_100046A80;
        v50 = v47;
        if (v58 != -1)
        {
          swift_once();
        }

        v52 = v76;
        v51 = v77;
        if ((v77 - 3) < 2)
        {
          v53 = &dword_100046F78;
          goto LABEL_43;
        }

        v56 = &dword_100046F58;
        goto LABEL_48;
      }
    }

    else
    {
      if ((v71 - 4) < 6)
      {
        v49 = qword_100046A18;
        v50 = v47;
        if (v49 != -1)
        {
          swift_once();
        }

        v52 = v76;
        v51 = v77;
        if ((v77 - 3) < 2)
        {
          v53 = &dword_100046D78;
LABEL_43:
          v61 = *v53;
          v62 = *(v53 + 1);
          v63 = *(v53 + 2);
          v64 = v53[6];
          goto LABEL_49;
        }

        v56 = &dword_100046D58;
        goto LABEL_48;
      }

      if (v71 == 3)
      {
        v57 = qword_100046A08;
        v50 = v47;
        if (v57 != -1)
        {
          swift_once();
        }

        v52 = v76;
        v51 = v77;
        if ((v77 - 3) < 2)
        {
          v53 = &dword_100046CF8;
          goto LABEL_43;
        }

        v56 = &dword_100046CD8;
        goto LABEL_48;
      }
    }

    v60 = qword_100046A00;
    v50 = v47;
    if (v60 != -1)
    {
      swift_once();
    }

    v52 = v76;
    v51 = v77;
    if ((v77 - 3) < 2)
    {
      v53 = &dword_100046CB8;
      goto LABEL_43;
    }

    v56 = &dword_100046C98;
    goto LABEL_48;
  }

  return sub_10000A8E8();
}

uint64_t sub_10000B870()
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = (v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
    swift_beginAccess();
    v3 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v4 = v1[3];
    v6 = *v1;
    v7 = v5;
    v8 = v1[4];
    v9 = v4;
    v18 = v8;
    if (v5 == 1)
    {
      v10 = v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
      v6 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v7 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v9 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v12 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v11 = *(v10 + 40);
      v17 = v2;
      v13 = v9;
      v14 = v7;
      v18 = v12;
      sub_1000053EC(v12);
      v2 = v17;
    }

    if (v6 == 2)
    {
      sub_10001BC90(v3, v2, v5, v4, v8);
      sub_1000084E0();
      sub_100034964();

      sub_1000054D4(v18);
      *&v15 = v19;
      return v15;
    }

    sub_10001BC90(v3, v2, v5, v4, v8);

    sub_1000054D4(v18);
  }

  return 0;
}

BOOL sub_10000B9F0()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  if (v6)
  {
    v7 = (*(v6 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus) - 3) < 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  sub_100034824();
  v9 = sub_100034854();
  v10 = sub_100034C44();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = v7;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v8 != 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "canShowLocation — isAuthorized: %{BOOL}d; haveLocation: %{BOOL}d", v11, 0xEu);
  }

  (*(v2 + 8))(v5, v1);
  return v8 && v7;
}

void sub_10000BB98()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = sub_100034C14();

  if ((v8 & 1) == 0)
  {
    sub_100034834();
    v9 = sub_100034854();
    v10 = sub_100034C64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Setup location manager", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v12 = objc_opt_self();
    v13 = [v12 defaultCenter];
    if (qword_100046AB8 != -1)
    {
      swift_once();
    }

    v14 = qword_100049418;
    v15 = swift_allocObject();
    swift_weakInit();
    v30 = sub_10001CD5C;
    v31 = v15;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10001804C;
    v29 = &unk_100041B98;
    v16 = _Block_copy(&aBlock);

    v17 = [v13 addObserverForName:v14 object:0 queue:0 usingBlock:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();

    v18 = [v12 defaultCenter];
    if (qword_100046AC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100049420;
    v20 = swift_allocObject();
    swift_weakInit();
    v30 = sub_10001CD64;
    v31 = v20;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10001804C;
    v29 = &unk_100041BC0;
    v21 = _Block_copy(&aBlock);

    v22 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();

    v23 = objc_allocWithZone(type metadata accessor for AegirLocationManager());
    sub_1000215EC(0);
    v24 = *(v1 + 32);
    *(v1 + 32) = v25;
  }
}

id *sub_10000BF6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink;
  v3 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink);

  sub_1000344E4();

  sub_10000C25C();
  v4 = [v1[3] vistaView];
  [v4 stopAnimation];

  v5 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotManager;
  v6 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotManager);

  sub_1000345F4();

  v7 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  v8 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);

  sub_1000346D4();

  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_100034984();
  [v9 postNotificationName:v10 object:0];

  v11 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  v12 = sub_1000345A4();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
  v14 = sub_1000347F4();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = *(v1 + v7);

  v16 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 40);
  sub_10001CAF4(*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 8), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 16), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 24), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 32));
  v17 = *(v1 + v2);

  v18 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask);

  v19 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_lastPulseDate;
  v20 = sub_100034354();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
  v22 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v23 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);

  sub_1000054D4(v22);
  v24 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

  v25 = *(v1 + v5);

  return v1;
}

void sub_10000C25C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  if (v7)
  {
    v8 = v7;
    sub_100034834();
    v9 = sub_100034854();
    v10 = sub_100034C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "teardown location manager", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v1];

    v13 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
    v14 = qword_100047100;
    v15 = off_100047108;

    v17._countAndFlagsBits = v14;
    v17._object = v15;
    sub_100034684(v17);

    sub_100022740();
  }
}

uint64_t sub_10000C434()
{
  sub_10000BF6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AegirRenderingCoordinator()
{
  result = qword_100047260;
  if (!qword_100047260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C4E0()
{
  result = sub_1000345A4();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1000347F4();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_100034354();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10000C688(void *a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v59 = &v55 - v11;
  __chkstk_darwin(v10);
  v13 = &v55 - v12;
  v14 = *(v2 + 16);
  *(v2 + 16) = a1;
  v15 = a1;

  v58 = v15;
  [objc_msgSend(v15 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v16 = sub_10001D800();
  v18 = v17;
  v20 = v19;
  swift_unknownObjectRelease();
  if (v20 == 1)
  {
    sub_100034834();
    v21 = sub_100034854();
    v22 = sub_100034C64();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to create configuration from renderer", v23, 2u);
    }

    (*(v5 + 8))(v9, v4);
    return;
  }

  v61 = v16;
  v62 = v18 & 1;
  v63 = v20;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  sub_100034834();
  v24 = v20;
  v25 = sub_100034854();
  v26 = sub_100034C64();
  v56 = v18;
  sub_10001D240(v16, v18, v20);
  v27 = os_log_type_enabled(v25, v26);
  v57 = v16;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v55 = v5;
    v30 = v4;
    v31 = v29;
    v60 = v29;
    *v28 = 136315138;
    v32 = sub_10001D27C(v16);
    v34 = sub_10001AF94(v32, v33, &v60);
    v16 = v57;

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "apply vista: %s", v28, 0xCu);
    sub_1000026BC(v31);

    v35 = *(v55 + 8);
    v36 = v13;
    v37 = v30;
    v35(v36, v30);
  }

  else
  {

    v35 = *(v5 + 8);
    v38 = v13;
    v37 = v4;
    v35(v38, v4);
  }

  v39 = v59;
  if (v16 != *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration))
  {
    goto LABEL_25;
  }

  v40 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
  if (v56)
  {
    v41 = 0x6C6961746544;
  }

  else
  {
    v41 = 1819047238;
  }

  if (v56)
  {
    v42 = 0xE600000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  if (*(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8))
  {
    v43 = 0x6C6961746544;
  }

  else
  {
    v43 = 1819047238;
  }

  if (*(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8))
  {
    v44 = 0xE600000000000000;
  }

  else
  {
    v44 = 0xE400000000000000;
  }

  if (v41 != v43 || v42 != v44)
  {
    v45 = sub_100034EC4();

    if (v45)
    {
      goto LABEL_28;
    }

LABEL_25:
    sub_100034834();
    v46 = sub_100034854();
    v47 = sub_100034C64();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Applying new configuration", v48, 2u);
    }

    v35(v39, v37);
    [*(v2 + 24) disableCloudDataFetch:sub_100034C14() & 1];
    sub_10000CBDC(&v61);
    goto LABEL_28;
  }

LABEL_28:
  v49 = *(v2 + 24);
  v50 = *(v2 + 16);
  v51 = sub_100034C14();

  [v49 disableCloudDataFetch:v51 & 1];
  v52 = *(v2 + 16);
  v53 = sub_100034BD4();

  if (v53)
  {
    sub_10000E8E4();
  }

  else
  {
    sub_10000F9CC();
  }

  v54 = [v49 vistaView];
  [v54 purgeUnused];

  sub_10001D240(v57, v56, v20);
}

id sub_10000CBDC(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v65 = &v59 - v4;
  v5 = sub_100034874();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v9 = *(a1 + 16);
  v68 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v9;
  sub_10001CCAC(&v68, &v67, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v10);
  v13 = sub_100034854();
  v14 = sub_100034C64();
  v62 = v12;

  sub_100007DDC(&v68, &unk_1000481C0, &qword_100036F70);
  v63 = v11;
  v64 = v10;
  sub_1000054D4(v10);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v67 = v16;
    *v15 = 136315138;
    v17 = *a1;
    v18 = sub_100007B44(*a1, *(a1 + 8), v9);
    v20 = sub_10001AF94(v18, v19, &v67);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Applying configuration: %s", v15, 0xCu);
    sub_1000026BC(v16);

    (*(v60 + 8))(v8, v61);
  }

  else
  {

    (*(v60 + 8))(v8, v61);
    v17 = *a1;
  }

  v21 = v66;
  *(v66 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange) = 1;
  v22 = v21 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
  if (*(v21 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration) != v17)
  {
    [*(v21 + 24) setVista:v17];
  }

  v23 = [*(v21 + 24) vistaView];
  [v23 updateLightingPreference:v17 == 2];

  v24 = *(v22 + 16);
  v25 = *(v22 + 24);
  v26 = *(v22 + 32);
  v27 = *(v22 + 40);
  v28 = *(a1 + 16);
  *v22 = *a1;
  *(v22 + 16) = v28;
  *(v22 + 32) = *(a1 + 32);
  v29 = v62;
  sub_10001CCAC(&v68, &v67, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v64);

  sub_1000054D4(v26);
  if (*v22 >= 3uLL)
  {
    v37 = *(v21 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
    v38 = qword_100047120;
    v39 = off_100047128;

    v69._countAndFlagsBits = v38;
    v69._object = v39;
    sub_100034684(v69);

    v40 = *(v21 + 32);
    if (v40)
    {
      v36 = v40;
      sub_100022740();
      goto LABEL_13;
    }
  }

  else
  {
    v30 = *(v21 + 16);
    v31 = sub_100034BD4();

    if ((v31 & 1) == 0)
    {
      v32 = *(v21 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v33 = *(v21 + 16);

      v34 = v33;

      sub_1000346C4();
    }

    v35 = *(v21 + 32);
    if (v35)
    {
      v36 = v35;
      sub_1000224F0();
LABEL_13:
    }
  }

  v41 = *(v21 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);
  v42 = *(v21 + 16);

  v43 = sub_100034714();

  v44 = sub_100009638(v42, v43);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v44;

  v52 = v21 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment;
  *v52 = v46 | (v48 << 32);
  *(v52 + 8) = v50;
  *(v52 + 16) = v51;
  *(v52 + 24) = 0;
  v53 = sub_100034B44();
  v54 = v65;
  (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
  v55 = swift_allocObject();
  swift_weakInit();
  sub_100034B24();

  v56 = sub_100034B14();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = &protocol witness table for MainActor;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;

  sub_10000E0F4(0, 0, v54, &unk_100036BC8, v57);

  return sub_1000136A4();
}

uint64_t sub_10000D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 160) = a5;
  *(v5 + 64) = a4;
  v6 = sub_100034874();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  sub_100034B24();
  *(v5 + 104) = sub_100034B14();
  v10 = sub_100034B04();
  *(v5 + 112) = v10;
  *(v5 + 120) = v9;

  return _swift_task_switch(sub_10000D2A8, v10, v9);
}

uint64_t sub_10000D2A8()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (!Strong)
  {
    v19 = *(v0 + 104);
LABEL_41:

    v72 = *(v0 + 88);
    v71 = *(v0 + 96);

    v73 = *(v0 + 8);

    return v73();
  }

  v3 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  *(v0 + 136) = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  v4 = *(Strong + v3);
  v5 = *(Strong + 16);
  v6 = Strong;

  v7 = v5;

  sub_1000346C4();

  v8 = *(v6 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

  v9 = sub_100034714();
  *(v0 + 144) = v9;

  if (v9 == 1)
  {
    v10 = 1;
    if ((*(v0 + 160) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = v9 == 2;
    if (!*(v0 + 160))
    {
LABEL_4:
      v11 = *(v0 + 104);

      v12 = *(v0 + 128);
      v13 = *(v0 + 96);
      sub_100034834();

      v14 = sub_100034854();
      v15 = sub_100034C64();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 128);
      v78 = v10;
      if (v16)
      {
        v18 = swift_slowAlloc();
        *v18 = 67109376;
        *(v18 + 4) = *(v17 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets);

        *(v18 + 8) = 1024;
        *(v18 + 10) = v10;
        _os_log_impl(&_mh_execute_header, v14, v15, "Renderer hasPortraitWidgets? %{BOOL}d isPortrait? %{BOOL}d", v18, 0xEu);
      }

      else
      {
      }

      v22 = *(v0 + 128);
      v77 = *(*(v0 + 80) + 8);
      v77(*(v0 + 96), *(v0 + 72));
      v23 = (v22 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v24 = *v23;
      v25 = v23[1];
      v27 = v23[2];
      v26 = v23[3];
      v28 = v23[4];
      v29 = v23[5];
      if (v27 == 1)
      {
        v30 = *(v0 + 128) + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
        v75 = *(v30 + 8);
        v31 = *(v30 + 16);
        v32 = *(v30 + 32);
        v33 = *(v30 + 40);
        v74 = v24;
        v34 = v25;
        v35 = v26;
        v76 = *(v30 + 24);
        v36 = v31;
        sub_1000053EC(v32);
        v26 = v35;
        v25 = v34;
        v24 = v74;
      }

      else
      {
        v76 = v23[3];
        v36 = v23[2];
        v75 = v23[1];
        v32 = v23[4];
      }

      v37 = *(v0 + 144);
      v38 = *(v0 + 128);
      v39 = *(v0 + 88);
      sub_10001BC90(v24, v25, v27, v26, v28);
      v40 = sub_1000097C8(v75 & 1, v37);

      sub_1000054D4(v32);
      v41 = *(v38 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) & v78 | !v40;
      sub_100034834();
      v42 = sub_100034854();
      v43 = sub_100034C64();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109120;
        *(v44 + 4) = v41 & 1;
        _os_log_impl(&_mh_execute_header, v42, v43, "foreground should be hidden: %{BOOL}d", v44, 8u);
      }

      v45 = *(v0 + 128);
      v46 = *(v0 + 88);
      v47 = *(v0 + 72);

      v77(v46, v47);
      v48 = [*(v45 + 24) vistaView];
      v49 = [v48 quadViews];

      sub_1000057F4();
      v50 = sub_100034AC4();

      if (v50 >> 62)
      {
        result = sub_100034E44();
        if (result)
        {
LABEL_19:
          if ((v50 & 0xC000000000000001) != 0)
          {
            v51 = sub_100034DC4();
          }

          else
          {
            if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v51 = *(v50 + 32);
          }

          v52 = v51;

          [v52 setHidden:v41 & 1];

          if (v41)
          {
            goto LABEL_40;
          }

          goto LABEL_26;
        }
      }

      else
      {
        result = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_19;
        }
      }

      if (v41)
      {
LABEL_40:
        v68 = *(*(v0 + 128) + *(v0 + 136));
        v69 = qword_100047110;
        v70 = off_100047118;

        v80._countAndFlagsBits = v69;
        v80._object = v70;
        sub_100034684(v80);

        sub_100012108(0);
        goto LABEL_41;
      }

LABEL_26:
      v53 = [*(v45 + 24) vistaView];
      [v53 frame];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v62 = v61 / 3.0;
      v63 = [objc_opt_self() currentDevice];
      v64 = [v63 userInterfaceIdiom];

      if (!v64)
      {
        v55 = 0.0;
        v57 = 0.0;
        goto LABEL_39;
      }

      v65 = *(v0 + 144);
      v66 = v59 / 3.0;
      if (v65 <= 2)
      {
        if (v65 == 1)
        {
          v55 = v66 + -50.0;
          v57 = 100.0;
          v59 = v66 + 100.0;
          goto LABEL_39;
        }

        if (v65 == 2)
        {
          v55 = v66 + -50.0;
          v57 = v62 + v62 + -100.0;
          v59 = v66 + 100.0;
LABEL_39:
          v67 = [*(v45 + 24) vistaView];
          [v67 updatePortalLayerBounds:{v55, v57, v59, v62}];

          goto LABEL_40;
        }

LABEL_35:
        v62 = v61;
        goto LABEL_39;
      }

      if (v65 == 3)
      {
        v55 = v66 + v66 + -120.0;
      }

      else
      {
        if (v65 != 4)
        {
          goto LABEL_35;
        }

        v55 = 120.0;
      }

      v57 = v61 / 3.0;
      v59 = v59 / 3.0;
      goto LABEL_39;
    }
  }

  *(v0 + 161) = v10;
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  v20[1] = sub_10000D9E0;

  return sub_10001C4EC();
}

uint64_t sub_10000D9E0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 162) = a1;

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);

  return _swift_task_switch(sub_10000DB08, v5, v4);
}

uint64_t sub_10000DB08()
{
  v1 = *(v0 + 162);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) = v1;
  v4 = *(v0 + 161);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  sub_100034834();

  v7 = sub_100034854();
  v8 = sub_100034C64();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 128);
  v69 = v4;
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = *(v10 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets);

    *(v11 + 8) = 1024;
    *(v11 + 10) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "Renderer hasPortraitWidgets? %{BOOL}d isPortrait? %{BOOL}d", v11, 0xEu);
  }

  else
  {
  }

  v12 = *(v0 + 128);
  v68 = *(*(v0 + 80) + 8);
  v68(*(v0 + 96), *(v0 + 72));
  v13 = (v12 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  v18 = v13[4];
  v19 = v13[5];
  if (v17 == 1)
  {
    v20 = *(v0 + 128) + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
    v66 = *(v20 + 8);
    v21 = *(v20 + 16);
    v22 = *(v20 + 32);
    v23 = *(v20 + 40);
    v65 = v14;
    v24 = v15;
    v25 = v16;
    v67 = *(v20 + 24);
    v26 = v21;
    sub_1000053EC(v22);
    v16 = v25;
    v15 = v24;
    v14 = v65;
  }

  else
  {
    v67 = v13[3];
    v26 = v13[2];
    v66 = v13[1];
    v22 = v13[4];
  }

  v27 = *(v0 + 144);
  v28 = *(v0 + 128);
  v29 = *(v0 + 88);
  sub_10001BC90(v14, v15, v17, v16, v18);
  v30 = sub_1000097C8(v66 & 1, v27);

  sub_1000054D4(v22);
  v31 = *(v28 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) & v69 | !v30;
  sub_100034834();
  v32 = sub_100034854();
  v33 = sub_100034C64();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = v31 & 1;
    _os_log_impl(&_mh_execute_header, v32, v33, "foreground should be hidden: %{BOOL}d", v34, 8u);
  }

  v35 = *(v0 + 128);
  v36 = *(v0 + 88);
  v37 = *(v0 + 72);

  v68(v36, v37);
  v38 = [*(v35 + 24) vistaView];
  v39 = [v38 quadViews];

  sub_1000057F4();
  v40 = sub_100034AC4();

  if (!(v40 >> 62))
  {
    result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_17:

    if (v31)
    {
      goto LABEL_32;
    }

LABEL_18:
    v44 = [*(v35 + 24) vistaView];
    [v44 frame];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v53 = v52 / 3.0;
    v54 = [objc_opt_self() currentDevice];
    v55 = [v54 userInterfaceIdiom];

    if (!v55)
    {
      v46 = 0.0;
      v48 = 0.0;
      goto LABEL_31;
    }

    v56 = *(v0 + 144);
    v57 = v50 / 3.0;
    if (v56 <= 2)
    {
      if (v56 == 1)
      {
        v46 = v57 + -50.0;
        v48 = 100.0;
        v50 = v57 + 100.0;
        goto LABEL_31;
      }

      if (v56 == 2)
      {
        v46 = v57 + -50.0;
        v48 = v53 + v53 + -100.0;
        v50 = v57 + 100.0;
LABEL_31:
        v58 = [*(v35 + 24) vistaView];
        [v58 updatePortalLayerBounds:{v46, v48, v50, v53}];

        goto LABEL_32;
      }

LABEL_27:
      v53 = v52;
      goto LABEL_31;
    }

    if (v56 == 3)
    {
      v46 = v57 + v57 + -120.0;
    }

    else
    {
      if (v56 != 4)
      {
        goto LABEL_27;
      }

      v46 = 120.0;
    }

    v48 = v52 / 3.0;
    v50 = v50 / 3.0;
    goto LABEL_31;
  }

  result = sub_100034E44();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v42 = sub_100034DC4();
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v42 = *(v40 + 32);
  }

  v43 = v42;

  [v43 setHidden:v31 & 1];

  if ((v31 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_32:
  v59 = *(*(v0 + 128) + *(v0 + 136));
  v60 = qword_100047110;
  v61 = off_100047118;

  v71._countAndFlagsBits = v60;
  v71._object = v61;
  sub_100034684(v71);

  sub_100012108(0);

  v63 = *(v0 + 88);
  v62 = *(v0 + 96);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_10000E0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001CCAC(a3, v27 - v11, &unk_100047860, &unk_100036AD0);
  v13 = sub_100034B44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007DDC(v12, &unk_100047860, &unk_100036AD0);
  }

  else
  {
    sub_100034B34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100034B04();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000349E4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  return _swift_task_switch(sub_10000E418, 0, 0);
}

uint64_t sub_10000E418()
{
  v2 = v0[23];
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000E540;
  v3 = swift_continuation_init();
  v0[17] = sub_1000035B0(&qword_100047880, &qword_100036B38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000E620;
  v0[13] = &unk_100041AF8;
  v0[14] = v3;
  [v2 fetchLockScreenContentCutoutBoundsForOrientation:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000E540()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001D264, 0, 0);
}

uint64_t sub_10000E620(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(*(*sub_1000054E4((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;

  return _swift_continuation_resume();
}

uint64_t sub_10000E694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  return _swift_task_switch(sub_10000E6B8, 0, 0);
}

uint64_t sub_10000E6B8()
{
  v2 = v0[23];
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000E7E0;
  v3 = swift_continuation_init();
  v0[17] = sub_1000035B0(&qword_100047880, &qword_100036B38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000E620;
  v0[13] = &unk_100041AD0;
  v0[14] = v3;
  [v2 fetchMaximalLockScreenContentCutoutBoundsForOrientation:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000E7E0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000E8C0, 0, 0);
}

uint64_t sub_10000E8C0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  *v1 = *(v0 + 144);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10000E8E4()
{
  v1 = v0;
  v2 = sub_1000345A4();
  v173 = *(v2 - 8);
  v174 = v2;
  v3 = *(v173 + 64);
  __chkstk_darwin(v2);
  v172 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_100034874();
  v5 = *(v183 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v183);
  v9 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v176 = &v162 - v11;
  v12 = __chkstk_darwin(v10);
  v168 = &v162 - v13;
  v14 = __chkstk_darwin(v12);
  v171 = &v162 - v15;
  __chkstk_darwin(v14);
  v181 = &v162 - v16;
  v17 = sub_1000035B0(&qword_1000478A8, &qword_100036B50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v162 - v19;
  v21 = sub_1000345B4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v162 - v27;
  v29 = *(v0 + 16);
  sub_100034BF4();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_100007DDC(v20, &qword_1000478A8, &qword_100036B50);
  }

  v177 = v5;
  v164 = v9;
  v180 = v22;
  v31 = *(v22 + 32);
  v182 = v28;
  v31(v28, v20, v21);
  v32 = v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
  v169 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  LODWORD(v167) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
  v33 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  v35 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v34 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
  v36 = *(v1 + 16);
  v165 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
  v178 = v165;
  v170 = v33;
  *&v179 = v35;
  *(&v179 + 1) = v34;
  sub_1000053EC(v35);
  v37 = v36;
  LOBYTE(v34) = sub_100034C14();

  v175 = v21;
  if ((v34 & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
    {
      *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) = 0;
      v38 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v39 = qword_100047130;
      v40 = off_100047138;

      v199._countAndFlagsBits = v39;
      v199._object = v40;
      sub_100034684(v199);

      v41 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink);

      sub_100034514();
    }

    v42 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
    if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) != 2 || *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) != 2)
    {
      v43 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v44 = *v43;
      v45 = v43[1];
      v46 = v43[2];
      v47 = v43[3];
      v48 = v43[4];
      v49 = v43[5];
      *v43 = 0;
      v43[1] = 0;
      v43[2] = 1;
      v43[3] = 0;
      v43[4] = 0;
      v43[5] = 0;
      sub_10001CAF4(v44, v45, v46, v47, v48);
      *(v1 + v42) = 2;
      *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2;
      v50 = *(v1 + 24);
      [v50 setVista:2];
      LODWORD(v194) = sub_10000B0AC();
      *(&v194 + 1) = v51;
      *&v195 = v52;
      DWORD2(v195) = v53;
      [v50 applyStyleDefinition:&v194];
      sub_100012024();
      if ([v50 mode] != 1)
      {
        [v50 applyMode:1];
      }

      v54 = [v50 vistaView];
      [v54 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];

      v21 = v175;
    }
  }

  v55 = *(v1 + 24);
  if ([v55 mode] != 1)
  {
    [v55 applyMode:1];
  }

  v56 = [objc_msgSend(*(v1 + 16) "environment")];
  swift_unknownObjectRelease();
  v57 = *(v1 + 16);
  v166 = v56;
  v58 = sub_100009638(v57, v56);
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v58;

  *&v189 = v169;
  BYTE8(v189) = v167;
  *&v190 = v33;
  *(&v190 + 1) = v165;
  v66 = v179;
  v191 = v179;
  *&v192 = __PAIR64__(v62, v60);
  DWORD2(v192) = v64;
  v193 = v65;
  v198 = v65;
  v196 = v179;
  v197 = v192;
  v194 = v189;
  v195 = v190;
  v170 = v170;
  v169 = v178;
  sub_1000053EC(v66);
  v67 = v182;
  sub_100006128(v182);
  v69 = v68;
  v70 = v181;
  sub_100034824();
  v71 = v180;
  (*(v180 + 16))(v26, v67, v21);

  v72 = v69;
  v73 = sub_100034854();
  v74 = sub_100034C44();
  v178 = v72;

  if (os_log_type_enabled(v73, v74))
  {
    LODWORD(v165) = v74;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *&v185 = v163;
    *v75 = 138413058;
    v77 = *(v1 + 16);
    *(v75 + 4) = v77;
    v162 = v76;
    *v76 = v77;
    *(v75 + 12) = 2080;
    sub_10001CD14(&qword_100046B80, &type metadata accessor for SnapshotType);
    v78 = v77;
    v79 = sub_100034EA4();
    v81 = v80;
    v167 = *(v71 + 8);
    v167(v26, v21);
    v82 = sub_10001AF94(v79, v81, &v185);

    *(v75 + 14) = v82;
    *(v75 + 22) = 2080;
    v83 = *(v1 + 16);
    v84 = [v83 environment];
    v184 = &OBJC_PROTOCOL___PRPosterRenderingEnvironment_Private;
    v85 = swift_dynamicCastObjCProtocolConditional();
    if (v85)
    {
      v86 = [v85 isFloatingViewSnapshot];
      swift_unknownObjectRelease();

      if (v86)
      {
        v87 = 0xE800000000000000;
        v88 = 0x676E6974616F6C66;
LABEL_20:
        v89 = sub_10001AF94(v88, v87, &v185);

        *(v75 + 24) = v89;
        *(v75 + 32) = 2112;
        v90 = v178;
        *(v75 + 34) = v178;
        v162[1] = v90;
        v91 = v90;
        _os_log_impl(&_mh_execute_header, v73, v165, "_doSnapshot(with: %@ for %s (%s) with snapshotKey: %@", v75, 0x2Au);
        sub_1000035B0(&unk_1000478C0, &unk_100036B60);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v92 = v181;
        v181 = *(v177 + 8);
        (v181)(v92, v183);
        v21 = v175;
        goto LABEL_21;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v87 = 0xEA0000000000646ELL;
    v88 = 0x756F72676B636162;
    goto LABEL_20;
  }

  v167 = *(v71 + 8);
  v167(v26, v21);
  v181 = *(v177 + 8);
  (v181)(v70, v183);
LABEL_21:
  if (!sub_1000097C8(*(v32 + 8), v166) || (v93 = *(v1 + 16), v94 = v172, sub_100034BE4(), v93, LOBYTE(v93) = sub_100034584(), (*(v173 + 8))(v94, v174), (v93 & 1) == 0))
  {
    v118 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotManager);
    v188[3] = &type metadata for AegirSnapshotIdentifierProvider;
    v119 = sub_10001CB50();
    v188[4] = v119;
    v120 = swift_allocObject();
    v188[0] = v120;
    v121 = v197;
    *(v120 + 48) = v196;
    *(v120 + 64) = v121;
    *(v120 + 80) = v198;
    v122 = v195;
    *(v120 + 16) = v194;
    *(v120 + 32) = v122;
    sub_10001CBAC(&v189, &v185);
    v95 = v182;
    v97 = sub_1000345E4();
    sub_1000026BC(v188);
    if (v97)
    {
      v123 = v171;
      sub_100034824();
      v124 = v178;
      v125 = sub_100034854();
      v126 = sub_100034C44();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *v127 = 138412290;
        *(v127 + 4) = v124;
        *v128 = v124;
        v129 = v124;
        _os_log_impl(&_mh_execute_header, v125, v126, "Have cached snapshot for key: %@", v127, 0xCu);
        sub_100007DDC(v128, &unk_1000478C0, &unk_100036B60);
      }

      (v181)(v123, v183);
      v130 = 0;
      v131 = v97;
      v104 = v176;
      goto LABEL_40;
    }

    v132 = sub_100015728();
    if (v132)
    {
      v97 = v132;
      v133 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotManager);
      *(&v186 + 1) = &type metadata for AegirSnapshotIdentifierProvider;
      v187 = v119;
      v134 = swift_allocObject();
      *&v185 = v134;
      v135 = v197;
      *(v134 + 48) = v196;
      *(v134 + 64) = v135;
      *(v134 + 80) = v198;
      v136 = v195;
      *(v134 + 16) = v194;
      *(v134 + 32) = v136;
      v137 = v170;
      v138 = v169;
      sub_1000053EC(v179);
      v131 = v97;
      sub_1000345D4();

      sub_1000026BC(&v185);
      v130 = 0;
      goto LABEL_37;
    }

LABEL_35:
    sub_10001635C();
    v97 = 0;
    goto LABEL_48;
  }

  v95 = v182;
  v96 = sub_100015728();
  if (!v96)
  {
    goto LABEL_35;
  }

  v97 = v96;
  v98 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController);
  if (v98)
  {
    v99 = v98;
    v100 = v168;
    sub_100034824();
    v101 = sub_100034854();
    v102 = sub_100034C44();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v176;
    if (v103)
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Expecting floating view, creating mask", v105, 2u);
    }

    (v181)(v100, v183);
    v106 = *(v1 + 16);
    sub_100034C04();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;

    v115 = [v99 vistaView];
    v116 = [v115 contentMaskLayer];

    v117 = [v116 contents];
    if (v117)
    {
      sub_100034D44();
      swift_unknownObjectRelease();
    }

    else
    {
      v185 = 0u;
      v186 = 0u;
    }

    sub_100016074(&v185, v108, v110, v112, v114);

    sub_100007DDC(&v185, &qword_100047C40, &qword_100036B58);
    v130 = 1;
    v131 = v97;
    goto LABEL_40;
  }

  v130 = 1;
  v131 = v96;
LABEL_37:
  v104 = v176;
LABEL_40:
  v139 = v131;
  sub_100034824();
  v140 = sub_100034854();
  v141 = sub_100034C44();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&_mh_execute_header, v140, v141, "Have background image, adding backgroundImageView", v142, 2u);
  }

  (v181)(v104, v183);
  v143 = sub_100016500(v139, &OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView);
  v144 = [*(v1 + 16) backgroundView];
  [v144 addSubview:v143];

  if (v130)
  {
    v145 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer);
    if (v145)
    {
      v146 = v145;
      sub_100034824();
      v147 = sub_100034854();
      v148 = sub_100034C44();
      v149 = os_log_type_enabled(v147, v148);
      v21 = v175;
      if (v149)
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, v147, v148, "Expects floating view; have background image and maskLayer, adding floatingImageView", v150, 2u);
      }

      (v181)(v164, v183);
      v151 = sub_100016500(v97, &OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView);
      v152 = [*(v1 + 16) floatingView];
      v153 = v151;
      [v152 addSubview:v153];

      v154 = [v153 layer];
      [v154 addSublayer:v146];
      v155 = v169;

      v156 = v170;
      v157 = v179;
      sub_1000054D4(v179);

      sub_1000054D4(v157);
      v158 = v182;
      return (v167)(v158, v21);
    }
  }

  v21 = v175;
  v95 = v182;
LABEL_48:
  sub_10001659C();
  v159 = v169;

  v160 = v170;
  v161 = v179;
  sub_1000054D4(v179);

  sub_1000054D4(v161);
  v158 = v95;
  return (v167)(v158, v21);
}

uint64_t sub_10000F9CC()
{
  v1 = v0;
  v167 = sub_100034674();
  v166 = *(v167 - 8);
  v2 = *(v166 + 64);
  v3 = __chkstk_darwin(v167);
  v165 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v164 = &v164 - v5;
  v179 = sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
  v178 = *(v179 - 8);
  v6 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = &v164 - v7;
  v181 = sub_1000035B0(&qword_1000479C0, &qword_100036B98);
  v180 = *(v181 - 8);
  v8 = *(v180 + 64);
  __chkstk_darwin(v181);
  v189 = &v164 - v9;
  v10 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v168 = &v164 - v12;
  v172 = sub_100034874();
  v171 = *(v172 - 8);
  v13 = *(v171 + 64);
  __chkstk_darwin(v172);
  v170 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1000345A4();
  v197 = *(v200 - 8);
  v15 = *(v197 + 64);
  v16 = __chkstk_darwin(v200);
  v176 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v188 = &v164 - v19;
  v20 = __chkstk_darwin(v18);
  v193 = &v164 - v21;
  v22 = __chkstk_darwin(v20);
  v199 = &v164 - v23;
  __chkstk_darwin(v22);
  v25 = &v164 - v24;
  v26 = sub_1000347F4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v169 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v173 = &v164 - v32;
  v33 = __chkstk_darwin(v31);
  v175 = &v164 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v164 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v164 - v39;
  __chkstk_darwin(v38);
  v42 = &v164 - v41;
  v43 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
  swift_beginAccess();
  v44 = *(v27 + 16);
  v192 = v42;
  v44(v42, v1 + v43, v26);
  v45 = v1[2];
  v196 = v40;
  sub_100034C24();

  v46 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v47 = *(v197 + 16);
  v195 = v25;
  v191 = v197 + 16;
  v190 = v47;
  v47(v25, v1 + v46, v200);
  v48 = v1[2];
  sub_100034BE4();

  v49 = v27 + 16;
  v44(v37, v1 + v43, v26);
  LOBYTE(v48) = sub_1000347E4();
  v50 = *(v27 + 8);
  v186 = v37;
  v51 = v37;
  v52 = v1;
  v198 = v26;
  v187 = v27 + 8;
  v194 = v50;
  v50(v51, v26);
  if (v48)
  {
    *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isFirstDraw) = 0;
  }

  swift_beginAccess();
  v53 = v197;
  (*(v197 + 24))(&v52[v46], v199, v200);
  swift_endAccess();
  swift_beginAccess();
  (*(v27 + 24))(&v52[v43], v196, v198);
  swift_endAccess();
  v182 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange;
  if (v52[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange] & 1) == 0 && (sub_1000347B4() & 1) != 0 && (sub_100034564())
  {
    v54 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange;
    if (v52[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange] == 1)
    {
      v55 = v199;
      sub_100010D4C();
      v56 = *(v52 + 3);
      v57 = [v56 mode];
      v58 = v195;
      v59 = v194;
      if (v57)
      {
        [v56 applyMode:0];
      }

      v60 = *(v53 + 8);
      v61 = v55;
      v62 = v200;
      v60(v61, v200);
      v60(v58, v62);
      v63 = v198;
      v59(v196, v198);
      result = (v59)(v192, v63);
      v52[v54] = 0;
    }

    else
    {
      v118 = *(v53 + 8);
      v119 = v200;
      v118(v199, v200);
      v118(v195, v119);
      v120 = v198;
      v121 = v194;
      v194(v196, v198);
      return v121(v192, v120);
    }

    return result;
  }

  v183 = v44;
  v65 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange;
  if (v52[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange] == 1)
  {
    v66 = *(v52 + 3);
    if ([v66 mode])
    {
      [v66 applyMode:0];
    }

    v52[v65] = 0;
  }

  sub_100010D4C();
  v67 = *(v52 + 3);
  if ([v67 mode] == 1 && objc_msgSend(v67, "mode"))
  {
    [v67 applyMode:0];
  }

  v184 = v67;
  [v67 setActiveModeFrameInterval:0];
  v68 = v193;
  v69 = v200;
  v190(v193, &v52[v46], v200);
  v70 = sub_100034554();
  v185 = *(v53 + 8);
  v185(v68, v69);
  v197 = v53 + 8;
  v71 = v194;
  v72 = v49;
  if ((v70 & 1) == 0)
  {
    v73 = &v52[v46];
    v74 = v188;
    v75 = v200;
    v190(v188, v73, v200);
    v76 = sub_100034544();
    v185(v74, v75);
    if (v76)
    {
      goto LABEL_20;
    }

    v77 = &v52[v43];
    v78 = v43;
    v79 = v52;
    v80 = v186;
    v81 = v198;
    v183(v186, v77, v198);
    v82 = sub_100034794();
    v83 = v80;
    v52 = v79;
    v43 = v78;
    v71(v83, v81);
    if ((v82 & 1) == 0)
    {
LABEL_20:
      v84 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate;
      v85 = *&v52[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate];
      if (v85)
      {
        v86 = &v52[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration];
        v87 = v49;
        v88 = *&v52[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16];
        *&v52[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16] = v85;
        v89 = v85;

        v90 = v86[8];
        v91 = *(v86 + 3);
        v92 = *(v86 + 4);
        v93 = *(v86 + 5);
        v205 = *v86;
        v206 = v90;
        v207 = v85;
        v208 = v91;
        v209 = v92;
        v210 = v93;
        v94 = v91;
        sub_1000053EC(v92);
        sub_10000CBDC(&v205);

        v72 = v87;
        sub_1000054D4(v92);
        v95 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
        [v184 updateLocation:v89 fallbackLocation:v95 animated:0];

        [*(v52 + 2) noteContentSignificantlyChanged];
        v96 = *&v52[v84];
        *&v52[v84] = 0;
      }
    }
  }

  sub_100034594();
  v174 = v43;
  if (v97 >= 0.5 || (sub_100034594(), v98 < 0.5))
  {
    v99 = v72;
    sub_100034594();
    v100 = v192;
    if (v101 > 0.5)
    {
      sub_100034594();
      if (v102 <= 0.5)
      {
        v103 = sub_100034B44();
        v104 = v168;
        (*(*(v103 - 8) + 56))(v168, 1, 1, v103);
        v105 = swift_allocObject();
        swift_weakInit();
        sub_100034B24();

        v106 = sub_100034B14();
        v107 = swift_allocObject();
        *(v107 + 16) = v106;
        *(v107 + 24) = &protocol witness table for MainActor;
        *(v107 + 32) = v105;
        *(v107 + 40) = 0;

        sub_10000E0F4(0, 0, v104, &unk_100036BC0, v107);
      }
    }

    goto LABEL_38;
  }

  v108 = v170;
  sub_100034834();
  v109 = sub_100034854();
  v110 = sub_100034C64();
  v111 = os_log_type_enabled(v109, v110);
  v100 = v192;
  if (v111)
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&_mh_execute_header, v109, v110, "Unlocking device and hiding foreground view", v112, 2u);
  }

  (*(v171 + 8))(v108, v172);
  v113 = [v184 vistaView];
  v114 = [v113 quadViews];

  sub_1000057F4();
  v115 = sub_100034AC4();

  if (v115 >> 62)
  {
    result = sub_100034E44();
    if (result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    result = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_31:
      if ((v115 & 0xC000000000000001) != 0)
      {
        v99 = v72;
        v116 = sub_100034DC4();
      }

      else
      {
        if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v99 = v72;
        v116 = *(v115 + 32);
      }

      v117 = v116;

      [v117 setHidden:1];

      goto LABEL_38;
    }
  }

  v99 = v72;

LABEL_38:
  v193 = v52;
  v122 = v186;
  v123 = v198;
  v124 = v183;
  v183(v186, v100, v198);
  v124(v175, v196, v123);
  v125 = v189;
  sub_100034634();
  v126 = v200;
  v127 = v190;
  v190(v188, v195, v200);
  v127(v176, v199, v126);
  v128 = v177;
  sub_100034634();
  sub_100012BD0(v125, v128);
  (*(v178 + 8))(v128, v179);
  v129 = v174;
  v191 = v99;
  v124(v122, &v193[v174], v123);
  v130 = v124;
  sub_1000347A4();
  v132 = v131;
  v133 = v122;
  v134 = v193;
  v194(v133, v123);
  v204 = v132;
  sub_10001D010();
  sub_100034954();
  v202 = v203;
  v135 = v194;
  sub_100034944();
  v136 = v201;
  v137 = v184;
  v138 = [v184 vistaView];
  [v138 setAPLFilterAmount:v136];

  sub_100010F24();
  if (v134[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isFirstDraw])
  {
    goto LABEL_39;
  }

  v141 = v173;
  v142 = v198;
  v130(v173, &v134[v129], v198);
  v143 = sub_1000347D4();
  v135(v141, v142);
  if (v143)
  {
    goto LABEL_42;
  }

  v149 = v169;
  v150 = v198;
  v130(v169, &v134[v129], v198);
  v151 = sub_100034794();
  v135(v149, v150);
  if ((v151 & 1) == 0)
  {
    goto LABEL_39;
  }

  v152 = &v134[v129];
  v153 = v186;
  v154 = v198;
  v130(v186, v152, v198);
  sub_1000347A4();
  v156 = v155;
  v135(v153, v154);
  if (v156 >= 0.05)
  {
    goto LABEL_39;
  }

  v157 = v164;
  sub_100034654();
  v158 = v166;
  v159 = v165;
  v160 = v167;
  (*(v166 + 104))(v165, enum case for TransitionDirection.backwards(_:), v167);
  v161 = sub_100034664();
  v162 = *(v158 + 8);
  v162(v159, v160);
  v163 = v157;
  v135 = v194;
  v162(v163, v160);
  if (v161)
  {
LABEL_42:
    v144 = [v137 mode];
    v139 = v182;
    v145 = v192;
    if (v144 != 1)
    {
      [v137 applyMode:1];
    }
  }

  else
  {
LABEL_39:
    v139 = v182;
    if (v134[v182] == 1)
    {
      v140 = [v137 vistaView];
      [v140 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];

      sub_100012658(300000000);
    }

    else
    {
      sub_100012108(0);
    }

    v145 = v192;
  }

  (*(v180 + 8))(v189, v181);
  v146 = v200;
  v147 = v185;
  v185(v199, v200);
  v147(v195, v146);
  v148 = v198;
  v135(v196, v198);
  result = (v135)(v145, v148);
  v134[v139] = 0;
  return result;
}

void sub_100010D4C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034824();
  v7 = sub_100034854();
  v8 = sub_100034C44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "_cleanupAfterSnapshotsIfNeeded", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController;
  v11 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController);
  if (v11)
  {
    v12 = [v11 vistaView];
    [v12 discardContents];
  }

  v13 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotManager);
  sub_1000345F4();
  v14 = *(v1 + v10);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 vistaView];
    [v16 purgeUnused];

    v17 = *(v1 + v10);
    *(v1 + v10) = 0;
  }

  sub_10001635C();
  sub_10001659C();
}

uint64_t sub_100010F24()
{
  v1 = v0;
  v78 = sub_100034874();
  v77 = *(v78 - 8);
  v2 = *(v77 + 64);
  __chkstk_darwin(v78);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000345A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000347F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 24);
  v16 = [v15 vistaView];
  v76 = [v16 scene];

  v17 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
  swift_beginAccess();
  (*(v11 + 16))(v14, v1 + v17, v10);
  sub_1000347A4();
  v19 = v18;
  (*(v11 + 8))(v14, v10);
  v81 = v19;
  sub_10001D010();
  sub_100034954();
  v80 = *&v85[1];
  sub_100034944();
  v20 = v79;
  v21 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v21, v5);
  sub_100034594();
  v23 = v22;
  (*(v6 + 8))(v9, v5);
  v81 = v23;
  sub_100034944();
  v24 = v80;
  v25 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive;
  v26 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
  {
    if (v24 > v20)
    {
      v27 = v80;
    }

    else
    {
      v27 = v20;
    }

    v28 = CACurrentMediaTime() - *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime);
    v29 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset;
    v30 = (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) + v28) / 1.5;
    if (v30 > 1.0)
    {
      v30 = 1.0;
    }

    v31 = v30 + (v27 * (1.0 - v30));
    v32 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed;
    v33 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed);
    if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed))
    {
      v26 = 1.0 - v31;
    }

    else
    {
      v26 = v31;
    }

    if (v26 > 0.0)
    {
      v33 = 0;
    }

    if (v26 >= 1.0 || v33 != 0)
    {
      v35 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v36 = qword_100047130;
      v37 = off_100047138;

      v86._countAndFlagsBits = v36;
      v86._object = v37;
      sub_100034684(v86);

      *(v1 + v29) = 0;
      *(v1 + v25) = 0;
      v38 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink);

      sub_100034514();

      v39 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
      if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) == 2 && (*(v1 + v32) & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2;
        v40 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
        swift_beginAccess();
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        v44 = v40[3];
        v45 = v40[4];
        v46 = v40[5];
        *v40 = 0;
        v40[1] = 0;
        v40[2] = 1;
        v40[3] = 0;
        v40[4] = 0;
        v40[5] = 0;
        sub_10001CAF4(v41, v42, v43, v44, v45);
        [v15 setVista:2];
        LODWORD(v81) = sub_10000B0AC();
        v82 = v47;
        v83 = v48;
        v84 = v49;
        [v15 applyStyleDefinition:&v81];
      }

      v50 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista;
      if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) == 2 && *(v1 + v32) == 1)
      {
        *(v1 + v39) = 2;
        v51 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
        swift_beginAccess();
        v52 = *v51;
        v53 = v51[1];
        v54 = v51[2];
        v55 = v51[3];
        v56 = v51[4];
        v57 = v51[5];
        *v51 = 0;
        v51[1] = 0;
        v51[2] = 1;
        v51[3] = 0;
        v51[4] = 0;
        v51[5] = 0;
        sub_10001CAF4(v52, v53, v54, v55, v56);
        [v15 setVista:2];
        LODWORD(v81) = sub_10000B0AC();
        v82 = v58;
        v83 = v59;
        v84 = v60;
        [v15 applyStyleDefinition:&v81];
      }

      if (*(v1 + v39) != 2 && (*(v1 + v32) & 1) == 0)
      {
        [v15 setVista:?];
        LODWORD(v81) = sub_10000B0AC();
        v82 = v61;
        v83 = v62;
        v84 = v63;
        [v15 applyStyleDefinition:&v81];
        if (!*(v1 + v39))
        {
          sub_100013320(1);
        }
      }

      if (*(v1 + v50) != 2 && *(v1 + v32) == 1)
      {
        [v15 setVista:?];
        LODWORD(v81) = sub_10000B0AC();
        v82 = v64;
        v83 = v65;
        v84 = v66;
        [v15 applyStyleDefinition:&v81];
        if (!*(v1 + v50))
        {
          sub_100013320(1);
        }
      }

      sub_100012024();
      sub_100012108(0);
      [*(v1 + 16) noteContentSignificantlyChanged];
    }
  }

  sub_100034834();
  v67 = sub_100034854();
  v68 = sub_100034C34();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v85[0] = v70;
    *v69 = 136315138;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_100034DB4(38);
    v87._countAndFlagsBits = 0x203A6B636F6C6E75;
    v87._object = 0xE800000000000000;
    sub_100034A14(v87);
    sub_100034BC4();
    v88._countAndFlagsBits = 0x203A656B6177203BLL;
    v88._object = 0xE800000000000000;
    sub_100034A14(v88);
    sub_100034BC4();
    v89._object = 0x80000001000378B0;
    v89._countAndFlagsBits = 0xD000000000000010;
    sub_100034A14(v89);
    sub_100034BC4();
    v71 = sub_10001AF94(v81, v82, v85);

    *(v69 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v67, v68, "render: driver: %s", v69, 0xCu);
    sub_1000026BC(v70);
  }

  (*(v77 + 8))(v4, v78);
  v72 = v76;
  v73 = sub_10001177C();
  (v73)(v72, v24, v20, v26);
  if ((*(v1 + v25) & 1) == 0)
  {
    [v72 updateCamera];
  }
}

uint64_t (*sub_10001177C())(void *a1, __n128 a2, float a3, float a4)
{
  v1 = v0;
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v97 = &v92 - v4;
  v100 = sub_100034354();
  v5 = *(v100 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v100);
  v99 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Geotime();
  v8 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v103 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

  v11 = sub_100034714();

  v12 = *(v1 + 16);
  v102 = sub_100009638(v12, v11);

  v13 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  v93 = v13;
  v19 = v13[4];
  v18 = v13[5];
  v104 = v1;
  if (v17 == 1)
  {
    v95 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LODWORD(v101) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v21 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v20 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v23 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v22 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v94 = v20;
    v24 = v20;
    v25 = v21;
    v96 = v22;
    sub_1000053EC(v23);
  }

  else
  {
    v95 = v15;
    LODWORD(v101) = v14;
    v21 = v17;
    v94 = v16;
    v23 = v19;
    v96 = v18;
  }

  v105 = v21;
  v26 = v100;
  if (v23)
  {
    sub_10001BC90(v15, v14, v17, v16, v19);
    v27 = v97;
    v23();
    (*(v5 + 56))(v27, 0, 1, v26);
    v28 = v99;
    (*(v5 + 32))(v99, v27, v26);
  }

  else
  {
    v29 = v97;
    (*(v5 + 56))(v97, 1, 1, v100);
    sub_10001BC90(v15, v14, v17, v16, v19);
    v28 = v99;
    sub_100034334();
    if ((*(v5 + 48))(v29, 1, v26) != 1)
    {
      sub_100007DDC(v29, &unk_100048480, &qword_100036730);
    }
  }

  v31 = v103;
  v30 = v104;
  v32 = v102;
  v33 = v101;
  v34 = v105;
  if (!v105)
  {
    v34 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  (*(v5 + 32))(v31, v28, v26);
  *(v31 + *(v98 + 20)) = v34;
  if (v95 > 2)
  {
    if ((v95 - 4) < 6)
    {
      v35 = v94;
      v36 = qword_100046A18;
      v37 = v105;
      if (v36 != -1)
      {
        swift_once();
      }

      if ((v32 - 3) < 2)
      {
        v38 = &dword_100046D78;
LABEL_40:
        v44 = *v38;
        v45 = *(v38 + 1);
        v46 = *(v38 + 2);
        v47 = v38[6];
        goto LABEL_46;
      }

      v40 = &dword_100046D58;
      goto LABEL_45;
    }

    v35 = v94;
    if (v95 == 3)
    {
      v41 = qword_100046A08;
      v37 = v105;
      if (v41 != -1)
      {
        swift_once();
      }

      if ((v32 - 3) < 2)
      {
        v38 = &dword_100046CF8;
        goto LABEL_40;
      }

      v40 = &dword_100046CD8;
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (!v95)
  {
    v35 = v94;
    if (v33)
    {
      v42 = qword_100046A80;
      v37 = v105;
      if (v42 != -1)
      {
        swift_once();
      }

      if ((v32 - 3) < 2)
      {
        v38 = &dword_100046F78;
        goto LABEL_40;
      }

      v40 = &dword_100046F58;
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (v95 == 1)
  {
    v35 = v94;
    if (v33)
    {
      v37 = v105;
      sub_100009BF0(v31, v32);
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  v35 = v94;
  if (v95 != 2)
  {
LABEL_36:
    v43 = qword_100046A00;
    v37 = v105;
    if (v43 != -1)
    {
      swift_once();
    }

    if ((v32 - 3) < 2)
    {
      v38 = &dword_100046CB8;
      goto LABEL_40;
    }

    v40 = &dword_100046C98;
    goto LABEL_45;
  }

  v39 = qword_100046A10;
  v37 = v105;
  if (v39 != -1)
  {
    swift_once();
  }

  if ((v32 - 3) < 2)
  {
    v38 = &dword_100046D38;
    goto LABEL_40;
  }

  v40 = &dword_100046D18;
LABEL_45:
  v48 = v40[6];
  v49 = *(v40 + 1);
  v50 = *(v40 + 2);
  v51 = *v40;
LABEL_46:
  v52 = swift_allocObject();
  sub_100009914(v33 & 1, v32);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_10000A5B0(v31);

  sub_1000054D4(v23);
  *(v52 + 16) = v54;
  *(v52 + 24) = v56;
  *(v52 + 32) = v58;
  *(v52 + 40) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_10000A8E8();
  *(v61 + 24) = v62;
  *(v61 + 32) = v63;
  *(v61 + 40) = v64;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v105 = 0;
    v65 = 0;
    v66 = 0;
    LOBYTE(v67) = 1;
  }

  else
  {
    v68 = *v93;
    v69 = v93[1];
    v70 = v93[2];
    v71 = v93[3];
    v73 = v93[4];
    v72 = v93[5];
    if (v70 == 1)
    {
      v74 = v30 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
      v100 = *(v30 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v101 = v68;
      LODWORD(v105) = *(v30 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v75 = *(v30 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v77 = *(v74 + 32);
      v76 = *(v74 + 40);
      v102 = *(v74 + 24);
      v78 = v75;
      v103 = v77;
      v79 = v77;
      v80 = v100;
      sub_1000053EC(v79);
      v68 = v101;
    }

    else
    {
      v102 = v93[3];
      v103 = v73;
      v78 = v70;
      v80 = v68;
      LODWORD(v105) = v69;
    }

    sub_10001BC90(v68, v69, v70, v71, v73);
    v105 = sub_100008414(v80);
    v65 = v81;
    v66 = v82;

    v67 = (v66 >> 40) & 1;
    sub_1000054D4(v103);
  }

  v83 = sub_10000B870();
  v85 = v84;
  v87 = v86;
  v88 = swift_allocObject();
  swift_weakInit();
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v52;
  v90 = v105;
  *(v89 + 32) = v61;
  *(v89 + 40) = v90;
  *(v89 + 48) = v65;
  *(v89 + 60) = BYTE4(v66);
  *(v89 + 56) = v66;
  *(v89 + 61) = v67;
  *(v89 + 64) = v83;
  *(v89 + 72) = v85;
  *(v89 + 84) = BYTE4(v87);
  *(v89 + 80) = v87;
  *(v89 + 85) = BYTE5(v87) & 1;
  return sub_10001D0BC;
}

uint64_t sub_100012024()
{
  v1 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask;
  if (*(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask);

    sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
    sub_100034B54();
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    v4 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
    v5 = qword_100047140;
    v6 = off_100047148;

    v9._countAndFlagsBits = v5;
    v9._object = v6;
    sub_100034684(v9);
  }

  return result;
}

void sub_100012108(int a1)
{
  v54 = a1;
  v2 = sub_100034874();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  (__chkstk_darwin)();
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000347F4();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  (__chkstk_darwin)();
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000345A4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = (__chkstk_darwin)();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v17 = v9[2];
  v58 = v1;
  v17(v15, v1 + v16, v8);
  v18 = sub_100034554();
  v19 = v9[1];
  v19(v15, v8);
  if ((v18 & 1) == 0)
  {
    v17(v13, v58 + v16, v8);
    v20 = sub_100034544();
    v19(v13, v8);
    if (v20)
    {
      goto LABEL_17;
    }

    v21 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
    v22 = v58;
    swift_beginAccess();
    v24 = v55;
    v23 = v56;
    v25 = v22 + v21;
    v26 = v57;
    (*(v56 + 16))(v55, v25, v57);
    LOBYTE(v22) = sub_100034794();
    (*(v23 + 8))(v24, v26);
    if ((v22 & 1) == 0)
    {
LABEL_17:
      v27 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
      v28 = *(v58 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v29 = qword_1000470F0;
      v30 = off_1000470F8;

      v59._countAndFlagsBits = v29;
      v59._object = v30;
      LOBYTE(v29) = sub_100034694(v59);

      if ((v29 & 1) == 0)
      {
        v31 = *(v58 + v27);
        v32 = qword_100047110;
        v33 = off_100047118;

        v60._countAndFlagsBits = v32;
        v60._object = v33;
        LOBYTE(v32) = sub_100034694(v60);

        if ((v32 & 1) == 0)
        {
          v34 = *(v58 + v27);
          v35 = qword_100047130;
          v36 = off_100047138;

          v61._countAndFlagsBits = v35;
          v61._object = v36;
          LOBYTE(v35) = sub_100034694(v61);

          if ((v35 & 1) == 0)
          {
            v37 = *(v58 + v27);
            v38 = qword_100047140;
            v39 = off_100047148;

            v62._countAndFlagsBits = v38;
            v62._object = v39;
            LOBYTE(v38) = sub_100034694(v62);

            if ((v38 & 1) == 0)
            {
              v40 = *(v58 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

              v41 = sub_100034704();

              if ((v41 & 1) == 0)
              {
                v42 = v58;
                v43 = v51;
                sub_100034834();
                v44 = sub_100034854();
                v45 = sub_100034C64();
                v46 = os_log_type_enabled(v44, v45);
                v47 = v54;
                if (v46)
                {
                  v48 = swift_slowAlloc();
                  *v48 = 67109120;
                  *(v48 + 4) = v47 & 1;
                  _os_log_impl(&_mh_execute_header, v44, v45, "Applying deactive mode.  Render synchronously: %{BOOL}d", v48, 8u);
                }

                (*(v52 + 8))(v43, v53);
                v49 = *(v42 + 24);
                if ([v49 mode] != 1)
                {
                  [v49 applyMode:1];
                }

                if (v47)
                {
                  v50 = [v49 vistaView];
                  [v50 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
                }
              }
            }
          }
        }
      }
    }
  }
}

id sub_100012658(uint64_t a1)
{
  v3 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask;
  if (!*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask))
  {
    result = [*(v1 + 24) mode];
    if (result != 1)
    {
      v9 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v10 = *(v1 + 16);

      v11 = v10;

      v12 = v1;
      sub_1000346C4();

      v13 = sub_100034B44();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_100034B24();

      v15 = sub_100034B14();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = a1;
      v16[5] = v14;

      v17 = sub_1000237C8(0, 0, v7, &unk_100036BB0, v16);
      v18 = *(v12 + v8);
      *(v12 + v8) = v17;
    }
  }

  return result;
}

uint64_t sub_100012850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v5[6] = sub_100034B24();
  v5[7] = sub_100034B14();
  v7 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_100012904;

  return static Task<>.sleep(nanoseconds:)(a4);
}

uint64_t sub_100012904()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = sub_100034B04();
  if (v2)
  {
    v8 = sub_100012B6C;
  }

  else
  {
    v8 = sub_100012A60;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100012A60()
{
  v1 = v0[7];

  if ((sub_100034B64() & 1) == 0)
  {
    v2 = v0[5];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v5 = qword_100047140;
      v6 = off_100047148;
      v7 = Strong;

      v12._countAndFlagsBits = v5;
      v12._object = v6;
      sub_100034684(v12);

      sub_100012108(0);
      v8 = *(v7 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask);
      *(v7 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask) = 0;
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100012B6C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_100012BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v66 = sub_1000345A4();
  v68 = *(v66 - 8);
  v5 = *(v68 + 64);
  v6 = __chkstk_darwin(v66);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v63 - v9;
  v11 = sub_1000347F4();
  v12 = *(v11 - 8);
  v71 = v11;
  v72 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v70 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100034674();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v63 - v21;
  v67 = *(v2 + 24);
  if ([v67 forceDisableLocationDot])
  {
    return;
  }

  sub_1000136A4();
  v23 = *(v2 + 16);
  v24 = sub_100034C14();

  if (v24)
  {
    return;
  }

  v25 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  if (!*(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16))
  {
    return;
  }

  v65 = a1;
  v26 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v27 = v26[2];
  if (v27 == 1)
  {
    if (!*v25)
    {
      goto LABEL_8;
    }

LABEL_24:
    v60 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
    v61 = qword_1000470F0;
    v62 = off_1000470F8;

    v75._countAndFlagsBits = v61;
    v75._object = v62;
    sub_100034684(v75);

    [v67 stopLocationDotPulse];
    sub_100012108(0);
    return;
  }

  v28 = v26[4];
  v29 = v26[3];
  v30 = *v26;
  v63[1] = v26[5];
  v64 = v30;
  v63[0] = v29;
  v31 = v27;
  sub_1000053EC(v28);

  sub_1000054D4(v28);
  if (v64)
  {
    goto LABEL_24;
  }

LABEL_8:
  sub_100034654();
  (*(v16 + 104))(v20, enum case for TransitionDirection.forward(_:), v15);
  LODWORD(v65) = sub_100034664();
  v32 = *(v16 + 8);
  v32(v20, v15);
  v32(v22, v15);
  v33 = sub_1000035B0(&qword_1000479C0, &qword_100036B98);
  v34 = v70;
  sub_100034644();
  LOBYTE(v32) = sub_100034794();
  v35 = *(v72 + 8);
  v72 += 8;
  v35(v34, v71);
  if (v32 & 1) != 0 && (v65)
  {
    sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
    sub_100034624();
    v36 = sub_100034584();
    (*(v68 + 8))(v10, v66);
    if (v36)
    {
      sub_100013320(0);
    }
  }

  v37 = v70;
  v65 = v33;
  sub_100034624();
  v38 = sub_1000347C4();
  v35(v37, v71);
  if (v38)
  {
    sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
    sub_100034644();
    v39 = sub_100034584();
    v40 = *(v68 + 8);
    v40(v10, v66);
    if ((v39 & 1) == 0)
    {
      sub_100034624();
      v41 = sub_100034584();
      v40(v10, v66);
      if (v41)
      {
        sub_100013320(0);
      }
    }
  }

  sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
  sub_100034644();
  v42 = sub_100034584();
  v43 = v68 + 8;
  v44 = *(v68 + 8);
  v45 = v8;
  v46 = v66;
  v44(v45, v66);
  if (v42)
  {
    sub_100034624();
    v47 = sub_100034584();
    v44(v10, v46);
    if ((v47 & 1) == 0)
    {
      v48 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v68 = v43;
      v49 = qword_1000470F0;
      v50 = off_1000470F8;

      v73._countAndFlagsBits = v49;
      v73._object = v50;
      sub_100034684(v73);

      [v67 hideLocationDotPulse];
    }
  }

  sub_100034644();
  v51 = sub_100034544();
  v44(v10, v46);
  if ((v51 & 1) == 0)
  {
    sub_100034624();
    v52 = sub_100034544();
    v44(v10, v46);
    if (v52)
    {
      v53 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
      v54 = qword_1000470F0;
      v55 = off_1000470F8;

      v74._countAndFlagsBits = v54;
      v74._object = v55;
      sub_100034684(v74);

      [v67 stopLocationDotPulse];
      sub_100012108(0);
    }
  }

  v56 = v70;
  sub_100034644();
  v57 = sub_1000347D4();
  v35(v56, v71);
  if ((v57 & 1) == 0)
  {
    v58 = v70;
    sub_100034624();
    v59 = sub_1000347D4();
    v35(v58, v71);
    if (v59)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_100013320(char a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100034354();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  sub_100034334();
  v16 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_lastPulseDate;
  swift_beginAccess();
  v17 = v9[2];
  v35 = v16;
  v17(v13, v2 + v16, v8);
  sub_1000342E4();
  v19 = v18;
  v36 = v9;
  v37 = v9[1];
  v37(v13, v8);
  v20 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  v21 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager);
  v22 = qword_1000470F0;
  v23 = off_1000470F8;

  v38._countAndFlagsBits = v22;
  v38._object = v23;
  LOBYTE(v22) = sub_100034694(v38);

  if ((v22 & 1) == 0 && (v19 > 480.0) | a1 & 1)
  {
    sub_100034834();
    v24 = sub_100034854();
    v25 = sub_100034C64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Starting location dot pulse.", v26, 2u);
    }

    (*(v33 + 8))(v7, v34);
    v27 = *(v2 + v20);
    v28 = *(v2 + 16);

    v29 = v28;

    sub_1000346C4();

    [*(v2 + 24) pulseLocationDot];
    v30 = v35;
    swift_beginAccess();
    (v36[3])(v2 + v30, v15, v8);
    swift_endAccess();
  }

  return (v37)(v15, v8);
}

id sub_1000136A4()
{
  v1 = v0;
  v2 = sub_1000347F4();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v30 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000345A4();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v28[-v11];
  v13 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v14 = v6[2];
  v14(v12, v1 + v13, v5);
  v15 = sub_100034554();
  v16 = v6[1];
  result = v16(v12, v5);
  if ((v15 & 1) == 0)
  {
    v14(v10, v1 + v13, v5);
    v18 = sub_100034544();
    v16(v10, v5);
    if (v18)
    {
      goto LABEL_4;
    }

    v19 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
    swift_beginAccess();
    v20 = v31;
    v21 = v1 + v19;
    v22 = v30;
    (*(v31 + 16))(v30, v21, v32);
    v29 = sub_100034794();
    result = (*(v20 + 8))(v22, v32);
    if ((v29 & 1) == 0)
    {
LABEL_4:
      v23 = *(v1 + 24);
      v14(v10, v1 + v13, v5);
      v24 = sub_100034584();
      v16(v10, v5);
      v25 = 0.0;
      if ((v24 & 1) != 0 && ([v23 forceDisableLocationDot] & 1) == 0)
      {
        v26 = *(v1 + 16);
        v27 = sub_100034C14();

        if ((v27 & 1) == 0)
        {
          if (sub_10000B9F0())
          {
            v25 = 1.0;
          }

          else
          {
            v25 = 0.0;
          }
        }
      }

      return [v23 setLocationDotAlpha:v25];
    }
  }

  return result;
}

uint64_t sub_1000139A8(float a1, __n128 a2, float a3)
{
  v4 = v3;
  v195 = a3;
  v192 = a2;
  v6 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v198 = (&v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = &v181 - v10;
  v12 = sub_100034354();
  *&v206 = *(v12 - 8);
  v13 = *(v206 + 64);
  v14 = __chkstk_darwin(v12);
  v201 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v181 - v16;
  v18 = type metadata accessor for Geotime();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v191 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v188 = &v181 - v22;
  v23 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator);

  v24 = sub_100034714();

  v25 = *(v4 + 16);
  v26 = sub_100009638(v25, v24);

  v196 = *(v4 + 24);
  v194 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista;
  v27 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) == 2;
  v197 = v18;
  if (v27)
  {
    v203 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LOBYTE(v28) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v29 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v30 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v31 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v193 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v32 = v193;
    v204 = v29;
    v33 = v29;
    v205 = v31;
    v34 = sub_1000053EC(v30);
    if (v30)
    {
LABEL_7:
      v30(v34);
      v43 = v206;
      v184 = *(v206 + 56);
      v184(v11, 0, 1, v12);
      (*(v43 + 32))(v17, v11, v12);
      goto LABEL_11;
    }
  }

  else
  {
    v35 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration;
    swift_beginAccess();
    v36 = *(v35 + 16);
    if (v36 == 1)
    {
      v203 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      LOBYTE(v28) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v38 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v37 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v39 = v4;
      v30 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v40 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v193 = v37;
      v41 = v37;
      v204 = v38;
      v42 = v38;
      v205 = v40;
      v4 = v39;
      v34 = sub_1000053EC(v30);
      if (v30)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v44 = v26;
      v45 = v4;
      v47 = *(v35 + 32);
      v46 = *(v35 + 40);
      v48 = *(v35 + 24);
      v28 = *(v35 + 8);
      v203 = *v35;
      v193 = v48;
      v49 = v48;
      v204 = v36;
      v50 = v36;
      v30 = v47;
      v205 = v46;
      v4 = v45;
      v26 = v44;
      v18 = v197;
      v34 = sub_1000053EC(v47);
      if (v47)
      {
        goto LABEL_7;
      }
    }
  }

  v51 = v206;
  v184 = *(v206 + 56);
  v184(v11, 1, 1, v12);
  sub_100034334();
  if ((*(v51 + 48))(v11, 1, v12) != 1)
  {
    sub_100007DDC(v11, &unk_100048480, &qword_100036730);
  }

LABEL_11:
  v52 = v204;
  v202 = v30;
  if (v204)
  {
    v53 = v204;
  }

  else
  {
    v53 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v54 = v188;
  v200 = *(v206 + 32);
  v200();
  *(v54 + *(v18 + 20)) = v53;
  v55 = v203;
  if (v203 > 2)
  {
    if ((v203 - 4) < 6)
    {
      v56 = qword_100046A18;
      v57 = v52;
      if (v56 != -1)
      {
        swift_once();
      }

      if ((v26 - 3) < 2)
      {
        v58 = &dword_100046D78;
LABEL_44:
        v69 = *v58;
        v70 = *(v58 + 1);
        v71 = *(v58 + 2);
        v72 = v58[6];
LABEL_50:
        v55 = v203;
        goto LABEL_51;
      }

      v61 = &dword_100046D58;
      goto LABEL_49;
    }

    if (v203 == 3)
    {
      v62 = qword_100046A08;
      v63 = v52;
      if (v62 != -1)
      {
        swift_once();
      }

      if ((v26 - 3) < 2)
      {
        v58 = &dword_100046CF8;
        goto LABEL_44;
      }

      v61 = &dword_100046CD8;
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (!v203)
  {
    if (v28)
    {
      v64 = qword_100046A80;
      v65 = v52;
      if (v64 != -1)
      {
        swift_once();
      }

      if ((v26 - 3) < 2)
      {
        v58 = &dword_100046F78;
        goto LABEL_44;
      }

      v61 = &dword_100046F58;
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (v203 != 1)
  {
    if (v203 == 2)
    {
      v59 = qword_100046A10;
      v60 = v52;
      if (v59 != -1)
      {
        swift_once();
      }

      if ((v26 - 3) < 2)
      {
        v58 = &dword_100046D38;
        goto LABEL_44;
      }

      v61 = &dword_100046D18;
LABEL_49:
      v73 = v61[6];
      v74 = *(v61 + 1);
      v75 = *(v61 + 2);
      v76 = *v61;
      goto LABEL_50;
    }

LABEL_40:
    v67 = qword_100046A00;
    v68 = v52;
    if (v67 != -1)
    {
      swift_once();
    }

    if ((v26 - 3) < 2)
    {
      v58 = &dword_100046CB8;
      goto LABEL_44;
    }

    v61 = &dword_100046C98;
    goto LABEL_49;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_40;
  }

  v66 = v52;
  sub_100009BF0(v54, v26);
LABEL_51:
  sub_100009914(v28 & 1, v26);
  v190 = v77;
  v185 = v78;
  v199 = v79;
  v81 = v80;
  sub_10000A5B0(v54);
  v203 = v26;
  sub_100009EC0(v55, v28 & 1, v52, v202, v205, v26);
  v83 = v82;
  v182 = v84;
  v86 = v85;
  v188 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
  if (*(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) == 2 || (v87 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration, swift_beginAccess(), v88 = *(v87 + 16), v88 == 1))
  {
    v89 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LOBYTE(v90) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v88 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v92 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v91 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v187 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v93 = v187;
  }

  else
  {
    v92 = *(v87 + 32);
    v91 = *(v87 + 40);
    v90 = *(v87 + 8);
    v89 = *v87;
    v187 = *(v87 + 24);
    v94 = v187;
  }

  v95 = v88;
  v96 = sub_1000053EC(v92);
  v97 = v198;
  if (v92)
  {
    v98 = v91;
    v92(v96);
    v184(v97, 0, 1, v12);
    (v200)(v201, v97, v12);
  }

  else
  {
    v98 = v91;
    v99 = v206;
    v184(v198, 1, 1, v12);
    sub_100034334();
    if ((*(v99 + 48))(v97, 1, v12) != 1)
    {
      sub_100007DDC(v97, &unk_100048480, &qword_100036730);
    }
  }

  v198 = v92;
  if (v88)
  {
    v100 = v88;
  }

  else
  {
    v100 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v101 = v98;
  v102 = v191;
  (v200)(v191, v201, v12);
  *(v102 + *(v197 + 20)) = v100;
  v189 = v81;
  v186 = a1;
  v183 = v83;
  if (v89 > 2)
  {
    v103 = v204;
    v104 = v198;
    if ((v89 - 4) < 6)
    {
      v105 = qword_100046A18;
      v106 = v88;
      if (v105 != -1)
      {
        swift_once();
      }

      v107 = v86;
      if ((v203 - 3) < 2)
      {
        v108 = &dword_100046D78;
LABEL_92:
        v119 = *v108;
        v120 = *(v108 + 1);
        v121 = *(v108 + 2);
        v122 = v108[6];
        goto LABEL_98;
      }

      v111 = &dword_100046D58;
      goto LABEL_97;
    }

    if (v89 == 3)
    {
      v112 = qword_100046A08;
      v113 = v88;
      if (v112 != -1)
      {
        swift_once();
      }

      v107 = v86;
      if ((v203 - 3) < 2)
      {
        v108 = &dword_100046CF8;
        goto LABEL_92;
      }

      v111 = &dword_100046CD8;
      goto LABEL_97;
    }

    goto LABEL_88;
  }

  v103 = v204;
  v104 = v198;
  if (!v89)
  {
    if (v90)
    {
      v114 = qword_100046A80;
      v115 = v88;
      if (v114 != -1)
      {
        swift_once();
      }

      v107 = v86;
      if ((v203 - 3) < 2)
      {
        v108 = &dword_100046F78;
        goto LABEL_92;
      }

      v111 = &dword_100046F58;
      goto LABEL_97;
    }

    goto LABEL_88;
  }

  if (v89 == 1)
  {
    if (v90)
    {
      v107 = v86;
      v116 = v88;
      sub_100009BF0(v102, v203);
      goto LABEL_98;
    }

    goto LABEL_88;
  }

  if (v89 != 2)
  {
LABEL_88:
    v117 = qword_100046A00;
    v118 = v88;
    if (v117 != -1)
    {
      swift_once();
    }

    v107 = v86;
    if ((v203 - 3) < 2)
    {
      v108 = &dword_100046CB8;
      goto LABEL_92;
    }

    v111 = &dword_100046C98;
    goto LABEL_97;
  }

  v109 = qword_100046A10;
  v110 = v88;
  if (v109 != -1)
  {
    swift_once();
  }

  v107 = v86;
  if ((v203 - 3) < 2)
  {
    v108 = &dword_100046D38;
    goto LABEL_92;
  }

  v111 = &dword_100046D18;
LABEL_97:
  v123 = v111[6];
  v124 = *(v111 + 1);
  v125 = *(v111 + 2);
  v126 = *v111;
LABEL_98:
  v127 = v203;
  sub_100009914(v90 & 1, v203);
  v129 = v128;
  v131 = v130;
  v206 = v132;
  v134 = v133;
  sub_10000A5B0(v102);
  sub_100009EC0(v89, v90 & 1, v88, v104, v101, v127);
  if (*(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed))
  {
    v138 = v195;
    v139 = v185;
    v140 = v190;
    v141 = v199;
    if (v192.n128_f32[0] > 0.0)
    {
      v139 = vmla_n_f32(v185, vsub_f32(v182, v185), v192.n128_f32[0]);
      v140 = v190 + (v192.n128_f32[0] * (v183 - v190));
      *&v141 = vmla_n_f32(*&v199, vsub_f32(v107, *&v199), v192.n128_f32[0]);
    }

    if (v195 <= 0.0)
    {
      goto LABEL_127;
    }

    v199 = v141;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v142 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v143 = *v142;
      v144 = v142[1];
      v146 = v142[2];
      v145 = v142[3];
      v147 = v142[4];
      v148 = v142[5];
      if (v146 == 1)
      {
        v192.n128_u64[0] = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
        v149 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
        v150 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
        v201 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
        v152 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
        v151 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
        v200 = v143;
        v197 = v144;
        v153 = v145;
        v203 = v150;
        v201 = v201;
        sub_1000053EC(v152);
        v145 = v153;
        v154 = v192.n128_u64[0];
        v144 = v197;
        v143 = v200;
      }

      else
      {
        v203 = v142[3];
        v201 = v146;
        v154 = v143;
        v152 = v147;
      }

      sub_10001BC90(v143, v144, v146, v145, v147);
      sub_100008414(v154);
      v171 = v170;
      v173 = v172;

      sub_1000054D4(v152);
      if ((v173 & 0x10000000000) == 0)
      {
        if ((v173 & &_mh_execute_header) == 0)
        {
          v140 = v140 + (v138 * ((v140 * *&v173) - v140));
        }

        *&v141 = v199;
        v104 = v198;
        *&v156 = v206;
        if ((v171 & 0x100000000) == 0)
        {
          *&v141 = *&v199 + ((v138 * (*&v171 / -15.0)) + 0.0);
        }

LABEL_125:
        v103 = v204;
        goto LABEL_128;
      }

LABEL_126:
      v103 = v204;
      *&v141 = v199;
      v104 = v198;
      goto LABEL_127;
    }

    goto LABEL_109;
  }

  v155 = v195;
  v139 = v185;
  v156 = v206;
  if (v192.n128_f32[0] > 0.0)
  {
    v131 = vmla_n_f32(v131, vsub_f32(v136, v131), v192.n128_f32[0]);
    v129 = v129 + (v192.n128_f32[0] * (v135 - v129));
    *&v156 = vmla_n_f32(*&v206, vsub_f32(v137, *&v206), v192.n128_f32[0]);
  }

  v140 = v190;
  if (v195 > 0.0)
  {
    v206 = v156;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v157 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v158 = *v157;
      v159 = v157[1];
      v161 = v157[2];
      v160 = v157[3];
      v162 = v157[4];
      v163 = v157[5];
      if (v161 == 1)
      {
        v192.n128_u64[0] = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
        v164 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
        v165 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
        v201 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
        v167 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
        v166 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
        v200 = v158;
        v197 = v159;
        v168 = v160;
        v203 = v165;
        v201 = v201;
        sub_1000053EC(v167);
        v160 = v168;
        v169 = v192.n128_u64[0];
        v159 = v197;
        v158 = v200;
      }

      else
      {
        v203 = v157[3];
        v201 = v161;
        v169 = v158;
        v167 = v162;
      }

      sub_10001BC90(v158, v159, v161, v160, v162);
      sub_100008414(v169);
      v175 = v174;
      v177 = v176;

      sub_1000054D4(v167);
      if ((v177 & 0x10000000000) == 0)
      {
        if ((v177 & &_mh_execute_header) == 0)
        {
          v129 = v129 + (v155 * ((v129 * *&v177) - v129));
        }

        *&v141 = v199;
        v104 = v198;
        *&v156 = v206;
        if ((v175 & 0x100000000) == 0)
        {
          *&v156 = *&v206 + ((v155 * (*&v175 / -15.0)) + 0.0);
        }

        goto LABEL_125;
      }

      goto LABEL_126;
    }

LABEL_109:
    *&v141 = v199;
LABEL_127:
    *&v156 = v206;
    goto LABEL_128;
  }

  *&v141 = v199;
LABEL_128:
  v178 = *(v4 + v194);
  v179 = *&v188[v4];
  v211 = v140;
  v212 = v139;
  v213 = v141;
  v214 = v189;
  v207 = v129;
  v208 = v131;
  v209 = v156;
  v210 = v134;
  [v196 applyTransitionFraction:v178 fromVista:&v211 fromStyleDefinition:v179 toVista:&v207 toStyleDefinition:v186];

  sub_1000054D4(v104);
  return sub_1000054D4(v202);
}