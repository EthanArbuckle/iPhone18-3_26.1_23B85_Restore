FedAutoEvalPlugin::TaskParametersError_optional __swiftcall TaskParametersError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_100010990;
  v8._object = object;
  v5 = sub_10000BE60(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t TaskParametersError.rawValue.getter()
{
  if (*v0)
  {
    result = 0x4A64696C61766E69;
  }

  else
  {
    result = 0x6F5464656C696166;
  }

  *v0;
  return result;
}

uint64_t sub_100001920(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4A64696C61766E69;
  }

  else
  {
    v4 = 0x6F5464656C696166;
  }

  if (v3)
  {
    v5 = 0xEE0065646F636544;
  }

  else
  {
    v5 = 0xEF617461444E4F53;
  }

  if (*a2)
  {
    v6 = 0x4A64696C61766E69;
  }

  else
  {
    v6 = 0x6F5464656C696166;
  }

  if (*a2)
  {
    v7 = 0xEF617461444E4F53;
  }

  else
  {
    v7 = 0xEE0065646F636544;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000BEB0();
  }

  return v9 & 1;
}

Swift::Int sub_1000019E0()
{
  v1 = *v0;
  sub_10000BF20();
  sub_10000BD80();

  return sub_10000BF40();
}

uint64_t sub_100001A7C()
{
  *v0;
  sub_10000BD80();
}

Swift::Int sub_100001B04()
{
  v1 = *v0;
  sub_10000BF20();
  sub_10000BD80();

  return sub_10000BF40();
}

uint64_t sub_100001B9C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100010990;
  v8._object = v3;
  v5 = sub_10000BE60(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100001BFC(uint64_t *a1@<X8>)
{
  v2 = 0x6F5464656C696166;
  if (*v1)
  {
    v2 = 0x4A64696C61766E69;
  }

  v3 = 0xEE0065646F636544;
  if (*v1)
  {
    v3 = 0xEF617461444E4F53;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100001C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003300;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100001D14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001DBC;

  return sub_100002520(a1);
}

uint64_t sub_100001DBC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100001EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100001F9C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001F9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002090(uint64_t a1)
{
  v2 = sub_1000024CC();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000213C();
  sub_10000B920();
  return 0;
}

unint64_t sub_10000213C()
{
  result = qword_100014130;
  if (!qword_100014130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014130);
  }

  return result;
}

unint64_t sub_100002194()
{
  result = qword_100014138;
  if (!qword_100014138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014138);
  }

  return result;
}

unint64_t sub_1000021EC()
{
  result = qword_100014140;
  if (!qword_100014140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014140);
  }

  return result;
}

unint64_t sub_100002244()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

unint64_t sub_10000229C()
{
  result = qword_100014150;
  if (!qword_100014150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskParametersError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaskParametersError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000024CC()
{
  result = qword_100014158;
  if (!qword_100014158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014158);
  }

  return result;
}

uint64_t sub_100002520(uint64_t a1)
{
  v1[13] = a1;
  v2 = sub_10000BCF0();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = sub_10000BA40();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v8 = sub_100002FE0(&qword_100014160, &qword_10000C540);
  v1[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v10 = sub_10000BC80();
  v1[22] = v10;
  v11 = *(v10 - 8);
  v1[23] = v11;
  v12 = *(v11 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v13 = sub_10000BA70();
  v1[27] = v13;
  v14 = *(v13 - 8);
  v1[28] = v14;
  v15 = *(v14 + 64) + 15;
  v1[29] = swift_task_alloc();
  v16 = sub_10000BA10();
  v1[30] = v16;
  v17 = *(v16 - 8);
  v1[31] = v17;
  v18 = *(v17 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000027B0, 0, 0);
}

uint64_t sub_1000027B0()
{
  v1 = v0[29];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[13];
  (*(v0[31] + 104))(v0[33], enum case for PFLTaskSource.CKProd(_:), v0[30]);
  sub_10000B980();
  sub_10000BA50();

  sub_100003028();
  sub_10000BA60();
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v8 = v0[33];
    v9 = v0[30];
    v10 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v13 = v0[27];
    sub_100003124(v7);
    v14 = objc_allocWithZone(sub_10000B940());
    v15 = sub_10000B930();
    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v8, v9);
    v17 = v0[32];
    v16 = v0[33];
    v18 = v0[29];
    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[24];
    v22 = v0[21];
    v23 = v0[19];
    v24 = v0[16];

    v25 = v0[1];

    return v25(v15);
  }

  else
  {
    v54 = v0[33];
    v27 = v0[31];
    v48 = v0[30];
    v49 = v0[32];
    v50 = v0[26];
    v51 = v0[25];
    v52 = v0[24];
    v28 = v0[18];
    v29 = v0[19];
    v30 = v0[17];
    v53 = v0[16];
    v55 = v0[14];
    v56 = v0[15];
    v57 = *(v6 + 32);
    v57();
    sub_100002FE0(&qword_100014178, &qword_10000C548);
    v31 = *(v28 + 72);
    v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10000C330;
    sub_10000BA30();
    sub_10000BA20();
    v0[12] = v33;
    sub_10000326C(&qword_100014180, &type metadata accessor for PFLPluginConsent);
    sub_100002FE0(&qword_100014188, &unk_10000C550);
    sub_10000318C();
    sub_10000BE00();
    (*(v27 + 16))(v49, v54, v48);
    v34 = sub_10000BAB0();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v0[34] = sub_10000BAA0();
    v37 = *(v6 + 16);
    v37(v51, v50, v5);
    v37(v52, v51, v5);
    sub_10000BCE0();
    v38 = *(v6 + 8);
    v0[35] = v38;
    v0[36] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38(v51, v5);
    v0[5] = v55;
    v0[6] = &protocol witness table for TextDataExtractorFactory;
    v39 = sub_1000031F0(v0 + 2);
    (*(v56 + 32))(v39, v53, v55);
    v40 = type metadata accessor for FedAutoEvalPluginRunner();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    v0[37] = v43;
    v43[2] = 0xD000000000000032;
    v43[3] = 0x800000010000CAE0;
    v43[4] = 0xD000000000000011;
    v43[5] = 0x800000010000C440;
    (v57)(v43 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig, v52, v5);
    sub_100003254(v0 + 1, v43 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataExtractorFactory);
    v0[10] = v40;
    v44 = sub_10000326C(&qword_100014198, type metadata accessor for FedAutoEvalPluginRunner);
    v0[7] = v43;
    v0[11] = v44;
    v45 = *(&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + 1);
    v58 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

    v46 = swift_task_alloc();
    v0[38] = v46;
    *v46 = v0;
    v46[1] = sub_100002D94;
    v47 = v0[13];

    return (v58)(v47, v0 + 7);
  }
}

uint64_t sub_100002D94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v5 = *v1;
  *(v2 + 312) = a1;

  sub_1000032B4((v2 + 56));

  return _swift_task_switch(sub_100002E9C, 0, 0);
}

uint64_t sub_100002E9C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[31];
  v23 = v0[30];
  v24 = v0[33];
  v6 = v0[28];
  v7 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[22];

  v4(v9, v10);
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v24, v23);
  v11 = v0[39];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[19];
  v20 = v0[16];

  v21 = v0[1];

  return v21(v11);
}

uint64_t sub_100002FE0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003028()
{
  result = qword_100014168;
  if (!qword_100014168)
  {
    sub_1000030DC(&qword_100014160, &qword_10000C540);
    sub_10000326C(&qword_100014170, &type metadata accessor for DataSourceConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014168);
  }

  return result;
}

uint64_t sub_1000030DC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003124(uint64_t a1)
{
  v2 = sub_100002FE0(&qword_100014160, &qword_10000C540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000318C()
{
  result = qword_100014190;
  if (!qword_100014190)
  {
    sub_1000030DC(&qword_100014188, &unk_10000C550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014190);
  }

  return result;
}

uint64_t *sub_1000031F0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003254(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000326C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000032B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003304(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v5 = 0x800000010000CA50;
    v6 = 0xD000000000000012;
    if (a1 == 1)
    {
      v6 = 0x754E656C706D6153;
      v5 = 0xEF73746E6576456DLL;
    }

    if (a1)
    {
      v3 = v6;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0x800000010000CA20;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v4 = 0x800000010000CAB0;
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x6166654472657355;
      v4 = 0xEF79654B73746C75;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 3)
    {
      v4 = 0x800000010000CA70;
    }

    else
    {
      v4 = 0x800000010000CA90;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x754E656C706D6153;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (a2 == 1)
      {
        v7 = 0xEF73746E6576456DLL;
      }

      else
      {
        v7 = 0x800000010000CA50;
      }

      if (v3 != v8)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v7 = 0x800000010000CA20;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_42;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v7 = 0x800000010000CA70;
      if (v3 != 0xD000000000000013)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v9 = "EncodingMorpheusProgram";
LABEL_39:
    v7 = (v9 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000017)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (a2 == 5)
  {
    v9 = "ExtractFromLastItemDate";
    goto LABEL_39;
  }

  v7 = 0xEF79654B73746C75;
  if (v3 != 0x6166654472657355)
  {
LABEL_44:
    v10 = sub_10000BEB0();
    goto LABEL_45;
  }

LABEL_42:
  if (v4 != v7)
  {
    goto LABEL_44;
  }

  v10 = 1;
LABEL_45:

  return v10 & 1;
}

Swift::Int sub_10000353C()
{
  sub_10000BF20();
  sub_10000BD80();

  return sub_10000BF40();
}

uint64_t sub_1000036A0()
{
  *v0;
  sub_10000BD80();
}

uint64_t sub_1000037E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000058BC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100003810(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEF73746E6576456DLL;
    v9 = 0x754E656C706D6153;
    if (v2 != 1)
    {
      v9 = 0xD000000000000012;
      v8 = 0x800000010000CA50;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v8 = 0x800000010000CA20;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000010000CAB0;
    v4 = 0x6166654472657355;
    if (v2 == 5)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xEF79654B73746C75;
    }

    v5 = 0x800000010000CA70;
    v6 = 0xD000000000000013;
    if (v2 != 3)
    {
      v6 = 0xD000000000000017;
      v5 = 0x800000010000CA90;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_10000391C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x754E656C706D6153;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x6166654472657355;
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000013;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100003A20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000058BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100003A60(uint64_t a1)
{
  v2 = sub_10000550C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003A9C(uint64_t a1)
{
  v2 = sub_10000550C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003AD8()
{
  v1 = type metadata accessor for FedAutoEvalPluginArgs();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v3);
  v8 = (&v24 - v7);
  result = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  if (*v0)
  {
    if (v0[1] >= *v0)
    {
      return result;
    }

    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v12 = sub_10000BAE0();
    sub_100004C54(v12, qword_100014E38);
    sub_100004FEC(v0, v11);
    sub_100004FEC(v0, v8);
    v13 = sub_10000BAC0();
    v14 = sub_10000BDE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      v16 = *(v11 + 1);
      sub_100005050(v11);
      *(v15 + 4) = v16;
      *(v15 + 12) = 2048;
      v17 = *v8;
      sub_100005050(v8);
      *(v15 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "sampleNumEvents %lu is more than minimumNumEvents=%lu", v15, 0x16u);
    }

    else
    {
      sub_100005050(v8);
      sub_100005050(v11);
    }

    v22 = 3;
  }

  else
  {
    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v18 = sub_10000BAE0();
    sub_100004C54(v18, qword_100014E38);
    sub_100004FEC(v0, v5);
    v13 = sub_10000BAC0();
    v19 = sub_10000BDE0();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      v21 = *v5;
      sub_100005050(v5);
      *(v20 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v19, "minimumNumEvents %lu is not > 0", v20, 0xCu);
    }

    else
    {
      sub_100005050(v5);
    }

    v22 = 1;
  }

  sub_100004C8C();
  swift_allocError();
  *v23 = v22;
  return swift_willThrow();
}

uint64_t sub_100003DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v4 = sub_10000BD60();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10000B870();
  v66 = *(v69 - 8);
  v7 = *(v66 + 64);
  __chkstk_darwin(v69);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000BCB0();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  __chkstk_darwin(v9);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FedAutoEvalPluginArgs();
  v14 = *(*(v13 - 1) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v62 - v18;
  v20 = objc_opt_self();
  v71 = a1;
  sub_10000BA90();
  isa = sub_10000BD20().super.isa;

  v72 = 0;
  v22 = [v20 dataWithJSONObject:isa options:0 error:&v72];

  v23 = v72;
  if (v22)
  {
    v24 = sub_10000B890();
    v26 = v25;

    v27 = sub_10000B820();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_10000B810();
    sub_100005614(&qword_1000141B0, type metadata accessor for FedAutoEvalPluginArgs);
    sub_10000B800();
    if (!v2)
    {
      v64 = v9;
      sub_100004F20(v24, v26);

      sub_100004F74(v17, v19);
      v39 = v13[7];
      v40 = *&v19[v39];
      v41 = v40[2];
      if (!v41)
      {
LABEL_15:
        v45 = &v19[v13[8]];
        v46 = v70;
        v47 = v64;
        (*(v70 + 16))(v12, v45, v64);
        if ((*(v46 + 88))(v12, v47) == enum case for MorpheusProgramConfig.programFilePath(_:))
        {
          v63 = v45;
          (*(v46 + 96))(v12, v47);
          v48 = *v12;
          v49 = v12[1];
          sub_10000BA80();
          v51 = v50;

          if (!v51)
          {
            sub_100004C8C();
            swift_allocError();
            *v53 = 7;
            swift_willThrow();

            v54 = v13[6];
            v55 = sub_10000BC80();
            (*(*(v55 - 8) + 8))(&v19[v54], v55);

            (*(v46 + 8))(&v19[v13[8]], v64);
            v56 = *&v19[v13[10] + 8];
          }

          v52 = v68;
          sub_10000B860();

          sub_10000BD50();
          v57 = sub_10000BD40();
          v59 = v58;
          (*(v66 + 8))(v52, v69);
          v61 = v63;
          v60 = v64;
          (*(v46 + 8))(v63, v64);
          *v61 = v57;
          v61[1] = v59;
          (*(v46 + 104))(v61, enum case for MorpheusProgramConfig.program(_:), v60);
        }

        else
        {
          (*(v46 + 8))(v12, v47);
        }

        sub_100003AD8();
        sub_100004FEC(v19, v65);

        return sub_100005050(v19);
      }

      v42 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100004FD8(v40);
        }

        if (v42 >= v40[2])
        {
          break;
        }

        v43 = *(sub_10000BCD0() - 8);
        v44 = v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
        sub_10000BCC0();
        ++v42;
        *&v19[v39] = v40;
        if (v41 == v42)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    sub_100004F20(v24, v26);
  }

  else
  {
    v30 = v23;
    sub_10000B850();

    swift_willThrow();
  }

  if (qword_100014128 != -1)
  {
LABEL_22:
    swift_once();
  }

  v31 = sub_10000BAE0();
  sub_100004C54(v31, qword_100014E38);
  swift_errorRetain();
  v32 = sub_10000BAC0();
  v33 = sub_10000BDE0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    swift_errorRetain();
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&_mh_execute_header, v32, v33, "Couldn't form FedAutoEvalPluginArgs: %@", v34, 0xCu);
    sub_100004EB8(v35);
  }

  sub_100004C8C();
  swift_allocError();
  *v37 = 0;
  swift_willThrow();
}

uint64_t type metadata accessor for FedAutoEvalPluginArgs()
{
  result = qword_100014218;
  if (!qword_100014218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000466C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_10000BCB0();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000BC80();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100002FE0(&qword_100014280, &qword_10000C5D0);
  v41 = *(v44 - 8);
  v11 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v35 - v12;
  v14 = type metadata accessor for FedAutoEvalPluginArgs();
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin();
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  sub_1000054C8(a1, a1[3]);
  sub_10000550C();
  v43 = v13;
  v19 = v45;
  sub_10000BF50();
  if (v19)
  {
    return sub_1000032B4(a1);
  }

  v20 = v41;
  v21 = v42;
  v36 = v17;
  v22 = a1;
  v53 = 0;
  v23 = sub_10000BE90();
  v24 = v36;
  *v36 = v23;
  v52 = 1;
  v24[1] = sub_10000BE90();
  v51 = 2;
  sub_100005614(&qword_100014170, &type metadata accessor for DataSourceConfig);
  sub_10000BEA0();
  (*(v40 + 32))(v24 + v14[6], v10, v7);
  sub_100002FE0(&qword_100014290, &qword_10000C5D8);
  v50 = 3;
  sub_100005560();
  sub_10000BEA0();
  v45 = 0;
  *(v24 + v14[7]) = v46;
  v49 = 4;
  sub_100005614(&qword_1000142A8, &type metadata accessor for MorpheusProgramConfig);
  v25 = v21;
  v26 = v38;
  sub_10000BEA0();
  (*(v39 + 32))(v36 + v14[8], v25, v26);
  v48 = 5;
  v27 = sub_10000BE80();
  v28 = v36;
  *(v36 + v14[9]) = v27;
  v47 = 6;
  v29 = sub_10000BE70();
  v42 = v30;
  v31 = v29;
  (*(v20 + 8))(v43, v44);
  v32 = (v28 + v14[10]);
  v33 = v42;
  *v32 = v31;
  v32[1] = v33;
  sub_100004FEC(v28, v37);
  sub_1000032B4(v22);
  return sub_100005050(v28);
}

uint64_t sub_100004C54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004C8C()
{
  result = qword_1000141A0;
  if (!qword_1000141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A0);
  }

  return result;
}

size_t sub_100004CE0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002FE0(&qword_1000141B8, &qword_10000C588);
  v10 = *(sub_10000BCD0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000BCD0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100004EB8(uint64_t a1)
{
  v2 = sub_100002FE0(&qword_1000141A8, &qword_10000C580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004F20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedAutoEvalPluginArgs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedAutoEvalPluginArgs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005050(uint64_t a1)
{
  v2 = type metadata accessor for FedAutoEvalPluginArgs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000050C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000BC80();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000BCB0();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100005200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000BC80();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000BCB0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100005328()
{
  sub_10000BC80();
  if (v0 <= 0x3F)
  {
    sub_100005424();
    if (v1 <= 0x3F)
    {
      sub_10000BCB0();
      if (v2 <= 0x3F)
      {
        sub_10000547C(319, &qword_100014230);
        if (v3 <= 0x3F)
        {
          sub_10000547C(319, &unk_100014238);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100005424()
{
  if (!qword_100014228)
  {
    sub_10000BCD0();
    v0 = sub_10000BDB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100014228);
    }
  }
}

void sub_10000547C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10000BDF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_1000054C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000550C()
{
  result = qword_100014288;
  if (!qword_100014288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014288);
  }

  return result;
}

unint64_t sub_100005560()
{
  result = qword_100014298;
  if (!qword_100014298)
  {
    sub_1000030DC(&qword_100014290, &qword_10000C5D8);
    sub_100005614(&qword_1000142A0, &type metadata accessor for DataProcessingStepConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014298);
  }

  return result;
}

uint64_t sub_100005614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for FedAutoEvalPluginArgs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FedAutoEvalPluginArgs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000057B8()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

unint64_t sub_100005810()
{
  result = qword_1000142B8;
  if (!qword_1000142B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B8);
  }

  return result;
}

unint64_t sub_100005868()
{
  result = qword_1000142C0;
  if (!qword_1000142C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C0);
  }

  return result;
}

uint64_t sub_1000058BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000109E0;
  v6._object = a2;
  v4 = sub_10000BE60(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for FedAutoEvalPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FedAutoEvalPluginError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_100005A6C()
{
  v1 = *v0;
  sub_10000BF20();
  sub_10000BF30(v1 + 9701);
  return sub_10000BF40();
}

Swift::Int sub_100005AEC()
{
  v1 = *v0;
  sub_10000BF20();
  sub_10000BF30(v1 + 9701);
  return sub_10000BF40();
}

uint64_t sub_100005B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005CCC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100005B78()
{
  result = qword_1000142C8;
  if (!qword_1000142C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C8);
  }

  return result;
}

uint64_t sub_100005BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005C24();
  v5 = sub_100005C78();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_100005C24()
{
  result = qword_1000142D0;
  if (!qword_1000142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D0);
  }

  return result;
}

unint64_t sub_100005C78()
{
  result = qword_1000142D8;
  if (!qword_1000142D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D8);
  }

  return result;
}

uint64_t sub_100005CCC(uint64_t a1)
{
  if ((a1 - 9701) >= 0xF)
  {
    return 15;
  }

  else
  {
    return a1 - 9701;
  }
}

uint64_t sub_100005CE4()
{
  v1[2] = v0;
  v2 = *(*(sub_100002FE0(&qword_100014428, &qword_10000C990) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = sub_10000BD00();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_10000BC80();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100005E68, 0, 0);
}

uint64_t sub_100005E68()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v17 = v0[7];
  v18 = v0[6];
  v19 = v0[5];
  v5 = v0[2];
  v6 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v0[14] = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v3);
  sub_10000BC50();
  v8 = *(v4 + 8);
  v0[17] = v8;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v7(v2, v5 + v6, v3);
  sub_10000BC60();
  v8(v2, v3);
  sub_10000BB40();
  (*(v18 + 8))(v17, v19);

  v9 = v0[3];
  v7(v0[11], v5 + v6, v0[8]);
  v10 = sub_10000B8C0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_100006110;
  v12 = v0[11];
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];

  return sub_100006844(v13, v12, v14);
}

uint64_t sub_100006110(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[19];
  v5 = (*v2)[18];
  v6 = (*v2)[17];
  v7 = (*v2)[11];
  v8 = (*v2)[8];
  v9 = (*v2)[3];
  v10 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  sub_10000B650(v9, &qword_100014428, &qword_10000C990);
  v6(v7, v8);
  if (v1)
  {
    v11 = sub_100006560;
  }

  else
  {
    sub_10000B650(v3[4], &qword_100014428, &qword_10000C990);
    v11 = sub_1000062E4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000062E4()
{
  if (qword_100014128 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_10000BAE0();
  sub_100004C54(v2, qword_100014E38);

  v3 = sub_10000BAC0();
  v4 = sub_10000BDD0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Loaded %ld in ensureDataAvailability", v7, 0xCu);
  }

  else
  {
    v8 = v0[20];
  }

  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[2];
  v17 = *(v0[20] + 16);

  v12(v14, v16 + v13, v15);
  v18 = sub_10000BC40();
  v10(v14, v15);
  if (v17 >= v18)
  {
    v29 = v0[12];
    v28 = v0[13];
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[7];
    v34 = v0[3];
    v33 = v0[4];
  }

  else
  {
    sub_100004C8C();
    swift_allocError();
    *v19 = 9;
    swift_willThrow();
    v21 = v0[12];
    v20 = v0[13];
    v23 = v0[10];
    v22 = v0[11];
    v24 = v0[7];
    v26 = v0[3];
    v25 = v0[4];
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_100006560()
{
  v1 = v0[21];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100006618()
{
  v19 = sub_10000BD00();
  v18 = *(v19 - 8);
  v1 = *(v18 + 64);
  (__chkstk_darwin)();
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000BC80();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v12 = v4[2];
  v12(&v16 - v9, v0 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig, v3);
  sub_10000BC50();
  v13 = v4[1];
  v13(v10, v3);
  v12(v8, v16 + v11, v3);
  sub_10000BC60();
  v13(v8, v3);
  v14 = v17;
  sub_10000BB40();
  (*(v18 + 8))(v14, v19);
}

uint64_t sub_100006844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_100002FE0(&qword_100014428, &qword_10000C990) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_10000BC80();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100006970, 0, 0);
}

uint64_t sub_100006970()
{
  v68 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  v5 = v0[8];
  v6 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v7 = *(v3 + 16);
  v7(v1, v4 + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig, v2);
  LOBYTE(v5) = sub_10000BC30();
  v8 = *(v3 + 8);
  v8(v1, v2);
  if (v5)
  {
    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v9 = v0[14];
    v10 = v0[9];
    v11 = sub_10000BAE0();
    v0[19] = sub_100004C54(v11, qword_100014E38);
    sub_10000B5E8(v10, v9, &qword_100014428, &qword_10000C990);
    v12 = sub_10000BAC0();
    v13 = sub_10000BDC0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[14];
    if (v14)
    {
      v16 = v0[13];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v67[0] = v18;
      *v17 = 136315138;
      sub_10000B5E8(v15, v16, &qword_100014428, &qword_10000C990);
      v19 = sub_10000B8C0();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v16, 1, v19) == 1)
      {
        sub_10000B650(v0[13], &qword_100014428, &qword_10000C990);
        v21 = 0x800000010000CBF0;
        v22 = 0xD00000000000001CLL;
      }

      else
      {
        v52 = v0[13];
        v22 = sub_10000B8A0();
        v21 = v53;
        (*(v20 + 8))(v52, v19);
      }

      sub_10000B650(v0[14], &qword_100014428, &qword_10000C990);
      v54 = sub_100008234(v22, v21, v67);

      *(v17 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v12, v13, "Extracting text data from date: %s.", v17, 0xCu);
      sub_1000032B4(v18);
    }

    else
    {

      sub_10000B650(v15, &qword_100014428, &qword_10000C990);
    }

    v55 = v0[9];
    v56 = v0[8];
    v57 = (v0[10] + OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataExtractorFactory);
    v58 = v57[4];
    sub_1000054C8(v57, v57[3]);
    sub_10000BCA0();
    v59 = v0[5];
    v60 = v0[6];
    sub_1000054C8(v0 + 2, v59);
    v61 = async function pointer to dispatch thunk of Extractor.extract()[1];
    v62 = swift_task_alloc();
    v0[20] = v62;
    *v62 = v0;
    v62[1] = sub_100007010;
    v63 = v0[11];

    return dispatch thunk of Extractor.extract()(v63, v59, v60);
  }

  else
  {
    v65 = v4;
    v66 = v8;
    if (qword_100014128 != -1)
    {
      swift_once();
    }

    v23 = v0[17];
    v24 = v0[15];
    v25 = v0[10];
    v26 = v0[8];
    v27 = sub_10000BAE0();
    sub_100004C54(v27, qword_100014E38);
    v7(v23, v26, v24);

    v28 = sub_10000BAC0();
    v29 = sub_10000BDE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[18];
      v64 = v0[17];
      v31 = v0[15];
      v32 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v32 = 136315394;
      v7(v30, v65 + v6, v31);
      v33 = sub_10000BC20();
      v35 = v34;
      v66(v30, v31);
      v36 = sub_100008234(v33, v35, v67);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = sub_10000BC20();
      v39 = v38;
      v66(v64, v31);
      v40 = sub_100008234(v37, v39, v67);

      *(v32 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "Conflicting data sources from task parameters and recipe.\nTask parameters: %s\nRecipe: %s.", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v41 = v0[17];
      v42 = v0[15];

      v66(v41, v42);
    }

    sub_100004C8C();
    swift_allocError();
    *v43 = 11;
    swift_willThrow();
    v45 = v0[17];
    v44 = v0[18];
    v47 = v0[13];
    v46 = v0[14];
    v49 = v0[11];
    v48 = v0[12];

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_100007010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_100007404;
  }

  else
  {
    v5 = sub_100007124;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007124()
{
  v1 = v0[21];
  sub_10000B6B0(v0[11], v0[12], &qword_100014428, &qword_10000C990);
  if (v1)
  {
    v2 = v0[21];
    if (*(v2 + 16))
    {
      v3 = v0[19];
      v4 = v0[21];

      v5 = sub_10000BAC0();
      v6 = sub_10000BDC0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134217984;
        *(v7 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v5, v6, "Extracted %ld items.", v7, 0xCu);
      }

      else
      {
      }

      v24 = v0[17];
      v23 = v0[18];
      v26 = v0[13];
      v25 = v0[14];
      v27 = v0[11];
      sub_10000B6B0(v0[12], v0[7], &qword_100014428, &qword_10000C990);
      sub_1000032B4(v0 + 2);

      v28 = v0[1];

      return v28(v2);
    }

    v8 = v0[21];
  }

  v9 = v0[19];
  v10 = sub_10000BAC0();
  v11 = sub_10000BDE0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No data extracted.", v12, 2u);
  }

  v13 = v0[12];

  sub_100004C8C();
  swift_allocError();
  *v14 = 9;
  swift_willThrow();
  sub_10000B650(v13, &qword_100014428, &qword_10000C990);
  sub_1000032B4(v0 + 2);
  v16 = v0[17];
  v15 = v0[18];
  v18 = v0[13];
  v17 = v0[14];
  v20 = v0[11];
  v19 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100007404()
{
  sub_1000032B4(v0 + 2);
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000074B0@<X0>(unint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = sub_100002FE0(&qword_100014428, &qword_10000C990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v38 = &v36 - v3;
  v40 = sub_10000B8C0();
  v39 = *(v40 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v40);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002FE0(&qword_100014498, &qword_10000CA00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_10000B8D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002FE0(&qword_1000144A0, &qword_10000CA08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000C840;
  *(inited + 32) = 1954047348;
  *(inited + 40) = 0xE400000000000000;
  v16 = sub_10000BBA0();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  v18 = sub_100009078(inited);
  swift_setDeallocating();
  sub_10000B650(inited + 32, &qword_100014488, &qword_10000C9F0);
  sub_10000BBB0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B650(v9, &qword_100014498, &qword_10000CA00);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v44 = v10;
    v19 = sub_1000031F0(&v43);
    (*(v11 + 16))(v19, v14, v10);
    sub_10000B57C(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v18;
    sub_100008BC4(v42, 0x64496D657469, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    (*(v11 + 8))(v14, v10);
    v18 = v45;
  }

  v21 = sub_10000BB70();
  v23 = v39;
  v24 = v38;
  if (v22)
  {
    v44 = &type metadata for String;
    *&v43 = v21;
    *(&v43 + 1) = v22;
    sub_10000B57C(&v43, v42);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v18;
    sub_100008BC4(v42, 0xD000000000000015, 0x800000010000CBD0, v25);
    v18 = v45;
  }

  v26 = sub_10000BB60();
  if (v27)
  {
    v44 = &type metadata for String;
    *&v43 = v26;
    *(&v43 + 1) = v27;
    sub_10000B57C(&v43, v42);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v18;
    sub_100008BC4(v42, 0xD000000000000013, 0x800000010000CBB0, v28);
    v18 = v45;
  }

  sub_10000BB80();
  v29 = v40;
  if ((*(v23 + 48))(v24, 1, v40) == 1)
  {
    sub_10000B650(v24, &qword_100014428, &qword_10000C990);
  }

  else
  {
    v30 = v37;
    (*(v23 + 32))(v37, v24, v29);
    v44 = v29;
    v31 = sub_1000031F0(&v43);
    (*(v23 + 16))(v31, v30, v29);
    sub_10000B57C(&v43, v42);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v18;
    sub_100008BC4(v42, 1702125924, 0xE400000000000000, v32);
    (*(v23 + 8))(v30, v29);
    v18 = v45;
  }

  result = sub_10000BB90();
  if (result)
  {
    if (*(result + 16))
    {
      v34 = result;
      v44 = sub_100002FE0(&qword_1000144A8, &unk_10000CA10);
      *&v43 = v34;
      sub_10000B57C(&v43, v42);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v18;
      result = sub_100008BC4(v42, 1936154996, 0xE400000000000000, v35);
      v18 = v45;
    }

    else
    {
    }
  }

  *v41 = v18;
  return result;
}

uint64_t sub_100007A48(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_1000091A8((result + 32), (result + 32 + v2));
      }

      else
      {
        v3 = sub_10000B840();
        v4 = *(v3 + 48);
        v5 = *(v3 + 52);
        swift_allocObject();
        sub_10000B830();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_10000B880();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100007B10()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataSourceConfig;
  v4 = sub_10000BC80();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  sub_1000032B4(&v0[OBJC_IVAR____TtC17FedAutoEvalPlugin23FedAutoEvalPluginRunner_dataExtractorFactory]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for FedAutoEvalPluginRunner()
{
  result = qword_100014310;
  if (!qword_100014310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007C20()
{
  result = sub_10000BC80();
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

uint64_t sub_100007D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to PFLTaskRunner.resolveTask(for:taskPreferences:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100001F9C;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100007DCC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001F9C;

  return sub_100005CE4();
}

uint64_t sub_100007E5C()
{
  v1 = sub_10000B9C0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100007EBC()
{
  v1 = sub_10000B9D0();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_100007F1C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007FCC;

  return (sub_100009260)(a1);
}

uint64_t sub_100007FCC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000080D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B718;

  return PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100008184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B718;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100008234(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008300(v11, 0, 0, 1, a1, a2);
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
    sub_10000B58C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000032B4(v11);
  return v7;
}

unint64_t sub_100008300(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000840C(a5, a6);
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
    result = sub_10000BE20();
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

char *sub_10000840C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008458(a1, a2);
  sub_100008588(&off_100010AA8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008458(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008674(v5, 0);
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

  result = sub_10000BE20();
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
        v10 = sub_10000BD90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100008674(v10, 0);
        result = sub_10000BE10();
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

uint64_t sub_100008588(uint64_t result)
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

  result = sub_1000086E8(result, v12, 1, v3);
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

void *sub_100008674(uint64_t a1, uint64_t a2)
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

  sub_100002FE0(&qword_100014478, &qword_10000C9E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000086E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002FE0(&qword_100014478, &qword_10000C9E0);
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

unint64_t sub_1000087DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000BF20();
  sub_10000BD80();
  v6 = sub_10000BF40();

  return sub_100008854(a1, a2, v6);
}

unint64_t sub_100008854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000BEB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000890C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002FE0(&qword_100014480, &qword_10000C9E8);
  v36 = a2;
  result = sub_10000BE40();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000B57C(v25, v37);
      }

      else
      {
        sub_10000B58C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10000BF20();
      sub_10000BD80();
      result = sub_10000BF40();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000B57C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_100008BC4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000087DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100008D80();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000890C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000087DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10000BEC0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1000032B4(v23);

    return sub_10000B57C(a1, v23);
  }

  else
  {
    sub_100008D14(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100008D14(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000B57C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100008D80()
{
  v1 = v0;
  sub_100002FE0(&qword_100014480, &qword_10000C9E8);
  v2 = *v0;
  v3 = sub_10000BE30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000B58C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000B57C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100008F24(void *a1, int64_t a2, char a3)
{
  result = sub_100008F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100008F44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002FE0(&qword_100014490, &qword_10000C9F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002FE0(&qword_100014468, &qword_10000C9D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100009078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002FE0(&qword_100014480, &qword_10000C9E8);
    v3 = sub_10000BE50();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000B5E8(v4, &v13, &qword_100014488, &qword_10000C9F0);
      v5 = v13;
      v6 = v14;
      result = sub_1000087DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000B57C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1000091A8(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100009260(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_10000B8C0();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = sub_10000BC10();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v9 = sub_10000BCB0();
  v2[37] = v9;
  v10 = *(v9 - 8);
  v2[38] = v10;
  v11 = *(v10 + 64) + 15;
  v2[39] = swift_task_alloc();
  v12 = sub_10000BBC0();
  v2[40] = v12;
  v13 = *(v12 - 8);
  v2[41] = v13;
  v14 = *(v13 + 64) + 15;
  v2[42] = swift_task_alloc();
  v15 = sub_10000BC80();
  v2[43] = v15;
  v16 = *(v15 - 8);
  v2[44] = v16;
  v17 = *(v16 + 64) + 15;
  v2[45] = swift_task_alloc();
  v18 = *(*(sub_100002FE0(&qword_100014428, &qword_10000C990) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v19 = *(*(sub_100002FE0(&qword_100014430, &qword_10000C998) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v20 = sub_10000BCD0();
  v2[51] = v20;
  v21 = *(v20 - 8);
  v2[52] = v21;
  v22 = *(v21 + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v23 = sub_100002FE0(&qword_100014438, &qword_10000C9A0);
  v2[56] = v23;
  v24 = *(v23 - 8);
  v2[57] = v24;
  v25 = *(v24 + 64) + 15;
  v2[58] = swift_task_alloc();
  v26 = *(*(sub_100002FE0(&qword_100014440, &qword_10000C9A8) - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v27 = type metadata accessor for FedAutoEvalPluginArgs();
  v2[61] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return _swift_task_switch(sub_10000968C, 0, 0);
}

void sub_10000968C()
{
  v100 = v0;
  if (qword_100014128 != -1)
  {
    swift_once();
  }

  v1 = sub_10000BAE0();
  *(v0 + 520) = sub_100004C54(v1, qword_100014E38);
  v2 = sub_10000BAC0();
  v3 = sub_10000BDC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running plugin", v4, 2u);
  }

  v5 = *(v0 + 512);
  v6 = *(v0 + 232);

  sub_100003DD8(v7, v5);
  sub_10000B900();
  sub_10000B910();
  sub_10000B8F0();
  sub_10000B8E0();
  sub_10000BC90();
  sub_100004FEC(*(v0 + 512), *(v0 + 504));
  v8 = sub_10000BAC0();
  v9 = sub_10000BDC0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 504);
  if (v10)
  {
    v13 = *(v0 + 488);
    v12 = *(v0 + 496);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v99[0] = v15;
    *v14 = 136315138;
    sub_100004FEC(v11, v12);
    v16 = sub_10000BD70();
    v18 = v17;
    sub_100005050(v11);
    v19 = sub_100008234(v16, v18, v99);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Args: %s", v14, 0xCu);
    sub_1000032B4(v15);
  }

  else
  {

    sub_100005050(v11);
  }

  v20 = 0;
  v22 = *(v0 + 448);
  v21 = *(v0 + 456);
  v23 = *(v0 + 416);
  v24 = *(*(v0 + 512) + *(*(v0 + 488) + 28));
  *(v0 + 528) = v24;
  v25 = *(v24 + 16);
  v94 = (v21 + 56);
  v95 = (v23 + 16);
  v93 = (v21 + 48);
  v88 = v23;
  v90 = (v23 + 8);
  v91 = (v23 + 32);
  v86 = v24;
  v87 = v22;
  v92 = v25;
  while (1)
  {
    if (v20 == v25)
    {
      v28 = 1;
      v98 = v25;
      v29 = v95;
    }

    else
    {
      v29 = v95;
      if (v20 >= *(v24 + 16))
      {
        __break(1u);
        return;
      }

      v31 = *(v0 + 464);
      v30 = *(v0 + 472);
      v32 = *(v0 + 408);
      v33 = v20 + 1;
      v34 = v24 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v20;
      v35 = *(v22 + 48);
      *v31 = v20;
      (*(v88 + 16))(&v31[v35], v34, v32);
      sub_10000B6B0(v31, v30, &qword_100014438, &qword_10000C9A0);
      v28 = 0;
      v98 = v33;
    }

    v37 = *(v0 + 472);
    v36 = *(v0 + 480);
    v38 = *(v0 + 448);
    (*v94)(v37, v28, 1, v38);
    sub_10000B6B0(v37, v36, &qword_100014440, &qword_10000C9A8);
    if ((*v93)(v36, 1, v38) == 1)
    {
      break;
    }

    v39 = *(v0 + 480);
    v41 = *(v0 + 432);
    v40 = *(v0 + 440);
    v42 = *(v0 + 408);
    v96 = *v39;
    (*v91)(v40, &v39[*(v22 + 48)], v42);
    v43 = *v29;
    (*v29)(v41, v40, v42);
    v44 = sub_10000BAC0();
    v45 = sub_10000BDC0();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 432);
    v97 = *(v0 + 440);
    if (v46)
    {
      v48 = *(v0 + 424);
      v49 = *(v0 + 408);
      v50 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v99[0] = v89;
      *v50 = 134218242;
      *(v50 + 4) = v96;
      *(v50 + 12) = 2080;
      v43(v48, v47, v49);
      v51 = v49;
      v52 = sub_10000BD70();
      v54 = v53;
      v55 = *v90;
      v56 = v47;
      v57 = v51;
      (*v90)(v56, v51);
      v58 = sub_100008234(v52, v54, v99);

      *(v50 + 14) = v58;
      v22 = v87;
      _os_log_impl(&_mh_execute_header, v44, v45, "Step %ld: %s", v50, 0x16u);
      sub_1000032B4(v89);
      v24 = v86;

      v55(v97, v57);
    }

    else
    {
      v26 = *(v0 + 408);

      v27 = *v90;
      (*v90)(v47, v26);
      v27(v97, v26);
    }

    v25 = v92;
    v20 = v98;
  }

  v59 = *(v0 + 512);
  v60 = *(v0 + 488);
  v61 = (v59 + v60[10]);
  *(v0 + 536) = *v61;
  v62 = v61[1];
  *(v0 + 544) = v62;
  if (!v62)
  {
    v63 = v59 + v60[6];
    sub_10000BC70();
    v62 = 0;
    v59 = *(v0 + 512);
    v60 = *(v0 + 488);
  }

  *(v0 + 552) = v62;
  v64 = *(v0 + 400);
  v66 = *(v0 + 352);
  v65 = *(v0 + 360);
  v67 = *(v0 + 344);

  sub_10000BBF0();

  v68 = v60[6];
  *(v0 + 616) = v68;
  (*(v66 + 16))(v65, v59 + v68, v67);
  v69 = *(v59 + v60[9]);
  if (v69 == 2 || (v69 & 1) == 0)
  {
    (*(*(v0 + 256) + 56))(*(v0 + 376), 1, 1, *(v0 + 248));
  }

  else
  {
    v70 = *(v0 + 392);
    v71 = *(v0 + 272);
    v72 = *(v0 + 280);
    sub_10000B5E8(*(v0 + 400), v70, &qword_100014430, &qword_10000C998);
    v73 = (*(v72 + 48))(v70, 1, v71);
    v74 = *(v0 + 392);
    v75 = *(v0 + 376);
    if (v73 == 1)
    {
      v76 = *(v0 + 248);
      v77 = *(v0 + 256);
      sub_10000B650(*(v0 + 392), &qword_100014430, &qword_10000C998);
      (*(v77 + 56))(v75, 1, 1, v76);
    }

    else
    {
      v83 = *(v0 + 272);
      v84 = *(v0 + 280);
      v85 = *(v0 + 376);
      sub_10000BBD0();
      (*(v84 + 8))(v74, v83);
    }
  }

  v78 = swift_task_alloc();
  *(v0 + 560) = v78;
  *v78 = v0;
  v78[1] = sub_100009F60;
  v80 = *(v0 + 376);
  v79 = *(v0 + 384);
  v81 = *(v0 + 360);
  v82 = *(v0 + 240);

  sub_100006844(v79, v81, v80);
}

uint64_t sub_100009F60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  v4[71] = a1;
  v4[72] = v1;

  v7 = v3[45];
  v8 = v3[44];
  v9 = v3[43];
  sub_10000B650(v3[47], &qword_100014428, &qword_10000C990);
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v10 = sub_10000B24C;
  }

  else
  {
    v10 = sub_10000A10C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10000A10C()
{
  v34 = v1;
  v3 = v1[71];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v1[41];
    v32 = _swiftEmptyArrayStorage;
    sub_100008F24(0, v4, 0);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = _swiftEmptyArrayStorage;
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = v1[72];
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v31 = *(v10 + 56);
    v12(v1[42], v3 + v8, v1[40]);
    sub_1000074B0(v33);
    v13 = *(v10 - 8);
    if (v9)
    {
      v13(v1[42], v1[40]);
    }

    v27 = v8;
    v29 = v11;
    v30 = v4;
    v13(v1[42], v1[40]);
    v2 = v33[0];
    v4 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    v0 = v4 + 1;
    v28 = v13;
    if (v4 >= v6 >> 1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v7[2] = v0;
      v7[v4 + 4] = v2;
      if (v30 == 1)
      {
        break;
      }

      v24 = v3 + v31 + v27;
      v25 = 1;
      while (1)
      {
        v6 = *(v3 + 16);
        if (v25 >= v6)
        {
          break;
        }

        v29(v1[42], v24, v1[40]);
        sub_1000074B0(v33);
        v28(v1[42], v1[40]);
        v2 = v33[0];
        v32 = v7;
        v4 = v7[2];
        v26 = v7[3];
        v0 = v4 + 1;
        if (v4 >= v26 >> 1)
        {
          sub_100008F24((v26 > 1), v4 + 1, 1);
        }

        ++v25;
        v7[2] = v0;
        v7[v4 + 4] = v2;
        v24 += v31;
        if (v30 == v25)
        {
          goto LABEL_10;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      sub_100008F24((v6 > 1), v0, 1);
      v7 = v32;
    }

LABEL_10:
    v16 = v1[71];
  }

  else
  {
    v15 = v1[71];

    v7 = _swiftEmptyArrayStorage;
  }

  v1[73] = v7;
  v17 = v1[65];
  v18 = sub_10000BAC0();
  v19 = sub_10000BDD0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Calling data process pipeline", v20, 2u);
  }

  v21 = async function pointer to runPipeline(stepsConfigs:initial:)[1];

  v22 = swift_task_alloc();
  v1[74] = v22;
  *v22 = v1;
  v22[1] = sub_10000A484;
  v23 = v1[66];

  return runPipeline(stepsConfigs:initial:)(v23, v7);
}

uint64_t sub_10000A484(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  *(v4 + 600) = a1;
  *(v4 + 608) = v1;

  v7 = *(v3 + 584);

  if (v1)
  {
    v8 = sub_10000B3D0;
  }

  else
  {
    v8 = sub_10000A5C4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000A5C4()
{
  v128 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 520);

  v3 = sub_10000BAC0();
  v4 = sub_10000BDD0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 600);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v127[0] = v7;
    *v6 = 136315138;

    sub_100002FE0(&qword_100014468, &qword_10000C9D0);
    v8 = sub_10000BDA0();
    v10 = v9;

    v11 = sub_100008234(v8, v10, v127);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Completed data processing pipeline with data %s", v6, 0xCu);
    sub_1000032B4(v7);
  }

  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 296);
  (*(v13 + 16))(v12, *(v0 + 512) + *(*(v0 + 488) + 32), v14);
  if ((*(v13 + 88))(v12, v14) != enum case for MorpheusProgramConfig.program(_:))
  {
    v24 = *(v0 + 600);
    v20 = *(v0 + 512);
    v25 = *(v0 + 400);
    v26 = *(v0 + 384);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    sub_100004C8C();
    swift_allocError();
    *v27 = 14;
    swift_willThrow();
    sub_10000B650(v26, &qword_100014428, &qword_10000C990);
    v23 = v25;
    goto LABEL_7;
  }

  v15 = *(v0 + 608);
  v16 = *(v0 + 312);
  (*(*(v0 + 304) + 96))(v16, *(v0 + 296));
  v17 = *v16;
  v18 = v16[1];
  sub_10000BB30();
  sub_10000BB20();
  v19 = *(v0 + 600);
  if (v15)
  {
    v20 = *(v0 + 512);
    v21 = *(v0 + 400);
    v22 = *(v0 + 384);

    sub_10000B650(v22, &qword_100014428, &qword_10000C990);
    v23 = v21;
LABEL_7:
    sub_10000B650(v23, &qword_100014430, &qword_10000C998);
    v28 = v20;
LABEL_8:
    sub_100005050(v28);

    v30 = *(v0 + 504);
    v29 = *(v0 + 512);
    v31 = *(v0 + 496);
    v32 = *(v0 + 472);
    v33 = *(v0 + 480);
    v34 = *(v0 + 464);
    v36 = *(v0 + 432);
    v35 = *(v0 + 440);
    v37 = *(v0 + 424);
    v38 = *(v0 + 400);
    v108 = *(v0 + 392);
    v110 = *(v0 + 384);
    v112 = *(v0 + 376);
    v114 = *(v0 + 368);
    v116 = *(v0 + 360);
    v118 = *(v0 + 336);
    v120 = *(v0 + 312);
    v122 = *(v0 + 288);
    v124 = *(v0 + 264);

    v39 = *(v0 + 8);

    return v39();
  }

  sub_100002FE0(&qword_100014448, &qword_10000C9B0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10000C840;
  *(v41 + 56) = sub_100002FE0(&qword_100014450, &qword_10000C9B8);
  *(v41 + 32) = v19;

  sub_100009078(&_swiftEmptyArrayStorage);
  sub_10000BB10();

  if (!*(v0 + 72))
  {
    v45 = *(v0 + 520);
    sub_10000B650(v0 + 48, &qword_100014458, &qword_10000C9C0);
    v46 = sub_10000BAC0();
    v47 = sub_10000BDD0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No results returned, skip donating", v48, 2u);
    }

    v49 = *(v0 + 600);
    v50 = *(v0 + 512);
    v51 = *(v0 + 400);
    v52 = *(v0 + 384);

    sub_100009078(&_swiftEmptyArrayStorage);
    v53 = sub_10000B9A0();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v126 = sub_10000B990();

    goto LABEL_22;
  }

  v42 = *(v0 + 544);
  sub_10000B57C((v0 + 48), (v0 + 16));
  if (v42)
  {
    v43 = *(v0 + 552);
    v44 = *(v0 + 536);
  }

  else
  {
    v56 = *(v0 + 512) + *(v0 + 616);
    sub_10000BC70();
    v57 = *(v0 + 552);
  }

  v58 = *(v0 + 384);
  v59 = *(v0 + 368);
  v61 = *(v0 + 280);
  v60 = *(v0 + 288);
  v63 = *(v0 + 264);
  v62 = *(v0 + 272);

  sub_10000B8B0();
  sub_10000B5E8(v58, v59, &qword_100014428, &qword_10000C990);
  sub_10000BBE0();
  sub_10000BC00();

  (*(v61 + 8))(v60, v62);
  sub_10000BAF0();
  if ((sub_10000BB00() & 1) == 0)
  {
    sub_10000B58C(v0 + 80, v0 + 112);
    sub_100002FE0(&qword_100014460, &qword_10000C9C8);
    result = swift_dynamicCast();
    if (!result)
    {
LABEL_34:
      v85 = *(v0 + 600);
      v86 = *(v0 + 512);
      v87 = *(v0 + 400);
      v88 = *(v0 + 384);
      sub_100004C8C();
      swift_allocError();
      *v89 = 13;
      swift_willThrow();

      sub_1000032B4((v0 + 80));
      sub_1000032B4((v0 + 16));
      sub_10000B650(v88, &qword_100014428, &qword_10000C990);
      sub_10000B650(v87, &qword_100014430, &qword_10000C998);
      v28 = v86;
      goto LABEL_8;
    }

    v83 = *(v0 + 208);
    if (*(v83 + 16))
    {
      sub_10000B58C(v83 + 32, v0 + 144);
      sub_100002FE0(&qword_100014468, &qword_10000C9D0);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
LABEL_33:

        goto LABEL_34;
      }

      if (*(v83 + 16) >= 2uLL)
      {
        v84 = *(v0 + 216);
        sub_10000B58C(v83 + 64, v0 + 176);

        sub_100002FE0(&qword_100014470, &qword_10000C9D8);
        if (swift_dynamicCast())
        {
          if (*(*(v0 + 224) + 16))
          {
            sub_100007A48(*(v0 + 224));
          }

          v90 = *(v0 + 520);

          v91 = sub_10000BAC0();
          v92 = sub_10000BDC0();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v127[0] = swift_slowAlloc();
            *v93 = 136315394;
            v94 = sub_10000BD30();
            v96 = sub_100008234(v94, v95, v127);

            *(v93 + 4) = v96;
            *(v93 + 12) = 2080;
            v97 = sub_10000BDA0();
            v99 = v98;

            v100 = sub_100008234(v97, v99, v127);

            *(v93 + 14) = v100;
            _os_log_impl(&_mh_execute_header, v91, v92, "Returning from plugin metadata=%s, vector=%s", v93, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v101 = *(v0 + 600);
          v102 = *(v0 + 512);
          v103 = *(v0 + 400);
          v104 = *(v0 + 384);
          v105 = sub_10000B9A0();
          v106 = *(v105 + 48);
          v107 = *(v105 + 52);
          swift_allocObject();
          v126 = sub_10000B990();

          sub_1000032B4((v0 + 80));
          sub_1000032B4((v0 + 16));
          sub_10000B650(v104, &qword_100014428, &qword_10000C990);
          sub_10000B650(v103, &qword_100014430, &qword_10000C998);
          sub_100005050(v102);
          goto LABEL_23;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v64 = *(v0 + 520);
  v65 = sub_10000BAC0();
  v66 = sub_10000BDD0();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "result is None, skip donating", v67, 2u);
  }

  v68 = *(v0 + 600);
  v50 = *(v0 + 512);
  v51 = *(v0 + 400);
  v52 = *(v0 + 384);

  sub_100009078(&_swiftEmptyArrayStorage);
  v69 = sub_10000B9A0();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v126 = sub_10000B990();

  sub_1000032B4((v0 + 80));
  sub_1000032B4((v0 + 16));
LABEL_22:
  sub_10000B650(v52, &qword_100014428, &qword_10000C990);
  sub_10000B650(v51, &qword_100014430, &qword_10000C998);
  sub_100005050(v50);
LABEL_23:

  v73 = *(v0 + 504);
  v72 = *(v0 + 512);
  v74 = *(v0 + 496);
  v75 = *(v0 + 472);
  v76 = *(v0 + 480);
  v77 = *(v0 + 464);
  v79 = *(v0 + 432);
  v78 = *(v0 + 440);
  v80 = *(v0 + 424);
  v81 = *(v0 + 400);
  v109 = *(v0 + 392);
  v111 = *(v0 + 384);
  v113 = *(v0 + 376);
  v115 = *(v0 + 368);
  v117 = *(v0 + 360);
  v119 = *(v0 + 336);
  v121 = *(v0 + 312);
  v123 = *(v0 + 288);
  v125 = *(v0 + 264);

  v82 = *(v0 + 8);

  return v82(v126);
}

uint64_t sub_10000B24C()
{
  v1 = v0[64];
  sub_10000B650(v0[50], &qword_100014430, &qword_10000C998);
  sub_100005050(v1);
  v23 = v0[72];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
  v9 = v0[54];
  v8 = v0[55];
  v10 = v0[53];
  v11 = v0[50];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[42];
  v20 = v0[39];
  v21 = v0[36];
  v22 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000B3D0()
{
  v1 = v0[73];
  v2 = v0[64];
  v3 = v0[50];
  sub_10000B650(v0[48], &qword_100014428, &qword_10000C990);
  sub_10000B650(v3, &qword_100014430, &qword_10000C998);
  sub_100005050(v2);

  v25 = v0[76];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];
  v11 = v0[54];
  v10 = v0[55];
  v12 = v0[53];
  v13 = v0[50];
  v16 = v0[49];
  v17 = v0[48];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[45];
  v21 = v0[42];
  v22 = v0[39];
  v23 = v0[36];
  v24 = v0[33];

  v14 = v0[1];

  return v14();
}

_OWORD *sub_10000B57C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000B58C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B5E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002FE0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B650(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002FE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B6B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002FE0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B71C()
{
  v0 = sub_10000BAE0();
  sub_10000B79C(v0, qword_100014E38);
  sub_100004C54(v0, qword_100014E38);
  return sub_10000BAD0();
}

uint64_t *sub_10000B79C(uint64_t a1, uint64_t *a2)
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