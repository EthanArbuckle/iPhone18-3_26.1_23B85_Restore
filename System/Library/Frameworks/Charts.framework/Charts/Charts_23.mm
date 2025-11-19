void sub_1AAE63220()
{
  if (!qword_1EB425A88[0])
  {
    sub_1AAD26778(255, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();
    v0 = sub_1AAF8EFE4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB425A88);
    }
  }
}

void sub_1AAE632E8(uint64_t a1)
{
  if (!qword_1EB425BA8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AAD26778(255, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    sub_1AACFDCAC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB425BA8);
    }
  }
}

uint64_t sub_1AAE63428()
{

  sub_1AAD04750(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  sub_1AAD04750(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AAE634E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE635AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAE63674(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE636C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE6377C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE637CC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 128) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE63850(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80) & 1 | (a2 << 62);
  *(result + 48) &= 1uLL;
  *(result + 80) = v2;
  return result;
}

BOOL sub_1AAE63890(_OWORD *a1, _OWORD *a2)
{
  v3 = a1[7];
  v27[6] = a1[6];
  v27[7] = v3;
  v27[8] = a1[8];
  v4 = a1[3];
  v27[2] = a1[2];
  v27[3] = v4;
  v5 = a1[5];
  v27[4] = a1[4];
  v27[5] = v5;
  v6 = a1[1];
  v27[0] = *a1;
  v27[1] = v6;
  v7 = sub_1AACDB99C(v27);
  v8 = sub_1AACD2C84(v27);
  v9 = 3;
  if (((1 << v7) & 0x2D) != 0)
  {
    v9 = *(v8 + 48);
    if (*(v8 + 48) < 0)
    {
      v9 &= 1u;
    }

    else
    {
      v12 = v8 + 32;
      v10 = *(v8 + 32);
      v11 = *(v12 + 8);
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_9;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      sub_1AAD0E818(v10, v11, v13);
    }
  }

LABEL_9:
  v14 = a2[7];
  v26[6] = a2[6];
  v26[7] = v14;
  v26[8] = a2[8];
  v15 = a2[3];
  v26[2] = a2[2];
  v26[3] = v15;
  v16 = a2[5];
  v26[4] = a2[4];
  v26[5] = v16;
  v17 = a2[1];
  v26[0] = *a2;
  v26[1] = v17;
  v18 = sub_1AACDB99C(v26);
  v19 = sub_1AACD2C84(v26);
  v20 = 3;
  if (((1 << v18) & 0x2D) != 0)
  {
    v20 = *(v19 + 48);
    if (*(v19 + 48) < 0)
    {
      v20 &= 1u;
    }

    else
    {
      v23 = v19 + 32;
      v21 = *(v19 + 32);
      v22 = *(v23 + 8);
      if (!v20)
      {
        v24 = 0;
LABEL_20:
        sub_1AAD0E818(v21, v22, v24);
        if (v9 != 3)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      if (v20 == 1)
      {
        v24 = 1;
        goto LABEL_20;
      }
    }
  }

  if (v9 != 3)
  {
LABEL_21:
    if (v9 == v20)
    {
      return 1;
    }

    if (v9)
    {
      if (!v20 || v9 == 1)
      {
        return 1;
      }

      return v20 != 1;
    }

    return 0;
  }

LABEL_16:
  result = 1;
  if (v20 != 3 && v20)
  {
    return v20 != 1;
  }

  return result;
}

uint64_t sub_1AAE63A24()
{
  if (qword_1ED9B0BD0 != -1)
  {
    swift_once();
  }

  return sub_1AAD9B194(&qword_1ED9C3450, &unk_1ED9C33F0);
}

BOOL sub_1AAE63A88(_OWORD *a1, __int128 *a2)
{
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2[4];
  v100 = a2[5];
  v101 = v4;
  v102[0] = v5;
  *(v102 + 9) = *(a2 + 121);
  v7 = a2[3];
  v97 = a2[2];
  v98 = v7;
  v99 = v6;
  v8 = a2[1];
  v95 = *a2;
  v96 = v8;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  v93[5] = a1[5];
  v93[6] = v9;
  v94[0] = v10;
  *(v94 + 9) = *(a1 + 121);
  v12 = a1[3];
  v93[2] = a1[2];
  v93[3] = v12;
  v93[4] = v11;
  v13 = a1[1];
  v93[0] = *a1;
  v93[1] = v13;
  v14 = sub_1AAE63EF0(v93);
  if (v14 > 2)
  {
    if (v14 == 4)
    {
      goto LABEL_6;
    }

    v32 = sub_1AAD357A8(v93);
    v85 = *v32;
    v33 = v32[4];
    v35 = v32[1];
    v34 = v32[2];
    v88 = v32[3];
    v89 = v33;
    v86 = v35;
    v87 = v34;
    v37 = v32[6];
    v36 = v32[7];
    v38 = v32[5];
    *(v92 + 9) = *(v32 + 121);
    v91 = v37;
    v92[0] = v36;
    v90 = v38;
    v21 = *(&v88 + 1);
    v29 = v88;
    v22 = v33;
    v17 = v86;
    v75 = *(&v85 + 1);
    v23 = BYTE8(v86);
    v18 = *(&v87 + 1);
    v19 = v87;
    v16 = v85;
    v39 = &v85;
LABEL_9:
    sub_1AAE63EFC(v39, &v77);
    goto LABEL_10;
  }

  if (!v14)
  {
    v40 = sub_1AAD357A8(v93);
    v16 = *v40;
    v17 = *(v40 + 16);
    v75 = *(v40 + 8);
    v19 = *(v40 + 32);
    v18 = *(v40 + 40);
    v41 = *(v40 + 48);
    v21 = *(v40 + 56);
    v22 = *(v40 + 64);
    v23 = *(v40 + 24);
    v42 = a1[1];
    v85 = *a1;
    v86 = v42;
    v43 = a1[3];
    v87 = a1[2];
    v44 = a1[6];
    v45 = a1[7];
    v46 = a1[4];
    v90 = a1[5];
    v91 = v44;
    v92[0] = v45;
    v47 = *(a1 + 121);
    v29 = v41;
    *(v92 + 9) = v47;
    v88 = v43;
    v89 = v46;
    v39 = sub_1AAD357A8(&v85);
    goto LABEL_9;
  }

  if (v14 == 1)
  {
LABEL_6:
    sub_1AAD357A8(v93);
    v31 = 3;
    goto LABEL_14;
  }

  v15 = sub_1AAD357A8(v93);
  v16 = *v15;
  v17 = *(v15 + 16);
  v75 = *(v15 + 8);
  v19 = *(v15 + 32);
  v18 = *(v15 + 40);
  v20 = *(v15 + 48);
  v21 = *(v15 + 56);
  v22 = *(v15 + 64);
  v23 = *(v15 + 24);
  v24 = a1[1];
  v85 = *a1;
  v86 = v24;
  v25 = a1[7];
  v91 = a1[6];
  v92[0] = v25;
  *(v92 + 9) = *(a1 + 121);
  v26 = a1[5];
  v89 = a1[4];
  v90 = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = v20;
  v87 = v27;
  v88 = v28;
  v30 = sub_1AAD357A8(&v85);
  sub_1AAE63FAC(v30, &v77);
LABEL_10:
  *&v85 = v16;
  *(&v85 + 1) = v75;
  *&v86 = v17;
  BYTE8(v86) = v23 & 1;
  *&v87 = v19;
  *(&v87 + 1) = v18;
  *&v88 = v29;
  *(&v88 + 1) = v21;
  if ((v22 & 0x80u) == 0)
  {
    v31 = v22;
  }

  else
  {
    v31 = v21;
  }

  LOBYTE(v89) = v22;
  sub_1AAE63F58(&v85);
LABEL_14:
  v48 = a2[7];
  v91 = a2[6];
  v92[0] = v48;
  *(v92 + 9) = *(a2 + 121);
  v49 = a2[3];
  v87 = a2[2];
  v88 = v49;
  v50 = a2[5];
  v89 = a2[4];
  v90 = v50;
  v51 = a2[1];
  v85 = *a2;
  v86 = v51;
  v52 = sub_1AAE63EF0(&v85);
  if (v52 > 2)
  {
    if (v52 == 4)
    {
      goto LABEL_19;
    }

    v66 = sub_1AAD357A8(&v85);
    v77 = *v66;
    v67 = v66[4];
    v69 = v66[1];
    v68 = v66[2];
    v80 = v66[3];
    v81 = v67;
    v78 = v69;
    v79 = v68;
    v71 = v66[6];
    v70 = v66[7];
    v72 = v66[5];
    *(v84 + 9) = *(v66 + 121);
    v83 = v71;
    v84[0] = v70;
    v82 = v72;
    v60 = *(&v80 + 1);
    v59 = v80;
    v61 = v67;
    v55 = *(&v77 + 1);
    v56 = v78;
    v62 = BYTE8(v78);
    v57 = *(&v79 + 1);
    v58 = v79;
    v54 = v77;
    v73 = &v77;
  }

  else
  {
    if (v52)
    {
      if (v52 != 1)
      {
        v53 = sub_1AAD357A8(&v85);
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = *(v53 + 16);
        v58 = *(v53 + 32);
        v57 = *(v53 + 40);
        v59 = *(v53 + 48);
        v60 = *(v53 + 56);
        v61 = *(v53 + 64);
        v62 = *(v53 + 24);
        v77 = v95;
        v78 = v96;
        v79 = v97;
        v82 = v100;
        v83 = v101;
        v84[0] = v102[0];
        *(v84 + 9) = *(v102 + 9);
        v80 = v98;
        v81 = v99;
        v63 = sub_1AAD357A8(&v77);
        sub_1AAE63FAC(v63, v76);
        goto LABEL_30;
      }

LABEL_19:
      sub_1AAD357A8(&v85);
      v64 = 3;
      if (v31 == 3)
      {
        goto LABEL_34;
      }

LABEL_20:
      if (v64 == 3 || v31 != v64)
      {
        if (!v31)
        {
          return 0;
        }

        if (v64 && v31 != 1)
        {
          return v64 != 1;
        }
      }

      return 1;
    }

    v74 = sub_1AAD357A8(&v85);
    v54 = *v74;
    v55 = *(v74 + 8);
    v56 = *(v74 + 16);
    v58 = *(v74 + 32);
    v57 = *(v74 + 40);
    v59 = *(v74 + 48);
    v60 = *(v74 + 56);
    v61 = *(v74 + 64);
    v62 = *(v74 + 24);
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v82 = v100;
    v83 = v101;
    v84[0] = v102[0];
    *(v84 + 9) = *(v102 + 9);
    v80 = v98;
    v81 = v99;
    v73 = sub_1AAD357A8(&v77);
  }

  sub_1AAE63EFC(v73, v76);
LABEL_30:
  *&v77 = v54;
  *(&v77 + 1) = v55;
  *&v78 = v56;
  BYTE8(v78) = v62 & 1;
  *&v79 = v58;
  *(&v79 + 1) = v57;
  *&v80 = v59;
  *(&v80 + 1) = v60;
  if ((v61 & 0x80u) == 0)
  {
    v64 = v61;
  }

  else
  {
    v64 = v60;
  }

  LOBYTE(v81) = v61;
  sub_1AAE63F58(&v77);
  if (v31 != 3)
  {
    goto LABEL_20;
  }

LABEL_34:
  result = 1;
  if (v64 != 3 && v64)
  {
    return v64 != 1;
  }

  return result;
}

uint64_t sub_1AAE63FAC(uint64_t a1, uint64_t a2)
{
  sub_1AAE64010();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAE64010()
{
  if (!qword_1EB425BB0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB425BB0);
    }
  }
}

void static MarkDimensions.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  sub_1AAF31468();
  *(a1 + 104) = v2;
  *(a1 + 112) = v3 & 1;
}

uint64_t MarkStackingMethod.Storage.hashValue.getter(unsigned __int8 a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  return sub_1AAF906F4();
}

uint64_t MarkStackingMethod.description.getter(unsigned __int8 a1)
{
  v1 = 0x647261646E617473;
  v2 = 0x7265746E6563;
  if (a1 != 2)
  {
    v2 = 0x656B636174736E75;
  }

  if (a1)
  {
    v1 = 0x7A696C616D726F6ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AAE64210()
{
  v1 = 0x647261646E617473;
  v2 = 0x7265746E6563;
  if (*v0 != 2)
  {
    v2 = 0x656B636174736E75;
  }

  if (*v0)
  {
    v1 = 0x7A696C616D726F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_1AAE642C8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1AAE642DC@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  __asm { FMOV            V0.2D, #0.5 }

  *a1 = _Q0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = -0.5;
  *(a1 + 32) = xmmword_1AAFAB8F0;
  *(a1 + 48) = 0x3FE0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = v9;
  *(a1 + 88) = v2 & 1;
  return result;
}

double sub_1AAE6433C@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  __asm { FMOV            V0.2D, #0.5 }

  *a1 = _Q0;
  *(a1 + 16) = xmmword_1AAFA2D60;
  *(a1 + 32) = xmmword_1AAFAB900;
  *(a1 + 48) = xmmword_1AAFA2D60;
  result = 0.5;
  *(a1 + 64) = xmmword_1AAFAB910;
  *(a1 + 80) = v9;
  *(a1 + 88) = v2 & 1;
  return result;
}

double sub_1AAE643A8(uint64_t a1, double a2, double a3)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = sub_1AAF31474(a1, *(v3 + 80), *(v3 + 88));
  return v10 * v11 + v9 * (v11 * a3) + v6 * a2 + v7 * a3 + v8 * (v11 * a2);
}

uint64_t static MarkDimensions.ratio(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  *a1 = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_1AAFA2D60;
  *(a1 + 40) = xmmword_1AAFAB900;
  *(a1 + 56) = xmmword_1AAFA2D60;
  *(a1 + 72) = xmmword_1AAFAB910;
  *(a1 + 88) = v2;
  v9 = v8 & 1;
  *(a1 + 96) = v9;
  *(a1 + 104) = v2;
  *(a1 + 112) = v9;

  return sub_1AAE64F50(v2, v9);
}

{
  sub_1AAF314D8();
  *a1 = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_1AAFA2D60;
  *(a1 + 40) = xmmword_1AAFAB900;
  *(a1 + 56) = xmmword_1AAFA2D60;
  *(a1 + 72) = xmmword_1AAFAB910;
  *(a1 + 88) = v7;
  v8 &= 1u;
  *(a1 + 96) = v8;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  sub_1AAE64F50(v7, v8);
}

uint64_t static MarkDimensions.inset(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  *a1 = 2;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1AAFAB920;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 88) = v2;
  v4 = v3 & 1;
  *(a1 + 96) = v4;
  *(a1 + 104) = v2;
  *(a1 + 112) = v4;

  return sub_1AAE64F50(v2, v4);
}

{
  sub_1AAF314D8();
  *a1 = 2;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1AAFAB920;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 88) = v2;
  v3 &= 1u;
  *(a1 + 96) = v3;
  *(a1 + 104) = v2;
  *(a1 + 112) = v3;
  sub_1AAE64F50(v2, v3);
}

uint64_t static MarkDimensions.fixed(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1AAF31468();
  *a1 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1AAFAB8F0;
  *(a1 + 56) = 0x3FE0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x3FE0000000000000;
  *(a1 + 88) = v2;
  v9 = v8 & 1;
  *(a1 + 96) = v9;
  *(a1 + 104) = v2;
  *(a1 + 112) = v9;

  return sub_1AAE64F50(v2, v9);
}

{
  sub_1AAF314D8();
  *a1 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1AAFAB8F0;
  *(a1 + 56) = 0x3FE0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x3FE0000000000000;
  *(a1 + 88) = v7;
  v8 &= 1u;
  *(a1 + 96) = v8;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  sub_1AAE64F50(v7, v8);
}

uint64_t MarkDimension.description.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0x286F69746172;
    }

    else
    {
      v2 = 0x286465786966;
    }

    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v2 = 0x287465736E69;
LABEL_7:
    v5 = v2;
    v3 = sub_1AAF8F9F4();
    MEMORY[0x1AC5982F0](v3);

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    return v5;
  }

  return 0x6974616D6F747561;
}

uint64_t InterpolationMethod.description.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (*&a1 == 0.5)
      {
        return 0x526C6C756D746163;
      }
    }

    else if (*&a1 == 0.0)
    {
      return 0x6C616E6964726163;
    }

    sub_1AAF900D4();

    v3 = 0xD000000000000012;
    goto LABEL_17;
  }

  if (a2 == 2)
  {
    if (*&a1 == 1.0)
    {
      return 0x646E4570657473;
    }

    if (*&a1 == 0.5)
    {
      return 0x746E654370657473;
    }

    if (*&a1 != 0.0)
    {
      sub_1AAF900D4();

      v3 = 0xD000000000000011;
LABEL_17:
      v5 = v3;
      v4 = sub_1AAF8F9F4();
      MEMORY[0x1AC5982F0](v4);

      MEMORY[0x1AC5982F0](41, 0xE100000000000000);
      return v5;
    }

    return 0x7261745370657473;
  }

  else if (*&a1 == 0.0)
  {
    return 0x7261656E696CLL;
  }

  else
  {
    return 0x656E6F746F6E6F6DLL;
  }
}

unint64_t sub_1AAE64AE4()
{
  result = qword_1EB425BB8[0];
  if (!qword_1EB425BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB425BB8);
  }

  return result;
}

uint64_t sub_1AAE64B9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE64BE4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AAE64BF8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1AAE64C24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
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

uint64_t sub_1AAE64C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialSpecScaleMapping(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialSpecScaleMapping(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAE64D94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AAE64DD0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AAE64DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 88);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAE64E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = ~a2;
    }
  }

  return result;
}

double sub_1AAE64E90(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 88) = -a2;
  }

  return result;
}

unint64_t sub_1AAE64EFC()
{
  result = qword_1EB425CC0[0];
  if (!qword_1EB425CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB425CC0);
  }

  return result;
}

uint64_t sub_1AAE64F50(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AAE64F5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE64F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
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

uint64_t sub_1AAE64FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAE65054(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAE65074(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
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

  *(result + 80) = v3;
  return result;
}

__n128 PointMark.init<A, B>(x:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1AAE83B9C(a1, a3, a5, v26);
  v12 = v26[7];
  *(a7 + 96) = v26[6];
  *(a7 + 112) = v12;
  *(a7 + 128) = v26[8];
  v13 = v26[3];
  *(a7 + 32) = v26[2];
  *(a7 + 48) = v13;
  v14 = v26[5];
  *(a7 + 64) = v26[4];
  *(a7 + 80) = v14;
  v15 = v26[1];
  *a7 = v26[0];
  *(a7 + 16) = v15;
  sub_1AAE83B9C(a2, a4, a6, v27);
  v16 = type metadata accessor for PlottableValue();
  (*(*(v16 - 8) + 8))(a2, v16);
  v17 = type metadata accessor for PlottableValue();
  (*(*(v17 - 8) + 8))(a1, v17);
  v18 = v27[7];
  *(a7 + 240) = v27[6];
  *(a7 + 256) = v18;
  *(a7 + 272) = v27[8];
  v19 = v27[3];
  *(a7 + 176) = v27[2];
  *(a7 + 192) = v19;
  v20 = v27[5];
  *(a7 + 208) = v27[4];
  *(a7 + 224) = v20;
  v21 = v27[1];
  *(a7 + 144) = v27[0];
  *(a7 + 160) = v21;
  *&v28[0] = 0;
  BYTE8(v28[0]) = 1;
  sub_1AAD59F90(v28);
  v22 = v28[7];
  *(a7 + 384) = v28[6];
  *(a7 + 400) = v22;
  *(a7 + 416) = v28[8];
  v23 = v28[3];
  *(a7 + 320) = v28[2];
  *(a7 + 336) = v23;
  v24 = v28[5];
  *(a7 + 352) = v28[4];
  *(a7 + 368) = v24;
  result = v28[1];
  *(a7 + 288) = v28[0];
  *(a7 + 304) = result;
  return result;
}

__n128 PointMark.init<A>(x:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1AAE83B9C(a1, a4, a5, v23);
  v10 = type metadata accessor for PlottableValue();
  (*(*(v10 - 8) + 8))(a1, v10);
  v11 = v23[7];
  *(a6 + 96) = v23[6];
  *(a6 + 112) = v11;
  *(a6 + 128) = v23[8];
  v12 = v23[3];
  *(a6 + 32) = v23[2];
  *(a6 + 48) = v12;
  v13 = v23[5];
  *(a6 + 64) = v23[4];
  *(a6 + 80) = v13;
  v14 = v23[1];
  *a6 = v23[0];
  *(a6 + 16) = v14;
  *&v24[0] = a2;
  BYTE8(v24[0]) = a3 & 1;
  sub_1AAD59F90(v24);
  v15 = v24[7];
  *(a6 + 240) = v24[6];
  *(a6 + 256) = v15;
  *(a6 + 272) = v24[8];
  v16 = v24[3];
  *(a6 + 176) = v24[2];
  *(a6 + 192) = v16;
  v17 = v24[5];
  *(a6 + 208) = v24[4];
  *(a6 + 224) = v17;
  v18 = v24[1];
  *(a6 + 144) = v24[0];
  *(a6 + 160) = v18;
  *&v25[0] = 0;
  BYTE8(v25[0]) = 1;
  sub_1AAD59F90(v25);
  v19 = v25[7];
  *(a6 + 384) = v25[6];
  *(a6 + 400) = v19;
  *(a6 + 416) = v25[8];
  v20 = v25[3];
  *(a6 + 320) = v25[2];
  *(a6 + 336) = v20;
  v21 = v25[5];
  *(a6 + 352) = v25[4];
  *(a6 + 368) = v21;
  result = v25[1];
  *(a6 + 288) = v25[0];
  *(a6 + 304) = result;
  return result;
}

__n128 PointMark.init<A>(x:y:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v24[0] = a1;
  BYTE8(v24[0]) = a2 & 1;
  sub_1AAD59F90(v24);
  v10 = v24[7];
  *(a6 + 96) = v24[6];
  *(a6 + 112) = v10;
  *(a6 + 128) = v24[8];
  v11 = v24[3];
  *(a6 + 32) = v24[2];
  *(a6 + 48) = v11;
  v12 = v24[5];
  *(a6 + 64) = v24[4];
  *(a6 + 80) = v12;
  v13 = v24[1];
  *a6 = v24[0];
  *(a6 + 16) = v13;
  sub_1AAE83B9C(a3, a4, a5, v23);
  v14 = type metadata accessor for PlottableValue();
  (*(*(v14 - 8) + 8))(a3, v14);
  v15 = v23[7];
  *(a6 + 240) = v23[6];
  *(a6 + 256) = v15;
  *(a6 + 272) = v23[8];
  v16 = v23[3];
  *(a6 + 176) = v23[2];
  *(a6 + 192) = v16;
  v17 = v23[5];
  *(a6 + 208) = v23[4];
  *(a6 + 224) = v17;
  v18 = v23[1];
  *(a6 + 144) = v23[0];
  *(a6 + 160) = v18;
  *&v25[0] = 0;
  BYTE8(v25[0]) = 1;
  sub_1AAD59F90(v25);
  v19 = v25[7];
  *(a6 + 384) = v25[6];
  *(a6 + 400) = v19;
  *(a6 + 416) = v25[8];
  v20 = v25[3];
  *(a6 + 320) = v25[2];
  *(a6 + 336) = v20;
  v21 = v25[5];
  *(a6 + 352) = v25[4];
  *(a6 + 368) = v21;
  result = v25[1];
  *(a6 + 288) = v25[0];
  *(a6 + 304) = result;
  return result;
}

uint64_t static PointMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

unint64_t static PointMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, unint64_t *a3@<X8>)
{
  v68 = a3;
  v5 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[5];
  v11 = a1[7];
  v82 = a1[6];
  v83 = v11;
  v12 = a1[7];
  v84 = a1[8];
  v13 = a1[1];
  v14 = a1[3];
  v78 = a1[2];
  v79 = v14;
  v15 = a1[3];
  v16 = a1[5];
  v80 = a1[4];
  v81 = v16;
  v17 = a1[1];
  v77[0] = *a1;
  v77[1] = v17;
  v18 = a1[14];
  v19 = a1[16];
  v20 = a1[17];
  v91 = a1[15];
  v92 = v19;
  v93 = v20;
  v21 = a1[10];
  v22 = a1[12];
  v23 = a1[13];
  v87 = a1[11];
  v88 = v22;
  v89 = v23;
  v90 = v18;
  v24 = a1[8];
  v85 = a1[9];
  v86 = v21;
  v95[6] = v82;
  v95[7] = v12;
  v95[8] = v24;
  v95[2] = v78;
  v95[3] = v15;
  v95[4] = v80;
  v95[5] = v10;
  v25 = *a2;
  v26 = *(a2 + 1);
  v95[0] = v77[0];
  v95[1] = v13;
  v27 = sub_1AACDB99C(v95);
  v28 = sub_1AACD2C84(v95);
  if ((v27 - 2) >= 4)
  {
    if (v27)
    {
      if (*(v28 + 8))
      {
        v38 = (*(v26 + 24) + *(v26 + 32)) * 0.5;
      }

      else
      {
        v38 = *v28;
      }

      v39 = v26 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v29 = v38 + *(v39 + *(v5 + 84));
    }

    else
    {
      v67 = v5;
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);
      v32 = *(v28 + 40);
      v33 = *(v28 + 16);
      v69 = *v28;
      v70 = v33;
      v96 = v30;
      v34 = *(v28 + 48);

      v35 = MEMORY[0x1E69E62F8];
      sub_1AAE67EB8(&v96, v94, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(&v69, v94);
      sub_1AACD7C50(v31, v32, v34);
      v65 = sub_1AAE0B2C8(0, v26, v31, v32, v34);
      v37 = v36;
      sub_1AAD6E0DC(&v69);
      sub_1AAE67F28(&v96, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v35);
      sub_1AAD0E818(v31, v32, v34);

      if (v37)
      {
        v29 = NAN;
      }

      else
      {
        v29 = *&v65;
      }

      v5 = v67;
    }
  }

  else
  {
    v29 = NAN;
  }

  v94[6] = v91;
  v94[7] = v92;
  v94[8] = v93;
  v94[2] = v87;
  v94[3] = v88;
  v94[4] = v89;
  v94[5] = v90;
  v94[0] = v85;
  v94[1] = v86;
  v40 = sub_1AACDB99C(v94);
  v41 = sub_1AACD2C84(v94);
  if ((v40 - 2) >= 4)
  {
    if (v40)
    {
      if (*(v41 + 8))
      {
        v51 = (*(v26 + 40) + *(v26 + 48)) * 0.5;
      }

      else
      {
        v51 = *v41;
      }

      v64 = v26 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v42 = v51 + *(v64 + *(v5 + 88));
      if (v25)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v67 = v5;
      v43 = *(v41 + 24);
      v44 = *(v41 + 32);
      v45 = *(v41 + 40);
      v46 = *(v41 + 16);
      v71 = *v41;
      v72 = v46;
      v97[0] = v43;
      v47 = *(v41 + 48);

      v48 = MEMORY[0x1E69E62F8];
      sub_1AAE67EB8(v97, &v75, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(&v71, &v75);
      sub_1AACD7C50(v44, v45, v47);
      v65 = sub_1AAE0B2C8(1, v26, v44, v45, v47);
      v50 = v49;
      sub_1AAD6E0DC(&v71);
      sub_1AAE67F28(v97, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v48);
      sub_1AAD0E818(v44, v45, v47);

      if (v50)
      {
        v42 = NAN;
      }

      else
      {
        v42 = *&v65;
      }

      v5 = v67;
      if (v25)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v42 = NAN;
    if (v25)
    {
LABEL_37:
      result = sub_1AAE66870(v77, &v85, v26);
      goto LABEL_38;
    }
  }

  v67 = v5;
  v52 = *(*(v26 + 16) + 24);
  v53 = v26 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v54 = *(v53 + 152);
  if (v54 == 255)
  {
    v55 = 0x404921FB54442D18;
  }

  else
  {
    v55 = *(v53 + 136);
  }

  if (v54 == 255)
  {
    v56 = 0;
  }

  else
  {
    v56 = *(v53 + 144);
  }

  v57 = (v54 != 255) & v54;
  sub_1AAE67EB8(v53 + 88, &v73, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (BYTE8(v74[1]) == 255)
  {
    if (qword_1ED9B0450 != -1)
    {
      swift_once();
    }

    sub_1AAD9B194(&unk_1ED9C33F0, &v75);
    BYTE8(v76[1]) = 0;
    if (BYTE8(v74[1]) != 255)
    {
      sub_1AAE67F28(&v73, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v75 = v73;
    v76[0] = v74[0];
    *(v76 + 9) = *(v74 + 9);
  }

  v58 = v66;
  sub_1AAE68064(v53, v66, type metadata accessor for ChartContentRenderContext.Environment);
  sub_1AAD0F2A4(v58, &v9[*(v7 + 36)]);
  v59 = *(v53 + *(v67 + 64));
  *v9 = v52;
  *(v9 + 1) = v29;
  *(v9 + 2) = v42;
  *(v9 + 3) = v55;
  *(v9 + 4) = v56;
  v9[40] = v57;
  v60 = v76[0];
  *(v9 + 3) = v75;
  *(v9 + 4) = v60;
  *(v9 + 73) = *(v76 + 9);
  *&v9[*(v7 + 40)] = v59;
  v61 = swift_allocBox();
  sub_1AAE68128(v9, v62, type metadata accessor for SgPoint);
  result = v61 | 0x3000000000000000;
LABEL_38:
  *v68 = result;
  return result;
}

uint64_t static PointMark._collectChartContent(content:inputs:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v94 = a3;
  v5 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollectedChartContent(0);
  v9 = *(v8 - 8);
  v91 = v8;
  v92 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v78 - v12;
  v13 = a1[7];
  v209[6] = a1[6];
  v209[7] = v13;
  v14 = a1[9];
  v209[8] = a1[8];
  v15 = a1[3];
  v209[2] = a1[2];
  v209[3] = v15;
  v16 = a1[5];
  v209[4] = a1[4];
  v209[5] = v16;
  v17 = a1[1];
  v209[0] = *a1;
  v209[1] = v17;
  v18 = a1[14];
  v19 = a1[16];
  v20 = a1[17];
  v208[6] = a1[15];
  v208[7] = v19;
  v208[8] = v20;
  v21 = a1[10];
  v22 = a1[12];
  v23 = a1[13];
  v208[2] = a1[11];
  v208[3] = v22;
  v208[5] = v18;
  v208[4] = v23;
  v208[1] = v21;
  v208[0] = v14;
  v24 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF09418(v209, v189);
  sub_1AAF09418(v208, v191);
  v25 = a2 + *(v24 + 28);
  sub_1AAEF1A60(v25, v188);
  sub_1AAEF1C70(v25, &v193);
  sub_1AAEF1ED8(v25, v187);
  v26 = *(a2 + *(v24 + 20));
  sub_1AAE67F84(v188, &v96, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  if (*(&v97[0] + 1) == 2)
  {

    sub_1AAE681E4(&v96, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v186 = -256;
  }

  else
  {
    sub_1AAE67EB8(&v98, &v182, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);

    sub_1AAE67F28(&v96, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  }

  LODWORD(v89) = *(v25 + 81);
  v27 = *(v25 + 312);
  v87 = *(v25 + 320);
  sub_1AAE67F84(v187, &v96, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  if (*(&v97[0] + 1) == 2)
  {

    sub_1AAE681E4(&v96, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = -256;
  }

  else
  {
    sub_1AAE67EB8(&v98, &v177, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);

    sub_1AAE67F28(&v96, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
  }

  v90 = v26;
  v88 = v27;
  if (*(&v200 + 1) >> 1 != 4294967294 || (v203 & 0x7C) != 0)
  {
    v97[1] = v201;
    v98 = v202;
    v96 = v199;
    v97[0] = v200;
    v99[0] = v203;
    sub_1AAE67EB8(&v96, v175, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize, MEMORY[0x1E69E6720]);
    v84 = v96;
    v85 = v97[0];
    v82 = v97[1];
    v83 = v98;
    LODWORD(v86) = v99[0];
  }

  else
  {
    LODWORD(v86) = 0;
    v84 = 0u;
    v85 = xmmword_1AAFABEE0;
    v82 = 0u;
    v83 = 0u;
  }

  v28 = *(v25 + 328);
  v81 = type metadata accessor for CollectedChartContent.Primitive(0);
  v29 = *(v81 + 72);
  v30 = sub_1AAF8E244();
  v31 = v95;
  (*(*(v30 - 8) + 56))(v95 + v29, 1, 1, v30);
  sub_1AAE68064(v25, v7, type metadata accessor for ChartContainerValues);
  v32 = *(v5 + 68);
  v33 = &v7[*(v5 + 64)];
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v78 = v33[3];
  v79 = v36;
  v37 = &v7[v32];
  v39 = *&v7[v32];
  v38 = *&v7[v32 + 8];
  v40 = v5;
  v42 = *(v37 + 2);
  v41 = *(v37 + 3);
  v43 = &v7[*(v40 + 72)];
  v44 = *(v43 + 1);
  v80 = *v43;
  sub_1AADA61DC(v34, v35, v36, v78);
  sub_1AADA61DC(v39, v38, v42, v41);

  sub_1AAE68240(v7, type metadata accessor for ChartContainerValues);
  *&v169 = v34;
  *(&v169 + 1) = v35;
  *&v170 = v79;
  *(&v170 + 1) = v78;
  *&v171 = v39;
  *(&v171 + 1) = v38;
  *&v172 = v42;
  *(&v172 + 1) = v41;
  *&v173 = v80;
  *(&v173 + 1) = v44;
  v174 = 0;
  v175[0] = v34;
  v175[1] = v35;
  v175[2] = v79;
  v175[3] = v78;
  v175[4] = v39;
  v175[5] = v38;
  v175[6] = v42;
  v175[7] = v41;
  v175[8] = v80;
  v175[9] = v44;
  v176 = 0;
  sub_1AAE0F994(&v169, &v96);
  sub_1AAE0F9F0(v175);
  *v31 = v90;
  *(v31 + 8) = 0;
  v45 = v190[0];
  *(v31 + 112) = v189[6];
  *(v31 + 128) = v45;
  *(v31 + 137) = *(v190 + 9);
  v46 = v189[3];
  *(v31 + 48) = v189[2];
  *(v31 + 64) = v46;
  v47 = v189[5];
  *(v31 + 80) = v189[4];
  *(v31 + 96) = v47;
  v48 = v189[1];
  *(v31 + 16) = v189[0];
  *(v31 + 32) = v48;
  v49 = v191[5];
  v50 = v192[0];
  *(v31 + 256) = v191[6];
  *(v31 + 272) = v50;
  *(v31 + 281) = *(v192 + 9);
  v51 = v191[3];
  *(v31 + 192) = v191[2];
  *(v31 + 208) = v51;
  *(v31 + 224) = v191[4];
  *(v31 + 240) = v49;
  v52 = v191[1];
  *(v31 + 160) = v191[0];
  *(v31 + 176) = v52;
  *(v31 + 304) = 0;
  *(v31 + 312) = 0;
  *(v31 + 320) = 1;
  *(v31 + 328) = 0;
  v53 = v185;
  *(v31 + 368) = v184;
  *(v31 + 384) = v53;
  *(v31 + 400) = v186;
  v54 = v183;
  *(v31 + 336) = v182;
  *(v31 + 352) = v54;
  *(v31 + 402) = v89;
  *(v31 + 408) = v88;
  *(v31 + 416) = v87;
  v55 = v180;
  *(v31 + 456) = v179;
  *(v31 + 472) = v55;
  *(v31 + 488) = v181;
  v56 = v178;
  *(v31 + 424) = v177;
  *(v31 + 440) = v56;
  v57 = v85;
  *(v31 + 496) = v84;
  *(v31 + 512) = v57;
  v58 = v83;
  *(v31 + 528) = v82;
  *(v31 + 544) = v58;
  *(v31 + 560) = v86;
  *(v31 + 568) = 0u;
  *(v31 + 584) = 0u;
  *(v31 + 600) = 0u;
  *(v31 + 616) = 0u;
  *(v31 + 632) = 124;
  *(v31 + 640) = v28;
  *(v31 + 648) = 0;
  *(v31 + 656) = 1;
  *(v31 + 664) = 0u;
  *(v31 + 680) = 0u;
  *(v31 + 696) = 1;
  v59 = v81;
  v60 = v31 + *(v81 + 76);
  *v60 = 0;
  *(v60 + 8) = 3;
  *(v31 + *(v59 + 80)) = 2;
  v61 = v31 + *(v59 + 84);
  v62 = v172;
  *(v61 + 32) = v171;
  *(v61 + 48) = v62;
  *(v61 + 64) = v173;
  *(v61 + 80) = v174;
  v63 = v170;
  *v61 = v169;
  *(v61 + 16) = v63;
  swift_storeEnumTagMultiPayload();
  sub_1AAE680CC(v189, &v96);
  sub_1AAE680CC(v189, &v96);
  sub_1AAE680CC(v191, &v96);
  sub_1AAEF2E48(v189, &v204);
  sub_1AAE680CC(v191, &v96);
  sub_1AAEF2E48(v191, &v206);
  sub_1AAE67F84(v188, &v96, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  v64 = *(&v97[0] + 1);
  if (*(&v97[0] + 1) == 2)
  {
    sub_1AAE681E4(&v96, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v64 = 1;
  }

  else
  {
    v90 = *(&v96 + 1);
    v91 = v96;
    v88 = *&v97[1];
    v89 = *&v97[0];
    v87 = BYTE8(v97[1]);
    sub_1AAE682A0(v96, *(&v96 + 1), *&v97[0], *(&v97[0] + 1));
    sub_1AAE67F28(&v96, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  }

  sub_1AAE67F84(v187, &v96, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  v65 = *(&v97[0] + 1);
  if (*(&v97[0] + 1) == 2)
  {
    sub_1AAE681E4(&v96, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
    v86 = 0;
    *&v85 = 0;
    *&v84 = 0;
    *&v83 = 0;
    LODWORD(v82) = 0;
    v65 = 1;
  }

  else
  {
    *&v85 = *(&v96 + 1);
    v86 = v96;
    *&v84 = *&v97[0];
    *&v83 = *&v97[1];
    LODWORD(v82) = BYTE8(v97[1]);
    sub_1AAE682A0(v96, *(&v96 + 1), *&v97[0], *(&v97[0] + 1));
    sub_1AAE67F28(&v96, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
  }

  if (*(&v200 + 1) >> 1 != 4294967294 || (v203 & 0x7C) != 0)
  {
    v70 = v198;
    v69 = v197;
    v71 = v196;
    v68 = v195;
    v67 = v194;
    v66 = v193;
    sub_1AAE682A0(v193, v194, v195, v196);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 1;
  }

  v147 = 0;
  v148 = 0;
  v149 = 1;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v96 = v204;
  v97[0] = v205[0];
  *(v97 + 9) = *(v205 + 9);
  v98 = v206;
  *v99 = v207[0];
  *&v99[9] = *(v207 + 9);
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v103 = xmmword_1AAF92AC0;
  v104 = 0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v108 = xmmword_1AAF92AC0;
  v109 = 0;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v113 = xmmword_1AAF92AC0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 1;
  v119 = 0;
  v120 = 0;
  v121 = v91;
  v122 = v90;
  v123 = v89;
  v124 = v64;
  v125 = v88;
  v126 = v87;
  v127 = v86;
  v128 = v85;
  v129 = v84;
  v130 = v65;
  v131 = v83;
  v132 = v82;
  v133 = v66;
  v134 = v67;
  v135 = v68;
  v136 = v71;
  v137 = v69;
  v138 = v70;
  v140 = 0;
  v139 = 0;
  v141 = 0;
  v142 = 1;
  v143 = 0;
  v144 = 0;
  v146 = 0;
  v145 = 0;
  v167 = 0;
  v168 = 0;
  v72 = v95;
  v73 = v93;
  sub_1AAE68064(v95, v93, type metadata accessor for CollectedChartContent);
  v74 = v94;
  sub_1AADFA56C(&v96, (v94 + 1));
  sub_1AAE0FAB0();
  v75 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1AAF92AB0;
  sub_1AAE68128(v73, v76 + v75, type metadata accessor for CollectedChartContent);
  sub_1AAE68190(v189);
  sub_1AAE68190(v191);
  sub_1AAE681E4(&v193, &qword_1ED9AE8C8, &qword_1ED9AE8D0, &type metadata for ResolvedSymbolSize, type metadata accessor for ResolvedModifier);
  sub_1AAD58120(&v96);
  sub_1AAE68240(v72, type metadata accessor for CollectedChartContent);
  sub_1AAE681E4(v187, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol, type metadata accessor for ResolvedModifier);
  result = sub_1AAE681E4(v188, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  *v74 = v76;
  return result;
}

unint64_t sub_1AAE66870(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_1AAE63890(a1, a2);
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9[7];
  if (v6)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  v265 = v9[6];
  v266 = v10;
  v12 = v9[8];
  v13 = v9[3];
  v261 = v9[2];
  v262 = v13;
  v14 = v9[4];
  v264 = v9[5];
  v263 = v14;
  v15 = *v9;
  v260 = v9[1];
  v259 = v15;
  v16 = v11[6];
  v17 = v11[7];
  v18 = v11[4];
  v273 = v11[5];
  v274 = v16;
  v19 = v11[8];
  v275 = v17;
  v276 = v19;
  v20 = v11[2];
  v21 = v11[3];
  v22 = *v11;
  v269 = v11[1];
  v270 = v20;
  v271 = v21;
  v272 = v18;
  v267 = v12;
  v268 = v22;
  v304 = v265;
  v305 = v266;
  v306 = v12;
  v300 = v261;
  v301 = v262;
  v303 = v264;
  v302 = v263;
  v299 = v260;
  v298 = v259;
  v321[6] = v274;
  v321[7] = v275;
  v321[8] = v276;
  v321[2] = v20;
  v321[3] = v21;
  v321[5] = v273;
  v321[4] = v18;
  v321[1] = v269;
  v321[0] = v22;
  sub_1AAD6D0FC();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AAFA9FE0;
  sub_1AAD5835C(a2, __dst);
  sub_1AAD5835C(a1, __dst);
  sub_1AAD5835C(v321, __dst);
  sub_1AAF72B20(v8, v321, v277);
  v24 = v277[7];
  *(v23 + 128) = v277[6];
  *(v23 + 144) = v24;
  *(v23 + 160) = v277[8];
  *(v23 + 176) = v278;
  v25 = v277[3];
  *(v23 + 64) = v277[2];
  *(v23 + 80) = v25;
  v26 = v277[5];
  *(v23 + 96) = v277[4];
  *(v23 + 112) = v26;
  v27 = v277[1];
  v28 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v23 + 32) = v277[0];
  *(v23 + 48) = v27;
  swift_beginAccess();
  v29 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v30 = v28 + v29[17];
  v258 = *(v30 + 64);
  v31 = *(v30 + 48);
  v256 = *(v30 + 32);
  v257 = v31;
  v32 = *v30;
  v255 = *(v30 + 16);
  v254 = v32;
  if (*(&v255 + 1))
  {
    *&v204[7] = *v30;
    v33 = *(v30 + 48);
    *&v184[8] = *(v30 + 32);
    *&v204[23] = *(v30 + 16);
    *&v184[24] = v33;
    *&v184[40] = *(v30 + 64);
    v183[0] = 5;
    *&v183[1] = *v204;
    *&v183[16] = *&v204[15];
    *v184 = *(&v255 + 1);
    v185[0] = 3;
    sub_1AAE0C0B0(v183);
    *&__dst[96] = *&v185[16];
    *&__dst[112] = v186;
    *&__dst[128] = v187;
    *&__dst[144] = v188;
    *&__dst[32] = *v184;
    *&__dst[48] = *&v184[16];
    *&__dst[64] = *&v184[32];
    *&__dst[80] = *v185;
    *__dst = *v183;
    *&__dst[16] = *&v183[16];
    nullsub_1(__dst, v34);
    v250 = *&__dst[96];
    v251 = *&__dst[112];
    v252 = *&__dst[128];
    v253 = *&__dst[144];
    v246 = *&__dst[32];
    v247 = *&__dst[48];
    v248 = *&__dst[64];
    v249 = *&__dst[80];
    v244 = *__dst;
    v245 = *&__dst[16];
  }

  else
  {
    sub_1AAE2D7EC(&v244);
  }

  v35 = v249;
  *(v23 + 248) = v248;
  v36 = v246;
  *(v23 + 232) = v247;
  *(v23 + 216) = v36;
  v37 = v252;
  v38 = v250;
  *(v23 + 296) = v251;
  *(v23 + 312) = v37;
  *(v23 + 328) = v253;
  *(v23 + 264) = v35;
  *(v23 + 280) = v38;
  v39 = v245;
  *(v23 + 184) = v244;
  *(v23 + 200) = v39;
  v40 = v28 + v29[18];
  v41 = *(v40 + 48);
  v241 = *(v40 + 32);
  v242 = v41;
  v243 = *(v40 + 64);
  v42 = *v40;
  v240 = *(v40 + 16);
  v239 = v42;
  if (*(&v240 + 1))
  {
    *&v204[7] = *v40;
    v43 = *(v40 + 48);
    *&v184[8] = *(v40 + 32);
    *&v204[23] = *(v40 + 16);
    *&v184[24] = v43;
    *&v184[40] = *(v40 + 64);
    v183[0] = 6;
    *&v183[1] = *v204;
    *&v183[16] = *&v204[15];
    *v184 = *(&v240 + 1);
    v185[0] = 3;
    sub_1AAE0C0B0(v183);
    *&__dst[96] = *&v185[16];
    *&__dst[112] = v186;
    *&__dst[128] = v187;
    *&__dst[144] = v188;
    *&__dst[32] = *v184;
    *&__dst[48] = *&v184[16];
    *&__dst[64] = *&v184[32];
    *&__dst[80] = *v185;
    *__dst = *v183;
    *&__dst[16] = *&v183[16];
    nullsub_1(__dst, v44);
    v235 = *&__dst[96];
    v236 = *&__dst[112];
    v237 = *&__dst[128];
    v238 = *&__dst[144];
    v231 = *&__dst[32];
    v232 = *&__dst[48];
    v233 = *&__dst[64];
    v234 = *&__dst[80];
    v229 = *__dst;
    v230 = *&__dst[16];
  }

  else
  {
    sub_1AAE2D7EC(&v229);
  }

  v45 = v234;
  *(v23 + 400) = v233;
  *(v23 + 416) = v45;
  v46 = v232;
  *(v23 + 368) = v231;
  *(v23 + 384) = v46;
  *(v23 + 480) = v238;
  v47 = v237;
  v48 = v235;
  *(v23 + 448) = v236;
  *(v23 + 464) = v47;
  *(v23 + 432) = v48;
  v49 = v230;
  *(v23 + 336) = v229;
  *(v23 + 352) = v49;
  v50 = v28 + v29[19];
  v51 = *(v50 + 48);
  v226 = *(v50 + 32);
  v227 = v51;
  v228 = *(v50 + 64);
  v52 = *v50;
  v225 = *(v50 + 16);
  v224 = v52;
  if (*(&v225 + 1))
  {
    *&v204[7] = *v50;
    v53 = *(v50 + 48);
    *&v184[8] = *(v50 + 32);
    *&v204[23] = *(v50 + 16);
    *&v184[24] = v53;
    *&v184[40] = *(v50 + 64);
    v183[0] = 7;
    *&v183[1] = *v204;
    *&v183[16] = *&v204[15];
    *v184 = *(&v225 + 1);
    v185[0] = 3;
    sub_1AAE0C0B0(v183);
    *&__dst[96] = *&v185[16];
    *&__dst[112] = v186;
    *&__dst[128] = v187;
    *&__dst[144] = v188;
    *&__dst[32] = *v184;
    *&__dst[48] = *&v184[16];
    *&__dst[64] = *&v184[32];
    *&__dst[80] = *v185;
    *__dst = *v183;
    *&__dst[16] = *&v183[16];
    nullsub_1(__dst, v54);
    v220 = *&__dst[96];
    v221 = *&__dst[112];
    v222 = *&__dst[128];
    v223 = *&__dst[144];
    v216 = *&__dst[32];
    v217 = *&__dst[48];
    v218 = *&__dst[64];
    v219 = *&__dst[80];
    v214 = *__dst;
    v215 = *&__dst[16];
  }

  else
  {
    sub_1AAE2D7EC(&v214);
  }

  *(v23 + 632) = v223;
  v55 = v221;
  *(v23 + 584) = v220;
  *(v23 + 600) = v55;
  *(v23 + 616) = v222;
  v56 = v217;
  *(v23 + 520) = v216;
  *(v23 + 536) = v56;
  v57 = v219;
  *(v23 + 552) = v218;
  *(v23 + 568) = v57;
  v58 = v215;
  *(v23 + 488) = v214;
  *(v23 + 504) = v58;
  v59 = MEMORY[0x1E69E6720];
  sub_1AAE67EB8(&v254, __dst, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  sub_1AAE67EB8(&v239, __dst, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v59);
  sub_1AAE67EB8(&v224, __dst, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v59);
  v60 = sub_1AAF70438(v23);
  v62 = v61;
  swift_setDeallocating();
  sub_1AAE68434(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, v59);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v322[6] = v304;
  v322[7] = v305;
  v322[8] = v306;
  v322[2] = v300;
  v322[3] = v301;
  v322[5] = v303;
  v322[4] = v302;
  v322[1] = v299;
  v322[0] = v298;
  if (sub_1AACDB99C(v322))
  {
    goto LABEL_45;
  }

  v63 = sub_1AACD2C84(v322);
  v325 = *v63;
  v64 = *(v63 + 24);
  v326 = *(v63 + 16);
  v327 = v64;
  v323 = *(v63 + 32);
  v324 = *(v63 + 48);
  v307 = v325;
  v308 = v326;
  v309 = v64;
  v310 = v323;
  v311 = v324;
  *&v312[15] = *(v63 + 64);
  *v312 = *(v63 + 49);
  v328 = v325;
  v329 = v326;
  v331 = v324;
  v330 = v323;
  v182 = v7;
  v180 = v60;
  v181 = v62;
  if (!v7)
  {
    swift_beginAccess();
    memcpy(__dst, (a3 + 80), sizeof(__dst));
    if (*&__dst[112])
    {
      v74 = *(a3 + 216);
      v195 = *(a3 + 200);
      v196 = v74;
      v197 = *(a3 + 232);
      v198[0] = *(a3 + 248);
      v75 = *(a3 + 184);
      v193 = *(a3 + 168);
      v194 = v75;
      sub_1AAE14D50(&v330, v183);
      sub_1AAD5835C(&v298, v183);

      sub_1AADFA6FC(&v328, v183);
      sub_1AAE67EB8(&v327, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      v284 = v195;
      v285 = v196;
      v286 = v197;
      LOBYTE(v287) = v198[0];
      v282 = v193;
      v283 = v194;
LABEL_23:
      v76 = *(&v286 + 1);
      v77 = v284;
      v78 = v285;
      v79 = v287;
      sub_1AAE67EB8(&__dst[88], v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v282, v183);
      sub_1AAE0A738(v77, *(&v77 + 1), v78, v76, v79, 4, &v279);
      v175 = v280;
      v178 = v279;
      v80 = v281;
      sub_1AAE0C014(&v282);
      sub_1AAD04750(v282, *(&v282 + 1), v283);

      sub_1AAD0E818(v77, *(&v77 + 1), v78);
      v82 = v175;
      v81 = v178;
LABEL_39:
      v88 = v28 + v29[22];
      v89 = *(v88 + 16);
      v315 = *v88;
      v316 = v89;
      v317 = v81;
      v318 = v82;
      v319 = v80;
      v320 = *(a3 + 368);
      v87 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
      goto LABEL_40;
    }

    if (__dst[257] == 2)
    {
      sub_1AAE14D50(&v330, v183);
      sub_1AAD5835C(&v298, v183);

      sub_1AADFA6FC(&v328, v183);
      sub_1AAE67EB8(&v327, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v330, v183);
      sub_1AAD5835C(&v298, v183);

      sub_1AADFA6FC(&v328, v183);
      sub_1AAE67EB8(&v327, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(__dst, v183);
      v84 = sub_1AAF8E7A4();
      if (v84 == sub_1AAF8E7A4())
      {
        sub_1AAE67EB8(&__dst[176], v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*&__dst[200])
        {
          v282 = *&__dst[176];
          v283 = *&__dst[192];
          v284 = *&__dst[208];
          v285 = *&__dst[224];
          v286 = *&__dst[240];
          LOBYTE(v287) = __dst[256];
          goto LABEL_23;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v81 = 0uLL;
    v80 = 2;
    v82 = 0uLL;
    goto LABEL_39;
  }

  swift_beginAccess();
  memcpy(__dst, (a3 + 80), sizeof(__dst));
  if (!*&__dst[24])
  {
    if (__dst[257] == 2)
    {
      sub_1AAE14D50(&v330, v183);
      sub_1AAD5835C(&v298, v183);

      sub_1AADFA6FC(&v328, v183);
      sub_1AAE67EB8(&v327, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v330, v183);
      sub_1AAD5835C(&v298, v183);

      sub_1AADFA6FC(&v328, v183);
      sub_1AAE67EB8(&v327, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(__dst, v183);
      v83 = sub_1AAF8E7A4();
      if (v83 == sub_1AAF8E7A4())
      {
        sub_1AAE67EB8(&__dst[176], v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*&__dst[200])
        {
          v282 = *&__dst[176];
          v283 = *&__dst[192];
          v284 = *&__dst[208];
          v285 = *&__dst[224];
          v286 = *&__dst[240];
          LOBYTE(v287) = __dst[256];
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v72 = 0uLL;
    v71 = 2;
    v73 = 0uLL;
    goto LABEL_36;
  }

  v65 = *(a3 + 128);
  v195 = *(a3 + 112);
  v196 = v65;
  v197 = *(a3 + 144);
  v198[0] = *(a3 + 160);
  v66 = *(a3 + 96);
  v193 = *(a3 + 80);
  v194 = v66;
  sub_1AAE14D50(&v330, v183);
  sub_1AAD5835C(&v298, v183);

  sub_1AADFA6FC(&v328, v183);
  sub_1AAE67EB8(&v327, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  v284 = v195;
  v285 = v196;
  v286 = v197;
  LOBYTE(v287) = v198[0];
  v282 = v193;
  v283 = v194;
LABEL_20:
  v67 = *(&v286 + 1);
  v68 = v284;
  v69 = v285;
  v70 = v287;
  sub_1AAE67EB8(__dst, v183, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  sub_1AAE0BFDC(&v282, v183);
  sub_1AAE0A738(v68, *(&v68 + 1), v69, v67, v70, 3, &v279);
  v174 = v280;
  v177 = v279;
  v71 = v281;
  sub_1AAE0C014(&v282);
  sub_1AAD04750(v282, *(&v282 + 1), v283);

  sub_1AAD0E818(v68, *(&v68 + 1), v69);
  v73 = v174;
  v72 = v177;
LABEL_36:
  v85 = v28 + v29[21];
  v86 = *(v85 + 16);
  v315 = *v85;
  v316 = v86;
  v317 = v72;
  v318 = v73;
  v319 = v71;
  v320 = *(a3 + 352);
  v87 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
LABEL_40:
  v90 = (a3 + *v87);
  v91 = v90[5];
  v197 = v90[4];
  *v198 = v91;
  *&v198[9] = *(v90 + 89);
  v92 = v90[1];
  v193 = *v90;
  v194 = v92;
  v93 = v90[3];
  v195 = v90[2];
  v196 = v93;
  if (v198[24] == 255)
  {

    sub_1AAD6E0DC(&v328);
    sub_1AAE67F28(&v327, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v330);
    sub_1AAE49270(v183);
    v211 = v187;
    v212 = v188;
    v213 = v189;
    v207 = *&v184[32];
    v208 = *v185;
    v210 = v186;
    v209 = *&v185[16];
    *v204 = *v183;
    *&v204[16] = *&v183[16];
    v205 = *v184;
    v206 = *&v184[16];
  }

  else
  {
    v94 = v90[5];
    *&v184[32] = v90[4];
    *v185 = v94;
    *&v185[9] = *(v90 + 89);
    v95 = v90[1];
    *v183 = *v90;
    *&v183[16] = v95;
    v96 = v90[3];
    *v184 = v90[2];
    *&v184[16] = v96;
    v313[0] = *v183;
    v313[1] = v95;
    v313[2] = *v184;
    v313[3] = v96;
    v313[4] = *&v184[32];
    v314[0] = v94;
    *(v314 + 9) = *&v185[9];
    v97 = MEMORY[0x1E69E7DE0];
    sub_1AAE67EB8(v183, v291, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    sub_1AAE08D1C(v313, a3, !v182, &v307, v204);
    sub_1AAE681E4(&v193, &qword_1ED9B3E30, &qword_1ED9B3E38, v97, type metadata accessor for AnyConcreteScale);
    nullsub_1(v204, v98);

    sub_1AAD6E0DC(&v328);
    sub_1AAE67F28(&v327, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v330);
  }

  *&__dst[128] = v211;
  *&__dst[144] = v212;
  *&__dst[160] = v213;
  *&__dst[64] = v207;
  *&__dst[80] = v208;
  *&__dst[96] = v209;
  *&__dst[112] = v210;
  *__dst = *v204;
  *&__dst[16] = *&v204[16];
  *&__dst[32] = v205;
  *&__dst[48] = v206;
  if (sub_1AAE492A8(__dst) == 1)
  {
    sub_1AAD6E0DC(&v328);
    sub_1AAE67F28(&v327, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v330);
LABEL_45:

    sub_1AADC7F60(v321);
    sub_1AADC7F60(&v298);
    return 0xE000000000000000;
  }

  v100 = a1[7];
  v291[6] = a1[6];
  v291[7] = v100;
  v291[8] = a1[8];
  v101 = a1[3];
  v291[2] = a1[2];
  v291[3] = v101;
  v102 = a1[4];
  v291[5] = a1[5];
  v291[4] = v102;
  v103 = *a1;
  v291[1] = a1[1];
  v291[0] = v103;
  v104 = sub_1AACDB99C(v291);
  v105 = sub_1AACD2C84(v291);
  if ((v104 - 2) < 4)
  {
    goto LABEL_47;
  }

  if (v104)
  {
    v107 = v182;
    if (*(v105 + 8))
    {
      v134 = (*(a3 + 24) + *(a3 + 32)) * 0.5;
    }

    else
    {
      v134 = *v105;
    }

    v106 = v134 + *(v28 + v29[21]);
    goto LABEL_49;
  }

  v115 = *(v105 + 24);
  v116 = *(v105 + 32);
  v117 = *(v105 + 40);
  v118 = *(v105 + 16);
  v293 = *v105;
  v294 = v118;
  v292 = v115;
  v119 = *(v105 + 48);

  v120 = MEMORY[0x1E69E62F8];
  sub_1AAE67EB8(&v292, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AADFA6FC(&v293, v183);
  sub_1AACD7C50(v116, v117, v119);
  *&v121 = COERCE_DOUBLE(sub_1AAE0B2C8(0, a3, v116, v117, v119));
  v123 = v122;
  sub_1AAD6E0DC(&v293);
  sub_1AAE67F28(&v292, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v120);
  sub_1AAD0E818(v116, v117, v119);

  if (v123)
  {
LABEL_47:
    v106 = NAN;
  }

  else
  {
    v106 = *&v121;
  }

  v107 = v182;
LABEL_49:
  v108 = a2[7];
  v288 = a2[6];
  v289 = v108;
  v290 = a2[8];
  v109 = a2[3];
  v284 = a2[2];
  v285 = v109;
  v110 = a2[4];
  v287 = a2[5];
  v286 = v110;
  v111 = *a2;
  v283 = a2[1];
  v282 = v111;
  v112 = sub_1AACDB99C(&v282);
  v113 = sub_1AACD2C84(&v282);
  if ((v112 - 2) >= 4)
  {
    if (v112)
    {
      if (*(v113 + 8))
      {
        v135 = (*(a3 + 40) + *(a3 + 48)) * 0.5;
      }

      else
      {
        v135 = *v113;
      }

      v114 = v135 + *(v28 + v29[22]);
    }

    else
    {
      v124 = *(v113 + 24);
      v125 = *(v113 + 32);
      v126 = *(v113 + 40);
      v127 = *(v113 + 16);
      v296 = *v113;
      v297 = v127;
      v295 = v124;
      v128 = *(v113 + 48);

      v129 = MEMORY[0x1E69810C8];
      v130 = MEMORY[0x1E69E62F8];
      sub_1AAE67EB8(&v295, v183, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AADFA6FC(&v296, v183);
      sub_1AACD7C50(v125, v126, v128);
      *&v131 = COERCE_DOUBLE(sub_1AAE0B2C8(1, a3, v125, v126, v128));
      v133 = v132;
      sub_1AAD6E0DC(&v296);
      sub_1AAE67F28(&v295, &qword_1ED9B1E40, v129, v130);
      sub_1AAD0E818(v125, v126, v128);

      if (v133)
      {
        v114 = NAN;
      }

      else
      {
        v114 = *&v131;
      }

      v107 = v182;
    }
  }

  else
  {
    v114 = NAN;
  }

  v136 = *(v28 + 152);
  if (v136 == 255)
  {
    v137 = 50.2654825;
    goto LABEL_71;
  }

  v137 = *(v28 + 136);
  if ((v136 & 1) == 0)
  {
LABEL_71:
    v138 = sqrt(v137);
    v137 = v138;
    goto LABEL_72;
  }

  v138 = *(v28 + 144);
LABEL_72:
  if (*(v28 + v29[26]) == 1)
  {
    v139 = v106 - v137 * 0.5;
    v140 = v114 - v138 * 0.5;
  }

  else if (v107)
  {
    if (*&__dst[8] >= *__dst)
    {
      v139 = *__dst;
    }

    else
    {
      v139 = *&__dst[8];
    }

    v141 = *(a3 + 40);
    v142 = *(a3 + 48);
    if (v142 >= v141)
    {
      v140 = *(a3 + 40);
    }

    else
    {
      v140 = *(a3 + 48);
    }

    v137 = vabdd_f64(*&__dst[8], *__dst);
    v138 = vabdd_f64(v142, v141);
  }

  else
  {
    v143 = *(a3 + 24);
    v144 = *(a3 + 32);
    if (v144 >= v143)
    {
      v139 = *(a3 + 24);
    }

    else
    {
      v139 = *(a3 + 32);
    }

    if (*&__dst[8] >= *__dst)
    {
      v140 = *__dst;
    }

    else
    {
      v140 = *&__dst[8];
    }

    v137 = vabdd_f64(v144, v143);
    v138 = vabdd_f64(*&__dst[8], *__dst);
  }

  v179 = *(*(a3 + 16) + 24);
  v145 = (v28 + v29[25]);
  v146 = v145[1];
  v147 = (v28 + v29[23]);
  v148 = *v147;
  v149 = v147[1];
  v151 = v147[2];
  v150 = v147[3];
  v152 = (v28 + v29[24]);
  v154 = *v152;
  v153 = v152[1];
  v155 = v152[2];
  v156 = v152[3];
  v176 = *v145;

  sub_1AADA61DC(v148, v149, v151, v150);
  sub_1AADA61DC(v154, v153, v155, v156);

  sub_1AAF72B20(!v182, &v298, v191);
  sub_1AADC7F60(v321);
  sub_1AAD6E0DC(&v328);
  sub_1AAE67F28(&v327, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AAD6E18C(&v330);

  *&v198[16] = *&__dst[112];
  v199 = *&__dst[128];
  v200 = *&__dst[144];
  v201 = *&__dst[160];
  v195 = *&__dst[48];
  v196 = *&__dst[64];
  v197 = *&__dst[80];
  *v198 = *&__dst[96];
  v193 = *&__dst[16];
  v194 = *&__dst[32];
  nullsub_1(&v193, v157);
  sub_1AAE2D7EC(v183);
  v158 = swift_allocObject();
  *(v158 + 16) = v179;
  *(v158 + 24) = v139;
  *(v158 + 32) = v140;
  *&v159 = v176;
  *(&v159 + 1) = v146;
  *&v160 = v148;
  *(&v160 + 1) = v149;
  *(v158 + 40) = v137;
  *(v158 + 48) = v138;
  *(v158 + 72) = v160;
  *(v158 + 56) = v159;
  *&v160 = v151;
  *(&v160 + 1) = v150;
  *&v159 = v154;
  *(&v159 + 1) = v153;
  *(v158 + 104) = v159;
  *(v158 + 88) = v160;
  *(v158 + 120) = v155;
  *(v158 + 128) = v156;
  *(v158 + 136) = v180;
  v161 = v191[7];
  *(v158 + 240) = v191[6];
  *(v158 + 256) = v161;
  *(v158 + 272) = v191[8];
  v162 = v192;
  v163 = v191[3];
  *(v158 + 176) = v191[2];
  *(v158 + 192) = v163;
  v164 = v191[5];
  *(v158 + 208) = v191[4];
  *(v158 + 224) = v164;
  v165 = v191[1];
  *(v158 + 144) = v191[0];
  *(v158 + 160) = v165;
  *(v158 + 288) = v162;
  *(v158 + 296) = v181;
  v166 = v199;
  *(v158 + 400) = *&v198[16];
  *(v158 + 416) = v166;
  *(v158 + 432) = v200;
  *(v158 + 448) = v201;
  v167 = v196;
  *(v158 + 336) = v195;
  *(v158 + 352) = v167;
  v168 = *v198;
  *(v158 + 368) = v197;
  *(v158 + 384) = v168;
  v169 = v194;
  *(v158 + 304) = v193;
  *(v158 + 320) = v169;
  v170 = v186;
  *(v158 + 552) = *&v185[16];
  *(v158 + 568) = v170;
  *(v158 + 584) = v187;
  *(v158 + 600) = v188;
  v171 = *&v184[16];
  *(v158 + 488) = *v184;
  *(v158 + 504) = v171;
  v172 = *v185;
  *(v158 + 520) = *&v184[32];
  *(v158 + 536) = v172;
  v173 = *&v183[16];
  *(v158 + 456) = *v183;
  *(v158 + 472) = v173;
  *(v158 + 608) = 0;
  *(v158 + 610) = v202;
  *(v158 + 614) = v203;
  *(v158 + 616) = 0;
  return v158 | 0xC000000000000000;
}

uint64_t sub_1AAE67EB8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE68434(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE67F28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAE68434(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAE67F84(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAE68008(0, a3, a4, a5, type metadata accessor for ResolvedModifier);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAE68008(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AAE68434(255, a3, a4, a5);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAE68064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE68128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE681E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE68008(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AAE68240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAE682A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1AAE682F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE68344(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 424) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 432) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AAE68434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t PointPlot<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800(v2, v4, a2);
  sub_1AACE0800(v7, v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAE6856C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17 = a8;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v9 = type metadata accessor for XYRenderer();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(v10 + 16))(&v16 - v12, a1, v9, v11);
  v14 = sub_1AAE686B0(v13, v17);
  return (*(v10 + 8))(a1, v9, v14);
}

double sub_1AAE686B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XYRenderer();
  *(a2 + 24) = v4;
  *(a2 + 32) = &off_1F1FE53F0;
  v5 = sub_1AACB2508(a2);
  (*(*(v4 - 8) + 32))(v5, a1, v4);
  v6 = type metadata accessor for PointsRenderer(0);
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  v7 = v6[8];
  v8 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a2 + v6[9];
  *(v9 + 32) = 0;
  result = 0.0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 40) = -1;
  v11 = a2 + v6[10];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = -1;
  return result;
}

uint64_t PointPlot.init<A, B, C>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a3;
  v56 = a9;
  v57 = a1;
  v58 = a2;
  v51 = a7;
  swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v15;
  v16 = a5;
  v17 = a8;
  v50 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v50);
  v19 = &v44 - v18;
  v52 = *(a4 - 8);
  v20 = v52;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v23;
  v48 = a4;
  v59 = a4;
  v60 = v16;
  v61 = a6;
  v62 = a7;
  v63 = v17;
  v64 = a10;
  v46 = v17;
  v24 = type metadata accessor for XYRenderer();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v44 - v26;
  (*(v20 + 16))(v23, v57, a4, v25);
  v28 = v16;
  v49 = type metadata accessor for PlottableProjection();
  v29 = *(v49 - 8);
  (*(v29 + 16))(v19, v58, v49);
  swift_storeEnumTagMultiPayload();
  v30 = a6;
  v45 = a10;
  v31 = type metadata accessor for PlottableProjection();
  v32 = *(v31 - 8);
  v33 = v53;
  v34 = v55;
  (*(v32 + 16))(v53, v55, v31);
  swift_storeEnumTagMultiPayload();
  v35 = v27;
  v36 = v27;
  v37 = v19;
  v38 = v33;
  v39 = v48;
  v40 = v28;
  v41 = v51;
  v42 = v46;
  sub_1AAF314E0(v47, v37, v38, v48, v36);
  sub_1AAE6856C(v35, v39, v40, v30, v41, v42, v45, v56);
  (*(v32 + 8))(v34, v31);
  (*(v29 + 8))(v58, v49);
  return (*(v52 + 8))(v57, v39);
}

uint64_t PointPlot.init<A, B>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a4;
  v42 = a2;
  v43 = a3;
  v45 = a9;
  v46 = a1;
  v39 = a7;
  swift_getAssociatedTypeWitness();
  v41 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v37 - v13;
  v40 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v40);
  v16 = &v37 - v15;
  v38 = *(a5 - 8);
  v17 = v38;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a5;
  v48 = a6;
  v49 = MEMORY[0x1E69E63B0];
  v50 = a7;
  v37 = a8;
  v51 = a8;
  v52 = &protocol witness table for Double;
  v21 = type metadata accessor for XYRenderer();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v37 - v23;
  v25 = *(v17 + 16);
  v26 = a5;
  v25(v20, v46, a5, v22);
  v27 = a6;
  v28 = type metadata accessor for PlottableProjection();
  v29 = *(v28 - 8);
  v30 = v42;
  (*(v29 + 16))(v16, v42, v28);
  swift_storeEnumTagMultiPayload();
  *v14 = v43;
  v14[8] = v44 & 1;
  swift_storeEnumTagMultiPayload();
  v31 = v20;
  v32 = v14;
  v33 = MEMORY[0x1E69E63B0];
  v34 = v39;
  v35 = v37;
  sub_1AAF314E0(v31, v16, v32, v26, v24);
  sub_1AAE6856C(v24, v26, v27, v33, v34, v35, &protocol witness table for Double, v45);
  (*(v29 + 8))(v30, v28);
  return (*(v38 + 8))(v46, v26);
}

uint64_t PointPlot.init<A, B>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a6;
  v38 = a2;
  v39 = a3;
  v40 = a8;
  v41 = a1;
  v37 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v37);
  v13 = (&v34 - v12);
  v36 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v36);
  v15 = &v34 - v14;
  v34 = *(a4 - 8);
  v16 = v34;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a4;
  v43 = a5;
  v20 = a4;
  v44 = MEMORY[0x1E69E63B0];
  v45 = a6;
  v46 = a7;
  v47 = &protocol witness table for Double;
  v21 = type metadata accessor for XYRenderer();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v34 - v23;
  (*(v16 + 16))(v19, v41, a4, v22);
  v25 = a7;
  v26 = type metadata accessor for PlottableProjection();
  v27 = *(v26 - 8);
  v28 = v38;
  (*(v27 + 16))(v15, v38, v26);
  swift_storeEnumTagMultiPayload();
  *v13 = v39;
  swift_storeEnumTagMultiPayload();
  v29 = v19;
  v30 = v15;
  v31 = MEMORY[0x1E69E63B0];
  v32 = v35;
  sub_1AAF314E0(v29, v30, v13, v20, v24);
  sub_1AAE6856C(v24, v20, a5, v31, v32, v25, &protocol witness table for Double, v40);
  (*(v27 + 8))(v28, v26);
  return (*(v34 + 8))(v41, v20);
}

{
  v35 = a6;
  v36 = a2;
  v38 = a3;
  v39 = a8;
  v40 = a1;
  v37 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v33 - v12;
  v14 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - v15);
  v34 = *(a4 - 8);
  v17 = v34;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a4;
  v42 = MEMORY[0x1E69E63B0];
  v43 = a5;
  v44 = a6;
  v45 = &protocol witness table for Double;
  v46 = a7;
  v21 = type metadata accessor for XYRenderer();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v33 - v23;
  (*(v17 + 16))(v20, v40, a4, v22);
  *v16 = v36;
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for PlottableProjection();
  v26 = *(v25 - 8);
  v27 = v38;
  (*(v26 + 16))(v13, v38, v25);
  swift_storeEnumTagMultiPayload();
  v28 = v20;
  v29 = v13;
  v30 = MEMORY[0x1E69E63B0];
  v31 = v35;
  sub_1AAF314E0(v28, v16, v29, a4, v24);
  sub_1AAE6856C(v24, a4, v30, a5, v31, &protocol witness table for Double, a7, v39);
  (*(v26 + 8))(v27, v25);
  return (*(v34 + 8))(v40, a4);
}

uint64_t PointPlot.init<A, B>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a4;
  v40 = a9;
  v37 = a3;
  v35 = a7;
  v36 = a2;
  v41 = a1;
  swift_getAssociatedTypeWitness();
  v38 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v34 = *(a5 - 8);
  v18 = v34;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a5;
  v43 = MEMORY[0x1E69E63B0];
  v44 = a6;
  v45 = a7;
  v46 = &protocol witness table for Double;
  v47 = a8;
  v22 = type metadata accessor for XYRenderer();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v34 - v24;
  (*(v18 + 16))(v21, v41, a5, v23);
  *v17 = v36;
  v17[8] = v37 & 1;
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PlottableProjection();
  v27 = *(v26 - 8);
  v28 = v39;
  (*(v27 + 16))(v14, v39, v26);
  swift_storeEnumTagMultiPayload();
  v29 = v21;
  v30 = v17;
  v31 = MEMORY[0x1E69E63B0];
  v32 = v35;
  sub_1AAF314E0(v29, v30, v14, a5, v25);
  sub_1AAE6856C(v25, a5, v31, a6, v32, &protocol witness table for Double, a8, v40);
  (*(v27 + 8))(v28, v26);
  return (*(v34 + 8))(v41, a5);
}

uint64_t static VectorizedPointPlotContent._layoutChartContent(_:_:)(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1AACBB42C(a1, v3);
  v6 = *a2;
  return (*(v4 + 8))(&v6, v3, v4);
}

uint64_t static VectorizedPointPlotContent._renderChartContent(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AACE4ACC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 8);
  sub_1AAE69C70(a1, v11);
  v32[0] = v12;
  v33 = v13;
  sub_1AAF52A00(v32);
  if (v12)
  {
    v14 = type metadata accessor for SgGroup(0);
    v31 = a3;
    v15 = v14;
    v16 = swift_allocBox();
    v18 = v17;
    v30 = *(*(v13 + 16) + 24);
    v20 = a1[3];
    v19 = a1[4];
    sub_1AACBB42C(a1, v20);
    v21 = (*(v19 + 32))(&type metadata for PointMark, v13, &type metadata for PointMark, &off_1F1FDA4E0, v20, v19);
    v22 = type metadata accessor for SgClipRect(0);
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = v13 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v24 = *(v23 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 64));
    sub_1AAE69CD4(v11);
    *v18 = v30;
    v18[1] = v21;
    result = sub_1AAE69D30(v8, v18 + v15[6], sub_1AACE4ACC);
    *(v18 + v15[7]) = 0x3FF0000000000000;
    *(v18 + v15[8]) = v24;
    *(v18 + v15[9]) = MEMORY[0x1E69E7CC0];
    v26 = v15[10];
    a3 = v31;
    *(v18 + v26) = 0;
  }

  else
  {
    type metadata accessor for AnyVectorizedRenderer(0);
    v27 = swift_allocBox();
    sub_1AAE69D30(v11, v28, type metadata accessor for PointsRenderer);
    type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
    result = swift_storeEnumTagMultiPayload();
    v16 = v27 | 0xD000000000000000;
  }

  *a3 = v16;
  return result;
}

uint64_t sub_1AAE69C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PointsRenderer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE69CD4(uint64_t a1)
{
  v2 = type metadata accessor for PointsRenderer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE69D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE69DE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE69E54()
{
  result = type metadata accessor for PointsRenderer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 RectangleMark.init<A, B>(x:y:width:height:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *&v36[0] = 0;
  BYTE8(v36[0]) = 1;
  sub_1AAD59F90(v36);
  v19 = v36[7];
  *(a9 + 384) = v36[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v36[8];
  v20 = v36[3];
  *(a9 + 320) = v36[2];
  *(a9 + 336) = v20;
  v21 = v36[5];
  *(a9 + 352) = v36[4];
  *(a9 + 368) = v21;
  v22 = v36[1];
  *(a9 + 288) = v36[0];
  *(a9 + 304) = v22;
  sub_1AAE83EF8(a1, a3, a4, a7, a10, v34);
  v23 = v34[7];
  *(a9 + 96) = v34[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v34[8];
  v24 = v34[3];
  *(a9 + 32) = v34[2];
  *(a9 + 48) = v24;
  v25 = v34[5];
  *(a9 + 64) = v34[4];
  *(a9 + 80) = v25;
  v26 = v34[1];
  *a9 = v34[0];
  *(a9 + 16) = v26;
  sub_1AAE83EF8(a2, a5, a6, a8, a11, v35);
  v27 = type metadata accessor for PlottableValue();
  (*(*(v27 - 8) + 8))(a2, v27);
  v28 = type metadata accessor for PlottableValue();
  (*(*(v28 - 8) + 8))(a1, v28);
  v29 = v35[7];
  *(a9 + 240) = v35[6];
  *(a9 + 256) = v29;
  *(a9 + 272) = v35[8];
  v30 = v35[3];
  *(a9 + 176) = v35[2];
  *(a9 + 192) = v30;
  v31 = v35[5];
  *(a9 + 208) = v35[4];
  *(a9 + 224) = v31;
  result = v35[1];
  *(a9 + 144) = v35[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(x:yStart:yEnd:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v33[0] = 0;
  BYTE8(v33[0]) = 1;
  sub_1AAD59F90(v33);
  v19 = v33[7];
  *(a9 + 384) = v33[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v33[8];
  v20 = v33[3];
  *(a9 + 320) = v33[2];
  *(a9 + 336) = v20;
  v21 = v33[5];
  *(a9 + 352) = v33[4];
  *(a9 + 368) = v21;
  v22 = v33[1];
  *(a9 + 288) = v33[0];
  *(a9 + 304) = v22;
  sub_1AAE83EF8(a1, a6, a7, a8, a10, v32);
  v23 = type metadata accessor for PlottableValue();
  (*(*(v23 - 8) + 8))(a1, v23);
  v24 = v32[7];
  *(a9 + 96) = v32[6];
  *(a9 + 112) = v24;
  *(a9 + 128) = v32[8];
  v25 = v32[3];
  *(a9 + 32) = v32[2];
  *(a9 + 48) = v25;
  v26 = v32[5];
  *(a9 + 64) = v32[4];
  *(a9 + 80) = v26;
  v27 = v32[1];
  *a9 = v32[0];
  *(a9 + 16) = v27;
  *&v34 = a2;
  BYTE8(v34) = a3 & 1;
  v35.n128_u64[0] = a4;
  v35.n128_u8[8] = a5 & 1;
  sub_1AAE52D28(&v34);
  v28 = v41;
  *(a9 + 240) = v40;
  *(a9 + 256) = v28;
  *(a9 + 272) = v42;
  v29 = v37;
  *(a9 + 176) = v36;
  *(a9 + 192) = v29;
  v30 = v39;
  *(a9 + 208) = v38;
  *(a9 + 224) = v30;
  result = v35;
  *(a9 + 144) = v34;
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(xStart:xEnd:y:height:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v33[0] = 0;
  BYTE8(v33[0]) = 1;
  sub_1AAD59F90(v33);
  v19 = v33[7];
  *(a9 + 384) = v33[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v33[8];
  v20 = v33[3];
  *(a9 + 320) = v33[2];
  *(a9 + 336) = v20;
  v21 = v33[5];
  *(a9 + 352) = v33[4];
  *(a9 + 368) = v21;
  v22 = v33[1];
  *(a9 + 288) = v33[0];
  *(a9 + 304) = v22;
  *&v34 = a1;
  BYTE8(v34) = a2 & 1;
  *&v35 = a3;
  BYTE8(v35) = a4 & 1;
  sub_1AAE52D28(&v34);
  v23 = v41;
  *(a9 + 96) = v40;
  *(a9 + 112) = v23;
  *(a9 + 128) = v42;
  v24 = v37;
  *(a9 + 32) = v36;
  *(a9 + 48) = v24;
  v25 = v39;
  *(a9 + 64) = v38;
  *(a9 + 80) = v25;
  v26 = v35;
  *a9 = v34;
  *(a9 + 16) = v26;
  sub_1AAE83EF8(a5, a6, a7, a8, a10, v32);
  v27 = type metadata accessor for PlottableValue();
  (*(*(v27 - 8) + 8))(a5, v27);
  v28 = v32[7];
  *(a9 + 240) = v32[6];
  *(a9 + 256) = v28;
  *(a9 + 272) = v32[8];
  v29 = v32[3];
  *(a9 + 176) = v32[2];
  *(a9 + 192) = v29;
  v30 = v32[5];
  *(a9 + 208) = v32[4];
  *(a9 + 224) = v30;
  result = v32[1];
  *(a9 + 144) = v32[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A, B>(xStart:xEnd:y:height:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v36[0] = 0;
  BYTE8(v36[0]) = 1;
  sub_1AAD59F90(v36);
  v19 = v36[7];
  *(a9 + 384) = v36[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v36[8];
  v20 = v36[3];
  *(a9 + 320) = v36[2];
  *(a9 + 336) = v20;
  v21 = v36[5];
  *(a9 + 352) = v36[4];
  *(a9 + 368) = v21;
  v22 = v36[1];
  *(a9 + 288) = v36[0];
  *(a9 + 304) = v22;
  sub_1AAE83D50(a1, a2, a6, a8, v34);
  v23 = v34[7];
  *(a9 + 96) = v34[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v34[8];
  v24 = v34[3];
  *(a9 + 32) = v34[2];
  *(a9 + 48) = v24;
  v25 = v34[5];
  *(a9 + 64) = v34[4];
  *(a9 + 80) = v25;
  v26 = v34[1];
  *a9 = v34[0];
  *(a9 + 16) = v26;
  sub_1AAE83EF8(a3, a4, a5, a7, a10, v35);
  v27 = type metadata accessor for PlottableValue();
  (*(*(v27 - 8) + 8))(a3, v27);
  v28 = type metadata accessor for PlottableValue();
  v29 = *(*(v28 - 8) + 8);
  v29(a2, v28);
  v29(a1, v28);
  v30 = v35[7];
  *(a9 + 240) = v35[6];
  *(a9 + 256) = v30;
  *(a9 + 272) = v35[8];
  v31 = v35[3];
  *(a9 + 176) = v35[2];
  *(a9 + 192) = v31;
  v32 = v35[5];
  *(a9 + 208) = v35[4];
  *(a9 + 224) = v32;
  result = v35[1];
  *(a9 + 144) = v35[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v33[0] = 0;
  BYTE8(v33[0]) = 1;
  sub_1AAD59F90(v33);
  v18 = v33[7];
  *(a9 + 384) = v33[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v33[8];
  v19 = v33[3];
  *(a9 + 320) = v33[2];
  *(a9 + 336) = v19;
  v20 = v33[5];
  *(a9 + 352) = v33[4];
  *(a9 + 368) = v20;
  v21 = v33[1];
  *(a9 + 288) = v33[0];
  *(a9 + 304) = v21;
  sub_1AAE83D50(a1, a2, a7, a8, v32);
  v22 = type metadata accessor for PlottableValue();
  v23 = *(*(v22 - 8) + 8);
  v23(a2, v22);
  v23(a1, v22);
  v24 = v32[7];
  *(a9 + 96) = v32[6];
  *(a9 + 112) = v24;
  *(a9 + 128) = v32[8];
  v25 = v32[3];
  *(a9 + 32) = v32[2];
  *(a9 + 48) = v25;
  v26 = v32[5];
  *(a9 + 64) = v32[4];
  *(a9 + 80) = v26;
  v27 = v32[1];
  *a9 = v32[0];
  *(a9 + 16) = v27;
  *&v34 = a3;
  BYTE8(v34) = a4 & 1;
  v35.n128_u64[0] = a5;
  v35.n128_u8[8] = a6 & 1;
  sub_1AAE52D28(&v34);
  v28 = v41;
  *(a9 + 240) = v40;
  *(a9 + 256) = v28;
  *(a9 + 272) = v42;
  v29 = v37;
  *(a9 + 176) = v36;
  *(a9 + 192) = v29;
  v30 = v39;
  *(a9 + 208) = v38;
  *(a9 + 224) = v30;
  result = v35;
  *(a9 + 144) = v34;
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A, B>(x:yStart:yEnd:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v36[0] = 0;
  BYTE8(v36[0]) = 1;
  sub_1AAD59F90(v36);
  v19 = v36[7];
  *(a9 + 384) = v36[6];
  *(a9 + 400) = v19;
  *(a9 + 416) = v36[8];
  v20 = v36[3];
  *(a9 + 320) = v36[2];
  *(a9 + 336) = v20;
  v21 = v36[5];
  *(a9 + 352) = v36[4];
  *(a9 + 368) = v21;
  v22 = v36[1];
  *(a9 + 288) = v36[0];
  *(a9 + 304) = v22;
  sub_1AAE83EF8(a1, a4, a5, a6, a8, v34);
  v23 = v34[7];
  *(a9 + 96) = v34[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v34[8];
  v24 = v34[3];
  *(a9 + 32) = v34[2];
  *(a9 + 48) = v24;
  v25 = v34[5];
  *(a9 + 64) = v34[4];
  *(a9 + 80) = v25;
  v26 = v34[1];
  *a9 = v34[0];
  *(a9 + 16) = v26;
  sub_1AAE83D50(a2, a3, a7, a10, v35);
  v27 = type metadata accessor for PlottableValue();
  v28 = *(*(v27 - 8) + 8);
  v28(a3, v27);
  v28(a2, v27);
  v29 = type metadata accessor for PlottableValue();
  (*(*(v29 - 8) + 8))(a1, v29);
  v30 = v35[7];
  *(a9 + 240) = v35[6];
  *(a9 + 256) = v30;
  *(a9 + 272) = v35[8];
  v31 = v35[3];
  *(a9 + 176) = v35[2];
  *(a9 + 192) = v31;
  v32 = v35[5];
  *(a9 + 208) = v35[4];
  *(a9 + 224) = v32;
  result = v35[1];
  *(a9 + 144) = v35[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v33[0] = 0;
  BYTE8(v33[0]) = 1;
  sub_1AAD59F90(v33);
  v18 = v33[7];
  *(a9 + 384) = v33[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v33[8];
  v19 = v33[3];
  *(a9 + 320) = v33[2];
  *(a9 + 336) = v19;
  v20 = v33[5];
  *(a9 + 352) = v33[4];
  *(a9 + 368) = v20;
  v21 = v33[1];
  *(a9 + 288) = v33[0];
  *(a9 + 304) = v21;
  *&v34 = a1;
  BYTE8(v34) = a2 & 1;
  *&v35 = a3;
  BYTE8(v35) = a4 & 1;
  sub_1AAE52D28(&v34);
  v22 = v41;
  *(a9 + 96) = v40;
  *(a9 + 112) = v22;
  *(a9 + 128) = v42;
  v23 = v37;
  *(a9 + 32) = v36;
  *(a9 + 48) = v23;
  v24 = v39;
  *(a9 + 64) = v38;
  *(a9 + 80) = v24;
  v25 = v35;
  *a9 = v34;
  *(a9 + 16) = v25;
  sub_1AAE83D50(a5, a6, a7, a8, v32);
  v26 = type metadata accessor for PlottableValue();
  v27 = *(*(v26 - 8) + 8);
  v27(a6, v26);
  v27(a5, v26);
  v28 = v32[7];
  *(a9 + 240) = v32[6];
  *(a9 + 256) = v28;
  *(a9 + 272) = v32[8];
  v29 = v32[3];
  *(a9 + 176) = v32[2];
  *(a9 + 192) = v29;
  v30 = v32[5];
  *(a9 + 208) = v32[4];
  *(a9 + 224) = v30;
  result = v32[1];
  *(a9 + 144) = v32[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v36[0] = 0;
  BYTE8(v36[0]) = 1;
  sub_1AAD59F90(v36);
  v18 = v36[7];
  *(a9 + 384) = v36[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v36[8];
  v19 = v36[3];
  *(a9 + 320) = v36[2];
  *(a9 + 336) = v19;
  v20 = v36[5];
  *(a9 + 352) = v36[4];
  *(a9 + 368) = v20;
  v21 = v36[1];
  *(a9 + 288) = v36[0];
  *(a9 + 304) = v21;
  sub_1AAE83D50(a1, a2, a5, a7, v34);
  v22 = v34[7];
  *(a9 + 96) = v34[6];
  *(a9 + 112) = v22;
  *(a9 + 128) = v34[8];
  v23 = v34[3];
  *(a9 + 32) = v34[2];
  *(a9 + 48) = v23;
  v24 = v34[5];
  *(a9 + 64) = v34[4];
  *(a9 + 80) = v24;
  v25 = v34[1];
  *a9 = v34[0];
  *(a9 + 16) = v25;
  sub_1AAE83D50(a3, a4, a6, a8, v35);
  v26 = type metadata accessor for PlottableValue();
  v27 = *(*(v26 - 8) + 8);
  v27(a4, v26);
  v27(a3, v26);
  v28 = type metadata accessor for PlottableValue();
  v29 = *(*(v28 - 8) + 8);
  v29(a2, v28);
  v29(a1, v28);
  v30 = v35[7];
  *(a9 + 240) = v35[6];
  *(a9 + 256) = v30;
  *(a9 + 272) = v35[8];
  v31 = v35[3];
  *(a9 + 176) = v35[2];
  *(a9 + 192) = v31;
  v32 = v35[5];
  *(a9 + 208) = v35[4];
  *(a9 + 224) = v32;
  result = v35[1];
  *(a9 + 144) = v35[0];
  *(a9 + 160) = result;
  return result;
}

__n128 RectangleMark.init(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *&v30[0] = 0;
  BYTE8(v30[0]) = 1;
  sub_1AAD59F90(v30);
  v18 = v30[7];
  *(a9 + 384) = v30[6];
  *(a9 + 400) = v18;
  *(a9 + 416) = v30[8];
  v19 = v30[3];
  *(a9 + 320) = v30[2];
  *(a9 + 336) = v19;
  v20 = v30[5];
  *(a9 + 352) = v30[4];
  *(a9 + 368) = v20;
  v21 = v30[1];
  *(a9 + 288) = v30[0];
  *(a9 + 304) = v21;
  *&v31 = a1;
  BYTE8(v31) = a2 & 1;
  *&v32 = a3;
  BYTE8(v32) = a4 & 1;
  sub_1AAE52D28(&v31);
  v22 = v38;
  *(a9 + 96) = v37;
  *(a9 + 112) = v22;
  *(a9 + 128) = v39;
  v23 = v34;
  *(a9 + 32) = v33;
  *(a9 + 48) = v23;
  v24 = v36;
  *(a9 + 64) = v35;
  *(a9 + 80) = v24;
  v25 = v32;
  *a9 = v31;
  *(a9 + 16) = v25;
  *&v40 = a5;
  BYTE8(v40) = a6 & 1;
  v41.n128_u64[0] = a7;
  v41.n128_u8[8] = a8 & 1;
  sub_1AAE52D28(&v40);
  v26 = v47;
  *(a9 + 240) = v46;
  *(a9 + 256) = v26;
  *(a9 + 272) = v48;
  v27 = v43;
  *(a9 + 176) = v42;
  *(a9 + 192) = v27;
  v28 = v45;
  *(a9 + 208) = v44;
  *(a9 + 224) = v28;
  result = v41;
  *(a9 + 144) = v40;
  *(a9 + 160) = result;
  return result;
}

uint64_t static RectangleMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

unint64_t static RectangleMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v57 = a3;
  v56 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE6B3E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AAF8E244();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[7];
  v62[6] = a1[6];
  v62[7] = v18;
  v19 = a1[9];
  v62[8] = a1[8];
  v20 = a1[3];
  v62[2] = a1[2];
  v62[3] = v20;
  v21 = a1[5];
  v62[4] = a1[4];
  v62[5] = v21;
  v22 = a1[1];
  v62[0] = *a1;
  v62[1] = v22;
  v23 = a1[15];
  v61[5] = a1[14];
  v61[6] = v23;
  v24 = a1[17];
  v61[7] = a1[16];
  v61[8] = v24;
  v25 = a1[11];
  v61[1] = a1[10];
  v61[2] = v25;
  v26 = a1[13];
  v61[3] = a1[12];
  v61[4] = v26;
  v61[0] = v19;
  LOBYTE(v16) = *a2;
  v27 = *(a2 + 8);
  if (v16)
  {
    result = sub_1AAE6B43C(v62, v61, v27);
  }

  else
  {
    v55 = v15;
    sub_1AAD036DC(v62, 0, v58);
    v29 = v58[0];
    v30 = v58[1];
    sub_1AAD036DC(v61, 1, &v59);
    v31 = v59;
    v32 = v60;
    if (v30 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v30;
    }

    if (v60 >= v59)
    {
      v34 = v59;
    }

    else
    {
      v34 = v60;
    }

    v53 = v34;
    v54 = v33;
    v35 = v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    if (*(v35 + 208))
    {
      sub_1AAF8E444();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
    }

    else
    {
      v41 = *(v35 + 192);
      v43 = *(v35 + 200);
      v37 = *(v35 + 176);
      v39 = *(v35 + 184);
    }

    v44 = vabdd_f64(v30, v29);
    v45 = vabdd_f64(v32, v31);
    sub_1AAE6CD44(v35 + *(v56 + 44), v9, sub_1AAE6B3E4);
    v46 = *(v11 + 48);
    if (v46(v9, 1, v10) == 1)
    {
      if (qword_1ED9B1D88 != -1)
      {
        swift_once();
      }

      v47 = sub_1AAD0F5D8(v10, qword_1ED9C3498);
      (*(v11 + 16))(v13, v47, v10);
      if (v46(v9, 1, v10) != 1)
      {
        sub_1AACAC3FC(v9, sub_1AAE6B3E4);
      }
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
    }

    sub_1AAE6CD44(v35, v6, type metadata accessor for ChartContentRenderContext.Environment);
    v48 = v55;
    sub_1AAD0F2A4(v6, v17 + *(v55 + 44));
    v49 = *(v35 + *(v56 + 64));
    *v17 = 0.0;
    v50 = v53;
    v17[1] = v54;
    v17[2] = v50;
    v17[3] = v44;
    v17[4] = v45;
    *(v17 + 5) = v37;
    *(v17 + 6) = v39;
    *(v17 + 7) = v41;
    *(v17 + 8) = v43;
    (*(v11 + 32))(v17 + *(v48 + 40), v13, v10);
    *(v17 + *(v48 + 48)) = v49;
    v51 = swift_allocBox();
    sub_1AAE6CDAC(v17, v52);
    result = v51 | 0x4000000000000000;
  }

  *v57 = result;
  return result;
}

void sub_1AAE6B3E4()
{
  if (!qword_1ED9B5558)
  {
    sub_1AAF8E244();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B5558);
    }
  }
}

unint64_t sub_1AAE6B43C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_1AAD036DC(a1, 0, v270);
  v6 = v270[0];
  v7 = v270[1];
  sub_1AAD036DC(a2, 1, v271);
  v8 = v271[0];
  v9 = v271[1];
  v10 = sub_1AAE63890(a1, a2);
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  v14 = v13[7];
  if (v10)
  {
    v15 = a2;
  }

  else
  {
    v15 = a1;
  }

  v258 = v13[6];
  v259 = v14;
  v16 = v13[8];
  v17 = v13[3];
  v254 = v13[2];
  v255 = v17;
  v18 = v13[5];
  v256 = v13[4];
  v257 = v18;
  v19 = v13[1];
  v252 = *v13;
  v253 = v19;
  v20 = v15[6];
  v21 = v15[7];
  v22 = v15[4];
  v266 = v15[5];
  v267 = v20;
  v23 = v15[8];
  v268 = v21;
  v269 = v23;
  v24 = v15[2];
  v25 = v15[3];
  v26 = *v15;
  v262 = v15[1];
  v263 = v24;
  v264 = v25;
  v265 = v22;
  v260 = v16;
  v261 = v26;
  v284[6] = v258;
  v284[7] = v259;
  v284[2] = v254;
  v284[3] = v255;
  v284[4] = v256;
  v284[5] = v257;
  v284[0] = v252;
  v284[1] = v253;
  v285[5] = v266;
  v285[6] = v267;
  v285[7] = v268;
  v285[8] = v269;
  v285[1] = v262;
  v285[2] = v24;
  v285[3] = v25;
  v285[4] = v22;
  v284[8] = v16;
  v285[0] = v26;
  v304[6] = v258;
  v304[7] = v259;
  v304[8] = v16;
  v304[2] = v254;
  v304[3] = v255;
  v304[4] = v256;
  v304[5] = v257;
  v304[0] = v252;
  v304[1] = v253;
  v27 = sub_1AACDB99C(v304);
  v186 = v11;
  v184 = v12;
  if (v27 != 2)
  {
    if (v27)
    {
      sub_1AAE49270(__dst);
      sub_1AAD6D0FC();
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1AAF99670;
      v53 = v52 + 32;
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);
      v242 = __dst[8];
      v243 = __dst[9];
      v244 = *&__dst[10];
      v238 = __dst[4];
      v239 = __dst[5];
      v240 = __dst[6];
      v241 = __dst[7];
      v234 = __dst[0];
      v235 = __dst[1];
      v236 = __dst[2];
      v237 = __dst[3];
LABEL_66:
      sub_1AAD5835C(v284, &v187);
      sub_1AAF72B20(!v11, v284, &v245);
      goto LABEL_68;
    }

    v28 = sub_1AACD2C84(v304);
    v307 = *v28;
    v29 = *(v28 + 24);
    v308 = *(v28 + 16);
    v309 = v29;
    v305 = *(v28 + 32);
    v306 = *(v28 + 48);
    v286 = v307;
    v287 = v308;
    v288 = v29;
    v289 = v305;
    v290 = v306;
    *&v291[15] = *(v28 + 64);
    *v291 = *(v28 + 49);
    v310 = v307;
    v311 = v308;
    v313 = v306;
    v312 = v305;
    if (v11)
    {
      swift_beginAccess();
      memcpy(__dst, (a3 + 80), 0x102uLL);
      if (*(&__dst[1] + 1))
      {
        v30 = *(a3 + 128);
        v277 = *(a3 + 112);
        v278 = v30;
        v279 = *(a3 + 144);
        v280[0] = *(a3 + 160);
        v31 = *(a3 + 96);
        v275 = *(a3 + 80);
        v276 = v31;
        sub_1AAE14D50(&v312, &v187);
        sub_1AAD5835C(a2, &v187);
        sub_1AAD5835C(a1, &v187);

        sub_1AADFA6FC(&v310, &v187);
        sub_1AAE6CE20(&v309, &v187, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        v221 = v277;
        v222 = v278;
        v223 = v279;
        LOBYTE(v224) = v280[0];
        v219 = v275;
        v220 = v276;
LABEL_12:
        v32 = *(&v223 + 1);
        v33 = v221;
        v34 = v222;
        v35 = v224;
        sub_1AAE6CE20(__dst, &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v219, &v187);
        sub_1AAE0A738(v33, *(&v33 + 1), v34, v32, v35, 3, &v272);
        v176 = v273;
        v180 = v272;
        v36 = v274;
        sub_1AAE0C014(&v219);
        sub_1AAD04750(v219, *(&v219 + 1), v220);

        sub_1AAD0E818(v33, *(&v33 + 1), v34);
        goto LABEL_46;
      }

      if (BYTE1(__dst[16]) == 2)
      {
        sub_1AAE14D50(&v312, &v187);
        sub_1AAD5835C(a2, &v187);
        sub_1AAD5835C(a1, &v187);

        sub_1AADFA6FC(&v310, &v187);
        sub_1AAE6CE20(&v309, &v187, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      }

      else
      {
        sub_1AAE14D50(&v312, &v187);
        sub_1AAD5835C(a2, &v187);
        sub_1AAD5835C(a1, &v187);

        sub_1AADFA6FC(&v310, &v187);
        sub_1AAE6CE20(&v309, &v187, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AACBB21C(__dst, &v187);
        v68 = sub_1AAF8E7A4();
        if (v68 == sub_1AAF8E7A4())
        {
          sub_1AAE6CE20(&__dst[11], &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(__dst);
          if (*(&__dst[12] + 1))
          {
            v219 = __dst[11];
            v220 = __dst[12];
            v221 = __dst[13];
            v222 = __dst[14];
            v223 = __dst[15];
            LOBYTE(v224) = __dst[16];
            goto LABEL_12;
          }
        }

        else
        {
          sub_1AACBB254(__dst);
        }
      }

      v176 = 0u;
      v180 = 0u;
      v36 = 2;
LABEL_46:
      v72 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v73 = v72 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 84);
      v74 = *(v73 + 16);
      v298 = *v73;
      v299 = v74;
      v301 = v176;
      v300 = v180;
      v302 = v36;
      v303 = *(a3 + 352);
      v75 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
      *&v280[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
      v76 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
      v279 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
      *v280 = v76;
      v77 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
      v275 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
      v276 = v77;
      v78 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
      v277 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
      v278 = v78;
      if (v280[24] != 255)
      {
        v79 = v75[4];
        v80 = v75[5];
        v81 = v75[2];
        v248 = v75[3];
        v249 = v79;
        v250[0] = v80;
        *(v250 + 9) = *(v75 + 89);
        v82 = v75[1];
        v245 = *v75;
        v246 = v82;
        v247 = v81;
        v292 = v245;
        v293 = v82;
        v294 = v81;
        v295 = v248;
        v296 = v79;
        v297[0] = v80;
        *(v297 + 9) = *(v250 + 9);
LABEL_52:
        sub_1AAE6CE20(&v245, &v187, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
        v11 = v186;
        sub_1AAE08D1C(&v292, a3, !v186, &v286, &v187);
        sub_1AACAC3FC(&v275, sub_1AACCF364);
        nullsub_1(&v187, v93);

        sub_1AAD6E0DC(&v310);
        sub_1AAE491F0(&v309);
        sub_1AAD6E18C(&v312);
        goto LABEL_64;
      }

LABEL_53:

      sub_1AAD6E0DC(&v310);
      sub_1AAE491F0(&v309);
      sub_1AAD6E18C(&v312);
      goto LABEL_63;
    }

    swift_beginAccess();
    memcpy(__dst, (a3 + 80), 0x102uLL);
    if (*&__dst[7])
    {
      v54 = *(a3 + 216);
      v277 = *(a3 + 200);
      v278 = v54;
      v279 = *(a3 + 232);
      v280[0] = *(a3 + 248);
      v55 = *(a3 + 184);
      v275 = *(a3 + 168);
      v276 = v55;
      sub_1AAE14D50(&v312, &v187);
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AADFA6FC(&v310, &v187);
      sub_1AAE6CE20(&v309, &v187, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      v221 = v277;
      v222 = v278;
      v223 = v279;
      LOBYTE(v224) = v280[0];
      v219 = v275;
      v220 = v276;
LABEL_20:
      v56 = *(&v223 + 1);
      v57 = v221;
      v58 = v222;
      v59 = v224;
      sub_1AAE6CE20(&__dst[5] + 8, &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v219, &v187);
      sub_1AAE0A738(v57, *(&v57 + 1), v58, v56, v59, 4, &v272);
      v178 = v273;
      v182 = v272;
      v60 = v274;
      sub_1AAE0C014(&v219);
      sub_1AAD04750(v219, *(&v219 + 1), v220);

      sub_1AAD0E818(v57, *(&v57 + 1), v58);
      goto LABEL_50;
    }

    if (BYTE1(__dst[16]) == 2)
    {
      sub_1AAE14D50(&v312, &v187);
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AADFA6FC(&v310, &v187);
      sub_1AAE6CE20(&v309, &v187, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v312, &v187);
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AADFA6FC(&v310, &v187);
      sub_1AAE6CE20(&v309, &v187, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(__dst, &v187);
      v69 = sub_1AAF8E7A4();
      if (v69 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&__dst[11], &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*(&__dst[12] + 1))
        {
          v219 = __dst[11];
          v220 = __dst[12];
          v221 = __dst[13];
          v222 = __dst[14];
          v223 = __dst[15];
          LOBYTE(v224) = __dst[16];
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v178 = 0u;
    v182 = 0u;
    v60 = 2;
LABEL_50:
    v83 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v84 = v83 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 88);
    v85 = *(v84 + 16);
    v298 = *v84;
    v299 = v85;
    v301 = v178;
    v300 = v182;
    v302 = v60;
    v303 = *(a3 + 368);
    v86 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    *&v280[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v87 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v279 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    *v280 = v87;
    v88 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v275 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v276 = v88;
    v89 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v277 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v278 = v89;
    if (v280[24] != 255)
    {
      v90 = v86[5];
      v249 = v86[4];
      v250[0] = v90;
      *(v250 + 9) = *(v86 + 89);
      v91 = v86[1];
      v245 = *v86;
      v246 = v91;
      v92 = v86[3];
      v247 = v86[2];
      v248 = v92;
      v292 = v245;
      v293 = v91;
      v294 = v247;
      v295 = v92;
      v296 = v249;
      v297[0] = v90;
      *(v297 + 9) = *(v250 + 9);
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v37 = sub_1AACD2C84(v304);
  v39 = *v37;
  v38 = *(v37 + 8);
  v40 = *(v37 + 16);
  *(&v287 + 1) = *(v37 + 17);
  HIDWORD(v287) = *(v37 + 20);
  v42 = *(v37 + 24);
  v41 = *(v37 + 32);
  v43 = *(v37 + 40);
  v44 = *(v37 + 48);
  v173 = v39;
  v174 = v38;
  *&v286 = v39;
  *(&v286 + 1) = v38;
  v172 = v40;
  LOBYTE(v287) = v40;
  v177 = v41;
  v288 = v42;
  *&v289 = v41;
  v181 = v43;
  *(&v289 + 1) = v43;
  v290 = v44;
  *v291 = *(v37 + 49);
  *&v291[15] = *(v37 + 64);
  v171 = v44;
  if (!v11)
  {
    swift_beginAccess();
    memcpy(__dst, (a3 + 80), 0x102uLL);
    if (*&__dst[7])
    {
      v61 = *(a3 + 216);
      v277 = *(a3 + 200);
      v278 = v61;
      v279 = *(a3 + 232);
      v280[0] = *(a3 + 248);
      v62 = *(a3 + 184);
      v275 = *(a3 + 168);
      v276 = v62;
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AACD7C50(v177, v181, v44);
      sub_1AACD7304(v173, v174, v172 & 1);
      v221 = v277;
      v222 = v278;
      v223 = v279;
      LOBYTE(v224) = v280[0];
      v219 = v275;
      v220 = v276;

LABEL_23:
      v63 = *(&v223 + 1);
      v64 = v221;
      v65 = v222;
      v66 = v224;
      sub_1AAE6CE20(&__dst[5] + 8, &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v219, &v187);
      sub_1AAE0A738(v64, *(&v64 + 1), v65, v63, v66, 4, &v272);
      v168 = v273;
      v170 = v272;
      v67 = v274;
      sub_1AAE0C014(&v219);
      sub_1AAD04750(v219, *(&v219 + 1), v220);

      sub_1AAD0E818(v64, *(&v64 + 1), v65);
LABEL_59:
      v98 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      v99 = v98 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 88);
      v100 = *(v99 + 16);
      v298 = *v99;
      v299 = v100;
      v301 = v168;
      v300 = v170;
      v302 = v67;
      v303 = *(a3 + 368);
      v97 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
      goto LABEL_60;
    }

    if (BYTE1(__dst[16]) == 2)
    {
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AACD7C50(v177, v181, v44);
      sub_1AACD7304(v173, v174, v172 & 1);
    }

    else
    {
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AACD7C50(v177, v181, v44);
      sub_1AACD7304(v173, v174, v172 & 1);

      sub_1AACBB21C(__dst, &v187);
      v71 = sub_1AAF8E7A4();
      if (v71 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&__dst[11], &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*(&__dst[12] + 1))
        {
          v219 = __dst[11];
          v220 = __dst[12];
          v221 = __dst[13];
          v222 = __dst[14];
          v223 = __dst[15];
          LOBYTE(v224) = __dst[16];
          goto LABEL_23;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v168 = 0u;
    v170 = 0u;
    v67 = 2;
    goto LABEL_59;
  }

  swift_beginAccess();
  memcpy(__dst, (a3 + 80), 0x102uLL);
  if (!*(&__dst[1] + 1))
  {
    if (BYTE1(__dst[16]) == 2)
    {
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AACD7C50(v177, v181, v44);
      sub_1AACD7304(v173, v174, v172 & 1);
    }

    else
    {
      sub_1AAD5835C(a2, &v187);
      sub_1AAD5835C(a1, &v187);

      sub_1AACD7C50(v177, v181, v44);
      sub_1AACD7304(v173, v174, v172 & 1);

      sub_1AACBB21C(__dst, &v187);
      v70 = sub_1AAF8E7A4();
      if (v70 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&__dst[11], &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(__dst);
        if (*(&__dst[12] + 1))
        {
          v219 = __dst[11];
          v220 = __dst[12];
          v221 = __dst[13];
          v222 = __dst[14];
          v223 = __dst[15];
          LOBYTE(v224) = __dst[16];
          goto LABEL_16;
        }
      }

      else
      {
        sub_1AACBB254(__dst);
      }
    }

    v167 = 0u;
    v169 = 0u;
    v51 = 2;
    goto LABEL_56;
  }

  v45 = *(a3 + 128);
  v277 = *(a3 + 112);
  v278 = v45;
  v279 = *(a3 + 144);
  v280[0] = *(a3 + 160);
  v46 = *(a3 + 96);
  v275 = *(a3 + 80);
  v276 = v46;
  sub_1AAD5835C(a2, &v187);
  sub_1AAD5835C(a1, &v187);

  sub_1AACD7C50(v177, v181, v44);
  sub_1AACD7304(v173, v174, v172 & 1);
  v221 = v277;
  v222 = v278;
  v223 = v279;
  LOBYTE(v224) = v280[0];
  v219 = v275;
  v220 = v276;

LABEL_16:
  v47 = *(&v223 + 1);
  v48 = v221;
  v49 = v222;
  v50 = v224;
  sub_1AAE6CE20(__dst, &v187, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  sub_1AAE0BFDC(&v219, &v187);
  sub_1AAE0A738(v48, *(&v48 + 1), v49, v47, v50, 3, &v272);
  v167 = v273;
  v169 = v272;
  v51 = v274;
  sub_1AAE0C014(&v219);
  sub_1AAD04750(v219, *(&v219 + 1), v220);

  sub_1AAD0E818(v48, *(&v48 + 1), v49);
LABEL_56:
  v94 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v95 = v94 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 84);
  v96 = *(v95 + 16);
  v298 = *v95;
  v299 = v96;
  v301 = v167;
  v300 = v169;
  v302 = v51;
  v303 = *(a3 + 352);
  v97 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
LABEL_60:
  v101 = (a3 + *v97);
  *&v280[9] = *(v101 + 89);
  v102 = v101[5];
  v279 = v101[4];
  *v280 = v102;
  v103 = v101[1];
  v275 = *v101;
  v276 = v103;
  v104 = v101[3];
  v277 = v101[2];
  v278 = v104;
  if (v280[24] != 255)
  {
    v105 = v101[5];
    v249 = v101[4];
    v250[0] = v105;
    *(v250 + 9) = *(v101 + 89);
    v106 = v101[1];
    v245 = *v101;
    v246 = v106;
    v107 = v101[3];
    v247 = v101[2];
    v248 = v107;
    v292 = v245;
    v293 = v106;
    v294 = v247;
    v295 = v107;
    v296 = v249;
    v297[0] = v105;
    *(v297 + 9) = *(v250 + 9);
    sub_1AAE6CE20(&v245, &v187, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    v11 = v186;
    sub_1AAE08D1C(&v292, a3, !v186, &v286, &v187);
    sub_1AACAC3FC(&v275, sub_1AACCF364);
    nullsub_1(&v187, v108);

    sub_1AAD04750(v173, v174, v172 & 1);

    sub_1AAD0E818(v177, v181, v171);
    goto LABEL_64;
  }

  sub_1AAD04750(v173, v174, v172 & 1);

  sub_1AAD0E818(v177, v181, v171);
LABEL_63:
  sub_1AAE49270(&v187);
  v11 = v186;
LABEL_64:
  __dst[8] = v195;
  __dst[9] = v196;
  *&__dst[10] = v197;
  __dst[4] = v191;
  __dst[5] = v192;
  __dst[6] = v193;
  __dst[7] = v194;
  __dst[0] = v187;
  __dst[1] = v188;
  __dst[2] = v189;
  __dst[3] = v190;
  sub_1AAD6D0FC();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1AAF99670;
  v53 = v52 + 32;
  v194 = __dst[7];
  v195 = __dst[8];
  v196 = __dst[9];
  v197 = *&__dst[10];
  v191 = __dst[4];
  v192 = __dst[5];
  v193 = __dst[6];
  v187 = __dst[0];
  v188 = __dst[1];
  v189 = __dst[2];
  v190 = __dst[3];
  if (sub_1AAE492A8(&v187) == 1)
  {
    v242 = __dst[8];
    v243 = __dst[9];
    v244 = *&__dst[10];
    v238 = __dst[4];
    v239 = __dst[5];
    v240 = __dst[6];
    v241 = __dst[7];
    v234 = __dst[0];
    v235 = __dst[1];
    v236 = __dst[2];
    v237 = __dst[3];
    goto LABEL_66;
  }

  sub_1AAE2D7EC(&v245);
  v242 = __dst[8];
  v243 = __dst[9];
  v244 = *&__dst[10];
  v238 = __dst[4];
  v239 = __dst[5];
  v240 = __dst[6];
  v241 = __dst[7];
  v234 = __dst[0];
  v235 = __dst[1];
  v236 = __dst[2];
  v237 = __dst[3];
LABEL_68:
  v109 = v246;
  *v53 = v245;
  *(v53 + 16) = v109;
  v110 = v247;
  v111 = v248;
  v112 = v250[0];
  *(v53 + 64) = v249;
  *(v53 + 80) = v112;
  *(v53 + 32) = v110;
  *(v53 + 48) = v111;
  v113 = v250[1];
  v114 = v250[2];
  v115 = v250[3];
  *(v53 + 144) = v251;
  *(v53 + 112) = v114;
  *(v53 + 128) = v115;
  *(v53 + 96) = v113;
  sub_1AAD5835C(v285, &v187);
  sub_1AAF72B20(v184, v285, &v275);
  v116 = v281;
  *(v53 + 248) = *&v280[16];
  v117 = v282;
  *(v53 + 264) = v116;
  *(v53 + 280) = v117;
  v118 = v278;
  *(v53 + 184) = v277;
  *(v53 + 200) = v118;
  v119 = *v280;
  *(v53 + 216) = v279;
  *(v53 + 232) = v119;
  v120 = v276;
  *(v53 + 152) = v275;
  *(v53 + 296) = v283;
  v121 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v53 + 168) = v120;
  swift_beginAccess();
  v122 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v123 = v121 + v122[17];
  v233 = *(v123 + 64);
  v124 = *(v123 + 48);
  v231 = *(v123 + 32);
  v232 = v124;
  v125 = *(v123 + 16);
  v229 = *v123;
  v230 = v125;
  if (*(&v125 + 1))
  {
    *(v199 + 7) = *v123;
    v126 = *(v123 + 48);
    *&v201[8] = *(v123 + 32);
    *(&v199[1] + 7) = *(v123 + 16);
    *&v201[24] = v126;
    v127 = *(v123 + 64);
    LOBYTE(v200[0]) = 5;
    *(v200 + 1) = v199[0];
    v200[1] = *(v199 + 15);
    *&v201[40] = v127;
    *v201 = *(&v230 + 1);
    LOBYTE(v202) = 3;
    sub_1AAE0C0B0(v200);
    v194 = v204;
    v195 = v205;
    *&v196 = v206;
    v189 = *v201;
    v190 = *&v201[16];
    v191 = *&v201[32];
    v192 = v202;
    v193 = v203;
    v187 = v200[0];
    v188 = v200[1];
    nullsub_1(&v187, v128);
    v225 = v193;
    v226 = v194;
    v227 = v195;
    v228 = v196;
    v221 = v189;
    v222 = v190;
    v223 = v191;
    v224 = v192;
    v219 = v187;
    v220 = v188;
  }

  else
  {
    sub_1AAE2D7EC(&v219);
  }

  v129 = v226;
  *(v53 + 400) = v225;
  *(v53 + 416) = v129;
  *(v53 + 432) = v227;
  *(v53 + 448) = v228;
  v130 = v222;
  *(v53 + 336) = v221;
  *(v53 + 352) = v130;
  v131 = v224;
  *(v53 + 368) = v223;
  *(v53 + 384) = v131;
  v132 = v220;
  *(v53 + 304) = v219;
  *(v53 + 320) = v132;
  sub_1AAE6CE20(&v229, &v187, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  v133 = sub_1AAF70438(v52);
  v185 = v134;

  v175 = *(*(a3 + 16) + 24);
  v135 = (v121 + v122[25]);
  v136 = v135[1];
  v179 = *v135;
  v137 = (v121 + v122[23]);
  v139 = *v137;
  v138 = v137[1];
  v141 = v137[2];
  v140 = v137[3];
  v142 = (v121 + v122[24]);
  v143 = *v142;
  v144 = v142[1];
  v146 = v142[2];
  v145 = v142[3];
  v183 = v136;

  sub_1AADA61DC(v139, v138, v141, v140);
  sub_1AADA61DC(v143, v144, v146, v145);
  sub_1AAF72B20(!v186, v284, v217);
  sub_1AADC7F60(v285);

  v194 = v241;
  v195 = v242;
  v196 = v243;
  v197 = v244;
  v191 = v238;
  v192 = v239;
  v193 = v240;
  v187 = v234;
  v188 = v235;
  v189 = v236;
  v190 = v237;
  if (sub_1AAE492A8(&v187) == 1)
  {
    sub_1AAE2D7EC(&v207);
  }

  else
  {
    v203 = v194;
    v204 = v195;
    v205 = v196;
    v206 = v197;
    *v201 = v190;
    *&v201[16] = v191;
    *&v201[32] = v192;
    v202 = v193;
    v200[0] = v188;
    v200[1] = v189;
    nullsub_1(v200, v147);
    v213 = v203;
    v214 = v204;
    v215 = v205;
    v216 = v206;
    v209 = *v201;
    v210 = *&v201[16];
    v211 = *&v201[32];
    v212 = v202;
    v207 = v200[0];
    v208 = v200[1];
  }

  v148 = vabdd_f64(v9, v8);
  v149 = vabdd_f64(v7, v6);
  if (v9 < v8)
  {
    v8 = v9;
  }

  if (v7 < v6)
  {
    v6 = v7;
  }

  sub_1AAE2D7EC(v200);
  v150 = swift_allocObject();
  *(v150 + 16) = v175;
  *(v150 + 24) = v6;
  *(v150 + 32) = v8;
  *(v150 + 40) = v149;
  *(v150 + 48) = v148;
  *&v151 = v179;
  *(&v151 + 1) = v183;
  *&v152 = v139;
  *(&v152 + 1) = v138;
  *(v150 + 72) = v152;
  *(v150 + 56) = v151;
  *&v151 = v141;
  *(&v151 + 1) = v140;
  *&v152 = v143;
  *(&v152 + 1) = v144;
  *(v150 + 104) = v152;
  *(v150 + 88) = v151;
  *(v150 + 120) = v146;
  *(v150 + 128) = v145;
  *(v150 + 136) = v133;
  v153 = v217[7];
  *(v150 + 240) = v217[6];
  *(v150 + 256) = v153;
  *(v150 + 272) = v217[8];
  v154 = v218;
  v155 = v217[3];
  *(v150 + 176) = v217[2];
  *(v150 + 192) = v155;
  v156 = v217[5];
  *(v150 + 208) = v217[4];
  *(v150 + 224) = v156;
  v157 = v217[1];
  *(v150 + 144) = v217[0];
  *(v150 + 160) = v157;
  *(v150 + 288) = v154;
  *(v150 + 296) = v185;
  v158 = v214;
  *(v150 + 400) = v213;
  *(v150 + 416) = v158;
  *(v150 + 432) = v215;
  *(v150 + 448) = v216;
  v159 = v210;
  *(v150 + 336) = v209;
  *(v150 + 352) = v159;
  v160 = v212;
  *(v150 + 368) = v211;
  *(v150 + 384) = v160;
  v161 = v208;
  *(v150 + 304) = v207;
  *(v150 + 320) = v161;
  v162 = v204;
  *(v150 + 552) = v203;
  *(v150 + 568) = v162;
  *(v150 + 584) = v205;
  *(v150 + 600) = v206;
  v163 = *&v201[16];
  *(v150 + 488) = *v201;
  *(v150 + 504) = v163;
  v164 = v202;
  *(v150 + 520) = *&v201[32];
  *(v150 + 536) = v164;
  v165 = v200[1];
  *(v150 + 456) = v200[0];
  *(v150 + 472) = v165;
  *(v150 + 608) = 0;
  result = v150 | 0xC000000000000000;
  *(v150 + 616) = 0;
  return result;
}

uint64_t sub_1AAE6CD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE6CDAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgRectangle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE6CE20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE6CE90(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAE6CE90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t RectanglePlot<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800(v2, v4, a2);
  sub_1AACE0800(v7, v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAE6CFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = a8;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v9 = type metadata accessor for XYRenderer();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v10 + 16))(&v15 - v12, a1, v9, v11);
  sub_1AAE6D10C(v13, v16);
  return (*(v10 + 8))(a1, v9);
}

uint64_t sub_1AAE6D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XYRenderer();
  *(a2 + 24) = v4;
  *(a2 + 32) = &off_1F1FE53F0;
  v5 = sub_1AACB2508(a2);
  (*(*(v4 - 8) + 32))(v5, a1, v4);
  v6 = type metadata accessor for RectanglesRenderer(0);
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  v7 = v6[8];
  v8 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a2 + v6[9];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = v6[10];
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1AAF8E244();
  return (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
}

uint64_t RectanglePlot.init<A, B, C>(_:x:y:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a9;
  v79 = a3;
  v81 = a1;
  v82 = a2;
  v63 = a12;
  v80 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = a8;
  v77 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v63 - v17;
  v64 = a7;
  v73 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v73);
  v66 = &v63 - v18;
  v75 = *(a6 - 8);
  v19 = v75;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v22;
  v71 = a6;
  *&v91 = a6;
  *(&v91 + 1) = a7;
  *&v92 = a8;
  *(&v92 + 1) = v80;
  v69 = a11;
  v23 = v63;
  *&v93 = a11;
  *(&v93 + 1) = v63;
  v24 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v74 = &v63 - v25;
  v26 = a4[5];
  v87 = a4[4];
  v88 = v26;
  v89 = a4[6];
  v90 = *(a4 + 112);
  v27 = a4[1];
  v83 = *a4;
  v84 = v27;
  v28 = a4[3];
  v85 = a4[2];
  v86 = v28;
  v29 = *a5;
  v30 = a5[1];
  v31 = a5[3];
  v93 = a5[2];
  v94 = v31;
  v91 = v29;
  v92 = v30;
  v32 = a5[4];
  v33 = a5[5];
  v34 = a5[6];
  v98 = *(a5 + 112);
  v96 = v33;
  v97 = v34;
  v95 = v32;
  (*(v19 + 16))(v22, v81, a6);
  v35 = v64;
  v36 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = v66;
  v39 = &v66[*(TupleTypeMetadata2 + 48)];
  v40 = *(v36 - 8);
  v67 = v36;
  v68 = v40;
  (*(v40 + 16))(v66, v82, v36);
  v41 = v88;
  *(v39 + 4) = v87;
  *(v39 + 5) = v41;
  *(v39 + 6) = v89;
  v39[112] = v90;
  v42 = v84;
  *v39 = v83;
  *(v39 + 1) = v42;
  v43 = v86;
  *(v39 + 2) = v85;
  *(v39 + 3) = v43;
  swift_storeEnumTagMultiPayload();
  v44 = v72;
  v45 = type metadata accessor for PlottableProjection();
  v46 = swift_getTupleTypeMetadata2();
  v47 = v76;
  v48 = &v76[*(v46 + 48)];
  v49 = *(v45 - 8);
  (*(v49 + 16))(v76, v79, v45);
  v50 = v96;
  *(v48 + 4) = v95;
  *(v48 + 5) = v50;
  *(v48 + 6) = v97;
  v48[112] = v98;
  v51 = v92;
  *v48 = v91;
  *(v48 + 1) = v51;
  v52 = v94;
  *(v48 + 2) = v93;
  *(v48 + 3) = v52;
  swift_storeEnumTagMultiPayload();
  v53 = v23;
  v54 = v74;
  v55 = v38;
  v56 = v47;
  v57 = v71;
  v58 = v35;
  v59 = v44;
  v60 = v80;
  v61 = v69;
  sub_1AAF314E0(v70, v55, v56, v71, v74);
  sub_1AAE6CFC8(v54, v57, v58, v59, v60, v61, v53, v78);
  (*(v49 + 8))(v79, v45);
  (*(v68 + 8))(v82, v67);
  return (*(v75 + 8))(v81, v57);
}

uint64_t RectanglePlot.init<A, B, C>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v52 = a6;
  v66 = a4;
  v67 = a1;
  v68 = a3;
  v69 = a2;
  v65 = a9;
  v63 = a10;
  swift_getAssociatedTypeWitness();
  v53 = *(&a11 + 1);
  v64 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v52 - v14;
  v59 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v52 - v15;
  v16 = v52;
  v61 = *(v52 - 8);
  v17 = v61;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v20;
  *&v70 = v16;
  *(&v70 + 1) = a7;
  v55 = a7;
  *&v71 = a8;
  *(&v71 + 1) = a10;
  v72 = a11;
  v56 = a11;
  v21 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v60 = &v52 - v22;
  v23 = a5[5];
  v74 = a5[4];
  v75 = v23;
  v76 = a5[6];
  v77 = *(a5 + 112);
  v24 = a5[1];
  v70 = *a5;
  v71 = v24;
  v25 = a5[3];
  v72 = a5[2];
  v73 = v25;
  v26 = v20;
  v27 = v16;
  (*(v17 + 16))(v26, v67, v16);
  v28 = type metadata accessor for PlottableProjection();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v57 = *(v28 - 8);
  v30 = *(v57 + 16);
  v31 = v54;
  v30(v54, v69, v28);
  v30(&v31[v29], v68, v28);
  swift_storeEnumTagMultiPayload();
  v32 = v53;
  v33 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = v62;
  v36 = &v62[*(TupleTypeMetadata2 + 48)];
  v37 = *(v33 - 8);
  (*(v37 + 16))(v62, v66, v33);
  v38 = v75;
  *(v36 + 4) = v74;
  *(v36 + 5) = v38;
  *(v36 + 6) = v76;
  v36[112] = v77;
  v39 = v71;
  *v36 = v70;
  *(v36 + 1) = v39;
  v40 = v73;
  *(v36 + 2) = v72;
  *(v36 + 3) = v40;
  swift_storeEnumTagMultiPayload();
  v41 = v60;
  v42 = v31;
  v43 = v35;
  v44 = v27;
  v45 = v27;
  v46 = v55;
  v47 = a8;
  v48 = v63;
  v49 = v56;
  sub_1AAF314E0(v58, v42, v43, v45, v60);
  sub_1AAE6CFC8(v41, v44, v46, v47, v48, v49, v32, v65);
  (*(v37 + 8))(v66, v33);
  v50 = *(v57 + 8);
  v50(v68, v28);
  v50(v69, v28);
  return (*(v61 + 8))(v67, v44);
}

uint64_t RectanglePlot.init<A, B, C>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a4;
  v67 = a9;
  v69 = a2;
  v70 = a3;
  v68 = a1;
  v63 = a10;
  swift_getAssociatedTypeWitness();
  v58 = a7;
  v65 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v51 - v16;
  v17 = a8;
  v61 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v61);
  v52 = &v51 - v18;
  v62 = *(a6 - 8);
  v19 = v62;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v22;
  *&v71 = a6;
  *(&v71 + 1) = v17;
  v59 = a6;
  v54 = v17;
  *&v72 = a7;
  *(&v72 + 1) = a10;
  v56 = a12;
  *&v73 = a12;
  *(&v73 + 1) = a11;
  v23 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v60 = &v51 - v24;
  v25 = a5[5];
  v75 = a5[4];
  v76 = v25;
  v77 = a5[6];
  v78 = *(a5 + 112);
  v26 = a5[1];
  v71 = *a5;
  v72 = v26;
  v27 = a5[3];
  v73 = a5[2];
  v74 = v27;
  (*(v19 + 16))(v22, v68, a6);
  v28 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = v52;
  v31 = &v52[*(TupleTypeMetadata2 + 48)];
  v53 = v28;
  v55 = *(v28 - 8);
  (*(v55 + 16))(v52, v69, v28);
  v32 = v76;
  *(v31 + 4) = v75;
  *(v31 + 5) = v32;
  *(v31 + 6) = v77;
  v31[112] = v78;
  v33 = v72;
  *v31 = v71;
  *(v31 + 1) = v33;
  v34 = v74;
  *(v31 + 2) = v73;
  *(v31 + 3) = v34;
  swift_storeEnumTagMultiPayload();
  v35 = v58;
  v36 = type metadata accessor for PlottableProjection();
  v37 = *(swift_getTupleTypeMetadata2() + 48);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v40 = v64;
  v39(v64, v70, v36);
  v41 = (v40 + v37);
  v42 = v66;
  v39(v41, v66, v36);
  swift_storeEnumTagMultiPayload();
  v43 = v60;
  v44 = v30;
  v45 = v59;
  v46 = v54;
  v47 = v63;
  v48 = v56;
  sub_1AAF314E0(v57, v44, v40, v59, v60);
  sub_1AAE6CFC8(v43, v45, v46, v35, v47, v48, a11, v67);
  v49 = *(v38 + 8);
  v49(v42, v36);
  v49(v70, v36);
  (*(v55 + 8))(v69, v53);
  return (*(v62 + 8))(v68, v45);
}

uint64_t RectanglePlot.init<A, B, C>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a5;
  v66 = a9;
  v69 = a4;
  v70 = a3;
  v71 = a2;
  v67 = a12;
  v68 = a1;
  v61 = a10;
  swift_getAssociatedTypeWitness();
  v15 = a8;
  v64 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - v16;
  v17 = a7;
  v60 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v60);
  v19 = &v53 - v18;
  v62 = *(a6 - 8);
  v20 = v62;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v23;
  v58 = a6;
  v72 = a6;
  v73 = v17;
  v55 = v17;
  v74 = v15;
  v75 = a10;
  v54 = v15;
  v56 = a11;
  v76 = a11;
  v77 = v67;
  v24 = type metadata accessor for XYRenderer();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v53 - v26;
  (*(v20 + 16))(v23, v68, a6, v25);
  v28 = type metadata accessor for PlottableProjection();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v59 = *(v28 - 8);
  v30 = *(v59 + 16);
  v30(v19, v71, v28);
  v30(&v19[v29], v70, v28);
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for PlottableProjection();
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v35 = v63;
  v34(v63, v69, v31);
  v36 = &v35[v32];
  v37 = v35;
  v38 = v65;
  v34(v36, v65, v31);
  swift_storeEnumTagMultiPayload();
  v39 = v27;
  v40 = v27;
  v41 = v58;
  v42 = v19;
  v43 = v37;
  v44 = v55;
  v45 = v54;
  v46 = v61;
  v47 = v56;
  sub_1AAF314E0(v57, v42, v43, v58, v40);
  v48 = v39;
  v49 = v41;
  sub_1AAE6CFC8(v48, v41, v44, v45, v46, v47, v67, v66);
  v50 = *(v33 + 8);
  v50(v38, v31);
  v50(v69, v31);
  v51 = *(v59 + 8);
  v51(v70, v28);
  v51(v71, v28);
  return (*(v62 + 8))(v68, v49);
}

uint64_t RectanglePlot.init<A, B>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a6;
  v51 = a5;
  v50 = a4;
  v49 = a3;
  v47 = a2;
  v53 = a9;
  v54 = a1;
  v45 = a11;
  swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v41 - v14;
  v46 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v41 - v16;
  v44 = *(a8 - 8);
  v18 = v44;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v21;
  *&v55 = a8;
  *(&v55 + 1) = a10;
  *&v56 = MEMORY[0x1E69E63B0];
  *(&v56 + 1) = a11;
  *&v57 = a12;
  v41 = a12;
  *(&v57 + 1) = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v43 = &v41 - v23;
  v24 = a7[5];
  v59 = a7[4];
  v60 = v24;
  v61 = a7[6];
  v62 = *(a7 + 112);
  v25 = a7[1];
  v55 = *a7;
  v56 = v25;
  v26 = a7[3];
  v57 = a7[2];
  v58 = v26;
  (*(v18 + 16))(v21, v54, a8);
  v27 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v28 = &v17[*(swift_getTupleTypeMetadata2() + 48)];
  v29 = *(v27 - 8);
  v30 = v47;
  (*(v29 + 16))(v17, v47, v27);
  v31 = v60;
  *(v28 + 4) = v59;
  *(v28 + 5) = v31;
  *(v28 + 6) = v61;
  v28[112] = v62;
  v32 = v56;
  *v28 = v55;
  *(v28 + 1) = v32;
  v33 = v58;
  *(v28 + 2) = v57;
  *(v28 + 3) = v33;
  swift_storeEnumTagMultiPayload();
  *v15 = v49;
  v15[8] = v50 & 1;
  *(v15 + 2) = v51;
  v15[24] = v52 & 1;
  swift_storeEnumTagMultiPayload();
  v34 = v43;
  v35 = v17;
  v36 = v15;
  v37 = MEMORY[0x1E69E63B0];
  v38 = v45;
  v39 = v41;
  sub_1AAF314E0(v42, v35, v36, a8, v43);
  sub_1AAE6CFC8(v34, a8, a10, v37, v38, v39, &protocol witness table for Double, v53);
  (*(v29 + 8))(v30, v27);
  return (*(v44 + 8))(v54, a8);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v55 = a6;
  v53 = a5;
  v52 = a4;
  v51 = a3;
  v50 = a2;
  v56 = a9;
  v57 = a1;
  v45 = a11;
  v49 = *(&a10 + 1);
  swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v54);
  v14 = &v44 - v13;
  v15 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v48 = *(a8 - 8);
  v18 = v48;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = a8;
  *(&v58 + 1) = MEMORY[0x1E69E63B0];
  v59 = a10;
  v46 = a10;
  v22 = v45;
  *&v60 = &protocol witness table for Double;
  *(&v60 + 1) = v45;
  v23 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v44 - v24;
  v25 = a7[5];
  v62 = a7[4];
  v63 = v25;
  v64 = a7[6];
  v65 = *(a7 + 112);
  v26 = a7[1];
  v58 = *a7;
  v59 = v26;
  v27 = a7[3];
  v60 = a7[2];
  v61 = v27;
  (*(v18 + 16))(v21, v57, a8);
  *v17 = v50;
  v17[8] = v51 & 1;
  *(v17 + 2) = v52;
  v17[24] = v53 & 1;
  swift_storeEnumTagMultiPayload();
  v28 = v22;
  v29 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v30 = &v14[*(swift_getTupleTypeMetadata2() + 48)];
  v31 = *(v29 - 8);
  v32 = v55;
  (*(v31 + 16))(v14, v55, v29);
  v33 = v63;
  *(v30 + 4) = v62;
  *(v30 + 5) = v33;
  *(v30 + 6) = v64;
  v30[112] = v65;
  v34 = v59;
  *v30 = v58;
  *(v30 + 1) = v34;
  v35 = v61;
  *(v30 + 2) = v60;
  *(v30 + 3) = v35;
  swift_storeEnumTagMultiPayload();
  v36 = v28;
  v37 = v47;
  v38 = v21;
  v39 = v17;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v46;
  v42 = v49;
  sub_1AAF314E0(v38, v39, v14, a8, v47);
  sub_1AAE6CFC8(v37, a8, v40, v41, v42, &protocol witness table for Double, v36, v56);
  (*(v31 + 8))(v32, v29);
  return (*(v48 + 8))(v57, a8);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a7;
  v49 = a6;
  v48 = a5;
  v46 = a3;
  v47 = a4;
  v52 = a1;
  v53 = a2;
  v51 = a9;
  v42 = a11;
  swift_getAssociatedTypeWitness();
  v45 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v39 - v13;
  v44 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v44);
  v16 = &v39 - v15;
  v43 = *(a8 - 8);
  v17 = v43;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a8;
  v55 = a10;
  v41 = a8;
  v56 = MEMORY[0x1E69E63B0];
  v57 = a11;
  v40 = a12;
  v58 = a12;
  v59 = &protocol witness table for Double;
  v21 = type metadata accessor for XYRenderer();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v39 - v23;
  (*(v17 + 16))(v20, v52, a8, v22);
  v25 = type metadata accessor for PlottableProjection();
  v26 = *(swift_getTupleTypeMetadata2() + 48);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v25);
  v29 = &v16[v26];
  v30 = v46;
  v28(v29, v46, v25);
  swift_storeEnumTagMultiPayload();
  *v14 = v47;
  v14[8] = v48 & 1;
  *(v14 + 2) = v49;
  v14[24] = v50 & 1;
  swift_storeEnumTagMultiPayload();
  v31 = v20;
  v32 = v16;
  v33 = v41;
  v34 = v42;
  v35 = MEMORY[0x1E69E63B0];
  v36 = v40;
  sub_1AAF314E0(v31, v32, v14, v41, v24);
  sub_1AAE6CFC8(v24, v33, a10, v35, v34, v36, &protocol witness table for Double, v51);
  v37 = *(v27 + 8);
  v37(v30, v25);
  v37(v53, v25);
  return (*(v43 + 8))(v52, v33);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a6;
  v55 = a7;
  v50 = a5;
  v49 = a4;
  v48 = a3;
  v47 = a2;
  v52 = a9;
  v53 = a1;
  v43 = a12;
  v45 = a11;
  swift_getAssociatedTypeWitness();
  v51 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v41 - v13;
  v15 = MEMORY[0x1E69E63B0];
  v16 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v46 = *(a8 - 8);
  v19 = v46;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a8;
  v57 = v15;
  v42 = a10;
  v58 = a10;
  v59 = a11;
  v23 = v43;
  v60 = &protocol witness table for Double;
  v61 = v43;
  v24 = type metadata accessor for XYRenderer();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v44 = &v41 - v26;
  v27 = a8;
  (*(v19 + 16))(v22, v53, a8, v25);
  *v18 = v47;
  v18[8] = v48 & 1;
  *(v18 + 2) = v49;
  v18[24] = v50 & 1;
  swift_storeEnumTagMultiPayload();
  v28 = v23;
  v29 = type metadata accessor for PlottableProjection();
  v30 = *(swift_getTupleTypeMetadata2() + 48);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v14, v54, v29);
  v32(&v14[v30], v55, v29);
  swift_storeEnumTagMultiPayload();
  v33 = v28;
  v34 = v44;
  v35 = v22;
  v36 = MEMORY[0x1E69E63B0];
  v37 = v42;
  v38 = v45;
  sub_1AAF314E0(v35, v18, v14, v27, v44);
  sub_1AAE6CFC8(v34, v27, v36, v37, v38, &protocol witness table for Double, v33, v52);
  v39 = *(v31 + 8);
  v39(v55, v29);
  v39(v54, v29);
  return (*(v46 + 8))(v53, v27);
}

uint64_t RectanglePlot.init<A, B>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v54 = a8;
  v52 = a4;
  v49 = a2;
  v55 = a1;
  v51 = a3;
  v53 = a9;
  v50 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v50);
  v14 = (&v44 - v13);
  v48 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v44 - v15;
  v47 = *(a6 - 8);
  v17 = v47;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v20;
  *&v56 = a6;
  *(&v56 + 1) = a7;
  v44 = a7;
  *&v57 = MEMORY[0x1E69E63B0];
  *(&v57 + 1) = v54;
  *&v58 = a10;
  v45 = a10;
  *(&v58 + 1) = &protocol witness table for Double;
  v21 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v44 - v22;
  v24 = a5[5];
  v60 = a5[4];
  v61 = v24;
  v62 = a5[6];
  v63 = *(a5 + 112);
  v25 = a5[1];
  v56 = *a5;
  v57 = v25;
  v26 = a5[3];
  v58 = a5[2];
  v59 = v26;
  v27 = v20;
  v28 = a6;
  (*(v17 + 16))(v27, v55, a6);
  v29 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v30 = &v16[*(swift_getTupleTypeMetadata2() + 48)];
  v31 = *(v29 - 8);
  v32 = v49;
  (*(v31 + 16))(v16, v49, v29);
  v33 = v61;
  *(v30 + 4) = v60;
  *(v30 + 5) = v33;
  *(v30 + 6) = v62;
  v30[112] = v63;
  v34 = v57;
  *v30 = v56;
  *(v30 + 1) = v34;
  v35 = v59;
  *(v30 + 2) = v58;
  *(v30 + 3) = v35;
  swift_storeEnumTagMultiPayload();
  v36 = v52;
  *v14 = v51;
  v14[1] = v36;
  swift_storeEnumTagMultiPayload();
  v37 = v16;
  v38 = v14;
  v39 = v44;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v54;
  v42 = v45;
  sub_1AAF314E0(v46, v37, v38, v28, v23);
  sub_1AAE6CFC8(v23, v28, v39, v40, v41, v42, &protocol witness table for Double, v53);
  (*(v31 + 8))(v32, v29);
  return (*(v47 + 8))(v55, v28);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a8;
  v54 = a7;
  v55 = a1;
  v52 = a4;
  v50 = a3;
  v48 = a2;
  v53 = a9;
  v51 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v15 = MEMORY[0x1E69E63B0];
  v46 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v46);
  v17 = (&v44 - v16);
  v47 = *(a6 - 8);
  v18 = v47;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v56 = a6;
  *(&v56 + 1) = v15;
  v45 = a6;
  *&v57 = v54;
  *(&v57 + 1) = a8;
  *&v58 = &protocol witness table for Double;
  *(&v58 + 1) = a10;
  v22 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v44 - v23;
  v25 = a5[5];
  v60 = a5[4];
  v61 = v25;
  v62 = a5[6];
  v63 = *(a5 + 112);
  v26 = a5[1];
  v56 = *a5;
  v57 = v26;
  v27 = a5[3];
  v58 = a5[2];
  v59 = v27;
  (*(v18 + 16))(v21, v55, a6);
  v28 = v50;
  *v17 = v48;
  v17[1] = v28;
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v30 = &v14[*(swift_getTupleTypeMetadata2() + 48)];
  v31 = *(v29 - 8);
  v32 = v52;
  (*(v31 + 16))(v14, v52, v29);
  v33 = v61;
  *(v30 + 4) = v60;
  *(v30 + 5) = v33;
  *(v30 + 6) = v62;
  v30[112] = v63;
  v34 = v57;
  *v30 = v56;
  *(v30 + 1) = v34;
  v35 = v59;
  *(v30 + 2) = v58;
  *(v30 + 3) = v35;
  swift_storeEnumTagMultiPayload();
  v36 = v21;
  v37 = v17;
  v38 = v14;
  v39 = v45;
  v40 = MEMORY[0x1E69E63B0];
  v41 = v54;
  v42 = v49;
  sub_1AAF314E0(v36, v37, v38, v45, v24);
  sub_1AAE6CFC8(v24, v39, v40, v41, v42, &protocol witness table for Double, a10, v53);
  (*(v31 + 8))(v32, v29);
  return (*(v47 + 8))(v55, v39);
}

uint64_t RectanglePlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a8;
  v46 = a1;
  v52 = a4;
  v53 = a5;
  v50 = a2;
  v51 = a3;
  v54 = a9;
  v49 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v49);
  v15 = (&v42 - v14);
  v48 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v48);
  v17 = &v42 - v16;
  v47 = *(a6 - 8);
  v18 = v47;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v21;
  v55 = a6;
  v56 = a7;
  v57 = MEMORY[0x1E69E63B0];
  v58 = a8;
  v59 = a10;
  v42 = a10;
  v60 = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v44 = &v42 - v24;
  (*(v18 + 16))(v21, a1, a6, v23);
  v25 = type metadata accessor for PlottableProjection();
  v26 = *(swift_getTupleTypeMetadata2() + 48);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v29 = v50;
  v28(v17, v50, v25);
  v30 = &v17[v26];
  v31 = v51;
  v28(v30, v51, v25);
  swift_storeEnumTagMultiPayload();
  v32 = v53;
  *v15 = v52;
  v15[1] = v32;
  swift_storeEnumTagMultiPayload();
  v33 = v44;
  v34 = v17;
  v35 = v15;
  v36 = a7;
  v37 = MEMORY[0x1E69E63B0];
  v38 = v45;
  v39 = v42;
  sub_1AAF314E0(v43, v34, v35, a6, v44);
  sub_1AAE6CFC8(v33, a6, v36, v37, v38, v39, &protocol witness table for Double, v54);
  v40 = *(v27 + 8);
  v40(v31, v25);
  v40(v29, v25);
  return (*(v47 + 8))(v46, a6);
}

{
  v46 = a8;
  v52 = a7;
  v53 = a1;
  v50 = a5;
  v51 = a9;
  v54 = a4;
  v48 = a3;
  v43 = a10;
  v49 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v43 - v13;
  v15 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v43 - v16);
  v47 = *(a6 - 8);
  v18 = v47;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v21;
  v55 = a6;
  v22 = a6;
  v56 = MEMORY[0x1E69E63B0];
  v57 = v52;
  v58 = a8;
  v23 = v43;
  v59 = &protocol witness table for Double;
  v60 = v43;
  v24 = type metadata accessor for XYRenderer();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v45 = &v43 - v26;
  (*(v18 + 16))(v21, v53, a6, v25);
  v27 = v48;
  *v17 = a2;
  v17[1] = v27;
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for PlottableProjection();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v31(v14, v54, v28);
  v32 = &v14[v29];
  v33 = v50;
  v31(v32, v50, v28);
  swift_storeEnumTagMultiPayload();
  v34 = v45;
  v35 = v17;
  v36 = v22;
  v37 = v22;
  v38 = MEMORY[0x1E69E63B0];
  v39 = v52;
  v40 = v46;
  sub_1AAF314E0(v44, v35, v14, v37, v45);
  sub_1AAE6CFC8(v34, v36, v38, v39, v40, &protocol witness table for Double, v23, v51);
  v41 = *(v30 + 8);
  v41(v33, v28);
  v41(v54, v28);
  return (*(v47 + 8))(v53, v36);
}

uint64_t RectanglePlot.init<A>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v32 = a1;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v36 = a8;
  v11 = MEMORY[0x1E69E63B0];
  v12 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v31 - v16);
  v18 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a6;
  v38 = v11;
  v39 = v11;
  v40 = a7;
  v41 = &protocol witness table for Double;
  v42 = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v31 - v24;
  v26 = v32;
  (*(v18 + 16))(v21, v32, a6, v23);
  v27 = v33;
  *v17 = a2;
  v17[1] = v27;
  swift_storeEnumTagMultiPayload();
  v28 = v35;
  *v14 = v34;
  v14[1] = v28;
  swift_storeEnumTagMultiPayload();
  v29 = v31;
  sub_1AAF314E0(v21, v17, v14, a6, v25);
  sub_1AAE6CFC8(v25, a6, v11, v11, v29, &protocol witness table for Double, &protocol witness table for Double, v36);
  return (*(v18 + 8))(v26, a6);
}

uint64_t static VectorizedRectanglePlotContent._layoutChartContent(_:_:)(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1AACBB42C(a1, v3);
  v6 = *a2;
  return (*(v4 + 8))(&v6, v3, v4);
}

uint64_t static VectorizedRectanglePlotContent._renderChartContent(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AACE4ACC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 8);
  sub_1AAE70C68(a1, v11);
  v32[0] = v12;
  v33 = v13;
  sub_1AAF52D70(v32);
  if (v12)
  {
    v14 = type metadata accessor for SgGroup(0);
    v31 = a3;
    v15 = v14;
    v16 = swift_allocBox();
    v18 = v17;
    v30 = *(*(v13 + 16) + 24);
    v20 = a1[3];
    v19 = a1[4];
    sub_1AACBB42C(a1, v20);
    v21 = (*(v19 + 32))(&type metadata for RectangleMark, v13, &type metadata for RectangleMark, &off_1F1FDA690, v20, v19);
    v22 = type metadata accessor for SgClipRect(0);
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = v13 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v24 = *(v23 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 64));
    sub_1AAE70CCC(v11);
    *v18 = v30;
    v18[1] = v21;
    result = sub_1AAE70D28(v8, v18 + v15[6], sub_1AACE4ACC);
    *(v18 + v15[7]) = 0x3FF0000000000000;
    *(v18 + v15[8]) = v24;
    *(v18 + v15[9]) = MEMORY[0x1E69E7CC0];
    v26 = v15[10];
    a3 = v31;
    *(v18 + v26) = 0;
  }

  else
  {
    type metadata accessor for AnyVectorizedRenderer(0);
    v27 = swift_allocBox();
    sub_1AAE70D28(v11, v28, type metadata accessor for RectanglesRenderer);
    type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
    result = swift_storeEnumTagMultiPayload();
    v16 = v27 | 0xD000000000000000;
  }

  *a3 = v16;
  return result;
}

uint64_t sub_1AAE70C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectanglesRenderer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE70CCC(uint64_t a1)
{
  v2 = type metadata accessor for RectanglesRenderer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE70D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE70DD8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE70E4C()
{
  result = type metadata accessor for RectanglesRenderer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 RuleMark.init<A>(xStart:xEnd:y:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v30[0] = 0;
  BYTE8(v30[0]) = 1;
  sub_1AAD59F90(v30);
  v16 = v30[7];
  *(a8 + 384) = v30[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v30[8];
  v17 = v30[3];
  *(a8 + 320) = v30[2];
  *(a8 + 336) = v17;
  v18 = v30[5];
  *(a8 + 352) = v30[4];
  *(a8 + 368) = v18;
  v19 = v30[1];
  *(a8 + 288) = v30[0];
  *(a8 + 304) = v19;
  *&v31 = a1;
  BYTE8(v31) = a2 & 1;
  *&v32 = a3;
  BYTE8(v32) = a4 & 1;
  sub_1AAE52D28(&v31);
  v20 = v38;
  *(a8 + 96) = v37;
  *(a8 + 112) = v20;
  *(a8 + 128) = v39;
  v21 = v34;
  *(a8 + 32) = v33;
  *(a8 + 48) = v21;
  v22 = v36;
  *(a8 + 64) = v35;
  *(a8 + 80) = v22;
  v23 = v32;
  *a8 = v31;
  *(a8 + 16) = v23;
  sub_1AAE83B9C(a5, a6, a7, v29);
  v24 = type metadata accessor for PlottableValue();
  (*(*(v24 - 8) + 8))(a5, v24);
  v25 = v29[7];
  *(a8 + 240) = v29[6];
  *(a8 + 256) = v25;
  *(a8 + 272) = v29[8];
  v26 = v29[3];
  *(a8 + 176) = v29[2];
  *(a8 + 192) = v26;
  v27 = v29[5];
  *(a8 + 208) = v29[4];
  *(a8 + 224) = v27;
  result = v29[1];
  *(a8 + 144) = v29[0];
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A, B>(xStart:xEnd:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v33[0] = 0;
  BYTE8(v33[0]) = 1;
  sub_1AAD59F90(v33);
  v16 = v33[7];
  *(a8 + 384) = v33[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v33[8];
  v17 = v33[3];
  *(a8 + 320) = v33[2];
  *(a8 + 336) = v17;
  v18 = v33[5];
  *(a8 + 352) = v33[4];
  *(a8 + 368) = v18;
  v19 = v33[1];
  *(a8 + 288) = v33[0];
  *(a8 + 304) = v19;
  sub_1AAE83D50(a1, a2, a4, a6, v31);
  v20 = v31[7];
  *(a8 + 96) = v31[6];
  *(a8 + 112) = v20;
  *(a8 + 128) = v31[8];
  v21 = v31[3];
  *(a8 + 32) = v31[2];
  *(a8 + 48) = v21;
  v22 = v31[5];
  *(a8 + 64) = v31[4];
  *(a8 + 80) = v22;
  v23 = v31[1];
  *a8 = v31[0];
  *(a8 + 16) = v23;
  sub_1AAE83B9C(a3, a5, a7, v32);
  v24 = type metadata accessor for PlottableValue();
  (*(*(v24 - 8) + 8))(a3, v24);
  v25 = type metadata accessor for PlottableValue();
  v26 = *(*(v25 - 8) + 8);
  v26(a2, v25);
  v26(a1, v25);
  v27 = v32[7];
  *(a8 + 240) = v32[6];
  *(a8 + 256) = v27;
  *(a8 + 272) = v32[8];
  v28 = v32[3];
  *(a8 + 176) = v32[2];
  *(a8 + 192) = v28;
  v29 = v32[5];
  *(a8 + 208) = v32[4];
  *(a8 + 224) = v29;
  result = v32[1];
  *(a8 + 144) = v32[0];
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A>(xStart:xEnd:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v29[0] = 0;
  BYTE8(v29[0]) = 1;
  sub_1AAD59F90(v29);
  v14 = v29[7];
  *(a7 + 384) = v29[6];
  *(a7 + 400) = v14;
  *(a7 + 416) = v29[8];
  v15 = v29[3];
  *(a7 + 320) = v29[2];
  *(a7 + 336) = v15;
  v16 = v29[5];
  *(a7 + 352) = v29[4];
  *(a7 + 368) = v16;
  v17 = v29[1];
  *(a7 + 288) = v29[0];
  *(a7 + 304) = v17;
  sub_1AAE83D50(a1, a2, a5, a6, v28);
  v18 = type metadata accessor for PlottableValue();
  v19 = *(*(v18 - 8) + 8);
  v19(a2, v18);
  v19(a1, v18);
  v20 = v28[7];
  *(a7 + 96) = v28[6];
  *(a7 + 112) = v20;
  *(a7 + 128) = v28[8];
  v21 = v28[3];
  *(a7 + 32) = v28[2];
  *(a7 + 48) = v21;
  v22 = v28[5];
  *(a7 + 64) = v28[4];
  *(a7 + 80) = v22;
  v23 = v28[1];
  *a7 = v28[0];
  *(a7 + 16) = v23;
  *&v30[0] = a3;
  BYTE8(v30[0]) = a4 & 1;
  sub_1AAD59F90(v30);
  v24 = v30[7];
  *(a7 + 240) = v30[6];
  *(a7 + 256) = v24;
  *(a7 + 272) = v30[8];
  v25 = v30[3];
  *(a7 + 176) = v30[2];
  *(a7 + 192) = v25;
  v26 = v30[5];
  *(a7 + 208) = v30[4];
  *(a7 + 224) = v26;
  result = v30[1];
  *(a7 + 144) = v30[0];
  *(a7 + 160) = result;
  return result;
}

__n128 RuleMark.init<A>(x:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v30[0] = 0;
  BYTE8(v30[0]) = 1;
  sub_1AAD59F90(v30);
  v16 = v30[7];
  *(a8 + 384) = v30[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v30[8];
  v17 = v30[3];
  *(a8 + 320) = v30[2];
  *(a8 + 336) = v17;
  v18 = v30[5];
  *(a8 + 352) = v30[4];
  *(a8 + 368) = v18;
  v19 = v30[1];
  *(a8 + 288) = v30[0];
  *(a8 + 304) = v19;
  sub_1AAE83B9C(a1, a6, a7, v29);
  v20 = type metadata accessor for PlottableValue();
  (*(*(v20 - 8) + 8))(a1, v20);
  v21 = v29[7];
  *(a8 + 96) = v29[6];
  *(a8 + 112) = v21;
  *(a8 + 128) = v29[8];
  v22 = v29[3];
  *(a8 + 32) = v29[2];
  *(a8 + 48) = v22;
  v23 = v29[5];
  *(a8 + 64) = v29[4];
  *(a8 + 80) = v23;
  v24 = v29[1];
  *a8 = v29[0];
  *(a8 + 16) = v24;
  *&v31 = a2;
  BYTE8(v31) = a3 & 1;
  v32.n128_u64[0] = a4;
  v32.n128_u8[8] = a5 & 1;
  sub_1AAE52D28(&v31);
  v25 = v38;
  *(a8 + 240) = v37;
  *(a8 + 256) = v25;
  *(a8 + 272) = v39;
  v26 = v34;
  *(a8 + 176) = v33;
  *(a8 + 192) = v26;
  v27 = v36;
  *(a8 + 208) = v35;
  *(a8 + 224) = v27;
  result = v32;
  *(a8 + 144) = v31;
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A, B>(x:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v33[0] = 0;
  BYTE8(v33[0]) = 1;
  sub_1AAD59F90(v33);
  v16 = v33[7];
  *(a8 + 384) = v33[6];
  *(a8 + 400) = v16;
  *(a8 + 416) = v33[8];
  v17 = v33[3];
  *(a8 + 320) = v33[2];
  *(a8 + 336) = v17;
  v18 = v33[5];
  *(a8 + 352) = v33[4];
  *(a8 + 368) = v18;
  v19 = v33[1];
  *(a8 + 288) = v33[0];
  *(a8 + 304) = v19;
  sub_1AAE83B9C(a1, a4, a6, v31);
  v20 = v31[7];
  *(a8 + 96) = v31[6];
  *(a8 + 112) = v20;
  *(a8 + 128) = v31[8];
  v21 = v31[3];
  *(a8 + 32) = v31[2];
  *(a8 + 48) = v21;
  v22 = v31[5];
  *(a8 + 64) = v31[4];
  *(a8 + 80) = v22;
  v23 = v31[1];
  *a8 = v31[0];
  *(a8 + 16) = v23;
  sub_1AAE83D50(a2, a3, a5, a7, v32);
  v24 = type metadata accessor for PlottableValue();
  v25 = *(*(v24 - 8) + 8);
  v25(a3, v24);
  v25(a2, v24);
  v26 = type metadata accessor for PlottableValue();
  (*(*(v26 - 8) + 8))(a1, v26);
  v27 = v32[7];
  *(a8 + 240) = v32[6];
  *(a8 + 256) = v27;
  *(a8 + 272) = v32[8];
  v28 = v32[3];
  *(a8 + 176) = v32[2];
  *(a8 + 192) = v28;
  v29 = v32[5];
  *(a8 + 208) = v32[4];
  *(a8 + 224) = v29;
  result = v32[1];
  *(a8 + 144) = v32[0];
  *(a8 + 160) = result;
  return result;
}

__n128 RuleMark.init<A>(x:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v29[0] = 0;
  BYTE8(v29[0]) = 1;
  sub_1AAD59F90(v29);
  v14 = v29[7];
  *(a7 + 384) = v29[6];
  *(a7 + 400) = v14;
  *(a7 + 416) = v29[8];
  v15 = v29[3];
  *(a7 + 320) = v29[2];
  *(a7 + 336) = v15;
  v16 = v29[5];
  *(a7 + 352) = v29[4];
  *(a7 + 368) = v16;
  v17 = v29[1];
  *(a7 + 288) = v29[0];
  *(a7 + 304) = v17;
  *&v30[0] = a1;
  BYTE8(v30[0]) = a2 & 1;
  sub_1AAD59F90(v30);
  v18 = v30[7];
  *(a7 + 96) = v30[6];
  *(a7 + 112) = v18;
  *(a7 + 128) = v30[8];
  v19 = v30[3];
  *(a7 + 32) = v30[2];
  *(a7 + 48) = v19;
  v20 = v30[5];
  *(a7 + 64) = v30[4];
  *(a7 + 80) = v20;
  v21 = v30[1];
  *a7 = v30[0];
  *(a7 + 16) = v21;
  sub_1AAE83D50(a3, a4, a5, a6, v28);
  v22 = type metadata accessor for PlottableValue();
  v23 = *(*(v22 - 8) + 8);
  v23(a4, v22);
  v23(a3, v22);
  v24 = v28[7];
  *(a7 + 240) = v28[6];
  *(a7 + 256) = v24;
  *(a7 + 272) = v28[8];
  v25 = v28[3];
  *(a7 + 176) = v28[2];
  *(a7 + 192) = v25;
  v26 = v28[5];
  *(a7 + 208) = v28[4];
  *(a7 + 224) = v26;
  result = v28[1];
  *(a7 + 144) = v28[0];
  *(a7 + 160) = result;
  return result;
}

uint64_t static RuleMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

unint64_t static RuleMark._renderChartContent(_:_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[7];
  v36[6] = a1[6];
  v36[7] = v13;
  v14 = a1[9];
  v36[8] = a1[8];
  v15 = a1[3];
  v36[2] = a1[2];
  v36[3] = v15;
  v16 = a1[5];
  v36[4] = a1[4];
  v36[5] = v16;
  v17 = a1[1];
  v36[0] = *a1;
  v36[1] = v17;
  v18 = a1[15];
  v35[5] = a1[14];
  v35[6] = v18;
  v19 = a1[17];
  v35[7] = a1[16];
  v35[8] = v19;
  v20 = a1[11];
  v35[1] = a1[10];
  v35[2] = v20;
  v21 = a1[13];
  v35[3] = a1[12];
  v35[4] = v21;
  v35[0] = v14;
  LOBYTE(v11) = *a2;
  v22 = *(a2 + 8);
  if (v11)
  {
    result = sub_1AAE71AC4(v36, v35, v22);
  }

  else
  {
    v24 = v10;
    sub_1AAD036DC(v36, 0, v33[0].f64);
    v32[0].val[0] = v33[0];
    v32[0].val[1] = v25;
    sub_1AAD036DC(v35, 1, v34[0].f64);
    v26 = *(*(v22 + 16) + 24);
    v27 = v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    v32[0].val[1] = v34[0];
    swift_beginAccess();
    sub_1AAE4911C(v27, v8);
    sub_1AAD0F2A4(v8, v12 + *(v24 + 36));
    v28 = *(v27 + *(v6 + 64));
    v29 = (v12 + 1);
    v37 = v32[0];
    vst2q_f64(v29, v37);
    *v12 = v26;
    *(v12 + *(v24 + 40)) = v28;
    v30 = swift_allocBox();
    sub_1AAE71FB0(v12, v31);
    result = v30 | 0x6000000000000000;
  }

  *a3 = result;
  return result;
}

unint64_t sub_1AAE71AC4(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  sub_1AAD036DC(a1, 0, v105);
  v6 = v105[0];
  v7 = v105[1];
  sub_1AAD036DC(a2, 1, v106);
  v8 = v106[0];
  v9 = v106[1];
  sub_1AAD6D0FC();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AAF99670;
  sub_1AAD5835C(a1, v109);
  sub_1AAF72B20(0, a1, v107);
  v11 = v107[7];
  *(v10 + 128) = v107[6];
  *(v10 + 144) = v11;
  *(v10 + 160) = v107[8];
  *(v10 + 176) = v108;
  v12 = v107[3];
  *(v10 + 64) = v107[2];
  *(v10 + 80) = v12;
  v13 = v107[5];
  *(v10 + 96) = v107[4];
  *(v10 + 112) = v13;
  v14 = v107[1];
  *(v10 + 32) = v107[0];
  *(v10 + 48) = v14;
  sub_1AAD5835C(a2, v109);
  sub_1AAF72B20(1, a2, v109);
  v15 = v109[6];
  v16 = v109[8];
  *(v10 + 296) = v109[7];
  *(v10 + 312) = v16;
  v17 = v109[3];
  *(v10 + 216) = v109[2];
  *(v10 + 232) = v17;
  v18 = v109[5];
  *(v10 + 248) = v109[4];
  *(v10 + 264) = v18;
  *(v10 + 280) = v15;
  v19 = v109[1];
  *(v10 + 184) = v109[0];
  *(v10 + 328) = v110;
  v20 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v10 + 200) = v19;
  swift_beginAccess();
  v21 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v22 = (v20 + v21[17]);
  v104 = *(v22 + 8);
  v23 = v22[3];
  v102 = v22[2];
  v103 = v23;
  v24 = v22[1];
  v100 = *v22;
  v101 = v24;
  if (*(&v24 + 1))
  {
    *&v72[7] = *v22;
    v25 = v22[3];
    *&v74[8] = v22[2];
    *&v74[24] = v25;
    *&v72[23] = *(v22 + 2);
    *&v74[40] = *(v22 + 8);
    v73[0] = 5;
    *&v73[1] = *v72;
    *&v73[16] = *&v72[15];
    *v74 = *(&v101 + 1);
    LOBYTE(v75) = 3;
    sub_1AAE0C0B0(v73);
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v89 = v79;
    v82 = *v74;
    v83 = *&v74[16];
    v84 = *&v74[32];
    v85 = v75;
    v80 = *v73;
    v81 = *&v73[16];
    nullsub_1(&v80, v26);
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v99 = v89;
    v92 = v82;
    v93 = v83;
    v94 = v84;
    v95 = v85;
    v90 = v80;
    v91 = v81;
  }

  else
  {
    sub_1AAE2D7EC(&v90);
  }

  v27 = vabdd_f64(v9, v8);
  v28 = vabdd_f64(v7, v6);
  if (v9 < v8)
  {
    v8 = v9;
  }

  if (v7 < v6)
  {
    v6 = v7;
  }

  v29 = v97;
  *(v10 + 432) = v96;
  *(v10 + 448) = v29;
  *(v10 + 464) = v98;
  *(v10 + 480) = v99;
  v30 = v93;
  *(v10 + 368) = v92;
  *(v10 + 384) = v30;
  v31 = v95;
  *(v10 + 400) = v94;
  *(v10 + 416) = v31;
  v32 = v91;
  *(v10 + 336) = v90;
  *(v10 + 352) = v32;
  sub_1AADC8554(&v100, &v80);
  v70 = sub_1AAF70438(v10);
  v71 = v33;
  swift_setDeallocating();
  sub_1AACB1BC0(0, qword_1ED9B2098);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = *(*(a3 + 16) + 24);
  v35 = (v20 + v21[25]);
  v36 = v35[1];
  v37 = (v20 + v21[23]);
  v38 = *v37;
  v39 = v37[1];
  v41 = v37[2];
  v40 = v37[3];
  v42 = (v20 + v21[24]);
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v68 = v42[3];
  v69 = v34;
  v67 = *v35;
  sub_1AAE2D7EC(&v80);
  v46 = swift_allocObject();
  *(v46 + 24) = v6;
  *(v46 + 32) = v8;
  *&v47 = v67;
  *(&v47 + 1) = v36;
  *&v48 = v38;
  *(&v48 + 1) = v39;
  *(v46 + 40) = v28;
  *(v46 + 48) = v27;
  *(v46 + 72) = v48;
  *(v46 + 56) = v47;
  *&v48 = v41;
  *(&v48 + 1) = v40;
  *&v47 = v43;
  *(&v47 + 1) = v44;
  *(v46 + 104) = v47;
  *(v46 + 88) = v48;
  v50 = v86;
  v49 = v87;
  v51 = v85;
  *(v46 + 240) = v86;
  *(v46 + 256) = v49;
  v52 = v87;
  *(v46 + 272) = v88;
  v54 = v82;
  v53 = v83;
  v55 = v81;
  *(v46 + 176) = v82;
  *(v46 + 192) = v53;
  v56 = v83;
  v58 = v84;
  v57 = v85;
  *(v46 + 208) = v84;
  *(v46 + 224) = v57;
  v59 = v81;
  *(v46 + 144) = v80;
  *(v46 + 160) = v59;
  v60 = v87;
  *(v46 + 400) = v86;
  *(v46 + 416) = v60;
  *(v46 + 432) = v88;
  v61 = v83;
  *(v46 + 336) = v82;
  *(v46 + 352) = v61;
  v62 = v85;
  *(v46 + 368) = v84;
  *(v46 + 384) = v62;
  v64 = v80;
  v63 = v81;
  *(v46 + 304) = v80;
  *(v46 + 320) = v63;
  *(v46 + 552) = v50;
  *(v46 + 568) = v52;
  *(v46 + 584) = v88;
  *(v46 + 16) = v69;
  *(v46 + 120) = v45;
  *(v46 + 128) = v68;
  *(v46 + 136) = v70;
  v65 = v89;
  *(v46 + 288) = v89;
  *(v46 + 296) = v71;
  *(v46 + 448) = v65;
  *(v46 + 600) = v89;
  *(v46 + 488) = v54;
  *(v46 + 504) = v56;
  *(v46 + 520) = v58;
  *(v46 + 536) = v51;
  *(v46 + 456) = v64;
  *(v46 + 472) = v55;
  *(v46 + 608) = 0;
  *(v46 + 610) = *v73;
  *(v46 + 614) = *&v73[4];
  *(v46 + 616) = 0;

  sub_1AADA61DC(v38, v39, v41, v40);
  sub_1AADA61DC(v43, v44, v45, v68);
  return v46 | 0xC000000000000000;
}

uint64_t sub_1AAE71FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgRule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RulePlot<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800(v2, v4, a2);
  sub_1AACE0800(v7, v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAE720FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = a8;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v9 = type metadata accessor for XYRenderer();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v10 + 16))(&v15 - v12, a1, v9, v11);
  sub_1AAE72240(v13, v16);
  return (*(v10 + 8))(a1, v9);
}

uint64_t sub_1AAE72240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XYRenderer();
  *(a2 + 24) = v4;
  *(a2 + 32) = &off_1F1FE53F0;
  v5 = sub_1AACB2508(a2);
  (*(*(v4 - 8) + 32))(v5, a1, v4);
  v6 = type metadata accessor for RulesRenderer(0);
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  v7 = *(v6 + 32);
  v8 = type metadata accessor for ChartContentRenderContext.Environment(0);
  return (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
}

uint64_t RulePlot.init<A, B, C>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v59 = a8;
  v60 = a1;
  v61 = a4;
  v62 = a3;
  v63 = a2;
  v58 = a9;
  v46 = a11;
  swift_getAssociatedTypeWitness();
  v14 = a7;
  v48 = a7;
  v57 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v45 - v15;
  v54 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v54);
  v17 = &v45 - v16;
  v56 = *(a5 - 8);
  v18 = v56;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v21;
  v53 = a5;
  v64 = a5;
  v65 = a6;
  v49 = a6;
  v50 = a10;
  v66 = v14;
  v67 = v59;
  v22 = v46;
  v68 = a10;
  v69 = v46;
  v23 = type metadata accessor for XYRenderer();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v45 - v25;
  (*(v18 + 16))(v21, v60, a5, v24);
  v26 = type metadata accessor for PlottableProjection();
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v51 = *(v26 - 8);
  v28 = *(v51 + 16);
  v29 = v17;
  v28(v17, v63, v26);
  v28(&v17[v27], v62, v26);
  swift_storeEnumTagMultiPayload();
  v30 = v48;
  v31 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = *(v31 - 8);
  v34 = v55;
  (*(v33 + 16))(v55, v61, v31);
  MarkDimensions.init(integerLiteral:)(&v34[v32]);
  swift_storeEnumTagMultiPayload();
  v35 = v47;
  v36 = v29;
  v37 = v34;
  v38 = v53;
  v39 = v49;
  v40 = v30;
  v41 = v59;
  v42 = v50;
  sub_1AAF314E0(v52, v36, v37, v53, v47);
  sub_1AAE720FC(v35, v38, v39, v40, v41, v42, v22, v58);
  (*(v33 + 8))(v61, v31);
  v43 = *(v51 + 8);
  v43(v62, v26);
  v43(v63, v26);
  return (*(v56 + 8))(v60, v38);
}

uint64_t RulePlot.init<A, B, C>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v57 = a8;
  v58 = a1;
  v55 = a4;
  v56 = a9;
  v59 = a2;
  v60 = a3;
  v44 = a10;
  swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v54);
  v15 = &v44 - v14;
  v50 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v44 - v16;
  v53 = *(a5 - 8);
  v18 = v53;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v21;
  v48 = a5;
  v61 = a5;
  v62 = a7;
  v45 = a7;
  v63 = a6;
  v64 = v57;
  v65 = a11;
  v46 = a11;
  v22 = v44;
  v66 = v44;
  v23 = type metadata accessor for XYRenderer();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v44 - v25;
  (*(v18 + 16))(v21, v58, a5, v24);
  v26 = type metadata accessor for PlottableProjection();
  v27 = *(v26 - 8);
  v51 = v26;
  v52 = v27;
  (*(v27 + 16))(v17, v59, v26);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for PlottableProjection();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v31(v15, v60, v28);
  v32 = &v15[v29];
  v33 = v55;
  v31(v32, v55, v28);
  swift_storeEnumTagMultiPayload();
  v34 = v48;
  v35 = v49;
  v36 = v17;
  v37 = v15;
  v38 = v45;
  v39 = a6;
  v40 = v57;
  v41 = v46;
  sub_1AAF314E0(v47, v36, v37, v48, v49);
  sub_1AAE720FC(v35, v34, v38, v39, v40, v41, v22, v56);
  v42 = *(v30 + 8);
  v42(v33, v28);
  v42(v60, v28);
  (*(v52 + 8))(v59, v51);
  return (*(v53 + 8))(v58, v34);
}

uint64_t RulePlot.init<A, B>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a6;
  v54 = a9;
  v51 = a5;
  v50 = a4;
  v49 = a3;
  v55 = a1;
  v43 = a11;
  v47 = a10;
  v48 = a2;
  swift_getAssociatedTypeWitness();
  v52 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v41 - v13;
  v15 = MEMORY[0x1E69E63B0];
  v16 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v46 = *(a7 - 8);
  v19 = v46;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a7;
  v57 = v15;
  v44 = a7;
  v58 = a8;
  v59 = a10;
  v42 = a8;
  v23 = v43;
  v60 = &protocol witness table for Double;
  v61 = v43;
  v24 = type metadata accessor for XYRenderer();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v45 = &v41 - v26;
  (*(v19 + 16))(v22, v55, a7, v25);
  *v18 = v48;
  v18[8] = v49 & 1;
  *(v18 + 2) = v50;
  v18[24] = v51 & 1;
  swift_storeEnumTagMultiPayload();
  v27 = v23;
  v28 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v30 = *(v28 - 8);
  v31 = v53;
  (*(v30 + 16))(v14, v53, v28);
  MarkDimensions.init(integerLiteral:)(&v14[v29]);
  swift_storeEnumTagMultiPayload();
  v32 = v27;
  v34 = v44;
  v33 = v45;
  v35 = v18;
  v36 = v14;
  v37 = MEMORY[0x1E69E63B0];
  v38 = v42;
  v39 = v47;
  sub_1AAF314E0(v22, v35, v36, v44, v45);
  sub_1AAE720FC(v33, v34, v37, v38, v39, &protocol witness table for Double, v32, v54);
  (*(v30 + 8))(v31, v28);
  return (*(v46 + 8))(v55, v34);
}

uint64_t RulePlot.init<A, B>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a5;
  v48 = a3;
  v49 = a4;
  v52 = a1;
  v53 = a2;
  v51 = a9;
  v44 = a8;
  swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1E69E63B0];
  v47 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v47);
  v15 = &v42 - v14;
  v46 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v42 - v16;
  v45 = *(a6 - 8);
  v18 = v45;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v55 = a7;
  v42 = a10;
  v43 = a6;
  v56 = v13;
  v57 = a8;
  v58 = a10;
  v59 = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v42 - v24;
  (*(v18 + 16))(v21, v52, a6, v23);
  v26 = a7;
  v27 = type metadata accessor for PlottableProjection();
  v28 = *(swift_getTupleTypeMetadata2() + 48);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v30(v17, v53, v27);
  v31 = &v17[v28];
  v32 = v48;
  v30(v31, v48, v27);
  swift_storeEnumTagMultiPayload();
  *v15 = v49;
  v15[8] = v50 & 1;
  swift_storeEnumTagMultiPayload();
  v33 = v21;
  v34 = v15;
  v35 = v43;
  v36 = v44;
  v37 = v26;
  v38 = MEMORY[0x1E69E63B0];
  v39 = v42;
  sub_1AAF314E0(v33, v17, v34, v43, v25);
  sub_1AAE720FC(v25, v35, v37, v38, v36, v39, &protocol witness table for Double, v51);
  v40 = *(v29 + 8);
  v40(v32, v27);
  v40(v53, v27);
  return (*(v45 + 8))(v52, v35);
}

uint64_t RulePlot.init<A, B>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v46 = a6;
  v45 = a5;
  v44 = a4;
  v42 = a2;
  v43 = a3;
  v47 = a9;
  v48 = a1;
  v39 = a10;
  swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1E69E63B0];
  v41 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v36 - v14;
  v40 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v36 - v16;
  v38 = *(a7 - 8);
  v18 = v38;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a11;
  v37 = v21;
  v49 = a7;
  v50 = a8;
  v51 = v13;
  v52 = a10;
  v53 = a11;
  v54 = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v36 - v24;
  (*(v18 + 16))(v21, v48, a7, v23);
  v26 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v28 = *(v26 - 8);
  v29 = v42;
  (*(v28 + 16))(v17, v42, v26);
  MarkDimensions.init(integerLiteral:)(&v17[v27]);
  swift_storeEnumTagMultiPayload();
  *v15 = v43;
  v15[8] = v44 & 1;
  *(v15 + 2) = v45;
  v15[24] = v46 & 1;
  swift_storeEnumTagMultiPayload();
  v30 = v36;
  v31 = v17;
  v32 = v15;
  v33 = MEMORY[0x1E69E63B0];
  v34 = v39;
  sub_1AAF314E0(v37, v31, v32, a7, v25);
  sub_1AAE720FC(v25, a7, a8, v33, v34, v30, &protocol witness table for Double, v47);
  (*(v28 + 8))(v29, v26);
  return (*(v38 + 8))(v48, a7);
}

uint64_t RulePlot.init<A, B>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a7;
  v52 = a1;
  v49 = a5;
  v50 = a9;
  v53 = a4;
  v47 = a3;
  v46 = a2;
  v41 = a10;
  v44 = a8;
  swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v41 - v12;
  v14 = MEMORY[0x1E69E63B0];
  v15 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v45 = *(a6 - 8);
  v18 = v45;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v21;
  v54 = a6;
  v55 = v14;
  v56 = v51;
  v57 = a8;
  v22 = v41;
  v58 = &protocol witness table for Double;
  v59 = v41;
  v23 = type metadata accessor for XYRenderer();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v43 = &v41 - v25;
  (*(v18 + 16))(v21, v52, a6, v24);
  *v17 = v46;
  v17[8] = v47 & 1;
  swift_storeEnumTagMultiPayload();
  v26 = v22;
  v27 = type metadata accessor for PlottableProjection();
  v28 = *(swift_getTupleTypeMetadata2() + 48);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v30(v13, v53, v27);
  v31 = &v13[v28];
  v32 = v49;
  v30(v31, v49, v27);
  swift_storeEnumTagMultiPayload();
  v33 = v26;
  v34 = v43;
  v35 = v17;
  v36 = MEMORY[0x1E69E63B0];
  v37 = v51;
  v38 = v44;
  sub_1AAF314E0(v42, v35, v13, a6, v43);
  sub_1AAE720FC(v34, a6, v36, v37, v38, &protocol witness table for Double, v33, v50);
  v39 = *(v29 + 8);
  v39(v32, v27);
  v39(v53, v27);
  return (*(v45 + 8))(v52, a6);
}

uint64_t RulePlot.init<A, B>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v47 = a7;
  v48 = a3;
  v50 = a4;
  v51 = a9;
  v52 = a1;
  v49 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v41 - v13;
  v15 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v41 - v16);
  v46 = *(a5 - 8);
  v18 = v46;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a5;
  v44 = a5;
  v54 = MEMORY[0x1E69E63B0];
  v55 = a6;
  v42 = a6;
  v56 = a7;
  v22 = v43;
  v57 = &protocol witness table for Double;
  v58 = v43;
  v23 = type metadata accessor for XYRenderer();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v41 - v25;
  (*(v18 + 16))(v21, v52, a5, v24);
  v26 = v48;
  *v17 = a2;
  v17[1] = v26;
  swift_storeEnumTagMultiPayload();
  v27 = v22;
  v28 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v30 = *(v28 - 8);
  v31 = v50;
  (*(v30 + 16))(v14, v50, v28);
  MarkDimensions.init(integerLiteral:)(&v14[v29]);
  swift_storeEnumTagMultiPayload();
  v32 = v27;
  v34 = v44;
  v33 = v45;
  v35 = v17;
  v36 = v14;
  v37 = MEMORY[0x1E69E63B0];
  v38 = v42;
  v39 = v47;
  sub_1AAF314E0(v21, v35, v36, v44, v45);
  sub_1AAE720FC(v33, v34, v37, v38, v39, &protocol witness table for Double, v32, v51);
  (*(v30 + 8))(v31, v28);
  return (*(v46 + 8))(v52, v34);
}

{
  v43 = a7;
  v44 = a1;
  v49 = a4;
  v50 = a3;
  v51 = a9;
  v52 = a2;
  v14 = MEMORY[0x1E69E63B0];
  v48 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v48);
  v47 = (&v41 - v15);
  v16 = a8;
  v46 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v41 - v17;
  v45 = *(a5 - 8);
  v19 = v45;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a5;
  v54 = a6;
  v55 = v14;
  v56 = a7;
  v57 = v16;
  v41 = v16;
  v58 = &protocol witness table for Double;
  v23 = type metadata accessor for XYRenderer();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v42 = &v41 - v25;
  (*(v19 + 16))(v22, a1, a5, v24);
  v26 = type metadata accessor for PlottableProjection();
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v29(v18, v52, v26);
  v30 = &v18[v27];
  v31 = v50;
  v29(v30, v50, v26);
  swift_storeEnumTagMultiPayload();
  v32 = v47;
  *v47 = v49;
  swift_storeEnumTagMultiPayload();
  v34 = v41;
  v33 = v42;
  v35 = v22;
  v36 = v32;
  v37 = MEMORY[0x1E69E63B0];
  v38 = v43;
  sub_1AAF314E0(v35, v18, v36, a5, v42);
  sub_1AAE720FC(v33, a5, a6, v37, v38, v34, &protocol witness table for Double, v51);
  v39 = *(v28 + 8);
  v39(v31, v26);
  v39(v52, v26);
  return (*(v45 + 8))(v44, a5);
}

uint64_t RulePlot.init<A, B>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a7;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v40 = a1;
  v48 = a9;
  v44 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v37 - v14);
  v43 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v37 - v16;
  v41 = *(a5 - 8);
  v18 = v41;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v21;
  v49 = a5;
  v50 = a6;
  v51 = MEMORY[0x1E69E63B0];
  v52 = a7;
  v38 = a8;
  v53 = a8;
  v54 = &protocol witness table for Double;
  v22 = type metadata accessor for XYRenderer();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v37 - v24;
  (*(v18 + 16))(v21, a1, a5, v23);
  v26 = type metadata accessor for PlottableProjection();
  type metadata accessor for MarkDimensions();
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  v28 = *(v26 - 8);
  v29 = v45;
  (*(v28 + 16))(v17, v45, v26);
  MarkDimensions.init(integerLiteral:)(&v17[v27]);
  swift_storeEnumTagMultiPayload();
  v30 = v47;
  *v15 = v46;
  v15[1] = v30;
  swift_storeEnumTagMultiPayload();
  v31 = v17;
  v32 = v15;
  v33 = MEMORY[0x1E69E63B0];
  v34 = v42;
  v35 = v38;
  sub_1AAF314E0(v39, v31, v32, a5, v25);
  sub_1AAE720FC(v25, a5, a6, v33, v34, v35, &protocol witness table for Double, v48);
  (*(v28 + 8))(v29, v26);
  return (*(v41 + 8))(v40, a5);
}

{
  v45 = a8;
  v46 = a2;
  v47 = a7;
  v50 = a4;
  v51 = a9;
  v52 = a1;
  v53 = a3;
  v49 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v49);
  v13 = &v42 - v12;
  v14 = MEMORY[0x1E69E63B0];
  v15 = type metadata accessor for BoundingSectionSpecification();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v42 - v16);
  v48 = *(a5 - 8);
  v18 = v48;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v21;
  v44 = a5;
  v54 = a5;
  v55 = v14;
  v22 = a6;
  v56 = a6;
  v57 = a7;
  v23 = v45;
  v58 = &protocol witness table for Double;
  v59 = v45;
  v24 = type metadata accessor for XYRenderer();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v42 - v26;
  (*(v18 + 16))(v21, v52, a5, v25);
  *v17 = v46;
  swift_storeEnumTagMultiPayload();
  v28 = v23;
  v29 = type metadata accessor for PlottableProjection();
  v30 = *(swift_getTupleTypeMetadata2() + 48);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v13, v53, v29);
  v33 = &v13[v30];
  v34 = v50;
  v32(v33, v50, v29);
  swift_storeEnumTagMultiPayload();
  v35 = v17;
  v36 = v13;
  v37 = v44;
  v38 = MEMORY[0x1E69E63B0];
  v39 = v47;
  sub_1AAF314E0(v43, v35, v36, v44, v27);
  sub_1AAE720FC(v27, v37, v38, v22, v39, &protocol witness table for Double, v28, v51);
  v40 = *(v31 + 8);
  v40(v34, v29);
  v40(v53, v29);
  return (*(v48 + 8))(v52, v37);
}

uint64_t static VectorizedRulePlotContent._layoutChartContent(_:_:)(void *a1, __int128 *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1AACBB42C(a1, v3);
  v6 = *a2;
  return (*(v4 + 8))(&v6, v3, v4);
}

uint64_t static VectorizedRulePlotContent._renderChartContent(_:_:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AAD04AC0(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for RulesRenderer(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 1);
  sub_1AAE74DE0(a1, v12, type metadata accessor for RulesRenderer);
  *(v12 + 5) = v13;
  *(v12 + 6) = v14;

  v15 = *(v10 + 40);
  sub_1AAE74D68(&v12[v15]);
  v16 = v14 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AAE74DE0(v16, &v12[v15], type metadata accessor for ChartContentRenderContext.Environment);
  v17 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v17 - 8) + 56))(&v12[v15], 0, 1, v17);
  if (v13)
  {
    v18 = type metadata accessor for SgGroup(0);
    v35 = a3;
    v19 = v18;
    v20 = swift_allocBox();
    v33 = v8;
    v22 = v21;
    v34 = *(*(v14 + 16) + 24);
    v23 = a1[3];
    v24 = a1[4];
    sub_1AACBB42C(a1, v23);
    v25 = (*(v24 + 32))(&type metadata for RuleMark, v14, &type metadata for RuleMark, &off_1F1FDA840, v23, v24);
    v26 = type metadata accessor for SgClipRect(0);
    v27 = v33;
    (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
    v28 = *(v16 + *(v17 + 64));
    sub_1AAE74E48(v12);
    *v22 = v34;
    v22[1] = v25;
    result = sub_1AAD0F670(v27, v22 + v19[6]);
    *(v22 + v19[7]) = 0x3FF0000000000000;
    *(v22 + v19[8]) = v28;
    *(v22 + v19[9]) = MEMORY[0x1E69E7CC0];
    v30 = v19[10];
    a3 = v35;
    *(v22 + v30) = 0;
  }

  else
  {
    type metadata accessor for AnyVectorizedRenderer(0);
    v31 = swift_allocBox();
    sub_1AAE74EA4(v12, v32);
    type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
    result = swift_storeEnumTagMultiPayload();
    v20 = v31 | 0xD000000000000000;
  }

  *a3 = v20;
  return result;
}

uint64_t sub_1AAE74D68(uint64_t a1)
{
  sub_1AAD04AC0(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE74DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE74E48(uint64_t a1)
{
  v2 = type metadata accessor for RulesRenderer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE74EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesRenderer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE74F50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE74FC4()
{
  result = type metadata accessor for RulesRenderer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1AAE75070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>)
{
  v57 = a6;
  v62 = a5;
  v60 = a9;
  v61 = a4;
  v59 = a3;
  v58 = a2;
  v14 = type metadata accessor for PlottableValue();
  v55 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v54 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  v24 = type metadata accessor for PlottableValue.Storage();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v50 - v27;
  v56 = v14;
  v29 = *(v14 + 36);
  v30 = *(v25 + 16);
  v63 = a1;
  v30(v28, a1 + v29, v24, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(swift_getTupleTypeMetadata2() + 48);
    v32 = *(v54 + 32);
    v51 = v23;
    v32(v23, v28, a7);
    v33 = v52;
    v32(v52, &v28[v31], a7);
    v34 = *v63;
    v35 = *(v63 + 8);
    v36 = *(v63 + 16);
    v37 = *(v63 + 24);
    static PlottableValue.value(_:_:)(*v63, v35, v36, v37, a7, v18);
    v38 = v53;
    v39 = v34;
    v40 = v33;
    static PlottableValue.value(_:_:)(v39, v35, v36, v37, a7, v53);
    v41 = sub_1AAE83D50(v18, v38, a7, a8, &v74);
    v43 = v55;
    v42 = v56;
    v44 = *(v55 + 8);
    v44(v38, v56, v41);
    (v44)(v18, v42);
    v45 = *(v54 + 8);
    v45(v40, a7);
    v45(v51, a7);
    v73[6] = v80;
    v73[7] = v81;
    v73[8] = v82;
    v73[2] = v76;
    v73[3] = v77;
    v73[4] = v78;
    v73[5] = v79;
    v73[0] = v74;
    v73[1] = v75;
  }

  else
  {
    v43 = v55;
    v42 = v56;
    (*(v55 + 16))(v18, v63, v56);
    sub_1AACD6F84(v18, a7, a8, &v74);
    WORD4(v78) = 0;
    BYTE10(v78) = 0;
    v79 = 0uLL;
    LOBYTE(v80) = 0;
    *(&v80 + 1) = 0;
    *&v81 = 0;
    BYTE8(v81) = -4;
    sub_1AACD7C5C(&v74);
    v73[6] = v80;
    v73[7] = v81;
    v73[8] = v82;
    v73[2] = v76;
    v73[3] = v77;
    v73[4] = v78;
    v73[5] = v79;
    v73[0] = v74;
    v73[1] = v75;
    (*(v25 + 8))(v28, v24);
  }

  *&v64 = 0;
  BYTE8(v64) = 1;
  *&v65 = 0;
  BYTE8(v65) = 1;
  v46 = sub_1AAE52D28(&v64);
  (*(v43 + 8))(v63, v42, v46);
  v73[15] = v70;
  v73[16] = v71;
  v73[17] = v72;
  v73[11] = v66;
  v73[12] = v67;
  v73[13] = v68;
  v73[14] = v69;
  v47 = v57 & 1;
  v73[9] = v64;
  v73[10] = v65;
  v48 = v60;
  result = memcpy(v60, v73, 0x120uLL);
  v48[36] = v58;
  *(v48 + 296) = v59;
  v48[38] = v61;
  *(v48 + 312) = v62;
  *(v48 + 40) = a10;
  *(v48 + 328) = v47;
  return result;
}

void *SectorMark.init<A>(angle:innerRadius:outerRadius:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v25 = a5;
  v24 = a4;
  v23 = a3;
  v26 = a9;
  v15 = type metadata accessor for PlottableValue();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22[-v18];
  (*(v16 + 16))(&v22[-v18], a1, v15, v17);
  v20 = a6;
  if (a7)
  {
    v20 = 0.0;
  }

  sub_1AAE75070(v19, a2, v23, v24, v25, 0, a8, a10, v27, v20);
  (*(v16 + 8))(a1, v15);
  return memcpy(v26, v27, 0x149uLL);
}

uint64_t static SectorMark._layoutChartContent(_:_:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[7];
  v14[6] = a1[6];
  v14[7] = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v4 = a1[3];
  v14[2] = a1[2];
  v14[3] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[14];
  v8 = a1[16];
  v9 = a1[17];
  v15[6] = a1[15];
  v15[7] = v8;
  v15[8] = v9;
  v10 = a1[10];
  v11 = a1[12];
  v12 = a1[13];
  v15[2] = a1[11];
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v7;
  v15[0] = v3;
  v15[1] = v10;
  *(*a2 + 1266) = 1;
  return sub_1AACD2B20(v14, v15);
}

uint64_t static SectorMark._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t *a3@<X8>)
{
  v260 = a3;
  v264 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v264);
  *&v259 = &v249 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE6B3E4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AAF8E244();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v258 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v12);
  v262 = &v249 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 112);
  v385[6] = *(a1 + 96);
  v385[7] = v14;
  v15 = *(a1 + 48);
  v385[2] = *(a1 + 32);
  v385[3] = v15;
  v16 = *(a1 + 80);
  v385[4] = *(a1 + 64);
  v385[5] = v16;
  v17 = *(a1 + 16);
  v385[0] = *a1;
  v385[1] = v17;
  v18 = *(a1 + 240);
  v386[5] = *(a1 + 224);
  v386[6] = v18;
  v19 = *(a1 + 272);
  v386[7] = *(a1 + 256);
  v386[8] = v19;
  v20 = *(a1 + 176);
  v386[1] = *(a1 + 160);
  v386[2] = v20;
  v21 = *(a1 + 208);
  v386[3] = *(a1 + 192);
  v386[4] = v21;
  v22 = *(a1 + 144);
  v385[8] = *(a1 + 128);
  v386[0] = v22;
  *(&v254 + 1) = *(a1 + 288);
  v23 = *(a1 + 296);
  v24 = *(a1 + 304);
  v25 = *(a1 + 312);
  v261 = *(a1 + 320);
  v26 = *(a1 + 328);
  LODWORD(v257) = *a2;
  v27 = *(a2 + 1);
  v28 = *(v27 + 344);
  *(v27 + 344) = 0;
  sub_1AAD5835C(v385, &v335);
  sub_1AAD5835C(v385, &v335);
  sub_1AAD036DC(v385, 0, v353);
  v29 = v353[0];
  v30 = v353[1];
  *(v27 + 344) = v28;
  v31 = *(v27 + 24);
  v32 = *(v27 + 32);
  v33 = vabdd_f64(v32, v31);
  v34 = *(v27 + 40);
  v35 = *(v27 + 48);
  v263 = v27;
  v255 = v30;
  *&v256 = v34;
  v36 = vabdd_f64(v35, v34);
  if (v36 >= v33)
  {
    v36 = v33;
  }

  v37 = v36 * 0.5;
  if (v25 > 1)
  {
    v38 = v37;
    if (v25 == 2)
    {
      v38 = v37 - v24;
    }
  }

  else
  {
    v38 = v37 * v24;
    if (!v25)
    {
      v38 = v24;
    }
  }

  v39 = 0.0;
  if (v38 <= 0.0)
  {
    v38 = 0.0;
  }

  if (v37 < v38)
  {
    v38 = v37;
  }

  v40 = v264;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v39 = v38 - *(&v254 + 1);
    }
  }

  else if (v23)
  {
    v39 = v38 * *(&v254 + 1);
  }

  else
  {
    v39 = *(&v254 + 1);
  }

  v41 = 0;
  if (v39 > 0.0)
  {
    v42 = v39;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = v38;
  if (v38 >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = v38;
  }

  v45 = v263 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  if (!*(v45 + 168))
  {
    v41 = *(v45 + 160);
  }

  sub_1AAE6CD44(v45 + v40[11], v8, sub_1AAE6B3E4);
  v46 = *(v10 + 48);
  v47 = v46(v8, 1, v9);
  *(&v254 + 1) = v41;
  if (v47 == 1)
  {
    if (qword_1ED9B1D88 != -1)
    {
      swift_once();
    }

    v48 = sub_1AAD0F5D8(v9, qword_1ED9C3498);
    v49 = v258;
    (*(v10 + 16))(v258, v48, v9);
    if (v46(v8, 1, v9) != 1)
    {
      sub_1AACAC45C(v8, sub_1AAE6B3E4);
    }
  }

  else
  {
    v49 = v258;
    (*(v10 + 32))(v258, v8, v9);
  }

  v50 = v29 * 360.0 / v33;
  v51 = v255 * 360.0 / v33;
  v52 = *&v259;
  sub_1AAE6CD44(v45, *&v259, type metadata accessor for ChartContentRenderContext.Environment);
  v53 = v262;
  sub_1AAD0F2A4(v52, v262 + v12[12]);
  v54 = (v31 + v32) * 0.5;
  v55 = (*&v256 + v35) * 0.5;
  v56 = *(v45 + v264[16]);
  *v53 = 0;
  *(v53 + 8) = v50;
  *(v53 + 16) = v51;
  *(v53 + 24) = v44;
  *(v53 + 32) = v43;
  v57 = *(&v254 + 1);
  *(v53 + 40) = v261;
  *(v53 + 48) = v57;
  v58 = v12[11];
  (*(v10 + 32))(v53 + v58, v49, v9);
  v59 = (v53 + v12[13]);
  v259 = v54;
  *v59 = v54;
  v59[1] = v55;
  *(v53 + v12[14]) = v26;
  *(v53 + v12[15]) = v56;
  if ((v257 & 1) == 0)
  {
    sub_1AADC7F60(v385);
    sub_1AADC7F60(v385);
    v107 = swift_allocBox();
    result = sub_1AAE777C8(v53, v108);
    v110 = v107 | 0x5000000000000000;
    goto LABEL_111;
  }

  v258 = v45;
  sub_1AAF8E444();
  v61.n128_u64[0] = v60;
  v63.n128_u64[0] = v62;
  v65.f64[0] = v64;
  sub_1AAF4344C(v53 + v58, v26, v354, v44, v43, (v50 + 270.0) * 3.14159265 / 180.0, (v51 + 270.0) * 3.14159265 / 180.0, v261, v61, v63, v65, v66, v259, *&v55);
  sub_1AAF8E874();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  sub_1AAD12C10(v354);
  LODWORD(v75) = sub_1AAE63890(v385, v386);
  LODWORD(v259) = sub_1AAE63890(v385, v386);
  v76 = sub_1AAE63890(v385, v386);
  sub_1AADC7F60(v385);
  if (v76)
  {
    v77 = v385;
  }

  else
  {
    v77 = v386;
  }

  if (v76)
  {
    v78 = v386;
  }

  else
  {
    v78 = v385;
  }

  v79 = v77[7];
  v341 = v77[6];
  v342 = v79;
  v80 = v77[8];
  v81 = v77[3];
  v337 = v77[2];
  v338 = v81;
  v82 = v77[5];
  v339 = v77[4];
  v340 = v82;
  v83 = v77[1];
  v335 = *v77;
  v336 = v83;
  v84 = v78[6];
  v85 = v78[7];
  v86 = v78[4];
  v349 = v78[5];
  v350 = v84;
  v87 = v78[8];
  v351 = v85;
  v352 = v87;
  v88 = v78[2];
  v89 = v78[3];
  v90 = *v78;
  v345 = v78[1];
  v346 = v88;
  v347 = v89;
  v348 = v86;
  v343 = v80;
  v344 = v90;
  v365[6] = v341;
  v365[7] = v342;
  v365[2] = v337;
  v365[3] = v338;
  v365[4] = v339;
  v365[5] = v340;
  v365[0] = v335;
  v365[1] = v336;
  v366[5] = v349;
  v366[6] = v350;
  v366[7] = v351;
  v366[8] = v352;
  v366[1] = v345;
  v366[2] = v88;
  v366[3] = v89;
  v366[4] = v86;
  v365[8] = v80;
  v366[0] = v90;
  v387[6] = v341;
  v387[7] = v342;
  v387[8] = v80;
  v387[2] = v337;
  v387[3] = v338;
  v387[4] = v339;
  v387[5] = v340;
  v387[0] = v335;
  v387[1] = v336;
  v91 = sub_1AACDB99C(v387);
  LODWORD(v261) = v75;
  if (v91 == 2)
  {
    v111 = sub_1AACD2C84(v387);
    v113 = *v111;
    v112 = *(v111 + 8);
    v114 = *(v111 + 16);
    *(&v368 + 1) = *(v111 + 17);
    HIDWORD(v368) = *(v111 + 20);
    v115 = *(v111 + 24);
    v116 = *(v111 + 32);
    v117 = *(v111 + 40);
    v118 = *(v111 + 48);
    *&v254 = v113;
    *(&v254 + 1) = v112;
    *&v367 = v113;
    *(&v367 + 1) = v112;
    v253 = v114;
    LOBYTE(v368) = v114;
    v255 = v115;
    v369 = v115;
    *&v370 = v116;
    *&v257 = v117;
    *(&v370 + 1) = v117;
    LODWORD(v256) = v118;
    v371 = v118;
    *v372 = *(v111 + 49);
    *&v372[15] = *(v111 + 64);
    v119 = v263;
    v93 = v264;
    v252 = v116;
    if (v75)
    {
      swift_beginAccess();
      memcpy(v276, (v119 + 80), 0x102uLL);
      if (*(&v276[1] + 1))
      {
        v120 = *(v119 + 128);
        v360 = *(v119 + 112);
        v361 = v120;
        v362 = *(v119 + 144);
        LOBYTE(v363[0]) = *(v119 + 160);
        v121 = *(v119 + 96);
        v358 = *(v119 + 80);
        v359 = v121;

        sub_1AAD5835C(v386, &v265);
        sub_1AACD7304(v254, *(&v254 + 1), v253 & 1);

        sub_1AACD7C50(v116, v257, v256);
        v299 = v360;
        v300 = v361;
        v301 = v362;
        LOBYTE(v302) = v363[0];
        v297 = v358;
        v298 = v359;
LABEL_50:
        *&v251 = *(&v301 + 1);
        v122 = *(&v299 + 1);
        *&v250 = *(&v299 + 1);
        v75 = v299;
        v123 = v300;
        v124 = v302;
        sub_1AAE6CE20(v276, &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v297, &v265);
        v125 = v122;
        v126 = v123;
        LOBYTE(v122) = v123;
        v127 = v263;
        sub_1AAE0A738(v75, v125, v126, *&v251, v124, 3, &v355);
        v251 = v355;
        v249 = v356;
        LOBYTE(v128) = v357;
        sub_1AAE0C014(&v297);
        sub_1AAD04750(v297, *(&v297 + 1), v298);

        sub_1AAD0E818(v75, v250, v122);
        v129 = v249;
        v130 = v251;
        v119 = v127;
        LOBYTE(v75) = LOBYTE(v261);
LABEL_92:
        v180 = &v258[v93[21]];
        v181 = *(v180 + 2);
        v379 = *v180;
        v380 = v181;
        v381 = v130;
        v382 = v129;
        v383 = v128;
        v384 = *(v119 + 352);
        v182 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
LABEL_96:
        v185 = (v119 + *v182);
        v187 = v185[1];
        v186 = v185[2];
        v358 = *v185;
        v359 = v187;
        v360 = v186;
        v189 = v185[4];
        v188 = v185[5];
        v190 = v185[3];
        *(v363 + 9) = *(v185 + 89);
        v362 = v189;
        v363[0] = v188;
        v361 = v190;
        v133 = LOBYTE(v259);
        if (BYTE8(v363[1]) == 255)
        {

          sub_1AAD04750(v254, *(&v254 + 1), v253 & 1);

          sub_1AAE49270(&v265);
        }

        else
        {
          v332 = v362;
          v333[0] = v363[0];
          *(v333 + 9) = *(v363 + 9);
          v328 = v358;
          v329 = v359;
          v330 = v360;
          v331 = v361;
          v373 = v358;
          v374 = v359;
          *(v378 + 9) = *(v363 + 9);
          v375 = v360;
          v376 = v361;
          v377 = v362;
          v378[0] = v363[0];
          sub_1AAE6CE20(&v328, &v265, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
          sub_1AAE08D1C(&v373, v119, (v75 & 1) == 0, &v367, &v265);
          sub_1AACAC45C(&v358, sub_1AACCF364);
          nullsub_1(&v265, v191);

          sub_1AAD04750(v254, *(&v254 + 1), v253 & 1);
        }

        sub_1AAD0E818(v252, v257, v256);
        goto LABEL_100;
      }

      v128 = BYTE1(v276[16]);

      if (v128 == 2)
      {
        sub_1AAD5835C(v386, &v265);
        sub_1AACD7304(v254, *(&v254 + 1), v253 & 1);

        sub_1AACD7C50(v252, v257, v256);
        v130 = 0uLL;
      }

      else
      {
        sub_1AAD5835C(v386, &v265);
        sub_1AACD7304(v254, *(&v254 + 1), v253 & 1);

        sub_1AACD7C50(v252, v257, v256);
        sub_1AACBB21C(v276, &v265);
        v163 = sub_1AAF8E7A4();
        if (v163 == sub_1AAF8E7A4())
        {
          sub_1AAE6CE20(&v276[11], &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(v276);
          if (*(&v276[12] + 1))
          {
            v297 = v276[11];
            v298 = v276[12];
            v299 = v276[13];
            v300 = v276[14];
            v301 = v276[15];
            LOBYTE(v302) = v276[16];
            goto LABEL_50;
          }
        }

        else
        {
          sub_1AACBB254(v276);
        }

        v130 = 0uLL;
        LOBYTE(v128) = 2;
      }

      v129 = 0uLL;
      goto LABEL_92;
    }

    swift_beginAccess();
    memcpy(v276, (v119 + 80), 0x102uLL);
    if (*&v276[7])
    {
      v147 = *(v119 + 216);
      v360 = *(v119 + 200);
      v361 = v147;
      v362 = *(v119 + 232);
      LOBYTE(v363[0]) = *(v119 + 248);
      v148 = *(v119 + 184);
      v358 = *(v119 + 168);
      v359 = v148;

      sub_1AAD5835C(v386, &v265);
      sub_1AACD7304(v254, *(&v254 + 1), v253 & 1);

      sub_1AACD7C50(v116, v257, v256);
      v299 = v360;
      v300 = v361;
      v301 = v362;
      LOBYTE(v302) = v363[0];
      v297 = v358;
      v298 = v359;
      v149 = v119;
LABEL_57:
      v150 = *(&v301 + 1);
      v151 = v299;
      v152 = v300;
      v153 = v302;
      sub_1AAE6CE20(&v276[5] + 8, &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v297, &v265);
      sub_1AAE0A738(v151, *(&v151 + 1), v152, v150, v153, 4, &v355);
      v250 = v356;
      v251 = v355;
      LOBYTE(v154) = v357;
      sub_1AAE0C014(&v297);
      sub_1AAD04750(v297, *(&v297 + 1), v298);

      sub_1AAD0E818(v151, *(&v151 + 1), v152);
      v156 = v250;
      v155 = v251;
      v119 = v149;
      LOBYTE(v75) = LOBYTE(v261);
LABEL_95:
      v93 = v264;
      v183 = &v258[v264[22]];
      v184 = *(v183 + 2);
      v379 = *v183;
      v380 = v184;
      v381 = v155;
      v382 = v156;
      v383 = v154;
      v384 = *(v119 + 368);
      v182 = &OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
      goto LABEL_96;
    }

    v154 = BYTE1(v276[16]);

    if (v154 == 2)
    {
      sub_1AAD5835C(v386, &v265);
      sub_1AACD7304(v254, *(&v254 + 1), v253 & 1);

      sub_1AACD7C50(v252, v257, v256);
      v155 = 0uLL;
      v156 = 0uLL;
      goto LABEL_95;
    }

    v149 = v119;
    sub_1AAD5835C(v386, &v265);
    sub_1AACD7304(v254, *(&v254 + 1), v253 & 1);

    sub_1AACD7C50(v252, v257, v256);
    sub_1AACBB21C(v276, &v265);
    v164 = sub_1AAF8E7A4();
    if (v164 == sub_1AAF8E7A4())
    {
      sub_1AAE6CE20(&v276[11], &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v276);
      if (*(&v276[12] + 1))
      {
        v297 = v276[11];
        v298 = v276[12];
        v299 = v276[13];
        v300 = v276[14];
        v301 = v276[15];
        LOBYTE(v302) = v276[16];
        goto LABEL_57;
      }
    }

    else
    {
      sub_1AACBB254(v276);
    }

    v155 = 0uLL;
    LOBYTE(v154) = 2;
    v156 = 0uLL;
    goto LABEL_95;
  }

  v92 = v263;
  v93 = v264;
  if (v91)
  {
    sub_1AAE49270(v276);
    sub_1AAD6D0FC();
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_1AAF99670;
    v132 = v131 + 32;
    sub_1AAD5835C(v386, &v265);
    v325 = v276[8];
    v326 = v276[9];
    v327 = *&v276[10];
    v321 = v276[4];
    v322 = v276[5];
    v323 = v276[6];
    v324 = v276[7];
    v317 = v276[0];
    v318 = v276[1];
    v319 = v276[2];
    v320 = v276[3];
    v133 = LOBYTE(v259);
    goto LABEL_102;
  }

  v94 = sub_1AACD2C84(v387);
  v390 = *v94;
  v95 = *(v94 + 24);
  v391 = *(v94 + 16);
  v392 = v95;
  v388 = *(v94 + 32);
  v389 = *(v94 + 48);
  v367 = v390;
  v368 = v391;
  v369 = v95;
  v370 = v388;
  v371 = v389;
  *&v372[15] = *(v94 + 64);
  *v372 = *(v94 + 49);
  v393 = v390;
  v394 = v391;
  v396 = v389;
  v395 = v388;
  if ((v75 & 1) == 0)
  {
    swift_beginAccess();
    memcpy(v276, (v92 + 80), 0x102uLL);
    if (*&v276[7])
    {
      v134 = *(v92 + 216);
      v360 = *(v92 + 200);
      v361 = v134;
      v362 = *(v92 + 232);
      LOBYTE(v363[0]) = *(v92 + 248);
      v135 = *(v92 + 184);
      v358 = *(v92 + 168);
      v359 = v135;

      sub_1AADFA6FC(&v393, &v265);
      sub_1AAE6CE20(&v392, &v265, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v395, &v265);
      sub_1AAD5835C(v386, &v265);
      v299 = v360;
      v300 = v361;
      v301 = v362;
      LOBYTE(v302) = v363[0];
      v297 = v358;
      v298 = v359;
      v136 = v92;
LABEL_54:
      v137 = *(&v301 + 1);
      v139 = *(&v299 + 1);
      v138 = v299;
      v140 = v300;
      v141 = v302;
      sub_1AAE6CE20(&v276[5] + 8, &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v297, &v265);
      v142 = v137;
      v143 = v136;
      sub_1AAE0A738(v138, v139, v140, v142, v141, 4, &v355);
      v256 = v356;
      v257 = v355;
      v144 = v357;
      sub_1AAE0C014(&v297);
      sub_1AAD04750(v297, *(&v297 + 1), v298);

      sub_1AAD0E818(v138, v139, v140);
      v146 = v256;
      v145 = v257;
      v106 = v143;
      LOBYTE(v75) = LOBYTE(v261);
      goto LABEL_84;
    }

    v159 = v92;
    v160 = BYTE1(v276[16]);
    v106 = v159;

    if (v160 == 2)
    {
      sub_1AADFA6FC(&v393, &v265);
      sub_1AAE6CE20(&v392, &v265, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v395, &v265);
      sub_1AAD5835C(v386, &v265);
    }

    else
    {
      sub_1AADFA6FC(&v393, &v265);
      sub_1AAE6CE20(&v392, &v265, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v395, &v265);
      sub_1AAD5835C(v386, &v265);
      sub_1AACBB21C(v276, &v265);
      v162 = sub_1AAF8E7A4();
      if (v162 == sub_1AAF8E7A4())
      {
        sub_1AAE6CE20(&v276[11], &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(v276);
        if (*(&v276[12] + 1))
        {
          v297 = v276[11];
          v298 = v276[12];
          v299 = v276[13];
          v300 = v276[14];
          v301 = v276[15];
          LOBYTE(v302) = v276[16];
          v136 = v106;
          goto LABEL_54;
        }
      }

      else
      {
        sub_1AACBB254(v276);
      }
    }

    v145 = 0uLL;
    v144 = 2;
    v146 = 0uLL;
LABEL_84:
    v172 = &v258[v264[22]];
    v173 = *(v172 + 2);
    v379 = *v172;
    v380 = v173;
    v381 = v145;
    v382 = v146;
    v383 = v144;
    v384 = *(v106 + 368);
    v175 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v174 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v358 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v359 = v175;
    v360 = v174;
    v177 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    v176 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v178 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    *(v363 + 9) = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v362 = v177;
    v363[0] = v176;
    v361 = v178;
    v133 = LOBYTE(v259);
    if (BYTE8(v363[1]) != 255)
    {
      v332 = v362;
      v333[0] = v363[0];
      *(v333 + 9) = *(v363 + 9);
      v328 = v358;
      v329 = v359;
      v330 = v360;
      v331 = v361;
      v373 = v358;
      v374 = v359;
      *(v378 + 9) = *(v363 + 9);
      v375 = v360;
      v376 = v361;
      v377 = v362;
      v378[0] = v363[0];
      goto LABEL_86;
    }

LABEL_87:

    sub_1AAD6E0DC(&v393);
    sub_1AAE491F0(&v392);
    sub_1AAE49270(&v265);
    goto LABEL_88;
  }

  swift_beginAccess();
  memcpy(v276, (v92 + 80), 0x102uLL);
  if (*(&v276[1] + 1))
  {
    v96 = *(v92 + 128);
    v360 = *(v92 + 112);
    v361 = v96;
    v362 = *(v92 + 144);
    LOBYTE(v363[0]) = *(v92 + 160);
    v97 = *(v92 + 96);
    v358 = *(v92 + 80);
    v359 = v97;

    sub_1AADFA6FC(&v393, &v265);
    sub_1AAE6CE20(&v392, &v265, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAE14D50(&v395, &v265);
    sub_1AAD5835C(v386, &v265);
    v299 = v360;
    v300 = v361;
    v301 = v362;
    LOBYTE(v302) = v363[0];
    v297 = v358;
    v298 = v359;
LABEL_45:
    v98 = *(&v301 + 1);
    v100 = *(&v299 + 1);
    v99 = v299;
    v101 = v300;
    v102 = v302;
    sub_1AAE6CE20(v276, &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v297, &v265);
    sub_1AAE0A738(v99, v100, v101, v98, v102, 3, &v355);
    v256 = v356;
    v257 = v355;
    v103 = v357;
    sub_1AAE0C014(&v297);
    sub_1AAD04750(v297, *(&v297 + 1), v298);

    sub_1AAD0E818(v99, v100, v101);
    v105 = v256;
    v104 = v257;
    v106 = v92;
    LOBYTE(v75) = LOBYTE(v261);
    goto LABEL_80;
  }

  v157 = v92;
  v158 = BYTE1(v276[16]);
  v106 = v157;

  if (v158 == 2)
  {
    sub_1AADFA6FC(&v393, &v265);
    sub_1AAE6CE20(&v392, &v265, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAE14D50(&v395, &v265);
    sub_1AAD5835C(v386, &v265);
  }

  else
  {
    sub_1AADFA6FC(&v393, &v265);
    sub_1AAE6CE20(&v392, &v265, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAE14D50(&v395, &v265);
    sub_1AAD5835C(v386, &v265);
    sub_1AACBB21C(v276, &v265);
    v161 = sub_1AAF8E7A4();
    if (v161 == sub_1AAF8E7A4())
    {
      sub_1AAE6CE20(&v276[11], &v265, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v276);
      if (*(&v276[12] + 1))
      {
        v297 = v276[11];
        v298 = v276[12];
        v299 = v276[13];
        v300 = v276[14];
        v301 = v276[15];
        LOBYTE(v302) = v276[16];
        v92 = v106;
        goto LABEL_45;
      }
    }

    else
    {
      sub_1AACBB254(v276);
    }
  }

  v104 = 0uLL;
  v103 = 2;
  v105 = 0uLL;
LABEL_80:
  v165 = &v258[v264[21]];
  v166 = *(v165 + 2);
  v379 = *v165;
  v380 = v166;
  v381 = v104;
  v382 = v105;
  v383 = v103;
  v384 = *(v106 + 352);
  v168 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v167 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v358 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v359 = v168;
  v360 = v167;
  v170 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  v169 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v171 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v361 = *(v106 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  *(v363 + 9) = v171;
  v362 = v170;
  v363[0] = v169;
  v133 = LOBYTE(v259);
  if (HIBYTE(v171) == 255)
  {
    goto LABEL_87;
  }

  v331 = v361;
  v332 = v362;
  v333[0] = v363[0];
  *(v333 + 9) = *(v363 + 9);
  v328 = v358;
  v329 = v359;
  v330 = v360;
  v373 = v358;
  v374 = v359;
  *(v378 + 9) = *(v363 + 9);
  v375 = v360;
  v376 = v361;
  v377 = v362;
  v378[0] = v363[0];
LABEL_86:
  sub_1AAE6CE20(&v328, &v265, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  sub_1AAE08D1C(&v373, v106, (v75 & 1) == 0, &v367, &v265);
  sub_1AACAC45C(&v358, sub_1AACCF364);
  nullsub_1(&v265, v179);

  sub_1AAD6E0DC(&v393);
  sub_1AAE491F0(&v392);
LABEL_88:
  v93 = v264;
  sub_1AAD6E18C(&v395);
LABEL_100:
  v276[8] = v273;
  v276[9] = v274;
  *&v276[10] = v275;
  v276[4] = v269;
  v276[5] = v270;
  v276[6] = v271;
  v276[7] = v272;
  v276[0] = v265;
  v276[1] = v266;
  v276[2] = v267;
  v276[3] = v268;
  sub_1AAD6D0FC();
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1AAF99670;
  v132 = v131 + 32;
  v272 = v276[7];
  v273 = v276[8];
  v274 = v276[9];
  v275 = *&v276[10];
  v269 = v276[4];
  v270 = v276[5];
  v271 = v276[6];
  v265 = v276[0];
  v266 = v276[1];
  v267 = v276[2];
  v268 = v276[3];
  if (sub_1AAE492A8(&v265) != 1)
  {
    sub_1AAE2D7EC(&v328);
    v325 = v276[8];
    v326 = v276[9];
    v327 = *&v276[10];
    v321 = v276[4];
    v322 = v276[5];
    v323 = v276[6];
    v324 = v276[7];
    v317 = v276[0];
    v318 = v276[1];
    v319 = v276[2];
    v320 = v276[3];
    goto LABEL_104;
  }

  v325 = v276[8];
  v326 = v276[9];
  v327 = *&v276[10];
  v321 = v276[4];
  v322 = v276[5];
  v323 = v276[6];
  v324 = v276[7];
  v317 = v276[0];
  v318 = v276[1];
  v319 = v276[2];
  v320 = v276[3];
LABEL_102:
  sub_1AAD5835C(v365, &v265);
  sub_1AAF72B20((v75 & 1) == 0, v365, &v328);
LABEL_104:
  v192 = v329;
  *v132 = v328;
  *(v132 + 16) = v192;
  v193 = v330;
  v194 = v331;
  v195 = v333[0];
  *(v132 + 64) = v332;
  *(v132 + 80) = v195;
  *(v132 + 32) = v193;
  *(v132 + 48) = v194;
  v196 = v333[1];
  v197 = v333[2];
  v198 = v333[3];
  *(v132 + 144) = v334;
  *(v132 + 112) = v197;
  *(v132 + 128) = v198;
  *(v132 + 96) = v196;
  sub_1AAD5835C(v366, &v265);
  sub_1AAF72B20(v133 & 1, v366, &v358);
  v199 = v362;
  *(v132 + 232) = v363[0];
  *(v132 + 216) = v199;
  v200 = v360;
  *(v132 + 200) = v361;
  *(v132 + 184) = v200;
  *(v132 + 296) = v364;
  v201 = v363[3];
  v202 = v363[1];
  *(v132 + 264) = v363[2];
  *(v132 + 280) = v201;
  *(v132 + 248) = v202;
  v203 = v359;
  *(v132 + 152) = v358;
  *(v132 + 168) = v203;
  v204 = v258;
  v205 = &v258[v93[17]];
  v206 = *(v205 + 8);
  v208 = *(v205 + 2);
  v207 = *(v205 + 3);
  v308 = *(v205 + 1);
  v307 = *v205;
  v309 = v208;
  v310 = v207;
  v311 = v206;
  v315 = *v205;
  v316 = *(v205 + 2);
  v209 = *(v205 + 2);
  v210 = *(v205 + 3);
  v314 = *(v205 + 8);
  v312 = v209;
  v313 = v210;
  if (*(&v308 + 1))
  {
    *(v277 + 7) = v315;
    *(v279 + 8) = v312;
    *(&v277[1] + 7) = v316;
    *(&v279[1] + 8) = v313;
    LOBYTE(v278[0]) = 5;
    *(v278 + 1) = v277[0];
    v278[1] = *(v277 + 15);
    *(&v279[2] + 1) = v314;
    *&v279[0] = *(&v308 + 1);
    LOBYTE(v280) = 3;
    sub_1AAE0C0B0(v278);
    v272 = v282;
    v273 = v283;
    *&v274 = v284;
    v267 = v279[0];
    v268 = v279[1];
    v269 = v279[2];
    v270 = v280;
    v271 = v281;
    v265 = v278[0];
    v266 = v278[1];
    nullsub_1(&v265, v211);
    v303 = v271;
    v304 = v272;
    v305 = v273;
    v306 = v274;
    v299 = v267;
    v300 = v268;
    v301 = v269;
    v302 = v270;
    v297 = v265;
    v298 = v266;
  }

  else
  {
    sub_1AAE2D7EC(&v297);
  }

  v212 = v304;
  *(v132 + 400) = v303;
  *(v132 + 416) = v212;
  *(v132 + 432) = v305;
  *(v132 + 448) = v306;
  v213 = v300;
  *(v132 + 336) = v299;
  *(v132 + 352) = v213;
  v214 = v302;
  *(v132 + 368) = v301;
  *(v132 + 384) = v214;
  v215 = v298;
  *(v132 + 304) = v297;
  *(v132 + 320) = v215;
  sub_1AAE6CE20(&v307, &v265, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  v216 = sub_1AAF70438(v131);
  v259 = v217;

  *&v256 = *(*(v263 + 16) + 24);
  v218 = &v204[v93[25]];
  v219 = *(v218 + 1);
  *&v257 = *v218;
  v220 = v93[24];
  v221 = &v204[v93[23]];
  v222 = *v221;
  v223 = v221[1];
  v225 = *(v221 + 2);
  v224 = v221[3];
  v226 = &v204[v220];
  v227 = *&v204[v220];
  v228 = *&v204[v220 + 8];
  v229 = *&v204[v220 + 16];
  v230 = *(v226 + 3);
  v264 = v219;

  *&v254 = v222;
  *(&v254 + 1) = v223;
  v255 = v225;
  v258 = v224;
  sub_1AADA61DC(v222, v223, SLOBYTE(v225), v224);
  v263 = v229;
  sub_1AADA61DC(v227, v228, v229, v230);
  sub_1AAF72B20((LOBYTE(v261) & 1) == 0, v365, v295);
  sub_1AADC7F60(v366);
  sub_1AACAC45C(v262, type metadata accessor for SgSector);

  v272 = v324;
  v273 = v325;
  v274 = v326;
  v275 = v327;
  v269 = v321;
  v270 = v322;
  v271 = v323;
  v265 = v317;
  v266 = v318;
  v267 = v319;
  v268 = v320;
  if (sub_1AAE492A8(&v265) == 1)
  {
    sub_1AAE2D7EC(&v285);
  }

  else
  {
    v281 = v272;
    v282 = v273;
    v283 = v274;
    v284 = v275;
    v279[0] = v268;
    v279[1] = v269;
    v279[2] = v270;
    v280 = v271;
    v278[0] = v266;
    v278[1] = v267;
    nullsub_1(v278, v231);
    v291 = v281;
    v292 = v282;
    v293 = v283;
    v294 = v284;
    v287 = v279[0];
    v288 = v279[1];
    v289 = v279[2];
    v290 = v280;
    v285 = v278[0];
    v286 = v278[1];
  }

  sub_1AAE2D7EC(v278);
  result = swift_allocObject();
  *(result + 16) = v256;
  *(result + 24) = v68;
  *(result + 32) = v70;
  *(result + 40) = v72;
  *(result + 48) = v74;
  *&v232 = v257;
  *(&v232 + 1) = v264;
  *(result + 72) = v254;
  *&v233 = v255;
  *(&v233 + 1) = v258;
  *&v234 = v227;
  *(&v234 + 1) = v228;
  *(result + 56) = v232;
  *(result + 104) = v234;
  *(result + 88) = v233;
  *(result + 120) = v263;
  *(result + 128) = v230;
  *(result + 136) = v216;
  v235 = v295[7];
  *(result + 240) = v295[6];
  *(result + 256) = v235;
  *(result + 272) = v295[8];
  v236 = v296;
  v237 = v295[3];
  *(result + 176) = v295[2];
  *(result + 192) = v237;
  v238 = v295[5];
  *(result + 208) = v295[4];
  *(result + 224) = v238;
  v239 = v295[1];
  *(result + 144) = v295[0];
  *(result + 160) = v239;
  v240 = v259;
  *(result + 288) = v236;
  *(result + 296) = v240;
  v241 = v292;
  *(result + 400) = v291;
  *(result + 416) = v241;
  *(result + 432) = v293;
  *(result + 448) = v294;
  v242 = v288;
  *(result + 336) = v287;
  *(result + 352) = v242;
  v243 = v290;
  *(result + 368) = v289;
  *(result + 384) = v243;
  v244 = v286;
  *(result + 304) = v285;
  *(result + 320) = v244;
  v245 = v282;
  *(result + 552) = v281;
  *(result + 568) = v245;
  *(result + 584) = v283;
  *(result + 600) = v284;
  v246 = v279[1];
  *(result + 488) = v279[0];
  *(result + 504) = v246;
  v247 = v280;
  *(result + 520) = v279[2];
  *(result + 536) = v247;
  v248 = v278[1];
  *(result + 456) = v278[0];
  *(result + 472) = v248;
  *(result + 608) = 0;
  *(result + 616) = 0;
  v110 = result | 0xC000000000000000;
LABEL_111:
  *v260 = v110;
  return result;
}

uint64_t sub_1AAE775D8(_OWORD *a1, uint64_t a2)
{
  v2 = a1[7];
  v14[6] = a1[6];
  v14[7] = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v4 = a1[3];
  v14[2] = a1[2];
  v14[3] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[14];
  v8 = a1[16];
  v9 = a1[17];
  v15[6] = a1[15];
  v15[7] = v8;
  v15[8] = v9;
  v10 = a1[10];
  v11 = a1[12];
  v12 = a1[13];
  v15[2] = a1[11];
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v7;
  v15[0] = v3;
  v15[1] = v10;
  *(*a2 + 1266) = 1;
  return sub_1AACD2B20(v14, v15);
}

void *SectorMark.init<A>(angle:innerRadius:outerRadius:roundInnerVertex:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, double a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v23 = a3;
  v27 = a9;
  v15 = type metadata accessor for PlottableValue();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22[-v18];
  (*(v16 + 16))(&v22[-v18], a1, v15, v17);
  v20 = a7;
  if (a8)
  {
    v20 = 0.0;
  }

  sub_1AAE75070(v19, a2, v23, v24, v25, v26, a10, a11, v28, v20);
  (*(v16 + 8))(a1, v15);
  return memcpy(v27, v28, 0x149uLL);
}

uint64_t sub_1AAE777C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgSector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE77834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 329))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE77888(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 328) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 329) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 329) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SectorPlot<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800(v2, v4, a2);
  sub_1AACE0800(v7, v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t SectorPlot.init<A, B>(_:angle:innerRadius:outerRadius:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v59 = a8;
  v64 = a6;
  v63 = a5;
  v65 = a9;
  v66 = a2;
  v56 = a1;
  v60 = a11;
  v53 = a10;
  swift_getAssociatedTypeWitness();
  v55 = type metadata accessor for PlottableProjection();
  v15 = *(v55 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v51 - v17;
  v57 = *(a7 - 8);
  v18 = v57;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v21;
  v22 = type metadata accessor for VectorizedSectorPlotContent();
  v61 = *(v22 - 8);
  v62 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v51 - v23;
  v24 = a3[5];
  v71 = a3[4];
  v72 = v24;
  v73 = a3[6];
  v74 = *(a3 + 112);
  v25 = a3[1];
  v67 = *a3;
  v68 = v25;
  v26 = a3[3];
  v69 = a3[2];
  v70 = v26;
  v27 = *a4;
  v28 = a4[1];
  v29 = a4[3];
  v77 = a4[2];
  v78 = v29;
  v75 = v27;
  v76 = v28;
  v30 = a4[4];
  v31 = a4[5];
  v32 = a4[6];
  v82 = *(a4 + 112);
  v80 = v31;
  v81 = v32;
  v79 = v30;
  (*(v18 + 16))(v21, a1, a7);
  v33 = v52;
  v34 = v55;
  (*(v15 + 16))(v52, v66, v55);
  v35 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v51 = (v35 + v16 + 127) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v38 = v59;
  v37 = v60;
  *(v36 + 2) = a7;
  *(v36 + 3) = v38;
  v39 = v53;
  *(v36 + 4) = v53;
  *(v36 + 5) = v37;
  (*(v15 + 32))(&v36[v35], v33, v34);
  v40 = &v36[(v35 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  v41 = v70;
  *(v40 + 2) = v69;
  *(v40 + 3) = v41;
  v42 = v68;
  *v40 = v67;
  *(v40 + 1) = v42;
  v40[112] = v74;
  v43 = v73;
  *(v40 + 5) = v72;
  *(v40 + 6) = v43;
  *(v40 + 4) = v71;
  v44 = &v36[v51];
  v45 = v80;
  *(v44 + 4) = v79;
  *(v44 + 5) = v45;
  *(v44 + 6) = v81;
  v44[112] = v82;
  v46 = v76;
  *v44 = v75;
  *(v44 + 1) = v46;
  v47 = v78;
  *(v44 + 2) = v77;
  *(v44 + 3) = v47;
  v48 = &v36[(v35 + v16 + 247) & 0xFFFFFFFFFFFFFFF8];
  *v48 = v63;
  v48[8] = v64 & 1;
  v49 = v58;
  sub_1AAE7834C(v54, sub_1AAE7822C, v36, a7, &type metadata for SectorMark, v39, &protocol witness table for SectorMark, v58);
  (*(v15 + 8))(v66, v34);
  (*(v57 + 8))(v56, a7);
  return (*(v61 + 32))(v65, v49, v62);
}

void *sub_1AAE77E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v56 = a6;
  v57 = a5;
  v58 = a8;
  v55 = a4;
  v53 = a2;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for PlottableProjection();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v47 - v14;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v52 = a7;
  v54 = a10;
  v19 = type metadata accessor for PlottableValue();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v51 = &v47 - v21;
  v47 = *(v15 + 16);
  v23 = v18;
  v24 = v18;
  v25 = v59;
  v47(v23, v59, AssociatedTypeWitness, v20);
  v26 = v48;
  (*(v49 + 16))(v48, v53, v50);
  v27 = v26;
  v28 = AssociatedTypeWitness;
  sub_1AAF30D00(v24, v27, a7, AssociatedTypeWitness, a10, v22);
  v29 = v24;
  v30 = v47;
  (v47)(v24, v25, v28);
  v31 = *(a3 + 64);
  v32 = *(a3 + 96);
  v61[5] = *(a3 + 80);
  v61[6] = v32;
  v33 = *(a3 + 16);
  v61[0] = *a3;
  v34 = *(a3 + 32);
  v35 = *(a3 + 48);
  v61[1] = v33;
  v61[2] = v34;
  LOBYTE(v61[7]) = *(a3 + 112);
  v61[3] = v35;
  v61[4] = v31;
  v36 = type metadata accessor for MarkDimensions();
  v37 = *(*(v36 - 8) + 16);
  (v37)(v60, a3, v36);
  v53 = sub_1AAF312D4(v29, v61, v28);
  LODWORD(a3) = v38;
  v30(v29, v59, v28);
  v39 = *(v55 + 64);
  v40 = *(v55 + 96);
  v61[5] = *(v55 + 80);
  v61[6] = v40;
  v41 = *(v55 + 16);
  v61[0] = *v55;
  v42 = *(v55 + 32);
  v43 = *(v55 + 48);
  v61[1] = v41;
  v61[2] = v42;
  LOBYTE(v61[7]) = *(v55 + 112);
  v61[3] = v43;
  v61[4] = v39;
  v37(v60);
  v44 = sub_1AAF312D4(v29, v61, v28);
  SectorMark.init<A>(angle:innerRadius:outerRadius:angularInset:)(v51, v53, a3, v44, v45, v57, v56 & 1, v52, v61, v54);
  return memcpy(v58, v61, 0x149uLL);
}

void *sub_1AAE7822C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  return sub_1AAE77E94(a1, v2 + v9, v2 + ((v9 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8), v2 + ((v9 + *(v8 + 64) + 127) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v9 + *(v8 + 64) + 247) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + *(v8 + 64) + 247) & 0xFFFFFFFFFFFFFFF8) + 8), v5, a2, v7, v6);
}

uint64_t sub_1AAE7834C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  sub_1AAF311A4(v19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4);
}

uint64_t SectorPlot.init<A, B>(_:angle:innerRadius:outerRadius:angularInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = a8;
  v56 = a7;
  v62 = a1;
  v63 = a2;
  v60 = a5;
  v61 = a9;
  v57 = a10;
  v53 = type metadata accessor for PlottableProjection();
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v16 = &v50 - v15;
  v54 = *(a6 - 8);
  v17 = v54;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v20;
  v21 = type metadata accessor for VectorizedSectorPlotContent();
  v58 = *(v21 - 8);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v55 = &v50 - v22;
  v23 = a3[5];
  v68 = a3[4];
  v69 = v23;
  v70 = a3[6];
  v71 = *(a3 + 112);
  v24 = a3[1];
  v64 = *a3;
  v65 = v24;
  v25 = a3[3];
  v66 = a3[2];
  v67 = v25;
  v26 = *a4;
  v27 = a4[1];
  v28 = a4[3];
  v74 = a4[2];
  v75 = v28;
  v72 = v26;
  v73 = v27;
  v29 = a4[4];
  v30 = a4[5];
  v31 = a4[6];
  v79 = *(a4 + 112);
  v77 = v30;
  v78 = v31;
  v76 = v29;
  v32 = *(v17 + 16);
  v50 = a6;
  v32(v20, v62, a6);
  v33 = v53;
  (*(v13 + 16))(v16, v63, v53);
  v34 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v35 = swift_allocObject();
  v37 = v56;
  v36 = v57;
  *(v35 + 2) = a6;
  *(v35 + 3) = v37;
  v38 = v52;
  *(v35 + 4) = v52;
  *(v35 + 5) = v36;
  (*(v13 + 32))(&v35[v34], v16, v33);
  v39 = &v35[(v34 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  v40 = v67;
  *(v39 + 2) = v66;
  *(v39 + 3) = v40;
  v41 = v65;
  *v39 = v64;
  *(v39 + 1) = v41;
  v39[112] = v71;
  v42 = v70;
  *(v39 + 5) = v69;
  *(v39 + 6) = v42;
  *(v39 + 4) = v68;
  v43 = &v35[(v34 + v14 + 127) & 0xFFFFFFFFFFFFFFF8];
  v44 = v77;
  *(v43 + 4) = v76;
  *(v43 + 5) = v44;
  *(v43 + 6) = v78;
  v43[112] = v79;
  v45 = v73;
  *v43 = v72;
  *(v43 + 1) = v45;
  v46 = v75;
  *(v43 + 2) = v74;
  *(v43 + 3) = v46;
  *&v35[(v34 + v14 + 247) & 0xFFFFFFFFFFFFFFF8] = v60;
  v47 = v55;
  v48 = v50;
  sub_1AAE7834C(v51, sub_1AAE78C20, v35, v50, &type metadata for SectorMark, v38, &protocol witness table for SectorMark, v55);
  (*(v13 + 8))(v63, v33);
  (*(v54 + 8))(v62, v48);
  return (*(v58 + 32))(v61, v47, v59);
}