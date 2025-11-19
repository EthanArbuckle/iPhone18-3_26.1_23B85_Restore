uint64_t sub_192109A24()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[16] + 8))(v2[17], v2[12]);
  if (v0)
  {
    v5 = sub_192109C94;
  }

  else
  {
    v5 = sub_192109B8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192109B8C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);

  v4 = *(v0 + 192);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_192109C18()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_192109C94()
{
  v1 = v0[19];

  v2 = v0[23];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_192109D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 193) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  v7 = *a4;
  *(v6 + 72) = *a4;
  v8 = *(a6 + 8);
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 + 8);
  v9 = *(v7 + *MEMORY[0x1E69E77B0]);
  *(v6 + 96) = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 104) = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  *(v6 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v13 = *(v9 - 8);
  *(v6 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192109E84, 0, 0);
}

uint64_t sub_192109E84()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[7];
  v4 = *(*(v0[9] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A528] + 8);
  v0[18] = v4;
  v5 = *(v2 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = WitnessTable;
  sub_192224D20();
  v7 = sub_192228BA0();
  sub_19210877C(v3, v7, (v0 + 6));
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v0[19] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(MEMORY[0x1E695A2C8] + 4);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_19210A060;
  v16 = v0[17];
  v17 = v0[15];
  v18 = v0[13];

  return MEMORY[0x1EEDB3838](v16, v18, AssociatedConformanceWitness);
}

uint64_t sub_19210A060()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {
    (*(*(v3 + 112) + 8))(*(v3 + 120), *(v3 + 104));

    return MEMORY[0x1EEE6DFA0](sub_19210A404, 0, 0);
  }

  else
  {
    v4 = *(v3 + 144);
    v5 = *(v3 + 193);
    (*(*(v3 + 112) + 8))(*(v3 + 120), *(v3 + 104));
    *(v3 + 192) = v5;
    v6 = *(MEMORY[0x1E6959E28] + 4);
    v7 = swift_task_alloc();
    *(v3 + 176) = v7;
    WitnessTable = swift_getWitnessTable();
    *v7 = v3;
    v7[1] = sub_19210A244;
    v9 = *(v3 + 152);
    v10 = *(v3 + 136);

    return MEMORY[0x1EEDB2C78](v3 + 192, v9, WitnessTable);
  }
}

uint64_t sub_19210A244()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[16] + 8))(v2[17], v2[12]);
  if (v0)
  {
    v4 = sub_19210A47C;
  }

  else
  {
    v4 = sub_19210A388;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19210A388()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_19210A404()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_19210A47C()
{
  v1 = v0[19];

  v2 = v0[23];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_19210A514()
{
  v1 = *(v0 + 16);
  v2 = sub_192225020();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19210A5B4(uint64_t *a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = *a1;
  v2[15] = *a1;
  v2[16] = *(a2 + 8);
  v4 = *(v3 + *MEMORY[0x1E69E77B0]);
  v2[17] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[18] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v2[19] = v6;
  v7 = *(v6 + 64) + 15;
  v2[20] = swift_task_alloc();
  v8 = *(v4 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19210A71C, 0, 0);
}

uint64_t sub_19210A71C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = sub_19210BD60();
  v0[8] = v1;
  v0[9] = MEMORY[0x1E69E6370];
  v0[10] = v2;
  v0[11] = v6;
  v7 = sub_192224D40();
  v0[23] = v7;
  v8 = *(v4 + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680];
  v9 = *(v8 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v11 = *(v8 + 40);
  v0[3] = v7;
  v0[4] = v9;
  v0[5] = v2;
  v0[6] = WitnessTable;
  v0[7] = v11;
  sub_192224D50();
  v12 = sub_192228BA0();
  sub_192114D64(v5, v12, (v0 + 12));
  v13 = v0[20];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];
  v17 = v0[14];
  v0[24] = v0[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(MEMORY[0x1E695A2C8] + 4);
  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = sub_19210A964;
  v21 = v0[22];
  v22 = v0[20];
  v23 = v0[18];

  return MEMORY[0x1EEDB3838](v21, v23, AssociatedConformanceWitness);
}

uint64_t sub_19210A964()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    (*(v3[19] + 8))(v3[20], v3[18]);

    return MEMORY[0x1EEE6DFA0](sub_19210AD34, 0, 0);
  }

  else
  {
    v4 = v3[23];
    (*(v3[19] + 8))(v3[20], v3[18]);
    v5 = *(MEMORY[0x1E6959E20] + 4);
    v6 = swift_task_alloc();
    v3[27] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_19210AB40;
    v8 = v3[24];
    v9 = v3[22];

    return MEMORY[0x1EEDB2C68](v3 + 29, v8, WitnessTable);
  }
}

uint64_t sub_19210AB40()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[21] + 8))(v2[22], v2[17]);
  if (v0)
  {
    v5 = sub_19210ADB0;
  }

  else
  {
    v5 = sub_19210ACA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19210ACA8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);

  v4 = *(v0 + 232);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_19210AD34()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_19210ADB0()
{
  v1 = v0[24];

  v2 = v0[28];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_19210AE2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_192227CF0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a3;
  *(v14 + 40) = a2;
  *(v14 + 48) = a1;

  sub_1921998F0(0, 0, v12, a5, v14);
}

uint64_t sub_19210AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 233) = a5;
  *(v6 + 104) = a4;
  *(v6 + 112) = a6;
  v7 = *a4;
  *(v6 + 120) = *a4;
  *(v6 + 128) = *(a6 + 8);
  v8 = *(v7 + *MEMORY[0x1E69E77B0]);
  *(v6 + 136) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 144) = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  *(v6 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v12 = *(v8 - 8);
  *(v6 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19210B0AC, 0, 0);
}

uint64_t sub_19210B0AC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = sub_19210BD60();
  v0[8] = v1;
  v0[9] = MEMORY[0x1E69E6370];
  v0[10] = v2;
  v0[11] = v6;
  v7 = sub_192224D40();
  v0[23] = v7;
  v8 = *(v4 + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680];
  v9 = *(v8 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v11 = *(v8 + 40);
  v0[3] = v7;
  v0[4] = v9;
  v0[5] = v2;
  v0[6] = WitnessTable;
  v0[7] = v11;
  sub_192224D50();
  v12 = sub_192228BA0();
  sub_192114D64(v5, v12, (v0 + 12));
  v13 = v0[20];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];
  v17 = v0[14];
  v0[24] = v0[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(MEMORY[0x1E695A2C8] + 4);
  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = sub_19210B2F0;
  v21 = v0[22];
  v22 = v0[20];
  v23 = v0[18];

  return MEMORY[0x1EEDB3838](v21, v23, AssociatedConformanceWitness);
}

uint64_t sub_19210B2F0()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  *(v3 + 208) = v0;

  if (v0)
  {
    (*(*(v3 + 152) + 8))(*(v3 + 160), *(v3 + 144));

    return MEMORY[0x1EEE6DFA0](sub_19210B69C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 184);
    v5 = *(v3 + 233);
    (*(*(v3 + 152) + 8))(*(v3 + 160), *(v3 + 144));
    *(v3 + 232) = v5;
    v6 = *(MEMORY[0x1E6959E30] + 4);
    v7 = swift_task_alloc();
    *(v3 + 216) = v7;
    WitnessTable = swift_getWitnessTable();
    *v7 = v3;
    v7[1] = sub_19210B4DC;
    v9 = *(v3 + 192);
    v10 = *(v3 + 176);
    v11 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEDB2C88](v3 + 232, v9, v11, WitnessTable);
  }
}

uint64_t sub_19210B4DC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[21] + 8))(v2[22], v2[17]);
  if (v0)
  {
    v4 = sub_19210B714;
  }

  else
  {
    v4 = sub_19210B620;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19210B620()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_19210B69C()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_19210B714()
{
  v1 = v0[24];

  v2 = v0[28];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_19210B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1920A59A8;

  return sub_192114F64(a1, a2, &type metadata for KeyPathToggleBox, a2, &off_1F06AD550, a6);
}

uint64_t sub_19210B854()
{
  v2 = *v0;
  v3 = v0[1];
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19210B93C;

  return v7();
}

uint64_t sub_19210B93C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_19210BA44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_19210BA70()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t sub_19210BAA0()
{
  result = qword_1EADF0200;
  if (!qword_1EADF0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0200);
  }

  return result;
}

uint64_t sub_19210BAF4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF2F4;

  return sub_19210A5B4(v3, v2);
}

uint64_t sub_19210BBC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920A59A8;

  return sub_19210B78C(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_19210BC98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_19210AF40(a1, v4, v5, v7, v8, v6);
}

unint64_t sub_19210BD60()
{
  result = qword_1EADF0208;
  if (!qword_1EADF0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0208);
  }

  return result;
}

uint64_t sub_19210BDB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF9CC;

  return sub_1921094F8(v3, v2);
}

uint64_t sub_19210BE84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_192109D10(a1, v4, v5, v7, v8, v6);
}

unint64_t sub_19210BF4C()
{
  result = qword_1EADF0210;
  if (!qword_1EADF0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0210);
  }

  return result;
}

uint64_t sub_19210BFA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF9CC;

  return sub_19210897C(v3, v2);
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19210C0B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_192108F2C(a1, v4, v5, v7, v8, v6);
}

uint64_t EnvironmentValues._encodesPreciseTextLayout.getter()
{
  sub_1920579C4();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._encodesPreciseTextLayout.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920579C4();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19210C260;
}

uint64_t sub_19210C260(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t sub_19210C35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19210C3CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_19210C50C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for ControlDescriptorConfiguration()
{
  result = qword_1ED748D00;
  if (!qword_1ED748D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19210C7CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB80, &qword_19222AF60);
  v1 = *(type metadata accessor for WidgetDescriptor(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19222B480;
  sub_19207F348(v0, v4 + v3);
  sub_1920791AC();
  sub_1922269F0();
}

uint64_t EnvironmentValues._localizationToken.getter()
{
  sub_1920573F0();
  sub_1922261E0();
  return v1;
}

uint64_t sub_19210C94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19210CAE0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues._localizationToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1920573F0();
  sub_1922261E0();
  *v4 = v4[1];
  return sub_19210CA48;
}

void sub_19210CA48(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[2] = v4;
  v6 = v3[4];
  v7 = v3[5];
  v3[3] = v5;
  if (a2)
  {
    sub_1920367C8(v4, v5);
    sub_1922261F0();
    sub_192039140(*v3, v3[1]);
  }

  else
  {
    sub_1922261F0();
  }

  free(v3);
}

unint64_t sub_19210CAE0()
{
  result = qword_1EADECF00;
  if (!qword_1EADECF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECF00);
  }

  return result;
}

uint64_t ControlWidgetTemplate.tint(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_19210CC9C(sub_19210CC40, v2);
}

uint64_t sub_19210CBD0(unint64_t (**a1)(uint64_t a1), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a1[1];

  *a1 = sub_19210D198;
  a1[1] = v4;
  return result;
}

unint64_t sub_19210CC48(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_192227270();
  return v2 | (v3 << 32);
}

uint64_t sub_19210CC9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1920C92D8();

  sub_1922267F0();
}

uint64_t sub_19210CDA8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_19210CC9C(a5, v7);
}

uint64_t ControlWidgetTemplate.accessibilityIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_19210CC9C(sub_19210CEE8, v4);
}

uint64_t sub_19210CEE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 32);

  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_19210CF50(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_192227960();
  }

  v4 = sub_192227A10();

  if (v4)
  {
    *(a1 + 40) = 1;
  }

  return result;
}

void *sub_19210D018(void *result, void (*a2)(__int128 *))
{
  v2 = result[3];
  if (v2)
  {
    v4 = result;
    v5 = result[4];
    __swift_project_boxed_opaque_existential_1(result, result[3]);
    (*(v5 + 24))(&v10, v2, v5);
    a2(&v10);
    v6 = *(v4 + 24);
    if (v6)
    {
      v12 = v10;
      v13[0] = *v11;
      *(v13 + 9) = *&v11[9];
      v14 = *&v11[8];
      v7 = *(v4 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v4, v6);
      v8 = *(v7 + 32);

      sub_19210D128(&v14, &v9);
      v8(&v12, v6, v7);
    }
  }

  return result;
}

uint64_t sub_19210D128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF800, &unk_192231C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19210D1B0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_19210D1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19210D224();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19210D224()
{
  result = qword_1EADF0228;
  if (!qword_1EADF0228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0230, &qword_192233328);
    sub_19210D2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0228);
  }

  return result;
}

unint64_t sub_19210D2A8()
{
  result = qword_1EADF0238[0];
  if (!qword_1EADF0238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF0238);
  }

  return result;
}

uint64_t _s9WidgetKit29AppIntentControlConfigurationV4bodyQrvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192081C60(v1, v6);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v6, a1);
  v7 = *(type metadata accessor for WidgetDescriptor(0) + 28);
  v8 = *(a1 + v7);

  *(a1 + v7) = &unk_1F06A79B8;
  return result;
}

uint64_t AppIntentControlConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = sub_192224BB0();
  v28 = v17;
  v29 = v16;
  v18 = sub_1920C8F78();
  v26 = v19;
  v27 = v18;
  v20 = *(a8 - 8);
  v21 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v22 = (*(v20 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a6;
  *(v23 + 3) = a7;
  *(v23 + 4) = a8;
  *(v23 + 5) = a10;
  *(v23 + 6) = a11;
  result = (*(v20 + 32))(&v23[v21], a3, a8);
  v25 = &v23[v22];
  *v25 = a4;
  *(v25 + 1) = a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v29;
  *(a9 + 24) = v28;
  *(a9 + 32) = v27;
  *(a9 + 40) = v26;
  *(a9 + 48) = &unk_192233338;
  *(a9 + 56) = v23;
  *(a9 + 88) = 1;
  return result;
}

uint64_t sub_19210D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v22;
  v8[20] = v23;
  v8[17] = a6;
  v8[18] = a8;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v9 = *(*(a8 - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v10 = *(v22 - 8);
  v8[22] = v10;
  v8[23] = v10;
  v11 = *(v10 + 64) + 15;
  v8[24] = swift_task_alloc();
  v12 = type metadata accessor for ValueGenerator();
  v8[25] = v12;
  v13 = *(v12 - 8);
  v8[26] = v13;
  v14 = *(v13 + 64) + 15;
  v8[27] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[28] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v8[29] = v16;
  v17 = *(v16 + 64) + 15;
  v8[30] = swift_task_alloc();
  sub_192227CC0();
  v8[31] = sub_192227CB0();
  v19 = sub_192227C70();
  v8[32] = v19;
  v8[33] = v18;

  return MEMORY[0x1EEE6DFA0](sub_19210D754, v19, v18);
}

uint64_t sub_19210D754()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[27];
    v3 = v0[24];
    v4 = v0[22];
    v5 = v0[19];
    (*(v0[23] + 16))(v3, v0[15], v5);
    (*(v4 + 32))(v2, v3, v5);
    v6 = v1;
    v7 = swift_task_alloc();
    v0[34] = v7;
    *v7 = v0;
    v7[1] = sub_19210D968;
    v8 = v0[30];
    v9 = v0[27];
    v10 = v0[25];
    v11 = v0[14];

    return sub_19210DEC8(v8, v6, v11, v10);
  }

  else
  {
    v13 = v0[31];

    type metadata accessor for ControlError(0);
    sub_19210F4DC(&qword_1EADEFC38, type metadata accessor for ControlError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v14 = v0[30];
    v15 = v0[27];
    v16 = v0[24];
    v17 = v0[21];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_19210D968()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 280) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 264);
  v9 = *(v2 + 256);
  if (v0)
  {
    v10 = sub_19210DCD0;
  }

  else
  {
    v10 = sub_19210DB00;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_19210DB00()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);

  sub_1922269C0();
  v7(v2);
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);

    (*(v9 + 8))(v8, v10);
    v16 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v16;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v14);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_19210DCD0()
{
  v1 = v0[31];
  v2 = v0[13];

  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_19210DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v16 = v3[3];
  v17 = v3[2];
  v8 = v3[5];
  v9 = v3[6];
  v10 = (*(*(v3[4] - 8) + 80) + 56) & ~*(*(v3[4] - 8) + 80);
  v11 = (v3 + ((*(*(v3[4] - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1920B3B44;

  return sub_19210D550(a1, a2, a3, v3 + v10, v12, v13, v17, v16);
}

uint64_t sub_19210DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a3;
  v5[24] = v4;
  v5[22] = a1;
  v5[25] = *(a4 + 24);
  v5[26] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[27] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[28] = v8;
  v9 = *(v8 + 64) + 15;
  v5[29] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v5[30] = v10;
  v11 = *(v10 - 8);
  v5[31] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[32] = v13;
  v14 = swift_task_alloc();
  v5[33] = v14;
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  *v14 = v5;
  v14[1] = sub_19210E0B0;

  return sub_19213431C(v13, a2, v10, v15);
}

uint64_t sub_19210E0B0()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_19210E750;
  }

  else
  {
    v3 = sub_19210E1C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19210E1C4()
{
  v1 = v0[23];
  if (v1 == 1)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_1922258B0();
    __swift_project_value_buffer(v15, qword_1EAE00810);
    v16 = sub_192225890();
    v17 = sub_192227FB0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_192028000, v16, v17, "Fetching preview value", v18, 2u);
      MEMORY[0x193B0C7F0](v18, -1, -1);
    }

    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[30];
    v23 = v0[25];
    v22 = v0[26];
    v24 = v0[24];
    v25 = v0[22];

    (*(v23 + 32))(v19, v22, v23);
    (*(v20 + 8))(v19, v21);
    v26 = v0[32];
    v27 = v0[29];

    v28 = v0[1];

    return v28();
  }

  else if (v1)
  {
    return sub_192228620();
  }

  else
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v2 = sub_1922258B0();
    __swift_project_value_buffer(v2, qword_1EAE00810);
    v3 = sub_192225890();
    v4 = sub_192227FB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Fetching current value", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    v30 = v0[25];

    v6 = *(v30 + 40);
    v29 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = sub_19210E588;
    v9 = v0[32];
    v10 = v0[29];
    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[24];

    return v29(v10, v9, v11, v12);
  }
}

uint64_t sub_19210E588()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_19210E7C0;
  }

  else
  {
    v3 = sub_19210E69C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19210E69C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[22];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v3 + 32))(v4, v1, v2);
  v5 = v0[32];
  v6 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_19210E750()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_19210E7C0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 256);
  v3 = *MEMORY[0x1E69941E8];
  v4 = v1;
  v5 = v3;
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v6 = *MEMORY[0x1E696A278];
  v7 = sub_192227960();
  v9 = v8;
  *(v0 + 40) = MEMORY[0x1E69E6158];
  *(v0 + 16) = 0xD00000000000002ALL;
  *(v0 + 24) = 0x800000019224A900;
  sub_19203BEDC((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 48), v7, v9, isUniquelyReferenced_nonNull_native);

  v11 = *MEMORY[0x1E696AA08];
  v12 = sub_192227960();
  v14 = v13;
  swift_getErrorValue();
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  *(v0 + 104) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  sub_19203BEDC((v0 + 80), (v0 + 112));
  v18 = v1;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 112), v12, v14, v19);

  v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v21 = sub_192227830();

  [v20 initWithDomain:v5 code:1106 userInfo:v21];

  swift_willThrow();
  (*(v2 + 8))(v27, v26);
  v22 = *(v0 + 256);
  v23 = *(v0 + 232);

  v24 = *(v0 + 8);

  return v24();
}

void *AppIntentControlConfiguration.init(kind:intent:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v14 = *(a7 + 8);
  v15 = sub_192224BB0();
  v17 = v16;
  v18 = sub_1920C8F78();
  v20 = v19;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a9;
  result[6] = a3;
  result[7] = a4;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = v17;
  *(a8 + 32) = v18;
  *(a8 + 40) = v20;
  *(a8 + 48) = &unk_192233348;
  *(a8 + 56) = result;
  *(a8 + 88) = 1;
  return result;
}

uint64_t sub_19210EB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v17;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v10 = *(*(a7 - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v11 = *(a6 - 8);
  v8[22] = v11;
  v12 = *(v11 + 64) + 15;
  v8[23] = swift_task_alloc();
  sub_192227CC0();
  v8[24] = sub_192227CB0();
  v14 = sub_192227C70();
  v8[25] = v14;
  v8[26] = v13;

  return MEMORY[0x1EEE6DFA0](sub_19210EC58, v14, v13);
}

uint64_t sub_19210EC58()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_19210EDDC;
    v4 = v0[23];
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[14];

    return sub_19210F524(v4, v2, v7, v6, v5);
  }

  else
  {
    v9 = v0[24];

    type metadata accessor for ControlError(0);
    sub_19210F4DC(&qword_1EADEFC38, type metadata accessor for ControlError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v10 = v0[23];
    v11 = v0[21];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_19210EDDC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_19210F0C8;
  }

  else
  {
    v7 = sub_19210EF18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_19210EF18()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);

  sub_1922269C0();
  v7(v2);
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 168);
    v11 = *(v0 + 136);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);

    (*(v9 + 8))(v8, v11);
    v14 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v14;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v12);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_19210F0C8()
{
  v1 = v0[24];
  v2 = v0[13];

  v3 = v0[28];
  v4 = v0[23];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_19210F148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v13 = v3[6];
  v12 = v3[7];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_1920A59A8;

  return sub_19210EB30(a1, a2, a3, v13, v12, v8, v9, v10);
}

uint64_t sub_19210F238(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t dispatch thunk of AppIntentControlValueProvider.currentValue(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_19210F3C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19210F424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_19210F46C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19210F4DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19210F524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = *(a5 + 8);
  *v10 = v5;
  v10[1] = sub_1920A59A8;

  return sub_19213431C(a1, a2, a4, v11);
}

uint64_t sub_19210F5E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6C8, &qword_19222DD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetPreviewContextKey.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetPreviewContextKey(0) + 20);
  v4 = sub_192225150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *WidgetPreviewContextKey.configuration.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetPreviewContextKey(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t sub_19210F73C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  __swift_allocate_value_buffer(v0, qword_1EADF02C0);
  v1 = __swift_project_value_buffer(v0, qword_1EADF02C0);
  v2 = type metadata accessor for WidgetPreviewContextKey(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static WidgetPreviewContextKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  return sub_19210F874(v3, a1);
}

uint64_t sub_19210F874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static WidgetPreviewContextKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  sub_19210F98C(a1, v3);
  swift_endAccess();
  return sub_19210F9FC(a1);
}

uint64_t sub_19210F98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19210F9FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static WidgetPreviewContextKey.defaultValue.modify())()
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  __swift_project_value_buffer(v0, qword_1EADF02C0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_19210FB04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  return sub_19210F874(v3, a1);
}

uint64_t sub_19210FB9C(uint64_t a1)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  sub_19210F98C(a1, v3);
  return swift_endAccess();
}

uint64_t WidgetPreviewContentCategory.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_192228700();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_19210FCCC()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_19210FD40()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_19210FD94@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_192228700();

  *a2 = v5 != 0;
  return result;
}

uint64_t WidgetPreviewContext.subscript.getter(uint64_t a1)
{
  v3 = type metadata accessor for WidgetPreviewContextKey(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != a1)
  {
    return sub_192226320();
  }

  v9 = *v1;
  v10 = type metadata accessor for WidgetPreviewContext(0);
  v11 = *(v10 + 20);
  v12 = *(v3 + 20);
  v13 = sub_192225150();
  (*(*(v13 - 8) + 16))(&v7[v12], &v1[v11], v13);
  v14 = *&v1[*(v10 + 24)];
  *v7 = v9;
  *&v7[*(v3 + 24)] = v14;
  swift_getAssociatedTypeWitness();
  v15 = v14;
  return swift_dynamicCast();
}

uint64_t WidgetPreviewContext.init(family:date:configuration:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for WidgetPreviewContext(0);
  v8 = *(v7 + 20);
  v9 = sub_192225150();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t WidgetPreviewContext.init(family:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for WidgetPreviewContext(0);
  v5 = &a2[*(v4 + 20)];
  result = _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *a2 = v3;
  *&a2[*(v4 + 24)] = 0;
  return result;
}

unint64_t sub_192110074()
{
  result = qword_1EADF02E0;
  if (!qword_1EADF02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF02E0);
  }

  return result;
}

void sub_1921100F4()
{
  if (!qword_1EADF02F8)
  {
    sub_19211014C();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADF02F8);
    }
  }
}

unint64_t sub_19211014C()
{
  result = qword_1EADF0300;
  if (!qword_1EADF0300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADF0300);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_19211028C()
{
  sub_192225150();
  if (v0 <= 0x3F)
  {
    sub_1921100F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1921103CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1922261D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 + *(type metadata accessor for ControlWidgetStatusModifier(0) + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  sub_192110E38(v8);
  v14 = sub_192226F60();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v17 = a1[1];

  *a1 = v14;
  a1[1] = v16;
  return result;
}

uint64_t sub_1921104F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_192111360(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlWidgetStatusModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1921113C8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ControlWidgetStatusModifier);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0338, &qword_192233788);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0340, &qword_192233790);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1921112C4;
  v12[1] = v9;
  return result;
}

uint64_t sub_1921106C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v21 = a8;
  v14 = a7(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v20 - v16);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  v18 = v17 + *(v14 + 20);
  *v18 = a1;
  *(v18 + 1) = a2;
  v18[16] = a3 & 1;
  *(v18 + 3) = a4;
  sub_1921114E4(a1, a2, a3 & 1);

  MEMORY[0x193B0A190](v17, a5, v14, a6);
  return sub_1921114F4(v17, v21);
}

uint64_t sub_192110820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{

  v12 = sub_192226FC0();
  v14 = v13;
  v16 = v15;
  sub_1921106C0(v12, v13, v15 & 1, v17, a5, a6, a7, a8);
  sub_19207A338(v12, v14, v16 & 1);
}

uint64_t sub_192110944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_192226FD0();
  v16 = v15;
  v18 = v17;
  sub_1921106C0(v14, v15, v17 & 1, v19, a2, a4, a6, a7);
  sub_19207A338(v14, v16, v18 & 1);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx9WidgetKit07ControlF14StatusModifier33_D65CF572C81694DAC92CF1F0D8AF24A2LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  a2(255);
  sub_192225C70();
  sub_192110B54(a3, a4);
  return swift_getWitnessTable();
}

uint64_t sub_192110B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_witness_table_7SwiftUI4ViewRzSyRd__r__lAA15ModifiedContentVyx9WidgetKit07ControlF14StatusModifier33_D65CF572C81694DAC92CF1F0D8AF24A2LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = a1[2];
  a2(255);
  sub_192225C70();
  sub_192110B54(a3, a4);
  return swift_getWitnessTable();
}

void sub_192110C60()
{
  if (!qword_1EADEE8A0)
  {
    sub_1922261D0();
    v0 = sub_192225A00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE8A0);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_192110DA8()
{
  sub_192110C60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_192110E38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1922261D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  sub_1921112F0(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v12, v4);
  }

  v14 = *v12;
  sub_192227FA0();
  v15 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_192111000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1922261D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 + *(type metadata accessor for ControlWidgetActionHintModifier(0) + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  sub_192110E38(v8);
  v14 = sub_192226F60();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v17 = *(a1 + 24);

  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_19211112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_192111360(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlWidgetActionHintModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1921113C8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ControlWidgetActionHintModifier);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0348, &qword_192233798);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0350, &unk_1922337A0);
  v12 = (a3 + *(result + 36));
  *v12 = sub_192111430;
  v12[1] = v9;
  return result;
}

uint64_t sub_1921112F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192111360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1921113C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19211145C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1921114E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1921114F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_192111554()
{
  result = qword_1EADF0358;
  if (!qword_1EADF0358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0340, &qword_192233790);
    sub_192031E74(&qword_1EADF0360, &qword_1EADF0338, &qword_192233788);
    sub_192031E74(&qword_1EADF0368, &qword_1EADF0370, qword_1922337C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0358);
  }

  return result;
}

unint64_t sub_192111638()
{
  result = qword_1EADF0378;
  if (!qword_1EADF0378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0350, &unk_1922337A0);
    sub_192031E74(&qword_1EADF0380, &qword_1EADF0348, &qword_192233798);
    sub_192031E74(&qword_1EADF0368, &qword_1EADF0370, qword_1922337C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0378);
  }

  return result;
}

uint64_t sub_192111750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226590();
  result = sub_192074DF4(a1, v4);
  if (v6)
  {

    v7 = sub_1922265A0();
    v8 = *(*(v7 - 8) + 16);

    return v8(a2, a1, v7);
  }

  else
  {
    v9 = result - 1;
    if (result < 1)
    {
      v11 = sub_1922265A0();
      (*(*(v11 - 8) + 16))(a2, a1, v11);
    }

    else
    {
      if (result > *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = sub_1922265A0();
      (*(*(v10 - 8) + 16))(a2, v4 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v9, v10);
    }
  }
}

double sub_1921118C8(char a1, uint64_t a2)
{
  v4 = sub_1922265A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  v10 = -3.0;
  if (v9 != *MEMORY[0x1E697F658])
  {
    v10 = -2.0;
    if (v9 != *MEMORY[0x1E697F690])
    {
      v10 = -1.0;
      if (v9 != *MEMORY[0x1E697F698])
      {
        v10 = 0.0;
        if (v9 != *MEMORY[0x1E697F680])
        {
          v10 = 2.0;
          if (v9 != *MEMORY[0x1E697F650])
          {
            v10 = 4.0;
            if (v9 != *MEMORY[0x1E697F660])
            {
              v10 = 6.0;
              if (v9 != *MEMORY[0x1E697F630])
              {
                v10 = 10.0;
                if (v9 != *MEMORY[0x1E697F670])
                {
                  v10 = 14.0;
                  if (v9 != *MEMORY[0x1E697F668])
                  {
                    v10 = 18.0;
                    if (v9 != *MEMORY[0x1E697F678])
                    {
                      v10 = 22.0;
                      if (v9 != *MEMORY[0x1E697F640])
                      {
                        v10 = 26.0;
                        if (v9 != *MEMORY[0x1E697F648])
                        {
                          (*(v5 + 8))(v8, v4, 26.0);
                          v10 = 0.0;
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

  return v10 + dbl_192233880[a1];
}

double sub_192111B14(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8] || v7 == *MEMORY[0x1E6980F00] || v7 == *MEMORY[0x1E6980F08] || v7 == *MEMORY[0x1E6980F10])
  {
    goto LABEL_12;
  }

  if (v7 == *MEMORY[0x1E6980F38])
  {
    sub_192226E40();
    return result;
  }

  v12 = v7 == *MEMORY[0x1E6980EF0] || v7 == *MEMORY[0x1E6980EF8];
  v13 = v12 || v7 == *MEMORY[0x1E6980F18];
  v14 = v13 || v7 == *MEMORY[0x1E6980F30];
  v15 = v14 || v7 == *MEMORY[0x1E6980F20];
  if (v15 || v7 == *MEMORY[0x1E6980F28])
  {
LABEL_12:
    sub_192226E30();
    return result;
  }

  sub_192226E30();
  v18 = v17;
  (*(v3 + 8))(v6, v2);
  return v18;
}

uint64_t sub_192111D18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226160();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192111D70(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 88) = a2;
  *(v3 + 96) = v2;
  *(v3 + 80) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = sub_192227CC0();
  *(v3 + 136) = sub_192227CB0();
  *(v3 + 336) = *(v4 + 32);
  v7 = *(v4 + 88);
  v8 = *(v4 + 96);
  v9 = *(v4 + 120);
  *(v3 + 144) = *(v4 + 104);
  *(v3 + 160) = v9;
  *(v3 + 337) = *(v4 + 136);
  v10 = *(v4 + 176);
  *(v3 + 176) = v10;
  v14 = (v7 + *v7);
  v11 = v7[1];
  v12 = swift_task_alloc();
  *(v3 + 184) = v12;
  *v12 = v3;
  v12[1] = sub_192111F24;

  return v14(v10);
}

uint64_t sub_192111F24(uint64_t a1)
{
  v3 = *(*v2 + 184);
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v8 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_192112A8C, v8, v7);
  }

  else
  {
    v14 = (v4[18] + *v4[18]);
    v9 = *(v4[18] + 4);
    v10 = swift_task_alloc();
    v4[26] = v10;
    *v10 = v4;
    v10[1] = sub_192112114;
    v11 = v4[19];
    v12 = v4[22];

    return v14(v12);
  }
}

uint64_t sub_192112114(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 208);
  v7 = *v2;
  v5[27] = v1;

  v8 = v5[17];
  v9 = v5[16];
  if (v3)
  {
    v10 = sub_192227C70();
    v12 = v11;
    v13 = sub_192112B14;
    v14 = v10;
    v15 = v12;
  }

  else
  {
    v5[28] = a1;
    v16 = sub_192227C70();
    v15 = v17;
    v5[29] = v16;
    v5[30] = v17;
    v13 = sub_1921122A4;
    v14 = v16;
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1921122A4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = swift_task_alloc();
  v4[1] = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);
  *(v0 + 248) = sub_1921145B0(v3, v1, sub_192113844, v4);

  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_1921123AC;
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  return sub_19211384C(v6, v7, v8);
}

uint64_t sub_1921123AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[32];
  v7 = *v3;
  v5[33] = a2;
  v5[34] = v2;

  if (v2)
  {
    v8 = v5[31];

    v9 = v5[29];
    v10 = v5[30];

    return MEMORY[0x1EEE6DFA0](sub_192112BA8, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v5[35] = v11;
    *v11 = v7;
    v11[1] = sub_192112528;
    v12 = v5[11];
    v13 = v5[12];

    return sub_192113E8C(v13, v12);
  }
}

uint64_t sub_192112528(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[6] = v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;
  v6 = v4[35];
  v7 = *v3;
  v5[36] = a2;
  v5[37] = v2;

  if (v2)
  {
    v8 = v5[33];
    v9 = v5[31];

    v10 = v5[29];
    v11 = v5[30];

    return MEMORY[0x1EEE6DFA0](sub_192112C30, v10, v11);
  }

  else
  {
    v12 = v5[20];
    sub_1920E1BAC(v5[15], v5[14]);
    v19 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v5[38] = v14;
    *v14 = v7;
    v14[1] = sub_192112720;
    v16 = v5[21];
    v15 = v5[22];
    v17 = v5[13];

    return v19(v17, v15);
  }
}

uint64_t sub_192112720()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v12 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[33];
    v6 = v2[31];
    sub_192033970(v2[14], &qword_1EADEF720, &unk_19222E2F0);

    v7 = v2[29];
    v8 = v2[30];
    v9 = sub_192112CD4;
  }

  else
  {
    v10 = v2[3];
    v2[40] = v2[7];
    v2[41] = v10;
    v7 = v2[29];
    v8 = v2[30];
    v9 = sub_192112884;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_192112884()
{
  v19 = *(v0 + 288);
  v20 = *(v0 + 320);
  v16 = *(v0 + 264);
  v17 = *(v0 + 328);
  v15 = *(v0 + 248);
  v18 = *(v0 + 337);
  v21 = *(v0 + 336);
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);

  sub_192033970(v3, &qword_1EADEF720, &unk_19222E2F0);
  v6 = type metadata accessor for ControlTemplatePicker(0);
  v7 = v6[6];
  v8 = sub_192226B70();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[8];
  v10 = &v5[v6[7]];
  v11 = sub_192225020();
  (*(*(v11 - 8) + 56))(&v5[v9], 1, 1, v11);
  v12 = &v5[v6[12]];
  *v5 = v15;
  *(v5 + 1) = v17;
  *(v5 + 2) = v16;
  sub_19204193C(v2, &v5[v7], &qword_1EADEF720, &unk_19222E2F0);
  *v10 = v20;
  *(v10 + 1) = v19;
  v5[v6[9]] = v18;
  sub_19204193C(v4, &v5[v9], &qword_1EADEEE10, &unk_19222B630);
  v5[v6[10]] = 0;
  v5[v6[11]] = v21;
  *v12 = 0;
  *(v12 + 1) = 0;
  v5[v6[13]] = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_192112A8C()
{
  v1 = v0[17];

  v2 = v0[25];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_192112B14()
{
  v1 = v0[24];
  v2 = v0[17];

  v3 = v0[27];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_192112BA8()
{
  v1 = v0[17];

  v2 = v0[34];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_192112C30()
{
  v1 = v0[17];
  v2 = v0[15];

  sub_192033970(v2, &qword_1EADEF720, &unk_19222E2F0);
  v3 = v0[37];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_192112CD4()
{
  v1 = v0[17];
  v2 = v0[15];

  sub_192033970(v2, &qword_1EADEF720, &unk_19222E2F0);
  v3 = v0[39];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

double sub_192112D78@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v135 = a3;
  v127 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v125 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v121 = &v101 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v101 - v18;
  v20 = sub_1922261D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v101 - v26;
  v128 = sub_192226BA0();
  v124 = *(v128 - 8);
  v28 = *(v124 + 64);
  v29 = MEMORY[0x1EEE9AC00](v128);
  v122 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v110 = &v101 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v101 - v33;
  v35 = a2[1];
  v104.i64[0] = *a2;
  v111 = v35;
  v36 = a2[3];
  v108 = a2[2];
  v107 = v36;
  v37 = a2[5];
  v106 = a2[4];
  v118 = v37;
  v38 = a2[7];
  v117 = a2[6];
  v116 = v38;
  v115 = a2[8];
  KeyPath = swift_getKeyPath();
  v136.i64[0] = a1;
  v136.i64[1] = KeyPath;
  LOBYTE(v137) = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v126 = a1;
  swift_retain_n();
  v123 = KeyPath;

  sub_192226760();
  v109 = v21;
  v43 = v21 + 16;
  v131 = *(v21 + 16);
  v132 = v20;
  v131(v27, v135, v20);
  v105 = v27;
  sub_192226700();
  sub_192226730();

  v134 = v34;
  sub_192226A40();
  v44 = sub_192226A90();
  v45 = *(v44 - 8);
  v129 = *(v45 + 48);
  v130 = v45 + 48;
  if (v129(v19, 1, v44) == 1)
  {
    sub_192033970(v19, &qword_1EADEFEC0, &unk_192231BD0);
    v120 = 0;
    v119 = 0;
  }

  else
  {
    v46 = sub_192226A80();
    (*(v45 + 8))(v19, v44);
    v47 = [v46 string];

    v120 = sub_192227960();
    v119 = v48;
  }

  sub_192226B80();
  v49 = sub_192226B70();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v10, 1, v49) == 1)
  {
    sub_192033970(v10, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v51 = sub_192226B60();
    (*(v50 + 8))(v10, v49);
    if (v51)
    {
      sub_192226B80();
      goto LABEL_9;
    }
  }

  (*(v50 + 56))(v133, 1, 1, v49);
LABEL_9:
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v114 = v45;
  v113 = v49;
  if (v104.i64[0])
  {
    sub_192227270();
    v102 = v52;
    v104 = v53;
    v101 = v54;
    v103 = v55;
    v56 = v25;
    v57 = v132;
    (*(v109 + 8))(v56, v132);
    LODWORD(v109) = 0;
    v58.i64[0] = v102;
    v58.i64[1] = v101;
    v104 = vorrq_s8(vshll_n_s32(__PAIR64__(v103, v104.u32[0]), 0x20uLL), v58);
  }

  else
  {
    sub_1920B3090();
    sub_1922261E0();
    v59 = v25;
    v57 = v132;
    (*(v109 + 8))(v59, v132);
    v104 = v136;
    LODWORD(v109) = v137;
  }

  v60 = v111;
  v61 = v108;
  v136.i64[0] = v111;
  v136.i64[1] = v108;
  v62 = v107;
  v63 = v106;
  v137 = v107;
  v138 = v106;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03A0, &unk_192234FD0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_192114BA4(v60, v61, v62, v63);
  sub_192226760();
  v67 = v105;
  v111 = v43;
  v131(v105, v135, v57);
  sub_192226700();
  v68 = v110;
  sub_192226730();

  v69 = v121;
  sub_192226A40();
  v70 = v68;
  v71 = v128;
  v124 = *(v124 + 8);
  (v124)(v70, v128);
  v72 = v129(v69, 1, v44);
  v112 = v50;
  if (v72 == 1)
  {
    sub_192033970(v69, &qword_1EADEFEC0, &unk_192231BD0);
    v121 = 0;
    v110 = 0;
  }

  else
  {
    v73 = sub_192226A80();
    (*(v114 + 8))(v69, v44);
    v74 = [v73 string];

    v121 = sub_192227960();
    v110 = v75;

    v71 = v128;
  }

  v76 = v44;
  v77 = v118;
  v78 = v117;
  v136.i64[0] = v118;
  v136.i64[1] = v117;
  v79 = v116;
  v80 = v115;
  v137 = v116;
  v138 = v115;
  v81 = *(v64 + 48);
  v82 = *(v64 + 52);
  swift_allocObject();
  sub_192114BA4(v77, v78, v79, v80);
  sub_192226760();
  v131(v67, v135, v132);
  sub_192226700();
  v83 = v122;
  sub_192226730();

  v84 = v125;
  sub_192226A40();
  v85 = v124;
  (v124)(v83, v71);
  if (v129(v84, 1, v76) == 1)
  {

    v85(v134, v71);
    sub_192033970(v84, &qword_1EADEFEC0, &unk_192231BD0);
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v88 = sub_192226A80();
    (*(v114 + 8))(v84, v76);
    v89 = [v88 string];

    v86 = sub_192227960();
    v87 = v90;

    v85(v134, v71);
  }

  v91 = v112;
  v92 = type metadata accessor for ControlTemplatePicker.Option(0);
  v93 = v92[5];
  v94 = v127;
  (*(v91 + 56))(v127 + v93, 1, 1, v113);
  v95 = (v94 + v92[6]);
  v96 = (v94 + v92[7]);
  v97 = (v94 + v92[8]);
  v98 = v119;
  *v94 = v120;
  v94[1] = v98;
  sub_19204193C(v133, v94 + v93, &qword_1EADEF720, &unk_19222E2F0);
  result = *v104.i64;
  *v95 = v104;
  v95[1].i8[0] = v109;
  v100 = v110;
  *v96 = v121;
  v96[1] = v100;
  *v97 = v86;
  v97[1] = v87;
  return result;
}

uint64_t sub_19211384C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = sub_1922261D0();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v9 = sub_192226BA0();
  v3[9] = v9;
  v10 = *(v9 - 8);
  v3[10] = v10;
  v11 = *(v10 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = sub_192227CC0();
  v3[13] = sub_192227CB0();
  v12 = a2[7];
  v13 = a2[8];
  v14 = a2[22];
  v18 = (v12 + *v12);
  v15 = v12[1];
  v16 = swift_task_alloc();
  v3[14] = v16;
  *v16 = v3;
  v16[1] = sub_192113A50;

  return v18(v14);
}

uint64_t sub_192113A50(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 96);
  v12 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v3;

  v9 = sub_192227C70();
  if (v3)
  {
    v10 = sub_192113DFC;
  }

  else
  {
    v10 = sub_192113BB0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_192113BB0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  v0[2] = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  sub_192226760();
  (*(v5 + 16))(v4, v8, v7);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v12 = sub_192226A90();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = v0[5];
  if (v14 == 1)
  {
    sub_192033970(v0[5], &qword_1EADEFEC0, &unk_192231BD0);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = sub_192226A80();
    (*(v13 + 8))(v15, v12);
    v19 = [v18 string];

    v16 = sub_192227960();
    v17 = v20;
  }

  v21 = v0[15];
  v23 = v0[10];
  v22 = v0[11];
  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[5];
  v27 = v0[3];
  sub_192226B80();

  (*(v23 + 8))(v22, v24);

  v28 = v0[1];

  return v28(v16, v17);
}

uint64_t sub_192113DFC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_192113E8C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_1922261D0();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_192226BA0();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  sub_192227CC0();
  v2[12] = sub_192227CB0();
  v11 = sub_192227C70();
  v2[13] = v11;
  v2[14] = v10;

  return MEMORY[0x1EEE6DFA0](sub_192114014, v11, v10);
}

uint64_t sub_192114014()
{
  v1 = v0[3];
  v2 = v1[9];
  if (v2)
  {
    v3 = v1[10];
    v4 = v1[22];
    v5 = v1[9];
    v14 = (v2 + *v2);
    v6 = v2[1];
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_19211417C;

    return v14(v4);
  }

  else
  {
    v9 = v0[12];

    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[5];

    v13 = v0[1];

    return v13(0, 0);
  }
}

uint64_t sub_19211417C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v7 = *(v3 + 112);
  v8 = *(v3 + 104);
  if (v1)
  {
    v9 = sub_192114524;
  }

  else
  {
    v9 = sub_1921142C0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1921142C0()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  v0[2] = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  sub_192226760();
  (*(v5 + 16))(v4, v8, v7);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v12 = sub_192226A90();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = v0[16];
  v16 = v0[11];
  v17 = v0[9];
  v18 = v0[10];
  v19 = v0[5];
  if (v14 == 1)
  {
    (*(v18 + 8))(v0[11], v17);

    sub_192033970(v19, &qword_1EADEFEC0, &unk_192231BD0);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = sub_192226A80();
    (*(v13 + 8))(v19, v12);
    v23 = [v22 string];

    v20 = sub_192227960();
    v21 = v24;

    (*(v18 + 8))(v16, v17);
  }

  v25 = v0[11];
  v26 = v0[8];
  v27 = v0[5];

  v28 = v0[1];

  return v28(v20, v21);
}

uint64_t sub_192114524()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_1921145B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4)
{
  v48 = a4;
  v47 = a3;
  v6 = type metadata accessor for ControlTemplatePicker.Option(0);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v40 - v11;
  v12 = *(a1 + 16);
  v59 = *(a2 + 16);
  if (v59 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v59;
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_19209ACE8(0, v13, 0);
  v14 = v58;
  v49 = v12;
  v45 = v13;
  v42 = a1;
  v43 = a2;
  if (!v13)
  {

    v20 = 0;
    v24 = 0;
    v30 = v41;
    if (!v12)
    {
LABEL_21:

      return v14;
    }

    goto LABEL_22;
  }

  v16 = v59;
  if (v12)
  {
    v17 = v10;
    v18 = 0;
    v44 = v42 + 32;
    v19 = (v43 + 32);
    while (1)
    {
      if (v18 >= v12)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_33;
      }

      if (v16 == v18)
      {
        goto LABEL_40;
      }

      if (v18 >= v16)
      {
        goto LABEL_34;
      }

      v21 = *(v44 + 8 * v18);
      v22 = v19[3];
      v52 = v19[2];
      v53 = v22;
      *&v54 = *(v19 + 8);
      v23 = *v19;
      v51 = v19[1];
      v50 = v23;
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_35;
      }

      *v57 = v21;
      v25 = *v19;
      *&v57[24] = v19[1];
      v26 = v19[3];
      *&v57[40] = v19[2];
      *&v57[56] = v26;
      *&v57[72] = *(v19 + 8);
      *&v57[8] = v25;

      result = sub_192114B48(&v50, v55);
      if (!v21)
      {
        goto LABEL_40;
      }

      v47(v21, &v57[8]);
      v52 = *&v57[32];
      v53 = *&v57[48];
      v54 = *&v57[64];
      v51 = *&v57[16];
      v50 = *v57;
      sub_192033970(&v50, &qword_1EADF0390, &qword_192233918);
      v58 = v14;
      v27 = v17;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_19209ACE8(v28 > 1, v29 + 1, 1);
        v14 = v58;
      }

      *(v14 + 16) = v29 + 1;
      result = sub_1920CF508(v27, v14 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29);
      if (v45 == ++v18)
      {
        break;
      }

      v17 = v27;
      v19 = (v19 + 72);
      v12 = v49;
      v16 = v59;
      if (v20 == v49)
      {
        goto LABEL_40;
      }
    }

    v30 = v41;
    v12 = v49;
    if (v20 == v49)
    {
      goto LABEL_21;
    }

LABEL_22:
    v44 = v42 + 32;
    v31 = 72 * v24 + 32;
    while (v20 < v12)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_37;
      }

      if (v59 == v24)
      {
        goto LABEL_21;
      }

      if (v24 >= v59)
      {
        goto LABEL_38;
      }

      v32 = *(v44 + 8 * v20);
      v33 = (v43 + v31);
      v34 = *(v43 + v31 + 48);
      v55[2] = *(v43 + v31 + 32);
      v55[3] = v34;
      v56 = *(v43 + v31 + 64);
      v35 = *(v43 + v31 + 16);
      v55[0] = *(v43 + v31);
      v55[1] = v35;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_39;
      }

      v45 = v20 + 1;
      v36 = *v33;
      *&v57[24] = v33[1];
      v37 = v33[3];
      *&v57[40] = v33[2];
      *&v57[56] = v37;
      *&v57[72] = *(v33 + 8);
      *&v57[8] = v36;
      *v57 = v32;

      sub_192114B48(v55, &v50);
      v47(v32, &v57[8]);
      v52 = *&v57[32];
      v53 = *&v57[48];
      v54 = *&v57[64];
      v51 = *&v57[16];
      v50 = *v57;
      sub_192033970(&v50, &qword_1EADF0390, &qword_192233918);
      v58 = v14;
      v39 = *(v14 + 16);
      v38 = *(v14 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_19209ACE8(v38 > 1, v39 + 1, 1);
        v14 = v58;
      }

      *(v14 + 16) = v39 + 1;
      result = sub_1920CF508(v30, v14 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39);
      ++v24;
      v31 += 72;
      ++v20;
      v12 = v49;
      if (v45 == v49)
      {
        goto LABEL_21;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_192114BA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1921114E4(result, a2, a3 & 1);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_192114C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_192114C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_192114CF8()
{
  result = qword_1EADF03A8;
  if (!qword_1EADF03A8)
  {
    type metadata accessor for ControlTemplatePicker(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF03A8);
  }

  return result;
}

uint64_t sub_192114D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = sub_192228240();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v19[1] = a1;
  v12 = (v6 + *MEMORY[0x1E69E77B0]);
  v13 = *v12;
  v14 = v12[1];
  sub_192228BA0();

  v15 = swift_dynamicCast();
  v16 = *(*(a2 - 8) + 56);
  if (v15)
  {
    v17 = *(a2 - 8);
    v16(v11, 0, 1, a2);
    return (*(v17 + 32))(a3, v11, a2);
  }

  else
  {
    v16(v11, 1, 1, a2);
    (*(v8 + 8))(v11, v7);
    sub_19210BF4C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_192114F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a4;
  v6[14] = a6;
  v6[12] = a1;
  v6[15] = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[16] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v11 = *(a4 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921150A4, 0, 0);
}

uint64_t sub_1921150A4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(MEMORY[0x1E695A2C8] + 4);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_192115188;
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[16];

  return MEMORY[0x1EEDB3838](v9, v11, AssociatedConformanceWitness);
}

uint64_t sub_192115188()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 184) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_192115678;
  }

  else
  {
    v6 = sub_1921152F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1921152F8()
{
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03B0, &qword_192233A70);
  if (swift_dynamicCast())
  {
    sub_19203832C((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v3 = *(MEMORY[0x1E695A510] + 4);
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_1921154E0;
    v5 = *(v0 + 96);

    return MEMORY[0x1EEDB3D40](v5, v2, v1);
  }

  else
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    (*(v7 + 8))(v6, v8);
    sub_192115BC4(v0 + 56);
    v10 = sub_192225020();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 144);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1921154E0()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1921155DC, 0, 0);
}

uint64_t sub_1921155DC()
{
  (*(v0[19] + 8))(v0[21], v0[13]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_192115678()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1921156F0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920B3B44;

  return v9(a1);
}

uint64_t sub_1921157E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_19211580C, 0, 0);
}

uint64_t sub_19211580C()
{
  v1 = v0[5];
  v2 = (*(v0[4] + 8))(v0[3]);
  v0[6] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_19211591C;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_19211591C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_192115A94;
  }

  else
  {
    v3 = sub_192115A30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192115A30()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_192115A94()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_192115B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return sub_1921157E8(a1, v6, a3, &off_1F06B3838);
}

uint64_t sub_192115BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03B8, &qword_192233A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_192115C44()
{
  result = qword_1EADF03C0;
  if (!qword_1EADF03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF03C0);
  }

  return result;
}

id DescriptorFetchResult.init(widgetDescriptors:activityDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192036D98(a1);

  *&v3[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v6;
  *&v3[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = a2;
  *&v3[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for DescriptorFetchResult();
  return objc_msgSendSuper2(&v8, sel_init);
}

id DescriptorFetchResult.__allocating_init(widgetDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_192036D98(a1);

  *&v5[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v6;
  *&v5[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a2;
  *&v5[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = MEMORY[0x1E69E7CC0];
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id DescriptorFetchResult.init(widgetDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2)
{
  v4 = sub_192036D98(a1);

  *&v2[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v4;
  *&v2[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a2;
  *&v2[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = MEMORY[0x1E69E7CC0];
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DescriptorFetchResult();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_192115E78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "widgetDescriptors";
  v4 = 0xD000000000000013;
  if (v2 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v6 = "widgetDescriptors";
  }

  else
  {
    v6 = "controlDescriptors";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.widget.default";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "controlDescriptors";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "com.apple.widget.default";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_192115F4C()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192115FE4()
{
  *v0;
  *v0;
  sub_1922279B0();
}

uint64_t sub_192116068()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921160FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_192117028();
  *a2 = result;
  return result;
}

void sub_19211612C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "widgetDescriptors";
  v4 = 0xD000000000000013;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "controlDescriptors";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "com.apple.widget.default";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_192116184()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1921161D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192117028();
  *a1 = result;
  return result;
}

uint64_t sub_192116200(uint64_t a1)
{
  v2 = sub_192117B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19211623C(uint64_t a1)
{
  v2 = sub_192117B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192116290(void *a1)
{
  v3 = v2;
  v4 = v1;
  v53 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03E8, &qword_192233B90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192117B34();
  sub_192228B90();
  v12 = objc_opt_self();
  v49 = v4;
  v13 = *(v4 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors);
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v14 = sub_192227B60();
  v51 = 0;
  v48 = v12;
  v15 = [v12 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v51];

  v16 = v51;
  if (v15)
  {
    v17 = sub_192225080();
    v19 = v18;
  }

  else
  {
    v20 = v16;
    v21 = sub_192224F90();

    swift_willThrow();
    v17 = 0;
    v3 = 0;
    v19 = 0xF000000000000000;
  }

  v51 = v17;
  v52 = v19;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0400, &qword_192233B98);
  sub_192117B88();
  sub_1922288C0();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
    v22 = v17;
    v23 = v19;
  }

  else
  {
    v46 = v17;
    v47 = v7;
    v24 = *(v49 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors);
    sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
    v25 = sub_192227B60();
    v51 = 0;
    v26 = [v48 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v51];

    v27 = v51;
    if (v26)
    {
      v28 = sub_192225080();
      v30 = v29;
    }

    else
    {
      v31 = v27;
      v32 = sub_192224F90();

      swift_willThrow();
      v28 = 0;
      v30 = 0xF000000000000000;
    }

    v51 = v28;
    v52 = v30;
    v50 = 1;
    sub_1922288C0();
    v44 = v30;
    v45 = v28;
    v33 = *(v49 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);
    sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
    v34 = sub_192227B60();
    v51 = 0;
    v35 = [v48 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v51];

    v36 = v51;
    if (v35)
    {
      v37 = sub_192225080();
      v39 = v38;
    }

    else
    {
      v40 = v36;
      v41 = sub_192224F90();

      swift_willThrow();
      v37 = 0;
      v39 = 0xF000000000000000;
    }

    v51 = v37;
    v52 = v39;
    v50 = 2;
    sub_1922288C0();
    (*(v47 + 8))(v10, v6);
    sub_192046ED4(v45, v44);
    sub_192046ED4(v46, v19);
    v22 = v37;
    v23 = v39;
  }

  result = sub_192046ED4(v22, v23);
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1921167F0()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for DescriptorFetchResult();
  v2 = objc_msgSendSuper2(&v54, sel_description);
  v3 = sub_192227960();
  v5 = v4;

  v55 = v3;
  v56 = v5;
  v6 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors];
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v48 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors];
    }

    sub_192228340();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = sub_192228910();
  MEMORY[0x193B0A990](v8);

  MEMORY[0x193B0A990](0x7374656764697720, 0xE800000000000000);
  MEMORY[0x193B0A990](32, 0xE100000000000000);

  v51 = v1;
  if (v6 >> 62)
  {
    if (sub_192228340() > 0)
    {
      v9 = sub_192228340();
      if (!v9)
      {
        v12 = MEMORY[0x1E69E7CC0];
LABEL_17:
        v22 = MEMORY[0x193B0AB30](v12, MEMORY[0x1E69E6158]);
        v24 = v23;

        MEMORY[0x193B0A990](v22, v24);

        MEMORY[0x193B0A990](8250, 0xE200000000000000);

        goto LABEL_18;
      }

LABEL_8:
      v52 = MEMORY[0x1E69E7CC0];
      result = sub_192071C64(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v11 = 0;
      v12 = v52;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x193B0B410](v11, v6);
        }

        else
        {
          v13 = *(v6 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v14 kind];
        v16 = sub_192227960();
        v18 = v17;

        v20 = *(v52 + 16);
        v19 = *(v52 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_192071C64((v19 > 1), v20 + 1, 1);
        }

        ++v11;
        *(v52 + 16) = v20 + 1;
        v21 = v52 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      while (v9 != v11);
      v1 = v51;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_18:
  v25 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors];
  if (v25 >> 62)
  {
    if (v25 < 0)
    {
      v49 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors];
    }

    sub_192228340();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = sub_192228910();
  MEMORY[0x193B0A990](v27);

  MEMORY[0x193B0A990](0x6C6F72746E6F6320, 0xE900000000000073);
  MEMORY[0x193B0A990](8251, 0xE200000000000000);

  if (v25 >> 62)
  {
    if (sub_192228340() <= 0)
    {
      goto LABEL_35;
    }

    v28 = sub_192228340();
    if (!v28)
    {
      v30 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v40 = MEMORY[0x193B0AB30](v30, MEMORY[0x1E69E6158]);
      v42 = v41;

      MEMORY[0x193B0A990](v40, v42);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);

LABEL_35:
      v43 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors];
      if (v43 >> 62)
      {
        if (v43 < 0)
        {
          v50 = *&v1[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors];
        }

        sub_192228340();
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = sub_192228910();
      MEMORY[0x193B0A990](v45);

      MEMORY[0x193B0A990](0x7469766974636120, 0xEB00000000736569);
      MEMORY[0x193B0A990](8251, 0xE200000000000000);

      if (v43 >> 62)
      {
        if (sub_192228340() < 1)
        {
          return v55;
        }
      }

      else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        return v55;
      }

      v46 = sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
      v47 = MEMORY[0x193B0AB30](v43, v46);
      MEMORY[0x193B0A990](v47);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);

      return v55;
    }
  }

  else
  {
    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_35;
    }
  }

  v53 = MEMORY[0x1E69E7CC0];
  result = sub_192071C64(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = v53;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x193B0B410](v29, v25);
      }

      else
      {
        v31 = *(v25 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v32 kind];
      v34 = sub_192227960();
      v36 = v35;

      v38 = *(v53 + 16);
      v37 = *(v53 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_192071C64((v37 > 1), v38 + 1, 1);
      }

      ++v29;
      *(v53 + 16) = v38 + 1;
      v39 = v53 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    while (v28 != v29);
    v1 = v51;
    goto LABEL_34;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_192116DFC(uint64_t a1)
{
  sub_192117C0C(a1, v5);
  if (!v6)
  {
    sub_192030F04(v5);
    goto LABEL_6;
  }

  type metadata accessor for DescriptorFetchResult();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if (v4 == v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = sub_192117C7C(v1, v4);
  }

  return v2 & 1;
}

id DescriptorFetchResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DescriptorFetchResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptorFetchResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_192116FD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_192117074(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192117028()
{
  v0 = sub_192228700();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_192117074(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0448, &qword_192233D98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v69 - v6;
  v8 = a1[3];
  v9 = a1[4];
  v82 = a1;
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = sub_192117B34();
  sub_192228B70();
  if (!v1)
  {
    v81 = v4;
    v86 = 0;
    sub_192047340();
    sub_1922287C0();
    v79 = v3;
    v80 = v7;
    v12 = v84;
    v13 = v85;
    v14 = sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
    v15 = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
    v78 = v12;
    v16 = sub_192228020();
    if (v16)
    {
      v76 = v14;
      v24 = v16;
      v86 = 1;
      v25 = v79;
      sub_1922287C0();
      v74 = v24;
      v34 = v84;
      v33 = v85;
      v35 = sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
      v75 = v34;
      v36 = sub_192228020();
      v77 = v13;
      if (v36)
      {
        v73 = v36;
        LOBYTE(v84) = 2;
        if ((sub_192228800() & 1) == 0)
        {
          v49 = MEMORY[0x1E69E7CC0];
LABEL_15:
          v50 = type metadata accessor for DescriptorFetchResult();
          v51 = objc_allocWithZone(v50);
          v52 = sub_192036D98(v74);

          *&v51[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v52;
          *&v51[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v49;
          *&v51[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v73;
          v83.receiver = v51;
          v83.super_class = v50;
          v10 = objc_msgSendSuper2(&v83, sel_init);
          sub_192039140(v75, v33);
          sub_192039140(v78, v77);
          (*(v81 + 8))(v80, v25);
          __swift_destroy_boxed_opaque_existential_1(v82);
          return v10;
        }

        v86 = 2;
        sub_1922287C0();
        v53 = v84;
        v54 = v85;
        v72 = sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
        v55 = sub_192228020();
        v49 = v55;
        if (v55)
        {
          sub_192039140(v53, v54);
          goto LABEL_15;
        }

        v70 = v54;
        v71 = v53;
        v76 = v33;

        v62 = sub_1922284A0();
        v10 = swift_allocError();
        v64 = v63;
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
        v66 = v72;
        *v64 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_19222B480;
        *(v67 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v67 + 64) = v11;
        *(v67 + 32) = 2;
        sub_192228480();
        v68 = *(*(v62 - 8) + 104);
        LODWORD(v74) = *MEMORY[0x1E69E6B08];
        v68(v64);
        swift_willThrow();
        v56 = sub_1922284A0();
        swift_allocError();
        v58 = v57;
        v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
        *v58 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_19222B480;
        *(v60 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v60 + 64) = v11;
        *(v60 + 32) = 2;
        v61 = v10;
        sub_192228480();
        (*(*(v56 - 8) + 104))(v58, v74, v56);
        swift_willThrow();
        sub_192039140(v71, v70);
      }

      else
      {
        v76 = v33;

        v43 = sub_1922284A0();
        v10 = swift_allocError();
        v45 = v44;
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
        *v45 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_19222B480;
        *(v47 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v47 + 64) = v11;
        *(v47 + 32) = 1;
        sub_192228480();
        v48 = *(*(v43 - 8) + 104);
        LODWORD(v74) = *MEMORY[0x1E69E6B08];
        v48(v45);
        swift_willThrow();
        v37 = sub_1922284A0();
        swift_allocError();
        v39 = v38;
        v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
        *v39 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_19222B480;
        *(v41 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
        *(v41 + 64) = v11;
        *(v41 + 32) = 1;
        v42 = v10;
        sub_192228480();
        (*(*(v37 - 8) + 104))(v39, v74, v37);
        swift_willThrow();
      }

      sub_192039140(v75, v76);
      sub_192039140(v78, v77);
      v22 = v10;
    }

    else
    {
      v77 = v13;
      v26 = sub_1922284A0();
      v27 = swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v29 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_19222B480;
      *(v31 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
      *(v31 + 64) = v11;
      *(v31 + 32) = 0;
      sub_192228480();
      v32 = *(*(v26 - 8) + 104);
      LODWORD(v76) = *MEMORY[0x1E69E6B08];
      v32(v29);
      swift_willThrow();
      v17 = sub_1922284A0();
      swift_allocError();
      v10 = v18;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v10 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_19222B480;
      *(v20 + 56) = &type metadata for DescriptorFetchResult.CodingKeys;
      *(v20 + 64) = v11;
      *(v20 + 32) = 0;
      v21 = v27;
      sub_192228480();
      (*(*(v17 - 8) + 104))(v10, v76, v17);
      swift_willThrow();
      sub_192039140(v78, v77);
      v22 = v27;
    }

    (*(v81 + 8))(v80, v79);
  }

  __swift_destroy_boxed_opaque_existential_1(v82);
  return v10;
}

unint64_t sub_192117B34()
{
  result = qword_1EADF03F0;
  if (!qword_1EADF03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF03F0);
  }

  return result;
}

unint64_t sub_192117B88()
{
  result = qword_1EADF0408;
  if (!qword_1EADF0408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0400, &qword_192233B98);
    sub_1920593E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0408);
  }

  return result;
}

uint64_t sub_192117C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192117C7C(uint64_t a1, uint64_t a2)
{
  if ((sub_1920E126C(*(a1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors), *(a2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors)) & 1) == 0 || (sub_1920E1280(*(a1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors), *(a2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);
  v5 = *(a2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);

  return sub_1920E14FC(v4, v5);
}

unint64_t sub_192117E20()
{
  result = qword_1EADF0430;
  if (!qword_1EADF0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0430);
  }

  return result;
}

unint64_t sub_192117E78()
{
  result = qword_1EADF0438;
  if (!qword_1EADF0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0438);
  }

  return result;
}

unint64_t sub_192117ED0()
{
  result = qword_1EADF0440;
  if (!qword_1EADF0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0440);
  }

  return result;
}

id sub_192117F24()
{
  type metadata accessor for InfoPlistReader();
  v0 = swift_allocObject();
  result = sub_192117F60();
  qword_1EAE00888 = v0;
  return result;
}

id sub_192117F60()
{
  v1 = v0;
  v2 = sub_192225A40();
  v139 = *(v2 - 8);
  v140 = v2;
  v3 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1922259F0();
  v6 = *(v138 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1922261D0();
  v135 = *(v9 - 8);
  v136 = v9;
  v10 = *(v135 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v142 = v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v143 = v129 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = v129 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v129 - v17;
  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v21 = [v20 infoDictionary];

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = sub_192227840();

  if (!*(v22 + 16) || (v23 = sub_1920440AC(0xD00000000000001BLL, 0x800000019224AD70), (v24 & 1) == 0))
  {

    v21 = 0;
LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  sub_19202A98C(*(v22 + 56) + 32 * v23, v146);

  v25 = swift_dynamicCast();
  if (v25)
  {
    v21 = v144;
  }

  else
  {
    v21 = 0;
  }

  if (v25)
  {
    v26 = v145;
  }

  else
  {
    v26 = 0;
  }

LABEL_12:
  v27 = [v19 mainBundle];
  v28 = [v27 infoDictionary];

  if (!v28)
  {
    goto LABEL_30;
  }

  v29 = sub_192227840();

  if (!*(v29 + 16) || (v30 = sub_1920440AC(0xD000000000000011, 0x800000019224AD50), (v31 & 1) == 0))
  {

LABEL_30:
    v34 = 0;
    v33 = 0;
    if (v26)
    {
      goto LABEL_21;
    }

LABEL_31:
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    return v1;
  }

  sub_19202A98C(*(v29 + 56) + 32 * v30, v146);

  v32 = swift_dynamicCast();
  v33 = v145;
  if (v32)
  {
    v34 = v144;
  }

  else
  {
    v34 = 0;
  }

  if (!v32)
  {
    v33 = 0;
  }

  if (!(v26 | v33))
  {
    goto LABEL_31;
  }

LABEL_21:
  v129[1] = v21;
  v130 = v33;
  v129[0] = v34;
  v134 = v1;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v35 = *MEMORY[0x1E697DBB8];
  v36 = *(v6 + 104);
  v38 = v137;
  v37 = v138;
  v36(v137, v35, v138);
  v39 = v36;
  sub_192225E60();
  v132 = *MEMORY[0x1E697DE20];
  v40 = *(v139 + 104);
  v139 = v26;
  v41 = v140;
  v40(v5);
  v133 = v18;
  sub_192225E90();
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v39(v38, v35, v37);
  v42 = v39;
  sub_192225E60();
  v131 = *MEMORY[0x1E697DE28];
  v40(v5);
  sub_192225E90();
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v43 = *MEMORY[0x1E697DBA8];
  v42(v38, v43, v37);
  sub_192225E60();
  (v40)(v5, v132, v41);
  sub_192225E90();
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v42(v38, v43, v37);
  sub_192225E60();
  v44 = v139;
  (v40)(v5, v131, v41);
  sub_192225E90();
  v45 = 0x1E698E000uLL;
  if (!v44)
  {
    *(v134 + 16) = 0;
    v47 = v133;
    v59 = v141;
    goto LABEL_33;
  }

  v46 = [objc_allocWithZone(MEMORY[0x1E69942E8]) init];
  sub_192227300();
  v47 = v133;
  sub_192227270();
  v49 = v48;
  sub_1922272A0();
  v51 = v50;
  sub_1922272C0();
  v53 = v52;
  sub_1922272B0();
  v55 = v54;
  v56 = objc_opt_self();
  result = [v56 colorWithRed:v51 green:v53 blue:v55 alpha:v49];
  if (!result)
  {
    __break(1u);
    goto LABEL_44;
  }

  v58 = result;
  [v46 addColor:result forColorScheme:1 displayGamut:1];

  v59 = v141;
  sub_192227270();
  v61 = v60;
  sub_1922272A0();
  v63 = v62;
  sub_1922272C0();
  v65 = v64;
  sub_1922272B0();
  result = [v56 colorWithRed:v63 green:v65 blue:v66 alpha:v61];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v67 = result;
  [v46 addColor:result forColorScheme:1 displayGamut:0];

  sub_192227270();
  v69 = v68;
  sub_1922272A0();
  v71 = v70;
  sub_1922272C0();
  v73 = v72;
  sub_1922272B0();
  result = [v56 colorWithRed:v71 green:v73 blue:v74 alpha:v69];
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v75 = result;
  [v46 addColor:result forColorScheme:2 displayGamut:1];

  sub_192227270();
  v77 = v76;
  sub_1922272A0();
  v79 = v78;
  sub_1922272C0();
  v81 = v80;
  sub_1922272B0();
  result = [v56 colorWithRed:v79 green:v81 blue:v82 alpha:v77];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v83 = result;
  [v46 addColor:result forColorScheme:2 displayGamut:0];

  [v46 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_192118CFC();
  v84 = swift_dynamicCast();
  v85 = v144;
  if (!v84)
  {
    v85 = 0;
  }

  *(v134 + 16) = v85;
  v45 = 0x1E698E000;
LABEL_33:
  if (!v130)
  {
    v127 = v136;
    v128 = *(v135 + 8);
    v128(v142, v136);
    v128(v143, v127);
    v128(v59, v127);
    v128(v47, v127);
    v1 = v134;
    *(v134 + 24) = 0;
    return v1;
  }

  v86 = [objc_allocWithZone(MEMORY[0x1E69942E8]) init];
  sub_192227300();
  sub_192227270();
  v88 = v87;
  sub_1922272A0();
  v90 = v89;
  sub_1922272C0();
  v92 = v91;
  sub_1922272B0();
  v94 = v93;
  v95 = *(v45 + 1616);
  v96 = objc_opt_self();
  result = [v96 colorWithRed:v90 green:v92 blue:v94 alpha:v88];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v97 = result;
  [v86 addColor:result forColorScheme:1 displayGamut:1];

  sub_192227270();
  v99 = v98;
  sub_1922272A0();
  v101 = v100;
  sub_1922272C0();
  v103 = v102;
  sub_1922272B0();
  result = [v96 colorWithRed:v101 green:v103 blue:v104 alpha:v99];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v105 = result;
  [v86 addColor:result forColorScheme:1 displayGamut:0];

  sub_192227270();
  v107 = v106;
  sub_1922272A0();
  v109 = v108;
  sub_1922272C0();
  v111 = v110;
  sub_1922272B0();
  result = [v96 colorWithRed:v109 green:v111 blue:v112 alpha:v107];
  v113 = v142;
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v114 = result;
  [v86 addColor:result forColorScheme:2 displayGamut:1];

  sub_192227270();
  v116 = v115;
  sub_1922272A0();
  v118 = v117;
  sub_1922272C0();
  v120 = v119;
  sub_1922272B0();
  result = [v96 colorWithRed:v118 green:v120 blue:v121 alpha:v116];
  if (result)
  {
    v122 = result;
    [v86 addColor:result forColorScheme:2 displayGamut:0];

    [v86 copy];
    sub_1922282B0();

    swift_unknownObjectRelease();
    v123 = v136;
    v124 = *(v135 + 8);
    v124(v113, v136);
    v124(v143, v123);
    v124(v59, v123);
    v124(v47, v123);
    sub_192118CFC();
    v125 = swift_dynamicCast();
    v126 = v144;
    if (!v125)
    {
      v126 = 0;
    }

    v1 = v134;
    *(v134 + 24) = v126;
    return v1;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_192118C98()
{

  return swift_deallocClassInstance();
}

unint64_t sub_192118CFC()
{
  result = qword_1EADF0458;
  if (!qword_1EADF0458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADF0458);
  }

  return result;
}

uint64_t ElevatedMemoryRequestAssertion.reason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ElevatedMemoryRequestAssertion.__allocating_init(widget:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_1EADF0460;
  type metadata accessor for ElevatedMemoryRequestAssertion();
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();

  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  *(v7 + 56) = v8;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  return v7;
}

uint64_t sub_192118F20()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x800000019224AD90);
  MEMORY[0x193B0A990](*(v0 + 24), *(v0 + 32));
  MEMORY[0x193B0A990](0x746567646977202CLL, 0xE90000000000003DLL);
  v1 = [*(v0 + 16) description];
  v2 = sub_192227960();
  v4 = v3;

  MEMORY[0x193B0A990](v2, v4);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_192119010()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  if ((*(v0 + 49) & 1) == 0 && *(v0 + 48) != 1)
  {
    *(v0 + 48) = 1;
    v3 = *(v0 + 40);
    if (*(v3 + 40) == 1)
    {
      v4 = *(v3 + 32);
      v5 = *(v4 + 16);
      v6 = *(v0 + 40);

      os_unfair_lock_lock(v5);
      sub_192119964(v0, v3);
      os_unfair_lock_unlock(*(v4 + 16));
    }
  }

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_192119104()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  if (*(v0 + 48) == 1)
  {
    *(v0 + 48) = 256;
    v3 = *(v0 + 40);
    if (*(v3 + 40) == 1)
    {
      v4 = *(v3 + 32);
      v5 = *(v4 + 16);
      v6 = *(v0 + 40);

      os_unfair_lock_lock(v5);
      sub_192119B88(v3, v0);
      os_unfair_lock_unlock(*(v4 + 16));
    }
  }

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t ElevatedMemoryRequestAssertion.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t ElevatedMemoryRequestAssertion.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_192119284()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1921192DC()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_192119314()
{
  type metadata accessor for MemoryRequestsController();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  *(v0 + 32) = v1;
  result = swift_beginAccess();
  *(v0 + 40) = byte_1EADED1A0;
  qword_1EADF0460 = v0;
  return result;
}

uint64_t static MemoryRequestsController.shared.getter()
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MemoryRequestsController.shared.setter(uint64_t a1)
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADF0460 = a1;
}

uint64_t (*static MemoryRequestsController.shared.modify())()
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_192119558@<X0>(void *a1@<X8>)
{
  if (qword_1EADEE928 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EADF0460;
}

uint64_t sub_1921195D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EADEE928;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADF0460 = v1;
}

uint64_t MemoryRequestsController.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  [*(v0 + 24) invalidate];
  os_unfair_lock_unlock(*(v1 + 16));

  v3 = *(v0 + 16);

  v4 = *(v0 + 32);

  return v0;
}

uint64_t MemoryRequestsController.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  [*(v0 + 24) invalidate];
  os_unfair_lock_unlock(*(v1 + 16));

  v3 = *(v0 + 16);

  v4 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_192119768()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);

    os_unfair_lock_lock(v2);
    swift_beginAccess();
    v3 = *(v0 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
LABEL_22:
      v4 = sub_192228340();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 != v5)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193B0B410](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      Strong = swift_weakLoadStrong();

      ++v5;
      if (Strong)
      {
        MEMORY[0x193B0AB00](v10);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_192227BB0();
        }

        sub_192227C00();
        v6 = v15;
        v5 = v8;
      }
    }

    os_unfair_lock_unlock(*(v1 + 16));

    v14 = sub_1920968C8(v6);

    return v14;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];

    return sub_1920968C8(v12);
  }
}

uint64_t sub_192119964(uint64_t a1, uint64_t a2)
{
  if (qword_1EADEE9A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE008A8);

  v4 = sub_192225890();
  v5 = sub_192227FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = sub_192118F20();
    v10 = sub_19202B8CC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_192028000, v4, v5, "Adding elevated memory assertion: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  type metadata accessor for WeakAssertion();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x193B0AB00](v11);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_192227BB0();
  }

  sub_192227C00();
  swift_endAccess();
  sub_19211A024();
}

void sub_192119B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
LABEL_21:
    v7 = sub_192228340();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  v20[7] = v3;
  v3 = v6 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; ; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193B0B410](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (Strong == a2)
      {
        break;
      }
    }

    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v11 == v7)
    {

      return;
    }
  }

  if (qword_1EADEE9A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1922258B0();
  __swift_project_value_buffer(v12, qword_1EAE008A8);

  v13 = sub_192225890();
  v14 = sub_192227FB0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136446210;
    v17 = sub_192118F20();
    v19 = sub_19202B8CC(v17, v18, v20);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_192028000, v13, v14, "Removing elevated memory assertion: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x193B0C7F0](v16, -1, -1);
    MEMORY[0x193B0C7F0](v15, -1, -1);
  }

  swift_beginAccess();
  sub_192119F94(i);
  swift_endAccess();

  sub_19211A024();
}

uint64_t sub_192119F94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_19205E96C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_19211A024()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 32) + 16));
  swift_beginAccess();
  v2 = *(v0 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_26:
    v3 = sub_192228340();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193B0B410](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v15;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_weakLoadStrong())
      {

        sub_1922284F0();
        v7 = *(v15 + 16);
        sub_192228530();
        sub_192228540();
        sub_192228500();
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v9 = *(v1 + 16);
  *(v1 + 16) = v8;

  v10 = *(v1 + 16);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v14 = *(v1 + 16);
    }

    v11 = sub_192228340();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 <= 0)
  {
    [*(v1 + 24) invalidate];
    v12 = 0;
  }

  else
  {
    if (*(v1 + 24))
    {
      return;
    }

    v12 = sub_19211A208();
  }

  v13 = *(v1 + 24);
  *(v1 + 24) = v12;
}

id sub_19211A208()
{
  v29[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() currentProcess];
  v1 = sub_192227930();
  v2 = sub_192227930();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19222C680;
  *(v4 + 32) = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v6 = v0;
  v7 = v3;
  v8 = sub_192227930();
  sub_19211A610();
  v9 = sub_192227B60();

  v10 = [v5 initWithExplanation:v8 target:v6 attributes:v9];

  v29[0] = 0;
  if ([v10 acquireWithError_])
  {
    v11 = qword_1EADEE9A8;
    v12 = v29[0];
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_1922258B0();
    __swift_project_value_buffer(v13, qword_1EAE008A8);
    v14 = sub_192225890();
    v15 = sub_192227FB0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_192028000, v14, v15, "Acquired high memory assertion.", v16, 2u);
      MEMORY[0x193B0C7F0](v16, -1, -1);
    }
  }

  else
  {
    v17 = v29[0];
    v18 = sub_192224F90();

    swift_willThrow();
    if (qword_1EADEE9A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1922258B0();
    __swift_project_value_buffer(v19, qword_1EAE008A8);
    v20 = v18;
    v21 = sub_192225890();
    v22 = sub_192227F90();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_192028000, v21, v22, "Unable to acquire high memory assertion. Error: %{public}@", v23, 0xCu);
      sub_1920FB918(v24);
      MEMORY[0x193B0C7F0](v24, -1, -1);
      MEMORY[0x193B0C7F0](v23, -1, -1);
    }

    else
    {
    }

    v10 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t sub_19211A610()
{
  result = qword_1ED748560;
  if (!qword_1ED748560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED748560);
  }

  return result;
}

uint64_t dispatch thunk of WidgetRelevanceProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3);
}

uint64_t sub_19211A7B0()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19211A838()
{
  *v0;
  sub_1922279B0();
}

uint64_t sub_19211A8AC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19211A930(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x647261646E617473;
  }

  else
  {
    v4 = 0x6573616572636E69;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x647261646E617473;
  }

  else
  {
    v6 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_19211A9DC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (v2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6573616572636E69;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_19211AA9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x647261646E617473;
  }

  else
  {
    v4 = 0x6573616572636E69;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x647261646E617473;
  }

  else
  {
    v6 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_19211AB5C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (v2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6573616572636E69;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19211AC08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920A59A8;

  return TimelineProvider.relevances()(a1);
}

uint64_t sub_19211ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t TimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  v6 = *(a3 + 48);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 32) = v8;
  *v8 = v3;
  v8[1] = sub_19211AEB0;

  return v10(v3 + 16, a2, a3);
}

uint64_t sub_19211AEB0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_19211AFAC, 0, 0);
}

uint64_t dispatch thunk of TimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3);
}

uint64_t sub_19211B25C(uint64_t a1, uint64_t a2)
{
  result = sub_19202DC80();
  if ((result & 1) == 0)
  {
    v4 = *(a2 + 48);
    v5 = *(a2 + 56);
    return v4();
  }

  return result;
}

uint64_t sub_19211B2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_192227BE0();
  *(v4 + 16) = 1024;
  bzero((v4 + 32), 0x400uLL);
  if (MEMORY[0x193B08880]([v2 fileDescriptor], 50, v4 + 32) == -1)
  {
    v7 = 1;
    goto LABEL_5;
  }

  sub_192227920();
  v6 = v5;

  if (v6)
  {
    sub_192224FD0();
    v7 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:
  v8 = sub_192225020();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void sub_19211B3F8()
{
  if (!qword_1EADEDE98)
  {
    v0 = sub_192225A00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEDE98);
    }
  }
}

void sub_19211B448(uint64_t a1)
{
  sub_19211B3F8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_19211B4D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 57) & ~v6);
      }

      v15 = *(a1 + 56);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_19211B654(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 57) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 57] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[56] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[56] = -a2;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_19211B8F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19211B914(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

double sub_19211B95C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_19211B9CC@<X0>(uint64_t a1@<X8>)
{
  sub_192101B78();
  result = sub_1922261E0();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

uint64_t sub_19211BA38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_192225C70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = *(a1 + 36);
  sub_19211BBDC(v17);
  v12 = *(a1 + 24);
  sub_1922271D0();
  v16[1] = v12;
  v16[2] = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_1921BB14C(v8, v3, WitnessTable);
  v14 = *(v4 + 8);
  v14(v8, v3);
  sub_1921BB14C(v10, v3, WitnessTable);
  return (v14)(v10, v3);
}

uint64_t sub_19211BBDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 6);
  if (*(v1 + 56) == 1)
  {
    v13 = *(v1 + 6);
  }

  else
  {
    v14 = *v1;
    v17 = v9;
    v18 = v11;
    v16 = v10;

    sub_192227FA0();
    v15 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19211C744(v14, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v12, 0);
    result = (*(v4 + 8))(v8, v3);
    v10 = v19;
    v9 = v20;
    v11 = v21;
    v13 = v22;
  }

  *a1 = v10;
  *(a1 + 16) = v9;
  *(a1 + 32) = v11;
  *(a1 + 48) = v13;
  return result;
}

uint64_t sub_19211BD80()
{
  v0 = sub_192226280();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_19211BBDC(&v3);
  sub_192226270();
  sub_19211BBDC(v4);
  sub_192226220();
  return sub_192226210();
}

uint64_t sub_19211BE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0470, &unk_192234400);
  v4 = *(a1 + 16);
  sub_19211C75C(&qword_1EADEDE78);
  v29 = sub_192225B80();
  v33 = *(v29 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v29 - v6;
  v7 = sub_192226230();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_192226310();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_192225C70();
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v29 - v19;
  sub_19211BD80();
  sub_192226240();
  v20 = *(a1 + 24);
  v21 = sub_19211C2A4(v13, v4, v20);
  (*(v10 + 8))(v13, v9);
  v36 = v4;
  v37 = v20;
  v38 = v2;
  v22 = v30;
  (v21)(sub_19211C750, v35);

  sub_19211BBDC(v43);
  v41 = sub_19211C75C(&qword_1EADEDE70);
  v42 = v20;
  v23 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_1922271D0();
  (*(v33 + 8))(v22, v23);
  v39 = WitnessTable;
  v40 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  v26 = v31;
  sub_1921BB14C(v18, v14, v25);
  v27 = *(v32 + 8);
  v27(v18, v14);
  sub_1921BB14C(v26, v14, v25);
  return (v27)(v26, v14);
}

uint64_t (*sub_19211C2A4(uint64_t a1, uint64_t a2, uint64_t a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_192226310();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  return sub_19211C7AC;
}

uint64_t sub_19211C3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_192226310();
  v11 = sub_19211C848();
  return sub_19211C45C(a1, a2, v10, a3, v11, a4, a5);
}

uint64_t sub_19211C45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_192225A20();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  (*(v13 + 16))(v16, v7, a3);
  sub_192225A30();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = v20[0];
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  return sub_192225B90();
}

uint64_t sub_19211C604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicIslandExpandedContainer();
  sub_1921BB14C(a1 + *(v10 + 36), a2, a3);
  sub_1921BB14C(v9, a2, a3);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_19211C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_19211C75C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0470, &unk_192234400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19211C7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(*(sub_192226310() - 8) + 80);

  return sub_19211C3DC(a1, a2, v7, v8, a3);
}

unint64_t sub_19211C848()
{
  result = qword_1EADEDD98;
  if (!qword_1EADEDD98)
  {
    sub_192226310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD98);
  }

  return result;
}

uint64_t sub_19211C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v18 - v14;
  v13();
  sub_1921BB14C(v12, a4, a6);
  v16 = *(v8 + 8);
  v16(v12, a4);
  sub_1921BB14C(v15, a4, a6);
  return (v16)(v15, a4);
}

uint64_t sub_19211CA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_19202CFFC(a3, v27 - v11, &qword_1EADEEDF8, &qword_19222B5B0);
  v13 = sub_192227CF0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_192033970(v12, &qword_1EADEEDF8, &qword_19222B5B0);
  }

  else
  {
    sub_192227CE0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_192227C70();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1922279A0() + 32;
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

      sub_192033970(a3, &qword_1EADEEDF8, &qword_19222B5B0);

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

  sub_192033970(a3, &qword_1EADEEDF8, &qword_19222B5B0);
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

uint64_t TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v4[6] = sub_192227CC0();
  v4[7] = sub_192227CB0();
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_19211CE14;

  return v10();
}

uint64_t sub_19211CE14(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 72) = a1;

  v6 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19211CF58, v6, v5);
}

uint64_t sub_19211CF58()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v11 = *(v0 + 32);

  *(v0 + 16) = v1;
  v3 = swift_task_alloc();
  *(v3 + 16) = v11;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0478, &unk_192234418);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  v6 = sub_192121A04(&qword_1EADF0480, &qword_1EADF0478, &unk_192234418);
  v7 = sub_19204301C(sub_19211D4F0, v3, v4, v11, v5, v6, MEMORY[0x1E69E7288], v0 + 24);
  v8 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t TimelineProviderPreviewSource.unwrapContent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_19211DC4C(AssociatedTypeWitness, a1);
  if (!v4)
  {
    return sub_19211D6F8(a4, a2);
  }

  return result;
}

uint64_t TimelineEntryPreviewSource.makeWidget.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_19211D250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_192228240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  sub_192033A64(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
  v13 = swift_dynamicCast();
  v14 = *(*(a2 - 8) + 56);
  if (v13)
  {
    v15 = *(a2 - 8);
    v14(v12, 0, 1, a2);
    return (*(v15 + 32))(a4, v12, a2);
  }

  else
  {
    v14(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v27 = a2;
    v17 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
    *(&v26 + 1) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v18, v17);
    sub_192121A58();
    v20 = swift_allocError();
    v22 = v21;
    strcpy(v21, "Widget preview");
    *(v21 + 15) = -18;
    strcpy((v21 + 16), "timeline entry");
    *(v21 + 31) = -18;
    sub_19203BEDC(&v27, (v21 + 32));
    v23 = v26;
    *(v22 + 64) = v25;
    *(v22 + 80) = v23;
    result = swift_willThrow();
    *a3 = v20;
  }

  return result;
}

uint64_t sub_19211D538()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _s9WidgetKit26TimelineEntryPreviewSourceV13contentDomain21DeveloperToolsSupport0ef7ContentH0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6966798];
  v3 = sub_192225720();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t TimelineProviderPreviewSource.makeWidget.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *TimelineProviderPreviewSource.intent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_19211D6F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v18 - v9;
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v11(v21, v8);
  sub_19202A98C(v21, &v19);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    v13 = *(a1 - 8);
    (*(v13 + 56))(v10, 0, 1, a1);
    return (*(v13 + 32))(a2, v10, a1);
  }

  else
  {
    (*(*(a1 - 8) + 56))(v10, 1, 1, a1);
    (*(v6 + 8))(v10, v5);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v19 = a1;
    sub_19202A98C(v21, v18);
    sub_192121A58();
    swift_allocError();
    v16 = v15;
    strcpy(v15, "Widget preview");
    *(v15 + 15) = -18;
    *(v15 + 16) = 0xD000000000000011;
    *(v15 + 24) = 0x800000019224B190;
    sub_19203BEDC(&v19, (v15 + 32));
    v17 = v18[1];
    *(v16 + 64) = v18[0];
    *(v16 + 80) = v17;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t TimelineProviderPreviewSource.unwrapContent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_19211DA00(AssociatedTypeWitness, &v9);
  if (!v3)
  {
    v4 = v9;
    sub_19211D6F8(a3, a1);
  }

  return v4;
}

id sub_19211DA00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = *(v2 + 24);
  *&v19 = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0508, &qword_192234998);
  v12 = swift_dynamicCast();
  v13 = *(*(a1 - 8) + 56);
  if (v12)
  {
    v14 = *(a1 - 8);
    v13(v9, 0, 1, a1);
    return (*(v14 + 32))(a2, v9, a1);
  }

  else
  {
    v13(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v19 = a1;
    if (v10)
    {
      v16 = sub_19211014C();
    }

    else
    {
      v16 = 0;
    }

    sub_192121A58();
    swift_allocError();
    v18 = v17;
    strcpy(v17, "Widget preview");
    *(v17 + 15) = -18;
    *(v17 + 16) = 0x746E65746E69;
    *(v17 + 24) = 0xE600000000000000;
    sub_19203BEDC(&v19, (v17 + 32));
    v18[8] = v10;
    v18[9] = 0;
    v18[10] = 0;
    v18[11] = v16;
    swift_willThrow();
    return v11;
  }
}

uint64_t sub_19211DC4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_192228240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  sub_19202CFFC(v2 + 32, v24, &qword_1EADF0488, &unk_192234428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0488, &unk_192234428);
  v10 = swift_dynamicCast();
  v11 = *(*(a1 - 8) + 56);
  if (v10)
  {
    v12 = *(a1 - 8);
    v11(v9, 0, 1, a1);
    return (*(v12 + 32))(a2, v9, a1);
  }

  else
  {
    v11(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v22 = a1;
    sub_19202CFFC(v2 + 32, v24, &qword_1EADF0488, &unk_192234428);
    v14 = v25;
    if (v25)
    {
      v15 = __swift_project_boxed_opaque_existential_1(v24, v25);
      *(&v21 + 1) = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v15, v14);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      sub_192033970(v24, &qword_1EADF0488, &unk_192234428);
      v20 = 0u;
      v21 = 0u;
    }

    sub_192121A58();
    swift_allocError();
    v18 = v17;
    strcpy(v17, "Widget preview");
    *(v17 + 15) = -18;
    *(v17 + 16) = 0x65746E6920707061;
    *(v17 + 24) = 0xEA0000000000746ELL;
    sub_19203BEDC(&v22, (v17 + 32));
    v19 = v21;
    *(v18 + 64) = v20;
    *(v18 + 80) = v19;
    return swift_willThrow();
  }
}

void *sub_19211DF2C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_19211DF54(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v3[5] = sub_192227CC0();
  v3[6] = sub_192227CB0();
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_19211E064;

  return v9();
}

uint64_t sub_19211E064(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 64) = a1;

  v6 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19211E1A8, v6, v5);
}

uint64_t sub_19211E1A8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  v0[2] = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04C0, &qword_192234930);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  v7 = sub_192121A04(&qword_1EADF04C8, &qword_1EADF04C0, &qword_192234930);
  v8 = sub_19204301C(sub_1921219E4, v4, v5, v3, v6, v7, MEMORY[0x1E69E7288], (v0 + 3));
  v9 = v0[8];

  v10 = v0[1];

  return v10(v8);
}

uint64_t sub_19211E330@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_192228240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  sub_192033A64(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04D0, &qword_192234938);
  v13 = swift_dynamicCast();
  v14 = *(*(a2 - 8) + 56);
  if (v13)
  {
    v15 = *(a2 - 8);
    v14(v12, 0, 1, a2);
    return (*(v15 + 32))(a4, v12, a2);
  }

  else
  {
    v14(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v27 = a2;
    v17 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
    *(&v26 + 1) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v18, v17);
    sub_192121A58();
    v20 = swift_allocError();
    v22 = v21;
    strcpy(v21, "Widget preview");
    *(v21 + 15) = -18;
    *(v21 + 16) = 0x636E6176656C6572;
    *(v21 + 24) = 0xEF7972746E652065;
    sub_19203BEDC(&v27, (v21 + 32));
    v23 = v26;
    *(v22 + 64) = v25;
    *(v22 + 80) = v23;
    result = swift_willThrow();
    *a3 = v20;
  }

  return result;
}

uint64_t sub_19211E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 24);
  *(v4 + 64) = sub_192227CC0();
  v11 = *(v3 + 1);
  v12 = *(v3 + 2);
  v8 = sub_192227CB0();
  *(v4 + 16) = v6;
  *(v4 + 72) = v8;
  *(v4 + 24) = v11;
  *(v4 + 40) = v7;
  *(v4 + 48) = v12;
  v9 = swift_task_alloc();
  *(v4 + 80) = v9;
  *v9 = v4;
  v9[1] = sub_19211E6BC;

  return sub_19211DF54(a3, a3);
}

uint64_t sub_19211E6BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v16 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_192227C70();
    v10 = v9;
    v11 = sub_19211E878;
  }

  else
  {
    v12 = v4[8];
    v13 = v4[9];
    v4[12] = a1;
    v8 = sub_192227C70();
    v10 = v14;
    v11 = sub_19211E810;
  }

  return MEMORY[0x1EEE6DFA0](v11, v8, v10);
}

uint64_t sub_19211E810()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_19211E878()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_19211E8F8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

id sub_19211E960()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_19211E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 144) = a3;
  *(v5 + 152) = a4;
  *(v5 + 136) = a2;
  v7 = *(*(type metadata accessor for TimelineProviderContext() - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 168) = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  *(v5 + 176) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  *(v5 + 200) = v11;
  v12 = *(v11 - 8);
  *(v5 + 208) = v12;
  *(v5 + 216) = *(v12 + 64);
  *(v5 + 224) = swift_task_alloc();
  v13 = sub_192228240();
  *(v5 + 232) = v13;
  v14 = *(v13 - 8);
  *(v5 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v16 = *(a3 - 8);
  *(v5 + 256) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v18 = *(v4 + 48);
  *(v5 + 272) = *(v4 + 32);
  *(v5 + 288) = v18;
  sub_192227CC0();
  *(v5 + 304) = sub_192227CB0();
  v20 = sub_192227C70();
  *(v5 + 312) = v20;
  *(v5 + 320) = v19;

  return MEMORY[0x1EEE6DFA0](sub_19211EC38, v20, v19);
}

uint64_t sub_19211EC38()
{
  v33 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 144);
  (*(v0 + 272))();
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 288);
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 248);
    v8 = *(v0 + 144);
    (*(v6 + 56))(v7, 0, 1, v8);
    (*(v6 + 32))(v5, v7, v8);
    v31 = (v4 + *v4);
    v9 = v4[1];
    v10 = swift_task_alloc();
    *(v0 + 328) = v10;
    *v10 = v0;
    v10[1] = sub_19211EF38;
    v11 = *(v0 + 296);

    return v31(v0 + 112);
  }

  else
  {
    v13 = *(v0 + 304);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    v18 = *(v0 + 232);
    v19 = *(v0 + 240);
    v20 = *(v0 + 144);

    (*(v17 + 56))(v16, 1, 1, v20);
    (*(v19 + 8))(v16, v18);
    *(v0 + 72) = swift_getMetatypeMetadata();
    *(v0 + 48) = v20;
    v15(v32);
    sub_192121A58();
    swift_allocError();
    v22 = v21;
    strcpy(v21, "Widget preview");
    *(v21 + 15) = -18;
    *(v21 + 16) = 0xD000000000000012;
    *(v21 + 24) = 0x800000019224B140;
    sub_19203BEDC((v0 + 48), (v21 + 32));
    v23 = v32[1];
    *(v22 + 64) = v32[0];
    *(v22 + 80) = v23;
    swift_willThrow();
    v24 = *(v0 + 264);
    v25 = *(v0 + 248);
    v26 = *(v0 + 224);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 160);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_19211EF38()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v6 = *v0;

  v3 = *(v1 + 320);
  v4 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_19211F058, v4, v3);
}

uint64_t sub_19211F058()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v38 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04E0, &unk_192234948);
  sub_192219A34(v1, v1, (v0 + 104));

  v3 = *(v0 + 104);
  *(v0 + 120) = sub_192227820();
  v4 = type metadata accessor for WidgetRelevance();
  *(v0 + 336) = sub_192219B84(v4);

  if (sub_192227C10())
  {
    v5 = *(v0 + 336);
    v6 = *(v0 + 200);
    v7 = sub_192227BF0();
    sub_192227BA0();
    if (v7)
    {
      (*(*(v0 + 208) + 16))(*(v0 + 224), *(v0 + 336) + ((*(*(v0 + 208) + 80) + 32) & ~*(*(v0 + 208) + 80)), *(v0 + 200));
    }

    else
    {
      v30 = *(v0 + 336);
      v31 = *(v0 + 216);
      v32 = *(v0 + 200);
      result = sub_192228450();
      if (v31 != 8)
      {
        __break(1u);
        return result;
      }

      v33 = *(v0 + 224);
      v34 = *(v0 + 200);
      v35 = *(v0 + 208);
      *(v0 + 128) = result;
      (*(v35 + 16))(v33, v0 + 128, v34);
      swift_unknownObjectRelease();
    }

    *(v0 + 344) = 1;
    v8 = *(v0 + 160);
    v37 = *(v0 + 152);
    sub_192087350(*(v0 + 136), v8);
    v9 = *(v8 + 64);
    v10 = *(v8 + 72);
    v11 = *(v8 + 56);
    sub_1920FB69C(v8);
    *(v0 + 80) = v9;
    *(v0 + 88) = v10;
    *(v0 + 96) = v11;
    v12 = *(v37 + 48);
    v36 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = sub_19211F3D8;
    v15 = *(v0 + 264);
    v16 = *(v0 + 224);
    v17 = *(v0 + 192);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);

    return v36(v17, v16, v0 + 80, v18, v19);
  }

  else
  {
    v21 = *(v0 + 336);
    v22 = *(v0 + 304);
    v23 = *(v0 + 248);
    v24 = *(v0 + 224);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v27 = *(v0 + 160);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 144));

    v28 = *(v0 + 120);

    v29 = *(v0 + 8);

    return v29(v28);
  }
}

uint64_t sub_19211F3D8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v13 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[42];
    v5 = v2[28];
    v6 = v2[25];
    v7 = v2[26];

    (*(v7 + 8))(v5, v6);
    v8 = v2[15];

    v9 = v2[39];
    v10 = v2[40];
    v11 = sub_19211F8B0;
  }

  else
  {
    (*(v2[26] + 8))(v2[28], v2[25]);
    v9 = v2[39];
    v10 = v2[40];
    v11 = sub_19211F53C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_19211F53C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 168);
  (*(v4 + 16))(*(v0 + 184), v3, v5);
  sub_192227C40();
  sub_192227C20();
  (*(v4 + 8))(v3, v5);
  if (v2 == sub_192227C10())
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 304);
    v8 = *(v0 + 248);
    v9 = *(v0 + 224);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 160);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 144));

    v13 = *(v0 + 120);

    v14 = *(v0 + 8);

    return v14(v13);
  }

  v16 = *(v0 + 336);
  v17 = *(v0 + 344);
  v18 = *(v0 + 200);
  v19 = sub_192227BF0();
  sub_192227BA0();
  if (v19)
  {
    result = (*(*(v0 + 208) + 16))(*(v0 + 224), *(v0 + 336) + ((*(*(v0 + 208) + 80) + 32) & ~*(*(v0 + 208) + 80)) + *(*(v0 + 208) + 72) * v17, *(v0 + 200));
  }

  else
  {
    v32 = *(v0 + 216);
    v33 = *(v0 + 200);
    result = sub_192228450();
    if (v32 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v34 = *(v0 + 224);
    v35 = *(v0 + 200);
    v36 = *(v0 + 208);
    *(v0 + 128) = result;
    (*(v36 + 16))(v34, v0 + 128, v35);
    result = swift_unknownObjectRelease();
  }

  *(v0 + 344) = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v0 + 160);
  v38 = *(v0 + 152);
  sub_192087350(*(v0 + 136), v20);
  v21 = *(v20 + 64);
  v22 = *(v20 + 72);
  v23 = *(v20 + 56);
  sub_1920FB69C(v20);
  *(v0 + 80) = v21;
  *(v0 + 88) = v22;
  *(v0 + 96) = v23;
  v24 = *(v38 + 48);
  v37 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 352) = v26;
  *v26 = v0;
  v26[1] = sub_19211F3D8;
  v27 = *(v0 + 264);
  v28 = *(v0 + 224);
  v29 = *(v0 + 192);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);

  return v37(v29, v28, v0 + 80, v30, v31);
}

uint64_t sub_19211F8B0()
{
  v1 = v0[38];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[18];

  (*(v3 + 8))(v2, v4);
  v5 = v0[45];
  v6 = v0[33];
  v7 = v0[31];
  v8 = v0[28];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[20];

  v12 = v0[1];

  return v12();
}

uint64_t StaticConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  v12 = *(v7 + 24);
  (*v7)(v18);
  v13 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_192120FF8(v11, v12, a6, a7);
  v15 = v14;
  v16 = *(a7 + 8);
  (*(v13 + 48))(v14);

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t IntentConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  v12 = *(v7 + 24);
  (*v7)(v18);
  v13 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_192120FF8(v11, v12, a6, a7);
  v15 = v14;
  v16 = *(a7 + 8);
  (*(v13 + 48))(v14);

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t AppIntentConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  v12 = *(v7 + 24);
  (*v7)(v18);
  v13 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_192120FF8(v11, v12, a6, a7);
  v15 = v14;
  v16 = *(a7 + 8);
  (*(*(v13 + 8) + 48))(v14);

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t RelevanceConfiguration.previewTimeline<A>(source:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v40 = a3;
  v34 = a4;
  v36 = a1;
  v37 = a2;
  v10 = type metadata accessor for TimelineProviderContext();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - v18;
  v20 = v7[1];
  v42 = *v7;
  v43 = v20;
  v44 = v7[2];
  v21 = sub_192227CF0();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  (*(v13 + 16))(v15, v36, a6);
  sub_192087350(v37, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_192227CC0();
  (*(*(a5 - 8) + 16))(v41, &v42, a5);

  v22 = sub_192227CB0();
  v23 = (*(v13 + 80) + 112) & ~*(v13 + 80);
  v24 = (v14 + *(v38 + 80) + v23) & ~*(v38 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v22;
  *(v25 + 24) = v26;
  v27 = *(a5 + 24);
  *(v25 + 32) = *(a5 + 16);
  *(v25 + 40) = a6;
  v28 = v39;
  *(v25 + 48) = v27;
  *(v25 + 56) = v28;
  v29 = v43;
  *(v25 + 64) = v42;
  *(v25 + 80) = v29;
  *(v25 + 96) = v44;
  (*(v13 + 32))(v25 + v23, v15, a6);
  sub_192121144(v35, v25 + v24);
  v30 = (v25 + ((v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = v34;
  *v30 = v40;
  v30[1] = v31;
  sub_19211CA04(0, 0, v19, &unk_192234440, v25);
}

uint64_t sub_19211FF78(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 80) = sub_192227CC0();
  *(v8 + 88) = sub_192227CB0();
  v12 = a4[1];
  *(v8 + 16) = *a4;
  *(v8 + 32) = v12;
  *(v8 + 48) = a4[2];
  v13 = swift_task_alloc();
  *(v8 + 96) = v13;
  v14 = type metadata accessor for RelevanceConfiguration();
  *v13 = v8;
  v13[1] = sub_19212008C;

  return sub_192120308(a5, a6, v14, v17, v18);
}

uint64_t sub_19212008C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v16 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v6 = v4[10];
    v7 = v4[11];
    v8 = sub_192227C70();
    v10 = v9;
    v11 = sub_192120270;
  }

  else
  {
    v12 = v4[10];
    v13 = v4[11];
    v4[14] = a1;
    v8 = sub_192227C70();
    v10 = v14;
    v11 = sub_1921201E0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v8, v10);
}

uint64_t sub_1921201E0()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v4(v5, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_192120270()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v1;
  v4(v1, 1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_192120308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 240) = a4;
  *(v6 + 248) = a5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a3;
  *(v6 + 216) = a1;
  v7 = *(a4 - 8);
  *(v6 + 256) = v7;
  v8 = *(v7 + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  v9 = v5[1];
  *(v6 + 16) = *v5;
  *(v6 + 32) = v9;
  *(v6 + 48) = v5[2];
  *(v6 + 272) = sub_192227CC0();
  *(v6 + 280) = sub_192227CB0();
  v11 = sub_192227C70();
  *(v6 + 288) = v11;
  *(v6 + 296) = v10;

  return MEMORY[0x1EEE6DFA0](sub_19212040C, v11, v10);
}

uint64_t sub_19212040C()
{
  v1 = *(*(v0 + 256) + 16);
  v1(*(v0 + 264), *(v0 + 216), *(v0 + 240));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04E8, &qword_192234978);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 272);
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    sub_19203832C((v0 + 104), v0 + 64);
    v8 = sub_192227CB0();
    *(v0 + 304) = v8;
    v9 = swift_task_alloc();
    *(v0 + 312) = v9;
    v9[2] = *(v6 + 16);
    v9[3] = v5;
    v9[4] = *(v6 + 24);
    v9[5] = v4;
    v9[6] = v0 + 16;
    v9[7] = v0 + 64;
    v9[8] = v7;
    v10 = *(MEMORY[0x1E69E8920] + 4);
    v11 = swift_task_alloc();
    *(v0 + 320) = v11;
    v12 = type metadata accessor for WidgetViewCollection();
    *v11 = v0;
    v11[1] = sub_1921206FC;
    v13 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 208, v8, v13, 0xD000000000000025, 0x800000019224B160, sub_192121B64, v9, v12);
  }

  else
  {
    v14 = *(v0 + 280);
    v15 = *(v0 + 240);
    v16 = *(v0 + 216);

    *(v0 + 136) = 0;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    sub_192033970(v0 + 104, &qword_1EADF04F0, &qword_192234980);
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF04F8, &qword_192234988);
    *(v0 + 144) = v2;
    *(v0 + 200) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    v1(boxed_opaque_existential_1, v16, v15);
    sub_192121A58();
    swift_allocError();
    v19 = v18;
    strcpy(v18, "Widget preview");
    *(v18 + 15) = -18;
    *(v18 + 16) = 0xD000000000000016;
    *(v18 + 24) = 0x8000000192234590;
    sub_19203BEDC((v0 + 144), (v18 + 32));
    v20 = *(v0 + 192);
    *(v19 + 64) = *(v0 + 176);
    *(v19 + 80) = v20;
    swift_willThrow();
    v21 = *(v0 + 264);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1921206FC()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v10 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_1921208A0;
  }

  else
  {
    v7 = v2[38];
    v8 = v2[39];

    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_192120820;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_192120820()
{
  v1 = v0[35];
  v2 = v0[33];

  v3 = v0[26];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1921208A0()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[35];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v4 = v0[41];
  v5 = v0[33];

  v6 = v0[1];

  return v6();
}

uint64_t sub_192120928(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v10 = &v30 - v9;
  v11 = *a2;
  v32 = a2[1];
  v33 = v11;
  v12 = a2[4];
  v13 = a2[5];
  v12(v39, v8);
  v14 = v40;
  v15 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v17 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v30 - v18;
  (*(v15 + 32))(v14, v15);
  v20 = a3[4];
  v34 = a3[3];
  v30 = v20;
  v31 = __swift_project_boxed_opaque_existential_1(a3, v34);
  v21 = a3[3];
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v21);
  sub_192120FF8(v33, v32, v21, *(v22 + 8));
  v24 = v23;
  v25 = v35;
  (*(v6 + 16))(v10, v36, v35);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v26, v10, v25);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(v24, v38, v31, sub_192121B78, v27, v34, *(*(v30 + 8) + 8), AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v37 + 8))(v19, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_192120C24(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
    return sub_192227C80();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
    return sub_192227C90();
  }
}

uint64_t sub_192120CB8()
{
  sub_19202CFFC((v0 + 8), &v4, &unk_1EADEF330, &unk_19222CD40);
  if (v5)
  {
    sub_19203BEDC(&v4, &v6);
    *&v4 = 0;
    *(&v4 + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](*v0, v0[1]);
    MEMORY[0x193B0A990](0x6574636570786520, 0xEA00000000002064);
    MEMORY[0x193B0A990](v0[2], v0[3]);
    MEMORY[0x193B0A990](0x6570797420666F20, 0xE900000000000020);
    sub_1922285A0();
    MEMORY[0x193B0A990](0x797420746F67203BLL, 0xEB00000000206570);
    __swift_project_boxed_opaque_existential_1(&v6, v7);
    swift_getDynamicType();
    v1 = sub_192228BD0();
    MEMORY[0x193B0A990](v1);

    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    sub_192033970(&v4, &unk_1EADEF330, &unk_19222CD40);
    *&v6 = 0;
    *(&v6 + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](*v0, v0[1]);
    MEMORY[0x193B0A990](0x6574636570786520, 0xEA00000000002064);
    MEMORY[0x193B0A990](v0[2], v0[3]);
    MEMORY[0x193B0A990](0x6570797420666F20, 0xE900000000000020);
    sub_1922285A0();
    MEMORY[0x193B0A990](0x696E20746F67203BLL, 0xE90000000000006CLL);
    return v6;
  }

  return v2;
}

uint64_t sub_192120F00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_192120FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    (*(a4 + 24))(&v13, a3, a4);
    v12 = byte_1922349AA[v13];
    v8 = _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v12);
    v9 = (*(a4 + 48))(a3, a4);
    v10 = objc_allocWithZone(MEMORY[0x1E6994370]);
    v11 = sub_192227930();
    [v10 initWithExtensionBundleIdentifier:v7 containerBundleIdentifier:0 kind:v11 family:v8 intent:v9];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192121144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineProviderContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921211A8(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 40);
  v18 = *(v1 + 32);
  v5 = *(v1 + 56);
  v17 = *(v1 + 48);
  v6 = *(*(v4 - 8) + 64);
  v7 = (*(*(v4 - 8) + 80) + 112) & ~*(*(v4 - 8) + 80);
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1920A59A8;

  return sub_19211FF78(a1, v10, v11, (v1 + 64), v1 + v7, v1 + v9, v13, v14);
}

unint64_t sub_192121360(uint64_t a1)
{
  result = sub_192121388();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121388()
{
  result = qword_1EADF0490;
  if (!qword_1EADF0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0490);
  }

  return result;
}

unint64_t sub_1921213DC(uint64_t a1)
{
  result = sub_192121404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121404()
{
  result = qword_1EADF0498;
  if (!qword_1EADF0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0498);
  }

  return result;
}

uint64_t sub_192121458(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_192121494(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1921214D0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19212150C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1921215AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1921215F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_192121670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1921216B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_192121744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_19212178C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1921217F4(uint64_t a1)
{
  result = sub_19212181C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19212181C()
{
  result = qword_1EADF04A0;
  if (!qword_1EADF04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04A0);
  }

  return result;
}

unint64_t sub_192121870(uint64_t a1)
{
  result = sub_192121898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121898()
{
  result = qword_1EADF04A8;
  if (!qword_1EADF04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04A8);
  }

  return result;
}

unint64_t sub_1921218EC(uint64_t a1)
{
  result = sub_192121914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121914()
{
  result = qword_1EADF04B0;
  if (!qword_1EADF04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04B0);
  }

  return result;
}

unint64_t sub_192121968(uint64_t a1)
{
  result = sub_192121990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192121990()
{
  result = qword_1EADF04B8;
  if (!qword_1EADF04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04B8);
  }

  return result;
}

uint64_t sub_192121A04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192121A58()
{
  result = qword_1EADF04D8;
  if (!qword_1EADF04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF04D8);
  }

  return result;
}

uint64_t sub_192121AAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1920A59A8;

  return sub_192037220(a1, v5);
}

uint64_t sub_192121B64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_192120928(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_192121B78(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990) - 8) + 80);

  return sub_192120C24(a1, a2 & 1);
}

uint64_t sub_192121C30(uint64_t a1, const char *a2)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74CCC8);
  v4 = sub_192225890();
  v5 = sub_192227F90();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_192028000, v4, v5, a2, v6, 2u);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 24);
    v9 = *(v8 + 16);
    v10 = result;

    os_unfair_lock_lock(v9);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    os_unfair_lock_unlock(*(v8 + 16));
  }

  return result;
}

uint64_t sub_192121D7C()
{
  result = sub_192227960();
  qword_1EADEDBA8 = result;
  unk_1EADEDBB0 = v1;
  return result;
}

uint64_t sub_192121DD4()
{
  result = sub_192227960();
  qword_1EADED240 = result;
  *algn_1EADED248 = v1;
  return result;
}

uint64_t sub_192121E2C()
{
  result = sub_192227960();
  qword_1EADF0510 = result;
  *algn_1EADF0518 = v1;
  return result;
}

uint64_t sub_192121E84(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_192121EF8()
{
  v0 = sub_19202B38C();
  v19 = sub_192122280;
  v20 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1921BBB98;
  v18 = &block_descriptor_173;
  v1 = _Block_copy(&aBlock);
  v2 = [v0 remoteObjectProxyWithErrorHandler_];
  _Block_release(v1);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v21, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = sub_192225890();
    v5 = sub_192227FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_192028000, v4, v5, "Invalidate widget configuration recommendations.", v6, 2u);
      MEMORY[0x193B0C7F0](v6, -1, -1);
    }

    v19 = sub_19212243C;
    v20 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_19202AF14;
    v18 = &block_descriptor_176;
    v7 = _Block_copy(&aBlock);
    [v14 invalidateConfigurationRecommendationsWithCompletion_];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1922258B0();
    __swift_project_value_buffer(v8, qword_1ED74CCC8);
    v9 = sub_192225890();
    v10 = sub_192227F90();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_192122280(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_19212243C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = a1;
    v5 = sub_192225890();
    v6 = sub_192227F90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &v18);
      *(v7 + 12) = 2114;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_192028000, v5, v6, "%{public}s - error reloading supported intents: %{public}@", v7, 0x16u);
      sub_192033970(v8, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    oslog = sub_192225890();
    v13 = sub_192227F90();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000028, 0x800000019224B4B0, &v18);
      _os_log_impl(&dword_192028000, oslog, v13, "%{public}s - success", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);

      return;
    }

    v16 = oslog;
  }
}

uint64_t sub_192122780()
{
  v0 = sub_19202B38C();
  v19 = sub_192122B2C;
  v20 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1921BBB98;
  v18 = &block_descriptor_167;
  v1 = _Block_copy(&aBlock);
  v2 = [v0 remoteObjectProxyWithErrorHandler_];
  _Block_release(v1);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v21, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = sub_192225890();
    v5 = sub_192227FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_192028000, v4, v5, "Invalidate widget configuration recommendations.", v6, 2u);
      MEMORY[0x193B0C7F0](v6, -1, -1);
    }

    v7 = sub_192227930();
    v19 = sub_192122CE8;
    v20 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_19202AF14;
    v18 = &block_descriptor_170;
    v8 = _Block_copy(&aBlock);
    [v14 invalidateConfigurationRecommendationsInBundle:v7 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1922258B0();
    __swift_project_value_buffer(v9, qword_1ED74CCC8);
    v7 = sub_192225890();
    v10 = sub_192227F90();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_192122B2C(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_192122CE8(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = a1;
    v5 = sub_192225890();
    v6 = sub_192227F90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &v18);
      *(v7 + 12) = 2114;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_192028000, v5, v6, "%{public}s - error reloading supported intents: %{public}@", v7, 0x16u);
      sub_192033970(v8, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    oslog = sub_192225890();
    v13 = sub_192227F90();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B470, &v18);
      _os_log_impl(&dword_192028000, oslog, v13, "%{public}s - success", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);

      return;
    }

    v16 = oslog;
  }
}

uint64_t sub_192123014(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_192227CF0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_19211CA04(0, 0, v8, &unk_1922349D0, v10);
}

uint64_t sub_192123138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_192227710();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = sub_192227790();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192123258, 0, 0);
}

uint64_t sub_192123258()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0520, &qword_1922349E0);
  *v2 = v0;
  v2[1] = sub_192123340;
  v4 = *(v0 + 80);

  return MEMORY[0x1EEE6DE38](v0 + 64, 0, 0, 0xD000000000000017, 0x800000019224B1E0, sub_19212B53C, v4, v3);
}