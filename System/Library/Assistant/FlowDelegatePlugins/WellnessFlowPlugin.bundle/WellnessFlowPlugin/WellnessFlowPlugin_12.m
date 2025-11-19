uint64_t sub_11B92C()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_11B9B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11B9FC()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_11BA8C()
{
  result = v0[478];
  v2 = v0[477];
  v3 = v0[476];
  v4 = v0[475];
  v5 = v0[474];
  v6 = v0[473];
  v7 = v0[472];
  v8 = v0[471];
  v9 = v0[470];
  v10 = v0[469];
  v13 = v0[468];
  v14 = v0[467];
  v15 = v0[466];
  v16 = v0[465];
  v17 = v0[464];
  v18 = v0[463];
  v19 = v0[462];
  v20 = v0[461];
  v21 = v0[460];
  v22 = v0[459];
  v23 = v0[458];
  v24 = v0[457];
  v25 = v0[456];
  v26 = v0[453];
  v27 = v0[452];
  v28 = v0[449];
  v29 = v0[448];
  v30 = v0[445];
  v31 = v0[443];
  v32 = v0[442];
  v33 = v0[441];
  v34 = v0[440];
  v35 = v0[439];
  v36 = v0[438];
  v37 = v0[437];
  v38 = v0[436];
  v11 = v0[435];
  v12 = v0[434];
  return result;
}

uint64_t sub_11BB5C()
{
  result = v0[478];
  v2 = v0[477];
  v3 = v0[476];
  v4 = v0[475];
  v5 = v0[474];
  v6 = v0[473];
  v7 = v0[472];
  v8 = v0[471];
  v9 = v0[470];
  v10 = v0[469];
  v11 = v0[468];
  v12 = v0[467];
  return result;
}

uint64_t sub_11BB90()
{
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v11 = v0[23];
}

uint64_t sub_11BBD4()
{
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

void sub_11BBF0()
{
  v2 = v0[466];
  v3 = v0[465];
  v4 = v0[464];
  v5 = v0[463];
  v6 = v0[462];
  v7 = v0[461];
  v8 = v0[460];
  v9 = v0[459];
  v10 = v0[458];
  v11 = v0[457];
  v12 = v0[456];
  v13 = v0[453];
  v14 = v0[452];
  v15 = v0[449];
  v16 = v0[448];
  v17 = v0[445];
  v18 = v0[443];
  v19 = v0[442];
  v20 = v0[441];
  v21 = v0[440];
  v22 = v0[439];
  v23 = v0[438];
  v1 = v0[437];
  v24 = v0[436];
}

uint64_t sub_11BC88@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 200) = v1;
  *(v3 - 192) = a1;
  v5 = v2[432];
  *(v3 - 184) = v2[433];
  *(v3 - 176) = v5;
  v6 = v2[428];
  *(v3 - 168) = v2[431];
  *(v3 - 160) = v6;
  v7 = v2[426];
  *(v3 - 152) = v2[427];
  *(v3 - 144) = v7;
  v8 = v2[423];
  *(v3 - 136) = v2[424];
  *(v3 - 128) = v8;
  v9 = v2[421];
  *(v3 - 120) = v2[422];
  *(v3 - 112) = v9;
  v10 = v2[416];
  *(v3 - 104) = v2[419];
  *(v3 - 96) = v10;
}

uint64_t sub_11BD2C()
{
  result = v0[177];
  v2 = v0[176];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[169];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[164];
  v9 = v0[163];
  v10 = v0[160];
  v11 = v0[159];
  return result;
}

void sub_11BD74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_11BD94()
{
  v10 = v0[466];
  v11 = v0[465];
  v12 = v0[464];
  v13 = v0[463];
  v14 = v0[462];
  v15 = v0[461];
  v16 = v0[460];
  v17 = v0[459];
  v18 = v0[458];
  v19 = v0[457];
  v20 = v0[456];
  v21 = v0[453];
  v22 = v0[452];
  v23 = v0[449];
  v24 = v0[448];
  v25 = v0[445];
  v26 = v0[443];
  v27 = v0[442];
  v28 = v0[441];
  v29 = v0[440];
  v30 = v0[439];
  v31 = v0[438];
  v32 = v0[437];
  v33 = v0[436];
  v34 = v0[435];
  v35 = v0[434];
  v3 = v0[432];
  *(v1 - 224) = v0[433];
  *(v1 - 216) = v3;
  v4 = v0[428];
  *(v1 - 208) = v0[431];
  *(v1 - 200) = v4;
  v5 = v0[426];
  *(v1 - 192) = v0[427];
  *(v1 - 184) = v5;
  v6 = v0[423];
  *(v1 - 176) = v0[424];
  *(v1 - 168) = v6;
  v7 = v0[421];
  *(v1 - 160) = v0[422];
  *(v1 - 152) = v7;
  v8 = v0[416];
  *(v1 - 144) = v0[419];
  *(v1 - 136) = v8;
}

uint64_t sub_11BEC8()
{
  v10 = v0[435];
  v3 = v0[433];
  *(v1 - 200) = v0[434];
  *(v1 - 192) = v3;
  v4 = v0[431];
  *(v1 - 184) = v0[432];
  *(v1 - 176) = v4;
  v5 = v0[427];
  *(v1 - 168) = v0[428];
  *(v1 - 160) = v5;
  v6 = v0[424];
  *(v1 - 152) = v0[426];
  *(v1 - 144) = v6;
  v7 = v0[422];
  *(v1 - 136) = v0[423];
  *(v1 - 128) = v7;
  v8 = v0[419];
  *(v1 - 120) = v0[421];
  *(v1 - 112) = v8;
  *(v1 - 104) = v0[416];
}

uint64_t sub_11BF30(uint64_t a1)
{
  *(a1 + 8) = sub_116658;
  v2 = v1[509];
  v3 = v1[441];
  return v1[442];
}

void sub_11BF84()
{
  v4 = v1[516];
  v5 = v1[514];
  v6 = v1[512];
  v7 = v1[504];
  v8 = v1[457];
  v9 = v1[455];
  v10 = v1[454];
  v11 = v1[436];
  *(v2 - 112) = v1[434];
  *(v2 - 104) = v11;
  *(v2 - 120) = v1[430];
  v12 = v1[429];
  v13 = v1[428];
  *(v2 - 136) = v5;
  *(v2 - 128) = v13;
  *(v2 - 144) = v1[424];
  v14 = v1[415];
}

void sub_11C034()
{
  v1 = v0[503];
  v2 = v0[502];
  v3 = v0[501];
}

uint64_t sub_11C044(uint64_t a1)
{

  return sub_11B818(a1, type metadata accessor for WellnessQueryingRingsParameters);
}

void sub_11C084()
{
  v8 = v0[65];
  v1 = v0[63];
  v2 = v0[57];
  v3 = v0[53];
  v4 = v0[48];
  v5 = v0[33];
  v6 = v0[27];
  v7 = v0[28];
}

uint64_t sub_11C0B4(uint64_t a1, uint64_t a2)
{
  sub_214C(v4, a2, 1, v3);

  return sub_11B684(v4, v2);
}

void *sub_11C0F8()
{
  v1 = v0[10];
  result = sub_2D20(v0 + 6, v0[9]);
  v3 = *(v1 + 8);
  return result;
}

void sub_11C120(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;
  v4._countAndFlagsBits = 47;
  v4._object = 0xE100000000000000;

  sub_16E26C(v4);
}

uint64_t sub_11C140()
{

  return sub_8748(v2, v0, v1);
}

void sub_11C15C()
{
  v1 = v0[63];
  v2 = v0[57];
  v3 = v0[53];
  v4 = v0[48];
  v5 = v0[32];
  v6 = v0[27];
  v7 = v0[28];
}

void sub_11C178()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
}

uint64_t sub_11C184()
{

  return sub_8748(v2, v0, v1);
}

uint64_t sub_11C1A0()
{

  return sub_369C(v0, 1, v1);
}

uint64_t sub_11C1D8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 360);
  return result;
}

uint64_t sub_11C1E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_11C200()
{

  return sub_8748(v1, v0, v2);
}

uint64_t sub_11C21C()
{

  return sub_16BCDC();
}

uint64_t sub_11C238()
{

  return sub_16E48C();
}

void sub_11C264()
{
  v1 = v0[53];
  v2 = v0[48];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
}

uint64_t sub_11C278()
{
  result = v0[436];
  v2 = v0[429];
  v3 = *(v0[430] + 8);
  return result;
}

uint64_t sub_11C28C()
{
  v3 = *(v1 + 3528);
  v4 = *(v1 + 3432);

  return sub_214C(v3, v0, 1, v4);
}

uint64_t sub_11C2AC()
{
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3536);
  v4 = *(v0 + 3432);
  v5 = *(v0 + 265);

  return sub_208C0(v5);
}

void sub_11C2CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_11C2EC()
{
  v2 = v0[480];
  v3 = v0[479];
  v4 = v0[441];
}

void sub_11C30C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_11C324()
{

  return sub_16E2CC();
}

uint64_t GenericButtonModel.init(label:punchout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for GenericButtonModel() + 20);
  v7 = sub_16BE9C();
  sub_8B38(v7);
  v9 = *(v8 + 32);

  return v9(&a4[v6], a3);
}

uint64_t type metadata accessor for GenericButtonModel()
{
  result = qword_1CA980;
  if (!qword_1CA980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericButtonModel.punchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericButtonModel() + 20);
  v4 = sub_16BE9C();
  v5 = sub_8B38(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t GenericButtonModel.punchout.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenericButtonModel() + 20);
  v4 = sub_16BE9C();
  sub_8B38(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_11C57C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_16E6BC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_11C680(char a1)
{
  sub_16E72C();
  sub_16E73C(a1 & 1);
  return sub_16E75C();
}

uint64_t sub_11C6C8(char a1)
{
  if (a1)
  {
    return 0x74756F68636E7570;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_11C720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11C57C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_11C748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11C640();
  *a1 = result;
  return result;
}

uint64_t sub_11C770(uint64_t a1)
{
  v2 = sub_11C984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11C7AC(uint64_t a1)
{
  v2 = sub_11C984();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CA910, &qword_176F80);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_11C984();
  sub_16E77C();
  v14 = *v3;
  v15 = v3[1];
  v20[15] = 0;
  sub_16E64C();
  if (!v2)
  {
    v16 = *(type metadata accessor for GenericButtonModel() + 20);
    v20[14] = 1;
    sub_16BE9C();
    sub_11D208();
    sub_11CD44(v17, v18);
    sub_16E67C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_11C984()
{
  result = qword_1CA918;
  if (!qword_1CA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA918);
  }

  return result;
}

uint64_t GenericButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_16BE9C();
  v4 = sub_42F0(v32);
  v29 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2440(&qword_1CA920, &qword_176F88);
  v10 = sub_42F0(v33);
  v31 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v14 = type metadata accessor for GenericButtonModel();
  v15 = sub_8B38(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_11C984();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  v28 = v14;
  v21 = v32;
  v35 = 0;
  *v19 = sub_16E5BC();
  v19[1] = v22;
  v34 = 1;
  sub_11D208();
  sub_11CD44(v23, v24);
  sub_16E5EC();
  v25 = sub_11D220();
  v26(v25);
  (*(v29 + 32))(v19 + *(v28 + 20), v9, v21);
  sub_175A0(v19, v30);
  sub_2D64(a1);
  return sub_17604(v19);
}

uint64_t sub_11CD44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11CDD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_16BE9C();
    v9 = a1 + *(a3 + 20);

    return sub_369C(v9, a2, v8);
  }
}

uint64_t sub_11CE6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_16BE9C();
    v8 = v5 + *(a4 + 20);

    return sub_214C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_11CEEC()
{
  result = sub_16BE9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GenericButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x11D0BCLL);
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

unint64_t sub_11D104()
{
  result = qword_1CA9B8;
  if (!qword_1CA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9B8);
  }

  return result;
}

unint64_t sub_11D15C()
{
  result = qword_1CA9C0;
  if (!qword_1CA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9C0);
  }

  return result;
}

unint64_t sub_11D1B4()
{
  result = qword_1CA9C8;
  if (!qword_1CA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9C8);
  }

  return result;
}

uint64_t sub_11D220()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_11D230(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 249))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_11D270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_11D300()
{
  sub_92460();

  return sub_16C33C();
}

uint64_t sub_11D354()
{
  sub_8A88();
  v1[180] = v0;
  v1[179] = v2;
  v3 = sub_2440(&qword_1CA9D0, &unk_177268);
  v1[181] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[182] = sub_8C38();
  v1[183] = swift_task_alloc();
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[184] = sub_8BC0();
  v9 = sub_16BF5C();
  v1[185] = v9;
  sub_888C(v9);
  v1[186] = v10;
  v12 = *(v11 + 64);
  v1[187] = sub_8BC0();
  v13 = type metadata accessor for WellnessLoggingWatchMedicationQueryingErrorParameters(0);
  v1[188] = v13;
  sub_4348(v13);
  v15 = *(v14 + 64);
  v1[189] = sub_8C38();
  v1[190] = swift_task_alloc();
  v16 = sub_16D7AC();
  v1[191] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v1[192] = sub_8BC0();
  v19 = sub_16DBEC();
  v1[193] = v19;
  sub_888C(v19);
  v1[194] = v20;
  v22 = *(v21 + 64);
  v1[195] = sub_8C38();
  v1[196] = swift_task_alloc();
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v1[201] = swift_task_alloc();
  v1[202] = swift_task_alloc();
  v1[203] = swift_task_alloc();
  v23 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v23);
  v25 = *(v24 + 64);
  v1[204] = sub_8BC0();
  v26 = sub_16BE9C();
  v1[205] = v26;
  sub_888C(v26);
  v1[206] = v27;
  v29 = *(v28 + 64);
  v1[207] = sub_8C38();
  v1[208] = swift_task_alloc();
  v1[209] = swift_task_alloc();
  v30 = sub_16C46C();
  v1[210] = v30;
  sub_888C(v30);
  v1[211] = v31;
  v33 = *(v32 + 64);
  v1[212] = sub_8C38();
  v1[213] = swift_task_alloc();
  v34 = sub_16C7BC();
  v1[214] = v34;
  sub_888C(v34);
  v1[215] = v35;
  v37 = *(v36 + 64);
  v1[216] = sub_8C38();
  v1[217] = swift_task_alloc();
  v38 = sub_17960();

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_11D6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v27 = *(v26 + 1440);
  v28 = *v27;
  v29 = v27[5];
  sub_2D20(v27 + 1, v27[4]);
  v30 = *(v29 + 8);
  v31 = sub_C9F8();
  v32(v31);
  isSpecificMedRequest(from:deviceState:)();
  v34 = v33;
  *(v26 + 1896) = v33 & 1;
  sub_2D64((v26 + 976));
  v35 = getLocalizedMedName(from:)();
  v37 = v36;
  *(v26 + 1744) = v36;
  swift_bridgeObjectRetain_n();
  v38 = getUSOMedNames(from:)();
  if (v38)
  {
    if (v38[2])
    {
      v40 = v38[4];
      v39 = v38[5];

      goto LABEL_6;
    }
  }

  v40 = 0;
  v39 = 0;
LABEL_6:
  v41 = v34 ^ 1;
  *(v26 + 1760) = v39;
  *(v26 + 1752) = v40;
  sub_120760();
  v42 = sub_12063C();
  v43(v42);
  v44 = *(v26 + 1048);
  sub_2D20((v26 + 1016), *(v26 + 1040));
  sub_12063C();
  if (sub_16C40C())
  {

    sub_2D64((v26 + 1016));
LABEL_9:
    sub_8388(*(v26 + 1440) + 128, v26 + 1136);
    v49 = sub_2D20((v26 + 1136), *(v26 + 1160));
    if (v37)
    {
    }

    v50 = *v49;

    v51 = swift_task_alloc();
    *(v26 + 1768) = v51;
    *v51 = v26;
    v51[1] = sub_11DE78;
    sub_120720();

    return v57(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, sub_10B938, a24, a25, a26);
  }

  sub_120760();
  v45 = sub_12063C();
  v46(v45);
  v47 = *(v26 + 1088);
  sub_2D20((v26 + 1056), *(v26 + 1080));
  sub_12063C();
  v48 = sub_16C3FC();
  sub_2D64((v26 + 1056));
  sub_2D64((v26 + 1016));

  if (v48)
  {
    goto LABEL_9;
  }

  sub_120760();
  v61 = sub_12063C();
  v62(v61);
  v63 = *(v26 + 1120);
  v64 = *(v26 + 1128);
  sub_2D20((v26 + 1096), v63);
  sub_12063C();
  v65 = sub_16C41C();
  sub_2D64((v26 + 1096));
  if (v65)
  {
    v131 = v35;
    v66 = *(v26 + 1728);
    v67 = *(v26 + 1704);
    v68 = *(v26 + 1696);
    v69 = *(v26 + 1688);
    v70 = *(v26 + 1680);
    v132 = *(v26 + 1440);
    sub_16C45C();
    (*(v69 + 16))(v68, v67, v70);
    sub_C9A0();
    sub_16C75C();
    (*(v69 + 8))(v67, v70);
    if (*(v132 + 248))
    {
      v71 = *(v26 + 1496);
      sub_16BF4C();
      if (isLoggingTimeframeToday(from:todayDate:)(v28, v71))
      {
        v72 = 1;
      }

      else
      {
        v72 = isLoggingTimeframeNone(from:)();
      }

      LODWORD(a21) = v37 != 0;
      LODWORD(a20) = v72 & 1;
      *(v26 + 1897) = v72 & 1;
      v107 = *(v26 + 1512);
      a19 = *(v26 + 1504);
      v108 = *(v26 + 1440);
      (*(*(v26 + 1488) + 8))(*(v26 + 1496), *(v26 + 1480));
      v109 = isQueryAboutStatusOrSchedule(from:)() & 1;
      *(v26 + 1898) = v109;
      v110 = isQueryAboutDetails(from:)() & 1;
      *(v26 + 1899) = v110;
      v111 = v39 != 0;
      v133 = *sub_2D20((v108 + 128), *(v108 + 152));
      v112 = *(a19 + 40);
      v113 = sub_16D5CC();

      v114 = 1;
      sub_8AB4();
      sub_214C(v115, v116, v117, v113);
      *v107 = v41 & 1;
      v107[1] = v110;
      v107[2] = v109;
      v107[3] = a21;
      v107[4] = v111;
      v107[5] = a20;
      if (v37)
      {
        v118 = *(v26 + 1472);
        sub_16E23C();
        v114 = 0;
      }

      v119 = *(v26 + 1512);
      v120 = *(v26 + 1472);
      sub_214C(v120, v114, 1, v113);
      sub_8640(v120, &v107[v112]);
      *(v26 + 1832) = sub_108C08();
      v121 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v131 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v122 = swift_task_alloc();
      *(v26 + 1840) = v122;
      *v122 = v26;
      v122[1] = sub_11EEC0;
      sub_120860();
    }

    else
    {
      v93 = *(v26 + 1520);
      v94 = *(v26 + 1504);
      v95 = *(v26 + 1440);
      swift_bridgeObjectRelease_n();

      v96 = *sub_2D20((v95 + 128), *(v95 + 152));
      v97 = *(v94 + 40);
      v98 = sub_16D5CC();
      sub_8AB4();
      sub_214C(v99, v100, v101, v98);
      *(v93 + 4) = 0;
      *v93 = 0;
      sub_1B918(v93 + v97, &qword_1C5800, &unk_16F510);
      sub_8AB4();
      sub_214C(v102, v103, v104, v98);
      *(v26 + 1800) = sub_108C08();
      v105 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v133 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v106 = swift_task_alloc();
      *(v26 + 1808) = v106;
      *v106 = v26;
      v106[1] = sub_11E97C;
      sub_120860();
    }

    sub_120720();

    return v126(v123, v124, v125, v126, v127, v128, v129, v130, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v131, v133, a24, a25, a26);
  }

  else
  {
    v73 = *(v26 + 1560);
    v74 = *(v26 + 1552);
    v75 = *(v26 + 1544);
    swift_bridgeObjectRelease_n();

    v76 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    (*(v74 + 16))(v73, v76, v75);
    sub_16DBDC();
    v77 = sub_16E36C();
    if (sub_1BA1C(v77))
    {
      v78 = sub_1BA38();
      sub_1BA50(v78);
      sub_1B9D0(&def_259DC, v79, v80, "Incorrect device state, this shouldn't get executed.");
      sub_1BA00();
    }

    v81 = *(v26 + 1560);
    sub_1208F0();
    v82 = *(v39 + 8);
    v83 = sub_C9F8();
    v84(v83);
    sub_8284(v63 + 48, v26 + 176);
    sub_82E0();
    sub_16C32C();
    sub_8334(v26 + 176);
    sub_16C4FC();

    sub_1204E0();
    sub_120514();

    sub_C9BC();
    sub_120720();

    return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_11DE78()
{
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  v6 = *(v5 + 1768);
  *v4 = *v1;
  v3[222] = v7;

  if (v0)
  {
    v8 = v3[220];
    v9 = v3[218];

    v10 = sub_11E798;
  }

  else
  {
    v11 = v3[218];

    v10 = sub_11DFB4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_11DFB4()
{
  v1 = *(v0 + 1776);
  v2 = *(v0 + 1744);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1736);
  v5 = *(v0 + 1704);
  v6 = *(v0 + 1696);
  v7 = *(v0 + 1688);
  v8 = *(v0 + 1680);
  v9 = *(v0 + 1440);
  sub_2D64((v0 + 1136));
  sub_16C45C();
  (*(v7 + 16))(v6, v5, v8);
  sub_C9A0();
  sub_16C75C();
  (*(v7 + 8))(v5, v8);
  v10 = [v1 patternId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  v11 = v9[10];
  sub_2D20(v9 + 6, v9[9]);
  *(v0 + 1784) = sub_16C2FC();
  v12 = swift_task_alloc();
  *(v0 + 1792) = v12;
  *v12 = v0;
  v12[1] = sub_11E164;
  v13 = *(v0 + 1760);
  v14 = *(v0 + 1752);
  v15 = *(v0 + 1632);
  v16 = *(v0 + 1440);

  return sub_11FFD0(v15, (v3 & 1) == 0, v14, v13, v2 != 0);
}

uint64_t sub_11E164()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 1792);
  v3 = *(v1 + 1760);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_11E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44)
{
  sub_120874();
  a43 = v45;
  a44 = v46;
  a42 = v44;
  v47 = v44[205];
  v48 = v44[204];
  if (sub_369C(v48, 1, v47) == 1)
  {
    v49 = v44[201];
    v50 = v44[194];
    v51 = v44[193];
    sub_1B918(v48, &qword_1C57F8, &unk_172510);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v52 = sub_1206F8();
    v53(v52);
    v54 = sub_16DBDC();
    v55 = sub_16E36C();
    if (sub_1BA1C(v55))
    {
      v56 = sub_1BA38();
      sub_1BA50(v56);
      sub_1B9D0(&def_259DC, v57, v58, "Phone medication querying error's punchout URL construction failed, starting GenericErrorFlow.");
      sub_1BA00();
    }

    v59 = v44[223];
    v60 = v44[222];
    v61 = v44[215];
    v107 = v44[214];
    v108 = v44[217];
    v62 = v44[201];
    v63 = v44[194];
    v64 = v44[193];
    v65 = v44[180];
    v66 = v44[179];

    v67 = *(v63 + 8);
    v68 = sub_4B4EC();
    v69(v68);
    sub_8284(v65 + 48, (v44 + 2));
    sub_82E0();
    sub_16C32C();
    sub_8334((v44 + 2));
    sub_16C4FC();

    (*(v61 + 8))(v108, v107);
  }

  else
  {
    v70 = v44[202];
    v71 = v44[194];
    v72 = v44[193];
    (*(v44[206] + 32))(v44[209], v48, v47);
    v73 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    (*(v71 + 16))(v70, v73, v72);
    v74 = sub_16DBDC();
    v75 = sub_16E36C();
    if (sub_1BA1C(v75))
    {
      v76 = sub_1BA38();
      sub_1BA50(v76);
      sub_1B9D0(&def_259DC, v77, v78, "Creating sequence flow.");
      sub_1BA00();
    }

    v79 = v44[223];
    a19 = v44[215];
    a20 = v44[222];
    v107 = v44[214];
    v108 = v44[217];
    v80 = v44[208];
    v81 = v44[206];
    a15 = v44[205];
    a16 = v44[209];
    v82 = v44[202];
    v83 = v44[194];
    v84 = v44[193];
    v85 = v44[192];
    v86 = v44[180];
    a17 = v44[191];
    a18 = v44[179];

    (*(v83 + 8))(v82, v84);
    v87 = v86[4];
    v88 = v86[5];
    sub_2D20(v86 + 1, v87);
    (*(v88 + 16))(&a23, v87, v88);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_172320;
    v44[177] = v79;
    sub_16C28C();
    *(v89 + 32) = sub_16C32C();
    v91 = v86[4];
    v90 = v86[5];
    sub_2D20(v86 + 1, v91);
    sub_12070C();
    v92(v91, v90);
    (*(v81 + 16))(v80, a16, a15);
    sub_385D8();
    sub_16D79C();
    sub_120624();
    sub_120498(v93, v94);
    sub_16C32C();
    sub_1205F0();
    sub_120444(v85, v95);
    *(v89 + 40) = v85;
    sub_16D6DC();
    sub_12081C();
    v44[178] = sub_16D6CC();
    sub_12060C();
    sub_120498(v96, v97);
    sub_16C4EC();

    (*(v81 + 8))(a16, a15);
    (*(a19 + 8))(v108, v107);
  }

  sub_1204E0();
  sub_120594();

  sub_C9BC();
  sub_1207DC();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v107, v108, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_11E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v29 = v26[203];
  v30 = v26[194];
  v31 = v26[193];
  sub_2D64(v26 + 142);
  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v32 = sub_3BD68();
  v33(v32);
  sub_16DBDC();
  v34 = sub_16E36C();
  if (sub_1BA1C(v34))
  {
    v35 = sub_1BA38();
    sub_1BA50(v35);
    sub_1B9D0(&def_259DC, v36, v37, "Phone medication querying error pattern failed, starting GenericErrorFlow.");
    sub_1BA00();
  }

  v38 = v26[203];
  sub_1208F0();
  v39 = *(v27 + 8);
  v40 = sub_C9F8();
  v41(v40);
  sub_8284(v28 + 48, (v26 + 42));
  sub_82E0();
  sub_16C32C();
  sub_8334((v26 + 42));
  sub_16C4FC();

  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11E97C(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  sub_8A60();
  *v6 = v5;
  v8 = *(v7 + 1808);
  v9 = *(v7 + 1800);
  v10 = *v2;
  sub_C990();
  *v11 = v10;
  *(v5 + 1816) = v1;

  if (v1)
  {
    v12 = sub_11ECAC;
  }

  else
  {
    *(v5 + 1824) = a1;
    v12 = sub_11EAB8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_11EAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v27 = v26[228];
  v28 = v26[216];
  v29 = v26[215];
  v30 = v26[214];
  v31 = v26[180];
  v32 = v26[179];
  sub_120570(v26[190]);
  v33 = [v27 patternId];
  sub_16E1BC();

  sub_16C76C();
  v34 = v31[10];
  sub_2D20(v31 + 6, v31[9]);
  v26[176] = sub_16C2FC();
  sub_16C28C();
  sub_16C32C();

  sub_16C4FC();

  v35 = *(v29 + 8);
  v36 = sub_C9F8();
  v37(v36);
  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v29 = v26[227];
  v30 = v26[200];
  v31 = v26[194];
  v32 = v26[193];
  sub_120570(v26[190]);

  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v33 = sub_1206F8();
  v34(v33);
  sub_16DBDC();
  v35 = sub_16E36C();
  if (sub_1BA1C(v35))
  {
    v36 = sub_1BA38();
    sub_1BA50(v36);
    sub_1B9D0(&def_259DC, v37, v38, "Watch medication querying error pattern failed, starting GenericErrorFlow.");
    sub_1BA00();
  }

  v39 = v26[216];
  v40 = v26[215];
  v41 = v26[214];
  v42 = v26[200];
  sub_1208D0();
  v43 = *(v27 + 8);
  v44 = sub_387CC();
  v45(v44);
  sub_8284(v28 + 48, (v26 + 62));
  sub_82E0();
  sub_16C32C();
  sub_8334((v26 + 62));
  sub_16C4FC();

  v46 = *(v40 + 8);
  v47 = sub_C9F8();
  v48(v47);
  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11EEC0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 1840);
  v6 = *(v4 + 1832);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v10 + 1848) = v9;
  *(v10 + 1856) = v0;

  if (v0)
  {
    v11 = sub_11F790;
  }

  else
  {
    v11 = sub_11EFE4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_11EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_120874();
  v39 = *(v36 + 1848);
  v40 = *(v36 + 1744);
  v41 = *(v36 + 1896);
  v42 = *(v36 + 1728);
  v43 = *(v36 + 1440);
  sub_120570(*(v36 + 1512));
  swift_bridgeObjectRelease_n();
  v44 = [v39 patternId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  v45 = *(v43 + 72);
  v46 = *(v43 + 80);
  sub_2D20((v43 + 48), v45);
  sub_C9F8();
  *(v36 + 1864) = sub_16C2FC();
  if (v41 != 1)
  {
    v47 = *(v36 + 1898);
    v39 = *(v36 + 1897);
    v48 = *(v36 + 1744);

    if (v39 == 1 && v47)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if ((*(v36 + 1897) & 1) == 0)
  {
    if (*(v36 + 1744))
    {
LABEL_12:
    }

LABEL_13:
    v52 = *(v36 + 1760);
    v49 = *(v36 + 1640);
    v39 = *(v36 + 1464);

    sub_8AB4();
    sub_214C(v53, v54, v55, v49);
    v51 = 0;
    goto LABEL_14;
  }

  if ((*(v36 + 1898) & 1) == 0 && !*(v36 + 1899))
  {
    if (!*(v36 + 1744))
    {
LABEL_9:
      v49 = *(v36 + 1760);
      v50 = *(v36 + 1464);
      sub_1208B0();

LABEL_10:
      v51 = 1;
LABEL_14:
      v56 = sub_120804();
      *(v56 + v57) = v51;
      sub_1203D4(v56, v39);
      if (sub_369C(v39, 1, v49) == 1)
      {
        v58 = *(v36 + 1552);
        sub_1B918(*(v36 + 1456), &qword_1C57F8, &unk_172510);
        sub_16DBBC();
        v59 = *(v36 + 1544);
        if (v51)
        {
          v60 = *(v36 + 1568);
          sub_385D8();
          swift_beginAccess();
          v61 = sub_120838();
          v62(v61);
          sub_16DBDC();
          v63 = sub_16E36C();
          if (sub_1BA1C(v63))
          {
            v64 = sub_1BA38();
            sub_1BA50(v64);
            sub_1B9D0(&def_259DC, v65, v66, "Punchout was expected but URL construction failed, returning GenericErrorFlow.");
            sub_1BA00();
          }

          sub_1206B4();
          v67 = *(v60 + 8);
          v68 = sub_4B4EC();
          v69(v68);
          sub_8284(v43 + 48, v36 + 656);
          sub_82E0();
          sub_16C32C();
          sub_8334(v36 + 656);
          sub_16C4FC();

          sub_1B918(a20, &qword_1CA9D0, &unk_177268);
          (*(v38 + 8))(a22, a21);
        }

        else
        {
          v92 = *(v36 + 1576);
          sub_385D8();
          swift_beginAccess();
          v93 = sub_120838();
          v94(v93);
          v95 = sub_16DBDC();
          v96 = sub_16E36C();
          if (sub_1BA1C(v96))
          {
            v97 = sub_1BA38();
            sub_1BA50(v97);
            sub_1B9D0(&def_259DC, v98, v99, "Punchout not required, producing response flow.");
            sub_1BA00();
          }

          v100 = *(v36 + 1864);
          v101 = *(v36 + 1848);
          v102 = *(v36 + 1720);
          a21 = *(v36 + 1712);
          a22 = *(v36 + 1728);
          v103 = *(v36 + 1576);
          v104 = *(v36 + 1552);
          v105 = *(v36 + 1544);
          v106 = *(v36 + 1464);
          v107 = *(v36 + 1432);

          v108 = *(v104 + 8);
          v109 = sub_4B4EC();
          v110(v109);
          sub_16C4FC();

          sub_1B918(v106, &qword_1CA9D0, &unk_177268);
          (*(v102 + 8))(a22, a21);
        }
      }

      else
      {
        v70 = sub_12073C();
        v71(v70);
        sub_16DBBC();
        sub_385D8();
        swift_beginAccess();
        v72 = sub_3BD68();
        v73(v72);
        sub_16DBDC();
        v74 = sub_16E36C();
        if (sub_1BA1C(v74))
        {
          v75 = sub_1BA38();
          sub_1BA50(v75);
          sub_1B9D0(&def_259DC, v76, v77, "Punchout is required, creating sequence flow.");
          sub_1BA00();
        }

        sub_12064C();
        (*(v45 + 8))(v41, v37);
        v78 = *(v39 + 40);
        sub_2D20((v39 + 8), *(v39 + 32));
        v79 = sub_1207C0();
        v80(v79);
        sub_2440(&qword_1C5ED8, &unk_173090);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_172320;
        *(v36 + 1392) = v46;
        sub_16C28C();
        *(v81 + 32) = sub_16C32C();
        v83 = *(v39 + 32);
        v82 = *(v39 + 40);
        sub_2D20((v39 + 8), v83);
        sub_12070C();
        v84(v83, v82);
        v85 = sub_1207A4();
        v86(v85);
        sub_385D8();
        sub_16D79C();
        sub_120624();
        sub_120498(v87, v88);
        sub_16C32C();
        sub_1205F0();
        sub_120444(v38, v89);
        *(v81 + 40) = v38;
        sub_16D6DC();
        sub_12081C();
        *(v36 + 1400) = sub_16D6CC();
        sub_12060C();
        sub_120498(v90, v91);
        sub_120890();

        (*(v43 + 8))(v82, v83);
        sub_1B918(a19, &qword_1CA9D0, &unk_177268);
        (*(a18 + 8))(a22, a21);
      }

      sub_1204E0();
      sub_120594();

      sub_C9BC();
      sub_1207DC();

      return v112(v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
    }

    goto LABEL_12;
  }

  v49 = *(v36 + 1760);
  v120 = *(v36 + 1744);

  if (!v49)
  {
    v133 = *(v36 + 1464);
    sub_1208B0();
    goto LABEL_10;
  }

  v134 = sub_120910(*(v36 + 1440));
  v135 = v121 + *v121;
  v122 = v121[1];
  v123 = swift_task_alloc();
  *(v36 + 1872) = v123;
  *v123 = v36;
  v123[1] = sub_11F9D4;
  v124 = *(v36 + 1760);
  sub_12084C(*(v36 + 1752));
  sub_1207DC();

  return v129(v125, v126, v127, v128, v129, v130, v131, v132, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v134, v135, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_11F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v29 = v26[232];
  v30 = v26[220];
  v31 = v26[218];
  v32 = v26[199];
  v33 = v26[194];
  v34 = v26[193];
  sub_120570(v26[189]);

  swift_bridgeObjectRelease_n();

  v35 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  (*(v33 + 16))(v32, v35, v34);
  sub_16DBDC();
  v36 = sub_16E36C();
  if (sub_1BA1C(v36))
  {
    v37 = sub_1BA38();
    sub_1BA50(v37);
    sub_1B9D0(&def_259DC, v38, v39, "Watch medication querying error pattern failed, starting GenericErrorFlow.");
    sub_1BA00();
  }

  v40 = v26[216];
  v41 = v26[215];
  v42 = v26[214];
  v43 = v26[199];
  sub_1208D0();
  v44 = *(v27 + 8);
  v45 = sub_387CC();
  v46(v45);
  sub_8284(v28 + 48, (v26 + 102));
  sub_82E0();
  sub_16C32C();
  sub_8334((v26 + 102));
  sub_16C4FC();

  v47 = *(v41 + 8);
  v48 = sub_C9F8();
  v49(v48);
  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11F9D4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 1872);
  *v2 = *v0;
  *(v1 + 1880) = v5;
  *(v1 + 1888) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_11FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_120874();
  v41 = v36[236];
  v42 = v36[235];
  v43 = v36[220];
  v44 = v36[183];
  sub_16E47C(70);
  v90._object = 0x800000000017EB10;
  v90._countAndFlagsBits = 0xD000000000000044;
  sub_16E26C(v90);
  v91._countAndFlagsBits = v42;
  v91._object = v41;
  sub_16E26C(v91);
  sub_16BE8C();

  v45 = sub_120804();
  *(v45 + v46) = 1;
  sub_1203D4(v45, v41);
  if (sub_369C(v41, 1, 0xE000000000000000) == 1)
  {
    v47 = v36[194];
    sub_1B918(v36[182], &qword_1C57F8, &unk_172510);
    sub_16DBBC();
    v48 = v36[196];
    v49 = v36[193];
    sub_385D8();
    swift_beginAccess();
    v50 = sub_1206F8();
    v51(v50);
    sub_16DBDC();
    v52 = sub_16E36C();
    if (sub_1BA1C(v52))
    {
      v53 = sub_1BA38();
      sub_1BA50(v53);
      sub_1B9D0(&def_259DC, v54, v55, "Punchout was expected but URL construction failed, returning GenericErrorFlow.");
      sub_1BA00();
    }

    sub_1206B4();
    v56 = *(v49 + 8);
    v57 = sub_4B4EC();
    v58(v57);
    sub_8284(v38 + 48, (v36 + 82));
    sub_82E0();
    sub_16C32C();
    sub_8334((v36 + 82));
    sub_16C4FC();

    sub_1B918(a20, &qword_1CA9D0, &unk_177268);
    (*(v40 + 8))(a22, a21);
  }

  else
  {
    v59 = sub_12073C();
    v60(v59);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v61 = sub_3BD68();
    v62(v61);
    sub_16DBDC();
    v63 = sub_16E36C();
    if (sub_1BA1C(v63))
    {
      v64 = sub_1BA38();
      sub_1BA50(v64);
      sub_1B9D0(&def_259DC, v65, v66, "Punchout is required, creating sequence flow.");
      sub_1BA00();
    }

    sub_12064C();
    (*(v43 + 8))(v37, v39);
    v67 = v41[5];
    sub_2D20(v41 + 1, v41[4]);
    v68 = sub_1207C0();
    v69(v68);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_172320;
    v36[174] = v44;
    sub_16C28C();
    *(v70 + 32) = sub_16C32C();
    v72 = v41[4];
    v71 = v41[5];
    sub_2D20(v41 + 1, v72);
    sub_12070C();
    v73(v72, v71);
    v74 = sub_1207A4();
    v75(v74);
    sub_385D8();
    sub_16D79C();
    sub_120624();
    sub_120498(v76, v77);
    sub_16C32C();
    sub_1205F0();
    sub_120444(v40, v78);
    *(v70 + 40) = v40;
    sub_16D6DC();
    sub_12081C();
    v36[175] = sub_16D6CC();
    sub_12060C();
    sub_120498(v79, v80);
    sub_120890();

    (*(v38 + 8))(v71, v72);
    sub_1B918(a19, &qword_1CA9D0, &unk_177268);
    (*(a18 + 8))(a22, a21);
  }

  sub_1204E0();
  sub_120594();

  sub_C9BC();
  sub_1207DC();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, 0, 0xE000000000000000, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_11FFD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return _swift_task_switch(sub_11FFFC, 0, 0);
}

uint64_t sub_11FFFC()
{
  if ((*(v0 + 72) & 1) == 0 && *(v0 + 73) == 1 && *(v0 + 32))
  {
    sub_120910(*(v0 + 40));
    v9 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_120174;
    v4 = *(v0 + 32);
    v5 = sub_12084C(*(v0 + 24));

    return v9(v5);
  }

  else
  {
    v7 = *(v0 + 16);
    sub_16BE8C();
    sub_C9BC();

    return v8();
  }
}

uint64_t sub_120174()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_120260()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];
  sub_16E47C(112);
  v7._object = 0x800000000017FC20;
  v7._countAndFlagsBits = 0xD00000000000006ELL;
  sub_16E26C(v7);
  v8._countAndFlagsBits = v2;
  v8._object = v1;
  sub_16E26C(v8);
  sub_16BE8C();

  sub_C9BC();

  return v4();
}

uint64_t sub_12033C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_11D354();
}

uint64_t sub_1203D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1CA9D0, &unk_177268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_120444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1BA5C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_120498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1204E0()
{
  result = v0[217];
  v2 = v0[216];
  v3 = v0[213];
  v4 = v0[212];
  v5 = v0[209];
  v6 = v0[208];
  v7 = v0[207];
  v8 = v0[204];
  v9 = v0[203];
  v10 = v0[202];
  v11 = v0[201];
  v12 = v0[200];
  return result;
}

uint64_t sub_120514()
{
  v5 = v0[199];
  v6 = v0[198];
  v7 = v0[197];
  v8 = v0[196];
  v9 = v0[195];
  v10 = v0[192];
  v11 = v0[190];
  v12 = v0[189];
  v13 = v0[187];
  v14 = v0[184];
  v3 = v0[182];
  *(v1 - 88) = v0[183];
  *(v1 - 80) = v3;
}

uint64_t sub_120570(uint64_t a1)
{

  return sub_120444(a1, type metadata accessor for WellnessLoggingWatchMedicationQueryingErrorParameters);
}

uint64_t sub_120594()
{
  v4 = v0[199];
  v5 = v0[198];
  v6 = v0[197];
  v7 = v0[196];
  v8 = v0[195];
  v9 = v0[192];
  v10 = v0[190];
  v11 = v0[189];
  v12 = v0[187];
  v13 = v0[184];
  v2 = v0[183];
  v14 = v0[182];
}

void sub_12064C()
{
  v3 = v1[233];
  v19 = v1[216];
  v17 = v1[231];
  v18 = v1[214];
  v4 = v1[208];
  v5 = v1[206];
  v11 = v1[205];
  v12 = v1[207];
  v6 = v1[198];
  v7 = v1[194];
  v8 = v1[193];
  v9 = v1[192];
  v15 = v1[215];
  v16 = v1[183];
  v10 = v1[180];
  v13 = v1[191];
  v14 = v1[179];
}

void sub_1206B4()
{
  v3 = v1[233];
  v4 = v1[231];
  v5 = v1[215];
  v12 = v1[214];
  v13 = v1[216];
  v6 = v1[196];
  v7 = v1[194];
  v8 = v1[193];
  v11 = v1[183];
  v9 = v1[180];
  v10 = v1[179];
}

uint64_t sub_12073C()
{
  result = v0[207];
  v2 = v0[205];
  v3 = v0[198];
  v4 = v0[194];
  v5 = v0[193];
  v6 = v0[182];
  v7 = *(v0[206] + 32);
  return result;
}

void *sub_120760()
{
  v1 = v0[5];
  result = sub_2D20(v0 + 1, v0[4]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_120804()
{
  v1 = v0[205];
  result = v0[183];
  v3 = v0[182];
  v4 = *(v0[181] + 48);
  return result;
}

uint64_t sub_12081C()
{

  return swift_allocObject();
}

uint64_t sub_120890()
{

  return sub_16C4EC();
}

uint64_t sub_1208B0()
{

  return sub_16BE8C();
}

void sub_1208D0()
{
  v3 = v1[194];
  v4 = v1[193];
  v5 = v1[180];
  v6 = v1[179];
}

void sub_1208F0()
{
  v3 = v1[194];
  v4 = v1[193];
  v5 = v1[180];
  v6 = v1[179];
}

uint64_t sub_120910@<X0>(void *a1@<X8>)
{
  v1 = a1[30];
  sub_2D20(a1 + 26, a1[29]);
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

void sub_12093C(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  v7 = sub_4348(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_887C();
  sub_12238C();
  v11 = __chkstk_darwin(v10);
  v19 = sub_122304(v11, v12, v13, v14, v15, v16, v17, v18, v93);
  v20 = sub_42F0(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_887C();
  __chkstk_darwin(v23);
  v24 = sub_2440(&qword_1C5690, &dword_16F320);
  v25 = sub_4348(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_1223A0();
  v28 = sub_16BD9C();
  v29 = sub_42F0(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_887C();
  __chkstk_darwin(v32);
  v33 = sub_1223F0();
  if (v33)
  {
    v100 = v33;
    if (sub_C1BA4(a1, &off_1B8108))
    {
      sub_1223DC();
LABEL_9:
      sub_16BE8C();
      sub_45924();

      return;
    }

    if (sub_C1BA4(a1, &off_1B8130))
    {
      sub_1222EC();
      goto LABEL_9;
    }

    v95 = a3;
    v96 = v19;
    v37 = [objc_allocWithZone(HealthAppDataTypeDetailLinkBuilder) init];
    v38 = objc_opt_self();
    v39 = v37;
    v40 = [v38 externalSourceAssistantService];
    v41 = sub_16E1BC();
    v43 = v42;

    sub_1220E0(v41, v43, v39);
    sub_1955C(a2, v3, &qword_1C5690, &dword_16F320);
    if (sub_369C(v3, 1, v28) == 1)
    {
      sub_C878(v3, &qword_1C5690, &dword_16F320);
      sub_16DBBC();
      sub_3E174();
      sub_122234();
      sub_122224();
      v44();
      v45 = v100;
      v46 = sub_16DBDC();
      v47 = sub_16E36C();

      if (os_log_type_enabled(v46, v47))
      {
        swift_slowAlloc();
        v48 = swift_slowAlloc();
        sub_122430(5.7779e-34);
        sub_122410(&def_259DC, v49, v50, "Building a deeplink for %@ and no interval");
        sub_C878(v48, &qword_1C57B8, &qword_1715A0);
        sub_8A2C();
        v40 = v96;
        sub_8A2C();
      }

      v51 = *(v3 + 8);
      v52 = sub_38B40();
      v53(v52);
      v54 = sub_122360();
      v56 = [v54 v55];
      if (v56)
      {
        v57 = v56;
        v58 = v97;
        sub_16BE7C();

        v59 = 0;
      }

      else
      {
        v59 = 1;
        v58 = v97;
      }

      v89 = sub_16BE9C();
      sub_214C(v58, v59, 1, v89);
      v90 = v58;
    }

    else
    {
      v60 = sub_122264();
      v61(v60);
      sub_16DBBC();
      sub_3E174();
      sub_122234();
      sub_122224();
      v62();
      v63 = sub_1222D4();
      v64(v63);
      v65 = v100;
      v66 = sub_16DBDC();
      v67 = sub_16E36C();

      if (os_log_type_enabled(v66, v67))
      {
        swift_slowAlloc();
        v68 = sub_122490();
        v101 = sub_122470(v68);
        sub_122244(5.778e-34);
        sub_1221B4(&qword_1C97E8, &type metadata accessor for DateInterval);
        v69 = a2;
        sub_122450();
        v40 = v70;
        v71 = sub_1221FC();
        (v39)(v71);
        v72 = sub_38B40();
        v75 = sub_3AB7C(v72, v73, v74);

        *(v65 + 14) = v75;
        sub_122328(&def_259DC, v76, v77, "Building a deeplink for %@ and interval: %s");
        sub_C878(v94, &qword_1C57B8, &qword_1715A0);
        sub_12229C();
        sub_2D64(v101);
        sub_12229C();
        v65 = a2;
        sub_8A2C();

        v78 = sub_12236C();
        v80 = v96;
      }

      else
      {

        v81 = sub_1221FC();
        (v39)(v81);
        v78 = sub_12236C();
        v80 = v40;
      }

      v79(v78, v80);
      isa = sub_16BD2C().super.isa;
      v83 = sub_122360();
      v85 = [v83 v84];

      if (v85)
      {
        v86 = v98;
        sub_16BE7C();

        v87 = sub_122210();
        (v39)(v87);
        v88 = 0;
      }

      else
      {
        v91 = sub_122210();
        (v39)(v91);

        v88 = 1;
        v86 = v98;
      }

      v92 = sub_16BE9C();
      sub_214C(v86, v88, 1, v92);
      v90 = v86;
    }

    sub_122144(v90, v95);
    sub_45924();
  }

  else
  {
    sub_1222B8();
    sub_45924();

    sub_16BE8C();
  }
}

uint64_t sub_121020(unsigned __int8 a1, char a2)
{
  v2 = 0xEE0065636E657473;
  v3 = 0x6978456B63656863;
  v4 = a1;
  v5 = 0x6978456B63656863;
  v6 = 0xEE0065636E657473;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v7 = 1634038371;
      goto LABEL_8;
    case 2:
      v6 = 0xE600000000000000;
      v7 = 1701602660;
      goto LABEL_8;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x627265566F6ELL;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1852141679;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v7 = 1633972341;
LABEL_8:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      v5 = 0x4C74736575716572;
      v6 = 0xEA0000000000676FLL;
      break;
    case 7:
      v5 = 0x736972616D6D7573;
      v6 = 0xE900000000000065;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x74736575716572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v8 = 1634038371;
      goto LABEL_18;
    case 2:
      v2 = 0xE600000000000000;
      v8 = 1701602660;
      goto LABEL_18;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x627265566F6ELL;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1852141679;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v8 = 1633972341;
LABEL_18:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      v3 = 0x4C74736575716572;
      v2 = 0xEA0000000000676FLL;
      break;
    case 7:
      v3 = 0x736972616D6D7573;
      v2 = 0xE900000000000065;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v3 = 0x74736575716572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_16E6BC();
  }

  return v10 & 1;
}

uint64_t sub_1212C8(__int16 a1, __int16 a2)
{
  sub_140650(a1);
  v4 = v3;
  v6 = v5;
  sub_140650(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_122280();
  }

  return v10 & 1;
}

uint64_t sub_121358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_122280();
  }

  return v10 & 1;
}

uint64_t sub_1213DC(unsigned __int8 a1, char a2)
{
  v2 = 1701667182;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667182;
  switch(v4)
  {
    case 1:
      v5 = sub_122378();
      v3 = 0xEE00676E69727453;
      break;
    case 2:
      v5 = sub_122378();
      v3 = 0xEA00000000004449;
      break;
    case 3:
      v5 = 0x697461636964656DLL;
      v6 = 1145663087;
      goto LABEL_7;
    case 4:
      v3 = 0xE800000000000000;
      v5 = sub_12234C();
      break;
    case 5:
      v5 = sub_12234C();
      v6 = 1953066581;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v5 = 0x7463656C65536E6FLL;
      v3 = 0xEF646E616D6D6F43;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      sub_1223C8();
      v7 = 0xEE00676E69727453;
      break;
    case 2:
      sub_1223C8();
      v7 = 0xEA00000000004449;
      break;
    case 3:
      v2 = 0x697461636964656DLL;
      v8 = 1145663087;
      goto LABEL_15;
    case 4:
      v7 = 0xE800000000000000;
      sub_1223B4();
      break;
    case 5:
      sub_1223B4();
      v8 = 1953066581;
LABEL_15:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v2 = 0x7463656C65536E6FLL;
      v7 = 0xEF646E616D6D6F43;
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
    v10 = sub_122280();
  }

  return v10 & 1;
}

uint64_t sub_1215D0(unsigned __int8 a1, char a2)
{
  v2 = 0x7473726966;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7473726966;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x646E6F636573;
      break;
    case 2:
      v5 = 0x6472696874;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x687472756F66;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x646E6F636573;
      break;
    case 2:
      v2 = 0x6472696874;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x687472756F66;
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
    v8 = sub_122280();
  }

  return v8 & 1;
}

uint64_t sub_12179C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1221B4(a4, a5);
  sub_16E29C();
  sub_16E29C();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_16E6BC();
  }

  return v8 & 1;
}

void sub_1218BC(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  v7 = sub_4348(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_887C();
  sub_12238C();
  v11 = __chkstk_darwin(v10);
  v19 = sub_122304(v11, v12, v13, v14, v15, v16, v17, v18, v93);
  v20 = sub_42F0(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_887C();
  __chkstk_darwin(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  v25 = sub_4348(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_1223A0();
  v28 = sub_16BF5C();
  v29 = sub_42F0(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_887C();
  __chkstk_darwin(v32);
  v33 = sub_1223F0();
  if (v33)
  {
    v100 = v33;
    if (sub_C1BA4(a1, &off_1B8440))
    {
      sub_1223DC();
LABEL_9:
      sub_16BE8C();
      sub_45924();

      return;
    }

    if (sub_C1BA4(a1, &off_1B8468))
    {
      sub_1222EC();
      goto LABEL_9;
    }

    v95 = a3;
    v96 = v19;
    v37 = [objc_allocWithZone(HealthAppDataTypeDetailLinkBuilder) init];
    v38 = objc_opt_self();
    v39 = v37;
    v40 = [v38 externalSourceAssistantService];
    v41 = sub_16E1BC();
    v43 = v42;

    sub_1220E0(v41, v43, v39);
    sub_1955C(a2, v3, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v3, 1, v28) == 1)
    {
      sub_C878(v3, &qword_1C57E0, &unk_171C60);
      sub_16DBBC();
      sub_3E174();
      sub_122234();
      sub_122224();
      v44();
      v45 = v100;
      v46 = sub_16DBDC();
      v47 = sub_16E36C();

      if (os_log_type_enabled(v46, v47))
      {
        swift_slowAlloc();
        v48 = swift_slowAlloc();
        sub_122430(5.7779e-34);
        sub_122410(&def_259DC, v49, v50, "Building a deeplink for %@ and no interval");
        sub_C878(v48, &qword_1C57B8, &qword_1715A0);
        sub_8A2C();
        v40 = v96;
        sub_8A2C();
      }

      v51 = *(v3 + 8);
      v52 = sub_38B40();
      v53(v52);
      v54 = sub_122360();
      v56 = [v54 v55];
      if (v56)
      {
        v57 = v56;
        v58 = v97;
        sub_16BE7C();

        v59 = 0;
      }

      else
      {
        v59 = 1;
        v58 = v97;
      }

      v89 = sub_16BE9C();
      sub_214C(v58, v59, 1, v89);
      v90 = v58;
    }

    else
    {
      v60 = sub_122264();
      v61(v60);
      sub_16DBBC();
      sub_3E174();
      sub_122234();
      sub_122224();
      v62();
      v63 = sub_1222D4();
      v64(v63);
      v65 = v100;
      v66 = sub_16DBDC();
      v67 = sub_16E36C();

      if (os_log_type_enabled(v66, v67))
      {
        swift_slowAlloc();
        v68 = sub_122490();
        v101 = sub_122470(v68);
        sub_122244(5.778e-34);
        sub_1221B4(&qword_1C96B0, &type metadata accessor for Date);
        v69 = a2;
        sub_122450();
        v40 = v70;
        v71 = sub_1221FC();
        (v39)(v71);
        v72 = sub_38B40();
        v75 = sub_3AB7C(v72, v73, v74);

        *(v65 + 14) = v75;
        sub_122328(&def_259DC, v76, v77, "Building a deeplink for %@ and date: %s");
        sub_C878(v94, &qword_1C57B8, &qword_1715A0);
        sub_12229C();
        sub_2D64(v101);
        sub_12229C();
        v65 = a2;
        sub_8A2C();

        v78 = sub_12236C();
        v80 = v96;
      }

      else
      {

        v81 = sub_1221FC();
        (v39)(v81);
        v78 = sub_12236C();
        v80 = v40;
      }

      v79(v78, v80);
      isa = sub_16BEEC().super.isa;
      v83 = sub_122360();
      v85 = [v83 v84];

      if (v85)
      {
        v86 = v98;
        sub_16BE7C();

        v87 = sub_122210();
        (v39)(v87);
        v88 = 0;
      }

      else
      {
        v91 = sub_122210();
        (v39)(v91);

        v88 = 1;
        v86 = v98;
      }

      v92 = sub_16BE9C();
      sub_214C(v86, v88, 1, v92);
      v90 = v86;
    }

    sub_122144(v90, v95);
    sub_45924();
  }

  else
  {
    sub_1222B8();
    sub_45924();

    sub_16BE8C();
  }
}

uint64_t sub_121FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(HealthAppAuthorizationManagementLinkBuilder) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 externalSourceAssistantService];
  v6 = sub_16E1BC();
  v8 = v7;

  sub_1220E0(v6, v8, v4);
  v9 = sub_16E1AC();
  v10 = [v4 URLForAuthorizationManagementFromLocation:2 bundleIdentifier:v9];

  if (v10)
  {
    sub_16BE7C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_16BE9C();

  return sub_214C(a1, v11, 1, v12);
}

void sub_1220E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();

  [a3 setSource:v4];
}

uint64_t sub_122144(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1221B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_122244(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v3 - 136);
  result = *(v3 - 120);
  *v1 = result;
  *(v2 + 12) = 2080;
  return result;
}

uint64_t sub_122280()
{

  return sub_16E6BC();
}

uint64_t sub_12229C()
{
}

uint64_t sub_122304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 144) = &a9 - v9;

  return sub_16DBEC();
}

void sub_122328(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 192);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

Class sub_1223F0()
{

  return sub_23324(v0);
}

void sub_122410(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

id sub_122430(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *v3 = *(v4 - 120);

  return v1;
}

uint64_t sub_122450()
{

  return sub_16E68C();
}

uint64_t sub_122470(uint64_t a1)
{
  *(v2 - 200) = a1;
  *(v2 - 192) = v1;

  return swift_slowAlloc();
}

uint64_t sub_122490()
{
  *(v1 - 136) = v0;

  return swift_slowAlloc();
}

uint64_t SnippetHeaderModel.init(categoryLabel:categoryListIconName:categoryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_16D5CC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for SnippetHeaderModel();
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t type metadata accessor for SnippetHeaderModel()
{
  result = qword_1CAA60;
  if (!qword_1CAA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12259C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xED00006C6562614CLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000000017FCF0 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x800000000017FD10 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_16E6BC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1226C0(char a1)
{
  if (!a1)
  {
    return 0x79726F6765746163;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000012;
}

uint64_t sub_122738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12259C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_122760@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of LogHealthKitQuantityFlow.taskLogger();
  *a1 = result;
  return result;
}

uint64_t sub_122788(uint64_t a1)
{
  v2 = sub_1229D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1227C4(uint64_t a1)
{
  v2 = sub_1229D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SnippetHeaderModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CA9F0, &qword_177290);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_1229D4();
  sub_16E77C();
  v24[15] = 0;
  sub_16D5CC();
  sub_12336C();
  sub_122EE8(v14, v15);
  sub_16E67C();
  if (!v2)
  {
    v16 = type metadata accessor for SnippetHeaderModel();
    v17 = (v3 + *(v16 + 20));
    v18 = *v17;
    v19 = v17[1];
    v24[14] = 1;
    sub_16E64C();
    v20 = (v3 + *(v16 + 24));
    v21 = *v20;
    v22 = v20[1];
    v24[13] = 2;
    sub_16E64C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1229D4()
{
  result = qword_1CA9F8;
  if (!qword_1CA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9F8);
  }

  return result;
}

uint64_t SnippetHeaderModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_16D5CC();
  v5 = sub_42F0(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2440(&qword_1CAA00, &qword_177298);
  v10 = sub_42F0(v43);
  v40 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v15 = &v36 - v14;
  v16 = type metadata accessor for SnippetHeaderModel();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_1229D4();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  v22 = v40;
  v21 = v41;
  v37 = v16;
  v38 = v19;
  v46 = 0;
  sub_12336C();
  sub_122EE8(v23, v24);
  v26 = v42;
  v25 = v43;
  sub_16E5EC();
  (*(v21 + 32))(v38, v26, v4);
  v45 = 1;
  v27 = sub_16E5BC();
  v28 = &v38[*(v37 + 20)];
  *v28 = v27;
  v28[1] = v29;
  v44 = 2;
  v30 = sub_16E5BC();
  v32 = v31;
  (*(v22 + 8))(v15, v25);
  v33 = v38;
  v34 = &v38[*(v37 + 24)];
  *v34 = v30;
  v34[1] = v32;
  sub_122D98(v33, v39);
  sub_2D64(a1);
  return sub_122DFC(v33);
}

uint64_t sub_122D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetHeaderModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_122DFC(uint64_t a1)
{
  v2 = type metadata accessor for SnippetHeaderModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_122EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_122F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16D5CC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_369C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_123038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_16D5CC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_214C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1230E4()
{
  result = sub_16D5CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetHeaderModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x12322CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_123268()
{
  result = qword_1CAAA0;
  if (!qword_1CAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAAA0);
  }

  return result;
}

unint64_t sub_1232C0()
{
  result = qword_1CAAA8;
  if (!qword_1CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAAA8);
  }

  return result;
}

unint64_t sub_123318()
{
  result = qword_1CAAB0;
  if (!qword_1CAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAAB0);
  }

  return result;
}

uint64_t sub_12339C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 257))
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

uint64_t sub_1233DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_123470()
{
  sub_92A38();

  return sub_16C33C();
}

uint64_t sub_1234C4()
{
  sub_8A88();
  v1[104] = v0;
  v1[103] = v2;
  v3 = type metadata accessor for UnavailableDataFlow();
  v1[105] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[106] = sub_8BC0();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[107] = sub_8C38();
  v1[108] = swift_task_alloc();
  v9 = sub_16D63C();
  sub_4348(v9);
  v11 = *(v10 + 64);
  v1[109] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[110] = v12;
  sub_888C(v12);
  v1[111] = v13;
  v15 = *(v14 + 64);
  v1[112] = sub_8C38();
  v1[113] = swift_task_alloc();
  v16 = sub_16BD9C();
  v1[114] = v16;
  sub_888C(v16);
  v1[115] = v17;
  v19 = *(v18 + 64);
  v1[116] = sub_8BC0();
  v20 = sub_16BF5C();
  v1[117] = v20;
  sub_888C(v20);
  v1[118] = v21;
  v23 = *(v22 + 64);
  v1[119] = sub_8C38();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v24 = sub_17960();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_1236C8()
{
  v1 = *(v0 + 832);
  v2 = *v1;
  *(v0 + 1072) = v2;
  v3 = sub_124544(v2, v1 + 1);
  *(v0 + 1000) = v3;
  *(v0 + 1073) = v1[256];
  sub_16D78C();
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  sub_2D20(v1 + 6, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v0 + 760);
  sub_2D20((v0 + 728), *(v0 + 752));
  LOBYTE(v1) = sub_16C41C();
  sub_2D64((v0 + 728));
  if ((v1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = [v3 start];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = *(v0 + 992);
  sub_16BF3C();

  v10 = [v3 end];
  if (!v10)
  {
    (*(*(v0 + 944) + 8))(*(v0 + 992), *(v0 + 936));
    goto LABEL_7;
  }

  v11 = *(v0 + 984);
  v12 = *(v0 + 976);
  v49 = *(v0 + 968);
  v13 = *(v0 + 944);
  v14 = *(v0 + 936);
  v15 = *(v0 + 928);
  v16 = *(v0 + 920);
  v50 = *(v0 + 912);
  v48 = *(v0 + 992);
  sub_16BF3C();

  v17 = *(v13 + 16);
  v17(v12, v48, v14);
  v17(v49, v11, v14);
  sub_16BD5C();
  LOBYTE(v12) = sub_16DADC();
  (*(v16 + 8))(v15, v50);
  if (v12)
  {
    v18 = *(v0 + 992);
    v19 = *(v0 + 936);
    v20 = *(*(v0 + 944) + 8);
    v20(*(v0 + 984), v19);
    v20(v18, v19);
LABEL_7:
    v21 = *(v0 + 904);
    v22 = *(v0 + 888);
    v23 = *(v0 + 880);
    v24 = sub_16DBBC();
    *(v0 + 1008) = v24;
    swift_beginAccess();
    v25 = *(v22 + 16);
    *(v0 + 1016) = v25;
    *(v0 + 1024) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v24, v23);
    v26 = v3;
    v27 = sub_16DBDC();
    sub_16E36C();

    if (sub_8CFC())
    {
      sub_8BD8();
      v28 = sub_8A44();
      *v24 = 138412290;
      *(v24 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      sub_88FC(&def_259DC, v30, v31, "Executing intent: %@");
      sub_5CFC8(v28, &qword_1C57B8, &qword_1715A0);
      sub_89F4();
      sub_38604();
    }

    v32 = *(v0 + 904);
    v33 = *(v0 + 888);
    v34 = *(v0 + 880);
    v35 = *(v0 + 832);

    *(v0 + 1032) = *(v33 + 8);
    *(v0 + 1040) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36 = sub_4B4EC();
    v37(v36);
    v38 = *(v35 + 248);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 816;
    *(v0 + 24) = sub_123C14;
    v39 = swift_continuation_init();
    *(v0 + 720) = sub_2440(&qword_1CAAB8, &qword_177588);
    *(v0 + 696) = v39;
    *(v0 + 664) = _NSConcreteStackBlock;
    *(v0 + 672) = 1107296256;
    *(v0 + 680) = sub_53C4;
    *(v0 + 688) = &unk_1BCA78;
    [v38 handleGetHealthQuantity:v26 completion:v0 + 664];

    return _swift_continuation_await(v0 + 16);
  }

  v40 = *(v0 + 992);
  v41 = *(v0 + 984);
  v42 = *(v0 + 944);
  v43 = *(v0 + 936);
  v44 = *(v0 + 824);
  sub_16D70C();
  sub_BC848((v0 + 504));
  sub_BC9FC();
  sub_16C4EC();

  sub_D45A0(v0 + 504);
  v45 = *(v42 + 8);
  v45(v41, v43);
  v45(v40, v43);
  sub_126154();
  v51 = *(v0 + 848);

  sub_C9BC();

  return v46();
}

uint64_t sub_123C14()
{
  sub_8A88();
  v4 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_123CE8, 0, 0);
}

uint64_t sub_123CE8()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 896);
  v5 = *(v0 + 880);
  v6 = *(v0 + 816);
  *(v0 + 1048) = v6;
  swift_beginAccess();
  v2(v4, v3, v5);
  v7 = v6;
  v8 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v1 = 138412290;
    *(v1 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_88FC(&def_259DC, v11, v12, "Received response: %@");
    sub_5CFC8(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v13 = *(v0 + 1040);
  v14 = (*(v0 + 1032))(*(v0 + 896), *(v0 + 880));
  v15 = (*(&stru_20.maxprot + (swift_isaMask & *v7)))(v14);
  if (v15 != 4)
  {
    if (v15 == 102)
    {
      v28 = *(v0 + 1000);
      sub_214C(*(v0 + 864), 1, 1, *(v0 + 912));
      v29 = [v28 start];
      if (v29)
      {
        v30 = v29;
        v31 = *(v0 + 1000);
        v32 = *(v0 + 960);
        sub_16BF3C();

        v33 = [v31 end];
        if (v33)
        {
          v34 = v33;
          v35 = *(v0 + 976);
          v36 = *(v0 + 968);
          v37 = *(v0 + 960);
          v38 = *(v0 + 952);
          v39 = *(v0 + 944);
          v40 = *(v0 + 936);
          v70 = *(v0 + 864);
          v71 = *(v0 + 912);
          v69 = *(v0 + 856);
          sub_16BF3C();

          v41 = *(v39 + 16);
          v41(v35, v37, v40);
          v41(v36, v38, v40);
          sub_4B4EC();
          sub_16BD5C();
          v42 = *(v39 + 8);
          v42(v38, v40);
          v42(v37, v40);
          sub_5CFC8(v70, &qword_1C5690, &dword_16F320);
          sub_214C(v69, 0, 1, v71);
          sub_125F78(v69, v70);
        }

        else
        {
          (*(*(v0 + 944) + 8))(*(v0 + 960), *(v0 + 936));
        }
      }

      v72 = *(v0 + 1000);
      v52 = *(v0 + 1072);
      v53 = *(v0 + 872);
      v54 = *(v0 + 864);
      v55 = *(v0 + 848);
      v56 = *(v0 + 840);
      v57 = *(v0 + 832);
      v58 = *(v0 + 824);
      v59 = *(v0 + 1073);
      sub_16D6FC();
      sub_7B09C(v54, &v55[v56[5]], &qword_1C5690, &dword_16F320);
      sub_C9294(v57 + 48, &v55[v56[6]]);
      sub_8284(v57 + 88, &v55[v56[7]]);
      v60 = sub_16C58C();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      v63 = sub_16C57C();
      v64 = &v55[v56[8]];
      v64[3] = v60;
      v64[4] = &protocol witness table for ResponseFactory;
      *v64 = v63;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v65 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v66 = sub_16D58C();
      *v55 = v52;
      *&v55[v56[9]] = v65;
      *&v55[v56[10]] = v66;
      sub_125F20();
      sub_16C4EC();

      sub_5CFC8(v54, &qword_1C5690, &dword_16F320);
      sub_8494(v55);
    }

    else if (v15 == 101)
    {
      v16 = *(v0 + 1000);
      v17 = *(v0 + 1072);
      v18 = *(v0 + 872);
      v19 = *(v0 + 832);
      v20 = *(v0 + 824);
      v21 = *(v0 + 1073);
      sub_16D76C();
      sub_C9294(v19 + 48, v0 + 88);
      sub_8284(v19 + 88, v0 + 128);
      v22 = sub_16C58C();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_16C57C();
      *(v0 + 312) = v22;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v25;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v26 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v27 = sub_16D58C();
      *(v0 + 80) = v17;
      *(v0 + 328) = v26;
      *(v0 + 336) = v27;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v48 = *(v0 + 1000);
      v49 = *(v0 + 832);
      v50 = *(v0 + 824);
      v51 = *(v0 + 1073);
      sub_16D71C();
      sub_8284(v49 + 88, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    sub_126154();
    v73 = *(v0 + 848);

    sub_C9BC();
    sub_841E0();

    __asm { BRAA            X1, X16 }
  }

  v43 = swift_task_alloc();
  *(v0 + 1056) = v43;
  *v43 = v0;
  v43[1] = sub_124344;
  v44 = *(v0 + 1000);
  v45 = *(v0 + 832);
  sub_841E0();

  return sub_124D78();
}

uint64_t sub_124344()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 1056);
  v9 = *v0;
  *(v2 + 1064) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

void sub_124434()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 824);
  v5 = *(v0 + 1073);
  sub_16D77C();
  sub_16C4FC();

  sub_126154();
  v8 = *(v0 + 848);

  sub_C9BC();
  sub_841E0();

  __asm { BRAA            X1, X16 }
}

id sub_124544(int a1, void *a2)
{
  v5 = sub_16C0BC();
  v6 = sub_42F0(v5);
  v94 = v7;
  v95 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_4304();
  v93 = v11 - v10;
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  v13 = sub_4348(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_38634();
  v99 = v16;
  sub_89B4();
  __chkstk_darwin(v17);
  v96 = v90 - v18;
  v19 = sub_16BF5C();
  v20 = sub_42F0(v19);
  v101 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_38634();
  v90[2] = v24;
  sub_89B4();
  __chkstk_darwin(v25);
  sub_8AC0();
  v90[1] = v26;
  sub_89B4();
  __chkstk_darwin(v27);
  sub_8AC0();
  v98 = v28;
  sub_89B4();
  __chkstk_darwin(v29);
  sub_8AC0();
  v97 = v30;
  sub_89B4();
  __chkstk_darwin(v31);
  v33 = v90 - v32;
  v34 = sub_2440(&qword_1C5690, &dword_16F320);
  v35 = sub_4348(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_38634();
  v91 = v38;
  sub_89B4();
  __chkstk_darwin(v39);
  sub_8AC0();
  v92 = v40;
  sub_89B4();
  v42 = __chkstk_darwin(v41);
  v44 = v90 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = v90 - v46;
  __chkstk_darwin(v45);
  sub_B62E8();
  __chkstk_darwin(v48);
  v50 = v90 - v49;
  v51 = [objc_allocWithZone(sub_16D9AC()) init];
  v52 = sub_208C0(a1);
  v100 = v51;
  sub_1260F0(v52, v53, v51);
  v54 = a2[4];
  sub_2D20(a2, a2[3]);
  v55 = *(v54 + 32);
  v56 = sub_4B4EC();
  v57 = v50;
  v58(v56);
  sub_125AB4(v2, a1, v50);
  sub_5CFC8(v2, &qword_1C5690, &dword_16F320);
  if (a1 - 89 <= 0x3E && ((1 << (a1 - 89)) & 0x6400000000000113) != 0 || a1 - 155 <= 0x1D && ((1 << (a1 + 101)) & 0x20040001) != 0)
  {
    sub_7B09C(v50, v47, &qword_1C5690, &dword_16F320);
    v59 = sub_16BD9C();
    sub_8A94(v47);
    if (v60)
    {
      sub_5CFC8(v47, &qword_1C5690, &dword_16F320);
      v61 = v96;
      sub_214C(v96, 1, 1, v19);
      v62 = v97;
      sub_16BF4C();
      v63 = v93;
      sub_16C08C();
      sub_16C02C();
      (*(v94 + 8))(v63, v95);
      v66 = v101;
      (*(v101 + 8))(v62, v19);
      if (sub_369C(v61, 1, v19) != 1)
      {
        sub_5CFC8(v61, &qword_1C57E0, &unk_171C60);
      }
    }

    else
    {
      v64 = v96;
      sub_16BD7C();
      sub_5DE54(v59);
      (*(v65 + 8))(v47, v59);
      sub_1261B4(v64);
      v66 = v101;
      (*(v101 + 32))(v33, v64, v19);
    }

    isa = sub_16BEEC().super.isa;
    v68 = *(v66 + 8);
    v68(v33, v19);
    v69 = v100;
    [v100 setStart:isa];

    sub_7B09C(v57, v44, &qword_1C5690, &dword_16F320);
    sub_8A94(v44);
    if (v60)
    {
      sub_5CFC8(v44, &qword_1C5690, &dword_16F320);
      v70 = v99;
      sub_214C(v99, 1, 1, v19);
      sub_16BF4C();
      sub_7B6B8(v98);
      v71 = sub_C9C8();
      (v68)(v71);
      if (sub_369C(v70, 1, v19) != 1)
      {
        sub_5CFC8(v70, &qword_1C57E0, &unk_171C60);
      }
    }

    else
    {
      v72 = v99;
      sub_16BD4C();
      sub_5DE54(v59);
      (*(v73 + 8))(v44, v59);
      sub_1261B4(v72);
      (*(v66 + 32))(v98, v72, v19);
    }

    v74.super.isa = sub_16BEEC().super.isa;
    v75 = sub_9A808();
    (v68)(v75);
  }

  else
  {
    v77 = v92;
    sub_7B09C(v50, v92, &qword_1C5690, &dword_16F320);
    v78 = sub_16BD9C();
    if (sub_369C(v77, 1, v78) == 1)
    {
      sub_5CFC8(v77, &qword_1C5690, &dword_16F320);
      v79 = 0;
      v80 = v101;
    }

    else
    {
      sub_16BD7C();
      sub_5DE54(v78);
      (*(v81 + 8))(v77, v78);
      v79 = sub_16BEEC().super.isa;
      v80 = v101;
      v82 = *(v101 + 8);
      v83 = sub_9A808();
      v84(v83);
    }

    v69 = v100;
    v85 = v91;
    [v100 setStart:v79];

    sub_7B09C(v50, v85, &qword_1C5690, &dword_16F320);
    if (sub_369C(v85, 1, v78) == 1)
    {
      sub_5CFC8(v85, &qword_1C5690, &dword_16F320);
      v74.super.isa = 0;
    }

    else
    {
      sub_16BD4C();
      sub_5DE54(v78);
      (*(v86 + 8))(v85, v78);
      v74.super.isa = sub_16BEEC().super.isa;
      v87 = *(v80 + 8);
      v88 = sub_9A808();
      v89(v88);
    }
  }

  [v69 setEnd:v74.super.isa];

  sub_5CFC8(v57, &qword_1C5690, &dword_16F320);
  return v69;
}

uint64_t sub_124D78()
{
  sub_8A88();
  v1[116] = v0;
  v1[115] = v2;
  v1[114] = v3;
  v4 = sub_16C46C();
  v1[117] = v4;
  sub_888C(v4);
  v1[118] = v5;
  v7 = *(v6 + 64);
  v1[119] = sub_8C38();
  v1[120] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[121] = v8;
  sub_888C(v8);
  v1[122] = v9;
  v11 = *(v10 + 64);
  v1[123] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[124] = v12;
  sub_888C(v12);
  v1[125] = v13;
  v15 = *(v14 + 64);
  v1[126] = sub_8C38();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v16 = sub_17960();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_124EEC()
{
  sub_8A88();
  *(v0 + 624) = &type metadata for WellnessFeatureFlagsKey;
  *(v0 + 632) = sub_3736C();
  *(v0 + 600) = 4;
  v1 = sub_16C86C();
  sub_2D64((v0 + 600));
  if (v1)
  {
    v2 = **(v0 + 928);
    v3 = swift_task_alloc();
    *(v0 + 1040) = v3;
    *v3 = v0;
    v3[1] = sub_125044;
    v4 = *(v0 + 920);
    v5 = *(v0 + 912);

    return sub_9C338();
  }

  else
  {
    v7 = **(v0 + 928);
    v8 = swift_task_alloc();
    *(v0 + 1048) = v8;
    *v8 = v0;
    v8[1] = sub_125704;
    v9 = *(v0 + 920);
    v10 = *(v0 + 912);

    return sub_4B57C();
  }
}

uint64_t sub_125044()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 1040);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_125128()
{
  v65 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 912);
  sub_16DBBC();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = sub_C9C8();
  v5(v6);
  v7 = v4;
  v8 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    v9 = *(v0 + 912);
    sub_8BD8();
    v10 = sub_8A44();
    *v7 = 138412290;
    *(v7 + 1) = v9;
    *v10 = v9;
    v11 = v9;
    sub_88FC(&def_259DC, v12, v13, "#GetHealthQuantityFlow: In successResponseFlow intent is %@");
    sub_5CFC8(v10, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v14 = *(v0 + 1032);
  v15 = *(v0 + 1024);
  v16 = *(v0 + 1000);
  v17 = *(v0 + 992);
  v18 = *(v0 + 920);

  v63 = *(v16 + 8);
  v63(v14, v17);
  sub_106204();
  v19 = sub_9A808();
  v5(v19);
  v20 = v18;
  v21 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    v22 = *(v0 + 920);
    sub_8BD8();
    v23 = sub_8A44();
    *v15 = 138412290;
    *(v15 + 4) = v22;
    *v23 = v22;
    v24 = v22;
    sub_88FC(&def_259DC, v25, v26, "#GetHealthQuantityFlow: In successResponseFlow intent response is %@");
    sub_5CFC8(v23, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v27 = *(v0 + 1024);
  v28 = *(v0 + 1016);
  v29 = *(v0 + 992);
  v30 = *(v0 + 928);

  v63(v27, v29);
  sub_106204();
  v31 = sub_9A808();
  v5(v31);
  sub_125FE8(v30, v0 + 16);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 1016);
  v36 = *(v0 + 992);
  if (v34)
  {
    v62 = *(v0 + 992);
    v37 = sub_8BD8();
    v38 = swift_slowAlloc();
    v64 = v38;
    *v37 = 136315138;
    v39 = sub_208C0(*(v0 + 16));
    v61 = v35;
    v40 = v5;
    v42 = v41;
    sub_92A8C(v0 + 16);
    v43 = sub_3AB7C(v39, v42, &v64);
    v5 = v40;

    *(v37 + 4) = v43;
    _os_log_impl(&def_259DC, v32, v33, "#GetHealthQuantityFlow: In successResponseFlow identifier is %s", v37, 0xCu);
    sub_2D64(v38);

    v63(v61, v62);
  }

  else
  {

    sub_92A8C(v0 + 16);
    v63(v35, v36);
  }

  sub_7B09C(v0 + 640, v0 + 720, &qword_1C5ED0, &qword_171090);
  if (*(v0 + 744))
  {
    sub_17464((v0 + 720), v0 + 680);
    sub_C9294(v0 + 680, v0 + 760);
    v44 = swift_allocObject();
    sub_17464((v0 + 760), v44 + 16);
    sub_16C73C();
    v45 = sub_16C1DC();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    *(v0 + 904) = sub_16C1CC();
    v48 = sub_16C32C();
    sub_2D64((v0 + 680));
    sub_5CFC8(v0 + 640, &qword_1C5ED0, &qword_171090);
  }

  else
  {
    v49 = *(v0 + 1008);
    v50 = *(v0 + 992);
    sub_5CFC8(v0 + 720, &qword_1C5ED0, &qword_171090);
    sub_106204();
    v51 = sub_C9C8();
    v5(v51);
    v52 = sub_16DBDC();
    v53 = sub_16E37C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&def_259DC, v52, v53, "#GetHealthQuantityFlow: Invalid responseOutput, triggering error response", v54, 2u);
    }

    v55 = *(v0 + 1008);
    v56 = *(v0 + 992);
    v57 = *(v0 + 928);

    v63(v55, v56);
    v58 = *(v57 + 256);
    sub_16D71C();
    sub_8284(v57 + 88, v0 + 440);
    sub_82E0();
    v48 = sub_16C32C();
    sub_8334(v0 + 440);
    sub_5CFC8(v0 + 640, &qword_1C5ED0, &qword_171090);
  }

  sub_126188();

  v59 = *(v0 + 8);

  return v59(v48);
}

uint64_t sub_125704()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 1048);
  v9 = *v0;
  *(v2 + 1056) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1257F4()
{
  v1 = v0[132];
  if (v1)
  {
    v2 = v0[123];
    v3 = v0[122];
    v4 = v0[121];
    v5 = v0[120];
    v6 = v0[119];
    v7 = v0[118];
    v8 = v0[117];
    v9 = v0[116];
    sub_16C43C();
    (*(v7 + 16))(v6, v5, v8);
    sub_16C75C();
    (*(v7 + 8))(v5, v8);
    v10 = [v1 patternId];
    sub_16E1BC();

    sub_4B4EC();
    sub_16C76C();
    v11 = v9[15];
    sub_2D20(v9 + 11, v9[14]);
    v0[112] = sub_16C2FC();
    sub_16C28C();
    v12 = sub_16C32C();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v13 = v0[116];
    v14 = *(v13 + 256);
    sub_16D71C();
    sub_8284(v13 + 88, (v0 + 35));
    sub_82E0();
    v12 = sub_16C32C();
    sub_8334((v0 + 35));
  }

  sub_126188();

  v15 = v0[1];

  return v15(v12);
}

uint64_t sub_125A1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_1234C4();
}

uint64_t sub_125AB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v62 = a3;
  v5 = sub_16C0BC();
  v6 = sub_42F0(v5);
  v59 = v7;
  v60 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_4304();
  v57 = v11 - v10;
  v12 = sub_16BF5C();
  v13 = sub_42F0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_38634();
  v58 = v18;
  sub_89B4();
  __chkstk_darwin(v19);
  sub_8AC0();
  v56 = v20;
  sub_89B4();
  __chkstk_darwin(v21);
  sub_B62E8();
  __chkstk_darwin(v22);
  v24 = &v55 - v23;
  v25 = sub_2440(&qword_1C5690, &dword_16F320);
  v26 = sub_4348(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v55 - v29;
  v31 = sub_16BD9C();
  v32 = sub_42F0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_4304();
  v39 = v38 - v37;
  v41 = v40;
  sub_7B09C(a1, v30, &qword_1C5690, &dword_16F320);
  sub_8A94(v30);
  if (v42)
  {
    sub_5CFC8(v30, &qword_1C5690, &dword_16F320);
    return sub_7B09C(a1, v62, &qword_1C5690, &dword_16F320);
  }

  v44 = *(v34 + 32);
  v55 = v41;
  v44(v39, v30);
  sub_16BD4C();
  sub_16BECC();
  v46 = v45;
  v47 = *(v15 + 8);
  v47(v24, v12);
  sub_16BD7C();
  sub_16BECC();
  v49 = v48;
  v47(v3, v12);
  v50 = v46 - v49;
  if (v61 != 103 && v61 != 174 && v61 != 159)
  {
    if (v50 < 86399.0)
    {
      sub_16BD7C();
      v52 = v57;
      sub_16C08C();
      sub_16C02C();
      (*(v59 + 8))(v52, v60);
      v47(v24, v12);
      v53 = v56;
      sub_16BD7C();
      sub_7B6B8(v58);
      v47(v53, v12);
      v51 = v62;
      sub_16BD5C();
      goto LABEL_11;
    }

LABEL_12:
    v51 = v62;
    v54 = sub_C9C8();
    (v44)(v54);
    return sub_1261B4(v51);
  }

  if (v50 >= 3599.0)
  {
    goto LABEL_12;
  }

  sub_16BD7C();
  v51 = v62;
  sub_16BD6C();
LABEL_11:
  (*(v34 + 8))(v39, v55);
  return sub_1261B4(v51);
}

unint64_t sub_125F20()
{
  result = qword_1C57C8;
  if (!qword_1C57C8)
  {
    type metadata accessor for UnavailableDataFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57C8);
  }

  return result;
}

uint64_t sub_125F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_126020()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_126058()
{
  sub_8A88();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_C6F0;

  return sub_C8CB0(v3, v0 + 16);
}

void sub_1260F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();

  [a3 setQuantityIdentifier:v4];
}

uint64_t sub_126154()
{
  result = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[116];
  v8 = v0[113];
  v9 = v0[112];
  v10 = v0[109];
  v11 = v0[108];
  v12 = v0[107];
  return result;
}

uint64_t sub_126188()
{
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[126];
  v6 = v0[123];
  v7 = v0[120];
  v8 = v0[119];
}

uint64_t sub_1261B4(uint64_t a1)
{

  return sub_214C(a1, 0, 1, v1);
}

uint64_t sub_1261D0()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCC18WellnessFlowPlugin12WellnessTime7Builder_calendarIdentifier;
  v2 = sub_16D5CC();
  sub_214C(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_12621C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_126260(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1262A4(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1262E8(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void *sub_12632C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin12WellnessTime7Builder_calendarIdentifier);
  return v0;
}

void *sub_1263B0(void *a1)
{
  v3 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64);
  sub_433C();
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  v1[2] = 0;
  v1[3] = a1[2];
  v1[4] = a1[3];
  v1[5] = a1[4];
  v1[6] = a1[5];
  sub_7DA9C(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin12WellnessTime7Builder_calendarIdentifier, &v8 - v5);

  sub_7DB0C(v6, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier);
  return v1;
}

void sub_1264AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  sub_1278E8();
  v15 = a1 == 0xD000000000000014 && v14 == a2;
  if (!v15 && (sub_1278BC() & 1) == 0)
  {
    sub_1278E8();
    v18 = a1 == 0xD000000000000012 && v17 == a2;
    if (v18 || (sub_1278BC() & 1) != 0)
    {
      v16 = v3[4];
      if (v16)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1278E8();
      v20 = a1 == 0xD000000000000015 && v19 == a2;
      if (v20 || (sub_1278BC() & 1) != 0)
      {
        v16 = v3[5];
        if (v16)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1278AC();
        v22 = v15 && v21 == a2;
        if (!v22 && (sub_127888() & 1) == 0)
        {
          sub_1278E8();
          v24 = a1 == 0xD000000000000012 && v23 == a2;
          if (v24 || (sub_1278BC() & 1) != 0)
          {
            sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier, v13);
            v25 = sub_16D5CC();
            if (sub_369C(v13, 1, v25) != 1)
            {
              *(a3 + 24) = v25;
              v27 = sub_9910(a3);
              (*(*(v25 - 8) + 32))(v27, v13, v25);
              return;
            }

            v26 = v13;
          }

          else
          {
            v28 = a1 == 0x53736574756E696DLL && a2 == 0xEF776F4E65636E69;
            if (v28 || (sub_1278BC() & 1) != 0)
            {
              v29 = sub_15C3B4();
              if ((v30 & 1) == 0)
              {
                *(a3 + 24) = &type metadata for Double;
                *a3 = v29;
                return;
              }

              goto LABEL_16;
            }

            v31 = a1 == 0x6D617266656D6974 && a2 == 0xE900000000000065;
            if (!v31 && (sub_1278BC() & 1) == 0)
            {
              sub_1278AC();
              v35 = v15 && v34 == a2;
              if (v35 || (sub_127888() & 1) != 0)
              {
                sub_15C468();
              }

              else
              {
                sub_1278AC();
                v38 = v15 && v37 == a2;
                if (v38 || (sub_127888() & 1) != 0)
                {
                  sub_15C678();
                }

                else
                {
                  sub_1278E8();
                  v40 = a1 == 0xD000000000000014 && v39 == a2;
                  if (v40 || (sub_1278BC() & 1) != 0)
                  {
                    sub_15CB0C();
                  }

                  else
                  {
                    sub_1278E8();
                    v42 = a1 == 0xD000000000000014 && v41 == a2;
                    if (v42 || (sub_1278BC() & 1) != 0)
                    {
                      sub_15CD20();
                    }

                    else
                    {
                      sub_1278AC();
                      v44 = v15 && v43 == a2;
                      if (v44 || (sub_127888() & 1) != 0)
                      {
                        sub_15D1B4();
                      }

                      else
                      {
                        sub_1278AC();
                        v46 = v15 && v45 == a2;
                        if (v46 || (sub_127888() & 1) != 0)
                        {
                          sub_15D3C8();
                        }

                        else
                        {
                          sub_1278E8();
                          v48 = a1 == 0xD000000000000012 && v47 == a2;
                          if (v48 || (sub_1278BC() & 1) != 0)
                          {
                            v49 = sub_15EE1C() < 3u;
                            *(a3 + 24) = &type metadata for Bool;
                            *a3 = v49;
                            return;
                          }

                          sub_1278AC();
                          v51 = v15 && v50 == a2;
                          if (!v51 && (sub_127888() & 1) == 0)
                          {
                            v52 = a1 == 0x636E6953656D6974 && a2 == 0xEC000000776F4E65;
                            if (v52 || (sub_1278BC() & 1) != 0)
                            {
                              v53 = sub_15D85C();
                              if (v53)
                              {
                                v54 = v53;
                                *(a3 + 24) = sub_16D54C();
                                *a3 = v54;
                                return;
                              }
                            }

                            goto LABEL_16;
                          }

                          v36 = sub_15C380();
                        }
                      }
                    }
                  }
                }
              }

              *(a3 + 24) = &type metadata for Bool;
              *a3 = v36 & 1;
              return;
            }

            sub_15C3EC(v11);
            v32 = sub_16D5CC();
            if (sub_369C(v11, 1, v32) != 1)
            {
              *(a3 + 24) = v32;
              v33 = sub_9910(a3);
              (*(*(v32 - 8) + 32))(v33, v11, v32);
              return;
            }

            v26 = v11;
          }

          sub_6261C(v26);
          goto LABEL_16;
        }

        v16 = v3[6];
        if (v16)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_16:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v16 = v3[3];
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_7:
  *(a3 + 24) = sub_16D4EC();
  *a3 = v16;
}

uint64_t sub_1269BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B8648;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_126A10(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_126AD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1269BC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_126B08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_126A10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_126B3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1269BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_126B70(uint64_t a1)
{
  v2 = sub_1275D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_126BAC(uint64_t a1)
{
  v2 = sub_1275D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_126BE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier);
  return v0;
}

uint64_t sub_126C50(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_126CD4()
{
  sub_7D0F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_126D78(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CADA0, &qword_177738);
  sub_42F0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_1275D0();
  sub_16E77C();
  v20 = v3[3];
  HIBYTE(v19) = 0;
  sub_16D4EC();
  sub_12790C();
  sub_127588(v14, v15);
  sub_12785C();
  if (!v2)
  {
    v20 = v3[4];
    HIBYTE(v19) = 1;
    sub_12785C();
    v20 = v3[5];
    HIBYTE(v19) = 2;
    sub_12785C();
    v20 = v3[6];
    HIBYTE(v19) = 3;
    sub_12785C();
    LOBYTE(v20) = 4;
    sub_16D5CC();
    sub_1278F4();
    sub_127588(v16, v17);
    sub_16E63C();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_126F88(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1270A0(a1);
  return v5;
}

void sub_127000()
{
  sub_7D0F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1270A0(uint64_t *a1)
{
  v3 = v1;
  v5 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v8 = v27 - v7;
  v9 = sub_2440(&qword_1CAD90, &qword_177730);
  sub_42F0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_433C();
  __chkstk_darwin(v14);
  *(v3 + 16) = 0;
  v15 = a1[3];
  v16 = a1[4];
  v28 = a1;
  sub_2D20(a1, v15);
  sub_1275D0();
  sub_16E76C();
  if (v2)
  {

    type metadata accessor for WellnessTime(0);
    v19 = *(*v3 + 48);
    v20 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27[0] = v8;
    v27[1] = v11;
    sub_16D4EC();
    v29 = 0;
    sub_12790C();
    sub_127588(v17, v18);
    sub_16E5AC();
    *(v3 + 24) = v30;
    sub_127838(1);
    sub_16E5AC();
    *(v3 + 32) = v30;
    sub_127838(2);
    sub_16E5AC();
    *(v3 + 40) = v30;
    sub_127838(3);
    sub_16E5AC();
    *(v3 + 48) = v30;
    sub_16D5CC();
    LOBYTE(v30) = 4;
    sub_1278F4();
    sub_127588(v22, v23);
    v24 = v27[0];
    sub_16E5AC();
    v25 = sub_1278D8();
    v26(v25);
    sub_7DB0C(v24, v3 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier);
  }

  sub_2D64(v28);
  return v3;
}

uint64_t sub_1274A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_126F88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_127588(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1275D0()
{
  result = qword_1CAD98;
  if (!qword_1CAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAD98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WellnessTime.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1276F0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12772C()
{
  result = qword_1CADA8;
  if (!qword_1CADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADA8);
  }

  return result;
}

unint64_t sub_127784()
{
  result = qword_1CADB0;
  if (!qword_1CADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADB0);
  }

  return result;
}

unint64_t sub_1277DC()
{
  result = qword_1CADB8;
  if (!qword_1CADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADB8);
  }

  return result;
}

uint64_t sub_12785C()
{

  return sub_16E63C();
}

uint64_t sub_127888()
{

  return sub_16E6BC();
}

uint64_t sub_1278BC()
{

  return sub_16E6BC();
}

uint64_t sub_127934()
{
  sub_92270();

  return sub_16C33C();
}

uint64_t sub_127988()
{
  sub_8A88();
  v1[114] = v0;
  v1[113] = v2;
  v3 = sub_16DBEC();
  v1[115] = v3;
  sub_888C(v3);
  v1[116] = v4;
  v6 = *(v5 + 64);
  v1[117] = sub_8C38();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v7 = type metadata accessor for GenericButtonModel();
  v1[120] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[121] = swift_task_alloc();
  v9 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64);
  v1[122] = sub_8C38();
  v1[123] = swift_task_alloc();
  v10 = sub_16BE9C();
  v1[124] = v10;
  sub_888C(v10);
  v1[125] = v11;
  v13 = *(v12 + 64);
  v1[126] = sub_8C38();
  v1[127] = swift_task_alloc();
  v14 = sub_16C46C();
  v1[128] = v14;
  sub_888C(v14);
  v1[129] = v15;
  v17 = *(v16 + 64);
  v1[130] = sub_8C38();
  v1[131] = swift_task_alloc();
  v18 = sub_16C7BC();
  v1[132] = v18;
  sub_888C(v18);
  v1[133] = v19;
  v21 = *(v20 + 64) + 15;
  v1[134] = swift_task_alloc();
  v22 = sub_17960();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_127BB8()
{
  sub_8A88();
  v1 = *(*(v0 + 912) + 248);
  v2 = swift_task_alloc();
  *(v0 + 1080) = v2;
  *v2 = v0;
  v2[1] = sub_127C48;

  return sub_3F118();
}

uint64_t sub_127C48()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  v4 = *(v2 + 1080);
  v8 = *v1;
  *(v3 + 1088) = v5;
  *(v3 + 1096) = v0;

  if (v0)
  {
    v6 = sub_128AE4;
  }

  else
  {
    v6 = sub_127D58;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_127D58()
{
  v1 = v0[134];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[128];
  v6 = v0[114];
  sub_16C45C();
  (*(v4 + 16))(v3, v2, v5);
  sub_16C75C();
  (*(v4 + 8))(v2, v5);
  v7 = v6[3];
  v8 = v6[4];
  sub_2D20(v6, v7);
  (*(v8 + 8))(v7, v8);
  v9 = v0[66];
  sub_2D20(v0 + 62, v0[65]);
  if (sub_16C40C())
  {
    sub_2D64(v0 + 62);
LABEL_4:
    v14 = v0[124];
    v15 = v0[123];
    v16 = *(v0[114] + 240);
    v17 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    v19 = v18;
    sub_16BE8C();
    if (sub_369C(v15, 1, v14) == 1)
    {
      v88 = (v0 + 42);
      v20 = v0[123];
      v21 = v0 + 119;
      v22 = v0[119];
      v23 = v0[116];
      v24 = v0[115];

      sub_C878(v20, &qword_1C57F8, &unk_172510);
      sub_16DBBC();
      swift_beginAccess();
      v25 = sub_128FA0();
      v26(v25);
      v27 = sub_16DBDC();
      v28 = sub_16E36C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "Couldn't create URL for Phone or iPad Medications";
LABEL_11:
        _os_log_impl(&def_259DC, v27, v28, v30, v29, 2u);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v31 = v0[136];
    v89 = v0[134];
    v32 = v0[127];
    v33 = v0[125];
    v34 = v0[124];
    v35 = v0[123];
    v36 = sub_128F50();
    v37(v36);
    v38 = sub_128F70();
    v39(v38);
    *v5 = v17;
    v5[1] = v19;
    v40 = [v31 catId];
    v41 = sub_16E1BC();

    sub_16C76C();
    v0[95] = sub_128FE8();
    v0[96] = sub_17548();
    v42 = sub_9910(v0 + 92);
    sub_175A0(v5, v42);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v43 = swift_allocObject();
    v0[138] = v43;
    *(v43 + 16) = xmmword_170F70;
    *(v43 + 32) = v31;
    v44 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v45 = v31;
    swift_task_alloc();
    sub_179E8();
    v0[139] = v46;
    *v46 = v47;
    v46[1] = sub_12857C;
    v48 = v0[134];
    v49 = v0 + 87;
    v50 = v0 + 92;
    goto LABEL_16;
  }

  v11 = v6[3];
  v10 = v6[4];
  sub_2D20(v0[114], v11);
  (*(v10 + 8))(v11, v10);
  v12 = v0[71];
  sub_2D20(v0 + 67, v0[70]);
  v13 = sub_16C3FC();
  sub_2D64(v0 + 67);
  sub_2D64(v0 + 62);
  if (v13)
  {
    goto LABEL_4;
  }

  v51 = v0[124];
  v52 = v0[122];
  v53 = *(v0[114] + 240);
  v54 = sub_9A820(0xD000000000000010, 0x800000000017E960, 0xD000000000000012, 0x800000000017E980);
  v56 = v55;
  sub_16BE8C();
  if (sub_369C(v52, 1, v51) == 1)
  {
    v88 = (v0 + 22);
    v57 = v0[122];
    v21 = v0 + 118;
    v58 = v0[118];
    v59 = v0[116];
    v60 = v0[115];

    sub_C878(v57, &qword_1C57F8, &unk_172510);
    sub_16DBBC();
    swift_beginAccess();
    v61 = sub_128FA0();
    v62(v61);
    v27 = sub_16DBDC();
    v28 = sub_16E36C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Couldn't create URL for Watch Medications";
      goto LABEL_11;
    }

LABEL_12:
    v63 = v0[136];
    v87 = v0[134];
    v64 = v0[133];
    v65 = v0[132];
    v66 = *v21;
    v67 = v0[116];
    v68 = v0[115];
    v69 = v0[114];
    v70 = v0[113];

    (*(v67 + 8))(v66, v68);
    sub_8284(v69 + 40, v88);
    sub_82E0();
    sub_16C4EC();

    sub_8334(v88);
    (*(v64 + 8))(v87, v65);
    sub_128F20();

    sub_C9BC();

    return v71();
  }

  v73 = v0[136];
  v90 = v0[134];
  v74 = v0[126];
  v75 = v0[125];
  v76 = v0[124];
  v77 = v0[122];
  v78 = sub_128F50();
  v79(v78);
  v80 = sub_128F70();
  v81(v80);
  *v5 = v54;
  v5[1] = v56;
  v40 = [v73 catId];
  v41 = sub_16E1BC();

  sub_16C76C();
  v0[80] = sub_128FE8();
  v0[81] = sub_17548();
  v82 = sub_9910(v0 + 77);
  sub_175A0(v5, v82);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v43 = swift_allocObject();
  v0[140] = v43;
  *(v43 + 16) = xmmword_170F70;
  *(v43 + 32) = v73;
  v83 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v84 = v73;
  swift_task_alloc();
  sub_179E8();
  v0[141] = v85;
  *v85 = v86;
  v85[1] = sub_128830;
  v48 = v0[134];
  v49 = v0 + 72;
  v50 = v0 + 77;
LABEL_16:

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v49, v50, v43, v48, v40, v41);
}

uint64_t sub_12857C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 1112);
  v4 = *(v1 + 1104);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 736));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_128684()
{
  sub_128F88();
  v6 = *(v2 + 1016);
  sub_128FB4();
  sub_8388(v2 + 696, v2 + 776);
  v7 = swift_allocObject();
  sub_17464((v2 + 776), v7 + 16);
  sub_16C73C();
  v8 = sub_16C1DC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v2 + 896) = sub_128FC8();
  sub_16C4EC();

  sub_2D64((v2 + 696));
  sub_17604(v4);
  (*(v0 + 8))(v6, v3);
  (*(v5 + 8))();
  sub_128F20();

  sub_C9BC();

  return v11();
}

uint64_t sub_128830()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 1128);
  v4 = *(v1 + 1120);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 616));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_128938()
{
  sub_128F88();
  v6 = *(v2 + 1008);
  sub_128FB4();
  sub_8388(v2 + 576, v2 + 656);
  v7 = swift_allocObject();
  sub_17464((v2 + 656), v7 + 16);
  sub_16C73C();
  v8 = sub_16C1DC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v2 + 888) = sub_128FC8();
  sub_16C4EC();

  sub_2D64((v2 + 576));
  sub_17604(v4);
  (*(v0 + 8))(v6, v3);
  (*(v5 + 8))();
  sub_128F20();

  sub_C9BC();

  return v11();
}

uint64_t sub_128AE4()
{
  v1 = v0[137];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[137];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&def_259DC, v6, v7, "Couldn't execute wellness#regionNotSupportedForMeds pattern. Error: %@", v9, 0xCu);
    sub_C878(v10, &qword_1C57B8, &qword_1715A0);
  }

  v12 = v0[137];
  v13 = v0[117];
  v14 = v0[116];
  v15 = v0[115];
  v16 = v0[114];
  v17 = v0[113];

  (*(v14 + 8))(v13, v15);
  sub_8284(v16 + 40, (v0 + 2));
  sub_82E0();
  sub_16C4EC();

  sub_8334((v0 + 2));
  sub_128F20();

  sub_C9BC();

  return v18();
}

uint64_t sub_128D3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_127988();
}

uint64_t sub_128DD4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_128E0C()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_128E94()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_128F20()
{
  result = v0[134];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[127];
  v5 = v0[126];
  v6 = v0[123];
  v7 = v0[122];
  v8 = v0[121];
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[117];
  return result;
}

uint64_t sub_128F50()
{
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[114];
  v6 = *(v2 + 32);
  return v1;
}

void sub_128F88()
{
  v1 = v0[136];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[134];
}

void sub_128FB4()
{
  v1 = v0[125];
  v2 = v0[124];
  v3 = v0[121];
  v4 = v0[113];
}

uint64_t sub_128FC8()
{

  return sub_16C1CC();
}

uint64_t sub_128FE8()
{
  v1 = v0[29];
  sub_2D20(v0 + 25, v0[28]);

  return type metadata accessor for WellnessSnippets();
}

uint64_t sub_129020(void *a1, uint64_t a2)
{
  v98 = a2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v96 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v96 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v96 - v15;
  __chkstk_darwin(v14);
  sub_8AC0();
  v97 = v17;
  sub_89B4();
  __chkstk_darwin(v18);
  sub_8AC0();
  v96 = v19;
  sub_89B4();
  __chkstk_darwin(v20);
  sub_8AC0();
  v100 = v21;
  sub_89B4();
  __chkstk_darwin(v22);
  sub_8AC0();
  v99 = v23;
  sub_89B4();
  v25 = __chkstk_darwin(v24);
  v27 = &v96 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v96 - v29;
  __chkstk_darwin(v28);
  v32 = &v96 - v31;
  v33 = sub_1033F4(a1);
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    sub_129BE4(a1);
    if (v37)
    {
      sub_16E23C();

      v38 = sub_16D5CC();
      v39 = 0;
    }

    else
    {
      v38 = sub_16D5CC();
      v39 = 1;
    }

    v42 = v100;
    v43 = 1;
    sub_5DDCC(v30, v39);
    v101 = v35;
    v102 = v36;

    sub_129C48();

    sub_16E23C();

    sub_16D5CC();
    sub_388E4();
    sub_214C(v44, v45, v46, v38);
    sub_103400(a1);
    if (v47)
    {
      v48 = v99;
      sub_16E23C();

      v43 = 0;
      v49 = v98;
    }

    else
    {
      v49 = v98;
      v48 = v99;
    }

    v50 = 1;
    sub_5DDCC(v48, v43);
    sub_10340C(a1);
    if (v51)
    {
      sub_16E23C();

      v50 = 0;
    }

    sub_5DDCC(v42, v50);
    v52 = [a1 strength];
    v53 = v52;
    if (v52)
    {
      [v52 doubleValue];
      v55 = v54;

      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    sub_103418(a1);
    if (v57)
    {
      v58 = v96;
      sub_16E23C();

      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v96;
    }

    sub_5DDCC(v58, v59);
    v60 = *(v38 - 8);
    v61 = v97;
    (*(v60 + 16))(v97, v49, v38);
    sub_388E4();
    sub_214C(v62, v63, v64, v38);
    v65 = v30;
    v66 = v27;
    v67 = v99;
    v68 = v100;
    v69 = v56;
    v70 = v53 == 0;
    v71 = v58;
    v72 = v61;
    v73 = v49;
  }

  else
  {
    v99 = v13;
    v100 = v10;
    sub_129BE4(a1);
    if (v40)
    {
      sub_16E23C();

      v38 = sub_16D5CC();
      v41 = 0;
    }

    else
    {
      v38 = sub_16D5CC();
      v41 = 1;
    }

    v73 = v98;
    v74 = v99;
    v75 = 1;
    sub_5DDCC(v32, v41);
    sub_129CA8();
    sub_16E23C();
    sub_16D5CC();
    sub_388E4();
    sub_214C(v76, v77, v78, v38);
    sub_103400(a1);
    if (v79)
    {
      sub_16E23C();

      v75 = 0;
    }

    v80 = 1;
    sub_5DDCC(v74, v75);
    sub_10340C(a1);
    v82 = v100;
    if (v81)
    {
      sub_16E23C();

      v80 = 0;
    }

    sub_5DDCC(v82, v80);
    v83 = [a1 strength];
    v84 = v83;
    if (v83)
    {
      [v83 doubleValue];
      v86 = v85;

      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    sub_103418(a1);
    if (v88)
    {
      sub_16E23C();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }

    sub_5DDCC(v7, v89);
    v60 = *(v38 - 8);
    v90 = v97;
    (*(v60 + 16))(v97, v73, v38);
    sub_388E4();
    sub_214C(v91, v92, v93, v38);
    v65 = v32;
    v66 = v16;
    v67 = v99;
    v68 = v100;
    v69 = v87;
    v70 = v84 == 0;
    v71 = v7;
    v72 = v90;
  }

  v94 = sub_7C3FC(v65, v66, v67, v68, v69, v70, v71, v72);

  (*(v60 + 8))(v73, v38);
  return v94;
}

uint64_t sub_129638(void *a1, uint64_t a2, uint64_t a3)
{
  v100 = a3;
  v99 = a2;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v96 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v96 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v96 - v16;
  __chkstk_darwin(v15);
  sub_8AC0();
  v98 = v18;
  sub_89B4();
  __chkstk_darwin(v19);
  sub_8AC0();
  v97 = v20;
  sub_89B4();
  __chkstk_darwin(v21);
  sub_8AC0();
  v102 = v22;
  sub_89B4();
  __chkstk_darwin(v23);
  sub_8AC0();
  v25 = v24;
  sub_89B4();
  __chkstk_darwin(v26);
  sub_8AC0();
  v101 = v27;
  sub_89B4();
  __chkstk_darwin(v28);
  sub_8AC0();
  v30 = v29;
  sub_89B4();
  __chkstk_darwin(v31);
  v33 = &v96 - v32;
  v34 = sub_1033F4(a1);
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    sub_129BE4(a1);
    if (v38)
    {
      sub_16E23C();

      v39 = sub_16D5CC();
      v40 = 0;
    }

    else
    {
      v39 = sub_16D5CC();
      v40 = 1;
    }

    v48 = 1;
    sub_129C78(v30, v40);
    v103 = v36;
    v104 = v37;

    sub_129C48();

    sub_16E23C();

    sub_16D5CC();
    sub_388E4();
    sub_214C(v49, v50, v51, v39);
    sub_103400(a1);
    if (v52)
    {
      sub_16E23C();

      v48 = 0;
    }

    v53 = v102;
    v54 = 1;
    sub_129C78(v25, v48);
    sub_10340C(a1);
    if (v55)
    {
      sub_16E23C();

      v54 = 0;
    }

    v56 = v97;
    sub_129C78(v53, v54);
    v57 = [a1 strength];
    v58 = v57;
    if (v57)
    {
      [v57 doubleValue];
      v60 = v59;

      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    sub_103418(a1);
    if (v62)
    {
      sub_16E23C();

      v63 = 0;
    }

    else
    {
      v63 = 1;
    }

    sub_129C78(v56, v63);
    v64 = v98;
    sub_16E23C();

    sub_388E4();
    sub_214C(v65, v66, v67, v39);
    v68 = v30;
    v69 = v101;
    v70 = v102;
    v71 = v25;
    v72 = v61;
    v73 = v58 == 0;
    v74 = v56;
    v75 = v64;
  }

  else
  {
    v102 = v17;
    v41 = v14;
    sub_129BE4(a1);
    if (v42)
    {
      v43 = v33;
      sub_16E23C();

      v44 = sub_16D5CC();
      v45 = 0;
      v46 = v8;
      v47 = v11;
    }

    else
    {
      v44 = sub_16D5CC();
      v45 = 1;
      v46 = v8;
      v47 = v11;
      v43 = v33;
    }

    v76 = 1;
    sub_129C90(v43, v45);
    sub_129CA8();
    sub_16E23C();
    sub_16D5CC();
    sub_388E4();
    sub_214C(v77, v78, v79, v44);
    sub_103400(a1);
    if (v80)
    {
      sub_16E23C();

      v76 = 0;
    }

    v81 = 1;
    sub_129C90(v41, v76);
    sub_10340C(a1);
    if (v82)
    {
      sub_16E23C();

      v81 = 0;
    }

    sub_129C90(v47, v81);
    v83 = [a1 strength];
    v84 = v83;
    if (v83)
    {
      [v83 doubleValue];
      v86 = v85;

      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    sub_103418(a1);
    if (v88)
    {
      sub_16E23C();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }

    sub_129C90(v46, v89);
    v90 = v98;
    sub_16E23C();

    sub_388E4();
    sub_214C(v91, v92, v93, v44);
    v68 = v43;
    v69 = v102;
    v71 = v41;
    v70 = v47;
    v72 = v87;
    v73 = v84 == 0;
    v74 = v46;
    v75 = v90;
  }

  v94 = sub_7C3FC(v68, v69, v71, v70, v72, v73, v74, v75);

  return v94;
}

uint64_t sub_129BE4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

void sub_129C48()
{
  v1._countAndFlagsBits = 0x6C75646568635320;
  v1._object = 0xE900000000000065;

  sub_16E26C(v1);
}

uint64_t sub_129C78(uint64_t a1, uint64_t a2)
{

  return sub_214C(a1, a2, 1, v2);
}

uint64_t sub_129C90(uint64_t a1, uint64_t a2)
{

  return sub_214C(a1, a2, 1, v2);
}

uint64_t type metadata accessor for GenericQueryModel()
{
  result = qword_1CAE30;
  if (!qword_1CAE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericQueryModel.averageValue.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 20);
  return sub_205FC();
}

uint64_t GenericQueryModel.maxValue.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 24);
  return sub_205FC();
}

uint64_t GenericQueryModel.minValue.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 28);
  return sub_205FC();
}

uint64_t GenericQueryModel.mostRecentValue.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 32);
  return sub_205FC();
}

uint64_t GenericQueryModel.totalValue.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 36);
  return sub_205FC();
}

uint64_t GenericQueryModel.dateLabel.setter()
{
  sub_12C5B0();
  Model = type metadata accessor for GenericQueryModel();
  return sub_1E634(v0, v1 + *(Model + 40), &qword_1C5800, &unk_16F510);
}

uint64_t GenericQueryModel.dateLabel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 40);
  return sub_205FC();
}

uint64_t GenericQueryModel.averageValueString.getter()
{
  Model = type metadata accessor for GenericQueryModel();
  sub_20658(*(Model + 44));
  return sub_8B9C();
}

uint64_t GenericQueryModel.averageValueString.setter()
{
  v3 = sub_12C614();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.averageValueString.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 44);
  return sub_205FC();
}

uint64_t GenericQueryModel.maxValueString.getter()
{
  Model = type metadata accessor for GenericQueryModel();
  sub_20658(*(Model + 48));
  return sub_8B9C();
}

uint64_t GenericQueryModel.maxValueString.setter()
{
  v3 = sub_12C614();
  result = sub_66A6C(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.maxValueString.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 48);
  return sub_205FC();
}

uint64_t GenericQueryModel.minValueString.getter()
{
  Model = type metadata accessor for GenericQueryModel();
  sub_20658(*(Model + 52));
  return sub_8B9C();
}

uint64_t GenericQueryModel.minValueString.setter()
{
  v3 = sub_12C614();
  result = sub_66A6C(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.minValueString.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 52);
  return sub_205FC();
}

uint64_t GenericQueryModel.mostRecentValueString.getter()
{
  Model = type metadata accessor for GenericQueryModel();
  sub_20658(*(Model + 56));
  return sub_8B9C();
}

uint64_t GenericQueryModel.mostRecentValueString.setter()
{
  v3 = sub_12C614();
  result = sub_66A6C(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.mostRecentValueString.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 56);
  return sub_205FC();
}

uint64_t GenericQueryModel.totalValueString.getter()
{
  Model = type metadata accessor for GenericQueryModel();
  sub_20658(*(Model + 60));
  return sub_8B9C();
}

uint64_t GenericQueryModel.totalValueString.setter()
{
  v3 = sub_12C614();
  result = sub_66A6C(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.totalValueString.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 60);
  return sub_205FC();
}

uint64_t GenericQueryModel.unit.getter()
{
  Model = type metadata accessor for GenericQueryModel();
  sub_20658(*(Model + 64));
  return sub_8B9C();
}

uint64_t GenericQueryModel.unit.setter()
{
  v3 = sub_12C614();
  result = sub_66A6C(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.unit.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 64);
  return sub_205FC();
}

uint64_t GenericQueryModel.averageLabelString.getter()
{
  Model = type metadata accessor for GenericQueryModel();
  sub_20658(*(Model + 68));
  return sub_8B9C();
}

uint64_t GenericQueryModel.averageLabelString.setter()
{
  v3 = sub_12C614();
  result = sub_66A6C(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.averageLabelString.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 68);
  return sub_205FC();
}

uint64_t GenericQueryModel.snippetHeaderModel.setter()
{
  sub_12C5B0();
  Model = type metadata accessor for GenericQueryModel();
  return sub_1E634(v0, v1 + *(Model + 72), &dword_1C63F8, &qword_171800);
}

uint64_t GenericQueryModel.snippetHeaderModel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for GenericQueryModel() + 72);
  return sub_205FC();
}

uint64_t sub_12A600(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    sub_1278E8();
    return sub_2068C(0xD00000000000001ELL, v16);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    v18 = sub_16BE5C();
    sub_2068C(v18, v19);
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_12A7A4(uint64_t a1, char a2)
{
  v5 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v5);
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  Model = type metadata accessor for GenericQueryModel();
  sub_86B0(v2 + *(Model + 72), v10, &dword_1C63F8, &qword_171800);
  v12 = type metadata accessor for SnippetHeaderModel();
  if (sub_369C(v10, 1, v12) == 1)
  {
    sub_8748(v10, &dword_1C63F8, &qword_171800);
    return 0;
  }

  v14 = &v10[*(v12 + 24)];
  v16 = *v14;
  v15 = *(v14 + 1);

  sub_12C55C();
  sub_1278E8();
  v18 = v16 == 0xD000000000000021 && v17 == v15;
  if (v18 || (sub_610C8() & 1) != 0 || ((sub_1278E8(), v16 == 0xD000000000000029) ? (v20 = v19 == v15) : (v20 = 0), v20 || (sub_610C8() & 1) != 0 || ((sub_1278E8(), v16 == 0xD00000000000002ALL) ? (v22 = v21 == v15) : (v22 = 0), v22 || (sub_610C8() & 1) != 0 || ((sub_1278E8(), v16 == 0xD000000000000029) ? (v24 = v23 == v15) : (v24 = 0), v24))))
  {
  }

  else
  {
    v25 = sub_610C8();

    if ((v25 & 1) == 0)
    {
      return sub_12A998(a1, a2 & 1);
    }
  }

  return sub_12AAB8(a1, a2 & 1);
}

uint64_t sub_12A998(uint64_t result, char a2)
{
  if (a2)
  {
    return 0;
  }

  v2 = result;
  if (*&result <= 0.0)
  {
    return 0;
  }

  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    v7 = sub_16E1CC();

    return v7;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    return sub_16E68C();
  }

  __break(1u);
  return result;
}

uint64_t sub_12AAB8(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(NSNumberFormatter) init];
  [v3 setNumberStyle:1];
  [v3 setMaximumFractionDigits:1];
  v4 = [objc_allocWithZone(NSNumber) initWithDouble:*&a1];
  v5 = [v3 stringFromNumber:v4];

  if (v5)
  {
    v6 = sub_16E1BC();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_12ABB8(uint64_t a1, uint64_t a2)
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
          v9 = a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C61566C61746F74 && a2 == 0xEA00000000006575;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x800000000017F5E0 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x800000000017FED0 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 1953066613 && a2 == 0xE400000000000000;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000000017F620 == a2;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_16E6BC();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
    }
  }
}

uint64_t sub_12B050(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v4 = 1450729837;
      return v4 | 0x65756C6100000000;
    case 3:
      v4 = 1450076525;
      return v4 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
      return 0x6C61566C61746F74;
    case 6:
      return 0x6562614C65746164;
    case 7:
      return 0xD000000000000012;
    case 8:
      v3 = 1450729837;
      goto LABEL_18;
    case 9:
      v3 = 1450076525;
LABEL_18:
      result = v3 | 0x65756C6100000000;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 1953066613;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_12B240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12ABB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_12B268(uint64_t a1)
{
  v2 = sub_12B698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12B2A4(uint64_t a1)
{
  v2 = sub_12B698();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1CADC0, &qword_1779C8);
  sub_42F0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v22[-v9];
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_12B698();
  sub_16E77C();
  v22[15] = 0;
  sub_16C11C();
  sub_12C5E4();
  sub_12BEE0(v12, v13);
  sub_12C630();
  if (!v1)
  {
    Model = type metadata accessor for GenericQueryModel();
    sub_669D0(Model[5]);
    v22[14] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v22[13] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v22[12] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v22[11] = 4;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[9]);
    v22[10] = 5;
    sub_20584();
    sub_16E62C();
    v15 = Model[10];
    v22[9] = 6;
    sub_16D5CC();
    sub_12C5FC();
    sub_12BEE0(v16, v17);
    sub_12C630();
    sub_66A40(Model[11]);
    v22[8] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v22[7] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v22[6] = 9;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[14]);
    v22[5] = 10;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[15]);
    v22[4] = 11;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[16]);
    v22[3] = 12;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[17]);
    v22[2] = 13;
    sub_20584();
    sub_16E61C();
    v18 = Model[18];
    v22[1] = 14;
    type metadata accessor for SnippetHeaderModel();
    sub_12C5CC();
    sub_12BEE0(v19, v20);
    sub_12C630();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_12B698()
{
  result = qword_1CADC8;
  if (!qword_1CADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADC8);
  }

  return result;
}

uint64_t GenericQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a1;
  v91 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  sub_13088();
  v92 = v6;
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v7);
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  sub_13088();
  v104 = v11;
  v12 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  sub_13088();
  v105 = v16;
  v106 = sub_2440(&qword_1CADD0, &qword_1779D0);
  sub_42F0(v106);
  v103 = v17;
  v19 = *(v18 + 64);
  sub_433C();
  __chkstk_darwin(v20);
  sub_13088();
  v109 = v21;
  Model = type metadata accessor for GenericQueryModel();
  v23 = (Model - 8);
  v24 = *(*(Model - 8) + 64);
  __chkstk_darwin(Model);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_16C11C();
  sub_214C(v26, 1, 1, v102);
  sub_12C650(v23[7]);
  v101 = v27;
  *(v27 + 8) = 1;
  sub_12C650(v23[8]);
  v100 = v28;
  *(v28 + 8) = 1;
  sub_12C650(v23[9]);
  v99 = v29;
  *(v29 + 8) = 1;
  sub_12C650(v23[10]);
  v98 = v30;
  *(v30 + 8) = 1;
  sub_12C650(v23[11]);
  v96 = v31;
  *(v31 + 8) = 1;
  v32 = v23[12];
  v33 = sub_16D5CC();
  v95 = v32;
  v97 = v33;
  sub_214C(&v26[v32], 1, 1, v33);
  v34 = &v26[v23[13]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v94 = v34;
  v35 = &v26[v23[14]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v93 = v35;
  v36 = &v26[v23[15]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v26[v23[16]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v26[v23[17]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v26[v23[18]];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v26[v23[19]];
  *v40 = 0;
  v40[1] = 0;
  v41 = v23[20];
  v42 = type metadata accessor for SnippetHeaderModel();
  v108 = v26;
  v90 = v41;
  sub_214C(&v26[v41], 1, 1, v42);
  v43 = v110[4];
  v44 = sub_2D20(v110, v110[3]);
  sub_12B698();
  v45 = v107;
  sub_16E76C();
  if (!v45)
  {
    v107 = v36;
    v89 = v37;
    v88 = v38;
    v46 = v104;
    v87 = v42;
    v47 = v103;
    v125 = 0;
    sub_12C5E4();
    sub_12BEE0(v48, v49);
    v50 = v105;
    sub_12C65C();
    v52 = v50;
    v53 = v108;
    sub_1E634(v52, v108, &qword_1C63F0, &unk_1717F0);
    v124 = 1;
    v54 = sub_16E59C();
    sub_12C5BC(v54, v55);
    v123 = 2;
    sub_D7848();
    v56 = sub_16E59C();
    sub_12C5BC(v56, v57);
    v122 = 3;
    sub_D7848();
    v58 = sub_16E59C();
    sub_12C5BC(v58, v59);
    v121 = 4;
    sub_D7848();
    v60 = sub_16E59C();
    sub_12C5BC(v60, v61);
    v120 = 5;
    sub_D7848();
    v62 = sub_16E59C();
    sub_12C5BC(v62, v63);
    v119 = 6;
    sub_12C5FC();
    sub_12BEE0(v64, v65);
    sub_12C65C();
    sub_1E634(v46, v53 + v95, &qword_1C5800, &unk_16F510);
    v118 = 7;
    sub_D7848();
    v66 = sub_16E58C();
    v67 = v94;
    *v94 = v66;
    v67[1] = v68;
    v117 = 8;
    sub_D7848();
    v69 = sub_16E58C();
    v70 = v93;
    *v93 = v69;
    v70[1] = v71;
    v116 = 9;
    sub_D7848();
    v72 = sub_16E58C();
    v73 = v107;
    *v107 = v72;
    v73[1] = v74;
    v115 = 10;
    sub_D7848();
    v75 = sub_16E58C();
    v76 = v89;
    *v89 = v75;
    v76[1] = v77;
    v114 = 11;
    sub_D7848();
    v78 = sub_16E58C();
    v79 = v88;
    *v88 = v78;
    v79[1] = v80;
    v113 = 12;
    sub_D7848();
    *v39 = sub_16E58C();
    v39[1] = v81;
    v112 = 13;
    sub_D7848();
    *v40 = sub_16E58C();
    v40[1] = v82;
    v111 = 14;
    sub_12C5CC();
    sub_12BEE0(v83, v84);
    v85 = v106;
    sub_12C65C();
    (*(v47 + 8))(v44, v85);
    v86 = v108;
    sub_1E634(v92, &v108[v90], &dword_1C63F8, &qword_171800);
    sub_12BDEC(v86, v91);
  }

  sub_2D64(v110);
  return sub_12C55C();
}

uint64_t sub_12BDEC(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for GenericQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_12BEE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12BF6C(uint64_t a1, uint64_t a2, int *a3)
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
    v14 = a3[10];
LABEL_12:
    v10 = a1 + v14;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v9 = sub_2440(&dword_1C63F8, &qword_171800);
    v14 = a3[18];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[11] + 8);
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

uint64_t sub_12C0C0(uint64_t a1, uint64_t a2, int a3, int *a4)
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
      v16 = a4[10];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[11] + 8) = a2;
        return result;
      }

      v11 = sub_2440(&dword_1C63F8, &qword_171800);
      v16 = a4[18];
    }

    v12 = a1 + v16;
  }

  return sub_214C(v12, a2, a2, v11);
}

void sub_12C1F0()
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v0 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v1 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      if (v2 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8);
        if (v3 <= 0x3F)
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GenericQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x12C41CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12C458()
{
  result = qword_1CAEA0;
  if (!qword_1CAEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEA0);
  }

  return result;
}

unint64_t sub_12C4B0()
{
  result = qword_1CAEA8;
  if (!qword_1CAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEA8);
  }

  return result;
}

unint64_t sub_12C508()
{
  result = qword_1CAEB0;
  if (!qword_1CAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEB0);
  }

  return result;
}

uint64_t sub_12C55C()
{
  v1 = sub_12C5B0();
  v3 = v2(v1);
  sub_8B38(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_12C5BC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_12C614()
{

  return type metadata accessor for GenericQueryModel();
}

uint64_t sub_12C630()
{

  return sub_16E63C();
}

uint64_t sub_12C65C()
{
  v2 = *(v0 - 112);

  return sub_16E5AC();
}

uint64_t BloodPressureLogModel.init(url:date:dateLabel:systolic:diastolic:loggedLabel:snippetHeaderModel:unitLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8@<D0>, uint64_t a9@<D1>, uint64_t a10)
{
  v71 = a6;
  v75 = a5;
  v76 = a1;
  v68 = a3;
  v69 = a4;
  v14 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v14);
  v16 = *(v15 + 64);
  sub_433C();
  __chkstk_darwin(v17);
  sub_13088();
  v74 = v18;
  v19 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v19);
  v21 = *(v20 + 64);
  sub_433C();
  __chkstk_darwin(v22);
  sub_13088();
  v72 = v23;
  v24 = sub_2440(&qword_1C5800, &unk_16F510);
  v25 = sub_4348(v24);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v67 - v31;

  sub_16C11C();
  sub_8AB4();
  v70 = v33;
  sub_214C(v34, v35, v36, v33);
  v37 = type metadata accessor for BloodPressureLogModel();
  v38 = v37[8];
  v39 = type metadata accessor for SnippetHeaderModel();
  sub_8AB4();
  sub_214C(v40, v41, v42, v39);
  v73 = a2;
  sub_16D45C();
  v43 = sub_16D5CC();
  if (sub_369C(v32, 1, v43) == 1)
  {
    sub_8748(v32, &qword_1C5800, &unk_16F510);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v46 = sub_16D5BC();
    v48 = v47;
    (*(*(v43 - 8) + 8))(v32, v43);
    v77 = v46;
    v78 = v48;
    sub_9854();
    v44 = sub_16E3FC();
    v45 = v49;
  }

  v67 = a10;
  v50 = (a7 + v37[5]);
  v51 = (a7 + v37[6]);
  v52 = (a7 + v37[7]);
  *v50 = v44;
  v50[1] = v45;
  *v51 = sub_12CF7C(a8, 0, a9, 0);
  v51[1] = v53;
  v54 = v69;
  *v52 = v68;
  v52[1] = v54;
  sub_8748(a7 + v38, &dword_1C63F8, &qword_171800);
  sub_83DD4(v75, a7 + v38, type metadata accessor for SnippetHeaderModel);
  sub_214C(a7 + v38, 0, 1, v39);
  sub_16D46C();
  if (sub_369C(v30, 1, v43) == 1)
  {
    sub_8748(v30, &qword_1C5800, &unk_16F510);
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v55 = sub_16D5BC();
    v56 = v57;
    (*(*(v43 - 8) + 8))(v30, v43);
  }

  v58 = (a7 + v37[9]);
  v59 = (a7 + v37[10]);
  *v58 = v55;
  v58[1] = v56;
  v60 = v67;
  *v59 = v71;
  v59[1] = v60;
  v61 = sub_16BE9C();
  v62 = *(v61 - 8);
  v63 = v74;
  v64 = v76;
  (*(v62 + 16))(v74, v76, v61);
  sub_214C(v63, 0, 1, v61);
  v65 = v72;
  sub_12D058(v63);

  sub_12DE48();
  (*(v62 + 8))(v64, v61);
  sub_8748(v63, &qword_1C57F8, &unk_172510);
  sub_214C(v65, 0, 1, v70);
  return sub_1E634(v65, a7, &qword_1C63F0, &unk_1717F0);
}

uint64_t type metadata accessor for BloodPressureLogModel()
{
  result = qword_1CAF28;
  if (!qword_1CAF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureLogModel.dateLabel.getter()
{
  v0 = type metadata accessor for BloodPressureLogModel();
  sub_20658(*(v0 + 20));
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.dateLabel.setter()
{
  v3 = sub_12E4E4();
  result = sub_66A6C(*(v3 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.dateLabel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for BloodPressureLogModel() + 20);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.dataLabel.getter()
{
  v0 = type metadata accessor for BloodPressureLogModel();
  sub_20658(*(v0 + 24));
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.dataLabel.setter()
{
  v3 = sub_12E4E4();
  result = sub_66A6C(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.dataLabel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for BloodPressureLogModel() + 24);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.loggedLabel.getter()
{
  v0 = type metadata accessor for BloodPressureLogModel();
  sub_20658(*(v0 + 28));
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.loggedLabel.setter()
{
  v3 = sub_12E4E4();
  result = sub_66A6C(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.loggedLabel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for BloodPressureLogModel() + 28);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.snippetHeaderModel.setter()
{
  sub_12C5B0();
  v2 = type metadata accessor for BloodPressureLogModel();
  return sub_1E634(v0, v1 + *(v2 + 32), &dword_1C63F8, &qword_171800);
}

uint64_t BloodPressureLogModel.snippetHeaderModel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for BloodPressureLogModel() + 32);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.timeLabel.getter()
{
  v0 = type metadata accessor for BloodPressureLogModel();
  sub_20658(*(v0 + 36));
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.timeLabel.setter()
{
  v3 = sub_12E4E4();
  result = sub_66A6C(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.timeLabel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for BloodPressureLogModel() + 36);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.unitLabel.getter()
{
  v0 = type metadata accessor for BloodPressureLogModel();
  sub_20658(*(v0 + 40));
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.unitLabel.setter()
{
  v3 = sub_12E4E4();
  result = sub_66A6C(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.unitLabel.modify()
{
  sub_12C5B0();
  v0 = *(type metadata accessor for BloodPressureLogModel() + 40);
  return sub_205FC();
}

uint64_t sub_12CF7C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_12D200(a1, a2 & 1);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = sub_12D200(a3, a4 & 1);
  if (v10)
  {
    v11 = v9;
    v12 = v10;

    v14._countAndFlagsBits = 47;
    v14._object = 0xE100000000000000;
    sub_16E26C(v14);

    v15._countAndFlagsBits = v11;
    v15._object = v12;
    sub_16E26C(v15);

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_12D058(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    v17 = sub_16BE5C();
    sub_2068C(v17, v18);
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_12D200(uint64_t result, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = result;
  v4 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v4 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_16F530;
    *(v7 + 56) = &type metadata for Double;
    *(v7 + 64) = &protocol witness table for Double;
    *(v7 + 32) = v3;
    v2 = sub_16E1CC();

    return v2;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    return sub_16E68C();
  }

  __break(1u);
  return result;
}

uint64_t sub_12D318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_16E6BC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_12D568(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      v3 = 1702125924;
      goto LABEL_8;
    case 2:
      v3 = 1635017060;
      goto LABEL_8;
    case 3:
      return 0x614C646567676F6CLL;
    case 4:
      return 0xD000000000000012;
    case 5:
      v3 = 1701669236;
      goto LABEL_8;
    case 6:
      v3 = 1953066613;
LABEL_8:
      result = v3 | 0x6562614C00000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_12D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12D318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_12D674@<X0>(_BYTE *a1@<X8>)
{
  result = sub_7CA78();
  *a1 = result;
  return result;
}

uint64_t sub_12D69C(uint64_t a1)
{
  v2 = sub_12D968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12D6D8(uint64_t a1)
{
  v2 = sub_12D968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BloodPressureLogModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1CAEB8, &qword_177BB0);
  sub_42F0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_12D968();
  sub_16E77C();
  v19[15] = 0;
  sub_16C11C();
  sub_12E4B4();
  sub_12DF2C(v12, v13);
  sub_12E550();
  if (!v1)
  {
    v14 = type metadata accessor for BloodPressureLogModel();
    sub_12E52C(v14[5]);
    v19[14] = 1;
    sub_12E500();
    sub_12E52C(v14[6]);
    v19[13] = 2;
    sub_12E500();
    sub_12E52C(v14[7]);
    v19[12] = 3;
    sub_12E500();
    v15 = v14[8];
    v19[11] = 4;
    type metadata accessor for SnippetHeaderModel();
    sub_12E4CC();
    sub_12DF2C(v16, v17);
    sub_12E550();
    sub_12E52C(v14[9]);
    v19[10] = 5;
    sub_12E500();
    sub_12E52C(v14[10]);
    v19[9] = 6;
    sub_12E500();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_12D968()
{
  result = qword_1CAEC0;
  if (!qword_1CAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEC0);
  }

  return result;
}

uint64_t BloodPressureLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  sub_13088();
  v73 = v7;
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  sub_13088();
  v74 = v12;
  v76 = sub_2440(&qword_1CAEC8, &qword_177BB8);
  sub_42F0(v76);
  v72 = v13;
  v15 = *(v14 + 64);
  sub_433C();
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  v19 = type metadata accessor for BloodPressureLogModel();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v71 = v24;
  sub_214C(v25, v26, v27, v24);
  v28 = &v23[v20[7]];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v23[v20[8]];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v23[v20[9]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = v20[10];
  v32 = type metadata accessor for SnippetHeaderModel();
  v69 = v31;
  v70 = v32;
  sub_8AB4();
  sub_214C(v33, v34, v35, v36);
  v37 = &v23[v20[11]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = v20[12];
  v78 = v23;
  v39 = &v23[v38];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = a1;
  v41 = a1[3];
  v42 = a1[4];
  v79 = v40;
  sub_2D20(v40, v41);
  sub_12D968();
  v75 = v18;
  v43 = v77;
  sub_16E76C();
  if (!v43)
  {
    v77 = v30;
    v66 = v39;
    v67 = v37;
    v44 = v73;
    v86 = 0;
    sub_12E4B4();
    sub_12DF2C(v45, v46);
    v47 = v74;
    sub_16E5AC();
    v49 = v78;
    sub_1E634(v47, v78, &qword_1C63F0, &unk_1717F0);
    v85 = 1;
    *v28 = sub_12E538();
    v28[1] = v50;
    v84 = 2;
    *v29 = sub_12E538();
    v29[1] = v51;
    v83 = 3;
    v52 = sub_12E538();
    v53 = v77;
    *v77 = v52;
    v53[1] = v54;
    v82 = 4;
    sub_12E4CC();
    sub_12DF2C(v55, v56);
    sub_16E5AC();
    sub_1E634(v44, v49 + v69, &dword_1C63F8, &qword_171800);
    v81 = 5;
    v57 = sub_12E538();
    v58 = v67;
    *v67 = v57;
    v58[1] = v59;
    v80 = 6;
    v60 = sub_12E538();
    v62 = v61;
    v63 = sub_12E51C();
    v64(v63);
    v65 = v66;
    *v66 = v60;
    v65[1] = v62;
    sub_83DD4(v49, v68, type metadata accessor for BloodPressureLogModel);
  }

  sub_2D64(v79);
  return sub_12DE48();
}

uint64_t sub_12DE48()
{
  v1 = sub_12C5B0();
  v3 = v2(v1);
  sub_8B38(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_12DF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12DFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_369C(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_2440(&dword_1C63F8, &qword_171800);
    v8 = a1 + *(a3 + 32);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_12E0C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C63F0, &unk_1717F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = sub_2440(&dword_1C63F8, &qword_171800);
    v10 = a1 + *(a4 + 32);
  }

  return sub_214C(v10, a2, a2, v9);
}

uint64_t sub_12E1AC()
{
  sub_BBD6C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_BBD1C();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_BBD6C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v6 > 0x3F)
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

_BYTE *storeEnumTagSinglePayload for BloodPressureLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x12E374);
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

unint64_t sub_12E3B0()
{
  result = qword_1CAF78;
  if (!qword_1CAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAF78);
  }

  return result;
}

unint64_t sub_12E408()
{
  result = qword_1CAF80;
  if (!qword_1CAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAF80);
  }

  return result;
}

unint64_t sub_12E460()
{
  result = qword_1CAF88;
  if (!qword_1CAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAF88);
  }

  return result;
}

uint64_t sub_12E4E4()
{

  return type metadata accessor for BloodPressureLogModel();
}

uint64_t sub_12E500()
{

  return sub_16E61C();
}

uint64_t sub_12E51C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_12E52C@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_12E538()
{
  v2 = *(v0 - 112);

  return sub_16E58C();
}

uint64_t sub_12E550()
{

  return sub_16E63C();
}

uint64_t sub_12E578(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 313))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_12E5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_12E65C()
{
  sub_92990();

  return sub_16C33C();
}

uint64_t sub_12E6B0()
{
  sub_8A88();
  v1[104] = v0;
  v1[103] = v2;
  v3 = type metadata accessor for UnavailableDataFlow();
  v1[105] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[106] = sub_8BC0();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[107] = sub_8C38();
  v1[108] = swift_task_alloc();
  v9 = sub_16D63C();
  sub_4348(v9);
  v11 = *(v10 + 64);
  v1[109] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[110] = v12;
  sub_888C(v12);
  v1[111] = v13;
  v15 = *(v14 + 64);
  v1[112] = sub_8C38();
  v1[113] = swift_task_alloc();
  v16 = sub_16BD9C();
  v1[114] = v16;
  sub_888C(v16);
  v1[115] = v17;
  v19 = *(v18 + 64);
  v1[116] = sub_8BC0();
  v20 = sub_16BF5C();
  v1[117] = v20;
  sub_888C(v20);
  v1[118] = v21;
  v23 = *(v22 + 64);
  v1[119] = sub_8C38();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v24 = sub_17960();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_12E8B4()
{
  v1 = *(v0 + 832);
  *(v0 + 1072) = *(v1 + 248);
  sub_16D78C();
  v2 = sub_12F788();
  *(v0 + 1000) = v2;
  v3 = *(v1 + 72);
  sub_2D20((v1 + 40), *(v1 + 64));
  v4 = *(v3 + 8);
  v5 = sub_387CC();
  v6(v5);
  v7 = *(v0 + 760);
  sub_2D20((v0 + 728), *(v0 + 752));
  sub_387CC();
  LOBYTE(v1) = sub_16C41C();
  sub_2D64((v0 + 728));
  if ((v1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [v2 startDate];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = *(v0 + 992);
  sub_16BF3C();

  v11 = [v2 endDate];
  if (!v11)
  {
    (*(*(v0 + 944) + 8))(*(v0 + 992), *(v0 + 936));
    goto LABEL_7;
  }

  v12 = *(v0 + 984);
  v13 = *(v0 + 976);
  v54 = *(v0 + 968);
  v14 = *(v0 + 944);
  v15 = *(v0 + 936);
  v16 = *(v0 + 928);
  v17 = *(v0 + 920);
  v55 = *(v0 + 912);
  v53 = *(v0 + 992);
  sub_16BF3C();

  v18 = *(v14 + 16);
  v18(v13, v53, v15);
  v18(v54, v12, v15);
  sub_16BD5C();
  LOBYTE(v13) = sub_16DADC();
  (*(v17 + 8))(v16, v55);
  if (v13)
  {
    v19 = *(v0 + 992);
    v20 = *(v0 + 936);
    v21 = *(*(v0 + 944) + 8);
    v21(*(v0 + 984), v20);
    v21(v19, v20);
LABEL_7:
    v22 = *(v0 + 904);
    v23 = *(v0 + 888);
    v24 = *(v0 + 880);
    v25 = sub_16DBBC();
    *(v0 + 1008) = v25;
    sub_8B48();
    v26 = *(v23 + 16);
    *(v0 + 1016) = v26;
    *(v0 + 1024) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v22, v25, v24);
    v27 = v2;
    v28 = sub_16DBDC();
    LOBYTE(v24) = sub_16E36C();

    if (os_log_type_enabled(v28, v24))
    {
      v29 = sub_8BD8();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v27;
      v31 = v27;
      sub_13582C();
      _os_log_impl(v32, v33, v34, v35, v29, 0xCu);
      sub_8748(v30, &qword_1C57B8, &qword_1715A0);
      sub_8A2C();
      sub_8A2C();
    }

    v36 = *(v0 + 904);
    v37 = *(v0 + 888);
    v38 = *(v0 + 880);
    v39 = *(v0 + 832);

    *(v0 + 1032) = *(v37 + 8);
    *(v0 + 1040) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = sub_4B4EC();
    v41(v40);
    v42 = *(v39 + 240);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 816;
    *(v0 + 24) = sub_12EE08;
    v43 = swift_continuation_init();
    *(v0 + 720) = sub_2440(&qword_1CAF90, &qword_177EC8);
    *(v0 + 696) = v43;
    *(v0 + 664) = _NSConcreteStackBlock;
    *(v0 + 672) = 1107296256;
    *(v0 + 680) = sub_53C4;
    *(v0 + 688) = &unk_1BCE80;
    [v42 handleGetBloodPressure:v27 completion:v0 + 664];

    return _swift_continuation_await(v0 + 16);
  }

  v44 = *(v0 + 992);
  v45 = *(v0 + 984);
  v46 = *(v0 + 944);
  v47 = *(v0 + 936);
  v48 = *(v0 + 824);
  sub_16D6FC();
  sub_BC848((v0 + 504));
  sub_BC9FC();
  sub_16C4EC();

  sub_D45A0(v0 + 504);
  v49 = *(v46 + 8);
  v50 = sub_387CC();
  v49(v50);
  (v49)(v44, v47);
  sub_126154();
  v56 = *(v0 + 848);

  sub_C9BC();

  return v51();
}

uint64_t sub_12EE08()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_12EED8()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 896);
  v5 = *(v0 + 880);
  v6 = *(v0 + 816);
  *(v0 + 1048) = v6;
  sub_8B48();
  (v2)(v4, v3, v5);
  v7 = v6;
  v8 = sub_16DBDC();
  LOBYTE(v4) = sub_16E36C();

  if (os_log_type_enabled(v8, v4))
  {
    v9 = sub_8BD8();
    v2 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v7;
    *v2 = v7;
    v10 = v7;
    sub_13582C();
    _os_log_impl(v11, v12, v13, v14, v9, 0xCu);
    sub_8748(v2, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_8A2C();
  }

  v15 = *(v0 + 1040);
  v16 = (*(v0 + 1032))(*(v0 + 896), *(v0 + 880));
  v17 = (*(&stru_20.maxprot + (swift_isaMask & *v7)))(v16);
  if (v17 != 4)
  {
    if (v17 == 102)
    {
      v28 = *(v0 + 1000);
      v29 = *(v0 + 912);
      v30 = *(v0 + 864);
      v31 = *(v0 + 1072);
      sub_16D6FC();
      sub_8AB4();
      sub_214C(v32, v33, v34, v29);
      v35 = [v28 startDate];
      if (v35)
      {
        v36 = v35;
        v37 = *(v0 + 1000);
        v38 = *(v0 + 960);
        sub_16BF3C();

        v39 = [v37 endDate];
        if (v39)
        {
          v40 = v39;
          v41 = *(v0 + 976);
          v42 = *(v0 + 968);
          v43 = *(v0 + 960);
          v44 = *(v0 + 952);
          v45 = *(v0 + 944);
          v46 = *(v0 + 936);
          v75 = *(v0 + 864);
          v76 = *(v0 + 912);
          v74 = *(v0 + 856);
          sub_16BF3C();

          v47 = *(v45 + 16);
          v47(v41, v43, v46);
          v47(v42, v44, v46);
          sub_4B4EC();
          sub_16BD5C();
          v48 = *(v45 + 8);
          v48(v44, v46);
          v48(v43, v46);
          v2 = &dword_16F320;
          sub_8748(v75, &qword_1C5690, &dword_16F320);
          sub_388E4();
          sub_214C(v49, v50, v51, v76);
          sub_86FC(v74, v75, &qword_1C5690, &dword_16F320);
        }

        else
        {
          (*(*(v0 + 944) + 8))(*(v0 + 960), *(v0 + 936));
        }
      }

      v77 = *(v0 + 1000);
      v60 = *(v0 + 872);
      v61 = *(v0 + 864);
      v62 = *(v0 + 848);
      v63 = *(v0 + 840);
      v64 = *(v0 + 832);
      v65 = *(v0 + 824);
      v66 = *(v64 + 312);
      sub_86B0(v61, &v62[v63[5]], &qword_1C5690, &dword_16F320);
      sub_8388(v64 + 40, &v62[v63[6]]);
      sub_8284(v64 + 80, &v62[v63[7]]);
      v67 = sub_16C58C();
      sub_38964(v67);
      v68 = sub_16C57C();
      v69 = &v62[v63[8]];
      v69[3] = v2;
      v69[4] = &protocol witness table for ResponseFactory;
      *v69 = v68;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v70 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v71 = sub_16D58C();
      *v62 = v66;
      *&v62[v63[9]] = v70;
      *&v62[v63[10]] = v71;
      sub_1352B8(&qword_1C57C8, type metadata accessor for UnavailableDataFlow);
      sub_16C4EC();

      sub_8748(v61, &qword_1C5690, &dword_16F320);
      sub_135260(v62, type metadata accessor for UnavailableDataFlow);
    }

    else if (v17 == 101)
    {
      v18 = *(v0 + 1000);
      v19 = *(v0 + 872);
      v20 = *(v0 + 832);
      v21 = *(v0 + 824);
      v22 = *(v0 + 1072);
      sub_16D76C();
      v23 = *(v20 + 312);
      sub_8388(v20 + 40, v0 + 88);
      sub_8284(v20 + 80, v0 + 128);
      v24 = sub_16C58C();
      sub_38964(v24);
      v25 = sub_16C57C();
      *(v0 + 312) = v2;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v25;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v26 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v27 = sub_16D58C();
      *(v0 + 80) = v23;
      *(v0 + 328) = v26;
      *(v0 + 336) = v27;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v56 = *(v0 + 1000);
      v57 = *(v0 + 832);
      v58 = *(v0 + 824);
      v59 = *(v0 + 1072);
      sub_16D6FC();
      sub_8284(v57 + 80, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    sub_126154();
    v78 = *(v0 + 848);

    sub_C9BC();
    sub_841E0();

    __asm { BRAA            X1, X16 }
  }

  v52 = swift_task_alloc();
  *(v0 + 1056) = v52;
  *v52 = v0;
  v52[1] = sub_12F58C;
  v53 = *(v0 + 832);
  sub_C98D8(*(v0 + 1000));
  sub_841E0();

  return sub_12FD90();
}

uint64_t sub_12F58C()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 1056);
  *v2 = *v0;
  *(v1 + 1064) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

void sub_12F678()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 824);
  v5 = *(v0 + 1072);
  sub_16D72C();
  sub_16C4FC();

  sub_126154();
  v8 = *(v0 + 848);

  sub_C9BC();
  sub_841E0();

  __asm { BRAA            X1, X16 }
}

id sub_12F788()
{
  v1 = sub_16C0BC();
  v2 = sub_42F0(v1);
  v76 = v3;
  v77 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v75 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440(&qword_1C57E0, &unk_171C60);
  v8 = sub_4348(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_38634();
  v84 = v11;
  __chkstk_darwin(v12);
  v80 = &v75 - v13;
  v14 = sub_16BF5C();
  v15 = sub_42F0(v14);
  v79 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_38634();
  v83 = v19;
  v21 = __chkstk_darwin(v20);
  v23 = &v75 - v22;
  __chkstk_darwin(v21);
  v25 = &v75 - v24;
  v26 = sub_2440(&qword_1C5690, &dword_16F320);
  v27 = sub_4348(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_38634();
  v81 = v30;
  v32 = __chkstk_darwin(v31);
  v34 = &v75 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v75 - v36;
  __chkstk_darwin(v35);
  v39 = &v75 - v38;
  v82 = [objc_allocWithZone(sub_16D95C()) init];
  v41 = *(v0 + 24);
  v40 = *(v0 + 32);
  sub_2D20(v0, v41);
  v42 = v41;
  v43 = v39;
  (*(v40 + 32))(v42, v40);
  sub_125AB4(v37, *(v0 + 312), v39);
  sub_8748(v37, &qword_1C5690, &dword_16F320);
  sub_86B0(v39, v34, &qword_1C5690, &dword_16F320);
  v44 = sub_16BD9C();
  v45 = sub_369C(v34, 1, v44);
  v78 = v23;
  if (v45 == 1)
  {
    sub_8748(v34, &qword_1C5690, &dword_16F320);
    v46 = v80;
    sub_8AB4();
    sub_214C(v47, v48, v49, v14);
    sub_16BF4C();
    v50 = v75;
    sub_16C08C();
    sub_16C02C();
    (*(v76 + 8))(v50, v77);
    v51 = v79;
    (*(v79 + 8))(v23, v14);
    if (sub_369C(v46, 1, v14) != 1)
    {
      sub_8748(v46, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    v52 = v80;
    sub_16BD7C();
    (*(*(v44 - 8) + 8))(v34, v44);
    sub_388E4();
    sub_214C(v53, v54, v55, v14);
    v51 = v79;
    (*(v79 + 32))(v25, v52, v14);
  }

  isa = sub_16BEEC().super.isa;
  v57 = *(v51 + 8);
  v58 = sub_4B4A4();
  v57(v58);
  v59 = v82;
  [v82 setStartDate:isa];

  v60 = v81;
  sub_86B0(v43, v81, &qword_1C5690, &dword_16F320);
  v61 = sub_A76DC();
  v63 = sub_369C(v61, v62, v44);
  v64 = v84;
  if (v63 == 1)
  {
    sub_8748(v60, &qword_1C5690, &dword_16F320);
    sub_8AB4();
    sub_214C(v65, v66, v67, v14);
    sub_16BF4C();
    v68 = v83;
    sub_7B6B8(v83);
    v69 = sub_C9C8();
    v57(v69);
    if (sub_369C(v64, 1, v14) != 1)
    {
      sub_8748(v64, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    sub_16BD4C();
    (*(*(v44 - 8) + 8))(v60, v44);
    sub_388E4();
    sub_214C(v70, v71, v72, v14);
    v68 = v83;
    (*(v51 + 32))(v83, v64, v14);
  }

  v73 = sub_16BEEC().super.isa;
  (v57)(v68, v14);
  [v59 setEndDate:v73];

  sub_8748(v43, &qword_1C5690, &dword_16F320);
  return v59;
}

uint64_t sub_12FD90()
{
  sub_8A88();
  v1[46] = v2;
  v1[47] = v0;
  v1[45] = v3;
  v4 = sub_16C46C();
  v1[48] = v4;
  sub_888C(v4);
  v1[49] = v5;
  v7 = *(v6 + 64);
  v1[50] = sub_8C38();
  v1[51] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[52] = v8;
  sub_888C(v8);
  v1[53] = v9;
  v11 = *(v10 + 64);
  v1[54] = sub_8BC0();
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v12);
  v14 = *(v13 + 64);
  v1[55] = sub_8BC0();
  v15 = sub_16DBEC();
  v1[56] = v15;
  sub_888C(v15);
  v1[57] = v16;
  v18 = *(v17 + 64);
  v1[58] = sub_8C38();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v19 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v19);
  v21 = *(v20 + 64);
  v1[61] = sub_8C38();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v22 = sub_16BF5C();
  v1[65] = v22;
  sub_888C(v22);
  v1[66] = v23;
  v25 = *(v24 + 64);
  v1[67] = sub_8C38();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v26 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v26);
  v28 = *(v27 + 64);
  v1[71] = sub_8C38();
  v1[72] = swift_task_alloc();
  v29 = sub_17960();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_130018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_5E1BC();
  a27 = v29;
  a28 = v30;
  sub_5DC5C();
  a26 = v28;
  v31 = *(v28 + 576);
  v153 = (v28 + 360);
  v32 = *(v28 + 360);
  v33 = sub_16BD9C();
  sub_8AB4();
  sub_214C(v34, v35, v36, v33);
  v37 = &off_1C4000;
  v38 = [v32 startDate];
  v39 = &off_1C4000;
  if (v38)
  {
    v40 = v38;
    v41 = *(v28 + 560);
    v42 = *(v28 + 360);
    sub_16BF3C();

    v43 = [v42 endDate];
    if (v43)
    {
      v44 = v43;
      v152 = *(v28 + 576);
      v45 = *(v28 + 568);
      v46 = *(v28 + 560);
      v155 = v33;
      v47 = *(v28 + 552);
      v48 = *(v28 + 544);
      v49 = *(v28 + 536);
      v50 = *(v28 + 528);
      v51 = *(v28 + 520);
      sub_16BF3C();

      v52 = *(v50 + 16);
      v52(v48, v46, v51);
      v52(v49, v47, v51);
      sub_16BD5C();
      v53 = *(v50 + 8);
      v53(v47, v51);
      v53(v46, v51);
      v37 = &off_1C4000;
      sub_8748(v152, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v54, v55, v56, v155);
      v39 = &off_1C4000;
      sub_86FC(v45, v152, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v28 + 528) + 8))(*(v28 + 560), *(v28 + 520));
    }
  }

  v57 = [*v153 v37[458]];
  if (v57)
  {
    v58 = v57;
    v59 = *(v28 + 512);
    sub_16BF3C();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = *(v28 + 360);
  v62 = 1;
  sub_214C(*(v28 + 512), v60, 1, *(v28 + 520));
  v63 = [v61 v39[459]];
  if (v63)
  {
    v64 = v63;
    v65 = *(v28 + 504);
    sub_16BF3C();

    v62 = 0;
  }

  v66 = *(v28 + 368);
  v67 = 1;
  sub_214C(*(v28 + 504), v62, 1, *(v28 + 520));
  v68 = [v66 sampleStartDate];
  if (v68)
  {
    v69 = v68;
    v70 = *(v28 + 496);
    sub_16BF3C();

    v67 = 0;
  }

  v71 = *(v28 + 368);
  v72 = 1;
  sub_214C(*(v28 + 496), v67, 1, *(v28 + 520));
  v73 = [v71 sampleEndDate];
  if (v73)
  {
    v74 = v73;
    v75 = *(v28 + 488);
    sub_16BF3C();

    v72 = 0;
  }

  v77 = *(v28 + 504);
  v76 = *(v28 + 512);
  v78 = *(v28 + 496);
  v79 = *(v28 + 480);
  v80 = *(v28 + 448);
  v81 = *(v28 + 456);
  sub_214C(*(v28 + 488), v72, 1, *(v28 + 520));
  type metadata accessor for WellnessTime(0);
  sub_1356E8();
  sub_15BF80();
  v83 = v82;
  *(v28 + 584) = v82;
  v84 = sub_16DBBC();
  sub_8B48();
  v151 = *(v81 + 16);
  v151(v79, v84, v80);

  v85 = sub_16DBDC();
  v86 = sub_16E36C();

  v87 = os_log_type_enabled(v85, v86);
  v88 = *(v28 + 480);
  v90 = *(v28 + 448);
  v89 = *(v28 + 456);
  v156 = v83;
  if (v87)
  {
    v91 = sub_8BD8();
    v92 = swift_slowAlloc();
    a17 = v92;
    *v91 = 136315138;
    *(v28 + 352) = v83;

    v93 = sub_16E1EC();
    v95 = sub_3AB7C(v93, v94, &a17);

    *(v91 + 4) = v95;
    _os_log_impl(&def_259DC, v85, v86, "Constructed wellness Time:  %s", v91, 0xCu);
    sub_2D64(v92);
    sub_8A2C();
    sub_8A2C();
  }

  v96 = *(v89 + 8);
  v97 = sub_387CC();
  v96(v97);
  sub_12093C(*(*(v28 + 376) + 312), *(v28 + 576), *(v28 + 440));
  *(v28 + 200) = &type metadata for WellnessFeatureFlagsKey;
  *(v28 + 208) = sub_3736C();
  *(v28 + 176) = 4;
  v98 = sub_16C86C();
  sub_2D64((v28 + 176));
  if (v98)
  {
    v99 = swift_task_alloc();
    *(v28 + 592) = v99;
    *v99 = v28;
    v99[1] = sub_130810;
    v100 = *(v28 + 440);
    v101 = *(v28 + 368);
    v102 = *(v28 + 376);
    sub_C98D8(*(v28 + 360));
    sub_5E1A0();

    return sub_13120C(v103, v104, v105, v106);
  }

  else if (sub_15EE1C() < 3u || (sub_15C380() & 1) != 0)
  {
    v109 = *(v28 + 472);
    v110 = *(v28 + 448);
    sub_13565C();
    v111 = sub_6B5B8();
    (v151)(v111);
    v112 = sub_16DBDC();
    v113 = sub_16E36C();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = sub_1BA38();
      *v114 = 0;
      sub_13582C();
      _os_log_impl(v115, v116, v117, v118, v114, 2u);
      sub_8A2C();
    }

    v119 = *(v28 + 472);
    v120 = *(v28 + 448);
    v121 = *(v28 + 440);
    v122 = *(v28 + 376);
    v123 = *(v28 + 456) + 8;
    v154 = *v153;

    (v96)(v119, v120);
    v124 = sub_2D20((v122 + 200), *(v122 + 224));
    v125 = swift_task_alloc();
    *(v28 + 608) = v125;
    v125[1].i64[0] = v122;
    v125[1].i64[1] = v156;
    v125[2] = vextq_s8(v154, v154, 8uLL);
    v125[3].i64[0] = v121;
    v126 = *v124;
    v127 = swift_task_alloc();
    *(v28 + 616) = v127;
    *v127 = v28;
    v127[1] = sub_130A54;
    sub_5E1A0();

    return sub_6FAA4();
  }

  else
  {
    v129 = *(v28 + 464);
    v130 = *(v28 + 448);
    sub_13565C();
    v131 = sub_6B5B8();
    (v151)(v131);
    v132 = sub_16DBDC();
    v133 = sub_16E36C();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = sub_1BA38();
      *v134 = 0;
      sub_13582C();
      _os_log_impl(v135, v136, v137, v138, v134, 2u);
      sub_8A2C();
    }

    v140 = *(v28 + 456);
    v139 = *(v28 + 464);
    v142 = *(v28 + 440);
    v141 = *(v28 + 448);
    v144 = *(v28 + 368);
    v143 = *(v28 + 376);
    v145 = *(v28 + 360);

    (v96)(v139, v141);
    v146 = sub_2D20((v143 + 200), *(v143 + 224));
    v147 = swift_task_alloc();
    *(v28 + 624) = v147;
    v147[2] = v156;
    v147[3] = v144;
    v147[4] = v143;
    v147[5] = v145;
    v147[6] = v142;
    v148 = *v146;
    v149 = swift_task_alloc();
    *(v28 + 632) = v149;
    *v149 = v28;
    v149[1] = sub_130EE0;
    sub_5E1A0();

    return sub_6FE54();
  }
}

uint64_t sub_130810()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 592);
  *v2 = *v0;
  *(v1 + 600) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1308FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v22 = v20[73];
  v23 = v20[72];
  v20[43] = v20[75];
  sub_16C28C();
  v37 = sub_16C32C();

  sub_8748(v23, &qword_1C5690, &dword_16F320);
  sub_1354C4();
  v35 = v25;
  v36 = v24;
  sub_8748(v21, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, v35, v36, v37, a18, a19, a20);
}

uint64_t sub_130A54()
{
  v2 = *v1;
  sub_8A60();
  *v4 = v3;
  v3[36] = v1;
  v3[37] = v5;
  v3[38] = v0;
  sub_38A38();
  v7 = *(v6 + 616);
  v8 = *v1;
  sub_C990();
  *v9 = v8;

  sub_38A38();
  v11 = *(v10 + 608);
  if (v0)
  {
  }

  else
  {
    v12 = *(v10 + 608);
  }

  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_130B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v27 = sub_13569C(*(v22 + 296));
  sub_16C43C();
  v28 = sub_135784();
  v29(v28);
  sub_1355F4();
  (*(v23 + 8))(v20, v25);
  v30 = [v27 patternId];
  sub_16E1BC();

  sub_16C76C();
  *(v22 + 336) = sub_135740();
  sub_16C28C();
  v43 = sub_16C32C();

  (*(v26 + 8))(v21, a15);
  sub_8748(a17, &qword_1C5690, &dword_16F320);

  sub_1354C4();
  v42 = v31;
  v44 = v32;
  sub_8748(v24, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, v42, v43, v44, a18, a19, a20);
}

uint64_t sub_130D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v22 = v20[73];
  v23 = v20[72];
  sub_8284(v20[47] + 80, (v20 + 2));
  sub_82E0();
  v37 = sub_16C32C();

  sub_8334((v20 + 2));
  sub_8748(v23, &qword_1C5690, &dword_16F320);
  sub_1354C4();
  v35 = v25;
  v36 = v24;
  sub_8748(v21, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, v35, v36, v37, a18, a19, a20);
}

uint64_t sub_130EE0()
{
  v2 = *v1;
  sub_8A60();
  *v4 = v3;
  v3[39] = v1;
  v3[40] = v5;
  v3[41] = v0;
  sub_38A38();
  v7 = *(v6 + 632);
  v8 = *v1;
  sub_C990();
  *v9 = v8;

  sub_38A38();
  v11 = *(v10 + 624);
  if (v0)
  {
  }

  else
  {
    v12 = *(v10 + 624);
  }

  sub_8ACC();

  return _swift_task_switch(v13, v14, v15);
}