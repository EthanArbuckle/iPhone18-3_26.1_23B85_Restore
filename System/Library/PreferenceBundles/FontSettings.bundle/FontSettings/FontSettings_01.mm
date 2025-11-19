uint64_t sub_22794(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_1A88(&qword_91228) + 44);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  sub_20C1C(v6, v7, v8 & 1);
  v10 = a2 + v5;
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8 & 1;
  v9 = *(a1 + v5 + 24);

  *(v10 + 24) = v9;
  *(v10 + 32) = *(a1 + v5 + 32);
  *(v10 + 40) = *(a1 + v5 + 40);
  v11 = *(sub_1A88(&qword_91230) + 64);
  v17 = (a1 + v5 + v11);
  v12 = *v17;

  v15 = a2 + v5 + v11;
  *(v10 + v11) = v12;
  v13 = *(v17 + 1);

  *(v15 + 8) = v13;
  v14 = *(v17 + 2);

  *(v15 + 16) = v14;
  v16 = *(sub_1A88(&qword_91238) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(v15 + v16, &v17[v16]);
  return a2;
}

uint64_t sub_2298C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_22CB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_22FFC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_7BD04();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_2313C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_7BD04();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2322C()
{
  v2 = sub_7BD04();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_232FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_7BD04();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_2343C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_7BD04();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2352C()
{
  v4 = sub_23630();
  if (v0 <= 0x3F)
  {
    v4 = sub_236D8();
    if (v1 <= 0x3F)
    {
      v4 = sub_7BD04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_23630()
{
  v4 = qword_91338;
  if (!qword_91338)
  {
    type metadata accessor for FontAssetFamily();
    sub_20C60();
    v3 = sub_7C0F4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91338);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_236D8()
{
  v4 = qword_91340;
  if (!qword_91340)
  {
    type metadata accessor for FontSettingsModel();
    sub_1AC10();
    v3 = sub_7C1B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91340);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_237A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_7BD04();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_238E8(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_7BD04();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_239D8()
{
  sub_B24C(&qword_91000);
  sub_B24C(&qword_910C8);
  sub_1E708();
  sub_1E838();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BF4(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_23C3C()
{
  v2 = qword_91410;
  if (!qword_91410)
  {
    sub_B24C(&qword_91408);
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91410);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_23CE0()
{
}

unint64_t sub_23D24()
{
  v2 = qword_91418;
  if (!qword_91418)
  {
    sub_B24C(&qword_91238);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91418);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_23DAC(uint64_t a1)
{

  v3 = *(sub_1A88(&qword_91238) + 52);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_23E4C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_20C1C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v8;
  return result;
}

char *sub_23ED4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(a1 + 2);

  *(a2 + 2) = v6;
  v7 = *(sub_1A88(&qword_91238) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  return a2;
}

uint64_t sub_23FBC()
{
  v4 = type metadata accessor for DownloadView();
  v1 = *(*(v4 - 8) + 80);
  v5 = v0 + ((v1 + 16) & ~v1);

  v6 = *(v4 + 24);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 8))(v5 + v6);
  return swift_deallocObject();
}

char *sub_240CC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(type metadata accessor for DownloadView() + 24);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_24170()
{
  type metadata accessor for DownloadView();

  return sub_21C34();
}

uint64_t sub_241D4(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91200) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

unint64_t sub_24298()
{
  v2 = qword_91420;
  if (!qword_91420)
  {
    sub_B24C(&qword_91200);
    sub_1EAC0();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_24340(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91128);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91200) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_24420()
{
  v2 = qword_91428;
  if (!qword_91428)
  {
    sub_B24C(&qword_911B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_244A8()
{
  v2 = qword_91430;
  if (!qword_91430)
  {
    sub_B24C(&qword_911C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_24530(uint64_t a1)
{
  v1 = sub_1A88(&qword_911B8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_911C0) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_245F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_911B8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_911C0) + 52);
  v3 = sub_7BD04();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_246D4(uint64_t a1)
{
  v1 = sub_1A88(&qword_910F8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_1A88(&qword_91438);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_1A88(&qword_91128);
      (*(*(v4 - 8) + 8))(a1);
      sub_1A88(&qword_91118);

      v7 = a1 + *(sub_1A88(&qword_91108) + 36);
      v5 = sub_7C574();
      (*(*(v5 - 8) + 8))(v7);
    }

    else
    {
      v2 = sub_1A88(&qword_91128);
      (*(*(v2 - 8) + 8))(a1);
      sub_1A88(&qword_91118);

      v8 = a1 + *(sub_1A88(&qword_91108) + 36);
      v3 = sub_7C574();
      (*(*(v3 - 8) + 8))(v8);
    }
  }

  return a1;
}

char *sub_24930(char *a1, char *a2)
{
  v18 = sub_1A88(&qword_910F8);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v10 = sub_1A88(&qword_910C8);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    sub_1A88(&qword_91438);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1A88(&qword_91128);
      (*(*(v6 - 8) + 32))(a2, a1);
      v7 = sub_1A88(&qword_91118);
      *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
      v8 = sub_1A88(&qword_91108);
      v13 = &a2[*(v8 + 36)];
      v12 = &a1[*(v8 + 36)];
      v9 = sub_7C574();
      (*(*(v9 - 8) + 32))(v13, v12);
    }

    else
    {
      v2 = sub_1A88(&qword_91128);
      (*(*(v2 - 8) + 32))(a2, a1);
      v3 = sub_1A88(&qword_91118);
      *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
      v4 = sub_1A88(&qword_91108);
      v15 = &a2[*(v4 + 36)];
      v14 = &a1[*(v4 + 36)];
      v5 = sub_7C574();
      (*(*(v5 - 8) + 32))(v15, v14);
    }

    swift_storeEnumTagMultiPayload();
    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return a2;
}

char *sub_24C50(char *a1, char *a2)
{
  v26 = sub_1A88(&qword_910F8);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(a1, 1))
  {
    v10 = sub_1A88(&qword_910C8);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    sub_1A88(&qword_91438);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1A88(&qword_91128);
      (*(*(v6 - 8) + 16))(a2, a1);
      v7 = sub_1A88(&qword_91118);
      v14 = &a2[*(v7 + 36)];
      v13 = &a1[*(v7 + 36)];
      v12 = *v13;

      *v14 = v12;
      v15 = *(v13 + 1);

      *(v14 + 1) = v15;
      v8 = sub_1A88(&qword_91108);
      v17 = &a2[*(v8 + 36)];
      v16 = &a1[*(v8 + 36)];
      v9 = sub_7C574();
      (*(*(v9 - 8) + 16))(v17, v16);
    }

    else
    {
      v2 = sub_1A88(&qword_91128);
      (*(*(v2 - 8) + 16))(a2, a1);
      v3 = sub_1A88(&qword_91118);
      v20 = &a2[*(v3 + 36)];
      v19 = &a1[*(v3 + 36)];
      v18 = *v19;

      *v20 = v18;
      v21 = *(v19 + 1);

      *(v20 + 1) = v21;
      v4 = sub_1A88(&qword_91108);
      v23 = &a2[*(v4 + 36)];
      v22 = &a1[*(v4 + 36)];
      v5 = sub_7C574();
      (*(*(v5 - 8) + 16))(v23, v22);
    }

    swift_storeEnumTagMultiPayload();
    (*(v27 + 56))(a2, 0, 1, v26);
  }

  return a2;
}

uint64_t sub_24FE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91128);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91118) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);

  *(a2 + v5 + 8) = v7;
  v8 = *(sub_1A88(&qword_91108) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

unint64_t sub_25138()
{
  v2 = qword_91440;
  if (!qword_91440)
  {
    sub_7C544();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91440);
    return WitnessTable;
  }

  return v2;
}

_OWORD *sub_251B8(_OWORD *a1, _OWORD *a2)
{
  v23 = sub_1A88(&qword_91098);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v23 - 8) + 64));
  }

  else
  {
    sub_1A88(&qword_910A0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_1A88(&qword_910C0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a2, a1, *(*(v13 - 8) + 64));
      }

      else
      {
        *a2 = *a1;
        v8 = type metadata accessor for ProcessingView();
        v12 = a2 + *(v8 + 20);
        v11 = a1 + *(v8 + 20);
        v9 = sub_7BD04();
        (*(*(v9 - 8) + 32))(v12, v11);
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_1A88(&qword_910A8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A88(&qword_910B8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v6 = type metadata accessor for CachedDownloadView();
          v15 = a2 + *(v6 + 20);
          v14 = a1 + *(v6 + 20);
          v7 = sub_7BD04();
          (*(*(v7 - 8) + 32))(v15, v14);
        }

        else
        {
          *a2 = *a1;
          v4 = type metadata accessor for ProcessingView();
          v17 = a2 + *(v4 + 20);
          v16 = a1 + *(v4 + 20);
          v5 = sub_7BD04();
          (*(*(v5 - 8) + 32))(v17, v16);
        }

        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v20 = sub_1A88(&qword_910B0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a2, a1, *(*(v20 - 8) + 64));
        }

        else
        {
          *a2 = *a1;
          a2[1] = a1[1];
          v2 = type metadata accessor for DownloadView();
          v19 = a2 + *(v2 + 24);
          v18 = a1 + *(v2 + 24);
          v3 = sub_7BD04();
          (*(*(v3 - 8) + 32))(v19, v18);
          swift_storeEnumTagMultiPayload();
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_25624(void *a1, void *a2)
{
  sub_1A88(&qword_91098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v11 = a1[1];

    a2[1] = v11;
    v12 = a1[2];

    a2[2] = v12;
    a2[3] = a1[3];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1A88(&qword_910A0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A88(&qword_910C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a2 = *a1;
        v13 = a1[1];

        a2[1] = v13;
        v14 = a1[2];

        a2[2] = v14;
        a2[3] = a1[3];
      }

      else
      {
        *a2 = *a1;
        v15 = a1[1];

        a2[1] = v15;
        v8 = type metadata accessor for ProcessingView();
        v17 = a2 + *(v8 + 20);
        v16 = a1 + *(v8 + 20);
        v9 = sub_7BD04();
        (*(*(v9 - 8) + 16))(v17, v16);
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_1A88(&qword_910A8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A88(&qword_910B8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v18 = a1[1];

          a2[1] = v18;
          v6 = type metadata accessor for CachedDownloadView();
          v20 = a2 + *(v6 + 20);
          v19 = a1 + *(v6 + 20);
          v7 = sub_7BD04();
          (*(*(v7 - 8) + 16))(v20, v19);
        }

        else
        {
          *a2 = *a1;
          v21 = a1[1];

          a2[1] = v21;
          v4 = type metadata accessor for ProcessingView();
          v23 = a2 + *(v4 + 20);
          v22 = a1 + *(v4 + 20);
          v5 = sub_7BD04();
          (*(*(v5 - 8) + 16))(v23, v22);
        }
      }

      else
      {
        sub_1A88(&qword_910B0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v24 = a1[1];

          a2[1] = v24;
          v25 = a1[2];

          a2[2] = v25;
          a2[3] = a1[3];
        }

        else
        {
          *a2 = *a1;
          v26 = a1[1];

          a2[1] = v26;
          v27 = a1[2];

          a2[2] = v27;
          a2[3] = a1[3];
          v2 = type metadata accessor for DownloadView();
          v29 = a2 + *(v2 + 24);
          v28 = a1 + *(v2 + 24);
          v3 = sub_7BD04();
          (*(*(v3 - 8) + 16))(v29, v28);
        }
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

_OWORD *sub_25BC0(_OWORD *a1, _OWORD *a2)
{
  v9 = sub_1A88(&qword_910C0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = type metadata accessor for ProcessingView();
    v6 = a2 + *(v2 + 20);
    v5 = a1 + *(v2 + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 32))(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_25CD0(void *a1, void *a2)
{
  sub_1A88(&qword_910C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v5 = a1[1];

    a2[1] = v5;
    v6 = a1[2];

    a2[2] = v6;
    a2[3] = a1[3];
  }

  else
  {
    *a2 = *a1;
    v7 = a1[1];

    a2[1] = v7;
    v2 = type metadata accessor for ProcessingView();
    v9 = a2 + *(v2 + 20);
    v8 = a1 + *(v2 + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 16))(v9, v8);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_25E30(uint64_t a1)
{
  sub_1A88(&qword_910C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v3 = a1 + *(type metadata accessor for ProcessingView() + 20);
    v1 = sub_7BD04();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_25F04(uint64_t a1)
{
  sub_1A88(&qword_910A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910C0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v6 = a1 + *(type metadata accessor for ProcessingView() + 20);
      v4 = sub_7BD04();
      (*(*(v4 - 8) + 8))(v6);
      return a1;
    }

    goto LABEL_11;
  }

  sub_1A88(&qword_910A8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A88(&qword_910B0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v9 = a1 + *(type metadata accessor for DownloadView() + 24);
      v1 = sub_7BD04();
      (*(*(v1 - 8) + 8))(v9);
      return a1;
    }

LABEL_11:

    return a1;
  }

  sub_1A88(&qword_910B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = a1 + *(type metadata accessor for CachedDownloadView() + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {

    v8 = a1 + *(type metadata accessor for ProcessingView() + 20);
    v2 = sub_7BD04();
    (*(*(v2 - 8) + 8))(v8);
  }

  return a1;
}

uint64_t sub_261F8(uint64_t a1)
{
  sub_1A88(&qword_910B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(type metadata accessor for CachedDownloadView() + 20);
    v2 = sub_7BD04();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {

    v5 = a1 + *(type metadata accessor for ProcessingView() + 20);
    v1 = sub_7BD04();
    (*(*(v1 - 8) + 8))(v5);
  }

  return a1;
}

_OWORD *sub_26318(_OWORD *a1, _OWORD *a2)
{
  sub_1A88(&qword_910A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v6 = type metadata accessor for CachedDownloadView();
      v10 = a2 + *(v6 + 20);
      v9 = a1 + *(v6 + 20);
      v7 = sub_7BD04();
      (*(*(v7 - 8) + 32))(v10, v9);
    }

    else
    {
      *a2 = *a1;
      v4 = type metadata accessor for ProcessingView();
      v12 = a2 + *(v4 + 20);
      v11 = a1 + *(v4 + 20);
      v5 = sub_7BD04();
      (*(*(v5 - 8) + 32))(v12, v11);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v15 = sub_1A88(&qword_910B0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v15 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      v2 = type metadata accessor for DownloadView();
      v14 = a2 + *(v2 + 24);
      v13 = a1 + *(v2 + 24);
      v3 = sub_7BD04();
      (*(*(v3 - 8) + 32))(v14, v13);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_265D8(void *a1, void *a2)
{
  sub_1A88(&qword_910A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v9 = a1[1];

      a2[1] = v9;
      v6 = type metadata accessor for CachedDownloadView();
      v11 = a2 + *(v6 + 20);
      v10 = a1 + *(v6 + 20);
      v7 = sub_7BD04();
      (*(*(v7 - 8) + 16))(v11, v10);
    }

    else
    {
      *a2 = *a1;
      v12 = a1[1];

      a2[1] = v12;
      v4 = type metadata accessor for ProcessingView();
      v14 = a2 + *(v4 + 20);
      v13 = a1 + *(v4 + 20);
      v5 = sub_7BD04();
      (*(*(v5 - 8) + 16))(v14, v13);
    }
  }

  else
  {
    sub_1A88(&qword_910B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v15 = a1[1];

      a2[1] = v15;
      v16 = a1[2];

      a2[2] = v16;
      a2[3] = a1[3];
    }

    else
    {
      *a2 = *a1;
      v17 = a1[1];

      a2[1] = v17;
      v18 = a1[2];

      a2[2] = v18;
      a2[3] = a1[3];
      v2 = type metadata accessor for DownloadView();
      v20 = a2 + *(v2 + 24);
      v19 = a1 + *(v2 + 24);
      v3 = sub_7BD04();
      (*(*(v3 - 8) + 16))(v20, v19);
    }
  }

  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26938(uint64_t a1)
{
  sub_1A88(&qword_910A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v5 = a1 + *(type metadata accessor for CachedDownloadView() + 20);
      v3 = sub_7BD04();
      (*(*(v3 - 8) + 8))(v5);
    }

    else
    {

      v6 = a1 + *(type metadata accessor for ProcessingView() + 20);
      v2 = sub_7BD04();
      (*(*(v2 - 8) + 8))(v6);
    }
  }

  else
  {
    sub_1A88(&qword_910B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {

      v7 = a1 + *(type metadata accessor for DownloadView() + 24);
      v1 = sub_7BD04();
      (*(*(v1 - 8) + 8))(v7);
    }
  }

  return a1;
}

uint64_t sub_26B48(uint64_t a1)
{
  sub_1A88(&qword_910B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v3 = a1 + *(type metadata accessor for DownloadView() + 24);
    v1 = sub_7BD04();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_26C28()
{
  v2 = *v0;

  return v2;
}

double sub_26C98()
{
  v4 = *(v0 + 8);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91448);
  sub_7CAE4();
  sub_26D50();
  return v2;
}

void *sub_26D10(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

__int128 *sub_26D7C()
{
  v4 = *(v0 + 8);
  sub_26D10(&v4, &v3);
  sub_26D10(&v4, &v2);
  sub_1A88(&qword_91448);
  sub_7CAF4();
  sub_26D50();
  result = &v4;
  sub_26D50();
  return result;
}

uint64_t sub_26E18()
{
  v4 = *(v0 + 8);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91448);
  sub_7CB04();
  sub_26D50();
  return v2;
}

double sub_26EA8()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_26EE0(uint64_t a1, double a2)
{

  *(v2 + 8) = a2;
  *(v2 + 16) = a1;
}

double sub_26F6C()
{
  v4 = *(v0 + 24);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450);
  sub_7CAE4();
  sub_26D50();
  return v2;
}

__int128 *sub_26FE4()
{
  v4 = *(v0 + 24);
  sub_26D10(&v4, &v3);
  sub_26D10(&v4, &v2);
  sub_1A88(&qword_91450);
  sub_7CAF4();
  sub_26D50();
  result = &v4;
  sub_26D50();
  return result;
}

uint64_t sub_27080()
{
  v4 = *(v0 + 24);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450);
  sub_7CB04();
  sub_26D50();
  return v2;
}

double sub_27110()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_27148(uint64_t a1, double a2)
{

  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
}

double sub_27190()
{
  v4 = *(v0 + 40);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450);
  sub_7CAE4();
  sub_26D50();
  return v2;
}

__int128 *sub_27208()
{
  v4 = *(v0 + 40);
  sub_26D10(&v4, &v3);
  sub_26D10(&v4, &v2);
  sub_1A88(&qword_91450);
  sub_7CAF4();
  sub_26D50();
  result = &v4;
  sub_26D50();
  return result;
}

uint64_t sub_272A4()
{
  v4 = *(v0 + 40);
  sub_26D10(&v4, &v3);
  sub_1A88(&qword_91450);
  sub_7CB04();
  sub_26D50();
  return v2;
}

double sub_27334()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_2736C(uint64_t a1, double a2)
{

  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
}

double sub_273B4()
{
  v14 = 0.0;
  v20 = v0;
  v18[2] = 0x4058000000000000;
  v24 = *(v0 + 8);
  sub_26D10(&v24, v18);
  v17 = v24;
  sub_1A88(&qword_91448);
  sub_7CAE4();
  sub_26D50();
  v15 = v16;
  sub_275DC();
  sub_7D744();
  v3 = v19;
  v14 = v19;
  v23 = *(v4 + 8);
  sub_26D10(&v23, &v13);
  v12 = v23;
  sub_7CAE4();
  v6 = *&v11[2];
  sub_26D50();
  v22 = *(v4 + 24);
  sub_26D10(&v22, v11);
  v10 = v22;
  sub_1A88(&qword_91450);
  sub_7CAE4();
  v5 = *&v9[2];
  sub_26D50();
  v21 = *(v4 + 40);
  sub_26D10(&v21, v9);
  sub_7CAE4();
  sub_26D50();
  v7 = v6 * (v5 + v8);
  if (v7 < 8.0)
  {
    return 8.0;
  }

  if (v3 >= v7)
  {
    return v6 * (v5 + v8);
  }

  return v3;
}

unint64_t sub_275DC()
{
  v2 = qword_91458;
  if (!qword_91458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91458);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_27654@<X0>(uint64_t a1@<X8>)
{
  v118 = a1;
  v36 = sub_288B4;
  v55 = &opaque type descriptor for <<opaque return type of View.tabViewStyle<A>(_:)>>;
  v69 = &opaque type descriptor for <<opaque return type of View.indexViewStyle<A>(_:)>>;
  v78 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v79 = sub_2BC20;
  v86 = sub_2BC80;
  v92 = sub_2BDE0;
  v110 = &opaque type descriptor for <<opaque return type of View.gesture<A>(_:including:)>>;
  v112 = sub_2C284;
  v130 = 0;
  __n = 56;
  memset(&v129[7], 0, 0x38uLL);
  memcpy(__dst, __src, sizeof(__dst));
  v31 = __dst[0];
  v25 = __dst[1];
  v32 = __dst[2];
  v26 = __dst[3];
  v33 = __dst[4];
  v27 = __dst[5];
  v28 = __dst[6];
  v16 = 0;
  v91 = sub_7C074();
  v88 = *(v91 - 8);
  v89 = v91 - 8;
  v11 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v90 = &v11 - v11;
  v97 = sub_1A88(&qword_91460);
  v94 = *(v97 - 8);
  v95 = v97 - 8;
  v12 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v96 = &v11 - v12;
  v107 = sub_1A88(&qword_91468);
  v98 = *(v107 - 8);
  v99 = v107 - 8;
  v13 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v100 = &v11 - v13;
  v50 = sub_7C314();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v14 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v49 = &v11 - v14;
  v66 = sub_7C334();
  v56 = *(v66 - 8);
  v57 = v66 - 8;
  v15 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v58 = &v11 - v15;
  v40 = sub_7C144();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v17 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v39 = &v11 - v17;
  v52 = sub_7C164();
  v41 = *(v52 - 8);
  v42 = v52 - 8;
  v18 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v43 = &v11 - v18;
  v51 = sub_1A88(&qword_91470);
  v44 = *(v51 - 8);
  v45 = v51 - 8;
  v19 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v46 = &v11 - v19;
  v65 = sub_1A88(&qword_91478);
  v59 = *(v65 - 8);
  v60 = v65 - 8;
  v20 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v61 = &v11 - v20;
  v74 = sub_1A88(&qword_91480);
  v71 = *(v74 - 8);
  v72 = v74 - 8;
  v21 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v73 = &v11 - v21;
  v84 = sub_1A88(&qword_91488);
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v22 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v84);
  v83 = &v11 - v22;
  v106 = sub_1A88(&qword_91490);
  v23 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v106);
  v101 = &v11 - v23;
  v117 = sub_1A88(&qword_91498);
  v114 = *(v117 - 8);
  v115 = v117 - 8;
  v24 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v117);
  v116 = &v11 - v24;
  v119 = sub_1A88(&qword_914A0);
  v30 = *(*(v119 - 8) + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(__src);
  v121 = &v11 - v29;
  v2 = __chkstk_darwin(v1);
  v122 = &v11 - v3;
  v130 = &v11 - v3;
  v129[7] = v31;
  v129[8] = v4;
  v129[9] = v32;
  v129[10] = v5;
  v129[11] = v33;
  *&v129[12] = v2;
  v129[13] = v6;
  sub_2880C(v7, v129);
  v34 = v123;
  v123[2] = __src;
  v35 = sub_1A88(&qword_914A8);
  sub_288BC();
  sub_7CC34();
  sub_28B04();
  sub_7C134();
  sub_2931C(v39, v43);
  (*(v37 + 8))(v39, v40);
  v53 = sub_293D0();
  v54 = &protocol witness table for PageTabViewStyle;
  sub_7C714();
  (*(v41 + 8))(v43, v52);
  (*(v44 + 8))(v46, v51);
  sub_7C304();
  sub_29458(v49, v58);
  (*(v47 + 8))(v49, v50);
  v128[2] = v51;
  v128[3] = v52;
  v128[4] = v53;
  v128[5] = v54;
  v111 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = sub_2950C();
  sub_7C744();
  v8 = __src;
  (*(v56 + 8))(v58, v66);
  (*(v59 + 8))(v61, v65);
  v62 = *v8;

  v63 = sub_65E4C();
  v64 = v9;

  v70 = v128;
  v128[0] = v63;
  v128[1] = v64;
  v127[7] = v65;
  v127[8] = v66;
  v127[9] = OpaqueTypeConformance2;
  v127[10] = v68;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = sub_198A4();
  v75 = &type metadata for String;
  sub_7C824();
  sub_1F58();
  (*(v71 + 8))(v73, v74);
  sub_2880C(__src, v127);
  v102 = 72;
  v103 = 7;
  v80 = swift_allocObject();
  memcpy((v80 + 16), __src, __n);
  v126[7] = v74;
  v126[8] = v75;
  v126[9] = v76;
  v126[10] = v77;
  swift_getOpaqueTypeConformance2();
  sub_62174(v79, v80, v84);

  (*(v81 + 8))(v83, v84);
  sub_298D8();
  sub_7C044();
  sub_2880C(__src, v126);
  v87 = swift_allocObject();
  memcpy((v87 + 16), __src, __n);
  v85 = sub_2BC88();
  sub_2BD08();
  sub_7CC04();

  (*(v88 + 8))(v90, v91);
  sub_2880C(__src, v125);
  v93 = swift_allocObject();
  memcpy((v93 + 16), __src, __n);
  sub_2BDE8();
  sub_7CBF4();

  (*(v94 + 8))(v96, v97);
  v108 = sub_2BE70();
  v109 = sub_2C100();
  sub_29C3C();
  sub_7C914();
  (*(v98 + 8))(v100, v107);
  sub_2C188(v101);
  sub_2880C(__src, v124);
  v113 = swift_allocObject();
  memcpy((v113 + 16), __src, __n);
  v123[4] = v106;
  v123[5] = v107;
  v123[6] = v108;
  v123[7] = v109;
  swift_getOpaqueTypeConformance2();
  sub_7C894();

  (*(v114 + 8))(v116, v117);
  v120 = sub_2C28C();
  sub_1991C(v121, v119, v122);
  sub_2C3B4(v121);
  sub_2C478(v122, v121);
  sub_1991C(v121, v119, v118);
  sub_2C3B4(v121);
  return sub_2C3B4(v122);
}

uint64_t sub_28470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = &v46;
  v25 = a1;
  v26 = a2;
  v31 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v62 = a1[6];
  v61 = v4;
  v60 = v3;
  v59 = v2;
  v27 = *(&v2 + 1);
  v35 = v2;
  v28 = *(&v3 + 1);
  v36 = v3;
  v29 = *(&v4 + 1);
  v37 = v4;
  v30 = v62;
  v32 = sub_1A88(&qword_914A8);
  v33 = *(*(v32 - 8) + 64);
  v5 = (__chkstk_darwin)(0);
  v34 = (v19 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v38 = (v19 - v7);
  v58 = v19 - v7;
  *&v54 = v35;
  *(&v54 + 1) = v8;
  *&v55 = v36;
  *(&v55 + 1) = v9;
  *&v56 = v37;
  *(&v56 + 1) = v6;
  v57 = v10;
  v39 = sub_7D184();
  v40 = sub_7D174();
  v41 = sub_7D154();
  v42 = v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2880C(v25, v45);
  v19[2] = v19;
  __chkstk_darwin(v19);
  v19[0] = &v19[-4];
  v19[-2] = v12;
  v19[1] = sub_1A88(&qword_914D0);
  sub_289FC();
  sub_7CA14();
  sub_28B04();
  v13 = *v24;
  v49 = v24[1];
  v48 = v13;
  v14 = v24[2];
  v15 = v24[3];
  v16 = v24[4];
  v53 = v47;
  v52 = v16;
  v51 = v15;
  v50 = v14;
  v43[1] = v49;
  v43[0] = v48;
  v44 = v47;
  v43[4] = v16;
  v43[3] = v15;
  v43[2] = v14;
  v21 = sub_7C5B4();
  v20 = sub_1A88(&qword_914C0);
  v17 = sub_28964();
  v22 = v43;
  sub_29178(v21, 0x4046000000000000, 0, v20, v17, v34);
  sub_2E244(v22);
  v23 = sub_288BC();
  sub_1991C(v34, v32, v38);
  sub_2E2D0(v34);
  sub_2E3B8(v38, v34);
  sub_1991C(v34, v32, v26);
  sub_2E2D0(v34);
  sub_2E2D0(v38);
}

void *sub_2880C(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  a2[1] = a1[1];
  v4 = a1[2];

  a2[2] = v4;
  a2[3] = a1[3];
  v6 = a1[4];

  a2[4] = v6;
  a2[5] = a1[5];
  v8 = a1[6];

  result = a2;
  a2[6] = v8;
  return result;
}

unint64_t sub_288BC()
{
  v2 = qword_914B0;
  if (!qword_914B0)
  {
    sub_B24C(&qword_914A8);
    sub_28964();
    sub_28A84();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_28964()
{
  v2 = qword_914B8;
  if (!qword_914B8)
  {
    sub_B24C(&qword_914C0);
    sub_289FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_289FC()
{
  v2 = qword_914C8;
  if (!qword_914C8)
  {
    sub_B24C(&qword_914D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_28A84()
{
  v2 = qword_914D8;
  if (!qword_914D8)
  {
    sub_7C514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914D8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_28B04()
{
}

uint64_t sub_28B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v29, 0, 24);
  memset(v27, 0, sizeof(v27));
  memset(__b, 0, sizeof(__b));
  v29[3] = a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;

  v11 = *(v10 + 16);
  v11;

  v2 = sub_273B4();
  v12 = sub_620F4(v2);

  sub_6680C();

  v28[0] = nullsub_1(v12);
  v28[1] = v3;
  v28[2] = v4;
  sub_2E54C();
  sub_1991C(v28, &unk_8ED90, v29);
  sub_2E5C8(v28);
  v13 = *a1;

  v14 = *(v13 + 16);
  v14;

  v5 = sub_273B4();
  v15 = sub_620F4(v5);

  sub_67148();

  v26[0] = nullsub_1(v15);
  v26[1] = v6;
  v26[2] = v7;
  sub_1991C(v26, &unk_8ED90, v27);
  sub_2E5C8(v26);
  v16 = *a1;

  v8 = sub_273B4();
  sub_28F14(v16, v30, v8);
  memcpy(__dst, v30, sizeof(__dst));
  sub_2E608();
  sub_1991C(__dst, &unk_8EE10, __b);
  sub_2C558(__dst);
  sub_2E684(v29, v22);
  v23[0] = v22;
  sub_2E684(v27, v21);
  v23[1] = v21;
  sub_2CAB8(__b, v20);
  v23[2] = v20;
  v19[0] = &unk_8ED90;
  v19[1] = &unk_8ED90;
  v19[2] = &unk_8EE10;
  sub_4E6CC(v23, 3uLL, v19, a2);
  sub_2C558(v20);
  sub_2E5C8(v21);
  sub_2E5C8(v22);
  sub_2C558(__b);
  sub_2E5C8(v27);
  sub_2E5C8(v29);
}

uint64_t sub_28F14@<X0>(uint64_t a1@<X0>, CTFontRef *a2@<X8>, CGFloat a3@<D0>)
{
  v32 = a2;
  v27 = a1;
  v15 = a3;
  v28 = __b;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  v36 = 0;
  v35 = 0;
  v24 = 0;
  v20 = sub_7CC64();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v14 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = (&v14 - v14);
  v36 = __chkstk_darwin(v27);
  v35 = v3;
  v31 = 25.0;
  __b[3] = 25.0;
  v16 = *(v36 + 16);
  v16;
  v29 = sub_620F4(v15);

  v29;
  __b[0] = v29;
  v30 = sub_68A4C();

  __b[1] = v30;
  v17 = sub_6227C();
  v33 = (v17 + sub_622B4()) * 1.3;
  *&__b[4] = v33;
  v26 = sub_7CC74();
  v25 = sub_7D714();
  v21 = v4;
  v5 = sub_2AC90();
  v6 = v18;
  v7 = v22;
  *v22 = v33;
  v7[1] = v5;
  (*(v6 + 104))();
  sub_7CC84();
  v8 = v25;
  sub_71DDC();
  v34 = v8;

  __b[2] = v34;

  sub_2C558(v28);
  v9 = v30;
  v10 = v31;
  v11 = v32;
  v12 = v33;
  result = v34;
  *v32 = v29;
  *(v11 + 1) = v9;
  *(v11 + 2) = result;
  v11[3] = v10;
  v11[4] = v12;
  return result;
}

uint64_t sub_29178@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a6;
  v19 = a1;
  v20 = a2;
  v23 = a3;
  v21 = a4;
  v22 = a5;
  v34 = a4;
  v24 = sub_7C514();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = &v12 - v27;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    sub_7BEA4();
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = 0;
  }

  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17 & 1;
  sub_7C504();
  sub_7C994();
  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_2931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v5[1] = a1;
  v2 = sub_7C144();
  v7 = *(v2 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v9 = v5 - v6;
  (*(v7 + 16))(v3);
  return sub_7C154();
}

unint64_t sub_293D0()
{
  v2 = qword_914E0;
  if (!qword_914E0)
  {
    sub_B24C(&qword_91470);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v5[1] = a1;
  v2 = sub_7C314();
  v7 = *(v2 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v9 = v5 - v6;
  (*(v7 + 16))(v3);
  return sub_7C324();
}

unint64_t sub_2950C()
{
  v2 = qword_914E8;
  if (!qword_914E8)
  {
    sub_7C334();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914E8);
    return WitnessTable;
  }

  return v2;
}

__int128 *sub_2958C(uint64_t *a1, double a2, double a3)
{
  v23 = 0.0;
  v24 = 0.0;
  v22 = 0.0;
  v21 = 0.0;
  v28 = a2;
  v29 = a3;
  v27 = a1;

  sub_6680C();

  v11 = sub_7CF04();
  sub_1A88(&qword_91620);
  sub_7D714();
  v8 = v3;
  sub_BA0C(&NSFontAttributeName, v3);
  v7 = *a1;

  v9 = *(v7 + 16);
  v9;

  v8[4] = type metadata accessor for CTFont();
  v8[1] = v9;
  sub_71DDC();
  type metadata accessor for Key();
  sub_EFA0();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;

  [v11 sizeWithAttributes:isa];
  v25 = v4;
  v26 = v5;
  v13 = v4;
  v15 = v5;

  v23 = v13;
  v24 = v15;
  v22 = (a2 - 50.0) / v13;
  v21 = (a3 - 100.0) / v15;
  v16 = *a1;

  v17 = *(v16 + 16);
  v17;

  sub_6213C();

  *&v20[3] = v22;
  *&v20[2] = v21;
  sub_275DC();
  sub_7D754();
  v30 = *(a1 + 1);
  sub_26D10(&v30, v20);
  sub_26D10(&v30, &v19);
  sub_1A88(&qword_91448);
  sub_7CAF4();
  sub_26D50();
  result = &v30;
  sub_26D50();
  return result;
}

uint64_t sub_298E4(uint64_t a1, uint64_t a2)
{
  v5[3] = a1;
  v5[2] = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7C054();
  v6 = *(a2 + 24);
  sub_26D10(&v6, v5);
  sub_26D10(&v6, &v4);
  sub_1A88(&qword_91450);
  sub_7CAF4();
  sub_26D50();
  sub_26D50();
}

uint64_t sub_29A28(uint64_t a1, uint64_t a2)
{
  v14[3] = a1;
  v14[2] = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a2 + 24);
  sub_26D10(&v17, v14);
  v13 = v17;
  sub_1A88(&qword_91450);
  sub_7CAE4();
  v3 = *&v12[2];
  sub_26D50();
  v16 = *(a2 + 40);
  sub_26D10(&v16, v12);
  v10 = v16;
  sub_7CAE4();
  v11 = v11 + v3;
  v4 = v11;
  sub_26D10(&v16, &v9);
  v8 = v16;
  *&v7[2] = v4;
  sub_7CAF4();
  sub_26D50();
  sub_26D50();
  v15 = *(a2 + 24);
  sub_26D10(&v15, v7);
  sub_26D10(&v15, &v6);
  sub_7CAF4();
  sub_26D50();
  sub_26D50();
}

uint64_t sub_29C64(uint64_t a1, uint64_t a2)
{
  v13[3] = a1;
  v13[2] = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7C564();
  if (sub_7C554())
  {
    v14 = *(a2 + 40);
    sub_26D10(&v14, v8);
    v6 = v14;
    sub_1A88(&qword_91450);
    sub_7CAE4();
    v7 = v7 + 1.0;
    sub_26D10(&v14, &v5);
    sub_7CAF4();
    sub_26D50();
    sub_26D50();
  }

  else
  {
    v15 = *(a2 + 40);
    sub_26D10(&v15, v13);
    v11 = v15;
    sub_1A88(&qword_91450);
    sub_7CAE4();
    v12 = v12 - 1.0;
    v3 = v12;
    sub_26D10(&v15, &v10);
    v9 = v15;
    *&v8[2] = v3;
    sub_7CAF4();
    sub_26D50();
    sub_26D50();
  }
}

uint64_t sub_29E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = sub_26C54();
  v9 = v3;
  v10 = v2;
  v4 = sub_26F28();
  v11 = v5;
  v12 = v4;
  result = sub_26F28();
  *a2 = a1;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v7;
  a2[6] = result;
  return result;
}

void sub_29F98(void *a1)
{
  a1;
  v2 = *v1;
  *v1 = a1;
}

uint64_t sub_2A020(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_2A06C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v21 = a1;
  v16 = a2;
  v22 = a3;
  v17 = sub_2C5A4;
  v32 = &opaque type descriptor for <<opaque return type of View.scrollBounceBehavior(_:axes:)>>;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v33 = 0;
  v26 = sub_7C3E4();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v25 = &v10 - v11;
  v30 = sub_1A88(&qword_91530);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v12 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v10 - v12;
  v38 = sub_1A88(&qword_91538);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v10 - v13;
  v40 = sub_1A88(&qword_91540);
  v14 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v42 = &v10 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v43 = &v10 - v15;
  v53 = &v10 - v15;
  v50 = v6;
  v51 = v7;
  v52 = v8;
  v20 = sub_7C594();
  v21;

  v18 = &v44;
  v45 = v21;
  v46 = v16;
  v47 = v22;
  v19 = sub_1A88(&qword_91548);
  sub_2C5B4();
  sub_2A9E4();

  sub_7C3D4();
  v31 = sub_2C828();
  sub_2AA38();
  sub_7C854();
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  v48 = v30;
  v49 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2AB34();
  sub_7C944();
  (*(v35 + 8))(v37, v38);
  v41 = sub_2C8B0();
  sub_1991C(v42, v40, v43);
  sub_2C9A4(v42);
  sub_2CA0C(v43, v42);
  sub_1991C(v42, v40, v39);
  sub_2C9A4(v42);
  return sub_2C9A4(v43);
}

uint64_t sub_2A564@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v61 = a2;
  v62 = a3;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = a2;
  v47 = a3;
  sub_198A4();
  v42 = sub_7C6E4();
  v43 = v4;
  v44 = v5;
  v45 = v6;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  a1;
  sub_7C644();
  v38 = v42;
  v39 = v11;
  v40 = v12 & 1;
  v41 = v13;
  v34 = sub_7C6C4();
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v14 = v7;
  v15 = v8;
  v16 = v9;

  sub_209FC(v42, v11, v12 & 1);

  v31[0] = v34;
  v31[1] = v14;
  v32 = v15 & 1;
  v33 = v16;
  sub_7C874();
  sub_23BF4(v31);
  v26[0] = v48;
  v26[1] = v49;
  v27 = v50 & 1;
  v28 = v51;
  v29 = v52;
  v30 = v53;
  sub_1A88(&qword_91570);
  sub_2C6FC();
  sub_3FCB0();
  sub_7C8F4();
  sub_2E104(v26);
  memcpy(__dst, v54, sizeof(__dst));
  memcpy(v25, __dst, sizeof(v25));
  sub_7CCA4();
  sub_1A88(&qword_91560);
  sub_2C658();
  sub_7C8E4();
  sub_2E104(v25);
  memcpy(v58, v55, sizeof(v58));
  memcpy(v24, v58, sizeof(v24));
  v17 = sub_1A88(&qword_91548);
  sub_2C5B4();
  sub_1991C(v24, v17, v56);
  sub_2E104(v24);
  memcpy(v59, v56, sizeof(v59));
  sub_2E158(v59, v23);
  memcpy(v22, v59, sizeof(v22));
  sub_1991C(v22, v17, a4);
  sub_2E104(v22);
  sub_2E104(v56);
}

uint64_t sub_2AA38()
{
  sub_1A88(&qword_91618);
  inited = swift_initStackObject();
  v5 = sub_2DE00(inited, 1);
  *v1 = sub_7C594();
  sub_2DE4C();
  v6 = sub_7C584();
  v2 = sub_2DE80();
  v7 = sub_2DE8C(0, v2 & 1, v5);

  sub_7C584();
  if (sub_7C584() == v7)
  {
    return v6;
  }

  else
  {
    return sub_7C584();
  }
}

id sub_2AB7C()
{
  v2 = *v0;
  *v0;
  return v2;
}

uint64_t sub_2ABB0()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_2ABDC(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_2AC18()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_2AC44(uint64_t a1)
{

  *(v1 + 16) = a1;
}

uint64_t sub_2AC9C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v12 = sub_2CB48;
  v29 = 0;
  v7[0] = 40;
  memset(&v28[5], 0, 0x28uLL);
  memcpy(__dst, v1, sizeof(__dst));
  v10 = __dst[0];
  v11 = __dst[1];
  v7[1] = __dst[2];
  v7[2] = __dst[3];
  v7[3] = __dst[4];
  v23 = sub_1A88(&qword_91598);
  v17 = *(v23 - 8);
  v18 = v23 - 8;
  v9 = *(v17 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v21 = v7 - v8;
  v2 = __chkstk_darwin(v7 - v8);
  v22 = v7 - v3;
  v29 = v7 - v3;
  v28[5] = v10;
  v28[6] = v11;
  v28[7] = v4;
  v28[8] = v5;
  *&v28[9] = v2;
  v15 = sub_7C594();
  sub_2CAB8(v1, v28);
  v13 = &v26;
  v27 = v1;
  v14 = sub_1A88(&qword_915A0);
  sub_2CB50();
  sub_2A9E4();
  sub_2C558(v16);
  v20 = sub_2CDC4();
  sub_1991C(v21, v23, v22);
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v21, v23);
  (*(v17 + 16))(v21, v22, v23);
  sub_1991C(v21, v23, v19);
  v25(v21, v23);
  return (v25)(v22, v23);
}

uint64_t sub_2AF94@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v39 = 0;
  v53 = 0;
  v52 = 0.0;
  v51 = 0u;
  v50 = 0u;
  v2 = *a1;
  v3 = *(a1 + 1);
  v56 = a1[4];
  v55 = v3;
  v54 = v2;
  v43 = v2;
  v37 = v3;
  v38 = v56;
  v4 = sub_7C444();
  __chkstk_darwin(v4 - 8);
  v25 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A88(&qword_915D8);
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26 - 8);
  v30 = v14 - v29;
  v31 = sub_1A88(&qword_915C8);
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31 - 8);
  v33 = v14 - v32;
  v34 = sub_1A88(&qword_915B8);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34 - 8);
  v36 = v14 - v35;
  v40 = sub_1A88(&qword_915A0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = v14 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v44 = v14 - v8;
  v53 = v14 - v8;
  v50 = v43;
  *&v51 = v9;
  *(&v51 + 1) = v10;
  v52 = v7;
  v45 = sub_7D184();
  v46 = sub_7D174();
  v47 = sub_7D154();
  v48 = v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14[2] = v23[2];

  v14[3] = sub_7C344();
  v14[4] = v23[3];
  sub_2CAB8(v23, &v49);
  v14[7] = v14;
  __chkstk_darwin(v14);
  v14[5] = &v14[-4];
  v14[6] = sub_1A88(&qword_915E8);
  v14[1] = sub_2D8AC();
  sub_2BB20();
  v15 = 0;
  sub_7CCD4();
  sub_2C558(v23);
  v16 = sub_7C5B4();
  sub_2CD3C();
  sub_7C944();
  (*(v28 + 8))(v30, v26);
  v17 = sub_7CCA4();
  v18 = v12;
  sub_2CC98();
  v19 = 0;
  v20 = 1;
  sub_7C8E4();
  sub_2D9BC(v33);
  v21 = sub_2CBF4();
  sub_2AB34();
  sub_7C944();
  sub_2D9BC(v36);
  v22 = sub_2CB50();
  sub_1991C(v42, v40, v44);
  sub_2D9BC(v42);
  sub_2DA24(v44, v42);
  sub_1991C(v42, v40, v24);
  sub_2D9BC(v42);
  sub_2D9BC(v44);
}

uint64_t sub_2B628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v17 = a1;
  v16 = sub_2DC20;
  v33 = 0;
  v32 = 0;
  v18 = sub_1A88(&qword_915E8);
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v22 = v7 - v21;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v24 = v7 - v23;
  v33 = v7 - v23;
  v32 = v4;
  v25 = sub_7D184();
  v26 = sub_7D174();
  v27 = sub_7D154();
  v28 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = v17[1];
  sub_13DF8(&v34, &v31);
  v11 = &v30;
  v30 = v34;
  v7[2] = swift_getKeyPath();
  sub_2CAB8(v17, v29);
  v8 = swift_allocObject();
  memcpy((v8 + 16), v17, 0x28uLL);
  v9 = sub_1A88(&qword_91608);
  v10 = sub_2DC28();
  sub_2D944();
  sub_7CBC4();
  v12 = sub_2D8AC();
  sub_1991C(v22, v18, v24);
  v14 = *(v19 + 8);
  v13 = v19 + 8;
  v14(v22, v18);
  (*(v19 + 16))(v22, v24, v18);
  sub_1991C(v22, v18, v15);
  v14(v22, v18);
  v14(v24, v18);
}

uint64_t sub_2B970@<X0>(__int16 *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v14 = 0;
  memset(__b, 0, sizeof(__b));
  v8 = *a1;
  v15 = *a1;
  v14 = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a2;
  *a2;
  sub_3FCD4(v4, v8, v16);
  memcpy(__dst, v16, sizeof(__dst));
  sub_2D944();
  sub_1991C(__dst, &unk_8F100, __b);
  sub_2DCB0(__dst);
  memcpy(v13, __b, sizeof(v13));
  sub_2DCF0(v13, v10);
  memcpy(v9, v13, sizeof(v9));
  sub_1991C(v9, &unk_8F100, a3);
  sub_2DCB0(v9);
  sub_2DCB0(__b);
}

uint64_t sub_2BB20()
{
  sub_7C444();
  sub_2DB48();
  return sub_7D854();
}

uint64_t sub_2BBC8()
{

  return swift_deallocObject();
}

uint64_t sub_2BC28()
{

  return swift_deallocObject();
}

unint64_t sub_2BC88()
{
  v2 = qword_914F0;
  if (!qword_914F0)
  {
    sub_7C074();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2BD08()
{
  v2 = qword_914F8;
  if (!qword_914F8)
  {
    sub_7C064();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_914F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2BD88()
{

  return swift_deallocObject();
}

unint64_t sub_2BDE8()
{
  v2 = qword_91500;
  if (!qword_91500)
  {
    sub_B24C(&qword_91460);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2BE70()
{
  v2 = qword_91508;
  if (!qword_91508)
  {
    sub_B24C(&qword_91490);
    sub_B24C(&qword_91480);
    sub_B24C(&qword_91478);
    sub_7C334();
    sub_B24C(&qword_91470);
    sub_7C164();
    sub_293D0();
    swift_getOpaqueTypeConformance2();
    sub_2950C();
    swift_getOpaqueTypeConformance2();
    sub_198A4();
    swift_getOpaqueTypeConformance2();
    sub_2C078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C078()
{
  v2 = qword_91510;
  if (!qword_91510)
  {
    sub_B24C(&qword_91518);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C100()
{
  v2 = qword_91520;
  if (!qword_91520)
  {
    sub_B24C(&qword_91468);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C188(uint64_t a1)
{
  v1 = sub_1A88(&qword_91488);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91490);

  return a1;
}

uint64_t sub_2C22C()
{

  return swift_deallocObject();
}

unint64_t sub_2C28C()
{
  v2 = qword_91528;
  if (!qword_91528)
  {
    sub_B24C(&qword_914A0);
    sub_B24C(&qword_91490);
    sub_B24C(&qword_91468);
    sub_2BE70();
    sub_2C100();
    swift_getOpaqueTypeConformance2();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C3B4(uint64_t a1)
{
  v1 = sub_1A88(&qword_91498);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_914A0) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_2C478(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91498);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_914A0) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_2C5B4()
{
  v2 = qword_91550;
  if (!qword_91550)
  {
    sub_B24C(&qword_91548);
    sub_2C658();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C658()
{
  v2 = qword_91558;
  if (!qword_91558)
  {
    sub_B24C(&qword_91560);
    sub_2C6FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C6FC()
{
  v2 = qword_91568;
  if (!qword_91568)
  {
    sub_B24C(&qword_91570);
    sub_2C7A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C7A0()
{
  v2 = qword_91578;
  if (!qword_91578)
  {
    sub_B24C(&qword_91580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C828()
{
  v2 = qword_91588;
  if (!qword_91588)
  {
    sub_B24C(&qword_91530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2C8B0()
{
  v2 = qword_91590;
  if (!qword_91590)
  {
    sub_B24C(&qword_91540);
    sub_B24C(&qword_91530);
    sub_2C828();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C9A4(uint64_t a1)
{
  v1 = sub_1A88(&qword_91538);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_2CA0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_91538);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_91540);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

void *sub_2CAB8(uint64_t a1, void *a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  v4 = *(a1 + 8);

  a2[1] = v4;
  v6 = *(a1 + 16);

  result = a2;
  a2[2] = v6;
  a2[3] = *(a1 + 24);
  a2[4] = *(a1 + 32);
  return result;
}

unint64_t sub_2CB50()
{
  v2 = qword_915A8;
  if (!qword_915A8)
  {
    sub_B24C(&qword_915A0);
    sub_2CBF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CBF4()
{
  v2 = qword_915B0;
  if (!qword_915B0)
  {
    sub_B24C(&qword_915B8);
    sub_2CC98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CC98()
{
  v2 = qword_915C0;
  if (!qword_915C0)
  {
    sub_B24C(&qword_915C8);
    sub_2CD3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CD3C()
{
  v2 = qword_915D0;
  if (!qword_915D0)
  {
    sub_B24C(&qword_915D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CDC4()
{
  v2 = qword_915E0;
  if (!qword_915E0)
  {
    sub_B24C(&qword_91598);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2CE7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2CF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

__n128 sub_2D184(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_2D198(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2D2B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_2D4C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2D5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_2D8AC()
{
  v2 = qword_915F0;
  if (!qword_915F0)
  {
    sub_B24C(&qword_915E8);
    sub_2D944();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2D944()
{
  v2 = qword_915F8;
  if (!qword_915F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_915F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2D9BC(uint64_t a1)
{
  v1 = sub_1A88(&qword_915D8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_2DA24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_915D8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1A88(&qword_915C8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v4 = sub_1A88(&qword_915B8);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x30uLL);
  v5 = sub_1A88(&qword_915A0);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_2DB48()
{
  v2 = qword_91600;
  if (!qword_91600)
  {
    sub_7C444();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91600);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2DBC8()
{

  return swift_deallocObject();
}

unint64_t sub_2DC28()
{
  v2 = qword_91610;
  if (!qword_91610)
  {
    sub_B24C(&qword_91608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2DCF0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v6 = *(a1 + 88);

  result = a2;
  *(a2 + 88) = v6;
  return result;
}

uint64_t sub_2DD88(Swift::Int a1)
{

  if (a1 > 15)
  {
    sub_7D524(a1);
  }

  return 0;
}

uint64_t sub_2DE00(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

uint64_t sub_2DE8C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + a1);
  }

  result = sub_2DF28(a1, a3);
  __break(1u);
  return result;
}

uint64_t sub_2DF28(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = *(&stru_20.cmd + 8 * result + (a2 & 0xFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2DD88(82);
    v3._countAndFlagsBits = sub_7CF84("Down-casted Array element failed to match the target type\nExpected ", 0x43uLL, 1);
    sub_7CFA4(v3);

    v4._countAndFlagsBits = sub_7CF84("Set", 3uLL, 1);
    sub_7CFA4(v4);

    v5._countAndFlagsBits = sub_7CF84(" but found ", 0xBuLL, 1);
    sub_7CFA4(v5);

    swift_getObjectType();
    v6._countAndFlagsBits = sub_7D914();
    sub_7CFA4(v6);

    sub_7CF74();
    sub_7D5F4();
    __break(1u);
  }

  return v2;
}

uint64_t sub_2E104(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_2E158(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_20C1C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x70uLL);
  memcpy((a2 + 160), (a1 + 160), 0x30uLL);
  return a2;
}

id *sub_2E244(id *a1)
{

  return a1;
}

id *sub_2E2D0(id *a1)
{

  v3 = *(sub_1A88(&qword_914A8) + 36);
  v1 = sub_7C514();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_2E3B8(uint64_t a1, char *a2)
{
  v4 = *a1;
  *a1;
  *a2 = v4;
  *(a2 + 1) = *(a1 + 8);
  v5 = *(a1 + 16);

  *(a2 + 2) = v5;
  v6 = *(a1 + 24);
  v6;
  *(a2 + 3) = v6;
  *(a2 + 4) = *(a1 + 32);
  v7 = *(a1 + 40);

  *(a2 + 5) = v7;
  v8 = *(a1 + 48);
  v8;
  *(a2 + 6) = v8;
  v9 = *(a1 + 56);

  *(a2 + 7) = v9;
  v10 = *(a1 + 64);

  *(a2 + 8) = v10;
  *(a2 + 9) = *(a1 + 72);
  *(a2 + 10) = *(a1 + 80);
  v11 = *(sub_1A88(&qword_914A8) + 36);
  v2 = sub_7C514();
  (*(*(v2 - 8) + 16))(&a2[v11], a1 + v11);
  return a2;
}

unint64_t sub_2E54C()
{
  v2 = qword_91628;
  if (!qword_91628)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2E608()
{
  v2 = qword_91630;
  if (!qword_91630)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91630);
    return WitnessTable;
  }

  return v2;
}

void *sub_2E684(uint64_t a1, void *a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  a2[1] = *(a1 + 8);
  v6 = *(a1 + 16);

  result = a2;
  a2[2] = v6;
  return result;
}

uint64_t sub_2E6EC@<X0>(__objc2_class **a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v42 = a1;
  v30 = "Fatal error";
  v31 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v32 = "FontSettings/FamilyView.swift";
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v33 = 0;
  v38 = type metadata accessor for FamilyView();
  v34 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v41 = (v18 - v34);
  v47 = v18 - v34;
  v46 = v2;
  v35 = type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v3 = sub_7C1A4();
  v4 = v41;
  v5 = v3;
  v6 = v38;
  v41[2] = v5;
  v4[3] = v7;
  v36 = *(v6 + 28);
  swift_getKeyPath();
  sub_7BF24();
  v37 = *(v38 + 32);
  v8 = sub_26C54();
  v9 = v38;
  v10 = (v41 + v37);
  *v10 = v11;
  v10[1] = v8;
  v40 = *(v9 + 36);
  v39 = 1;
  v12 = sub_2EFE0();
  v13 = v41 + v40;
  *v13 = v12 & v39;
  *(v13 + 1) = v14;

  *v41 = v42;

  v15 = 0;
  if (_TtC12FontSettings18FontProviderFamily == *v42)
  {
    v15 = v42;
  }

  v43 = v15;
  if (v15)
  {
    v28 = v43;
  }

  else
  {

    v28 = 0;
  }

  v27 = v28;
  if (v28)
  {
    v26 = v27;
    v19 = v27;
    v45 = v27;
    v22 = objc_opt_self();

    v18[2] = &v44;
    swift_beginAccess();
    v18[3] = v19[7];
    v20 = v19[8];

    swift_endAccess();
    v24 = sub_7CF04();

    v21 = [objc_opt_self() mainScreen];
    [v21 scale];
    v23 = v16;

    v25 = [v22 _applicationIconImageForBundleIdentifier:v24 format:0 scale:v23];
    if (v25)
    {
      v18[1] = v25;
    }

    else
    {
      sub_7D5E4();
      __break(1u);
    }

    v41[1] = sub_7CA24();
  }

  else
  {
    v41[1] = 0;
  }

  sub_3619C(v41, v29);

  return sub_204E4(v41);
}

uint64_t type metadata accessor for FamilyView()
{
  v1 = qword_91700;
  if (!qword_91700)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_2EB90()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_2EBBC@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91638);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for FamilyView();
  sub_36390((v6 + *(v2 + 28)), v1);
  sub_7BF04();
  return sub_36464(v9);
}

uint64_t sub_2ECB4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_36390(v2, (&v5 - v6));
  v3 = type metadata accessor for FamilyView();
  sub_36500(v7, (v1 + *(v3 + 28)));
  return sub_36464(v8);
}

double sub_2ED64()
{
  type metadata accessor for FamilyView();

  sub_1A88(&qword_91448);
  sub_7CAE4();

  return v1;
}

uint64_t sub_2EDF0()
{
  type metadata accessor for FamilyView();

  sub_1A88(&qword_91448);
  sub_7CAF4();
  sub_26D50();
}

double sub_2EE9C()
{
  type metadata accessor for FamilyView();

  sub_1A88(&qword_91448);
  sub_7CB04();

  return v1;
}

double sub_2EF40()
{
  v2 = *(v0 + *(type metadata accessor for FamilyView() + 32));

  return v2;
}

uint64_t sub_2EF88(uint64_t a1, double a2)
{

  v3 = v2 + *(type metadata accessor for FamilyView() + 32);
  *v3 = a2;
  *(v3 + 8) = a1;
}

uint64_t sub_2F034()
{
  type metadata accessor for FamilyView();

  sub_1A88(&qword_91640);
  sub_7CAE4();

  return v1 & 1;
}

uint64_t sub_2F0C4()
{
  type metadata accessor for FamilyView();

  sub_1A88(&qword_91640);
  sub_7CAF4();
  sub_26D50();
}

uint64_t sub_2F170()
{
  type metadata accessor for FamilyView();

  sub_1A88(&qword_91640);
  sub_7CB04();

  return v1;
}

uint64_t sub_2F218()
{
  v2 = *(v0 + *(type metadata accessor for FamilyView() + 36));

  return v2 & 1;
}

uint64_t sub_2F264(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for FamilyView() + 36);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_2F2C0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v16 = 0;
  v12 = sub_365EC;
  v23 = &opaque type descriptor for <<opaque return type of View.settingsListAppearance()>>;
  v33 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v35 = &opaque type descriptor for <<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>;
  v37 = sub_36704;
  v45 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v75 = 0;
  v74 = 0;
  v21 = sub_1A88(&qword_91648);
  v13 = *(v21 - 8);
  v14 = v21 - 8;
  v4 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v15 = &v4 - v4;
  v29 = sub_1A88(&qword_91650);
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v5 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v27 = &v4 - v5;
  v41 = sub_1A88(&qword_91658);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v6 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v40 = &v4 - v6;
  v53 = sub_1A88(&qword_91660);
  v47 = *(v53 - 8);
  v48 = v53 - 8;
  v8 = *(v47 + 64);
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v51 = &v4 - v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v7);
  v52 = &v4 - v9;
  v75 = &v4 - v9;
  v74 = v1;
  v10 = &v58;
  v59 = v1;
  v11 = sub_1A88(&qword_91668);
  sub_365F4();
  sub_7C674();
  v22 = sub_3667C();
  sub_7C6F4();
  (*(v13 + 8))(v15, v21);
  v18 = *v28;

  v17 = &v73;
  swift_beginAccess();
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);

  swift_endAccess();

  v24 = v72;
  v72[0] = v19;
  v72[1] = v20;
  v70 = v21;
  v71 = v22;
  v46 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_198A4();
  v30 = &type metadata for String;
  sub_7C824();
  sub_1F58();
  (*(v25 + 8))(v27, v29);
  v36 = &v56;
  v57 = v28;
  v42 = sub_1A88(&qword_91680);
  v66 = v29;
  v67 = v30;
  v68 = OpaqueTypeConformance2;
  v69 = v32;
  v43 = swift_getOpaqueTypeConformance2();
  v34 = sub_B24C(&qword_91688);
  v2 = sub_3670C();
  v64 = v34;
  v65 = v2;
  v44 = swift_getOpaqueTypeConformance2();
  sub_7C974();
  (*(v38 + 8))(v40, v41);
  v60 = v41;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  sub_1991C(v51, v53, v52);
  v55 = *(v47 + 8);
  v54 = v47 + 8;
  v55(v51, v53);
  (*(v47 + 16))(v51, v52, v53);
  sub_1991C(v51, v53, v49);
  v55(v51, v53);
  return (v55)(v52, v53);
}

uint64_t sub_2FAD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v48 = a2;
  v75 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v49 = sub_7CEF4();
  v50 = *(v49 - 8);
  v51 = v50;
  __chkstk_darwin(0);
  v52 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_7CED4();
  v54 = *(v53 - 8);
  v55 = v54;
  v57 = *(v54 + 64);
  __chkstk_darwin(v53 - 8);
  v59 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v16 - v59;
  __chkstk_darwin(v16 - v59);
  v58 = v16 - v59;
  __chkstk_darwin(v16 - v59);
  v60 = v16 - v59;
  v61 = sub_1A88(&qword_917E0);
  v62 = *(v61 - 8);
  v63 = v62;
  v64 = *(v62 + 64);
  __chkstk_darwin(v61 - 8);
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = v16 - v66;
  __chkstk_darwin(v3);
  v67 = v16 - v66;
  v103 = v16 - v66;
  v68 = sub_1A88(&qword_917E8);
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68 - 8);
  v70 = v16 - v69;
  v71 = sub_1A88(&qword_917F0);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71 - 8);
  v73 = v16 - v72;
  v76 = sub_1A88(&qword_917F8);
  v77 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v75);
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = v16 - v79;
  __chkstk_darwin(v4);
  v80 = v16 - v79;
  v102 = v16 - v79;
  v101 = v5;
  v81 = sub_7D184();
  v82 = sub_7D174();
  v83 = sub_7D154();
  v84 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[3] = sub_7C354();
  v16[4] = v16;
  v40 = 24;
  __chkstk_darwin(v16);
  v16[1] = &v16[-4];
  v16[-2] = v7;
  v16[2] = sub_1A88(&qword_91800);
  sub_382B8();
  v17 = &v99;
  sub_7CB94();
  v19 = 664;
  v18 = v100;
  memcpy(v100, v17, sizeof(v100));
  v23 = v98;
  memcpy(v98, v100, sizeof(v98));
  v36 = 1;
  v21 = sub_7CF84("FAMILY_INFO", 0xBuLL, 1);
  v22 = v8;
  v20 = sub_1A88(&qword_91810);
  sub_38340();
  sub_7C884();

  sub_383C8(v23);
  v24 = sub_7C5B4();
  sub_38564();
  v28 = 0;
  sub_7C944();
  sub_3860C(v70);
  v25 = sub_7C624();
  sub_38804();
  sub_7C8C4();

  sub_3860C(v73);
  v44 = sub_388A8();
  sub_1991C(v78, v76, v80);
  sub_389D8(v78);
  v35 = 10;
  sub_7CEC4();
  v104._countAndFlagsBits = sub_7CF84("", v28, v36);
  object = v104._object;
  sub_7CEB4(v104);

  v27 = *v74;

  v30 = sub_6C1CC();

  v29 = type metadata accessor for Face();
  v31 = sub_7D0E4();

  v97 = v31;
  v32 = &type metadata for Int;
  v33 = sub_4E3D8();
  v34 = v9;
  sub_7CEA4();

  v105._countAndFlagsBits = sub_7CF84(" typefaces", v35, v36);
  v37 = v105._object;
  sub_7CEB4(v105);

  (*(v55 + 16))(v58, v60, v53);
  (*(v55 + 32))(v56, v58, v53);
  (*(v55 + 8))(v60, v53);
  sub_7CEE4();
  v38 = sub_61F88(v52);
  v39 = v10;
  (*(v51 + 8))(v52, v49);
  v95 = v38;
  v96 = v39;
  sub_198A4();
  v91 = sub_7C6E4();
  v92 = v11;
  v93 = v12;
  v94 = v13;
  v88[2] = v91;
  v88[3] = v11;
  v89 = v12;
  v90 = v13;
  v43 = v16;
  __chkstk_darwin(v16);
  v41 = &v16[-4];
  v16[-2] = v14;
  v42 = sub_1A88(&qword_91848);
  sub_38C10();
  sub_7CC14();
  v45 = sub_38D30();
  sub_1991C(v65, v61, v67);
  v47 = *(v63 + 8);
  v46 = v63 + 8;
  v47(v65, v61);
  sub_38DE0(v80, v78);
  v88[0] = v78;
  (*(v63 + 16))(v65, v67, v61);
  v88[1] = v65;
  v87[0] = v76;
  v87[1] = v61;
  v85 = v44;
  v86 = v45;
  sub_4E6CC(v88, 2uLL, v87, v48);
  v47(v65, v61);
  sub_389D8(v78);
  v47(v67, v61);
  sub_389D8(v80);
}

uint64_t sub_30470(uint64_t a1)
{
  __chkstk_darwin(a1);
  v268 = v367;
  v269 = v285;
  v270 = v1;
  v271 = v2;
  v272 = 0;
  v273 = 0u;
  memset(v386, 0, 32);
  v359 = 0;
  memset(v358, 0, sizeof(v358));
  v350 = 0;
  memset(v349, 0, sizeof(v349));
  v313 = 0;
  v312 = 0;
  memset(v311, 0, sizeof(v311));
  v303 = 0;
  memset(v302, 0, sizeof(v302));
  v289 = 0;
  v387 = v1;
  v274 = sub_7D184();
  v275 = sub_7D174();
  v276 = sub_7D154();
  v277 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v247 = *v270;

  v246 = &v385;
  v266 = 0;
  swift_beginAccess();
  v248 = v247[4];
  v249 = v247[5];

  swift_endAccess();

  v383 = v248;
  v384 = v249;
  sub_198A4();
  v4 = sub_7C6E4();
  v5 = v268;
  v380 = v4;
  v381 = v6;
  v268[176] = v7;
  v382 = v8;
  v251 = v380;
  v252 = v381;
  v253 = v5[176];
  v254 = v8;
  v9 = sub_7C5F4();
  v10 = v254;
  v250 = v9;
  v377 = v251;
  v378 = v252;
  v268[144] = v253;
  v379 = v10;
  v11 = sub_7C6C4();
  v12 = v268;
  v374 = v11;
  v375 = v13;
  v268[112] = v14;
  v376 = v15;
  v255 = v374;
  v256 = v375;
  v257 = v12[112];
  v258 = v15;

  sub_209FC(v251, v252, v253);

  sub_7C604();
  v16 = v258;
  v371 = v255;
  v372 = v256;
  v268[80] = v257;
  v373 = v16;
  v17 = sub_7C6A4();
  v18 = v268;
  v19 = v17;
  v20 = v255;
  v22 = v21;
  v23 = v256;
  v25 = v24;
  v26 = v257;
  v368 = v19;
  v369 = v22;
  v268[48] = v25;
  v370 = v27;
  v259 = v368;
  v260 = v369;
  v261 = v18[48];
  v262 = v27;
  sub_209FC(v20, v23, v26);

  v28 = v262;
  v367[0] = v259;
  v367[1] = v260;
  v268[16] = v261;
  v367[3] = v28;
  v263 = v367;
  sub_1991C(v367, &type metadata for Text, v386);
  sub_23BF4(v367);
  v265 = *v270;
  v264 = v265;

  v29 = v266;
  if (_TtC12FontSettings18FontProviderFamily == *v265)
  {
    v29 = v265;
  }

  v267 = v29;
  if (v29)
  {
    v245 = v267;
  }

  else
  {

    v245 = 0;
  }

  v244 = v245;
  if (v245)
  {
    v243 = v244;
    v236 = v244;
    v289 = v244;
    v211 = sub_7C284();

    v212 = &v167;
    __chkstk_darwin(&v167);
    v209 = v164;
    v165 = v270;
    v166 = v30;
    v210 = sub_1A88(&qword_91900);
    sub_39F94();
    v217 = 0;
    sub_7CB74();

    v31 = v269;
    v32 = v269[29];
    v269[102] = v269[30];
    v31[101] = v32;
    v33 = v31[31];
    v34 = v31[32];
    v35 = v31[33];
    v31[106] = v31[34];
    v31[105] = v35;
    v31[104] = v34;
    v31[103] = v33;
    v36 = v31[35];
    v37 = v31[36];
    v38 = v31[37];
    v31[110] = v31[38];
    v31[109] = v38;
    v31[108] = v37;
    v31[107] = v36;
    v39 = v31[39];
    v40 = v31[40];
    v41 = v31[41];
    v31[114] = v31[42];
    v31[113] = v41;
    v31[112] = v40;
    v31[111] = v39;
    v42 = v31[101];
    v31[16] = v31[102];
    v31[15] = v42;
    v43 = v31[103];
    v44 = v31[104];
    v45 = v31[105];
    v31[20] = v31[106];
    v31[19] = v45;
    v31[18] = v44;
    v31[17] = v43;
    v46 = v31[107];
    v47 = v31[108];
    v48 = v31[109];
    v31[24] = v31[110];
    v31[23] = v48;
    v31[22] = v47;
    v31[21] = v46;
    v49 = v31[111];
    v50 = v31[112];
    v51 = v31[113];
    v31[28] = v31[114];
    v31[27] = v51;
    v31[26] = v50;
    v31[25] = v49;
    v213 = sub_1A88(&qword_918B8);
    sub_397B0();
    v214 = v286;
    sub_32774();
    sub_3A01C(v214);
    v52 = v269;
    v53 = v269[43];
    v54 = v269[44];
    v269[117] = v269[45];
    v52[116] = v54;
    v52[115] = v53;
    v55 = v52[46];
    v56 = v52[47];
    v57 = v52[48];
    v52[121] = v52[49];
    v52[120] = v57;
    v52[119] = v56;
    v52[118] = v55;
    v58 = v52[50];
    v59 = v52[51];
    v60 = v52[52];
    v52[125] = v52[53];
    v52[124] = v60;
    v52[123] = v59;
    v52[122] = v58;
    v61 = v52[54];
    v62 = v52[55];
    v63 = v52[56];
    v290 = v286[336];
    v52[128] = v63;
    v52[127] = v62;
    v52[126] = v61;
    v64 = v52[115];
    v65 = v52[116];
    v52[2] = v52[117];
    v52[1] = v65;
    *v52 = v64;
    v66 = v52[118];
    v67 = v52[119];
    v68 = v52[120];
    v52[6] = v52[121];
    v52[5] = v68;
    v52[4] = v67;
    v52[3] = v66;
    v69 = v52[122];
    v70 = v52[123];
    v71 = v52[124];
    v52[10] = v52[125];
    v52[9] = v71;
    v52[8] = v70;
    v52[7] = v69;
    v72 = v52[126];
    v73 = v52[127];
    v74 = v52[128];
    v285[112] = v290;
    v52[13] = v74;
    v52[12] = v73;
    v52[11] = v72;
    v218 = sub_7CCB4();
    v216 = v75;
    v215 = sub_1A88(&qword_918A8);
    v76 = sub_3970C();
    v219 = &v156;
    v163 = v76;
    v162 = v215;
    v161 = v216;
    v160 = v218;
    v159 = 1;
    v158 = 0;
    v157 = 1;
    v156 = 0;
    v221 = &v287;
    v220 = v285;
    sub_7C8F4();
    sub_3A01C(v220);
    v233 = 344;
    v222 = v291;
    memcpy(v291, v221, sizeof(v291));
    v223 = v284;
    memcpy(v284, v291, sizeof(v284));
    v228 = sub_1A88(&qword_91890);
    v229 = sub_39668();
    v235 = v288;
    sub_1991C(v223, v228, v288);
    sub_3A01C(v223);
    v224 = v292;
    memcpy(v292, v235, v233);
    sub_3A078(v224, &v282);
    v225 = v281;
    memcpy(v281, v224, v233);
    v234 = v283;
    sub_1991C(v225, v228, v283);
    sub_3A01C(v225);
    v226 = v293;
    memcpy(v293, v234, v233);
    sub_3A078(v226, &v279);
    v227 = v294;
    memcpy(v294, v226, v233);
    nullsub_1(v227);
    v230 = v278;
    memcpy(v278, v227, v233);
    v231 = v280;
    sub_4E680(v230, v228, v280);
    sub_39F10(v230);
    v232 = v295;
    memcpy(v295, v231, v233);
    memcpy(v366, v232, v233);
    sub_3A01C(v234);
    sub_3A01C(v235);
  }

  else
  {
    v237 = v364;
    sub_395B8(v364);
    v242 = 344;
    v239 = v362;
    memcpy(v362, v364, sizeof(v362));
    v238 = sub_1A88(&qword_91890);
    sub_39668();
    v240 = v363;
    sub_4E680(v362, v238, v363);
    v241 = v365;
    memcpy(v365, v363, sizeof(v365));
    memcpy(v366, v365, sizeof(v366));
  }

  v191 = sub_7C354();
  v193 = &v167;
  v197 = 24;
  __chkstk_darwin(&v167);
  v190 = v164;
  v165 = v77;
  v199 = sub_1A88(&qword_918C0);
  v189 = v199;
  v200 = sub_39840();
  v192 = v200;
  v207 = 0;
  v198 = 1;
  sub_7CB94();
  v78 = v269;
  v79 = v352;
  v269[429] = v353;
  v78[428] = v79;
  v80 = v354;
  v81 = v355;
  v360 = v357;
  v78[432] = v356;
  v78[431] = v81;
  v78[430] = v80;
  v82 = v78[428];
  v78[412] = v78[429];
  v78[411] = v82;
  v83 = v78[430];
  v84 = v78[431];
  v85 = v78[432];
  v351[10] = v360;
  v78[415] = v85;
  v78[414] = v84;
  v78[413] = v83;
  v202 = sub_1A88(&qword_918D0);
  v194 = v202;
  v203 = sub_398C8();
  v195 = v203;
  v196 = v351;
  sub_1991C(v351, v202, v358);
  sub_39950(v196);
  v86 = sub_7C354();
  v201 = &v167;
  __chkstk_darwin(v86);
  v165 = v87;
  sub_7CB94();
  v88 = v269;
  v89 = v202;
  v90 = v343;
  v269[435] = v344;
  v88[434] = v90;
  v91 = v345;
  v92 = v346;
  v361 = v348;
  v88[438] = v347;
  v88[437] = v92;
  v88[436] = v91;
  v93 = v88[434];
  v88[395] = v88[435];
  v88[394] = v93;
  v94 = v88[436];
  v95 = v88[437];
  v96 = v88[438];
  v342[10] = v361;
  v88[398] = v96;
  v88[397] = v95;
  v88[396] = v94;
  v204 = v342;
  sub_1991C(v342, v89, v349);
  sub_39950(v204);
  v206 = *v270;
  v205 = v206;

  v97 = v207;
  if (_TtC12FontSettings18FontProviderFamily == *v206)
  {
    v97 = v206;
  }

  v208 = v97;
  if (v97)
  {
    v188 = v208;
  }

  else
  {

    v188 = 0;
  }

  v187 = v188;
  if (v188)
  {
    v186 = v187;
    v184 = v187;
    v313 = v187;
    v178 = sub_7C354();

    sub_7CB94();

    v111 = v194;
    v112 = v269;
    v113 = v305;
    v269[289] = v306;
    v112[288] = v113;
    v114 = v307;
    v115 = v308;
    v314 = v310;
    v112[292] = v309;
    v112[291] = v115;
    v112[290] = v114;
    v116 = v112[288];
    v112[272] = v112[289];
    v112[271] = v116;
    v117 = v112[290];
    v118 = v112[291];
    v119 = v112[292];
    v304[10] = v314;
    v112[275] = v119;
    v112[274] = v118;
    v112[273] = v117;
    v183 = v311;
    v179 = v304;
    sub_1991C(v304, v111, v311);
    sub_39950(v179);
    v120 = v269;
    v121 = v269[282];
    v269[295] = v269[283];
    v120[294] = v121;
    v122 = v120[284];
    v123 = v120[285];
    v124 = v120[286];
    v316 = v312;
    v120[298] = v124;
    v120[297] = v123;
    v120[296] = v122;
    sub_39B24(&v315, &v301);
    v125 = v194;
    v126 = v269;
    v127 = v269[294];
    v269[255] = v269[295];
    v126[254] = v127;
    v128 = v126[296];
    v129 = v126[297];
    v130 = v126[298];
    v300[10] = v316;
    v126[258] = v130;
    v126[257] = v129;
    v126[256] = v128;
    v182 = v302;
    v180 = v300;
    sub_1991C(v300, v125, v302);
    sub_39950(v180);
    v131 = v269;
    v132 = v269[265];
    v269[301] = v269[266];
    v131[300] = v132;
    v133 = v131[267];
    v134 = v131[268];
    v135 = v131[269];
    v318 = v303;
    v131[304] = v135;
    v131[303] = v134;
    v131[302] = v133;
    sub_39B24(&v317, &v297);
    v136 = v194;
    v137 = v269;
    v138 = v269[300];
    v269[307] = v269[301];
    v137[306] = v138;
    v139 = v137[302];
    v140 = v137[303];
    v141 = v137[304];
    v319 = v318;
    v137[310] = v141;
    v137[309] = v140;
    v137[308] = v139;
    v142 = v137[306];
    v137[238] = v137[307];
    v137[237] = v142;
    v143 = v137[308];
    v144 = v137[309];
    v145 = v137[310];
    v296[10] = v319;
    v137[241] = v145;
    v137[240] = v144;
    v137[239] = v143;
    v181 = v296;
    sub_4E680(v296, v136, v298);
    sub_39E94(v181);
    v146 = v269;
    v147 = v182;
    v148 = v298[0];
    v269[313] = v298[1];
    v146[312] = v148;
    v149 = v298[2];
    v150 = v298[3];
    v320 = v299;
    v146[316] = v298[4];
    v146[315] = v150;
    v146[314] = v149;
    v151 = v146[312];
    v146[389] = v146[313];
    v146[388] = v151;
    v152 = v146[314];
    v153 = v146[315];
    v154 = v146[316];
    v341 = v320;
    v146[392] = v154;
    v146[391] = v153;
    v146[390] = v152;
    sub_39950(v147);
    sub_39950(v183);
  }

  else
  {
    v98 = v269;
    v99 = v194;
    v185 = 0;
    memset(&v334[11], 0, 32);
    v335 = 0uLL;
    v336 = 0uLL;
    v337 = 0uLL;
    v338 = 0;
    v269[366] = 0u;
    v98[365] = 0u;
    v100 = v335;
    v101 = v336;
    v333[10] = v338;
    v98[369] = v337;
    v98[368] = v101;
    v98[367] = v100;
    sub_4E680(v333, v99, v334);
    v102 = v269;
    v103 = v269[371];
    v269[383] = v269[372];
    v102[382] = v103;
    v104 = v102[373];
    v105 = v102[374];
    v106 = v102[375];
    v339 = v334[10];
    v102[386] = v106;
    v102[385] = v105;
    v102[384] = v104;
    v107 = v102[382];
    v102[389] = v102[383];
    v102[388] = v107;
    v108 = v102[384];
    v109 = v102[385];
    v110 = v102[386];
    v341 = v339;
    v102[392] = v110;
    v102[391] = v109;
    v102[390] = v108;
  }

  v177 = v386;
  v172 = v331;
  sub_23E4C(v386, v331);
  v332[0] = v172;
  v176 = v366;
  v171 = v330;
  sub_399C4(v366, v330);
  v332[1] = v171;
  v175 = v358;
  v170 = v329;
  sub_39B24(v358, v329);
  v332[2] = v170;
  v174 = v349;
  v169 = v328;
  sub_39B24(v349, v328);
  v332[3] = v169;
  v173 = v340;
  v168 = v327;
  sub_39C2C(v340, v327);
  v332[4] = v168;
  v326[0] = &type metadata for Text;
  v326[1] = sub_1A88(&qword_918E0);
  v326[2] = v194;
  v326[3] = v194;
  v326[4] = sub_1A88(&qword_918E8);
  v321 = &protocol witness table for Text;
  v322 = sub_39D64();
  v323 = v195;
  v324 = v195;
  v325 = sub_39DFC();
  sub_4E6CC(v332, 5uLL, v326, v271);
  sub_39E94(v168);
  sub_39950(v169);
  sub_39950(v170);
  sub_39F10(v171);
  sub_23BF4(v172);
  sub_39E94(v173);
  sub_39950(v174);
  sub_39950(v175);
  sub_39F10(v176);
  sub_23BF4(v177);
}

uint64_t sub_317A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v87 = a1;
  v88 = a2;
  v80 = sub_3A580;
  v136 = 0;
  v135 = 0;
  v89 = 0;
  v81 = type metadata accessor for FamilyView();
  v82 = *(v81 - 8);
  v83 = v82;
  v84 = *(v82 + 64);
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v86 = (&v26 - v85);
  v90 = sub_7CA44();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v94 = &v26 - v93;
  v136 = v3;
  v135 = v4;
  v95 = sub_7D184();
  v96 = sub_7D174();
  v97 = sub_7D154();
  v98 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v78 = v87[1];

  if (v78)
  {
    v77 = v78;
    v59 = v78;
    v55 = sub_31F60();
    v56 = v6;
    v57 = v7;
    v58 = v8;
    sub_31F74(v94);
    v60 = sub_7CA54();
    (*(v91 + 8))(v94, v90);

    v61 = &v105;
    v105 = v60;
    v67 = 0;
    v64 = 1;
    v68 = 1;
    sub_7C774();
    sub_B068();
    v71 = v102;
    v102[0] = v129[17];
    v102[1] = v129[18];
    v103 = v130 & 1;
    v104 = v131;
    v9 = (v87 + *(v81 + 32));
    v62 = *v9;
    v63 = v9[1];

    v100 = v62;
    v101 = v63;
    sub_1A88(&qword_91448);
    sub_7CAE4();
    v65 = v99;

    v66 = sub_1A88(&qword_91938);
    v69 = sub_3A32C();
    v10 = sub_3FCB0();
    v70 = &v18;
    v18 = 0;
    v19 = v64;
    v20 = v65;
    v21 = 0;
    v22 = v10;
    v23 = v11;
    v24 = v66;
    v25 = v69;
    v72 = &v132;
    sub_7C8F4();
    sub_B068();
    v73 = v106;
    v75 = 136;
    memcpy(v106, v72, sizeof(v106));
    v74 = v107;
    memcpy(v107, v106, sizeof(v107));
    nullsub_1(v107);
    memcpy(__dst, v74, v75);
  }

  else
  {
    v76 = v129;
    sub_3A1A8(v129);
    memcpy(__dst, v76, sizeof(__dst));
  }

  v27 = v127;
  memcpy(v127, __dst, sizeof(v127));
  v46 = sub_1A88(&qword_91910);
  v48 = sub_3A1F0();
  v54 = v133;
  sub_1991C(v27, v46, v133);
  sub_B068();

  v28 = &v124;
  swift_beginAccess();
  v29 = *(v88 + 72);
  v30 = *(v88 + 80);

  swift_endAccess();

  v31 = v123;
  v123[0] = v29;
  v123[1] = v30;
  sub_198A4();
  v119 = sub_7C6E4();
  v120 = v12;
  v121 = v13;
  v122 = v14;
  v41 = v116;
  v116[0] = v119;
  v116[1] = v12;
  v117 = v13 & 1;
  v118 = v14;
  sub_3619C(v87, v86);
  v32 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v33 = swift_allocObject();
  sub_3789C(v86, v33 + v32);
  v34 = sub_1A88(&qword_91940);
  sub_3A600();
  v15 = sub_7C034();
  v40 = v115;
  v115[0] = v15;
  v115[1] = v16;
  v36 = sub_1A88(&qword_91950);
  v38 = sub_3A6A0();
  v35 = &type metadata for Text;
  v37 = &protocol witness table for Text;
  v39 = sub_3274C();
  v42 = &v125;
  sub_7C934();
  sub_26D50();
  sub_23BF4(v41);
  v43 = v128;
  v44 = 64;
  memcpy(v128, v42, sizeof(v128));
  v45 = v114;
  memcpy(v114, v128, sizeof(v114));
  v47 = sub_1A88(&qword_91960);
  v49 = sub_3A728();
  v53 = v126;
  sub_1991C(v45, v47, v126);
  sub_3A854(v45);
  v52 = v112;
  sub_3A8A8(v54, v112);
  v50 = v113;
  v113[0] = v52;
  v51 = v111;
  sub_3A910(v53, v111);
  v113[1] = v51;
  v110[0] = v46;
  v110[1] = v47;
  v108 = v48;
  v109 = v49;
  sub_4E6CC(v50, 2uLL, v110, v79);
  sub_3A854(v51);
  sub_B068();
  sub_3A854(v53);
  sub_B068();
}

uint64_t sub_31F74@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for Image.ResizingMode.stretch(_:);
  v1 = sub_7CA44();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_31FE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v34 = a1;
  v35 = a2;
  v26 = sub_3AC44;
  v51 = 0;
  v50 = 0;
  v36 = 0;
  v27 = sub_7C004();
  v29 = *(v27 - 8);
  v28 = v27 - 8;
  v30 = v29;
  v31 = *(v29 + 64);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v33 = &v9 - v32;
  v37 = *(type metadata accessor for FamilyView() - 8);
  v38 = v37;
  v39 = *(v37 + 64);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v41 = (&v9 - v40);
  v51 = v3;
  v50 = v4;
  v42 = sub_7D184();
  v43 = sub_7D174();
  v44 = sub_7D154();
  v45 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_7C9E4();
  v14 = v48;
  v48[0] = v6;
  sub_3619C(v35, v41);
  v10 = v30;
  (*(v29 + 16))(v33, v34, v27);
  v11 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v12 = (v11 + v39 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v7 = sub_3789C(v41, v13 + v11);
  (*(v29 + 32))(v13 + v12, v33, v27, v7);
  sub_7C9A4();
  sub_3AD28(v26);
  sub_B068();
  v15 = v47;
  v47[0] = v48[1];
  v47[1] = v48[2];
  v47[2] = v48[3];
  v47[3] = v48[4];
  v47[4] = v48[5];
  v21 = sub_1A88(&qword_91940);
  v22 = sub_3A600();
  v24 = v49;
  sub_1991C(v15, v21, v49);
  sub_3AD5C(v15);
  v16 = v49[0];
  v17 = v49[1];
  v18 = v49[2];
  v19 = v49[3];
  v20 = v49[4];

  sub_3ADC8(v17);
  sub_3ADC8(v19);
  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v46[3] = v19;
  v46[4] = v20;
  sub_1991C(v46, v21, v25);
  sub_3AD5C(v23);
  sub_3AD5C(v24);
}

uint64_t sub_32548(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v28 = 0;
  v27 = 0;
  v15 = 0;
  v16 = sub_7C3C4();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v20 = &v8 - v19;
  v28 = v2;
  v27 = v3;
  v21 = sub_7D184();
  v22 = sub_7D174();
  v23 = sub_7D154();
  v24 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7C4D4();
  sub_7BFF4();
  v9 = v5;
  (*(v17 + 8))(v20, v16);
  v6 = (v13 + *(type metadata accessor for FamilyView() + 32));
  v8 = *v6;
  v12 = v6[1];

  v11 = v26;
  v26[0] = v8;
  v26[1] = v12;
  v10 = &v25;
  v25 = v9;
  sub_1A88(&qword_91448);
  sub_7CAF4();
  sub_26D50();
}

uint64_t sub_327B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  memset(v69, 0, sizeof(v69));
  v44 = 0;
  v45 = sub_7CEF4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v49 = &v16 - v48;
  v87 = v2;
  v50 = sub_7D184();
  v51 = sub_7D174();
  v52 = sub_7D154();
  v53 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = 1;
  sub_7CF84("Copyright", 9uLL, 1);
  sub_7CE94();
  v16 = sub_61F88(v49);
  v17 = v4;
  (*(v46 + 8))(v49, v45);
  v18 = v85;
  v85[0] = v16;
  v85[1] = v17;
  v32 = sub_198A4();
  v31 = &type metadata for String;
  v81 = sub_7C6E4();
  v82 = v5;
  v83 = v6;
  v84 = v7;
  v20 = v81;
  v21 = v5;
  v19 = v6;
  v22 = v7;
  sub_7C604();
  v77 = v20;
  v78 = v21;
  v79 = v19 & 1;
  v80 = v22;
  v73 = sub_7C6A4();
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v23 = v73;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  sub_209FC(v20, v21, v19 & 1);

  v27 = v70;
  v70[0] = v23;
  v70[1] = v24;
  v71 = v25 & 1 & v33;
  v72 = v26;
  v41 = v86;
  v35 = &type metadata for Text;
  v36 = &protocol witness table for Text;
  sub_1991C(v70, &type metadata for Text, v86);
  sub_23BF4(v27);
  v28 = *v43;

  v29 = sub_6CC38();
  v30 = v11;

  v67 = v29;
  v68 = v30;
  v63 = sub_7C6E4();
  v64 = v12;
  v65 = v13;
  v66 = v14;
  v34 = v60;
  v60[0] = v63;
  v60[1] = v12;
  v61 = v13 & 1 & v33;
  v62 = v14;
  v40 = v69;
  sub_1991C(v60, v35, v69);
  sub_23BF4(v34);
  v39 = v58;
  sub_23E4C(v41, v58);
  v37 = v59;
  v59[0] = v39;
  v38 = v57;
  sub_23E4C(v40, v57);
  v59[1] = v38;
  v56[0] = v35;
  v56[1] = v35;
  v54 = v36;
  v55 = v36;
  sub_4E6CC(v37, 2uLL, v56, v42);
  sub_23BF4(v38);
  sub_23BF4(v39);
  sub_23BF4(v40);
  sub_23BF4(v41);
}

uint64_t sub_32C0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  memset(v69, 0, sizeof(v69));
  v44 = 0;
  v45 = sub_7CEF4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v49 = &v16 - v48;
  v87 = v2;
  v50 = sub_7D184();
  v51 = sub_7D174();
  v52 = sub_7D154();
  v53 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = 1;
  sub_7CF84("Version", 7uLL, 1);
  sub_7CE94();
  v16 = sub_61F88(v49);
  v17 = v4;
  (*(v46 + 8))(v49, v45);
  v18 = v85;
  v85[0] = v16;
  v85[1] = v17;
  v32 = sub_198A4();
  v31 = &type metadata for String;
  v81 = sub_7C6E4();
  v82 = v5;
  v83 = v6;
  v84 = v7;
  v20 = v81;
  v21 = v5;
  v19 = v6;
  v22 = v7;
  sub_7C604();
  v77 = v20;
  v78 = v21;
  v79 = v19 & 1;
  v80 = v22;
  v73 = sub_7C6A4();
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v23 = v73;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  sub_209FC(v20, v21, v19 & 1);

  v27 = v70;
  v70[0] = v23;
  v70[1] = v24;
  v71 = v25 & 1 & v33;
  v72 = v26;
  v41 = v86;
  v35 = &type metadata for Text;
  v36 = &protocol witness table for Text;
  sub_1991C(v70, &type metadata for Text, v86);
  sub_23BF4(v27);
  v28 = *v43;

  v29 = sub_6CF0C();
  v30 = v11;

  v67 = v29;
  v68 = v30;
  v63 = sub_7C6E4();
  v64 = v12;
  v65 = v13;
  v66 = v14;
  v34 = v60;
  v60[0] = v63;
  v60[1] = v12;
  v61 = v13 & 1 & v33;
  v62 = v14;
  v40 = v69;
  sub_1991C(v60, v35, v69);
  sub_23BF4(v34);
  v39 = v58;
  sub_23E4C(v41, v58);
  v37 = v59;
  v59[0] = v39;
  v38 = v57;
  sub_23E4C(v40, v57);
  v59[1] = v38;
  v56[0] = v35;
  v56[1] = v35;
  v54 = v36;
  v55 = v36;
  sub_4E6CC(v37, 2uLL, v56, v42);
  sub_23BF4(v38);
  sub_23BF4(v39);
  sub_23BF4(v40);
  sub_23BF4(v41);
}

uint64_t sub_33068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = a1;
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  memset(v67, 0, sizeof(v67));
  v42 = 0;
  v43 = sub_7CEF4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = &v16 - v46;
  v85 = v2;
  v48 = sub_7D184();
  v49 = sub_7D174();
  v50 = sub_7D154();
  v51 = v3;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = 1;
  sub_7CF84("File Size", 9uLL, 1);
  sub_7CE94();
  v17 = sub_61F88(v47);
  v18 = v4;
  (*(v44 + 8))(v47, v43);
  v19 = v83;
  v83[0] = v17;
  v83[1] = v18;
  v29 = sub_198A4();
  v30 = &type metadata for String;
  v79 = sub_7C6E4();
  v80 = v5;
  v81 = v6;
  v82 = v7;
  v21 = v79;
  v22 = v5;
  v20 = v6;
  v23 = v7;
  sub_7C604();
  v75 = v21;
  v76 = v22;
  v77 = v20 & 1;
  v78 = v23;
  v71 = sub_7C6A4();
  v72 = v8;
  v73 = v9;
  v74 = v10;
  v24 = v71;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  sub_209FC(v21, v22, v20 & 1);

  v28 = v68;
  v68[0] = v24;
  v68[1] = v25;
  v69 = v26 & 1 & v31;
  v70 = v27;
  v39 = v84;
  v33 = &type metadata for Text;
  v34 = &protocol witness table for Text;
  sub_1991C(v68, &type metadata for Text, v84);
  sub_23BF4(v28);
  v65 = sub_6A514();
  v66 = v11;
  v61 = sub_7C6E4();
  v62 = v12;
  v63 = v13;
  v64 = v14;
  v32 = v58;
  v58[0] = v61;
  v58[1] = v12;
  v59 = v13 & 1 & v31;
  v60 = v14;
  v38 = v67;
  sub_1991C(v58, v33, v67);
  sub_23BF4(v32);
  v37 = v56;
  sub_23E4C(v39, v56);
  v35 = v57;
  v57[0] = v37;
  v36 = v55;
  sub_23E4C(v38, v55);
  v57[1] = v36;
  v54[0] = v33;
  v54[1] = v33;
  v52 = v34;
  v53 = v34;
  sub_4E6CC(v35, 2uLL, v54, v40);
  sub_23BF4(v36);
  sub_23BF4(v37);
  sub_23BF4(v38);
  sub_23BF4(v39);
}

uint64_t sub_334A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = a1;
  v18 = sub_337A4;
  v33 = 0;
  v32 = 0;
  v20 = sub_1A88(&qword_91848);
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v24 = v7 - v23;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v26 = v7 - v25;
  v33 = v7 - v25;
  v32 = v4;
  v27 = sub_7D184();
  v28 = sub_7D174();
  v29 = sub_7D154();
  v30 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7[1] = *v19;

  v8 = sub_6C1CC();

  v13 = &v31;
  v31 = v8;
  v9 = sub_1A88(&qword_91870);
  v10 = sub_1A88(&qword_91860);
  v11 = sub_39438();
  v12 = sub_38CA8();
  sub_394C0();
  sub_7CBD4();
  v14 = sub_38C10();
  sub_1991C(v24, v20, v26);
  v16 = *(v21 + 8);
  v15 = v21 + 8;
  v16(v24, v20);
  (*(v21 + 16))(v24, v26, v20);
  sub_1991C(v24, v20, v17);
  v16(v24, v20);
  v16(v26, v20);
}

uint64_t sub_337A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = a1;
  v34 = 0;
  v33 = 0;
  v19 = sub_1A88(&qword_91860);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v23 = &v9 - v22;
  v24 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v25 = &v9 - v24;
  v34 = &v9 - v24;
  v26 = *v4;
  v33 = v26;
  v27 = sub_7D184();
  v28 = sub_7D174();
  v29 = sub_7D154();
  v30 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_65E4C();
  v13 = v32;
  v32[0] = v6;
  v32[1] = v7;

  v10 = &v35;
  sub_29E98(v26, &v35);
  v11 = __dst;
  memcpy(__dst, v10, sizeof(__dst));
  v12 = sub_39540();
  sub_198A4();
  sub_7C084();
  v14 = sub_38CA8();
  sub_1991C(v23, v19, v25);
  v16 = *(v20 + 8);
  v15 = v20 + 8;
  v16(v23, v19);
  (*(v20 + 16))(v23, v25, v19);
  sub_1991C(v23, v19, v17);
  v16(v23, v19);
  v16(v25, v19);
}

uint64_t sub_33AB0@<X0>(__objc2_class ***a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v37 = a2;
  v52 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v38 = sub_1A88(&qword_91768);
  v39 = *(v38 - 8);
  v40 = v39;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v42 = v15 - v41;
  v78 = v15 - v41;
  v2 = sub_7C434();
  __chkstk_darwin(v2 - 8);
  v43 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A88(&qword_91698);
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  __chkstk_darwin(v44 - 8);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v15 - v49;
  __chkstk_darwin(v15 - v49);
  v50 = v15 - v49;
  v77 = v15 - v49;
  v53 = sub_1A88(&qword_91688);
  v55 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v52);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v15 - v57;
  __chkstk_darwin(v4);
  v56 = v15 - v57;
  __chkstk_darwin(v5);
  v58 = v15 - v57;
  v76 = v15 - v57;
  v75 = v6;
  v59 = sub_7D184();
  v60 = sub_7D174();
  v61 = sub_7D154();
  v62 = v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = *v51;
  v34 = v35;

  v8 = 0;
  if (_TtC12FontSettings15FontAssetFamily == *v35)
  {
    v8 = v35;
  }

  v36 = v8;
  if (v8)
  {

    v33 = 1;
  }

  else
  {

    v33 = 0;
  }

  if (v33)
  {
    v32 = 1;
  }

  else
  {
    v30 = *v51;
    v29 = v30;

    v9 = 0;
    if (_TtC12FontSettings18FontProviderFamily == *v30)
    {
      v9 = v30;
    }

    v31 = v9;
    if (v9)
    {

      v28 = 1;
    }

    else
    {

      v28 = 0;
    }

    v32 = v28;
  }

  if (v32)
  {
    sub_7C414();
    v22 = v15;
    __chkstk_darwin(v15);
    v20 = &v15[-8];
    *&v15[-4] = v10;
    v21 = sub_1A88(&qword_91770);
    v16 = sub_B24C(&qword_91778);
    v17 = sub_B24C(&qword_91780);
    v18 = sub_373E0();
    v19 = sub_198A4();
    v11 = sub_375B8();
    v65 = v16;
    v66 = &type metadata for String;
    v67 = v17;
    v68 = &type metadata for Text;
    v69 = v18;
    v70 = v19;
    v71 = v11;
    v72 = &protocol witness table for Text;
    v23 = 1;
    v25 = 1;
    swift_getOpaqueTypeConformance2();
    sub_7BF74();
    v24 = sub_367F4();
    sub_1991C(v48, v44, v50);
    v27 = *(v46 + 8);
    v26 = v46 + 8;
    v27(v48, v44);
    (*(v46 + 16))(v48, v50, v44);
    sub_7C454();
    v27(v48, v44);
    (*(v40 + 16))(v54, v42, v38);
    (*(v40 + 56))(v54, 0, v23, v38);
    v63 = v44;
    v64 = v24;
    swift_getOpaqueTypeConformance2();
    sub_7C464();
    sub_370BC(v54);
    sub_37170(v56, v58);
    (*(v40 + 8))(v42, v38);
    v27(v50, v44);
  }

  else
  {
    v12 = *(v40 + 56);
    v15[3] = 1;
    v12(v54, 1, 1, v38);
    v13 = sub_367F4();
    v73 = v44;
    v74 = v13;
    swift_getOpaqueTypeConformance2();
    sub_7C464();
    sub_370BC(v54);
    sub_37170(v56, v58);
  }

  sub_372A4(v58, v56);
  sub_3670C();
  sub_7C454();
  sub_370BC(v56);
  sub_370BC(v58);
}

uint64_t sub_34414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v59 = a2;
  v85 = 0;
  v113 = 0;
  v112 = 0;
  v60 = sub_7CEF4();
  v61 = *(v60 - 8);
  v62 = v61;
  __chkstk_darwin(0);
  v63 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for FamilyView();
  v65 = *(v64 - 8);
  v66 = v65;
  v67 = *(v65 + 64);
  __chkstk_darwin(v64 - 8);
  v68 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1A88(&qword_917C8);
  v69 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4 - 8);
  v70 = &v20 - v69;
  v71 = sub_1A88(&qword_917A8);
  v72 = *(v71 - 8);
  v73 = v72;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71 - 8);
  v75 = &v20 - v74;
  v76 = sub_1A88(&qword_91798);
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76 - 8);
  v78 = &v20 - v77;
  v79 = sub_1A88(&qword_91778);
  v80 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79 - 8);
  v82 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = &v20 - v82;
  __chkstk_darwin(&v20 - v82);
  v83 = &v20 - v82;
  v86 = sub_1A88(&qword_91770);
  v87 = *(v86 - 8);
  v88 = v87;
  v89 = *(v87 + 64);
  __chkstk_darwin(v85);
  v91 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = &v20 - v91;
  __chkstk_darwin(v5);
  v92 = &v20 - v91;
  v113 = &v20 - v91;
  v112 = v6;
  v93 = sub_7D184();
  v94 = sub_7D174();
  v95 = sub_7D154();
  v96 = v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = v75;
  v41 = 0;
  v54 = 1;
  sub_7CF84("", 0, 1);
  v27 = sub_7C2E4();
  v23 = v9;
  v22 = v10;
  v24 = v11;
  v25 = sub_7CF84("trash", 5uLL, v54);
  v26 = v12;
  sub_7BE84();
  v13 = sub_7BE94();
  (*(*(v13 - 8) + 56))(v70, 0, v54);
  sub_3619C(v84, v68);
  v20 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v21 = swift_allocObject();
  sub_3789C(v68, v21 + v20);
  sub_3523C(v27, v23, v22 & 1, v24, v25, v26, v70, sub_379F8, v8, v21);
  v28 = sub_7C9C4();
  sub_37530();
  sub_7C8D4();

  (*(v73 + 8))(v75, v71);
  v34 = 13;
  v29 = sub_7CF84("REMOVE_FAMILY", 0xDuLL, v54);
  v30 = v14;
  sub_37488();
  sub_7C884();

  sub_37A5C(v78);
  sub_7CF84("Remove font", 0xBuLL, v54);
  sub_7CE94();
  v31 = sub_61F88(v63);
  v32 = v15;
  v36 = *(v62 + 8);
  v35 = v62 + 8;
  v36(v63, v60);
  v111[0] = v31;
  v111[1] = v32;
  v52 = sub_198A4();
  v48 = &type metadata for String;
  v33 = v111;
  sub_7C114();
  sub_1F58();
  sub_37B00(v81);
  sub_7CF84("Are you sure?", v34, v54);
  sub_7CE94();
  v37 = sub_61F88(v63);
  v38 = v16;
  v36(v63, v60);
  v110[0] = v37;
  v110[1] = v38;
  v17 = v84 + *(v64 + 36);
  v39 = *v17;
  v40 = *(v17 + 1);

  v108 = v39;
  v109 = v40;
  sub_1A88(&qword_91640);
  sub_7CB04();
  v45 = v105;
  v46 = v106;
  v42 = v107;

  v44 = &v20;
  __chkstk_darwin(&v20);
  v43 = v19;
  v49 = sub_1A88(&qword_91780);
  v51 = sub_373E0();
  v55 = sub_375B8();
  v50 = &type metadata for Text;
  v53 = &protocol witness table for Text;
  sub_4E928();
  v19[2] = v53;
  v19[1] = v55;
  v19[0] = v52;
  v47 = v110;
  sub_7C844();

  sub_1F58();
  sub_37B00(v83);
  v97 = v79;
  v98 = v48;
  v99 = v49;
  v100 = v50;
  v101 = v51;
  v102 = v52;
  v103 = v55;
  v104 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v90, v86, v92);
  v58 = *(v88 + 8);
  v57 = v88 + 8;
  v58(v90, v86);
  (*(v88 + 16))(v90, v92, v86);
  sub_1991C(v90, v86, v59);
  v58(v90, v86);
  v58(v92, v86);
}

uint64_t sub_35108()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FamilyView();

  sub_1A88(&qword_91640);
  sub_7CAF4();
  sub_26D50();
}

uint64_t sub_3523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = a9;
  v16 = a1;
  v25 = a2;
  v14 = a3;
  v26 = a4;
  v15 = a5;
  v24 = a6;
  v27 = a7;
  v18 = a8;
  v19 = a10;
  v20 = sub_38160;
  v13 = (*(*(sub_1A88(&qword_917C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v23 = &v12 - v13;
  sub_37FC4(v10, &v12 - v13);
  v21 = &v28;
  v29 = v16;
  v30 = v25;
  v31 = v14;
  v32 = v26;
  v33 = v15;
  v34 = v24;
  v22 = sub_1A88(&qword_917D0);
  sub_38180();
  sub_7CB34();

  return sub_38208(v27);
}

uint64_t sub_3539C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v48 = a1;
  v30 = sub_37DBC;
  v65 = 0;
  v64 = 0;
  v49 = 0;
  v2 = type metadata accessor for FamilyView();
  v31 = *(v2 - 8);
  v32 = v31;
  v33 = *(v31 + 64);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v35 = (&v12 - v34);
  v36 = (*(*(sub_1A88(&qword_917C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v37 = &v12 - v36;
  v38 = sub_7CEF4();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v12 - v41;
  v43 = sub_1A88(&qword_917C0);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v47 = &v12 - v46;
  v50 = sub_1A88(&qword_91780);
  v54 = *(*(v50 - 8) + 64);
  v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v52 = &v12 - v51;
  v53 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v55 = &v12 - v53;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v57 = &v12 - v56;
  v65 = &v12 - v56;
  v64 = v5;
  v58 = sub_7D184();
  v59 = sub_7D174();
  v60 = sub_7D154();
  v61 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = 1;
  sub_7CF84("Remove", 6uLL, 1);
  sub_7CE94();
  v13 = sub_61F88(v42);
  v14 = v7;
  v22 = *(v39 + 8);
  v21 = v39 + 8;
  v22(v42, v38);
  v17 = v63;
  v63[0] = v13;
  v63[1] = v14;
  sub_7BE84();
  v8 = sub_7BE94();
  (*(*(v8 - 8) + 56))(v37, 0, v20);
  sub_3619C(v48, v35);
  v15 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v16 = swift_allocObject();
  sub_3789C(v35, v16 + v15);
  v26 = sub_198A4();
  v25 = &type metadata for String;
  sub_7CB54();
  v18 = sub_7CF84("CONFIRM_REMOVE_FAMILY", 0x15uLL, v20 & 1);
  v19 = v9;
  sub_37660();
  sub_7C884();

  (*(v44 + 8))(v47, v43);
  sub_7CF84("Confirm removal", 0xFuLL, v20 & 1);
  sub_7CE94();
  v23 = sub_61F88(v42);
  v24 = v10;
  v22(v42, v38);
  v27 = v62;
  v62[0] = v23;
  v62[1] = v24;
  sub_7C114();
  sub_1F58();
  sub_37E20(v52);
  v28 = sub_375B8();
  sub_1991C(v55, v50, v57);
  sub_37E20(v55);
  sub_37EE4(v57, v55);
  sub_1991C(v55, v50, v29);
  sub_37E20(v55);
  sub_37E20(v57);
}

uint64_t sub_35AB0(__objc2_class ***a1)
{
  v12 = a1;
  v23 = 0;
  v9 = sub_1A88(&qword_91638);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v11 = (&v6 - v10);
  v13 = 0;
  v14 = sub_7BFD4();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v18 = &v6 - v17;
  v23 = v1;
  v19 = sub_7D184();
  v20 = sub_7D174();
  v21 = sub_7D154();
  v22 = v2;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_20DDC();
  v7 = *v12;

  sub_7078(v7);
  v3 = v11;

  v4 = type metadata accessor for FamilyView();
  sub_36390((v12 + *(v4 + 28)), v3);
  sub_7BF04();
  sub_36464(v11);
  sub_7BFC4();
  (*(v15 + 8))(v18, v14);
}

uint64_t sub_35CD0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v42 = 0u;
  v43 = 0u;
  v21 = 0;
  v22 = sub_7CEF4();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v26 = &v7 - v25;
  v27 = sub_7D184();
  v28 = sub_7D174();
  v29 = sub_7D154();
  v30 = v1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = 1;
  sub_7CF84("This font will no longer be available.", 0x26uLL, 1);
  sub_7CE94();
  v8 = sub_61F88(v26);
  v9 = v2;
  (*(v23 + 8))(v26, v22);
  v10 = v41;
  v41[0] = v8;
  v41[1] = v9;
  sub_198A4();
  v37 = sub_7C6E4();
  v38 = v3;
  v39 = v4;
  v40 = v5;
  v11 = v34;
  v34[0] = v37;
  v34[1] = v3;
  v35 = v4 & 1;
  v36 = v5;
  v19 = &v42;
  v16 = &type metadata for Text;
  v17 = &protocol witness table for Text;
  sub_1991C(v34, &type metadata for Text, &v42);
  sub_23BF4(v11);
  v12 = v42;
  v13 = v43;
  v15 = *(&v43 + 1);
  sub_20C1C(v42, *(&v42 + 1), v43 & 1);

  v18 = &v31;
  v31 = v12;
  v32 = v13 & 1 & v14;
  v33 = v15;
  sub_1991C(&v31, v16, v20);
  sub_23BF4(v18);
  sub_23BF4(v19);
}

uint64_t sub_35FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_7BFD4();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_7C244();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_7C204();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

void *sub_3619C(void *a1, void *a2)
{
  v11 = *a1;

  *a2 = v11;
  v12 = a1[1];

  a2[1] = v12;
  v13 = a1[2];

  a2[2] = v13;
  a2[3] = a1[3];
  v15 = type metadata accessor for FamilyView();
  v16 = v15[7];
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BFD4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v10 = *(a1 + v16);

    *(a2 + v16) = v10;
  }

  swift_storeEnumTagMultiPayload();
  v3 = v15[8];
  v6 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v7 = *(a1 + v3 + 8);

  *(v6 + 1) = v7;
  v4 = v15[9];
  v8 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v9 = *(a1 + v4 + 8);

  result = a2;
  *(v8 + 1) = v9;
  return result;
}

void *sub_36390(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BFD4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_36464(uint64_t a1)
{
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_36500(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_36464(a2);
    v4 = sub_1A88(&qword_91160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7BFD4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

unint64_t sub_365F4()
{
  v2 = qword_91670;
  if (!qword_91670)
  {
    sub_B24C(&qword_91668);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3667C()
{
  v2 = qword_91678;
  if (!qword_91678)
  {
    sub_B24C(&qword_91648);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3670C()
{
  v2 = qword_91690;
  if (!qword_91690)
  {
    sub_B24C(&qword_91688);
    sub_B24C(&qword_91698);
    sub_367F4();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91690);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_367F4()
{
  v2 = qword_916A0;
  if (!qword_916A0)
  {
    sub_B24C(&qword_91698);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_916A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_368A4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1A88(&qword_91638);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 28)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_369F0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = sub_1A88(&qword_91638);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_36AEC()
{
  v7 = type metadata accessor for Family();
  if (v0 <= 0x3F)
  {
    v7 = sub_36C8C();
    if (v1 <= 0x3F)
    {
      v7 = sub_236D8();
      if (v2 <= 0x3F)
      {
        v7 = sub_36D20();
        if (v3 <= 0x3F)
        {
          v7 = sub_36DBC();
          if (v4 <= 0x3F)
          {
            v7 = sub_36E50();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_36C8C()
{
  v4 = qword_91710;
  if (!qword_91710)
  {
    v3 = sub_7D424();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91710);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_36D20()
{
  v4 = qword_91718;
  if (!qword_91718)
  {
    sub_7BFD4();
    v3 = sub_7BF14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91718);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_36DBC()
{
  v4 = qword_91720;
  if (!qword_91720)
  {
    v3 = sub_7CB14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91720);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_36E50()
{
  v4 = qword_91728;
  if (!qword_91728)
  {
    v3 = sub_7CB14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_91728);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_36EE4()
{
  sub_B24C(&qword_91658);
  sub_B24C(&qword_91680);
  sub_B24C(&qword_91650);
  sub_B24C(&qword_91648);
  sub_3667C();
  swift_getOpaqueTypeConformance2();
  sub_198A4();
  swift_getOpaqueTypeConformance2();
  sub_B24C(&qword_91688);
  sub_3670C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_370BC(uint64_t a1)
{
  v3 = sub_1A88(&qword_91768);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_37170(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91768);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91688);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_372A4(const void *a1, void *a2)
{
  v6 = sub_1A88(&qword_91768);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_91688);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_373E0()
{
  v2 = qword_91788;
  if (!qword_91788)
  {
    sub_B24C(&qword_91778);
    sub_37488();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37488()
{
  v2 = qword_91790;
  if (!qword_91790)
  {
    sub_B24C(&qword_91798);
    sub_37530();
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37530()
{
  v2 = qword_917A0;
  if (!qword_917A0)
  {
    sub_B24C(&qword_917A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_375B8()
{
  v2 = qword_917B0;
  if (!qword_917B0)
  {
    sub_B24C(&qword_91780);
    sub_37660();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37660()
{
  v2 = qword_917B8;
  if (!qword_917B8)
  {
    sub_B24C(&qword_917C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_376E8()
{
  v5 = type metadata accessor for FamilyView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_3789C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v5 = type metadata accessor for FamilyView();
  v6 = v5[7];
  v8 = sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BFD4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v6), (a1 + v6), *(*(v8 - 8) + 64));
  }

  *(a2 + v5[8]) = *(a1 + v5[8]);
  result = *(a1 + v5[9]);
  *(a2 + v5[9]) = result;
  return result;
}

uint64_t sub_379F8()
{
  type metadata accessor for FamilyView();

  return sub_35108();
}

uint64_t sub_37A5C(uint64_t a1)
{
  v1 = sub_1A88(&qword_917A8);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91798);

  return a1;
}

uint64_t sub_37B00(uint64_t a1)
{
  v1 = sub_1A88(&qword_917A8);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91798);

  v4 = *(sub_1A88(&qword_91778) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_37C08()
{
  v5 = type metadata accessor for FamilyView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_37DBC()
{
  v1 = *(type metadata accessor for FamilyView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_35AB0(v2);
}

uint64_t sub_37E20(uint64_t a1)
{
  v1 = sub_1A88(&qword_917C0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_91780) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_37EE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_917C0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_1A88(&qword_91780) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

void *sub_37FC4(const void *a1, void *a2)
{
  v6 = sub_7BE94();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_917C8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_380EC()
{

  return sub_7CA64();
}

unint64_t sub_38180()
{
  v2 = qword_917D8;
  if (!qword_917D8)
  {
    sub_B24C(&qword_917D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_917D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38208(uint64_t a1)
{
  v3 = sub_7BE94();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_382B8()
{
  v2 = qword_91808;
  if (!qword_91808)
  {
    sub_B24C(&qword_91800);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38340()
{
  v2 = qword_91818;
  if (!qword_91818)
  {
    sub_B24C(&qword_91810);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91818);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_383C8(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 240))
  {

    sub_209FC(*(a1 + 216), *(a1 + 224), *(a1 + 232) & 1);
  }

  sub_209FC(*(a1 + 424), *(a1 + 432), *(a1 + 440) & 1);

  sub_209FC(*(a1 + 456), *(a1 + 464), *(a1 + 472) & 1);

  sub_209FC(*(a1 + 512), *(a1 + 520), *(a1 + 528) & 1);

  sub_209FC(*(a1 + 544), *(a1 + 552), *(a1 + 560) & 1);

  if (*(a1 + 624))
  {
    sub_209FC(*(a1 + 600), *(a1 + 608), *(a1 + 616) & 1);

    sub_209FC(*(a1 + 632), *(a1 + 640), *(a1 + 648) & 1);
  }

  return a1;
}

unint64_t sub_38564()
{
  v2 = qword_91820;
  if (!qword_91820)
  {
    sub_B24C(&qword_917E8);
    sub_38340();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91820);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3860C(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 240))
  {

    sub_209FC(*(a1 + 216), *(a1 + 224), *(a1 + 232) & 1);
  }

  sub_209FC(*(a1 + 424), *(a1 + 432), *(a1 + 440) & 1);

  sub_209FC(*(a1 + 456), *(a1 + 464), *(a1 + 472) & 1);

  sub_209FC(*(a1 + 512), *(a1 + 520), *(a1 + 528) & 1);

  sub_209FC(*(a1 + 544), *(a1 + 552), *(a1 + 560) & 1);

  if (*(a1 + 624))
  {
    sub_209FC(*(a1 + 600), *(a1 + 608), *(a1 + 616) & 1);

    sub_209FC(*(a1 + 632), *(a1 + 640), *(a1 + 648) & 1);
  }

  v3 = a1 + *(sub_1A88(&qword_917E8) + 36);
  v1 = sub_7C574();
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

unint64_t sub_38804()
{
  v2 = qword_91828;
  if (!qword_91828)
  {
    sub_B24C(&qword_917F0);
    sub_38564();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_388A8()
{
  v2 = qword_91830;
  if (!qword_91830)
  {
    sub_B24C(&qword_917F8);
    sub_38804();
    sub_38950();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38950()
{
  v2 = qword_91838;
  if (!qword_91838)
  {
    sub_B24C(&qword_91840);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91838);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_389D8(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 240))
  {

    sub_209FC(*(a1 + 216), *(a1 + 224), *(a1 + 232) & 1);
  }

  sub_209FC(*(a1 + 424), *(a1 + 432), *(a1 + 440) & 1);

  sub_209FC(*(a1 + 456), *(a1 + 464), *(a1 + 472) & 1);

  sub_209FC(*(a1 + 512), *(a1 + 520), *(a1 + 528) & 1);

  sub_209FC(*(a1 + 544), *(a1 + 552), *(a1 + 560) & 1);

  if (*(a1 + 624))
  {
    sub_209FC(*(a1 + 600), *(a1 + 608), *(a1 + 616) & 1);

    sub_209FC(*(a1 + 632), *(a1 + 640), *(a1 + 648) & 1);
  }

  v3 = a1 + *(sub_1A88(&qword_917E8) + 36);
  v1 = sub_7C574();
  (*(*(v1 - 8) + 8))(v3);
  sub_1A88(&qword_917F8);

  return a1;
}

unint64_t sub_38C10()
{
  v2 = qword_91850;
  if (!qword_91850)
  {
    sub_B24C(&qword_91848);
    sub_38CA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38CA8()
{
  v2 = qword_91858;
  if (!qword_91858)
  {
    sub_B24C(&qword_91860);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38D30()
{
  v2 = qword_91868;
  if (!qword_91868)
  {
    sub_B24C(&qword_917E0);
    sub_38C10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38DE0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v44 = *(a1 + 24);
  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  sub_20C1C(v44, v45, v46 & 1);
  *(a2 + 24) = v44;
  *(a2 + 32) = v45;
  *(a2 + 40) = v46 & 1;
  v49 = *(a1 + 48);

  *(a2 + 48) = v49;
  if (*(a1 + 240))
  {
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
    v37 = *(a1 + 80);

    *(a2 + 80) = v37;
    *(a2 + 88) = *(a1 + 88);
    *(a2 + 96) = *(a1 + 96);
    memcpy((a2 + 104), (a1 + 104), 0x70uLL);
    v38 = *(a1 + 216);
    v39 = *(a1 + 224);
    v40 = *(a1 + 232);
    sub_20C1C(v38, v39, v40 & 1);
    *(a2 + 216) = v38;
    *(a2 + 224) = v39;
    *(a2 + 232) = v40 & 1;
    v41 = *(a1 + 240);

    *(a2 + 240) = v41;
    v42 = *(a1 + 248);
    v43 = *(a1 + 256);

    *(a2 + 248) = v42;
    *(a2 + 256) = v43;
    *(a2 + 264) = *(a1 + 264);
    *(a2 + 280) = *(a1 + 280);
    memcpy((a2 + 288), (a1 + 288), 0x70uLL);
  }

  else
  {
    memcpy((a2 + 56), (a1 + 56), 0x158uLL);
  }

  *(a2 + 400) = *(a1 + 400);
  *(a2 + 416) = *(a1 + 416);
  v21 = *(a1 + 424);
  v22 = *(a1 + 432);
  v23 = *(a1 + 440);
  sub_20C1C(v21, v22, v23 & 1);
  *(a2 + 424) = v21;
  *(a2 + 432) = v22;
  *(a2 + 440) = v23 & 1;
  v24 = *(a1 + 448);

  *(a2 + 448) = v24;
  v25 = *(a1 + 456);
  v26 = *(a1 + 464);
  v27 = *(a1 + 472);
  sub_20C1C(v25, v26, v27 & 1);
  *(a2 + 456) = v25;
  *(a2 + 464) = v26;
  *(a2 + 472) = v27 & 1;
  v28 = *(a1 + 480);

  *(a2 + 480) = v28;
  *(a2 + 488) = *(a1 + 488);
  *(a2 + 504) = *(a1 + 504);
  v29 = *(a1 + 512);
  v30 = *(a1 + 520);
  v31 = *(a1 + 528);
  sub_20C1C(v29, v30, v31 & 1);
  *(a2 + 512) = v29;
  *(a2 + 520) = v30;
  *(a2 + 528) = v31 & 1;
  v32 = *(a1 + 536);

  *(a2 + 536) = v32;
  v33 = *(a1 + 544);
  v34 = *(a1 + 552);
  v35 = *(a1 + 560);
  sub_20C1C(v33, v34, v35 & 1);
  *(a2 + 544) = v33;
  *(a2 + 552) = v34;
  *(a2 + 560) = v35 & 1;
  v36 = *(a1 + 568);

  *(a2 + 568) = v36;
  if (*(a1 + 624))
  {
    *(a2 + 576) = *(a1 + 576);
    *(a2 + 592) = *(a1 + 592);
    v13 = *(a1 + 600);
    v14 = *(a1 + 608);
    v15 = *(a1 + 616);
    sub_20C1C(v13, v14, v15 & 1);
    *(a2 + 600) = v13;
    *(a2 + 608) = v14;
    *(a2 + 616) = v15 & 1;
    v16 = *(a1 + 624);

    *(a2 + 624) = v16;
    v17 = *(a1 + 632);
    v18 = *(a1 + 640);
    v19 = *(a1 + 648);
    sub_20C1C(v17, v18, v19 & 1);
    *(a2 + 632) = v17;
    *(a2 + 640) = v18;
    *(a2 + 648) = v19 & 1;
    v20 = *(a1 + 656);

    *(a2 + 656) = v20;
  }

  else
  {
    memcpy((a2 + 576), (a1 + 576), 0x58uLL);
  }

  v2 = sub_1A88(&qword_917E8);
  v8 = a2 + *(v2 + 36);
  v7 = a1 + *(v2 + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(v8, v7);
  v4 = sub_1A88(&qword_917F0);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  v5 = sub_1A88(&qword_917F8);
  v11 = (a2 + *(v5 + 36));
  v10 = (a1 + *(v5 + 36));
  v9 = *v10;

  *v11 = v9;
  v12 = v10[1];

  result = a2;
  v11[1] = v12;
  return result;
}

unint64_t sub_39438()
{
  v2 = qword_91878;
  if (!qword_91878)
  {
    sub_B24C(&qword_91870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_394C0()
{
  v2 = qword_91880;
  if (!qword_91880)
  {
    type metadata accessor for Face();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_39540()
{
  v2 = qword_91888;
  if (!qword_91888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91888);
    return WitnessTable;
  }

  return v2;
}

void *sub_395B8(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  result[18] = 0;
  result[19] = 0;
  result[20] = 0;
  result[21] = 0;
  result[22] = 0;
  result[23] = 0;
  result[24] = 0;
  result[25] = 0;
  result[26] = 0;
  result[27] = 0;
  result[28] = 0;
  result[29] = 0;
  result[30] = 0;
  result[31] = 0;
  result[32] = 0;
  result[33] = 0;
  result[34] = 0;
  result[35] = 0;
  result[36] = 0;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  result[40] = 0;
  result[41] = 0;
  result[42] = 0;
  return result;
}

unint64_t sub_39668()
{
  v2 = qword_91898;
  if (!qword_91898)
  {
    sub_B24C(&qword_91890);
    sub_3970C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3970C()
{
  v2 = qword_918A0;
  if (!qword_918A0)
  {
    sub_B24C(&qword_918A8);
    sub_397B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_397B0()
{
  v2 = qword_918B0;
  if (!qword_918B0)
  {
    sub_B24C(&qword_918B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_39840()
{
  v2 = qword_918C8;
  if (!qword_918C8)
  {
    sub_B24C(&qword_918C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_398C8()
{
  v2 = qword_918D8;
  if (!qword_918D8)
  {
    sub_B24C(&qword_918D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_39950(uint64_t a1)
{
  sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_209FC(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

char *sub_399C4(void *a1, char *a2)
{
  if (a1[23])
  {
    *a2 = *a1;
    a2[16] = *(a1 + 16);
    v3 = a1[3];

    *(a2 + 3) = v3;
    *(a2 + 4) = a1[4];
    *(a2 + 20) = *(a1 + 20);
    memcpy(a2 + 48, a1 + 6, 0x70uLL);
    v4 = a1[20];
    v5 = a1[21];
    v6 = *(a1 + 176);
    sub_20C1C(v4, v5, v6 & 1);
    *(a2 + 20) = v4;
    *(a2 + 21) = v5;
    a2[176] = v6 & 1;
    v7 = a1[23];

    *(a2 + 23) = v7;
    v8 = a1[24];
    v9 = a1[25];

    *(a2 + 24) = v8;
    *(a2 + 25) = v9;
    *(a2 + 13) = *(a1 + 13);
    *(a2 + 112) = *(a1 + 112);
    memcpy(a2 + 232, a1 + 29, 0x70uLL);
  }

  else
  {
    memcpy(a2, a1, 0x158uLL);
  }

  return a2;
}

uint64_t sub_39B24(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_20C1C(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_20C1C(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v12 = *(a1 + 80);

  result = a2;
  *(a2 + 80) = v12;
  return result;
}

_BYTE *sub_39C2C(void *a1, _BYTE *a2)
{
  if (a1[6])
  {
    *a2 = *a1;
    a2[16] = *(a1 + 16);
    v3 = a1[3];
    v4 = a1[4];
    v5 = *(a1 + 40);
    sub_20C1C(v3, v4, v5 & 1);
    *(a2 + 3) = v3;
    *(a2 + 4) = v4;
    a2[40] = v5 & 1;
    v6 = a1[6];

    *(a2 + 6) = v6;
    v7 = a1[7];
    v8 = a1[8];
    v9 = *(a1 + 72);
    sub_20C1C(v7, v8, v9 & 1);
    *(a2 + 7) = v7;
    *(a2 + 8) = v8;
    a2[72] = v9 & 1;
    v10 = a1[10];

    *(a2 + 10) = v10;
  }

  else
  {
    memcpy(a2, a1, 0x58uLL);
  }

  return a2;
}

unint64_t sub_39D64()
{
  v2 = qword_918F0;
  if (!qword_918F0)
  {
    sub_B24C(&qword_918E0);
    sub_39668();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_39DFC()
{
  v2 = qword_918F8;
  if (!qword_918F8)
  {
    sub_B24C(&qword_918E8);
    sub_398C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_918F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_39E94(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_209FC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

    sub_209FC(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
  }

  return a1;
}

uint64_t sub_39F10(uint64_t a1)
{
  if (*(a1 + 184))
  {

    sub_209FC(*(a1 + 160), *(a1 + 168), *(a1 + 176) & 1);
  }

  return a1;
}

unint64_t sub_39F94()
{
  v2 = qword_91908;
  if (!qword_91908)
  {
    sub_B24C(&qword_91900);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91908);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3A01C(uint64_t a1)
{

  sub_209FC(*(a1 + 160), *(a1 + 168), *(a1 + 176) & 1);

  return a1;
}

uint64_t sub_3A078(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  memcpy((a2 + 48), (a1 + 48), 0x70uLL);
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  sub_20C1C(v4, v5, v6 & 1);
  *(a2 + 160) = v4;
  *(a2 + 168) = v5;
  *(a2 + 176) = v6 & 1;
  v7 = *(a1 + 184);

  *(a2 + 184) = v7;
  v9 = *(a1 + 192);
  v10 = *(a1 + 200);

  *(a2 + 192) = v9;
  *(a2 + 200) = v10;
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 224) = *(a1 + 224);
  memcpy((a2 + 232), (a1 + 232), 0x70uLL);
  return a2;
}

void *sub_3A1A8(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  return result;
}

unint64_t sub_3A1F0()
{
  v2 = qword_91918;
  if (!qword_91918)
  {
    sub_B24C(&qword_91910);
    sub_3A288();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91918);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A288()
{
  v2 = qword_91920;
  if (!qword_91920)
  {
    sub_B24C(&qword_91928);
    sub_3A32C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A32C()
{
  v2 = qword_91930;
  if (!qword_91930)
  {
    sub_B24C(&qword_91938);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91930);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3A3CC()
{
  v5 = type metadata accessor for FamilyView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_3A580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for FamilyView();
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_31FE0(a1, v4, a2);
}

unint64_t sub_3A600()
{
  v2 = qword_91948;
  if (!qword_91948)
  {
    sub_B24C(&qword_91940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A6A0()
{
  v2 = qword_91958;
  if (!qword_91958)
  {
    sub_B24C(&qword_91950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A728()
{
  v2 = qword_91968;
  if (!qword_91968)
  {
    sub_B24C(&qword_91960);
    sub_3A7CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3A7CC()
{
  v2 = qword_91970;
  if (!qword_91970)
  {
    sub_B24C(&qword_91978);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3A854(uint64_t a1)
{
  sub_209FC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_3A8A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x70uLL);
  return a2;
}

__n128 sub_3A910(__n128 *a1, __n128 *a2)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = a1[1].n128_u8[0];
  sub_20C1C(a1->n128_u64[0], v4, v5 & 1);
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v4;
  a2[1].n128_u8[0] = v5 & 1;
  v6 = a1[1].n128_u64[1];

  a2[1].n128_u64[1] = v6;
  v8 = a1[2].n128_u64[0];
  v9 = a1[2].n128_u64[1];

  a2[2].n128_u64[0] = v8;
  a2[2].n128_u64[1] = v9;
  result = a1[3];
  a2[3] = result;
  return result;
}

uint64_t sub_3A9D0()
{
  v9 = type metadata accessor for FamilyView();
  v0 = *(*(v9 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  v4 = v5 + *(*(v9 - 8) + 64);
  v6 = sub_7C004();
  v7 = *(v6 - 8);
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);

  v10 = *(v9 + 28);
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(v3 + v5 + v10);
  }

  else
  {
  }

  (*(v7 + 8))(v3 + v8, v6);
  return swift_deallocObject();
}

uint64_t sub_3AC44()
{
  v4 = *(type metadata accessor for FamilyView() - 8);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = v6 + *(v4 + 64);
  v1 = *(sub_7C004() - 8);
  v2 = v0 + ((v5 + *(v1 + 80)) & ~*(v1 + 80));

  return sub_32548(v0 + v6, v2);
}

uint64_t sub_3AD28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3AD5C(uint64_t a1)
{

  if (*(a1 + 8))
  {
  }

  if (*(a1 + 24))
  {
  }

  return a1;
}

uint64_t sub_3ADC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3ADFC()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7BF44();

  return v1;
}

uint64_t sub_3AE8C()
{
  sub_3AF28();
  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7BF54();
  sub_3AF68();
  return v1;
}

uint64_t sub_3AFA8()
{
  sub_3AF28();
  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7BF64();
  sub_3AF68();
  return v1;
}

uint64_t sub_3B084(uint64_t a1, uint64_t a2, char a3)
{
  sub_3AF28();
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  sub_3AF68();
  return sub_3AF68();
}

uint64_t sub_3B0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v139 = a4;
  v118 = a1;
  v119 = a2;
  LODWORD(v120) = a3;
  v48 = sub_3CA70;
  v59 = &opaque type descriptor for <<opaque return type of View.settingsListAppearance()>>;
  v69 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v123 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v71 = sub_3E094;
  v99 = &opaque type descriptor for <<opaque return type of View.navigationDestination<A, B>(for:destination:)>>;
  v124 = &unk_7FDE0;
  v131 = &opaque type descriptor for <<opaque return type of View.refreshable(action:)>>;
  v134 = sub_3E694;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v133 = 0;
  v32 = (*(*(sub_7BD34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v84 = &v32 - v32;
  v103 = sub_7BCD4();
  v100 = *(v103 - 8);
  v101 = v103 - 8;
  v33 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v102 = &v32 - v33;
  v83 = sub_7BC14();
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v34 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v85 = &v32 - v34;
  v108 = sub_7BC24();
  v105 = *(v108 - 8);
  v106 = v108 - 8;
  v35 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v107 = &v32 - v35;
  v112 = sub_7CD04();
  v109 = *(v112 - 8);
  v110 = v112 - 8;
  v36 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v111 = (&v32 - v36);
  v89 = sub_7CEF4();
  v52 = *(v89 - 8);
  v53 = v89 - 8;
  v37 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v88 = &v32 - v37;
  v57 = sub_1A88(&qword_91980);
  v49 = *(v57 - 8);
  v50 = v57 - 8;
  v38 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v51 = &v32 - v38;
  v67 = sub_1A88(&qword_91988);
  v64 = *(v67 - 8);
  v65 = v67 - 8;
  v39 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v66 = &v32 - v39;
  v93 = sub_1A88(&qword_91990);
  v73 = *(v93 - 8);
  v74 = v93 - 8;
  v40 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v93);
  v75 = &v32 - v40;
  v121 = sub_1A88(&qword_91998);
  v113 = *(v121 - 8);
  v114 = v121 - 8;
  v41 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v121);
  v115 = &v32 - v41;
  v129 = sub_1A88(&qword_919A0);
  v126 = *(v129 - 8);
  v127 = v129 - 8;
  v42 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v129);
  v128 = &v32 - v42;
  v138 = sub_1A88(&qword_919A8);
  v135 = *(v138 - 8);
  v136 = v138 - 8;
  v43 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v138);
  v137 = &v32 - v43;
  v140 = sub_1A88(&qword_919B0);
  v44 = (*(*(v140 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v142 = &v32 - v44;
  v45 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v143 = &v32 - v45;
  v177 = &v32 - v45;
  v174 = v6;
  v175 = v7;
  HIDWORD(v120) = 1;
  v176 = v8 & 1;
  sub_3AF28();
  v46 = v144;
  v144[2] = v118;
  v144[3] = v119;
  v145 = v120 & 1 & BYTE4(v120);
  v47 = sub_1A88(&qword_919B8);
  sub_3CA84();
  sub_7C674();
  sub_3AF68();
  v58 = sub_3CB0C();
  sub_7C6F4();
  (*(v49 + 8))(v51, v57);
  v78 = "Fonts";
  v79 = 5;
  sub_7CF84("Fonts", 5uLL, v120 & 0x100000000);
  sub_7CE94();
  v54 = sub_61F88(v88);
  v55 = v9;
  v91 = *(v52 + 8);
  v90 = v52 + 8;
  v91(v88, v89);
  v56 = v173;
  v173[0] = v54;
  v173[1] = v55;
  sub_198A4();
  v169 = sub_7C6E4();
  v170 = v10;
  v171 = v11;
  v172 = v12;
  v60 = v169;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v167 = v57;
  v168 = v58;
  v132 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v163 = v60;
  v164 = v61;
  v165 = v62 & 1 & BYTE4(v120);
  v166 = v63;
  sub_7C814();
  sub_209FC(v60, v61, v62 & 1);

  (*(v64 + 8))(v66, v67);
  sub_3AF28();
  v116 = 33;
  v117 = 7;
  v13 = swift_allocObject();
  v14 = v119;
  v15 = v120;
  v16 = BYTE4(v120);
  v72 = v13;
  *(v13 + 16) = v118;
  *(v13 + 24) = v14;
  *(v13 + 32) = v15 & 1 & v16;
  v95 = sub_1A88(&qword_919D0);
  v161 = v67;
  v162 = OpaqueTypeConformance2;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_19E54();
  v70 = sub_B24C(&qword_919D8);
  v17 = sub_3E0A8();
  v159 = v70;
  v160 = v17;
  v98 = swift_getOpaqueTypeConformance2();
  v94 = &unk_8FDE0;
  sub_7C864();

  (*(v73 + 8))(v75, v93);
  v18 = sub_791C4();
  v76 = *v18;
  v77 = v18[1];

  v19 = v111;
  v20 = v77;
  v21 = v109;
  *v111 = v76;
  v19[1] = v20;
  (*(v21 + 104))();
  sub_7CF84(v78, v79, v120 & 0x100000000);
  sub_7CE94();
  v80 = *sub_622EC();
  v80;
  v86 = [v80 bundleURL];
  sub_7BC94();
  (*(v100 + 32))(v85, v102, v103);

  (*(v81 + 104))(v85, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v83);
  sub_3E1D0();
  v156 = 0;
  v157 = 0;
  v158 = *(&v120 + 3) & 0x100;
  sub_7BC34();

  v92 = sub_7D714();
  v87 = v22;
  sub_7CF84("General", v117, v120 & 0x100000000);
  sub_7CE94();
  sub_6234C(v88, v87);
  v91(v88, v89);
  v23 = v92;
  sub_71DDC();
  v104 = v23;
  v24 = sub_79224();
  (*(v100 + 16))(v102, v24, v103);
  v150 = v93;
  v151 = v94;
  v152 = v95;
  v153 = v96;
  v154 = v97;
  v155 = v98;
  v122 = swift_getOpaqueTypeConformance2();
  sub_7C704();
  (*(v100 + 8))(v102, v103);

  (*(v105 + 8))(v107, v108);
  (*(v109 + 8))(v111, v112);
  (*(v113 + 8))(v115, v121);
  sub_3AF28();
  v25 = swift_allocObject();
  v26 = v119;
  v27 = v120;
  v28 = BYTE4(v120);
  v29 = v121;
  v30 = v122;
  v125 = v25;
  *(v25 + 16) = v118;
  *(v25 + 24) = v26;
  *(v25 + 32) = v27 & 1 & v28;
  v148 = v29;
  v149 = v30;
  v130 = swift_getOpaqueTypeConformance2();
  sub_7C7A4();

  (*(v126 + 8))(v128, v129);
  v146 = v129;
  v147 = v130;
  swift_getOpaqueTypeConformance2();
  sub_7C9A4();
  (*(v135 + 8))(v137, v138);
  v141 = sub_3E800();
  sub_1991C(v142, v140, v143);
  sub_3EAB4(v142);
  sub_3EB94(v143, v142);
  sub_1991C(v142, v140, v139);
  sub_3EAB4(v142);
  return sub_3EAB4(v143);
}

uint64_t sub_3C068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v63 = a2;
  v62 = a1;
  v49 = a4;
  v65 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v50 = a3;
  v51 = sub_1A88(&qword_91A08);
  v52 = *(v51 - 8);
  v53 = v52;
  v54 = *(v52 + 64);
  __chkstk_darwin(0);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v24 - v56;
  __chkstk_darwin(v4);
  v57 = &v24 - v56;
  v103 = &v24 - v56;
  v58 = sub_7CEF4();
  v59 = *(v58 - 8);
  v60 = v59;
  __chkstk_darwin(v58 - 8);
  v61 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A88(&qword_91A10);
  v67 = *(v66 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  __chkstk_darwin(v65);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v24 - v71;
  __chkstk_darwin(v6);
  v72 = &v24 - v71;
  v102 = &v24 - v71;
  v99 = v7;
  v100 = v8;
  v101 = v9 & 1;
  v73 = sub_7D184();
  v74 = sub_7D174();
  v75 = sub_7D154();
  v76 = v10;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = 1;
  sub_7CF84("INSTALLED_FONTS_CLARIFICATION", 0x1DuLL, 1);
  sub_7CE94();
  v24 = sub_61F88(v61);
  v25 = v11;
  v31 = *(v60 + 8);
  v30 = v60 + 8;
  v31(v61, v58);
  v97 = v24;
  v98 = v25;
  v35 = sub_198A4();
  v34 = &type metadata for String;
  v93 = sub_7C6E4();
  v94 = v12;
  v95 = v13;
  v96 = v14;
  v89 = v93;
  v90 = v12;
  v91 = v13;
  v92 = v14;
  v42 = v50 & 1;
  sub_3AF28();
  v28 = &v24;
  v36 = 33;
  __chkstk_darwin(&v24);
  v15 = v63;
  v26 = &v24 - 6;
  *(&v24 - 4) = v62;
  *(&v24 - 3) = v15;
  *(&v24 - 16) = v16;
  v27 = sub_1A88(&qword_91A18);
  sub_3F5C0();
  v39 = &type metadata for Text;
  v40 = &protocol witness table for Text;
  sub_7CC24();
  sub_3AF68();
  v43 = sub_3F648();
  sub_1991C(v70, v66, v72);
  v48 = *(v68 + 8);
  v47 = v68 + 8;
  v48(v70, v66);
  sub_7CF84("MORE_FONTS_CLARIFICATION", 0x18uLL, v29);
  sub_7CE94();
  v32 = sub_61F88(v61);
  v33 = v17;
  v31(v61, v58);
  v87 = v32;
  v88 = v33;
  v83 = sub_7C6E4();
  v84 = v18;
  v85 = v19;
  v86 = v20;
  v80[2] = v83;
  v80[3] = v18;
  v81 = v19;
  v82 = v20;
  sub_3AF28();
  v41 = &v24;
  __chkstk_darwin(&v24);
  v21 = v63;
  v37 = &v24 - 6;
  *(&v24 - 4) = v62;
  *(&v24 - 3) = v21;
  *(&v24 - 16) = v22;
  v38 = sub_1A88(&qword_91A30);
  sub_3F70C();
  sub_7CC24();
  sub_3AF68();
  v44 = sub_3F794();
  sub_1991C(v55, v51, v57);
  v46 = *(v53 + 8);
  v45 = v53 + 8;
  v46(v55, v51);
  (*(v68 + 16))(v70, v72, v66);
  v80[0] = v70;
  (*(v53 + 16))(v55, v57, v51);
  v80[1] = v55;
  v79[0] = v66;
  v79[1] = v51;
  v77 = v43;
  v78 = v44;
  sub_4E6CC(v80, 2uLL, v79, v49);
  v46(v55, v51);
  v48(v70, v66);
  v46(v57, v51);
  v48(v72, v66);
}

unint64_t sub_3CA84()
{
  v2 = qword_919C0;
  if (!qword_919C0)
  {
    sub_B24C(&qword_919B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3CB0C()
{
  v2 = qword_919C8;
  if (!qword_919C8)
  {
    sub_B24C(&qword_91980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3CB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v32 = a1;
  v30 = a2;
  v31 = a3;
  v29 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v33 = sub_1A88(&qword_91A30);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v35 = &v18[-v34];
  v36 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v37 = &v18[-v36];
  v38 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v39 = &v18[-v38];
  v40 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v41 = &v18[-v40];
  v56 = &v18[-v40];
  v53 = v10;
  v54 = v11;
  v55 = v12 & 1;
  v42 = sub_7D184();
  v43 = sub_7D174();
  v44 = sub_7D154();
  v45 = v13;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_3CF98(v32, v30, v31 & 1);
  v24 = v14;
  v25 = sub_1A88(&qword_919D0);
  v22 = sub_B24C(&qword_919D8);
  v15 = sub_3E0A8();
  v51 = v22;
  v52 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_19ECC(0, v23, v24, v39);
  v27 = sub_3F70C();
  sub_1991C(v39, v33, v41);
  sub_3F844(v39);
  v50 = v39;
  v19 = 1;
  v20 = sub_3D980(v32, v30, v31 & 1);
  sub_19ECC(v19, v20, v16, v37);
  sub_1991C(v37, v33, v39);
  sub_3F844(v37);
  sub_3F998(v41, v37);
  v21 = v49;
  v49[0] = v37;
  sub_3F998(v39, v35);
  v49[1] = v35;
  v48[0] = v33;
  v48[1] = v33;
  v46 = v27;
  v47 = v27;
  sub_4E6CC(v21, 2uLL, v48, v28);
  sub_3F844(v35);
  sub_3F844(v37);
  sub_3F844(v39);
  sub_3F844(v41);
}

uint64_t (*sub_3CF98(uint64_t a1, uint64_t a2, char a3))@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  sub_3AF28();
  v3 = swift_allocObject();
  result = sub_3FC04;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_3D09C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v51 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v68 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v85 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v33 = 0;
  v55 = sub_7BCD4();
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v22 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v54 = &v22 - v22;
  v47 = sub_7CEF4();
  v41 = *(v47 - 8);
  v42 = v47 - 8;
  v23 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v46 = &v22 - v23;
  v60 = sub_7BC24();
  v57 = *(v60 - 8);
  v58 = v60 - 8;
  v24 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v59 = &v22 - v24;
  v64 = sub_7CD04();
  v61 = *(v64 - 8);
  v62 = v64 - 8;
  v25 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v63 = (&v22 - v25);
  v34 = type metadata accessor for ListView();
  v26 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v5 = (&v22 - v26);
  v38 = &v22 - v26;
  v66 = sub_1A88(&qword_919D8);
  v27 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v65 = &v22 - v27;
  v76 = sub_1A88(&qword_919D0);
  v70 = *(v76 - 8);
  v71 = v76 - 8;
  v28 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v74 = &v22 - v28;
  v29 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v75 = &v22 - v29;
  v85 = &v22 - v29;
  v84 = v8;
  v81 = v9;
  v82 = v10;
  v43 = 1;
  v83 = v11 & 1;
  v12 = sub_4E948();
  sub_4E980(v12, v13, v51, v5);
  v37 = sub_3AE8C();
  v35 = type metadata accessor for FontSettingsModel();
  v36 = sub_3E150();
  sub_1AC10();
  sub_7C834();

  sub_3ED20(v38);
  v14 = sub_791C4();
  v39 = *v14;
  v40 = v14[1];

  v15 = v63;
  v16 = v40;
  v17 = v61;
  *v63 = v39;
  v15[1] = v16;
  (*(v17 + 104))();
  sub_79024(v51, v46);
  sub_6234C(v46, v59);
  v49 = *(v41 + 8);
  v48 = v41 + 8;
  v49(v46, v47);
  v50 = sub_7D714();
  v45 = v18;
  sub_7CF84("General", 7uLL, v43 & 1);
  sub_7CE94();
  sub_6234C(v46, v45);
  v49(v46, v47);
  v19 = *(v57 + 72);
  v69 = 1;
  v44 = v19;
  sub_7CF84("Fonts", 5uLL, v43 & 1);
  sub_7CE94();
  sub_6234C(v46, v45 + v44);
  v49(v46, v47);
  v20 = v50;
  sub_71DDC();
  v56 = v20;
  sub_79290(v51, v54);
  v67 = sub_3E0A8();
  sub_7C704();
  (*(v52 + 8))(v54, v55);

  (*(v57 + 8))(v59, v60);
  (*(v61 + 8))(v63, v64);
  sub_3EEFC(v65);
  v79 = v66;
  v80 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v74, v76, v75);
  v78 = *(v70 + 8);
  v77 = v70 + 8;
  v78(v74, v76);
  (*(v70 + 16))(v74, v75, v76);
  sub_1991C(v74, v76, v72);
  v78(v74, v76);
  return (v78)(v75, v76);
}

uint64_t (*sub_3D980(uint64_t a1, uint64_t a2, char a3))@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  sub_3AF28();
  v3 = swift_allocObject();
  result = sub_3FC04;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_3DA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v23 = a1;
  v21 = a2;
  v22 = a3;
  v20 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v24 = sub_1A88(&qword_91A30);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v26 = (&v13 - v25);
  v27 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v28 = (&v13 - v27);
  v38 = &v13 - v27;
  v35 = v6;
  v36 = v7;
  v37 = v8 & 1;
  v29 = sub_7D184();
  v30 = sub_7D174();
  v31 = sub_7D154();
  v32 = v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_3DCB0(v23, v21, v22 & 1);
  v16 = v10;
  v17 = sub_1A88(&qword_919D0);
  v14 = sub_B24C(&qword_919D8);
  v11 = sub_3E0A8();
  v33 = v14;
  v34 = v11;
  swift_getOpaqueTypeConformance2();
  sub_19ECC(2, v15, v16, v26);
  v18 = sub_3F70C();
  sub_1991C(v26, v24, v28);
  sub_3F844(v26);
  sub_3F998(v28, v26);
  sub_1991C(v26, v24, v19);
  sub_3F844(v26);
  sub_3F844(v28);
}

uint64_t (*sub_3DCB0(uint64_t a1, uint64_t a2, char a3))@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  sub_3AF28();
  v3 = swift_allocObject();
  result = sub_3FC04;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_3DD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v20 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v25 = sub_1A88(&qword_919D0);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v29 = &v14 - v28;
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v31 = &v14 - v30;
  v43 = &v14 - v30;
  v32 = *v7;
  v42 = v32;
  v39 = v8;
  v40 = v9;
  v41 = v10 & 1;
  v33 = sub_7D184();
  v34 = sub_7D174();
  v35 = sub_7D154();
  v36 = v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3D09C(v32, v21, v22, v23 & 1, v29);
  v15 = sub_B24C(&qword_919D8);
  v12 = sub_3E0A8();
  v37 = v15;
  v38 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v29, v25, v31);
  v18 = *(v26 + 8);
  v17 = v26 + 8;
  v18(v29, v25);
  (*(v26 + 16))(v29, v31, v25);
  sub_1991C(v29, v25, v19);
  v18(v29, v25);
  v18(v31, v25);
}

unint64_t sub_3E0A8()
{
  v2 = qword_919E0;
  if (!qword_919E0)
  {
    sub_B24C(&qword_919D8);
    sub_3E150();
    sub_206A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3E150()
{
  v2 = qword_919E8;
  if (!qword_919E8)
  {
    type metadata accessor for ListView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3E1E8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 33) = a3;
  *(v3 + 56) = a2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  sub_7D184();
  *(v3 + 64) = sub_7D174();
  v6 = sub_7D154();
  *(v3 + 72) = v6;
  *(v3 + 80) = v4;

  return _swift_task_switch(sub_3E2C0, v6);
}

uint64_t sub_3E2C0()
{
  *(v0 + 40) = v0;
  *(v0 + 88) = sub_3AE8C();
  v1 = swift_task_alloc();
  *(v3 + 96) = v1;
  *v1 = *(v3 + 40);
  v1[1] = sub_3E388;

  return sub_11118();
}

uint64_t sub_3E388()
{
  v3 = *v0;
  *(*v0 + 40) = *v0;

  v1 = *(v3 + 72);

  return _swift_task_switch(sub_3E4E8, v1);
}

uint64_t sub_3E4E8()
{
  *(v0 + 40) = v0;

  v1 = *(*(v0 + 40) + 8);

  return v1();
}

uint64_t sub_3E5C0()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_25A4;

  return sub_3E1E8(v7, v5, v6 & 1);
}

uint64_t sub_3E694()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [objc_opt_self() sharedManager];
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 45;
    LODWORD(v3) = 0;
    sub_7D5E4();
    __break(1u);
  }

  [v4 resumeAndShowAlertForSuspendedFontProviders];
}

unint64_t sub_3E800()
{
  v2 = qword_919F0;
  if (!qword_919F0)
  {
    sub_B24C(&qword_919B0);
    sub_B24C(&qword_919A0);
    sub_B24C(&qword_91998);
    sub_B24C(&qword_91990);
    sub_B24C(&qword_919D0);
    sub_B24C(&qword_91988);
    sub_B24C(&qword_91980);
    sub_3CB0C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_19E54();
    sub_B24C(&qword_919D8);
    sub_3E0A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_919F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3EAB4(uint64_t a1)
{
  v1 = sub_1A88(&qword_919A8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1A88(&qword_919B0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_3EB94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A88(&qword_919A8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(sub_1A88(&qword_919B0) + 36);
  if (*(a1 + v13))
  {
    v9 = *(a1 + v13);
    v10 = *(a1 + v13 + 8);

    v3 = (a2 + v13);
    *v3 = v9;
    v3[1] = v10;
  }

  else
  {
    *(a2 + v13) = *(a1 + v13);
  }

  v7 = a2 + v13;
  v8 = a1 + v13;
  if (*(a1 + v13 + 16))
  {
    v5 = *(v8 + 16);
    v6 = *(a1 + v13 + 24);

    *(v7 + 16) = v5;
    *(a2 + v13 + 24) = v6;
  }

  else
  {
    *(v7 + 16) = *(v8 + 16);
  }

  return a2;
}

uint64_t sub_3ED20(uint64_t a1)
{

  v5 = *(type metadata accessor for ListView() + 20);
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(a1 + v5, 1))
    {

      v3 = a1 + v5 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_3EEFC(uint64_t a1)
{

  v5 = *(type metadata accessor for ListView() + 20);
  sub_1A88(&qword_919F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A88(&qword_91A00);
    if (!(*(*(v4 - 8) + 48))(a1 + v5, 1))
    {

      v3 = a1 + v5 + *(v4 + 32);
      v1 = sub_7CC54();
      (*(*(v1 - 8) + 8))(v3);
    }
  }

  else
  {
  }

  sub_1A88(&qword_919D8);

  return a1;
}

uint64_t sub_3F110()
{
  v1 = sub_3ADFC();
  sub_3AF28();
  sub_3F570();
  return v1;
}

__n128 sub_3F1DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_3F1F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_3F2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 16) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_3F4CC()
{
  sub_B24C(&qword_919D8);
  sub_3E0A8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3F5C0()
{
  v2 = qword_91A20;
  if (!qword_91A20)
  {
    sub_B24C(&qword_91A18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F648()
{
  v2 = qword_91A28;
  if (!qword_91A28)
  {
    sub_B24C(&qword_91A10);
    sub_3F5C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F70C()
{
  v2 = qword_91A38;
  if (!qword_91A38)
  {
    sub_B24C(&qword_91A30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F794()
{
  v2 = qword_91A40;
  if (!qword_91A40)
  {
    sub_B24C(&qword_91A08);
    sub_3F70C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91A40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3F844(uint64_t a1)
{
  sub_1A88(&qword_90F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7CD24();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v4 = a1 + *(sub_1A88(&qword_91A30) + 36);
  sub_1A88(&qword_90F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BD84();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return a1;
}

void *sub_3F998(void *a1, void *a2)
{
  sub_1A88(&qword_90F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7CD24();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v13 = *a1;

    *a2 = v13;
  }

  swift_storeEnumTagMultiPayload();
  v10 = sub_1A88(&qword_91A30);
  v11 = (a2 + v10[9]);
  v12 = (a1 + v10[9]);
  sub_1A88(&qword_90F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_7BD84();
    (*(*(v3 - 8) + 16))(v11, v12);
  }

  else
  {
    v9 = *v12;

    *v11 = v9;
  }

  swift_storeEnumTagMultiPayload();
  *(a2 + v10[10]) = *(a1 + v10[10]);
  v4 = v10[11];
  v7 = (a2 + v4);
  v6 = *(a1 + v4);
  v8 = *(a1 + v4 + 8);

  result = a2;
  *v7 = v6;
  v7[1] = v8;
  return result;
}

void *sub_3FCD4@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v10 = a1;
  v9 = a2;
  LOBYTE(__b[10]) = sub_2EFE0() & 1;
  __b[11] = v3;
  a1;
  sub_40038(a1, a2, v12);
  memcpy(__b, v12, 0x50uLL);
  memcpy(v13, __b, sizeof(v13));
  sub_2DCF0(v13, v8);

  sub_2DCB0(__b);
  return memcpy(a3, v13, 0x60uLL);
}

uint64_t sub_3FE04()
{
  v4 = *(v0 + 80);
  sub_40460(&v4, v3);
  sub_1A88(&qword_91640);
  sub_7CAE4();
  sub_26D50();
  return v2 & 1;
}

__int128 *sub_3FE80()
{
  v4 = *(v0 + 80);
  sub_40460(&v4, v3);
  sub_40460(&v4, v2);
  sub_1A88(&qword_91640);
  sub_7CAF4();
  sub_26D50();
  result = &v4;
  sub_26D50();
  return result;
}

uint64_t sub_3FF1C()
{
  v4 = *(v0 + 80);
  sub_40460(&v4, v3);
  sub_1A88(&qword_91640);
  sub_7CB04();
  sub_26D50();
  return v2;
}

uint64_t sub_3FFB0()
{
  v2 = *(v0 + 80);

  return v2 & 1;
}

uint64_t sub_3FFEC(char a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

void *sub_40038@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v34 = 0u;
  v35 = 0u;
  v38 = a1;
  v37 = a2;
  a1;
  *&__b[0] = a1;
  WORD4(__b[0]) = a2;
  v4 = sub_7D714();
  *v5 = a2;
  sub_71DDC();
  v10 = v4;

  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a1, kCTFontOrientationHorizontal, (v10 + 32), 0, 1);
  v36 = BoundingRectsForGlyphs;
  *&v16 = BoundingRectsForGlyphs.origin.x;
  *(&v16 + 1) = *&BoundingRectsForGlyphs.origin.y;
  *&v17 = BoundingRectsForGlyphs.size.width;
  *(&v17 + 1) = *&BoundingRectsForGlyphs.size.height;
  swift_unknownObjectRelease();

  v34 = v16;
  v35 = v17;
  v6 = sub_7D714();
  *v7 = a2;
  sub_71DDC();
  v12 = v6;

  AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(a1, kCTFontOrientationDefault, (v12 + 32), 0, 1);
  swift_unknownObjectRelease();

  v33 = AdvancesForGlyphs;
  v13 = sub_6227C();
  v31 = v13 + sub_622B4();
  v30 = sub_46064(*&v16, *(&v16 + 1), *&v17, *(&v17 + 1));
  sub_275DC();
  sub_7D744();
  *(&__b[4] + 1) = v32;
  v28 = sub_460A4(*&v16, *(&v16 + 1), *&v17, *(&v17 + 1));
  v27 = 0;
  sub_7D754();
  v8 = sub_622B4();
  *&__b[1] = -v29;
  *(&__b[1] + 1) = v8;
  v25 = AdvancesForGlyphs;
  v24 = sub_460E4(*&v16, *(&v16 + 1), *&v17, *(&v17 + 1));
  sub_7D744();
  v15 = v26;
  v22 = sub_460A4(*&v16, *(&v16 + 1), *&v17, *(&v17 + 1));
  v21 = 0;
  sub_7D754();
  *&__b[4] = v15 - v23;
  __b[2] = v16;
  __b[3] = v17;
  memcpy(__dst, __b, sizeof(__dst));
  sub_403E8(__dst, v20);

  sub_BB0C(__b);
  return memcpy(a3, __dst, 0x50uLL);
}

__n128 sub_403E8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1;
  *a2 = v3;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  return result;
}

uint64_t sub_40460(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_404A0@<X0>(uint64_t a1@<X8>)
{
  v50 = &v98;
  v81 = a1;
  v44 = &opaque type descriptor for <<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>;
  v45 = sub_46604;
  v58 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  v60 = &opaque type descriptor for <<opaque return type of View.presentationCompactAdaptation(_:)>>;
  v62 = sub_4665C;
  v77 = &unk_882EC;
  v108 = 0;
  v107 = 0;
  v9 = 0;
  v66 = sub_7C4F4();
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v8 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v65 = (&v8 - v8);
  v41 = sub_7C3B4();
  v36 = *(v41 - 8);
  v37 = v41 - 8;
  v10 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v38 = &v8 - v10;
  v28 = type metadata accessor for RenderedGlyphView();
  v11 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v1 = &v8 - v11;
  v30 = &v8 - v11;
  v31 = sub_1A88(&qword_91A48);
  v12 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v35 = &v8 - v12;
  v40 = sub_1A88(&qword_91A50);
  v13 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = &v8 - v13;
  v56 = sub_1A88(&qword_91A58);
  v47 = *(v56 - 8);
  v48 = v56 - 8;
  v14 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v49 = &v8 - v14;
  v73 = sub_1A88(&qword_91A60);
  v70 = *(v73 - 8);
  v71 = v73 - 8;
  v15 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v72 = &v8 - v15;
  v85 = sub_1A88(&qword_91A68);
  v79 = *(v85 - 8);
  v80 = v85 - 8;
  v16 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v83 = &v8 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v16);
  v84 = &v8 - v17;
  v108 = &v8 - v17;
  v107 = v3;
  v18 = __dst;
  v23 = 80;
  memcpy(__dst, v3, sizeof(__dst));
  sub_403E8(__dst, &v106);
  sub_40F20(v18, v1);
  v19 = v115;
  memcpy(v115, v54, v23);
  sub_403E8(v19, v105);
  v117 = v116;
  sub_BB0C(v19);
  v22 = &v104;
  v104 = v117;
  v20 = v113;
  memcpy(v113, v54, v23);
  sub_403E8(v20, &v103);
  v114 = v113[9];
  sub_BB0C(v20);
  v21 = &v102;
  v102 = v114;
  sub_275DC();
  sub_7D744();
  v25 = 2.0;
  v26 = v105[10] * 2.0;
  v24 = v110;
  memcpy(v110, v54, v23);
  sub_403E8(v24, &v101);
  v111 = *&v110[9];
  sub_BB0C(v24);
  v112 = v111;
  v27 = v111 * v25;
  v29 = sub_46198();
  sub_3FCB0();
  sub_7C8E4();
  sub_46218(v30);
  sub_7CCE4();
  v33 = sub_462E8();
  v34 = sub_4638C();
  v32 = &type metadata for Rectangle;
  sub_41054();
  sub_7C7B4();
  sub_46218(v35);
  sub_7C174();
  v42 = sub_46404();
  v43 = sub_46534();
  sub_1E6EC();
  sub_7C784();
  (*(v36 + 8))(v38, v41);
  sub_46218(v39);
  sub_2DCF0(v54, &v100);
  v52 = 112;
  v53 = 7;
  v46 = swift_allocObject();
  v55 = 96;
  memcpy((v46 + 16), v54, 0x60uLL);
  v99[2] = v40;
  v99[3] = v41;
  v99[4] = v42;
  v99[5] = v43;
  v78 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_41194();
  sub_7C7C4();
  v4 = v54;

  (*(v47 + 8))(v49, v56);
  v5 = v4[5];
  v51 = v109;
  *(v50 + 33) = v5;
  sub_40460(v109, v99);
  *v50 = *(v50 + 33);
  sub_1A88(&qword_91640);
  sub_7CB04();
  v68 = v96[12];
  v69 = v96[13];
  v61 = v97;
  sub_26D50();
  sub_2DCF0(v54, v96);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v54, v55);
  v74 = sub_1A88(&qword_91AB0);
  v94 = v56;
  v95 = OpaqueTypeConformance2;
  v75 = swift_getOpaqueTypeConformance2();
  v59 = type metadata accessor for GlyphPopoverView();
  v6 = sub_466D8();
  v92 = v59;
  v93 = v6;
  v76 = swift_getOpaqueTypeConformance2();
  sub_AB94(v65);
  sub_AC14(v68, v69, v61 & 1, v65, 4);
  (*(v63 + 8))(v65, v66);

  (*(v70 + 8))(v72, v73);
  v88 = v73;
  v89 = v74;
  v90 = v75;
  v91 = v76;
  v82 = swift_getOpaqueTypeConformance2();
  sub_1991C(v83, v85, v84);
  v87 = *(v79 + 8);
  v86 = v79 + 8;
  v87(v83, v85);
  (*(v79 + 16))(v83, v84, v85);
  sub_1991C(v83, v85, v81);
  v87(v83, v85);
  return (v87)(v84, v85);
}

uint64_t sub_40F20@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v14 = a1;
  v18 = 0;
  v17 = 0;
  v2 = type metadata accessor for RenderedGlyphView();
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v15 = &v10 - v11;
  v18 = &v10 - v11;
  v17 = v3;
  v12 = *(v4 + 36);
  swift_getKeyPath();
  sub_7BF24();
  v5 = v14;
  v23 = *(v14 + 4);
  *v15 = v23;
  sub_403E8(v5, v16);
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v22 = *v14;
  *(v15 + 8) = v22;
  v21 = *(v7 + 1);
  *(v8 + 16) = v21;
  v20 = v7[8];
  *(v8 + 32) = v20;
  v19 = v7[9];
  *(v8 + 40) = v19;
  sub_4850C(v8, v6);
  sub_BB0C(v14);
  return sub_46218(v15);
}

uint64_t sub_41070(uint64_t a1)
{
  v5 = a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + 80);
  sub_40460(&v6, v4);
  sub_40460(&v6, v3);
  sub_1A88(&qword_91640);
  sub_7CAF4();
  sub_26D50();
  sub_26D50();
}

uint64_t sub_411AC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v23 = a1;
  v14 = &opaque type descriptor for <<opaque return type of View.presentationCompactAdaptation(_:)>>;
  v41 = 0;
  v40 = 0;
  v24 = 0;
  v15 = sub_7C4C4();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = &v7 - v18;
  v20 = type metadata accessor for GlyphPopoverView();
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v22 = (&v7 - v21);
  v25 = sub_1A88(&qword_91AB0);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v29 = *(v26 + 64);
  v28 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v30 = &v7 - v28;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v32 = &v7 - v31;
  v41 = &v7 - v31;
  v40 = v3;
  v33 = sub_7D184();
  v34 = sub_7D174();
  v35 = sub_7D154();
  v36 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = v22;
  v8 = __dst;
  memcpy(__dst, v23, sizeof(__dst));
  sub_403E8(__dst, v39);
  sub_41678(v8, v5);
  sub_7C4B4();
  v9 = sub_466D8();
  sub_7C8A4();
  (*(v16 + 8))(v19, v15);
  sub_489CC(v22);
  v37 = v20;
  v38 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v30, v25, v32);
  v12 = *(v26 + 8);
  v11 = v26 + 8;
  v12(v30, v25);
  (*(v26 + 16))(v30, v32, v25);
  sub_1991C(v30, v25, v13);
  v12(v30, v25);
  v12(v32, v25);
}

id *sub_41678@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v52 = a1;
  v38 = sub_4867C;
  v39 = "Fatal error";
  v40 = "Not enough bits to represent the passed value";
  v41 = "Swift/Integers.swift";
  v66 = 0;
  v65 = 0;
  v56 = 0;
  v57 = 0;
  v42 = 0;
  v45 = type metadata accessor for GlyphPopoverView();
  v43 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v50 = (&v20 - v43);
  v66 = &v20 - v43;
  v65 = v2;
  v3 = sub_26C54();
  v4 = v50;
  v5 = v3;
  v6 = v45;
  v50[14] = v7;
  v4[15] = v5;
  v44 = *(v6 + 36);
  swift_getKeyPath();
  sub_7BF24();
  v47 = *(v45 + 40);
  swift_getKeyPath();
  sub_7BF24();
  sub_403E8(v52, v64);
  v48 = *v52;
  v49 = sub_6263C(120.0);

  v8 = *(v52 + 4);
  v51 = v67;
  sub_40038(v49, v8, v67);
  memcpy(v50, v51, 0x50uLL);
  sub_403E8(v52, &v61);
  v53 = *v52;
  v68 = *(v52 + 4);
  v54 = v68;
  v36 = CTFontCopyNameForGlyph(v53, v68);

  if (v36)
  {
    v35 = v36;
    v30 = v36;
    v31 = sub_7CF14();
    v32 = v9;

    v33 = v31;
    v34 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v59 = v33;
  v60 = v34;
  if (v34)
  {
    v62 = v59;
    v63 = v60;
  }

  else
  {
    v62 = sub_7CF84(".notdef", 7uLL, 1);
    v63 = v10;
    if (v60)
    {
      sub_1F58();
    }
  }

  v11 = v42;
  v12 = v52;
  v13 = v50;
  v14 = v63;
  v50[10] = v62;
  v13[11] = v14;
  sub_403E8(v12, &v58);
  v24 = *v52;
  v25 = CTFontCopyStringForGlyph();

  v26 = sub_7CF14();
  v27 = v15;
  v56 = v26;
  v57 = v15;

  v55[10] = sub_7CF64();
  v55[11] = v16;
  KeyPath = swift_getKeyPath();

  v17 = sub_486B0();
  v29 = sub_7FFC(v38, KeyPath, &type metadata for String.UnicodeScalarView, &type metadata for Unicode.Scalar, &type metadata for Never, v17, &protocol witness table for Never, v46);
  if (v11)
  {

    __break(1u);
  }

  else
  {
    v21 = v29;

    sub_1F58();
    v18 = v52;
    v50[12] = v21;
    sub_403E8(v18, v55);
    v22 = *v52;
    v23 = sub_62784();

    *(v50 + 104) = (v23 ^ 1) & 1;

    sub_48728(v50, v37);
    sub_BB0C(v52);
    return sub_489CC(v50);
  }

  return result;
}

uint64_t sub_41BBC()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_41BF4()
{
  v2 = *(v0 + 96);

  return v2;
}

double sub_41C2C()
{

  sub_1A88(&qword_91448);
  sub_7CAE4();

  return v1;
}

uint64_t sub_41CA8()
{

  sub_1A88(&qword_91448);
  sub_7CAF4();
  sub_26D50();
}

double sub_41D44()
{

  sub_1A88(&qword_91448);
  sub_7CB04();

  return v1;
}

double sub_41DD8()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_41E10(uint64_t a1, double a2)
{

  *(v2 + 112) = a2;
  *(v2 + 120) = a1;
}

uint64_t sub_41E58@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91AD0);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for GlyphPopoverView();
  sub_48B50((v6 + *(v2 + 36)), v1);
  sub_7BF04();
  return sub_48C24(v9);
}

uint64_t sub_41F50(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_48B50(v2, (&v5 - v6));
  v3 = type metadata accessor for GlyphPopoverView();
  sub_48CC0(v7, (v1 + *(v3 + 36)));
  return sub_48C24(v8);
}

uint64_t sub_42000@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_1A88(&qword_91AD8);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for GlyphPopoverView();
  sub_48DAC((v6 + *(v2 + 40)), v1);
  sub_7BF04();
  return sub_48E80(v9);
}

uint64_t sub_420F8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_1A88(&qword_91AD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_48DAC(v2, (&v5 - v6));
  v3 = type metadata accessor for GlyphPopoverView();
  sub_48F1C(v7, (v1 + *(v3 + 40)));
  return sub_48E80(v8);
}

uint64_t sub_421A8()
{
  v15 = 0;
  v8 = sub_1A88(&qword_91AD8);
  v4 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v0 = (&v4 - v4);
  v9 = &v4 - v4;
  v5 = 0;
  v12 = sub_7BEF4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v4 - v6;
  v15 = v1;
  v2 = type metadata accessor for GlyphPopoverView();
  sub_48DAC((v7 + *(v2 + 40)), v0);
  sub_7BF04();
  sub_48E80(v9);
  if ((*(v10 + 88))(v13, v12) == enum case for ColorScheme.dark(_:))
  {
    return sub_7C9F4();
  }

  v14 = sub_7C9D4();
  (*(v10 + 8))(v13, v12);
  return v14;
}

uint64_t sub_42370()
{

  swift_getAtKeyPath();
}

uint64_t sub_423D0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v8 = sub_49008;
  v29 = 0;
  v28 = 0;
  v12 = sub_1A88(&qword_91AE0);
  v3 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v15 = &v3 - v3;
  v18 = sub_1A88(&qword_91AE8);
  v4 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v20 = &v3 - v4;
  v22 = sub_1A88(&qword_91AF0);
  v6 = *(*(v22 - 8) + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v24 = &v3 - v5;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v5);
  v25 = &v3 - v7;
  v29 = &v3 - v7;
  v28 = v1;
  v9 = &v26;
  v27 = v1;
  v10 = sub_1A88(&qword_91AF8);
  v11 = sub_49010();
  sub_44450();
  v13 = 0;
  sub_7CB94();
  v14 = sub_49098();
  sub_3FCB0();
  v16 = 0;
  v17 = 1;
  sub_7C8F4();
  sub_49120(v15);
  v19 = sub_49274();
  sub_2AB34();
  sub_7C944();
  sub_49120(v20);
  v23 = sub_49318();
  sub_1991C(v24, v22, v25);
  sub_49120(v24);
  sub_493BC(v25, v24);
  sub_1991C(v24, v22, v21);
  sub_49120(v24);
  return sub_49120(v25);
}

uint64_t sub_42704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v27 = a2;
  v43 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v55 = 0;
  v28 = sub_1A88(&qword_91B28);
  v29 = *(v28 - 8);
  v30 = v29;
  v32 = *(v29 + 64);
  __chkstk_darwin(v28 - 8);
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v10 - v34;
  __chkstk_darwin(v10 - v34);
  v33 = v10 - v34;
  __chkstk_darwin(v2);
  v35 = v10 - v34;
  v63 = v10 - v34;
  v36 = sub_1A88(&qword_91B40);
  v38 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = v10 - v40;
  __chkstk_darwin(v10 - v40);
  v39 = v10 - v40;
  __chkstk_darwin(v3);
  v41 = v10 - v40;
  v62 = v10 - v40;
  v44 = sub_1A88(&qword_91B18);
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  __chkstk_darwin(v43);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v10 - v49;
  __chkstk_darwin(v4);
  v50 = v10 - v49;
  v61 = v10 - v49;
  v60 = v5;
  v51 = sub_7D184();
  v52 = sub_7D174();
  v53 = sub_7D154();
  v54 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v10;
  __chkstk_darwin(v10);
  v18 = &v10[-4];
  v10[-2] = v7;
  v19 = sub_1A88(&qword_91D10);
  sub_4B7E4();
  sub_7CC94();
  v21 = sub_4B86C();
  sub_1991C(v48, v44, v50);
  v22 = *(v46 + 8);
  v23 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v48, v44);
  v25 = *(v42 + 96);

  v59[2] = v25;
  v24 = sub_1A88(&qword_91D28);
  sub_4B8F4();
  v26 = sub_7D344();

  if (v26)
  {
    (*(v30 + 56))(v37, 1, 1, v28);
    sub_4B97C();
    sub_4E680(v37, v28, v39);
    sub_4BA04(v37);
    sub_4BAB8(v39, v41);
  }

  else
  {
    v14 = v10;
    __chkstk_darwin(v10);
    v12 = &v10[-4];
    v10[-2] = v8;
    v13 = sub_1A88(&qword_91D48);
    sub_4BDC0();
    sub_7CC94();
    v15 = sub_4B97C();
    sub_1991C(v33, v28, v35);
    v16 = *(v30 + 8);
    v17 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v33, v28);
    v55 = v33;
    v11 = *(v30 + 16);
    v10[1] = v30 + 16;
    v11(v31, v35, v28);
    sub_1991C(v31, v28, v33);
    v16(v31, v28);
    v11(v37, v33, v28);
    (*(v30 + 56))(v37, 0, 1, v28);
    sub_4E680(v37, v28, v39);
    sub_4BA04(v37);
    sub_4BAB8(v39, v41);
    v16(v33, v28);
    v16(v35, v28);
  }

  (*(v46 + 16))(v48, v50, v44);
  v59[0] = v48;
  sub_4BBEC(v41, v39);
  v59[1] = v39;
  v58[0] = v44;
  v58[1] = v36;
  v56 = v21;
  v57 = sub_4BD20();
  sub_4E6CC(v59, 2uLL, v58, v27);
  sub_4BA04(v39);
  v22(v48, v44);
  sub_4BA04(v41);
  v22(v50, v44);
}

uint64_t sub_42F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  v8 = a2;
  v10 = 0;
  v21 = 0;
  v20 = 0;
  v11 = sub_1A88(&qword_91D10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(0);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v7 - v14;
  __chkstk_darwin(v2);
  v15 = v7 - v14;
  v21 = v7 - v14;
  v20 = v3;
  v16 = sub_7D184();
  v17 = sub_7D174();
  v18 = sub_7D154();
  v19 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7[4] = v7;
  __chkstk_darwin(v7);
  v7[1] = &v7[-4];
  v7[-2] = v5;
  v7[2] = sub_1A88(&qword_91DE0);
  v7[3] = sub_4D180();
  sub_44450();
  sub_7CB94();
  v7[5] = sub_4B7E4();
  sub_1991C(v13, v11, v15);
  sub_4D208(v13);
  sub_4D410(v15, v13);
  sub_1991C(v13, v11, v8);
  sub_4D208(v13);
  sub_4D208(v15);
}