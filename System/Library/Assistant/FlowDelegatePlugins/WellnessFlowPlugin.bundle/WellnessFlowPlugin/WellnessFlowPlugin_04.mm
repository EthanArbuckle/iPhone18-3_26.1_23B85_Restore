uint64_t sub_60CFC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_60D40()
{
  v1 = *(*(sub_2440(&qword_1C57E0, &unk_171C60) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_60DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_16E6BC() & 1;
  }
}

uint64_t sub_60E08()
{
  sub_16D26C();
  sub_61038();
  return sub_16E19C() & 1;
}

BOOL sub_60E68(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_60F18(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_16D26C() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

unint64_t sub_61038()
{
  result = qword_1C6C78;
  if (!qword_1C6C78)
  {
    sub_16D26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6C78);
  }

  return result;
}

uint64_t sub_610C8()
{

  return sub_16E6BC();
}

uint64_t sub_61114@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

void sub_61120(uint64_t a1@<X8>)
{
  v2 = sub_16BFAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_16BE6C(v8);
  v10 = v9;
  [v7 setPunchOutUri:v9];

  v11 = v7;
  sub_16BF9C();
  v12 = sub_16BF6C();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  sub_613B8(v12, v14, v11);

  v15 = [v11 dictionary];
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v29 = 0;
    v18 = [v17 dataWithPropertyList:v16 format:200 options:0 error:&v29];
    v19 = v29;
    if (v18)
    {
      v20 = sub_16BEBC();
      v22 = v21;

      sub_16BEAC(0);
      sub_16E23C();

      sub_6141C(v20, v22);

      v23 = sub_16D5CC();
      v24 = a1;
      v25 = 0;
    }

    else
    {
      v27 = v19;
      sub_16BE3C();

      swift_willThrow();

      v23 = sub_16D5CC();
      v24 = a1;
      v25 = 1;
    }

    sub_214C(v24, v25, 1, v23);
  }

  else
  {
    v26 = sub_16D5CC();
    sub_214C(a1, 1, 1, v26);
  }
}

void sub_613B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();

  [a3 setAceId:v4];
}

uint64_t sub_6141C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_61474(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 177) = a3;
  *(v6 + 16) = a2;
  *(v6 + 176) = a1;
  v7 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64) + 15;
  *(v6 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_6151C, 0, 0);
}

uint64_t sub_6151C()
{
  sub_5E06C();
  sub_C9EC();
  v1 = *(v0 + 176);
  if ((v1 - 159) > 0x1E)
  {
    goto LABEL_2;
  }

  if (((1 << (v1 + 97)) & 0x42008801) != 0)
  {
LABEL_11:
    if (qword_1C55B8 != -1)
    {
      sub_62684();
      LOBYTE(v1) = *(v0 + 176);
    }

    v6 = *(v0 + 40);
    v7 = *(v0 + 177);
    *(v0 + 48) = qword_1D7168;
    sub_208C0(v1);

    sub_16E23C();

    v8 = sub_16D5CC();
    sub_214C(v6, 0, 1, v8);
    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_61BAC;
    v10 = *(v0 + 40);
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    sub_38F74();

    return sub_1654B0();
  }

  if (v1 == 162)
  {
    if (qword_1C55B8 != -1)
    {
      sub_62684();
    }

    *(v0 + 144) = qword_1D7168;

    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    *v29 = v0;
    v29[1] = sub_622EC;
    v30 = *(v0 + 24);
    v31 = *(v0 + 32);
    sub_38F74();

    return sub_165CBC();
  }

  else
  {
    if (v1 != 173)
    {
LABEL_2:
      if ((v1 - 89) > 0x12)
      {
LABEL_16:
        switch(*(v0 + 176))
        {
          case 0x93:
            if (qword_1C55B8 != -1)
            {
              sub_62684();
            }

            v14 = *(v0 + 177);
            *(v0 + 80) = qword_1D7168;

            v15 = swift_task_alloc();
            *(v0 + 88) = v15;
            *v15 = v0;
            sub_626A4(v15);
            sub_38F74();

            result = sub_164CF0();
            break;
          case 0x96:
            if (qword_1C55B8 != -1)
            {
              sub_62684();
            }

            v23 = *(v0 + 177);
            *(v0 + 96) = qword_1D7168;

            v24 = swift_task_alloc();
            *(v0 + 104) = v24;
            *v24 = v0;
            sub_626A4(v24);
            sub_38F74();

            result = sub_164EE0();
            break;
          case 0x97:
            if (qword_1C55B8 != -1)
            {
              sub_62684();
            }

            v26 = *(v0 + 177);
            *(v0 + 112) = qword_1D7168;

            v27 = swift_task_alloc();
            *(v0 + 120) = v27;
            *v27 = v0;
            sub_626A4(v27);
            sub_38F74();

            result = sub_1650D0();
            break;
          case 0x9B:
            if (qword_1C55B8 != -1)
            {
              sub_62684();
            }

            v20 = *(v0 + 177);
            *(v0 + 128) = qword_1D7168;

            v21 = swift_task_alloc();
            *(v0 + 136) = v21;
            *v21 = v0;
            sub_626A4(v21);
            sub_38F74();

            result = sub_1652C0();
            break;
          default:
            v33 = *(v0 + 40);

            v34 = *(v0 + 8);
            sub_38F74();

            result = v37(v35, v36, v37, v38, v39, v40, v41, v42);
            break;
        }

        return result;
      }

      if (((1 << (v1 - 89)) & 0x44181) == 0)
      {
        if (v1 == 105)
        {
          if (qword_1C55B8 != -1)
          {
            sub_62684();
          }

          v2 = *(v0 + 177);
          *(v0 + 64) = qword_1D7168;

          v3 = swift_task_alloc();
          *(v0 + 72) = v3;
          *v3 = v0;
          sub_626A4(v3);
          sub_38F74();

          return sub_1685BC();
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (qword_1C55B8 != -1)
    {
      sub_62684();
    }

    v17 = *(v0 + 177);
    *(v0 + 160) = qword_1D7168;

    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    sub_626A4(v18);
    sub_38F74();

    return sub_16727C();
  }
}

uint64_t sub_61BAC()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = v4[7];
  v8 = *v1;
  *v6 = *v1;

  v9 = v4[6];
  v10 = v4[5];
  if (v0)
  {

    sub_6261C(v10);

    return _swift_task_switch(sub_6252C, 0, 0);
  }

  else
  {
    sub_6261C(v10);

    v11 = v5[5];

    v12 = v8[1];

    return v12(v3);
  }
}

uint64_t sub_61D4C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  v3 = v2;
  sub_C990();
  *v4 = v2;
  v5 = *(v2 + 72);
  *v4 = *v1;

  sub_5DA54();
  v7 = *(v6 + 64);
  if (v0)
  {
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = *(v3 + 40);

  sub_626BC();
  sub_38F74();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_61E6C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  v3 = v2;
  sub_C990();
  *v4 = v2;
  v5 = *(v2 + 88);
  *v4 = *v1;

  sub_5DA54();
  v7 = *(v6 + 80);
  if (v0)
  {
  }

  else
  {
    v8 = *(v6 + 80);
  }

  v9 = *(v3 + 40);

  sub_626BC();
  sub_38F74();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_61F8C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  v3 = v2;
  sub_C990();
  *v4 = v2;
  v5 = *(v2 + 104);
  *v4 = *v1;

  sub_5DA54();
  v7 = *(v6 + 96);
  if (v0)
  {
  }

  else
  {
    v8 = *(v6 + 96);
  }

  v9 = *(v3 + 40);

  sub_626BC();
  sub_38F74();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_620AC()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  v3 = v2;
  sub_C990();
  *v4 = v2;
  v5 = *(v2 + 120);
  *v4 = *v1;

  sub_5DA54();
  v7 = *(v6 + 112);
  if (v0)
  {
  }

  else
  {
    v8 = *(v6 + 112);
  }

  v9 = *(v3 + 40);

  sub_626BC();
  sub_38F74();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_621CC()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  v3 = v2;
  sub_C990();
  *v4 = v2;
  v5 = *(v2 + 136);
  *v4 = *v1;

  sub_5DA54();
  v7 = *(v6 + 128);
  if (v0)
  {
  }

  else
  {
    v8 = *(v6 + 128);
  }

  v9 = *(v3 + 40);

  sub_626BC();
  sub_38F74();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_622EC()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  v3 = v2;
  sub_C990();
  *v4 = v2;
  v5 = *(v2 + 152);
  *v4 = *v1;

  sub_5DA54();
  v7 = *(v6 + 144);
  if (v0)
  {
  }

  else
  {
    v8 = *(v6 + 144);
  }

  v9 = *(v3 + 40);

  sub_626BC();
  sub_38F74();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_6240C()
{
  sub_5E06C();
  sub_C9EC();
  sub_626D0();
  v3 = v2;
  sub_C990();
  *v4 = v2;
  v5 = *(v2 + 168);
  *v4 = *v1;

  sub_5DA54();
  v7 = *(v6 + 160);
  if (v0)
  {
  }

  else
  {
    v8 = *(v6 + 160);
  }

  v9 = *(v3 + 40);

  sub_626BC();
  sub_38F74();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_6252C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_62590()
{
  v0 = sub_16D63C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for WellnessLoggingCATsSimple();
  sub_16D62C();
  result = sub_16D5FC();
  qword_1D7168 = result;
  return result;
}

uint64_t sub_6261C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_62684()
{

  return swift_once();
}

uint64_t sub_626A4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t type metadata accessor for WellnessUnsupportedCATs()
{
  result = qword_1C6C80;
  if (!qword_1C6C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_62790(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_627E4(a1, a2);
}

uint64_t sub_627E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_16D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_372FC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16D56C();
  (*(v5 + 8))(a2, v4);
  sub_45D08(a1);
  return v12;
}

uint64_t GenericBinaryButtonModel.invocationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenericBinaryButtonModel.invocationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenericBinaryButtonModel.primaryButtonLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GenericBinaryButtonModel.primaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GenericBinaryButtonModel.secondaryButtonLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GenericBinaryButtonModel.secondaryButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall GenericBinaryButtonModel.init(invocationIdentifier:primaryButtonLabel:secondaryButtonLabel:isSmartEnabled:)(WellnessFlowPlugin::GenericBinaryButtonModel *__return_ptr retstr, Swift::String invocationIdentifier, Swift::String primaryButtonLabel, Swift::String secondaryButtonLabel, Swift::Bool isSmartEnabled)
{
  retstr->invocationIdentifier = invocationIdentifier;
  retstr->primaryButtonLabel = primaryButtonLabel;
  retstr->secondaryButtonLabel = secondaryButtonLabel;
  retstr->isSmartEnabled = isSmartEnabled;
}

uint64_t sub_62AB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000000017DDE0 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017DE00 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000000017DE20 == a2;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_16E6BC();

        if (v9)
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

unint64_t sub_62C28(char a1)
{
  result = 0x457472616D537369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_62CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_62AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_62D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_62C20();
  *a1 = result;
  return result;
}

uint64_t sub_62D28(uint64_t a1)
{
  v2 = sub_62F24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_62D64(uint64_t a1)
{
  v2 = sub_62F24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C6CD0, &qword_1729F0);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_62F24();
  sub_16E77C();
  v14 = *v3;
  v15 = v3[1];
  v22[15] = 0;
  sub_635F0();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v22[14] = 1;
    sub_635F0();
    v18 = v3[4];
    v19 = v3[5];
    v22[13] = 2;
    sub_635F0();
    v20 = *(v3 + 48);
    v22[12] = 3;
    sub_16E65C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_62F24()
{
  result = qword_1C6CD8;
  if (!qword_1C6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CD8);
  }

  return result;
}

uint64_t GenericBinaryButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2440(&qword_1C6CE0, &qword_1729F8);
  v6 = sub_42F0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_62F24();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  sub_635E0();
  v10 = sub_16E5BC();
  v23 = v11;
  sub_635E0();
  v12 = sub_16E5BC();
  v22 = v13;
  v20 = v12;
  v19 = sub_16E5BC();
  v21 = v14;
  sub_635E0();
  v15 = sub_16E5CC();
  v16 = sub_635D0();
  v17(v16);

  sub_2D64(a1);

  *a2 = v10;
  *(a2 + 8) = v23;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v15 & 1;
  return result;
}

double sub_63218@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  GenericBinaryButtonModel.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

__n128 sub_63280(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_6329C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_632DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GenericBinaryButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x63490);
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

unint64_t sub_634CC()
{
  result = qword_1C6CE8;
  if (!qword_1C6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CE8);
  }

  return result;
}

unint64_t sub_63524()
{
  result = qword_1C6CF0;
  if (!qword_1C6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CF0);
  }

  return result;
}

unint64_t sub_6357C()
{
  result = qword_1C6CF8;
  if (!qword_1C6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6CF8);
  }

  return result;
}

uint64_t sub_635F0()
{

  return sub_16E64C();
}

uint64_t sub_6362C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_16D63C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_C1F30(a1);
  type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_64574();
  sub_16D62C();
  v5 = sub_16D58C();
  a1[8] = v1;
  a1[9] = &off_1BA5B0;
  a1[5] = v5;
  type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_64574();
  sub_16D62C();
  v6 = sub_16D58C();
  a1[13] = v1;
  a1[14] = &off_1BC5D0;
  a1[10] = v6;
  type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_64574();
  sub_16D62C();
  result = sub_16D58C();
  a1[18] = v1;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_63728()
{
  sub_82E0();

  return sub_16C33C();
}

uint64_t sub_6377C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_16C38C();
  v2[13] = v3;
  sub_888C(v3);
  v2[14] = v4;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = sub_16C46C();
  v2[16] = v7;
  sub_888C(v7);
  v2[17] = v8;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v11 = sub_16C7BC();
  v2[20] = v11;
  sub_888C(v11);
  v2[21] = v12;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v15 = sub_16DBEC();
  v2[23] = v15;
  sub_888C(v15);
  v2[24] = v16;
  v18 = *(v17 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_63954, 0, 0);
}

uint64_t sub_63954()
{
  v19 = v0;
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = sub_16DBBC();
  v0[28] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[29] = v5;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_16DBDC();
  v7 = sub_16E37C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  v10 = v0[23];
  v11 = v0[24];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_3AB7C(0xD000000000000010, 0x8000000000172C50, &v18);
    _os_log_impl(&def_259DC, v6, v7, "Executing %s", v12, 0xCu);
    sub_2D64(v13);
    sub_8A2C();
    sub_8A2C();
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[31] = v14;
  v15 = *sub_2D20((v0[12] + 40), *(v0[12] + 64));
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_63B30;

  return sub_7AA38();
}

uint64_t sub_63B30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 264) = v1;

  if (v1)
  {
    v8 = sub_63E14;
  }

  else
  {
    *(v4 + 272) = a1;
    v8 = sub_63C50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_63C50()
{
  v1 = v0[34];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[11];
  v8 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  v9 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  v10 = v8[4];
  sub_2D20(v8, v8[3]);
  sub_16C2FC();
  sub_64574();
  sub_16C4FC();

  v11 = v0[19];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];
  v15 = v0[18];
  v16 = v0[15];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_63E14()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  swift_beginAccess();
  v3(v5, v4, v6);
  swift_errorRetain();
  v7 = sub_16DBDC();
  v8 = sub_16E37C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 264);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&def_259DC, v7, v8, "%@", v11, 0xCu);
    sub_6450C(v12);
    sub_8A2C();
    sub_8A2C();
  }

  else
  {
    v14 = *(v0 + 264);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v18 = *(v0 + 200);
  v19 = *(v0 + 184);
  (*(v0 + 248))(*(v0 + 208), v19);
  swift_beginAccess();
  v17(v18, v16, v19);
  v20 = sub_16DBDC();
  v21 = sub_16E37C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&def_259DC, v20, v21, "Sending to info domains because dialog pattern failed", v22, 2u);
    sub_8A2C();
  }

  v23 = *(v0 + 248);
  v24 = *(v0 + 200);
  v25 = *(v0 + 184);
  v27 = *(v0 + 112);
  v26 = *(v0 + 120);
  v28 = *(v0 + 104);
  v29 = *(v0 + 88);

  v23(v24, v25);
  (*(v27 + 104))(v26, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v28);
  sub_16C51C();
  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  v32 = *(v0 + 200);
  v33 = *(v0 + 176);
  v35 = *(v0 + 144);
  v34 = *(v0 + 152);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_6410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_641BC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_641BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_C990();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_642B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6434C;

  return sub_6377C(a1);
}

uint64_t sub_6434C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_C990();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_64438(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_64498(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_6450C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57B8, &qword_1715A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WellnessQueryingCATs()
{
  result = qword_1C6D00;
  if (!qword_1C6D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6460C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_64660(a1, a2);
}

uint64_t sub_64660(uint64_t a1, uint64_t a2)
{
  v4 = sub_16D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_372FC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16D56C();
  (*(v5 + 8))(a2, v4);
  sub_45D08(a1);
  return v12;
}

uint64_t type metadata accessor for BodyMassQueryModel()
{
  result = qword_1C6DD0;
  if (!qword_1C6DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BodyMassQueryModel.averageValueString.getter()
{
  Model = type metadata accessor for BodyMassQueryModel();
  sub_20658(*(Model + 40));
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.averageValueString.setter()
{
  v3 = sub_66A14();
  result = sub_66A6C(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BodyMassQueryModel.maxValueString.getter()
{
  Model = type metadata accessor for BodyMassQueryModel();
  sub_20658(*(Model + 44));
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.maxValueString.setter()
{
  v3 = sub_66A14();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BodyMassQueryModel.minValueString.getter()
{
  Model = type metadata accessor for BodyMassQueryModel();
  sub_20658(*(Model + 48));
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.minValueString.setter()
{
  v3 = sub_66A14();
  result = sub_66A6C(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BodyMassQueryModel.valueString.getter()
{
  Model = type metadata accessor for BodyMassQueryModel();
  sub_20658(*(Model + 52));
  return sub_8B9C();
}

uint64_t BodyMassQueryModel.valueString.setter()
{
  v3 = sub_66A14();
  result = sub_66A6C(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_64F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_43AC(a1, a2, a3, a4);
  sub_4378(v5);
  v7 = *(v6 + 16);
  v8 = sub_8B9C();
  v9(v8);
  return v4;
}

uint64_t sub_64F94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_43AC(a1, a2, a3, a4);
  sub_4378(v5);
  v7 = *(v6 + 40);
  v8 = sub_8B9C();
  v9(v8);
  return v4;
}

uint64_t sub_65018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_16E6BC();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_653E8(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v3 = 1450729837;
      return v3 | 0x65756C6100000000;
    case 3:
      v3 = 1450076525;
      return v3 | 0x65756C6100000000;
    case 4:
      return 0x65756C6176;
    case 5:
      return 0x6562614C65746164;
    case 6:
      return 0xD000000000000012;
    case 7:
      v4 = 1450729837;
      goto LABEL_15;
    case 8:
      v4 = 1450076525;
LABEL_15:
      result = v4 | 0x65756C6100000000;
      break;
    case 9:
      result = 0x72745365756C6176;
      break;
    case 10:
      result = 0x6972745374696E75;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_65578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_65018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_655A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_653E0();
  *a1 = result;
  return result;
}

uint64_t sub_655C8(uint64_t a1)
{
  v2 = sub_659C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_65604(uint64_t a1)
{
  v2 = sub_659C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BodyMassQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1C6D50, &qword_172D58);
  sub_42F0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_659C8();
  sub_16E77C();
  v23[31] = 0;
  sub_16C11C();
  sub_669A8();
  sub_66264(v12, v13);
  sub_205DC();
  sub_16E63C();
  if (!v1)
  {
    Model = type metadata accessor for BodyMassQueryModel();
    sub_669D0(Model[5]);
    v23[30] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v23[29] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v23[28] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v23[27] = 4;
    sub_20584();
    sub_16E62C();
    v15 = Model[9];
    v23[26] = 5;
    sub_16D5CC();
    sub_66990();
    sub_66264(v16, v17);
    sub_205DC();
    sub_16E63C();
    sub_66A40(Model[10]);
    v23[25] = 6;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[11]);
    v23[24] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v23[15] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v23[14] = 9;
    sub_20584();
    sub_16E61C();
    v18 = Model[14];
    v23[13] = 10;
    sub_205DC();
    sub_16E63C();
    v19 = Model[15];
    v23[12] = 11;
    type metadata accessor for SnippetHeaderModel();
    sub_66978();
    sub_66264(v20, v21);
    sub_205DC();
    sub_16E63C();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_659C8()
{
  result = qword_1C6D58;
  if (!qword_1C6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6D58);
  }

  return result;
}

uint64_t BodyMassQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v93 = a2;
  v2 = *(*(sub_2440(&dword_1C63F8, &qword_171800) - 8) + 64);
  sub_433C();
  __chkstk_darwin(v3);
  v95 = &v88 - v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v104 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v103 = &v88 - v9;
  v10 = *(*(sub_2440(&qword_1C63F0, &unk_1717F0) - 8) + 64);
  sub_433C();
  __chkstk_darwin(v11);
  v105 = &v88 - v12;
  v13 = sub_2440(&qword_1C6D60, &qword_172D60);
  v14 = sub_42F0(v13);
  v106 = v15;
  v107 = v14;
  v17 = *(v16 + 64);
  sub_433C();
  __chkstk_darwin(v18);
  v110 = &v88 - v19;
  Model = type metadata accessor for BodyMassQueryModel();
  v21 = (Model - 8);
  v22 = *(*(Model - 8) + 64);
  __chkstk_darwin(Model);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v102 = v25;
  sub_214C(v26, v27, v28, v25);
  sub_66A4C(v21[7]);
  v101 = v29;
  *(v29 + 8) = 1;
  sub_66A4C(v21[8]);
  v99 = v30;
  *(v30 + 8) = 1;
  sub_66A4C(v21[9]);
  v98 = v31;
  *(v31 + 8) = 1;
  sub_66A4C(v21[10]);
  v97 = v32;
  *(v32 + 8) = 1;
  v33 = v21[11];
  v34 = sub_16D5CC();
  v96 = v33;
  sub_8AB4();
  sub_214C(v35, v36, v37, v34);
  v38 = &v24[v21[12]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v24[v21[13]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v24[v21[14]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &v24[v21[15]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v94 = v21[16];
  sub_8AB4();
  v100 = v34;
  sub_214C(v42, v43, v44, v34);
  v45 = v21[17];
  v46 = type metadata accessor for SnippetHeaderModel();
  v109 = v24;
  sub_8AB4();
  sub_214C(v47, v48, v49, v46);
  v50 = v111[4];
  sub_2D20(v111, v111[3]);
  sub_659C8();
  v51 = v108;
  sub_16E76C();
  if (v51)
  {
    v82 = v109;
  }

  else
  {
    v108 = v38;
    v92 = v39;
    v91 = v40;
    v90 = v41;
    v52 = v103;
    v89 = v45;
    v53 = v104;
    v123 = 0;
    sub_669A8();
    sub_66264(v54, v55);
    v56 = v105;
    sub_16E5AC();
    v58 = v56;
    v59 = v109;
    sub_64F94(v58, v109, &qword_1C63F0, &unk_1717F0);
    v122 = 1;
    sub_669F0();
    v60 = sub_16E59C();
    sub_669C0(v60, v61);
    v121 = 2;
    sub_669F0();
    v62 = sub_16E59C();
    sub_669C0(v62, v63);
    v120 = 3;
    sub_669F0();
    v64 = sub_16E59C();
    sub_669C0(v64, v65);
    v119 = 4;
    sub_669F0();
    v66 = sub_16E59C();
    sub_669C0(v66, v67);
    v118 = 5;
    sub_66990();
    sub_66264(v68, v69);
    sub_66A58();
    sub_16E5AC();
    sub_64F94(v52, v59 + v96, &qword_1C5800, &unk_16F510);
    v117 = 6;
    sub_669F0();
    v70 = sub_16E58C();
    v71 = v108;
    *v108 = v70;
    v71[1] = v72;
    v116 = 7;
    sub_669F0();
    v73 = sub_16E58C();
    v74 = v92;
    *v92 = v73;
    v74[1] = v75;
    v115 = 8;
    sub_669F0();
    v76 = sub_16E58C();
    v77 = v91;
    *v91 = v76;
    v77[1] = v78;
    v114 = 9;
    sub_669F0();
    v79 = sub_16E58C();
    v80 = v90;
    *v90 = v79;
    v80[1] = v81;
    v113 = 10;
    sub_66A58();
    sub_16E5AC();
    v82 = v109;
    sub_64F94(v53, &v109[v94], &qword_1C5800, &unk_16F510);
    v112 = 11;
    sub_66978();
    sub_66264(v83, v84);
    v85 = v107;
    sub_16E5AC();
    v86 = sub_66A30();
    v87(v86, v85);
    sub_64F94(v95, v82 + v89, &dword_1C63F8, &qword_171800);
    sub_66170(v82, v93);
  }

  sub_2D64(v111);
  return sub_66114(v82);
}

uint64_t sub_66114(uint64_t a1)
{
  Model = type metadata accessor for BodyMassQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_66170(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BodyMassQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_66264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_662F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_369C(v10, a2, v9);
  }

  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  v12 = sub_436C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[9];
LABEL_12:
    v10 = a1 + v14;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v9 = sub_2440(&dword_1C63F8, &qword_171800);
    v14 = a3[15];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[10] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_66444(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v9 = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2440(&qword_1C5800, &unk_16F510);
    result = sub_436C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[9];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[10] + 8) = a2;
        return result;
      }

      v11 = sub_2440(&dword_1C63F8, &qword_171800);
      v16 = a4[15];
    }

    v12 = a1 + v16;
  }

  return sub_214C(v12, a2, a2, v11);
}

uint64_t sub_66574()
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BodyMassQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x66838);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_66874()
{
  result = qword_1C6E30;
  if (!qword_1C6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6E30);
  }

  return result;
}

unint64_t sub_668CC()
{
  result = qword_1C6E38;
  if (!qword_1C6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6E38);
  }

  return result;
}

unint64_t sub_66924()
{
  result = qword_1C6E40;
  if (!qword_1C6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6E40);
  }

  return result;
}

uint64_t sub_669C0(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_669D0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_669E0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_669FC()
{

  return type metadata accessor for BodyMassQueryModel();
}

uint64_t sub_66A14()
{

  return type metadata accessor for BodyMassQueryModel();
}

uint64_t sub_66A40@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_66A58()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_66A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_66A84(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_680E8();
}

uint64_t sub_66A98()
{
  sub_8A88();
  if (qword_1C55C8 != -1)
  {
    sub_680A0();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_66B48;

  return sub_3EAF0();
}

uint64_t sub_66B48()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

void sub_66C48()
{
  v1 = [*(v0 + 72) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  v3 = sub_3B35C(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v13 = *(v0 + 72);

      sub_68104();
      goto LABEL_12;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_16E48C();
    }

    else
    {
      if (i >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = [v5 id];
    v10 = sub_16E1BC();
    v12 = v11;

    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = v7;
    *(v0 + 40) = v8;
    sub_9854();
    LOBYTE(v9) = sub_16E40C();

    if (v9)
    {
      break;
    }
  }

  v14 = *(v0 + 72);

  v15 = [v6 fullPrint];
  sub_16E1BC();
  sub_680F8();

LABEL_12:
  v16 = sub_680D4();

  v17(v16);
}

uint64_t sub_66E2C()
{
  sub_8A88();
  v1 = *(v0 + 80);

  v2 = sub_680C0();

  return v3(v2);
}

uint64_t sub_66E84()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_17960();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_66F14()
{
  sub_8A88();
  if (qword_1C55C8 != -1)
  {
    sub_680A0();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_16E23C();
  v4 = sub_16D5CC();
  sub_214C(v2, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_66FF8;
  v6 = v0[4];

  return sub_3E928();
}

uint64_t sub_66FF8()
{
  sub_386A8();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  sub_38440();
  *v5 = v4;
  *(v7 + 48) = v6;

  v8 = *(v2 + 32);
  if (v0)
  {
  }

  sub_6261C(v8);
  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_67138()
{
  sub_386A8();
  v1 = [*(v0 + 48) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  if (sub_3B35C(v2))
  {
    sub_3B360(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16E48C();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 48);

    v6 = [v4 fullPrint];

    sub_16E1BC();
    sub_680F8();
  }

  else
  {
    v7 = *(v0 + 48);

    sub_68104();
  }

  v8 = *(v0 + 32);

  v9 = sub_680D4();

  return v10(v9);
}

uint64_t sub_67268()
{
  sub_8A88();
  v1 = *(v0 + 32);

  v2 = sub_680C0();

  return v3(v2);
}

uint64_t sub_672C0()
{
  sub_8A88();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_16C46C();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v7 = sub_16C7BC();
  v0[9] = v7;
  v8 = *(v7 - 8);
  v0[10] = v8;
  v9 = *(v8 + 64) + 15;
  v0[11] = swift_task_alloc();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_673E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v39 = v38[11];
  v41 = v38[7];
  v40 = v38[8];
  v42 = v38[5];
  v43 = v38[6];
  v44 = v38[4];
  sub_16C43C();
  (*(v43 + 16))(v41, v40, v42);
  sub_16C75C();
  (*(v43 + 8))(v40, v42);
  v45 = [v44 catId];
  sub_16E1BC();

  sub_16C76C();
  if (qword_1C55D0 != -1)
  {
    swift_once();
  }

  v46 = v38[4];
  v47 = qword_1D71B8;
  v48 = unk_1D71C0;
  sub_2D20(qword_1D71A0, qword_1D71B8);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v49 = swift_allocObject();
  v38[12] = v49;
  *(v49 + 16) = xmmword_170F70;
  *(v49 + 32) = v46;
  v50 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v51 = v46;
  v54 = swift_task_alloc();
  v38[13] = v54;
  *v54 = v38;
  v54[1] = sub_675D0;
  v55 = v38[11];
  v56 = v38[2];
  v57 = v38[3];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v56, v57, v49, v55, v47, v48, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_675D0()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v8 = *v0;

  v4 = sub_17960();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_676D8()
{
  sub_386A8();
  v1 = v0[8];
  v2 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_677AC(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_16D63C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_16D62C();
  result = sub_16D5FC();
  *a3 = result;
  return result;
}

uint64_t sub_67848()
{
  v0 = sub_16C58C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_16C57C();
  qword_1D71B8 = v0;
  unk_1D71C0 = &protocol witness table for ResponseFactory;
  qword_1D71A0 = result;
  return result;
}

uint64_t sub_6789C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return sub_680E8();
}

uint64_t sub_678B4()
{
  sub_386A8();
  if (qword_1C55C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_6798C;
  v4 = *(v0 + 48);

  return sub_AE694(v1, v4, v2);
}

uint64_t sub_6798C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;

  if (v0)
  {

    v7 = sub_680C0();

    return v8(v7);
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_67AB0()
{
  sub_386A8();
  v1 = [*(v0 + 40) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  if (sub_3B35C(v2))
  {
    sub_3B360(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16E48C();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 40);

    v6 = [v4 fullPrint];

    sub_16E1BC();
    sub_680F8();
  }

  else
  {
    v7 = *(v0 + 40);

    sub_68104();
  }

  v8 = sub_680D4();

  return v9(v8);
}

uint64_t sub_67BD8()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v4 = sub_17960();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_67C74()
{
  sub_386A8();
  if (qword_1C55C8 != -1)
  {
    sub_680A0();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_16E23C();
  v5 = sub_16D5CC();
  sub_214C(v2, 0, 1, v5);
  sub_214C(v1, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_67D78;
  v7 = v0[4];
  v8 = v0[5];

  return sub_3F924();
}

uint64_t sub_67D78()
{
  sub_386A8();
  sub_C9D4();
  sub_38440();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v13 = *v1;
  *(v2 + 56) = v8;
  *(v2 + 64) = v0;

  sub_6261C(v7);
  sub_6261C(v6);
  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_67EBC()
{
  sub_386A8();
  v1 = [*(v0 + 56) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  if (sub_3B35C(v2))
  {
    sub_3B360(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16E48C();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 56);

    v6 = [v4 fullPrint];

    sub_16E1BC();
    sub_680F8();
  }

  else
  {
    v7 = *(v0 + 56);

    sub_68104();
  }

  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  v10 = sub_680D4();

  return v11(v10);
}

uint64_t sub_67FF4()
{
  sub_8A88();
  v1 = v0[8];

  v3 = v0[4];
  v2 = v0[5];

  v4 = sub_680C0();

  return v5(v4);
}

unint64_t sub_6805C()
{
  result = qword_1C6E48;
  if (!qword_1C6E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C6E48);
  }

  return result;
}

uint64_t sub_680A0()
{

  return swift_once();
}

uint64_t sub_68120(char a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  memcpy((v6 + 32), __src, 0xA0uLL);
  *(v6 + 192) = a4;
  *(v6 + 200) = a5;
  sub_1E1A8(a6, v6 + 208);
  return v6;
}

uint64_t sub_6817C()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v6 = *(v5 + 64);
  v1[20] = sub_8BC0();
  v7 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[21] = sub_8BC0();
  v10 = sub_16C89C();
  v1[22] = v10;
  sub_888C(v10);
  v1[23] = v11;
  v13 = *(v12 + 64);
  v1[24] = sub_8BC0();
  v14 = sub_16C8FC();
  v1[25] = v14;
  sub_888C(v14);
  v1[26] = v15;
  v17 = *(v16 + 64);
  v1[27] = sub_8BC0();
  v18 = sub_16C80C();
  v1[28] = v18;
  sub_888C(v18);
  v1[29] = v19;
  v21 = *(v20 + 64);
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v22 = sub_16C83C();
  v1[32] = v22;
  sub_888C(v22);
  v1[33] = v23;
  v25 = *(v24 + 64);
  v1[34] = sub_8BC0();
  v26 = sub_16C7DC();
  v1[35] = v26;
  sub_888C(v26);
  v1[36] = v27;
  v29 = *(v28 + 64);
  v1[37] = sub_8BC0();
  v30 = sub_16DBEC();
  v1[38] = v30;
  sub_888C(v30);
  v1[39] = v31;
  v33 = *(v32 + 64);
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v34 = sub_17960();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_68460()
{
  v141 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = sub_16DBBC();
  sub_8B48();
  v131 = *(v3 + 16);
  v131(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  v17 = *(v0 + 280);
  if (v11)
  {
    v138 = *(v0 + 304);
    v18 = *(v0 + 136);
    v19 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v136 = v12;
    v22 = sub_3AB7C(v20, v21, &v140);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24);
    v25 = sub_16E68C();
    v27 = v26;
    (*(v16 + 8))(v15, v17);
    v28 = sub_3AB7C(v25, v27, &v140);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v29 = *(v13 + 8);
    v30 = v136;
    v31 = v138;
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    v29 = *(v13 + 8);
    v30 = v12;
    v31 = v14;
  }

  v130 = v29;
  (v29)(v30, v31);
  v32 = *(v0 + 128);
  v132 = sub_6AB10();
  v34 = v33;
  v129 = v32;
  v35 = *(v32 + 24);
  if (sub_3B35C(v35))
  {
    sub_3B360(0, (v35 & 0xC000000000000001) == 0, v35);
    if ((v35 & 0xC000000000000001) != 0)
    {

      v36 = sub_16E48C();
    }

    else
    {
      v36 = *(v35 + 32);
    }

    v37 = sub_103424(v36);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = *(v0 + 248);
  v42 = *(v0 + 224);
  v41 = *(v0 + 232);
  v43 = *(v0 + 120);
  sub_16C7CC();
  v44 = *(v41 + 88);
  v45 = sub_387CC();
  if ((v44)(v45) != enum case for Parse.uso(_:))
  {
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_13:
    v55 = *(v0 + 240);
    v56 = *(v0 + 224);
    v57 = *(v0 + 120);
    sub_16C7CC();
    if (v44(v55, v56) != enum case for Parse.directInvocation(_:))
    {
      v67 = *(v0 + 320);
      v68 = *(v0 + 304);
      v69 = *(v0 + 232);
      v70 = *(v0 + 240);
      v71 = *(v0 + 224);

      v72 = *(v69 + 8);
      v73 = sub_387CC();
      v74(v73);
      sub_8B48();
      v75 = sub_6B5B8();
      (v131)(v75);
      v76 = sub_16DBDC();
      v77 = sub_16E37C();
      v78 = os_log_type_enabled(v76, v77);
      v80 = *(v0 + 312);
      v79 = *(v0 + 320);
      v81 = *(v0 + 304);
      if (v78)
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&def_259DC, v76, v77, "Received unsupported type of input", v82, 2u);
        sub_8A2C();
      }

      v83 = sub_C9F8();
      v130(v83);
      goto LABEL_35;
    }

    v58 = *(v0 + 240);
    v60 = *(v0 + 152);
    v59 = *(v0 + 160);
    v61 = *(v0 + 144);
    (*(*(v0 + 232) + 96))(v58, *(v0 + 224));
    (*(v60 + 32))(v59, v58, v61);
    v62 = sub_16C7EC();
    if (v62)
    {
      sub_17400(0xD000000000000012, 0x800000000017A960, v62, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v135 = v37;
          v137 = v39;
          if (*(v0 + 344) != 1)
          {
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

            v134 = 0;
            v139 = v34;
            goto LABEL_46;
          }

          v63 = *(v0 + 152);
          v64 = *(v0 + 160);
          v65 = *(v0 + 144);
          if (*(*(v0 + 128) + 16) == 1)
          {
            v140 = v34;

            sub_B96EC(v66);
          }

          else
          {
            v140 = v34;

            sub_B96EC(v132);
          }

          (*(v63 + 8))(v64, v65);
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

    else
    {

      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_C878(v0 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_32:
    v99 = *(v0 + 328);
    v100 = *(v0 + 304);
    sub_8B48();
    v101 = sub_6B5B8();
    (v131)(v101);
    v102 = sub_16DBDC();
    v103 = sub_16E37C();
    v104 = os_log_type_enabled(v102, v103);
    v105 = *(v0 + 328);
    v106 = *(v0 + 304);
    v107 = *(v0 + 312);
    v109 = *(v0 + 152);
    v108 = *(v0 + 160);
    v110 = *(v0 + 144);
    if (v104)
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&def_259DC, v102, v103, "LogMedAsNeededConfirmationStrategy failed to unpack directInvocation, returning nil", v111, 2u);
      sub_8A2C();
    }

    v112 = sub_387CC();
    v130(v112);
    (*(v109 + 8))(v108, v110);
LABEL_35:
    v134 = 0;
    v135 = 0;
    v137 = 0;
    v139 = 1;
    goto LABEL_46;
  }

  v135 = v37;
  v137 = v39;
  v139 = v34;
  v47 = *(v0 + 264);
  v46 = *(v0 + 272);
  v49 = *(v0 + 248);
  v48 = *(v0 + 256);
  v50 = *(v0 + 192);
  v51 = *(v0 + 184);
  v127 = *(v0 + 176);
  v128 = *(v0 + 200);
  v52 = *(v0 + 168);
  (*(*(v0 + 232) + 96))(v49, *(v0 + 224));
  (*(v47 + 32))(v46, v49, v48);
  sub_16C82C();
  v53 = sub_16C88C();
  (*(v51 + 8))(v50, v127);
  sub_9AD9C(v53, v52);

  if (sub_369C(v52, 1, v128) == 1)
  {
    v54 = *(v0 + 168);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_C878(v54, &qword_1C6FF0, &unk_1730A0);
    v39 = v137;
    v34 = v139;
    v37 = v135;
    goto LABEL_13;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 168), *(v0 + 200));
  if (sub_16C8CC())
  {
    v84 = *(v0 + 264);
    v85 = *(v0 + 272);
    v86 = *(v0 + 256);
    v87 = *(v0 + 208);
    v88 = *(v0 + 216);
    v89 = *(v0 + 200);
    if (*(*(v0 + 128) + 16) == 1)
    {
      v140 = v139;

      sub_B96EC(v90);
    }

    else
    {
      v140 = v139;

      sub_B96EC(v132);
    }

    (*(v87 + 8))(v88, v89);
    (*(v84 + 8))(v85, v86);
LABEL_44:
    v139 = v140;
    v114 = 1;
    goto LABEL_45;
  }

  v91 = *(v0 + 216);
  v92 = sub_16C8DC();
  v93 = *(v0 + 264);
  v94 = *(v0 + 272);
  v95 = *(v0 + 256);
  v97 = *(v0 + 208);
  v96 = *(v0 + 216);
  v98 = *(v0 + 200);
  if (v92)
  {
    (*(v97 + 8))(*(v0 + 216), *(v0 + 200));
    (*(v93 + 8))(v94, v95);
LABEL_39:

    v134 = 0;
    goto LABEL_46;
  }

  v113 = sub_16C8EC();
  (*(v97 + 8))(v96, v98);
  (*(v93 + 8))(v94, v95);
  if (v113)
  {
    goto LABEL_39;
  }

  v139 = *(v129 + 24);

  v114 = 2;
LABEL_45:
  v134 = v114;
LABEL_46:
  v116 = *(v0 + 328);
  v115 = *(v0 + 336);
  v117 = *(v0 + 320);
  v118 = *(v0 + 296);
  v119 = *(v0 + 272);
  v121 = *(v0 + 240);
  v120 = *(v0 + 248);
  v122 = *(v0 + 216);
  v123 = *(v0 + 192);
  v124 = *(v0 + 168);
  v133 = *(v0 + 160);

  v125 = *(v0 + 8);

  return v125(v134, v139, v135, v137);
}

uint64_t sub_68EF0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_16C7DC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_4304();
  v21 = v20 - v19;
  v22 = sub_16DBAC();
  sub_8B48();
  v36 = v13;
  (*(v16 + 16))(v21, v22, v13);
  (*(v7 + 16))(v12, a1, v4);
  v23 = sub_16DBDC();
  v24 = sub_16E36C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = sub_16E7AC();
    v28 = sub_3AB7C(v26, v27, &v37);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v29, v30);
    v31 = sub_16E68C();
    v33 = v32;
    (*(v7 + 8))(v12, v4);
    v34 = sub_3AB7C(v31, v33, &v37);

    *(v25 + 14) = v34;
    _os_log_impl(&def_259DC, v23, v24, "%s Handling Input: %s", v25, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  (*(v16 + 8))(v21, v36);
  return sub_16C47C();
}

uint64_t sub_69214()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = sub_8C38();
  v1[17] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[18] = v8;
  sub_888C(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[21] = v12;
  sub_888C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_8BC0();
  v16 = sub_17960();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_69388()
{
  v27 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v5, v3);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  if (v8)
  {
    v12 = v0[13];
    v13 = v0[11];
    v25 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 136315394;
    v17 = sub_16E7AC();
    v24 = v9;
    v19 = sub_3AB7C(v17, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v14, 0x16u);
    sub_C878(v15, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v16);
    sub_8A2C();
    sub_8A2C();

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *sub_2D20((v0[12] + 72), *(v0[12] + 96));
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_695D8;

  return sub_7AA38();
}

uint64_t sub_695D8()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v9 = v3[20];
    v12 = v3 + 16;
    v10 = v3[16];
    v11 = v12[1];

    sub_C9BC();

    return v13();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_6972C()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 208, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  sub_2D20(v0 + 2, v9);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_698B4;
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v9, v10);
}

uint64_t sub_698B4()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 208);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_699B4()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 16));
  v4 = *(v0 + 216);
  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);

  sub_C9BC();

  return v9();
}

uint64_t sub_69A6C()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v6 = *(v5 + 64);
  v1[24] = sub_8BC0();
  v7 = sub_2440(&qword_1C5990, &unk_16F760);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[25] = sub_8BC0();
  v10 = sub_16C46C();
  sub_4348(v10);
  v12 = *(v11 + 64);
  v1[26] = sub_8BC0();
  v13 = sub_16C7BC();
  v1[27] = v13;
  sub_888C(v13);
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = sub_8BC0();
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v17);
  v19 = *(v18 + 64);
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v20 = sub_17960();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_69BE0()
{
  v1 = v0[21];
  v2 = *(v1 + 24);
  if (!sub_3B35C(v2))
  {
    goto LABEL_6;
  }

  sub_3B360(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_16E48C();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  sub_16B9FC(v3);
  if (v4)
  {
    v5 = v0[31];
    sub_16E23C();

    v6 = 0;
  }

  else
  {
LABEL_6:
    v6 = 1;
  }

  v7 = v0[31];
  v8 = v0[21];
  v9 = sub_16D5CC();
  sub_214C(v7, v6, 1, v9);
  sub_6AD78();
  v10 = *(v8 + 16);
  v0[32] = *(v8 + 192);
  v11 = *(v1 + 24);
  if (sub_3B35C(v11))
  {
    sub_3B360(0, (v11 & 0xC000000000000001) == 0, v11);
    if ((v11 & 0xC000000000000001) != 0)
    {

      v13 = sub_16E48C();
    }

    else
    {
      v12 = *(v11 + 32);

      v13 = v12;
    }

    sub_16B9FC(v13);
    if (v14)
    {
      v15 = v0[30];
      sub_16E23C();

      v16 = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v16 = 1;
LABEL_14:
  sub_214C(v0[30], v16, 1, v9);
  v17 = *(v8 + 16);
  v18 = swift_task_alloc();
  v0[33] = v18;
  *v18 = v0;
  v18[1] = sub_69E4C;
  v19 = v0[30];

  return sub_166D04();
}

uint64_t sub_69E4C()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = v4[33];
  v8 = *v1;
  *v6 = *v1;

  v9 = v4[32];
  v10 = v4[30];
  if (v0)
  {

    sub_C878(v10, &qword_1C5800, &unk_16F510);
    sub_8ACC();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v5[34] = v3;
    sub_C878(v10, &qword_1C5800, &unk_16F510);

    v14 = swift_task_alloc();
    v5[35] = v14;
    *v14 = v8;
    v14[1] = sub_6A044;

    return sub_66A84(0x6C65636E6163, 0xE600000000000000);
  }
}

uint64_t sub_6A044()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v0;
  *v3 = v6;
  v2[36] = v7;
  v2[37] = v8;

  v9 = swift_task_alloc();
  v2[38] = v9;
  *v9 = v6;
  v9[1] = sub_6A178;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_6A178()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 304);
  v10 = *v0;
  *(v2 + 312) = v4;
  *(v2 + 320) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6A268()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[21];
  v9 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v27 = v3;
  v10 = 0x6C65636E6143;
  if (!v9)
  {
    v10 = v0[36];
  }

  v26 = v10;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v25 = v2;
  if (v1)
  {
    v11 = v0[40];
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v12 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_16C79C();
  sub_6ADF8();
  v13 = sub_16C55C();
  sub_214C(v6, 0, 1, v13);
  sub_16C78C();
  sub_16C77C();
  v14 = [v4 catId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v8 + 208, (v0 + 7));
  v15 = v0[10];
  v16 = v0[11];
  sub_2D20(v0 + 7, v15);
  v0[15] = type metadata accessor for WellnessSnippets();
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets);
  v17 = sub_9910(v0 + 12);
  *v17 = 0xD000000000000031;
  v17[1] = 0x800000000017DF40;
  v17[2] = v26;
  v17[3] = v27;
  v17[4] = v25;
  v17[5] = v11;
  *(v17 + 48) = v12 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v18 = swift_allocObject();
  v0[41] = v18;
  *(v18 + 16) = xmmword_170F70;
  *(v18 + 32) = v4;
  v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v20 = v4;
  v21 = swift_task_alloc();
  v0[42] = v21;
  *v21 = v0;
  v21[1] = sub_6A54C;
  v22 = v0[29];
  v23 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v23, v0 + 12, v18, v22, v15, v16);
}

uint64_t sub_6A54C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *(v4 + 328);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 96));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_6A64C()
{
  sub_C9EC();
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  v5 = *(v3 + 8);
  v6 = sub_C9F8();
  v7(v6);
  sub_C878(v1, &qword_1C5800, &unk_16F510);
  sub_2D64((v0 + 56));
  sub_6B5E8();

  sub_C9BC();

  return v8();
}

uint64_t sub_6A724()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_16DBBC();
  sub_8B48();
  v4 = *(v2 + 16);
  v5 = sub_6B5B8();
  v6(v5);
  v7 = sub_16DBDC();
  v8 = sub_16E36C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&def_259DC, v7, v8, "Couldn't create logMedScheduleMixedStatusConfirmation_Dialog, returning generic error output.", v9, 2u);
    sub_8A2C();
  }

  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];

  v13 = *(v11 + 8);
  v14 = sub_C9F8();
  v15(v14);
  sub_6B3B8();
  v0[43] = swift_allocError();
  v16 = swift_task_alloc();
  v0[44] = v16;
  *v16 = v0;
  v16[1] = sub_6A894;
  v17 = v0[20];
  v18 = v0[21];

  return sub_69214();
}

uint64_t sub_6A894()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    v9 = *(v3 + 344);
  }

  sub_8ACC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_6A994()
{
  sub_C9EC();
  sub_C878(*(v0 + 248), &qword_1C5800, &unk_16F510);
  sub_6B5E8();

  sub_C9BC();

  return v1();
}

uint64_t sub_6AA3C()
{
  v1 = v0[43];
  v2 = v0[30];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  sub_C878(v0[31], &qword_1C5800, &unk_16F510);

  sub_C9BC();
  v8 = v0[45];

  return v7();
}

void *sub_6AB10()
{
  v1 = *(v0 + 24);
  result = sub_3B35C(v1);
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = result;
  if (result >= 1)
  {

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_16E48C();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = sub_B9838(v5);
      if (v8)
      {
        if (v7 == 0x6E656B6174 && v8 == 0xE500000000000000)
        {

LABEL_23:
          v18 = v6;
          sub_16E2AC();
          sub_6B5A8(&_swiftEmptyArrayStorage);
          if (v17)
          {
            sub_6B598(v19);
            sub_16E2EC();
          }

          sub_16E30C();

          goto LABEL_30;
        }

        v10 = sub_16E6BC();

        if (v10)
        {
          goto LABEL_23;
        }
      }

      v11 = sub_B9838(v6);
      if (v12)
      {
        if (v11 == 0x64657070696B73 && v12 == 0xE700000000000000)
        {

LABEL_27:
          v20 = v6;
          sub_16E2AC();
          sub_6B5A8(&_swiftEmptyArrayStorage);
          if (v17)
          {
            sub_6B598(v21);
            sub_16E2EC();
          }

          sub_16E30C();

          goto LABEL_30;
        }

        v14 = sub_16E6BC();

        if (v14)
        {
          goto LABEL_27;
        }
      }

      v15 = v6;
      sub_16E2AC();
      sub_6B5A8(&_swiftEmptyArrayStorage);
      if (v17)
      {
        sub_6B598(v16);
        sub_16E2EC();
      }

      sub_16E30C();

LABEL_30:
      if (v3 == ++v4)
      {

        return &_swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6AD78()
{
  v0 = sub_6AB10();
  v2 = v1;
  v4 = v3;
  v5 = sub_3B35C(v0);
  sub_3B35C(v2);

  sub_3B35C(v4);

  return v5;
}

uint64_t sub_6ADF8()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16C8BC();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  sub_16C8AC();
  sub_16C95C();
  (*(v10 + 16))(v15, v17, v7);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v18 = *(v1 + 72);
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_16F530;
  (*(v2 + 16))(v20 + v19, v6, v0);
  sub_16C53C();
  (*(v2 + 8))(v6, v0);
  return (*(v10 + 8))(v17, v7);
}

void *sub_6B028()
{
  v1 = v0[3];

  sub_C938((v0 + 4));
  v2 = v0[24];

  v3 = v0[25];

  sub_2D64(v0 + 26);
  return v0;
}

uint64_t sub_6B068()
{
  sub_6B028();

  return _swift_deallocClassInstance(v0, 248, 7);
}

uint64_t sub_6B0C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_6B15C;

  return sub_6817C();
}

uint64_t sub_6B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_C9D4();
  v11 = v10;
  sub_38388();
  *v12 = v11;
  v14 = *(v13 + 24);
  v15 = *v5;
  sub_C990();
  *v16 = v15;

  if (!v4)
  {
    v17 = *(v11 + 16);
    *v17 = a1;
    v17[1] = a2;
    v17[2] = a3;
    v17[3] = a4;
  }

  v18 = *(v15 + 8);

  return v18();
}

uint64_t sub_6B278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_69A6C();
}

uint64_t sub_6B310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_69214();
}

unint64_t sub_6B3B8()
{
  result = qword_1C6FE8;
  if (!qword_1C6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6FE8);
  }

  return result;
}

uint64_t sub_6B40C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for LogMedScheduleMixedStatusConfirmationStrategyError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x6B4F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_6B52C()
{
  result = qword_1C6FF8;
  if (!qword_1C6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6FF8);
  }

  return result;
}

void sub_6B5A8(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_6B5C8()
{

  return sub_16C75C();
}

uint64_t sub_6B5E8()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
}

void sub_6B680()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v7);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  v9 = sub_76B58(v8, xmmword_172970);
  sub_77320(v9, v10);
  sub_76E40();
  sub_74678(v11, v12, v13, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v14)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v16 = *(v15 + 32);
    sub_76E40();
    v17();
  }

  v18 = sub_769C8();
  v19 = type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters(v18);
  sub_774A0(v19);
  sub_7741C(&qword_1C5800, &unk_16F510, v20);
  sub_8A94(v1);
  if (v14)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    v22 = *(v21 + 32);
    sub_76DD8();
    v23();
  }

  sub_38B4C();
  v8[8].n128_u64[0] = 0xD000000000000014;
  v8[8].n128_u64[1] = v24;
  v25 = *(v0 + *(v2 + 24));
  if (v25)
  {
    v26 = sub_16D39C();
    v27 = v25;
  }

  else
  {
    v26 = sub_76C6C();
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  v8[9].n128_u64[0] = v27;
  v8[10].n128_u64[1] = v26;
  v8[11].n128_u64[0] = 0x74617265706D6574;
  sub_775B0(0xEB00000000657275);
  v29 = *(v0 + v28);
  if (v29)
  {
    sub_16D2BC();
    v30 = v29;
  }

  else
  {
    sub_76C6C();
    v8[12].n128_u64[1] = 0;
    v8[13].n128_u64[0] = 0;
  }

  v8[12].n128_u64[0] = v30;
  sub_77364();
  v8[13].n128_u64[1] = v31;
  v8[14].n128_u64[0] = v32;
  sub_77494(0xE400000000000000);
  v34 = *(v0 + v33);
  if (v34)
  {
    v35 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v35 = 0;
    v8[15].n128_u64[1] = 0;
    v8[16].n128_u64[0] = 0;
  }

  v8[15].n128_u64[0] = v34;
  v8[16].n128_u64[1] = v35;

  sub_76E7C();
  sub_774FC();
}

void sub_6B90C()
{
  sub_77510();
  sub_77488();
  v5 = sub_774E4();
  v6 = sub_4348(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_769E8();
  __chkstk_darwin(v9);
  sub_76B1C();
  __chkstk_darwin(v10);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v11 = sub_7761C();
  sub_76B40(v11, "actionAceCommandString", xmmword_173190);
  sub_76E28();
  sub_74678(v12, v13, v14, &unk_16F510);
  v15 = sub_16D5CC();
  sub_76A04(v2);
  if (v16)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    *(v11 + 72) = v15;
    sub_9910((v11 + 48));
    sub_76AEC();
    v18 = *(v17 + 32);
    sub_76E28();
    v19();
  }

  sub_76A7C();
  *(v11 + 80) = v20;
  *(v11 + 88) = v21;
  v22 = type metadata accessor for WellnessQueryingBloodOxygenParameters(0);
  sub_77388(v22);
  sub_76D40(v23);
  if (v25)
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
    v26 = 0;
  }

  else
  {
    v26 = *v24;
  }

  *(v11 + 96) = v26;
  sub_76D18();
  *(v11 + 120) = v27;
  *(v11 + 128) = v28;
  *(v11 + 136) = 0xE800000000000000;
  sub_7753C(&qword_1C5800, &unk_16F510, v2[6]);
  sub_76A04(v3);
  if (v16)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
  }

  else
  {
    *(v11 + 168) = v15;
    sub_9910((v11 + 144));
    sub_76AEC();
    v30 = *(v29 + 32);
    sub_77394();
    v31();
  }

  sub_38B4C();
  *(v11 + 176) = v4;
  *(v11 + 184) = v32;
  v33 = *(v0 + v2[7]);
  if (v33)
  {
    v34 = sub_16D39C();
    v35 = v33;
  }

  else
  {
    v34 = sub_76C6C();
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  sub_76C2C(v34, v35);
  sub_76D40(v2[8]);
  if (v37)
  {
    v39 = sub_76DBC();
  }

  else
  {
    v39 = *v36;
    v38 = &type metadata for Double;
  }

  sub_76C08(v38, v39);
  sub_76D40(v2[9]);
  if (v41)
  {
    v43 = sub_76DAC();
  }

  else
  {
    v43 = *v40;
    v42 = &type metadata for Double;
  }

  sub_76C94(v42, v43);
  v44 = *(v0 + v2[10]);
  if (v44)
  {
    v45 = type metadata accessor for WellnessTime(0);
    v46 = v44;
  }

  else
  {
    v45 = sub_76C6C();
    *(v11 + 344) = 0;
    *(v11 + 352) = 0;
  }

  sub_76C78(v45, v46);
  sub_7741C(&qword_1C5800, &unk_16F510, v2[11]);
  sub_76A04(v1);
  if (v16)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v11 + 384) = 0u;
    *(v11 + 400) = 0u;
  }

  else
  {
    *(v11 + 408) = v15;
    sub_9910((v11 + 384));
    sub_76AEC();
    v48 = *(v47 + 32);
    sub_775E4();
    v49();
  }

  sub_76D74();
  sub_76D40(v2[12]);
  if (v51)
  {
    v53 = sub_773E4();
  }

  else
  {
    v53 = *v50;
    v52 = &type metadata for Double;
  }

  *(v11 + 432) = v53;
  *(v11 + 456) = v52;
  sub_76E7C();
  sub_774FC();
}

void sub_6BC7C()
{
  sub_77510();
  v4 = sub_774E4();
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_769E8();
  __chkstk_darwin(v8);
  sub_76B1C();
  __chkstk_darwin(v9);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1731A0;
  sub_38B4C();
  *(v11 + 32) = 0xD000000000000016;
  *(v11 + 40) = v12;
  sub_76E28();
  sub_74678(v13, v14, v15, &unk_16F510);
  v16 = sub_16D5CC();
  sub_76A04(v2);
  if (v17)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    *(v10 + 72) = v16;
    sub_9910((v10 + 48));
    sub_76AEC();
    v19 = *(v18 + 32);
    sub_76E28();
    v20();
  }

  v21 = sub_769C8();
  v22 = type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters(v21);
  sub_77388(v22);
  sub_7753C(&qword_1C5800, &unk_16F510, v23);
  sub_76A04(v3);
  if (v17)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    *(v10 + 120) = v16;
    sub_9910((v10 + 96));
    sub_76AEC();
    v25 = *(v24 + 32);
    sub_77394();
    v26();
  }

  sub_77554();
  *(v10 + 128) = v27;
  *(v10 + 136) = 0xEC00000078614D63;
  v28 = (v0 + v2[6]);
  if (v28[1])
  {
    v29 = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
    v30 = 0;
  }

  else
  {
    v30 = *v28;
    v29 = &type metadata for Double;
  }

  *(v10 + 144) = v30;
  *(v10 + 168) = v29;
  *(v10 + 176) = v27;
  *(v10 + 184) = 0xEC0000006E694D63;
  sub_76D40(v2[7]);
  if (v32)
  {
    v33 = 0;
    *(v10 + 200) = 0;
    *(v10 + 208) = 0;
    v34 = 0;
  }

  else
  {
    v34 = *v31;
    v33 = &type metadata for Double;
  }

  *(v10 + 192) = v34;
  *(v10 + 216) = v33;
  *(v10 + 224) = 0x6E69577473726966;
  *(v10 + 232) = 0xEF657A6953776F64;
  sub_76D40(v2[8]);
  if (v36)
  {
    v37 = sub_76DBC();
  }

  else
  {
    v37 = *v35;
  }

  *(v10 + 240) = v37;
  sub_775F0();
  *(v10 + 264) = v38;
  *(v10 + 272) = 0xD000000000000012;
  *(v10 + 280) = v39;
  sub_76D40(v2[9]);
  if (v41)
  {
    v43 = sub_76DAC();
  }

  else
  {
    v43 = *v40;
    v42 = &type metadata for Double;
  }

  sub_76E4C(v42, v43);
  sub_772D4(*(v0 + v2[10]));
  *(v10 + 384) = *(v0 + v2[11]);
  sub_38B4C();
  *(v10 + 408) = v44;
  *(v10 + 416) = 0xD000000000000016;
  *(v10 + 424) = v45;
  *(v10 + 432) = *(v0 + v2[12]);
  sub_38B4C();
  *(v10 + 456) = v46;
  *(v10 + 464) = 0xD000000000000014;
  *(v10 + 472) = v47;
  v48 = *(v0 + v2[13]);
  if (v48)
  {
    v49 = sub_16D39C();
    v50 = v48;
  }

  else
  {
    v50 = 0;
    v49 = 0;
    *(v10 + 488) = 0;
    *(v10 + 496) = 0;
  }

  *(v10 + 480) = v50;
  *(v10 + 504) = v49;
  *(v10 + 512) = 0x63696C6F74737973;
  *(v10 + 520) = 0xEB0000000078614DLL;
  v51 = (v0 + v2[14]);
  if (v51[1])
  {
    v52 = 0;
    *(v10 + 536) = 0u;
    v53 = 0;
  }

  else
  {
    v53 = *v51;
    v52 = &type metadata for Double;
  }

  *(v10 + 528) = v53;
  *(v10 + 552) = v52;
  *(v10 + 560) = 0x63696C6F74737973;
  *(v10 + 568) = 0xEB000000006E694DLL;
  sub_76D40(v2[15]);
  if (v55)
  {
    sub_773AC();
    v57 = 0;
  }

  else
  {
    v57 = *v54;
    v56 = &type metadata for Double;
  }

  *(v10 + 576) = v57;
  *(v10 + 600) = v56;
  sub_77364();
  *(v10 + 608) = v58;
  *(v10 + 616) = 0xE400000000000000;
  v59 = *(v0 + v2[16]);
  if (v59)
  {
    v60 = type metadata accessor for WellnessTime(0);
    v61 = v59;
  }

  else
  {
    sub_76C6C();
    sub_773AC();
  }

  *(v10 + 624) = v61;
  *(v10 + 648) = v60;
  *(v10 + 656) = 1953066613;
  *(v10 + 664) = 0xE400000000000000;
  sub_7741C(&qword_1C5800, &unk_16F510, v2[17]);
  sub_76A04(v1);
  if (v17)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v10 + 672) = 0u;
    *(v10 + 688) = 0u;
  }

  else
  {
    *(v10 + 696) = v16;
    sub_9910((v10 + 672));
    sub_76AEC();
    v63 = *(v62 + 32);
    sub_775E4();
    v64();
  }

  sub_775D0();
  *(v10 + 704) = v65;
  *(v10 + 712) = 0xEA0000000000657ALL;
  sub_76D40(v2[18]);
  if (v67)
  {
    sub_773AC();
    v69 = 0;
  }

  else
  {
    v69 = *v66;
    v68 = &type metadata for Double;
  }

  *(v10 + 720) = v69;
  *(v10 + 744) = v68;
  sub_76E7C();
  sub_774FC();
}

void sub_6C1B8()
{
  sub_77510();
  v5 = v1;
  sub_77488();
  v6 = sub_774E4();
  v7 = sub_4348(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v10);
  sub_76B1C();
  __chkstk_darwin(v11);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = swift_allocObject();
  sub_76B40(v12, "actionAceCommandString", xmmword_1731B0);
  sub_76E28();
  sub_74678(v13, v14, v15, &unk_16F510);
  v16 = sub_16D5CC();
  sub_76A04(v2);
  if (v17)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v16;
    sub_9910((v12 + 48));
    sub_76AEC();
    v19 = *(v18 + 32);
    sub_76E28();
    v20();
  }

  sub_76A68();
  *(v12 + 80) = v21;
  *(v12 + 88) = 0xE800000000000000;
  v22 = type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters(0);
  sub_77388(v22);
  sub_74678(v5 + v23, v3, &qword_1C5800, &unk_16F510);
  sub_76A04(v3);
  if (v17)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
  }

  else
  {
    *(v12 + 120) = v16;
    sub_9910((v12 + 96));
    sub_76AEC();
    v25 = *(v24 + 32);
    sub_77394();
    v26();
  }

  sub_38B4C();
  *(v12 + 128) = v4;
  *(v12 + 136) = v27;
  v28 = *(v5 + v2[6]);
  if (v28)
  {
    sub_16D39C();
    v29 = v28;
  }

  else
  {
    sub_76C6C();
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  *(v12 + 144) = v29;
  sub_77554();
  *(v12 + 168) = v30;
  *(v12 + 176) = v31;
  *(v12 + 184) = 0xE900000000000063;
  sub_773A0(v2[7]);
  if (v33)
  {
    v34 = 0;
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
    v35 = 0;
  }

  else
  {
    v35 = *v32;
    v34 = &type metadata for Double;
  }

  *(v12 + 192) = v35;
  *(v12 + 216) = v34;
  *(v12 + 224) = 0x63696C6F74737973;
  *(v12 + 232) = 0xE800000000000000;
  sub_773A0(v2[8]);
  if (v37)
  {
    v38 = 0;
    *(v12 + 248) = 0;
    *(v12 + 256) = 0;
    v39 = 0;
  }

  else
  {
    v39 = *v36;
    v38 = &type metadata for Double;
  }

  *(v12 + 240) = v39;
  *(v12 + 264) = v38;
  *(v12 + 272) = 1701669236;
  *(v12 + 280) = 0xE400000000000000;
  v40 = *(v5 + v2[9]);
  if (v40)
  {
    v41 = type metadata accessor for WellnessTime(0);
    v42 = v40;
  }

  else
  {
    v41 = sub_76C6C();
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  *(v12 + 288) = v42;
  *(v12 + 312) = v41;
  *(v12 + 320) = 1953066613;
  *(v12 + 328) = 0xE400000000000000;
  sub_74678(v5 + v2[10], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v17)
  {

    sub_8748(v0, &qword_1C5800, &unk_16F510);
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
  }

  else
  {
    *(v12 + 360) = v16;
    sub_9910((v12 + 336));
    sub_76AEC();
    v44 = *(v43 + 32);
    sub_77590();
    v45();
  }

  sub_774FC();
}

void sub_6C554()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v7);
  sub_7733C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  v9 = sub_76B58(v8, xmmword_1731C0);
  sub_77320(v9, v10);
  sub_76DD8();
  sub_74678(v11, v12, v13, &unk_16F510);
  v14 = sub_16D5CC();
  sub_8A94(v1);
  if (v15)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v17 = *(v16 + 32);
    sub_76DD8();
    v18();
  }

  sub_76A7C();
  *(v8 + 80) = v19;
  *(v8 + 88) = v20;
  v21 = type metadata accessor for WellnessQueryingBodyTemperatureParameters(0);
  sub_773D4(v21);
  if (&unk_16F510)
  {
    sub_16D2BC();
    v22 = &unk_16F510;
  }

  else
  {
    sub_76C6C();
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v22;
  sub_76A68();
  *(v8 + 120) = v23;
  *(v8 + 128) = v24;
  *(v8 + 136) = 0xE800000000000000;
  sub_77634(&qword_1C5800, &unk_16F510, v1[6]);
  sub_8A94(v2);
  if (v15)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
  }

  else
  {
    *(v8 + 168) = v14;
    sub_9910((v8 + 144));
    sub_76B0C();
    v26 = *(v25 + 32);
    sub_76E40();
    v27();
  }

  sub_38B4C();
  *(v8 + 176) = 0xD000000000000014;
  *(v8 + 184) = v28;
  v29 = *(v0 + v1[7]);
  if (v29)
  {
    v30 = sub_16D39C();
    v31 = v29;
  }

  else
  {
    v30 = sub_76C6C();
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  sub_76C2C(v30, v31);
  v32 = *(v0 + v1[8]);
  if (v32)
  {
    v33 = sub_16D2BC();
    v34 = v32;
  }

  else
  {
    v33 = sub_76C6C();
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
  }

  *(v8 + 240) = v34;
  *(v8 + 264) = v33;
  *(v8 + 272) = 0x65756C61566E696DLL;
  *(v8 + 280) = 0xE800000000000000;
  v35 = *(v0 + v1[9]);
  if (v35)
  {
    sub_16D2BC();
    v36 = v35;
  }

  else
  {
    sub_76C6C();
    *(v8 + 296) = 0;
    *(v8 + 304) = 0;
  }

  *(v8 + 288) = v36;
  sub_77364();
  *(v8 + 312) = v37;
  *(v8 + 320) = v38;
  *(v8 + 328) = 0xE400000000000000;
  v39 = *(v0 + v1[10]);
  if (v39)
  {
    v40 = type metadata accessor for WellnessTime(0);
    v41 = v39;
  }

  else
  {
    v40 = sub_76C6C();
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  *(v8 + 336) = v41;
  *(v8 + 360) = v40;
  *(v8 + 368) = 0x65756C6176;
  *(v8 + 376) = 0xE500000000000000;
  v42 = *(v0 + v1[11]);
  if (v42)
  {
    v43 = sub_16D2BC();
  }

  else
  {
    v43 = 0;
    *(v8 + 392) = 0;
    *(v8 + 400) = 0;
  }

  *(v8 + 384) = v42;
  *(v8 + 408) = v43;

  sub_76E7C();
  sub_774FC();
}

void sub_6C89C()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v7);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  v9 = sub_76B58(v8, xmmword_172970);
  sub_77320(v9, v10);
  sub_76E40();
  sub_74678(v11, v12, v13, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v14)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v16 = *(v15 + 32);
    sub_76E40();
    v17();
  }

  v18 = sub_769C8();
  v19 = type metadata accessor for WellnessQueryingCardioFitnessParameters(v18);
  sub_774A0(v19);
  sub_7741C(&qword_1C5800, &unk_16F510, v20);
  sub_8A94(v1);
  if (v14)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    v22 = *(v21 + 32);
    sub_76DD8();
    v23();
  }

  sub_38B4C();
  v8[8].n128_u64[0] = 0xD000000000000014;
  v8[8].n128_u64[1] = v24;
  v25 = *(v0 + *(v2 + 24));
  if (v25)
  {
    v26 = sub_16D39C();
    v27 = v25;
  }

  else
  {
    v26 = sub_76C6C();
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  v8[9].n128_u64[0] = v27;
  v8[10].n128_u64[1] = v26;
  v8[11].n128_u64[0] = 0x6C6576656CLL;
  sub_775B0(0xE500000000000000);
  sub_76D40(v28);
  if (v30)
  {
    v31 = 0;
    v8[12].n128_u64[1] = 0;
    v8[13].n128_u64[0] = 0;
    v32 = 0;
  }

  else
  {
    v32 = *v29;
    v31 = &type metadata for Double;
  }

  v8[12].n128_u64[0] = v32;
  v8[13].n128_u64[1] = v31;
  v8[14].n128_u64[0] = 1701669236;
  sub_77494(0xE400000000000000);
  v34 = *(v0 + v33);
  if (v34)
  {
    v35 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v35 = 0;
    v8[15].n128_u64[1] = 0;
    v8[16].n128_u64[0] = 0;
  }

  v8[15].n128_u64[0] = v34;
  v8[16].n128_u64[1] = v35;

  sub_76E7C();
  sub_774FC();
}

uint64_t sub_6CB1C(uint64_t a1)
{
  v5 = v2;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  v7 = sub_4348(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v10);
  sub_76B1C();
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = swift_allocObject();
  v15 = sub_76B58(v14, xmmword_1731B0);
  v15[2].n128_u64[0] = 0xD000000000000016;
  v15[2].n128_u64[1] = v16;
  sub_74678(v5, v13, &qword_1C5800, &unk_16F510);
  v17 = sub_16D5CC();
  sub_76A04(v13);
  if (v18)
  {
    sub_8748(v13, &qword_1C5800, &unk_16F510);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v17;
    sub_9910((v14 + 48));
    sub_76AEC();
    (*(v19 + 32))();
  }

  sub_76A7C();
  *(v14 + 80) = v20;
  *(v14 + 88) = v21;
  v22 = (a1)(0);
  sub_77388(v22);
  sub_773A0(v23);
  if (v25)
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
    v26 = 0;
  }

  else
  {
    v26 = *v24;
  }

  *(v14 + 96) = v26;
  sub_76D18();
  sub_7757C(v27);
  sub_74678(v5 + v28, v3, &qword_1C5800, &unk_16F510);
  sub_76A04(v3);
  if (v18)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
  }

  else
  {
    *(v14 + 168) = v17;
    sub_9910((v14 + 144));
    sub_76AEC();
    v30 = *(v29 + 32);
    sub_77394();
    v31();
  }

  sub_38B4C();
  *(v14 + 176) = 0xD000000000000014;
  *(v14 + 184) = v32;
  v33 = *(v5 + *(a1 + 28));
  if (v33)
  {
    sub_16D39C();
    v34 = v33;
  }

  else
  {
    sub_76C6C();
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  *(v14 + 192) = v34;
  sub_77364();
  *(v14 + 216) = v35;
  *(v14 + 224) = v36;
  *(v14 + 232) = 0xE400000000000000;
  v37 = *(v5 + *(a1 + 32));
  if (v37)
  {
    type metadata accessor for WellnessTime(0);
    v38 = v37;
  }

  else
  {
    sub_76C6C();
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  *(v14 + 240) = v38;
  sub_77568();
  *(v14 + 264) = v39;
  *(v14 + 272) = v40;
  *(v14 + 280) = 0xEA00000000006575;
  sub_773A0(*(a1 + 36));
  if (v42)
  {
    v43 = 0;
    *(v14 + 296) = 0;
    *(v14 + 304) = 0;
    v44 = 0;
  }

  else
  {
    v44 = *v41;
    v43 = &type metadata for Double;
  }

  *(v14 + 288) = v44;
  *(v14 + 312) = v43;
  *(v14 + 320) = 1953066613;
  *(v14 + 328) = 0xE400000000000000;
  sub_74678(v5 + *(a1 + 40), v1, &qword_1C5800, &unk_16F510);
  sub_76A04(v1);
  if (v18)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v14 + 336) = 0u;
    *(v14 + 352) = 0u;
  }

  else
  {
    *(v14 + 360) = v17;
    sub_9910((v14 + 336));
    sub_76AEC();
    v46 = *(v45 + 32);
    sub_77590();
    v47();
  }

  return v14;
}

uint64_t sub_6CF4C(uint64_t a1)
{
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = sub_4348(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_769E8();
  __chkstk_darwin(v9);
  sub_76B1C();
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  sub_2440(&qword_1C6078, &unk_172520);
  v13 = swift_allocObject();
  v14 = sub_76B58(v13, xmmword_1731D0);
  v16 = sub_77320(v14, v15);
  sub_74678(v16, v12, &qword_1C5800, &unk_16F510);
  v17 = sub_16D5CC();
  sub_8A94(v12);
  if (v18)
  {
    sub_8748(v12, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    (*(v19 + 32))();
  }

  sub_76A7C();
  *(v13 + 80) = v20;
  *(v13 + 88) = v21;
  v22 = (a1)(0);
  sub_774A0(v22);
  sub_76D40(v23);
  if (v25)
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
    v26 = 0;
  }

  else
  {
    v26 = *v24;
  }

  *(v13 + 96) = v26;
  sub_76D18();
  *(v13 + 120) = v27;
  *(v13 + 128) = v28;
  *(v13 + 136) = 0xE800000000000000;
  sub_7753C(&qword_1C5800, &unk_16F510, *(a1 + 24));
  sub_8A94(v3);
  if (v18)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
  }

  else
  {
    *(v13 + 168) = v17;
    sub_9910((v13 + 144));
    sub_76B0C();
    (*(v29 + 32))();
  }

  sub_38B4C();
  *(v13 + 176) = 0xD000000000000014;
  *(v13 + 184) = v30;
  v31 = *(v1 + *(a1 + 28));
  if (v31)
  {
    v32 = sub_16D39C();
    v33 = v31;
  }

  else
  {
    v32 = sub_76C6C();
    *(v13 + 200) = 0;
    *(v13 + 208) = 0;
  }

  sub_76C2C(v32, v33);
  sub_76D40(*(a1 + 32));
  if (v35)
  {
    v37 = sub_76DBC();
  }

  else
  {
    v37 = *v34;
    v36 = &type metadata for Double;
  }

  sub_76C08(v36, v37);
  sub_76D40(*(a1 + 36));
  if (v39)
  {
    v41 = sub_76DAC();
  }

  else
  {
    v41 = *v38;
    v40 = &type metadata for Double;
  }

  sub_76C94(v40, v41);
  v42 = *(v1 + *(a1 + 40));
  if (v42)
  {
    v43 = type metadata accessor for WellnessTime(0);
    v44 = v42;
  }

  else
  {
    v43 = sub_76C6C();
    *(v13 + 344) = 0;
    *(v13 + 352) = 0;
  }

  sub_76C78(v43, v44);
  sub_7741C(&qword_1C5800, &unk_16F510, *(a1 + 44));
  sub_8A94(v2);
  if (v18)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v13 + 384) = 0u;
    *(v13 + 400) = 0u;
  }

  else
  {
    *(v13 + 408) = v17;
    sub_9910((v13 + 384));
    sub_76B0C();
    v46 = *(v45 + 32);
    sub_76DD8();
    v47();
  }

  sub_76D74();
  sub_76D40(*(a1 + 48));
  if (v49)
  {
    v50 = sub_773E4();
  }

  else
  {
    v50 = *v48;
  }

  *(v13 + 432) = v50;
  sub_775F0();
  *(v13 + 456) = v51;
  *(v13 + 464) = 0xD000000000000010;
  *(v13 + 472) = v52;
  v53 = *(v1 + *(a1 + 52));
  if (v53 == 2)
  {
    v54 = 0;
    *(v13 + 480) = 0;
    *(v13 + 488) = 0;
    *(v13 + 496) = 0;
  }

  else
  {
    *(v13 + 480) = v53 & 1;
    v54 = &type metadata for Bool;
  }

  *(v13 + 504) = v54;
  return v13;
}

void sub_6D344()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v7);
  sub_7733C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = sub_7761C();
  *(v8 + 16) = xmmword_173190;
  sub_38B4C();
  *(v9 + 32) = 0xD000000000000016;
  *(v9 + 40) = v10;
  sub_76DD8();
  sub_74678(v11, v12, v13, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v1);
  if (v14)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v16 = *(v15 + 32);
    sub_76DD8();
    v17();
  }

  v18 = sub_769C8();
  v19 = type metadata accessor for WellnessQueryingHeightParameters(v18);
  sub_77634(&qword_1C5800, &unk_16F510, v19[5]);
  sub_8A94(v2);
  if (v14)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    v21 = *(v20 + 32);
    sub_76E40();
    v22();
  }

  sub_38B4C();
  *(v8 + 128) = 0xD000000000000016;
  *(v8 + 136) = v23;
  *(v8 + 144) = *(v0 + v19[6]);
  sub_38B4C();
  *(v8 + 168) = v24;
  *(v8 + 176) = 0xD000000000000017;
  *(v8 + 184) = v25;
  *(v8 + 192) = *(v0 + v19[7]);
  *(v8 + 216) = v24;
  *(v8 + 224) = 0x746867696568;
  *(v8 + 232) = 0xE600000000000000;
  v26 = *(v0 + v19[8]);
  if (v26)
  {
    v27 = sub_16D2FC();
    v28 = v26;
  }

  else
  {
    v27 = sub_76C6C();
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
  }

  *(v8 + 240) = v28;
  *(v8 + 264) = v27;
  *(v8 + 272) = 0x686769654878616DLL;
  *(v8 + 280) = 0xE900000000000074;
  v29 = *(v0 + v19[9]);
  if (v29)
  {
    v30 = sub_16D2FC();
    v31 = v29;
  }

  else
  {
    v30 = sub_76C6C();
    *(v8 + 296) = 0;
    *(v8 + 304) = 0;
  }

  *(v8 + 288) = v31;
  *(v8 + 312) = v30;
  *(v8 + 320) = 0x68676965486E696DLL;
  *(v8 + 328) = 0xE900000000000074;
  v32 = *(v0 + v19[10]);
  if (v32)
  {
    sub_16D2FC();
    v33 = v32;
  }

  else
  {
    sub_76C6C();
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  *(v8 + 336) = v33;
  sub_38B4C();
  *(v8 + 360) = v34;
  *(v8 + 368) = 0xD000000000000014;
  *(v8 + 376) = v35;
  v36 = *(v0 + v19[11]);
  if (v36)
  {
    sub_16D39C();
    v37 = v36;
  }

  else
  {
    sub_76C6C();
    *(v8 + 392) = 0;
    *(v8 + 400) = 0;
  }

  *(v8 + 384) = v37;
  sub_77364();
  *(v8 + 408) = v38;
  *(v8 + 416) = v39;
  *(v8 + 424) = 0xE400000000000000;
  v40 = *(v0 + v19[12]);
  if (v40)
  {
    v41 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v41 = 0;
    *(v8 + 440) = 0;
    *(v8 + 448) = 0;
  }

  *(v8 + 432) = v40;
  *(v8 + 456) = v41;

  sub_76E7C();
  sub_774FC();
}

void sub_6D6A0()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v7);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  v9 = sub_76B58(v8, xmmword_172970);
  sub_77320(v9, v10);
  sub_76E40();
  sub_74678(v11, v12, v13, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v14)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v16 = *(v15 + 32);
    sub_76E40();
    v17();
  }

  v18 = sub_769C8();
  v19 = type metadata accessor for WellnessQueryingMenstruationEndParameters(v18);
  sub_774A0(v19);
  sub_7741C(&qword_1C5800, &unk_16F510, v20);
  sub_8A94(v1);
  if (v14)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    v22 = *(v21 + 32);
    sub_76DD8();
    v23();
  }

  sub_773B8();
  if (v1)
  {
    sub_16D4EC();
  }

  else
  {
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  v8[9].n128_u64[0] = v1;
  sub_38B4C();
  v8[10].n128_u64[1] = v24;
  v8[11].n128_u64[0] = 0xD000000000000017;
  sub_775B0(v25);
  v8[12].n128_u8[0] = *(v0 + v26);
  sub_38B4C();
  v8[13].n128_u64[1] = v27;
  v8[14].n128_u64[0] = 0xD000000000000013;
  sub_77494(v28);
  LOBYTE(v29) = *(v0 + v29);
  v8[16].n128_u64[1] = v30;
  v8[15].n128_u8[0] = v29;

  sub_76E7C();
  sub_774FC();
}

void sub_6D8B8()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v7);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1731E0;
  sub_38B4C();
  *(v9 + 32) = 0xD000000000000016;
  *(v9 + 40) = v10;
  sub_76E40();
  sub_74678(v11, v12, v13, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v14)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v16 = *(v15 + 32);
    sub_76E40();
    v17();
  }

  v18 = sub_769C8();
  started = type metadata accessor for WellnessQueryingMenstruationStartParameters(v18);
  sub_774A0(started);
  sub_7741C(&qword_1C5800, &unk_16F510, v20);
  sub_8A94(v1);
  if (v14)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    v22 = *(v21 + 32);
    sub_76DD8();
    v23();
  }

  sub_773B8();
  if (v1)
  {
    sub_16D4EC();
  }

  else
  {
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v1;
  sub_38B4C();
  *(v8 + 168) = v24;
  *(v8 + 176) = 0xD000000000000017;
  sub_775B0(v25);
  *(v8 + 192) = *(v0 + v26);
  *(v8 + 216) = &type metadata for Bool;
  *(v8 + 224) = 0xD000000000000021;
  sub_77494(0x800000000017E240);
  *(v8 + 240) = *(v0 + v27);
  *(v8 + 264) = v28;
  *(v8 + 272) = 0xD000000000000022;
  *(v8 + 280) = 0x800000000017E270;
  LOBYTE(v27) = *(v0 + *(v2 + 36));
  *(v8 + 312) = v28;
  *(v8 + 288) = v27;

  sub_76E7C();
  sub_774FC();
}

void sub_6DB4C()
{
  sub_77510();
  v4 = sub_774E4();
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v8);
  sub_76B1C();
  __chkstk_darwin(v9);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v10 = sub_7761C();
  v11 = sub_76B58(v10, xmmword_173190);
  sub_77320(v11, v12);
  sub_76E28();
  sub_74678(v13, v14, v15, &unk_16F510);
  v16 = sub_16D5CC();
  sub_76A04(v2);
  if (v17)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v16;
    sub_9910((v10 + 48));
    sub_76AEC();
    v19 = *(v18 + 32);
    sub_76E28();
    v20();
  }

  *(v10 + 80) = 0x6570797461746164;
  *(v10 + 88) = 0xE800000000000000;
  v21 = type metadata accessor for WellnessQueryingRingsParameters(0);
  sub_77388(v21);
  sub_7753C(&qword_1C5800, &unk_16F510, v22);
  sub_76A04(v3);
  if (v17)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v16;
    sub_9910((v10 + 96));
    sub_76AEC();
    v24 = *(v23 + 32);
    sub_77394();
    v25();
  }

  *(v10 + 128) = 1702125924;
  *(v10 + 136) = 0xE400000000000000;
  v26 = *(v1 + v2[6]);
  if (v26)
  {
    sub_16D4EC();
    v27 = v26;
  }

  else
  {
    sub_76C6C();
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v27;
  sub_38B4C();
  *(v10 + 168) = v28;
  *(v10 + 176) = 0xD000000000000017;
  *(v10 + 184) = v29;
  *(v10 + 192) = *(v1 + v2[7]);
  *(v10 + 216) = &type metadata for Bool;
  *(v10 + 224) = 0x756C61566C616F67;
  *(v10 + 232) = 0xE900000000000065;
  v30 = (v1 + v2[8]);
  if (v30[1])
  {
    v31 = 0;
    *(v10 + 248) = 0;
    *(v10 + 256) = 0;
    v32 = 0;
  }

  else
  {
    v32 = *v30;
    v31 = &type metadata for Double;
  }

  *(v10 + 240) = v32;
  *(v10 + 264) = v31;
  strcpy((v10 + 272), "isRingClosed");
  *(v10 + 285) = 0;
  *(v10 + 286) = -5120;
  *(v10 + 288) = *(v1 + v2[9]);
  *(v10 + 312) = &type metadata for Bool;
  *(v10 + 320) = 0xD000000000000010;
  *(v10 + 328) = 0x800000000017DA40;
  *(v10 + 336) = *(v1 + v2[10]);
  *(v10 + 360) = &type metadata for Bool;
  *(v10 + 368) = 0x6C61566C61746F74;
  *(v10 + 376) = 0xEA00000000006575;
  sub_76D40(v2[11]);
  if (v34)
  {
    v35 = 0;
    *(v10 + 392) = 0;
    *(v10 + 400) = 0;
    v36 = 0;
  }

  else
  {
    v36 = *v33;
    v35 = &type metadata for Double;
  }

  *(v10 + 384) = v36;
  *(v10 + 408) = v35;
  *(v10 + 416) = 1953066613;
  *(v10 + 424) = 0xE400000000000000;
  sub_74678(v1 + v2[12], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v17)
  {

    sub_8748(v0, &qword_1C5800, &unk_16F510);
    *(v10 + 432) = 0u;
    *(v10 + 448) = 0u;
  }

  else
  {
    *(v10 + 456) = v16;
    sub_9910((v10 + 432));
    sub_76AEC();
    v38 = *(v37 + 32);
    sub_77590();
    v39();
  }

  sub_774FC();
}

void sub_6DF30()
{
  sub_77510();
  sub_77488();
  v5 = sub_77434();
  v6 = sub_4348(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v9);
  sub_7733C();
  sub_2440(&qword_1C6078, &unk_172520);
  v10 = swift_allocObject();
  sub_76B40(v10, "actionAceCommandString", xmmword_1731F0);
  sub_76DD8();
  sub_74678(v11, v12, v13, &unk_16F510);
  v14 = sub_16D5CC();
  sub_8A94(v1);
  if (v15)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v17 = *(v16 + 32);
    sub_76DD8();
    v18();
  }

  sub_38B4C();
  *(v10 + 80) = v4 + 1;
  *(v10 + 88) = v19;
  v20 = type metadata accessor for WellnessQueryingSleep_DetailedResultParameters(0);
  sub_773D4(v20);
  if (&unk_16F510)
  {
    sub_16D54C();
    v21 = &unk_16F510;
  }

  else
  {
    sub_76C6C();
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v21;
  sub_38B4C();
  sub_7759C(v22, v23);
  if (v3)
  {
    sub_16D54C();
    v24 = v3;
  }

  else
  {
    sub_76C6C();
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v24;
  sub_76A68();
  sub_775BC(v25, v26);
  sub_77634(&qword_1C5800, &unk_16F510, v27);
  sub_8A94(v2);
  if (v15)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
  }

  else
  {
    *(v10 + 216) = v14;
    sub_9910((v10 + 192));
    sub_76B0C();
    v29 = *(v28 + 32);
    sub_76E40();
    v30();
  }

  *(v10 + 224) = 0x6E69577473726966;
  *(v10 + 232) = 0xEF657A6953776F64;
  sub_76D40(v1[8]);
  if (v32)
  {
    v33 = sub_76DBC();
  }

  else
  {
    v33 = *v31;
  }

  *(v10 + 240) = v33;
  sub_775F0();
  *(v10 + 264) = v34;
  *(v10 + 272) = v4 - 2;
  *(v10 + 280) = v35;
  sub_76D40(v1[9]);
  if (v37)
  {
    v39 = sub_76DAC();
  }

  else
  {
    v39 = *v36;
    v38 = &type metadata for Double;
  }

  sub_76E4C(v38, v39);
  sub_772D4(*(v0 + v1[10]));
  *(v10 + 384) = *(v0 + v1[11]);
  sub_38B4C();
  *(v10 + 408) = v40;
  *(v10 + 416) = v4 + 2;
  *(v10 + 424) = v41;
  *(v10 + 432) = *(v0 + v1[12]);
  sub_38B4C();
  *(v10 + 456) = v42;
  *(v10 + 464) = v4 + 4;
  *(v10 + 472) = v43;
  sub_76D40(v1[13]);
  if (v45)
  {
    *(v10 + 488) = 0;
    *(v10 + 496) = 0;
    v46 = 0;
  }

  else
  {
    v46 = *v44;
  }

  *(v10 + 480) = v46;
  sub_775F0();
  *(v10 + 504) = v47;
  *(v10 + 512) = v4;
  *(v10 + 520) = v48;
  v49 = *(v0 + v1[14]);
  if (v49)
  {
    v50 = sub_16D39C();
    v51 = v49;
  }

  else
  {
    sub_76C6C();
    sub_773AC();
  }

  *(v10 + 528) = v51;
  *(v10 + 552) = v50;
  sub_77364();
  *(v10 + 560) = v52;
  *(v10 + 568) = 0xE400000000000000;
  v53 = *(v0 + v1[15]);
  if (v53)
  {
    v54 = type metadata accessor for WellnessTime(0);
    v55 = v53;
  }

  else
  {
    sub_76C6C();
    sub_773AC();
  }

  *(v10 + 576) = v55;
  *(v10 + 600) = v54;
  sub_775D0();
  *(v10 + 608) = v56;
  *(v10 + 616) = 0xEA0000000000657ALL;
  sub_76D40(v1[16]);
  if (v58)
  {
    sub_773AC();
    v60 = 0;
  }

  else
  {
    v60 = *v57;
    v59 = &type metadata for Double;
  }

  *(v10 + 624) = v60;
  *(v10 + 648) = v59;

  sub_76E7C();
  sub_774FC();
}

void sub_6E354()
{
  sub_77510();
  sub_77488();
  v5 = sub_77434();
  v6 = sub_4348(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v9);
  sub_7733C();
  sub_2440(&qword_1C6078, &unk_172520);
  v10 = swift_allocObject();
  sub_76B40(v10, "actionAceCommandString", xmmword_1731C0);
  sub_76DD8();
  sub_74678(v11, v12, v13, &unk_16F510);
  v14 = sub_16D5CC();
  sub_8A94(v1);
  if (v15)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    v17 = *(v16 + 32);
    sub_76DD8();
    v18();
  }

  sub_38B4C();
  *(v10 + 80) = v4 + 1;
  *(v10 + 88) = v19;
  v20 = type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  sub_773D4(v20);
  if (&unk_16F510)
  {
    sub_16D54C();
    v21 = &unk_16F510;
  }

  else
  {
    sub_76C6C();
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v21;
  sub_38B4C();
  sub_7759C(v22, v23);
  if (v3)
  {
    sub_16D54C();
    v24 = v3;
  }

  else
  {
    sub_76C6C();
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v24;
  sub_76A68();
  sub_775BC(v25, v26);
  sub_77634(&qword_1C5800, &unk_16F510, v27);
  sub_8A94(v2);
  if (v15)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
  }

  else
  {
    *(v10 + 216) = v14;
    sub_9910((v10 + 192));
    sub_76B0C();
    v29 = *(v28 + 32);
    sub_76E40();
    v30();
  }

  sub_38B4C();
  *(v10 + 224) = v4;
  *(v10 + 232) = v31;
  v32 = *(v0 + v1[8]);
  if (v32)
  {
    sub_16D39C();
    v33 = v32;
  }

  else
  {
    sub_76C6C();
    *(v10 + 248) = 0;
    *(v10 + 256) = 0;
  }

  *(v10 + 240) = v33;
  sub_77364();
  *(v10 + 264) = v34;
  *(v10 + 272) = v35;
  *(v10 + 280) = 0xE400000000000000;
  v36 = *(v0 + v1[9]);
  if (v36)
  {
    type metadata accessor for WellnessTime(0);
    v37 = v36;
  }

  else
  {
    sub_76C6C();
    *(v10 + 296) = 0;
    *(v10 + 304) = 0;
  }

  *(v10 + 288) = v37;
  sub_38B4C();
  *(v10 + 312) = v38;
  *(v10 + 320) = v4 - 1;
  *(v10 + 328) = v39;
  v40 = *(v0 + v1[10]);
  if (v40)
  {
    sub_16D54C();
    v41 = v40;
  }

  else
  {
    sub_76C6C();
    *(v10 + 344) = 0;
    *(v10 + 352) = 0;
  }

  *(v10 + 336) = v41;
  sub_38B4C();
  *(v10 + 360) = v42;
  *(v10 + 368) = v4 - 2;
  *(v10 + 376) = v43;
  v44 = *(v0 + v1[11]);
  if (v44)
  {
    v45 = sub_16D54C();
  }

  else
  {
    v45 = 0;
    *(v10 + 392) = 0;
    *(v10 + 400) = 0;
  }

  *(v10 + 384) = v44;
  *(v10 + 408) = v45;

  sub_76E7C();
  sub_774FC();
}

void sub_6E6B8()
{
  sub_77510();
  v5 = v1;
  sub_77488();
  v6 = sub_774E4();
  v7 = sub_4348(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v10);
  sub_76B1C();
  __chkstk_darwin(v11);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = swift_allocObject();
  sub_76B40(v12, "actionAceCommandString", xmmword_1731C0);
  sub_76E28();
  sub_74678(v13, v14, v15, &unk_16F510);
  v16 = sub_16D5CC();
  sub_76A04(v2);
  if (v17)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v16;
    sub_9910((v12 + 48));
    sub_76AEC();
    v19 = *(v18 + 32);
    sub_76E28();
    v20();
  }

  sub_76A7C();
  *(v12 + 80) = v21;
  *(v12 + 88) = v22;
  v23 = type metadata accessor for WellnessQueryingStepsParameters(0);
  sub_77388(v23);
  sub_773A0(v24);
  if (v26)
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    v27 = 0;
  }

  else
  {
    v27 = *v25;
  }

  *(v12 + 96) = v27;
  sub_76D18();
  sub_7757C(v28);
  sub_74678(v5 + v29, v3, &qword_1C5800, &unk_16F510);
  sub_76A04(v3);
  if (v17)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
  }

  else
  {
    *(v12 + 168) = v16;
    sub_9910((v12 + 144));
    sub_76AEC();
    v31 = *(v30 + 32);
    sub_77394();
    v32();
  }

  sub_38B4C();
  *(v12 + 176) = v4;
  *(v12 + 184) = v33;
  v34 = *(v5 + v2[7]);
  if (v34)
  {
    v35 = sub_16D39C();
    v36 = v34;
  }

  else
  {
    v35 = sub_76C6C();
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  *(v12 + 192) = v36;
  *(v12 + 216) = v35;
  strcpy((v12 + 224), "lastQueryDate");
  *(v12 + 238) = -4864;
  v37 = *(v5 + v2[8]);
  if (v37)
  {
    type metadata accessor for WellnessTime(0);
    v38 = v37;
  }

  else
  {
    sub_76C6C();
    *(v12 + 248) = 0;
    *(v12 + 256) = 0;
  }

  *(v12 + 240) = v38;
  sub_77364();
  *(v12 + 264) = v39;
  *(v12 + 272) = v40;
  *(v12 + 280) = 0xE400000000000000;
  v41 = *(v5 + v2[9]);
  if (v41)
  {
    type metadata accessor for WellnessTime(0);
    v42 = v41;
  }

  else
  {
    sub_76C6C();
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  *(v12 + 288) = v42;
  sub_77568();
  *(v12 + 312) = v43;
  *(v12 + 320) = v44;
  *(v12 + 328) = 0xEA00000000006575;
  sub_773A0(v2[10]);
  if (v46)
  {
    v47 = 0;
    *(v12 + 344) = 0;
    *(v12 + 352) = 0;
    v48 = 0;
  }

  else
  {
    v48 = *v45;
    v47 = &type metadata for Double;
  }

  *(v12 + 336) = v48;
  *(v12 + 360) = v47;
  *(v12 + 368) = 1953066613;
  *(v12 + 376) = 0xE400000000000000;
  sub_74678(v5 + v2[11], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v17)
  {

    sub_8748(v0, &qword_1C5800, &unk_16F510);
    *(v12 + 384) = 0u;
    *(v12 + 400) = 0u;
  }

  else
  {
    *(v12 + 408) = v16;
    sub_9910((v12 + 384));
    sub_76AEC();
    v50 = *(v49 + 32);
    sub_77590();
    v51();
  }

  sub_774FC();
}

void sub_6EAAC()
{
  sub_77510();
  v4 = sub_774E4();
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_769E8();
  __chkstk_darwin(v8);
  sub_76B1C();
  __chkstk_darwin(v9);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v10 = sub_7761C();
  *(v10 + 16) = xmmword_173190;
  sub_38B4C();
  *(v11 + 32) = 0xD000000000000016;
  *(v11 + 40) = v12;
  sub_76E28();
  sub_74678(v13, v14, v15, &unk_16F510);
  v16 = sub_16D5CC();
  sub_76A04(v2);
  if (v17)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    *(v10 + 72) = v16;
    sub_9910((v10 + 48));
    sub_76AEC();
    v19 = *(v18 + 32);
    sub_76E28();
    v20();
  }

  v21 = sub_769C8();
  v22 = type metadata accessor for WellnessQueryingWeightParameters(v21);
  sub_77388(v22);
  sub_7753C(&qword_1C5800, &unk_16F510, v23);
  sub_76A04(v3);
  if (v17)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    *(v10 + 120) = v16;
    sub_9910((v10 + 96));
    sub_76AEC();
    v25 = *(v24 + 32);
    sub_77394();
    v26();
  }

  sub_38B4C();
  *(v10 + 128) = 0xD000000000000014;
  *(v10 + 136) = v27;
  v28 = *(v0 + v2[6]);
  if (v28)
  {
    sub_16D39C();
    v29 = v28;
  }

  else
  {
    sub_76C6C();
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v29;
  sub_38B4C();
  *(v10 + 168) = v30;
  *(v10 + 176) = 0xD000000000000016;
  *(v10 + 184) = v31;
  *(v10 + 192) = *(v0 + v2[7]);
  *(v10 + 216) = &type metadata for Bool;
  *(v10 + 224) = 0x65756C615678616DLL;
  *(v10 + 232) = 0xE800000000000000;
  sub_76D40(v2[8]);
  if (v33)
  {
    v35 = sub_76DBC();
  }

  else
  {
    v35 = *v32;
    v34 = &type metadata for Double;
  }

  sub_76C08(v34, v35);
  sub_76D40(v2[9]);
  if (v37)
  {
    v39 = sub_76DAC();
  }

  else
  {
    v39 = *v36;
    v38 = &type metadata for Double;
  }

  sub_76C94(v38, v39);
  v40 = *(v0 + v2[10]);
  if (v40)
  {
    v41 = type metadata accessor for WellnessTime(0);
    v42 = v40;
  }

  else
  {
    v41 = sub_76C6C();
    *(v10 + 344) = 0;
    *(v10 + 352) = 0;
  }

  sub_76C78(v41, v42);
  sub_7741C(&qword_1C5800, &unk_16F510, v2[11]);
  sub_76A04(v1);
  if (v17)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v10 + 384) = 0u;
    *(v10 + 400) = 0u;
  }

  else
  {
    *(v10 + 408) = v16;
    sub_9910((v10 + 384));
    sub_76AEC();
    v44 = *(v43 + 32);
    sub_775E4();
    v45();
  }

  sub_76D74();
  sub_76D40(v2[12]);
  if (v47)
  {
    v49 = sub_773E4();
  }

  else
  {
    v49 = *v46;
    v48 = &type metadata for Double;
  }

  *(v10 + 432) = v49;
  *(v10 + 456) = v48;
  sub_76E7C();
  sub_774FC();
}

uint64_t sub_6EE28()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  active = type metadata accessor for WellnessQueryingActiveEnergyParameters(v3);
  sub_76ACC(active);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(29);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_6EF6C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6F08C()
{
  sub_8A88();
  sub_771CC();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6F0E8()
{
  sub_8A88();
  sub_771CC();

  sub_76ADC();

  return v0();
}

uint64_t sub_6F144()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6F1B8()
{
  sub_5E06C();
  sub_C9EC();
  sub_76D4C();
  sub_76978();
  v4 = sub_76A58(v3);
  sub_76CDC(v4, v5, v6);
  *(v0 + v7) = 0;
  *(v0 + *(v1 + 32)) = 0;
  v2(v0);
  sub_76E1C();
  sub_6B680();
  sub_76D00(v8);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = sub_76D0C(v9);
  *v10 = v11;
  sub_769B4(v10);
  sub_76C50(37);
  sub_38F74();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_6F290()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6F3B0()
{
  sub_8A88();
  sub_76EE0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6F40C()
{
  sub_8A88();
  sub_76EE0();

  sub_76ADC();

  return v0();
}

uint64_t sub_6F468()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBloodGlucoseParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(29);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_6F5B8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6F6D8()
{
  sub_8A88();
  sub_770C4();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6F734()
{
  sub_8A88();
  sub_770C4();

  sub_76ADC();

  return v0();
}

uint64_t sub_6F790()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBloodOxygenParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v11 = sub_16D5CC();
  sub_7689C(v11);
  v10(v9);
  sub_76E1C();
  sub_6B90C();
  sub_76D00(v12);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v26 = v13;
  v14 = swift_task_alloc();
  v15 = sub_76D0C(v14);
  *v15 = v16;
  sub_769B4(v15);
  sub_76B30(28);
  sub_774AC();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t sub_6F8CC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6F9EC()
{
  sub_8A88();
  sub_76EB4();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6FA48()
{
  sub_8A88();
  sub_76EB4();

  sub_76ADC();

  return v0();
}

uint64_t sub_6FAA4()
{
  sub_8A88();
  v6 = sub_76CB0(v1, v2, v3, v4, v5);
  v7 = type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters(v6);
  sub_76ACC(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_6FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  sub_77370();
  v16 = v13[90];
  v17 = v13[89];
  v18 = v13[88];
  v19 = sub_16D5CC();
  v20 = sub_76AAC();
  sub_214C(v20, v21, v22, v19);
  v23 = sub_76A58(v15[5]);
  sub_214C(v23, v24, v25, v19);
  v26 = sub_76A58(v15[17]);
  sub_214C(v26, v27, v28, v19);
  sub_76A48(v15[6]);
  sub_76A48(v15[7]);
  sub_76A48(v15[8]);
  sub_76A48(v15[9]);
  *(v12 + v15[10]) = v18;
  *(v12 + v15[11]) = v17;
  *(v12 + v15[12]) = v16;
  *(v12 + v15[13]) = 0;
  sub_76A48(v15[14]);
  sub_76A48(v15[15]);
  *(v12 + v15[16]) = 0;
  sub_76A48(v15[18]);
  v14(v12);
  sub_76E1C();
  sub_6BC7C();
  sub_76D00(v29);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v43 = v30;
  v31 = swift_task_alloc();
  v32 = sub_76D0C(v31);
  *v32 = v33;
  sub_769B4(v32);
  sub_76C50(45);
  sub_8CC0();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10, a11, a12);
}

uint64_t sub_6FC7C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_6FD9C()
{
  sub_8A88();
  sub_77224();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6FDF8()
{
  sub_8A88();
  sub_77224();

  sub_76ADC();

  return v0();
}

uint64_t sub_6FE54()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v13 = sub_76D4C();
  sub_76948(v13);
  v15 = sub_76A58(v14);
  sub_76CDC(v15, v16, v17);
  sub_76A48(v18);
  sub_76A48(v11[8]);
  *(v9 + v11[9]) = 0;
  v19 = sub_76A58(v11[10]);
  sub_214C(v19, v20, v21, v10);
  v12(v9);
  sub_76E1C();
  sub_6C1B8();
  sub_76D00(v22);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v36 = v23;
  v24 = swift_task_alloc();
  v25 = sub_76D0C(v24);
  *v25 = v26;
  sub_769B4(v25);
  sub_76B30(43);
  sub_774AC();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36);
}

uint64_t sub_6FFB4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_700D4()
{
  sub_8A88();
  sub_77098();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_70130()
{
  sub_8A88();
  sub_77098();

  sub_76ADC();

  return v0();
}

uint64_t sub_7018C()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBodyTemperatureParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_70200()
{
  sub_5E06C();
  sub_C9EC();
  sub_76D4C();
  sub_76978();
  *(v0 + v2) = 0;
  sub_76860();
  sub_7744C(v3);
  v1(v0);
  sub_76E1C();
  sub_6C554();
  sub_76D00(v4);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v6 = sub_76D0C(v5);
  *v6 = v7;
  sub_769B4(v6);
  sub_76C50(32);
  sub_38F74();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_702D0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_703F0()
{
  sub_8A88();
  sub_76E88();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7044C()
{
  sub_8A88();
  sub_76E88();

  sub_76ADC();

  return v0();
}

uint64_t sub_704A8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingCardioFitnessParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v12 = sub_76D4C();
  sub_76948(v12);
  v14 = sub_76A58(v13);
  sub_76CDC(v14, v15, v16);
  sub_76A48(v17);
  *(v9 + *(v10 + 32)) = 0;
  v11(v9);
  sub_76E1C();
  sub_6C89C();
  sub_76D00(v18);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v32 = v19;
  v20 = swift_task_alloc();
  v21 = sub_76D0C(v20);
  *v21 = v22;
  sub_769B4(v21);
  sub_76B30(30);
  sub_774AC();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

uint64_t sub_705F0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_70710()
{
  sub_8A88();
  sub_7711C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7076C()
{
  sub_8A88();
  sub_7711C();

  sub_76ADC();

  return v0();
}

uint64_t sub_707C8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingCyclingDistanceParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(32);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_7090C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_70A2C()
{
  sub_8A88();
  sub_76F0C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_70A88()
{
  sub_8A88();
  sub_76F0C();

  sub_76ADC();

  return v0();
}

uint64_t sub_70AE4()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingDistanceWalkingAndRunningParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_70B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(42);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_70C28()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_70D48()
{
  sub_8A88();
  sub_7727C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_70DA4()
{
  sub_8A88();
  sub_7727C();

  sub_76ADC();

  return v0();
}

uint64_t sub_70E00()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingDistanceWheelchairParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_70E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(35);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_70F44()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_71064()
{
  sub_8A88();
  sub_77250();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_710C0()
{
  sub_8A88();
  sub_77250();

  sub_76ADC();

  return v0();
}

uint64_t sub_7111C()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingExerciseMinutesParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_71190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(32);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_71260()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_71380()
{
  sub_8A88();
  sub_770F0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_713DC()
{
  sub_8A88();
  sub_770F0();

  sub_76ADC();

  return v0();
}

uint64_t sub_71438()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingFlightsClimbedParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_714AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(31);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_7157C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_7169C()
{
  sub_8A88();
  sub_7706C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_716F8()
{
  sub_8A88();
  sub_7706C();

  sub_76ADC();

  return v0();
}

uint64_t sub_71754()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingHeartRateParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_717C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(26);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_718A4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_719C4()
{
  sub_8A88();
  sub_77014();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_71A20()
{
  sub_8A88();
  sub_77014();

  sub_76ADC();

  return v0();
}

uint64_t sub_71A7C()
{
  sub_8A88();
  v5 = sub_77470(v1, v2, v3, v4);
  v6 = type metadata accessor for WellnessQueryingHeightParameters(v5);
  sub_76ACC(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_71AF0()
{
  sub_76D68();
  v5 = sub_774C0();
  sub_76978();
  v7 = sub_76A58(v6);
  sub_214C(v7, v8, v9, v5);
  *(v0 + v1[6]) = v3;
  *(v0 + v1[7]) = v4;
  *(v0 + v1[8]) = 0;
  sub_7744C(v1[9]);
  *(v0 + v1[12]) = 0;
  v2(v0);
  sub_76E1C();
  sub_6D344();
  sub_76D00(v10);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_76D0C(v11);
  *v12 = v13;
  sub_769B4(v12);
  v14 = sub_76C50(23);

  return v15(v14);
}

uint64_t sub_71BF8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_71D18()
{
  sub_8A88();
  sub_771F8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_71D74()
{
  sub_8A88();
  sub_771F8();

  sub_76ADC();

  return v0();
}

uint64_t sub_71DD0()
{
  sub_8A88();
  v5 = sub_77470(v1, v2, v3, v4);
  v6 = type metadata accessor for WellnessQueryingMenstruationEndParameters(v5);
  sub_76ACC(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_71E44()
{
  sub_76D68();
  sub_774C0();
  sub_76978();
  v6 = sub_76A58(v5);
  sub_76CDC(v6, v7, v8);
  *(v0 + v9) = v4;
  *(v0 + *(v1 + 32)) = v3;
  v2(v0);
  sub_76E1C();
  sub_6D6A0();
  sub_76D00(v10);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_76D0C(v11);
  *v12 = v13;
  sub_769B4(v12);
  v14 = sub_76C50(32);

  return v15(v14);
}

uint64_t sub_71F2C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_7204C()
{
  sub_8A88();
  sub_772A8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_720A8()
{
  sub_8A88();
  sub_772A8();

  sub_76ADC();

  return v0();
}

uint64_t sub_72104()
{
  sub_8A88();
  v6 = sub_76CB0(v1, v2, v3, v4, v5);
  started = type metadata accessor for WellnessQueryingMenstruationStartParameters(v6);
  sub_76ACC(started);
  v9 = *(v8 + 64);
  *(v0 + 48) = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_72178()
{
  sub_38664();
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];
  sub_775FC();
  sub_76978();
  v9 = sub_76A58(v8);
  sub_76CDC(v9, v10, v11);
  *(v4 + v12) = v3;
  *(v4 + *(v5 + 32)) = v2;
  *(v4 + *(v5 + 36)) = v1;
  v7(v4);
  sub_76E1C();
  sub_6D8B8();
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v19 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);

  return v19(0xD000000000000022);
}

uint64_t sub_7227C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_7239C()
{
  sub_8A88();
  sub_77148();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_723F8()
{
  sub_8A88();
  sub_77148();

  sub_76ADC();

  return v0();
}

uint64_t sub_72454()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingPushesParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_724C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(23);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_72598()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_726B8()
{
  sub_8A88();
  sub_76F38();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_72714()
{
  sub_8A88();
  sub_76F38();

  sub_76ADC();

  return v0();
}

uint64_t sub_72770()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingRespiratoryRateParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_727E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(32);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_728C0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_729E0()
{
  sub_8A88();
  sub_77174();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_72A3C()
{
  sub_8A88();
  sub_77174();

  sub_76ADC();

  return v0();
}

uint64_t sub_72A98()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingRestingEnergyParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_72B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(30);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_72BDC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_72CFC()
{
  sub_8A88();
  sub_76FBC();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_72D58()
{
  sub_8A88();
  sub_76FBC();

  sub_76ADC();

  return v0();
}

uint64_t sub_72DB4()
{
  sub_8A88();
  v6 = sub_76CB0(v1, v2, v3, v4, v5);
  v7 = type metadata accessor for WellnessQueryingSleep_DetailedResultParameters(v6);
  sub_76ACC(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_72E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  sub_77370();
  v18 = sub_775FC();
  v19 = sub_76AAC();
  sub_214C(v19, v20, v21, v18);
  v22 = sub_76A58(v14[7]);
  sub_214C(v22, v23, v24, v18);
  *(v12 + v14[5]) = 0;
  *(v12 + v14[6]) = 0;
  sub_76C60(v14[8]);
  *(v25 + 8) = 1;
  sub_76C60(v14[9]);
  *(v26 + 8) = 1;
  *(v12 + v14[10]) = v17;
  *(v12 + v14[11]) = v16;
  *(v12 + v14[12]) = v15;
  sub_76C60(v14[13]);
  *(v27 + 8) = 1;
  *(v12 + v14[14]) = 0;
  *(v12 + v14[15]) = 0;
  sub_76C60(v14[16]);
  *(v28 + 8) = 1;
  v13(v12);
  sub_76E1C();
  sub_6DF30();
  sub_76D00(v29);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v43 = v30;
  v31 = swift_task_alloc();
  v32 = sub_76D0C(v31);
  *v32 = v33;
  sub_769B4(v32);
  sub_76C50(37);
  sub_8CC0();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10, a11, a12);
}

uint64_t sub_72F74()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_73094()
{
  sub_8A88();
  sub_76F64();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_730F0()
{
  sub_8A88();
  sub_76F64();

  sub_76ADC();

  return v0();
}

uint64_t sub_7314C()
{
  sub_8A88();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 136) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 16) = v6;
  v7 = sub_16BE9C();
  *(v0 + 56) = v7;
  v8 = *(v7 - 8);
  *(v0 + 64) = v8;
  v9 = *(v8 + 64);
  *(v0 + 72) = sub_8BC0();
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  v12 = *(v11 + 64);
  *(v0 + 80) = sub_8BC0();
  v13 = type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  *(v0 + 88) = v13;
  sub_4348(v13);
  v15 = *(v14 + 64);
  *(v0 + 96) = sub_8BC0();
  v16 = sub_17960();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_73254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = *(v12 + 88);
  v13 = *(v12 + 96);
  v15 = *(v12 + 56);
  v16 = *(v12 + 24);
  v17 = sub_16D5CC();
  v18 = sub_76AAC();
  sub_214C(v18, v19, v20, v17);
  v21 = v14[5];
  *(v13 + v21) = 0;
  v22 = v14[6];
  *(v13 + v22) = 0;
  v23 = sub_76A58(v14[7]);
  sub_214C(v23, v24, v25, v17);
  v26 = v14[8];
  *(v13 + v26) = 0;
  v27 = v14[9];
  *(v13 + v27) = 0;
  *(v13 + v14[10]) = 0;
  *(v13 + v14[11]) = 0;
  v28 = sub_369C(v16, 1, v15);
  v29 = *(v12 + 80);
  if (v28)
  {
    sub_214C(*(v12 + 80), 1, 1, v17);
  }

  else
  {
    v31 = *(v12 + 64);
    v30 = *(v12 + 72);
    v32 = *(v12 + 56);
    (*(v31 + 16))(v30, *(v12 + 24), v32);
    sub_61120(v29);
    (*(v31 + 8))(v30, v32);
  }

  v33 = *(v12 + 136);
  v35 = *(v12 + 32);
  v34 = *(v12 + 40);
  sub_8640(*(v12 + 80), *(v12 + 96));
  *(v13 + v26) = v35;
  *(v13 + v27) = v34;
  if (v33 == 1)
  {
    v36 = *(v12 + 40);
    v37 = *(v12 + 48);
    v38 = *(v12 + 32);
    v39 = sub_16D53C();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();

    sub_16D52C();
    [v37 averageAsleepDuration];
    sub_16D51C();

    v42 = sub_16D50C();

    *(v13 + v21) = v42;
  }

  else
  {
    v43 = *(v12 + 32);
    v44 = *(v12 + 40);
  }

  v45 = *(v12 + 96);
  v46 = *(v12 + 48);
  v47 = sub_16D53C();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_16D52C();
  [v46 averageInBedDuration];
  sub_16D51C();

  v50 = sub_16D50C();

  *(v13 + v22) = v50;
  sub_6E354();
  *(v12 + 104) = v51;
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v64 = v52;
  v53 = swift_task_alloc();
  *(v12 + 112) = v53;
  *v53 = v12;
  v53[1] = sub_73510;
  v54 = *(v12 + 16);
  sub_76C50(35);
  sub_8CC0();

  return v58(v55, v56, v57, v58, v59, v60, v61, v62, v64, a10, a11, a12);
}

uint64_t sub_73510()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_73630()
{
  sub_C9EC();
  sub_76DE4();

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2(v3);
}

uint64_t sub_736CC()
{
  sub_C9EC();
  sub_76DE4();

  v2 = *(v0 + 8);
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_73764()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingStandMinutesParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_737D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(29);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_738A8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_739C8()
{
  sub_8A88();
  sub_771A0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_73A24()
{
  sub_8A88();
  sub_771A0();

  sub_76ADC();

  return v0();
}

uint64_t sub_73A80()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingStepsParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_73AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v13 = sub_76D4C();
  sub_76948(v13);
  sub_76A48(v14);
  sub_76860();
  *(v9 + v15) = 0;
  sub_76A48(*(v11 + 40));
  v16 = sub_76A58(*(v11 + 44));
  sub_214C(v16, v17, v18, v10);
  v12(v9);
  sub_76E1C();
  sub_6E6B8();
  sub_76D00(v19);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v33 = v20;
  v21 = swift_task_alloc();
  v22 = sub_76D0C(v21);
  *v22 = v23;
  sub_769B4(v22);
  sub_76B30(22);
  sub_774AC();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_73BD8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_73CF8()
{
  sub_8A88();
  sub_76FE8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_73D54()
{
  sub_8A88();
  sub_76FE8();

  sub_76ADC();

  return v0();
}

uint64_t sub_73DB0()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingWalkingHeartRateAverageParameters(v3);
  sub_76ACC(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_73E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(40);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_73F00()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_74020()
{
  sub_8A88();
  sub_76F90();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7407C()
{
  sub_8A88();
  sub_76F90();

  sub_76ADC();

  return v0();
}

uint64_t sub_740D8()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 88) = v4;
  v5 = type metadata accessor for WellnessQueryingWeightParameters(0);
  sub_76ACC(v5);
  v7 = *(v6 + 64);
  *(v1 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_74158()
{
  sub_76D68();
  sub_77370();
  v4 = *(v1 + 88);
  v5 = sub_16D5CC();
  v6 = sub_76AAC();
  sub_214C(v6, v7, v8, v5);
  v9 = sub_76A58(v3[5]);
  sub_214C(v9, v10, v11, v5);
  v12 = sub_76A58(v3[11]);
  sub_214C(v12, v13, v14, v5);
  *(v0 + v3[6]) = 0;
  *(v0 + v3[7]) = v4;
  sub_76C60(v3[8]);
  *(v15 + 8) = 1;
  sub_76C60(v3[9]);
  *(v16 + 8) = 1;
  *(v0 + v3[10]) = 0;
  sub_76C60(v3[12]);
  *(v17 + 8) = 1;
  v2(v0);
  sub_76E1C();
  sub_6EAAC();
  sub_76D00(v18);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v19 = swift_task_alloc();
  v20 = sub_76D0C(v19);
  *v20 = v21;
  sub_769B4(v20);
  v22 = sub_76C50(23);

  return v23(v22);
}

uint64_t sub_742A0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_C990();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_743C0()
{
  sub_8A88();
  sub_77040();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7441C()
{
  sub_8A88();
  sub_77040();

  sub_76ADC();

  return v0();
}

uint64_t sub_74478(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_744CC(a1, a2);
}

uint64_t sub_744CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_16D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  v8 = sub_4348(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_74678(a1, &v16 - v11, &qword_1C57F8, &unk_172510);
  v12 = *(v5 + 16);
  sub_775E4();
  v13();
  v14 = sub_16D56C();
  (*(v5 + 8))(a2, v4);
  sub_8748(a1, &qword_1C57F8, &unk_172510);
  return v14;
}

uint64_t sub_74678(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  sub_8B38(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_746F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_74B10()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_74C78()
{
  sub_76D8C();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) != v0)
  {
    return sub_76A24(*(v1 + 52));
  }

  v4 = sub_76D9C();

  return sub_369C(v4, v5, v6);
}

void sub_74D20()
{
  sub_76BF4();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_76BE0();

    sub_214C(v4, v5, v6, v7);
  }

  else
  {
    sub_77464(*(v0 + 52));
  }
}

uint64_t sub_74DB4()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_74F54()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_3A10(319, &qword_1C5720);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_750B0()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7170, &type metadata accessor for DialogTemperature);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_75254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_76BB8(a1, &qword_1C64B8);
  if (v10 <= 0x3F)
  {
    sub_76B90(v9, &qword_1C70B8);
    if (v11 <= 0x3F)
    {
      v12 = a6(319, a4, a5);
      if (v13 <= 0x3F)
      {
        sub_76B68(v12, &unk_1C70C0);
        if (v14 <= 0x3F)
        {
          sub_7740C();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_75354(uint64_t a1)
{
  sub_76BB8(a1, &qword_1C64B8);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_76B90(v4, &qword_1C70B8);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_76B68(v6, &unk_1C70C0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_7740C();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_7551C(uint64_t a1)
{
  sub_76BB8(a1, &qword_1C64B8);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_76B90(v4, &qword_1C70B8);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_76B68(v6, &unk_1C70C0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_3A10(319, &unk_1C7218);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_7740C();
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_75660()
{
  sub_76D8C();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) != v0)
  {
    return sub_76A24(*(v1 + 32));
  }

  v4 = sub_76D9C();

  return sub_369C(v4, v5, v6);
}

void sub_75708()
{
  sub_76BF4();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_76BE0();

    sub_214C(v4, v5, v6, v7);
  }

  else
  {
    sub_77464(*(v0 + 32));
  }
}

void sub_7579C()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7A30, &type metadata accessor for DialogPersonHeight);
    if (v1 <= 0x3F)
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v2 <= 0x3F)
      {
        sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_758FC()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_759F0()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_75B58()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7E30, &type metadata accessor for DialogDuration);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_3A10(319, &qword_1C5720);
    v1 = v5;
    if (v6 > 0x3F)
    {
      return v1;
    }

    sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}