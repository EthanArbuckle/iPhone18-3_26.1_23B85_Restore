uint64_t sub_1921A18CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = v10[1];
  v12 = (v11 + *MEMORY[0x1E695A680]);
  v13 = v12[1];
  v14 = *(v13 + *MEMORY[0x1E695A610] + 8);
  v9[2] = v14;
  v21 = *v10;
  v22 = v14;
  v9[3] = *v10;
  v20 = v12[2];
  v9[4] = v20;
  v9[5] = v13;
  v9[6] = v11;
  v9[7] = a2;
  v9[8] = a3;
  v15 = v12[5];
  v9[9] = v15;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a1;
  v18 = swift_allocObject();
  v18[2] = v22;
  v18[3] = v21;
  v18[4] = v20;
  v18[5] = v13;
  v18[6] = v11;
  v18[7] = a2;
  v18[8] = a3;
  v18[9] = v15;
  *a4 = &unk_19223E4F0;
  a4[1] = v9;
  a4[2] = &unk_19223E500;
  a4[3] = v16;
  a4[4] = &unk_19223E510;
  a4[5] = v17;
  a4[6] = &unk_19223E520;
  a4[7] = v18;
}

uint64_t ControlPicker.init<A, B, C, D, E, F, G, H>(kind:displayName:preferredSize:intentUpdatableProperty:title:subtitle:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *a5;
  v26 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v27 = MEMORY[0x1E695A680];
  v28 = v26 + *MEMORY[0x1E695A680];
  v29 = *(v28 + 16);
  v30 = *(*(*(v28 + 40) + 8) + 8);
  v31 = sub_192224D10();
  v40 = v32;
  v41 = v31;
  v50[0] = v25;
  sub_1921A18CC(a6, a19, a20, v49);

  v33 = sub_192224BA0();
  if (!a14)
  {
    a15 = 0;
  }

  v34 = *(*(v26 + *v27 + 8) + *MEMORY[0x1E695A610] + 8);
  v35 = *(a19 + 24);
  v36 = type metadata accessor for KeyPathPickerBox();
  v37 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192145D94(a1, a2, &type metadata for EmptyConfiguration, v41, v40, a3, a4, v50, a9, v49, 3, v33, a7, a8, a10, a11, a12, a13, a14, a15, &type metadata for EmptyConfiguration, a16, a17, a18, v36, v37, a21, a22, a23, WitnessTable);
}

uint64_t ControlPicker.init<A, B, C, D, E, F, G>(kind:displayName:preferredSize:intentUpdatableProperty:title:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *a5;
  v22 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v23 = v22 + *MEMORY[0x1E695A680];
  v24 = *(v23 + 16);
  v25 = *(*(*(v23 + 40) + 8) + 8);
  v26 = sub_192224D10();
  v36 = v27;
  v37 = v26;
  v46[0] = v21;
  sub_1921A1EB0(a6, a16, a17, a20, v45);

  v28 = sub_192224BA0();
  if (a12)
  {
    v29 = a13;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*(v22 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v31 = *(a16 + 24);
  v32 = type metadata accessor for KeyPathPickerBox();
  v33 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192080134(a1, a2, &type metadata for EmptyConfiguration, v37, v36, a3, a4, v46, a9, v45, 3, v28, a7, a8, a10, a11, a12, v29, &type metadata for EmptyConfiguration, a14, a15, v32, v33, a18, a19, WitnessTable);
}

uint64_t sub_1921A1EB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v12 = (v10 + *MEMORY[0x1E69E77B0]);
  v13 = v12[1];
  v14 = (v13 + *MEMORY[0x1E695A680]);
  v15 = v14[1];
  v16 = *(v15 + *MEMORY[0x1E695A610] + 8);
  v11[2] = v16;
  v23 = *v12;
  v24 = v16;
  v11[3] = *v12;
  v22 = v14[2];
  v11[4] = v22;
  v11[5] = v15;
  v11[6] = v13;
  v11[7] = a2;
  v11[8] = a3;
  v21 = v14[5];
  v11[9] = v21;
  v11[10] = a4;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  v19 = swift_allocObject();
  v19[2] = v24;
  v19[3] = v23;
  v19[4] = v22;
  v19[5] = v15;
  v19[6] = v13;
  v19[7] = a2;
  v19[8] = a3;
  v19[9] = v21;
  v19[10] = a4;
  *a5 = &unk_19223E4A8;
  a5[1] = v11;
  a5[2] = &unk_19223E4B8;
  a5[3] = v17;
  a5[4] = &unk_19223E4C8;
  a5[5] = v18;
  a5[6] = &unk_19223E4D8;
  a5[7] = v19;
}

uint64_t ControlPicker.init<A, B, C, D, E, F, G, H>(kind:displayName:preferredSize:intentUpdatableProperty:title:subtitle:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = *a5;
  v26 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v27 = v26 + *MEMORY[0x1E695A680];
  v28 = *(v27 + 16);
  v29 = *(*(*(v27 + 40) + 8) + 8);
  v30 = sub_192224D10();
  v40 = v31;
  v41 = v30;
  v50[0] = v25;
  sub_1921A1EB0(a6, a19, a20, a24, v49);

  v32 = sub_192224BA0();
  if (a14)
  {
    v33 = a15;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(*(v26 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v35 = *(a19 + 24);
  v36 = type metadata accessor for KeyPathPickerBox();
  v37 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192145D94(a1, a2, &type metadata for EmptyConfiguration, v41, v40, a3, a4, v50, a9, v49, 3, v32, a7, a8, a10, a11, a12, a13, a14, v33, &type metadata for EmptyConfiguration, a16, a17, a18, v36, v37, a21, a22, a23, WitnessTable);
}

uint64_t sub_1921A22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = *(*(*(a6 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v8 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A2360, 0, 0);
}

uint64_t sub_1921A2360()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_192228410();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  v6 = sub_192227C50();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1921A2420(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *a2;
  v5[18] = *a2;
  v5[19] = *(a5 + 8);
  v7 = *(v6 + *MEMORY[0x1E69E77B0]);
  v5[20] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[21] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[22] = v9;
  v10 = *(v9 + 64) + 15;
  v5[23] = swift_task_alloc();
  v11 = *(v7 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A2590, 0, 0);
}

uint64_t sub_1921A2590()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = (*(v0[18] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680]);
  v8 = *(v7[1] + *MEMORY[0x1E695A610] + 8);
  type metadata accessor for KeyPathPickerBox();
  v9 = *(*(v5 + 8) + 24);
  v0[8] = v1;
  v0[9] = v8;
  v0[10] = v2;
  v0[11] = v9;
  v10 = sub_192224D40();
  v0[26] = v10;
  v11 = v7[2];
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v13 = v7[5];
  v0[3] = v10;
  v0[4] = v11;
  v0[5] = v2;
  v0[6] = WitnessTable;
  v0[7] = v13;
  sub_192224D50();
  v14 = sub_192228BA0();
  sub_192114D64(v6, v14, (v0 + 12));
  v15 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];
  v19 = v0[17];
  v0[27] = v0[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(MEMORY[0x1E695A2C8] + 4);
  v22 = swift_task_alloc();
  v0[28] = v22;
  *v22 = v0;
  v22[1] = sub_1921A27F8;
  v23 = v0[25];
  v24 = v0[23];
  v25 = v0[21];

  return MEMORY[0x1EEDB3838](v23, v25, AssociatedConformanceWitness);
}

uint64_t sub_1921A27F8()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {
    (*(v3[22] + 8))(v3[23], v3[21]);

    return MEMORY[0x1EEE6DFA0](sub_1921A2BB8, 0, 0);
  }

  else
  {
    v4 = v3[26];
    (*(v3[22] + 8))(v3[23], v3[21]);
    v5 = *(MEMORY[0x1E6959E20] + 4);
    v6 = swift_task_alloc();
    v3[30] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_1921A29D4;
    v8 = v3[27];
    v9 = v3[25];
    v10 = v3[13];

    return MEMORY[0x1EEDB2C68](v10, v8, WitnessTable);
  }
}

uint64_t sub_1921A29D4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[24] + 8))(v2[25], v2[20]);
  if (v0)
  {
    v5 = sub_1921A2C30;
  }

  else
  {
    v5 = sub_1921A2B3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A2B3C()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A2BB8()
{
  v1 = v0[27];

  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1921A2C30()
{
  v1 = v0[27];

  v2 = v0[31];
  v3 = v0[25];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1921A2CA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v5[24] = *(a5 + 8);
  v9 = (v7 + *v8);
  v10 = *v9;
  v5[25] = *v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[26] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v5[27] = v12;
  v13 = *(v12 + 64) + 15;
  v5[28] = swift_task_alloc();
  v14 = *(v10 - 8);
  v5[29] = v14;
  v15 = *(v14 + 64) + 15;
  v5[30] = swift_task_alloc();
  v16 = v9[1];
  v5[31] = v16;
  v17 = *(*(v16 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v5[32] = v17;
  v18 = *(v17 - 8);
  v5[33] = v18;
  v19 = *(v18 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = *(*(*(a3 + 16) + 8) + 16);
  v20 = swift_getAssociatedTypeWitness();
  v5[36] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v5[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A2F00, 0, 0);
}

uint64_t sub_1921A2F00()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  type metadata accessor for KeyPathPickerBox();
  v9 = *(*(v8 + 8) + 24);
  *(v0 + 64) = v3;
  *(v0 + 72) = v1;
  *(v0 + 80) = v4;
  *(v0 + 88) = v9;
  v10 = sub_192224D40();
  *(v0 + 304) = v10;
  v11 = v2 + *MEMORY[0x1E695A680];
  v12 = *(v11 + 16);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 16) = v3;
  v14 = *(v11 + 40);
  *(v0 + 24) = v10;
  *(v0 + 32) = v12;
  *(v0 + 40) = v4;
  *(v0 + 48) = WitnessTable;
  *(v0 + 56) = v14;
  sub_192224D50();
  v15 = sub_192228BA0();
  sub_192114D64(v7, v15, v0 + 128);
  v17 = *(v0 + 288);
  v16 = *(v0 + 296);
  v18 = *(v0 + 280);
  v19 = *(v0 + 256);
  v20 = *(v0 + 152);
  *(v0 + 312) = *(v0 + 128);
  sub_192228410();
  v21 = *(swift_getAssociatedConformanceWitness() + 8);
  *(v0 + 136) = sub_192227C50();
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  *(v0 + 112) = *(v0 + 96);
  *(v0 + 144) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  if (sub_192227EF0())
  {
    v23 = *(v0 + 288);
    v22 = *(v0 + 296);
    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 256);
    v27 = *(v0 + 200);
    v45 = *(v0 + 192);
    v46 = *(v0 + 224);
    v47 = *(v0 + 184);
    v48 = *(v0 + 208);
    v28 = *(v0 + 152);

    sub_192228410();
    sub_192227C50();
    sub_192227C60();

    sub_192224B30();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = *(MEMORY[0x1E695A2C8] + 4);
    v31 = swift_task_alloc();
    *(v0 + 320) = v31;
    *v31 = v0;
    v31[1] = sub_1921A32F8;
    v32 = *(v0 + 240);
    v33 = *(v0 + 224);
    v34 = *(v0 + 208);

    return MEMORY[0x1EEDB3838](v32, v34, AssociatedConformanceWitness);
  }

  else
  {
    v35 = *(v0 + 256);
    v36 = *(v0 + 152);
    v37 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v38 = v36;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    swift_willThrow();

    v39 = *(v0 + 296);
    v40 = *(v0 + 272);
    v41 = *(v0 + 240);
    v42 = *(v0 + 224);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_1921A32F8()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {
    (*(v3[27] + 8))(v3[28], v3[26]);

    return MEMORY[0x1EEE6DFA0](sub_1921A3700, 0, 0);
  }

  else
  {
    v4 = v3[38];
    (*(v3[27] + 8))(v3[28], v3[26]);
    v5 = *(MEMORY[0x1E6959E30] + 4);
    v6 = swift_task_alloc();
    v3[42] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_1921A34D8;
    v8 = v3[39];
    v9 = v3[34];
    v10 = v3[32];
    v11 = v3[30];

    return MEMORY[0x1EEDB2C88](v9, v8, v10, WitnessTable);
  }
}

uint64_t sub_1921A34D8()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  (*(v2[29] + 8))(v2[30], v2[25]);
  if (v0)
  {
    v5 = sub_1921A37B8;
  }

  else
  {
    v5 = sub_1921A3640;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A3640()
{
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[28];

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1921A3700()
{
  v1 = v0[39];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  (*(v3 + 8))(v2, v4);
  v5 = v0[41];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[30];
  v9 = v0[28];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1921A37B8()
{
  v1 = v0[39];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  (*(v3 + 8))(v2, v4);
  v5 = v0[43];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[30];
  v9 = v0[28];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1921A3870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyPathPickerBox();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return sub_192114F64(a1, a3, v6, a3, &off_1F06B3838, v10);
}

uint64_t sub_1921A3948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[7] = AssociatedConformanceWitness;
  v6[8] = *(AssociatedConformanceWitness + 8);
  v11 = swift_getAssociatedTypeWitness();
  v6[9] = v11;
  v12 = *(v11 - 8);
  v6[10] = v12;
  v13 = *(v12 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A3AD4, 0, 0);
}

uint64_t sub_1921A3AD4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  sub_192224B30();
  v4 = *(MEMORY[0x1E6959F00] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1921A3B84;
  v6 = v0[11];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];

  return MEMORY[0x1EEDB2EA8](v6, v9, v7);
}

uint64_t sub_1921A3B84()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1921A3DC4;
  }

  else
  {
    v6 = sub_1921A3CF4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1921A3CF4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[4];
  swift_getAssociatedConformanceWitness();
  v7 = sub_192224CD0();
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1921A3DC4()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1921A3E34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *a2;
  v4[17] = *a2;
  v4[18] = *(a4 + 8);
  v6 = *(v5 + *MEMORY[0x1E69E77B0]);
  v4[19] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[20] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v4[21] = v8;
  v9 = *(v8 + 64) + 15;
  v4[22] = swift_task_alloc();
  v10 = *(v6 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A3FA0, 0, 0);
}

uint64_t sub_1921A3FA0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v6 = (*(v0[17] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680]);
  v7 = *(v6[1] + *MEMORY[0x1E695A610] + 8);
  v8 = *(v5 + 24);
  type metadata accessor for KeyPathPickerBox();
  v9 = *(*(v5 + 8) + 24);
  v0[8] = v1;
  v0[9] = v7;
  v0[10] = v2;
  v0[11] = v9;
  v10 = sub_192224D40();
  v0[25] = v10;
  v11 = v6[2];
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v13 = v6[5];
  v0[3] = v10;
  v0[4] = v11;
  v0[5] = v2;
  v0[6] = WitnessTable;
  v0[7] = v13;
  sub_192224D50();
  v14 = sub_192228BA0();
  sub_192114D64(v4, v14, (v0 + 12));
  v15 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v19 = v0[16];
  v0[26] = v0[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(MEMORY[0x1E695A2C8] + 4);
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_1921A4208;
  v23 = v0[24];
  v24 = v0[22];
  v25 = v0[20];

  return MEMORY[0x1EEDB3838](v23, v25, AssociatedConformanceWitness);
}

uint64_t sub_1921A4208()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {
    (*(v3[21] + 8))(v3[22], v3[20]);

    return MEMORY[0x1EEE6DFA0](sub_1921A8438, 0, 0);
  }

  else
  {
    v4 = v3[25];
    (*(v3[21] + 8))(v3[22], v3[20]);
    v5 = *(MEMORY[0x1E6959E20] + 4);
    v6 = swift_task_alloc();
    v3[29] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_1921A43E4;
    v8 = v3[26];
    v9 = v3[24];
    v10 = v3[13];

    return MEMORY[0x1EEDB2C68](v10, v8, WitnessTable);
  }
}

uint64_t sub_1921A43E4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[23] + 8))(v2[24], v2[19]);
  if (v0)
  {
    v5 = sub_1921A843C;
  }

  else
  {
    v5 = sub_1921A8444;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A454C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
  v5 = *a2;
  v6 = MEMORY[0x1E69E77B0];
  v4[23] = *(a4 + 8);
  v7 = (v5 + *v6);
  v8 = *v7;
  v4[24] = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[25] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v12 = *(v8 - 8);
  v4[28] = v12;
  v13 = *(v12 + 64) + 15;
  v4[29] = swift_task_alloc();
  v14 = v7[1];
  v4[30] = v14;
  v15 = *(*(v14 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v4[31] = v15;
  v16 = *(v15 - 8);
  v4[32] = v16;
  v17 = *(v16 + 64) + 15;
  v4[33] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v4[34] = v18;
  v19 = *(v18 - 8);
  v4[35] = v19;
  v20 = *(v19 + 64) + 15;
  v4[36] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[37] = AssociatedConformanceWitness;
  v4[38] = *(AssociatedConformanceWitness + 8);
  v22 = swift_getAssociatedTypeWitness();
  v4[39] = v22;
  v23 = *(v22 - 8);
  v4[40] = v23;
  v24 = *(v23 + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A4868, 0, 0);
}

uint64_t sub_1921A4868()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = *(v6 + 24);
  type metadata accessor for KeyPathPickerBox();
  v9 = *(*(v6 + 8) + 24);
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v4;
  v0[11] = v9;
  v10 = sub_192224D40();
  v0[42] = v10;
  v11 = v2 + *MEMORY[0x1E695A680];
  v12 = *(v11 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v3;
  v14 = *(v11 + 40);
  v0[3] = v10;
  v0[4] = v12;
  v0[5] = v4;
  v0[6] = WitnessTable;
  v0[7] = v14;
  sub_192224D50();
  v15 = sub_192228BA0();
  sub_192114D64(v7, v15, (v0 + 16));
  v16 = v0[36];
  v17 = v0[31];
  v18 = v0[21];
  v0[43] = v0[16];
  sub_192224B30();
  v19 = *(MEMORY[0x1E6959F00] + 4);
  v20 = swift_task_alloc();
  v0[44] = v20;
  *v20 = v0;
  v20[1] = sub_1921A4AA0;
  v21 = v0[41];
  v23 = v0[36];
  v22 = v0[37];
  v24 = v0[34];

  return MEMORY[0x1EEDB2EA8](v21, v24, v22);
}

uint64_t sub_1921A4AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[35] + 8))(v2[36], v2[34]);
  if (v0)
  {
    v5 = sub_1921A52EC;
  }

  else
  {
    v5 = sub_1921A4C08;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A4C08()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 152);
  swift_getAssociatedConformanceWitness();
  v8 = sub_192224CD0();
  (*(v2 + 8))(v1, v4);
  *(v0 + 136) = v8;
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  *(v0 + 112) = *(v0 + 96);
  *(v0 + 144) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  v9 = sub_192227EF0();
  v10 = *(v0 + 248);
  if (v9)
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 216);
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 152);
    sub_192227C60();

    sub_192224B30();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(MEMORY[0x1E695A2C8] + 4);
    v20 = swift_task_alloc();
    *(v0 + 368) = v20;
    *v20 = v0;
    v20[1] = sub_1921A4ED0;
    v21 = *(v0 + 232);
    v22 = *(v0 + 216);
    v23 = *(v0 + 200);

    return MEMORY[0x1EEDB3838](v21, v23, AssociatedConformanceWitness);
  }

  else
  {
    v24 = *(v0 + 344);
    v25 = *(v0 + 152);
    v26 = *(v0 + 248);
    v27 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 1;
    swift_willThrow();

    v29 = *(v0 + 328);
    v30 = *(v0 + 288);
    v31 = *(v0 + 264);
    v32 = *(v0 + 232);
    v33 = *(v0 + 216);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1921A4ED0()
{
  v2 = *(*v1 + 368);
  v3 = *v1;
  v3[47] = v0;

  if (v0)
  {
    (*(v3[26] + 8))(v3[27], v3[25]);

    return MEMORY[0x1EEE6DFA0](sub_1921A5398, 0, 0);
  }

  else
  {
    v4 = v3[42];
    (*(v3[26] + 8))(v3[27], v3[25]);
    v5 = *(MEMORY[0x1E6959E30] + 4);
    v6 = swift_task_alloc();
    v3[48] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_1921A50B0;
    v8 = v3[43];
    v9 = v3[33];
    v10 = v3[31];
    v11 = v3[29];

    return MEMORY[0x1EEDB2C88](v9, v8, v10, WitnessTable);
  }
}

uint64_t sub_1921A50B0()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[28] + 8))(v2[29], v2[24]);
  if (v0)
  {
    v5 = sub_1921A5464;
  }

  else
  {
    v5 = sub_1921A5218;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A5218()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[29];
  v8 = v0[27];

  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1921A52EC()
{
  v1 = v0[43];

  v2 = v0[45];
  v3 = v0[41];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1921A5398()
{
  v1 = v0[43];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];

  (*(v3 + 8))(v2, v4);
  v5 = v0[47];
  v6 = v0[41];
  v7 = v0[36];
  v8 = v0[33];
  v9 = v0[29];
  v10 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1921A5464()
{
  v1 = v0[43];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];

  (*(v3 + 8))(v2, v4);
  v5 = v0[49];
  v6 = v0[41];
  v7 = v0[36];
  v8 = v0[33];
  v9 = v0[29];
  v10 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1921A5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a7 + 24);
  v13 = type metadata accessor for KeyPathPickerBox();
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1920B3B44;

  return sub_192114F64(a1, a3, v13, a3, &off_1F06B3838, a8);
}

uint64_t sub_1921A5608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v6[4] = v15;
  v6[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[5] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = swift_getAssociatedTypeWitness();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A579C, 0, 0);
}

uint64_t sub_1921A579C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[2];
  sub_192224B30();
  v4 = *(MEMORY[0x1E695A400] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1921A584C;
  v6 = v0[11];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];

  return MEMORY[0x1EEDB3AE0](v6, v8, v9);
}

uint64_t sub_1921A584C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1921A5A8C;
  }

  else
  {
    v6 = sub_1921A59BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1921A59BC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[5];
  swift_getAssociatedConformanceWitness();
  v7 = sub_192224CD0();
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1921A5A8C()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1921A5AFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *a2;
  v4[17] = *a2;
  v4[18] = *(a4 + 8);
  v6 = *(v5 + *MEMORY[0x1E69E77B0]);
  v4[19] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[20] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v4[21] = v8;
  v9 = *(v8 + 64) + 15;
  v4[22] = swift_task_alloc();
  v10 = *(v6 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A5C68, 0, 0);
}

uint64_t sub_1921A5C68()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v6 = (*(v0[17] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680]);
  v7 = *(v6[1] + *MEMORY[0x1E695A610] + 8);
  v8 = *(v5 + 24);
  type metadata accessor for KeyPathPickerBox();
  v9 = *(*(v5 + 8) + 24);
  v0[8] = v1;
  v0[9] = v7;
  v0[10] = v2;
  v0[11] = v9;
  v10 = sub_192224D40();
  v0[25] = v10;
  v11 = v6[2];
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v13 = v6[5];
  v0[3] = v10;
  v0[4] = v11;
  v0[5] = v2;
  v0[6] = WitnessTable;
  v0[7] = v13;
  sub_192224D50();
  v14 = sub_192228BA0();
  sub_192114D64(v4, v14, (v0 + 12));
  v15 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v19 = v0[16];
  v0[26] = v0[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(MEMORY[0x1E695A2C8] + 4);
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_1921A5ED0;
  v23 = v0[24];
  v24 = v0[22];
  v25 = v0[20];

  return MEMORY[0x1EEDB3838](v23, v25, AssociatedConformanceWitness);
}

uint64_t sub_1921A5ED0()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {
    (*(v3[21] + 8))(v3[22], v3[20]);

    return MEMORY[0x1EEE6DFA0](sub_1921A6290, 0, 0);
  }

  else
  {
    v4 = v3[25];
    (*(v3[21] + 8))(v3[22], v3[20]);
    v5 = *(MEMORY[0x1E6959E20] + 4);
    v6 = swift_task_alloc();
    v3[29] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_1921A60AC;
    v8 = v3[26];
    v9 = v3[24];
    v10 = v3[13];

    return MEMORY[0x1EEDB2C68](v10, v8, WitnessTable);
  }
}

uint64_t sub_1921A60AC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[23] + 8))(v2[24], v2[19]);
  if (v0)
  {
    v5 = sub_1921A6308;
  }

  else
  {
    v5 = sub_1921A6214;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A6214()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A6290()
{
  v1 = v0[26];

  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1921A6308()
{
  v1 = v0[26];

  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1921A6380(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = *a2;
  v7 = MEMORY[0x1E69E77B0];
  v5[24] = *(a4 + 8);
  v8 = (v6 + *v7);
  v9 = *v8;
  v5[25] = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[26] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v5[27] = v11;
  v12 = *(v11 + 64) + 15;
  v5[28] = swift_task_alloc();
  v13 = *(v9 - 8);
  v5[29] = v13;
  v14 = *(v13 + 64) + 15;
  v5[30] = swift_task_alloc();
  v15 = v8[1];
  v5[31] = v15;
  v16 = *(*(v15 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v5[32] = v16;
  v17 = *(v16 - 8);
  v5[33] = v17;
  v18 = *(v17 + 64) + 15;
  v5[34] = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  v5[35] = v19;
  v20 = *(v19 - 8);
  v5[36] = v20;
  v21 = *(v20 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = *(swift_getAssociatedConformanceWitness() + 8);
  v22 = swift_getAssociatedTypeWitness();
  v5[39] = v22;
  v23 = *(v22 - 8);
  v5[40] = v23;
  v24 = *(v23 + 64) + 15;
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A669C, 0, 0);
}

uint64_t sub_1921A669C()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = *(v6 + 24);
  type metadata accessor for KeyPathPickerBox();
  v9 = *(*(v6 + 8) + 24);
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v4;
  v0[11] = v9;
  v10 = sub_192224D40();
  v0[42] = v10;
  v11 = v2 + *MEMORY[0x1E695A680];
  v12 = *(v11 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v3;
  v14 = *(v11 + 40);
  v0[3] = v10;
  v0[4] = v12;
  v0[5] = v4;
  v0[6] = WitnessTable;
  v0[7] = v14;
  sub_192224D50();
  v15 = sub_192228BA0();
  sub_192114D64(v7, v15, (v0 + 16));
  v16 = v0[37];
  v17 = v0[32];
  v18 = v0[21];
  v0[43] = v0[16];
  sub_192224B30();
  v19 = *(MEMORY[0x1E695A400] + 4);
  v20 = swift_task_alloc();
  v0[44] = v20;
  *v20 = v0;
  v20[1] = sub_1921A68D8;
  v21 = v0[41];
  v22 = v0[37];
  v23 = v0[35];
  v24 = v0[23];

  return MEMORY[0x1EEDB3AE0](v21, v23, v24);
}

uint64_t sub_1921A68D8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  if (v0)
  {
    v5 = sub_1921A7128;
  }

  else
  {
    v5 = sub_1921A6A40;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A6A40()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 152);
  swift_getAssociatedConformanceWitness();
  v8 = sub_192224CD0();
  (*(v2 + 8))(v1, v4);
  *(v0 + 136) = v8;
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  *(v0 + 112) = *(v0 + 96);
  *(v0 + 144) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  v9 = sub_192227EF0();
  v10 = *(v0 + 256);
  if (v9)
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 224);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);
    sub_192227C60();

    sub_192224B30();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(MEMORY[0x1E695A2C8] + 4);
    v20 = swift_task_alloc();
    *(v0 + 368) = v20;
    *v20 = v0;
    v20[1] = sub_1921A6D0C;
    v21 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    return MEMORY[0x1EEDB3838](v21, v23, AssociatedConformanceWitness);
  }

  else
  {
    v24 = *(v0 + 344);
    v25 = *(v0 + 152);
    v26 = *(v0 + 256);
    v27 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 1;
    swift_willThrow();

    v29 = *(v0 + 328);
    v30 = *(v0 + 296);
    v31 = *(v0 + 272);
    v32 = *(v0 + 240);
    v33 = *(v0 + 224);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1921A6D0C()
{
  v2 = *(*v1 + 368);
  v3 = *v1;
  v3[47] = v0;

  if (v0)
  {
    (*(v3[27] + 8))(v3[28], v3[26]);

    return MEMORY[0x1EEE6DFA0](sub_1921A71D4, 0, 0);
  }

  else
  {
    v4 = v3[42];
    (*(v3[27] + 8))(v3[28], v3[26]);
    v5 = *(MEMORY[0x1E6959E30] + 4);
    v6 = swift_task_alloc();
    v3[48] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v3;
    v6[1] = sub_1921A6EEC;
    v8 = v3[43];
    v9 = v3[34];
    v10 = v3[32];
    v11 = v3[30];

    return MEMORY[0x1EEDB2C88](v9, v8, v10, WitnessTable);
  }
}

uint64_t sub_1921A6EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[29] + 8))(v2[30], v2[25]);
  if (v0)
  {
    v5 = sub_1921A72A0;
  }

  else
  {
    v5 = sub_1921A7054;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A7054()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[30];
  v8 = v0[28];

  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1921A7128()
{
  v1 = v0[43];

  v2 = v0[45];
  v3 = v0[41];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[30];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1921A71D4()
{
  v1 = v0[43];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  (*(v3 + 8))(v2, v4);
  v5 = v0[47];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[30];
  v10 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1921A72A0()
{
  v1 = v0[43];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];

  (*(v3 + 8))(v2, v4);
  v5 = v0[49];
  v6 = v0[41];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[30];
  v10 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1921A736C()
{
  v2 = *v0;
  v3 = v0[1];
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1920A5800;

  return v7();
}

uint64_t sub_1921A7454(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920B3B44;

  return v9(a1);
}

uint64_t sub_1921A754C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1920B3B44;

  return v10(a2);
}

uint64_t sub_1921A7640()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_1921A76E0;

  return sub_1921A736C();
}

uint64_t sub_1921A76E0(uint64_t a1)
{
  v4 = *(*v2 + 80);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1921A77E0(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_1921A8440;

  return sub_1921A7454(a1);
}

uint64_t sub_1921A788C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v5;
  v6 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v6;
  v7 = swift_task_alloc();
  *(v3 + 80) = v7;
  *v7 = v3;
  v7[1] = sub_1921A7934;

  return sub_1921A754C(v7, a2);
}

uint64_t sub_1921A7934()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1921A7A28()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1921A7A64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1920EF9CC;

  return sub_1921A5608(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A7B4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_1921A5AFC(a1, v6, v4, v5);
}

uint64_t sub_1921A7C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_1921A6380(a1, v6, v4, v5, v7);
}

uint64_t sub_1921A7CC8(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1920B3B44;

  return sub_1921A5530(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1921A7DBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1920EF9CC;

  return sub_1921A3948(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A7E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920B3B44;

  return sub_1921A3E34(a1, v6, v4, v5);
}

uint64_t sub_1921A7F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920B3B44;

  return sub_1921A454C(a1, v6, v4, v5);
}

uint64_t sub_1921A7FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1920B3B44;

  return sub_1921A5530(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1921A80E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1920EF2F4;

  return sub_1921A22A4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A81C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_1921A2420(a1, v6, v4, v5, v7);
}

uint64_t sub_1921A8288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_1921A2CA8(a1, v6, v4, v5, v7);
}

uint64_t sub_1921A8344(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1920A59A8;

  return sub_1921A3870(a1, v14, v4);
}

uint64_t sub_1921A8448(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_192226570();
    sub_1921B0094(&qword_1EADEFF38, MEMORY[0x1E697F4E0]);
    sub_192227E00();
    sub_192227E60();
    sub_192227E30();
    if (v4)
    {
      sub_192227E60();
    }

    else
    {
      v6 = v3;
    }

    result = sub_192227E00();
    if (v6 >= v5)
    {
      sub_192227EC0();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

void static Widget.main()(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1922258B0();
  __swift_project_value_buffer(v6, qword_1ED74CCC8);
  v7 = sub_192225890();
  v8 = sub_192227FB0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_192028000, v7, v8, "main [Widget]", v9, 2u);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  type metadata accessor for ResolvedWidgetHost();
  sub_192227560();
  v10 = sub_1921AFBB8(v5);
  (*(v2 + 8))(v5, a1);
  *&xmmword_1ED74CC80 = v10;
  *(&xmmword_1ED74CC80 + 1) = &off_1F06B3BA8;
  qword_1ED74CC90 = &off_1F06B3B60;

  v11 = sub_192225890();
  v12 = sub_192227FB0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446210;
    v19 = xmmword_1ED74CC80;
    v20 = qword_1ED74CC90;
    v21 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1978, qword_19223E570);
    v15 = sub_192228230();
    v17 = sub_19202B8CC(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_192028000, v11, v12, "WidgetHost - %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x193B0C7F0](v14, -1, -1);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C300, 0x1E6966CA8);
  v18 = [objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer()) init];
  sub_192227F70();
}

uint64_t static ControlWidget.main()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192226810();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1922258B0();
  __swift_project_value_buffer(v12, qword_1ED74CCC8);
  v13 = sub_192225890();
  v14 = sub_192227FB0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_192028000, v13, v14, "main [Control]", v15, 2u);
    MEMORY[0x193B0C7F0](v15, -1, -1);
  }

  sub_192225AC0();
  MEMORY[0x193B097D0](v6, a1, a2);
  swift_getWitnessTable();
  type metadata accessor for ResolvedWidgetHost();
  *&xmmword_1ED74CC80 = sub_1921AFBB8(v11);
  *(&xmmword_1ED74CC80 + 1) = &off_1F06B3BA8;
  qword_1ED74CC90 = &off_1F06B3B60;

  v16 = sub_192225890();
  v17 = sub_192227FB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136446210;
    v25 = xmmword_1ED74CC80;
    v26 = qword_1ED74CC90;
    v27 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1978, qword_19223E570);
    v20 = sub_192228230();
    v22 = sub_19202B8CC(v20, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_192028000, v16, v17, "WidgetHost - %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x193B0C7F0](v19, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C300, 0x1E6966CA8);
  v23 = [objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer()) init];
  sub_192227F70();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1921A8C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = *(a1 + 32);
  sub_1920791AC();
  result = sub_1922259B0();
  v15 = v37;
  v34 = *(v37 + 16);
  if (v34)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v33 = v3;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = *(v7 + 72);
      sub_192036754(v15 + v18 + v19 * v16, v12, type metadata accessor for WidgetDescriptor);
      sub_192036754(v12, v6, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
LABEL_11:
          sub_192036A20(v6, type metadata accessor for ViewSource);
          sub_192082064(v12, v35, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v17 + 16) + 1, 1);
            v17 = v36;
          }

          v27 = *(v17 + 16);
          v26 = *(v17 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1920820CC(v26 > 1, v27 + 1, 1);
            v17 = v36;
          }

          *(v17 + 16) = v27 + 1;
          result = sub_192082064(v35, v17 + v18 + v27 * v19, type metadata accessor for WidgetDescriptor);
          goto LABEL_5;
        }

        sub_192036A20(v6, type metadata accessor for ViewSource);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_11;
        }

        v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
        v22 = *(v21 + 1);
        v23 = *(v21 + 3);

        v24 = sub_1922253B0();
        (*(*(v24 - 8) + 8))(v6, v24);
      }

      result = sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v34 == ++v16)
      {
        goto LABEL_17;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (*(v17 + 16))
  {
    v28 = v32;
    sub_192036754(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v32, type metadata accessor for WidgetDescriptor);
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v28 = v32;
  }

  return (*(v7 + 56))(v28, v29, 1, v31);
}

uint64_t sub_1921A9064@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19C0, &unk_19223E6B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-v12];
  v14 = *a1;
  swift_beginAccess();
  sub_19202CFFC(v3 + v14, v13, &qword_1EADF19C0, &unk_19223E6B0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return sub_1921B0024(v13, a3);
  }

  sub_192033970(v13, &qword_1EADF19C0, &unk_19223E6B0);
  a2(v3);
  sub_19202CFFC(a3, v11, &qword_1EADEEE20, &qword_19222B670);
  (*(v16 + 56))(v11, 0, 1, v15);
  swift_beginAccess();
  sub_1921AFFB4(v11, v3 + v14);
  return swift_endAccess();
}

uint64_t sub_1921A925C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for WidgetDescriptor(0);
  v35 = *(v32 - 8);
  v7 = *(v35 + 64);
  v8 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = *(a1 + 32);
  sub_1920791AC();
  result = sub_1922259B0();
  v14 = v38;
  v15 = *(v38 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v34 = v3;
    v18 = v35;
    while (v16 < *(v14 + 16))
    {
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = *(v18 + 72);
      sub_192036754(v14 + v19 + v20 * v16, v11, type metadata accessor for WidgetDescriptor);
      sub_192036754(v11, v6, type metadata accessor for ViewSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
        v22 = *(v21 + 1);
        v23 = *(v21 + 3);

        v24 = sub_1922253B0();
        (*(*(v24 - 8) + 8))(v6, v24);
        sub_192082064(v11, v36, type metadata accessor for WidgetDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1920820CC(0, *(v17 + 16) + 1, 1);
          v17 = v37;
        }

        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1920820CC(v26 > 1, v27 + 1, 1);
          v17 = v37;
        }

        *(v17 + 16) = v27 + 1;
        result = sub_192082064(v36, v17 + v19 + v27 * v20, type metadata accessor for WidgetDescriptor);
        v18 = v35;
      }

      else
      {
        sub_192036A20(v6, type metadata accessor for ViewSource);
        result = sub_192036A20(v11, type metadata accessor for WidgetDescriptor);
      }

      if (v15 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v35;
LABEL_13:

    if (*(v17 + 16))
    {
      v28 = v33;
      sub_192036754(v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v33, type metadata accessor for WidgetDescriptor);
      v29 = v18;
      v30 = 0;
    }

    else
    {
      v29 = v18;
      v30 = 1;
      v28 = v33;
    }

    return (*(v29 + 56))(v28, v30, 1, v32);
  }

  return result;
}

uint64_t sub_1921A9650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = *(a1 + 32);
  sub_1920791AC();
  result = sub_1922259B0();
  v15 = v38;
  v16 = *(v38 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v34 = v3;
    v35 = v16;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = *(v7 + 72);
      sub_192036754(v15 + v19 + v20 * v17, v12, type metadata accessor for WidgetDescriptor);
      sub_192036754(v12, v6, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_192036A20(v6, type metadata accessor for ViewSource);
          sub_192082064(v12, v36, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v18 + 16) + 1, 1);
            v18 = v37;
          }

          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1920820CC(v27 > 1, v28 + 1, 1);
            v18 = v37;
          }

          *(v18 + 16) = v28 + 1;
          result = sub_192082064(v36, v18 + v19 + v28 * v20, type metadata accessor for WidgetDescriptor);
          v16 = v35;
          goto LABEL_5;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
        v23 = *(v22 + 1);
        v24 = *(v22 + 3);

        v16 = v35;

        v25 = sub_1922253B0();
        (*(*(v25 - 8) + 8))(v6, v25);
        goto LABEL_4;
      }

      sub_192036A20(v6, type metadata accessor for ViewSource);
LABEL_4:
      result = sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v16 == ++v17)
      {
        goto LABEL_17;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (*(v18 + 16))
  {
    v29 = v33;
    sub_192036754(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v33, type metadata accessor for WidgetDescriptor);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v29 = v33;
  }

  return (*(v7 + 56))(v29, v30, 1, v32);
}

void sub_1921A9A44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v23 - v3;
  v5 = type metadata accessor for WidgetDescriptor(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v15 = sub_192227960();
    v17 = v16;

    sub_1921A8C2C(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
    }

    else
    {
      sub_192082064(v4, v12, type metadata accessor for WidgetDescriptor);
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      sub_19202A7A8(0, &qword_1ED749A50, 0x1E6994310);
      sub_192036754(v12, v10, type metadata accessor for WidgetDescriptor);
      sub_1920367C8(v19, v18);
      v20 = sub_1921ADC0C(v10, v15, v17, v19, v18);
      [v20 copy];
      sub_1922282B0();

      swift_unknownObjectRelease();
      sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
      swift_dynamicCast();
      v21 = v23[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_19222C680;
      *(v22 + 32) = v21;
      sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1921A9D54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = type metadata accessor for WidgetDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v50 - v17;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v20 = sub_192227960();
    v22 = v21;

    sub_1921A9A44();
    v54 = v23;
    sub_1921A9630(v8);
    v52 = *(v10 + 48);
    v24 = v52(v8, 1, v9);
    v25 = 0x1FB0EE000;
    v51 = v14;
    v53 = v22;
    if (v24 == 1)
    {
      sub_192033970(v8, &qword_1EADEEE20, &qword_19222B670);
      v26 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v50 = type metadata accessor for WidgetDescriptor;
      v27 = v55;
      sub_192082064(v8, v55, type metadata accessor for WidgetDescriptor);
      v29 = *(v1 + 16);
      v28 = *(v1 + 24);
      sub_19202A7A8(0, qword_1ED7491A8, 0x1E69942E0);
      v30 = v27;
      v31 = v6;
      v32 = v20;
      v33 = v9;
      v34 = v56;
      sub_192036754(v30, v56, type metadata accessor for WidgetDescriptor);

      sub_1920367C8(v29, v28);
      v35 = v34;
      v9 = v33;
      v20 = v32;
      v6 = v31;
      v25 = &property descriptor for StorageBackedControlArchive.state;
      v36 = sub_192038824(v35, v20, v22, v29, v28);
      sub_192039140(v29, v28);
      [v36 copy];
      sub_1922282B0();

      swift_unknownObjectRelease();
      sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
      swift_dynamicCast();
      v37 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_19222C680;
      *(v26 + 32) = v37;
      sub_192036A20(v55, v50);
    }

    sub_1921A9044(v6);
    if (v52(v6, 1, v9) == 1)
    {

      sub_192033970(v6, &qword_1EADEEE20, &qword_19222B670);
      v38 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v39 = v51;
      sub_192082064(v6, v51, type metadata accessor for WidgetDescriptor);
      v41 = *(v1 + 16);
      v40 = *(v1 + 24);
      sub_19202A7A8(0, qword_1EADEE810, 0x1E6994308);
      v42 = v56;
      sub_192036754(v39, v56, type metadata accessor for WidgetDescriptor);
      sub_1920367C8(v41, v40);
      v43 = sub_1921AF35C(v42, v20, v53, v41, v40);
      sub_192039140(v41, v40);
      [v43 v25 + 1016];
      sub_1922282B0();

      swift_unknownObjectRelease();
      sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
      swift_dynamicCast();
      v44 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_19222C680;
      *(v38 + 32) = v44;
      sub_192036A20(v39, type metadata accessor for WidgetDescriptor);
    }

    v45 = v54;
    if (v54 >> 62)
    {
      if (sub_192228340() == 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_12:

LABEL_19:
      Result = type metadata accessor for DescriptorFetchResult();
      v48 = objc_allocWithZone(Result);
      v49 = sub_192036D98(v45);

      *&v48[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v49;
      *&v48[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v38;
      *&v48[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v26;
      v58.receiver = v48;
      v58.super_class = Result;
      objc_msgSendSuper2(&v58, sel_init);
      return;
    }

    if (v38 >> 62)
    {
      if (sub_192228340() == 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_12;
    }

    if (v26 >> 62)
    {
      v46 = sub_192228340();
    }

    else
    {
      v46 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v46 == 1)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  __break(1u);
}

double sub_1921AA3F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v4 = *v2;
  v5 = type metadata accessor for ViewSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v38 = v2;
  v19 = *(v4 + 96);
  v20 = *(v4 + 104);
  v21 = type metadata accessor for ResolvedWidgetHost();
  sub_19207B920(a1, v21, &off_1F06B3B60, v18);
  sub_19202CFFC(v18, v16, &qword_1EADEEE20, &qword_19222B670);
  v22 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
  {
    sub_192033970(v18, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    sub_192036754(v16, v11, type metadata accessor for ViewSource);
    sub_192036A20(v16, type metadata accessor for WidgetDescriptor);
    sub_192082064(v11, v9, type metadata accessor for ViewSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      sub_192036A20(v9, type metadata accessor for ViewSource);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v24 = v9[1];
        v25 = v9[3];
        v26 = v9[4];
        v27 = v9[5];
        v28 = v9[6];
        v29 = v9[7];

        sub_19207C280(v26, v27);

        v28(v30);

        sub_192033970(v18, &qword_1EADEEE20, &qword_19222B670);
        return result;
      }

      v32 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
      v33 = *(v32 + 1);
      v34 = *(v32 + 3);

      v35 = sub_1922253B0();
      (*(*(v35 - 8) + 8))(v9, v35);
    }

    v16 = v18;
  }

  sub_192033970(v16, &qword_1EADEEE20, &qword_19222B670);
  result = 0.0;
  v36 = v37;
  *v37 = 0u;
  v36[1] = 0u;
  *(v36 + 4) = 0;
  return result;
}

uint64_t sub_1921AA784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ViewSource(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WidgetDescriptor(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  v15 = sub_192036694();
  v75 = *(v15 + 16);
  if (v75)
  {
    v16 = 0;
    v17 = *(v9 + 80);
    v60 = a2;
    v61 = (v17 + 32) & ~v17;
    v76 = v15 + v61;
    v69 = MEMORY[0x1E69E7CC0];
    v18 = v9;
    v19 = v15;
    v20 = v75;
    v62 = v8;
    v64 = v18;
    v65 = v15;
    v66 = v4;
    v67 = a1;
    while (1)
    {
      if (v16 >= *(v19 + 16))
      {
        __break(1u);
LABEL_43:
        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v56 = sub_1922258B0();
        __swift_project_value_buffer(v56, qword_1ED74CCC8);
        v57 = sub_192225890();
        v58 = sub_192227F90();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 134349056;
          *(v59 + 4) = a1;
          _os_log_impl(&dword_192028000, v57, v58, "Unrecognized family: %{public}ld", v59, 0xCu);
          MEMORY[0x193B0C7F0](v59, -1, -1);
        }

        sub_192228620();
        __break(1u);
LABEL_48:
        result = sub_192228990();
        __break(1u);
        return result;
      }

      v21 = *(v18 + 72);
      sub_192036754(v76 + v21 * v16, v14, type metadata accessor for WidgetDescriptor);
      if (a1)
      {
        sub_192036754(v14, v7, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_192036A20(v7, type metadata accessor for ViewSource);
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v23 = v8;
            v24 = *v7;
            v25 = v7[1];
            v26 = v7[4];
            v70 = v7[3];
            v71 = v26;
            v27 = v7[7];
            v72 = v7[5];
            v73 = v27;
            v74 = a1;
            v28 = [v74 kind];
            v29 = sub_192227960();
            v31 = v30;

            v32 = v25;
            if (v24 == v29 && v25 == v31)
            {

              v8 = v23;
              goto LABEL_15;
            }

            v37 = sub_1922289A0();

            v8 = v23;
            if (v37)
            {
LABEL_15:
              v68 = v32;
              v38 = *&v14[*(v8 + 28)];
              v39 = *(v38 + 16);
              if (v39)
              {
                v78 = MEMORY[0x1E69E7CC0];
                sub_19207C250(0, v39, 0);
                v40 = v78;
                v41 = (v38 + 32);
                while (1)
                {
                  v42 = *v41++;
                  a1 = v42;
                  v43 = v42 - 1;
                  if ((v42 - 1) >= 0xE || ((0x2FFFu >> v43) & 1) == 0)
                  {
                    goto LABEL_43;
                  }

                  v44 = byte_19223E728[v43];
                  v78 = v40;
                  v46 = *(v40 + 16);
                  v45 = *(v40 + 24);
                  if (v46 >= v45 >> 1)
                  {
                    sub_19207C250((v45 > 1), v46 + 1, 1);
                    v40 = v78;
                  }

                  *(v40 + 16) = v46 + 1;
                  *(v40 + v46 + 32) = v44;
                  if (!--v39)
                  {
                    v8 = v62;
                    goto LABEL_24;
                  }
                }
              }

              v40 = MEMORY[0x1E69E7CC0];
LABEL_24:
              v20 = v75;
              InternalWidgetFamily.init(_:)([v74 family], &v77);
              a1 = v67;
              v19 = v65;
              if (v77 > 0xCuLL)
              {
                goto LABEL_48;
              }

              v47 = *(v40 + 16);
              v48 = (v40 + 32);
              do
              {
                if (!v47)
                {

                  sub_19207C280(v71, v72);

                  sub_192036A20(v14, type metadata accessor for WidgetDescriptor);
                  v18 = v64;
                  goto LABEL_5;
                }

                v49 = *v48++;
                --v47;
              }

              while (qword_19223E6C0[v77] != v49);

              sub_19207C280(v71, v72);

              sub_192082064(v14, v63, type metadata accessor for WidgetDescriptor);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v50 = v69;
              }

              else
              {
                v50 = sub_19207C2E8(0, v69[2] + 1, 1, v69);
              }

              v52 = v50[2];
              v51 = v50[3];
              if (v52 >= v51 >> 1)
              {
                v50 = sub_19207C2E8(v51 > 1, v52 + 1, 1, v50);
              }

              v50[2] = v52 + 1;
              v69 = v50;
              sub_192082064(v63, v50 + v61 + v52 * v21, type metadata accessor for WidgetDescriptor);
              v18 = v64;
            }

            else
            {
              sub_192036A20(v14, type metadata accessor for WidgetDescriptor);

              sub_19207C280(v71, v72);

              v18 = v64;
              v19 = v65;
              a1 = v67;
            }

            v20 = v75;
            goto LABEL_5;
          }

          v33 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
          v34 = *(v33 + 1);
          v35 = *(v33 + 3);

          v20 = v75;

          v36 = sub_1922253B0();
          (*(*(v36 - 8) + 8))(v7, v36);
        }
      }

      sub_192036A20(v14, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (++v16 == v20)
      {

        a2 = v60;
        v53 = v69;
        if (!v69[2])
        {
          goto LABEL_40;
        }

LABEL_38:
        sub_192036754(v53 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), a2, type metadata accessor for WidgetDescriptor);
        v54 = 0;
        goto LABEL_41;
      }
    }
  }

  v53 = MEMORY[0x1E69E7CC0];
  v18 = v9;
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_38;
  }

LABEL_40:
  v54 = 1;
LABEL_41:

  return (*(v18 + 56))(a2, v54, 1, v8);
}

uint64_t sub_1921AAF24@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for ViewSource(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921A9044(v5);
  v10 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10))
  {
    sub_192033970(v5, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    sub_192036754(v5, v9, type metadata accessor for ViewSource);
    sub_192033970(v5, &qword_1EADEEE20, &qword_19222B670);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
      v12 = sub_1922253B0();
      v13 = *(*(v12 - 8) + 8);
      v14 = *v11;
      v18 = *(v11 + 1);
      v19 = v14;
      result = v13(v9, v12);
      v16 = v18;
      *a1 = v19;
      a1[1] = v16;
      return result;
    }

    sub_192036A20(v9, type metadata accessor for ViewSource);
  }

  sub_1920EECBC();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

uint64_t sub_1921AB15C()
{
  v1 = *(v0 + 32);

  sub_192033970(v0 + qword_1ED749988, &qword_1EADF19C0, &unk_19223E6B0);
  sub_192033970(v0 + qword_1ED749520, &qword_1EADF19C0, &unk_19223E6B0);
  return sub_192033970(v0 + qword_1ED748A90, &qword_1EADF19C0, &unk_19223E6B0);
}

void *sub_1921AB1E0()
{
  sub_192039140(v0[2], v0[3]);
  v1 = v0[4];

  sub_192033970(v0 + qword_1ED749988, &qword_1EADF19C0, &unk_19223E6B0);
  sub_192033970(v0 + qword_1ED749520, &qword_1EADF19C0, &unk_19223E6B0);
  sub_192033970(v0 + qword_1ED748A90, &qword_1EADF19C0, &unk_19223E6B0);
  return v0;
}

uint64_t sub_1921AB270()
{
  sub_1921AB1E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1921AB3B8(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v9);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_192033970(v5, &qword_1EADEEE20, &qword_19222B670);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_192082064(v5, v11, type metadata accessor for WidgetDescriptor);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB80, &qword_19222AF60);
    v13 = *(v7 + 72);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19222B480;
    sub_192082064(v11, v15 + v14, type metadata accessor for WidgetDescriptor);
    return v15;
  }
}

void static WidgetBundle.main()(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1922258B0();
  __swift_project_value_buffer(v6, qword_1ED74CCC8);
  v7 = sub_192225890();
  v8 = sub_192227FB0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_192028000, v7, v8, "main [WidgetBundle]", v9, 2u);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  type metadata accessor for ResolvedWidgetBundleHost();
  sub_192225A90();
  v10 = sub_1921AFD24(v5, a1);
  (*(v2 + 8))(v5, a1);
  *&xmmword_1ED74CC80 = v10;
  *(&xmmword_1ED74CC80 + 1) = &off_1F06B3B48;
  qword_1ED74CC90 = &off_1F06B3B00;

  v11 = sub_192225890();
  v12 = sub_192227FB0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446210;
    v19 = xmmword_1ED74CC80;
    v20 = qword_1ED74CC90;
    v21 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1978, qword_19223E570);
    v15 = sub_192228230();
    v17 = sub_19202B8CC(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_192028000, v11, v12, "WidgetHost - %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x193B0C7F0](v14, -1, -1);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C300, 0x1E6966CA8);
  v18 = [objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer()) init];
  sub_192227F70();
}

uint64_t sub_1921AB8BC(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = *(a1 + 32);
  sub_1920791AC();
  result = sub_192225D70();
  v15 = v33;
  v16 = *(v33 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v29 = *(v33 + 16);
    v30 = v2;
    while (v17 < *(v15 + 16))
    {
      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = *(v7 + 72);
      sub_192036754(v15 + v19 + v20 * v17, v12, type metadata accessor for WidgetDescriptor);
      sub_192036754(v12, v5, type metadata accessor for ViewSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
        v22 = *(v21 + 1);
        v23 = *(v21 + 3);

        v24 = sub_1922253B0();
        (*(*(v24 - 8) + 8))(v5, v24);
        sub_192082064(v12, v31, type metadata accessor for WidgetDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1920820CC(0, *(v18 + 16) + 1, 1);
          v18 = v32;
        }

        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1920820CC(v26 > 1, v27 + 1, 1);
          v18 = v32;
        }

        *(v18 + 16) = v27 + 1;
        result = sub_192082064(v31, v18 + v19 + v27 * v20, type metadata accessor for WidgetDescriptor);
        v16 = v29;
      }

      else
      {
        sub_192036A20(v5, type metadata accessor for ViewSource);
        result = sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
      }

      if (v16 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v18;
  }

  return result;
}

uint64_t sub_1921ABC08(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = *(a1 + 32);
  sub_1920791AC();
  result = sub_192225D70();
  v15 = v34;
  v16 = *(v34 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v30 = v2;
    v31 = v16;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = *(v7 + 72);
      sub_192036754(v15 + v19 + v20 * v17, v12, type metadata accessor for WidgetDescriptor);
      sub_192036754(v12, v5, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_192036A20(v5, type metadata accessor for ViewSource);
          sub_192082064(v12, v32, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v18 + 16) + 1, 1);
            v18 = v33;
          }

          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1920820CC(v27 > 1, v28 + 1, 1);
            v18 = v33;
          }

          *(v18 + 16) = v28 + 1;
          result = sub_192082064(v32, v18 + v19 + v28 * v20, type metadata accessor for WidgetDescriptor);
          v16 = v31;
          goto LABEL_5;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v22 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
        v23 = *(v22 + 1);
        v24 = *(v22 + 3);

        v16 = v31;

        v25 = sub_1922253B0();
        (*(*(v25 - 8) + 8))(v5, v25);
        goto LABEL_4;
      }

      sub_192036A20(v5, type metadata accessor for ViewSource);
LABEL_4:
      result = sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v16 == ++v17)
      {
        goto LABEL_17;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v34 = MEMORY[0x1E69E7CD0];
  v29 = sub_1920822EC(v18, &v34);

  return v29;
}

uint64_t sub_1921ABFAC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1922253B0();
  v7 = *(v80 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x1EEE9AC00](v80);
  v79 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v74 - v13;
  v99 = sub_192225360();
  v93 = *(v99 - 8);
  v15 = *(v93 + 64);
  v16 = MEMORY[0x1EEE9AC00](v99);
  v91 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v98 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v74 - v20;
  if (qword_1EADEDEB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1922258B0();
  v90 = __swift_project_value_buffer(v21, qword_1EAE007D8);
  v22 = sub_192225890();
  v23 = sub_192227F80();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v6;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_192028000, v22, v23, "WidgetHost activity search: START", v25, 2u);
    v26 = v25;
    v6 = v24;
    MEMORY[0x193B0C7F0](v26, -1, -1);
  }

  v27 = sub_192039194();
  v29 = v93 + 16;
  v28 = *(v93 + 16);
  v30 = v99;
  v28(v76, a1, v99);
  v89 = v28;
  v28(v98, a1, v30);
  v31 = *(v27 + 16);
  v92 = (v29 - 8);
  v93 = v29;
  if (!v31)
  {
    v32 = 0;
    goto LABEL_19;
  }

  v88 = (v7 + 32);
  v103 = (v7 + 8);
  v84 = (v7 + 16);
  v32 = 0;
  v33 = *(type metadata accessor for WidgetDescriptor(0) - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v74 = v27;
  v7 = (v27 + v34);
  v35 = *(v33 + 72);
  *&v36 = 136446466;
  v77 = v36;
  v37 = v80;
  v38 = v79;
  v86 = v6;
  v87 = v3;
  v78 = v14;
  v85 = v31;
  v83 = v35;
  while (1)
  {
    sub_192036754(v7, v6, type metadata accessor for ViewSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_192036A20(v6, type metadata accessor for ViewSource);
LABEL_8:
    ++v32;
    v7 = (v7 + v35);
    if (v31 == v32)
    {
      v32 = v31;
      goto LABEL_18;
    }
  }

  v39 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
  v40 = *(v39 + 1);
  v96 = *(v39 + 3);
  v97 = v40;
  (*v88)(v14, v6, v37);
  v41 = v14;
  v42 = v95;
  sub_192225320();
  v43 = sub_192225390();
  v44 = *v103;
  (*v103)(v42, v37);
  if ((v43 & 1) == 0)
  {
    (*v84)(v38, v41, v37);
    v45 = v91;
    v89(v91, v98, v99);
    v46 = sub_192225890();
    v94 = sub_192227F80();
    if (os_log_type_enabled(v46, v94))
    {
      v47 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v100 = v82;
      *v47 = v77;
      v81 = v46;
      v48 = sub_192225380();
      v50 = v49;
      v44(v38, v37);
      v51 = sub_19202B8CC(v48, v50, &v100);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = v95;
      sub_192225320();
      v53 = sub_192225380();
      v55 = v54;
      v56 = v52;
      v57 = v80;
      v44(v56, v80);
      (*v92)(v45, v99);
      v58 = sub_19202B8CC(v53, v55, &v100);
      v14 = v78;

      *(v47 + 14) = v58;
      v59 = v81;
      _os_log_impl(&dword_192028000, v81, v94, "WidgetHost session search: Candidate Failure - (%{public}s) vs. (%{public}s)", v47, 0x16u);
      v60 = v82;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v60, -1, -1);
      MEMORY[0x193B0C7F0](v47, -1, -1);

      v44(v14, v57);
      v6 = v86;
      v37 = v57;
      v38 = v79;
    }

    else
    {
      v14 = v41;

      (*v92)(v45, v99);
      v44(v38, v37);
      v44(v41, v37);
      v6 = v86;
    }

    v31 = v85;
    v35 = v83;
    goto LABEL_8;
  }

  v44(v41, v37);

LABEL_18:
  v27 = v74;
LABEL_19:
  v61 = *(v27 + 16);
  v62 = v92;
  if (v32 == v61)
  {
    v63 = *v92;
    v64 = v99;
    (*v92)(v76, v99);

    (v63)(v98, v64);
    sub_1920EECBC();
    swift_allocError();
    *v65 = 0;
    return swift_willThrow();
  }

  if (v32 >= v61)
  {
    __break(1u);
  }

  else
  {
    v67 = *(type metadata accessor for WidgetDescriptor(0) - 8);
    v68 = v76;
    v69 = sub_1921AC914(v27 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v32, v76, &v100);
    v7 = *v62;
    (*v62)(v68, v99, v69);
    v70 = v100;
    v71 = v101;
    v72 = v102;
    sub_1921AFEC8(v100);
    sub_1921AFE84(v70);
    if (v70)
    {

      result = (v7)(v98, v99);
      v73 = v75;
      *v75 = v70;
      *(v73 + 2) = v71;
      *(v73 + 3) = v72;
      return result;
    }
  }

  result = (v7)(v98, v99);
  __break(1u);
  return result;
}

double sub_1921AC914@<D0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_192225360();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewSource(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1922253B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  sub_192036754(a1, v13, type metadata accessor for ViewSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = v9;
    v64 = a3;
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
    v25 = *v24;
    v63 = *(v24 + 8);
    v26 = *(v24 + 3);
    (*(v15 + 32))(v23, v13, v14);
    v61 = a2;
    sub_192225320();
    v27 = sub_192225390();
    v28 = *(v15 + 8);
    v28(v21, v14);
    if (v27)
    {
      v28(v23, v14);
      v29 = v64;
      *v64 = v25;
      result = *&v63;
      *(v29 + 1) = v63;
      v29[3] = v26;
    }

    else
    {
      v59 = v26;
      v60 = v28;
      if (qword_1EADEDEB0 != -1)
      {
        swift_once();
      }

      v31 = sub_1922258B0();
      __swift_project_value_buffer(v31, qword_1EAE007D8);
      v32 = v65;
      (*(v15 + 16))(v65, v23, v14);
      v34 = v66;
      v33 = v67;
      v35 = v62;
      (*(v66 + 16))(v62, v61, v67);
      v36 = sub_192225890();
      v37 = sub_192227F80();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v61 = v23;
        v39 = v38;
        v58 = swift_slowAlloc();
        v68 = v58;
        *v39 = 136446466;
        v57 = v37;
        v40 = sub_192225380();
        v56 = v36;
        v41 = v40;
        v43 = v42;
        v60(v32, v14);
        v44 = sub_19202B8CC(v41, v43, &v68);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2082;
        v45 = v39;
        sub_192225320();
        v46 = sub_192225380();
        v48 = v47;
        v49 = v60;
        v60(v21, v14);
        (*(v34 + 8))(v35, v33);
        v50 = sub_19202B8CC(v46, v48, &v68);

        *(v45 + 14) = v50;
        v51 = v56;
        _os_log_impl(&dword_192028000, v56, v57, "WidgetHost session search: Candidate Failure - (%{public}s) vs. (%{public}s)", v45, 0x16u);
        v52 = v58;
        swift_arrayDestroy();
        MEMORY[0x193B0C7F0](v52, -1, -1);
        MEMORY[0x193B0C7F0](v45, -1, -1);

        v49(v61, v14);
      }

      else
      {

        (*(v34 + 8))(v35, v33);
        v53 = v60;
        v60(v32, v14);
        v53(v23, v14);
      }

      v54 = v64;
      result = 0.0;
      *v64 = 0u;
      *(v54 + 1) = 0u;
    }
  }

  else
  {
    sub_192036A20(v13, type metadata accessor for ViewSource);
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1921ACEAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v41 = a3;
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADEDEB0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v11 = sub_1922258B0();
  __swift_project_value_buffer(v11, qword_1EAE007D8);
  v12 = sub_192225890();
  v13 = sub_192227F80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_192028000, v12, v13, "WidgetHost activity context search: START", v14, 2u);
    MEMORY[0x193B0C7F0](v14, -1, -1);
  }

  v15 = sub_192039194();
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    *&v39 = v16 - 1;
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      v19 = v17;
      while (1)
      {
        if (v19 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_192036754(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, type metadata accessor for WidgetDescriptor);
        sub_1921AD264(v10, a1, a2, v40);
        if (v3)
        {

          sub_192036A20(v10, type metadata accessor for WidgetDescriptor);

          __break(1u);
          return result;
        }

        sub_192036A20(v10, type metadata accessor for WidgetDescriptor);
        if (*&v40[0])
        {
          break;
        }

        ++v19;
        sub_1921AFE84(0);
        if (v16 == v19)
        {
          goto LABEL_19;
        }
      }

      v37 = v40[0];
      v38 = v40[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1920C3690(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = v18;
      v21 = *(v18 + 2);
      v22 = v20;
      v23 = *(v20 + 3);
      v24 = v21 + 1;
      v26 = v37;
      v25 = v38;
      if (v21 >= v23 >> 1)
      {
        v36 = v21 + 1;
        v28 = sub_1920C3690((v23 > 1), v21 + 1, 1, v22);
        v24 = v36;
        v26 = v37;
        v25 = v38;
        v22 = v28;
      }

      v17 = v19 + 1;
      *(v22 + 2) = v24;
      v27 = &v22[32 * v21];
      v18 = v22;
      *(v27 + 2) = v26;
      *(v27 + 3) = v25;
    }

    while (v39 != v19);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:

  if (*(v18 + 2))
  {
    v29 = v18;
    v30 = *(v18 + 4);
    v31 = *(v29 + 7);
    v39 = *(v29 + 40);

    v33 = v41;
    *v41 = v30;
    *(v33 + 1) = v39;
    v33[3] = v31;
  }

  else
  {

    sub_1920EECBC();
    swift_allocError();
    *v34 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1921AD264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v62 = a2;
  v63 = a3;
  v7 = type metadata accessor for ViewSource(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1922253B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  sub_192036754(a1, v10, type metadata accessor for ViewSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = a4;
    v60 = v4;
    v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
    v22 = *v21;
    v58 = *(v21 + 8);
    v23 = *(v21 + 3);
    (*(v12 + 32))(v20, v10, v11);
    sub_1922253A0();
    v24 = sub_192225390();
    v25 = v12;
    v26 = *(v12 + 8);
    v57 = v18;
    v26(v18, v11);
    if (v24)
    {
      result = (v26)(v20, v11);
      v28 = v59;
      *v59 = v22;
      *(v28 + 1) = v58;
      v28[3] = v23;
    }

    else
    {
      v56 = v23;
      if (qword_1EADEDEB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1922258B0();
      __swift_project_value_buffer(v29, qword_1EAE007D8);
      v30 = v61;
      (*(v25 + 16))(v61, v20, v11);
      v31 = sub_192225890();
      v32 = sub_192227F80();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v55 = v20;
        v34 = v33;
        v54 = swift_slowAlloc();
        v64 = v54;
        *v34 = 136446466;
        v53 = v31;
        v35 = sub_192225380();
        v36 = v30;
        v37 = v11;
        v39 = v38;
        v26(v36, v11);
        v40 = sub_19202B8CC(v35, v39, &v64);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2082;
        v41 = v32;
        v42 = v57;
        sub_1922253A0();
        v43 = sub_192225380();
        v45 = v44;
        v26(v42, v37);
        v46 = sub_19202B8CC(v43, v45, &v64);

        *(v34 + 14) = v46;
        v47 = v53;
        _os_log_impl(&dword_192028000, v53, v41, "WidgetHost session context search: Candidate Failure - (%{public}s) vs. (%{public}s)", v34, 0x16u);
        v48 = v54;
        swift_arrayDestroy();
        MEMORY[0x193B0C7F0](v48, -1, -1);
        MEMORY[0x193B0C7F0](v34, -1, -1);

        v49 = v55;
        v50 = v37;
      }

      else
      {

        v26(v30, v11);
        v49 = v20;
        v50 = v11;
      }

      result = (v26)(v49, v50);
      v51 = v59;
      *v59 = 0u;
      *(v51 + 1) = 0u;
    }
  }

  else
  {
    result = sub_192036A20(v10, type metadata accessor for ViewSource);
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1921AD738@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ViewSource(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  sub_1921AA784(a1, &v32 - v16);
  sub_19202CFFC(v17, v15, &qword_1EADEEE20, &qword_19222B670);
  v18 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    sub_192033970(v17, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    sub_192036754(v15, v10, type metadata accessor for ViewSource);
    sub_192036A20(v15, type metadata accessor for WidgetDescriptor);
    sub_192082064(v10, v8, type metadata accessor for ViewSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      sub_192036A20(v8, type metadata accessor for ViewSource);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v20 = v8[1];
        v21 = v8[3];
        v22 = v8[4];
        v23 = v8[5];
        v24 = v8[6];
        v25 = v8[7];

        sub_19207C280(v22, v23);

        v24(v26);

        sub_192033970(v17, &qword_1EADEEE20, &qword_19222B670);
        return result;
      }

      v28 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
      v29 = *(v28 + 1);
      v30 = *(v28 + 3);

      v31 = sub_1922253B0();
      (*(*(v31 - 8) + 8))(v8, v31);
    }

    v15 = v17;
  }

  sub_192033970(v15, &qword_1EADEEE20, &qword_19222B670);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1921ADA7C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];
}

uint64_t sub_1921ADABC()
{
  sub_192039140(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1921ADC0C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, void *a5)
{
  v169 = a5;
  v167 = type metadata accessor for ViewSource(0);
  v7 = *(*(v167 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v167);
  v10 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v166 = &v161 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v161 - v13;
  v173 = type metadata accessor for WidgetDescriptor(0);
  v14 = *(a1 + *(v173 + 28));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 32);
    do
    {
      v18 = *v17++;
      v16 |= CHSWidgetFamilyMaskFromWidgetFamily();
      --v15;
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v168 = a4;
  sub_1921DB7C0(&v174);
  if (v175)
  {
    sub_19203832C(&v174, &v180);
    v19 = sub_192227930();

    v20 = v181;
    v21 = v182;
    __swift_project_boxed_opaque_existential_1(&v180, v181);
    (*(v21 + 16))(v20, v21);
    v22 = sub_192227930();

    v23 = v181;
    v24 = v182;
    __swift_project_boxed_opaque_existential_1(&v180, v181);
    (*(v24 + 24))(v23, v24);
    v25 = v173;
    if (v26)
    {
      v27 = sub_192227930();
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExtensionBundleIdentifier:v19 containerBundleIdentifier:0 kind:v22 supportedFamilies:v16 intentType:v27];

    sub_192033A64(&v180, v179);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19A8, &qword_19223E690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19B0, &qword_19223E698);
    v29 = swift_dynamicCast();
    v172 = v28;
    v170 = a1;
    if ((v29 & 1) == 0)
    {
      v178 = 0;
      memset(v177, 0, sizeof(v177));
      sub_192033970(v177, &qword_1EADF19B8, &unk_19223E6A0);
      goto LABEL_45;
    }

    sub_19203832C(v177, &v174);
    v30 = v175;
    v31 = v176;
    __swift_project_boxed_opaque_existential_1(&v174, v175);
    v32 = (*(v31 + 8))(v30, v31);
    if (!v32)
    {
      __swift_destroy_boxed_opaque_existential_1(&v174);
      v28 = v172;
      goto LABEL_45;
    }

    v34 = v33;
    v35 = v32;
    v36 = v32();
    sub_19207C280(v35, v34);
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = *(v36 + 32);
    }

    else
    {
      v38 = 0;
    }

    if ((*MEMORY[0x1E69941F8] & 0x8000000000000000) != 0)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v37 >= *MEMORY[0x1E69941F8])
    {
      v39 = *MEMORY[0x1E69941F8];
    }

    else
    {
      v39 = v37;
    }

    v164 = MEMORY[0x1E69E7CC0];
    v179[0] = MEMORY[0x1E69E7CC0];
    v163 = v36;
    if (!v39)
    {
      goto LABEL_37;
    }

    v40 = 0;
    v171 = -v39;
    v164 = MEMORY[0x1E69E7CC0];
    v41 = v36 + 48;
    v162 = v38;
    v161 = v39;
LABEL_23:
    if (v40 <= v39)
    {
      v42 = v39;
    }

    else
    {
      v42 = v40;
    }

    v43 = -v42;
    v38 = (v41 + 24 * v40++);
    while (1)
    {
      if (v43 + v40 == 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v45 = *(v38 - 2);
      v44 = *(v38 - 1);
      v46 = *v38;
      v47 = objc_allocWithZone(MEMORY[0x1E69942D0]);
      v48 = v45;

      v49 = [v47 initWithIntent_];
      if (v49)
      {
        v50 = v49;
        v51 = objc_allocWithZone(MEMORY[0x1E69942C0]);
        v52 = sub_192227930();
        v53 = v51;
        v25 = v173;
        v54 = [v53 initWithIntentReference:v50 localizedDescription:v52];

        if (v54)
        {
          MEMORY[0x193B0AB00]();
          if (*((v179[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v56 = *((v179[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_192227BB0();
          }

          v55 = v171 + v40;
          sub_192227C00();
          v164 = v179[0];
          v38 = v162;
          v39 = v161;
          if (!v55)
          {
LABEL_37:
            swift_unknownObjectRelease();
            if (!(v164 >> 62))
            {
              a1 = v170;
              if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

LABEL_43:

              v28 = v172;
              goto LABEL_44;
            }

LABEL_42:
            v61 = sub_192228340();
            a1 = v170;
            if (!v61)
            {
              goto LABEL_43;
            }

LABEL_39:
            v57 = objc_allocWithZone(MEMORY[0x1E69942C8]);
            sub_19202A7A8(0, &qword_1EADED378, 0x1E69942C0);
            v58 = v38;
            v59 = sub_192227B60();

            v60 = [v57 initWithSchemaIntent:v58 recommendations:v59];

            v28 = v172;
            [v172 setIntentRecommendationsContainer_];

LABEL_44:
            __swift_destroy_boxed_opaque_existential_1(&v174);
LABEL_45:
            v62 = *(a1 + v25[41]);
            if (v62)
            {
              if (sub_1921AEF0C(v62))
              {
                sub_19202A7A8(0, &qword_1EADF19A0, 0x1E6994298);
                v63 = sub_192227B60();

                goto LABEL_49;
              }
            }

            else
            {
              v63 = 0;
LABEL_49:
              v64 = v172;
              [v172 setRequiredFeatureFlags_];

              v28 = v64;
            }

            [v28 setEnablement_];
            v65 = (a1 + v25[5]);
            if (v65[1])
            {
              v66 = *v65;
              v67 = sub_192227930();
            }

            else
            {
              v67 = 0;
            }

            [v28 setDisplayName_];

            v68 = (a1 + v25[6]);
            if (v68[1])
            {
              v69 = *v68;
              v70 = sub_192227930();
            }

            else
            {
              v70 = 0;
            }

            [v28 setWidgetDescription_];

            [v28 setWidgetVisibility_];
            v71 = v28;
            if (![v28 widgetVisibility])
            {
              v72 = [objc_opt_self() mainBundle];
              v73 = [v72 bundlePath];

              sub_192227960();
              LOBYTE(v72) = sub_192227A10();

              [v71 setWidgetVisibility_];
            }

            v74 = *(a1 + v25[16]);
            v75 = sub_1920369B8(0, v74);
            v76 = v75 & 1;
            if (sub_1920369B8(1, v74))
            {
              v76 = v75 & 1 | 2;
            }

            if (sub_1920369B8(2, v74))
            {
              v77 = v76 | 4;
            }

            else
            {
              v77 = v76;
            }

            [v71 setSpatialChromeStyles_];
            v78 = *(a1 + v25[9]);
            v79 = 1 << *(v78 + 32);
            if (v79 < 64)
            {
              v80 = ~(-1 << v79);
            }

            else
            {
              v80 = -1;
            }

            v81 = v80 & *(v78 + 64);
            v82 = (v79 + 63) >> 6;

            v83 = 0;
            v84 = v71;
            while (2)
            {
              if (!v81)
              {
                while (1)
                {
                  v86 = v83 + 1;
                  if (__OFADD__(v83, 1))
                  {
                    break;
                  }

                  if (v86 >= v82)
                  {

                    v125 = v173;
                    v81 = v170;
                    v126 = (v170 + *(v173 + 56));
                    if (v126[1])
                    {
                      v127 = *v126;
                      v128 = sub_192227930();
                    }

                    else
                    {
                      v128 = 0;
                    }

                    v71 = v169;
                    v82 = v168;
                    v129 = v166;
                    v130 = v165;
                    [v84 setEventMachServiceName_];

                    v131 = sub_192225050();
                    [v84 setLocaleToken_];

                    v132 = (v81 + v125[27]);
                    v133 = *v132;
                    v134 = v132[1];
                    v135 = sub_192227930();
                    [v84 setSdkVersion_];

                    [v84 setPreferredBackgroundStyle_];
                    [v84 setSupportsVibrantContent_];
                    if (*(v81 + v125[18]) == 1)
                    {
                      if (qword_1ED749D58 != -1)
                      {
                        swift_once();
                      }

                      if (dyld_program_sdk_at_least())
                      {
                        [v84 setSupportsAccentedContent_];
                      }
                    }

                    sub_192036754(v81, v130, type metadata accessor for ViewSource);
                    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
                    {
                      v137 = v130 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
                      v138 = *(v137 + 8);
                      v139 = *(v137 + 24);

                      v140 = sub_1922253B0();
                      (*(*(v140 - 8) + 8))(v130, v140);
                    }

                    else
                    {
                      sub_192036A20(v130, type metadata accessor for ViewSource);
                    }

                    [v84 setRelevanceBacked_];
                    [v84 setSupportsPush_];
                    v141 = (v81 + v125[12]);
                    if (v141[1])
                    {
                      v142 = *v141;
                      v143 = sub_192227930();
                    }

                    else
                    {
                      v143 = 0;
                    }

                    [v84 setAssociatedKind_];

                    [v84 setEnablesMultipleTapTargets_];
                    v144 = v181;
                    v145 = v182;
                    __swift_project_boxed_opaque_existential_1(&v180, v181);
                    (*(v145 + 24))(v144, v145);
                    if (v146)
                    {

                      v147 = *(v81 + v125[23]);
                    }

                    else
                    {
                      v147 = 0;
                    }

                    v148 = v172;
                    [v172 setPromptsForUserConfiguration_];
                    [v148 setBackgroundRemovable_];
                    [v148 setSupportsInteraction_];
                    [v148 setHiddenBySensitiveUI_];
                    sub_192036754(v81, v129, type metadata accessor for ViewSource);
                    if (swift_getEnumCaseMultiPayload() == 3)
                    {
                      v149 = v129[1];
                      v151 = v129[3];
                      v150 = v129[4];
                      v152 = v129[5];
                      v153 = v129[6];
                      v154 = v129[7];

                      sub_19207C280(v153, v154);
                      if (v152)
                      {
                        v155 = sub_192227930();
                      }

                      else
                      {
                        v155 = 0;
                      }

                      v125 = v173;
                    }

                    else
                    {
                      sub_192036A20(v129, type metadata accessor for ViewSource);
                      v155 = 0;
                    }

                    v156 = v172;
                    [v172 setTargetLiveSceneBundleIdentifier_];

                    v84 = v156;
                    [v156 setWantsLiveScene_];
                    if (qword_1EADEE920 == -1)
                    {
LABEL_149:
                      v157 = qword_1EAE00888;
                      [v84 setConfigurationBackgroundColor_];
                      v158 = *(v157 + 24);
                      [v84 setConfigurationAccentColor_];
                      sub_192039140(v82, v71);

                      __swift_destroy_boxed_opaque_existential_1(&v180);
                      sub_192036A20(v81, type metadata accessor for WidgetDescriptor);
                      return v84;
                    }

LABEL_151:
                    swift_once();
                    goto LABEL_149;
                  }

                  v81 = *(v78 + 64 + 8 * v86);
                  ++v83;
                  if (v81)
                  {
                    v83 = v86;
                    goto LABEL_75;
                  }
                }

                __break(1u);
                goto LABEL_151;
              }

LABEL_75:
              v87 = (v83 << 9) | (8 * __clz(__rbit64(v81)));
              v71 = *(*(v78 + 48) + v87);
              v88 = *(*(v78 + 56) + v87);
              if (*(v88 + 16))
              {
                v89 = *(v88 + 40);
                sub_192228AD0();
                MEMORY[0x193B0BA90](0);
                v90 = sub_192228B30();
                v91 = v88 + 56;
                v92 = -1 << *(v88 + 32);
                v93 = v90 & ~v92;
                if ((*(v88 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
                {
                  v94 = ~v92;
                  while (*(*(v88 + 48) + v93))
                  {
                    v93 = (v93 + 1) & v94;
                    if (((*(v91 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
                    {
                      goto LABEL_80;
                    }
                  }

                  v85 = 1;
                  if (*(v88 + 16))
                  {
LABEL_84:
                    v95 = *(v88 + 40);
                    sub_192228AD0();
                    MEMORY[0x193B0BA90](1);
                    v96 = sub_192228B30();
                    v97 = -1 << *(v88 + 32);
                    v98 = v96 & ~v97;
                    if ((*(v91 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
                    {
                      v99 = ~v97;
                      while (*(*(v88 + 48) + v98) != 1)
                      {
                        v98 = (v98 + 1) & v99;
                        if (((*(v91 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
                        {
                          goto LABEL_88;
                        }
                      }

                      v85 |= 2uLL;
                      if (*(v88 + 16))
                      {
LABEL_91:
                        v100 = *(v88 + 40);
                        sub_192228AD0();
                        MEMORY[0x193B0BA90](2);
                        v101 = sub_192228B30();
                        v102 = -1 << *(v88 + 32);
                        v103 = v101 & ~v102;
                        if ((*(v91 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103))
                        {
                          v104 = ~v102;
                          while (*(*(v88 + 48) + v103) != 2)
                          {
                            v103 = (v103 + 1) & v104;
                            if (((*(v91 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
                            {
                              goto LABEL_95;
                            }
                          }

                          v85 |= 4uLL;
                          if (*(v88 + 16))
                          {
LABEL_98:
                            v105 = *(v88 + 40);
                            sub_192228AD0();
                            MEMORY[0x193B0BA90](3);
                            v106 = sub_192228B30();
                            v107 = -1 << *(v88 + 32);
                            v108 = v106 & ~v107;
                            if ((*(v91 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
                            {
                              v109 = ~v107;
                              while (*(*(v88 + 48) + v108) != 3)
                              {
                                v108 = (v108 + 1) & v109;
                                if (((*(v91 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
                                {
                                  goto LABEL_102;
                                }
                              }

                              v85 |= 8uLL;
                              if (*(v88 + 16))
                              {
LABEL_105:
                                v110 = *(v88 + 40);
                                sub_192228AD0();
                                MEMORY[0x193B0BA90](6);
                                v111 = sub_192228B30();
                                v112 = -1 << *(v88 + 32);
                                v113 = v111 & ~v112;
                                if ((*(v91 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113))
                                {
                                  v114 = ~v112;
                                  while (*(*(v88 + 48) + v113) != 6)
                                  {
                                    v113 = (v113 + 1) & v114;
                                    if (((*(v91 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
                                    {
                                      goto LABEL_109;
                                    }
                                  }

                                  v85 |= 0x40uLL;
                                  if (*(v88 + 16))
                                  {
LABEL_112:
                                    v115 = *(v88 + 40);
                                    sub_192228AD0();
                                    MEMORY[0x193B0BA90](4);
                                    v116 = sub_192228B30();
                                    v117 = -1 << *(v88 + 32);
                                    v118 = v116 & ~v117;
                                    if ((*(v91 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118))
                                    {
                                      v119 = ~v117;
                                      while (*(*(v88 + 48) + v118) != 4)
                                      {
                                        v118 = (v118 + 1) & v119;
                                        if (((*(v91 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
                                        {
                                          goto LABEL_116;
                                        }
                                      }

                                      v85 |= 0x10uLL;
                                      if (*(v88 + 16))
                                      {
LABEL_119:
                                        v120 = *(v88 + 40);
                                        sub_192228AD0();
                                        MEMORY[0x193B0BA90](5);
                                        v121 = sub_192228B30();
                                        v122 = -1 << *(v88 + 32);
                                        v123 = v121 & ~v122;
                                        if ((*(v91 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123))
                                        {
                                          v124 = ~v122;
                                          while (*(*(v88 + 48) + v123) != 5)
                                          {
                                            v123 = (v123 + 1) & v124;
                                            if (((*(v91 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) == 0)
                                            {
                                              goto LABEL_68;
                                            }
                                          }

                                          v85 |= 0x20uLL;
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_116:
                                      if (*(v88 + 16))
                                      {
                                        goto LABEL_119;
                                      }
                                    }
                                  }
                                }

                                else
                                {
LABEL_109:
                                  if (*(v88 + 16))
                                  {
                                    goto LABEL_112;
                                  }
                                }
                              }
                            }

                            else
                            {
LABEL_102:
                              if (*(v88 + 16))
                              {
                                goto LABEL_105;
                              }
                            }
                          }
                        }

                        else
                        {
LABEL_95:
                          if (*(v88 + 16))
                          {
                            goto LABEL_98;
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_88:
                      if (*(v88 + 16))
                      {
                        goto LABEL_91;
                      }
                    }
                  }
                }

                else
                {
LABEL_80:
                  v85 = 0;
                  if (*(v88 + 16))
                  {
                    goto LABEL_84;
                  }
                }

LABEL_68:
                v84 = v172;
              }

              else
              {
                v85 = 0;
              }

              v81 &= v81 - 1;
              [v84 setDisfavoredLocations:v85 on:v71];
              continue;
            }
          }

          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v40;
      v38 += 3;
      if (v171 + v40 == 1)
      {
        v38 = v162;
        goto LABEL_37;
      }
    }
  }

  sub_192033970(&v174, &qword_1EADF1860, &unk_19223D680);
  *&v174 = 0;
  *(&v174 + 1) = 0xE000000000000000;
  sub_192228400();

  *&v174 = 0xD00000000000002ALL;
  *(&v174 + 1) = 0x800000019224D590;
  sub_192036754(a1, v10, type metadata accessor for ViewSource);
  v160 = sub_192227990();
  MEMORY[0x193B0A990](v160);

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1921AEF0C(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_192228340();
    sub_192228520();
    v3 = sub_192228340();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_192228520();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x193B0B410](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1922284F0();
        v7 = *(v9 + 16);
        sub_192228530();
        sub_192228540();
        sub_192228500();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_1921AF0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v17 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  sub_192228520();
  if (!v8)
  {
    return v17;
  }

  v11 = *(v4 + 16);
  v10 = v4 + 16;
  v9 = v11;
  v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v13 = *(v10 + 56);
  while (1)
  {
    v9(v7, v12, v3);
    sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1922284F0();
    v14 = *(v17 + 16);
    sub_192228530();
    sub_192228540();
    sub_192228500();
    v12 += v13;
    if (!--v8)
    {
      return v17;
    }
  }

  return 0;
}

uint64_t sub_1921AF240(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_192228520();
  if (!v2)
  {
    return v7;
  }

  v3 = (a1 + 32);
  sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
  while (1)
  {
    v6 = *v3;
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1922284F0();
    v4 = *(v7 + 16);
    sub_192228530();
    sub_192228540();
    sub_192228500();
    ++v3;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1921AF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55[1] = a4;
  v55[2] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = type metadata accessor for ViewSource(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0900, &unk_192235BA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v55 - v18;
  v20 = sub_1922253B0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v56 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192036754(a1, v15, type metadata accessor for ViewSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v21 + 56))(v19, 1, 1, v20);
      sub_192036A20(v15, type metadata accessor for ViewSource);
      goto LABEL_7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
    v26 = *(v25 + 1);
    v27 = *(v25 + 3);

    (*(v21 + 32))(v19, v15, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    goto LABEL_7;
  }

  sub_192036A20(v15, type metadata accessor for ViewSource);
  (*(v21 + 56))(v19, 1, 1, v20);
LABEL_7:
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_192033970(v19, &qword_1EADF0900, &unk_192235BA0);
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    (*(v21 + 32))(v56, v19, v20);
    sub_1921B0094(&qword_1EADEE4F8, MEMORY[0x1E6959BC8]);
    v28 = sub_1922286E0();
    v29 = sub_192225080();
    v31 = v30;

    sub_192228100();
    sub_192225500();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = sub_1922280F0();
    v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v35 = sub_192225050();
    v36 = [v34 initWithExtensionIdentity:v33 activityAttributesType:v35];

    v37 = type metadata accessor for WidgetDescriptor(0);
    v38 = (a1 + v37[5]);
    v39 = v38[1];
    if (v39)
    {
      v40 = *v38;
      v41 = v36;
      v39 = sub_192227930();
    }

    else
    {
      v42 = v36;
    }

    [v36 setDisplayName_];

    v43 = (a1 + v37[6]);
    if (v43[1])
    {
      v44 = *v43;
      v45 = sub_192227930();
    }

    else
    {
      v45 = 0;
    }

    [v36 setWidgetDescription_];

    v46 = (a1 + v37[14]);
    if (v46[1])
    {
      v47 = *v46;
      v48 = sub_192227930();
    }

    else
    {
      v48 = 0;
    }

    [v36 setEventMachServiceName_];

    v49 = sub_192225050();
    [v36 setLocaleToken_];

    v50 = (a1 + v37[27]);
    v51 = *v50;
    v52 = v50[1];
    v53 = sub_192227930();
    [v36 setSdkVersion_];

    [v36 setPreferredBackgroundStyle_];
    [v36 setSupportsVibrantContent_];

    sub_192039140(v29, v31);
    (*(v21 + 8))(v56, v20);
    sub_192036A20(a1, type metadata accessor for WidgetDescriptor);
    return v36;
  }

  return result;
}

uint64_t sub_1921AF9F8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - v8;
  v10 = qword_1ED749988;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v12 = *(*(v11 - 8) + 56);
  v12(&v2[v10], 1, 1, v11);
  v12(&v2[qword_1ED749520], 1, 1, v11);
  v12(&v2[qword_1ED748A90], 1, 1, v11);
  v13 = *(v4 + 104);
  sub_1922259D0();
  (*(v6 + 16))(v9, a1, v5);
  *(v2 + 4) = sub_1922259C0();
  return sub_1921E7298();
}

uint64_t sub_1921AFBB8(uint64_t a1)
{
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = type metadata accessor for ResolvedWidgetHost();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1921AF9F8(a1);
}

uint64_t sub_1921AFC20(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192225D90();
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = 0;
  (*(v5 + 16))(v8, a1, a2);
  v2[4] = sub_192225D80();
  return sub_1921E7298();
}

uint64_t sub_1921AFD24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ResolvedWidgetBundleHost();
  swift_allocObject();
  return sub_1921AFC20(a1, a2);
}

void sub_1921AFD7C()
{
  sub_1921AFE20();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_1921AFE20()
{
  if (!qword_1ED749980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEE20, &qword_19222B670);
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED749980);
    }
  }
}

uint64_t sub_1921AFE84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1921AFEC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1921AFF0C()
{
  result = qword_1EADF1980;
  if (!qword_1EADF1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1980);
  }

  return result;
}

unint64_t sub_1921AFF60()
{
  result = qword_1EADEE5F0;
  if (!qword_1EADEE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5F0);
  }

  return result;
}

uint64_t sub_1921AFFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19C0, &unk_19223E6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921B0024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921B0094(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1921B00DC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v3);
  v5 = sub_192228B30();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1921B01A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_192228AD0();
  sub_1922279B0();
  v7 = sub_192228B30();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1922289A0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ControlTemplate.namedIcon(_:symbolNames:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_192226B50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192226B70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E697CB08])
  {
    (*(v12 + 96))(v15, v11);
    (*(v7 + 32))(v10, v15, v6);
    v16 = sub_192226AF0();
    v18 = sub_1921B01A8(v16, v17, a2);

    if (v18)
    {
      sub_192226AA0();
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      return (*(v12 + 56))(a3, 1, 1, v11);
    }
  }

  else
  {
    (*(v12 + 56))(a3, 1, 1, v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1921B0544()
{
  v1 = sub_192225020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E697CAF0])
  {
    (*(v7 + 96))(v10, v6);
    (*(v2 + 32))(v5, v10, v1);
    sub_1921B48F8(&qword_1EADF0A38, MEMORY[0x1E6968FB0]);
    sub_192227890();
    return (*(v2 + 8))(v5, v1);
  }

  else if (v11 == *MEMORY[0x1E697CAF8])
  {
    (*(v7 + 96))(v10, v6);
    v13 = *v10;
    return sub_192228AF0();
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000004BLL, 0x800000019224B9D0);
    sub_1922285A0();
    result = sub_192228620();
    __break(1u);
  }

  return result;
}

uint64_t sub_1921B0830()
{
  sub_192228AD0();
  sub_1921B0544();
  return sub_192228B30();
}

uint64_t sub_1921B0874()
{
  sub_192228AD0();
  sub_1921B0544();
  return sub_192228B30();
}

id sub_1921B08CC(uint64_t a1, char *a2)
{
  v79 = a2;
  v3 = sub_192225020();
  v80 = *(v3 - 8);
  v4 = *(v80 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v77 = (&v77 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v77 - v9;
  v11 = sub_192226B30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  v22 = *(v12 + 16);
  v22(&v77 - v20, a1, v11);
  v23 = (*(v12 + 88))(v21, v11);
  if (v23 == *MEMORY[0x1E697CAF0])
  {
    (*(v12 + 96))(v21, v11);
    v24 = v80;
    (*(v80 + 32))(v10, v21, v3);
    v25 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v26 = sub_192224FE0();
    v27 = [v25 initWithURL_];

    v28 = v3;
    if (v27)
    {
      v29 = [objc_opt_self() defaultUICatalogForBundle_];
      if (v29)
      {
        v30 = v29;
        (*(v24 + 8))(v10, v28);

        return v30;
      }

      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v64 = sub_1922258B0();
      __swift_project_value_buffer(v64, qword_1EAE00810);
      v65 = v77;
      (*(v24 + 16))(v77, v10, v28);
      v66 = sub_192225890();
      v67 = sub_192227F90();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v79 = v10;
        v69 = v68;
        v70 = swift_slowAlloc();
        v81 = v70;
        *v69 = 136446210;
        v71 = sub_192225000();
        v73 = v72;
        v74 = *(v24 + 8);
        v74(v65, v28);
        v75 = sub_19202B8CC(v71, v73, &v81);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_192028000, v66, v67, "Failed to load default CUICatalog for %{public}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x193B0C7F0](v70, -1, -1);
        MEMORY[0x193B0C7F0](v69, -1, -1);

        v74(v79, v28);
      }

      else
      {

        v76 = *(v24 + 8);
        v76(v65, v28);
        v76(v10, v28);
      }
    }

    else
    {
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v50 = sub_1922258B0();
      __swift_project_value_buffer(v50, qword_1EAE00810);
      v51 = v78;
      (*(v24 + 16))(v78, v10, v3);
      v52 = sub_192225890();
      v53 = sub_192227F90();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v81 = v55;
        *v54 = 136446210;
        v56 = sub_192225000();
        v57 = v51;
        v58 = v10;
        v60 = v59;
        v61 = *(v24 + 8);
        v61(v57, v28);
        v62 = sub_19202B8CC(v56, v60, &v81);

        *(v54 + 4) = v62;
        _os_log_impl(&dword_192028000, v52, v53, "Failed to construct bundle for %{public}s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x193B0C7F0](v55, -1, -1);
        MEMORY[0x193B0C7F0](v54, -1, -1);

        v63 = v58;
      }

      else
      {

        v61 = *(v24 + 8);
        v61(v51, v28);
        v63 = v10;
      }

      v61(v63, v28);
    }
  }

  else
  {
    if (v23 == *MEMORY[0x1E697CAF8])
    {
      v32 = [objc_opt_self() public];
      objc_allocWithZone(MEMORY[0x1E6999368]);
      v33 = v32;
      v34 = sub_1921B5170(0x737465737341, 0xE600000000000000, v32);

      return v34;
    }

    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v35 = sub_1922258B0();
    __swift_project_value_buffer(v35, qword_1EAE00810);
    v22(v19, a1, v11);

    v36 = sub_192225890();
    v37 = sub_192227F90();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      LODWORD(v78) = v37;
      v39 = v38;
      v80 = swift_slowAlloc();
      v81 = v80;
      *v39 = 136446466;
      v22(v16, v19, v11);
      v40 = sub_192227990();
      v42 = v41;
      v43 = *(v12 + 8);
      v77 = v36;
      v43(v19, v11);
      v44 = sub_19202B8CC(v40, v42, &v81);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v45 = sub_192227D60();
      v47 = sub_19202B8CC(v45, v46, &v81);

      *(v39 + 14) = v47;
      v48 = v77;
      _os_log_impl(&dword_192028000, v77, v78, "Got unexpected location type %{public}s for %{public}s", v39, 0x16u);
      v49 = v80;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v49, -1, -1);
      MEMORY[0x193B0C7F0](v39, -1, -1);
    }

    else
    {

      v43 = *(v12 + 8);
      v43(v19, v11);
    }

    v43(v21, v11);
  }

  return 0;
}

uint64_t ControlTemplateType.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ControlTemplatePicker(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplateButton(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ControlTemplateToggle(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, a2);
  if (swift_dynamicCast())
  {
    v22 = *(v18 + 8);
    v22(a1, a2);
    sub_1921B4890(v17, a3, type metadata accessor for ControlTemplateToggle);
LABEL_7:
    type metadata accessor for ControlTemplateType(0);
    swift_storeEnumTagMultiPayload();
    return v22(v21, a2);
  }

  if (swift_dynamicCast())
  {
    v22 = *(v18 + 8);
    v22(a1, a2);
    sub_1921B4890(v12, a3, type metadata accessor for ControlTemplateButton);
    goto LABEL_7;
  }

  v23 = v26;
  if (swift_dynamicCast())
  {
    v22 = *(v18 + 8);
    v22(a1, a2);
    sub_1921B4890(v23, a3, type metadata accessor for ControlTemplatePicker);
    goto LABEL_7;
  }

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t ControlTemplateType.anyTemplate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v7, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a1[3] = type metadata accessor for ControlTemplateButton(0);
      v9 = sub_1921B48F8(&qword_1EADEE598, type metadata accessor for ControlTemplateButton);
      v10 = type metadata accessor for ControlTemplateButton;
    }

    else
    {
      a1[3] = type metadata accessor for ControlTemplatePicker(0);
      v9 = sub_1921B48F8(&qword_1EADF03A8, type metadata accessor for ControlTemplatePicker);
      v10 = type metadata accessor for ControlTemplatePicker;
    }
  }

  else
  {
    a1[3] = type metadata accessor for ControlTemplateToggle(0);
    v9 = sub_1921B48F8(&qword_1EADED030, type metadata accessor for ControlTemplateToggle);
    v10 = type metadata accessor for ControlTemplateToggle;
  }

  v11 = v10;
  a1[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1921B4890(v7, boxed_opaque_existential_1, v11);
}

uint64_t ControlTemplateType.asPlaceholderTemplate()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplatePicker(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlTemplateToggle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ControlTemplateButton(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ControlTemplateType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v19, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v19, v15, type metadata accessor for ControlTemplateButton);
      a1[3] = v12;
      a1[4] = sub_1921B48F8(&qword_1EADEE598, type metadata accessor for ControlTemplateButton);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      ControlTemplateButton.asPlaceholder()(boxed_opaque_existential_1);
      v22 = type metadata accessor for ControlTemplateButton;
      v23 = v15;
    }

    else
    {
      sub_1921B4890(v19, v7, type metadata accessor for ControlTemplatePicker);
      a1[3] = v4;
      a1[4] = sub_1921B48F8(&qword_1EADF03A8, type metadata accessor for ControlTemplatePicker);
      v25 = __swift_allocate_boxed_opaque_existential_1(a1);
      ControlTemplatePicker.asPlaceholder()(v25);
      v22 = type metadata accessor for ControlTemplatePicker;
      v23 = v7;
    }
  }

  else
  {
    sub_1921B4890(v19, v11, type metadata accessor for ControlTemplateToggle);
    a1[3] = v8;
    a1[4] = sub_1921B48F8(&qword_1EADED030, type metadata accessor for ControlTemplateToggle);
    v24 = __swift_allocate_boxed_opaque_existential_1(a1);
    ControlTemplateToggle.asPlaceholder()(v24);
    v22 = type metadata accessor for ControlTemplateToggle;
    v23 = v11;
  }

  return sub_1921B4940(v23, v22);
}

uint64_t ControlTemplateType.asTemplateTypeWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v185 = a2;
  v186 = a1;
  v188 = a3;
  v5 = type metadata accessor for ControlTemplatePicker(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplateToggle(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v182 = &v158 - v15;
  v16 = sub_192226B50();
  v178 = *(v16 - 8);
  v179 = v16;
  v17 = *(v178 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v181 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v158 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v176 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v180 = (&v158 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v183 = &v158 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v174 = &v158 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v158 - v31;
  v33 = sub_192226B70();
  v184 = *(v33 - 8);
  v34 = v184[8];
  v35 = MEMORY[0x1EEE9AC00](v33);
  v175 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v173 = &v158 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v177 = &v158 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v158 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v171 = &v158 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v158 - v46;
  v48 = type metadata accessor for ControlTemplateButton(0);
  v49 = *(*(v48 - 1) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = (&v158 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for ControlTemplateType(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v158 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  v58 = v57;
  sub_1921B4A08(v56, v55, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v187 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v168 = v58;
      sub_1921B4890(v55, v51, type metadata accessor for ControlTemplateButton);
      v60 = type metadata accessor for ControlTemplateButton.Option(0);
      sub_19202CFFC(v51 + v60[6], v32, &qword_1EADEF720, &unk_19222E2F0);
      v61 = v184;
      v169 = v184[6];
      v170 = v184 + 6;
      if (v169(v32, 1, v33) == 1)
      {
        v62 = v32;
      }

      else
      {
        v166 = v61[4];
        (v166)(v47, v32, v33);
        (v61[2])(v43, v47, v33);
        v65 = (v61[11])(v43, v33);
        v66 = v179;
        if (v65 == *MEMORY[0x1E697CB08])
        {
          v167 = v60;
          (v61[12])(v43, v33);
          v67 = v172;
          (*(v178 + 32))(v172, v43, v66);
          v68 = sub_192226AF0();
          v70 = sub_1921B01A8(v68, v69, v186);

          if (v70)
          {
            v71 = v174;
            sub_192226AA0();
            (*(v178 + 8))(v67, v66);
            v72 = v47;
            v73 = v71;
            (v61[1])(v72, v33);
          }

          else
          {
            (*(v178 + 8))(v67, v66);
            (v61[1])(v47, v33);
            v73 = v174;
            (v61[7])(v174, 1, 1, v33);
          }

          v60 = v167;
        }

        else
        {
          v74 = v61[1];
          v74(v47, v33);
          v73 = v174;
          (v61[7])(v174, 1, 1, v33);
          v74(v43, v33);
        }

        if (v169(v73, 1, v33) != 1)
        {
          v76 = v171;
          v77 = v73;
          v78 = v166;
          (v166)(v171, v77, v33);
          v79 = v51[1];
          v174 = *v51;
          v165 = v79;
          v80 = v51[3];
          v172 = v51[2];
          v167 = v80;
          v81 = v183;
          (v78)(v183, v76, v33);
          v82 = v61[7];
          v82(v81, 0, 1, v33);
          v83 = v60[7];
          v161 = v60[6];
          v84 = (v51 + v83);
          v85 = v84[1];
          v171 = *v84;
          v166 = v85;
          v164 = *(v84 + 16);
          v86 = v60[9];
          v87 = (v51 + v60[8]);
          v89 = *v87;
          v88 = v87[1];
          v163 = v89;
          v159 = v88;
          v90 = *(v51 + v86 + 8);
          v162 = *(v51 + v86);
          v75 = v188;
          v82(&v188[v161], 1, 1, v33);
          v91 = &v75[v60[7]];
          v92 = &v75[v60[8]];
          v160 = &v75[v60[9]];
          v93 = v165;
          *v75 = v174;
          *(v75 + 1) = v93;
          v94 = v167;
          *(v75 + 2) = v172;
          *(v75 + 3) = v94;

          v95 = v159;

          sub_19204193C(v183, &v75[v161], &qword_1EADEF720, &unk_19222E2F0);
          v96 = v166;
          *v91 = v171;
          *(v91 + 1) = v96;
          v91[16] = v164;
          *v92 = v163;
          *(v92 + 1) = v95;
          v97 = v160;
          *v160 = v162;
          *(v97 + 1) = v90;
LABEL_18:
          v99 = v180;
          v98 = v181;
          v100 = v48[5];
          v101 = (v51 + v100);
          v102 = &v75[v100];
          sub_19202CFFC(v51 + v100 + v60[6], v180, &qword_1EADEF720, &unk_19222E2F0);
          if (v169(v99, 1, v33) == 1)
          {
            sub_1921B49A0(v99);
            v103 = v101;
            v104 = v102;
          }

          else
          {
            v181 = v102;
            v167 = v60;
            v105 = v184;
            v106 = v177;
            v180 = v184[4];
            (v180)(v177, v99, v33);
            v107 = v175;
            (v105[2])(v175, v106, v33);
            if ((v105[11])(v107, v33) == *MEMORY[0x1E697CB08])
            {
              (v105[12])(v107, v33);
              v108 = v107;
              v109 = v178;
              (*(v178 + 32))(v98, v108, v179);
              v110 = v98;
              v111 = sub_192226AF0();
              v113 = sub_1921B01A8(v111, v112, v186);

              if (v113)
              {
                v114 = v176;
                v115 = v177;
                sub_192226AA0();
                (*(v109 + 8))(v110, v179);
                (v105[1])(v115, v33);
              }

              else
              {
                (*(v109 + 8))(v98, v179);
                (v105[1])(v177, v33);
                v114 = v176;
                (v105[7])(v176, 1, 1, v33);
              }
            }

            else
            {
              v116 = v105[1];
              v116(v106, v33);
              v117 = v107;
              v118 = v176;
              (v105[7])(v176, 1, 1, v33);
              v116(v117, v33);
              v114 = v118;
            }

            if (v169(v114, 1, v33) != 1)
            {
              v119 = v173;
              v120 = v114;
              v121 = v180;
              (v180)(v173, v120, v33);
              v122 = *v101;
              v179 = v101[1];
              v123 = v101[3];
              v185 = v101[2];
              v186 = v122;
              v124 = v183;
              v121(v183, v119, v33);
              v125 = v105[7];
              v125(v124, 0, 1, v33);
              v126 = v167;
              v127 = v167[6];
              v128 = v101 + v167[7];
              v129 = *(v128 + 1);
              v184 = *v128;
              v180 = v129;
              LODWORD(v178) = v128[16];
              v130 = v167[9];
              v131 = (v101 + v167[8]);
              v132 = *v131;
              v175 = v131[1];
              v133 = v101 + v130;
              v134 = *(v101 + v130);
              v135 = *(v133 + 1);
              v176 = v134;
              v177 = v132;
              v136 = v181;
              v125(&v181[v127], 1, 1, v33);
              v137 = v136 + v126[7];
              v138 = (v136 + v126[8]);
              v139 = (v136 + v126[9]);
              v140 = v185;
              v141 = v179;
              *v136 = v186;
              v136[1] = v141;
              v136[2] = v140;
              v136[3] = v123;

              v142 = v175;

              sub_19204193C(v183, v136 + v127, &qword_1EADEF720, &unk_19222E2F0);
              v143 = v180;
              *v137 = v184;
              *(v137 + 1) = v143;
              v137[16] = v178;
              v144 = v176;
              *v138 = v177;
              v138[1] = v142;
              *v139 = v144;
              v139[1] = v135;
              goto LABEL_29;
            }

            sub_1921B49A0(v114);
            v103 = v101;
            v104 = v181;
          }

          sub_1921B4A08(v103, v104, type metadata accessor for ControlTemplateButton.Option);
LABEL_29:
          v145 = *(v51 + v48[6]);
          v146 = v182;
          sub_19202CFFC(v51 + v48[7], v182, &qword_1EADEEE10, &unk_19222B630);
          v147 = *(v51 + v48[8]);
          LODWORD(v186) = *(v51 + v48[9]);
          v148 = (v51 + v48[10]);
          v150 = *v148;
          v149 = v148[1];
          v151 = *(v51 + v48[11]);

          v152 = v145;
          sub_1921B4940(v51, type metadata accessor for ControlTemplateButton);
          v153 = v48[7];
          v154 = sub_192225020();
          v155 = v188;
          (*(*(v154 - 8) + 56))(&v188[v153], 1, 1, v154);
          v156 = &v155[v48[10]];
          *&v155[v48[6]] = v145;
          sub_19204193C(v146, &v155[v153], &qword_1EADEEE10, &unk_19222B630);
          v155[v48[8]] = v147;
          v155[v48[9]] = v186;
          *v156 = v150;
          *(v156 + 1) = v149;
          v155[v48[11]] = v151;
          return swift_storeEnumTagMultiPayload();
        }

        v62 = v73;
      }

      sub_1921B49A0(v62);
      v75 = v188;
      sub_1921B4A08(v51, v188, type metadata accessor for ControlTemplateButton.Option);
      goto LABEL_18;
    }

    sub_1921B4890(v55, v8, type metadata accessor for ControlTemplatePicker);
    ControlTemplatePicker.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)(v186, v185, v188);
    v63 = type metadata accessor for ControlTemplatePicker;
    v64 = v8;
  }

  else
  {
    sub_1921B4890(v55, v12, type metadata accessor for ControlTemplateToggle);
    ControlTemplateToggle.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)(v186, v185, v188);
    v63 = type metadata accessor for ControlTemplateToggle;
    v64 = v12;
  }

  sub_1921B4940(v64, v63);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ControlTemplateType.button.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v7, type metadata accessor for ControlTemplateType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1921B4890(v7, a1, type metadata accessor for ControlTemplateButton);
    v8 = 0;
  }

  else
  {
    sub_1921B4940(v7, type metadata accessor for ControlTemplateType);
    v8 = 1;
  }

  v9 = type metadata accessor for ControlTemplateButton(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t ControlTemplateType.toggle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v7, type metadata accessor for ControlTemplateType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1921B4940(v7, type metadata accessor for ControlTemplateType);
    v8 = 1;
  }

  else
  {
    sub_1921B4890(v7, a1, type metadata accessor for ControlTemplateToggle);
    v8 = 0;
  }

  v9 = type metadata accessor for ControlTemplateToggle(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t ControlTemplateType.picker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v7, type metadata accessor for ControlTemplateType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1921B4890(v7, a1, type metadata accessor for ControlTemplatePicker);
    v8 = 0;
  }

  else
  {
    sub_1921B4940(v7, type metadata accessor for ControlTemplateType);
    v8 = 1;
  }

  v9 = type metadata accessor for ControlTemplatePicker(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

unint64_t ControlTemplateType.vectorGlyphAssetLibraryDatas.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlTemplateButton(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ControlTemplateType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v1, v13, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v13, v9, type metadata accessor for ControlTemplateButton);
      v15 = ControlTemplateButton.vectorGlyphAssetLibraryDatas.getter();
      sub_1921B4940(v9, type metadata accessor for ControlTemplateButton);
      return v15;
    }

    else
    {
      sub_1921B4940(v13, type metadata accessor for ControlTemplateType);
      return sub_192140634(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    sub_1921B4890(v13, v5, type metadata accessor for ControlTemplateToggle);
    v17 = ControlTemplateToggle.vectorGlyphAssetLibraryDatas.getter();
    sub_1921B4940(v5, type metadata accessor for ControlTemplateToggle);
    return v17;
  }
}

uint64_t sub_1921B2EF4(uint64_t a1)
{
  v2 = sub_1921B4B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B2F30(uint64_t a1)
{
  v2 = sub_1921B4B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921B2F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1921B524C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921B2FAC(uint64_t a1)
{
  v2 = sub_1921B4A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B2FE8(uint64_t a1)
{
  v2 = sub_1921B4A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921B3024(uint64_t a1)
{
  v2 = sub_1921B4AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B3060(uint64_t a1)
{
  v2 = sub_1921B4AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921B309C(uint64_t a1)
{
  v2 = sub_1921B4B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B30D8(uint64_t a1)
{
  v2 = sub_1921B4B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19E8, &qword_19223E850);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v40 - v4;
  v48 = type metadata accessor for ControlTemplatePicker(0);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19F0, &qword_19223E858);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - v9;
  v43 = type metadata accessor for ControlTemplateButton(0);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19F8, &qword_19223E860);
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v40 = type metadata accessor for ControlTemplateToggle(0);
  v16 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ControlTemplateType(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A00, &qword_19223E868);
  v23 = *(v54 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v26 = &v40 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921B4A70();
  sub_192228B90();
  sub_1921B4A08(v53, v22, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v44;
      sub_1921B4890(v22, v44, type metadata accessor for ControlTemplateButton);
      v56 = 1;
      sub_1921B4B18();
      v31 = v45;
      v32 = v54;
      sub_192228820();
      sub_1921B48F8(&qword_1EADEE5B0, type metadata accessor for ControlTemplateButton);
      v33 = v47;
      sub_1922288C0();
      (*(v46 + 8))(v31, v33);
      v34 = type metadata accessor for ControlTemplateButton;
    }

    else
    {
      v30 = v49;
      sub_1921B4890(v22, v49, type metadata accessor for ControlTemplatePicker);
      v57 = 2;
      sub_1921B4AC4();
      v38 = v50;
      v32 = v54;
      sub_192228820();
      sub_1921B48F8(&qword_1EADEF790, type metadata accessor for ControlTemplatePicker);
      v39 = v52;
      sub_1922288C0();
      (*(v51 + 8))(v38, v39);
      v34 = type metadata accessor for ControlTemplatePicker;
    }

    sub_1921B4940(v30, v34);
    return (*v29)(v26, v32);
  }

  else
  {
    sub_1921B4890(v22, v18, type metadata accessor for ControlTemplateToggle);
    v55 = 0;
    sub_1921B4B6C();
    v35 = v54;
    sub_192228820();
    sub_1921B48F8(&qword_1EADED040, type metadata accessor for ControlTemplateToggle);
    v36 = v42;
    sub_1922288C0();
    (*(v41 + 8))(v15, v36);
    sub_1921B4940(v18, type metadata accessor for ControlTemplateToggle);
    return (*v29)(v26, v35);
  }
}

uint64_t ControlTemplateType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A10, &qword_19223E870);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A18, &qword_19223E878);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A20, &qword_19223E880);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A28, &unk_19223E888);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for ControlTemplateType(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v61 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v61 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1921B4A70();
  v33 = v78;
  sub_192228B70();
  if (!v33)
  {
    v62 = v25;
    v63 = v28;
    v64 = v22;
    v35 = v72;
    v34 = v73;
    v78 = 0;
    v65 = v18;
    v37 = v74;
    v36 = v75;
    v38 = v77;
    v39 = sub_1922287F0();
    v40 = (2 * *(v39 + 16)) | 1;
    v80 = v39;
    v81 = v39 + 32;
    v82 = 0;
    v83 = v40;
    v41 = sub_19212C244();
    if (v41 == 3 || v82 != v83 >> 1)
    {
      v45 = sub_1922284A0();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v47 = v65;
      sub_192228720();
      sub_192228480();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v84 = 1;
          sub_1921B4B18();
          v42 = v78;
          sub_192228710();
          v43 = v36;
          v44 = v76;
          if (v42)
          {
            goto LABEL_9;
          }

          v78 = v30;
          type metadata accessor for ControlTemplateButton(0);
          sub_1921B48F8(&qword_1EADEE5A0, type metadata accessor for ControlTemplateButton);
          v58 = v62;
          v59 = v68;
          sub_1922287C0();
          (*(v69 + 8))(v34, v59);
          (*(v44 + 8))(v17, v77);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v58;
        }

        else
        {
          v84 = 2;
          sub_1921B4AC4();
          v53 = v37;
          v54 = v78;
          sub_192228710();
          v55 = v76;
          if (v54)
          {
            goto LABEL_9;
          }

          v43 = v36;
          v78 = v30;
          type metadata accessor for ControlTemplatePicker(0);
          sub_1921B48F8(&qword_1EADEF788, type metadata accessor for ControlTemplatePicker);
          v56 = v64;
          v57 = v70;
          sub_1922287C0();
          (*(v71 + 8))(v53, v57);
          (*(v55 + 8))(v17, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v56;
        }

LABEL_17:
        v60 = v78;
        sub_1921B4890(v51, v78, type metadata accessor for ControlTemplateType);
        sub_1921B4890(v60, v43, type metadata accessor for ControlTemplateType);
        return __swift_destroy_boxed_opaque_existential_1(v79);
      }

      v84 = 0;
      sub_1921B4B6C();
      v50 = v78;
      sub_192228710();
      if (!v50)
      {
        v78 = v30;
        type metadata accessor for ControlTemplateToggle(0);
        sub_1921B48F8(&qword_1EADED848, type metadata accessor for ControlTemplateToggle);
        v51 = v63;
        v52 = v67;
        sub_1922287C0();
        (*(v66 + 8))(v35, v52);
        (*(v76 + 8))(v17, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v36;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v76 + 8))(v17, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t ControlTemplateType.action(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ControlTemplateButton(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ControlTemplateToggle.Option(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ControlTemplateToggle(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ControlTemplateType(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v3, v21, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1921B4890(v21, v17, type metadata accessor for ControlTemplateToggle);
    if (a1 == 1)
    {
      v27 = *(v14 + 24);
    }

    else
    {
      v27 = *(v14 + 28);
    }

    sub_1921B4A08(&v17[v27], v13, type metadata accessor for ControlTemplateToggle.Option);
    sub_1921B4940(v17, type metadata accessor for ControlTemplateToggle);
    v23 = *(v13 + 2);
    v29 = v23;
    v25 = type metadata accessor for ControlTemplateToggle.Option;
    v26 = v13;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1921B4890(v21, v9, type metadata accessor for ControlTemplateButton);
    v23 = *&v9[*(v6 + 24)];
    v24 = v23;
    v25 = type metadata accessor for ControlTemplateButton;
    v26 = v9;
LABEL_9:
    result = sub_1921B4940(v26, v25);
    goto LABEL_10;
  }

  result = sub_1921B4940(v21, type metadata accessor for ControlTemplateType);
  v23 = 0;
LABEL_10:
  *a2 = v23;
  return result;
}

uint64_t ControlTemplateType.validateIcon(_:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ControlTemplatePicker(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ControlTemplateButton(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ControlTemplateToggle(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ControlTemplateType(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v3, v21, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v21, v13, type metadata accessor for ControlTemplateButton);
      ControlTemplateButton.validateIcon(_:)(a1, a2);
      v23 = type metadata accessor for ControlTemplateButton;
      v24 = v13;
    }

    else
    {
      sub_1921B4890(v21, v9, type metadata accessor for ControlTemplatePicker);
      ControlTemplatePicker.validateIcon(_:)(a1);
      v23 = type metadata accessor for ControlTemplatePicker;
      v24 = v9;
    }
  }

  else
  {
    sub_1921B4890(v21, v17, type metadata accessor for ControlTemplateToggle);
    ControlTemplateToggle.validateIcon(_:)(a1, a2);
    v23 = type metadata accessor for ControlTemplateToggle;
    v24 = v17;
  }

  return sub_1921B4940(v24, v23);
}

uint64_t ControlTemplateType.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ControlTemplatePicker(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlTemplateButton(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ControlTemplateToggle(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ControlTemplateType(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v1, v17, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v17, v9, type metadata accessor for ControlTemplateButton);
      v19 = ControlTemplateButton.debugDescription.getter();
      v20 = type metadata accessor for ControlTemplateButton;
      v21 = v9;
    }

    else
    {
      sub_1921B4890(v17, v5, type metadata accessor for ControlTemplatePicker);
      v19 = ControlTemplatePicker.debugDescription.getter();
      v20 = type metadata accessor for ControlTemplatePicker;
      v21 = v5;
    }
  }

  else
  {
    sub_1921B4890(v17, v13, type metadata accessor for ControlTemplateToggle);
    v19 = ControlTemplateToggle.debugDescription.getter();
    v20 = type metadata accessor for ControlTemplateToggle;
    v21 = v13;
  }

  sub_1921B4940(v21, v20);
  return v19;
}

uint64_t sub_1921B4890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1921B48F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1921B4940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1921B49A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1921B4A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1921B4A70()
{
  result = qword_1EADEE6D0;
  if (!qword_1EADEE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6D0);
  }

  return result;
}

unint64_t sub_1921B4AC4()
{
  result = qword_1EADF1A08;
  if (!qword_1EADF1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A08);
  }

  return result;
}

unint64_t sub_1921B4B18()
{
  result = qword_1EADEE5E8;
  if (!qword_1EADEE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5E8);
  }

  return result;
}

unint64_t sub_1921B4B6C()
{
  result = qword_1EADED8E0[0];
  if (!qword_1EADED8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADED8E0);
  }

  return result;
}

uint64_t sub_1921B4C88()
{
  result = type metadata accessor for ControlTemplateToggle(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ControlTemplateButton(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ControlTemplatePicker(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1921B4D54()
{
  result = qword_1EADF1A30;
  if (!qword_1EADF1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A30);
  }

  return result;
}

unint64_t sub_1921B4DAC()
{
  result = qword_1EADF1A38;
  if (!qword_1EADF1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A38);
  }

  return result;
}

unint64_t sub_1921B4E04()
{
  result = qword_1EADF1A40;
  if (!qword_1EADF1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A40);
  }

  return result;
}

unint64_t sub_1921B4E5C()
{
  result = qword_1EADF1A48;
  if (!qword_1EADF1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A48);
  }

  return result;
}

unint64_t sub_1921B4EB4()
{
  result = qword_1EADEE690;
  if (!qword_1EADEE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE690);
  }

  return result;
}

unint64_t sub_1921B4F0C()
{
  result = qword_1EADEE698;
  if (!qword_1EADEE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE698);
  }

  return result;
}

unint64_t sub_1921B4F64()
{
  result = qword_1EADEE6B0;
  if (!qword_1EADEE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6B0);
  }

  return result;
}

unint64_t sub_1921B4FBC()
{
  result = qword_1EADEE6B8;
  if (!qword_1EADEE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6B8);
  }

  return result;
}

unint64_t sub_1921B5014()
{
  result = qword_1EADEE6A0;
  if (!qword_1EADEE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6A0);
  }

  return result;
}

unint64_t sub_1921B506C()
{
  result = qword_1EADEE6A8;
  if (!qword_1EADEE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6A8);
  }

  return result;
}

unint64_t sub_1921B50C4()
{
  result = qword_1EADEE6C0;
  if (!qword_1EADEE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6C0);
  }

  return result;
}

unint64_t sub_1921B511C()
{
  result = qword_1EADEE6C8;
  if (!qword_1EADEE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6C8);
  }

  return result;
}

id sub_1921B5170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_192227930();

  v11[0] = 0;
  v6 = [v3 initWithName:v5 fromBundle:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_192224F90();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1921B524C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C67676F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656B636970 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1921B53A0()
{
  result = sub_192226B30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CHSWidgetFamily.stableIntegerRepresentation.getter(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_19223F150[a1 - 1];
  }
}

uint64_t CHSWidgetFamilyMask.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CHSWidgetFamilyMask(0);
  sub_192227AD0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1921B557C()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x614C6D6574737973;
    if (v1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    v7 = 0x6D536D6574737973;
    if (*v0)
    {
      v7 = 0x654D6D6574737973;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x726F737365636361;
    v3 = 0xD000000000000011;
    v4 = 0xD000000000000014;
    if (v1 != 7)
    {
      v4 = 0x726F737365636361;
    }

    if (v1 != 6)
    {
      v3 = v4;
    }

    if (v1 == 4)
    {
      v2 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

WidgetKit::WidgetFamily_optional __swiftcall WidgetFamily.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t InternalWidgetFamily.description.getter()
{
  result = 0x726F737365636361;
  switch(*v0)
  {
    case 0:
      result = 0x6D536D6574737973;
      break;
    case 1:
      result = 0x654D6D6574737973;
      break;
    case 2:
      result = 0x614C6D6574737973;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 9:
      return result;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
      result = 0x316C6F72746E6F63;
      break;
    default:
      result = sub_192228990();
      __break(1u);
      break;
  }

  return result;
}

WidgetKit::InternalWidgetFamily_optional __swiftcall InternalWidgetFamily.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t InternalWidgetFamily.chsWidgetFamily.getter()
{
  v1 = *v0;
  if (v1 < 0xD)
  {
    return qword_19223F218[v1];
  }

  result = sub_192228990();
  __break(1u);
  return result;
}

unint64_t CHSWidgetFamily.stableStringRepresentation.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x726F737365636361;
  switch(v1)
  {
    case 0:
      result = 0x6D536D6574737973;
      break;
    case 1:
      result = 0x654D6D6574737973;
      break;
    case 2:
      result = 0x614C6D6574737973;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      return result;
    case 7:
    case 10:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x316C6F72746E6F63;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_1921B5B04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = CHSWidgetFamilyMaskFromWidgetFamily();
  *a3 = result | v4;
  return result;
}

uint64_t CHSWidgetFamilyMask.family(_:)(unint64_t a1, __int16 a2)
{
  v3 = CHSWidgetFamilyMask.internalFamilies()(a2);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v3 + 2) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3[a1 + 32];

  if (v4 < 0xD)
  {
    return qword_19223F218[v4];
  }

LABEL_7:
  result = sub_192228620();
  __break(1u);
  return result;
}

char *CHSWidgetFamilyMask.internalFamilies()(__int16 a1)
{
  if ((a1 & 0x80) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_192072C74(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_192072C74((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 6;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_192072C74((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    v2[v6 + 32] = 10;
  }

LABEL_12:
  if ((a1 & 0x200) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_192072C74((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v2[v8 + 32] = 11;
    if ((a1 & 0x4000) == 0)
    {
LABEL_14:
      if ((a1 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }
  }

  else if ((a1 & 0x4000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_192072C74((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v2[v10 + 32] = 12;
  if ((a1 & 2) == 0)
  {
LABEL_15:
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = sub_192072C74((v11 > 1), v12 + 1, 1, v2);
  }

  *(v2 + 2) = v12 + 1;
  v2[v12 + 32] = 0;
  if ((a1 & 4) == 0)
  {
LABEL_16:
    if ((a1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_192072C74((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v2[v14 + 32] = 1;
  if ((a1 & 8) == 0)
  {
LABEL_17:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_192072C74((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v2[v16 + 32] = 2;
  if ((a1 & 0x20) == 0)
  {
LABEL_18:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v18 = *(v2 + 2);
  v17 = *(v2 + 3);
  if (v18 >= v17 >> 1)
  {
    v2 = sub_192072C74((v17 > 1), v18 + 1, 1, v2);
  }

  *(v2 + 2) = v18 + 1;
  v2[v18 + 32] = 4;
  if ((a1 & 0x40) == 0)
  {
LABEL_19:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_192072C74((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v2[v20 + 32] = 5;
  if ((a1 & 0x10) == 0)
  {
LABEL_20:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_192072C74((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v2[v22 + 32] = 3;
  if ((a1 & 0x40) == 0)
  {
LABEL_21:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = sub_192072C74((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  v2[v24 + 32] = 5;
  if ((a1 & 0x10) == 0)
  {
LABEL_22:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_192072C74((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v2[v26 + 32] = 3;
  if ((a1 & 0x400) == 0)
  {
LABEL_23:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_192072C74((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v2[v28 + 32] = 7;
  if ((a1 & 0x800) == 0)
  {
LABEL_24:
    if ((a1 & 0x1000) == 0)
    {
      return v2;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = sub_192072C74((v29 > 1), v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v2[v30 + 32] = 8;
  if ((a1 & 0x1000) != 0)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
    }

    v32 = *(v2 + 2);
    v31 = *(v2 + 3);
    if (v32 >= v31 >> 1)
    {
      v2 = sub_192072C74((v31 > 1), v32 + 1, 1, v2);
    }

    *(v2 + 2) = v32 + 1;
    v2[v32 + 32] = 9;
  }

  return v2;
}

char *CHSWidgetFamilyMask.chsWidgetFamilies.getter(__int16 a1)
{
  if ((a1 & 2) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1920C36AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1920C36AC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = 1;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_1920C36AC((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    *&v2[8 * v6 + 32] = 2;
  }

LABEL_12:
  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1920C36AC((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    *&v2[8 * v8 + 32] = 3;
    if ((a1 & 0x2000) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x2000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_1920C36AC((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  *&v2[8 * v10 + 32] = 13;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = sub_1920C36AC((v11 > 1), v12 + 1, 1, v2);
  }

  *(v2 + 2) = v12 + 1;
  *&v2[8 * v12 + 32] = 4;
  if ((a1 & 0x40) == 0)
  {
LABEL_16:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_1920C36AC((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  *&v2[8 * v14 + 32] = 6;
  if ((a1 & 0x400) == 0)
  {
LABEL_17:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1920C36AC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  *&v2[8 * v16 + 32] = 10;
  if ((a1 & 0x800) == 0)
  {
LABEL_18:
    if ((a1 & 0x1000) == 0)
    {
      return v2;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v18 = *(v2 + 2);
  v17 = *(v2 + 3);
  if (v18 >= v17 >> 1)
  {
    v2 = sub_1920C36AC((v17 > 1), v18 + 1, 1, v2);
  }

  *(v2 + 2) = v18 + 1;
  *&v2[8 * v18 + 32] = 11;
  if ((a1 & 0x1000) != 0)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v20 = *(v2 + 2);
    v19 = *(v2 + 3);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_1920C36AC((v19 > 1), v20 + 1, 1, v2);
    }

    *(v2 + 2) = v20 + 1;
    *&v2[8 * v20 + 32] = 12;
  }

  return v2;
}

uint64_t sub_1921B6728()
{
  if (qword_1EADEE968 != -1)
  {
    result = swift_once();
  }

  if (*(off_1EADF1A70 + 2))
  {
    byte_1EADF1A68 = *(off_1EADF1A70 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static InternalWidgetFamily.anyPlatformFamily.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EADEE960 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EADF1A68;
  return result;
}

void *sub_1921B67F0()
{
  result = sub_1921B6810();
  off_1EADF1A70 = result;
  return result;
}

uint64_t sub_1921B6810()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_19209ADD0(0, 4, 0);
  result = v13;
  v1 = byte_19223F1C0[byte_1F06A8510];
  v3 = *(v13 + 16);
  v2 = *(v13 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    sub_19209ADD0((v2 > 1), v3 + 1, 1);
    result = v13;
  }

  *(result + 16) = v4;
  *(result + v3 + 32) = v1;
  v5 = byte_19223F1C0[byte_1F06A8511];
  v14 = result;
  v6 = *(result + 24);
  v7 = v3 + 2;
  if (v4 >= v6 >> 1)
  {
    sub_19209ADD0((v6 > 1), v3 + 2, 1);
    result = v14;
  }

  *(result + 16) = v7;
  *(result + v4 + 32) = v5;
  v8 = byte_19223F1C0[byte_1F06A8512];
  v15 = result;
  v9 = *(result + 24);
  v10 = v3 + 3;
  if (v7 >= v9 >> 1)
  {
    sub_19209ADD0((v9 > 1), v3 + 3, 1);
    result = v15;
  }

  *(result + 16) = v10;
  *(result + v7 + 32) = v8;
  v11 = byte_19223F1C0[byte_1F06A8513];
  v16 = result;
  v12 = *(result + 24);
  if (v10 >= v12 >> 1)
  {
    sub_19209ADD0((v12 > 1), v3 + 4, 1);
    result = v16;
  }

  *(result + 16) = v3 + 4;
  *(result + v10 + 32) = v11;
  return result;
}

uint64_t sub_1921B69C0()
{
  if (qword_1EADEE978 != -1)
  {
    result = swift_once();
  }

  if (*(off_1EADF1A80 + 2))
  {
    qword_1EADF1A78 = *(off_1EADF1A80 + 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CHSWidgetFamily.anyPlatformFamily.getter()
{
  if (qword_1EADEE970 != -1)
  {
    swift_once();
  }

  return qword_1EADF1A78;
}

void *sub_1921B6A74()
{
  result = sub_1921B6A94();
  off_1EADF1A80 = result;
  return result;
}

uint64_t sub_1921B6A94()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_19207A250(0, 4, 0);
  result = v15;
  v1 = qword_19223F1D0[byte_1F06A8510];
  v3 = *(v15 + 16);
  v2 = *(v15 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    sub_19207A250((v2 > 1), v3 + 1, 1);
    result = v15;
  }

  *(result + 16) = v4;
  *(result + 8 * v3 + 32) = v1;
  v5 = qword_19223F1D0[byte_1F06A8511];
  v16 = result;
  v6 = *(result + 24);
  v7 = v3 + 2;
  if (v4 >= v6 >> 1)
  {
    sub_19207A250((v6 > 1), v7, 1);
    result = v16;
  }

  *(result + 16) = v7;
  *(result + 8 * v4 + 32) = v5;
  v8 = qword_19223F1D0[byte_1F06A8512];
  v17 = result;
  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    sub_19207A250((v9 > 1), v10 + 1, 1);
    result = v17;
  }

  *(result + 16) = v11;
  *(result + 8 * v10 + 32) = v8;
  v12 = qword_19223F1D0[byte_1F06A8513];
  v18 = result;
  v13 = *(result + 24);
  v14 = v10 + 2;
  if (v11 >= v13 >> 1)
  {
    sub_19207A250((v13 > 1), v14, 1);
    result = v18;
  }

  *(result + 16) = v14;
  *(result + 8 * v11 + 32) = v12;
  return result;
}

uint64_t sub_1921B6C44(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1921B6CA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1921B6CF0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1921B6D00(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_1921B6D20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 0xD)
  {
    return qword_19223F218[v1];
  }

  result = sub_192228990();
  __break(1u);
  return result;
}

unint64_t sub_1921B6D8C()
{
  result = qword_1EADED230;
  if (!qword_1EADED230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED230);
  }

  return result;
}

uint64_t EnvironmentValues._widgetMetrics.getter()
{
  sub_19203B3CC();
  sub_1922261E0();
  return v1;
}

void (*EnvironmentValues._widgetMetrics.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_19203B3CC();
  sub_1922261E0();
  return sub_1921B6E98;
}

void sub_1921B6E98(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_1922261F0();
    v7 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

uint64_t sub_1921B6FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1921B7100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921B6FCC(uint64_t a1)
{
  v2 = sub_192046CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B7008(uint64_t a1)
{
  v2 = sub_192046CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1921B7044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHSWidgetMetricsCodable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1921B70AC()
{
  result = qword_1EADF1AA8;
  if (!qword_1EADF1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1AA8);
  }

  return result;
}

uint64_t sub_1921B7100(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636146656C616373 && a2 == 0xEB00000000726F74 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C797453746E6F66 && a2 == 0xE900000000000065 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xEE00737465736E49 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E4974756F79616CLL && a2 == 0xEC00000073746573 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019224D6B0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019224D6D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1921B7414()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t HideViewOnSnapshotModifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t HideViewOnSnapshotModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v2;
  if (*(v2 + 8) != 1)
  {
    v11 = *v2;

    sub_192227FA0();
    v12 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v10, 0);
    (*(v6 + 8))(v9, v5);
    LOBYTE(v10) = v16[15];
  }

  if (v10)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB0, &qword_19223F538);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB8, &qword_19223F540);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1921B7770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1921B7B4C();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1921B77EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1921B7B4C();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1921B78C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 8);
  if (sub_1921B7414())
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB0, &qword_19223F538);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AB8, &qword_19223F540);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1921B798C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t View.hideViewOnSnapshot()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x193B0A190](&KeyPath, a1, &type metadata for HideViewOnSnapshotModifier, a2);
  return sub_192049898(KeyPath, v6);
}

unint64_t sub_1921B7A5C()
{
  result = qword_1EADECE68;
  if (!qword_1EADECE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AB8, &qword_19223F540);
    sub_1921B7AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE68);
  }

  return result;
}

unint64_t sub_1921B7AE8()
{
  result = qword_1EADECD38;
  if (!qword_1EADECD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AB0, &qword_19223F538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD38);
  }

  return result;
}

unint64_t sub_1921B7B4C()
{
  result = qword_1EADEDF30;
  if (!qword_1EADEDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF30);
  }

  return result;
}

double static MetricsRequest.mock()@<D0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for MetricsRequest() + 40);
  v3 = sub_192226600();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *a1 = xmmword_19223F6C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_19223F6C0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  result = 0.0;
  *(a1 + 96) = xmmword_19222F810;
  return result;
}

uint64_t (*static ControlRedactions.title.modify())()
{
  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921B7D4C()
{
  sub_1922279C0();
  result = sub_192227A30();
  qword_1EADECB18 = result;
  unk_1EADECB20 = v1;
  return result;
}

uint64_t (*static ControlRedactions.subtitle.modify())()
{
  if (qword_1EADECB10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1921B7E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  sub_1922279C0();
  result = sub_192227A30();
  *a4 = result;
  *a5 = v8;
  return result;
}

uint64_t sub_1921B7F10(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  v6 = *a3;

  return v5;
}

uint64_t sub_1921B7FA8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a5;
  *a4 = a1;
  *a5 = a2;
}

uint64_t (*static ControlRedactions.value.modify())()
{
  if (qword_1EADEE988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1921B80AC@<X0>(void *a1@<X3>, void *a2@<X4>, uint64_t *a3@<X5>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *a3;
  *a4 = *a2;
  a4[1] = v7;
}

uint64_t sub_1921B8124(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *a5;

  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = *a7;
  *a6 = v10;
  *a7 = v9;
}

uint64_t WidgetConfiguration._containerBackgroundRemovable(_:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  sub_1920797E8(sub_1921B8260, v2);
}

uint64_t sub_1921B8260(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 88)) = v3;
  return result;
}

uint64_t sub_1921B8294()
{
  v0 = sub_192226BE0();
  __swift_allocate_value_buffer(v0, qword_1ED749C48);
  __swift_project_value_buffer(v0, qword_1ED749C48);
  return sub_192226BD0();
}

uint64_t static ContainerBackgroundPlacement.widget.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v2 = sub_192226BE0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749C48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1921B8394(uint64_t a1)
{
  v2 = sub_19217A6EC();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t static EnvironmentValues.ShowsWidgetBackgroundKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF1AD0 = a1;
  return result;
}

uint64_t (*EnvironmentValues.showsWidgetBackground.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1920412C8();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921B8560;
}

uint64_t (*EnvironmentValues._showsWidgetBackground.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1920412C8();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921B988C;
}

uint64_t sub_1921B85CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t _s7SwiftUI17EnvironmentValuesV9WidgetKitE05showsE10BackgroundSbvg_0()
{
  sub_1920412C8();
  sub_1922261E0();
  return v1;
}

uint64_t View.widgetBackgroundStyle<A>(_:)(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v1 = sub_192226BE0();
  __swift_project_value_buffer(v1, qword_1ED749C48);
  return sub_192227120();
}

uint64_t View.widgetBackgroundStyle<A>(_:)()
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v0 = sub_192226BE0();
  __swift_project_value_buffer(v0, qword_1ED749C48);
  return sub_192227120();
}

uint64_t View.widgetBackground<A>(content:)()
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v0 = sub_192226BE0();
  __swift_project_value_buffer(v0, qword_1ED749C48);
  sub_1922275F0();
  return sub_192227110();
}

uint64_t View.widgetBackground<A>(isRemovable:content:)()
{
  if (qword_1ED749C40 != -1)
  {
    swift_once();
  }

  v0 = sub_192226BE0();
  __swift_project_value_buffer(v0, qword_1ED749C48);
  sub_1922275F0();
  return sub_192227110();
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA14LinearGradientVRsd__r__lqd0__AaBHD3_AaBPAAE19containerBackground_3forQrqd___AA09ContainerG9PlacementVtAA10ShapeStyleRd__lFQOyx_ADQo_HOTm(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1921B89C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1921B8A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1921B8A74()
{
  v1 = sub_1922261D0();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WidgetDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xmmword_1ED74CC80)
  {
    v15 = *v0;
    v16 = qword_1ED74CC90;
    v17 = *(v0 + 8);
    v25 = *xmmword_1ED74CC80;
    v27 = xmmword_1ED74CC80;
    if (v17 == 1)
    {

      sub_1921B9874(v15, 1);
    }

    else
    {

      sub_1921B9874(v15, 0);
      sub_192227FA0();
      v18 = sub_192226D00();
      v23 = v1;
      v19 = v18;
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_1920498A4(v15, 0);
      (*(v24 + 8))(v4, v23);
      v15 = v26;
    }

    (*(*(v16 + 8) + 8))(v15, v25);

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_192033970(v8, &qword_1EADEEE20, &qword_19222B670);
      v20 = 0;
    }

    else
    {
      sub_19207C284(v8, v14);
      v21 = v14[*(v9 + 88)];
      sub_192145924(v14);
      v20 = v21 ^ 1;
    }

    return v20 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1921B8D90()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v12[3] = *v0;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  if (sub_1921B8A74())
  {
    return 1;
  }

  if ((v9 & 1) == 0)
  {
    sub_1921B9868(v8, v7, 0);
    sub_192227FA0();
    v11 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19213AE5C(v8, v7, 0);
    (*(v2 + 8))(v5, v1);
    v7 = v12[2];
  }

  return (v7 - 3) < 0xFFFFFFFFFFFFFFFELL;
}

uint64_t sub_1921B8F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AD8, &qword_19223F930);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AE0, &qword_19223F938);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AE8, &qword_19223F940);
  v32 = *(v33 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v32 - v14;
  v16 = v2[1];
  v43 = *v2;
  v44 = v16;
  v45 = *(v2 + 32);
  sub_1922275F0();
  sub_192225DA0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AF0, &qword_19223F948);
  (*(*(v17 - 8) + 16))(v8, a1, v17);
  v18 = &v8[*(v5 + 44)];
  v19 = v41;
  *(v18 + 4) = v40;
  *(v18 + 5) = v19;
  *(v18 + 6) = v42;
  v20 = v37;
  *v18 = v36;
  *(v18 + 1) = v20;
  v21 = v39;
  *(v18 + 2) = v38;
  *(v18 + 3) = v21;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_1921B944C(v8, v12);
  v24 = &v12[*(v9 + 36)];
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 2) = v23;
  *(v24 + 12) = 0;
  v25 = swift_allocObject();
  v26 = v44;
  *(v25 + 16) = v43;
  *(v25 + 32) = v26;
  *(v25 + 48) = v45;
  sub_1921B94C4(&v43, v35);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AF8, &qword_19223F9A0);
  v28 = sub_1921B96F0(&qword_1ED749FE0, &qword_1EADF1AE0, &qword_19223F938, sub_1921B94FC);
  v29 = sub_1921B9640();
  sub_192227170();

  sub_192033970(v12, &qword_1EADF1AE0, &qword_19223F938);
  v35[0] = v9;
  v35[1] = &_s9WidgetKeyVN;
  v35[2] = v27;
  v35[3] = v28;
  v35[4] = v29;
  swift_getOpaqueTypeConformance2();
  sub_19207AD50();
  v30 = v33;
  sub_192227190();
  return (*(v32 + 8))(v15, v30);
}

uint64_t sub_1921B9340@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1921B8D90();
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  if ((result & 1) != 0 && a1)
  {

    v9[64] = 0;
    v9[56] = 0;
    *&v10 = a1;
    *(&v10 + 1) = sub_192225C80();
    LOBYTE(v11) = sub_192226D10();
    *(&v11 + 1) = swift_getKeyPath();
    LOBYTE(v12) = 0;
    *(&v12 + 1) = swift_getKeyPath();
    v13 = 256;
    v14 = __PAIR128__(*(&v10 + 1), a1);
    v15 = v11;
    v16 = *(&v11 + 1);
    v17 = 0;
    v18 = *(&v12 + 1);
    v19 = 256;
    sub_1921B97F8(&v10, v9);
    result = sub_192033970(&v14, &qword_1EADF1B00, &qword_19223F9A8);
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v5 = v13;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_1921B944C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AD8, &qword_19223F930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1921B94FC()
{
  result = qword_1ED74A140;
  if (!qword_1ED74A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AD8, &qword_19223F930);
    sub_1921B9588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A140);
  }

  return result;
}

unint64_t sub_1921B9588()
{
  result = qword_1ED74A0E8;
  if (!qword_1ED74A0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AF0, &qword_19223F948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0E8);
  }

  return result;
}

unint64_t sub_1921B95EC()
{
  result = qword_1ED749F48;
  if (!qword_1ED749F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F48);
  }

  return result;
}

unint64_t sub_1921B9640()
{
  result = qword_1ED749FD0;
  if (!qword_1ED749FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AF8, &qword_19223F9A0);
    sub_1921B96F0(&qword_1ED749FD8, &qword_1EADF1B00, &qword_19223F9A8, sub_1921B9774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FD0);
  }

  return result;
}

uint64_t sub_1921B96F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1921B95EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921B9774()
{
  result = qword_1ED74A128;
  if (!qword_1ED74A128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1B08, &unk_19223F9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A128);
  }

  return result;
}

uint64_t sub_1921B97F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B00, &qword_19223F9A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921B9868(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

id sub_1921B9874(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

_BYTE *static WidgetArchiver.unarchive(from:)(_BYTE *a1)
{
  v3 = sub_1922266C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_1ED7486D8;
  v9 = qword_1ED7486F0;
  v12 = *(&xmmword_1ED7486D8 + 8);

  v10 = a1;
  sub_192226650();
  if (!v1)
  {
    v14 = v8;
    v15 = v12;
    v16 = v9;
    v13 = 3;
    a1 = sub_19203BEEC(v7, &v13, &v14);
    (*(v4 + 8))(v7, v3);
  }

  return a1;
}

_BYTE *static WidgetArchiver.unarchive(from:validationOptions:)(void *a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_1922266C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v14 = a2[1];
  v15 = v11;
  v12 = a1;
  sub_192226650();
  if (!v2)
  {
    v17[0] = v15;
    v17[1] = v14;
    v16 = 3;
    v3 = sub_19203BEEC(v10, &v16, v17);
    (*(v7 + 8))(v10, v6);
  }

  return v3;
}

_BYTE *static WidgetArchiver.unarchive(from:)(uint64_t a1, _BYTE *a2)
{
  v5 = sub_1922266C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = xmmword_1ED7486D8;
  v11 = qword_1ED7486F0;
  v13 = *(&xmmword_1ED7486D8 + 8);

  sub_1920367C8(a1, a2);
  sub_1922266A0();
  if (!v2)
  {
    v14 = v10;
    v15 = v13;
    v16 = v11;
    v17 = 3;
    a2 = sub_19203BEEC(v9, &v17, &v14);
    (*(v6 + 8))(v9, v5);
  }

  return a2;
}

_BYTE *static WidgetArchiver.unarchive(from:validationOptions:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = sub_1922266C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v15 = a3[1];
  v16 = v13;
  sub_1920367C8(a1, a2);
  sub_1922266A0();
  if (!v3)
  {
    v17[0] = v16;
    v17[1] = v15;
    v18 = 3;
    v4 = sub_19203BEEC(v12, &v18, v17);
    (*(v9 + 8))(v12, v8);
  }

  return v4;
}

uint64_t static WidgetArchiver.unarchive(from:)(uint64_t a1)
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_1ED7486D8;
  v8 = *(&xmmword_1ED7486D8 + 8);
  v9 = qword_1ED7486F0;
  v2 = qword_1EADED258;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAE00780;
  v6[3] = type metadata accessor for WidgetArchiverAssertionTracker();
  v6[4] = &off_1F06B3350;
  v6[0] = v3;

  v4 = sub_19203BB68(a1, &v7, v6);
  __swift_destroy_boxed_opaque_existential_1(v6);

  return v4;
}

unint64_t WidgetArchiver.ValidationError.errorDescription.getter()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    sub_192228400();

    v6 = 0xD00000000000001ELL;
    swift_getErrorValue();
    v1 = v5;
  }

  else
  {
    sub_192228400();

    v6 = 0xD00000000000001BLL;
    swift_getErrorValue();
    v1 = v4;
  }

  v2 = sub_1921C9C58(v1);
  MEMORY[0x193B0A990](v2);

  return v6;
}

uint64_t WidgetArchiver.ValidationOptions.init(isSystemVersionSupported:isBundleSupported:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void sub_1921BA140()
{
  *&xmmword_1EADF1B10 = sub_1921BA174;
  *(&xmmword_1EADF1B10 + 1) = 0;
  qword_1EADF1B20 = sub_1921BA174;
  qword_1EADF1B28 = 0;
}

uint64_t static WidgetArchiver.ValidationOptions.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EADF1B28;
  *a1 = xmmword_1EADF1B10;
  *(a1 + 8) = *(&xmmword_1EADF1B10 + 8);
  *(a1 + 24) = v2;
}

uint64_t static WidgetArchiver.ValidationOptions.none.setter(__int128 *a1)
{
  v2 = a1[1];
  v3 = *a1;
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_1EADF1B10 = v3;
  *&qword_1EADF1B20 = v2;
}

uint64_t (*static WidgetArchiver.ValidationOptions.none.modify())()
{
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921BA340@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EADF1B28;
  *a1 = xmmword_1EADF1B10;
  *(a1 + 8) = *(&xmmword_1EADF1B10 + 8);
  *(a1 + 24) = v2;
}

uint64_t sub_1921BA3E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = qword_1EADEE998;
  v5 = *(a1 + 1);

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_1EADF1B10 = v1;
  *(&xmmword_1EADF1B10 + 8) = v5;
  qword_1EADF1B28 = v2;
}

uint64_t static WidgetArchiver.ValidationOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED7486F0;
  *a1 = xmmword_1ED7486D8;
  *(a1 + 8) = *(&xmmword_1ED7486D8 + 8);
  *(a1 + 24) = v2;
}

uint64_t static WidgetArchiver.ValidationOptions.default.setter(__int128 *a1)
{
  v2 = a1[1];
  v3 = *a1;
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_1ED7486D8 = v3;
  *&qword_1ED7486E8 = v2;
}

uint64_t (*static WidgetArchiver.ValidationOptions.default.modify())()
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1921BA660@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7485C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED7486F0;
  *a1 = xmmword_1ED7486D8;
  *(a1 + 8) = *(&xmmword_1ED7486D8 + 8);
  *(a1 + 24) = v2;
}

uint64_t sub_1921BA704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = qword_1ED7485C0;
  v5 = *(a1 + 1);

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_1ED7486D8 = v1;
  *(&xmmword_1ED7486D8 + 8) = v5;
  qword_1ED7486F0 = v2;
}

uint64_t sub_1921BA7C0(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = a2[1];

  *a2 = sub_1920327F8;
  a2[1] = v5;
  return result;
}

uint64_t WidgetArchiver.ValidationOptions.isSystemVersionSupported.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WidgetArchiver.ValidationOptions.isSystemVersionSupported.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1921BA8B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 24);

  *(a2 + 16) = sub_1920327F8;
  *(a2 + 24) = v5;
  return result;
}

uint64_t WidgetArchiver.ValidationOptions.isBundleSupported.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WidgetArchiver.ValidationOptions.isBundleSupported.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1921BA9B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1921BAA10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1921BAA84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1921BAABC()
{
  result = qword_1EADF1B48;
  if (!qword_1EADF1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1B48);
  }

  return result;
}

uint64_t sub_1921BAB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1922266D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1922266E0();
}

uint64_t EnvironmentValues.widgetRenderingMode.setter(char *a1)
{
  v2 = *a1;
  sub_19202F774();
  return sub_1922261F0();
}

unint64_t WidgetRenderingMode.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10200u >> (8 * result);
  if (result >= 3)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t WidgetRenderingMode.description.getter()
{
  v1 = 0x6465746E65636361;
  if (*v0 != 1)
  {
    v1 = 0x746E6172626976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F436C6C7566;
  }
}