uint64_t sub_98464(uint64_t a1)
{
  v2 = type metadata accessor for AggregateCommonForecast();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_984C0(uint64_t a1, uint64_t a2, int a3)
{
  v16 = a3;
  v15[1] = a2;
  v4 = sub_A2EA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DAAA0 != -1)
  {
    swift_once();
  }

  v9 = sub_A43D4();
  sub_48A4(v9, qword_E0008);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_A4B54(24);

  v18 = 0xD000000000000016;
  v19 = 0x80000000000B4EE0;
  sub_990F4(&qword_DC9E8, &type metadata accessor for Date);
  v20._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v20);

  sub_810AC(v18, v19, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000019, 0x80000000000B4F00);

  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_67C20(v8);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_A4B54(17);

  v18 = 0x57746867694E7369;
  v19 = 0xEF203A776F646E69;
  if (v10 == 1)
  {
    v11._countAndFlagsBits = 1702195828;
  }

  else
  {
    v11._countAndFlagsBits = 0x65736C6166;
  }

  if (v10 == 1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v11._object = v12;
  sub_A46D4(v11);

  sub_810AC(v18, v19, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000019, 0x80000000000B4F00);

  type metadata accessor for WeatherFilteredConditionsProvider();
  sub_93F24();
  v13 = sub_94350();

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_A4B54(34);

  v18 = 0xD00000000000001FLL;
  v19 = 0x80000000000B4F20;
  v17 = sub_1BF68(v13);
  v21._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v21);

  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  sub_A46D4(v22);
  sub_810AC(v18, v19, 0xD00000000000002CLL, 0x80000000000B4D80, 0xD000000000000019, 0x80000000000B4F00);

  return v13;
}

void (*sub_9885C(uint64_t a1, uint64_t a2, uint64_t a3))(id *)
{
  v7 = sub_991CC(a1, a2, a3);
  sub_1BF6C(v7);
  v8 = sub_991B8();
  sub_1BF70(v8, v9, v10);
  if (v6)
  {
    v11 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v11 = sub_A4B74();
  }

  *v3 = v11;
  return sub_99194;
}

uint64_t (*sub_988D0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v7 = sub_991CC(a1, a2, a3);
  sub_1BF6C(v7);
  v8 = sub_991B8();
  sub_1BF70(v8, v9, v10);
  if (v6)
  {
    v11 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v12 = sub_A4B74();
  }

  *v3 = v12;
  return sub_98944;
}

uint64_t sub_9894C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_E0030, &qword_AC360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_989BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_7A14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_98A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_98A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_98AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4BF0(a3, a4);
  sub_7A14(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

void (*sub_98B04(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = sub_991CC(a1, a2, a3);
  sub_1BF6C(v7);
  v8 = sub_991B8();
  sub_1BF70(v8, v9, v10);
  if (v6)
  {
    v11 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v11 = sub_A4B74();
  }

  *v3 = v11;
  return sub_98B78;
}

uint64_t sub_98BA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_A30F4();
  v7 = sub_11F80(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_4BF0(&qword_DE070, &qword_A9A30);
    v12 = sub_11F80(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_4BF0(&qword_DE088, qword_A9A40);
      v16 = sub_11F80(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = sub_4BF0(&qword_E0030, &qword_AC360);
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return sub_CF2C(v10, a2, v9);
}

uint64_t sub_98CF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_A30F4();
  v9 = sub_11F80(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_4BF0(&qword_DE070, &qword_A9A30);
    v14 = sub_11F80(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_4BF0(&qword_DE088, qword_A9A40);
      v18 = sub_11F80(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = sub_4BF0(&qword_E0030, &qword_AC360);
        v16 = a4[7];
      }
    }

    v12 = a1 + v16;
  }

  return sub_A924(v12, a2, a2, v11);
}

void sub_98E38()
{
  sub_A30F4();
  if (v0 <= 0x3F)
  {
    sub_98EEC();
    if (v1 <= 0x3F)
    {
      sub_98FF0();
      if (v2 <= 0x3F)
      {
        sub_9913C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_98EEC()
{
  if (!qword_E00C0)
  {
    sub_A30B4();
    sub_990F4(&qword_E00C8, &type metadata accessor for HourWeather);
    sub_990F4(&qword_E00D0, &type metadata accessor for HourWeather);
    sub_990F4(&qword_E00D8, &type metadata accessor for HourWeather);
    v0 = sub_A3244();
    if (!v1)
    {
      atomic_store(v0, &qword_E00C0);
    }
  }
}

void sub_98FF0()
{
  if (!qword_E00E0)
  {
    sub_A3074();
    sub_990F4(&qword_E00E8, &type metadata accessor for DayWeather);
    sub_990F4(&qword_E00F0, &type metadata accessor for DayWeather);
    sub_990F4(&qword_E00F8, &type metadata accessor for DayWeather);
    v0 = sub_A3244();
    if (!v1)
    {
      atomic_store(v0, &qword_E00E0);
    }
  }
}

uint64_t sub_990F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_9913C()
{
  if (!qword_E0100)
  {
    sub_A31D4();
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_E0100);
    }
  }
}

uint64_t sub_99198()
{

  return swift_once();
}

uint64_t sub_99200()
{
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
}

void sub_99230(uint64_t a1@<X8>)
{

  sub_810AC(v3 + 1, a1 | 0x8000000000000000, v3 + 13, v1 | 0x8000000000000000, 0xD00000000000001FLL, (v2 - 32) | 0x8000000000000000);
}

uint64_t type metadata accessor for DailyBriefingGreetingCATsSimple()
{
  result = qword_E0138;
  if (!qword_E0138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_99300(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_99354(a1, a2);
}

uint64_t sub_99354(uint64_t a1, uint64_t a2)
{
  v5 = sub_A4354();
  v6 = sub_2C1C8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_4BF0(&qword_DC748, &qword_A8330);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_2C0F0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_A42F4();
  (*(v8 + 8))(a2, v2);
  sub_2C160(a1);
  return v16;
}

uint64_t sub_994B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_A4354();
  v6 = sub_2C1C8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_A4304();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t type metadata accessor for DailyBriefingGreetingCATs()
{
  result = qword_E0188;
  if (!qword_E0188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_99644(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 73) = a4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  v6 = *(*(sub_4BF0(&qword_DF4B0, &qword_AC5F0) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_996EC, 0, 0);
}

uint64_t sub_996EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_A6E60;
  *(v3 + 32) = 0x6573616850796164;
  *(v3 + 40) = 0xE800000000000000;
  sub_B8BC(v2, v1, &qword_DF4B0, &qword_AC5F0);
  v4 = sub_A42E4();
  v5 = sub_CF2C(v1, 1, v4);
  v6 = *(v0 + 40);
  if (v5 == 1)
  {
    sub_AD70(*(v0 + 40), &qword_DF4B0, &qword_AC5F0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_76B0((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = *(v0 + 73);
  v9 = *(v0 + 72);
  *(v3 + 80) = 0xD000000000000011;
  *(v3 + 88) = 0x80000000000B5030;
  *(v3 + 96) = v9;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 128) = 0xD000000000000014;
  *(v3 + 136) = 0x80000000000ADB40;
  *(v3 + 168) = &type metadata for Bool;
  *(v3 + 144) = v8;
  v10 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v15 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_99908;
  v12 = *(v0 + 32);
  v13 = *(v0 + 16);

  return v15(v13, 0xD00000000000001ELL, 0x80000000000B5010, v3);
}

uint64_t sub_99908()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_99A50, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_99A50()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_99ABC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_99B10(a1, a2);
}

uint64_t sub_99B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_A4354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4BF0(&qword_DC748, &qword_A8330);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_B8BC(a1, &v14 - v11, &qword_DC748, &qword_A8330);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_A4274();
  (*(v5 + 8))(a2, v4);
  sub_AD70(a1, &qword_DC748, &qword_A8330);
  return v12;
}

uint64_t sub_99CA4(uint64_t a1)
{
  v2 = sub_A3004();
  v3 = sub_591C(v2);
  v103 = v4;
  v104 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_AA54();
  v107 = (v8 - v7);
  v9 = sub_A2D04();
  v10 = sub_591C(v9);
  v105 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_AA54();
  v106 = v15 - v14;
  v16 = sub_4BF0(&qword_DD220, qword_A9B20);
  sub_10A88(v16);
  v18 = *(v17 + 64);
  sub_11FC0();
  __chkstk_darwin(v19);
  v21 = v97 - v20;
  v22 = sub_A2EA4();
  v23 = sub_591C(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v23);
  v30 = v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v97 - v31;
  v33 = sub_A43D4();
  v34 = sub_591C(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_AA54();
  v41 = v40 - v39;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v42 = sub_48A4(v33, qword_E0BA0);
  (*(v36 + 16))(v41, v42, v33);
  if (!*(a1 + 48) || (*a1 & 1) == 0)
  {
    goto LABEL_27;
  }

  v101 = v32;
  v99 = v9;
  v43 = objc_allocWithZone(NSUserDefaults);
  v44 = sub_9BAC8(0xD00000000000001BLL, 0x80000000000B50B0);
  v45 = v44;
  v102 = v22;
  if (!v44)
  {
    v110 = 0u;
    v111 = 0u;
LABEL_17:
    v78 = &unk_DB870;
    v79 = &qword_A5CB0;
    v80 = &v110;
LABEL_18:
    sub_794C8(v80, v78, v79);
    goto LABEL_19;
  }

  *&v100 = v44;
  v46 = v44;
  v97[1] = "shouldIncludeAttribution(_:)";
  v22 = sub_A45C4();
  v47 = [v46 objectForKey:v22];
  v98 = v46;

  if (v47)
  {
    sub_A4AB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110 = v108;
  v111 = v109;
  v48 = v101;
  v45 = v100;
  if (!*(&v109 + 1))
  {
    goto LABEL_17;
  }

  sub_4BF0(&qword_DB600, qword_A6838);
  v22 = type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    sub_9BDD4(0xD000000000000027, 0x80000000000B50D0, 0xD00000000000002FLL);
    sub_4BF0(&qword_E0328, &qword_AC608);
    v81 = (sub_4BF0(&qword_E0330, &unk_AC610) - 8);
    v82 = *(*v81 + 72);
    v83 = *(*v81 + 80);
    v84 = sub_9BD80();
    *(v84 + 16) = xmmword_A6E70;
    v85 = &v22[v84];
    v86 = v81[14];
    *v85 = 0x6D617473656D6974;
    *(v85 + 1) = 0xE900000000000070;
    sub_A2E94();
    sub_A4544();
    if (!v45)
    {
      v92 = sub_9BDA0();
      v93(v92);

      return 1;
    }

    v87 = v45;
    isa = sub_A4504().super.isa;

    v89 = sub_A45C4();
    [v87 setValue:isa forKey:v89];

LABEL_21:
    v90 = sub_9BDA0();
    v91(v90);
    return 1;
  }

  sub_9C7E4(0x6D617473656D6974, 0xE900000000000070, v108, &v110);

  if (!*(&v111 + 1))
  {
    sub_794C8(&v110, &unk_DB870, &qword_A5CB0);
    sub_A924(v21, 1, 1, v102);
    goto LABEL_25;
  }

  v49 = v102;
  v50 = swift_dynamicCast();
  sub_A924(v21, v50 ^ 1u, 1, v49);
  if (sub_CF2C(v21, 1, v49) == 1)
  {
LABEL_25:
    v78 = &qword_DD220;
    v79 = qword_A9B20;
    v80 = v21;
    goto LABEL_18;
  }

  (*(v25 + 32))(v48, v21, v49);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v51 = sub_A2FE4();
  sub_591C(v51);
  v53 = v52;
  v55 = *(v54 + 72);
  v56 = *(v52 + 80);
  v57 = sub_9BD80();
  v100 = xmmword_A6E70;
  *(v57 + 16) = xmmword_A6E70;
  v58 = v102;
  (*(v53 + 104))(&type metadata for Any[v57], enum case for Calendar.Component.day(_:), v51);
  sub_608AC(v57);
  sub_A2E94();
  v60 = v106;
  v59 = v107;
  sub_A2F64();

  v62 = *(v25 + 8);
  v61 = v25 + 8;
  v63 = v30;
  v64 = v62;
  v62(v63, v58);
  (*(v103 + 8))(v59, v104);
  v65 = sub_A2C64();
  if ((v66 & 1) == 0)
  {
    v67 = v65;
    if (v65 >= 15)
    {
      sub_4BF0(&qword_E0328, &qword_AC608);
      v68 = (sub_4BF0(&qword_E0330, &unk_AC610) - 8);
      v69 = *(*v68 + 72);
      v70 = *(*v68 + 80);
      v107 = v64;
      v71 = v58;
      v72 = sub_9BD80();
      *(v72 + 16) = v100;
      v73 = (v72 + v58);
      v104 = v61;
      v74 = v68[14];
      *v73 = 0x6D617473656D6974;
      v73[1] = 0xE900000000000070;
      v75 = v98;
      sub_A2E94();
      sub_A4544();
      v76 = sub_A4504().super.isa;

      v77 = sub_A45C4();
      [v75 setValue:v76 forKey:v77];

      *&v110 = 0;
      *(&v110 + 1) = 0xE000000000000000;
      sub_A4B54(36);

      *&v110 = 0xD000000000000022;
      *(&v110 + 1) = 0x80000000000B51A0;
      *&v108 = v67;
      v112._countAndFlagsBits = sub_A4E24();
      sub_A46D4(v112);

      sub_810AC(v110, *(&v110 + 1), 0xD00000000000002FLL, 0x80000000000B5100, 0xD00000000000001CLL, 0x80000000000B5130);

      (*(v105 + 8))(v106, v99);
      v107(v48, v71);
      goto LABEL_21;
    }
  }

  sub_9BDD4(0xD00000000000002BLL, 0x80000000000B5170, 0xD00000000000002FLL);

  (*(v105 + 8))(v60, v99);
  v64(v48, v58);
LABEL_27:
  v95 = sub_9BDA0();
  v96(v95);
  return 0;
}

uint64_t sub_9A754(char a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v31 = a8;
  v29[1] = a6;
  v30 = a5;
  v12 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  sub_10A88(v12);
  v14 = *(v13 + 64);
  sub_11FC0();
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  v18 = sub_A42E4();
  v19 = sub_591C(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_AA54();
  v26 = v25 - v24;
  *(v8 + 16) = 0;
  *(v8 + 24) = a1;

  sub_A42C4();
  (*(v21 + 32))(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryScale, v26, v18);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryIndex) = a4;
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityIndex) = v30;

  if (a7)
  {
    sub_A42C4();
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  sub_A924(v17, v27, 1, v18);
  sub_9B9A0(v17, v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider);
  *(v8 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_shouldIncludeAttribution) = v31 & 1;
  return v8;
}

uint64_t sub_9A938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  sub_10A88(v7);
  v9 = *(v8 + 64);
  sub_11FC0();
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  result = 0xD000000000000015;
  v14 = a1 == 0xD000000000000015 && 0x80000000000AD410 == a2;
  if (v14 || (result = sub_9BD64(), (result & 1) != 0))
  {
    v15 = *(v3 + 24);
LABEL_7:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v15;
    return result;
  }

  if (a1 != 0xD000000000000017 || 0x80000000000AD430 != a2)
  {
    result = sub_9BD64();
    if ((result & 1) == 0)
    {
      v20 = a1 == 0xD000000000000017 && 0x80000000000AD450 == a2;
      if (v20 || (result = sub_9BD64(), (result & 1) != 0))
      {
        v21 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryIndex;
      }

      else
      {
        result = sub_9BDB0();
        if (a1 != result || a2 != v23)
        {
          result = sub_9BD64();
          if ((result & 1) == 0)
          {
            v25 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
            if (v25 || (sub_9BD64() & 1) != 0)
            {
              sub_9BA58(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider, v12);
              v26 = sub_A42E4();
              if (sub_CF2C(v12, 1, v26) != 1)
              {
                *(a3 + 24) = v26;
                sub_76B0(a3);
                sub_18594(v26);
                return (*(v27 + 32))();
              }

              result = sub_794C8(v12, &qword_DF4B0, &qword_AC5F0);
            }

            else
            {
              result = 0xD000000000000018;
              v28 = a1 == 0xD000000000000018 && 0x80000000000AD490 == a2;
              if (v28 || (result = sub_9BD64(), (result & 1) != 0))
              {
                v15 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_shouldIncludeAttribution);
                goto LABEL_7;
              }
            }

            *a3 = 0u;
            *(a3 + 16) = 0u;
            return result;
          }
        }

        v21 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityIndex;
      }

      v22 = *(v3 + v21);
      *(a3 + 24) = &type metadata for Double;
      *a3 = v22;
      return result;
    }
  }

  v17 = sub_A42E4();
  *(a3 + 24) = v17;
  sub_76B0(a3);
  sub_18594(v17);
  v19 = *(v18 + 16);

  return v19();
}

uint64_t sub_9AC04(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFF30;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9AC58()
{
  result = sub_9BDB0();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0x72656469766F7270;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_9AD58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9AC04(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_9AD88@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_9AC58();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_9ADD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_9AC50();
  *a1 = result;
  return result;
}

uint64_t sub_9AE04(uint64_t a1)
{
  v2 = sub_9B94C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9AE40(uint64_t a1)
{
  v2 = sub_9B94C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9AE7C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryScale;
  v2 = sub_A42E4();
  sub_18594(v2);
  (*(v3 + 8))(v0 + v1);
  sub_794C8(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider, &qword_DF4B0, &qword_AC5F0);
  return v0;
}

uint64_t sub_9AF00()
{
  sub_9AE7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WeatherAirQuality()
{
  result = qword_E0200;
  if (!qword_E0200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9AFAC()
{
  v0 = sub_A42E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_9B330();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_9B098(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_E0320, &qword_AC600);
  sub_591C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_11FC0();
  __chkstk_darwin(v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  sub_7584(a1, a1[3]);
  sub_9B94C();
  sub_A4F64();
  v14 = *(v3 + 24);
  v21[15] = 0;
  sub_5CB0C();
  sub_A4DC4();
  if (!v2)
  {
    v21[14] = 1;
    sub_A42E4();
    sub_9BD4C();
    sub_9BA10(v15, v16);
    sub_5CB0C();
    sub_A4DF4();
    v17 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryIndex);
    v21[13] = 2;
    sub_5CB0C();
    sub_A4DD4();
    v18 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityIndex);
    v21[12] = 3;
    sub_5CB0C();
    sub_A4DD4();
    v21[11] = 4;
    sub_5CB0C();
    sub_A4DA4();
    v19 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_shouldIncludeAttribution);
    v21[10] = 5;
    sub_5CB0C();
    sub_A4DC4();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_9B2E0(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_9B388(a1);
  return v5;
}

void sub_9B330()
{
  if (!qword_E0210)
  {
    sub_A42E4();
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_E0210);
    }
  }
}

uint64_t sub_9B388(uint64_t *a1)
{
  v3 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  sub_10A88(v3);
  v5 = *(v4 + 64);
  sub_11FC0();
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_A42E4();
  v10 = sub_591C(v9);
  v40 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_AA54();
  v16 = v15 - v14;
  v17 = sub_4BF0(&qword_E0310, &qword_AC5F8);
  v18 = sub_591C(v17);
  v41 = v19;
  v42 = v18;
  v21 = *(v20 + 64);
  sub_11FC0();
  __chkstk_darwin(v22);
  *(v1 + 16) = 0;
  v23 = a1[3];
  v24 = a1[4];
  v44 = a1;
  sub_7584(a1, v23);
  sub_9B94C();
  v25 = v43;
  sub_A4F54();
  if (v25)
  {
    v29 = v1;

    type metadata accessor for WeatherAirQuality();
    v26 = *(*v1 + 48);
    v27 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v8;
    v43 = v9;
    v50 = 0;
    v29 = v1;
    *(v1 + 24) = sub_A4D44() & 1;
    v49 = 1;
    sub_9BD4C();
    sub_9BA10(v30, v31);
    v32 = v43;
    sub_A4D74();
    (*(v40 + 32))(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryScale, v16, v32);
    v48 = 2;
    sub_A4D54();
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityCategoryIndex) = v33;
    v47 = 3;
    sub_A4D54();
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_airQualityIndex) = v34;
    v46 = 4;
    v35 = v39;
    sub_A4D24();
    sub_9B9A0(v35, v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_provider);
    v45 = 5;
    v36 = sub_A4D44();
    v37 = sub_9BD3C();
    v38(v37);
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17WeatherAirQuality_shouldIncludeAttribution) = v36 & 1;
  }

  sub_761C(v44);
  return v29;
}

uint64_t sub_9B86C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_9B2E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_9B94C()
{
  result = qword_E0318;
  if (!qword_E0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0318);
  }

  return result;
}

uint64_t sub_9B9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BA10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9BA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DF4B0, &qword_AC5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_9BAC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_A45C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

_BYTE *storeEnumTagSinglePayload for WeatherAirQuality.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x9BBF8);
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

unint64_t sub_9BC34()
{
  result = qword_E0338;
  if (!qword_E0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0338);
  }

  return result;
}

unint64_t sub_9BC8C()
{
  result = qword_E0340;
  if (!qword_E0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0340);
  }

  return result;
}

unint64_t sub_9BCE4()
{
  result = qword_E0348;
  if (!qword_E0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0348);
  }

  return result;
}

uint64_t sub_9BD64()
{

  return sub_A4E44();
}

uint64_t sub_9BD80()
{

  return swift_allocObject();
}

void sub_9BDD4(uint64_t a1, unint64_t a2, uint64_t a3)
{

  sub_810AC(a1, a2, a3, v3 | 0x8000000000000000, 0xD00000000000001CLL, v4 | 0x8000000000000000);
}

void sub_9BDF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16MeCardDataSource__meCard);
  *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16MeCardDataSource__meCard) = 0;
}

uint64_t sub_9BE48()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16MeCardDataSource_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_9BEC8()
{
  sub_9BE48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MeCardDataSource()
{
  result = qword_E0388;
  if (!qword_E0388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9BF74()
{
  result = sub_A43D4();
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

_BYTE *storeEnumTagSinglePayload for WeatherError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x9C0DCLL);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_9C114(char a1)
{
  strcpy(v2, "WeatherError.");
  v3._countAndFlagsBits = sub_9C178(a1);
  sub_A46D4(v3);

  return v2[0];
}

unint64_t sub_9C178(char a1)
{
  result = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      return result;
    case 8:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_9C2C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFFE0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9C328@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9C2C4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_9C358@<X0>(unint64_t *a1@<X8>)
{
  result = sub_9C178(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_9C3A0()
{
  result = qword_E0468;
  if (!qword_E0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0468);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PodcastsDialogs(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x9C4C0);
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

unint64_t sub_9C4F8(char a1)
{
  v2 = 0xEF656D614E707041;
  v3._countAndFlagsBits = 0x7374736163646F50;
  switch(a1)
  {
    case 1:
      v2 = 0x80000000000AD5E0;
      v3._countAndFlagsBits = 0xD000000000000014;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xEF74706D6F725073;
      v3._countAndFlagsBits = 0x77654E656C617453;
      break;
    default:
      v2 = 0x80000000000AD5C0;
      v3._countAndFlagsBits = 0xD000000000000017;
      break;
  }

  v3._object = v2;
  sub_A46D4(v3);

  return 0xD000000000000016;
}

unint64_t sub_9C600(char a1)
{
  result = 0x7374736163646F50;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x77654E656C617453;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_9C6B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D00D8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9C728@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9C6B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_9C758@<X0>(unint64_t *a1@<X8>)
{
  result = sub_9C600(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_9C788()
{
  result = qword_E0470;
  if (!qword_E0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0470);
  }

  return result;
}

double sub_9C7E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_A0D78(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_B924(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_9C848@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_A0E1C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_B924(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_9C8AC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 8;
  }

  v3 = sub_A0E8C(a1, sub_1C90C, sub_A12C0);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 8;
  }
}

uint64_t sub_9C920(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 4;
  }

  v3 = sub_A0E8C(a1, sub_5F5E8, sub_A0FDC);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 4;
  }
}

uint64_t sub_9C994(char a1)
{
  v3 = sub_A4634();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_9CA84;

  return sub_44F0(a1);
}

uint64_t sub_9CA84()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v1[5] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v6 = *(v5 + 96);
  v7 = *v0;
  sub_5930();
  *v8 = v7;
  *(v10 + 104) = v9;

  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_9CB6C()
{
  sub_59C4();
  v1 = v0[13];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v0[6];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  sub_A4624();
  sub_A2950();
  v7 = v6;

  (*(v4 + 8))(v3, v5);
  if (v7 >> 60 == 15)
  {
LABEL_7:
    v1 = 0;
LABEL_8:
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v8 = sub_A2B14();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_A2B04();
  sub_A26B4();
  sub_A2A08();
  if (v3)
  {

    sub_A2A8C();
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v11 = sub_A43D4();
    sub_48A4(v11, qword_E0BA0);
    sub_A2A4C();

    sub_10944();
    v0[8] = &type metadata for PodcastLastInvocation;
    sub_4BF0(&qword_E05D0, &qword_ACB90);
    v18._countAndFlagsBits = sub_A4644();
    sub_A46D4(v18);

    sub_A2AA4();
    sub_A29C0(0xD000000000000019, "Unable to encode data from ");

    goto LABEL_7;
  }

  sub_A2A8C();

  v13 = v0[2];
  v12 = v0[3];
  v1 = v0[4];
LABEL_9:
  v14 = v0[11];

  v15 = v0[1];

  return v15(v13, v12, v1);
}

uint64_t sub_9CD74()
{
  sub_5950();
  v2 = v1;
  v0[6] = v3;
  v4 = sub_A4634();
  v0[7] = v4;
  sub_5940(v4);
  v0[8] = v5;
  v7 = *(v6 + 64);
  v0[9] = sub_10AAC();
  v0[10] = type metadata accessor for DBCalendarState();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  sub_A2998(v8);

  return sub_44F0(v2);
}

uint64_t sub_9CE5C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  sub_A2A38(v3, v4);
  v6 = *(v5 + 88);
  v7 = *v0;
  sub_5930();
  *v8 = v7;
  *(v10 + 96) = v9;

  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_9CF38()
{
  sub_59C4();
  if (!v0[12])
  {
    goto LABEL_3;
  }

  v1 = v0[3];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_A4624();
  sub_A2950();
  v6 = v5;

  (*(v3 + 8))(v2, v4);
  if (v6 >> 60 != 15)
  {
    v10 = v0[10];
    v11 = v0[6];
    v12 = sub_A2B14();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_A2B04();
    sub_A275C(&qword_E05E8, type metadata accessor for DBCalendarState);
    sub_A2AF4();
    v15 = v0[10];
    v16 = v0[6];
    v17 = sub_A2A2C();
    sub_65DDC(v17, v18);

    v8 = v16;
    v9 = 0;
    v7 = v15;
  }

  else
  {
LABEL_3:
    v7 = v0[10];
    v8 = v0[6];
    v9 = 1;
  }

  sub_A924(v8, v9, 1, v7);
  v19 = v0[9];

  sub_AA9C();

  return v20();
}

uint64_t sub_9D1CC()
{
  sub_5950();
  v2 = v1;
  v3 = sub_A4634();
  v0[9] = v3;
  sub_5940(v3);
  v0[10] = v4;
  v6 = *(v5 + 64);
  v0[11] = sub_10AAC();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  sub_A2998(v7);

  return sub_44F0(v2);
}

uint64_t sub_9D2A4()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  sub_A2A38(v3, v4);
  v6 = *(v5 + 96);
  v7 = *v0;
  sub_5930();
  *v8 = v7;
  *(v10 + 104) = v9;

  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_9D380()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v2 = *(v0 + 24);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  sub_A4624();
  sub_A2950();
  v7 = v6;

  (*(v4 + 8))(v3, v5);
  if (v7 >> 60 == 15)
  {
LABEL_7:
    v12 = 0;
    v1 = 0;
LABEL_9:
    v13 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  v8 = sub_A2B14();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_A2B04();
  sub_A2708();
  sub_A2A08();
  if (v3)
  {

    sub_A2A8C();
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v11 = sub_A43D4();
    sub_48A4(v11, qword_E0BA0);
    sub_A4B54(28);

    sub_10944();
    *(v0 + 64) = &type metadata for WarningHistory;
    sub_4BF0(&qword_E05E0, &qword_ACBA0);
    v19._countAndFlagsBits = sub_A4644();
    sub_A46D4(v19);

    sub_A2AA4();
    sub_A29C0(0xD000000000000019, "Unable to encode data from ");

    goto LABEL_7;
  }

  sub_A2A8C();

  v14 = 0;
  v13 = *(v0 + 40);
  v1 = *(v0 + 48);
  v12 = *(v0 + 56);
LABEL_10:
  v15 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16(v13, v1, v12 | (v14 << 8));
}

BOOL sub_9D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_A4F14();
  sub_A46A4();
  v7 = sub_A4F44();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_A4E44();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_9D698(Swift::UInt32 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    sub_A4F14();
    sub_A4F34(a1);
    v6 = sub_A4F44();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 4 * v8) != a1);
  }

  return v2;
}

uint64_t sub_9D748()
{
  sub_5950();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_A38F4();
  v1[4] = v3;
  sub_5940(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_10AC4();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

void sub_9D804()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state;
  v35._countAndFlagsBits = sub_9DC0C(*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state));
  sub_A46D4(v35);

  sub_A29EC();
  sub_810AC(v3, v4, v5, v6, v7, v8);

  if (*(v1 + v2) == 4)
  {
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[2];
    sub_A38B4();
    (*(v12 + 16))(v10, v9, v11);
    v14 = (*(v12 + 88))(v10, v11);
    v15 = v0[8];
    if (v14 == enum case for Parse.empty(_:))
    {
      (*(v0[5] + 8))(v0[8], v0[4]);
      *(v1 + v2) = 2;
    }

    else
    {
      v23 = v0[5];
      v22 = v0[6];
      v24 = v0[4];
      v25 = v0[2];
      sub_A38B4();
      v26 = sub_13BF8(v22);
      v27 = *(v23 + 8);
      v27(v22, v24);
      v27(v15, v24);
      v28 = v0[7];
      v29 = v0[4];
      if (v26 != 3)
      {
        *(v1 + v2) = v26 != 0;
      }

      v27(v28, v29);
    }

    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[6];

    sub_49144();
    sub_1A6AC();

    __asm { BRAA            X2, X16 }
  }

  v16 = v0[3];
  v17 = v16[22];
  v18 = *sub_7584(v16 + 16, v16[19]);
  v19 = sub_2567C(&dword_ACB78);
  v0[9] = v19;
  *v19 = v0;
  sub_A29A4(v19);
  sub_1A6AC();

  __asm { BR              X3 }
}

uint64_t sub_9DAC0()
{
  sub_AB40();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 72);
  v5 = *v0;
  sub_5930();
  *v6 = v5;

  v7 = v3[8];
  v8 = v3[7];
  v9 = v3[6];

  v10 = *(v5 + 8);

  return v10(v2);
}

uint64_t sub_9DC0C(char a1)
{
  if (a1 == 4)
  {
    return 0x676E697469617761;
  }

  if (a1 == 3)
  {
    return 0x6572676F72506E69;
  }

  sub_A4B54(17);
  v2._countAndFlagsBits = 0x6465766965636572;
  v2._object = 0xEE00287475706E49;
  sub_A46D4(v2);
  sub_A4C44();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_A46D4(v3);
  return 0;
}

uint64_t sub_9DD0C()
{
  type metadata accessor for NewsFlow();
  sub_A275C(&qword_DFFE8, type metadata accessor for NewsFlow);
  return sub_A3334();
}

uint64_t sub_9DD9C()
{
  sub_5950();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64);
  v1[7] = sub_10AAC();
  v4 = sub_A3744();
  v1[8] = v4;
  sub_5940(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = sub_10AAC();
  v8 = sub_AA8C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_9DE70()
{
  v1 = v0[6];
  v0[11] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_logger;
  sub_A4B54(34);

  sub_10944();
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state;
  v0[12] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_state;
  v67._countAndFlagsBits = sub_9DC0C(*(v1 + v2));
  sub_A46D4(v67);

  sub_A2AA4();
  sub_A29EC();
  sub_AB34();
  sub_810AC(v3, v4, v5, v6, v7, v8);

  switch(*(v1 + v2))
  {
    case 1:
      v53 = v0[6];
      sub_A29EC();
      sub_AB34();
      sub_810AC(v54, v55, v56, v57, v58, v59);
      sub_934EC((v53 + 184), *(v53 + 208));
      v0[25] = sub_5DFD0();
      v60 = swift_task_alloc();
      v0[26] = v60;
      *v60 = v0;
      sub_A2998(v60);
      sub_1A6AC();

      return sub_362FC();
    case 2:
      swift_task_alloc();
      sub_1A6A0();
      v0[28] = v23;
      *v23 = v24;
      v25 = sub_9F300;
      goto LABEL_13;
    case 3:
      v26 = v0[6];
      v27 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender;
      v0[13] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender;
      v28 = (v26 + v27);
      v29 = sub_7584((v26 + v27), *(v26 + v27 + 24));
      v30 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
      v0[14] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
      v31 = v26 + v30;
      v32 = *v29;
      v33 = *(v26 + v30 + 24);
      v34 = *(v26 + v30 + 32);
      v35 = sub_7584((v26 + v30), v33);
      sub_4DB28(v35, 0x11u, 0, 0, v32, v33, v34);
      sub_934EC((v26 + 304), *(v26 + 328));
      if ((sub_834E4() & 1) == 0)
      {
        v62 = v0[6];
        v0[16] = v62[22];
        v63 = *sub_7584(v62 + 16, v62[19]);
        v64 = sub_2567C(&dword_ACB78);
        v0[17] = v64;
        *v64 = v0;
        sub_A29A4(v64);
        sub_1A6AC();

        __asm { BR              X3 }
      }

      sub_A29EC();
      sub_AA40();
      sub_AB34();
      sub_810AC(v36, v37, v38, v39, v40, v41);
      v42 = *sub_7584(v28, v28[3]);
      v43 = *(v31 + 24);
      v44 = *(v31 + 32);
      v45 = sub_A2A2C();
      v47 = sub_7584(v45, v46);
      sub_4DB28(v47, 0x3Au, 0xD00000000000001CLL, 0x80000000000B5490, v42, v43, v44);
      swift_task_alloc();
      sub_1A6A0();
      v0[15] = v23;
      *v23 = v48;
      v25 = sub_9E404;
LABEL_13:
      v23[1] = v25;
      v49 = v0[5];
      v50 = v0[6];
      sub_1A6AC();

      result = sub_A057C(v51);
      break;
    case 4:
      v13 = v0[6];
      v14 = sub_7584((v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender), *(v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender + 24));
      v15 = (v13 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name);
      v16 = *v14;
      v17 = v15[3];
      v18 = v15[4];
      v19 = sub_7584(v15, v17);
      sub_4DB20(v19, 0x15u, 0xD000000000000039, 0x80000000000B5320, v16, v17, v18);
      if (qword_DA9D0 != -1)
      {
        sub_58D8();
      }

      v20 = sub_A43D4();
      sub_48A4(v20, qword_E0BA0);
      sub_81094(0xD000000000000039, 0x80000000000B5320, 0xD000000000000021, 0x80000000000B2D40, 0xD000000000000018, 0x80000000000B2D70);
      swift_beginAccess();

      sub_1A6AC();

      __asm { BRAA            X6, X16 }

      return result;
    default:
      swift_task_alloc();
      sub_1A6A0();
      v0[24] = v9;
      *v9 = v10;
      sub_A29F8(v9);
      sub_1A6AC();

      result = sub_9F410();
      break;
  }

  return result;
}

uint64_t sub_9E404()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 120);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  sub_A298C();
  v6 = *(v5 + 80);
  v7 = *(v0 + 56);

  sub_A2900();

  return v8();
}

uint64_t sub_9E514()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 232) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_9E5FC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  if (*(v0 + 232) == 1)
  {
    v3 = *(v0 + 48);
    v4 = (v3 + v2);
    v5 = *sub_7584((v3 + v1), *(v3 + v1 + 24));
    v6 = v4[3];
    v7 = v4[4];
    v8 = sub_7584(v4, v6);
    sub_4DB28(v8, 1u, 0, 0, v5, v6, v7);
    sub_934EC((v3 + 224), *(v3 + 248));
    v9 = sub_2567C(&unk_ACB80);
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_9E810;
    v10 = *(v0 + 128);

    return v33(v10, v4);
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 48);
    v14 = v13 + v2;
    v15 = (v13 + v1);
    sub_AA40();
    v18 = v17 + v16;
    sub_AB34();
    sub_81094(v19, v20, v21, v22, v23, v24);
    sub_934EC(v15, v15[3]);
    v25 = *(v14 + 24);
    v26 = *(v14 + 32);
    v27 = sub_25648();
    v29 = sub_7584(v27, v28);
    sub_4DB28(v29, 0x3Au, 0x64656C6261736964, 0xEE00657461747320, v18, v25, v26);
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 184) = v30;
    *v30 = v31;
    v32 = sub_A29F8(v30);

    return sub_A057C(v32);
  }
}

uint64_t sub_9E810()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 144);
  *v2 = *v0;
  *(v1 + 233) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_9E8F8()
{
  sub_5950();
  if (*(v0 + 233) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 48);
    sub_AA40();
    sub_AB34();
    sub_810C4(v3, v4, v5, v6, v7, v8);
    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = sub_9EA3C;
    v10 = *(v0 + 48);

    return sub_9FF00();
  }

  else
  {
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 176) = v12;
    *v12 = v13;
    sub_A29F8(v12);

    return sub_9F410();
  }
}

uint64_t sub_9EA3C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_9EB24()
{
  sub_59C4();
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  sub_12180(v0[10]);
  *(v7 + v3) = 4;
  v8 = sub_7584((v7 + 264), *(v7 + 288));
  v9 = *(v4 + 16);
  v10 = sub_A2A2C();
  v11(v10);
  sub_A924(v6, 0, 1, v5);
  v12 = *v8;
  v13 = v1;
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_9EC4C;
  v15 = v0[7];

  return sub_87A40(v1, 0, v7 + v2, v15);
}

uint64_t sub_9EC4C()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = v5[21];
  v7 = v5[20];
  v8 = v5[7];
  v9 = *v0;
  sub_5930();
  *v10 = v9;

  sub_A8A8(v4, v2 & 1);

  sub_1085C(v8, &qword_DB5A8, &unk_A67C0);
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_9ED90()
{
  sub_AB40();
  v1 = v0[20];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
  sub_A35F4();

  (*(v3 + 8))(v2, v4);
  v6 = v0[10];
  v7 = v0[7];

  sub_AA9C();

  return v8();
}

uint64_t sub_9EE30()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 176);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  sub_A298C();
  v6 = *(v5 + 80);
  v7 = *(v0 + 56);

  sub_A2900();

  return v8();
}

uint64_t sub_9EF40()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 184);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  sub_A298C();
  v6 = *(v5 + 80);
  v7 = *(v0 + 56);

  sub_A2900();

  return v8();
}

uint64_t sub_9F050()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 192);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  sub_A298C();
  v6 = *(v5 + 80);
  v7 = *(v0 + 56);

  sub_A2900();

  return v8();
}

uint64_t sub_9F160()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 208);
  v5 = *(v3 + 200);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 216) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_9F260()
{
  sub_AB40();
  v1 = v0[27];
  v2 = v0[5];
  sub_934EC((v0[6] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender), *(v0[6] + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender + 24));
  sub_4D9A0();
  sub_A3654();

  v3 = v0[10];
  v4 = v0[7];

  sub_AA9C();

  return v5();
}

uint64_t sub_9F300()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 224);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  sub_A298C();
  v6 = *(v5 + 80);
  v7 = *(v0 + 56);

  sub_A2900();

  return v8();
}

uint64_t sub_9F410()
{
  sub_5950();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64);
  v1[4] = sub_10AAC();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9F498()
{
  sub_AB40();
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_shouldDialog) == 1)
  {
    sub_A2930();
    sub_810C4(v2, v3, v4, v5, v6, v7);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_9F618;
    v9 = v0[3];

    return sub_9FC14();
  }

  else
  {
    sub_A2930();
    sub_810AC(v11, v12, v13, v14, v15, v16);
    v17 = sub_A2ABC();
    sub_A2A6C(v17);

    swift_task_alloc();
    sub_1A6A0();
    v0[9] = v18;
    *v18 = v19;
    v18[1] = sub_9FB20;
    v20 = v0[2];
    v21 = v0[3];

    return sub_A057C(v20);
  }
}

uint64_t sub_9F618()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_9F700()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_7584((v3 + 264), *(v3 + 288));
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name;
  v6 = sub_A3744();
  sub_A924(v2, 1, 1, v6);
  v7 = *v4;
  v8 = v1;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_9F7F4;
  v10 = v0[4];

  return sub_87A40(v1, 0, v3 + v5, v10);
}

uint64_t sub_9F7F4()
{
  sub_AB40();
  v2 = v1;
  v4 = v3;
  sub_AAA8();
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[4];
  v9 = *v0;
  sub_5930();
  *v10 = v9;

  sub_A8A8(v4, v2 & 1);

  sub_1085C(v8, &qword_DB5A8, &unk_A67C0);
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_9F938()
{
  sub_AB40();
  v1 = v0[3];
  v2 = sub_A2ABC();
  sub_A2A6C(v2);

  swift_task_alloc();
  sub_1A6A0();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_9F9DC;
  v5 = v0[2];
  v6 = v0[3];

  return sub_A057C(v5);
}

uint64_t sub_9F9DC()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_9FAC0()
{
  sub_5950();

  v1 = *(v0 + 32);

  sub_AA9C();

  return v2();
}

uint64_t sub_9FB20()
{
  sub_5950();
  sub_934E0();
  v2 = *(v0 + 72);
  v3 = *v1;
  sub_5930();
  *v4 = v3;

  sub_A298C();
  v6 = *(v5 + 32);

  sub_A2900();

  return v7();
}

uint64_t sub_9FC14()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A3784();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_10AAC();
  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_9FCB8()
{
  sub_5950();
  sub_934EC((v0[2] + 184), *(v0[2] + 208));
  v0[6] = sub_5E0E4();
  swift_task_alloc();
  sub_1A6A0();
  v0[7] = v1;
  *v1 = v2;
  v1[1] = sub_9FD60;
  v3 = v0[5];

  return sub_5688C(v3);
}

uint64_t sub_9FD60()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_5930();
  *v5 = v4;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_9FE60()
{
  sub_AB40();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 168);
  v5 = sub_A3564();
  v6 = *(v2 + 8);
  v7 = sub_25648();
  v8(v7);

  sub_49144();

  return v9(v5);
}

uint64_t sub_9FF00()
{
  sub_5950();
  v1[2] = v0;
  v2 = sub_A35B4();
  v1[3] = v2;
  sub_5940(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_10AC4();
  v1[6] = swift_task_alloc();
  v6 = sub_A37A4();
  v1[7] = v6;
  sub_5940(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_10AC4();
  v1[10] = swift_task_alloc();
  v10 = sub_A3784();
  v1[11] = v10;
  sub_5940(v10);
  v1[12] = v11;
  v13 = *(v12 + 64);
  v1[13] = sub_10AC4();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v14 = sub_AA8C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_A006C()
{
  sub_5950();
  sub_934EC((v0[2] + 184), *(v0[2] + 208));
  v0[16] = sub_5E0E4();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  sub_A2998(v1);

  return sub_56AAC();
}

uint64_t sub_A010C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 128);
  v6 = *v0;
  sub_5930();
  *v7 = v6;
  *(v9 + 144) = v8;

  v10 = sub_AA8C();

  return _swift_task_switch(v10, v11, v12);
}

void sub_A020C()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v0[12];
  v4 = *(v3 + 16);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v4(v0[15], v5, v0[11]);
  if (v2 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = *(v0[12] + 72);
  v4(v0[14], v5 + v6, v0[11]);
  if (v2 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v0[18];
  v8 = v0[14];
  v9 = v5 + 2 * v6;
  v10 = v0[2];
  v4(v0[13], v9, v0[11]);

  v11 = sub_A3774();
  if (!*(v11 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v66 = v10;
  v12 = v0[13];
  v13 = v0[8];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  v60 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v62 = *(v13 + 16);
  v62(v0[10], v11 + v60, v0[7]);

  sub_A3794();
  v17 = *(v13 + 8);
  v18 = sub_25648();
  v59 = v19;
  (v19)(v18);
  v64 = sub_A35A4();
  v21 = v20;
  v22 = *(v16 + 8);
  v22(v14, v15);
  v23 = sub_A3774();
  if (!*(v23 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v24 = v0[9];
  v25 = v0[7];
  v26 = v0[5];
  v57 = v0[3];
  v58 = v21;
  v27 = v0[2];
  v62(v24, v23 + v60, v25);

  sub_A3794();
  v59(v24, v25);
  sub_A35A4();
  v22(v26, v57);
  v28 = *(v27 + 120);
  sub_7584((v66 + 88), *(v27 + 112));
  v29 = sub_A34D4();
  if (v29)
  {
    v37 = sub_A2970(v29, v30, v31, v32, v33, v34, v35, v36, v57, v58, v59, v60, v62, v64);
    sub_724D4(v37, v38, v39, v40, 4, 5);
  }

  else
  {
    v41 = sub_A2970(v29, v30, v31, v32, v66 + 88, v34, v35, v36, v57, v58, v59, v60, v62, v64);
    sub_726A8(v41, v42, v43, v44, v45);
  }

  v47 = v0[14];
  v46 = v0[15];
  v49 = v0[12];
  v48 = v0[13];
  v50 = v0[11];
  v61 = v0[10];
  v63 = v0[9];
  v65 = v0[6];
  v67 = v0[5];
  v51 = v0[2];

  v52 = *(v51 + 168);
  v53 = sub_A3554();

  v54 = *(v49 + 8);
  v55 = sub_25648();
  v54(v55);
  (v54)(v47, v50);
  (v54)(v46, v50);

  sub_49144();

  v56(v53);
}

uint64_t sub_A057C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_AA8C();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_A05A4()
{
  sub_AB40();
  v1 = *(v0 + 24);
  v2 = *(v1 + 176);
  v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_A064C;

  return sub_95A4C(v2, v1 + v3);
}

uint64_t sub_A064C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_A0730()
{
  sub_5950();
  v1 = *(v0 + 16);
  sub_A3664();
  sub_AA9C();

  return v2();
}

uint64_t sub_A0788()
{
  v1 = *(v0 + 16);

  sub_1A564(v0 + 24);
  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_logger;
  v3 = sub_A43D4();
  sub_5908(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_now;
  v6 = sub_A2EA4();
  sub_5908(v6);
  (*(v7 + 8))(v0 + v5);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_name));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8NewsFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_A0840()
{
  sub_A0788();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for NewsFlow()
{
  result = qword_E04B0;
  if (!qword_E04B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A08EC()
{
  result = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_A2EA4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewsFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC)
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 4;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 4;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0xA0AA0);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 4;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for NewsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0xA0B88);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_A0BB0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_A0BC4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_A0BE4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_9294C;

  return sub_9D748();
}

uint64_t sub_A0CA0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_9DD9C();
}

uint64_t sub_A0D3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NewsFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_A0D78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_A4F14();
  sub_A46A4();
  v6 = sub_A4F44();

  return sub_A0F28(a1, a2, v6);
}

unint64_t sub_A0E1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_A4AE4(*(v2 + 40));

  return sub_A11FC(a1, v4);
}

uint64_t sub_A0E8C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_A4F14();
  a2(a1);
  sub_A46A4();

  v7 = sub_A4F44();

  return a3(a1, v7);
}

unint64_t sub_A0F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_A4E44() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_A0FDC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7261646E656C6163;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7265646E696D6572;
          v7 = 0xE900000000000073;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x72656874616577;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1936744813;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x74736163646F70;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7261646E656C6163;
      switch(a1)
      {
        case 1:
          v10 = 0x7265646E696D6572;
          v9 = 0xE900000000000073;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v10 = 0x72656874616577;
          break;
        case 3:
          v9 = 0xE400000000000000;
          v10 = 1936744813;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x74736163646F70;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_A4E44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_A11FC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_80E08(*(v2 + 48) + 40 * i, v7);
    v5 = sub_A4AF4();
    sub_80E64(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_A12C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7261646E656C6163;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1937204590;
          break;
        case 2:
          v8 = 0x7265646E696D6572;
          v7 = 0xE900000000000073;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x63696666617274;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x72656874616577;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7261646E656C6163;
      switch(a1)
      {
        case 1:
          v9 = 0xE400000000000000;
          v10 = 1937204590;
          break;
        case 2:
          v10 = 0x7265646E696D6572;
          v9 = 0xE900000000000073;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x63696666617274;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x72656874616577;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_A4E44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_A14E0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000065;
      v8 = 0x6E61636972727568;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x6F64616E726F74;
          break;
        case 2:
          v8 = 0x6C616369706F7274;
          v7 = 0xED00006D726F7453;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x6472617A7A696C62;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1818845544;
          break;
        case 5:
          v8 = 0x737265646E756874;
          v9 = 1836216180;
          goto LABEL_18;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x7465656C73;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v10 = 2003791475;
          goto LABEL_24;
        case 8:
          v8 = 0x53676E69776F6C62;
          v11 = 7827310;
          goto LABEL_26;
        case 9:
          v7 = 0xE500000000000000;
          v10 = 1852399986;
          goto LABEL_24;
        case 0xA:
          v7 = 0xE500000000000000;
          v10 = 1802464627;
          goto LABEL_24;
        case 0xB:
          v7 = 0xE400000000000000;
          v8 = 1953723748;
          break;
        case 0xC:
          v7 = 0xE500000000000000;
          v10 = 1684957559;
          goto LABEL_24;
        case 0xD:
          v7 = 0xE500000000000000;
          v10 = 1734831974;
LABEL_24:
          v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 0xE:
          v7 = 0xE400000000000000;
          v8 = 1702519144;
          break;
        case 0xF:
          v7 = 0xE600000000000000;
          v8 = 0x7964756F6C63;
          break;
        case 0x10:
          v8 = 0x6C43796C74726170;
          v9 = 2036626799;
LABEL_18:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x11:
          v7 = 0xE500000000000000;
          v8 = 0x7261656C63;
          break;
        case 0x12:
          v7 = 0xE400000000000000;
          v8 = 1684828003;
          break;
        case 0x13:
          v7 = 0xE300000000000000;
          v8 = 7630696;
          break;
        case 0x14:
          v8 = 0x6F6C43646578696DLL;
          v11 = 7955573;
LABEL_26:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x15:
          v7 = 0xEA00000000007261;
          v8 = 0x656C43646578696DLL;
          break;
        case 0x16:
          v8 = 0x6C69617641746F6ELL;
          v7 = 0xEC000000656C6261;
          break;
        default:
          break;
      }

      v12 = 0x6E61636972727568;
      v13 = 0xE900000000000065;
      switch(a1)
      {
        case 1:
          v13 = 0xE700000000000000;
          v12 = 0x6F64616E726F74;
          break;
        case 2:
          v12 = 0x6C616369706F7274;
          v13 = 0xED00006D726F7453;
          break;
        case 3:
          v13 = 0xE800000000000000;
          v12 = 0x6472617A7A696C62;
          break;
        case 4:
          v13 = 0xE400000000000000;
          v12 = 1818845544;
          break;
        case 5:
          v12 = 0x737265646E756874;
          v14 = 1836216180;
          goto LABEL_44;
        case 6:
          v13 = 0xE500000000000000;
          v12 = 0x7465656C73;
          break;
        case 7:
          v13 = 0xE500000000000000;
          v15 = 2003791475;
          goto LABEL_50;
        case 8:
          v12 = 0x53676E69776F6C62;
          v16 = 7827310;
          goto LABEL_52;
        case 9:
          v13 = 0xE500000000000000;
          v15 = 1852399986;
          goto LABEL_50;
        case 10:
          v13 = 0xE500000000000000;
          v15 = 1802464627;
          goto LABEL_50;
        case 11:
          v13 = 0xE400000000000000;
          v12 = 1953723748;
          break;
        case 12:
          v13 = 0xE500000000000000;
          v15 = 1684957559;
          goto LABEL_50;
        case 13:
          v13 = 0xE500000000000000;
          v15 = 1734831974;
LABEL_50:
          v12 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 14:
          v13 = 0xE400000000000000;
          v12 = 1702519144;
          break;
        case 15:
          v13 = 0xE600000000000000;
          v12 = 0x7964756F6C63;
          break;
        case 16:
          v12 = 0x6C43796C74726170;
          v14 = 2036626799;
LABEL_44:
          v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 17:
          v13 = 0xE500000000000000;
          v12 = 0x7261656C63;
          break;
        case 18:
          v13 = 0xE400000000000000;
          v12 = 1684828003;
          break;
        case 19:
          v13 = 0xE300000000000000;
          v12 = 7630696;
          break;
        case 20:
          v12 = 0x6F6C43646578696DLL;
          v16 = 7955573;
LABEL_52:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 21:
          v13 = 0xEA00000000007261;
          v12 = 0x656C43646578696DLL;
          break;
        case 22:
          v12 = 0x6C69617641746F6ELL;
          v13 = 0xEC000000656C6261;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v13)
      {
        break;
      }

      v18 = sub_A4E44();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_A1AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4BF0(&qword_DD220, qword_A9B20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v38 = type metadata accessor for AMSSearchService();
  v39 = &off_D1398;
  v37[0] = a3;
  v10 = *sub_7584(v37, v38);

  v11 = sub_2EA0C(a1, a2);
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  if (sub_1BF68(v11))
  {
    sub_1BF70(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = sub_A4B74();
    }

    else
    {
      v13 = *(v12 + 32);
    }

    v14 = v13;

    v15 = [v14 itemDictionary];
    v16 = sub_A4524();

    v32 = 0x44657361656C6572;
    v33 = 0xEF656D6954657461;
    sub_A4B04();
    sub_9C848(v34, v16, &v35);

    sub_80E64(v34);
    if (!v36)
    {

      v23 = &unk_DB870;
      v24 = &qword_A5CB0;
      v25 = &v35;
LABEL_19:
      sub_1085C(v25, v23, v24);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      v18 = v32;
      v17 = v33;
      v19 = [v14 itemDictionary];
      v20 = sub_A4524();

      v32 = 0x614E747369747261;
      v33 = 0xEA0000000000656DLL;
      sub_A4B04();
      sub_9C848(v34, v20, &v35);

      sub_80E64(v34);
      if (v36)
      {
        if (swift_dynamicCast())
        {
          v22 = v32;
          v21 = v33;
LABEL_15:
          if (qword_DA9E8 != -1)
          {
            swift_once();
          }

          v26 = sub_A43D4();
          sub_48A4(v26, qword_E0BE8);
          v34[0] = 0;
          v34[1] = 0xE000000000000000;
          sub_A4B54(39);

          strcpy(v34, "Found Podcast ");
          HIBYTE(v34[1]) = -18;
          v40._countAndFlagsBits = v22;
          v40._object = v21;
          sub_A46D4(v40);

          v41._object = 0x80000000000B5510;
          v41._countAndFlagsBits = 0xD000000000000015;
          sub_A46D4(v41);
          v42._countAndFlagsBits = v18;
          v42._object = v17;
          sub_A46D4(v42);
          sub_810AC(v34[0], v34[1], 0xD00000000000002ALL, 0x80000000000AE1F0, 0xD000000000000026, 0x80000000000B5530);

          sub_4F358(v9);

          v27 = sub_A2EA4();
          if (sub_CF2C(v9, 1, v27) != 1)
          {
            sub_A2E54();
            v31 = v30;

            (*(*(v27 - 8) + 8))(v9, v27);
            v28 = v31;
            goto LABEL_21;
          }

          v23 = &qword_DD220;
          v24 = qword_A9B20;
          v25 = v9;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1085C(&v35, &unk_DB870, &qword_A5CB0);
      }

      v22 = 0;
      v21 = 0xE000000000000000;
      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_20:
  v28 = 0;
LABEL_21:
  sub_761C(v37);
  return v28;
}

BOOL sub_A1F80(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AppDetecter();
  v10[3] = v4;
  v10[4] = &off_D0F20;
  v10[0] = a1;
  v5 = a2[4];
  sub_7584(a2, a2[3]);

  if (sub_A3504())
  {
    v6 = 1;
  }

  else
  {
    v7 = *sub_7584(v10, v4);
    v8 = sub_1EA54();
    v6 = sub_9D5AC(0xD000000000000012, 0x80000000000AD060, v8);
  }

  sub_761C(v10);
  return v6;
}

uint64_t sub_A205C()
{
  sub_AB40();
  v2 = v1;
  v0[7] = v3;
  v4 = type metadata accessor for AppDetecter();
  v0[8] = v4;
  v0[5] = v4;
  v0[6] = &off_D0F20;
  v0[2] = v2;

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  sub_A2998(v5);

  return sub_44F0(1);
}

uint64_t sub_A2124()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A220C()
{
  sub_5950();
  v1 = sub_4F034(v0[10], v0[11]);
  if (sub_4ED80(v1))
  {
    v2 = v0[7];
    v3 = sub_7584(v0 + 2, v0[8]);
    v4 = sub_A1F80(*v3, v2);
  }

  else
  {
    v4 = 0;
  }

  sub_761C(v0 + 2);
  sub_49144();

  return v5(v4);
}

uint64_t sub_A229C()
{
  sub_AB40();
  v2 = v1;
  v3 = type metadata accessor for AMSSearchService();
  v0[11] = v3;
  v0[5] = v3;
  v0[6] = &off_D1398;
  v0[2] = v2;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  sub_A2998(v4);

  return sub_9C994(2);
}

uint64_t sub_A2374()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v1[7] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[10] = v5;
  v7 = *(v6 + 96);
  v8 = *v0;
  sub_5930();
  *v9 = v8;
  *(v11 + 104) = v10;

  v12 = sub_AA8C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_A245C()
{
  sub_59C4();
  v20 = v0;
  if (!*(v0 + 104))
  {
    goto LABEL_3;
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);

  v4 = sub_120B4(v1);
  v6 = v5;

  v7 = sub_7584((v0 + 16), v2);
  v8 = COERCE_DOUBLE(sub_A1AB4(v4, v6, *v7));
  LOBYTE(v2) = v9;

  if ((v2 & 1) == 0)
  {
    v12 = *(v0 + 80);
    v13 = v8;
    v11 = v12 > v8;
    if (qword_DA840 != -1)
    {
      sub_A2910();
    }

    v14 = sub_A43D4();
    sub_48A4(v14, qword_E06D8);
    strcpy(v19, "isNewsStale: ");
    HIWORD(v19[1]) = -4864;
    if (v12 <= v13)
    {
      v15._countAndFlagsBits = 0x65736C6166;
    }

    else
    {
      v15._countAndFlagsBits = 1702195828;
    }

    if (v12 <= v13)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v15._object = v16;
    sub_A46D4(v15);

    sub_810AC(v19[0], v19[1], 0xD00000000000002ALL, 0x80000000000AE1F0, 0xD000000000000011, 0x80000000000B54F0);
  }

  else
  {
LABEL_3:
    if (qword_DA840 != -1)
    {
      sub_A2910();
    }

    v10 = sub_A43D4();
    sub_48A4(v10, qword_E06D8);
    sub_810C4(0xD000000000000037, 0x80000000000B54B0, 0xD00000000000002ALL, 0x80000000000AE1F0, 0xD000000000000011, 0x80000000000B54F0);
    v11 = 0;
  }

  sub_761C((v0 + 16));
  sub_49144();

  return v17(v11);
}

unint64_t sub_A26B4()
{
  result = qword_E05C8;
  if (!qword_E05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05C8);
  }

  return result;
}

unint64_t sub_A2708()
{
  result = qword_E05D8;
  if (!qword_E05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05D8);
  }

  return result;
}

uint64_t sub_A275C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for NewsFlow.NewsInput(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xA2870);
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

unint64_t sub_A28AC()
{
  result = qword_E05F8;
  if (!qword_E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05F8);
  }

  return result;
}

uint64_t sub_A2900()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_A2910()
{

  return swift_once();
}

uint64_t sub_A2950()
{

  return String.data(using:allowLossyConversion:)(v2, 0, v0, v1);
}

void sub_A29C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_81094(a1, v3, v4 + 35, a2 | 0x8000000000000000, v4 + 10, (v2 - 32) | 0x8000000000000000);
}

uint64_t sub_A29F8(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 40);
  v4 = *(v2 + 48);
  return result;
}

uint64_t sub_A2A08()
{

  return sub_A2AF4();
}

uint64_t sub_A2A38(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

void sub_A2A4C()
{

  sub_A4B54(28);
}

uint64_t sub_A2A6C(uint64_t a1)
{

  return AceServiceInvokerAsync.submitAndForget(_:)(a1, v2, v1);
}

uint64_t sub_A2A8C()
{

  return sub_65DDC(v1, v0);
}

void sub_A2AA4()
{
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

id sub_A2ABC()
{
  v1 = v0[10];
  sub_7584(v0 + 6, v0[9]);

  return sub_129C8();
}