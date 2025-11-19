BOOL sub_766AC(uint64_t a1)
{
  if (a1)
  {
    sub_37474();
    sub_16ACF4(51);
    sub_77048();
    v2._countAndFlagsBits = 0xD000000000000031;
    sub_77054(v2, "ing RKE command. Proceeding...");
    swift_errorRetain();
    sub_5758(qword_1EA220, &qword_1708D8);
    v22._countAndFlagsBits = sub_16A694();
    sub_16A744(v22);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v3 = sub_16A584();
    sub_9DA0(v3, qword_1E65C0);
    sub_16A9A4();
    sub_77014();
    sub_31008(v4, v5, v6, v7, v8, v9, 94, v10, v21);

    sub_3CC14();
    sub_77030();
    *v11 = xmmword_170840;
    sub_5758(&qword_1E88D0, &qword_1708D0);
    sub_16A854();
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v12 = sub_16A584();
    sub_48154(v12, qword_1E65C0);
    sub_77014();
    sub_386D8(v13, v14, v15, v16, v17, v18, 98, v19, 0x8000000000185480);
  }

  return a1 != 0;
}

uint64_t sub_7687C(void *a1)
{
  if (!a1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v20 = sub_16A584();
    sub_48154(v20, qword_1E65C0);
    sub_76FD4();
    sub_386D8(v21, v22, v23, v24, v25, v26, 104, v27, 0x80000000001852E0);
    sub_3CC14();
    sub_77030();
    *v28 = xmmword_170850;
    sub_5758(&qword_1E88D0, &qword_1708D0);
    sub_16A854();
    return 1;
  }

  sub_76D10();
  v2 = a1;
  isa = sub_16AAB4(19).super.super.isa;
  v4 = sub_16AAD4();

  if (v4)
  {
    sub_37474();
    sub_16ACF4(102);
    sub_77048();
    v5._countAndFlagsBits = 0xD000000000000064;
    sub_77054(v5, "urned. Proceeding...");
    v6 = [v2 description];
    v7 = sub_16A664();
    v9 = v8;

    v53._countAndFlagsBits = v7;
    v53._object = v9;
    sub_16A744(v53);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_76FD4();
    sub_31008(v11, v12, v13, v14, v15, v16, 110, v17, v52);

    sub_3CC14();
    sub_77030();
    v19 = xmmword_170860;
LABEL_17:
    *v18 = v19;
    sub_5758(&qword_1E88D0, &qword_1708D0);
    sub_16A854();

    return 1;
  }

  v2 = v2;
  v29 = sub_A5B98();
  if (v29 == 5 || !sub_E6624(v29, &off_1D1EE8))
  {
    sub_37474();
    sub_16ACF4(71);
    sub_77048();
    v39._countAndFlagsBits = 0xD000000000000045;
    sub_77054(v39, "on and ending session.");
    v40 = [v2 description];
    v41 = sub_16A664();
    v43 = v42;

    v54._countAndFlagsBits = v41;
    v54._object = v43;
    sub_16A744(v54);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v44 = sub_16A584();
    sub_9DA0(v44, qword_1E65C0);
    sub_16A9A4();
    sub_76FD4();
    sub_31008(v45, v46, v47, v48, v49, v50, 120, v51, v52);

    sub_3CC14();
    sub_77030();
    v19 = xmmword_170850;
    goto LABEL_17;
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v30 = sub_16A584();
  sub_48154(v30, qword_1E65C0);
  sub_76FD4();
  sub_386D8(v31, v32, v33, v34, v35, v36, 125, v37, 0x8000000000185390);

  return 0;
}

uint64_t sub_76CB4()
{
  sub_D13C((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

unint64_t sub_76D10()
{
  result = qword_1E6310;
  if (!qword_1E6310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6310);
  }

  return result;
}

uint64_t sub_76D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA210, &unk_1708E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_76DD4(uint64_t a1)
{
  v2 = sub_5758(&qword_1EA210, &unk_1708E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_76E3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_76E74()
{
  v1 = sub_5758(&qword_1E88D0, &qword_1708D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_76F44(void *a1, uint64_t a2)
{
  v5 = *(*(sub_5758(&qword_1E88D0, &qword_1708D0) - 8) + 80);
  v6 = *(v2 + 16);

  sub_763E8(a1, a2);
}

uint64_t sub_77030()
{

  return swift_allocError();
}

void sub_77054(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_16A744(a1);
}

uint64_t sub_7706C(uint64_t result)
{
  if ((result * 60) >> 64 == (60 * result) >> 63)
  {
    v1 = sub_16A044();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_16A034();
    sub_16A024();

    v4 = sub_16A014();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_77100()
{
  v0 = sub_16AE64();

  if (v0 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_77154(char a1)
{
  result = 1935762529;
  switch(a1)
  {
    case 1:
      v3 = 1768191329;
      goto LABEL_4;
    case 2:
      result = 0x7563726943726961;
      break;
    case 3:
      result = 0x69646E6F43726961;
      break;
    case 4:
      result = 0x756F536F69647561;
      break;
    case 5:
      result = 0x79726574746162;
      break;
    case 6:
      result = 0x694C6472617A6168;
      break;
    case 7:
      result = 0x6E6769536E727574;
      break;
    case 8:
      result = 7496035;
      break;
    case 9:
      result = 0x436574616D696C63;
      break;
    case 10:
      result = 0x6F43657369757263;
      break;
    case 11:
      result = 0x6574736F72666564;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 7233894;
      break;
    case 14:
      result = 1818588518;
      break;
    case 15:
      result = 1685024616;
      break;
    case 16:
      result = 1852993384;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x6E6F697461636F6CLL;
      break;
    case 19:
      result = 0x73746867696CLL;
      break;
    case 20:
      result = 0x616E65746E69616DLL;
      break;
    case 21:
      result = 0x73726F7272696DLL;
      break;
    case 22:
      result = 0x42676E696B726170;
      break;
    case 23:
      result = 0x6165537265776F70;
      break;
    case 24:
      result = 0x656C69666F7270;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 1952540019;
      break;
    case 27:
      result = 0x6C6F6F4374616573;
      break;
    case 28:
      result = 0x7461654874616573;
      break;
    case 29:
      result = 0x7373614D74616573;
      break;
    case 30:
      result = 0x6C616E676973;
      break;
    case 31:
      result = 0x666F6F726E7573;
      break;
    case 32:
      result = 0x7365726974;
      break;
    case 33:
      result = 0x6B6E757274;
      break;
    case 34:
      result = 0x776F646E6977;
      break;
    case 35:
      result = 0x737265706977;
      break;
    case 36:
      result = 0x656C6553746E6576;
      break;
    case 37:
      v3 = 1769171318;
LABEL_4:
      result = v3 | 0x53656C6200000000;
      break;
    case 38:
      result = 0x656D756C6F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_77600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_77100();
  *a2 = result;
  return result;
}

uint64_t sub_77630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_77154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsNounNLv3Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDA)
  {
    if (a2 + 38 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 38) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 39;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v5 = v6 - 39;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsNounNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD9)
  {
    v6 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
        JUMPOUT(0x777B0);
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
          *result = a2 + 38;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_777EC()
{
  result = qword_1E88D8;
  if (!qword_1E88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88D8);
  }

  return result;
}

uint64_t sub_77850(uint64_t a1, uint64_t a2)
{
  v4 = sub_779DC();
  v5 = sub_77A30();
  v6 = sub_77A84();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_778C8()
{
  result = qword_1E88E0;
  if (!qword_1E88E0)
  {
    sub_37130(&qword_1E88E8, &qword_170940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88E0);
  }

  return result;
}

unint64_t sub_77930()
{
  result = qword_1E88F0;
  if (!qword_1E88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88F0);
  }

  return result;
}

unint64_t sub_77988()
{
  result = qword_1E88F8;
  if (!qword_1E88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E88F8);
  }

  return result;
}

unint64_t sub_779DC()
{
  result = qword_1E8900;
  if (!qword_1E8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8900);
  }

  return result;
}

unint64_t sub_77A30()
{
  result = qword_1E8908;
  if (!qword_1E8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8908);
  }

  return result;
}

unint64_t sub_77A84()
{
  result = qword_1E8910;
  if (!qword_1E8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8910);
  }

  return result;
}

unint64_t sub_77AD8@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_77B28(a1);
  v4 = result;
  if (result)
  {
    result = sub_783F8();
    v5 = &off_1D5170;
  }

  else
  {
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = result;
  a2[4] = v5;
  return result;
}

void *sub_77B28(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 volumes];
  sub_783F8();
  v5 = sub_16A7D4();

  v6 = sub_11B48C(v5);

  if (v6)
  {
    v7 = sub_78314(a1);
    v8 = [v2 volumes];
    v9 = sub_16A7D4();

    v10 = sub_11B48C(v9);
    for (i = 0; v10 != i; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_16AD04();
      }

      else
      {
        if (i >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ([v12 volumeType] == v7)
      {

        return v13;
      }
    }

    sub_16ACF4(36);
    v19._countAndFlagsBits = 0xD000000000000022;
    v19._object = 0x8000000000185950;
    sub_16A744(v19);
    sub_16AD84();
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v16 = sub_16A584();
    sub_9DA0(v16, qword_1E65C0);
    v17 = sub_16A9A4();
    sub_386D8(v17, 0x400uLL, 0xD00000000000009BLL, 0x8000000000185890, 0xD000000000000017, 0x8000000000185930, 71, 0, 0xE000000000000000);
  }

  else
  {
    a1 = "given carKeyPass";
    v9 = "ings+CarAudioSettings.swift";
    v10 = 0x8000000000185980;
    if (qword_1E58E8 != -1)
    {
LABEL_21:
      swift_once();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x400uLL, 0xD00000000000009BLL, a1 | 0x8000000000000000, 0xD000000000000017, (v9 | 0x8000000000000000), 64, 0xD000000000000028, v10);
  }

  return 0;
}

void sub_77E4C(unint64_t a1, uint64_t a2)
{
  v3 = sub_77B28(a1);
  if (!v3)
  {
LABEL_6:
    sub_78470();
    return;
  }

  v12 = v3;
  v4 = sub_78088(v3);
  if ((v4 & 0x10000) == 0)
  {
    [v12 setVolume:{sub_14BD28(a2, v4)}];
    sub_16ACF4(50);
    sub_7848C();
    v13._countAndFlagsBits = 0x73206C6576656C20;
    v13._object = 0xEE00206F74207465;
    sub_16A744(v13);
    [v12 volume];
    v14._countAndFlagsBits = sub_16AE24();
    sub_16A744(v14);

    v15._object = 0x80000000001859F0;
    v15._countAndFlagsBits = 0xD000000000000010;
    sub_16A744(v15);
    v16._countAndFlagsBits = sub_16AE24();
    sub_16A744(v16);

    v17._countAndFlagsBits = sub_7843C();
    sub_16A744(v17);
    sub_7848C();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_7845C();
    sub_386D8(v7, 0x400uLL, v8, v9, v6 + 6, 0x8000000000185A10, 25, 0, 0xE000000000000000);

    goto LABEL_6;
  }

  sub_78470();
}

uint64_t sub_78088(void *a1)
{
  v1 = [a1 volumeRange];
  v2 = [v1 minimumValue];
  v3 = [v1 maximumValue];

  return v2 | (v3 << 8);
}

void sub_780F8(unint64_t a1)
{
  v1 = sub_77B28(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_78088(v1);
    if ((v3 & 0x10000) != 0)
    {
    }

    else
    {
      sub_14BDBC([v2 volume], v3);
      sub_16ACF4(53);
      sub_784AC();
      v9._countAndFlagsBits = 0xD000000000000011;
      v9._object = 0x80000000001859D0;
      sub_16A744(v9);
      v10._countAndFlagsBits = sub_16AE24();
      sub_16A744(v10);

      v11._object = 0x80000000001859F0;
      v11._countAndFlagsBits = 0xD000000000000010;
      sub_16A744(v11);
      v12._countAndFlagsBits = sub_16AE24();
      sub_16A744(v12);

      v13._countAndFlagsBits = sub_7843C();
      sub_16A744(v13);
      sub_784AC();
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v4 = sub_16A584();
      sub_9DA0(v4, qword_1E65C0);
      sub_16A9A4();
      sub_7845C();
      sub_386D8(v6, 0x400uLL, v7, v8, v5 + 5, 0x80000000001859B0, 39, 0, 0xE000000000000000);
    }
  }

  sub_78470();
}

uint64_t sub_78354(unint64_t a1)
{
  v2 = *v1;
  sub_780F8(a1);
  return v3 & 0x1FF;
}

unint64_t sub_783F8()
{
  result = qword_1E8918;
  if (!qword_1E8918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E8918);
  }

  return result;
}

uint64_t sub_7848C()
{

  return sub_16AD84();
}

uint64_t sub_784AC()
{

  return sub_16AD84();
}

uint64_t sub_784CC()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v13);

  (*(v2 + 8))(v8, v0);
  v9 = v13[3];
  sub_57A80(v13);
  if (v9)
  {
    return sub_168C64();
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x10uLL, 0xD00000000000008DLL, 0x8000000000185A80, 0xD000000000000016, 0x800000000017FD50, 21, 0xD00000000000001FLL, 0x800000000017F910);
  return sub_168C74();
}

uint64_t sub_78698()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16D440;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  return v0;
}

uint64_t sub_78720()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_787DC, 0, 0);
}

uint64_t sub_787DC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16484(0, &qword_1E89F8, INGetCarPowerLevelStatusIntent_ptr);
  v5 = *(v2 + 16);
  v6 = sub_30AF8();
  v5(v6);
  v7 = sub_D1B44(v1);
  v8 = v0[5];
  if (v7)
  {
    v9 = v7;
    v10 = v0[5];

    v11 = v0[1];

    return v11(v9);
  }

  else
  {
    v14 = v0[2];
    v13 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_7A5E4(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    (v5)(v15, v14, v13);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_78994()
{
  v0 = sub_16A164();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v98 = sub_5758(&qword_1E89F0, &qword_170C18);
  sub_37404();
  v95 = v2;
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v5);
  v94 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = v93 - v8;
  v9 = sub_16484(0, &qword_1E89F8, INGetCarPowerLevelStatusIntent_ptr);
  v93[2] = sub_16484(0, &qword_1E8A00, INGetCarPowerLevelStatusIntentResponse_ptr);
  sub_168904();
  sub_1693F4();
  v10 = type metadata accessor for FeatureFlagHelper();
  v96 = v10;
  v11 = sub_7A728();
  v12 = sub_168E34();
  sub_483C8(v12);
  sub_168E24();
  v97 = type metadata accessor for SnippetManager();
  *(sub_7A710() + 16) = 0;
  v13 = sub_5758(&qword_1E8A08, &qword_170C20);
  v14 = sub_483C8(v13);
  v104 = v10;
  v105 = &off_1D9AF0;
  v103[0] = v11;
  v15 = (v14 + qword_1F0AE0);
  v102 = v9;

  sub_5758(&qword_1E8A10, &qword_170C28);
  *v15 = sub_16A694();
  v15[1] = v16;
  *(v14 + qword_1E76B0) = 0;
  v17 = qword_1F0AE8;
  *(v14 + v17) = sub_F3020();
  sub_7A740();
  sub_7A758();
  sub_2F8D0(v100, v101);
  sub_37404();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  sub_A138();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  v25 = *v23;
  sub_1668CC();
  v27 = v26;

  sub_7A648();
  *&v106[0] = v27;
  sub_37284(&qword_1E8A18, &qword_1E8A08, &qword_170C20);
  sub_168804();
  sub_7A62C();
  sub_30AF8();
  sub_168894();
  sub_1693F4();
  v28 = v96;
  v29 = sub_7A728();
  sub_7A67C();
  sub_168E24();
  *(sub_7A710() + 16) = 0;
  v30 = sub_5758(&qword_1E8A20, &qword_170C30);
  v31 = sub_483C8(v30);
  v104 = v28;
  v105 = &off_1D9AF0;
  v103[0] = v29;
  v32 = (v31 + qword_1F0DF0);
  v93[1] = type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_7A6A8();
  *v32 = sub_16A094();
  v32[1] = &off_1D4830;
  v33 = (v31 + qword_1F0DF8);
  v34 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  sub_7A6A8();
  v35 = sub_16A094();
  v33[3] = v34;
  v33[4] = &off_1DA7E8;
  *v33 = v35;
  sub_7A740();
  sub_7A758();
  sub_7A6F4();
  sub_37404();
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  sub_A138();
  v40 = sub_7A6DC(v39);
  v41(v40);
  sub_7A6B4();
  v43 = v42;

  sub_7A648();
  *&v106[0] = v43;
  sub_37284(&qword_1E8A28, &qword_1E8A20, &qword_170C30);
  sub_7A698();
  sub_168824();
  sub_7A62C();
  sub_30AF8();
  sub_1688D4();
  sub_1693F4();
  v44 = v96;
  v45 = sub_7A728();
  sub_7A67C();
  sub_168E24();
  *(sub_7A710() + 16) = 0;
  v46 = sub_5758(&qword_1E8A30, &qword_170C38);
  v47 = sub_483C8(v46);
  v104 = v44;
  v105 = &off_1D9AF0;
  v103[0] = v45;
  v48 = (v47 + qword_1F0E38);

  sub_16A154();
  sub_7A6A8();
  v93[0] = v34;
  v49 = sub_16A094();
  v48[3] = v34;
  v48[4] = &off_1DA7E8;
  *v48 = v49;
  sub_7A740();
  sub_7A758();
  sub_7A6F4();
  sub_37404();
  v51 = *(v50 + 64);
  __chkstk_darwin(v52);
  sub_A138();
  v55 = (v54 - v53);
  (*(v56 + 16))(v54 - v53);
  v57 = *v55;
  sub_1668CC();
  v59 = v58;

  sub_7A648();
  *&v106[0] = v59;
  sub_37284(&qword_1E8A38, &qword_1E8A30, &qword_170C38);
  sub_7A698();
  sub_168834();

  sub_1688E4();
  sub_16A154();
  sub_7A6A8();
  v60 = sub_16A094();
  sub_1693F4();
  *&v106[0] = sub_79F94(v60, 16, v106);
  v61 = sub_30AF8();
  sub_5758(v61, v62);
  sub_37284(&qword_1E8A48, &qword_1E8A40, &qword_170C40);
  sub_7A698();
  sub_1687D4();
  sub_7A62C();
  sub_30AF8();
  sub_168874();
  sub_1693F4();
  v63 = sub_7A728();
  sub_7A67C();
  sub_168E24();
  *(sub_7A710() + 16) = 0;
  v64 = sub_5758(&qword_1E8A50, &qword_170C48);
  v65 = sub_483C8(v64);
  v104 = v44;
  v105 = &off_1D9AF0;
  v103[0] = v63;
  v66 = (v65 + qword_1F0E60);

  sub_16A154();
  sub_7A6A8();
  v67 = v93[0];
  v68 = sub_16A094();
  v66[3] = v67;
  v66[4] = &off_1DA7E8;
  *v66 = v68;
  v69 = (v65 + qword_1F0E68);
  sub_16A154();
  sub_7A6A8();
  *v69 = sub_16A094();
  v69[1] = &off_1D4800;
  sub_7A740();
  sub_7A758();
  sub_7A6F4();
  sub_37404();
  v71 = *(v70 + 64);
  __chkstk_darwin(v72);
  sub_A138();
  v74 = sub_7A6DC(v73);
  v75(v74);
  sub_7A6B4();
  v77 = v76;

  sub_7A648();
  *&v106[0] = v77;
  sub_37284(&qword_1E8A58, &qword_1E8A50, &qword_170C48);
  sub_7A698();
  sub_168864();
  sub_7A62C();
  sub_30AF8();
  v78 = v98;
  v79 = v99;
  sub_1688C4();
  sub_1693F4();
  sub_7A67C();
  v80 = sub_168E24();
  v81 = sub_30AF8();
  sub_5758(v81, v82);
  v83 = swift_allocObject();
  *&v106[0] = sub_7A268(v106, v80, v83);
  sub_37284(&qword_1E8A68, &qword_1E8A60, &qword_170C50);
  sub_168814();
  sub_7A62C();
  sub_30AF8();
  sub_1688B4();
  sub_1693F4();
  v84 = sub_7A728();
  sub_7A67C();
  sub_168E24();
  *(sub_7A710() + 16) = 0;
  *&v106[0] = sub_7A33C(v106, v84);
  type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  sub_7A5E4(&qword_1E8A70, 255, type metadata accessor for GetPowerLevelHandleIntentFlowStrategy);
  sub_1687E4();
  sub_7A62C();
  sub_30AF8();
  sub_168884();
  sub_1693F4();
  v85 = sub_5758(&qword_1E8A78, &qword_170C58);
  v86 = sub_483C8(v85);
  v104 = &type metadata for TCCTemplatesProvider;
  v105 = &off_1D4118;
  *(v86 + qword_1F0A50) = 0;
  sub_10824(v103, v86 + qword_1F0A58);
  sub_7A740();
  sub_7A728();
  sub_7A67C();

  sub_168E24();
  *(sub_7A710() + 16) = 0;

  sub_1668CC();
  v88 = v87;

  sub_D13C(v106);
  sub_D13C(v103);
  *&v106[0] = v88;
  sub_37284(&qword_1E8A80, &qword_1E8A78, &qword_170C58);
  sub_168844();
  sub_7A62C();
  sub_30AF8();
  sub_1688F4();
  v89 = v95;
  (*(v95 + 16))(v94, v79, v78);
  v90 = sub_5758(&qword_1E8A88, &unk_170C60);
  sub_483C8(v90);
  v91 = sub_168914();
  (*(v89 + 8))(v79, v78);
  return v91;
}

uint64_t sub_79688()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_78720();
}

uint64_t sub_7971C()
{
  sub_D2DC();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_79828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_6F850;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_798EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, PowerLevelRCHFlowStrategy, a5);
}

uint64_t sub_799B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, PowerLevelRCHFlowStrategy, a5);
}

uint64_t sub_79A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, PowerLevelRCHFlowStrategy, a5);
}

uint64_t sub_79B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, PowerLevelRCHFlowStrategy, a6);
}

uint64_t sub_79C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v19 = v12;
  v19[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, PowerLevelRCHFlowStrategy, a6, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_79D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  PowerLevelRCHFlowStrategy = type metadata accessor for GetPowerLevelRCHFlowStrategy();
  *v9 = v4;
  v9[1] = sub_79DCC;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, PowerLevelRCHFlowStrategy, a4);
}

uint64_t sub_79DCC()
{
  sub_D2DC();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_79F94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = a1;
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10824(a3, v36);
  v6 = type metadata accessor for FeatureFlagHelper();
  v7 = swift_allocObject();
  v8 = sub_168E34();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v11 = sub_5758(&qword_1E8A40, &qword_170C40);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v35[3] = v6;
  v35[4] = &off_1D9AF0;
  v35[0] = v7;
  v15 = (v14 + qword_1F0C28);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);

  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
  v18 = (v14 + qword_1F0C30);
  type metadata accessor for CarCommandsCATs();
  sub_16A154();
  *v18 = sub_16A094();
  v18[1] = &off_1D4818;
  sub_10824(v36, v34);
  sub_10824(v35, v32);
  v19 = v33;
  v20 = sub_2F8D0(v32, v33);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v32[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  sub_1668CC();
  v27 = v26;

  sub_D13C(a3);
  sub_D13C(v36);
  sub_D13C(v35);
  sub_D13C(v32);
  v28 = (v27 + qword_1F0C30);
  v29 = *(v27 + qword_1F0C30);
  *v28 = v31;
  v28[1] = &off_1D4818;

  return v27;
}

uint64_t sub_7A268(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16A164();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v10 = sub_168E34();
  v11 = &protocol witness table for ResponseFactory;
  *&v9 = a2;
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  *(a3 + 96) = sub_16A0F4();
  sub_D124(a1, a3 + 16);
  sub_D124(&v9, a3 + 56);
  return a3;
}

uint64_t sub_7A33C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  v8 = *(PowerLevelHandleIntentFlowStrategy + 48);
  v9 = *(PowerLevelHandleIntentFlowStrategy + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t sub_7A5E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7A62C()
{
}

uint64_t sub_7A648()
{
  sub_D13C((v0 - 128));
  sub_D13C((v0 - 168));

  return sub_D13C((v0 - 248));
}

uint64_t sub_7A67C()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void sub_7A6B4()
{
  v2 = *v0;

  sub_1668CC();
}

uint64_t sub_7A6F4()
{
  v2 = *(v0 - 224);

  return sub_2F8D0(v0 - 248, v2);
}

uint64_t sub_7A710()
{

  return swift_allocObject();
}

uint64_t sub_7A728()
{

  return swift_allocObject();
}

uint64_t sub_7A740()
{

  return sub_10824(v0 - 128, v0 - 208);
}

uint64_t sub_7A758()
{

  return sub_10824(v0 - 168, v0 - 248);
}

uint64_t type metadata accessor for CarCommandsDeactivateSignalCATsSimple()
{
  result = qword_1E8A90;
  if (!qword_1E8A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7A7FC()
{
  v1 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v4 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_31D84;

  return (v4)(0xD000000000000031, 0x8000000000185B60, _swiftEmptyArrayStorage);
}

uint64_t sub_7A8C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_7A914(a1, a2);
}

uint64_t sub_7A914(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_7AA70(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

id sub_7AB78()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_7C5C0(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_7AC14()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for SignalActivationParameters(0);
  v1[41] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7ACE8()
{
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62F0, &unk_16D8C0);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD000000000000098;
  v0[32] = 0x8000000000185BF0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v88._countAndFlagsBits = 0xD000000000000025;
    v88._object = 0x8000000000182560;
    sub_16A744(v88);
    v10 = v83;
    v4 = v86;
  }

  else
  {
    v10 = 0xD000000000000025;
  }

  v80 = v10;
  v0[35] = 26;
  v89._countAndFlagsBits = sub_16AE24();
  sub_16A744(v89);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v80, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x82uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v81, v82, v84, v87);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v85, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v85);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[38];
  sub_3CF7C();
  v35 = *sub_D084((v34 + 136), *(v34 + 160));
  v36 = sub_11B5C0();
  v37 = v0[37];
  if (v36)
  {
    sub_169094();
    sub_16A1B4();
    v39 = v38;

    v0[43] = v39;
    if (!v39)
    {
      type metadata accessor for CarCommandsError();
      sub_7C70C();
      sub_7C578(v54, v55);
      sub_5A144();
      *v56 = 0xD00000000000002DLL;
      v56[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v57 = v0[42];
      v59 = v0[39];
      v58 = v0[40];

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v40 = v0[37];
    v41 = v0[38];
    type metadata accessor for SignalStatusSnippetFactory();
    v42 = *(*(v41 + 224) + 16);
    v43 = sub_1690A4();
    v0[44] = [v43 carName];

    v44 = sub_1690A4();
    [v44 signals];

    sub_3CF7C();
    sub_10824(v41 + 184, (v0 + 17));
    v45 = swift_task_alloc();
    v0[45] = v45;
    *v45 = v0;
    v45[1] = sub_584A8;
    v46 = v0[36];
    sub_D2C0();

    return sub_126E58();
  }

  else
  {
    v49 = sub_1690A4();
    v0[47] = v49;
    v50 = [v49 carName];
    if (v50)
    {
      v51 = v50;
      v52 = v0[40];
      sub_99C94();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v62 = v0[40];
    v63 = v0[37];
    v64 = sub_16A0C4();
    sub_5370(v62, v53, 1, v64);
    v65 = [v49 signals];
    sub_169094();
    sub_16A1B4();
    v67 = v66;

    if (v67)
    {
      v68 = v0[39];
      sub_16A6E4();

      v69 = 0;
    }

    else
    {
      v69 = 1;
    }

    v71 = v0[41];
    v70 = v0[42];
    v73 = v0[39];
    v72 = v0[40];
    v74 = v0[38];
    sub_5370(v73, v69, 1, v64);
    sub_16304(v72, v70);
    *(v70 + v71[5]) = 1;
    *(v70 + v71[6]) = (v65 & 2) != 0;
    sub_16304(v73, v70 + v71[7]);
    v75 = *sub_D084((v74 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns), *(v74 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns + 24));
    v76 = swift_task_alloc();
    v0[48] = v76;
    *v76 = v0;
    v76[1] = sub_7B324;
    v77 = v0[42];
    sub_D2C0();

    return sub_1567D0(v78);
  }
}

uint64_t sub_7B324()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 384);
  v10 = *v1;
  *(v3 + 392) = v5;
  *(v3 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_7B42C()
{
  sub_D2DC();
  v1 = v0[38];
  sub_3CF7C();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_7B4E0;
  v3 = v0[49];

  return sub_11A570();
}

uint64_t sub_7B4E0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 408);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7B5E8()
{
  sub_1696C();
  v1 = *(v0 + 336);

  sub_4BE38(v1);
  v2 = *(v0 + 400);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);

  sub_D37C();

  return v6();
}

uint64_t sub_7B674()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);

  sub_4BE38(v2);
  sub_D250((v0 + 56), v3);
  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);

  sub_D37C();

  return v7();
}

uint64_t sub_7B718()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);

  sub_4BE38(v2);
  v3 = *(v0 + 416);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);

  sub_D37C();

  return v7();
}

uint64_t sub_7B7AC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_7B7DC()
{
  v1 = v0[24];
  sub_10824(v0[25] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62F0, &unk_16D8C0);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000185C90;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[18] = 0xD000000000000098;
  v0[19] = 0x8000000000185BF0;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v58._countAndFlagsBits = 0xD00000000000002DLL;
    v58._object = 0x8000000000185C90;
    sub_16A744(v58);
    v10 = v53;
    v4 = v56;
  }

  else
  {
    v10 = 0xD00000000000002DLL;
  }

  v50 = v10;
  v0[22] = 63;
  v59._countAndFlagsBits = sub_16AE24();
  sub_16A744(v59);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v50, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x82uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v51, v52, v54, v57);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v55, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v55);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[25];
  if (*(v34[28] + 16) != 1 || (sub_3CF7C(), v35 = *sub_D084(v34 + 17, v34[20]), (sub_11B5C0() & 1) == 0))
  {
    v44 = v0[23];
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
    goto LABEL_18;
  }

  v36 = v0[24];
  sub_169094();
  sub_16A1B4();
  v38 = v37;

  if (!v38)
  {
    type metadata accessor for CarCommandsError();
    sub_7C70C();
    sub_7C578(v47, v48);
    sub_5A144();
    *v49 = 0xD00000000000002DLL;
    v49[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
LABEL_18:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v39 = v0[25];

  type metadata accessor for SignalStatusSnippetFactory();
  sub_3CF7C();
  sub_10824(v39 + 184, (v0 + 7));
  v40 = swift_task_alloc();
  v0[26] = v40;
  *v40 = v0;
  v40[1] = sub_7BC20;
  v41 = v0[23];
  sub_D2C0();

  return sub_127848();
}

uint64_t sub_7BC20()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 208);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 216) = v0;

  sub_D13C((v3 + 56));
  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_D37C();

    return v10();
  }
}

uint64_t sub_7BD44()
{
  v1 = *(v0 + 216);
  sub_D37C();
  return v2();
}

void sub_7BD68()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

uint64_t *sub_7BDA8()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_7BDF0()
{
  v0 = sub_7BDA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ActivateSignalHandleIntentFlowStrategy()
{
  result = qword_1E8B10;
  if (!qword_1E8B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7BEE4(uint64_t a1)
{
  result = sub_7C578(&qword_1E8D28, type metadata accessor for ActivateSignalHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_7BF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C0CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_7C18C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_7AC14();
}

uint64_t sub_7C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_7C3C8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_7B7AC(a1, a2);
}

uint64_t sub_7C474()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_44C00();
}

uint64_t sub_7C578(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_7C5C0(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SEActivateSignalIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2F8D0(v15, v2);
  v6 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = v10;
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SEActivateSignalIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

void sub_7C724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13._countAndFlagsBits = a11;
  v13._object = a12;

  sub_16A744(v13);
}

void sub_7C740(Swift::String a1)
{

  sub_16A744(a1);
}

void sub_7C764()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

void sub_7C784(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_7C7A4(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_15BC8(v5, v4, va);
}

uint64_t sub_7C7C4()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 249) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 248) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  v9 = *(*(sub_5758(&qword_1E5F78, &unk_16D400) - 8) + 64);
  *(v1 + 144) = sub_D3C8();
  v10 = sub_1691E4();
  *(v1 + 152) = v10;
  v11 = *(v10 - 8);
  *(v1 + 160) = v11;
  v12 = *(v11 + 64);
  *(v1 + 168) = sub_D3C8();
  v13 = sub_16A284();
  *(v1 + 176) = v13;
  v14 = *(v13 - 8);
  *(v1 + 184) = v14;
  v15 = *(v14 + 64);
  *(v1 + 192) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_7C908()
{
  v1 = *(v0 + 248);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v2 = *(v0 + 128);
    v3 = *(v0 + 249);
    v4 = *(v0 + 96);
    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 2uLL, 0xD000000000000091, 0x8000000000185D00, 0xD00000000000004CLL, 0x8000000000182B90, 30, 0xD000000000000044, 0x8000000000185E80);
    v7 = v2[4];
    sub_D084(v2, v2[3]);
    *(v0 + 80) = sub_16A2E4();
    *(v0 + 88) = sub_52248(&qword_1E7408, &type metadata accessor for CarCommandsToggleSnippetUpdateValue);
    sub_10888((v0 + 56));
    sub_16A2D4();
    sub_168F04();
    sub_D13C((v0 + 56));
    v8 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 144);

    sub_D37C();
    sub_7DDB4();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 2uLL, 0xD000000000000091, 0x8000000000185D00, 0xD00000000000004CLL, 0x8000000000182B90, 36, 0xD000000000000051, 0x8000000000185E20);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_7CBFC;
  v14 = *(v0 + 136);
  v15 = *(v0 + 249);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v19 = *(v0 + 248);
  sub_7DDB4();

  return sub_7D078(v20, v21, v22, v23, v24);
}

uint64_t sub_7CBFC()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 208) = v8;

  if (v0)
  {
    v9 = *(v3 + 192);
    v10 = *(v3 + 168);
    v11 = *(v3 + 144);

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v3 + 216) = v14;
    *v14 = v7;
    v14[1] = sub_7CD94;
    v15 = *(v3 + 192);
    v16 = *(v3 + 136);
    v17 = *(v3 + 249);
    v18 = *(v3 + 112);
    v19 = *(v3 + 120);
    v20 = *(v3 + 104);

    return sub_7D36C(v15, v20, v18, v19, v17);
  }
}

uint64_t sub_7CD94()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_7CE90()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  v9 = v8[3];
  v19 = v8[4];
  sub_D084(v8, v9);
  v0[5] = v5;
  v0[6] = sub_52248(&qword_1E7118, &type metadata accessor for CarCommandsSnippetsPluginModel);
  v10 = sub_10888(v0 + 2);
  (*(v2 + 16))(v10, v3, v5);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v11 = swift_allocObject();
  v0[29] = v11;
  *(v11 + 16) = xmmword_16D440;
  *(v11 + 32) = v1;
  v12 = sub_168E14();
  sub_5370(v7, 1, 1, v12);
  v13 = v1;
  sub_67D38();
  sub_D188(v7, &qword_1E5F78, &unk_16D400);
  v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_50DB8;
  v16 = v0[21];
  v17 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v11, v16, v9, v19);
}

uint64_t sub_7D078(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 169) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a2;
  *(v5 + 168) = a1;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v7 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_7D164, 0, 0);
}

uint64_t sub_7D164()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  if (*(v0 + 168) == 2)
  {
    type metadata accessor for CarCommandsGetLockStatusCATsSimple();
    sub_16A154();
    *(v0 + 120) = sub_52464();
    if (v1)
    {
      v3 = *(v0 + 104);
      v4 = *(v0 + 80);
      sub_99C94();
    }

    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = sub_16A0C4();
    v12 = sub_5243C();
    sub_5370(v12, v13, v14, v11);
    sub_16A6E4();
    sub_5370(v8, 0, 1, v11);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_51338;
    v16 = *(v0 + 96);
    v17 = *(v0 + 169);
    v18 = sub_5242C(*(v0 + 104));

    return sub_4E288(v18, v19, v20);
  }

  else
  {
    type metadata accessor for CarCommandsSetLockStatusCATsSimple();
    sub_16A154();
    *(v0 + 144) = sub_52464();
    if (v1)
    {
      v6 = *(v0 + 80);
      v5 = *(v0 + 88);
      sub_99C94();
    }

    v22 = *(v0 + 88);
    sub_16A0C4();
    v23 = sub_5243C();
    sub_5370(v23, v24, v25, v26);
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    *v27 = v0;
    v27[1] = sub_51528;
    v28 = *(v0 + 169);
    v29 = sub_5242C(*(v0 + 88));

    return sub_FD750(v29, v30);
  }
}

uint64_t sub_7D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 101) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_7D43C, 0, 0);
}

uint64_t sub_7D43C()
{
  sub_1696C();
  v1 = v0[7];
  v2 = v0[5];
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[8] = sub_52464();
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    sub_99C94();
  }

  v5 = v0[6];
  sub_16A0C4();
  v6 = sub_5243C();
  sub_5370(v6, v7, v8, v9);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_7D528;
  sub_5242C(v0[6]);

  return sub_DD72C();
}

uint64_t sub_7D528()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[6];
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v11 + 80) = v10;
  *(v11 + 88) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_7D678()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  *(v0 + 96) = 0;
  sub_16A134();
  *(v0 + 97) = 1;
  sub_16A134();
  *(v0 + 98) = 3;
  sub_16A134();
  *(v0 + 99) = 4;
  sub_16A134();
  *(v0 + 100) = 2;
  sub_16A134();
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);

    v5 = [v4 spokenPhrase];
    sub_16A664();

    v6 = *(v0 + 32);
  }

  else
  {
    v7 = *(v0 + 32);
  }

  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 16);
  v17 = *(v0 + 24);
  v16 = *(v0 + 101);
  sub_16A264();

  v12 = enum case for CarCommandsSnippetsPluginModel.lockStatusModel(_:);
  v13 = sub_16A284();
  (*(*(v13 - 8) + 104))(v11, v12, v13);

  sub_D37C();

  return v14();
}

uint64_t sub_7D848()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  v3 = *(*(sub_16A164() - 8) + 64);
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_7DA18()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (!v0)
  {
    v8 = v3[10];
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

void sub_7DB24()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v3[4];
  sub_D084(v3, v3[3]);
  sub_16A134();
  v0[5] = sub_16A354();
  v0[6] = sub_52248(&qword_1E7400, &type metadata accessor for CarCommandsToggleSnippetUpdateFailure);
  sub_10888(v0 + 2);
  sub_16A344();
  sub_168F04();
  v6 = v0[12];
  if (v2)
  {

    sub_D13C(v0 + 2);
    v7 = v0[9];
  }

  else
  {
    v9 = v0[9];

    sub_D13C(v0 + 2);
  }

  v8 = v0[1];
  sub_7DDB4();

  __asm { BRAA            X0, X16 }
}

_BYTE *storeEnumTagSinglePayload for LockStatusSnippetFactory.LockStatusSnippetParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x7DD7CLL);
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

uint64_t sub_7DDE4()
{
  v1 = *(v0 + 16);
  sub_16ACF4(37);

  v2 = v1;
  v3 = [v2 description];
  v4 = sub_16A664();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  sub_16A744(v13);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v7 = *(v0 + 16);
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0xD000000000000018, 0x8000000000185F90, 21, 0xD000000000000023, 0x8000000000185FB0);

  sub_16A544();
  [v7 trunkStatus];
  sub_16A534();
  sub_30AEC();

  return v10();
}

uint64_t sub_7DFAC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_612B8;

  return SESetTrunkStatusIntentHandler.resolveTrunkStatus(for:)(v6);
}

uint64_t SESetTrunkStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_7E080()
{
  v1 = v0[2];
  sub_16ACF4(33);

  v2 = v1;
  v3 = [v2 description];
  v4 = sub_16A664();
  v6 = v5;

  v16._countAndFlagsBits = v4;
  v16._object = v6;
  sub_16A744(v16);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v7 = v0[2];
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0xD000000000000014, 0x8000000000185FE0, 26, 0xD00000000000001FLL, 0x8000000000186000);

  v0[4] = [v7 carName];
  sub_3024C(dword_16DB68);
  v14 = v10;
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v12 = sub_615AC(v11);

  return v14(v12, 5);
}

uint64_t sub_7E290(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SESetTrunkStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SESetTrunkStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_7E368()
{
  v1 = *(v0 + 16);
  if (sub_32170())
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    v3 = sub_16A9A4();
    sub_386D8(v3, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0xD000000000000010, 0x8000000000186020, 33, 0xD000000000000057, 0x8000000000186040);
    sub_16A4F4();
    sub_16A4E4();
    sub_30AEC();

    return v4();
  }

  else
  {
    *(v0 + 32) = [*(v0 + 16) carName];
    sub_3024C(&unk_16DB60);
    v9 = v6;
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v8 = sub_615AC(v7);

    return v9(v8, 3, 0);
  }
}

uint64_t sub_7E524()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;
  *(v7 + 56) = v6;
  *(v7 + 48) = v8;

  return _swift_task_switch(sub_7E634, 0, 0);
}

uint64_t sub_7E634()
{
  sub_D2DC();
  v1 = *(v0 + 56);
  sub_16A4F4();
  if (v1 <= 5)
  {
    v2 = qword_170F98[v1];
  }

  v3 = *(v0 + 48);
  sub_16A4E4();
  sub_30AEC();

  return v4();
}

uint64_t sub_7E6D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SESetTrunkStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SESetTrunkStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_7E7B0()
{
  v1 = v0[2];
  if (sub_32170())
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    v3 = sub_16A9A4();
    sub_386D8(v3, 0x1000uLL, 0xD0000000000000B7, 0x8000000000185ED0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 54, 0xD000000000000057, 0x8000000000186040);
    sub_16A4F4();
    sub_16A4E4();
    sub_30AEC();

    return v4();
  }

  else
  {
    v6 = v0[2];
    v7 = sub_32170();
    v8 = [v6 carName];
    v0[4] = v8;
    sub_3024C(&unk_16DB58);
    v12 = v9;
    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    v10[1] = sub_7E988;
    v11 = v0[3];

    return v12(!v7, v8, 3);
  }
}

uint64_t sub_7E988()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;
  *(v7 + 56) = v6;
  *(v7 + 48) = v8;

  return _swift_task_switch(sub_7EA98, 0, 0);
}

uint64_t sub_7EA98()
{
  sub_D2DC();
  v1 = *(v0 + 56);
  sub_16A4F4();
  if (v1 <= 5)
  {
    v2 = qword_170FC8[v1];
  }

  v3 = *(v0 + 48);
  sub_16A4E4();
  sub_30AEC();

  return v4();
}

uint64_t sub_7EB3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SESetTrunkStatusIntentHandler.handle(intent:)(v6);
}

id SESetTrunkStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESetTrunkStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7ECAC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7ED3C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7EDCC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7EE5C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_7EF08(uint64_t a1)
{
  *(v2 + 552) = v1;
  *(v2 + 544) = a1;
  sub_10B4C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_7EF38()
{
  sub_10824(*(v0 + 544), v0 + 128);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E8E10, &qword_171098);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 168), v0 + 88);
    v1 = *sub_D084((v0 + 88), *(v0 + 112));
    v2 = sub_8ED6C();
    *(v0 + 672) = v2;
    if (v2 == 2)
    {
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v3 = *(v0 + 552);
      v4 = sub_16A584();
      sub_9DA0(v4, qword_1E65C0);
      sub_16A9A4();
      sub_807E8();
      sub_386D8(v5, v6, v7, v8, v9, v10, 23, v11, v22);
      v12 = *v3;
      v13 = swift_task_alloc();
      *(v0 + 656) = v13;
      *v13 = v0;
      sub_80814(v13);

      return sub_12F9C4();
    }

    else
    {
      v20 = *sub_D084((*(v0 + 552) + 8), *(*(v0 + 552) + 32));
      v21 = swift_task_alloc();
      *(v0 + 560) = v21;
      *v21 = v0;
      v21[1] = sub_7F2B4;

      return sub_13AB58(v0 + 248, 1);
    }
  }

  else
  {
    v15 = *(v0 + 544);
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0;
    sub_D188(v0 + 168, &qword_1E8E18, &unk_1710A0);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v17 = v16;
    sub_16ACF4(77);
    *(v0 + 528) = 0;
    *(v0 + 536) = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000016;
    v24._object = 0x8000000000184C00;
    sub_16A744(v24);
    sub_16AD84();
    v25._countAndFlagsBits = 0xD000000000000035;
    v25._object = 0x8000000000186240;
    sub_16A744(v25);
    v18 = *(v0 + 536);
    *v17 = *(v0 + 528);
    v17[1] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();

    return v19();
  }
}

uint64_t sub_7F2B4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 568) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_7F3AC()
{
  sub_D124((v0 + 248), v0 + 208);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_D084((v0 + 208), v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 576) = v5;
  *v5 = v0;
  v5[1] = sub_7F4E4;

  return v7(v0 + 368, v1, v2);
}

uint64_t sub_7F4E4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_7F5DC()
{
  v1 = **(v0 + 552);
  v2 = swift_task_alloc();
  *(v0 + 592) = v2;
  *v2 = v0;
  v3 = sub_80814(v2);

  return (sub_9A334)(v3);
}

uint64_t sub_7F684()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[51] = v1;
  v2[52] = v4;
  v2[53] = v0;
  sub_71940();
  v6 = *(v5 + 592);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_7F780()
{
  v1 = *(v0 + 392);
  if (!v1)
  {
    sub_D188(v0 + 368, &qword_1E83D0, &qword_174EE0);
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0;
    goto LABEL_10;
  }

  v2 = *(v0 + 400);
  sub_D084((v0 + 368), *(v0 + 392));
  (*(v2 + 32))(v1, v2);
  sub_D13C((v0 + 368));
  if (!*(v0 + 352))
  {
LABEL_10:
    sub_D188(v0 + 328, &qword_1E8E20, &unk_1710B0);
    goto LABEL_12;
  }

  sub_D124((v0 + 328), v0 + 288);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  sub_D084((v0 + 288), v3);
  if ((*(v4 + 32))(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    sub_D084((v0 + 288), v5);
    if ((*(v6 + 40))(v5, v6) >= 1)
    {
      v7 = *(v0 + 552);
      v8 = sub_D084((v7 + 48), *(v7 + 72));
      sub_5758(&qword_1E83E0, &unk_170410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D9A0;
      v10 = *(v0 + 312);
      v11 = *(v0 + 320);
      v12 = sub_D084((v0 + 288), v10);
      *(inited + 56) = v10;
      *(inited + 64) = *(v11 + 8);
      v13 = sub_10888((inited + 32));
      v14.n128_f64[0] = (*(*(v10 - 8) + 16))(v13, v12, v10);
      v15 = sub_948E4(inited, *v8, v14);
      swift_setDeallocating();
      sub_EFFF4();
      v16 = v15[2];

      if (v16)
      {
        v17 = *(v0 + 312);
        v18 = *(v0 + 320);
        v19 = *(v0 + 672);
        sub_D084((v0 + 288), v17);
        (*(v18 + 16))(v19 & 1, v17, v18);
        v20 = swift_task_alloc();
        *(v0 + 608) = v20;
        *v20 = v0;
        v20[1] = sub_7FC40;

        return sub_8045C();
      }

      else
      {
        v34 = *(v7 + 72);
        v35 = *(*(v0 + 552) + 80);
        sub_D084((v7 + 48), v34);
        v36 = *(v35 + 8);
        v37 = *(v36 + 40);
        v41 = (v37 + *v37);
        v38 = v37[1];
        v39 = swift_task_alloc();
        *(v0 + 624) = v39;
        *v39 = v0;
        v39[1] = sub_7FD9C;

        return v41(v34, v36);
      }
    }
  }

  sub_D13C((v0 + 288));
LABEL_12:
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v22 = *(v0 + 552);
  v23 = sub_16A584();
  sub_9DA0(v23, qword_1E65C0);
  sub_16A9A4();
  sub_807E8();
  sub_386D8(v24, v25, v26, v27, v28, v29, 40, v30, v40);
  v31 = *v22;
  v32 = swift_task_alloc();
  *(v0 + 640) = v32;
  *v32 = v0;
  v33 = sub_80814(v32);

  return (sub_12F9C4)(v33);
}

uint64_t sub_7FC40()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[54] = v1;
  v2[55] = v4;
  v2[56] = v0;
  sub_71940();
  v6 = *(v5 + 608);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_7FD3C()
{
  sub_D2DC();
  sub_80828();
  v1 = *(v0 + 440);
  sub_D13C((v0 + 88));
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_7FD9C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[57] = v1;
  v2[58] = v4;
  v2[59] = v0;
  sub_71940();
  v6 = *(v5 + 624);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 632) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_7FE98()
{
  sub_D2DC();
  sub_80828();
  v1 = *(v0 + 464);
  sub_D13C((v0 + 88));
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_7FEF8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[60] = v1;
  v2[61] = v4;
  v2[62] = v0;
  sub_71940();
  v6 = *(v5 + 640);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 648) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_7FFF4()
{
  sub_D2DC();
  sub_D13C(v0 + 26);
  v1 = v0[61];
  sub_D13C(v0 + 11);
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_80058()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[63] = v1;
  v2[64] = v4;
  v2[65] = v0;
  sub_71940();
  v6 = *(v5 + 656);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 664) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_80154()
{
  sub_D2DC();
  v1 = *(v0 + 512);
  sub_D13C((v0 + 88));
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_801B0()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 664);
  sub_D37C();

  return v2();
}

uint64_t sub_8020C()
{
  sub_D2DC();
  v1 = v0[71];

  v2 = v0[52];
  sub_D13C(v0 + 11);
  v3 = sub_302B8();

  return v4(v3);
}

uint64_t sub_80270()
{
  sub_D2DC();
  v1 = v0[71];

  sub_D13C(v0 + 11);
  v2 = v0[75];
  sub_D37C();

  return v3();
}

uint64_t sub_802D4()
{
  sub_D2DC();
  sub_D13C(v0 + 26);
  sub_D13C(v0 + 11);
  v1 = v0[81];
  sub_D37C();

  return v2();
}

uint64_t sub_80338()
{
  sub_D2DC();
  sub_D13C(v0 + 26);
  sub_D13C(v0 + 11);
  v1 = v0[73];
  sub_D37C();

  return v2();
}

uint64_t sub_8039C()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 632);
  sub_D37C();

  return v2();
}

uint64_t sub_803FC()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 616);
  sub_D37C();

  return v2();
}

uint64_t sub_8045C()
{
  sub_D2DC();
  *(v0 + 48) = v1;
  v2 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_804E4()
{
  sub_D2DC();
  v1 = *(v0 + 16);
  type metadata accessor for CarCommandsSetSteeringWheelTemperatureCATsSimple();
  sub_16A154();
  *(v0 + 24) = sub_16A0F4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_805A4;
  v3 = *(v0 + 48);

  return sub_C0B30(v3);
}

uint64_t sub_805A4(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  v6 = v4[4];
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  v5[5] = v1;

  if (v1)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v5[2];
    v12 = v5[3];

    v14 = *(v7 + 8);

    return v14(a1);
  }
}

uint64_t sub_806F0()
{
  sub_D2DC();
  v2 = v0[2];
  v1 = v0[3];

  sub_D37C();
  v4 = v0[5];

  return v3();
}

uint64_t sub_80754(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3E08C;

  return sub_7EF08(a1);
}

uint64_t sub_80814(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 552);
  return v2;
}

uint64_t sub_80828()
{
  sub_D13C((v0 + 208));

  return sub_D13C((v0 + 288));
}

uint64_t sub_808A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return sub_8527C((*a1 | (v4 << 8)) - 13);
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

      return sub_8527C((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_8527C(v8);
}

_BYTE *sub_80928(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x809E4);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80A18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_80AA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
        JUMPOUT(0x80B6CLL);
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80BC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
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
      return sub_8527C((*a1 | (v4 << 8)) - 3);
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

      return sub_8527C((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 3);
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

  return sub_8527C(v8);
}

_BYTE *sub_80C44(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x80D00);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80D4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_80DD4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
        JUMPOUT(0x80EA0);
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_80ED4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_80F5C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
        JUMPOUT(0x81028);
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsCannedActionNLv3Value(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_810E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x811B0);
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

uint64_t sub_81248()
{
  sub_85234();
  v2._rawValue = &off_1D0650;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

void sub_81288(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      return;
    case 2:
      sub_85284();
      break;
    case 4:
      sub_85304(17);
      break;
    case 5:
      sub_851E0();
      break;
    default:
      sub_375D8();
      break;
  }
}

uint64_t sub_81354()
{
  sub_85234();
  sub_16AE64();
  sub_852C4();
  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

void sub_8139C(char a1)
{
  switch(a1)
  {
    case 2:
    case 6:
      sub_852FC();
      break;
    case 3:
    case 7:
      sub_375D8();
      break;
    case 4:
      sub_85318(0x6C6261736964);
      break;
    case 11:
      sub_85258(0x75716572u);
      break;
    case 18:
      sub_852F4();
      break;
    case 20:
      sub_851E0();
      break;
    default:
      return;
  }
}

uint64_t sub_81600()
{
  sub_85234();
  v2._rawValue = &off_1D2380;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v1;
  }
}

void sub_81640(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 5:
      sub_375D8();
      break;
    case 3:
    case 4:
      sub_85304(23);
      break;
    default:
      return;
  }
}

uint64_t sub_81820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_81248();
  *a2 = result;
  return result;
}

void sub_81850()
{
  v1 = sub_85228();
  sub_81288(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_8188C()
{
  result = qword_1E8E38;
  if (!qword_1E8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E38);
  }

  return result;
}

uint64_t sub_81934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_81354();
  *a2 = result;
  return result;
}

void sub_81964()
{
  v1 = sub_85228();
  sub_8139C(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_819C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_81600();
  *a2 = result;
  return result;
}

void sub_819F0()
{
  v1 = sub_85228();
  sub_81640(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_81A28()
{
  v0 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_169AB4();
  v7 = sub_169AD4();
  if (sub_9E2C(v6, 1, v7) != 1)
  {
    sub_84718(v6, v4);
    v9 = *(v7 - 8);
    v10 = (*(v9 + 88))(v4, v7);
    if (v10 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_HD(_:))
    {
      v8 = 4;
      goto LABEL_13;
    }

    if (v10 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_XM(_:))
    {
      v8 = 2;
      goto LABEL_13;
    }

    if (v10 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_AM(_:))
    {
      v8 = 1;
      goto LABEL_13;
    }

    if (v10 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_FM(_:))
    {
      v8 = 0;
      goto LABEL_13;
    }

    if (v10 == enum case for UsoEntity_common_RadioBand.DefinedValues.common_RadioBand_DAB(_:))
    {
      v8 = 3;
      goto LABEL_13;
    }

    (*(v9 + 8))(v4, v7);
  }

  v8 = 5;
LABEL_13:
  sub_846B0(v6);
  return v8;
}

uint64_t sub_81C1C(char w0_0)
{
  sub_81C68(w0_0);
  sub_16A744(v2);

  return 46;
}

void sub_81C68(char a1)
{
  switch(a1)
  {
    case 8:
      sub_8520C();
      break;
    case 10:
    case 18:
    case 28:
      sub_852F4();
      break;
    case 19:
      sub_85318(0x6C69666F7270);
      break;
    case 20:
      sub_85240();
      break;
    case 22:
    case 23:
      sub_852FC();
      break;
    case 26:
      sub_85310(19);
      break;
    case 33:
      sub_851E0();
      break;
    default:
      return;
  }
}

uint64_t sub_82044()
{
  sub_85234();
  sub_16AE64();
  sub_852C4();
  if (v0 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_820B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82044();
  *a2 = result;
  return result;
}

void sub_820E0()
{
  v1 = sub_85228();
  sub_81C68(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_82120()
{
  sub_85234();
  sub_16AE64();
  sub_852C4();
  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

void sub_82168(char a1)
{
  switch(a1)
  {
    case 2:
    case 13:
      sub_375D8();
      break;
    case 6:
    case 9:
      sub_85284();
      break;
    case 17:
      sub_851E0();
      break;
    case 20:
      sub_852FC();
      break;
    case 25:
      sub_851F8();
      break;
    case 27:
      sub_8529C();
      break;
    default:
      return;
  }
}

uint64_t sub_824A4()
{
  sub_85234();
  v2._rawValue = &off_1D0F40;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_824E4(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = sub_8520C();
      break;
    case 2:
      result = sub_85240();
      break;
    case 3:
      result = sub_851E0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_8256C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82120();
  *a2 = result;
  return result;
}

void sub_8259C()
{
  v1 = sub_85228();
  sub_82168(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_825D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E51EC();
}

uint64_t sub_825F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_824A4();
  *a2 = result;
  return result;
}

uint64_t sub_82628()
{
  v1 = sub_85228();
  result = sub_824E4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_82664()
{
  result = qword_1E8E50;
  if (!qword_1E8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E50);
  }

  return result;
}

unint64_t sub_826EC()
{
  result = qword_1E8E68;
  if (!qword_1E8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E68);
  }

  return result;
}

uint64_t sub_82770(char a1)
{
  v2 = 0xE300000000000000;
  v3._countAndFlagsBits = 7105633;
  switch(a1)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3._countAndFlagsBits = 0x726576697264;
      break;
    case 2:
      v2 = 0xE900000000000072;
      v3._countAndFlagsBits = 0x65676E6573736170;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3._countAndFlagsBits = 0x746E6F7266;
      break;
    case 4:
      v3._countAndFlagsBits = 0x66654C746E6F7266;
      goto LABEL_10;
    case 5:
      v2 = 0xEA00000000007468;
      v3._countAndFlagsBits = 0x676952746E6F7266;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3._countAndFlagsBits = 0x7466654C72616572;
      break;
    case 7:
      v3._countAndFlagsBits = 0x6867695272616572;
LABEL_10:
      v2 = 0xE900000000000074;
      break;
    case 8:
      v2 = 0xE400000000000000;
      v3._countAndFlagsBits = 1918985586;
      break;
    case 9:
      v2 = 0xEC0000007466654CLL;
      goto LABEL_14;
    case 10:
      v2 = 0xED00007468676952;
      goto LABEL_14;
    case 11:
      v2 = 0xE800000000000000;
LABEL_14:
      v3._countAndFlagsBits = 0x776F526472696874;
      break;
    case 12:
      v2 = 0xE700000000000000;
      v3._countAndFlagsBits = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v3._object = v2;
  sub_16A744(v3);

  return 46;
}

void sub_8292C(char a1)
{
  switch(a1)
  {
    case 3:
      sub_8520C();
      break;
    case 4:
    case 7:
      sub_852F4();
      break;
    case 8:
      sub_85240();
      break;
    case 12:
      sub_851E0();
      break;
    default:
      return;
  }
}

uint64_t sub_82A84()
{
  sub_85234();
  v2._rawValue = &off_1D16E0;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_82AC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E4E6C();
}

uint64_t sub_82AE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82A84();
  *a2 = result;
  return result;
}

void sub_82B18()
{
  v1 = sub_85228();
  sub_8292C(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_82B58()
{
  sub_85234();
  v2._rawValue = &off_1D0700;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_82B98(char a1)
{
  result = 0x64656B636F6CLL;
  switch(a1)
  {
    case 1:
      v3 = 0x696873616C66;
      goto LABEL_9;
    case 2:
      result = 0x746E656C6973;
      break;
    case 3:
      v3 = 0x69646E756F73;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      result = 0x64656B636F6C6E75;
      break;
    case 5:
      result = 1802658160;
      break;
    case 6:
      result = sub_851E0();
      break;
    case 7:
      result = 0x61635F7075746573;
      break;
    case 8:
      result = 7827308;
      break;
    case 9:
      result = 1751607656;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = sub_851F8();
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_82D24()
{
  sub_85234();
  v2._rawValue = &off_1D1248;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_82D64(char a1)
{
  if (!a1)
  {
    return 0x6974616D6F747561;
  }

  if (a1 == 1)
  {
    return 0x6C61756E616DLL;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_82DC8(char a1)
{
  if (a1)
  {
    return 0x6564697374756FLL;
  }

  else
  {
    return 0x656469736E69;
  }
}

uint64_t sub_82DFC()
{
  sub_85234();
  v2._rawValue = &off_1D1060;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_82E3C(char a1)
{
  result = 1701011814;
  switch(a1)
  {
    case 1:
      result = 0x726F6F6C66;
      break;
    case 2:
      result = 0x46646E4165636166;
      break;
    case 3:
      result = 0x65696873646E6977;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_82EF0()
{
  sub_85234();
  v2._rawValue = &off_1D1148;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_82F30(char a1)
{
  result = 0x737569736C6563;
  switch(a1)
  {
    case 1:
      result = 0x6E69766C656BLL;
      break;
    case 2:
      result = 0x65686E6572686166;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_82FC8()
{
  sub_85234();
  v2._rawValue = &off_1D11C8;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83008(char a1)
{
  result = 0x7265646C6F63;
  switch(a1)
  {
    case 1:
      result = sub_85258(0x646C6F63u);
      break;
    case 2:
      result = 0x72656D726177;
      break;
    case 3:
      result = 0x7473656D726177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_83088(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_830D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82B58();
  *a2 = result;
  return result;
}

uint64_t sub_83104()
{
  v1 = sub_85228();
  result = sub_82B98(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_83140()
{
  result = qword_1E8E80;
  if (!qword_1E8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E80);
  }

  return result;
}

unint64_t sub_831C8()
{
  result = qword_1E8E98;
  if (!qword_1E8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8E98);
  }

  return result;
}

uint64_t sub_83270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82D24();
  *a2 = result;
  return result;
}

uint64_t sub_832A0()
{
  v1 = sub_85228();
  result = sub_82D64(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_832FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_83334()
{
  v1 = sub_85228();
  result = sub_82DC8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_8336C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E4CE0();
}

uint64_t sub_83390@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82DFC();
  *a2 = result;
  return result;
}

unint64_t sub_833C0()
{
  v1 = sub_85228();
  result = sub_82E3C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_8341C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82EF0();
  *a2 = result;
  return result;
}

unint64_t sub_8344C()
{
  v1 = sub_85228();
  result = sub_82F30(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_834A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_82FC8();
  *a2 = result;
  return result;
}

uint64_t sub_834D8()
{
  v1 = sub_85228();
  result = sub_83008(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_83524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_8355C()
{
  v1 = sub_85228();
  result = sub_83088(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_83584()
{
  sub_16ACF4(47);

  strcpy(v1, "temperature: ");
  sub_5758(&qword_1E8FD0, &qword_172260);
  v2._countAndFlagsBits = sub_852DC();
  sub_16A744(v2);

  v3._countAndFlagsBits = 0x203A74696E750ALL;
  v3._object = 0xE700000000000000;
  sub_16A744(v3);
  sub_5758(&qword_1E8FD8, &qword_172268);
  v4._countAndFlagsBits = sub_852DC();
  sub_85320(v4);

  v5._object = 0x8000000000186400;
  v5._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v5);
  sub_5758(&qword_1E8FE0, &qword_172270);
  v6._countAndFlagsBits = sub_852DC();
  sub_85320(v6);

  return v1[0];
}

uint64_t sub_836D8()
{
  sub_85234();
  v2._rawValue = &off_1D2758;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_83718(char a1)
{
  result = 0x726564756F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x7942726564756F6CLL;
      break;
    case 2:
      result = sub_85258(0x64756F6Cu);
      break;
    case 3:
      result = 0x72657465697571;
      break;
    case 4:
      result = sub_85310(16);
      break;
    case 5:
      result = 0x7473657465697571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_837E4()
{
  sub_85234();
  v2._rawValue = &off_1D2808;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83824(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 1769105779;
      break;
    case 2:
      result = sub_851F8();
      break;
    case 3:
      result = sub_852B0();
      break;
    case 4:
      result = 0x7265676E6972;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_8389C()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 4);
  return sub_83584();
}

uint64_t sub_838D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_836D8();
  *a2 = result;
  return result;
}

unint64_t sub_83904()
{
  v1 = sub_85228();
  result = sub_83718(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_8392C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E485C();
}

uint64_t sub_83950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_837E4();
  *a2 = result;
  return result;
}

uint64_t sub_83980()
{
  v1 = sub_85228();
  result = sub_83824(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_839A8()
{
  sub_16ACF4(46);

  sub_5758(&qword_1E8FB8, &qword_172248);
  v1._countAndFlagsBits = sub_852DC();
  sub_16A744(v1);

  v2._object = 0x80000000001863E0;
  v2._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v2);
  sub_5758(&qword_1E8FC0, &qword_172250);
  v3._countAndFlagsBits = sub_852DC();
  sub_85320(v3);

  v4._countAndFlagsBits = 0x766974616C65720ALL;
  v4._object = 0xED0000203A797469;
  sub_16A744(v4);
  sub_5758(&qword_1E8FC8, &qword_172258);
  v5._countAndFlagsBits = sub_852DC();
  sub_85320(v5);

  return 0x3A6C656E6E616863;
}

uint64_t sub_83AF8()
{
  sub_85234();
  v2._rawValue = &off_1D1960;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_83B38(char a1)
{
  result = 0xD000000000000024;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_83BDC()
{
  sub_85234();
  v2._rawValue = &off_1D12B0;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83C1C(char a1)
{
  result = 0x6563696F76;
  switch(a1)
  {
    case 1:
      result = sub_85310(21);
      break;
    case 2:
      result = sub_8529C();
      break;
    case 3:
      result = 0x656D756C6F76;
      break;
    case 4:
      result = 0x707954616964656DLL;
      break;
    case 5:
      result = sub_851E0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_83CD0()
{
  sub_85234();
  v2._rawValue = &off_1D1360;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83D10(char a1)
{
  if (!a1)
  {
    return sub_852B0();
  }

  if (a1 == 1)
  {
    return 0x656E6F687069;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_83D5C(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 1702131053;
  }
}

uint64_t sub_83D98()
{
  sub_85234();
  v3._rawValue = v2;
  v6._object = v0;
  sub_16ADE4(v3, v6);
  sub_852C4();
  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_83DDC(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x6C6F765F6C6C6163;
  }
}

uint64_t sub_83E1C()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  v3 = v0[17];
  v4 = *v0;
  return sub_839A8();
}

uint64_t sub_83E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83AF8();
  *a2 = result;
  return result;
}

unint64_t sub_83E90()
{
  v1 = sub_85228();
  result = sub_83B38(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_83EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83BDC();
  *a2 = result;
  return result;
}

uint64_t sub_83F1C()
{
  v1 = sub_85228();
  result = sub_83C1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_83F58()
{
  result = qword_1E8EB0;
  if (!qword_1E8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EB0);
  }

  return result;
}

uint64_t sub_83FDC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E3FC4();
}

uint64_t sub_84000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83CD0();
  *a2 = result;
  return result;
}

uint64_t sub_84030()
{
  v1 = sub_85228();
  result = sub_83D10(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_8408C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_840C4()
{
  v1 = sub_85228();
  result = sub_83D5C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_84100()
{
  result = qword_1E8EC8;
  if (!qword_1E8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EC8);
  }

  return result;
}

unint64_t sub_84188()
{
  result = qword_1E8EE0;
  if (!qword_1E8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EE0);
  }

  return result;
}

uint64_t sub_84230@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_84268()
{
  v1 = sub_85228();
  result = sub_83DDC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_842A4()
{
  result = qword_1E8EF8;
  if (!qword_1E8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8EF8);
  }

  return result;
}

unint64_t sub_8432C()
{
  result = qword_1E8F10;
  if (!qword_1E8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F10);
  }

  return result;
}

unint64_t sub_843B4()
{
  result = qword_1E8F28;
  if (!qword_1E8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F28);
  }

  return result;
}

unint64_t sub_8443C()
{
  result = qword_1E8F40;
  if (!qword_1E8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F40);
  }

  return result;
}

unint64_t sub_844C4()
{
  result = qword_1E8F58;
  if (!qword_1E8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F58);
  }

  return result;
}

unint64_t sub_8454C()
{
  result = qword_1E8F70;
  if (!qword_1E8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F70);
  }

  return result;
}

unint64_t sub_845D4()
{
  result = qword_1E8F88;
  if (!qword_1E8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8F88);
  }

  return result;
}

unint64_t sub_8465C()
{
  result = qword_1E8FA0;
  if (!qword_1E8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FA0);
  }

  return result;
}

uint64_t sub_846B0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_84718(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_84788(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_8479C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && a1[18])
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 5)
      {
        v4 = 5;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 6;
      if (v3 < 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_847E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_84838(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_8484C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 11))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 10);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 10);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_84898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_848FC()
{
  result = qword_1E8FB0;
  if (!qword_1E8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FB0);
  }

  return result;
}

uint64_t sub_84950(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_8527C((*a1 | (v4 << 8)) - 4);
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

      return sub_8527C((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_8527C(v8);
}

_BYTE *sub_849D4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84A90);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_84AC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
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
      return sub_8527C((*a1 | (v4 << 8)) - 6);
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

      return sub_8527C((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 6);
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

  return sub_8527C(v8);
}

_BYTE *sub_84B48(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84C04);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_84C38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
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
      return sub_8527C((*a1 | (v4 << 8)) - 5);
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

      return sub_8527C((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 5);
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

  return sub_8527C(v8);
}

_BYTE *sub_84CBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84D78);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_84DAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_8527C(-1);
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
      return sub_8527C((*a1 | (v4 << 8)) - 2);
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

      return sub_8527C((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_8527C((*a1 | (v4 << 8)) - 2);
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

  return sub_8527C(v8);
}

_BYTE *sub_84E30(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_85274(result, v6);
        break;
      case 2:
        result = sub_85264(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x84EECLL);
      case 4:
        result = sub_8526C(result, v6);
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
          result = sub_85250(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NLSettingsChange(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_84F34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_84F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_84FC4()
{
  result = qword_1E8FE8;
  if (!qword_1E8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FE8);
  }

  return result;
}

unint64_t sub_8501C()
{
  result = qword_1E8FF0;
  if (!qword_1E8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FF0);
  }

  return result;
}

unint64_t sub_85074()
{
  result = qword_1E8FF8;
  if (!qword_1E8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8FF8);
  }

  return result;
}

uint64_t sub_850F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_85150()
{
  result = qword_1E9010;
  if (!qword_1E9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9010);
  }

  return result;
}

uint64_t sub_852C4()
{
}

uint64_t sub_852DC()
{

  return sub_16A694();
}

void sub_85320(Swift::String a1)
{

  sub_16A744(a1);
}

void *sub_85338(char *a1, char a2)
{
  v3 = v2;
  v7 = type metadata accessor for CarCommandsError();
  v8 = sub_10AFC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_A138();
  v13 = (v12 - v11);
  if ((a2 & 0xF0) != 0x70)
  {
    LOBYTE(v47[0]) = a2;
    *v13 = sub_16A694();
    v13[1] = v16;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v13, v17);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v19 = sub_860CC();
    v26 = 19;
    goto LABEL_15;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v43);
  if (!v43[3])
  {
    sub_109A0(v43, &qword_1E5F80, &unk_16E7E0);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    goto LABEL_12;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&unk_1E9020, &qword_172608);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_12;
  }

  if (!*(&v45 + 1))
  {
LABEL_12:
    sub_109A0(&v44, &qword_1E9018, &qword_172600);
    v27 = sub_1693E4();
    sub_10AFC(v27);
    (*(v28 + 16))(v13, a1);
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v13, v29);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v30 = sub_16A584();
    sub_9DA0(v30, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v19 = sub_860CC();
    v26 = 25;
LABEL_15:
    sub_386D8(v19, v20, v21, v22, v23, v24, v26, v25, v42);

    sub_5A09C(v13);
    v31 = v2;
    return v3;
  }

  sub_D124(&v44, v47);
  v14 = sub_D084(v47, v47[3]);
  v15 = *v14;
  switch(a2 & 0xF)
  {
    case 1:
      sub_8E604();
      if (v39 || (sub_5BAF0(v3), v40))
      {
        v35 = sub_16A644();
      }

      else
      {
        v35 = 0;
      }

      [v3 setCallsign:v35];
      goto LABEL_32;
    case 2:
      sub_8E65C();
      if (v36 || (sub_11D80(v3), v37))
      {
        v35 = sub_16A644();
      }

      else
      {
        v35 = 0;
      }

      [v3 setChannel:v35];
      goto LABEL_32;
    case 3:
      v38 = sub_8E698();
      if (!v38)
      {
        v38 = [v3 frequency];
      }

      [v3 setFrequency:v38];

      break;
    case 4:
      sub_8E5EC();
      if (v33 || (sub_5BAE4(v3), v34))
      {
        v35 = sub_16A644();
      }

      else
      {
        v35 = 0;
      }

      [v3 setName:v35];
LABEL_32:

      break;
    default:
      [v3 setBand:sub_8E748(v14)];
      break;
  }

  v41 = v3;
  sub_D13C(v47);
  return v3;
}

id sub_857D4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CarCommandsError();
  v5 = sub_10AFC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v10 = (v9 - v8);
  if ((a2 & 0xF0) == 0x70)
  {
    switch(a2 & 0xF)
    {
      case 1:
        sub_86120();
        if (sub_860AC() || (sub_5BAF0(v28), v26))
        {
          v22 = sub_16A644();
        }

        else
        {
          v22 = 0;
        }

        [v28 setCallsign:v22];
        goto LABEL_29;
      case 2:
        sub_86120();
        if (sub_860AC() || (sub_11D80(v28), v23))
        {
          v22 = sub_16A644();
        }

        else
        {
          v22 = 0;
        }

        [v28 setChannel:v22];
        goto LABEL_29;
      case 3:
        sub_86120();
        sub_76D10();
        if (sub_860AC())
        {
          v19 = v28;
          v20 = v29;
        }

        else
        {
          v24 = [v28 frequency];
          v19 = v28;
          v20 = v24;
        }

        [v19 setFrequency:v20];

        break;
      case 4:
        sub_86120();
        if (sub_860AC() || (sub_5BAE4(v28), v21))
        {
          v22 = sub_16A644();
        }

        else
        {
          v22 = 0;
        }

        [v28 setName:v22];
LABEL_29:

        break;
      default:
        sub_86120();
        if (sub_860AC())
        {
          v12 = v28;
          v11 = v29;
        }

        else
        {
          v25 = [v28 band];
          v12 = v28;
          v11 = v25;
        }

        [v12 setBand:v11];
        break;
    }
  }

  else
  {
    *v10 = sub_16A694();
    v10[1] = v13;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v10, v14);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    swift_getErrorValue();
    v17 = sub_16AEB4();
    sub_386D8(v16, 0x800uLL, 0xD0000000000000A5, 0x8000000000186420, 0xD000000000000018, 0x8000000000183260, 48, v17, v18);

    sub_5A09C(v10);
  }

  return v28;
}

double sub_85BA4@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x70)
  {
    switch(a1 & 0xF)
    {
      case 1:
        v6 = sub_5BAF0(v2);
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      case 2:
        v6 = sub_11D80(v2);
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      case 3:
        v8 = [v2 frequency];
        if (!v8)
        {
          goto LABEL_12;
        }

        v9 = v8;
        *(a2 + 24) = sub_76D10();
        *a2 = v9;
        return result;
      case 4:
        v6 = sub_5BAE4(v2);
        if (!v7)
        {
          goto LABEL_12;
        }

LABEL_11:
        *(a2 + 24) = &type metadata for String;
        *a2 = v6;
        *(a2 + 8) = v7;
        break;
      default:
        v4 = [v2 band];
        *(a2 + 24) = &type metadata for IntentRadioBand;
        *a2 = v4;
        break;
    }
  }

  else
  {
LABEL_12:
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_85CAC(char *a1)
{
  v3 = type metadata accessor for CarCommandsError();
  v4 = sub_10AFC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_A138();
  v9 = v8 - v7;
  sub_86E4(a1, &_swiftEmptySetSingleton, v34);
  if (v34[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&unk_1E9020, &qword_172608);
    if (swift_dynamicCast())
    {
      if (*(&v36 + 1))
      {
        sub_D124(&v35, v38);
        v10 = [objc_allocWithZone(v1) init];
        sub_86100();
        v11 = v10;
        [v11 setBand:sub_8E748(v11)];
        v12 = sub_86100();
        v13 = sub_8E65C(v12);
        if (v14)
        {
          v15 = sub_16A644();
        }

        else
        {
          v15 = 0;
        }

        sub_86138(v13, "setChannel:");

        sub_86100();
        v24 = sub_8E604();
        if (v25)
        {
          v26 = sub_16A644();
        }

        else
        {
          v26 = 0;
        }

        sub_86138(v24, "setCallsign:");

        v27 = sub_86100();
        v28 = sub_8E698(v27);
        sub_86138(v28, "setFrequency:");

        sub_86100();
        v29 = sub_8E5EC();
        if (v30)
        {
          v31 = sub_16A644();
        }

        else
        {
          v31 = 0;
        }

        sub_86138(v29, "setName:");

        v32 = sub_1693E4();
        sub_10AFC(v32);
        (*(v33 + 8))(a1);
        sub_D13C(v38);
        return v11;
      }
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    sub_109A0(v34, &qword_1E5F80, &unk_16E7E0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_109A0(&v35, &qword_1E9018, &qword_172600);
  v16 = sub_1693E4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v9, a1, v16);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v9, v18);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  swift_getErrorValue();
  v21 = sub_16AEB4();
  sub_386D8(v20, 0x800uLL, 0xD0000000000000A5, 0x8000000000186420, 0x293A5F2874696E69, 0xE800000000000000, 88, v21, v22);

  (*(v17 + 8))(a1, v16);
  sub_5A09C(v9);
  return 0;
}

uint64_t sub_860AC()
{

  return swift_dynamicCast();
}

uint64_t *sub_86100()
{
  result = sub_D084((v0 - 128), *(v0 - 104));
  v2 = *result;
  return result;
}

uint64_t sub_86120()
{

  return sub_16138(v0, v1 - 128);
}

id sub_86138(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t SEActivateSignalIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_86164()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484(dword_16DB40);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 2);
}

uint64_t sub_86234(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEActivateSignalIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_8630C()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = *(v0 + 16);
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x20080uLL, 0xD0000000000000B7, 0x80000000001864D0, 0xD000000000000016, 0x8000000000183640, 23, 0xD000000000000015, 0x8000000000183660);
  v4 = [objc_opt_self() successWithResolvedCarSignalOptions:{objc_msgSend(v1, "signals")}];
  sub_30AEC();

  return v5();
}

uint64_t SEActivateSignalIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_86460()
{
  if ([*(v0 + 16) signals] == &dword_0 + 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    v2 = sub_16A9A4();
    sub_386D8(v2, 0x20080uLL, 0xD0000000000000B7, 0x80000000001864D0, 0xD000000000000010, 0x8000000000186020, 29, 0xD00000000000002CLL, 0x8000000000186590);
    [objc_allocWithZone(INActivateCarSignalIntentResponse) initWithCode:4 userActivity:0];
    sub_30AEC();

    return v3();
  }

  else
  {
    *(v0 + 32) = [*(v0 + 16) carName];
    v5 = sub_37484(&unk_16DB38);
    *(v0 + 40) = v5;
    *v5 = v0;
    v6 = sub_615AC(v5);

    return v7(v6, 0, 0);
  }
}

uint64_t sub_86628()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;
  *(v7 + 56) = v6;
  *(v7 + 48) = v8;

  return _swift_task_switch(sub_86738, 0, 0);
}

uint64_t sub_867F4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEActivateSignalIntentHandler.confirm(intent:)(v6);
}

uint64_t SEActivateSignalIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_868CC()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484(&unk_16DB30);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_8698C;
  v3 = *(v0 + 48);

  return v5(1, v1, 0);
}

uint64_t sub_8698C()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 72) = v8;

  return _swift_task_switch(sub_86AA4, 0, 0);
}

uint64_t sub_86B60(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEActivateSignalIntentHandler.handle(intent:)(v6);
}

id SEActivateSignalIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEActivateSignalIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_86CD0()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_86D68()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_86E00()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_86EA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_86EC4, 0, 0);
}

uint64_t sub_86EC4()
{
  sub_D2DC();
  v1 = v0[4];
  v0[5] = (*(v0[3] + 8))(v0[2]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_86F70;

  return sub_E0B3C();
}

uint64_t sub_86F70()
{
  sub_1696C();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_870C4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_870C4()
{
  sub_D2DC();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_8713C()
{
  v0 = sub_16A164();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  return sub_16A0F4();
}

uint64_t sub_871C0()
{
  sub_1696C();
  sub_879D0();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_879BC(v1);

  return sub_86EA0(v3, v4);
}

uint64_t sub_87250()
{
  sub_D2DC();
  sub_87998(&unk_179C90);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_872D4()
{
  sub_D2DC();
  sub_87998(&unk_179C98);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_8735C()
{
  sub_D2DC();
  sub_87998(&unk_179CB8);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_873E0()
{
  sub_D2DC();
  sub_87998(dword_179CC0);
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = sub_31500(v2);
  *v3 = v4;
  v3[1] = sub_87994;

  return v6(v1);
}

uint64_t sub_87474()
{
  sub_D2DC();
  sub_87998(&unk_179CB0);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_874F8()
{
  sub_D2DC();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  v6 = *(v8 + 8);
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t sub_875F4()
{
  sub_D2DC();
  sub_87998(&unk_179C88);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87678()
{
  sub_D2DC();
  sub_87998(&unk_179CA8);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_876FC()
{
  sub_D2DC();
  sub_87998(&unk_179C20);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87780()
{
  sub_D2DC();
  sub_87998(&unk_179CA0);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87804()
{
  sub_D2DC();
  sub_87998(&unk_179C70);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87888()
{
  sub_D2DC();
  sub_87998(&unk_179C78);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_8790C()
{
  sub_D2DC();
  sub_87998(&unk_179C80);
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v10 = sub_879AC(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_87998@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

__n128 sub_879DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_879F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_87A30(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_87A8C()
{
  *(v1 + 128) = v0;
  sub_10B4C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_87AB8()
{
  sub_D2DC();
  v1 = *sub_D084((*(v0 + 128) + 8), *(*(v0 + 128) + 32));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_87B60;

  return sub_13AB58(v0 + 16, 5);
}

uint64_t sub_87B60()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[19] = v12;
    *v12 = v7;
    v12[1] = sub_87CBC;
    v13 = v3[16];

    return sub_882B0();
  }
}

uint64_t sub_87CBC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_87DC0()
{
  v2 = v1[18];
  sub_890A0();
  sub_890C4(v3, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v24, v25);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x8000000000186790;
  sub_16A744(v27);
  v1[15] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v11 = *v0;
  v12 = v1[14];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = v1[16];
  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_89068(v15);

  sub_89054(&unk_172F80);
  v16 = *v13;
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v18 = sub_89024(v17);

  return v19(v18);
}

uint64_t sub_87F24()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 64);
  sub_30AEC();

  return v2();
}

uint64_t sub_87F84()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 184) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_88088()
{
  sub_D2DC();
  v1 = *(v0 + 168);

  v2 = *(v0 + 88);
  sub_30AEC();

  return v3();
}

uint64_t sub_880E8()
{
  sub_D13C(v1 + 2);
  v2 = v1[20];
  sub_890A0();
  sub_890C4(v3, v4, v5, v6, v7, v8, v9, v10, v21, v22, v23, v24, v25);
  v27._countAndFlagsBits = 0xD000000000000019;
  v27._object = 0x8000000000186790;
  sub_16A744(v27);
  v1[15] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v11 = *v0;
  v12 = v1[14];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = v1[16];
  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_89068(v15);

  sub_89054(&unk_172F80);
  v16 = *v13;
  v17 = swift_task_alloc();
  v1[22] = v17;
  *v17 = v1;
  v18 = sub_89024(v17);

  return v19(v18);
}

uint64_t sub_88254()
{
  sub_D2DC();
  v1 = *(v0 + 168);

  sub_D37C();
  v3 = *(v0 + 184);

  return v2();
}

uint64_t sub_882B0()
{
  sub_D2DC();
  v1[15] = v2;
  v1[16] = v0;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_88338()
{
  v1 = *(v0 + 120);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_88464;

  return v8(v0 + 56, v2, v3);
}

uint64_t sub_88464()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_88560()
{
  if (*(v0 + 80))
  {
    sub_D124((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_D084((v0 + 16), v1);
    v3 = *(v2 + 8);
    v14 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_887C4;

    return v14(v1, v2);
  }

  else
  {
    sub_88FBC(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = *(v0 + 128);
    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x10000000uLL, 0xD00000000000007DLL, 0x8000000000186710, 0xD00000000000001CLL, 0x80000000001867B0, 30, 0xD000000000000022, 0x80000000001867D0);
    sub_89054(&unk_179C10);
    v10 = *v7;
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_88C60;
    v12 = *(v0 + 128);

    return v13(v10);
  }
}

uint64_t sub_887C4(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v5 + 168) = v1;

  if (!v1)
  {
    *(v5 + 176) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_888D8()
{
  v1 = v0;
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v13 = sub_E65F4(0, v2);
  v4 = sub_E65F4(1u, v2);
  v5 = sub_E65F4(2u, v2);
  v6 = sub_E65F4(3u, v2);
  v7 = sub_15B2C(v2) == 1;
  v8 = sub_15B2C(v2) == 2;
  v9 = sub_15B2C(v2) == 3;
  v10 = *(v2 + 16);

  type metadata accessor for CarCommandsGetDoorLockStatusCATsSimple();
  sub_16A154();
  *(v1 + 184) = sub_16A0F4();
  v11 = swift_task_alloc();
  *(v1 + 192) = v11;
  *v11 = v1;
  v11[1] = sub_88A7C;

  return sub_DB30C(v13, v4, v5, v6, v7, v8, v9, COERCE__INT64(v10));
}

uint64_t sub_88A7C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  v7 = *(v6 + 192);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  v3[25] = v0;

  if (!v0)
  {
    v10 = v3[23];
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_88B88()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[13];
  v2 = v0[17];

  sub_30AEC();

  return v3(v1);
}

uint64_t sub_88BF4()
{
  sub_D2DC();
  v1 = v0[23];

  sub_D13C(v0 + 2);
  v2 = v0[25];
  v3 = v0[17];

  sub_D37C();

  return v4();
}

uint64_t sub_88C60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  sub_D254();
  *v7 = v6;

  v8 = *(v4 + 136);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_88D84()
{
  sub_D2DC();
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  sub_D37C();

  return v3();
}

uint64_t sub_88DE0()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[21];
  v2 = v0[17];

  sub_D37C();

  return v3();
}

uint64_t sub_88E44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_88ED0;

  return sub_87A8C();
}

uint64_t sub_88ED0()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_D254();
  *v7 = v6;

  sub_30AEC();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_88FBC(uint64_t a1)
{
  v2 = sub_5758(&qword_1E90C0, &qword_172870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_89024(uint64_t a1)
{
  *(a1 + 8) = sub_87F84;
  v3 = *(v2 + 128);
  return v1;
}

uint64_t sub_89054@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void sub_89068(os_log_type_t a1)
{

  sub_386D8(a1, 0x10000000uLL, v3 + 107, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 23, v2, v1);
}

void sub_890A0()
{
  *(v1 + 168) = v0;

  sub_16ACF4(27);
}

uint64_t sub_890D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D2968;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_89124(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 0x697461676976616ELL;
      break;
    case 2:
      result = 1769105779;
      break;
    case 3:
      result = 0x656E6F6870;
      break;
    case 4:
      result = 0x7265676E6972;
      break;
    case 5:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_891D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E3938();
}

uint64_t sub_891F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_890D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_89228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_89124(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for VolumeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VolumeType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x893A8);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_893E4()
{
  result = qword_1E90C8;
  if (!qword_1E90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E90C8);
  }

  return result;
}

uint64_t sub_89438()
{
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v1)
  {
    return 28;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);

  v4 = sub_1023F8();
  v5 = sub_102188();
  switch(v4)
  {
    case 0:
      if (!v5)
      {
        if (sub_1045B0())
        {
          goto LABEL_74;
        }

        goto LABEL_182;
      }

      if (v5 != 1)
      {
        goto LABEL_182;
      }

      if (sub_1005E4())
      {
        goto LABEL_65;
      }

      if (sub_1039E8())
      {
        goto LABEL_95;
      }

      if (sub_104604() & 1) != 0 || (sub_1045B0())
      {
        goto LABEL_74;
      }

      if (sub_10468C())
      {
        goto LABEL_114;
      }

      v14 = sub_104B2C();
      sub_93E98(v14);
      sub_614D8();

      if (v0 & 1) != 0 && (sub_102714())
      {
        goto LABEL_97;
      }

      goto LABEL_141;
    case 1:
      sub_93ED0();
      if (!v9)
      {
        goto LABEL_182;
      }

      v15 = sub_103570();
      if (sub_82B98(v15) == 0x61635F7075746573 && v16 == 0xED000079616C7072)
      {

        return 25;
      }

      sub_16AE54();
      sub_93EF4();
      v25 = sub_1046F0();
      if (v25)
      {
LABEL_38:

        return 15;
      }

      if (sub_1005E4())
      {
        goto LABEL_76;
      }

      if (sub_100678())
      {
        goto LABEL_99;
      }

      if (sub_10454C() & 1) != 0 || (sub_10468C())
      {
        sub_82B98(*(v1 + 121));
        sub_93F64();
        if (v9 && v26 == 0xE600000000000000)
        {
        }

        else
        {
          sub_375CC();
          v28 = sub_93E2C();

          if ((v28 & 1) == 0)
          {

            return 2;
          }
        }
      }

      if (sub_10468C())
      {
        sub_82B98(*(v1 + 121));
        sub_93F64();
        if (v9 && v37 == 0xE600000000000000)
        {
        }

        else
        {
          sub_375CC();
          sub_93E2C();
          sub_93EF4();
LABEL_90:
        }

        return 4;
      }

      else
      {
        v39 = sub_104B2C();
        sub_93E98(v39);
        sub_93EF4();
        sub_82B98(*(v1 + 121));
        sub_93F64();
        if (v9 && v40 == 0xE800000000000000)
        {
        }

        else
        {
          sub_375CC();
          sub_93FA0();
          sub_93EF4();
        }

        return 5;
      }

    case 2:
    case 6:
      sub_93ED0();
      if (!v9)
      {
        goto LABEL_182;
      }

      if (sub_1046F0())
      {
        goto LABEL_38;
      }

      sub_104B2C();
      sub_93FD0();
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      v7 = sub_103A44();
      sub_82168(v7);
      sub_93B6C();
      v9 = v9 && v8 == 0xE800000000000000;
      if (v9)
      {
        goto LABEL_167;
      }

      sub_93BC4();
      sub_93FA0();
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      sub_106D20();
      sub_93BE0();
      if (!v9)
      {
        goto LABEL_6;
      }

      sub_93E8C();
      sub_82168(*(v1 + 126));
      sub_93AEC();
      if (v9 && v11 == v10)
      {

        return 11;
      }

      sub_93BF8();
      sub_614D8();

      if ((v0 & 1) == 0 && !sub_100794())
      {
        goto LABEL_126;
      }

      goto LABEL_6;
    case 3:
    case 7:
    case 14:
      sub_93ED0();
      if (v9)
      {
        sub_106D20();
        sub_93BE0();
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_182;
    case 4:
      sub_93ED0();
      if (!v9)
      {
        goto LABEL_182;
      }

      if (sub_1046F0())
      {
        goto LABEL_38;
      }

      if (sub_100678())
      {
        goto LABEL_99;
      }

      if (sub_10468C())
      {
        goto LABEL_90;
      }

      if (sub_10454C())
      {
        goto LABEL_122;
      }

      v29 = sub_104B2C();
      sub_96E4(23, v29);
      sub_614D8();

      if (v2)
      {

        return 14;
      }

      sub_93EDC();
      sub_96E4(22, v29);
      sub_614D8();

      if (sub_1051FC())
      {
        goto LABEL_116;
      }

      if (sub_10549C())
      {
        goto LABEL_122;
      }

      sub_93EDC();
      sub_93FD0();
      sub_614D8();

      if (v2)
      {
        goto LABEL_31;
      }

      v33 = sub_103A44();
      sub_82168(v33);
      sub_93B6C();
      if (v9 && v34 == 0xE800000000000000)
      {
LABEL_167:

        return 22;
      }

      sub_93BC4();
      sub_93FA0();
      sub_614D8();

      if (v2)
      {
LABEL_31:

        return 22;
      }

      sub_93EDC();
      sub_93FD0();
      sub_614D8();

      v36 = v1;
      if (sub_100794() && (v36 = v1, sub_106D20(), sub_93BE0(), v9) || (sub_93EDC(), sub_96E4(6, v36), sub_614D8(), , (v2 & 1) != 0))
      {
LABEL_131:

        return 9;
      }

LABEL_138:
      if (sub_105174())
      {

        return 12;
      }

      if (sub_107140())
      {

        return 20;
      }

      v42 = sub_1043C0();
      if (!v42)
      {

        return 19;
      }

      if (v42 == 1)
      {
        sub_93F2C();
      }

      else
      {
        sub_93B08();
      }

      sub_93C44();
      sub_93FE8();
      sub_614D8();

      if (v2)
      {

        return 19;
      }

LABEL_182:
      v43 = sub_8B2B8();

      if (v43)
      {
        return 27;
      }

      else
      {
        return 28;
      }

    case 9:
      if (v5 != 3 || (sub_104BF4() & 1) == 0)
      {
        goto LABEL_182;
      }

      return 25;
    case 10:
      if (v5 != 2)
      {
        goto LABEL_182;
      }

      if (sub_106B74() & 1) != 0 || (sub_106B94())
      {
        goto LABEL_70;
      }

      sub_106080();

      return 23;
    case 12:
      v13 = v5;
      goto LABEL_67;
    case 13:
      sub_93ED0();
      if (!v9)
      {
LABEL_67:
        if (v13 == 2 && ((sub_106B74() & 1) != 0 || (sub_106B94() & 1) != 0))
        {
LABEL_70:

          return 8;
        }

        goto LABEL_182;
      }

      if (sub_1005E4())
      {
LABEL_76:

        return 1;
      }

      if (sub_100678())
      {
LABEL_99:

        return 7;
      }

      if (sub_1051FC())
      {
LABEL_116:

        return 17;
      }

      if (sub_10549C())
      {
LABEL_122:

        return 27;
      }

      if (sub_100794())
      {
        sub_106D20();
        sub_93BE0();
        if (v9)
        {
          goto LABEL_131;
        }
      }

      sub_106D20();
      sub_93BE0();
      if (!v9)
      {
        sub_106D20();
        if ((v30 & 0xFF0000) == 0x20000 || (v30 & 0xFF0000) == 0x30000)
        {
          goto LABEL_6;
        }
      }

      sub_106D20();
      sub_93BE0();
      if (!v9)
      {
        sub_106D20();
        if ((v31 & 0xFE0000) != 0x20000)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_138;
    case 15:
      sub_93ED0();
      if (!v9)
      {
        goto LABEL_182;
      }

      sub_104B2C();
      sub_93FD0();
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      v18 = sub_103A44();
      sub_82168(v18);
      sub_93B6C();
      if (v9 && v19 == 0xE800000000000000)
      {
        goto LABEL_167;
      }

      sub_93BC4();
      sub_93FA0();
      sub_614D8();

      if (v0)
      {
        goto LABEL_31;
      }

      sub_93E8C();
      sub_82168(*(v1 + 126));
      sub_93AEC();
      if (v9 && v22 == v21)
      {
      }

      else
      {
        sub_93BF8();
        sub_614D8();

        if ((v0 & 1) == 0)
        {
          goto LABEL_126;
        }
      }

      sub_106D20();
      sub_93BE0();
      if (!v9)
      {
LABEL_6:

        return 11;
      }

LABEL_126:
      sub_100914();
      sub_93C14();
      if (v9)
      {
        goto LABEL_182;
      }

      return 18;
    case 16:
    case 17:

      return 24;
    case 18:
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_182;
        }

        if (sub_1005E4())
        {
LABEL_65:

          return 0;
        }

        if (sub_1039E8())
        {
LABEL_95:

          return 3;
        }

        if ((sub_104604() & 1) == 0 && (sub_1045B0() & 1) == 0)
        {
          if (sub_10468C())
          {
LABEL_114:

            return 6;
          }

          v32 = sub_104B2C();
          sub_93E98(v32);
          sub_614D8();

          if ((v0 & 1) == 0)
          {
LABEL_141:
            if (sub_100794())
            {

              return 10;
            }

            goto LABEL_182;
          }

          goto LABEL_97;
        }
      }

      else if ((sub_1045B0() & 1) == 0)
      {
        v24 = sub_104B2C();
        sub_93E98(v24);
        sub_614D8();

        if ((v0 & 1) == 0)
        {
          goto LABEL_182;
        }

LABEL_97:

        return 13;
      }

LABEL_74:

      return 16;
    default:
      goto LABEL_182;
  }
}