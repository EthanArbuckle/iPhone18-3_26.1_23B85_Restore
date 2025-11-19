uint64_t sub_122170()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[12];
    v13 = v3[2];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_1222A8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[15];
    v13 = v3[2];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_1223E0()
{
  sub_D2DC();
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[2];

  sub_D37C();

  return v4();
}

uint64_t sub_122444()
{
  sub_D2DC();
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[2];

  sub_D37C();

  return v4();
}

uint64_t sub_1224A8()
{
  sub_D2DC();
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[2];

  sub_D37C();

  return v4();
}

uint64_t sub_12250C()
{
  sub_D2DC();
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[2];

  sub_D37C();

  return v4();
}

uint64_t sub_122570()
{
  sub_D2DC();
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[2];

  sub_D37C();

  return v4();
}

uint64_t sub_1225D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_FC5D4;

  return sub_11FD40(a1);
}

uint64_t sub_122668(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1ED1C0, &qword_179280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1226F0()
{
  sub_D13C((v0 + 56));

  return sub_D13C((v0 + 16));
}

void sub_12271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v23._countAndFlagsBits = a21;
  v23._object = a22;

  sub_16A744(v23);
}

uint64_t sub_122738()
{

  return sub_16A154();
}

uint64_t sub_122750()
{
  v2 = *(v0 + 16);

  return type metadata accessor for CarCommandsSetCarPlayVentModeCATsSimple();
}

_BYTE *storeEnumTagSinglePayload for CarCommandsCannedActionNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x122850);
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

unint64_t sub_12288C()
{
  result = qword_1EDC88;
  if (!qword_1EDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC88);
  }

  return result;
}

uint64_t sub_1228E0()
{
  v0 = sub_16AE64();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_122934(char a1)
{
  result = 0x6C6F46676E696562;
  switch(a1)
  {
    case 1:
      return 0x6F72427365756C62;
    case 2:
      return 0x654D6576697264;
    case 3:
      return 0x7463656A65;
    case 4:
      return 0x654D726574736166;
    case 5:
      v5 = 1702125928;
      return v5 | 0x72614300000000;
    case 6:
      v3 = 0x6C6F43737469;
      return v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    case 7:
      return 0x746F48737469;
    case 8:
      v5 = 1702260588;
      return v5 | 0x72614300000000;
    case 9:
      v3 = 0x65657053796DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
    case 10:
      return 0xD000000000000011;
    case 11:
      return 0x67754268636E7570;
    case 12:
      return 0x726F6C6F43797073;
    case 13:
      return 0x6C6174654D797073;
    case 14:
      return 0x74656D6F53797073;
    case 15:
      v4 = 1936287860;
      goto LABEL_14;
    case 16:
      return 0x755179746E657774;
    case 17:
      v4 = 1952540791;
LABEL_14:
      result = v4 | 0x4972614300000000;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x6D6F436C6176616ELL;
      break;
    case 20:
      result = 0x676E69636172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_122BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1228E0();
  *a2 = result;
  return result;
}

uint64_t sub_122C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_122934(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_122C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_122DF4();
  v5 = sub_122E48();
  v6 = sub_122E9C();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_122CE0()
{
  result = qword_1EDC90;
  if (!qword_1EDC90)
  {
    sub_37130(&qword_1EDC98, &qword_1792E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC90);
  }

  return result;
}

unint64_t sub_122D48()
{
  result = qword_1EDCA0;
  if (!qword_1EDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCA0);
  }

  return result;
}

unint64_t sub_122DA0()
{
  result = qword_1EDCA8;
  if (!qword_1EDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCA8);
  }

  return result;
}

unint64_t sub_122DF4()
{
  result = qword_1EDCB0;
  if (!qword_1EDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCB0);
  }

  return result;
}

unint64_t sub_122E48()
{
  result = qword_1EDCB8;
  if (!qword_1EDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCB8);
  }

  return result;
}

unint64_t sub_122E9C()
{
  result = qword_1EDCC0;
  if (!qword_1EDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC0);
  }

  return result;
}

uint64_t sub_122EF0()
{
  sub_D2DC();
  v1[287] = v0;
  v1[281] = v2;
  v1[275] = v3;
  v4 = sub_168E14();
  v1[293] = v4;
  sub_10AEC(v4);
  v1[299] = v5;
  v7 = *(v6 + 64) + 15;
  v1[305] = swift_task_alloc();
  v8 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[311] = swift_task_alloc();
  v9 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v9);
  v1[317] = v10;
  v1[323] = *(v11 + 64);
  v1[329] = swift_task_alloc();
  v1[335] = swift_task_alloc();

  return _swift_task_switch(sub_123048, 0, 0);
}

uint64_t sub_123048()
{
  sub_124EFC();
  sub_30C80();
  v1 = v0[281];
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  v2 = sub_1690A4();
  v0[341] = v2;
  v3 = [v2 carName];
  if (v3)
  {
    v4 = v3;
    v5 = v0[335];
    sub_99C94();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[335];
  v8 = v0[329];
  v9 = v0[323];
  v10 = v0[317];
  v11 = v0[311];
  v12 = v0[305];
  v13 = sub_16A0C4();
  sub_5370(v7, v6, 1, v13);
  type metadata accessor for CarCommandsSetTrunkStatusCATsSimple();
  sub_16A154();
  v14 = sub_16A0F4();
  v0[347] = v14;
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[353] = sub_16A0F4();
  sub_16198(v7, v8);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v0[359] = v16;
  *(v16 + 16) = v14;
  sub_16304(v8, v16 + v15);

  sub_124D1C();
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();
  sub_12C0B0();
  sub_F38BC();
  sub_168D84();
  sub_124EE4();

  return _swift_asyncLet_get_throwing(v17);
}

uint64_t sub_123290()
{
  sub_D2DC();
  v1[360] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_1238A4, 0, 0);
  }

  else
  {
    v2 = v1[269];
    v1[361] = v2;
    v3 = v2;

    return _swift_asyncLet_get_throwing(v1 + 2);
  }
}

uint64_t sub_12333C()
{
  sub_D2DC();
  *(v1 + 2896) = v0;
  if (v0)
  {

    return _swift_task_switch(sub_123A38, 0, 0);
  }

  else
  {
    *(v1 + 2904) = *(v1 + 2136);
    *(v1 + 2912) = *(v1 + 2144);

    v2 = sub_124EB0();

    return _swift_asyncLet_get_throwing(v2);
  }
}

uint64_t sub_1233F0()
{
  sub_D2DC();
  v1[365] = v0;
  if (v0)
  {
    v2 = v1[364];
    v3 = v1[361];

    v4 = sub_123BCC;
  }

  else
  {
    v1[366] = type metadata accessor for ConfirmationSnippetFactory();
    v4 = sub_123480;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_123480()
{
  sub_1696C();
  v1 = v0[287];
  v2 = v0[265];
  v0[367] = v0[266];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 247));

  v3 = swift_task_alloc();
  v0[368] = v3;
  *v3 = v0;
  v3[1] = sub_123574;
  v4 = v0[366];
  v5 = v0[364];
  v6 = v0[363];
  v7 = v0[361];
  v8 = v0[305];
  v9 = v0[275];

  return sub_14A94C();
}

uint64_t sub_123574()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = v5[368];
  v7 = v5[367];
  v8 = v5[364];
  v9 = v5[361];
  v10 = *v1;
  sub_D254();
  *v11 = v10;
  *(v3 + 2952) = v0;

  sub_D13C((v3 + 1976));

  if (v0)
  {
    v12 = sub_123D60;
  }

  else
  {
    v12 = sub_1236E0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1236E0()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_1237C4()
{
  sub_30C80();
  v1 = *(v0 + 2872);
  v2 = *(v0 + 2824);
  v3 = *(v0 + 2776);
  v4 = *(v0 + 2680);
  v5 = *(v0 + 2632);
  v6 = *(v0 + 2488);
  v7 = *(v0 + 2440);

  sub_4FAB4(v4);

  sub_D37C();

  return v8();
}

uint64_t sub_1238A4()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *(v10 + 2880);
  sub_124E6C();

  sub_4FAB4(v11);

  sub_D37C();
  sub_124EE4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_123A38()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *(v10 + 2896);
  sub_124E6C();

  sub_4FAB4(v11);

  sub_D37C();
  sub_124EE4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_123BCC()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *(v10 + 2920);
  sub_124E6C();

  sub_4FAB4(v11);

  sub_D37C();
  sub_124EE4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_123D60()
{
  sub_D2DC();
  v0 = sub_124E9C();
  v1(v0);
  v2 = sub_124EB0();

  return _swift_asyncLet_finish(v2);
}

uint64_t sub_123E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *(v10 + 2952);
  sub_124E6C();

  sub_4FAB4(v11);

  sub_D37C();
  sub_124EE4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_123EF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_123F94;

  return sub_C3098();
}

uint64_t sub_123F94()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_D254();
  *v10 = v9;

  if (v0)
  {
    sub_124ED4();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = sub_124EC0();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_1240B8()
{
  **(v0 + 16) = *(v0 + 32);
  sub_D37C();
  return v1();
}

uint64_t sub_1240E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_12417C;

  return sub_C2FC4();
}

uint64_t sub_12417C()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_D254();
  *v10 = v9;

  if (v0)
  {
    sub_124ED4();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = sub_124EC0();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_1242A0()
{
  sub_1696C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = sub_16A134();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  sub_D37C();

  return v6();
}

uint64_t sub_12431C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1243B0;

  return sub_DD4F0();
}

uint64_t sub_1243B0()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_D254();
  *v10 = v9;

  if (v0)
  {
    sub_124ED4();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = sub_124EC0();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_1244D4()
{
  v0 = sub_3D044();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy()
{
  result = qword_1EDCF0;
  if (!qword_1EDCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1245D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return (sub_14B48)(a1, a2, a3);
}

uint64_t sub_1246A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_122EF0();
}

uint64_t sub_124750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_124818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_1248E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_1249A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, v10, a4);
}

uint64_t sub_124A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy();
  *v11 = v5;
  v11[1] = sub_10A9C;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, v12, a5);
}

uint64_t sub_124B40()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10AEC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = sub_16A0C4();
  if (!sub_9E2C(v0 + v4, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v0 + v4, v8);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_124C38()
{
  sub_1696C();
  v2 = v1;
  v3 = *(sub_5758(&qword_1E6300, &qword_16ECE0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = sub_16998(v6);
  *v7 = v8;
  v7[1] = sub_10A9C;

  return sub_123EF4(v2);
}

unint64_t sub_124D1C()
{
  result = qword_1E6308;
  if (!qword_1E6308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6308);
  }

  return result;
}

uint64_t sub_124D60()
{
  sub_D2DC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_1240E8(v3);
}

uint64_t sub_124DE4()
{
  sub_D2DC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_12431C(v3);
}

void sub_124E6C()
{
  v2 = v0[359];
  v3 = v0[353];
  v4 = v0[347];
  v5 = v0[341];
  v6 = v0[335];
  v7 = v0[329];
  v8 = v0[311];
  v9 = v0[305];
}

uint64_t sub_124E9C()
{
  result = v0[305];
  v2 = v0[293];
  v3 = *(v0[299] + 8);
  return result;
}

uint64_t sub_124ED4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id sub_124F28()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_12685C(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_124FC4()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v5 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v6 = type metadata accessor for LockStatusParameters(0);
  v1[42] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1250C4()
{
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EE118, &unk_179660);
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
  v0[31] = 0xD000000000000096;
  v0[32] = 0x800000000018FA40;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v93._countAndFlagsBits = 0xD000000000000025;
    v93._object = 0x8000000000182560;
    sub_16A744(v93);
    v10 = v88;
    v4 = v91;
  }

  else
  {
    v10 = 0xD000000000000025;
  }

  v85 = v10;
  v0[35] = 26;
  v94._countAndFlagsBits = sub_16AE24();
  sub_16A744(v94);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v85, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x42uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v86, v87, v89, v92);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v90, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v90);
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
    v38 = v0[37];
    sub_169094();
    sub_16A1B4();
    v40 = v39;

    v0[44] = v40;
    if (!v40)
    {
      goto LABEL_15;
    }

    v41 = v0[37];
    v42 = sub_1690A4();
    v43 = sub_16AA14();

    if (v43 == 2)
    {

LABEL_15:
      type metadata accessor for CarCommandsError();
      sub_1269A8();
      sub_126814(v44, v45);
      sub_5A144();
      *v46 = 0xD00000000000002DLL;
      v46[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v47 = v0[43];
      v49 = v0[40];
      v48 = v0[41];
      v50 = v0[39];

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v78 = v0[37];
    v79 = v0[38];
    type metadata accessor for LockStatusSnippetFactory();
    v80 = *(*(v79 + 224) + 16);
    v81 = sub_1690A4();
    v0[45] = [v81 carName];

    sub_3CF7C();
    sub_10824(v79 + 184, (v0 + 17));
    v82 = swift_task_alloc();
    v0[46] = v82;
    *v82 = v0;
    v82[1] = sub_A2E38;
    v83 = v0[36];
    sub_D2C0();

    return sub_7C7C4();
  }

  else
  {
    v53 = v0[37];
    v54 = sub_1690A4();
    v55 = sub_16AA14();

    v56 = sub_1690A4();
    v57 = [v56 carName];

    if (v57)
    {
      v58 = v0[41];
      sub_99C94();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v60 = v0[41];
    v61 = v0[37];
    v62 = sub_16A0C4();
    v63 = 1;
    sub_5370(v60, v59, 1, v62);
    sub_169094();
    sub_16A1B4();
    v65 = v64;

    if (v65)
    {
      v66 = v0[40];
      sub_16A6E4();

      v63 = 0;
    }

    v67 = (v55 == 2) | v55;
    v69 = v0[42];
    v68 = v0[43];
    v71 = v0[40];
    v70 = v0[41];
    v72 = v0[39];
    sub_5370(v71, v63, 1, v62);
    sub_16304(v70, v68);
    *(v68 + *(v69 + 20)) = v67 & 1;
    sub_16304(v71, v68 + *(v69 + 24));
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[48] = sub_16A094();
    v73 = swift_task_alloc();
    v0[49] = v73;
    *v73 = v0;
    v73[1] = sub_12573C;
    v74 = v0[43];
    sub_D2C0();

    return sub_157224(v75);
  }
}

uint64_t sub_12573C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 392);
  v10 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_125844()
{
  sub_D2DC();
  v1 = v0[38];
  sub_3CF7C();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_1258F8;
  v3 = v0[50];

  return sub_11AD48();
}

uint64_t sub_1258F8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 416);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_125A00()
{
  sub_1696C();
  v1 = v0[48];
  v2 = v0[43];

  sub_73538(v2);
  v3 = v0[51];
  sub_A4350();

  sub_D37C();

  return v4();
}

uint64_t sub_125A8C()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 344);
  v4 = *(v0 + 288);

  sub_73538(v3);
  sub_D250((v0 + 56), v4);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v8 = *(v0 + 312);

  sub_D37C();

  return v9();
}

uint64_t sub_125B3C()
{
  sub_1696C();
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[43];

  sub_73538(v3);
  v4 = v0[53];
  sub_A4350();

  sub_D37C();

  return v5();
}

uint64_t sub_125BD0(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_125C00()
{
  v1 = v0[24];
  sub_10824(v0[25] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1EE118, &unk_179660);
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
  v0[18] = 0xD000000000000096;
  v0[19] = 0x800000000018FA40;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  sub_15AE4(v7);
  v9 = v8;

  if (v9)
  {
    sub_7C764();
    v61._countAndFlagsBits = 0xD00000000000002DLL;
    v61._object = 0x8000000000185C90;
    sub_16A744(v61);
    v10 = v56;
    v4 = v59;
  }

  else
  {
    v10 = 0xD00000000000002DLL;
  }

  v53 = v10;
  v0[22] = 64;
  v62._countAndFlagsBits = sub_16AE24();
  sub_16A744(v62);

  sub_7C724(v11, v12, v13, v14, v15, v16, v17, v18, v53, v4, 58, 0xE100000000000000);

  v19._countAndFlagsBits = sub_378D0(0x42uLL);
  if (v19._object)
  {
    sub_7C740(v19);

    sub_7C724(v20, v21, v22, v23, v24, v25, v26, v27, v54, v55, v57, v60);
  }

  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v31 = sub_7C7A4(4.8149e-34, v58, v30);

    *(v29 + 4) = v31;
    sub_7C784(&dword_0, v32, v33, "%s");
    sub_D13C(v58);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v34 = v0[25];
  if (*(v34[28] + 16) != 1 || (sub_3CF7C(), v35 = *sub_D084(v34 + 17, v34[20]), (sub_11B5C0() & 1) == 0))
  {
    v45 = v0[23];
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
LABEL_17:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v36 = v0[24];
  sub_169094();
  sub_16A1B4();
  v38 = v37;

  if (!v38 || (v39 = v0[24], , v40 = sub_1690A4(), v41 = sub_16AA14(), v40, v41 == 2))
  {
    type metadata accessor for CarCommandsError();
    sub_1269A8();
    sub_126814(v42, v43);
    sub_5A144();
    *v44 = 0xD00000000000002DLL;
    v44[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
    goto LABEL_17;
  }

  v48 = v0[25];
  type metadata accessor for LockStatusSnippetFactory();
  sub_3CF7C();
  sub_10824(v48 + 184, (v0 + 7));
  v49 = swift_task_alloc();
  v0[26] = v49;
  *v49 = v0;
  v49[1] = sub_7BC20;
  v50 = v0[23];
  sub_D2C0();

  return sub_7D848();
}

uint64_t sub_126074()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetLockStatusHandleIntentFlowStrategy()
{
  result = qword_1EDF18;
  if (!qword_1EDF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_126180(uint64_t a1)
{
  result = sub_126814(&qword_1EE110, type metadata accessor for SetLockStatusHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1261D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_1262A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_126368()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_126428()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_124FC4();
}

uint64_t sub_1264D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_12659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_126664(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1039C;

  return sub_125BD0(a1, a2);
}

uint64_t sub_126710()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_469D0();
}

uint64_t sub_126814(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_12685C(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SESetCarLockStatusIntentHandler();
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
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SESetCarLockStatusIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

uint64_t type metadata accessor for CarCommandsSetCarPlayFanSettingsCATsSimple()
{
  result = qword_1EE120;
  if (!qword_1EE120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_126A4C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_126A70, 0, 0);
}

uint64_t sub_126A70()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x800000000018FB70;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_49014;
  v5 = *(v0 + 16);

  return v7(0xD000000000000036, 0x800000000018FB30, v2);
}

uint64_t sub_126BA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_126BF4(a1, a2);
}

uint64_t sub_126BF4(uint64_t a1, uint64_t a2)
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

uint64_t sub_126D50(uint64_t a1, uint64_t a2)
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

uint64_t sub_126E58()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 248) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 250) = v6;
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

uint64_t sub_126F9C()
{
  if ((*(v0 + 250) & 1) != 0 && ((*(v0 + 248) & 0x100) == 0) | *(v0 + 248) & 1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
      v39 = *(v0 + 248) & 0x100;
    }

    v1 = *(v0 + 128);
    v2 = *(v0 + 96);
    v3 = sub_16A584();
    sub_9DA0(v3, qword_1E65C0);
    sub_16A9A4();
    sub_128D54();
    sub_386D8(v4, v5, v6, v7, v8, v9, 34, v10, 0x800000000018FD80);
    v11 = v1[4];
    sub_D084(v1, v1[3]);
    *(v0 + 80) = sub_16A2E4();
    *(v0 + 88) = sub_52248(&qword_1E7408, &type metadata accessor for CarCommandsToggleSnippetUpdateValue);
    sub_10888((v0 + 56));
    sub_16A2D4();
    sub_168F04();
    sub_D13C((v0 + 56));
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);

    sub_D37C();
    sub_7DDB4();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
    v38 = *(v0 + 248);
  }

  v15 = sub_16A584();
  sub_9DA0(v15, qword_1E65C0);
  sub_16A9A4();
  sub_128D54();
  sub_386D8(v16, v17, v18, v19, v20, v21, 40, v22, 0x800000000018FD30);
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  v23[1] = sub_127264;
  v24 = *(v0 + 136);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 104);
  v28 = *(v0 + 250);
  sub_7DDB4();

  return sub_127C94(v29, v30, v31, v32, v33);
}

uint64_t sub_127264()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
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
    v14 = *(v3 + 248);
    v15 = swift_task_alloc();
    *(v3 + 216) = v15;
    *v15 = v7;
    v15[1] = sub_1273FC;
    v16 = *(v3 + 192);
    v17 = *(v3 + 136);
    v18 = *(v3 + 112);
    v19 = *(v3 + 120);
    v20 = *(v3 + 104);

    return sub_128638(v16, v20, v18, v19, v14 & 0x101);
  }
}

uint64_t sub_1273FC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1274F4()
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
  v15[1] = sub_1276DC;
  v16 = v0[21];
  v17 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v11, v16, v9, v19);
}

uint64_t sub_1276DC()
{
  sub_D358();
  v2 = v1;
  sub_10AA4();
  *v3 = v2;
  v5 = v4[30];
  v6 = v4[29];
  v7 = v4[21];
  v8 = v4[20];
  v9 = v4[19];
  v10 = *v0;
  sub_D254();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_D13C((v2 + 16));
  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_127848()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  v3 = *(*(sub_16A164() - 8) + 64);
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1278C8()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = v0[9];
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 2uLL, 0xD000000000000093, 0x800000000018FBD0, 0xD000000000000036, 0x800000000018FC70, 64, 0xD000000000000044, 0x800000000018FCB0);
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[10] = sub_16A0F4();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_127A24;

  return sub_DDC04();
}

uint64_t sub_127A24()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
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

void sub_127B2C()
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

uint64_t sub_127C94(char a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 208) = a5;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 88) = a2;
  *(v5 + 210) = a1;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v7 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_127D74, 0, 0);
}

uint64_t sub_127D74()
{
  if (*(v0 + 210) == 2)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 104);
    type metadata accessor for CarCommandsGetSignalActivationStatusCATsSimple();
    sub_122738();
    *(v0 + 184) = sub_52464();
    if (v2)
    {
      v3 = *(v0 + 120);
      v4 = *(v0 + 104);
      sub_99C94();
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 208);
    v15 = sub_16A0C4();
    sub_5370(v10, v5, 1, v15);
    sub_16A6E4();
    sub_5370(v11, 0, 1, v15);
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    *v16 = v0;
    v16[1] = sub_1282D8;
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);

    return sub_E2258(v18, HIBYTE(v14) & 1, v14 & 1, v17);
  }

  else
  {
    v6 = *(v0 + 128);
    if ((*(v0 + 208) & 0x100) != 0)
    {
      type metadata accessor for CarCommandsActivateSignalCATsSimple();
      sub_122738();
      *(v0 + 136) = sub_52464();
      v9 = swift_task_alloc();
      *(v0 + 144) = v9;
      *v9 = v0;
      v9[1] = sub_127FDC;

      return sub_31CCC();
    }

    else
    {
      type metadata accessor for CarCommandsDeactivateSignalCATsSimple();
      sub_122738();
      *(v0 + 160) = sub_52464();
      v7 = swift_task_alloc();
      *(v0 + 168) = v7;
      *v7 = v0;
      v7[1] = sub_12815C;

      return sub_7A7FC();
    }
  }
}

uint64_t sub_127FDC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1280DC()
{
  sub_1696C();
  v1 = v0[3];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];

  v6 = sub_302B8();

  return v7(v6);
}

uint64_t sub_12815C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 176) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_12825C()
{
  sub_1696C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 160);
  sub_128D70();

  v3 = sub_302B8();

  return v4(v3);
}

uint64_t sub_1282D8()
{
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v6 = v5[24];
  v7 = v5[15];
  v8 = v5[14];
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  *(v11 + 200) = v0;

  sub_D188(v8, &qword_1E6300, &qword_16ECE0);
  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_128444()
{
  sub_1696C();
  v1 = *(v0 + 72);
  v2 = *(v0 + 184);
  sub_128D70();

  v3 = sub_302B8();

  return v4(v3);
}

uint64_t sub_1284C0()
{
  sub_1696C();
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];

  sub_D37C();

  return v6();
}

uint64_t sub_128540()
{
  sub_1696C();
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  sub_128D70();

  sub_D37C();

  return v3();
}

uint64_t sub_1285BC()
{
  sub_1696C();
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  sub_128D70();

  sub_D37C();

  return v3();
}

uint64_t sub_128638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 120) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_16A274();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v10 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_128764, 0, 0);
}

uint64_t sub_128764()
{
  sub_1696C();
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  type metadata accessor for CarCommandsCATsSimple();
  sub_122738();
  *(v0 + 88) = sub_52464();
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 40);
    sub_99C94();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 120);
  v8 = sub_16A0C4();
  sub_5370(v6, v5, 1, v8);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_128864;
  v10 = *(v0 + 72);

  return sub_DE480();
}

uint64_t sub_128864()
{
  sub_1696C();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[9];
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v11 + 104) = v10;
  *(v11 + 112) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1289B0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  *(v0 + 122) = 0;
  sub_16A134();
  *(v0 + 123) = 2;
  sub_16A134();
  *(v0 + 124) = 1;
  sub_16A134();
  *(v0 + 125) = 4;
  sub_16A134();
  *(v0 + 126) = 3;
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

  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v20 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = *(v0 + 120);
  v14 = *(v0 + 16);
  v19 = *(v0 + 24);
  sub_16A264();

  (*(v10 + 32))(v14, v11, v12);
  v15 = sub_16A284();
  v16 = &enum case for CarCommandsSnippetsPluginModel.visibleSignalStatusModel(_:);
  if ((v13 & 1) == 0)
  {
    v16 = &enum case for CarCommandsSnippetsPluginModel.audibleSignalStatusModel(_:);
  }

  (*(*(v15 - 8) + 104))(v14, *v16, v15);

  sub_D37C();

  return v17();
}

uint64_t sub_128BBC()
{
  sub_D2DC();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_D37C();
  v5 = v0[14];

  return v4();
}

uint64_t storeEnumTagSinglePayload for SignalStatusSnippetFactory.SignalStatusParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x128D1CLL);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_128D70()
{
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
}

uint64_t type metadata accessor for CarCommandsGetTrunkStatusCATsSimple()
{
  result = qword_1EE220;
  if (!qword_1EE220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_128E14(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  v5 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_128EC4, 0, 0);
}

uint64_t sub_128EC4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_16EE50;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 48);
  if (v5 == 1)
  {
    sub_4EAF4(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_10888((v3 + 48));
    sub_4EB50(v4);
    (*(v7 + 32))();
  }

  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = *(v0 + 80);
  *(v3 + 80) = 0x6F6C436B6E757274;
  *(v3 + 88) = 0xEB00000000646573;
  *(v3 + 96) = v10;
  *(v3 + 120) = &type metadata for Bool;
  strcpy((v3 + 128), "appIdentifer");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  sub_4EA90(v9, v8, &qword_1E6300, &qword_16ECE0);
  v11 = sub_9E2C(v8, 1, v4);
  v12 = *(v0 + 40);
  if (v11 == 1)
  {
    sub_4EAF4(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    sub_10888((v3 + 144));
    sub_4EB50(v4);
    (*(v13 + 32))();
  }

  v14 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v18 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_4E5D8;
  v16 = *(v0 + 32);

  return v18(0xD00000000000002FLL, 0x800000000018FE10, v3);
}

uint64_t sub_129170(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1291C4(a1, a2);
}

uint64_t sub_1291C4(uint64_t a1, uint64_t a2)
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
  sub_4EA90(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_4EAF4(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_129340(uint64_t a1, uint64_t a2)
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

uint64_t sub_129458()
{
  sub_D2DC();
  v1[57] = v2;
  v1[58] = v0;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[59] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1294E0()
{
  sub_10824(*(v0 + 456), v0 + 56);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EE270, &qword_179828);
  if (!swift_dynamicCast())
  {
    v16 = *(v0 + 456);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_D188(v0 + 96, &qword_1EE278, &qword_179830);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v18 = v17;
    sub_16ACF4(64);
    *(v0 + 416) = 0;
    *(v0 + 424) = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD000000000000016;
    v31._object = 0x8000000000184C00;
    sub_16A744(v31);
    sub_16AD84();
    v32._countAndFlagsBits = 0xD000000000000028;
    v32._object = 0x800000000018FE40;
    sub_16A744(v32);
    v19 = *(v0 + 424);
    *v18 = *(v0 + 416);
    v18[1] = v19;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v20 = *(v0 + 472);

    sub_D37C();
    sub_30DE4();

    __asm { BRAA            X1, X16 }
  }

  sub_D124((v0 + 96), v0 + 16);
  v1 = *sub_D084((v0 + 16), *(v0 + 40));
  v2 = sub_8EF6C();
  *(v0 + 640) = v2;
  if (v2 == 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v3 = *(v0 + 464);
    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_12AF44();
    sub_386D8(v5, v6, v7, v8, v9, v10, 21, v11, v30);
    sub_3024C(&unk_179C58);
    v12 = *v3;
    v13 = swift_task_alloc();
    *(v0 + 608) = v13;
    *v13 = v0;
    sub_12AED4(v13);
    sub_30DE4();

    __asm { BR              X1 }
  }

  v23 = *sub_D084((*(v0 + 464) + 8), *(*(v0 + 464) + 32));
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 480) = v24;
  *v24 = v25;
  v24[1] = sub_129838;
  sub_30DE4();

  return sub_13AB58(v26, v27);
}

uint64_t sub_129838()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 488) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_129930()
{
  v1 = v0[20];
  v2 = v0[21];
  sub_D084(v0 + 17, v1);
  v3 = *(v2 + 64);
  sub_12AF54();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  sub_D3E0();
  v0[62] = v7;
  *v7 = v8;
  v7[1] = sub_129A50;

  return (v10)(v0 + 27, v1, v2);
}

uint64_t sub_129A50()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 504) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_129B48()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[61];
  v2 = v0[59];

  sub_D37C();

  return v3();
}

uint64_t sub_129BAC()
{
  if (!*(v0 + 240))
  {
    sub_D188(v0 + 216, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v21 = *(v0 + 464);
    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_12AF44();
    sub_386D8(v23, v24, v25, v26, v27, v28, 28, v29, v46);
    sub_3024C(&unk_172FB8);
    v47 = v30;
    v31 = *v21;
    v32 = swift_task_alloc();
    *(v0 + 592) = v32;
    *v32 = v0;
    v20 = sub_12AED4(v32);

    return v47(v20);
  }

  v1 = *(v0 + 464);
  sub_D124((v0 + 216), v0 + 176);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_D084((v0 + 176), v2);
  v4 = (*(v3 + 72))(v2, v3);
  *(v0 + 512) = v4;
  v5 = sub_D084((v1 + 48), *(v1 + 72));
  v6 = sub_13324C(v4);
  v8 = sub_948E4(v6, *v5, v7);

  v9 = v8[2];

  if (v9)
  {
    v10 = *(v4 + 16);
    *(v0 + 520) = v10;
    *(v0 + 528) = 0;
    result = *(v0 + 512);
    if (v10)
    {
      if (*(result + 16))
      {
        v12 = *(v0 + 640);
        sub_10824(result + 32, v0 + 256);
        v13 = *(v0 + 288);
        sub_D084((v0 + 256), *(v0 + 280));
        v14 = *(sub_71920() + 16);
        sub_12AF54();
        v47 = (v15 + *v15);
        v17 = *(v16 + 4);
        swift_task_alloc();
        sub_D3E0();
        *(v0 + 536) = v18;
        *v18 = v19;
        v20 = sub_12AE7C(v18);

        return v47(v20);
      }

      __break(1u);
    }

    else
    {
      v41 = *(v0 + 472);
      v42 = *(v0 + 640);

      type metadata accessor for CarCommandsSetCarPlayClimateSyncCATsSimple();
      sub_16A154();
      *(v0 + 552) = sub_16A0F4();
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 560) = v43;
      *v43 = v44;
      v45 = sub_12AEAC(v43);

      return sub_15F73C(v45);
    }
  }

  else
  {
    v33 = *(v0 + 464);

    v34 = *(v1 + 72);
    v35 = *(v33 + 80);
    sub_D084((v1 + 48), v34);
    v36 = *(sub_71920() + 40);
    sub_12AF54();
    v48 = (v37 + *v37);
    v39 = *(v38 + 4);
    v40 = swift_task_alloc();
    *(v0 + 576) = v40;
    *v40 = v0;
    v40[1] = sub_12A450;

    return v48(v34, v35);
  }

  return result;
}

uint64_t sub_129FFC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = v2[67];
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v3[68] = v0;

  if (v0)
  {
    v7 = v3[64];
    sub_D13C(v3 + 32);
  }

  else
  {
    sub_D13C(v3 + 32);
  }

  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_12A118()
{
  v1 = *(v0 + 528) + 1;
  *(v0 + 528) = v1;
  result = *(v0 + 512);
  if (v1 == *(v0 + 520))
  {
    v3 = *(v0 + 472);
    v4 = *(v0 + 640);

    type metadata accessor for CarCommandsSetCarPlayClimateSyncCATsSimple();
    sub_16A154();
    *(v0 + 552) = sub_16A0F4();
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 560) = v5;
    *v5 = v6;
    v7 = sub_12AEAC(v5);

    return sub_15F73C(v7);
  }

  else if (v1 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 640);
    sub_10824(result + 40 * v1 + 32, v0 + 256);
    v9 = *(v0 + 288);
    sub_D084((v0 + 256), *(v0 + 280));
    v14 = (sub_71920() + 16);
    v15 = (*v14 + **v14);
    v10 = (*v14)[1];
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 536) = v11;
    *v11 = v12;
    v13 = sub_12AE7C();

    return v15(v13);
  }

  return result;
}

uint64_t sub_12A2E8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v2[37] = v1;
  v2[38] = v4;
  v2[39] = v0;
  sub_71940();
  v6 = *(v5 + 560);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[71] = v0;

  if (!v0)
  {
    v9 = v3[69];
  }

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_12A3F4()
{
  sub_D2DC();
  sub_12AF18();
  v1 = *(v0 + 304);
  sub_12AEE8();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_12A450()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[40] = v1;
  v2[41] = v4;
  v2[42] = v0;
  sub_71940();
  v6 = *(v5 + 576);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_12A54C()
{
  sub_D2DC();
  sub_12AF18();
  v1 = *(v0 + 328);
  sub_12AEE8();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_12A5A8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[43] = v1;
  v2[44] = v4;
  v2[45] = v0;
  sub_71940();
  v6 = *(v5 + 592);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_12A6A4()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = *(v0 + 352);
  sub_12AEE8();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_12A704()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[46] = v1;
  v2[47] = v4;
  v2[48] = v0;
  sub_71940();
  v6 = *(v5 + 608);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 616) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_12A800()
{
  sub_D2DC();
  v1 = *(v0 + 376);
  sub_12AEE8();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_12A858()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[77];
  v2 = v0[59];

  sub_D37C();

  return v3();
}

uint64_t sub_12A8BC()
{
  sub_D2DC();
  sub_D13C(v0 + 17);
  sub_D13C(v0 + 2);
  v1 = v0[75];
  v2 = v0[59];

  sub_D37C();

  return v3();
}

uint64_t sub_12A928()
{
  sub_D2DC();
  sub_D13C(v0 + 17);
  sub_D13C(v0 + 2);
  v1 = v0[63];
  v2 = v0[59];

  sub_D37C();

  return v3();
}

uint64_t sub_12A994()
{
  sub_D2DC();
  sub_12AF18();
  sub_D13C(v0 + 2);
  v1 = v0[73];
  v2 = v0[59];

  sub_D37C();

  return v3();
}

void sub_12A9FC()
{
  v1 = v0[68];
  sub_16ACF4(35);
  v0[54] = 0;
  v0[55] = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000021;
  v16._object = 0x800000000018FF60;
  sub_16A744(v16);
  v0[56] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v3 = v0[54];
  v2 = v0[55];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v4 = v0[58];
  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  sub_16A9A4();
  sub_12AF44();
  sub_386D8(v6, v7, v8, v9, v10, v11, 44, v3, v2);

  sub_3024C(&unk_174EF8);
  v12 = *v4;
  v13 = swift_task_alloc();
  v0[78] = v13;
  *v13 = v0;
  sub_12AED4(v13);
  sub_30DE4();

  __asm { BR              X1 }
}

uint64_t sub_12ABA8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[49] = v1;
  v2[50] = v4;
  v2[51] = v0;
  sub_71940();
  v6 = *(v5 + 624);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 632) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_12ACA4()
{
  sub_D2DC();
  v1 = *(v0 + 544);

  sub_12AF18();
  v2 = *(v0 + 400);
  sub_12AEE8();
  v3 = sub_302B8();

  return v4(v3);
}

uint64_t sub_12AD08()
{
  sub_D2DC();
  v1 = v0[68];

  sub_12AF18();
  sub_D13C(v0 + 2);
  v2 = v0[79];
  v3 = v0[59];

  sub_D37C();

  return v4();
}

uint64_t sub_12AD78()
{
  sub_D2DC();
  v1 = v0[69];

  sub_12AF18();
  sub_D13C(v0 + 2);
  v2 = v0[71];
  v3 = v0[59];

  sub_D37C();

  return v4();
}

uint64_t sub_12ADE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_129458();
}

uint64_t sub_12AED4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 464);
  return v2;
}

uint64_t sub_12AEE8()
{
  v1 = *(v0 + 472);
  sub_D13C((v0 + 16));
}

uint64_t sub_12AF18()
{
  sub_D13C((v0 + 176));

  return sub_D13C((v0 + 136));
}

uint64_t sub_12AF64(unint64_t a1, void *a2)
{
  v24 = a1;
  v23 = sub_168454();
  v3 = sub_9F48(v23);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4();
  }

  sub_12B5F8();
  sub_168DB4();
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  v10 = sub_12D81C();
  *(v10 + 16) = xmmword_16D9A0;
  v25 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
  v26 = v11;

  v27._countAndFlagsBits = sub_12D7C4();
  v27._object = 0xE700000000000000;
  sub_16A744(v27);

  v12 = v25;
  v13 = v26;
  v14 = sub_12D7EC();
  v16 = v15;
  v25 = v12;
  v26 = v13;

  v28._countAndFlagsBits = v14;
  v28._object = v16;
  sub_16A744(v28);

  v17 = v26;
  *(v10 + 32) = v25;
  *(v10 + 40) = v17;
  sub_168DA4();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_16D3A0;
  if (qword_1E5910 != -1)
  {
    sub_12D7D8();
    swift_once();
  }

  *(v18 + 32) = sub_12B738(&qword_1EBC70, &qword_176FE8, &qword_1EBC78);
  *(v18 + 40) = v19;
  if (qword_1E5930 != -1)
  {
    swift_once();
  }

  *(v18 + 48) = sub_12B738(&qword_1EBC20, &qword_176FC0, &qword_1EBC28);
  *(v18 + 56) = v20;
  sub_168DE4();
  sub_168D94();
  v21 = a2[4];
  sub_D084(a2, a2[3]);
  sub_168AD4();
  sub_12CAE4(v24, v9);
  (*(v5 + 8))(v9, v23);
  sub_168D74();
  sub_F3214();
  return sub_168D84();
}

void sub_12B25C()
{
  v0 = [objc_allocWithZone(SAAceConfirmationContext) init];
  v1 = sub_16A664();
  sub_12D6EC(v1, v2, v0);
  sub_12C0B0();
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_16D440;
  *(v3 + 32) = v0;
  v7 = v0;
  sub_168DC4();
  v4 = sub_169134();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_169124();
  sub_16A1B4();
  sub_169104();

  sub_169114();

  sub_168DF4();
  sub_F4CF4();
  sub_168D84();
}

uint64_t sub_12B3C4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_16A724();
    v1 = sub_16A794();

    return v1;
  }

  return result;
}

uint64_t sub_12B484(unsigned __int8 a1)
{
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4();
  }

  sub_12B5F8();
  sub_168DB4();
  if (a1 <= 0xF7u)
  {
    sub_12B898(a1);
    sub_168DE4();
    sub_12BBA4(a1);
    sub_168DD4();
  }

  sub_5758(&qword_1E5F70, &unk_16F3F0);
  v2 = sub_12D81C();
  *(v2 + 16) = xmmword_16D9A0;
  v8 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
  v9 = v3;

  v10._countAndFlagsBits = sub_12D7C4();
  v10._object = 0xE700000000000000;
  sub_16A744(v10);

  v4 = sub_12D7EC();
  v6 = v5;

  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_16A744(v11);

  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  sub_168DA4();
  sub_168D94();
  sub_F483C();
  return sub_168D84();
}

unint64_t sub_12B5F8()
{
  sub_1696B4();
  v0 = sub_1696E4();
  sub_8A160(v0, v1);
  v3 = v2;

  if (v3)
  {
    v4 = sub_16A5E4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v10._countAndFlagsBits = v4;
  v10._object = v6;
  sub_16A744(v10);

  v7 = sub_1696E4();
  sub_12D618(1uLL, v7, v8);
  sub_12D750();

  sub_16A734();

  return 0xD000000000000012;
}

unint64_t sub_12B738(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  sub_5758(a1, a2);
  sub_EAA28(a3, a1, a2);
  v6 = sub_1696E4();
  sub_8A160(v6, v7);
  v9 = v8;

  if (v9)
  {
    v10 = sub_16A5E4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v16._countAndFlagsBits = v10;
  v16._object = v12;
  sub_16A744(v16);

  v13 = sub_1696E4();
  sub_12D618(1uLL, v13, v14);
  sub_12D750();

  sub_16A734();

  return 0xD000000000000012;
}

uint64_t sub_12B898(unsigned __int8 a1)
{
  switch(a1 >> 4)
  {
    case 0:
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_16D9A0;
      v4 = &type metadata for CarCommandsNounNLv3Value;
      v5 = &unk_1EE298;
      v6 = &unk_179848;
      goto LABEL_16;
    case 1:
    case 2:
    case 4:
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_16D9A0;
      v4 = &type metadata for CarCommandsSettingsStateNLv3Value;
      v5 = &unk_1EE2A0;
      v6 = &unk_179850;
LABEL_16:
      v7 = sub_12CFD4(v4, v5, v6);
      goto LABEL_20;
    case 5:
      if ((a1 & 0xF) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 6:
      if (a1)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 10:
      if ((a1 + 96) >= 3u)
      {
        goto LABEL_9;
      }

LABEL_17:
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_16D9A0;
      if (qword_1E5958 != -1)
      {
        swift_once();
      }

      v7 = sub_12B738(&qword_1EBC70, &qword_176FE8, &qword_1EBC78);
LABEL_20:
      *(v3 + 32) = v7;
      *(v3 + 40) = v8;
      break;
    default:
LABEL_9:
      sub_16ACF4(24);
      v10._object = 0x8000000000190050;
      v10._countAndFlagsBits = 0xD000000000000015;
      sub_16A744(v10);
      sub_16AD84();
      v11._countAndFlagsBits = 34;
      v11._object = 0xE100000000000000;
      sub_16A744(v11);
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v1 = sub_16A584();
      sub_9DA0(v1, qword_1E65C0);
      v2 = sub_16A9A4();
      sub_386D8(v2, 8uLL, 0xD000000000000077, 0x800000000018FFB0, 0xD000000000000015, 0x8000000000190070, 201, 0, 0xE000000000000000);

      v3 = 0;
      break;
  }

  return v3;
}

void *sub_12BBA4(unsigned __int8 a1)
{
  switch(a1 >> 4)
  {
    case 0:
      if ((a1 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v3 = swift_allocObject();
      *(v3 + 1) = xmmword_175690;
      v3[4] = sub_12BFD4(30);
      v3[5] = v10;
      v3[6] = sub_12BFD4(16);
      v3[7] = v11;
      v3[8] = sub_12BFD4(1);
      v3[9] = v12;
      v3[10] = sub_12BFD4(7);
      v3[11] = v13;
      v3[12] = sub_12BFD4(19);
      v3[13] = v14;
      v3[14] = sub_12BFD4(6);
      v3[15] = v15;
      v3[16] = sub_12BFD4(37);
      v3[17] = v16;
      v26 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
      v28 = v17;

      v33._countAndFlagsBits = 0x2E65756C61562ELL;
      v33._object = 0xE700000000000000;
      sub_16A744(v33);

      v18 = sub_16A6B4();
      v20 = v19;

      v34._countAndFlagsBits = v18;
      v34._object = v20;
      sub_16A744(v34);

      v3[18] = v26;
      v3[19] = v28;
      return v3;
    case 1:
    case 2:
    case 4:
      if (a1)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    case 3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_20;
      }

      v3 = sub_12D33C();
      v25 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
      v27 = v4;

      v31._countAndFlagsBits = 0x2E65756C61562ELL;
      v31._object = 0xE700000000000000;
      sub_16A744(v31);

      v5 = sub_16A6B4();
      v7 = v6;

      v32._countAndFlagsBits = v5;
      v32._object = v7;
      sub_16A744(v32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v3[2];
        sub_1084D8();
        v3 = v23;
      }

      v8 = v3[2];
      if (v8 >= v3[3] >> 1)
      {
        sub_1084D8();
        v3 = v24;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v25;
      v9[5] = v27;
      break;
    case 5:
      if ((a1 & 0xF) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    case 6:
      if (a1)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    case 10:
      if ((a1 + 96) >= 3u)
      {
        goto LABEL_9;
      }

LABEL_20:
      v3 = _swiftEmptyArrayStorage;
      break;
    default:
LABEL_9:
      sub_16ACF4(24);
      v29._object = 0x8000000000190050;
      v29._countAndFlagsBits = 0xD000000000000015;
      sub_16A744(v29);
      sub_16AD84();
      v30._countAndFlagsBits = 34;
      v30._object = 0xE100000000000000;
      sub_16A744(v30);
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v1 = sub_16A584();
      sub_9DA0(v1, qword_1E65C0);
      v2 = sub_16A9A4();
      sub_386D8(v2, 8uLL, 0xD000000000000077, 0x800000000018FFB0, 0xD000000000000015, 0x8000000000190030, 235, 0, 0xE000000000000000);

      v3 = 0;
      break;
  }

  return v3;
}

unint64_t sub_12BFD4(char a1)
{
  v6 = sub_12CFD4(&type metadata for CarCommandsNounNLv3Value, &qword_1EE298, &qword_179848);

  v7._countAndFlagsBits = 0x2E65756C61562ELL;
  v7._object = 0xE700000000000000;
  sub_16A744(v7);

  sub_77154(a1);
  v2 = sub_16A6B4();
  v4 = v3;

  v8._countAndFlagsBits = v2;
  v8._object = v4;
  sub_16A744(v8);

  return v6;
}

uint64_t sub_12C0B0()
{
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4();
  }

  sub_12B5F8();
  sub_168DB4();
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  v0 = sub_12D81C();
  *(v0 + 16) = xmmword_16D9A0;
  *(v0 + 32) = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);
  *(v0 + 40) = v1;
  sub_168DE4();
  sub_12D09C();
  sub_168DD4();
  *(sub_12D81C() + 16) = xmmword_16D9A0;
  v6 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);

  v7._countAndFlagsBits = sub_12D7C4();
  v7._object = 0xE700000000000000;
  sub_16A744(v7);

  v2 = sub_12D7EC();
  v4 = v3;

  v8._countAndFlagsBits = v2;
  v8._object = v4;
  sub_16A744(v8);

  sub_12D80C(v6);
  sub_168DA4();
  return sub_168D94();
}

uint64_t sub_12C22C(unsigned __int8 a1, uint64_t a2)
{
  sub_168E04();
  if (qword_1E5960 != -1)
  {
    sub_12D7A4();
  }

  sub_12B5F8();
  sub_168DB4();
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  *(sub_12D81C() + 16) = xmmword_16D9A0;
  v11 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);

  v13._countAndFlagsBits = sub_12D7C4();
  v13._object = 0xE700000000000000;
  sub_16A744(v13);

  v3 = sub_16A6B4();
  v5 = v4;

  v14._countAndFlagsBits = v3;
  v14._object = v5;
  sub_16A744(v14);

  sub_12D80C(v11);
  sub_168DD4();
  *(sub_12D81C() + 16) = xmmword_16D9A0;
  v12 = sub_12CFD4(&type metadata for CarCommandsConfirmationNLv3Value, &qword_1EE290, &qword_179840);

  v15._countAndFlagsBits = sub_12D7C4();
  v15._object = 0xE700000000000000;
  sub_16A744(v15);

  v6 = sub_16A6B4();
  v8 = v7;

  v16._countAndFlagsBits = v6;
  v16._object = v8;
  sub_16A744(v16);

  sub_12D80C(v12);
  sub_168DA4();
  sub_168D94();
  if (a1 <= 0xF7u)
  {
    sub_12B898(a1);
    sub_168DE4();
  }

  sub_12C478(a2, a1);
  sub_168D74();
  sub_F4044();
  return sub_168D84();
}

void *sub_12C478(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = sub_5758(&qword_1EE280, &qword_179838);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v41 - v7;
  v48 = sub_168C44();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v48);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v47 = sub_168B94();
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v47);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  if (v4 <= 0xF7)
  {
    switch(a2 >> 4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        if (a2)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      case 5:
        if ((a2 & 0xF) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      case 6:
        if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      case 10:
        if ((a2 + 96) >= 3u)
        {
          goto LABEL_13;
        }

LABEL_4:
        v20 = *(a1 + 16);
        v21 = _swiftEmptyArrayStorage;
        if (v20)
        {
          v45 = &v41 - v19;
          v51 = _swiftEmptyArrayStorage;
          sub_146AC0();
          v43 = v14;
          v44 = (v8 + 16);
          v21 = v51;
          v41 = v14 + 32;
          v42 = (v8 + 8);
          v22 = (a1 + 40);
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v25 = qword_1E5958;

            if (v25 != -1)
            {
              swift_once();
            }

            sub_1696D4();
            sub_12B738(&qword_1EBC70, &qword_176FE8, &qword_1EBC78);
            sub_168C24();
            v26 = *v44;
            v28 = v48;
            v27 = v49;
            (*v44)(v49, v13, v48);
            sub_5370(v27, 0, 1, v28);
            v26(v46, v13, v28);
            v29 = v45;
            sub_168B84();

            (*v42)(v13, v28);
            v51 = v21;
            v30 = v21[2];
            if (v30 >= v21[3] >> 1)
            {
              sub_146AC0();
              v29 = v45;
              v21 = v51;
            }

            v21[2] = v30 + 1;
            (*(v43 + 32))(v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v30, v29, v47);
            v22 += 2;
            --v20;
          }

          while (v20);
        }

        return v21;
      default:
LABEL_13:
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_16ACF4(24);
        v53._object = 0x8000000000190050;
        v53._countAndFlagsBits = 0xD000000000000015;
        sub_16A744(v53);
        v50 = a2;
        sub_16AD84();
        v54._countAndFlagsBits = 34;
        v54._object = 0xE100000000000000;
        sub_16A744(v54);
        v31 = v51;
        v32 = v52;
        if (qword_1E58E8 != -1)
        {
          swift_once();
        }

        v33 = sub_16A584();
        sub_9DA0(v33, qword_1E65C0);
        v34 = sub_16A9A4();
        sub_386D8(v34, 8uLL, 0xD000000000000077, 0x800000000018FFB0, 0xD000000000000017, 0x8000000000190090, 175, v31, v32);

        break;
    }
  }

  v35 = *(a1 + 16);
  v21 = _swiftEmptyArrayStorage;
  if (v35)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_146AC0();
    v21 = v51;
    v36 = (a1 + 40);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      sub_5370(v49, 1, 1, v48);
      swift_bridgeObjectRetain_n();
      sub_168C34();
      sub_168B84();

      v51 = v21;
      v39 = v21[2];
      if (v39 >= v21[3] >> 1)
      {
        sub_146AC0();
        v21 = v51;
      }

      v21[2] = v39 + 1;
      (*(v14 + 32))(v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v39, v18, v47);
      v36 += 2;
      --v35;
    }

    while (v35);
  }

  return v21;
}

void *sub_12CAE4(unint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_5758(&qword_1EE280, &qword_179838);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &v43 - v5;
  v48 = sub_168B94();
  v6 = sub_9F48(v48);
  v50 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v57 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_168C44();
  v11 = sub_9F48(v56);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v55 = &v43 - v19;
  result = __chkstk_darwin(v18);
  v22 = &v43 - v21;
  if (!(a1 >> 62))
  {
    v23 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v23)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  result = sub_16ADC4();
  v23 = result;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v23 >= 1)
  {
    v54 = v22;
    v24 = 0;
    v58 = a1 & 0xC000000000000001;
    v44 = (v13 + 8);
    v45 = (v13 + 16);
    v43 = v50 + 32;
    v25 = _swiftEmptyArrayStorage;
    v51 = a1;
    v46 = v23;
    do
    {
      if (v58)
      {
        sub_16AD04();
      }

      else
      {
        v26 = *(a1 + 8 * v24 + 32);
      }

      v27 = sub_169074();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();

      sub_169064();
      sub_16A1B4();
      if (v30)
      {
        sub_169054();
        if (v31)
        {
          if (qword_1E5918 != -1)
          {
            swift_once();
          }

          v53 = v25;
          sub_1696D4();
          v32 = v54;
          sub_168C34();
          if (qword_1E5910 != -1)
          {
            sub_12D7D8();
            swift_once();
          }

          sub_1696D4();
          v33 = v55;
          sub_168C34();
          v34 = *v45;
          v35 = v49;
          v36 = v56;
          (*v45)(v49, v32, v56);
          sub_5370(v35, 0, 1, v36);
          v34(v47, v33, v36);
          sub_168B84();
          v25 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = v25[2];
            sub_1085A8();
            v25 = v41;
          }

          v23 = v46;
          v37 = v25[2];
          if (v37 >= v25[3] >> 1)
          {
            sub_1085A8();
            v25 = v42;
          }

          v38 = *v44;
          v39 = v56;
          (*v44)(v55, v56);
          v38(v54, v39);
          v25[2] = v37 + 1;
          (*(v50 + 32))(v25 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v37, v57, v48);
        }

        else
        {
        }

        a1 = v51;
      }

      else
      {
      }

      ++v24;
    }

    while (v23 != v24);
    return v25;
  }

  __break(1u);
  return result;
}

unint64_t sub_12CFD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_5758(a2, a3);
  sub_16A694();
  v3 = sub_16A704();
  sub_12B3C4(v3);
  sub_12D750();
  sub_16A734();

  return 0xD000000000000012;
}

uint64_t sub_12D09C()
{
  sub_146878(0, 3, 0);
  v0 = 0;
  while (1)
  {
    v1 = *(&off_1D1868 + v0 + 32);
    sub_5758(&qword_1EE290, &qword_179840);
    sub_16A694();
    result = sub_16A704();
    if (result < 0)
    {
      break;
    }

    sub_16A724();
    sub_16A794();

    sub_12D750();
    sub_16A734();

    v9._countAndFlagsBits = 0x2E65756C61562ELL;
    v9._object = 0xE700000000000000;
    sub_16A744(v9);

    v3 = sub_16A6B4();
    v5 = v4;

    v10._countAndFlagsBits = v3;
    v10._object = v5;
    sub_16A744(v10);

    v7 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    if (v7 >= v6 >> 1)
    {
      sub_146878(v6 > 1, v7 + 1, 1);
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v7 + 1;
    v8 = &_swiftEmptyArrayStorage[2 * v7];
    *(v8 + 4) = 0xD000000000000012;
    *(v8 + 5) = 0x800000000018FF90;
    if (v0 == 3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

void *sub_12D33C()
{
  sub_146878(0, 4, 0);
  v0 = 0;
  do
  {
    v1 = *(&off_1D2F50 + v0 + 32);
    sub_5758(qword_1EE2A0, &unk_179850);
    sub_16A694();
    if (sub_16A704() < 0)
    {
      __break(1u);
      JUMPOUT(0x12D608);
    }

    sub_16A724();
    sub_16A794();

    sub_12D750();
    sub_16A734();

    v9._countAndFlagsBits = 0x2E65756C61562ELL;
    v9._object = 0xE700000000000000;
    sub_16A744(v9);

    v2 = sub_16A6B4();
    v4 = v3;

    v10._countAndFlagsBits = v2;
    v10._object = v4;
    sub_16A744(v10);

    v6 = _swiftEmptyArrayStorage[2];
    v5 = _swiftEmptyArrayStorage[3];
    if (v6 >= v5 >> 1)
    {
      sub_146878(v5 > 1, v6 + 1, 1);
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v6 + 1;
    v7 = &_swiftEmptyArrayStorage[2 * v6];
    v7[4] = 0xD000000000000012;
    v7[5] = 0x800000000018FF90;
  }

  while (v0 != 4);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_12D618(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_16A724();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_16A794();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_12D6EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16A644();

  [a3 setReason:v4];
}

unint64_t sub_12D750()
{
  result = qword_1EE288;
  if (!qword_1EE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288);
  }

  return result;
}

uint64_t sub_12D7A4()
{

  return swift_once();
}

uint64_t sub_12D7EC()
{

  return sub_16A6B4();
}

uint64_t sub_12D80C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return v2;
}

uint64_t sub_12D81C()
{

  return swift_allocObject();
}

uint64_t sub_12D884()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return sub_16620(sub_12D8C4);
}

uint64_t sub_12D8C4()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_16A584();
  v0[6] = sub_9DA0(v3, qword_1E65C0);
  sub_16A9A4();
  sub_12F260();
  sub_386D8(v4, v5, v6, v7, v8, v9, 33, v10, 0x80000000001901B0);
  v0[2] = *(v2 + 416);
  swift_getMetatypeMetadata();
  v0[7] = sub_16A694();
  v0[8] = v11;
  v12 = *(v1 + qword_1F0DE8);
  v0[9] = v12;
  v13 = async function pointer to Task<>.value.getter[1];

  v14 = swift_task_alloc();
  v0[10] = v14;
  v15 = sub_5758(&qword_1E77D0, &unk_179A60);
  *v14 = v0;
  v14[1] = sub_12DA60;

  return Task<>.value.getter(v0 + 3, v12, v15);
}

uint64_t sub_12DA60()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  return _swift_task_switch(sub_12DB68, 0, 0);
}

uint64_t sub_12DB68()
{
  v1 = *(v0 + 24);
  result = sub_11B48C(v1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v10 = v31;
      v12 = v31[7];
      v11 = v31[8];
      v13 = v31[6];

      sub_16ACF4(69);
      v33._countAndFlagsBits = 0xD000000000000042;
      v33._object = 0x8000000000190250;
      sub_16A744(v33);
      v34._countAndFlagsBits = v12;
      v34._object = v11;
      sub_16A744(v34);

      v35._countAndFlagsBits = 46;
      v35._object = 0xE100000000000000;
      sub_16A744(v35);
      sub_16A9A4();
      sub_12F260();
      sub_386D8(v14, v15, v16, v17, v18, v19, 41, 0, 0xE000000000000000);

      sub_168FB4();
      v20 = sub_168F74();
      goto LABEL_18;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_22;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v6 = sub_16A1B4();
    if (!v7)
    {
      goto LABEL_13;
    }

    if (v6 == 0xD00000000000001FLL && v7 == 0x8000000000190200)
    {
      break;
    }

    v9 = sub_16AE54();

    if (v9)
    {
      goto LABEL_17;
    }

LABEL_13:
  }

LABEL_17:

  v10 = v31;
  v21 = v31[8];
  v22 = v31[6];

  sub_16A9A4();
  sub_12F260();
  sub_386D8(v23, v24, v25, v26, v27, v28, 38, v29, 0x8000000000190220);
  sub_168FB4();
  v20 = sub_168FA4();

LABEL_18:
  v30 = v10[1];

  return v30(v20);
}

uint64_t sub_12DE80()
{
  sub_D2DC();
  v1 = *(v0 + 16);
  sub_168BB4();
  sub_168BA4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_12DF34()
{
  sub_D2DC();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_1693E4();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = sub_1693A4();
  v1[22] = v6;
  v7 = *(v6 - 8);
  v1[23] = v7;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_12E04C, 0, 0);
}

uint64_t sub_12E04C()
{
  v27 = v0;
  v1 = *(*(v0 + 144) + 176);
  v2 = 0x8000000000190180;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v3 = 0xD00000000000002ELL;
  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  *(v0 + 96) = 0xD000000000000099;
  *(v0 + 104) = 0x80000000001900E0;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  v7 = sub_15AE4(v6);
  v9 = v8;

  if (v9)
  {
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_16A744(v29);
    v30._countAndFlagsBits = 0xD00000000000002ELL;
    v30._object = 0x8000000000190180;
    sub_16A744(v30);
    v3 = v7;
    v2 = v9;
  }

  v26._countAndFlagsBits = 58;
  v26._object = 0xE100000000000000;
  *(v0 + 128) = 67;
  v31._countAndFlagsBits = sub_16AE24();
  sub_16A744(v31);

  sub_16A744(v26);

  v10._countAndFlagsBits = sub_378D0(v1);
  if (v10._object)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    sub_16A744(v10);

    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    sub_16A744(v32);
  }

  v11 = sub_16A574();
  if (os_log_type_enabled(v11, v5))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26._countAndFlagsBits = v13;
    *v12 = 136315138;
    v14 = sub_15BC8(v3, v2, &v26._countAndFlagsBits);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v11, v5, "%s", v12, 0xCu);
    sub_D13C(v13);
  }

  else
  {
  }

  v15 = *(v0 + 192);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v18 = *(v0 + 152);
  sub_10824(*(v0 + 144) + qword_1F0DE0, v0 + 16);
  sub_1693F4();
  v19 = type metadata accessor for CommonUnsupportedActionFlow();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_C1248((v0 + 56), (v0 + 16));
  (*(v17 + 104))(v16, enum case for Parse.empty(_:), v18);
  sub_169394();
  v22 = swift_task_alloc();
  *(v0 + 208) = v22;
  *v22 = v0;
  v22[1] = sub_12E3E0;
  v23 = *(v0 + 192);
  v24 = *(v0 + 136);

  return sub_C0F34();
}

uint64_t sub_12E3E0()
{
  sub_D358();
  v3 = v2;
  v4 = v2[26];
  v5 = v2[25];
  v6 = v2[24];
  v7 = v2[23];
  v8 = v2[22];
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  v3[27] = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {

    return _swift_task_switch(sub_12E5BC, 0, 0);
  }

  else
  {
    v11 = v3[24];
    v12 = v3[21];

    v13 = *(v9 + 8);

    return v13();
  }
}

uint64_t sub_12E5BC()
{
  sub_D2DC();
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[1];
  v4 = v0[27];

  return v3();
}

uint64_t sub_12E628()
{
  sub_D13C((v0 + qword_1F0DE0));
  v1 = *(v0 + qword_1F0DE8);
}

uint64_t *sub_12E668()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0DE0));
  v1 = *(v0 + qword_1F0DE8);

  return v0;
}

uint64_t sub_12E6B0()
{
  v0 = sub_12E668();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_12E71C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_12D884();
}

uint64_t sub_12E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12E870()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12078;

  return sub_12DF34();
}

uint64_t sub_12E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_12E9E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12078;

  return sub_12DE68(a1);
}

uint64_t sub_12EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t sub_12EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12ECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_12ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_11F8C;

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t sub_12EE74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12078;

  return sub_12DF1C(a1);
}

uint64_t sub_12EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_12EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t sub_12F094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_12F158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_12078;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t sub_12F270(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_5758(&qword_1E76A0, &qword_172B00);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v39 - v5;
  v7 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - v9;
  v11 = sub_5758(&qword_1EE558, &qword_179BF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_168454();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55158();
  (*(v14 + 16))(v17, a1, v13);
  sub_1683A4();
  v18 = sub_16A9D4();
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 celsius];
  LOBYTE(v18) = sub_16AAD4();

  if (v18)
  {
    goto LABEL_4;
  }

  v22 = v20;
  v23 = [v19 fahrenheit];
  v24 = sub_16AAD4();

  if (v24 & 1) != 0 || (v25 = v22, v26 = [v19 kelvin], v27 = sub_16AAD4(), v25, v26, (v27))
  {
LABEL_4:
    sub_168314();
    v28 = sub_1682F4();
    v29 = sub_16AAD4();

    if ((v29 & 1) == 0)
    {
      v30 = v20;
      sub_168344();
      sub_168314();

      (*(v39 + 8))(v6, v3);
    }

    v31 = sub_169F04();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_169EF4();
    sub_169FA4();

    sub_16A6E4();

    v34 = sub_16A0C4();
    sub_5370(v10, 0, 1, v34);
    sub_169F94();

    sub_D188(v10, &qword_1E6300, &qword_16ECE0);
    v35 = sub_169F84();

    sub_54A30(v40, &v41);
    if (v42)
    {
      sub_D124(&v41, v43);
      sub_16A074();
      sub_10824(v43, &v41);
      v36 = sub_16A064();

      v37 = v36;
      sub_169F74();

      sub_D13C(v43);
    }

    else
    {

      sub_D188(&v41, &qword_1E6030, &unk_173620);
    }
  }

  else
  {

    return 0;
  }

  return v35;
}

uint64_t sub_12F780()
{
  sub_D2DC();
  v2 = sub_C5D74(v1);
  sub_D414(v2);
  v4 = *(v3 + 64);
  *(v0 + 64) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_12F7F0()
{
  sub_1696C();
  sub_C5D00();
  sub_13067C();
  sub_132B24();
  sub_9F300();
  sub_482AC();
  v0 = sub_9F3C8();
  sub_C5DB4(v0);
  v1 = swift_task_alloc();
  v2 = sub_C5DA8(v1);
  *v2 = v3;
  sub_3099C(v2);

  return sub_DF654();
}

uint64_t sub_12F894()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_12F9C4()
{
  sub_D2DC();
  v2 = sub_C5D74(v1);
  sub_D414(v2);
  v4 = *(v3 + 64);
  *(v0 + 64) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_12FA34()
{
  sub_1696C();
  sub_C5D00();
  sub_13067C();
  sub_132B24();
  sub_9F300();
  sub_482AC();
  v0 = sub_9F3C8();
  sub_C5DB4(v0);
  v1 = swift_task_alloc();
  v2 = sub_C5DA8(v1);
  *v2 = v3;
  sub_3099C(v2);

  return sub_DF654();
}

uint64_t sub_12FAD8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_12FC08()
{
  sub_D2DC();
  *(v0 + 88) = v1;
  v2 = sub_16A164();
  sub_D414(v2);
  v4 = *(v3 + 64);
  *(v0 + 56) = sub_D3C8();
  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_12FC80()
{
  sub_1696C();
  sub_132C60();
  sub_132B24();
  sub_9F300();
  sub_482AC();
  *(v0 + 64) = sub_9F3C8();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  sub_3099C(v1);

  return sub_DF654();
}

uint64_t sub_12FD28()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_12FE58(char a1)
{
  *(v1 + 88) = a1;
  v2 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_12FEE8, 0, 0);
}

uint64_t sub_12FEE8()
{
  sub_1696C();
  sub_132C60();
  sub_132B24();
  sub_9F300();
  sub_482AC();
  *(v0 + 64) = sub_9F3C8();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  sub_3099C(v1);

  return sub_DF654();
}

uint64_t sub_12FF90()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_1300C0()
{
  sub_D2DC();
  v2 = v0[7];
  v1 = v0[8];

  sub_D37C();
  v4 = v0[10];

  return v3();
}

uint64_t sub_130124()
{
  sub_D2DC();
  v1 = sub_16A164();
  sub_D414(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_130198()
{
  sub_D2DC();
  sub_132C2C();
  sub_122738();
  sub_132B5C();
  v0 = sub_16A0F4();
  sub_132C20(v0);
  v1 = swift_task_alloc();
  v2 = sub_132C14(v1);
  *v2 = v3;
  sub_3099C(v2);

  return sub_E0B3C();
}

uint64_t sub_13022C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[2];
    v12 = v3[3];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_13035C()
{
  sub_D2DC();
  v1 = sub_16A164();
  sub_D414(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = sub_D3C8();
  v4 = sub_D388();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1303D0()
{
  sub_D2DC();
  sub_132C2C();
  sub_122738();
  sub_132B5C();
  v0 = sub_16A0F4();
  sub_132C20(v0);
  v1 = swift_task_alloc();
  v2 = sub_132C14(v1);
  *v2 = v3;
  sub_3099C(v2);

  return sub_E0B3C();
}

uint64_t sub_130464()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[2];
    v12 = v3[3];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_130594()
{
  v1 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_130198, 0, 0);
}

uint64_t sub_130620()
{
  v0 = sub_16A164();
  v1 = sub_D414(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_132B9C();
  sub_482AC();
  return sub_9F3C8();
}

uint64_t sub_13067C()
{
  v0 = [objc_opt_self() sharedStream];
  v1 = [objc_opt_self() sharedManager];
  sub_132C88();
  type metadata accessor for CarCommandsLoggingProducer();
  v2 = sub_132C44();
  v10 = sub_132BC4(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  return sub_132C7C(v10, &off_1D7DF0);
}

id sub_130710()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    v4 = v0;
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v5 = qword_1F0E10;
    v6 = *sub_D084((v0 + 56), *(v0 + 80));
    v7 = v5;
    v8 = sub_DB860();
    v9 = sub_1329C4(v7, 9, v8 & 1);

    v10 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1307E0()
{
  sub_D2DC();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v4 = sub_16A164();
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[49] = sub_D3C8();
  v7 = sub_168454();
  v1[50] = v7;
  sub_10AEC(v7);
  v1[51] = v8;
  v10 = *(v9 + 64);
  v1[52] = sub_D3C8();
  v11 = sub_5758(&qword_1E76A0, &qword_172B00);
  v1[53] = v11;
  sub_10AEC(v11);
  v1[54] = v12;
  v14 = *(v13 + 64);
  v1[55] = sub_D3C8();
  v15 = sub_5758(&qword_1EA178, &unk_1774D0);
  sub_D414(v15);
  v17 = *(v16 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v18 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v18);
  v20 = *(v19 + 64);
  v1[58] = sub_D3C8();
  v21 = type metadata accessor for SetCarPlayClimateStatusParameters(0);
  v1[59] = v21;
  sub_D414(v21);
  v23 = *(v22 + 64);
  v1[60] = sub_D3C8();
  v24 = sub_168B74();
  sub_D414(v24);
  v26 = *(v25 + 64);
  v1[61] = sub_D3C8();
  v27 = sub_1691E4();
  v1[62] = v27;
  sub_10AEC(v27);
  v1[63] = v28;
  v30 = *(v29 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v31 = sub_D388();

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_130A10()
{
  v75 = v0;
  v1 = *(v0 + 376);
  sub_10824(*(v0 + 384) + 16, v0 + 16);
  v2 = sub_D084((v0 + 16), *(v0 + 40));
  sub_5758(&qword_1EE550, &qword_179BD8);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C((v0 + 16));
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000025;
  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  v7 = sub_16A9A4();
  *(v0 + 328) = 0xD0000000000000A4;
  *(v0 + 336) = 0x80000000001902F0;
  *(v0 + 344) = 47;
  *(v0 + 352) = 0xE100000000000000;
  sub_D030();
  v8 = sub_16AB34();
  v9 = sub_15AE4(v8);
  v11 = v10;

  if (v11)
  {
    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    sub_16A744(v76);
    v77._countAndFlagsBits = 0xD000000000000025;
    v77._object = 0x8000000000182560;
    sub_16A744(v77);
    v5 = v9;
    v4 = v11;
  }

  v74._countAndFlagsBits = 58;
  v74._object = 0xE100000000000000;
  *(v0 + 360) = 25;
  v78._countAndFlagsBits = sub_16AE24();
  sub_16A744(v78);

  sub_16A744(v74);

  v12._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v12._object)
  {
    v74._countAndFlagsBits = 32;
    v74._object = 0xE100000000000000;
    sub_16A744(v12);

    v79._countAndFlagsBits = 32;
    v79._object = 0xE100000000000000;
    sub_16A744(v79);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v7))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v74._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v5, v4, &v74._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v7, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v17 = *(v0 + 376);
  v18 = sub_169084();
  v19 = (*(&stru_20.maxprot + (swift_isaMask & *v18)))();

  if (v19 == 100)
  {
    v20 = *(v0 + 520);
    v21 = *(v0 + 488);
    v22 = *(v0 + 384);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v22 + 184, v0 + 216);
    v23 = *(v0 + 240);
    *(v0 + 528) = v23;
    *(v0 + 544) = sub_D084((v0 + 216), v23);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v24 = swift_allocObject();
    *(v0 + 552) = v24;
    *(v24 + 16) = xmmword_16D440;
    v25 = sub_6355C(&unk_179BE8);
    *(v0 + 560) = v25;
    *v25 = v0;
    v25[1] = sub_131274;
    v26 = *(v0 + 384);
    sub_D2C0();

    __asm { BR              X1 }
  }

  v29 = *(v0 + 376);
  v30 = sub_169084();
  v31 = (*(&stru_20.maxprot + (swift_isaMask & *v30)))();

  if (v31 == 101)
  {
    v32 = *(v0 + 512);
    v33 = *(v0 + 488);
    v34 = *(v0 + 384);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v34 + 184, v0 + 176);
    v35 = *(v0 + 200);
    *(v0 + 592) = v35;
    *(v0 + 608) = sub_D084((v0 + 176), v35);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v36 = swift_allocObject();
    *(v0 + 616) = v36;
    *(v36 + 16) = xmmword_16D440;
    v37 = sub_6355C(&unk_179BE0);
    *(v0 + 624) = v37;
    *v37 = v0;
    v37[1] = sub_1315F8;
    v38 = *(v0 + 384);
    sub_D2C0();

    __asm { BR              X0 }
  }

  v41 = *(v0 + 376);
  v42 = sub_1690A4();
  *(v0 + 656) = v42;
  v43 = [v42 enableClimateControl];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 BOOLValue];
  }

  else
  {
    v45 = 2;
  }

  v46 = *(v0 + 464);
  [v42 climateZone];
  sub_AFE80();
  sub_16A6E4();

  v47 = sub_16A0C4();
  v48 = 1;
  sub_5370(v46, 0, 1, v47);
  v49 = [v42 targetTemperature];
  if (v49)
  {
    v50 = v49;
    v51 = *(v0 + 448);
    sub_55158();
    sub_1682E4();

    v48 = 0;
  }

  v53 = *(v0 + 448);
  v52 = *(v0 + 456);
  v54 = *(v0 + 424);
  sub_5370(v53, v48, 1, v54);
  sub_132820(v53, v52, &qword_1EA178, &unk_1774D0);
  v55 = sub_9E2C(v52, 1, v54);
  v56 = *(v0 + 456);
  if (v55)
  {
    sub_D188(*(v0 + 456), &qword_1EA178, &unk_1774D0);
    v57 = 0;
  }

  else
  {
    v59 = *(v0 + 432);
    v58 = *(v0 + 440);
    v61 = *(v0 + 416);
    v60 = *(v0 + 424);
    v62 = *(v0 + 400);
    v63 = *(v0 + 408);
    v64 = *(v0 + 384);
    (*(v59 + 16))(v58, *(v0 + 456), v60);
    sub_D188(v56, &qword_1EA178, &unk_1774D0);
    (*(v63 + 16))(v61, v64 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CarCommandsBaseFlowStrategy_unitProvider, v62);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    v57 = sub_12F270(v61, v0 + 136);
    sub_D188(v0 + 136, &qword_1E6030, &unk_173620);
    (*(v63 + 8))(v61, v62);
    (*(v59 + 8))(v58, v60);
  }

  v66 = *(v0 + 472);
  v65 = *(v0 + 480);
  v67 = *(v0 + 464);
  v68 = *(v0 + 392);
  *v65 = v45;
  sub_132820(v67, &v65[*(v66 + 20)], &qword_1E6300, &qword_16ECE0);
  *&v65[*(v66 + 24)] = v57;
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_122738();
  sub_132B5C();
  *(v0 + 664) = sub_16A094();
  v69 = swift_task_alloc();
  *(v0 + 672) = v69;
  *v69 = v0;
  v69[1] = sub_13197C;
  v70 = *(v0 + 480);
  sub_D2C0();

  return sub_157628(v71);
}

uint64_t sub_131274()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 560);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 568) = v0;

  if (!v0)
  {
    *(v4 + 576) = v1;
  }

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_13137C()
{
  sub_D2DC();
  *(v0[69] + 32) = v0[72];
  v1 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v2 = swift_task_alloc();
  v0[73] = v2;
  *v2 = v0;
  v2[1] = sub_131430;
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[46];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v3, v7, v6, v5);
}

uint64_t sub_131430()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 584);
  v3 = *(v1 + 552);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_131530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  (*(v12[63] + 8))(v12[65], v12[62]);
  sub_D13C(v12 + 27);
  sub_132BE8();

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1315F8()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 624);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 632) = v0;

  if (!v0)
  {
    *(v4 + 640) = v1;
  }

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_131700()
{
  sub_D2DC();
  *(v0[77] + 32) = v0[80];
  v1 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v2 = swift_task_alloc();
  v0[81] = v2;
  *v2 = v0;
  v2[1] = sub_1317B4;
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[64];
  v8 = v0[46];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v3, v7, v6, v5);
}

uint64_t sub_1317B4()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 648);
  v3 = *(v1 + 616);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1318B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  (*(v12[63] + 8))(v12[64], v12[62]);
  sub_D13C(v12 + 22);
  sub_132BE8();

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_13197C()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 672);
  v4 = *(v2 + 664);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v8 + 680) = v7;
  *(v8 + 688) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_131AA0()
{
  sub_D2DC();
  v1 = v0[48];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[87] = v2;
  *v2 = v0;
  v2[1] = sub_131B5C;
  v3 = v0[85];

  return sub_11A570();
}

uint64_t sub_131B5C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 696);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 704) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_131C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 656);
  v14 = *(v12 + 480);
  v15 = *(v12 + 368);

  sub_132888(v14);
  sub_D124((v12 + 56), v15);
  sub_132BE8();

  sub_D37C();
  sub_10B0C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_131D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[69];
  (*(v12[63] + 8))(v12[65], v12[62]);
  *(v13 + 16) = 0;

  sub_D13C(v12 + 27);
  v14 = v12[71];
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_131E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[77];
  (*(v12[63] + 8))(v12[64], v12[62]);
  *(v13 + 16) = 0;

  sub_D13C(v12 + 22);
  v14 = v12[79];
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_131EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 480);

  sub_132888(v13);
  v14 = *(v12 + 688);
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_131FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 656);
  v14 = *(v12 + 480);

  sub_132888(v14);
  v15 = *(v12 + 704);
  sub_132B6C();

  sub_D37C();
  sub_10B0C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_132080()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy()
{
  result = qword_1EE358;
  if (!qword_1EE358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_13218C(uint64_t a1)
{
  result = sub_1321B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1321B4()
{
  result = qword_1EE548;
  if (!qword_1EE548)
  {
    type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE548);
  }

  return result;
}

uint64_t sub_13220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_1322D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_13239C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_13245C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_1307E0();
}

uint64_t sub_132508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_1325D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_132698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_132760()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_46BDC();
}

uint64_t sub_132820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5758(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_132888(uint64_t a1)
{
  v2 = type metadata accessor for SetCarPlayClimateStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1328E4(uint64_t a1, char a2, char a3, _BYTE *a4)
{
  v12[3] = type metadata accessor for CarPlayService();
  v12[4] = &off_1DA3F0;
  v12[0] = a1;
  v11[3] = &type metadata for ServiceAvailabilityGate;
  v11[4] = &off_1D6810;
  LOBYTE(v11[0]) = a2;
  sub_10824(v12, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_service]);
  sub_10824(v11, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_serviceAvailabilityGate]);
  a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_isRHD] = a3;
  v10.receiver = a4;
  v10.super_class = type metadata accessor for SetCarPlayClimateIntentHandler();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_D13C(v11);
  sub_D13C(v12);
  return v8;
}

id sub_1329C4(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for CarPlayService();
  v19[4] = &off_1DA3F0;
  v19[3] = v6;
  v19[0] = a1;
  v17 = &type metadata for ServiceAvailabilityGate;
  v18 = &off_1D6810;
  LOBYTE(v16[0]) = a2;
  v7 = objc_allocWithZone(type metadata accessor for SetCarPlayClimateIntentHandler());
  v8 = sub_2F8D0(v19, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_2F8D0(v16, v17);
  v14 = sub_1328E4(*v11, *v13, a3, v7);
  sub_D13C(v16);
  sub_D13C(v19);
  return v14;
}

uint64_t sub_132B24()
{
  v2 = *sub_D084((v1 + 16), *(v1 + 40));

  return sub_D2B90(2, v0);
}

uint64_t sub_132B6C()
{
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[52];
  v11 = v0[49];
}

uint64_t sub_132B9C()
{

  return type metadata accessor for CarCommandsCATsSimple();
}

uint64_t sub_132BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_D230C(v10, v11, &a10);
}

uint64_t sub_132BE8()
{
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[52];
  v11 = v0[49];
}

uint64_t sub_132C2C()
{
  v2 = *(v0 + 16);

  return type metadata accessor for CarCommandsCATsSimple();
}

uint64_t sub_132C44()
{

  return swift_allocObject();
}

uint64_t sub_132C60()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);

  return sub_13067C();
}

uint64_t sub_132C7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[3] = v3;
  v2[4] = a2;
  *v2 = result;
  return result;
}

uint64_t sub_132C88()
{

  return sub_1689F4();
}

uint64_t sub_132CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_16A884();
  sub_5370(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_179D38;
  v10[5] = v9;
  sub_134FB0(0, 0, v7, &unk_179D48, v10);
}

void sub_132DB0()
{
  sub_CA350();
  sub_1358EC();
  if (v1)
  {
    v2 = sub_1358B4();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
LABEL_12:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v24 = _swiftEmptyArrayStorage;
  sub_146898(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v24;
    v17 = v0 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        v5 = sub_135974();
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = type metadata accessor for TappableCommand();
      v22 = v6;
      v7 = sub_13527C();
      v23 = v7;
      v24 = v4;
      v21[0] = v5;
      v9 = v4[2];
      v8 = v4[3];
      v10 = v6;
      if (v9 >= v8 >> 1)
      {
        sub_146898((v8 > 1), v9 + 1, 1);
        v10 = v22;
      }

      ++v3;
      v11 = sub_2F8D0(v21, v10);
      v12 = *(*(v10 - 8) + 64);
      __chkstk_darwin(v11);
      v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v19 = v6;
      v20 = v7;
      *&v18 = v16;
      v4 = v24;
      v24[2] = v9 + 1;
      sub_D124(&v18, &v4[5 * v9 + 4]);
      sub_D13C(v21);
    }

    while (v2 != v3);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_132F98()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_146970(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5B8, CAFVent_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_146970(v22, v23, v24);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      v10 = *(v9 + 64);
      __chkstk_darwin(v11);
      v13 = sub_1357FC(v12, v25);
      v14(v13);
      v15 = sub_13583C();
      sub_135748(v15, v16, v17, v18, v19, v20);
      sub_D13C(&v25);
      sub_135894();
    }

    while (!v21);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1330FC()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_146990(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5C0, CAFZonesSynced_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_146990(v22, v23, v24);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      v10 = *(v9 + 64);
      __chkstk_darwin(v11);
      v13 = sub_1357FC(v12, v25);
      v14(v13);
      v15 = sub_13583C();
      sub_135748(v15, v16, v17, v18, v19, v20);
      sub_D13C(&v25);
      sub_135894();
    }

    while (!v21);
    goto LABEL_15;
  }

  __break(1u);
}

void *sub_133260(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1468F8(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v8 = a1 + 32;
    do
    {
      sub_10824(v8, v12);
      sub_5758(a2, a3);
      sub_5758(&qword_1E91C0, &qword_172C40);
      swift_dynamicCast();
      v14 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_1468F8((v9 > 1), v10 + 1, 1);
        v4 = v14;
      }

      v4[2] = v10 + 1;
      sub_D124(&v13, &v4[5 * v10 + 4]);
      v8 += 40;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_133390()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_1469B0(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5B0, CAFFan_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_1469B0(v22, v23, v24);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      v10 = *(v9 + 64);
      __chkstk_darwin(v11);
      v13 = sub_1357FC(v12, v25);
      v14(v13);
      v15 = sub_13583C();
      sub_135748(v15, v16, v17, v18, v19, v20);
      sub_D13C(&v25);
      sub_135894();
    }

    while (!v21);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1334F4()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_1469D0(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1E83B8, CAFDefrost_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_1469D0(v22, v23, v24);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      v10 = *(v9 + 64);
      __chkstk_darwin(v11);
      v13 = sub_1357FC(v12, v25);
      v14(v13);
      v15 = sub_13583C();
      sub_135748(v15, v16, v17, v18, v19, v20);
      sub_D13C(&v25);
      sub_135894();
    }

    while (!v21);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_133658()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_1469F0(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5C8, CAFTemperature_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_1469F0(v21, v22, v23);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      v10 = *(v9 + 64);
      __chkstk_darwin(v11);
      v13 = sub_1357FC(v12, v24);
      v14(v13);
      v15 = sub_13583C();
      sub_63B5C(v15, v16, v17, v18, v19);
      sub_D13C(&v24);
      sub_135894();
    }

    while (!v20);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_133794()
{
  sub_CA350();
  sub_1358EC();
  if (v2)
  {
    v0 = sub_1358B4();
  }

  else
  {
    sub_135958();
  }

  if (!v0)
  {
LABEL_15:
    sub_CA23C();
    sub_CA368();
    return;
  }

  v3 = sub_13586C();
  sub_146B18(v3, v4, v5);
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_1358A4();
    do
    {
      if (v1)
      {
        sub_135974();
      }

      else
      {
        sub_13598C();
      }

      v6 = sub_135930();
      v7 = sub_16484(v6, &qword_1EE5A8, CAFSeatHeatingCooling_ptr);
      sub_135854(v7);
      if (v8)
      {
        sub_135884();
        sub_146B18(v22, v23, v24);
      }

      else
      {
        sub_135924();
      }

      sub_1358D0();
      sub_135820();
      v10 = *(v9 + 64);
      __chkstk_darwin(v11);
      v13 = sub_1357FC(v12, v25);
      v14(v13);
      v15 = sub_13583C();
      sub_135748(v15, v16, v17, v18, v19, v20);
      sub_D13C(&v25);
      sub_135894();
    }

    while (!v21);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t SetCarPlaySeatSettingsIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return sub_D2B0();
}

uint64_t sub_1338F8()
{
  sub_1696C();
  v1 = [*(v0 + 272) enableSeatTemperature];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    *(v0 + 328) = [v1 BOOLValue];

    *(v0 + 288) = [v3 temperatureChange];
    v5 = *sub_D084((v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_service), *(v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_service + 24));
    v6 = swift_task_alloc();
    *(v0 + 296) = v6;
    *v6 = v0;
    v6[1] = sub_133ABC;

    return sub_13AB58(v0 + 16, 1);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_386D8(v10, 0x400uLL, v9 + 125, 0x80000000001903A0, v11, v12, 29, 0xD000000000000026, 0x80000000001904D0);
    sub_16A464();
    v13 = sub_13593C();
    v14 = *(v0 + 8);

    return v14(v13);
  }
}

uint64_t sub_133ABC()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 296);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 304) = v0;

  if (v0)
  {
    v7 = sub_133DF0;
  }

  else
  {
    v7 = sub_133BC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_133BC0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_D084(v0 + 2, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_133CEC;

  return (v7)(v0 + 12, v1, v2);
}

uint64_t sub_133CEC()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 312);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_1343BC;
  }

  else
  {
    v7 = sub_133EFC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_133DF0()
{
  v1 = v0[38];
  swift_errorRetain();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  sub_16A9A4();
  sub_1359A4();
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[29];
  sub_16AEB4();
  v18 = v6;
  sub_1207C();
  sub_1358F8(v7, v8, v9, v10, v11, v12, v13, v14, v18);

  sub_16A464();
  sub_13593C();

  v15 = sub_120EC();

  return v16(v15);
}

uint64_t sub_133EFC()
{
  if (!*(v0 + 120))
  {
    sub_D188(v0 + 96, &qword_1E83D0, &qword_174EE0);
    v18 = 0x800000000018C8B0;
    if (qword_1E58E8 != -1)
    {
LABEL_38:
      sub_9ED4();
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_135964();
    sub_386D8(v23, v24, v25, v26, v27, v28, 38, v29, v18);
    sub_16A464();
    sub_16A454();
    goto LABEL_29;
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  sub_D124((v0 + 96), v0 + 56);
  v3 = [v2 seat];
  v4 = 2;
  if (*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_isRHD))
  {
    v4 = 3;
  }

  v5 = 2;
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_isRHD))
  {
    v5 = 3;
  }

  if (v3 != &dword_0 + 3)
  {
    v5 = v3;
  }

  if (v3 != &dword_0 + 2)
  {
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 2;
  }

  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  sub_D084((v0 + 56), v7);
  v9 = (*(v8 + 112))(v6, v7, v8);
  v10 = *(v9 + 16);
  if (!v10)
  {

    sub_3060C();
    sub_16ACF4(40);
    *(v0 + 240) = v50;
    *(v0 + 248) = v51;
    v53._countAndFlagsBits = 0xD000000000000026;
    v53._object = 0x80000000001904A0;
    sub_16A744(v53);
    *(v0 + 264) = v6;
    sub_16AD84();
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v32 = sub_16A584();
    sub_9DA0(v32, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_135964();
    sub_386D8(v33, v34, v35, v36, v37, v38, 46, v31, v30);

    sub_16A464();
    goto LABEL_28;
  }

  sub_10824(*(v0 + 280) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_serviceAvailabilityGate, v0 + 136);
  v11 = sub_D084((v0 + 136), *(v0 + 160));
  v12 = sub_133260(v9, &qword_1EE5D0, &unk_179D78);
  v14 = sub_948E4(v12, *v11, v13);

  v15 = v14[2];

  if (!v15)
  {

    sub_D13C((v0 + 136));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v39 = sub_16A584();
    sub_9DA0(v39, qword_1E65C0);
    sub_16A9A4();
    sub_1207C();
    sub_135964();
    sub_386D8(v40, v41, v42, v43, v44, v45, 53, v46, 0x8000000000190450);
    sub_16A464();
LABEL_28:
    sub_16A454();
    sub_D13C((v0 + 56));
LABEL_29:
    sub_D13C((v0 + 16));
LABEL_30:
    v47 = sub_120EC();

    return v48(v47);
  }

  sub_D13C((v0 + 136));
  v16 = 0;
  v17 = v9 + 32;
  v18 = *(v0 + 320);
  while (1)
  {
    if (v10 == v16)
    {

      sub_D13C((v0 + 56));
      sub_D13C((v0 + 16));
      sub_16A464();
      sub_16A454();
      goto LABEL_30;
    }

    if (v16 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v19 = *(v0 + 288);
    v20 = *(v0 + 328);
    v21 = *(v0 + 272);
    sub_10824(v17, v0 + 176);
    sub_1344D0((v0 + 176), v20, v21, v19);
    if (v18)
    {
      break;
    }

    ++v16;
    sub_D13C((v0 + 176));
    v17 += 40;
  }

  return sub_D13C((v0 + 176));
}

uint64_t sub_1343BC()
{
  sub_D13C(v0 + 2);
  v1 = v0[40];
  swift_errorRetain();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  sub_16A9A4();
  sub_1359A4();
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[29];
  sub_16AEB4();
  v18 = v6;
  sub_1207C();
  sub_1358F8(v7, v8, v9, v10, v11, v12, v13, v14, v18);

  sub_16A464();
  sub_13593C();

  v15 = sub_120EC();

  return v16(v15);
}

uint64_t sub_1344D0(void *a1, char a2, void *a3, uint64_t a4)
{
  sub_16ACF4(59);
  v17._countAndFlagsBits = 0x676E697461647055;
  v17._object = 0xE900000000000020;
  sub_16A744(v17);
  v8 = a1[3];
  v9 = a1[4];
  sub_D084(a1, v8);
  v18._countAndFlagsBits = (*(v9 + 16))(v8, v9);
  sub_16A744(v18);

  v19._countAndFlagsBits = 0xD000000000000018;
  v19._object = 0x80000000001906B0;
  sub_16A744(v19);
  if (a2)
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (a2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_16A744(v10);

  v20._object = 0x80000000001906D0;
  v20._countAndFlagsBits = 0xD000000000000014;
  sub_16A744(v20);
  [a3 temperatureChange];
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 0x200000uLL, 0xD0000000000000A3, 0x80000000001903A0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 58, 0, 0xE000000000000000);

  v14 = a1[3];
  v15 = a1[4];
  sub_D084(a1, v14);
  return (*(v15 + 24))(a4, a2 & 1, v14, v15);
}

uint64_t sub_134760(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_19F4C;

  return SetCarPlaySeatSettingsIntentHandler.handle(intent:)(v6);
}

uint64_t sub_134838()
{
  v1 = [*(v0 + 40) enableSeatTemperature];
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + 40) temperatureChange])
    {
      v3 = *(v0 + 40);
      sub_3060C();
      sub_16ACF4(79);
      *(v0 + 16) = v22;
      *(v0 + 24) = v23;
      v25._countAndFlagsBits = 0xD000000000000045;
      v25._object = 0x8000000000190560;
      sub_16A744(v25);
      v4 = [v2 description];
      v5 = sub_16A664();
      v7 = v6;

      v26._countAndFlagsBits = v5;
      v26._object = v7;
      sub_16A744(v26);

      v27._countAndFlagsBits = 8236;
      v27._object = 0xE200000000000000;
      sub_16A744(v27);
      *(v0 + 32) = [v3 seat];
      sub_1359C4();
      v28._countAndFlagsBits = 8236;
      v28._object = 0xE200000000000000;
      sub_16A744(v28);
      *(v0 + 32) = [v3 temperatureChange];
      sub_1359C4();
      v8 = *(v0 + 16);
      v9 = *(v0 + 24);
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v10 = sub_16A584();
      sub_9DA0(v10, qword_1E65C0);
      v11 = sub_16A9A4();
      sub_386D8(v11, 0x400uLL, 0xD0000000000000A3, 0x80000000001903A0, 0xD000000000000010, 0x8000000000186020, 76, v8, v9);

      sub_16A464();
      sub_16A454();

      goto LABEL_13;
    }
  }

  v12 = *(v0 + 40);
  sub_3060C();
  sub_16ACF4(90);
  v29._countAndFlagsBits = 0xD000000000000053;
  v29._object = 0x8000000000190500;
  sub_16A744(v29);
  v13 = [v12 enableSeatTemperature];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 BOOLValue];
  }

  else
  {
    v15 = 2;
  }

  v16 = *(v0 + 40);
  *(v0 + 16) = v15;
  sub_5758(&qword_1EC228, &unk_177DC0);
  v30._countAndFlagsBits = sub_16A694();
  sub_16A744(v30);

  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  sub_16A744(v31);
  *(v0 + 16) = [v16 seat];
  v32._countAndFlagsBits = sub_16A694();
  sub_16A744(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_16A744(v33);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v17 = sub_16A584();
  sub_9DA0(v17, qword_1E65C0);
  v18 = sub_16A9A4();
  sub_386D8(v18, 0x400uLL, 0xD0000000000000A3, 0x80000000001903A0, 0xD000000000000010, 0x8000000000186020, 72, v22, v23);

  sub_16A464();
  sub_13593C();
LABEL_13:
  v19 = sub_120EC();

  return v20(v19);
}

uint64_t sub_134C3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2F924;

  return SetCarPlaySeatSettingsIntentHandler.confirm(intent:)(v6);
}

id SetCarPlaySeatSettingsIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_134DE0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10A9C;

  return v7();
}

uint64_t sub_134EC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1039C;

  return v8();
}

uint64_t sub_134FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_677A4(a3, v25 - v11);
  v13 = sub_16A884();
  if (sub_9E2C(v12, 1, v13) == 1)
  {
    sub_D188(v12, &qword_1E66C0, &qword_16FE00);
  }

  else
  {
    sub_16A874();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_16A844();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_16A6C4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_D188(a3, &qword_1E66C0, &qword_16FE00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_D188(a3, &qword_1E66C0, &qword_16FE00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_13527C()
{
  result = qword_1EE5A0;
  if (!qword_1EE5A0)
  {
    type metadata accessor for TappableCommand();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE5A0);
  }

  return result;
}

uint64_t sub_1352D8()
{
  sub_1696C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_31500(v4);
  *v5 = v6;
  v7 = sub_120FC(v5);

  return v8(v7);
}

uint64_t sub_135370()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_31500(v5);
  *v6 = v7;
  v6[1] = sub_10A9C;

  return sub_134DE0(v1, v2, v4);
}

uint64_t sub_13542C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_13546C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_31500(v7);
  *v8 = v9;
  v8[1] = sub_10A9C;

  return sub_134EC8(a1, v3, v4, v6);
}

uint64_t sub_135534()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_13556C()
{
  sub_1696C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_31500(v3);
  *v4 = v5;
  v6 = sub_67C34(v4);

  return v7(v6);
}

uint64_t sub_135604()
{
  sub_1696C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_31500(v3);
  *v4 = v5;
  v6 = sub_67C34(v4);

  return v7(v6);
}

uint64_t sub_13569C()
{
  sub_1696C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_31500(v4);
  *v5 = v6;
  v7 = sub_120FC(v5);

  return v8(v7);
}

uint64_t sub_135748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  v11 = sub_10888(v14);
  (*(*(a4 - 8) + 32))(v11, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t sub_135854(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v2;
  *(v4 - 128) = v3;
  *(v4 - 88) = v1;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

uint64_t sub_1358B4()
{

  return sub_16ADC4();
}

uint64_t sub_1358D0()
{

  return sub_2F8D0(v1 - 128, v0);
}

void sub_1358F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(v9, 0x400uLL, 0xD0000000000000A3, v10 | 0x8000000000000000, a5, a6, 62, a8, a9);
}

uint64_t sub_13593C()
{

  return sub_16A454();
}

uint64_t sub_135974()
{

  return sub_16AD04();
}

id sub_13598C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1359A4()
{

  return swift_getErrorValue();
}

uint64_t sub_1359C4()
{

  return sub_16AD84();
}

uint64_t sub_1359E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_168B74() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1691E4();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_135AD4, 0, 0);
}

uint64_t sub_135AD4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  sub_168B34();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  v4 = v3[3];
  v5 = v3[4];
  sub_D084(v3, v4);
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_135BD8;
  v8 = v0[8];
  v9 = v0[2];
  v10 = v0[3];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v8, v4, v5);
}

uint64_t sub_135BD8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_135CD4, 0, 0);
}

uint64_t sub_135CD4()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_135DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v85 = a2;
  v81 = a1;
  v86 = a3;
  v84 = *v3;
  v82 = sub_1693E4();
  v5 = sub_9F48(v82);
  v80 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v79 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_168FE4();
  v11 = sub_9F48(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[22];
  v88 = 0x8000000000189940;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v19 = sub_16A584();
  v87 = sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  v93 = 0xD000000000000089;
  v94 = 0x8000000000190720;
  v83 = 0x8000000000190720;
  v90._countAndFlagsBits = 47;
  v90._object = 0xE100000000000000;
  sub_D030();
  v21 = sub_16AB34();
  v22 = sub_15AE4(v21);
  v24 = v23;

  if (v24)
  {
    v93 = v22;
    v94 = v24;
    v97._countAndFlagsBits = 32;
    v97._object = 0xE100000000000000;
    sub_16A744(v97);
    v98._countAndFlagsBits = 0xD000000000000020;
    v98._object = v88;
    sub_16A744(v98);
    v25 = v93;
    v26 = v94;
  }

  else
  {
    sub_138964();
    v26 = v88;
  }

  v93 = v25;
  v94 = v26;
  v90._countAndFlagsBits = 58;
  v90._object = 0xE100000000000000;
  v89[0] = 23;
  v99._countAndFlagsBits = sub_16AE24();
  sub_16A744(v99);

  sub_16A744(v90);

  v27._countAndFlagsBits = sub_378D0(v18);
  if (v27._object)
  {
    v90._countAndFlagsBits = 32;
    v90._object = 0xE100000000000000;
    sub_16A744(v27);

    sub_16A744(v90);
  }

  sub_138970();
  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v20))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v90._countAndFlagsBits = v30;
    *v29 = 136315138;
    v31 = sub_10B58();
    v34 = sub_15BC8(v31, v32, v33);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v28, v20, "%s", v29, 0xCu);
    sub_D13C(v30);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v35 = *(v84 + 416);
  sub_169274();
  v36 = sub_169244();
  sub_169264();
  v37 = sub_168FD4();
  v39 = v38;
  v40 = *(v13 + 8);
  v40(v17, v10);
  if (sub_D95F4(v36, v37, v39) > 0xF7u)
  {
    v85 = v4[22];
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v42 = v41;
    sub_169264();
    v43 = sub_168FD4();
    v45 = v44;
    v40(v17, v10);
    *v42 = v43;
    v42[1] = v45;
    swift_storeEnumTagMultiPayload();
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v77 = v46;
    sub_138964();
    sub_13894C();
    sub_138970();
    sub_386D8(v47, v48, v49, v50, v51, v52, v53, v54, v77);

    return sub_168C74();
  }

  v55 = v79;
  sub_169384();
  sub_86E4(v55, &_swiftEmptySetSingleton, v89);
  (*(v80 + 8))(v55, v82);
  if (!v89[3])
  {
    sub_D188(v89, &qword_1E5F80, &unk_16E7E0);
    v90 = 0;
    v91 = 0u;
    v92 = 0;
    goto LABEL_20;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v92 = 0;
    v90 = 0;
    v91 = 0u;
    goto LABEL_20;
  }

  if (!*(&v91 + 1))
  {
LABEL_20:
    sub_D188(&v90, &qword_1E5F88, &unk_16D410);
    v58 = v4[22];
    sub_16A9A4();
    sub_138964();
    sub_13894C();
    sub_138970();
    sub_386D8(v59, v60, v61, v62, v63, v64, v65, v66, 0x800000000017F910);
    return sub_168C74();
  }

  sub_D250(&v90._countAndFlagsBits, &v93);
  v56 = v95;
  v57 = v96;
  sub_D084(&v93, v95);
  if ((*(v57 + 32))(v56, v57))
  {
    sub_168C64();
  }

  else
  {
    v68 = v4[22];
    sub_16A9A4();
    sub_138964();
    sub_13894C();
    sub_138970();
    sub_386D8(v69, v70, v71, v72, v73, v74, v75, v76, 0x80000000001801B0);
    sub_168C54();
  }

  return sub_D13C(&v93);
}

uint64_t sub_1364C0()
{
  sub_D2DC();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[27] = *v0;
  v5 = sub_5758(&qword_1E6048, &qword_16D890);
  sub_D414(v5);
  v7 = *(v6 + 64);
  v1[28] = sub_D3C8();
  v8 = sub_1693E4();
  v1[29] = v8;
  sub_10AEC(v8);
  v1[30] = v9;
  v11 = *(v10 + 64);
  v1[31] = sub_D3C8();
  v12 = sub_168FE4();
  v1[32] = v12;
  sub_10AEC(v12);
  v1[33] = v13;
  v15 = *(v14 + 64);
  v1[34] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_13660C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v56 = *(v0 + 208);
  v58 = *(v0 + 256);
  v59 = *(v56 + 176);
  sub_16ACF4(40);
  v64._countAndFlagsBits = 0xD000000000000011;
  v64._object = 0x80000000001898E0;
  sub_16A744(v64);
  v5 = *(v3 + 416);
  sub_169274();
  v6 = sub_169244();
  *(v0 + 168) = v6;
  v57 = v5;
  swift_getWitnessTable();
  sub_16AE44();

  v65._countAndFlagsBits = 0xD000000000000013;
  v65._object = 0x8000000000189900;
  sub_16A744(v65);
  sub_169264();
  v7 = sub_168FD4();
  v9 = v8;
  v61 = *(v2 + 8);
  v61(v1, v58);
  v66._countAndFlagsBits = v7;
  v66._object = v9;
  sub_16A744(v66);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v10 = *(v0 + 272);
  v11 = *(v0 + 256);
  v12 = *(v0 + 200);
  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  v14 = sub_16A9A4();
  sub_386D8(v14, v59, 0xD000000000000089, 0x8000000000190720, 0xD00000000000002FLL, 0x8000000000190830, 46, 0, 0xE000000000000000);

  v15 = sub_169244();
  sub_169264();
  v16 = sub_168FD4();
  v18 = v17;
  v61(v10, v11);
  v60 = v15;
  v19 = sub_D95F4(v15, v16, v18);
  if (v19 > 0xF7u)
  {
    v20 = *(v0 + 272);
    v21 = *(v0 + 256);
    v22 = *(v0 + 200);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v24 = v23;
    sub_169264();
    v25 = sub_168FD4();
    v27 = v26;
    v61(v20, v21);
    *v24 = v25;
    v24[1] = v27;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v45 = *(v0 + 272);
    v46 = *(v0 + 248);
    v47 = *(v0 + 224);

    sub_D37C();
    goto LABEL_14;
  }

  v28 = v19;
  v29 = (v0 + 56);
  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v32 = *(v0 + 232);
  v33 = *(v0 + 192);
  sub_169384();
  sub_86E4(v31, &_swiftEmptySetSingleton, (v0 + 96));
  (*(v30 + 8))(v31, v32);
  if (!*(v0 + 120))
  {
    sub_D188(v0 + 96, &qword_1E5F80, &unk_16E7E0);
    *v29 = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_12;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *v29 = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_12;
  }

  if (!*(v0 + 80))
  {
LABEL_12:
    v44 = *(v0 + 192);
    sub_D188(v29, &qword_1E5F88, &unk_16D410);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    sub_16924();
    sub_169384();
    goto LABEL_13;
  }

  sub_D250(v29, v0 + 16);
  v34 = *(v0 + 40);
  v35 = *(v0 + 48);
  v62 = (v0 + 16);
  sub_D084((v0 + 16), v34);
  if ((*(v35 + 32))(v34, v35))
  {
    v36 = *(v0 + 216);
    v37 = *(v0 + 200);
    v38 = sub_169254();
    v39 = [v38 itemToConfirm];

    sub_16AB64();
    swift_unknownObjectRelease();
    v40 = (*(*(v36 + 432) + 16))(v0 + 136, v28, v57);

    v41 = *(v56 + 176);
    v42 = v40;
    sub_16ACF4(18);
    v67._countAndFlagsBits = 0xD000000000000010;
    v67._object = 0x8000000000189920;
    sub_16A744(v67);
    *(v0 + 176) = v42;
    sub_16AE44();

    v43 = sub_16A9A4();
    sub_386D8(v43, v41, 0xD000000000000089, 0x8000000000190720, 0xD00000000000002FLL, 0x8000000000190830, 61, 0, 0xE000000000000000);

    sub_D13C((v0 + 136));
  }

  v50 = *(v0 + 272);
  v51 = *(v0 + 248);
  v52 = *(v0 + 224);
  v53 = *(v0 + 184);
  v54 = *(v0 + 40);
  v55 = *(v0 + 48);
  sub_D084(v62, v54);
  (*(v55 + 16))(v54, v55);
  sub_169144();
  sub_D13C(v62);

  sub_D37C();
LABEL_14:

  return v48();
}

uint64_t sub_136CD4()
{
  sub_D2DC();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v1[19] = *v0;
  v4 = type metadata accessor for CarCommandsError();
  v1[20] = v4;
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[21] = sub_D3C8();
  v7 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v7);
  v9 = *(v8 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v10 = sub_168E14();
  v1[24] = v10;
  sub_10AEC(v10);
  v1[25] = v11;
  v13 = *(v12 + 64);
  v1[26] = sub_D3C8();
  v14 = sub_168FE4();
  v1[27] = v14;
  sub_10AEC(v14);
  v1[28] = v15;
  v17 = *(v16 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_136E6C()
{
  v47 = v0;
  v1 = *(*(v0 + 144) + 176);
  v2 = 0x80000000001907B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v3 = 0xD000000000000037;
  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  *(v0 + 56) = 0xD000000000000089;
  *(v0 + 64) = 0x8000000000190720;
  *(v0 + 72) = 47;
  *(v0 + 80) = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  v7 = sub_15AE4(v6);
  v9 = v8;

  if (v9)
  {
    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    sub_16A744(v49);
    v50._countAndFlagsBits = 0xD000000000000037;
    v50._object = 0x80000000001907B0;
    sub_16A744(v50);
    v3 = v7;
    v2 = v9;
  }

  v46._countAndFlagsBits = 58;
  v46._object = 0xE100000000000000;
  *(v0 + 104) = 69;
  v51._countAndFlagsBits = sub_16AE24();
  sub_16A744(v51);

  sub_16A744(v46);

  v10._countAndFlagsBits = sub_378D0(v1);
  if (v10._object)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    sub_16A744(v10);

    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    sub_16A744(v52);
  }

  v11 = sub_16A574();
  if (os_log_type_enabled(v11, v5))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46._countAndFlagsBits = v13;
    *v12 = 136315138;
    v14 = sub_15BC8(v3, v2, &v46._countAndFlagsBits);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v11, v5, "%s", v12, 0xCu);
    sub_D13C(v13);
    sub_D494();
    sub_D494();
  }

  else
  {
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = *(v0 + 136);
  v20 = *(*(v0 + 152) + 416);
  sub_169274();
  v21 = sub_169244();
  sub_169264();
  v22 = sub_168FD4();
  v24 = v23;
  v45 = *(v17 + 8);
  v45(v15, v16);
  sub_D95F4(v21, v22, v24);
  sub_12C0B0();
  sub_F3C00();
  sub_168D84();
  *(v0 + 112) = sub_169254();
  sub_138904();
  sub_5758(&qword_1EE680, &qword_179F90);
  v25 = swift_dynamicCast();
  v26 = *(v0 + 184);
  if (v25)
  {
    v27 = *(v0 + 48);
    sub_D084((v0 + 16), *(v0 + 40));
    v28 = *(v27 + 8);
    v29 = sub_10B58();
    v30(v29);
    sub_D13C((v0 + 16));
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_D188(v0 + 16, &qword_1EE688, &qword_179F98);
    v31 = sub_16A0C4();
    sub_5370(v26, 1, 1, v31);
  }

  v32 = *(v0 + 232);
  v33 = *(v0 + 216);
  v34 = *(v0 + 176);
  v35 = *(v0 + 136);
  sub_169264();
  sub_168FD4();
  v36 = sub_10B58();
  (v45)(v36);
  sub_16A6E4();

  v37 = sub_16A0C4();
  sub_5370(v34, 0, 1, v37);
  v38 = swift_task_alloc();
  *(v0 + 248) = v38;
  *v38 = v0;
  v38[1] = sub_137348;
  v39 = *(v0 + 208);
  v41 = *(v0 + 176);
  v40 = *(v0 + 184);
  v42 = *(v0 + 144);
  v43 = *(v0 + 128);

  return sub_137720();
}

uint64_t sub_137348()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *(v2 + 248);
  *v4 = *v1;
  *(v3 + 256) = v0;

  sub_D188(*(v2 + 176), &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_137484()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  sub_D188(v0[23], &qword_1E6300, &qword_16ECE0);
  v8 = *(v4 + 8);
  v9 = sub_10B58();
  v10(v9);

  sub_D37C();

  return v11();
}

uint64_t sub_137560()
{
  v1 = v0[32];
  v12 = v0[30];
  v13 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[21];
  v14 = v0[22];
  v7 = v0[20];
  sub_16ACF4(59);
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v16._object = 0x80000000001907F0;
  v16._countAndFlagsBits = 0xD000000000000039;
  sub_16A744(v16);
  v8 = v0[12];
  *v6 = v0[11];
  v6[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  sub_16924();
  sub_548D0(v6, v9);
  swift_willThrow();

  sub_5A09C(v6);
  sub_D188(v4, &qword_1E6300, &qword_16ECE0);
  (*(v3 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_137720()
{
  sub_D2DC();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = sub_16A164();
  sub_D414(v6);
  v8 = *(v7 + 64);
  v1[15] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1377A4()
{
  sub_D2DC();
  v1 = v0[15];
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[16] = sub_16A0F4();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_137868;
  v3 = v0[11];
  v4 = v0[12];

  return sub_E0130();
}

uint64_t sub_137868()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 136);
  *v3 = *v1;
  *(v2 + 144) = v6;
  *(v2 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_13796C()
{
  sub_D2DC();
  v1 = v0[14];
  type metadata accessor for ConfirmationSnippetFactory();
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 2));
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_137A38;
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[10];

  return sub_14AE58();
}

uint64_t sub_137A38()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  *(v3 + 168) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_137B40()
{
  sub_D2DC();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_D37C();

  return v3();
}

uint64_t sub_137BB0()
{
  sub_D2DC();
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[15];

  sub_D37C();

  return v4();
}

uint64_t sub_137C14()
{
  sub_D2DC();
  v1 = *(v0 + 128);

  v2 = *(v0 + 168);
  v3 = *(v0 + 120);

  sub_D37C();

  return v4();
}

uint64_t sub_137C84()
{
  v1 = *(v0 + qword_1F0DF0);

  return sub_D13C((v0 + qword_1F0DF8));
}

uint64_t *sub_137CB8()
{
  v0 = sub_3D044();
  v1 = *(v0 + qword_1F0DF0);

  sub_D13C((v0 + qword_1F0DF8));
  return v0;
}

uint64_t sub_137D00()
{
  v0 = sub_137CB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_137D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = async function pointer to NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[52];
  v16 = a5[53];
  v17 = a5[54];
  v18 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_137E58;

  return NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)(a1, a2, a3, a4, v18, a6);
}

uint64_t sub_137E58()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_D2A4();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_137F64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_138948;

  return sub_1364C0();
}

uint64_t sub_138018(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_1380EC;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_1380EC()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_D2A4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1381DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_138948;

  return sub_136CD4();
}

uint64_t sub_138288(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[52];
  v14 = a4[53];
  v15 = a4[54];
  v16 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v16, a5);
}

uint64_t sub_13836C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[52];
  v14 = a4[53];
  v15 = a4[54];
  v16 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v16, a5);
}

uint64_t sub_138450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_138524(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[52];
  v12 = a3[53];
  v13 = a3[54];
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v14, a4);
}

uint64_t sub_1385F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[52];
  v16 = a5[53];
  v17 = a5[54];
  v18 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_138948;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, v18, a6);
}

uint64_t sub_1386E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[52];
  v16 = a5[53];
  v17 = a5[54];
  v18 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_138948;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v18, a6);
}

uint64_t sub_1387D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = a6[52];
  v18 = a6[53];
  v19 = a6[54];
  v20 = type metadata accessor for CommonNeedsConfirmationFlowStrategy();
  *v16 = v7;
  v16[1] = sub_138948;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v20, a7);
}

unint64_t sub_138904()
{
  result = qword_1EE678;
  if (!qword_1EE678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE678);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsSetMaxACCATsSimple()
{
  result = qword_1EE690;
  if (!qword_1EE690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_138A08(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_138A2C, 0, 0);
}

uint64_t sub_138A2C()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x64656C62616E65;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_49014;
  v5 = *(v0 + 16);

  return v7(0xD000000000000029, 0x80000000001908B0, v2);
}

uint64_t sub_138B54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_138BA8(a1, a2);
}

uint64_t sub_138BA8(uint64_t a1, uint64_t a2)
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

uint64_t sub_138D04(uint64_t a1, uint64_t a2)
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

id sub_138E0C()
{
  sub_1693F4();
  sub_D084(v3, v3[3]);
  if (sub_168B14())
  {
    v0 = [objc_opt_self() processInfo];
    v1 = [v0 isLowPowerModeEnabled];
  }

  else
  {
    v1 = 0;
  }

  sub_D13C(v3);
  return v1;
}

void sub_138ED4(uint64_t a1)
{
  sub_11B48C(a1);
  sub_76D10();
  sub_A7318();
  v5[1] = sub_16A934();
  v2 = sub_11B48C(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_8F650(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_138FC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_16A934();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_8FA08(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

BOOL Array<A>.containsOnlyMultiplesOfSameString.getter(uint64_t a1)
{
  if (*(a1 + 16) < 2uLL)
  {
    return 0;
  }

  v2 = *(sub_138FC0(v1) + 16);

  return v2 == 1;
}

uint64_t sub_1390CC(uint64_t a1)
{
  v2 = sub_104B2C();
  v3 = sub_96E4(8, v2);

  if (v3)
  {

    return 6;
  }

  v5 = *(a1 + 144);

  v6 = sub_96E4(20, v5);

  if (v6)
  {

    return 9;
  }

  v7 = sub_104FD4();
  sub_8292C(v7);
  if (v9 == 0x6E776F6E6B6E75 && v8 == 0xE700000000000000)
  {

    return 0;
  }

  v11 = sub_16AE54();

  if (v11)
  {

    return 0;
  }

  v12 = *(a1 + 153);

  return sub_1391F8(v12);
}

uint64_t sub_13922C()
{
  v85 = v0;
  v1 = [*(v0 + 48) closureStates];
  sub_139D50();
  v2 = sub_16A7D4();

  result = sub_11B48C(v2);
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v74 = v2 & 0xC000000000000001;
    sub_13A698();
    v73 = _swiftEmptyArrayStorage;
    *&v5 = 136315138;
    v72 = v5;
    v75 = v6;
    v76 = v2;
    do
    {
      if (v74)
      {
        v7 = sub_16AD04();
      }

      else
      {
        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = [v7 vehicleLayoutKey];
      v10 = sub_16A664();
      v12 = v11;

      v83 = v10;
      v84 = v12;
      v87._countAndFlagsBits = 0x20646E6120;
      v87._object = 0xE500000000000000;
      sub_16A744(v87);
      v13 = [v8 latchState];
      v14 = v13 == 0;
      if (v13)
      {
        v15._countAndFlagsBits = 1702195828;
      }

      else
      {
        v15._countAndFlagsBits = 0x65736C6166;
      }

      if (v14)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      v15._object = v16;
      sub_16A744(v15);

      v18 = v83;
      v17 = v84;
      if (qword_1E58E8 != -1)
      {
        sub_B4F54();
        swift_once();
      }

      v19 = sub_16A584();
      sub_9DA0(v19, qword_1E65C0);
      v20 = sub_16A9A4();
      *(v0 + 16) = 0xD00000000000009ALL;
      *(v0 + 24) = v78;
      *(v0 + 32) = 47;
      *(v0 + 40) = 0xE100000000000000;
      sub_D030();
      v21 = (sub_16AB34() + 16);
      if (*v21)
      {
        v22 = &v21[2 * *v21];
        v23 = *v22;
        v24 = v22[1];

        v83 = v23;
        v84 = v24;
        v88._countAndFlagsBits = 32;
        v88._object = 0xE100000000000000;
        sub_16A744(v88);
        v89._countAndFlagsBits = 0xD000000000000012;
        v89._object = v77;
        sub_16A744(v89);
        v25 = v83;
        v26 = v84;
      }

      else
      {

        v25 = 0xD000000000000012;
        v26 = v77;
      }

      v79 = v25;
      v81 = v26;
      v83 = (&stru_20 + 26);
      v84 = 0xE100000000000000;
      *(v0 + 16) = 17;
      v90._countAndFlagsBits = sub_16AE24();
      sub_16A744(v90);

      sub_13A6B0(v27, v28, v29, v30, v31, v32, v33, v34, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v81, v83, v84);

      v35._countAndFlagsBits = sub_378D0(0x400uLL);
      if (v35._object)
      {
        v83 = &stru_20;
        v84 = 0xE100000000000000;
        sub_16A744(v35);

        sub_13A6B0(v36, v37, v38, v39, v40, v41, v42, v43, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v80, v82, v83, v84);
      }

      v44 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v44 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        v83 = &stru_20;
        v84 = 0xE100000000000000;
        v91._countAndFlagsBits = v18;
        v91._object = v17;
        sub_16A744(v91);
        sub_13A6B0(v45, v46, v47, v48, v49, v50, v51, v52, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v80, v82, v83, v84);
      }

      v53 = sub_16A574();
      if (os_log_type_enabled(v53, v20))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v83 = v55;
        *v54 = v72;
        v56 = sub_15BC8(v80, v82, &v83);

        *(v54 + 4) = v56;
        _os_log_impl(&dword_0, v53, v20, "%s", v54, 0xCu);
        sub_D13C(v55);
      }

      else
      {
      }

      v2 = v76;
      if (([v8 latchState] & 1) != 0 && (v57 = sub_139894(), v57 != 4))
      {
        v58 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = v73[2];
          sub_108A04();
          v73 = v61;
        }

        v59 = v73[2];
        if (v59 >= v73[3] >> 1)
        {
          sub_108A04();
          v73 = v62;
        }

        v73[2] = v59 + 1;
        *(v73 + v59 + 32) = v58;
      }

      else
      {
      }

      ++v4;
    }

    while (v75 != v4);

    v63 = v73;
  }

  else
  {

    sub_13A698();
    v63 = _swiftEmptyArrayStorage;
  }

  v83 = 0;
  v84 = 0xE000000000000000;
  sub_16ACF4(18);

  v83 = 0xD000000000000010;
  v84 = 0x80000000001909E0;
  v92._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v92);

  v64 = v83;
  v65 = v84;
  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v66 = sub_16A584();
  sub_9DA0(v66, qword_1E65C0);
  v67 = sub_16A9A4();
  sub_386D8(v67, 0x400uLL, 0xD00000000000009ALL, v78, 0xD000000000000012, v77, 28, v64, v65);

  v83 = v63;

  sub_139D94(&v83);

  v68 = v83;
  v69 = *(v0 + 8);

  return v69(v68);
}

uint64_t sub_139894()
{
  v1 = sub_169E84();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v42 = &v40 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - v9;
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = [v0 vehicleLayoutKey];
  v14 = sub_16A664();
  v16 = v15;

  v43 = v2[13];
  v43(v12, enum case for CAUVehicleLayoutKey.door_front_left(_:), v1);
  v17 = sub_169E74();
  v19 = v18;
  v20 = v2[1];
  v20(v12, v1);
  if (v17 == v14 && v19 == v16)
  {

LABEL_8:

    return 0;
  }

  v22 = sub_13A67C();

  if (v22)
  {
    goto LABEL_8;
  }

  v24 = v43;
  v43(v10, enum case for CAUVehicleLayoutKey.door_front_right(_:), v1);
  v25 = sub_169E74();
  v27 = v26;
  v20(v10, v1);
  if (v25 == v14 && v27 == v16)
  {

LABEL_16:

    return 1;
  }

  v29 = sub_13A67C();

  if (v29)
  {
    goto LABEL_16;
  }

  v30 = v42;
  v24(v42, enum case for CAUVehicleLayoutKey.door_rear_left(_:), v1);
  sub_169E74();
  v31 = sub_13A6CC();
  (v20)(v31);
  if (v29 == v14 && v30 == v16)
  {

LABEL_24:

    return 2;
  }

  v33 = sub_13A67C();

  if (v33)
  {
    goto LABEL_24;
  }

  v34 = v41;
  v24(v41, enum case for CAUVehicleLayoutKey.door_rear_right(_:), v1);
  sub_169E74();
  v35 = sub_13A6CC();
  (v20)(v35);
  if (v33 == v14 && v34 == v16)
  {

    return 3;
  }

  v37 = sub_13A67C();

  if (v37)
  {
    return 3;
  }

  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v38 = sub_16A584();
  sub_9DA0(v38, qword_1E65C0);
  v39 = sub_16A9A4();
  sub_386D8(v39, 0x400uLL, 0xD00000000000009ALL, 0x8000000000190920, 0xD000000000000019, 0x8000000000190A00, 47, 0xD000000000000018, 0x8000000000190A20);
  return 4;
}

uint64_t sub_139CC0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_31D84;

  return sub_13920C();
}

unint64_t sub_139D50()
{
  result = qword_1EE780;
  if (!qword_1EE780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE780);
  }

  return result;
}

Swift::Int sub_139D94(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_39678(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_139E00(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_139E00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_16AE14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_16A804();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_139F50(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_139EF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_139EF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_139F50(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = _swiftEmptyArrayStorage;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_108404();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_108404();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_13A51C((*a3 + *v64), (*a3 + *v66), (*a3 + v67), __dst);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_13A3F0(&v78, *a1, a3);
LABEL_89:
}