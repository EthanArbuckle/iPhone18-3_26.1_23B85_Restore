uint64_t HKDatabase.Pruning.DeletedSampleInfo.init(recentTombstones:ineligibleForPruning:almostEligibleForPruning:eligibleForPruningLessThanMonthOld:betweenMonthAndThreeMonthsOld:betweenThreeMonthsAndSixMonthsOld:betweenSixMonthsAndTwelveMonthsOld:betweenTwelveMonthsAndThirtySixMonthsOld:betweenThirtySixMonthsAndSixtyMonthsOld:overSixtyMonthsOld:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = 2;
  *(a9 + 8) = 0;
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  return result;
}

double HKDatabase.Pruning.DeletedSampleInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

unint64_t sub_191C28140(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v5 = 0xD000000000000024;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v1 = 0xD00000000000002ALL;
      v2 = 0xD000000000000014;
      if (a1 == 9)
      {
        v2 = 0xD000000000000029;
      }

      v3 = a1 == 8;
    }

    else
    {
      v1 = 0xD00000000000001FLL;
      v2 = 0xD000000000000023;
      if (a1 != 6)
      {
        v2 = 0xD000000000000024;
      }

      v3 = a1 == 5;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C282BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C31B1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C282F0(uint64_t a1)
{
  v2 = sub_191C2DC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2832C(uint64_t a1)
{
  v2 = sub_191C2DC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB488, sub_191C2DC1C, &_s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v20 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = v1[2];
  v20[8] = v1[3];
  v20[9] = v12;
  v13 = v1[4];
  v20[6] = v1[5];
  v20[7] = v13;
  v14 = v1[6];
  v20[4] = v1[7];
  v20[5] = v14;
  v15 = v1[8];
  v20[2] = v1[9];
  v20[3] = v15;
  v16 = v1[10];
  v20[0] = v1[11];
  v20[1] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DC1C();
  sub_191CC7548();
  v31 = 0;
  v18 = v20[10];
  sub_191CC72E8();
  if (!v18)
  {
    v30 = 1;
    sub_191CC7338();
    v29 = 2;
    sub_191CC7338();
    v28 = 3;
    sub_191CC7338();
    v27 = 4;
    sub_191CC7338();
    v26 = 5;
    sub_191CC7338();
    v25 = 6;
    sub_191CC7338();
    v24 = 7;
    sub_191CC7338();
    v23 = 8;
    sub_191CC7338();
    v22 = 9;
    sub_191CC7338();
    v21 = 10;
    sub_191CC7338();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C2E288(0, &qword_1EADCB498, sub_191C2DC1C, &_s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v34 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DC1C();
  sub_191CC7528();
  if (!v2)
  {
    v12 = v6;
    v46 = 0;
    v13 = sub_191CC7208();
    v39 = v14 & 1;
    v45 = 1;
    v15 = sub_191CC7258();
    v44 = 2;
    v33 = sub_191CC7258();
    v43 = 3;
    v32 = sub_191CC7258();
    v42 = 4;
    v31 = sub_191CC7258();
    v41 = 5;
    v30 = sub_191CC7258();
    v40 = 6;
    v29 = sub_191CC7258();
    v38 = 7;
    v28 = sub_191CC7258();
    v37 = 8;
    v17 = sub_191CC7258();
    v36 = 9;
    v27 = sub_191CC7258();
    v35 = 10;
    v18 = sub_191CC7258();
    (*(v12 + 8))(v10, v34);
    v19 = v39;
    *a2 = v13;
    *(a2 + 8) = v19;
    v21 = v32;
    v20 = v33;
    *(a2 + 16) = v15;
    *(a2 + 24) = v20;
    v23 = v30;
    v22 = v31;
    *(a2 + 32) = v21;
    *(a2 + 40) = v22;
    v24 = v28;
    v25 = v29;
    *(a2 + 48) = v23;
    *(a2 + 56) = v25;
    *(a2 + 64) = v24;
    *(a2 + 72) = v17;
    *(a2 + 80) = v27;
    *(a2 + 88) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.version.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingMinAnchor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  v3 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v3;
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingMinAnchor.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v2;
  v3 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingMinAnchor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *(a1 + 32) = *(v1 + 144);
  *(a1 + 48) = v2;
  v3 = *(v1 + 192);
  *(a1 + 64) = *(v1 + 176);
  *(a1 + 80) = v3;
  result = *(v1 + 112);
  v5 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingMinAnchor.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[9] = *(a1 + 32);
  v1[10] = v2;
  v3 = *(a1 + 80);
  v1[11] = *(a1 + 64);
  v1[12] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[7] = *a1;
  v1[8] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingRestrictionPredicates.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *(a1 + 32) = *(v1 + 240);
  *(a1 + 48) = v2;
  v3 = *(v1 + 288);
  *(a1 + 64) = *(v1 + 272);
  *(a1 + 80) = v3;
  result = *(v1 + 208);
  v5 = *(v1 + 224);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingRestrictionPredicates.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[15] = *(a1 + 32);
  v1[16] = v2;
  v3 = *(a1 + 80);
  v1[17] = *(a1 + 64);
  v1[18] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[13] = *a1;
  v1[14] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingRestrictionPredicates.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 352);
  *(a1 + 32) = *(v1 + 336);
  *(a1 + 48) = v2;
  v3 = *(v1 + 384);
  *(a1 + 64) = *(v1 + 368);
  *(a1 + 80) = v3;
  result = *(v1 + 304);
  v5 = *(v1 + 320);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingRestrictionPredicates.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[21] = *(a1 + 32);
  v1[22] = v2;
  v3 = *(a1 + 80);
  v1[23] = *(a1 + 64);
  v1[24] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[19] = *a1;
  v1[20] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(prunedUsingMinAnchor:notPrunedUsingMinAnchor:prunedUsingRestrictionPredicates:notPrunedUsingRestrictionPredicates:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v17[7] = *a1;
  *&v17[23] = a1[1];
  *&v17[39] = a1[2];
  *&v17[87] = a1[5];
  *&v17[71] = a1[4];
  *&v17[55] = a1[3];
  *a5 = 2;
  *(a5 + 8) = 0;
  *(a5 + 41) = *&v17[32];
  *(a5 + 25) = *&v17[16];
  *(a5 + 9) = *v17;
  *(a5 + 104) = *&v17[95];
  *(a5 + 89) = *&v17[80];
  *(a5 + 73) = *&v17[64];
  *(a5 + 57) = *&v17[48];
  v5 = a2[1];
  *(a5 + 112) = *a2;
  *(a5 + 128) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  *(a5 + 176) = a2[4];
  *(a5 + 192) = v8;
  *(a5 + 144) = v6;
  *(a5 + 160) = v7;
  v9 = a3[1];
  *(a5 + 208) = *a3;
  *(a5 + 224) = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[5];
  *(a5 + 272) = a3[4];
  *(a5 + 288) = v12;
  *(a5 + 240) = v10;
  *(a5 + 256) = v11;
  v13 = *(a4 + 16);
  *(a5 + 304) = *a4;
  *(a5 + 320) = v13;
  result = *(a4 + 32);
  v15 = *(a4 + 48);
  v16 = *(a4 + 80);
  *(a5 + 368) = *(a4 + 64);
  *(a5 + 384) = v16;
  *(a5 + 336) = result;
  *(a5 + 352) = v15;
  return result;
}

double HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 2;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  return result;
}

unint64_t sub_191C28CF4()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD000000000000023;
  if (v1 == 3)
  {
    v3 = 0xD000000000000020;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_191C28D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C31E84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C28DC4(uint64_t a1)
{
  v2 = sub_191C2DC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C28E00(uint64_t a1)
{
  v2 = sub_191C2DC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB4A0, sub_191C2DC70, &_s14descr1F05F1AE1C7PruningO27ClassifiedDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v26 - v8;
  v27 = *v1;
  v26[3] = *(v1 + 8);
  v10 = *(v1 + 4);
  v37 = *(v1 + 3);
  v38 = v10;
  v11 = *(v1 + 6);
  v39 = *(v1 + 5);
  v40 = v11;
  v12 = *(v1 + 2);
  v35 = *(v1 + 1);
  v36 = v12;
  v13 = *(v1 + 8);
  v41 = *(v1 + 7);
  v42 = v13;
  v14 = *(v1 + 9);
  v15 = *(v1 + 10);
  v16 = *(v1 + 12);
  v45 = *(v1 + 11);
  v46 = v16;
  v43 = v14;
  v44 = v15;
  v17 = *(v1 + 16);
  v49 = *(v1 + 15);
  v50 = v17;
  v18 = *(v1 + 14);
  v47 = *(v1 + 13);
  v48 = v18;
  v19 = *(v1 + 18);
  v51 = *(v1 + 17);
  v52 = v19;
  v20 = *(v1 + 24);
  v57 = *(v1 + 23);
  v58 = v20;
  v21 = *(v1 + 22);
  v55 = *(v1 + 21);
  v56 = v21;
  v22 = *(v1 + 20);
  v53 = *(v1 + 19);
  v54 = v22;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DC70();
  sub_191CC7548();
  LOBYTE(v29) = 0;
  v24 = v59;
  sub_191CC72E8();
  if (!v24)
  {
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    v28 = 1;
    sub_191C2DCC4();
    sub_191CC7348();
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v29 = v41;
    v30 = v42;
    v28 = 2;
    sub_191CC7348();
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v29 = v47;
    v30 = v48;
    v28 = 3;
    sub_191CC7348();
    v31 = v55;
    v32 = v56;
    v33 = v57;
    v34 = v58;
    v29 = v53;
    v30 = v54;
    v28 = 4;
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C2E288(0, &qword_1EADCB4B8, sub_191C2DC70, &_s14descr1F05F1AE1C7PruningO27ClassifiedDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v29 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_191C2DC70();
  sub_191CC7528();
  if (!v2)
  {
    LOBYTE(v52) = 0;
    v28 = sub_191CC7208();
    v71 = v13 & 1;
    v51 = 1;
    sub_191C2DD18();
    sub_191CC7268();
    *&v70[39] = v54;
    *&v70[55] = v55;
    *&v70[71] = v56;
    *&v70[87] = v57;
    *&v70[7] = v52;
    *&v70[23] = v53;
    v44 = 2;
    sub_191CC7268();
    v66 = v47;
    v67 = v48;
    v68 = v49;
    v69 = v50;
    v64 = v45;
    v65 = v46;
    v37 = 3;
    sub_191CC7268();
    v60 = v40;
    v61 = v41;
    v62 = v42;
    v63 = v43;
    v58 = v38;
    v59 = v39;
    v30 = 4;
    sub_191CC7268();
    (*(v6 + 8))(v10, v29);
    v15 = *&v70[32];
    *(a2 + 57) = *&v70[48];
    v16 = *&v70[80];
    *(a2 + 73) = *&v70[64];
    *(a2 + 89) = v16;
    v17 = *&v70[16];
    *(a2 + 9) = *v70;
    v18 = v71;
    *a2 = v28;
    *(a2 + 8) = v18;
    *(a2 + 104) = *&v70[95];
    *(a2 + 25) = v17;
    *(a2 + 41) = v15;
    v19 = v67;
    *(a2 + 144) = v66;
    *(a2 + 160) = v19;
    v20 = v69;
    *(a2 + 176) = v68;
    *(a2 + 192) = v20;
    v21 = v65;
    *(a2 + 112) = v64;
    *(a2 + 128) = v21;
    v22 = v61;
    *(a2 + 240) = v60;
    *(a2 + 256) = v22;
    v23 = v63;
    *(a2 + 272) = v62;
    *(a2 + 288) = v23;
    v24 = v59;
    *(a2 + 208) = v58;
    *(a2 + 224) = v24;
    v25 = v32;
    *(a2 + 304) = v31;
    *(a2 + 320) = v25;
    v26 = v36;
    *(a2 + 368) = v35;
    *(a2 + 384) = v26;
    v27 = v34;
    *(a2 + 336) = v33;
    *(a2 + 352) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t HKDatabase.Pruning.ShowWithDeletedSampleInfo.show.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_191C2DBB4(v11, &v10);
}

__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.show.setter(uint64_t a1)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v4 = v1[7];
  v12[6] = v1[6];
  v12[7] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  sub_191C2DBEC(v12);
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  v8 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v8;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v11;
  return result;
}

__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.deletedSampleInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 32) = *(v1 + 160);
  *(a1 + 48) = v2;
  v3 = *(v1 + 208);
  *(a1 + 64) = *(v1 + 192);
  *(a1 + 80) = v3;
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.deletedSampleInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[10] = *(a1 + 32);
  v1[11] = v2;
  v3 = *(a1 + 80);
  v1[12] = *(a1 + 64);
  v1[13] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(show:deletedSampleInfo:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v3;
  v4 = a1[7];
  *(a3 + 96) = a1[6];
  *(a3 + 112) = v4;
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v6;
  v7 = *(a2 + 16);
  *(a3 + 128) = *a2;
  *(a3 + 144) = v7;
  result = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *(a3 + 192) = *(a2 + 64);
  *(a3 + 208) = v10;
  *(a3 + 160) = result;
  *(a3 + 176) = v9;
  return result;
}

unint64_t sub_191C296D0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 2003789939;
  }

  *v0;
  return result;
}

uint64_t sub_191C29708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003789939 && a2 == 0xE400000000000000;
  if (v5 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2C4F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C297EC(uint64_t a1)
{
  v2 = sub_191C2DD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C29828(uint64_t a1)
{
  v2 = sub_191C2DD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.ShowWithDeletedSampleInfo.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB4C8, sub_191C2DD6C, &_s14descr1F05F1AE1C7PruningO25ShowWithDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v24[-v7];
  v9 = v1[5];
  v45 = v1[4];
  v46 = v9;
  v10 = v1[7];
  v47 = v1[6];
  v48 = v10;
  v11 = v1[1];
  v41 = *v1;
  v42 = v11;
  v12 = v1[3];
  v43 = v1[2];
  v44 = v12;
  v13 = v1[9];
  v49 = v1[8];
  v50 = v13;
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[13];
  v53 = v1[12];
  v54 = v16;
  v51 = v14;
  v52 = v15;
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_0(v19, v17);
  sub_191C2DBB4(&v41, &v33);
  sub_191C2DD6C();
  sub_191CC7548();
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v32 = 0;
  sub_191C2DDC0();
  v22 = v55;
  sub_191CC7348();
  v31[4] = v37;
  v31[5] = v38;
  v31[6] = v39;
  v31[7] = v40;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  sub_191C2DBEC(v31);
  if (!v22)
  {
    v27 = v51;
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v25 = v49;
    v26 = v50;
    v24[15] = 1;
    sub_191C2DCC4();
    sub_191CC7348();
  }

  return (*(v4 + 8))(v8, v21);
}

uint64_t HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  sub_191C2E288(0, &qword_1EADCB4E0, sub_191C2DD6C, &_s14descr1F05F1AE1C7PruningO25ShowWithDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v60 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DD6C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v5;
  v12 = v27;
  v37 = 0;
  sub_191C2DE14();
  v13 = v60;
  sub_191CC7268();
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v46 = v38;
  v47 = v39;
  v48 = v40;
  v49 = v41;
  v30 = 1;
  sub_191C2DD18();
  sub_191CC7268();
  (*(v11 + 8))(v9, v13);
  v14 = v34;
  v56 = v33;
  v57 = v34;
  v15 = v52;
  v16 = v53;
  v28[6] = v52;
  v28[7] = v53;
  v17 = v50;
  v18 = v51;
  v28[4] = v50;
  v28[5] = v51;
  v19 = v48;
  v20 = v49;
  v28[2] = v48;
  v28[3] = v49;
  v54 = v31;
  v55 = v32;
  v28[8] = v31;
  v28[9] = v32;
  v58 = v35;
  v59 = v36;
  v28[10] = v33;
  v28[11] = v34;
  v28[12] = v35;
  v28[13] = v36;
  v21 = v46;
  v22 = v47;
  v28[0] = v46;
  v28[1] = v47;
  v12[10] = v33;
  v12[11] = v14;
  v23 = v59;
  v12[12] = v58;
  v12[13] = v23;
  v12[6] = v15;
  v12[7] = v16;
  v24 = v55;
  v12[8] = v54;
  v12[9] = v24;
  v12[2] = v19;
  v12[3] = v20;
  v12[4] = v17;
  v12[5] = v18;
  *v12 = v21;
  v12[1] = v22;
  sub_191C2DE68(v28, v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v29[10] = v56;
  v29[11] = v57;
  v29[12] = v58;
  v29[13] = v59;
  v29[6] = v52;
  v29[7] = v53;
  v29[8] = v54;
  v29[9] = v55;
  v29[2] = v48;
  v29[3] = v49;
  v29[4] = v50;
  v29[5] = v51;
  v29[0] = v46;
  v29[1] = v47;
  return sub_191C2DEA0(v29);
}

uint64_t sub_191C29EB4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_191CC61A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_191C29F50(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_191CC61A8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_191C2A0D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_191C18FCC(v4, a2);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0) + 32);

  return sub_191C18FCC(v3, a1);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0) + 32);

  return sub_191C2BBE0(a1, v3);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.eligibleForPruning.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.prunedUsingMinAnchor.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.prunedUsingRestrictionPredicates.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.restrictionPredicates.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0) + 48));
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.restrictionPredicates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.init(rowID:uuid:createdDate:startDate:endDate:eligibleForPruning:prunedUsingMinAnchor:prunedUsingRestrictionPredicates:restrictionPredicates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  v13 = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  v14 = v13[7];
  v15 = sub_191CC6148();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(&a9[v14], 1, 1, v15);
  v18 = v13[8];
  v17(&a9[v18], 1, 1, v15);
  *a9 = a1;
  v19 = v13[5];
  v20 = sub_191CC61A8();
  (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  (*(v16 + 32))(&a9[v13[6]], a3, v15);
  sub_191C2BBE0(a4, &a9[v14]);
  result = sub_191C2BBE0(a5, &a9[v18]);
  a9[v13[9]] = a6;
  a9[v13[10]] = a7;
  a9[v13[11]] = a8;
  *&a9[v13[12]] = a10;
  return result;
}

unint64_t sub_191C2A674(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x4449776F72;
    v5 = 0x4464657461657263;
    if (a1 != 2)
    {
      v5 = 0x7461447472617473;
    }

    if (a1)
    {
      v4 = 1684632949;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 == 7)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0x65746144646E65;
    if (a1 != 4)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_191C2A7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C32038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C2A7CC(uint64_t a1)
{
  v2 = sub_191C2DEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2A808(uint64_t a1)
{
  v2 = sub_191C2DEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C2E288(0, &qword_1EADCB4F0, sub_191C2DEF0, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV13DeletedSampleV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v23[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DEF0();
  sub_191CC7548();
  v13 = *v3;
  LOBYTE(v24) = 0;
  sub_191CC7368();
  if (!v2)
  {
    v14 = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
    v15 = v14[5];
    LOBYTE(v24) = 1;
    sub_191CC61A8();
    sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
    sub_191CC7348();
    v16 = v14[6];
    LOBYTE(v24) = 2;
    sub_191CC6148();
    sub_191C2153C(&qword_1EADCB310, MEMORY[0x1E6969530]);
    sub_191CC7348();
    v17 = v14[7];
    LOBYTE(v24) = 3;
    sub_191CC72F8();
    v18 = v14[8];
    LOBYTE(v24) = 4;
    sub_191CC72F8();
    v19 = *(v3 + v14[9]);
    LOBYTE(v24) = 5;
    sub_191CC7318();
    v20 = *(v3 + v14[10]);
    LOBYTE(v24) = 6;
    sub_191CC7318();
    v21 = *(v3 + v14[11]);
    LOBYTE(v24) = 7;
    sub_191CC7318();
    v24 = *(v3 + v14[12]);
    v23[15] = 8;
    sub_191C2D5D4(0, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    sub_191C2DF44();
    sub_191CC7348();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v50 = &v47 - v9;
  v10 = sub_191CC6148();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_191CC61A8();
  v52 = *(v55 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v55, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB518, sub_191C2DEF0, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV13DeletedSampleV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v56 = v19;
  v54 = *(v19 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v47 - v22;
  v24 = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = (&v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v27 + 28);
  v51 = v11;
  v31 = *(v11 + 56);
  v60 = v30;
  v31(v29 + v30, 1, 1, v10);
  v59 = *(v24 + 32);
  v61 = v29;
  v31(v29 + v59, 1, 1, v10);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DEF0();
  v57 = v23;
  v33 = v58;
  v34 = a1;
  sub_191CC7528();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v38 = v59;
    v39 = v61;
    sub_191C2CC84(v61 + v60);
    return sub_191C2CC84(v39 + v38);
  }

  else
  {
    v35 = v53;
    v58 = v24;
    v36 = v55;
    LOBYTE(v63) = 0;
    *v61 = sub_191CC7288();
    LOBYTE(v63) = 1;
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
    v37 = v18;
    sub_191CC7268();
    v40 = v58;
    (*(v52 + 32))(v61 + v58[5], v37, v36);
    LOBYTE(v63) = 2;
    sub_191C2153C(&qword_1EADCB330, MEMORY[0x1E6969530]);
    sub_191CC7268();
    v47 = v10;
    (*(v51 + 32))(v61 + v40[6], v35, v10);
    LOBYTE(v63) = 3;
    v41 = v50;
    v53 = 0;
    sub_191CC7218();
    sub_191C2BBE0(v41, v61 + v60);
    LOBYTE(v63) = 4;
    v42 = v49;
    sub_191CC7218();
    sub_191C2BBE0(v42, v61 + v59);
    LOBYTE(v63) = 5;
    v43 = sub_191CC7238();
    v44 = v58;
    *(v61 + v58[9]) = v43 & 1;
    LOBYTE(v63) = 6;
    *(v61 + v44[10]) = sub_191CC7238() & 1;
    LOBYTE(v63) = 7;
    *(v61 + v58[11]) = sub_191CC7238() & 1;
    sub_191C2D5D4(0, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    v62 = 8;
    sub_191C2E01C();
    sub_191CC7268();
    (*(v54 + 8))(v57, v56);
    v45 = v61;
    *(v61 + v58[12]) = v63;
    sub_191C2E0F4(v45, v48, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return sub_191C3241C(v45, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
  }
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.version.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.deletedSamples.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(deletedSamples:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_191C2B548()
{
  if (*v0)
  {
    result = 0x53646574656C6564;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_191C2B590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x53646574656C6564 && a2 == 0xEE0073656C706D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191C2B674(uint64_t a1)
{
  v2 = sub_191C2E15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2B6B0(uint64_t a1)
{
  v2 = sub_191C2E15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB530, sub_191C2E15C, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v15 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v16 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2E15C();
  sub_191CC7548();
  v20 = 0;
  v13 = v17;
  sub_191CC72E8();
  if (!v13)
  {
    v18 = v16;
    v19 = 1;
    sub_191C2D5D4(0, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
    sub_191C2E1B0();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a2;
  sub_191C2E288(0, &qword_1EADCB558, sub_191C2E15C, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2E15C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v6;
  v13 = v19[0];
  v22 = 0;
  v14 = sub_191CC7208();
  v20 = v15 & 1;
  sub_191C2D5D4(0, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
  v21 = 1;
  sub_191C2E2F0();
  sub_191CC7268();
  (*(v12 + 8))(v10, v5);
  v16 = v19[1];
  v17 = v20;
  *v13 = v14;
  *(v13 + 8) = v17;
  *(v13 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C2BB6C()
{
  result = qword_1EADCB240;
  if (!qword_1EADCB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB240);
  }

  return result;
}

uint64_t sub_191C2BBE0(uint64_t a1, uint64_t a2)
{
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C2BC74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_191CC74B8();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v48[-v17];
  sub_191C32324();
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v48[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v48[-v27];
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  if (*(a1 + *(v29 + 20)) != *(a2 + *(v29 + 20)))
  {
    return 0;
  }

  v52 = v15;
  v53 = v9;
  v54 = v29;
  v30 = *(v29 + 24);
  v31 = *(v20 + 48);
  sub_191C18FCC(a1 + v30, v28);
  sub_191C18FCC(a2 + v30, &v28[v31]);
  v55 = v5;
  v32 = *(v5 + 48);
  if (v32(v28, 1, v4) == 1)
  {
    if (v32(&v28[v31], 1, v4) == 1)
    {
      sub_191C2CC84(v28);
      goto LABEL_10;
    }

LABEL_8:
    v33 = v28;
LABEL_16:
    sub_191C3241C(v33, sub_191C32324);
    return 0;
  }

  sub_191C18FCC(v28, v18);
  if (v32(&v28[v31], 1, v4) == 1)
  {
    (*(v55 + 8))(v18, v4);
    goto LABEL_8;
  }

  v34 = *(v55 + 32);
  v50 = v32;
  v35 = v53;
  v34(v53, &v28[v31], v4);
  sub_191C2153C(&qword_1EADCADD8, MEMORY[0x1E6969530]);
  v49 = sub_191CC6768();
  v51 = *(v55 + 8);
  v36 = v35;
  v32 = v50;
  v51(v36, v4);
  v51(v18, v4);
  sub_191C2CC84(v28);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v37 = *(v54 + 28);
  v38 = *(v20 + 48);
  sub_191C18FCC(a1 + v37, v25);
  sub_191C18FCC(a2 + v37, &v25[v38]);
  if (v32(v25, 1, v4) != 1)
  {
    v39 = v52;
    sub_191C18FCC(v25, v52);
    if (v32(&v25[v38], 1, v4) != 1)
    {
      v41 = v55;
      v42 = v53;
      (*(v55 + 32))(v53, &v25[v38], v4);
      sub_191C2153C(&qword_1EADCADD8, MEMORY[0x1E6969530]);
      v43 = sub_191CC6768();
      v44 = *(v41 + 8);
      v44(v42, v4);
      v44(v39, v4);
      sub_191C2CC84(v25);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v55 + 8))(v39, v4);
    goto LABEL_15;
  }

  if (v32(&v25[v38], 1, v4) != 1)
  {
LABEL_15:
    v33 = v25;
    goto LABEL_16;
  }

  sub_191C2CC84(v25);
LABEL_20:
  v45 = *(v54 + 32);
  v46 = *(a1 + v45);
  v47 = *(a2 + v45);
  if (v46)
  {
    if (v47 && (sub_191C2BC74(v46, v47) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v47)
  {
    return 1;
  }

  return 0;
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV14ClassificationO2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v2 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v58 = &v57 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v57 = &v57 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v60 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v57 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v57 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v57 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v57 - v38;
  sub_191C323B8();
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v40 - 8, v42);
  v45 = &v57 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v43 + 56);
  sub_191C2E0F4(v61, v45, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  sub_191C2E0F4(v62, &v45[v46], type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_191C2E0F4(v45, v36, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v55 = sub_191C323B8;
        v50 = 0;
        v39 = v36;
        goto LABEL_18;
      }

      sub_191C2CB70(&v45[v46], v16, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v50 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v36, v16);
      v51 = v16;
      v39 = v36;
      goto LABEL_17;
    }

    v52 = v19;
    sub_191C2E0F4(v45, v39, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = &v45[v46];
LABEL_13:
      sub_191C2CB70(v53, v52, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v50 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v39, v52);
      v51 = v52;
LABEL_17:
      sub_191C3241C(v51, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v55 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification;
      goto LABEL_18;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_191C2E0F4(v45, v32, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v55 = sub_191C323B8;
        v50 = 0;
        v39 = v32;
        goto LABEL_18;
      }

      v54 = v57;
      sub_191C2CB70(&v45[v46], v57, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v50 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v32, v54);
      v51 = v54;
      v39 = v32;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_191C2E0F4(v45, v28, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v55 = sub_191C323B8;
        v50 = 0;
        v39 = v28;
        goto LABEL_18;
      }

      v48 = &v45[v46];
      v49 = v58;
      sub_191C2CB70(v48, v58, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v50 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v28, v49);
      v51 = v49;
      v39 = v28;
      goto LABEL_17;
    }

    v39 = v60;
    sub_191C2E0F4(v45, v60, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v53 = &v45[v46];
      v52 = v59;
      goto LABEL_13;
    }
  }

  v55 = sub_191C323B8;
  v50 = 0;
LABEL_18:
  sub_191C3241C(v39, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
  sub_191C3241C(v45, v55);
  return v50 & 1;
}

unint64_t sub_191C2C89C()
{
  result = qword_1EADCB258;
  if (!qword_1EADCB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB258);
  }

  return result;
}

unint64_t sub_191C2C8F0()
{
  result = qword_1EADCB268;
  if (!qword_1EADCB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB268);
  }

  return result;
}

unint64_t sub_191C2C944()
{
  result = qword_1EADCB278;
  if (!qword_1EADCB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB278);
  }

  return result;
}

unint64_t sub_191C2C998()
{
  result = qword_1EADCB288;
  if (!qword_1EADCB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB288);
  }

  return result;
}

unint64_t sub_191C2C9EC()
{
  result = qword_1EADCB298;
  if (!qword_1EADCB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB298);
  }

  return result;
}

unint64_t sub_191C2CA60()
{
  result = qword_1EADCB2A8;
  if (!qword_1EADCB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB2A8);
  }

  return result;
}

void sub_191C2CAB4()
{
  if (!qword_1EADCB2E8)
  {
    sub_191C2CB24();
    sub_191CC7018();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB2E8);
    }
  }
}

unint64_t sub_191C2CB24()
{
  result = qword_1EADCB2F0;
  if (!qword_1EADCB2F0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EADCB2F0);
  }

  return result;
}

uint64_t sub_191C2CB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_191C2CBD8()
{
  result = qword_1EADCB308;
  if (!qword_1EADCB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB308);
  }

  return result;
}

void sub_191C2CC2C()
{
  if (!qword_1EADCB318)
  {
    v0 = sub_191CC6B88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB318);
    }
  }
}

uint64_t sub_191C2CC84(uint64_t a1)
{
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C2CD10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_191C2CC2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C2CD90()
{
  result = qword_1EADCB348;
  if (!qword_1EADCB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB348);
  }

  return result;
}

void sub_191C2CDE4()
{
  if (!qword_1EADCB350)
  {
    sub_191C2CE50();
    sub_191C2CEAC();
    v0 = sub_191CC6648();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB350);
    }
  }
}

void sub_191C2CE50()
{
  if (!qword_1EADCB358)
  {
    v0 = sub_191CC6648();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB358);
    }
  }
}

unint64_t sub_191C2CEAC()
{
  result = qword_1EADCB360;
  if (!qword_1EADCB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB360);
  }

  return result;
}

unint64_t sub_191C2CF00()
{
  result = qword_1EADCB368;
  if (!qword_1EADCB368)
  {
    sub_191C2CDE4();
    sub_191C2CFA0();
    sub_191C2D0E8(&qword_1EADCB378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB368);
  }

  return result;
}

unint64_t sub_191C2CFA0()
{
  result = qword_1EADCB370;
  if (!qword_1EADCB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB370);
  }

  return result;
}

unint64_t sub_191C2CFF4()
{
  result = qword_1EADCB388;
  if (!qword_1EADCB388)
  {
    sub_191C2CDE4();
    sub_191C2D094();
    sub_191C2D0E8(&qword_1EADCB398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB388);
  }

  return result;
}

unint64_t sub_191C2D094()
{
  result = qword_1EADCB390;
  if (!qword_1EADCB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB390);
  }

  return result;
}

uint64_t sub_191C2D0E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_191C2CE50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191C2D148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_191C2D15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_191C2D170()
{
  result = qword_1EADCB3A8;
  if (!qword_1EADCB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3A8);
  }

  return result;
}

void sub_191C2D1C4()
{
  if (!qword_1EADCB3B0)
  {
    sub_191CC61A8();
    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(255);
    sub_191C2153C(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
    v0 = sub_191CC6648();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB3B0);
    }
  }
}

unint64_t sub_191C2D270()
{
  result = qword_1EADCB3B8;
  if (!qword_1EADCB3B8)
  {
    sub_191C2D1C4();
    sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8]);
    sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3B8);
  }

  return result;
}

unint64_t sub_191C2D350()
{
  result = qword_1EADCB3C8;
  if (!qword_1EADCB3C8)
  {
    sub_191C2D1C4();
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8]);
    sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3C8);
  }

  return result;
}

unint64_t sub_191C2D498()
{
  result = qword_1EADCB3D8;
  if (!qword_1EADCB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3D8);
  }

  return result;
}

unint64_t sub_191C2D4EC()
{
  result = qword_1EADCB3E0;
  if (!qword_1EADCB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3E0);
  }

  return result;
}

void sub_191C2D540()
{
  if (!qword_1EADCB3E8)
  {
    sub_191CC61A8();
    sub_191C2153C(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
    v0 = sub_191CC6B88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB3E8);
    }
  }
}

void sub_191C2D5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_191C2D638()
{
  result = qword_1EADCB400;
  if (!qword_1EADCB400)
  {
    sub_191C2D5D4(255, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB408, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB400);
  }

  return result;
}

unint64_t sub_191C2D710()
{
  result = qword_1EADCB418;
  if (!qword_1EADCB418)
  {
    sub_191C2D5D4(255, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB420, type metadata accessor for HKDatabase.Pruning.Show.Store);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB418);
  }

  return result;
}

uint64_t sub_191C2D7E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_191C2EAD4(255, &qword_1EADCB428, &type metadata for HKDatabase.Pruning.Show.Entity, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C2D878()
{
  result = qword_1EADCB438;
  if (!qword_1EADCB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB438);
  }

  return result;
}

unint64_t sub_191C2D8CC()
{
  result = qword_1EADCB448;
  if (!qword_1EADCB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB448);
  }

  return result;
}

uint64_t sub_191C2D920(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_191C2D540();
    sub_191C2153C(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C2D9B0()
{
  result = qword_1EADCB458;
  if (!qword_1EADCB458)
  {
    sub_191C2D5D4(255, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB460, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB458);
  }

  return result;
}

unint64_t sub_191C2DA88()
{
  result = qword_1EADCB468;
  if (!qword_1EADCB468)
  {
    sub_191C2D5D4(255, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB470, type metadata accessor for HKDatabase.Pruning.Show.Store);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB468);
  }

  return result;
}

unint64_t sub_191C2DB60()
{
  result = qword_1EADCB480;
  if (!qword_1EADCB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB480);
  }

  return result;
}

unint64_t sub_191C2DC1C()
{
  result = qword_1EADCB490;
  if (!qword_1EADCB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB490);
  }

  return result;
}

unint64_t sub_191C2DC70()
{
  result = qword_1EADCB4A8;
  if (!qword_1EADCB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4A8);
  }

  return result;
}

unint64_t sub_191C2DCC4()
{
  result = qword_1EADCB4B0;
  if (!qword_1EADCB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4B0);
  }

  return result;
}

unint64_t sub_191C2DD18()
{
  result = qword_1EADCB4C0;
  if (!qword_1EADCB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4C0);
  }

  return result;
}

unint64_t sub_191C2DD6C()
{
  result = qword_1EADCB4D0;
  if (!qword_1EADCB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4D0);
  }

  return result;
}

unint64_t sub_191C2DDC0()
{
  result = qword_1EADCB4D8;
  if (!qword_1EADCB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4D8);
  }

  return result;
}

unint64_t sub_191C2DE14()
{
  result = qword_1EADCB4E8;
  if (!qword_1EADCB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4E8);
  }

  return result;
}

unint64_t sub_191C2DEF0()
{
  result = qword_1EADCB4F8;
  if (!qword_1EADCB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4F8);
  }

  return result;
}

unint64_t sub_191C2DF44()
{
  result = qword_1EADCB508;
  if (!qword_1EADCB508)
  {
    sub_191C2D5D4(255, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB510, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB508);
  }

  return result;
}

unint64_t sub_191C2E01C()
{
  result = qword_1EADCB520;
  if (!qword_1EADCB520)
  {
    sub_191C2D5D4(255, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB528, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB520);
  }

  return result;
}

uint64_t sub_191C2E0F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_191C2E15C()
{
  result = qword_1EADCB538;
  if (!qword_1EADCB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB538);
  }

  return result;
}

unint64_t sub_191C2E1B0()
{
  result = qword_1EADCB548;
  if (!qword_1EADCB548)
  {
    sub_191C2D5D4(255, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB550, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB548);
  }

  return result;
}

void sub_191C2E288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_191C2E2F0()
{
  result = qword_1EADCB560;
  if (!qword_1EADCB560)
  {
    sub_191C2D5D4(255, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB568, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB560);
  }

  return result;
}

unint64_t sub_191C2E3CC()
{
  result = qword_1EADCB570;
  if (!qword_1EADCB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB570);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_191C2E454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2E49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_191C2E530(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_191C2E584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_191C2E610()
{
  result = sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191C2E69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_191C2E6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_191C2E784()
{
  sub_191CC61A8();
  if (v0 <= 0x3F)
  {
    sub_191C2D5D4(319, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_191C2D5D4(319, &qword_1EADCB598, sub_191C2CC2C, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_191C2E8D8()
{
  result = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_191C2E968()
{
  sub_191CC61A8();
  if (v0 <= 0x3F)
  {
    sub_191CC6148();
    if (v1 <= 0x3F)
    {
      sub_191C2D5D4(319, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_191C2CDE4();
        if (v3 <= 0x3F)
        {
          sub_191C2EAD4(319, &qword_1EADCB5C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_191C2EAD4(319, &qword_1EADCB5C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_191C2EAD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9HealthKit10HKDatabaseO7PruningO4ShowV20SyncEntityIdentifierVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2EB48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_191C2EB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
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

uint64_t sub_191C2EC0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191C2EC2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_191C2EC88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 400))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191C2ECA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 400) = v3;
  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_191C2ED88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2EDD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C2EE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2EEA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_191C2EF18()
{
  sub_191CC61A8();
  if (v0 <= 0x3F)
  {
    sub_191CC6148();
    if (v1 <= 0x3F)
    {
      sub_191C2D5D4(319, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_191C2D5D4(319, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t _s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
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

  return (v8 + 1);
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_191C2F5E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t sub_191C2F670(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_191C2F7A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_191C2F830(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_191C2F8F4()
{
  result = qword_1EADCB5E0;
  if (!qword_1EADCB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5E0);
  }

  return result;
}

unint64_t sub_191C2F94C()
{
  result = qword_1EADCB5E8;
  if (!qword_1EADCB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5E8);
  }

  return result;
}

unint64_t sub_191C2F9A4()
{
  result = qword_1EADCB5F0;
  if (!qword_1EADCB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5F0);
  }

  return result;
}

unint64_t sub_191C2F9FC()
{
  result = qword_1EADCB5F8;
  if (!qword_1EADCB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5F8);
  }

  return result;
}

unint64_t sub_191C2FA54()
{
  result = qword_1EADCB600;
  if (!qword_1EADCB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB600);
  }

  return result;
}

unint64_t sub_191C2FAAC()
{
  result = qword_1EADCB608;
  if (!qword_1EADCB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB608);
  }

  return result;
}

unint64_t sub_191C2FB04()
{
  result = qword_1EADCB610;
  if (!qword_1EADCB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB610);
  }

  return result;
}

unint64_t sub_191C2FB5C()
{
  result = qword_1EADCB618;
  if (!qword_1EADCB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB618);
  }

  return result;
}

unint64_t sub_191C2FBB4()
{
  result = qword_1EADCB620;
  if (!qword_1EADCB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB620);
  }

  return result;
}

unint64_t sub_191C2FC0C()
{
  result = qword_1EADCB628;
  if (!qword_1EADCB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB628);
  }

  return result;
}

unint64_t sub_191C2FC64()
{
  result = qword_1EADCB630;
  if (!qword_1EADCB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB630);
  }

  return result;
}

unint64_t sub_191C2FCBC()
{
  result = qword_1EADCB638;
  if (!qword_1EADCB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB638);
  }

  return result;
}

unint64_t sub_191C2FD14()
{
  result = qword_1EADCB640;
  if (!qword_1EADCB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB640);
  }

  return result;
}

unint64_t sub_191C2FD6C()
{
  result = qword_1EADCB648;
  if (!qword_1EADCB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB648);
  }

  return result;
}

unint64_t sub_191C2FDC4()
{
  result = qword_1EADCB650;
  if (!qword_1EADCB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB650);
  }

  return result;
}

unint64_t sub_191C2FE1C()
{
  result = qword_1EADCB658;
  if (!qword_1EADCB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB658);
  }

  return result;
}

unint64_t sub_191C2FE74()
{
  result = qword_1EADCB660;
  if (!qword_1EADCB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB660);
  }

  return result;
}

unint64_t sub_191C2FECC()
{
  result = qword_1EADCB668;
  if (!qword_1EADCB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB668);
  }

  return result;
}

unint64_t sub_191C2FF24()
{
  result = qword_1EADCB670;
  if (!qword_1EADCB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB670);
  }

  return result;
}

unint64_t sub_191C2FF7C()
{
  result = qword_1EADCB678;
  if (!qword_1EADCB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB678);
  }

  return result;
}

unint64_t sub_191C2FFD4()
{
  result = qword_1EADCB680;
  if (!qword_1EADCB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB680);
  }

  return result;
}

unint64_t sub_191C3002C()
{
  result = qword_1EADCB688;
  if (!qword_1EADCB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB688);
  }

  return result;
}

unint64_t sub_191C30084()
{
  result = qword_1EADCB690;
  if (!qword_1EADCB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB690);
  }

  return result;
}

unint64_t sub_191C300DC()
{
  result = qword_1EADCB698;
  if (!qword_1EADCB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB698);
  }

  return result;
}

unint64_t sub_191C30134()
{
  result = qword_1EADCB6A0;
  if (!qword_1EADCB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6A0);
  }

  return result;
}

unint64_t sub_191C3018C()
{
  result = qword_1EADCB6A8;
  if (!qword_1EADCB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6A8);
  }

  return result;
}

unint64_t sub_191C301E4()
{
  result = qword_1EADCB6B0;
  if (!qword_1EADCB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6B0);
  }

  return result;
}

unint64_t sub_191C3023C()
{
  result = qword_1EADCB6B8;
  if (!qword_1EADCB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6B8);
  }

  return result;
}

unint64_t sub_191C30294()
{
  result = qword_1EADCB6C0;
  if (!qword_1EADCB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6C0);
  }

  return result;
}

unint64_t sub_191C302EC()
{
  result = qword_1EADCB6C8;
  if (!qword_1EADCB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6C8);
  }

  return result;
}

unint64_t sub_191C30344()
{
  result = qword_1EADCB6D0;
  if (!qword_1EADCB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6D0);
  }

  return result;
}

unint64_t sub_191C3039C()
{
  result = qword_1EADCB6D8;
  if (!qword_1EADCB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6D8);
  }

  return result;
}

unint64_t sub_191C303F4()
{
  result = qword_1EADCB6E0;
  if (!qword_1EADCB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6E0);
  }

  return result;
}

unint64_t sub_191C3044C()
{
  result = qword_1EADCB6E8;
  if (!qword_1EADCB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6E8);
  }

  return result;
}

unint64_t sub_191C304A4()
{
  result = qword_1EADCB6F0;
  if (!qword_1EADCB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6F0);
  }

  return result;
}

unint64_t sub_191C304FC()
{
  result = qword_1EADCB6F8;
  if (!qword_1EADCB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6F8);
  }

  return result;
}

unint64_t sub_191C30554()
{
  result = qword_1EADCB700;
  if (!qword_1EADCB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB700);
  }

  return result;
}

unint64_t sub_191C305AC()
{
  result = qword_1EADCB708;
  if (!qword_1EADCB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB708);
  }

  return result;
}

unint64_t sub_191C30604()
{
  result = qword_1EADCB710;
  if (!qword_1EADCB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB710);
  }

  return result;
}

unint64_t sub_191C3065C()
{
  result = qword_1EADCB718;
  if (!qword_1EADCB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB718);
  }

  return result;
}

unint64_t sub_191C306B4()
{
  result = qword_1EADCB720;
  if (!qword_1EADCB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB720);
  }

  return result;
}

unint64_t sub_191C3070C()
{
  result = qword_1EADCB728;
  if (!qword_1EADCB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB728);
  }

  return result;
}

unint64_t sub_191C30764()
{
  result = qword_1EADCB730;
  if (!qword_1EADCB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB730);
  }

  return result;
}

unint64_t sub_191C307BC()
{
  result = qword_1EADCB738;
  if (!qword_1EADCB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB738);
  }

  return result;
}

unint64_t sub_191C30814()
{
  result = qword_1EADCB740;
  if (!qword_1EADCB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB740);
  }

  return result;
}

unint64_t sub_191C3086C()
{
  result = qword_1EADCB748;
  if (!qword_1EADCB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB748);
  }

  return result;
}

unint64_t sub_191C308C4()
{
  result = qword_1EADCB750;
  if (!qword_1EADCB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB750);
  }

  return result;
}

unint64_t sub_191C3091C()
{
  result = qword_1EADCB758;
  if (!qword_1EADCB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB758);
  }

  return result;
}

unint64_t sub_191C30974()
{
  result = qword_1EADCB760;
  if (!qword_1EADCB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB760);
  }

  return result;
}

unint64_t sub_191C309CC()
{
  result = qword_1EADCB768;
  if (!qword_1EADCB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB768);
  }

  return result;
}

unint64_t sub_191C30A24()
{
  result = qword_1EADCB770;
  if (!qword_1EADCB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB770);
  }

  return result;
}

unint64_t sub_191C30A7C()
{
  result = qword_1EADCB778;
  if (!qword_1EADCB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB778);
  }

  return result;
}

unint64_t sub_191C30AD4()
{
  result = qword_1EADCB780;
  if (!qword_1EADCB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB780);
  }

  return result;
}

unint64_t sub_191C30B2C()
{
  result = qword_1EADCB788;
  if (!qword_1EADCB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB788);
  }

  return result;
}

uint64_t sub_191C30B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000028 && 0x8000000191D2BFD0 == a2;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000191D2C000 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000191D2C020 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000191D2C040 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000191D2C060 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2C080 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C0A0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C0C0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2C0E0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C30E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C100 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C120 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000191D2C140 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_191C30FC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7473 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEC00000079746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x686374616DLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_191C31174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416D756D6978616DLL && a2 == 0xED0000726F68636ELL || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C1A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_191C3133C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C1C0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E416E657A6F7266 && a2 == 0xEF70614D726F6863 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEC00000079746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C1E0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7045657669746361 && a2 == 0xEB0000000068636FLL || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x45676E69646E6570 && a2 == 0xEC00000068636F70 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F7473626D6F74 && a2 == 0xEE0068636F704565)
  {

    return 9;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_191C316A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7373616C63 && a2 == 0xE900000000000065;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEF676E696E757250 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C200 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C230 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000191D2C250 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_191C318BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2C270 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C290 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEE00736569746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365726F7473 && a2 == 0xE600000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_191C31B1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C2C0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C2E0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000191D2C300 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C320 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000191D2C350 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000191D2C370 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C3A0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000191D2C3D0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000029 && 0x8000000191D2C400 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C430 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_191C31E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C450 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000191D2C470 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000191D2C490 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000191D2C4C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_191C32038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C510 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C450 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000191D2C490 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000191D2C530 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_191CC73E8();

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

void sub_191C32324()
{
  if (!qword_1EADCB790)
  {
    sub_191C2D5D4(255, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB790);
    }
  }
}

void sub_191C323B8()
{
  if (!qword_1EADCB798)
  {
    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB798);
    }
  }
}

uint64_t sub_191C3241C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Range<>.dayIndexRange.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    a3[1] = a2;
  }

  return result;
}

uint64_t DayIndex.init(date:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a1;
  v40 = sub_191CC5DC8();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_191CC61C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v39 - v18;
  sub_191CC61E8();
  (*(v11 + 104))(v16, *MEMORY[0x1E6969868], v10);
  v20 = sub_191CC61B8();
  v21 = *(v11 + 8);
  v21(v16, v10);
  result = (v21)(v19, v10);
  if (v20)
  {
    v39 = a3;
    sub_191C33F84(0, &qword_1EADCAE10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v23 = sub_191CC6288();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_191DD1F50;
    v28 = v27 + v26;
    v29 = *(v24 + 104);
    v29(v28, *MEMORY[0x1E6969A68], v23);
    v29(v28 + v25, *MEMORY[0x1E6969A78], v23);
    v29(v28 + 2 * v25, *MEMORY[0x1E6969A48], v23);
    sub_191C19060(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v30 = v41;
    sub_191CC6218();

    result = sub_191CC5D88();
    if ((v31 & 1) == 0)
    {
      v32 = result;
      result = sub_191CC5D98();
      if ((v33 & 1) == 0)
      {
        v34 = result;
        result = sub_191CC5D68();
        if ((v35 & 1) == 0)
        {
          v42[0] = v32;
          v42[1] = v34;
          v42[2] = result;
          v36 = HKDayIndexFromCalendarComponents(v42);
          v37 = sub_191CC62A8();
          (*(*(v37 - 8) + 8))(a2, v37);
          v38 = sub_191CC6148();
          (*(*(v38 - 8) + 8))(v30, v38);
          result = (*(v5 + 8))(v9, v40);
          *v39 = v36;
          return result;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

HealthKit::DayIndex __swiftcall DayIndex.advanced(by:)(HealthKit::DayIndex by)
{
  if (__OFADD__(*v2, by.value))
  {
    __break(1u);
  }

  else
  {
    *v1 = *v2 + by.value;
  }

  return by;
}

uint64_t DayIndex.startDate(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = MEMORY[0x1E69E6720];
  sub_191C33F84(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v36 = v35 - v8;
  sub_191C33F84(0, &qword_1EADCAED0, MEMORY[0x1E6969BC0], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v35 - v12;
  sub_191C33F84(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], v4);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = v35 - v17;
  v37 = sub_191CC5DC8();
  v19 = *(v37 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v37, v21);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKCalendarComponentsFromDayIndex(*v2, &v39);
  v35[2] = v39;
  v35[3] = v40;
  v24 = sub_191CC62A8();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v18, a1, v24);
  v26 = *(v25 + 56);
  v35[1] = v24;
  v26(v18, 0, 1, v24);
  v27 = sub_191CC6308();
  v28 = *(*(v27 - 8) + 56);
  v28(v13, 1, 1, v27);
  v29 = v36;
  sub_191CC5DA8();
  sub_191CC6268();
  v28(v13, 0, 1, v27);
  sub_191CC5DB8();
  sub_191CC5D78();
  v30 = sub_191CC6148();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_191C2CC84(v29);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_191CC6FC8();

    v39 = 0xD000000000000012;
    v40 = 0x8000000191D2C570;
    sub_191C33FE8(&qword_1EADCB7A0, MEMORY[0x1E6968278]);
    v33 = sub_191CC7398();
    MEMORY[0x193B01F90](v33);

    MEMORY[0x193B01F90](0x65746164206F7420, 0xEC000000206E6920);
    sub_191C33FE8(&qword_1EADCB7A8, MEMORY[0x1E6969AE8]);
    v34 = sub_191CC7398();
    MEMORY[0x193B01F90](v34);

    result = sub_191CC7118();
    __break(1u);
  }

  else
  {
    (*(v19 + 8))(v23, v37);
    return (*(v31 + 32))(v38, v29, v30);
  }

  return result;
}

uint64_t DayIndex.daysSinceToday(gregorianCalendar:__today:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_191CC62A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_191CC6148();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  (*(v17 + 16))(v15, a2);
  (*(v6 + 16))(v10, a1, v5);
  DayIndex.init(date:calendar:)(v15, v10, &v20);
  result = v16 - v20;
  if (__OFSUB__(v16, v20))
  {
    __break(1u);
  }

  return result;
}

void *static DayIndex.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

uint64_t DayIndex.init(daysSinceToday:gregorianCalendar:__today:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_191CC62A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_191CC6148();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a3, v14);
  (*(v9 + 16))(v13, a2, v8);
  DayIndex.init(date:calendar:)(v19, v13, &v22);
  (*(v15 + 8))(a3, v14);
  result = (*(v9 + 8))(a2, v8);
  if (__OFADD__(v22, a1))
  {
    __break(1u);
  }

  else
  {
    *a4 = v22 + a1;
  }

  return result;
}

uint64_t sub_191C33278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C332FC(uint64_t a1)
{
  v2 = sub_191C34030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C33338(uint64_t a1)
{
  v2 = sub_191C34030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DayIndex.encode(to:)(void *a1)
{
  sub_191C34084(0, &qword_1EADCB7B0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C34030();
  sub_191CC7548();
  sub_191CC7338();
  return (*(v5 + 8))(v9, v4);
}

uint64_t DayIndex.hashValue.getter()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

uint64_t DayIndex.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_191C34084(0, &qword_1EADCB7C0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C34030();
  sub_191CC7528();
  if (!v2)
  {
    v13 = sub_191CC7258();
    (*(v7 + 8))(v11, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void *sub_191C336B0(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

uint64_t sub_191C336E4(void *a1)
{
  sub_191C34084(0, &qword_1EADCB7B0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C34030();
  sub_191CC7548();
  sub_191CC7338();
  return (*(v5 + 8))(v9, v4);
}

Swift::Int __swiftcall DayIndex.distance(to:)(HealthKit::DayIndex to)
{
  v2 = __OFSUB__(*to.value, *v1);
  result = *to.value - *v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *sub_191C338B0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_191C338CC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_191C338E8(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

void *static DayIndex.- infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - a2;
  }

  return result;
}

void *static DayIndex.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *static DayIndex.+ infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t DayIndex.gregorianDateComponents(calendar:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_191C33F84(0, &qword_1EADCAED0, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v18 - v7;
  sub_191C33F84(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], v3);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v18 - v12;
  HKCalendarComponentsFromDayIndex(*v1, &v19);
  v14 = sub_191CC62A8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = sub_191CC6308();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  return sub_191CC5DA8();
}

void DayIndex.sleepDayInterval(in:)()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = sub_191CC6228();
  v4 = [v2 hk:v1 sleepDayIntervalForMorningIndex:v3 calendar:?];

  sub_191CC5CA8();
}

uint64_t Range<>.indexSet.getter()
{
  if (v0[1] < *v0)
  {
    __break(1u);
  }

  return MEMORY[0x1EEDC5780]();
}

uint64_t Range<>.dateInterval(inGregorianCalendar:)(uint64_t a1)
{
  v3 = sub_191CC6148();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = v1[1];
  v14 = *v1;
  DayIndex.startDate(in:)(a1, &v13 - v11);
  v14 = v10;
  DayIndex.startDate(in:)(a1, v8);
  return sub_191CC5CC8();
}

uint64_t ClosedRange<>.dateInterval(inGregorianCalendar:)(uint64_t a1)
{
  v3 = sub_191CC6148();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = v1[1];
  v14 = *v1;
  result = DayIndex.startDate(in:)(a1, &v13 - v11);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = v10 + 1;
    DayIndex.startDate(in:)(a1, v8);
    return sub_191CC5CC8();
  }

  return result;
}

void ClosedRange<>.sleepDayInterval(inGregorianCalendar:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = objc_opt_self();
  v9[0] = v2;
  v9[1] = v1;
  v4 = _sSo15HKDayIndexRangea9HealthKitE06closedC0ABSNyAC03DayB0VG_tcfC_0(v9);
  v6 = v5;
  v7 = sub_191CC6228();
  v8 = [v3 hk:v4 sleepDayIntervalForMorningIndexRange:v6 calendar:v7];

  sub_191CC5CA8();
}

void sub_191C33F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_191C33FE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_191C34030()
{
  result = qword_1EADCB7B8;
  if (!qword_1EADCB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7B8);
  }

  return result;
}

void sub_191C34084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C34030();
    v7 = a3(a1, &type metadata for DayIndex.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C340F4()
{
  result = qword_1EADCB7C8;
  if (!qword_1EADCB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7C8);
  }

  return result;
}

unint64_t sub_191C34194()
{
  result = qword_1EADCB7D0;
  if (!qword_1EADCB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7D0);
  }

  return result;
}

unint64_t sub_191C341EC()
{
  result = qword_1EADCB7D8;
  if (!qword_1EADCB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7D8);
  }

  return result;
}

unint64_t sub_191C34244()
{
  result = qword_1EADCB7E0;
  if (!qword_1EADCB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7E0);
  }

  return result;
}

uint64_t HKBloodPressureClassificationManager.pregnancyModelProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider;
  swift_beginAccess();
  return sub_191C342FC(v1 + v3, a1);
}

uint64_t sub_191C342FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t HKBloodPressureClassificationManager.pregnancyModelProvider.setter(__int128 *a1)
{
  v3 = OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_191C343C8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_191C343C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id HKBloodPressureClassificationManager.init(healthStore:)(void *a1)
{
  v2 = sub_191C3B838(a1);

  return v2;
}

id static HKKeyValueDomain.bloodPressureDefaultsDomain(with:)(uint64_t a1)
{
  v2 = objc_allocWithZone(HKKeyValueDomain);

  return [v2 initWithCategory:4 domainName:@"com.apple.private.health.blood-pressure-classification" healthStore:a1];
}

uint64_t HKBloodPressureClassificationManager.unitTest_startObserving(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_191C3BBE8();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C34610, 0, 0);
}

uint64_t sub_191C34610()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v1[19];
  [*(v7 + OBJC_IVAR___HKBloodPressureClassificationManager_observers) registerObserver:v1[18] queue:*(v7 + OBJC_IVAR___HKBloodPressureClassificationManager_observerQueue)];
  v10 = *(v7 + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v1[2] = v1;
  v1[3] = sub_191C347EC;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C349D4;
  v1[13] = &block_descriptor_12;
  [v10 unitTest:v7 startObservation:v3 withCompletion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_191C347EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_191C34960;
  }

  else
  {
    v3 = sub_191C348FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C348FC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_191C34960()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

void sub_191C349D4(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_191C3BBE8();
    sub_191CC69E8();
  }

  else if (a3)
  {
    sub_191C3BBE8();
    v5 = a3;
    sub_191CC69D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t HKBloodPressureClassificationManager.startObserving(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___HKBloodPressureClassificationManager_observers);
  v5 = *(v2 + OBJC_IVAR___HKBloodPressureClassificationManager_observerQueue);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_191C3BC80;
  *(v7 + 24) = v6;
  v10[4] = sub_191C3BCA4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_191C34BE8;
  v10[3] = &block_descriptor_7_0;
  v8 = _Block_copy(v10);

  [v4 registerObserver:a1 queue:v5 runIfFirstObserver:v8];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t HKBloodPressureClassificationManager.stopObserving(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___HKBloodPressureClassificationManager_observers);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_191C3BCCC;
  *(v6 + 24) = v5;
  v9[4] = sub_191C3D758;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_191C34BE8;
  v9[3] = &block_descriptor_15;
  v7 = _Block_copy(v9);

  [v4 unregisterObserver:a1 runIfLastObserver:v7];
  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_191C34D94(uint64_t a1, const char **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = Strong;
    [*(Strong + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain) v4];
  }
}

void sub_191C34E1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall HKBloodPressureClassificationManager.isClassificationAgeGated()()
{
  sub_191C34EF8();
  if (v0)
  {
    return 1;
  }

  v2 = sub_191CC6B98();
  v3 = [v2 integerValue];

  return v3 < 18;
}

id sub_191C34EF8()
{
  v1 = v0;
  v28[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_191CC6148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___HKBloodPressureClassificationManager_healthStore);
  v28[0] = 0;
  v9 = [v8 dateOfBirthComponentsWithError_];
  if (v9)
  {
    v10 = v28[0];
    sub_191CC6138();
    v11 = sub_191CC60A8();
    (*(v3 + 8))(v7, v2);
    v12 = [v9 hk:v11 ageWithCurrentDate:?];
  }

  else
  {
    v13 = v28[0];
    v14 = sub_191CC5FC8();

    swift_willThrow();
    v15 = sub_191CC5FB8();
    v16 = [v15 hk_isDatabaseAccessibilityError];

    if (v16)
    {
      if (qword_1EADCA160 != -1)
      {
        swift_once();
      }

      v17 = sub_191CC6348();
      __swift_project_value_buffer(v17, qword_1EADE7090);
      v18 = sub_191CC6328();
      v19 = sub_191CC6C98();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28[0] = v21;
        *v20 = 136315138;
        v22 = sub_191CC76A8();
        v24 = sub_191C3B288(v22, v23, v28);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_19197B000, v18, v19, "[%s] database is inaccessible; unable to determine user age", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x193B047C0](v21, -1, -1);
        MEMORY[0x193B047C0](v20, -1, -1);
      }
    }

    else
    {
    }

    v12 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t HKBloodPressureClassificationManager.preferredClassificationGuidelines(completionHandler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = sub_191CC6A38();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = ObjectType;
  v13 = v2;

  sub_191C35DD0(0, 0, v10, &unk_191DD4560, v12);
}

uint64_t sub_191C3540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = swift_task_alloc();
  v7[9] = v8;
  *v8 = v7;
  v8[1] = sub_191C354A4;

  return sub_191C3578C();
}

uint64_t sub_191C354A4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = *(v3 + 72);
  v7 = *v2;
  *(v4 + 80) = a2;

  return MEMORY[0x1EEE6DFA0](sub_191C355AC, 0, 0);
}

uint64_t sub_191C355AC()
{
  v19 = v0;
  if (*(v0 + 80))
  {
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v1 = sub_191CC6348();
    __swift_project_value_buffer(v1, qword_1EADE7090);
    v2 = sub_191CC6328();
    v3 = sub_191CC6C88();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 64);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      v7 = sub_191CC76A8();
      v9 = sub_191C3B288(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_19197B000, v2, v3, "[%s]: user preferred blood pressure classification guidelines not available, using default classification guidelines", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x193B047C0](v6, -1, -1);
      MEMORY[0x193B047C0](v5, -1, -1);
    }

    v10 = *(v0 + 40);
    v11 = sub_191C3A200();
    v12 = HKCurrentLocaleCountryCodeIfUnknown(v11);

    v13 = [v10 defaultClassificationGuidelinesForCountryCode_];
    v14 = v13;
  }

  else
  {
    v14 = *(v0 + 24);
  }

  v15 = *(v0 + 56);
  (*(v0 + 48))(v14);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_191C3578C()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C3D4C8();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C35858, 0, 0);
}

uint64_t sub_191C35858()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 18;
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  v12 = *(v1[19] + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v1[24] = @"BloodPressureClassificationGuidelines";
  v11 = v3;
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_191C35A3C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191C3D538();
  sub_191BF92E0();
  v9 = @"BloodPressureClassificationGuidelines";
  sub_191CC69C8();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C3A520;
  v1[13] = &block_descriptor_118;
  [v12 numberForKey:v9 completion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_191C35A3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_191C35BF0;
  }

  else
  {
    v3 = sub_191C35B4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C35B4C()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4(v2, v1 == 0);
}

uint64_t sub_191C35BF0()
{
  v19 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_willThrow();

  v3 = sub_191CC5FB8();
  LOBYTE(v1) = [v3 hk_isDatabaseAccessibilityError];

  if (v1)
  {
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v4 = sub_191CC6348();
    __swift_project_value_buffer(v4, qword_1EADE7090);
    v5 = sub_191CC6328();
    v6 = sub_191CC6C98();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 200);
    if (v7)
    {
      v9 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = sub_191CC76A8();
      v14 = sub_191C3B288(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_19197B000, v5, v6, "[%s] database is inaccessible; unable to determine user preferred blood pressure classification guidelines", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x193B047C0](v11, -1, -1);
      MEMORY[0x193B047C0](v10, -1, -1);
    }
  }

  else
  {
  }

  v15 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16(0, 1);
}

uint64_t sub_191C35DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v28 - v13;
  sub_191C3D320(a3, v28 - v13, &qword_1EADCB820, v9);
  v15 = sub_191CC6A38();
  v16 = *(v15 - 8);
  LODWORD(v9) = (*(v16 + 48))(v14, 1, v15);

  if (v9 == 1)
  {
    sub_191C3D3A0(v14, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_191CC6A28();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_191CC69B8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_191CC67D8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

void HKBloodPressureClassificationManager.currentClassificationGuidelines(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_191CC6148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC6138();
  v12 = sub_191CC60A8();
  (*(v7 + 8))(v11, v6);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C3640C;
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);

  [v3 classificationGuidelinesOnDate:v12 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_191C3640C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t HKBloodPressureClassificationManager.classificationGuidelines(on:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_191CC6148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &ObjectType - v14;
  v16 = sub_191CC6A38();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v7 + 16))(v10, a1, v6);
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v3;
  (*(v7 + 32))(&v19[v17], v10, v6);
  v20 = &v19[v18];
  *v20 = v24;
  *(v20 + 1) = a3;
  *&v19[(v18 + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  v21 = v3;

  sub_191C35DD0(0, 0, v15, &unk_191DD4570, v19);
}

uint64_t sub_191C36864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = a8;
  v8[68] = a7;
  v8[67] = a6;
  v8[66] = a5;
  v8[65] = a4;
  sub_191C3D1B8();
  v8[70] = v9;
  v10 = *(v9 - 8);
  v8[71] = v10;
  v11 = *(v10 + 64) + 15;
  v8[72] = swift_task_alloc();
  v12 = sub_191CC6148();
  v8[73] = v12;
  v13 = *(v12 - 8);
  v8[74] = v13;
  v14 = *(v13 + 64) + 15;
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  sub_191C3D220();
  v8[77] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[78] = swift_task_alloc();
  sub_191C3D0F0(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C36A34, 0, 0);
}

uint64_t sub_191C36A34()
{
  v1 = v0[65];
  v2 = OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider;
  swift_beginAccess();
  sub_191C342FC(v1 + v2, (v0 + 50));
  v3 = v0[53];
  v4 = v0[54];
  __swift_project_boxed_opaque_existential_0(v0 + 50, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[81] = v7;
  *v7 = v0;
  v7[1] = sub_191C36B84;

  return v9(v3, v4);
}

uint64_t sub_191C36B84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 648);
  v7 = *v2;
  *(v3 + 656) = a1;
  *(v3 + 664) = v1;

  if (v1)
  {
    v5 = sub_191C37DC4;
  }

  else
  {
    v5 = sub_191C36C9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_191C36C9C()
{
  v69 = v0;
  v1 = *(v0 + 656);
  __swift_destroy_boxed_opaque_existential_0((v0 + 400));
  v2 = [v1 state];
  v3 = [v1 physiologicalWashoutEndDate];
  if (v3)
  {
    v4 = *(v0 + 640);
    v5 = v3;
    sub_191CC60F8();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v0 + 640);
  v8 = *(v0 + 624);
  v9 = *(v0 + 616);
  (*(*(v0 + 592) + 56))(v7, v6, 1, *(v0 + 584));
  v10 = *(v9 + 48);
  *(v0 + 672) = v10;
  v11 = v8 + v10;
  *v8 = v2;
  sub_191C18F38(v7, v8 + v10);
  if (v2 == 2)
  {
    v18 = *(v0 + 632);
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);
    sub_191C3D320(v11, v18, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
    v21 = (*(v19 + 48))(v18, 1, v20);
    v22 = *(v0 + 632);
    if (v21 == 1)
    {
      sub_191C3D3A0(*(v0 + 632), &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
    }

    else
    {
      v30 = *(v0 + 592);
      v31 = *(v0 + 584);
      v32 = *(v0 + 528);
      v33 = sub_191CC6118();
      (*(v30 + 8))(v22, v31);
      if (v33 == 1)
      {

        goto LABEL_14;
      }
    }

    goto LABEL_18;
  }

  if (v2 != 1)
  {
LABEL_18:
    v23 = v0 + 272;
    v24 = v0 + 80;
    v54 = *(v0 + 576);
    v26 = *(v0 + 568);
    v27 = *(v0 + 560);
    v28 = *(v0 + 520);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 504;
    *(v0 + 88) = sub_191C37930;
    swift_continuation_init();
    *(v0 + 328) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
    type metadata accessor for HKBloodPressureClassificationGuidelines(0);
    sub_191CC69C8();
    (*(v26 + 32))(boxed_opaque_existential_0, v54, v27);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_191C385E8;
    *(v0 + 296) = &block_descriptor_101;
    goto LABEL_19;
  }

  v12 = [*(v0 + 656) pregnancyStartDate];
  if (v12)
  {
    v13 = *(v0 + 608);
    v14 = *(v0 + 592);
    v15 = *(v0 + 584);
    v16 = *(v0 + 528);
    v17 = v12;
    sub_191CC60F8();

    sub_191C3D64C(&qword_1EADCAE28, MEMORY[0x1E6969530]);
    LOBYTE(v16) = sub_191CC6718();
    (*(v14 + 8))(v13, v15);
    if (v16)
    {

      v11 = *(v0 + 624) + *(v0 + 672);
LABEL_14:
      sub_191C3D3A0(v11, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
      if (qword_1EADCA160 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 600);
      v35 = *(v0 + 592);
      v36 = *(v0 + 584);
      v37 = *(v0 + 528);
      v38 = sub_191CC6348();
      __swift_project_value_buffer(v38, qword_1EADE7090);
      (*(v35 + 16))(v34, v37, v36);
      v39 = sub_191CC6328();
      v40 = sub_191CC6C78();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 552);
        v42 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = v67;
        *v42 = 136315650;
        v43 = sub_191CC76A8();
        v45 = sub_191C3B288(v43, v44, &v68);

        *(v42 + 4) = v45;
        *(v42 + 12) = 2080;
        v46 = *(v0 + 600);
        v47 = *(v0 + 592);
        v48 = *(v0 + 584);
        v49 = sub_191C3B288(0xD00000000000003CLL, 0x8000000191D2C7D0, &v68);

        *(v42 + 14) = v49;
        *(v42 + 22) = 2080;
        sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530]);
        v50 = sub_191CC7398();
        v52 = v51;
        (*(v47 + 8))(v46, v48);
        v53 = sub_191C3B288(v50, v52, &v68);

        *(v42 + 24) = v53;
        _os_log_impl(&dword_19197B000, v39, v40, "[%s]: Guidelines are %s on %s", v42, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x193B047C0](v67, -1, -1);
        MEMORY[0x193B047C0](v42, -1, -1);
      }

      else
      {
        v55 = *(v0 + 600);
        v56 = *(v0 + 592);
        v57 = *(v0 + 584);

        (*(v56 + 8))(v55, v57);
      }

      v58 = *(v0 + 640);
      v59 = *(v0 + 632);
      v60 = *(v0 + 624);
      v61 = *(v0 + 608);
      v62 = *(v0 + 600);
      v63 = *(v0 + 576);
      v64 = *(v0 + 544);
      (*(v0 + 536))(2);

      v65 = *(v0 + 8);

      return v65();
    }
  }

  v23 = v0 + 336;
  v24 = v0 + 144;
  v25 = *(v0 + 576);
  v26 = *(v0 + 568);
  v27 = *(v0 + 560);
  v28 = *(v0 + 520);
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 512;
  *(v0 + 152) = sub_191C37490;
  swift_continuation_init();
  *(v0 + 392) = v27;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
  type metadata accessor for HKBloodPressureClassificationGuidelines(0);
  sub_191CC69C8();
  (*(v26 + 32))(boxed_opaque_existential_0, v25, v27);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_191C385E8;
  *(v0 + 360) = &block_descriptor_104;
LABEL_19:
  [v28 preferredClassificationGuidelinesWithCompletionHandler_];
  (*(v26 + 8))(boxed_opaque_existential_0, v27);

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_191C37490()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191C37570, 0, 0);
}

uint64_t sub_191C37570()
{
  v40 = v0;

  v1 = *(v0 + 512);
  sub_191C3D3A0(*(v0 + 624) + *(v0 + 672), &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 528);
  v6 = sub_191CC6348();
  __swift_project_value_buffer(v6, qword_1EADE7090);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_191CC6328();
  v8 = sub_191CC6C78();
  if (!os_log_type_enabled(v7, v8))
  {
    v17 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);

    (*(v18 + 8))(v17, v19);
    goto LABEL_14;
  }

  v9 = 0xD000000000000020;
  v10 = *(v0 + 552);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v39 = v12;
  *v11 = 136315650;
  v13 = sub_191CC76A8();
  v15 = sub_191C3B288(v13, v14, &v39);

  *(v11 + 4) = v15;
  *(v11 + 12) = 2080;
  v38 = v1;
  if (v1)
  {
    if (v1 == 2)
    {
      v16 = " unavailable for age <";
      v9 = 0xD00000000000003CLL;
    }

    else
    {
      if (v1 != 1)
      {
        v20 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_13;
      }

      v16 = "cology and Obstetrics (FIGO)";
      v9 = 0xD000000000000024;
    }
  }

  else
  {
    v16 = " of Cardiology (ESC)";
  }

  v20 = v16 | 0x8000000000000000;
LABEL_13:
  v21 = *(v0 + 600);
  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = sub_191C3B288(v9, v20, &v39);

  *(v11 + 14) = v24;
  *(v11 + 22) = 2080;
  sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530]);
  v25 = sub_191CC7398();
  v27 = v26;
  (*(v22 + 8))(v21, v23);
  v28 = sub_191C3B288(v25, v27, &v39);

  *(v11 + 24) = v28;
  _os_log_impl(&dword_19197B000, v7, v8, "[%s]: Guidelines are %s on %s", v11, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x193B047C0](v12, -1, -1);
  MEMORY[0x193B047C0](v11, -1, -1);

  v1 = v38;
LABEL_14:
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  v32 = *(v0 + 608);
  v33 = *(v0 + 600);
  v34 = *(v0 + 576);
  v35 = *(v0 + 544);
  (*(v0 + 536))(v1);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_191C37930()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191C37A10, 0, 0);
}

uint64_t sub_191C37A10()
{
  v41 = v0;
  v1 = *(v0 + 624);

  v2 = *(v0 + 504);
  sub_191C3D2C0(v1, sub_191C3D220);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 584);
  v6 = *(v0 + 528);
  v7 = sub_191CC6348();
  __swift_project_value_buffer(v7, qword_1EADE7090);
  (*(v4 + 16))(v3, v6, v5);
  v8 = sub_191CC6328();
  v9 = sub_191CC6C78();
  if (!os_log_type_enabled(v8, v9))
  {
    v18 = *(v0 + 600);
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);

    (*(v19 + 8))(v18, v20);
    goto LABEL_14;
  }

  v10 = 0xD000000000000020;
  v11 = *(v0 + 552);
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v40 = v13;
  *v12 = 136315650;
  v14 = sub_191CC76A8();
  v16 = sub_191C3B288(v14, v15, &v40);

  *(v12 + 4) = v16;
  *(v12 + 12) = 2080;
  v39 = v2;
  if (v2)
  {
    if (v2 == 2)
    {
      v17 = " unavailable for age <";
      v10 = 0xD00000000000003CLL;
    }

    else
    {
      if (v2 != 1)
      {
        v21 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
        goto LABEL_13;
      }

      v17 = "cology and Obstetrics (FIGO)";
      v10 = 0xD000000000000024;
    }
  }

  else
  {
    v17 = " of Cardiology (ESC)";
  }

  v21 = v17 | 0x8000000000000000;
LABEL_13:
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = sub_191C3B288(v10, v21, &v40);

  *(v12 + 14) = v25;
  *(v12 + 22) = 2080;
  sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530]);
  v26 = sub_191CC7398();
  v28 = v27;
  (*(v23 + 8))(v22, v24);
  v29 = sub_191C3B288(v26, v28, &v40);

  *(v12 + 24) = v29;
  _os_log_impl(&dword_19197B000, v8, v9, "[%s]: Guidelines are %s on %s", v12, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x193B047C0](v13, -1, -1);
  MEMORY[0x193B047C0](v12, -1, -1);

  v2 = v39;
LABEL_14:
  v30 = *(v0 + 640);
  v31 = *(v0 + 632);
  v32 = *(v0 + 624);
  v33 = *(v0 + 608);
  v34 = *(v0 + 600);
  v35 = *(v0 + 576);
  v36 = *(v0 + 544);
  (*(v0 + 536))(v2);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_191C37DC4()
{
  v28 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 50);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v1 = v0[83];
  v2 = sub_191CC6348();
  __swift_project_value_buffer(v2, qword_1EADE7090);
  v3 = v1;
  v4 = sub_191CC6328();
  v5 = sub_191CC6C98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[83];
    v7 = v0[69];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315394;
    v10 = sub_191CC76A8();
    v12 = sub_191C3B288(v10, v11, &v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = v0[58];
    v14 = *(v0[59] - 8);
    v15 = *(v14 + 64) + 15;
    v16 = swift_task_alloc();
    (*(v14 + 16))(v16);
    v17 = sub_191CC67C8();
    v19 = v18;

    v20 = sub_191C3B288(v17, v19, &v27);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_19197B000, v4, v5, "[%s]: received error from pregnancy state query, using preferred classification guidelines. error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B047C0](v9, -1, -1);
    MEMORY[0x193B047C0](v8, -1, -1);
  }

  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[65];
  v0[2] = v0;
  v0[7] = v0 + 61;
  v0[3] = sub_191C38174;
  swift_continuation_init();
  v0[33] = v23;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 30);
  type metadata accessor for HKBloodPressureClassificationGuidelines(0);
  sub_191CC69C8();
  (*(v22 + 32))(boxed_opaque_existential_0, v21, v23);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_191C385E8;
  v0[29] = &block_descriptor_97;
  [v24 preferredClassificationGuidelinesWithCompletionHandler_];
  (*(v22 + 8))(boxed_opaque_existential_0, v23);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191C38174()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191C38254, 0, 0);
}

uint64_t sub_191C38254()
{
  v40 = v0;

  v1 = *(v0 + 488);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 528);
  v6 = sub_191CC6348();
  __swift_project_value_buffer(v6, qword_1EADE7090);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_191CC6328();
  v8 = sub_191CC6C78();
  if (!os_log_type_enabled(v7, v8))
  {
    v17 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);

    (*(v18 + 8))(v17, v19);
    goto LABEL_14;
  }

  v9 = 0xD000000000000020;
  v10 = *(v0 + 552);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v39 = v12;
  *v11 = 136315650;
  v13 = sub_191CC76A8();
  v15 = sub_191C3B288(v13, v14, &v39);

  *(v11 + 4) = v15;
  *(v11 + 12) = 2080;
  v38 = v1;
  if (v1)
  {
    if (v1 == 2)
    {
      v16 = " unavailable for age <";
      v9 = 0xD00000000000003CLL;
    }

    else
    {
      if (v1 != 1)
      {
        v20 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_13;
      }

      v16 = "cology and Obstetrics (FIGO)";
      v9 = 0xD000000000000024;
    }
  }

  else
  {
    v16 = " of Cardiology (ESC)";
  }

  v20 = v16 | 0x8000000000000000;
LABEL_13:
  v21 = *(v0 + 600);
  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = sub_191C3B288(v9, v20, &v39);

  *(v11 + 14) = v24;
  *(v11 + 22) = 2080;
  sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530]);
  v25 = sub_191CC7398();
  v27 = v26;
  (*(v22 + 8))(v21, v23);
  v28 = sub_191C3B288(v25, v27, &v39);

  *(v11 + 24) = v28;
  _os_log_impl(&dword_19197B000, v7, v8, "[%s]: Guidelines are %s on %s", v11, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x193B047C0](v12, -1, -1);
  MEMORY[0x193B047C0](v11, -1, -1);

  v1 = v38;
LABEL_14:
  v29 = *(v0 + 640);
  v30 = *(v0 + 632);
  v31 = *(v0 + 624);
  v32 = *(v0 + 608);
  v33 = *(v0 + 600);
  v34 = *(v0 + 576);
  v35 = *(v0 + 544);
  (*(v0 + 536))(v1);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_191C385E8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_191C3D1B8();
  return sub_191CC69E8();
}

uint64_t HKBloodPressureClassificationManager.updatePreferredClassificationGuidelines(_:completionHandler:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v19 - v13;
  if (a1 == 2)
  {
    if (a2)
    {
      sub_191C3C4C4(a2);
      v15 = sub_191C86F64();
      a2(0, v15);

      return sub_191C3C4D4(a2);
    }
  }

  else
  {
    v16 = sub_191CC6A38();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v17[5] = v4;
    v17[6] = a2;
    v17[7] = a3;
    v17[8] = ObjectType;
    v18 = v4;
    sub_191C3C4C4(a2);
    sub_191C38EC8(0, 0, v14, &unk_191DD4580, v17);
  }

  return result;
}

uint64_t sub_191C38AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_191C38B84, 0, 0);
}

uint64_t sub_191C38B84()
{
  v31 = v0;
  v30[1] = *MEMORY[0x1E69E9840];
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v1 = sub_191CC6348();
  __swift_project_value_buffer(v1, qword_1EADE7090);
  v2 = sub_191CC6328();
  v3 = sub_191CC6C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315394;
    v8 = sub_191CC76A8();
    v10 = sub_191C3B288(v8, v9, v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E55;
    if (!v5)
    {
      v12 = 0xD000000000000020;
      v11 = 0x8000000191D2C840;
    }

    if (v5 == 1)
    {
      v12 = 0xD000000000000024;
      v11 = 0x8000000191D2C810;
    }

    if (v5 == 2)
    {
      v13 = 0xD00000000000003CLL;
    }

    else
    {
      v13 = v12;
    }

    if (v5 == 2)
    {
      v14 = 0x8000000191D2C7D0;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_191C3B288(v13, v14, v30);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_19197B000, v2, v3, "[%s]: setting preferred blood pressure guidelines: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B047C0](v7, -1, -1);
    MEMORY[0x193B047C0](v6, -1, -1);
  }

  v16 = v0[3];
  v17 = *(v0[4] + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v18 = sub_191CC6B98();
  v0[2] = 0;
  v19 = [v17 setNumber:v18 forKey:@"BloodPressureClassificationGuidelines" error:v0 + 2];

  v20 = v0[2];
  if (v19)
  {
    v21 = v0[5];
    if (v21)
    {
      v22 = v0[6];
      v23 = v20;
      sub_191C3C4C4(v21);
      v21(1, 0);
      sub_191C3C4D4(v21);
    }

    else
    {
      v27 = v20;
    }

    v25 = v0[1];
    v28 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v24 = v20;
    sub_191CC5FC8();

    swift_willThrow();
    v25 = v0[1];
    v26 = *MEMORY[0x1E69E9840];
  }

  return v25();
}

uint64_t sub_191C38EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v25 - v12;
  sub_191C3D320(a3, v25 - v12, &qword_1EADCB820, v8);
  v14 = sub_191CC6A38();
  v15 = *(v14 - 8);
  LODWORD(v8) = (*(v15 + 48))(v13, 1, v14);

  if (v8 == 1)
  {
    sub_191C3D3A0(v13, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_191CC6A28();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_191CC69B8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_191CC67D8() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);

      return v23;
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

  sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

void sub_191C39278(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_191CC5FB8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t HKBloodPressureClassificationManager.removePreferredClassificationGuidelines(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v16 - v10;
  v12 = sub_191CC6A38();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = ObjectType;
  v14 = v3;
  sub_191C3C4C4(a1);
  sub_191C38EC8(0, 0, v11, &unk_191DD4590, v13);
}

uint64_t sub_191C39440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_191C394D4, 0, 0);
}

uint64_t sub_191C394D4()
{
  v23 = v0;
  v22[1] = *MEMORY[0x1E69E9840];
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v1 = sub_191CC6348();
  __swift_project_value_buffer(v1, qword_1EADE7090);
  v2 = sub_191CC6328();
  v3 = sub_191CC6C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136315138;
    v7 = sub_191CC76A8();
    v9 = sub_191C3B288(v7, v8, v22);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_19197B000, v2, v3, "[%s]: deleting preferred blood pressure guidelines", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193B047C0](v6, -1, -1);
    MEMORY[0x193B047C0](v5, -1, -1);
  }

  v10 = *(v0[3] + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v0[2] = 0;
  v11 = [v10 setNumber:0 forKey:@"BloodPressureClassificationGuidelines" error:v0 + 2];
  v12 = v0[2];
  if (v11)
  {
    v13 = v0[4];
    if (v13)
    {
      v14 = v0[5];
      v15 = v12;
      sub_191C3C4C4(v13);
      v13(1, 0);
      sub_191C3C4D4(v13);
    }

    else
    {
      v19 = v12;
    }

    v17 = v0[1];
    v20 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v16 = v12;
    sub_191CC5FC8();

    swift_willThrow();
    v17 = v0[1];
    v18 = *MEMORY[0x1E69E9840];
  }

  return v17();
}

id HKBloodPressureClassificationManager.category(for:systolic:diastolic:age:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1 == 2 || a4 && (v7 = a4, v8 = [v7 integerValue], v7, v8 >= 18))
  {
    type metadata accessor for HKBloodPressureClassificationEvaluator();
    return static HKBloodPressureClassificationEvaluator.category(for:systolic:diastolic:)(a1, a2, a3);
  }

  else
  {
    sub_191C3C69C();
    return swift_willThrow();
  }
}

BOOL HKBloodPressureClassificationManager.hypertensiveEscalation(for:systolic:diastolic:age:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_getObjectType();
  if (a1 == 2)
  {
    [a2 _value];
    if (v17 >= 140.0)
    {
      return 1;
    }

    [a3 _value];
    v16 = 90.0;
    return v15 >= v16;
  }

  if (a1 == 1)
  {
    if (!a4)
    {
      return 0;
    }

    v12 = a4;
    v13 = [v12 integerValue];

    if (v13 < 18)
    {
      return 0;
    }

    [a2 _value];
    if (v14 >= 180.0)
    {
      return 1;
    }

    [a3 _value];
    v16 = 110.0;
    return v15 >= v16;
  }

  if (a1)
  {
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v19 = sub_191CC6348();
    __swift_project_value_buffer(v19, qword_1EADE7090);
    v20 = sub_191CC6328();
    v21 = sub_191CC6CA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      v24 = sub_191CC76A8();
      v26 = sub_191C3B288(v24, v25, &v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_19197B000, v20, v21, "[%s] unexpected classification guidelines provided for hypertensive escalation", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x193B047C0](v23, -1, -1);
      MEMORY[0x193B047C0](v22, -1, -1);
    }

    return 0;
  }

  if (a4)
  {
    v8 = a4;
    v9 = [v8 integerValue];

    if (v9 >= 18)
    {
      [a2 _value];
      if (v10 > 180.0)
      {
        return 1;
      }

      [a3 _value];
      if (v11 > 120.0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void __swiftcall HKBloodPressureClassificationManager.init()(HKBloodPressureClassificationManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

Swift::Void __swiftcall HKBloodPressureClassificationManager.keyValueDomain(didUpdate:)(HKKeyValueDomain *didUpdate)
{
  v2 = v1;
  sub_191BFAE6C(0, &qword_1EADCC5C0, 0x1E69E58C0);
  v3 = *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain];
  if (sub_191CC6DA8())
  {
    v4 = *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_observers];
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v8[4] = sub_191C3CB50;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_191C3A138;
    v8[3] = &block_descriptor_40;
    v6 = _Block_copy(v8);
    v7 = v2;

    [v4 notifyObservers_];
    _Block_release(v6);
  }
}

uint64_t sub_191C3A138(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

__CFString *sub_191C3A200()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + OBJC_IVAR___HKBloodPressureClassificationManager_healthStore) featureAvailabilityProviderForIdentifier_];
  if (v1)
  {
    v24[0] = 0;
    v2 = [v1 featureOnboardingRecordWithError_];
    if (v2)
    {
      v3 = v2;
      v4 = v24[0];
      v5 = [v3 onboardingCompletion];
      if (v5 && (v6 = v5, v7 = [v5 countryCode], v6, v7))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = @"XX";

        swift_unknownObjectRelease();
      }

      v10 = *MEMORY[0x1E69E9840];
      return v7;
    }

    else
    {
      v11 = v24[0];
      v12 = sub_191CC5FC8();

      swift_willThrow();
      swift_unknownObjectRelease();
      if (qword_1EADCA160 != -1)
      {
        swift_once();
      }

      v13 = sub_191CC6348();
      __swift_project_value_buffer(v13, qword_1EADE7090);
      v14 = v12;
      v15 = sub_191CC6328();
      v16 = sub_191CC6CB8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24[0] = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_191CC7468();
        v21 = sub_191C3B288(v19, v20, v24);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_19197B000, v15, v16, "Blood Pressure onboarding record country code unavailable with error: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x193B047C0](v18, -1, -1);
        MEMORY[0x193B047C0](v17, -1, -1);
      }

      v22 = @"XX";
      v23 = *MEMORY[0x1E69E9840];
      return v22;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return @"XX";
  }
}

void sub_191C3A520(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_191C3D4C8();
  if (a3)
  {
    v5 = a3;
    sub_191CC69D8();
  }

  else
  {
    v6 = a2;
    sub_191CC69E8();
  }
}

void sub_191C3A5B8()
{
  sub_191C0850C(0, &qword_1EADCAB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_191DD4520;
  *(v0 + 32) = sub_191CC67B8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_191CC67B8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_191CC67B8();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_191CC67B8();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_191CC67B8();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_191CC67B8();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_191CC67B8();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_191CC67B8();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_191CC67B8();
  *(v0 + 168) = v9;
  v10 = objc_allocWithZone(HKCountrySet);
  v11 = sub_191CC68D8();

  v12 = [v10 initWithSupportedCountryCodes:v11 contentVersion:1];

  qword_1EADCB7E8 = v12;
}

void sub_191C3A718()
{
  sub_191C0850C(0, &qword_1EADCAB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_191DD4530;
  *(v0 + 32) = sub_191CC67B8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_191CC67B8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_191CC67B8();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_191CC67B8();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_191CC67B8();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_191CC67B8();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_191CC67B8();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_191CC67B8();
  *(v0 + 152) = v8;
  v9 = objc_allocWithZone(HKCountrySet);
  v10 = sub_191CC68D8();

  v11 = [v9 initWithSupportedCountryCodes:v10 contentVersion:1];

  v12 = sub_191C3BD08();
  v13 = [v11 countrySetByAddingCountriesInSet_];

  qword_1EADCB7F0 = v13;
}

uint64_t sub_191C3A8B4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_191BFAE6C(0, &qword_1EADCA778, off_1E7375158);
  *v4 = v0;
  v4[1] = sub_191C3A9C0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x8000000191D2C640, sub_191C3CB60, v2, v5);
}

uint64_t sub_191C3A9C0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_191C3D750;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_191C3D778;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_191C3AADC(uint64_t a1, void *a2)
{
  sub_191C3CFE4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v12 = objc_allocWithZone(HKMCPregnancyStateQuery);
  aBlock[4] = sub_191C3D064;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor_92;
  v13 = _Block_copy(aBlock);

  v14 = [v12 initWithUpdateHandler_];
  _Block_release(v13);

  [a2 executeQuery_];
}

void sub_191C3ACE8(uint64_t a1, void *a2, id a3)
{
  if (a2)
  {
    sub_191C3CFE4();
    v5 = a2;
    sub_191CC69E8();
  }

  else
  {
    if (!a3)
    {
      v6 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a3 = 0;
    }

    v7 = a3;
    sub_191C3CFE4();
    sub_191CC69D8();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong stopQuery_];
  }
}

uint64_t sub_191C3AE0C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_191BFAE6C(0, &qword_1EADCA778, off_1E7375158);
  *v4 = v0;
  v4[1] = sub_191C3AF18;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x8000000191D2C640, sub_191C3D774, v2, v5);
}

uint64_t sub_191C3AF18()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_191C3B034;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_191BF92AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C3B034()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_191C3B098(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_191C3B190;

  return v7(a1);
}

uint64_t sub_191C3B190()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_191C3B288(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_191C3B354(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_191C00E88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_191C3B354(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_191C3B460(a5, a6);
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
    result = sub_191CC7058();
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

uint64_t sub_191C3B460(uint64_t a1, unint64_t a2)
{
  v4 = sub_191C3B4AC(a1, a2);
  sub_191C3B5DC(&unk_1F05F6690);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_191C3B4AC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_191C3B6C8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_191CC7058();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_191CC6808();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_191C3B6C8(v10, 0);
        result = sub_191CC6FB8();
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

uint64_t sub_191C3B5DC(uint64_t result)
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

  result = sub_191C3B740(result, v12, 1, v3);
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

void *sub_191C3B6C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_191C0850C(0, &qword_1EADCB840);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_191C3B740(char *result, int64_t a2, char a3, char *a4)
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
    sub_191C0850C(0, &qword_1EADCB840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

id sub_191C3B838(void *a1)
{
  v21 = sub_191CC6CF8();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v21, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_191CC6CE8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_191CC63A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_healthStore] = a1;
  v14 = &v1[OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider];
  *(v14 + 3) = sub_191BFAE6C(0, &qword_1EADCB878, off_1E7375020);
  *(v14 + 4) = &protocol witness table for HKHealthStore;
  *v14 = a1;
  v15 = [objc_allocWithZone(HKKeyValueDomain) initWithCategory:4 domainName:@"com.apple.private.health.blood-pressure-classification" healthStore:a1];
  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain] = v15;
  v23 = sub_191C3D5A0();
  sub_191C3D604();
  sub_191CC67C8();
  v16 = HKLogDefaultCategory();
  v17 = objc_allocWithZone(HKObserverSet);
  v18 = sub_191CC6778();

  v19 = [v17 initWithName:v18 loggingCategory:v16];

  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_observers] = v19;
  sub_191BFAE6C(0, &qword_1EADCB890, 0x1E69E9610);
  sub_191CC6398();
  v23 = MEMORY[0x1E69E7CC0];
  sub_191C3D64C(&qword_1EADCB898, MEMORY[0x1E69E8030]);
  sub_191C3D0F0(0, &qword_1EADCB8A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_191C3D694();
  sub_191CC6E58();
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8090], v21);
  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_observerQueue] = sub_191CC6D18();
  v22.receiver = v1;
  v22.super_class = HKBloodPressureClassificationManager;
  return objc_msgSendSuper2(&v22, sel_init);
}

void sub_191C3BBE8()
{
  if (!qword_1EADCB800)
  {
    sub_191BF92E0();
    v0 = sub_191CC69F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB800);
    }
  }
}

uint64_t sub_191C3BCA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_191C00E88(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

id sub_191C3BD08()
{
  v44 = @"AT";
  v45 = @"BE";
  v46 = @"BG";
  v47 = @"HR";
  v48 = @"CY";
  v49 = @"CZ";
  v50 = @"DK";
  v51 = @"EE";
  v52 = @"FI";
  v53 = @"FR";
  v54 = @"DE";
  v55 = @"GR";
  v56 = @"HU";
  v57 = @"IE";
  v58 = @"IT";
  v59 = @"LV";
  v60 = @"LT";
  v61 = @"LU";
  v62 = @"MT";
  v63 = @"NL";
  v64 = @"PL";
  v65 = @"PT";
  v66 = @"RO";
  v67 = @"SK";
  v68 = @"SI";
  v69 = @"ES";
  v70 = @"SE";
  v41 = MEMORY[0x1E69E7CC0];
  v0 = @"AT";
  v1 = @"BE";
  v2 = @"BG";
  v3 = @"HR";
  v4 = @"CY";
  v5 = @"CZ";
  v6 = @"DK";
  v7 = @"EE";
  v8 = @"FI";
  v9 = @"FR";
  v10 = @"DE";
  v11 = @"GR";
  v12 = @"HU";
  v13 = @"IE";
  v14 = @"IT";
  v15 = @"LV";
  v16 = @"LT";
  v17 = @"LU";
  v18 = @"MT";
  v19 = @"NL";
  v20 = @"PL";
  v21 = @"PT";
  v22 = @"RO";
  v23 = @"SK";
  v24 = @"SI";
  v25 = @"ES";
  v26 = @"SE";
  sub_191C07DDC(0, 27, 0);
  v27 = 32;
  v28 = v41;
  do
  {
    v29 = *&v43[v27];
    v30 = sub_191CC67B8();
    v42 = v28;
    v33 = *(v28 + 16);
    v32 = *(v28 + 24);
    if (v33 >= v32 >> 1)
    {
      v35 = v30;
      v36 = v31;
      sub_191C07DDC((v32 > 1), v33 + 1, 1);
      v31 = v36;
      v30 = v35;
      v28 = v42;
    }

    *(v28 + 16) = v33 + 1;
    v34 = v28 + 16 * v33;
    *(v34 + 32) = v30;
    *(v34 + 40) = v31;
    v27 += 8;
  }

  while (v27 != 248);
  type metadata accessor for HKCountryCode(0);
  swift_arrayDestroy();
  v37 = objc_allocWithZone(HKCountrySet);
  v38 = sub_191CC68D8();

  v39 = [v37 initWithSupportedCountryCodes:v38 contentVersion:1];

  return v39;
}

uint64_t _sSo36HKBloodPressureClassificationManagerC9HealthKitE07defaultC10Guidelines3forSo0abcH0VSS_tF_0()
{
  if (qword_1EADCA140 != -1)
  {
    swift_once();
  }

  v0 = qword_1EADCB7E8;
  v1 = sub_191CC6778();
  LOBYTE(v0) = [v0 containsCountryCode_];

  if (v0)
  {
    return 0;
  }

  if (qword_1EADCA148 != -1)
  {
    swift_once();
  }

  v3 = qword_1EADCB7F0;
  v4 = sub_191CC6778();
  [v3 containsCountryCode_];

  return 1;
}

uint64_t sub_191C3C1C0(uint64_t a1)
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
  v10[1] = sub_191BFF960;

  return sub_191C3540C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_191C3C294(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_191CC6148() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_191BFF960;

  return sub_191C36864(a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_191C3C3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_191BFF960;

  return sub_191C38AEC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_191C3C4C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_191C3C4D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_191C3C4E4(uint64_t a1)
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
  v10[1] = sub_191BFF960;

  return sub_191C39440(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_191C3C5B8(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v2 = [objc_opt_self() categoriesForClassificationGuidelines:a1 error:v9];
  v3 = v9[0];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for HKBloodPressureClassificationCategory(0);
    v1 = sub_191CC68E8();
    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v1;
}

id sub_191C3C69C()
{
  sub_191C3D0F0(0, &unk_1EADCD110, sub_191C3D154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_191CC67B8();
  *(inited + 40) = v2;
  v3 = @"com.apple.healthkit";
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000036, 0x8000000191D2C790);
  v4 = sub_191CC7398();
  MEMORY[0x193B01F90](v4);

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C3D2C0(inited + 32, sub_191C3D154);
  v5 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v6 = sub_191CC6638();

  v7 = [v5 initWithDomain:v3 code:110 userInfo:v6];

  return v7;
}

__CFString *_sSo36HKBloodPressureClassificationManagerC9HealthKitE10__category3for8systolic9diastolic3ageSo0abC8CategoryaSo0abC10GuidelinesV_So10HKQuantityCANSo8NSNumberCSgtF_0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1 == 2 || a4 && (v7 = a4, v8 = [v7 integerValue], v7, v8 >= 18))
  {
    type metadata accessor for HKBloodPressureClassificationEvaluator();
    return static HKBloodPressureClassificationEvaluator.category(for:systolic:diastolic:)(a1, a2, a3);
  }

  else
  {
    v9 = sub_191C3C69C();
    swift_willThrow();
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v11 = sub_191CC6348();
    __swift_project_value_buffer(v11, qword_1EADE7090);
    v12 = v9;
    v13 = sub_191CC6328();
    v14 = sub_191CC6C98();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_191CC7468();
      v19 = sub_191C3B288(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_19197B000, v13, v14, "Unable to determine blood pressure classification with error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193B047C0](v16, -1, -1);
      MEMORY[0x193B047C0](v15, -1, -1);
    }

    v20 = @"Unavailable";
    return v20;
  }
}

id sub_191C3CA88(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [objc_opt_self() categoryDataForCategory:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t dispatch thunk of HKBloodPressureClassificationPregnancyModelProviding.pregnancyModel()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_191C1FDFC;

  return v9(a1, a2);
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191C3CCE4(uint64_t a1)
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
  v10[1] = sub_191BFD978;

  return sub_191C39440(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_24Tm()
{
  v1 = sub_191CC6148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191C3CF10(uint64_t a1)
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
  v10[1] = sub_191BFD978;

  return sub_191C3540C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_191C3CFE4()
{
  if (!qword_1EADCB838)
  {
    sub_191BFAE6C(255, &qword_1EADCA778, off_1E7375158);
    sub_191BF92E0();
    v0 = sub_191CC69F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB838);
    }
  }
}

void sub_191C3D064(uint64_t a1, void *a2, void *a3)
{
  sub_191C3CFE4();
  v8 = *(*(v7 - 8) + 80);
  v9 = *(v3 + 16);

  sub_191C3ACE8(a1, a2, a3);
}

void sub_191C3D0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_191C3D154()
{
  if (!qword_1EADCB848)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB848);
    }
  }
}

void sub_191C3D1B8()
{
  if (!qword_1EADCB850)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    v0 = sub_191CC69F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB850);
    }
  }
}

void sub_191C3D220()
{
  if (!qword_1EADCB858)
  {
    type metadata accessor for HKMCPregnancyState(255);
    sub_191C3D0F0(255, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB858);
    }
  }
}

uint64_t sub_191C3D2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_191C3D320(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_191C3D0F0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_191C3D3A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_191C3D0F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_191C3D410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_191BFF960;

  return sub_191C3B098(a1, v5);
}

void sub_191C3D4C8()
{
  if (!qword_1EADCB868)
  {
    sub_191C3D538();
    sub_191BF92E0();
    v0 = sub_191CC69F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB868);
    }
  }
}

void sub_191C3D538()
{
  if (!qword_1EADCB870)
  {
    sub_191BFAE6C(255, &qword_1EADCD140, 0x1E696AD98);
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB870);
    }
  }
}

unint64_t sub_191C3D5A0()
{
  result = qword_1EADCB880;
  if (!qword_1EADCB880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCB880);
  }

  return result;
}

unint64_t sub_191C3D604()
{
  result = qword_1EADCB888;
  if (!qword_1EADCB888)
  {
    sub_191C3D5A0();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EADCB888);
  }

  return result;
}

uint64_t sub_191C3D64C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_191C3D694()
{
  result = qword_1EADCB8A8;
  if (!qword_1EADCB8A8)
  {
    sub_191C3D0F0(255, &qword_1EADCB8A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB8A8);
  }

  return result;
}

HealthKit::_HKWorkoutMetricType_optional __swiftcall _HKWorkoutMetricType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id HKWorkoutMetric.__allocating_init(type:metric:)(_BYTE *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type] = *a1;
  *&v5[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id HKWorkoutMetric.init(type:metric:)(_BYTE *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type] = *a1;
  *&v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall HKWorkoutMetric.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type);
  v4 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric);
  v6 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

uint64_t HKWorkoutMetric.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_191C3DB74(a1);
  v5 = v4;

  return v5;
}

uint64_t HKWorkoutMetric.init(coder:)(void *a1)
{
  sub_191C3DB74(a1);
  v3 = v2;

  return v3;
}

id HKWorkoutMetric.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKWorkoutMetric.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_191C3DB74(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_191CC6778();
  v6 = [a1 decodeIntegerForKey_];

  if (v6 > 3)
  {
    __break(1u);
  }

  else
  {
    v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type] = v6;
    sub_191C3DD30();
    v7 = sub_191CC6D88();
    if (v7)
    {
      *&v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric] = v7;
      v8.receiver = v2;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, sel_init);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_191C3DC68()
{
  result = qword_1EADCB8C0;
  if (!qword_1EADCB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB8C0);
  }

  return result;
}

unint64_t sub_191C3DD30()
{
  result = qword_1EADCB930;
  if (!qword_1EADCB930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCB930);
  }

  return result;
}

uint64_t HKHealthStore.requestAuthorization(toShare:read:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_191C3BBE8();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C3DE40, 0, 0);
}

uint64_t sub_191C3DE40()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v1[19];
  v12 = v1[20];
  v7 = v1[18];
  sub_191BFAE6C(0, &qword_1EADCAAD0, off_1E7375460);
  sub_191C3E29C(&qword_1EADCB9A0, &qword_1EADCAAD0, off_1E7375460);
  v8 = sub_191CC6B28();
  v1[24] = v8;
  sub_191BFAE6C(0, &qword_1EADCB9A8, off_1E73752E0);
  sub_191C3E29C(&qword_1EADCB9B0, &qword_1EADCB9A8, off_1E73752E0);
  v9 = sub_191CC6B28();
  v1[25] = v9;
  v1[2] = v1;
  v1[3] = sub_191C3E090;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C349D4;
  v1[13] = &block_descriptor_13;
  [v12 requestAuthorizationToShareTypes:v8 readTypes:v9 completion:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_191C3E090()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_191C3E214;
  }

  else
  {
    v3 = sub_191C3E1A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C3E1A0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_191C3E214()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_191C3E29C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_191BFAE6C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static HKBloodPressureClassificationEvaluator.category(for:systolic:diastolic:)(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  v7 = [v6 millimeterOfMercuryUnit];
  v8 = [a2 isCompatibleWithUnit_];

  if (!v8)
  {
    sub_191C40908();
    goto LABEL_12;
  }

  v6 = [v6 millimeterOfMercuryUnit];
  v9 = [a3 isCompatibleWithUnit_];

  if (!v9)
  {
    sub_191C407F8();
    goto LABEL_12;
  }

  v20[0] = 0;
  v10 = [swift_getObjCClassFromMetadata() categoriesForClassificationGuidelines:a1 error:v20];
  v6 = v20[0];
  if (!v10)
  {
    v18 = v20[0];
    sub_191CC5FC8();

    goto LABEL_12;
  }

  v11 = v10;
  type metadata accessor for HKBloodPressureClassificationCategory(0);
  v12 = sub_191CC68E8();
  v13 = v6;

  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_9:

    sub_191C406EC();
LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  while (1)
  {
    if (v14 > *(v12 + 16))
    {
      __break(1u);
    }

    v20[0] = *(v12 + 8 * v14 + 24);
    v6 = v20[0];
    v15 = sub_191C3FD78(v20, a2, a3);
    if (v3)
    {

      goto LABEL_13;
    }

    if (v15)
    {
      break;
    }

    --v14;

    if (!v14)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
  return v6;
}