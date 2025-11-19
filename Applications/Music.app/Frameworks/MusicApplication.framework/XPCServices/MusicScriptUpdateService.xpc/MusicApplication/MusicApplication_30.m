id *sub_1002F18BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1004BD524();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1004B7194();
      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

id *sub_1002F1964(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1004BD6A4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1003BF7A8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1004BD484();
        _s3__C7CGColorCMa_0(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003BF7A8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v7 + 1);
        sub_10003E13C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _s3__C7CGColorCMa_0(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1003BF7A8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v11 + 1);
        sub_10003E13C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F1B64(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1002F5638(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = sub_1004BC2C4();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  sub_1004BC3B4();
  return v5;
}

double sub_1002F1D10()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  sub_100003ABC(&qword_10060B4A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C5220;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_1004D9C00, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double sub_1002F1DC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  sub_100003ABC(&qword_10060B4A8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C5220;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_1004D9C00, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

id *sub_1002F1EB8(uint64_t a1, void *a2)
{
  v4 = sub_1002F1B64(a1, a2);
  sub_1002F1DC0(a1, a2);
  v6 = sub_1002F1F2C(v4, v5);

  return v6;
}

id *sub_1002F1F2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_1003BF808(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = sub_1004BA6D4();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        sub_1003BF808((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = (v13 + 1);
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = sub_1004BA6D4();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          sub_1003BF808((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = (v21 + 1);
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1002F2138@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  sub_1004B8854();
  sub_1004B9BB4();
  sub_1002F6190(v24);
  v4 = sub_1004BA2B4();
  sub_1004B8854();
  sub_1004B9BB4();
  sub_1002F6190(v25);
  v5 = sub_1004BA2B4();
  sub_1004B8854();
  sub_1004B9BB4();
  sub_1002F6190(v26);
  v6 = sub_1004BA2B4();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  sub_10000F778(v30, v55, &qword_10060B950);
  sub_10000F778(v34, v55, &qword_10060B950);
  sub_10000F778(&v38, v55, &qword_10060B950);
  sub_100007214(v43, &qword_10060B950);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  sub_100007214(v49, &qword_10060B950);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return sub_100007214(v55, &qword_10060B950);
}

double sub_1002F241C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  v4 = sub_1004BA754();
  v6 = v5;
  sub_1002F2138(v18, &v36);
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  v34[10] = v46;
  v34[11] = v47;
  v34[12] = v48;
  v34[6] = v42;
  v34[7] = v43;
  v34[8] = v44;
  v34[9] = v45;
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v34[5] = v41;
  v33 = v49;
  v35 = v49;
  v34[0] = v36;
  v34[1] = v37;
  sub_10000F778(&v20, v17, &qword_10060B940);
  sub_100007214(v34, &qword_10060B940);
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v36 = v20;
  v37 = v21;
  v7 = *(sub_100003ABC(&qword_10060B948) + 36);
  v8 = enum case for BlendMode.plusLighter(_:);
  v9 = sub_1004BA7E4();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v6;
  v10 = v47;
  *(a1 + 176) = v46;
  *(a1 + 192) = v10;
  *(a1 + 208) = v48;
  *(a1 + 224) = v49;
  v11 = v43;
  *(a1 + 112) = v42;
  *(a1 + 128) = v11;
  v12 = v45;
  *(a1 + 144) = v44;
  *(a1 + 160) = v12;
  v13 = v39;
  *(a1 + 48) = v38;
  *(a1 + 64) = v13;
  v14 = v41;
  *(a1 + 80) = v40;
  *(a1 + 96) = v14;
  result = *&v36;
  v16 = v37;
  *(a1 + 16) = v36;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_1002F2620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  swift_getWitnessTable();
  sub_1004B9604();
  sub_100003B68(&qword_10060B958);
  v5 = sub_1004B8D64();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v20 = *(a2 + 16);
  v21 = v3;
  sub_1004BA754();
  sub_100003ABC(&qword_10060B960);
  WitnessTable = swift_getWitnessTable();
  sub_1002F5ED0(&qword_10060B968, &qword_10060B960, &unk_1004DE108, sub_1002F61F0);
  sub_1004BA064();
  v12 = sub_1000206D4(&qword_10060B978, &qword_10060B958);
  v22 = WitnessTable;
  v23 = v12;
  v13 = swift_getWitnessTable();
  sub_100318364(v7, v5, v13);
  v14 = *(v17 + 8);
  v14(v7, v5);
  sub_100318364(v10, v5, v13);
  return (v14)(v10, v5);
}

double sub_1002F28B8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1002F1EB8(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  sub_1004BA6E4();
  sub_1004B8B64();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  sub_1004BA754();
  sub_1004B8994();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_1002F2A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1004B92C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(sub_100003ABC(&qword_10060B6C0) + 36));
  v13 = sub_1004B8E74();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(sub_100003ABC(&unk_10060EC70) + 36)) = 256;
  v16 = sub_100003ABC(&qword_10060B6C8);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  sub_1004BA754();
  sub_1004B8994();
  v18 = (a2 + *(sub_100003ABC(&qword_10060B6D0) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = sub_1004BA754();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  sub_1004B9BE4();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = sub_1004BA2B4();
  v43 = v26;
  v27 = sub_1004BA294();
  sub_1004BA2B4();
  v28 = sub_1004BA2C4();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = sub_100003ABC(&qword_10060B6D8);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  sub_10000F778(&v57, &v47, &qword_10060B6E0);
  return sub_100007214(v65, &qword_10060B6E0);
}

__n128 sub_1002F2D98@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_1002F2DA4@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_1002F2DD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1002F56AC(v7, v8) & 1;
}

uint64_t sub_1002F2E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1004B92C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060B710);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin(v7);
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  sub_1004B9BE4();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  sub_1004B9BE4();
  v13 = sub_1004BA2B4();
  v14 = sub_1004BA294();
  sub_1004BA2B4();
  v15 = sub_1004BA2C4();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  sub_1002F5384(v44, v33);
  sub_1004B9BA4();
  sub_1002EE034(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 64);
  LOBYTE(v29) = *(a1 + 80);
  sub_100003ABC(&qword_10060F540);
  sub_1004BA594();
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  v16[5] = *(a1 + 64);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v19;
  sub_1002F5458(a1, &v28);
  sub_100003ABC(&qword_10060B718);
  sub_100003ABC(&qword_10060B720);
  sub_1002F5490();
  sub_1002F54E4();
  sub_1000206D4(&qword_10060B758, &qword_10060B720);
  v20 = v24;
  sub_1004B9F54();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  sub_1002F55C8(&v28);
  sub_1002EE034(v39);
  v33[0] = *(a1 + 88);
  LOBYTE(v33[1]) = *(a1 + 104);
  sub_1004BA594();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = sub_100003ABC(&qword_10060B760);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_1002F3318@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = sub_100003ABC(&qword_10060B740);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(sub_100003ABC(&qword_10060B718) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return sub_1002F5600(v14, &v13);
}

uint64_t sub_1002F33F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_100003ABC(&qword_10060B720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v17 = v16 - v8;
  v16[1] = swift_getKeyPath();
  v19 = a1;
  sub_100003ABC(&qword_10060B768);
  v9 = sub_100003B68(&qword_10060B770);
  v10 = sub_100003B68(&qword_10060B778);
  v11 = sub_1000206D4(&qword_10060B780, &qword_10060B770);
  v12 = sub_1000206D4(&qword_10060B788, &qword_10060B778);
  v20 = &type metadata for Double;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  swift_getOpaqueTypeConformance2();
  sub_1004B8A44();
  sub_1000206D4(&qword_10060B758, &qword_10060B720);
  v13 = v17;
  sub_1004B8DF4();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_1004B8E14();
  sub_1004B8E04();
  v14(v6, v3);
  return (v14)(v13, v3);
}

uint64_t sub_1002F36CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1004BA534();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100003ABC(&qword_10060B778);
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  __chkstk_darwin(v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v28 = &v23 - v8;
  v9 = sub_100003ABC(&qword_10060B770);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v24 = &v23 - v14;
  v32 = *(a1 + 16);
  v33 = *(a1 + 32);
  sub_100003ABC(&qword_10060B790);
  sub_1004BA594();
  sub_1004B88F4();
  sub_1000206D4(&qword_10060B780, &qword_10060B770);
  sub_1004B9784();
  v15 = *(v10 + 8);
  v25 = v10 + 8;
  v26 = v15;
  v15(v12, v9);
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  sub_1004BA594();
  sub_1004BA524();
  *&v32 = 0;
  BYTE8(v32) = 0;
  v16 = v27;
  sub_1004B8BE4();
  sub_1000206D4(&qword_10060B788, &qword_10060B778);
  v18 = v28;
  v17 = v29;
  sub_1004B9784();
  v19 = *(v30 + 8);
  v19(v16, v17);
  v20 = v24;
  sub_1004B97A4();
  sub_1004B9794();
  v21 = v26;
  v26(v12, v9);
  v19(v18, v17);
  return v21(v20, v9);
}

double sub_1002F3AC0@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_1004B9BC4();
  *&v6 = COERCE_DOUBLE(sub_1004B9BF4());
  v8 = v7;
  v10 = v9;
  sub_1002EE034(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_1002F3B8C@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_1004B9BC4();
  *&v6 = COERCE_DOUBLE(sub_1004B9BF4());
  v8 = v7;
  v10 = v9;
  sub_1002EE034(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

uint64_t sub_1002F3C70(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1002F5748(v8, v9) & 1;
}

uint64_t sub_1002F3CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(sub_100003ABC(&qword_10060B6E8) + 36));
  v10 = *(sub_1004B8E74() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_1004B92C4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(sub_100003ABC(&unk_10060EC70) + 36)] = 256;
  v13 = sub_100003ABC(&qword_10060B6F0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_1004BA754();
  sub_1004B8994();
  v14 = (a2 + *(sub_100003ABC(&qword_10060B6F8) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = sub_1004BA754();
  v17 = v16;
  v18 = a2 + *(sub_100003ABC(&qword_10060B700) + 36);
  sub_1002F2E60(v24, v18);
  result = sub_100003ABC(&qword_10060B708);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14)
{
  *&v15 = a9;
  *(&v15 + 1) = a10;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a11;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a12;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  v20[0] = a7;
  *&v20[8] = a8;
  *&v20[16] = a13;
  v20[24] = a14;

  sub_1004BA124();
  v21[4] = v19;
  v22[0] = *v20;
  *(v22 + 9) = *&v20[9];
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  return sub_1002F3FD4(v21);
}

void sub_1002F4004(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_1002F42A0(0.5);
  sub_1002F42A0(1.0);
  sub_1002F42A0(4.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1002F477C(v32);
  sub_1002F4B70(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_1002F477C(v35);
  sub_1002F4B70(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    sub_1002F477C(v38);
    sub_100003ABC(&qword_10060EC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C5210;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_1002F4B70(v38);
    sub_1002F1964(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_1004BC284().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1002F42A0(double a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = UIView.forAutolayout.getter();

  v6 = [v5 layer];
  [v6 setBorderWidth:a1];

  v7 = [v5 layer];
  v8 = [objc_opt_self() whiteColor];
  v9 = [v8 CGColor];

  [v7 setBorderColor:v9];
  v10 = [v5 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  v11 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_1004BC5A4().super.super.isa;
  [v11 setValue:isa forKey:kCAFilterInputRadius];

  v13 = [v5 layer];
  sub_100003ABC(&qword_10060B7A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C50A0;
  *(v14 + 56) = sub_100009130(0, &qword_10060B7A8);
  *(v14 + 32) = v11;
  v15 = v11;
  v16 = sub_1004BC284().super.isa;

  [v13 setFilters:v16];

  v17 = [v5 layer];
  [v17 setCompositingFilter:kCAFilterPlusL];

  [v2 addSubview:v5];
  v18 = objc_opt_self();
  sub_100003ABC(&qword_10060EC20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C51F0;
  v20 = [v5 topAnchor];
  v21 = [v2 topAnchor];
  v22 = a1 * -0.5;
  v23 = [v20 constraintEqualToAnchor:v21 constant:a1 * -0.5];

  *(v19 + 32) = v23;
  v24 = [v5 bottomAnchor];
  v25 = [v2 bottomAnchor];
  v26 = a1 * 0.5;
  v27 = [v24 constraintEqualToAnchor:v25 constant:v26];

  *(v19 + 40) = v27;
  v28 = [v5 leadingAnchor];
  v29 = [v2 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v22];

  *(v19 + 48) = v30;
  v31 = [v5 trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v26];

  *(v19 + 56) = v33;
  sub_100009130(0, qword_10060B7B0);
  v34 = sub_1004BC284().super.isa;

  [v18 activateConstraints:v34];
}

__n128 sub_1002F477C@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1002F477C(v20);
  sub_1002F4B70(v20);
  sub_1002F477C(v21);
  sub_1002F4B70(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1002F477C(v22);
  sub_1002F1D10();
  v15 = v14;
  sub_1002F4B70(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    sub_1004BD524();
    sub_100009130(0, &qword_10060CFF0);
    v17 = 32;
    do
    {
      sub_1004BCF74(*(v15 + v17));
      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  sub_100009130(0, &qword_10060CFF0);
  isa = sub_1004BC284().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = sub_1004BCE94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1004BCEE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F778(a1, v8, &qword_100610D00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100007214(v8, &qword_100610D00);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1004BCEB4();
  v14 = v28;
  [v28 bounds];
  sub_1004BCE84();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v17 = [v14 subviews];
  sub_100009130(0, &qword_100611200);
  v18 = sub_1004BC2A4();

  v26 = v10;
  v27 = v9;
  v25 = v12;
  if (v18 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = sub_1004BD484();
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 layer];
      [v24 setCornerRadius:v16];

      ++v20;
      if (v23 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return (*(v26 + 8))(v25, v27);
}

id sub_1002F4F70@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id sub_1002F4F7C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id sub_1002F4F88@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_1002F4F94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1002F5818(v7, v8) & 1;
}

unint64_t sub_1002F5034()
{
  result = qword_10060B658;
  if (!qword_10060B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B658);
  }

  return result;
}

uint64_t sub_1002F50A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1004B8D64();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1002F5118()
{
  result = qword_10060B660;
  if (!qword_10060B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B660);
  }

  return result;
}

__n128 sub_1002F516C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1002F5190(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002F51BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F5204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002F5280(uint64_t a1)
{
  result = sub_1002F5034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002F52A8(uint64_t a1)
{
  result = sub_1002F5118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002F52D0(uint64_t a1)
{
  result = sub_1002F52F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002F52F8()
{
  result = qword_10060B6B8;
  if (!qword_10060B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B6B8);
  }

  return result;
}

uint64_t sub_1002F53E0()
{

  return swift_deallocObject();
}

unint64_t sub_1002F5490()
{
  result = qword_10060B728;
  if (!qword_10060B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B728);
  }

  return result;
}

unint64_t sub_1002F54E4()
{
  result = qword_10060B730;
  if (!qword_10060B730)
  {
    sub_100003B68(&qword_10060B718);
    sub_1000206D4(&qword_10060B738, &qword_10060B740);
    sub_1000206D4(&qword_10060B748, &qword_10060B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B730);
  }

  return result;
}

uint64_t sub_1002F5638(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100003ABC(&qword_10060EC20);
  }

  else
  {

    return sub_1004BD944();
  }
}

uint64_t sub_1002F56AC(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_1004BA884() & 1) == 0 || (sub_1004BA884() & 1) == 0 || (sub_1004BA254() & 1) == 0 || (sub_1004BA254() & 1) == 0)
  {
    return 0;
  }

  return sub_1004BA254();
}

uint64_t sub_1002F5748(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_1004B9C04() & 1) == 0 || a1[6] != a2[6] || (sub_1004BA254() & 1) == 0 || (sub_1004BA254() & 1) == 0)
  {
    return 0;
  }

  return sub_1004BA254();
}

uint64_t sub_1002F5818(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_s3__C7CGColorCMa_0(0), sub_1002F5908(), (sub_1004B71E4() & 1) != 0) && (sub_1004B71E4() & 1) != 0)
  {
    return sub_1004B71E4() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1002F5908()
{
  result = qword_10060B798;
  if (!qword_10060B798)
  {
    _s3__C7CGColorCMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B798);
  }

  return result;
}

uint64_t sub_1002F5964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F59B0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1002F5A10()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002F5A98(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 sub_1002F5AB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1002F5AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F5B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F5B7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002F5BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1002F5C20()
{
  result = qword_10060B838;
  if (!qword_10060B838)
  {
    sub_100003B68(&qword_10060B6D8);
    sub_1002F5ED0(&qword_10060B840, &qword_10060B6D0, &unk_1004DDCD8, sub_1002F5D04);
    sub_1000206D4(&qword_10060B860, &qword_10060B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B838);
  }

  return result;
}

unint64_t sub_1002F5D04()
{
  result = qword_10060B848;
  if (!qword_10060B848)
  {
    sub_100003B68(&qword_10060B6C0);
    sub_1000206D4(&qword_10060B850, &qword_10060B6C8);
    sub_1000206D4(&qword_10060B858, &unk_10060EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B848);
  }

  return result;
}

unint64_t sub_1002F5DEC()
{
  result = qword_10060B868;
  if (!qword_10060B868)
  {
    sub_100003B68(&qword_10060B700);
    sub_1002F5ED0(&qword_10060B870, &qword_10060B6F8, &unk_1004DDD00, sub_1002F5F54);
    sub_1000206D4(&qword_10060B888, &qword_10060B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B868);
  }

  return result;
}

uint64_t sub_1002F5ED0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002F5F54()
{
  result = qword_10060B878;
  if (!qword_10060B878)
  {
    sub_100003B68(&qword_10060B6E8);
    sub_1000206D4(&qword_10060B880, &qword_10060B6F0);
    sub_1000206D4(&qword_10060B858, &unk_10060EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B878);
  }

  return result;
}

unint64_t sub_1002F6038(uint64_t a1)
{
  result = sub_1002F6060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002F6060()
{
  result = qword_10060B8E0;
  if (!qword_10060B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B8E0);
  }

  return result;
}

unint64_t sub_1002F60B4(uint64_t a1)
{
  result = sub_1002F60DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002F60DC()
{
  result = qword_10060B938;
  if (!qword_10060B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B938);
  }

  return result;
}

unint64_t sub_1002F61F0()
{
  result = qword_10060B970;
  if (!qword_10060B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B970);
  }

  return result;
}

unint64_t sub_1002F6248()
{
  result = qword_10060B980;
  if (!qword_10060B980)
  {
    sub_100003B68(&qword_10060B948);
    sub_1000206D4(&qword_10060B988, &qword_10060B990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B980);
  }

  return result;
}

uint64_t sub_1002F6300()
{
  type metadata accessor for GradientMaskModifier();
  swift_getWitnessTable();
  sub_1004B9604();
  sub_100003B68(&qword_10060B958);
  sub_1004B8D64();
  swift_getWitnessTable();
  sub_1000206D4(&qword_10060B978, &qword_10060B958);
  return swift_getWitnessTable();
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_100003ABC(&qword_10060B998);
  sub_1004BA414();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  sub_1002F6B94(a1, a2, a3);
  sub_1004BA414();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene()
{
  sub_100003ABC(&qword_10060B998);
  sub_1004BA414();
  return v1;
}

uint64_t type metadata accessor for HostedScenePhaseModel()
{
  result = qword_10060BA68;
  if (!qword_10060BA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model()
{
  type metadata accessor for HostedScenePhaseModel();
  sub_1004BA414();
  return v1;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = sub_100003ABC(&qword_10060B9A0);
  v31 = v11;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_1004BA754();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = sub_100003ABC(&qword_10060B9A8);
  sub_1004BA444();
  v30 = v36;
  v17 = v37;
  v18 = sub_100003ABC(&qword_10060B9B0);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(sub_100003ABC(&qword_10060B9B8) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  sub_100003ABC(&qword_10060B9C0);
  sub_1004BA424();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  sub_1002F9568(&qword_10060B9D0, type metadata accessor for HostedScenePhaseModel);
  sub_1004B7104();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(sub_100003ABC(&qword_10060B9E0) + 28);
  v25 = sub_1004B8724();
  (*(*(v25 - 8) + 16))(v23 + v24, v21 + v22, v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  sub_1004BA424();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  sub_100003ABC(&qword_10060B998);
  sub_1002F79FC();
  sub_1002F7B98();
  sub_1004BA144();

  return sub_100007214(v13, &qword_10060B9A0);
}

uint64_t sub_1002F691C(uint64_t a1)
{
  v2 = sub_1004B8724();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1004B8F44();
}

void sub_1002F69E4()
{
  sub_100003ABC(&qword_10060B9C0);
  sub_1004BA424();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1002F7DD4(Strong);
}

uint64_t View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_100003ABC(&qword_10060B998);
  sub_1004BA414();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  sub_1002F6B94(a1, a2, a3);
  sub_1004BA414();
  sub_1004BA124();
}

uint64_t sub_1002F6B94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = sub_1004B8724();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  if (qword_100609BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1004B80B4();
  sub_100007084(v11, static Logger.scenes);
  v12 = sub_1004B8094();
  v13 = sub_1004BC9A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = sub_1004BD444();
    v18 = sub_1002C4260(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    sub_100004C6C(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  return v4;
}

uint64_t sub_1002F6DB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004B8724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1002F9568(&qword_10060BBC8, &type metadata accessor for ScenePhase);
  v14[0] = a1;
  LOBYTE(a1) = sub_1004BBD84();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_1002F73E0();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1002F9568(&qword_10060B9D0, type metadata accessor for HostedScenePhaseModel);
    sub_1004B70F4();
  }

  return (v10)(v14[0], v4);
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (qword_100609BE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();

  return sub_100007084(v0, static Logger.scenes);
}

uint64_t sub_1002F70D8()
{
  v1 = v0;
  if (qword_100609BE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  sub_100007084(v2, static Logger.scenes);

  v3 = sub_1004B8094();
  v4 = sub_1004BC9A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = sub_1004BD444();
    v9 = sub_1002C4260(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    sub_100004C6C(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      sub_100004DE4(v13, v20);
      v14 = [v12 defaultCenter];
      sub_100009178(v20, v20[3]);
      [v14 removeObserver:sub_1004BD9A4()];

      swift_unknownObjectRelease();
      sub_100004C6C(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = sub_1004B8724();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = sub_1004B7144();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t sub_1002F738C()
{
  sub_1002F70D8();

  return swift_deallocClassInstance();
}

void sub_1002F73E0()
{
  v1 = v0;
  v2 = sub_1004B8724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100609BE0 != -1)
  {
    swift_once();
  }

  v6 = sub_1004B80B4();
  sub_100007084(v6, static Logger.scenes);

  v18 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_1004BD444();
    v11 = sub_1002C4260(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    sub_1002F9568(&qword_10060B9D0, type metadata accessor for HostedScenePhaseModel);
    sub_1004B7104();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = sub_1004BBF04();
    v15 = sub_1002C4260(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_1002F76DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1002F9568(&qword_10060B9D0, type metadata accessor for HostedScenePhaseModel);
  sub_1004B7104();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = sub_1004B8724();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1002F77D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002F9568(&qword_10060B9D0, type metadata accessor for HostedScenePhaseModel);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = sub_1004B8724();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1002F78D0(uint64_t a1)
{
  v2 = sub_1004B8724();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1002F6DB8(v5);
}

uint64_t sub_1002F79A0()
{

  return swift_deallocObject();
}

unint64_t sub_1002F79FC()
{
  result = qword_10060B9E8;
  if (!qword_10060B9E8)
  {
    sub_100003B68(&qword_10060B9A0);
    sub_1002F7AB4();
    sub_1000206D4(&qword_10060BA10, &qword_10060B9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B9E8);
  }

  return result;
}

unint64_t sub_1002F7AB4()
{
  result = qword_10060B9F0;
  if (!qword_10060B9F0)
  {
    sub_100003B68(&qword_10060B9B8);
    sub_1000206D4(&qword_10060B9F8, &qword_10060B9B0);
    sub_1000206D4(&qword_10060BA00, &qword_10060BA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B9F0);
  }

  return result;
}

unint64_t sub_1002F7B98()
{
  result = qword_10060BA18;
  if (!qword_10060BA18)
  {
    sub_100003B68(&qword_10060B998);
    sub_1002F9568(&qword_10060BA20, sub_1002F7C4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BA18);
  }

  return result;
}

unint64_t sub_1002F7C4C()
{
  result = qword_10060BA28;
  if (!qword_10060BA28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060BA28);
  }

  return result;
}

uint64_t sub_1002F7C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B8724();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_1002F73E0();
  return (*(v5 + 8))(v8, v4);
}

void sub_1002F7DD4(void *a1)
{
  v2 = sub_100003ABC(&qword_10060BBD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_1004B8724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      sub_1002F7C4C();
      v11 = a1;
      v12 = sub_1004BCFA4();

      if (v12)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_100609BE0 != -1)
  {
    swift_once();
  }

  v13 = sub_1004B80B4();
  sub_100007084(v13, static Logger.scenes);

  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = sub_1004BD444();
    v30 = v4;
    v19 = sub_1002C4260(v17, v18, &v32);
    v29 = v8;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v31 = swift_unknownObjectWeakLoadStrong();
    sub_100003ABC(&qword_10060B998);
    v21 = sub_1004BBF04();
    v23 = sub_1002C4260(v21, v22, &v32);
    v4 = v30;

    *(v16 + 14) = v23;
    v8 = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 activationState];

    v27 = &enum case for ScenePhase.background(_:);
    v28 = &enum case for ScenePhase.active(_:);
    if (v26)
    {
      v28 = &enum case for ScenePhase.inactive(_:);
    }

    if (v26 != 2)
    {
      v27 = v28;
    }

    (*(v6 + 104))(v4, *v27, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    (*(v6 + 104))(v8, enum case for ScenePhase.inactive(_:), v5);
  }

  sub_1002F6DB8(v8);
  sub_1002F81DC();
}

uint64_t sub_1002F81DC()
{
  v1 = v0;
  v2 = sub_1004B8724();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin(v2);
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = sub_100003ABC(&qword_10060BBB0);
  v4 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_100609BE0 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, static Logger.scenes);

    v9 = v7;
    v10 = sub_1004B8094();
    v11 = sub_1004BC9A4();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = sub_1004BD444();
      v17 = sub_1002C4260(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = sub_1004BBE64();
      v22 = v21;

      v23 = sub_1002C4260(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_100003ABC(&qword_10060BBB8);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    sub_1003BF7A8(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      sub_1002F9368(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = sub_1002F94DC;
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = sub_1002F8E2C;
      ObjectType = &unk_1005C1398;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      sub_100007214(v54, &qword_10060BBB0);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        sub_1003BF7A8((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      sub_10003E13C(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    sub_1002F9294(v70);
  }

  else
  {
    if (qword_100609BE0 != -1)
    {
      swift_once();
    }

    v72 = sub_1004B80B4();
    sub_100007084(v72, static Logger.scenes);

    v73 = sub_1004B8094();
    v74 = sub_1004BC9A4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = sub_1004BD444();
      v80 = sub_1002C4260(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      sub_100004C6C(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    sub_1002F9294(v81);
  }
}

uint64_t sub_1002F8B70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1004B8724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100609BE0 != -1)
    {
      swift_once();
    }

    v11 = sub_1004B80B4();
    sub_100007084(v11, static Logger.scenes);
    v12 = a3;

    v13 = sub_1004B8094();
    v14 = sub_1004BC9A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = sub_1004BD444();
      v27 = a4;
      v19 = sub_1002C4260(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      sub_100003ABC(&qword_10060BBC0);
      v22 = sub_1004BBF04();
      v24 = sub_1002C4260(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    sub_1002F6DB8(v9);
  }

  return result;
}

uint64_t sub_1002F8E2C(uint64_t a1)
{
  v2 = sub_1004B65F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1004B65C4();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002F8F20()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.scenes);
  sub_100007084(v0, static Logger.scenes);
  return static Logger.music(_:)();
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609BE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  v3 = sub_100007084(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002F905C()
{
  result = sub_1004B8724();
  if (v1 <= 0x3F)
  {
    result = sub_1004B7144();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002F914C()
{
  sub_100003B68(&qword_10060B9A0);
  sub_100003B68(&qword_10060B998);
  sub_1002F79FC();
  sub_1002F7B98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002F91DC()
{
  sub_1004B8D64();
  sub_1002F9240();
  return swift_getWitnessTable();
}

unint64_t sub_1002F9240()
{
  result = qword_10060BBA8;
  if (!qword_10060BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BBA8);
  }

  return result;
}

uint64_t sub_1002F9294(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      sub_100004DE4(v4, v6);
      v5 = [v3 defaultCenter];
      sub_100009178(v6, v6[3]);
      [v5 removeObserver:sub_1004BD9A4()];

      swift_unknownObjectRelease();
      result = sub_100004C6C(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1002F9368(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060BBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F93D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002F9410()
{
  v1 = sub_1004B8724();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002F94DC(uint64_t a1)
{
  v3 = *(sub_1004B8724() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1002F8B70(a1, v4, v5, v6);
}

uint64_t sub_1002F9550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F9568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WindowSceneResolver.windowScene.getter()
{
  sub_100003ABC(&qword_10060BBD8);
  sub_1004BA594();
  return v1;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = sub_100003ABC(&qword_10060BBD8);
  sub_1004BA594();
  return sub_1002F9738;
}

void sub_1002F9738(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_1004BA5A4();
  }

  else
  {
    sub_1004BA5A4();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter()
{
  sub_100003ABC(&qword_10060BBD8);
  sub_1004BA5B4();
  return v1;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_100003ABC(&qword_10060BBD8);
  sub_1004BA5B4();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  sub_100003ABC(&qword_10060BBD8);
  sub_1004BA5A4();
}

void sub_1002F9BB8()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t sub_1002F9C18()
{
  result = qword_10060BBE8;
  if (!qword_10060BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BBE8);
  }

  return result;
}

uint64_t sub_1002F9D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002F9E48();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002F9D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002F9E48();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002F9DFC()
{
  sub_1002F9E48();
  sub_1004B94B4();
  __break(1u);
}

__n128 initializeBufferWithCopyOfBuffer for SymbolButton.Animation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1002F9E48()
{
  result = qword_10060BC18;
  if (!qword_10060BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BC18);
  }

  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  sub_1002FB49C(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  return v0;
}

uint64_t sub_1002F9FBC(uint64_t a1)
{
  v3 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000F778(v1 + v6, v5, &qword_10060BC58);
  v7 = sub_1002FF2B8(v5, a1);
  sub_100007214(v5, &qword_10060BC58);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
    sub_1004B70F4();
  }

  else
  {
    sub_10000F778(a1, v5, &qword_10060BC58);
    swift_beginAccess();
    sub_1003008CC(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100007214(a1, &qword_10060BC58);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1002FB4D4(v1 + v3, v8);
  v4 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v8, a1);
  sub_1002FF0FC(v8);
  if (v4)
  {
    sub_1002FB4D4(a1, v8);
    sub_1002FB4D4(v1 + v3, v7);
    swift_beginAccess();
    sub_1002FF1D4(v8, v1 + v3);
    swift_endAccess();
    sub_1002FB50C(v7);
    sub_1002FF0FC(v7);
    sub_1002FF0FC(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8[0] = v1;
    sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
    sub_1004B70F4();
  }

  return sub_1002FF0FC(a1);
}

uint64_t NoticePresenter.willPresentHandler.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B70F4();
  sub_10003CC4C(a1);
}

uint64_t sub_1002FA448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_10000F778(v3 + v4, a2, &qword_10060BC58);
}

uint64_t sub_1002FA520(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000F778(a1, &v6 - v3, &qword_10060BC58);
  return sub_1002F9FBC(v4);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_10000F778(v5 + v3, a1, &qword_10060BC58);
}

uint64_t sub_1002FA6A4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_100300958(a2, a1 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];
  swift_getKeyPath();
  v15 = v1;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000F778(v2 + v7, v6, &qword_10060BC58);
  v8 = type metadata accessor for Notice(0);
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_100007214(v6, &qword_10060BC58);
  if (v7 != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v13[-16] = v2;
    *&v13[-8] = 0;
    v14 = v2;
    sub_1004B70F4();

    if (a1)
    {
      sub_1004BA7B4();
    }

    sub_1004B8B24();

    swift_getKeyPath();
    v14 = v2;
    sub_1004B7104();

    v10 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v11 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v11)
    {
      *(v11 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v14 = v2;
    sub_1004B7104();

    if (*(v2 + v10))
    {
      sub_100009130(0, &qword_10060E4F0);
      v12 = sub_1004BCB44();

      OS_dispatch_queue.asyncAfter(_:block:)(sub_1002FF2B0, v2);
    }
  }
}

uint64_t sub_1002FAA58()
{
  v0 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for Notice(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1002F9FBC(v2);
}

void sub_1002FAB20(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v2 - 8);
  v4 = v7 - v3;
  swift_getKeyPath();
  v7[1] = a1;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000F778(a1 + v5, v4, &qword_10060BC58);
  v6 = type metadata accessor for Notice(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_100007214(v4, &qword_10060BC58);
  if (v5 == 1)
  {
    sub_1002FC2A0(0);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Notice(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v6);
  _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(v6, a2);
  return sub_1002391B4(v6);
}

void sub_1002FAD44(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v10[0] = a1;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v10[0] = a1;
    sub_1004B7104();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_1002FB4D4(a1 + v5, v10);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = sub_1002FF558(v7, v10);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    sub_1002FC2A0(v4);
  }
}

void sub_1002FAF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  sub_100300778(a2, &v19 - v5);
  v7 = type metadata accessor for Notice(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_1002F9FBC(v6);
  swift_getKeyPath();
  v20 = a1;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v9 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v9)
  {
    v10 = [v9 rootViewController];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = [v12 view];

        if (!v13)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v13 setNeedsLayout];
        v11 = v13;
      }
    }
  }

  swift_getKeyPath();
  v20 = a1;
  sub_1004B7104();

  v14 = *(a1 + v8);
  if (v14)
  {
    v15 = [v14 rootViewController];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
LABEL_12:

        return;
      }

      v18 = [v17 view];

      if (v18)
      {
        [v18 layoutIfNeeded];
        v16 = v18;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_1002FB19C()
{
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();
}

uint64_t sub_1002FB248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
}

uint64_t sub_1002FB2FC()
{
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B70F4();
}

uint64_t sub_1002FB3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;
  if (!v2)
  {
  }

  sub_1004BA974();
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a2, double a3, double a4, double a5, double a6)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  return result;
}

void sub_1002FB50C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1002FB4D4(v1 + v4, v9);
  v5 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v9);
  sub_1002FF0FC(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    sub_1004B7104();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          sub_1004B7104();

          sub_1002FB4D4(v2 + v4, v9);
          sub_1002FE450(v9);
        }
      }
    }
  }
}

void (*sub_1002FB6C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  sub_1002FB4D4(v1 + v5, v4);
  return sub_1002FB760;
}

void sub_1002FB760(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    sub_1002FB4D4(*a1, v2 + 56);
    sub_1002FB4D4(v3 + v4, v2 + 112);
    swift_beginAccess();
    sub_1002FF1D4(v2 + 56, v3 + v4);
    swift_endAccess();
    sub_1002FB50C(v2 + 112);
    sub_1002FF0FC(v2 + 112);
  }

  else
  {
    sub_1002FB4D4(v3 + v4, v2 + 56);
    swift_beginAccess();
    sub_1002FF1D4(v2, v3 + v4);
    swift_endAccess();
    sub_1002FB50C(v2 + 56);
  }

  sub_1002FF0FC(v2 + 56);
  sub_1002FF0FC(v2);

  free(v2);
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_1002FB4D4(v5 + v3, a1);
}

uint64_t sub_1002FB910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_1002FB4D4(v3 + v4, a2);
}

uint64_t sub_1002FB9D8(uint64_t a1, uint64_t a2)
{
  sub_1002FB4D4(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1002FB4D4(a1 + v3, v5);
  swift_beginAccess();
  sub_1002FF1D4(v6, a1 + v3);
  swift_endAccess();
  sub_1002FB50C(v5);
  sub_1002FF0FC(v5);
  return sub_1002FF0FC(v6);
}

void (*NoticePresenter.configuration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002FB6C8(v4);
  return sub_1002FBBC0;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1);
  return v2;
}

uint64_t sub_1002FBD00@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_100300C7C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_10002F518(v5);
}

uint64_t sub_1002FBE0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100300C1C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10002F518(v1);
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B70F4();
  sub_10003CC4C(v4);
}

uint64_t sub_1002FBF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v5[1] = a3;
  sub_10002F518(a2);
  return sub_10003CC4C(v6);
}

void (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002FBBCC();
  return sub_1002FC124;
}

void *sub_1002FC130()
{
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id sub_1002FC1E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void sub_1002FC2A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v6 = v5;
      v7 = a1;
      v8 = sub_1004BCFA4();

      if (v8)
      {
        v9 = *(v2 + v4);
        goto LABEL_8;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
    sub_1004B70F4();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v7 = 0;
LABEL_8:
  *(v2 + v4) = a1;
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  v11 = v7;
  sub_1004B7104();

  if (v9)
  {
    v12 = *(v2 + v4);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v9 = v9, v14 = sub_1004BCFA4(), v9, v13, (v14 & 1) == 0))
    {
      [v9 resignKeyWindow];
    }
  }

  else
  {
  }
}

void sub_1002FC4E8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  v6 = a2;
  sub_1004B7104();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = sub_1004BCFA4(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  sub_100007214(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_10060BC58);

  sub_1002FF0FC(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_10003CC4C(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_1004B7144();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  sub_100007214(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_10060BC58);

  sub_1002FF0FC(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_10003CC4C(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_1004B7144();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.noticePresenting(_:configurator:)()
{
  sub_100003ABC(&qword_10060B998);
  sub_1004BA414();
  sub_1004BA124();
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100003ABC(&qword_10060B998);
  sub_1004BA414();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  sub_100003ABC(&qword_10060BC68);
  sub_1004BA594();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_10030009C((v3 + 6), (v3 + 3));

  sub_10000F778((v4 + 7), (v4 + 3), &qword_10060BC70);
  v4[13] = sub_100003ABC(&qword_10060BC68);
  sub_1004BA594();
  return sub_1002FCAE0;
}

void sub_1002FCAE0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_1004BA5A4();
    sub_1003000F8((v2 + 6));

    sub_100007214((v2 + 7), &qword_10060BC70);
  }

  else
  {
    sub_1004BA5A4();
    sub_1003000F8((v2 + 6));

    sub_100007214((v2 + 7), &qword_10060BC70);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  sub_100003ABC(&qword_10060BC68);
  sub_1004BA5B4();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = sub_100003ABC(&qword_10060BC78);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_1004BA754();
  v10 = v9;
  v12 = v2[6];
  v28[0] = v2[5];
  v11 = v28[0];
  v28[1] = v12;
  sub_100003ABC(&qword_10060B9A8);
  sub_1004BA444();
  v22 = v26;
  v13 = v27;
  v14 = sub_100003ABC(&qword_10060BC80);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v22;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  sub_1004BA424();
  v16 = v28[0];
  v25 = v28[0];
  *&v26 = v12;
  v17 = *v3;
  v18 = v3[3];
  v29 = v3[2];
  v30 = v17;
  v28[0] = v11;
  v19 = swift_allocObject();
  v20 = *(v3 + 1);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v3 + 2);
  *(v19 + 64) = v3[6];
  sub_10030009C(&v30, v24);

  sub_10000F778(&v29, v24, &qword_10060BC70);
  sub_10002F518(v18);
  sub_10000F778(v28, v24, &qword_10060B998);
  sub_10000F778(&v26, v24, &qword_10060BC88);
  sub_100003ABC(&qword_10060B998);
  sub_1003001BC();
  sub_1002F7B98();
  sub_1004BA144();

  return sub_100007214(v7, &qword_10060BC78);
}

uint64_t sub_1002FCEC0(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  sub_10002F518(*(a3 + 3));
  v6 = v4;
  v7 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v12 = v7;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1002FB4D4(v7 + v8, &v12);

  v5(&v12);
  UIWindowScene.noticePresenter.getter();
  sub_1002FB4D4(&v12, v11);
  NoticePresenter.configuration.setter(v11);
  sub_10003CC4C(v5);

  sub_1002FF0FC(&v12);
LABEL_5:
  v9 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v12 = *a3;
  v13 = *(a3 + 2);
  v11[0] = v9;
  sub_100003ABC(&qword_10060BC68);
  return sub_1004BA5A4();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    sub_100007214(v5, &qword_10060BCA0);
    goto LABEL_5;
  }

  sub_100003ABC(&qword_10060BCA8);
  type metadata accessor for NoticePresenter();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter();
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
    sub_1004B7104();

    v5[0] = v0;
    swift_getKeyPath();
    sub_1004B7124();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_1002FB4D4(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    sub_1002FB4D4(v0 + v2, v4);
    swift_beginAccess();
    sub_1002FF1D4(v5, v0 + v2);
    swift_endAccess();
    sub_1002FB50C(v4);
    sub_1002FF0FC(v4);
    sub_1002FF0FC(v5);
    v5[0] = v0;
    swift_getKeyPath();
    sub_1004B7114();

    return v0;
  }

  return v4[0];
}

__n128 sub_1002FD2C0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100003ABC(&qword_10060BF48);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_1004B9344();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100003ABC(&qword_10060BF50);
  sub_1002FD41C(v1, &v5[*(v6 + 44)]);
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v5, a1, &qword_10060BF48);
  v7 = a1 + *(sub_100003ABC(&qword_10060BF58) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_1002FD41C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v93 = sub_100003ABC(&qword_10060BF60);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v4 = &KeyPath - v3;
  v5 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v5 - 8);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(&qword_10060BF68);
  __chkstk_darwin(v12 - 8);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &KeyPath - v16;
  v88 = a1[4];
  sub_1004BA754();
  sub_1004B8994();
  v92 = v100;
  v91 = v102;
  v90 = v104;
  v89 = v105;
  v114 = 1;
  v113 = v101;
  v112 = v103;
  v17 = a1[1];
  v86 = *a1;
  v106 = v86;
  v107 = v17;
  v85 = v17;
  sub_100003ABC(&qword_10060BF70);
  sub_1004BA424();
  v18 = v99;
  swift_getKeyPath();
  v106 = v18;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000F778(v18 + v19, v7, &qword_10060BC58);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100007214(v7, &qword_10060BC58);
    v20 = 1;
    v21 = v87;
    v22 = v93;
  }

  else
  {
    v84 = v11;
    sub_100300714(v7, v11);
    sub_100300778(v11, v4);
    v23 = type metadata accessor for NoticeView(0);
    v24 = &v4[v23[5]];
    *v24 = swift_getKeyPath();
    *(v24 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = &v4[v23[6]];
    v111 = 0x3FF0000000000000;
    sub_1004BA414();
    v26 = v107;
    *v25 = v106;
    *(v25 + 1) = v26;
    v27 = &v4[v23[7]];
    LOBYTE(v111) = 0;
    sub_1004B88C4();
    v28 = v107;
    v29 = v108;
    *v27 = v106;
    *(v27 + 1) = v28;
    *(v27 + 1) = v29;
    v30 = &v4[v23[8]];
    LOBYTE(v111) = 0;
    sub_1004BA414();
    v31 = v107;
    *v30 = v106;
    *(v30 + 1) = v31;
    LOBYTE(v30) = sub_1004B9994();
    sub_1004B86C4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v4[*(sub_100003ABC(&qword_10060BF80) + 36)];
    *v40 = v30;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    LOBYTE(v30) = sub_1004B99B4();
    sub_1004B86C4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v4[*(sub_100003ABC(&qword_10060BF88) + 36)];
    *v49 = v30;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    LOBYTE(v30) = sub_1004B99C4();
    sub_1004B86C4();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = &v4[*(sub_100003ABC(&qword_10060BF90) + 36)];
    *v58 = v30;
    *(v58 + 1) = v51;
    *(v58 + 2) = v53;
    *(v58 + 3) = v55;
    *(v58 + 4) = v57;
    v58[40] = 0;
    sub_1004B89D4();
    sub_1004BA774();
    sub_1004B89F4();

    sub_1004BA8B4();
    sub_1004B89C4();
    sub_1004BA774();
    sub_1004B89F4();

    sub_1004BA8B4();
    sub_1004B89C4();
    sub_1004BA774();
    sub_1004B89F4();

    sub_1004B89B4();

    v59 = sub_1004B89E4();

    *&v4[*(sub_100003ABC(&qword_10060BF98) + 36)] = v59;
    KeyPath = swift_getKeyPath();
    v111 = v85;
    sub_1004BC474();

    sub_10000F778(&v111, &v106, &qword_10060BFA0);
    v60 = sub_1004BC464();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);

    sub_10000F778(&v111, &v106, &qword_10060BFA0);
    v63 = sub_1004BC464();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = &protocol witness table for MainActor;
    v65 = *(a1 + 1);
    *(v64 + 32) = *a1;
    *(v64 + 48) = v65;
    *(v64 + 64) = *(a1 + 2);
    sub_1004BA5C4();
    sub_1002391B4(v84);
    v66 = v106;
    v67 = v107;
    v68 = v108;
    v69 = v93;
    v70 = &v4[*(v93 + 36)];
    *v70 = KeyPath;
    *(v70 + 1) = v66;
    *(v70 + 2) = v67;
    v70[24] = v68;
    v21 = v87;
    sub_100025B04(v4, v87, &qword_10060BF60);
    v20 = 0;
    v22 = v69;
  }

  (*(v94 + 56))(v21, v20, 1, v22);
  sub_1004BA754();
  sub_1004B8994();
  v94 = v106;
  v93 = v108;
  v88 = v109;
  v87 = v110;
  v98 = 1;
  v97 = v107;
  v96 = BYTE8(v108);
  v71 = v114;
  v72 = v113;
  v73 = v112;
  sub_10000F778(v21, v14, &qword_10060BF68);
  v74 = v98;
  v75 = v97;
  v76 = v96;
  v77 = v95;
  *v95 = 0;
  *(v77 + 8) = v71;
  v77[2] = v92;
  *(v77 + 24) = v72;
  v77[4] = v91;
  *(v77 + 40) = v73;
  v78 = v89;
  v77[6] = v90;
  v77[7] = v78;
  v79 = sub_100003ABC(&qword_10060BF78);
  sub_10000F778(v14, v77 + *(v79 + 48), &qword_10060BF68);
  v80 = v77 + *(v79 + 64);
  *v80 = 0;
  v80[8] = v74;
  *(v80 + 2) = v94;
  v80[24] = v75;
  *(v80 + 4) = v93;
  v80[40] = v76;
  v81 = v87;
  *(v80 + 6) = v88;
  *(v80 + 7) = v81;
  sub_100007214(v21, &qword_10060BF68);
  return sub_100007214(v14, &qword_10060BF68);
}

uint64_t sub_1002FDE98@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v11 = *a1;
  sub_100003ABC(&qword_10060BF70);
  sub_1004BA424();
  v7 = v12;
  swift_getKeyPath();
  *&v11 = v7;
  sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
  sub_1004B7104();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000F778(v7 + v8, v6, &qword_10060BC58);

  v9 = type metadata accessor for Notice(0);
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  result = sub_100007214(v6, &qword_10060BC58);
  *a2 = v8;
  return result;
}

_BYTE *sub_1002FE058(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    sub_100003ABC(&qword_10060BF70);
    sub_1004BA424();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id sub_1002FE14C(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id sub_1002FE450(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  sub_1002FF1D4(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_1002FF0FC(a1);
  }

  sub_1004B99D4();
  v5 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(*(v4 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1004B9404();
  v13[2] = v5;
  *(v13 + 3) = v7;
  *(v13 + 4) = v9;
  *(v13 + 5) = v11;
  v12(&v17, 0);
  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result layoutIfNeeded];

      return sub_1002FF0FC(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002FE6D8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  sub_1004B99D4();
  v7 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v6[2]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1004B9404();
  v15[2] = v7;
  *(v15 + 3) = v9;
  *(v15 + 4) = v11;
  *(v15 + 5) = v13;
  v14(v22, 0);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = [v2 view];
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  [v17 addSubview:v18];

  v20 = [v2 view];
  if (v20)
  {
    v21 = v20;
    [v20 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1002FE8EC()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  sub_1004BCDC4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100300880;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1000E6038;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005C16B8;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  sub_1004B93B4();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  sub_1004BCD94();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1002FECC4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_1002FEE00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_100009130(0, &qword_10060BA28);
      v7 = sub_1004BCFA4();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = sub_1004B99E4();
  if (v8 != sub_1004B99E4() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter()
{
  result = qword_10060BCD8;
  if (!qword_10060BCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FF280(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1002FC2A0(v1);
}

uint64_t sub_1002FF2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100003ABC(&qword_10060BC58);
  __chkstk_darwin(v8 - 8);
  v10 = (&v20 - v9);
  v11 = sub_100003ABC(&qword_10060BFA8);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_10000F778(a1, &v20 - v12, &qword_10060BC58);
  sub_10000F778(a2, &v13[v15], &qword_10060BC58);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000F778(v13, v10, &qword_10060BC58);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100300714(&v13[v15], v7);
      v18 = static Notice.== infix(_:_:)(v10, v7);
      sub_1002391B4(v7);
      sub_1002391B4(v10);
      sub_100007214(v13, &qword_10060BC58);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1002391B4(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100007214(v13, &qword_10060BFA8);
    v17 = 1;
    return v17 & 1;
  }

  sub_100007214(v13, &qword_10060BC58);
  v17 = 0;
  return v17 & 1;
}

char *sub_1002FF558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1004B98E4();
  __chkstk_darwin(v6 - 8);
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v7 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  sub_1002FB4D4(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  sub_1004B99D4();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter();
  sub_1004BA414();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(sub_100003ABC(&qword_10060BFB0));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = sub_1004B93F4();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  sub_1004B98C4();
  sub_1004B93C4();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  sub_1002FF0FC(a2);
  return v22;
}

_BYTE *_s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = a1;
  v48 = sub_1004BA954();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = sub_1004BA8F4();
  __chkstk_darwin(v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Notice(0);
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v49);
  if ((a2 & 1) == 0 || (result = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor(), *result == 1))
  {
    v44[1] = v11;
    v44[2] = v13;
    v45 = v7;
    v46 = v10;
    v47 = v5;
    swift_getKeyPath();
    aBlock = v3;
    sub_100300BD4(&qword_10060BC50, type metadata accessor for NoticePresenter);
    sub_1004B7104();

    v17 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
    swift_beginAccess();
    v18 = *v17;
    v19 = &off_10060B000;
    if (*v17)
    {
      v44[0] = v14;
      swift_getKeyPath();
      aBlock = v3;

      sub_1004B7104();

      aBlock = v3;
      swift_getKeyPath();
      sub_1004B7124();

      v20 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      sub_1002FB4D4(v3 + v20, &aBlock);
      v18(&aBlock);
      sub_10003CC4C(v18);
      sub_1002FB4D4(v3 + v20, v52);
      swift_beginAccess();
      v21 = v3 + v20;
      v19 = &off_10060B000;
      sub_1002FF1D4(&aBlock, v21);
      swift_endAccess();
      sub_1002FB50C(v52);
      sub_1002FF0FC(v52);
      sub_1002FF0FC(&aBlock);
      aBlock = v3;
      v14 = v44[0];
      swift_getKeyPath();
      sub_1004B7114();
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004B7104();

    v22 = v19[390];
    swift_beginAccess();
    sub_1002FB4D4(v22 + v3, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1002FF0FC(&aBlock);
    if (Strong)
    {
      sub_1002FAD44(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004B7104();

    v24 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v25 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v25)
    {
      *(v25 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_1004B7104();

    v26 = *(v3 + v24);
    if (v26)
    {
      [v26 makeKeyAndVisible];
    }

    v27 = objc_opt_self();
    sub_100300778(v50, v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    sub_100300714(v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_100300B68;
    *(v30 + 24) = v29;
    v57 = sub_1000E639C;
    v58 = v30;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100008224;
    v56 = &unk_1005C1730;
    v31 = _Block_copy(&aBlock);

    [v27 performWithoutAnimation:v31];
    _Block_release(v31);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v32 = v49;
      v33 = (v50 + *(v49 + 36));
      if ((v33[1] & 1) == 0)
      {
        v34 = *v33;
        v35 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v35 notificationOccurred:v34];
      }

      if (*(v50 + *(v32 + 40)) == 1)
      {
        v57 = sub_100300BCC;
        v58 = v3;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_1000D6C80;
        v56 = &unk_1005C1758;
        _Block_copy(&aBlock);
        v51 = _swiftEmptyArrayStorage;
        sub_100300BD4(&qword_10060A738, &type metadata accessor for DispatchWorkItemFlags);

        sub_100003ABC(&qword_10060A740);
        sub_1000206D4(&qword_10060A748, &qword_10060A740);
        sub_1004BD2D4();
        sub_1004BA984();
        swift_allocObject();
        v36 = sub_1004BA964();

        sub_100009130(0, &qword_10060E4F0);
        v37 = sub_1004BCB44();
        v38 = v45;
        sub_1004BA944();
        v39 = v46;
        sub_1004BA9B4();
        v40 = *(v47 + 8);
        v41 = v38;
        v42 = v48;
        v40(v41, v48);
        sub_1004BCB14();

        v40(v39, v42);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v44[-2] = v3;
        v44[-1] = v36;
        aBlock = v3;
        sub_1004B70F4();
      }
    }
  }

  return result;
}

uint64_t sub_10030014C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1003001BC()
{
  result = qword_10060BC90;
  if (!qword_10060BC90)
  {
    sub_100003B68(&qword_10060BC78);
    sub_1000206D4(&qword_10060BC98, &qword_10060BC80);
    sub_1000206D4(&qword_10060BA00, &qword_10060BA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BC90);
  }

  return result;
}

unint64_t sub_1003002A0()
{
  result = qword_10060BA20;
  if (!qword_10060BA20)
  {
    sub_100009130(255, &qword_10060BA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BA20);
  }

  return result;
}

void sub_10030032C()
{
  sub_100300418();
  if (v0 <= 0x3F)
  {
    sub_1004B7144();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100300418()
{
  if (!qword_10060BCE8)
  {
    type metadata accessor for Notice(255);
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_10060BCE8);
    }
  }
}

uint64_t sub_100300470(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100300488(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003004B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003004F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1003005A0()
{
  sub_1004B8D64();
  sub_100300604();
  return swift_getWitnessTable();
}

unint64_t sub_100300604()
{
  result = qword_10060BF40;
  if (!qword_10060BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BF40);
  }

  return result;
}

uint64_t sub_100300658()
{
  sub_100003B68(&qword_10060BC78);
  sub_100003B68(&qword_10060B998);
  sub_1003001BC();
  sub_1002F7B98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100300714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100300778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003007F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100300848()
{

  return swift_deallocObject();
}

uint64_t sub_100300898(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003008CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060BC58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100300958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060BC58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003009C8()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1004BB6C4();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void sub_100300B68()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1002FAF20(v2, v3);
}

uint64_t sub_100300BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100300C44()
{

  return swift_deallocObject();
}

unint64_t sub_100300CA8()
{
  result = qword_10060BFB8;
  if (!qword_10060BFB8)
  {
    sub_100003B68(&qword_10060BF58);
    sub_1000206D4(&qword_10060BFC0, &qword_10060BF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BFB8);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  sub_1004BA414();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  sub_1004B88C4();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  sub_1004BA414();
  *v8 = v10;
  *(v8 + 8) = v11;
  return sub_100305BA4(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  sub_100301134();
  sub_1004B9194();
  return v1;
}

double sub_100300F2C@<D0>(uint64_t a1@<X8>)
{
  sub_100301134();
  sub_1004B9194();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_100300F84@<D0>(uint64_t a1@<X8>)
{
  sub_100301134();
  sub_1004B9194();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100300FDC(uint64_t *a1)
{
  sub_100301400(*a1, a1[1]);
  sub_100301134();
  return sub_1004B91A4();
}

unint64_t sub_100301134()
{
  result = qword_10060BFC8;
  if (!qword_10060BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060BFC8);
  }

  return result;
}

uint64_t sub_1003011C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = sub_1004B9184();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    sub_100301400(*v5, v7);
  }

  else
  {

    sub_1004BC994();
    v9 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();
    sub_1003013B0(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1003013B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1003013BC(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1003013BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100301400(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v116 = sub_100003ABC(&qword_10060BFD0);
  __chkstk_darwin(v116);
  v115 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v111 - v5;
  v142 = sub_1004B8C94();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v111 - v8;
  v113 = sub_100003ABC(&qword_10060BFD8);
  __chkstk_darwin(v113);
  v112 = &v111 - v9;
  v137 = sub_1004B8764();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for NoticeView(0);
  v124 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = v11;
  v148 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1004B9544();
  __chkstk_darwin(v122);
  v121 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_100003ABC(&qword_10060BFE0);
  __chkstk_darwin(v138);
  v134 = &v111 - v13;
  v14 = type metadata accessor for NoticeView.Content(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003ABC(&qword_10060BFE8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = sub_100003ABC(&qword_10060BFF0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v111 - v24;
  *&v119 = sub_100003ABC(&qword_10060BFF8);
  __chkstk_darwin(v119);
  v27 = &v111 - v26;
  v120 = sub_100003ABC(&qword_10060C000);
  __chkstk_darwin(v120);
  v29 = &v111 - v28;
  v146 = sub_100003ABC(&qword_10060C008);
  __chkstk_darwin(v146);
  v145 = &v111 - v30;
  v131 = sub_100003ABC(&qword_10060C010);
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v111 - v31;
  v132 = sub_100003ABC(&qword_10060C018);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v111 - v32;
  v123 = sub_100003ABC(&qword_10060C020);
  __chkstk_darwin(v123);
  v130 = &v111 - v33;
  v127 = sub_100003ABC(&qword_10060C028);
  __chkstk_darwin(v127);
  v133 = &v111 - v34;
  v144 = sub_100003ABC(&qword_10060C030);
  __chkstk_darwin(v144);
  v143 = &v111 - v35;
  v36 = v2;
  sub_100305C0C(v2, v17, type metadata accessor for Notice);
  *&v17[*(v15 + 36)] = swift_getKeyPath();
  sub_100003ABC(&unk_10060D340);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v15 + 40)] = swift_getKeyPath();
  sub_100003ABC(&unk_100609F00);
  swift_storeEnumTagMultiPayload();
  *&v157 = 0x4041000000000000;
  sub_100305AFC();
  sub_1004B8914();
  *&v157 = 0x4010000000000000;
  sub_100305B50();
  sub_1004B8914();
  sub_1004BA754();
  sub_1004B8E94();
  sub_100305BA4(v17, v21, type metadata accessor for NoticeView.Content);
  v37 = &v21[*(v19 + 44)];
  v38 = v162;
  *(v37 + 4) = v161;
  *(v37 + 5) = v38;
  *(v37 + 6) = v163;
  v39 = v158;
  *v37 = v157;
  *(v37 + 1) = v39;
  v40 = v160;
  *(v37 + 2) = v159;
  *(v37 + 3) = v40;
  v41 = &v25[*(v23 + 44)];
  sub_1004BA734();
  LOBYTE(v23) = sub_1004B9964();
  v41[*(sub_100003ABC(&qword_10060C048) + 36)] = v23;
  sub_100025B04(v21, v25, &qword_10060BFE8);
  if (qword_100609BB8 != -1)
  {
    swift_once();
  }

  v42 = static Corner.extraLarge;
  v43 = unk_100619040;
  v44 = byte_100619048;
  sub_100025B04(v25, v27, &qword_10060BFF0);
  v45 = &v27[*(v119 + 36)];
  *v45 = v42;
  *(v45 + 1) = v43;
  v45[16] = v44;
  v46 = v2 + *(v149 + 28);
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  LOBYTE(v153) = *v46;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_100003ABC(&qword_10060C050);
  sub_1004B88D4();
  if (v150)
  {
    v51 = 0.4;
  }

  else
  {
    v51 = 1.0;
  }

  sub_100025B04(v27, v29, &qword_10060BFF8);
  *&v29[*(v120 + 36)] = v51;
  v52 = sub_1004BA794();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_1004B88D4();
  v53 = v150;
  v54 = v29;
  v55 = v145;
  sub_100025B04(v54, v145, &qword_10060C000);
  v56 = v55 + *(v146 + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  sub_1004B9674();
  v57 = v134;
  sub_1004B87F4();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_1004B88E4();
  LODWORD(v121) = v150;
  v120 = v151;
  v119 = v152;
  v118 = v36;
  v58 = v148;
  v122 = type metadata accessor for NoticeView;
  sub_100305C0C(v36, v148, type metadata accessor for NoticeView);
  v59 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v60 = swift_allocObject();
  v124 = type metadata accessor for NoticeView;
  sub_100305BA4(v58, v60 + v59, type metadata accessor for NoticeView);
  v61 = sub_100003ABC(&qword_10060C058);
  v62 = v57 + *(v61 + 44);
  *v62 = v121;
  *(v62 + 8) = v120;
  *(v62 + 16) = v119;
  v63 = (v57 + *(v61 + 48));
  *v63 = sub_100305C78;
  v63[1] = v60;
  v64 = v135;
  sub_1004B8754();
  sub_100305C0C(v36, v58, type metadata accessor for NoticeView);
  v65 = swift_allocObject();
  sub_100305BA4(v58, v65 + v59, type metadata accessor for NoticeView);
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100305EFC;
  *(v66 + 24) = v65;
  v67 = v138;
  v68 = v137;
  sub_1004BA684();

  (*(v136 + 8))(v64, v68);
  sub_1004B8814();
  v69 = sub_100305F4C();
  v70 = sub_1000206D4(&qword_10060C0A8, &qword_10060BFE0);
  v71 = v125;
  v72 = v146;
  v73 = v145;
  sub_1004BA0E4();
  sub_100007214(v57, &qword_10060BFE0);
  sub_100007214(v73, &qword_10060C008);
  v74 = v118;
  v75 = v148;
  sub_100305C0C(v118, v148, v122);
  v76 = swift_allocObject();
  sub_100305BA4(v75, v76 + v59, v124);
  type metadata accessor for Notice(0);
  v153 = v72;
  v154 = v67;
  v155 = v69;
  v156 = v70;
  swift_getOpaqueTypeConformance2();
  sub_100306310(&qword_10060C0B0, type metadata accessor for Notice);
  v77 = v126;
  v78 = v131;
  sub_1004BA144();

  (*(v128 + 8))(v71, v78);
  v79 = v130;
  v80 = &v130[*(v123 + 36)];
  sub_100003ABC(&qword_10060C0B8);
  sub_1004B8ED4();
  *v80 = swift_getKeyPath();
  (*(v129 + 32))(v79, v77, v132);
  v81 = (v74 + *(v149 + 24));
  v82 = *v81;
  v83 = v81[1];
  v153 = v82;
  v154 = v83;
  sub_100003ABC(&qword_10060C0C0);
  sub_1004BA424();
  v84 = v150;
  sub_1004BA8B4();
  v86 = v85;
  v88 = v87;
  v89 = v79;
  v90 = v133;
  sub_100025B04(v89, v133, &qword_10060C020);
  v91 = (v90 + *(v127 + 36));
  *v91 = v84;
  v91[1] = v84;
  v91[2] = v86;
  v91[3] = v88;
  sub_1004BA774();
  v92 = sub_1004BA784();

  v93 = v143;
  v94 = &v143[*(v144 + 36)];
  v95 = sub_100003ABC(&qword_10060C0C8);
  sub_100305C0C(v74, v94 + *(v95 + 36), type metadata accessor for Notice);
  *v94 = v92;
  sub_100025B04(v90, v93, &qword_10060C028);
  v96 = v141;
  v97 = *(v141 + 104);
  v98 = v139;
  v99 = v142;
  v97(v139, enum case for DynamicTypeSize.xSmall(_:), v142);
  v100 = v140;
  v97(v140, enum case for DynamicTypeSize.accessibility2(_:), v99);
  sub_100306310(&qword_10060AC48, &type metadata accessor for DynamicTypeSize);
  result = sub_1004BBD64();
  if (result)
  {
    v102 = v98;
    v103 = *(v96 + 32);
    v104 = v114;
    v103(v114, v102, v99);
    v105 = v116;
    v103((v104 + *(v116 + 48)), v100, v99);
    v106 = v115;
    sub_10000F778(v104, v115, &qword_10060BFD0);
    v107 = *(v105 + 48);
    v108 = v112;
    v103(v112, v106, v99);
    v109 = *(v96 + 8);
    v109(v106 + v107, v99);
    sub_100025B04(v104, v106, &qword_10060BFD0);
    v103((v108 + *(v113 + 36)), (v106 + *(v105 + 48)), v99);
    v109(v106, v99);
    sub_10030648C();
    sub_1000206D4(&qword_10060C0F8, &qword_10060BFD8);
    v110 = v143;
    sub_1004B9EE4();
    sub_100007214(v108, &qword_10060BFD8);
    return sub_100007214(v110, &qword_10060C030);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100302818(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 40)) & 1) != 0 || *(a4 + *(result + 32)) && (type metadata accessor for NoticeView(0), sub_100003ABC(&qword_10060C3C8), result = sub_1004BA424(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_1003028B4(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA424();
  if ((v5 & 1) == 0)
  {
    sub_1004BA434();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  result = type metadata accessor for Notice(0);
  if (*(a1 + *(result + 40)) == 1)
  {
    result = NoticeView.dismiss.getter();
    if (v4)
    {
      sub_100003ABC(&qword_10060F540);
      sub_1004BA5A4();
    }
  }

  return result;
}

void sub_1003029F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1004BA774();
  v11 = a3;
  sub_1004B8B24();

  sub_100307EAC();
  v7 = sub_1004BCB44();
  sub_100305C0C(a3, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100305BA4(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(sub_100307EF8, v9);
}

uint64_t sub_100302BA0()
{
  sub_1004BA774();
  sub_1004B8B24();
}

uint64_t sub_100302C28()
{
  type metadata accessor for NoticeView(0);
  sub_100003ABC(&qword_10060C0C0);
  return sub_1004BA434();
}

uint64_t sub_100302CB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B9184();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&unk_10060D340);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  sub_10000F778(v1 + *(v10 + 28), v9, &unk_10060D340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004B8C94();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1004BC994();
    v13 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100302EB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B9184();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&unk_100609F00);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NoticeView.Content(0);
  sub_10000F778(v1 + *(v10 + 32), v9, &unk_100609F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004B8D44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1004BC994();
    v13 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_1003030C0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100003ABC(&qword_10060C2A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1004B8C94();
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notice(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100305C0C(v1, v11, type metadata accessor for Notice);
  sub_100302CB0(v8);
  sub_10030737C(v11, v8, v19);
  if (sub_1003032A4())
  {
    v12 = sub_1004B91E4();
  }

  else
  {
    v12 = sub_1004B9204();
  }

  v13 = v20;
  *v5 = v12;
  *(v5 + 1) = v13;
  v5[16] = 0;
  v14 = sub_100003ABC(&qword_10060C2A8);
  sub_1003034B8(v1, v19, &v5[*(v14 + 44)]);
  v15 = sub_1004B9964();
  sub_100025B04(v5, a1, &qword_10060C2A0);
  v16 = a1 + *(sub_100003ABC(&qword_10060C2B0) + 36);
  *v16 = v15;
  result = v19[0];
  *(v16 + 24) = v19[1];
  *(v16 + 8) = result;
  *(v16 + 40) = 0;
  return result;
}

BOOL sub_1003032A4()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_10060C380);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1004B8C94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100302CB0(v8);
  v9 = sub_1004B8C84();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = type metadata accessor for Notice(0);
    v11 = (v1 + *(v10 + 28));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11 & 0xFFFFFFFFFFFFLL;
      if ((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v13)
      {
        sub_10000F778(v1 + *(v10 + 20), v4, &qword_10060C380);
        v15 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v15 - 8) + 48))(v4, 1, v15) != 1)
        {
          v17 = swift_getEnumCaseMultiPayload() == 1;
          sub_100307E28(v4, type metadata accessor for Notice.Thumbnail);
          return v17;
        }

        sub_100007214(v4, &qword_10060C380);
      }
    }
  }

  return 0;
}

uint64_t sub_1003034B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v40 = a1;
  v4 = sub_100003ABC(&qword_10060C2B8);
  __chkstk_darwin(v4 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_100003ABC(&qword_10060C2C0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_100003ABC(&qword_10060C2C8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_100003ABC(&qword_10060C2D0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  __chkstk_darwin(v23);
  v25 = &v40 - v24;
  sub_100303904(a1, v12);
  sub_1004B9A34();
  sub_1004B9AA4();
  v26 = sub_1004B9AF4();

  KeyPath = swift_getKeyPath();
  v28 = &v12[*(sub_100003ABC(&qword_10060C2D8) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  *&v12[*(v10 + 44)] = sub_1004B9624();
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v12, v16, &qword_10060C2C0);
  v29 = &v16[*(v14 + 44)];
  v30 = v50;
  *(v29 + 4) = v49;
  *(v29 + 5) = v30;
  *(v29 + 6) = v51;
  v31 = v46;
  *v29 = v45;
  *(v29 + 1) = v31;
  v32 = v48;
  *(v29 + 2) = v47;
  *(v29 + 3) = v32;
  sub_100025B04(v16, v22, &qword_10060C2C8);
  v33 = &v22[*(v18 + 44)];
  *v33 = 0x3FF0000000000000;
  *(v33 + 4) = 0;
  sub_100025B04(v22, v25, &qword_10060C2D0);
  *v8 = sub_1004B9354();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v34 = sub_100003ABC(&qword_10060C2E0);
  sub_100304340(v40, v43, &v8[*(v34 + 44)]);
  v35 = v41;
  sub_10000F778(v25, v41, &qword_10060C2D0);
  v36 = v42;
  sub_10000F778(v8, v42, &qword_10060C2B8);
  v37 = v44;
  sub_10000F778(v35, v44, &qword_10060C2D0);
  v38 = sub_100003ABC(&qword_10060C2E8);
  sub_10000F778(v36, v37 + *(v38 + 48), &qword_10060C2B8);
  sub_100007214(v8, &qword_10060C2B8);
  sub_100007214(v25, &qword_10060C2D0);
  sub_100007214(v36, &qword_10060C2B8);
  return sub_100007214(v35, &qword_10060C2D0);
}

uint64_t sub_100303904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = sub_100003ABC(&qword_10060C348);
  __chkstk_darwin(v62);
  v4 = &v46 - v3;
  v63 = sub_100003ABC(&qword_10060C350);
  __chkstk_darwin(v63);
  v6 = &v46 - v5;
  v50 = sub_1004B70B4();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_10060C358);
  __chkstk_darwin(v8);
  v51 = &v46 - v9;
  v61 = sub_100003ABC(&qword_10060C360);
  __chkstk_darwin(v61);
  v54 = &v46 - v10;
  v55 = sub_1004BB6C4();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v46 - v13;
  v14 = sub_100003ABC(&qword_10060C368);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v57 = sub_100003ABC(&qword_10060C370);
  __chkstk_darwin(v57);
  v58 = (&v46 - v17);
  v18 = sub_100003ABC(&qword_10060C378);
  __chkstk_darwin(v18);
  v59 = &v46 - v19;
  v20 = sub_100003ABC(&qword_10060C380);
  __chkstk_darwin(v20 - 8);
  v22 = (&v46 - v21);
  v23 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  sub_10000F778(a1 + v23, v22, &qword_10060C380);
  v24 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_100307B0C();
    sub_1004B9514();
    v25 = &qword_10060C350;
    sub_10000F778(v6, v16, &qword_10060C350);
    swift_storeEnumTagMultiPayload();
    sub_100307BC8();
    sub_100307D9C();
    sub_1004B9514();
    v26 = v6;
LABEL_9:
    v42 = v25;
    return sub_100007214(v26, v42);
  }

  v46 = v16;
  v56 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v22;
    swift_storeEnumTagMultiPayload();
    sub_100307C54();

    v41 = v59;
    sub_1004B9514();
    v25 = &qword_10060C378;
    sub_10000F778(v41, v46, &qword_10060C378);
    swift_storeEnumTagMultiPayload();
    sub_100307BC8();
    sub_100307D9C();
    sub_1004B9514();

    v26 = v41;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1004BA2B4();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    sub_1004B70A4();
    sub_1004BA754();
    sub_1004B8994();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    sub_10000F778(v43, v4, &qword_10060C358);
    swift_storeEnumTagMultiPayload();
    sub_100307B0C();
    sub_1004B9514();
    sub_10000F778(v6, v46, &qword_10060C350);
    swift_storeEnumTagMultiPayload();
    sub_100307BC8();
    sub_100307D9C();
    sub_1004B9514();
    sub_100007214(v6, &qword_10060C350);
    v26 = v43;
    v42 = &qword_10060C358;
    return sub_100007214(v26, v42);
  }

  v62 = v14;
  v28 = v53;
  v29 = v60;
  v30 = v55;
  (*(v53 + 32))(v60, v22, v55);
  (*(v28 + 16))(v47, v29, v30);
  type metadata accessor for NoticeView.Content(0);
  sub_100003ABC(&qword_10060C1C8);
  sub_1004B8924();
  v31 = v54;
  sub_1004B7DA4();
  sub_100003ABC(&qword_10060C1D0);
  sub_1004B8924();
  v32 = v65;
  v33 = v31 + *(sub_100003ABC(&qword_10060C3B0) + 36);
  *v33 = v32;
  *(v33 + 8) = -1;
  *(v33 + 16) = 0;
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  v34 = static Border.artwork;
  v35 = qword_100619058;
  v36 = byte_100619060;
  sub_1004B8924();
  v37 = v65;
  v38 = v31 + *(v61 + 36);
  *v38 = v34;
  *(v38 + 8) = v35;
  *(v38 + 16) = v36;
  *(v38 + 24) = v37;
  *(v38 + 32) = -1;
  *(v38 + 40) = 0;
  sub_10000F778(v31, v58, &qword_10060C360);
  swift_storeEnumTagMultiPayload();
  sub_100307C54();

  v39 = v59;
  sub_1004B9514();
  sub_10000F778(v39, v46, &qword_10060C378);
  swift_storeEnumTagMultiPayload();
  sub_100307BC8();
  sub_100307D9C();
  sub_1004B9514();
  sub_100007214(v39, &qword_10060C378);
  sub_100007214(v31, &qword_10060C360);
  return (*(v28 + 8))(v60, v30);
}

uint64_t sub_100304340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a2;
  v65 = a3;
  v66 = sub_1004B9B04();
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_10060C2F0);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v59 - v7;
  v74 = sub_100003ABC(&qword_10060C2F8);
  __chkstk_darwin(v74);
  v79 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v59 - v10;
  __chkstk_darwin(v11);
  v78 = &v59 - v12;
  v13 = *(type metadata accessor for Notice(0) + 28);
  v73 = a1;
  v14 = (a1 + v13);
  v15 = v14[1];
  if (v15)
  {
    *&v81 = *v14;
    *(&v81 + 1) = v15;
    sub_1002C4D1C();

    v16 = sub_1004B9D84();
    v18 = v17;
    v20 = v19;
    sub_1004B9B44();
    v21 = sub_1004B9CE4();
    v23 = v22;
    v25 = v24;

    sub_10002FA24(v16, v18, v20 & 1);

    LODWORD(v81) = sub_1004B9654();
    v26 = sub_1004B9C84();
    v28 = v27;
    LOBYTE(v16) = v29;
    v31 = v30;
    sub_10002FA24(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v71 = v26;
    v70 = v28;
    v67 = v16 & 1;
    sub_10002FA14(v26, v28, v16 & 1);
    v69 = v31;

    v68 = KeyPath;

    v64 = 2;
  }

  else
  {
    v71 = 0;
    v70 = 0;
    v67 = 0;
    v69 = 0;
    v68 = 0;
    v64 = 0;
  }

  sub_100304A50(v73, &v81);
  v80 = *(&v81 + 1);
  v33 = v81;
  v34 = v83;
  v61 = v82;
  v60 = v84;
  v35 = v85;
  sub_1004B9A34();
  v36 = v63;
  v37 = v66;
  (*(v63 + 104))(v5, enum case for Font.Leading.tight(_:), v66);
  sub_1004B9B34();

  v38 = v5;
  v39 = v34;
  v40 = v61;
  v41 = v37;
  v42 = v60;
  (*(v36 + 8))(v38, v41);
  sub_1004B9AA4();
  v43 = sub_1004B9AF4();

  v44 = swift_getKeyPath();
  v92 = v35;
  v62 = v33;
  *&v81 = v33;
  *(&v81 + 1) = v80;
  v82 = v40;
  v83 = v39;
  v63 = v39;
  v84 = v42;
  LODWORD(v66) = v35;
  v85 = v35;
  v86 = v90;
  v87 = v91;
  v88 = v44;
  v89 = v43;
  if (sub_1003032A4())
  {
    type metadata accessor for NoticeView.Content(0);
    sub_100003ABC(&qword_10060C1C8);
    sub_1004B8924();
  }

  sub_100003ABC(&qword_10060C300);
  sub_100307734();
  v45 = v75;
  sub_1004B9ED4();
  sub_100307978(v62, v80, v40, v63, v42, v66);

  v46 = swift_getKeyPath();
  v47 = v72;
  (*(v76 + 32))(v72, v45, v77);
  v48 = v47 + *(v74 + 36);
  *v48 = v46;
  *(v48 + 8) = 4;
  *(v48 + 16) = 0;
  v49 = v78;
  sub_100025B04(v47, v78, &qword_10060C2F8);
  v50 = v79;
  sub_10000F778(v49, v79, &qword_10060C2F8);
  v51 = v71;
  v52 = v65;
  v53 = v70;
  *v65 = v71;
  v52[1] = v53;
  v54 = v67;
  v55 = v69;
  v52[2] = v67;
  v52[3] = v55;
  v56 = v64;
  v52[4] = v68;
  v52[5] = v56;
  *(v52 + 48) = 0;
  v57 = sub_100003ABC(&qword_10060C340);
  sub_10000F778(v50, v52 + *(v57 + 48), &qword_10060C2F8);
  sub_100307A6C(v51, v53, v54, v55);
  sub_100307ABC(v51, v53, v54, v55);
  sub_100007214(v49, &qword_10060C2F8);
  sub_100007214(v50, &qword_10060C2F8);
  return sub_100307ABC(v51, v53, v54, v55);
}

void sub_100304A50(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v132 = a2;
  v3 = sub_1004B6E44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v130 = &v124[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004B8D44();
  v131 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v124[-v10];
  v12 = sub_100003ABC(&qword_10060AA68);
  __chkstk_darwin(v12 - 8);
  v14 = &v124[-v13];
  v15 = type metadata accessor for Notice(0);
  if (*(a1 + *(v15 + 32)))
  {
    v128 = v3;
    sub_100302CB0(v14);
    v16 = sub_1004B8C94();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
    v17 = sub_1004BCCE4();
    v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v17];

    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
    v22 = [v21 fontDescriptorWithSymbolicTraits:32770];

    v129 = v4;
    if (v22)
    {

      v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    else
    {
      v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v20];
      v22 = v20;
    }

    v24 = v23;

    v25 = [objc_opt_self() configurationWithFont:v24 scale:1];
    v26 = sub_1004BBE24();
    v27 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

    if (v27)
    {
      v28 = [v27 imageWithRenderingMode:2];

      v29 = v129;
      if (v28)
      {
        sub_100302EB8(v11);
        v30 = v131;
        (v131)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v31 = sub_1004B8D34();
        v32 = v30[1];
        v32(v8, v6);
        v32(v11, v6);
        v127 = v28;
        if (v31)
        {
          v33 = objc_opt_self();
          v34 = (a1 + *(v15 + 24));
          v36 = *v34;
          v35 = v34[1];
          v37 = sub_1004BBE24();
          v38 = [v33 dominantLanguageForString:v37];

          if (v38)
          {
            sub_1004BBE64();
            v39 = v130;
            sub_1004B6E04();
            v40 = sub_1004B6E24();
            (*(v29 + 8))(v39, v128);
            if (v40 == 1)
            {
              v41 = v28;
              sub_1004BA314();
              v42 = sub_1004B9D94();
              v44 = v43;
              v131 = v38;
              v46 = v45;
              LODWORD(v136) = sub_1004B9654();
              v47 = sub_1004B9C84();
              v49 = v48;
              v51 = v50;
              sub_10002FA24(v42, v44, v46 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v130 = sub_1004B9CB4();
              v129 = v52;
              LODWORD(v126) = v53;
              v128 = v54;

              sub_10002FA24(v47, v49, v51 & 1);

              *&v136 = v36;
              *(&v136 + 1) = v35;
              sub_1002C4D1C();

              v55 = sub_1004B9D84();
              v57 = v56;
              v59 = v58;
              LODWORD(v136) = sub_1004B9624();
              v60 = sub_1004B9C84();
              v62 = v61;
              LOBYTE(v42) = v63;
              sub_10002FA24(v55, v57, v59 & 1);

              v64 = v130;
              v65 = v129;
              v66 = sub_1004B9CB4();
              v68 = v67;
              v125 = v69;
              v71 = v70;
              sub_10002FA24(v60, v62, v42 & 1);

              sub_10002FA24(v64, v65, v126 & 1);

              LOBYTE(v42) = v125 & 1;
              *&v133 = v66;
              *(&v133 + 1) = v68;
              *&v134 = v125 & 1;
              *(&v134 + 1) = v71;
              LOBYTE(v135) = 0;
              sub_10002FA14(v66, v68, v125 & 1);

              sub_10002FA14(v66, v68, v42);

              sub_1004B9514();

              sub_10002FA24(v66, v68, v42);

              sub_10002FA24(v66, v68, v42);

LABEL_15:
              v134 = v137;
              v133 = v136;
              v135 = v138;
              sub_100003ABC(&qword_10060C330);
              sub_1003078FC();
              sub_1004B9514();

              v86 = v136;
              v87 = v137;
              goto LABEL_16;
            }
          }
        }

        v88 = (a1 + *(v15 + 24));
        v89 = v88[1];
        *&v136 = *v88;
        *(&v136 + 1) = v89;
        sub_1002C4D1C();

        v90 = sub_1004B9D84();
        v92 = v91;
        v94 = v93;
        LODWORD(v136) = sub_1004B9624();
        v95 = sub_1004B9C84();
        v97 = v96;
        v99 = v98;
        sub_10002FA24(v90, v92, v94 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v131 = sub_1004B9CB4();
        v130 = v100;
        LODWORD(v128) = v101;
        v129 = v102;

        sub_10002FA24(v95, v97, v99 & 1);

        v103 = v28;
        sub_1004BA314();
        v104 = sub_1004B9D94();
        v106 = v105;
        v108 = v107;
        LODWORD(v136) = sub_1004B9654();
        v109 = sub_1004B9C84();
        v111 = v110;
        LOBYTE(v92) = v112;
        sub_10002FA24(v104, v106, v108 & 1);

        v113 = v131;
        v114 = v130;
        v126 = sub_1004B9CB4();
        v116 = v115;
        v118 = v117;
        v120 = v119;
        sub_10002FA24(v109, v111, v92 & 1);

        sub_10002FA24(v113, v114, v128 & 1);

        *&v133 = v126;
        *(&v133 + 1) = v116;
        *&v134 = v118 & 1;
        *(&v134 + 1) = v120;
        LOBYTE(v135) = 1;
        sub_1004B9514();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v72 = (a1 + *(v15 + 24));
  v73 = v72[1];
  *&v136 = *v72;
  *(&v136 + 1) = v73;
  sub_1002C4D1C();

  v74 = sub_1004B9D84();
  v76 = v75;
  v78 = v77;
  LODWORD(v136) = sub_1004B9624();
  v79 = sub_1004B9C84();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  sub_10002FA24(v74, v76, v78 & 1);

  *&v133 = v79;
  *(&v133 + 1) = v81;
  *&v134 = v83 & 1;
  *(&v134 + 1) = v85;
  v135 = 256;
  sub_100003ABC(&qword_10060C330);
  sub_1003078FC();
  sub_1004B9514();
  v86 = v136;
  v87 = v137;
LABEL_16:
  v121 = v138;
  v122 = v139;
  v123 = v132;
  *v132 = v86;
  v123[1] = v87;
  *(v123 + 32) = v121;
  *(v123 + 33) = v122;
}

uint64_t NoticeDismissal.presented.getter()
{
  sub_100003ABC(&qword_10060F540);
  sub_1004BA594();
  return v1;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = sub_100003ABC(&qword_10060F540);
  sub_1004BA594();
  return sub_100305774;
}

void sub_100305774(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_1004BA5A4();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter()
{
  sub_100003ABC(&qword_10060F540);
  sub_1004BA5B4();
  return v1;
}

void sub_100305840(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_100301134();
  sub_1004B9194();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_1003058F0;
}

void sub_1003058F0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_100301400(v4, v5);
    sub_1004B91A4();
    sub_1003013BC(*v3, v3[1]);
  }

  else
  {
    sub_1004B91A4();
  }

  free(v3);
}

unint64_t sub_100305AFC()
{
  result = qword_10060C038;
  if (!qword_10060C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C038);
  }

  return result;
}

unint64_t sub_100305B50()
{
  result = qword_10060C040;
  if (!qword_10060C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C040);
  }

  return result;
}

uint64_t sub_100305BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100305C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100305C78(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100302818(a1, a2, a3, v8);
}

uint64_t sub_100305D00()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1004BB6C4();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  sub_1003013B0(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

uint64_t sub_100305F14()
{

  return swift_deallocObject();
}

unint64_t sub_100305F4C()
{
  result = qword_10060C060;
  if (!qword_10060C060)
  {
    sub_100003B68(&qword_10060C008);
    sub_100306004();
    sub_1000206D4(&qword_10060C098, &qword_10060C0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C060);
  }

  return result;
}

unint64_t sub_100306004()
{
  result = qword_10060C068;
  if (!qword_10060C068)
  {
    sub_100003B68(&qword_10060C000);
    sub_100306090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C068);
  }

  return result;
}

unint64_t sub_100306090()
{
  result = qword_10060C070;
  if (!qword_10060C070)
  {
    sub_100003B68(&qword_10060BFF8);
    sub_10030611C();
    sub_1002F09B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C070);
  }

  return result;
}

unint64_t sub_10030611C()
{
  result = qword_10060C078;
  if (!qword_10060C078)
  {
    sub_100003B68(&qword_10060BFF0);
    sub_1003061D4();
    sub_1000206D4(&qword_10060C090, &qword_10060C048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C078);
  }

  return result;
}

unint64_t sub_1003061D4()
{
  result = qword_10060C080;
  if (!qword_10060C080)
  {
    sub_100003B68(&qword_10060BFE8);
    sub_100306310(&qword_10060C088, type metadata accessor for NoticeView.Content);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C080);
  }

  return result;
}

void sub_100306290(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1003029F4(a1, a2, v6);
}

uint64_t sub_100306310(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_10030648C()
{
  result = qword_10060C0D0;
  if (!qword_10060C0D0)
  {
    sub_100003B68(&qword_10060C030);
    sub_100306544();
    sub_1000206D4(&qword_10060C0F0, &qword_10060C0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C0D0);
  }

  return result;
}

unint64_t sub_100306544()
{
  result = qword_10060C0D8;
  if (!qword_10060C0D8)
  {
    sub_100003B68(&qword_10060C028);
    sub_1003065D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C0D8);
  }

  return result;
}

unint64_t sub_1003065D0()
{
  result = qword_10060C0E0;
  if (!qword_10060C0E0)
  {
    sub_100003B68(&qword_10060C020);
    sub_100003B68(&qword_10060C010);
    type metadata accessor for Notice(255);
    sub_100003B68(&qword_10060C008);
    sub_100003B68(&qword_10060BFE0);
    sub_100305F4C();
    sub_1000206D4(&qword_10060C0A8, &qword_10060BFE0);
    swift_getOpaqueTypeConformance2();
    sub_100306310(&qword_10060C0B0, type metadata accessor for Notice);
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&qword_10060C0E8, &qword_10060C0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C0E0);
  }

  return result;
}

uint64_t sub_1003067E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1003068B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

void sub_100306970()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    sub_100306AA8();
    if (v1 <= 0x3F)
    {
      sub_100306B0C(319, &qword_10060C178, &type metadata for Double, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100306B0C(319, &qword_10060C180, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v3 <= 0x3F)
        {
          sub_100306B0C(319, &unk_10060C188, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100306AA8()
{
  if (!qword_10060C168)
  {
    sub_100003B68(&qword_10060C170);
    v0 = sub_1004B8804();
    if (!v1)
    {
      atomic_store(v0, &qword_10060C168);
    }
  }
}

void sub_100306B0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100306B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100306BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100306BF4()
{
  sub_100003B68(&qword_10060C030);
  sub_100003B68(&qword_10060BFD8);
  sub_10030648C();
  sub_1000206D4(&qword_10060C0F8, &qword_10060BFD8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100306CCC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003ABC(&qword_10060C1C8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100003ABC(&qword_10060C1D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100003ABC(&qword_10060C1D8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_100003ABC(&qword_10060C1E0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_100306EE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100003ABC(&qword_10060C1C8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100003ABC(&qword_10060C1D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_100003ABC(&qword_10060C1D8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_100003ABC(&qword_10060C1E0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_1003070EC()
{
  type metadata accessor for Notice(319);
  if (v0 <= 0x3F)
  {
    sub_100307238(319, &qword_10060C250, sub_100305AFC);
    if (v1 <= 0x3F)
    {
      sub_100307238(319, &qword_10060C258, sub_100305B50);
      if (v2 <= 0x3F)
      {
        sub_100307298(319, &qword_10060D850, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          sub_100307298(319, &qword_10060C260, &type metadata accessor for LayoutDirection);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100307238(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1004B8934();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100307298(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004B8804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100307318@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004B9134();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10030737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_100003ABC(&qword_10060C380);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Notice(0);
  sub_10000F778(a1 + *(v9 + 20), v8, &qword_10060C380);
  v10 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_100007214(v8, &qword_10060C380);
    v11 = 0;
  }

  else
  {
    v11 = swift_getEnumCaseMultiPayload() == 1;
    sub_100307E28(v8, type metadata accessor for Notice.Thumbnail);
  }

  v12 = sub_1004B8C94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 88))(a2, v12);
  if (v14 == enum case for DynamicTypeSize.xSmall(_:) || v14 == enum case for DynamicTypeSize.small(_:))
  {
    result = sub_100307E28(a1, type metadata accessor for Notice);
    v17 = 6.0;
    if (!v11)
    {
      v17 = 0.0;
    }

    v18 = 4.0;
    v19 = 12.0;
    if (v11)
    {
      v20 = 12.0;
    }

    else
    {
      v20 = 4.0;
    }
  }

  else
  {
    if (v14 == enum case for DynamicTypeSize.medium(_:) || v14 == enum case for DynamicTypeSize.large(_:) || v14 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v14 != enum case for DynamicTypeSize.xxLarge(_:) && v14 != enum case for DynamicTypeSize.xxxLarge(_:) && v14 != enum case for DynamicTypeSize.accessibility1(_:) && v14 != enum case for DynamicTypeSize.accessibility2(_:) && v14 != enum case for DynamicTypeSize.accessibility3(_:) && v14 != enum case for DynamicTypeSize.accessibility4(_:) && v14 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v13 + 8))(a2, v12);
LABEL_29:
      if (v11)
      {
        v20 = 10.0;
      }

      else
      {
        v20 = 12.0;
      }

      v23 = *(a1 + *(v9 + 32));
      sub_10002F518(v23);
      result = sub_100307E28(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = sub_10003CC4C(v23);
        v19 = 19.0;
      }

      else
      {
        v19 = 20.0;
      }

      v18 = 4.0;
      if (v11)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 4.0;
      }

      goto LABEL_41;
    }

    result = sub_100307E28(a1, type metadata accessor for Notice);
    v17 = 10.0;
    if (!v11)
    {
      v17 = 6.0;
    }

    v19 = 20.0;
    v20 = 12.0;
    v18 = 8.0;
  }

LABEL_41:
  *a3 = v18;
  a3[1] = v20;
  a3[2] = v18;
  a3[3] = v19;
  a3[4] = v17;
  return result;
}

unint64_t sub_100307734()
{
  result = qword_10060C308;
  if (!qword_10060C308)
  {
    sub_100003B68(&qword_10060C300);
    sub_1003077EC();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C308);
  }

  return result;
}

unint64_t sub_1003077EC()
{
  result = qword_10060C310;
  if (!qword_10060C310)
  {
    sub_100003B68(&qword_10060C318);
    sub_100307870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C310);
  }

  return result;
}

unint64_t sub_100307870()
{
  result = qword_10060C320;
  if (!qword_10060C320)
  {
    sub_100003B68(&qword_10060C328);
    sub_1003078FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C320);
  }

  return result;
}

unint64_t sub_1003078FC()
{
  result = qword_10060E190;
  if (!qword_10060E190)
  {
    sub_100003B68(&qword_10060C330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E190);
  }

  return result;
}

uint64_t sub_100307978(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_10002FA24(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1003079CC(a1, a2, a3);
  }
}

uint64_t sub_1003079CC(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002FA24(a1, a2, a3 & 1);
}

uint64_t sub_100307A08@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004B9134();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100307A6C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002FA14(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100307ABC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002FA24(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100307B0C()
{
  result = qword_10060C388;
  if (!qword_10060C388)
  {
    sub_100003B68(&qword_10060C358);
    sub_100306310(&qword_10060C390, &type metadata accessor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C388);
  }

  return result;
}

unint64_t sub_100307BC8()
{
  result = qword_10060C398;
  if (!qword_10060C398)
  {
    sub_100003B68(&qword_10060C378);
    sub_100307C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C398);
  }

  return result;
}

unint64_t sub_100307C54()
{
  result = qword_10060C3A0;
  if (!qword_10060C3A0)
  {
    sub_100003B68(&qword_10060C360);
    sub_100307CE0();
    sub_1002F0A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C3A0);
  }

  return result;
}

unint64_t sub_100307CE0()
{
  result = qword_10060C3A8;
  if (!qword_10060C3A8)
  {
    sub_100003B68(&qword_10060C3B0);
    sub_100306310(&qword_10060C3B8, &type metadata accessor for ArtworkImage);
    sub_1002F09B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C3A8);
  }

  return result;
}

unint64_t sub_100307D9C()
{
  result = qword_10060C3C0;
  if (!qword_10060C3C0)
  {
    sub_100003B68(&qword_10060C350);
    sub_100307B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C3C0);
  }

  return result;
}

uint64_t sub_100307E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100307EAC()
{
  result = qword_10060E4F0;
  if (!qword_10060E4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060E4F0);
  }

  return result;
}

uint64_t sub_100307F10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoticeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100307FA8()
{
  result = qword_10060C3D0;
  if (!qword_10060C3D0)
  {
    sub_100003B68(&qword_10060C2B0);
    sub_1000206D4(&qword_10060C3D8, &qword_10060C2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C3D0);
  }

  return result;
}

uint64_t Optional<A>.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.body(_:);
  v3 = sub_1004B9B54();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100308100(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MusicUIContentConfiguration.makeContentView()(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v3 + 16))(v5, v1, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicUIContentView.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1000133B0(a3);
  return v6(a1, a2);
}

uint64_t MusicUIContentView.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v11[-v7 - 8];
  sub_10001342C(a1, v11);
  sub_100003ABC(&qword_10060A730);
  swift_dynamicCast();
  (*(a3 + 48))(v8, a2, a3);
  return sub_100004C6C(a1);
}

void (*MusicUIContentView.configuration.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  MusicUIContentView.configuration.getter(a2, a3, v7);
  return sub_1003084E8;
}

void sub_1003084E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11];
    v4 = v2[10];
    sub_10001342C(*a1, (v2 + 5));
    MusicUIContentView.configuration.setter((v2 + 5), v4, v3);
    sub_100004C6C(v2);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v2[10], v2[11]);
  }

  free(v2);
}

uint64_t MPModelPlaylistType.variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v3 = &enum case for Playlist.Variant.genius(_:);
      }

      else
      {
        v3 = &enum case for Playlist.Variant.folder(_:);
      }

      goto LABEL_12;
    }

    if (!a1)
    {
      v4 = enum case for Playlist.Variant.regular(_:);
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v3 = &enum case for Playlist.Variant.smart(_:);
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 < 7)
    {
      goto LABEL_11;
    }

    switch(a1)
    {
      case 7:
        v3 = &enum case for Playlist.Variant.personalMix(_:);
        goto LABEL_12;
      case 8:
LABEL_11:
        v3 = &enum case for Playlist.Variant.subscribed(_:);
        goto LABEL_12;
      case 9:
        v3 = &enum case for Playlist.Variant.favoriteSongs(_:);
LABEL_12:
        v4 = *v3;
LABEL_13:
        v5 = sub_1004BB914();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_14;
    }
  }

  v11 = sub_1004BB914();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a2;
  v8 = 1;
LABEL_14:

  return v6(v7, v8, 1, v9);
}

uint64_t Playlist.Variant.symbolName.getter()
{
  v1 = v0;
  v2 = sub_1004BB914();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Playlist.Variant.smart(_:))
  {
    return 0x7061687372616567;
  }

  if (v7 == enum case for Playlist.Variant.genius(_:))
  {
    return 0x7375696E6567;
  }

  if (v7 == enum case for Playlist.Variant.folder(_:))
  {
    return 0x7265646C6F66;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6F6E2E636973756DLL;
}

uint64_t ArtworkImage.ViewModel.init(artwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004BB6C4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  return sub_100025B04(a2, a3 + *(v7 + 20), &qword_10060DD10);
}

uint64_t sub_1003089A8(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100007084(v4, a3);
}

uint64_t sub_100308A90@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1004B9184();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10000F778(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1004BC994();
    v17 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100308C90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004B9184();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100609E68);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_10000F778(v2, &v13 - v9, &qword_100609E68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100025B04(v10, a1, &qword_10060C400);
  }

  sub_1004BC994();
  v12 = sub_1004B9904();
  sub_1004B7F84();

  sub_1004B9174();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArtworkImage.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004BB6C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkImage.ViewModel.init(optionalArtwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004BB6C4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    sub_100007214(a2, &qword_10060DD10);
    sub_100007214(a1, &unk_10060EBE0);
    v8 = type metadata accessor for ArtworkImage.ViewModel(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a3;
    v12 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, a1, v6);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100025B04(a2, a3 + *(v13 + 20), &qword_10060DD10);
    v9 = *(*(v13 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v13;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t ArtworkImage.ViewModel.init(artworkCatalog:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004BB6C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    sub_1004BB584();
    (*(v7 + 32))(a3, v9, v6);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100025B04(a2, a3 + *(v11 + 20), &qword_10060DD10);
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }

  else
  {
    sub_100007214(a2, &qword_10060DD10);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

uint64_t ArtworkImage.ViewModel.calculatedAspectRatio.getter()
{
  if (sub_1004BB654() < 1 || sub_1004BB664() < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v0 = sub_1004BB654();
    *&result = v0 / sub_1004BB664();
  }

  return result;
}

uint64_t ArtworkImage.Info.size.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArtworkImage.Info(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 41) = a7;
  return result;
}

__n128 ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_100025B04(a1, a9, &qword_10060EF20);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  sub_100315370(a2, a9 + v17[5], type metadata accessor for ArtworkImage.Placeholder);
  v18 = a9 + v17[6];
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  v19 = a9 + v17[7];
  v20 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v20;
  result = *(a5 + 26);
  *(v19 + 26) = result;
  v22 = a9 + v17[8];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8;
  return result;
}

uint64_t ArtworkImage.Size.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.init(cgSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3 & 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a4 = v5;
  *(a4 + 8) = v4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a4 + 16) = v6;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 513;
  return result;
}

uint64_t ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result / a6;
    if ((a4 & 1) == 0 && a3 > a6)
    {
      v6 = *&result / a3;
      *&result = *&result / a3 * a6;
    }
  }

  *a5 = *&result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result * a6;
    if ((a4 & 1) == 0 && a3 < a6)
    {
      v6 = *&result * a3;
      *&result = *&result * a3 / a6;
    }
  }

  *a5 = v6;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = *&result;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t sub_1003096DC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v5, &v7) & 1;
}

uint64_t ArtworkImage.init(artwork:width:height:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v8 - 8);
  if (a3)
  {
    sub_10000F778(a1, &v11 - v9, &unk_10060EBE0);
    if (a5)
    {
      sub_1004B7D84();
    }

    else
    {
      sub_1004B7D74();
    }
  }

  else
  {
    sub_10000F778(a1, &v11 - v9, &unk_10060EBE0);
    if (a5)
    {
      sub_1004B7D64();
    }

    else
    {
      sub_1004B7D54();
    }
  }

  return sub_100007214(a1, &unk_10060EBE0);
}

uint64_t static ArtworkImage.with(_:placeholder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ArtworkImage.Placeholder(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_100314E7C(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_100315370(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ArtworkImage.Placeholder);
  v15 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = a3[1];
  *v15 = *a3;
  v15[1] = v16;
  *(v15 + 26) = *(a3 + 26);
  sub_100309EBC(a1, sub_100314C4C, v14, a3, a4, a5);
}

uint64_t sub_100309A54(uint64_t a1)
{
  v3 = type metadata accessor for ArtworkImage.Placeholder(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100003ABC(&qword_10060CB38);
  __chkstk_darwin(v6);
  v8 = (v31 - v7);
  v9 = sub_100003ABC(&unk_10060DD50);
  __chkstk_darwin(v9);
  v11 = (v31 - v10);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 24))
  {
    sub_100314E7C(v1, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_100315370(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ArtworkImage.Placeholder);
    v14 = (v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
    v15 = *(a1 + 16);
    *v14 = *a1;
    v14[1] = v15;
    *(v14 + 26) = *(a1 + 26);
    *v8 = sub_1003182B8;
    v8[1] = v13;
    swift_storeEnumTagMultiPayload();
    sub_100003ABC(&qword_10060C9C0);
    sub_100316A7C();
    sub_1000206D4(&unk_10060DD80, &qword_10060C9C0);
    return sub_1004B9514();
  }

  else
  {
    v17 = *a1;
    v18 = *(a1 + 16);
    v19 = sub_10030B950();
    v21 = v20;
    sub_10030B950();
    v23 = v22;

    sub_10030B950();
    v25 = v24;

    v26 = type metadata accessor for ArtworkImage.Placeholder.View(0);
    v27 = *(v26 + 32);
    *(v11 + v27) = swift_getKeyPath();
    sub_100003ABC(&qword_100609E68);
    swift_storeEnumTagMultiPayload();
    v28 = *(v26 + 36);
    *(v11 + v28) = swift_getKeyPath();
    sub_100003ABC(&unk_100609E70);
    swift_storeEnumTagMultiPayload();
    *v11 = v19;
    v11[1] = v21;
    v11[2] = v23;
    v11[3] = v17;
    v11[4] = v18;
    v11[5] = v25;
    *(v11 + *(sub_100003ABC(&unk_10060DD60) + 36)) = 0;
    sub_1004BA754();
    sub_1004B8994();
    v29 = (v11 + *(v9 + 36));
    v30 = v31[1];
    *v29 = v31[0];
    v29[1] = v30;
    v29[2] = v31[2];
    sub_10000F778(v11, v8, &unk_10060DD50);
    swift_storeEnumTagMultiPayload();
    sub_100003ABC(&qword_10060C9C0);
    sub_100316A7C();
    sub_1000206D4(&unk_10060DD80, &qword_10060C9C0);
    sub_1004B9514();
    return sub_100007214(v11, &unk_10060DD50);
  }
}

uint64_t sub_100309EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v60 = a3;
  v57 = a6;
  v58 = a2;
  v8 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v10 = sub_1004BB634();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v12 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_1004B7D94();
  v70 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  __chkstk_darwin(v27);
  v63 = &v54 - v28;
  __chkstk_darwin(v29);
  v31 = &v54 - v30;
  __chkstk_darwin(v32);
  v69 = &v54 - v33;
  v61 = a1;
  sub_10000F778(a1, v16, &qword_10060EF20);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v55 = *(*(v34 - 8) + 48);
  v35 = v55(v16, 1, v34);
  v64 = v23;
  if (v35 == 1)
  {
    sub_100007214(v16, &qword_10060EF20);
    v36 = sub_1004BB6C4();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  }

  else
  {
    v37 = sub_1004BB6C4();
    v38 = *(v37 - 8);
    v54 = v10;
    v39 = v38;
    (*(v38 + 16))(v22, v16, v37);
    sub_100314E1C(v16, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v22, 0, 1, v37);
    v10 = v54;
  }

  v40 = *(a4 + 8);
  v41 = *(a4 + 24);
  sub_10000F778(v22, v19, &unk_10060EBE0);
  if (v40)
  {
    if (v41)
    {
      sub_1004B7D84();
    }

    else
    {
      sub_1004B7D74();
    }
  }

  else if (v41)
  {
    sub_1004B7D64();
  }

  else
  {
    sub_1004B7D54();
  }

  v42 = v64;
  sub_100007214(v22, &unk_10060EBE0);
  (*(v70 + 32))(v69, v31, v42);
  sub_1004B7D34();
  v43 = v56;
  sub_10000F778(v61, v56, &qword_10060EF20);
  v44 = v55(v43, 1, v34);
  v45 = v65;
  if (v44 == 1)
  {
    sub_100007214(v43, &qword_10060EF20);
    v47 = v66;
    v46 = v67;
    (*(v67 + 56))(v66, 1, 1, v10);
  }

  else
  {
    v47 = v66;
    sub_10000F778(v43 + *(v34 + 20), v66, &qword_10060DD10);
    sub_100314E1C(v43, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v67;
    if ((*(v67 + 48))(v47, 1, v10) != 1)
    {
      (*(v46 + 32))(v45, v47, v10);
      goto LABEL_19;
    }
  }

  if (qword_100609C08 != -1)
  {
    swift_once();
  }

  v48 = sub_100007084(v10, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v45, v48, v10);
  if ((*(v46 + 48))(v47, 1, v10) != 1)
  {
    sub_100007214(v47, &qword_10060DD10);
  }

LABEL_19:
  v49 = v62;
  v50 = v68;
  sub_1004B7D14();
  (*(v46 + 8))(v45, v10);
  v51 = *(v70 + 8);
  v51(v50, v42);
  v52 = v63;
  sub_1004B7D44();
  v51(v49, v42);
  sub_100003ABC(&qword_10060C998);
  sub_1003169C4();
  sub_1004B7D24();
  v51(v52, v42);
  return (v51)(v69, v42);
}

uint64_t sub_10030A694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v60 = a3;
  v57 = a6;
  v58 = a2;
  v8 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v10 = sub_1004BB634();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v12 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_1004B7D94();
  v70 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = &v54 - v26;
  __chkstk_darwin(v27);
  v63 = &v54 - v28;
  __chkstk_darwin(v29);
  v31 = &v54 - v30;
  __chkstk_darwin(v32);
  v69 = &v54 - v33;
  v61 = a1;
  sub_10000F778(a1, v16, &qword_10060EF20);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v55 = *(*(v34 - 8) + 48);
  v35 = v55(v16, 1, v34);
  v64 = v23;
  if (v35 == 1)
  {
    sub_100007214(v16, &qword_10060EF20);
    v36 = sub_1004BB6C4();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  }

  else
  {
    v37 = sub_1004BB6C4();
    v38 = *(v37 - 8);
    v54 = v10;
    v39 = v38;
    (*(v38 + 16))(v22, v16, v37);
    sub_100314E1C(v16, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v22, 0, 1, v37);
    v10 = v54;
  }

  v40 = *(a4 + 8);
  v41 = *(a4 + 24);
  sub_10000F778(v22, v19, &unk_10060EBE0);
  if (v40)
  {
    if (v41)
    {
      sub_1004B7D84();
    }

    else
    {
      sub_1004B7D74();
    }
  }

  else if (v41)
  {
    sub_1004B7D64();
  }

  else
  {
    sub_1004B7D54();
  }

  v42 = v64;
  sub_100007214(v22, &unk_10060EBE0);
  (*(v70 + 32))(v69, v31, v42);
  sub_1004B7D34();
  v43 = v56;
  sub_10000F778(v61, v56, &qword_10060EF20);
  v44 = v55(v43, 1, v34);
  v45 = v65;
  if (v44 == 1)
  {
    sub_100007214(v43, &qword_10060EF20);
    v47 = v66;
    v46 = v67;
    (*(v67 + 56))(v66, 1, 1, v10);
  }

  else
  {
    v47 = v66;
    sub_10000F778(v43 + *(v34 + 20), v66, &qword_10060DD10);
    sub_100314E1C(v43, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v67;
    if ((*(v67 + 48))(v47, 1, v10) != 1)
    {
      (*(v46 + 32))(v45, v47, v10);
      goto LABEL_19;
    }
  }

  if (qword_100609C08 != -1)
  {
    swift_once();
  }

  v48 = sub_100007084(v10, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v45, v48, v10);
  if ((*(v46 + 48))(v47, 1, v10) != 1)
  {
    sub_100007214(v47, &qword_10060DD10);
  }

LABEL_19:
  v49 = v62;
  v50 = v68;
  sub_1004B7D14();
  (*(v46 + 8))(v45, v10);
  v51 = *(v70 + 8);
  v51(v50, v42);
  v52 = v63;
  sub_1004B7D44();
  v51(v49, v42);
  sub_100316C80();
  sub_1004B7D24();
  v51(v52, v42);
  return (v51)(v69, v42);
}

uint64_t static ArtworkImage.with<A>(_:placeholderViewBuilder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v75 = a5;
  v90 = a4;
  v87 = a2;
  v88 = a3;
  v77 = a8;
  v11 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v11 - 8);
  v80 = v69 - v12;
  v13 = sub_1004BB634();
  v81 = *(v13 - 8);
  v82 = v13;
  __chkstk_darwin(v13);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a6;
  v91 = a6;
  v92 = a7;
  v76 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  v86 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v83 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = v69 - v19;
  v20 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v20 - 8);
  v71 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v69 - v23;
  v25 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v25 - 8);
  v27 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v69 - v29;
  v78 = sub_1004B7D94();
  v31 = *(v78 - 8);
  __chkstk_darwin(v78);
  v33 = v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v73 = v69 - v35;
  __chkstk_darwin(v36);
  v74 = v69 - v37;
  __chkstk_darwin(v38);
  v40 = v69 - v39;
  __chkstk_darwin(v41);
  v43 = v69 - v42;
  v72 = a1;
  sub_10000F778(a1, v24, &qword_10060EF20);
  v44 = type metadata accessor for ArtworkImage.ViewModel(0);
  v45 = *(v44 - 8);
  v70 = *(v45 + 48);
  v69[1] = v45 + 48;
  v46 = v70(v24, 1, v44);
  v79 = v15;
  if (v46 == 1)
  {
    sub_100007214(v24, &qword_10060EF20);
    v47 = sub_1004BB6C4();
    (*(*(v47 - 8) + 56))(v30, 1, 1, v47);
  }

  else
  {
    v48 = sub_1004BB6C4();
    v49 = *(v48 - 8);
    (*(v49 + 16))(v30, v24, v48);
    sub_100314E1C(v24, type metadata accessor for ArtworkImage.ViewModel);
    (*(v49 + 56))(v30, 0, 1, v48);
  }

  v50 = *(v90 + 8);
  v51 = *(v90 + 24);
  sub_10000F778(v30, v27, &unk_10060EBE0);
  if (v50)
  {
    if (v51)
    {
      sub_1004B7D84();
    }

    else
    {
      sub_1004B7D74();
    }
  }

  else if (v51)
  {
    sub_1004B7D64();
  }

  else
  {
    sub_1004B7D54();
  }

  v52 = v79;
  sub_100007214(v30, &unk_10060EBE0);
  v53 = v78;
  (*(v31 + 32))(v43, v40, v78);
  sub_1004B7D34();
  v54 = v71;
  sub_10000F778(v72, v71, &qword_10060EF20);
  if (v70(v54, 1, v44) == 1)
  {
    sub_100007214(v54, &qword_10060EF20);
    v55 = v80;
    v56 = v81;
    v57 = v82;
    (*(v81 + 56))(v80, 1, 1, v82);
  }

  else
  {
    v55 = v80;
    sub_10000F778(v54 + *(v44 + 20), v80, &qword_10060DD10);
    sub_100314E1C(v54, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v81;
    v57 = v82;
    if ((*(v81 + 48))(v55, 1, v82) != 1)
    {
      (*(v56 + 32))(v52, v55, v57);
      goto LABEL_19;
    }
  }

  if (qword_100609C08 != -1)
  {
    swift_once();
  }

  v58 = sub_100007084(v57, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v52, v58, v57);
  if ((*(v56 + 48))(v55, 1, v57) != 1)
  {
    sub_100007214(v55, &qword_10060DD10);
  }

LABEL_19:
  v59 = v73;
  sub_1004B7D14();
  (*(v56 + 8))(v52, v57);
  v60 = *(v31 + 8);
  v60(v33, v53);
  v61 = v74;
  sub_1004B7D44();
  v60(v59, v53);
  v62 = v83;
  sub_1004B7D24();
  v60(v61, v53);
  v60(v43, v53);
  v64 = v84;
  v63 = v85;
  v65 = *(v85 + 16);
  v66 = v86;
  v65(v84, v62, v86);
  v67 = *(v63 + 8);
  v67(v62, v66);
  v65(v77, v64, v66);
  return (v67)(v64, v66);
}

uint64_t static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_10030A694(a1, sub_100314D14, v12, a4, a5, a6);
}

uint64_t sub_10030B82C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_10030B950();
  v8 = v7;
  sub_10030B950();
  v10 = v9;

  sub_10030B950();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E70);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = sub_100003ABC(&unk_10060DD60);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10030B950()
{
  v1 = v0;
  v2 = sub_1004BB914();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_100003ABC(&qword_10060A7B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100314E7C(v1, v17, type metadata accessor for ArtworkImage.Placeholder);
  v18 = sub_100003ABC(&unk_10060DD30);
  v19 = (*(*(v18 - 8) + 48))(v17, 11, v18);
  if (v19 > 5)
  {
    if (v19 > 8)
    {
      if (v19 == 9)
      {
        v20 = 0x6F69646172;
        sub_1004B9A94();
        return v20;
      }

      if (v19 != 10)
      {
        sub_1004B9A84();
        return 0xD000000000000013;
      }

      v20 = 0x73726174697567;
      goto LABEL_5;
    }

    if (v19 == 6)
    {
      v20 = 30324;
      sub_1004B9A94();
      return v20;
    }

    if (v19 == 7)
    {
      sub_1004B9A94();
      return 0x696D2E636973756DLL;
    }

    v20 = 0x662E6E6F73726570;
LABEL_24:
    sub_1004B9A94();
    return v20;
  }

  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v20 = 0xD000000000000011;
      sub_1004B9A84();
      return v20;
    }

    if (v19 == 4)
    {
      v20 = 1937075312;
      sub_1004B9A84();
      return v20;
    }

    v20 = 0x6F6E2E636973756DLL;
    goto LABEL_24;
  }

  if (v19)
  {
    v20 = 0x636973756DLL;
LABEL_5:
    sub_1004B9A84();
    return v20;
  }

  sub_100025B04(v17, v14, &qword_10060A7B8);
  sub_10000F778(v14, v11, &qword_10060A7B8);
  v21 = *(v3 + 48);
  if (v21(v11, 1, v2) == 1)
  {
    (*(v3 + 104))(v8, enum case for Playlist.Variant.regular(_:), v2);
    if (v21(v11, 1, v2) != 1)
    {
      sub_100007214(v11, &qword_10060A7B8);
    }
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
  }

  (*(v3 + 16))(v5, v8, v2);
  v22 = (*(v3 + 88))(v5, v2);
  if (v22 == enum case for Playlist.Variant.smart(_:))
  {
    (*(v3 + 8))(v8, v2);
    v20 = 0x7061687372616567;
  }

  else if (v22 == enum case for Playlist.Variant.genius(_:))
  {
    (*(v3 + 8))(v8, v2);
    v20 = 0x7375696E6567;
  }

  else
  {
    v23 = enum case for Playlist.Variant.folder(_:);
    v24 = *(v3 + 8);
    v25 = v22;
    v24(v8, v2);
    if (v25 == v23)
    {
      v20 = 0x7265646C6F66;
    }

    else
    {
      v20 = 0x6F6E2E636973756DLL;
      v24(v5, v2);
    }
  }

  sub_1004B9A84();
  sub_100007214(v14, &qword_10060A7B8);
  return v20;
}

uint64_t ArtworkImage.Placeholder.View.init(name:weight:availableSize:scaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a3 + v15) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a3 + v16) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E70);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

double sub_10030C02C@<D0>(uint64_t *a1@<X8>)
{
  sub_1004B8A34();
  v3 = v2;
  v5 = v4;
  v6 = sub_10030B950();
  v8 = v7;
  sub_10030B950();
  v10 = v9;

  sub_10030B950();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E70);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v12;
  *(a1 + *(sub_100003ABC(&unk_10060DD60) + 36)) = 0;
  sub_1004BA754();
  sub_1004B8994();
  v16 = (a1 + *(sub_100003ABC(&unk_10060DD50) + 36));
  *v16 = v18;
  v16[1] = v19;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t EnvironmentValues.placeholderStyle.getter()
{
  sub_100314DA8();

  return sub_1004B9194();
}

uint64_t sub_10030C248(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060C400);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10000F778(a1, &v9 - v6, &qword_10060C400);
  sub_10000F778(v7, v4, &qword_10060C400);
  sub_100314DA8();
  sub_1004B91A4();
  return sub_100007214(v7, &qword_10060C400);
}

uint64_t EnvironmentValues.placeholderStyle.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060C400);
  __chkstk_darwin(v2 - 8);
  sub_10000F778(a1, &v5 - v3, &qword_10060C400);
  sub_100314DA8();
  sub_1004B91A4();
  return sub_100007214(a1, &qword_10060C400);
}

uint64_t ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004B92F4();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060C400);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  v37[3] = type metadata accessor for ArtworkImage.Placeholder.View(0);
  sub_100308C90(v12);
  v13 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    sub_100007214(v12, &qword_10060C400);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  else
  {
    sub_10000F778((v12 + 40), &v40, &qword_10060E040);
    sub_100314E1C(v12, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    if (*(&v41 + 1))
    {
      sub_100013414(&v40, v43);
      v37[2] = v45;
      v15 = sub_100009178(v43, v44);
      v37[1] = v37;
      v16 = __chkstk_darwin(v15);
      (*(v18 + 16))(v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      v19 = sub_1004B89A4();
      sub_100004C6C(v43);
      goto LABEL_6;
    }
  }

  sub_100007214(&v40, &qword_10060E040);
  sub_100308A90(&unk_100609E70, &type metadata accessor for ColorSchemeContrast, v6);
  v20 = [objc_opt_self() secondarySystemFillColor];
  v21 = sub_1004BA304();
  (*(v38 + 8))(v6, v39);
  v43[0] = v21;
  v19 = sub_1004B89A4();
LABEL_6:
  sub_100308C90(v9);
  if (v14(v9, 1, v13) == 1)
  {
    sub_100007214(v9, &qword_10060C400);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
LABEL_10:
    sub_100007214(&v40, &qword_10060E040);
    sub_100308A90(&unk_100609E70, &type metadata accessor for ColorSchemeContrast, v6);
    v27 = [objc_opt_self() tertiaryLabelColor];
    v28 = sub_1004BA304();
    (*(v38 + 8))(v6, v39);
    v43[0] = v28;
    v26 = sub_1004B89A4();
    goto LABEL_11;
  }

  sub_10000F778(v9, &v40, &qword_10060E040);
  sub_100314E1C(v9, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if (!*(&v41 + 1))
  {
    goto LABEL_10;
  }

  sub_100013414(&v40, v43);
  v22 = sub_100009178(v43, v44);
  v23 = __chkstk_darwin(v22);
  (*(v25 + 16))(v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = sub_1004B89A4();
  sub_100004C6C(v43);
LABEL_11:
  v29 = sub_1004BA294();
  v30 = sub_1004B9964();

  v31 = sub_1004BA754();
  v33 = v32;
  v34 = a1 + *(sub_100003ABC(&qword_10060C408) + 36);
  sub_10030CA60(v2, v26, v34);

  result = sub_100003ABC(&qword_10060C410);
  v36 = (v34 + *(result + 36));
  *v36 = v31;
  v36[1] = v33;
  *a1 = v29;
  *(a1 + 8) = v19;
  *(a1 + 16) = v30;
  return result;
}

uint64_t sub_10030CA60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_100003ABC(&qword_10060C400);
  __chkstk_darwin(v5 - 8);
  v42 = v39 - v6;
  v7 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v7 - 8);
  v46 = v39 - v8;
  v9 = sub_1004BA7E4();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003ABC(&qword_10060DF60);
  __chkstk_darwin(v11 - 8);
  v13 = v39 - v12;
  v14 = sub_100003ABC(&qword_10060CAF0);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  __chkstk_darwin(v14);
  v17 = v39 - v16;
  v18 = sub_100003ABC(&qword_10060CAF8);
  __chkstk_darwin(v18 - 8);
  v20 = v39 - v19;
  v39[1] = a1;

  v21 = sub_1004BA344();
  v22 = sub_1004B9A64();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);

  v23 = sub_1004B9AB4();
  sub_100007214(v13, &qword_10060DF60);
  KeyPath = swift_getKeyPath();
  v48 = v21;
  v49 = a2;
  v50 = KeyPath;
  v51 = v23;
  v25 = sub_100003ABC(&qword_10060CB00);
  v26 = sub_100317F5C();
  sub_1004B9DE4();

  v48 = v25;
  v49 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v40;
  sub_1004B9E84();
  (*(v41 + 8))(v17, v27);
  type metadata accessor for ArtworkImage.Placeholder.View(0);
  v28 = v42;
  sub_100308C90(v42);
  v29 = v28;
  v30 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    sub_100007214(v29, &qword_10060C400);
    v32 = v43;
    v31 = v44;
    v33 = v46;
    (*(v43 + 56))(v46, 1, 1, v44);
  }

  else
  {
    v34 = v29 + *(v30 + 24);
    v33 = v46;
    sub_10000F778(v34, v46, &qword_10060C418);
    sub_100314E1C(v29, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v32 = v43;
    v31 = v44;
    if ((*(v43 + 48))(v33, 1, v44) != 1)
    {
      v35 = v45;
      (*(v32 + 32))(v45, v33, v31);
      goto LABEL_7;
    }
  }

  v35 = v45;
  (*(v32 + 104))(v45, enum case for BlendMode.normal(_:), v31);
  if ((*(v32 + 48))(v33, 1, v31) != 1)
  {
    sub_100007214(v33, &qword_10060C418);
  }

LABEL_7:
  v36 = sub_100003ABC(&qword_10060CB30);
  v37 = v47;
  (*(v32 + 32))(v47 + *(v36 + 36), v35, v31);
  return sub_1003180CC(v20, v37);
}

uint64_t ArtworkImage.Placeholder.View.Style.init(foreground:background:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  v9 = *(v8 + 24);
  v10 = sub_1004BA7E4();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  sub_100047A5C(a1, a4, &qword_10060E040);
  sub_100047A5C(a2, (a4 + 40), &qword_10060E040);
  return sub_100047A5C(a3, &a4[v9], &qword_10060C418);
}

uint64_t sub_10030D300()
{
  v0 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100007108(v3, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  v4 = sub_100007084(v3, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  sub_1004BA2B4();
  v5 = sub_1004BA2C4();

  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  sub_1004BA284();
  v6 = sub_1004BA2C4();

  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v6;
  v7 = sub_1004BA7E4();
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v9 = *(v3 + 24);
  v8(&v4[v9], 1, 1, v7);
  sub_100047A5C(v12, v4, &qword_10060E040);
  sub_100047A5C(v11, (v4 + 40), &qword_10060E040);
  return sub_100047A5C(v2, &v4[v9], &qword_10060C418);
}

uint64_t sub_10030D540()
{
  v0 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100007108(v3, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v4 = sub_100007084(v3, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v5 = objc_opt_self();
  v6 = [v5 quaternaryLabelColor];
  v7 = sub_1004BA304();
  v15[3] = &type metadata for Color;
  v15[4] = &protocol witness table for Color;
  v15[0] = v7;
  v8 = [v5 tertiarySystemFillColor];
  v9 = sub_1004BA304();
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v9;
  v10 = sub_1004BA7E4();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v12 = *(v3 + 24);
  v11(&v4[v12], 1, 1, v10);
  sub_100047A5C(v15, v4, &qword_10060E040);
  sub_100047A5C(v14, (v4 + 40), &qword_10060E040);
  return sub_100047A5C(v2, &v4[v12], &qword_10060C418);
}

uint64_t sub_10030D784()
{
  v0 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100007108(v3, static ArtworkImage.Placeholder.View.Style.widgets);
  v4 = sub_100007084(v3, static ArtworkImage.Placeholder.View.Style.widgets);
  sub_1004BA2B4();
  v5 = sub_1004BA2C4();

  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v5;
  sub_1004BA2B4();
  v6 = sub_1004BA2C4();

  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v6;
  v7 = enum case for BlendMode.plusLighter(_:);
  v8 = sub_1004BA7E4();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  v10 = *(v9 + 56);
  v10(v2, 0, 1, v8);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v11 = *(v3 + 24);
  v10(&v4[v11], 1, 1, v8);
  sub_100047A5C(v14, v4, &qword_10060E040);
  sub_100047A5C(v13, (v4 + 40), &qword_10060E040);
  return sub_100047A5C(v2, &v4[v11], &qword_10060C418);
}

uint64_t sub_10030D9FC()
{
  v0 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  v3 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100007108(v3, static ArtworkImage.Placeholder.View.Style.accentuated);
  v4 = sub_100007084(v3, static ArtworkImage.Placeholder.View.Style.accentuated);
  v5 = sub_1004BA234();
  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  v6 = sub_1004BA7E4();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v8 = *(v3 + 24);
  v7(&v4[v8], 1, 1, v6);
  sub_100047A5C(v12, v4, &qword_10060E040);
  sub_100047A5C(v10, (v4 + 40), &qword_10060E040);
  return sub_100047A5C(v2, &v4[v8], &qword_10060C418);
}

uint64_t sub_10030DC04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v6 = sub_100007084(v5, a2);
  return sub_100314E7C(v6, a3, type metadata accessor for ArtworkImage.Placeholder.View.Style);
}

uint64_t sub_10030DC6C@<X0>(char *a1@<X8>)
{
  v2 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v15[3] = &type metadata for Color;
  v15[4] = &protocol witness table for Color;
  v5 = objc_opt_self();
  v6 = [v5 tertiaryLabelColor];
  v7 = sub_1004BA304();
  v14[4] = &protocol witness table for Color;
  v15[0] = v7;
  v14[3] = &type metadata for Color;
  v8 = [v5 secondarySystemFillColor];
  v14[0] = sub_1004BA304();
  v9 = sub_1004BA7E4();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v12 = *(v11 + 24);
  v10(&a1[v12], 1, 1, v9);
  sub_100047A5C(v15, a1, &qword_10060E040);
  sub_100047A5C(v14, (a1 + 40), &qword_10060E040);
  return sub_100047A5C(v4, &a1[v12], &qword_10060C418);
}

uint64_t sub_10030DE2C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F69646172;
    v7 = 0x65726E6567;
    if (a1 != 10)
    {
      v7 = 0x7265736F706D6F63;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 30324;
    v9 = 0x6F68706F7263696DLL;
    if (a1 != 7)
    {
      v9 = 0x6E6F73726570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636973756DLL;
    v2 = 0x6C79616C5077656ELL;
    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x646956636973756DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6979616C50776F6ELL;
    if (a1 != 1)
    {
      v4 = 0x65646C6F4677656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10030DFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100317B90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10030DFE0(uint64_t a1)
{
  v2 = sub_100314EE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E01C(uint64_t a1)
{
  v2 = sub_100314EE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E058(uint64_t a1)
{
  v2 = sub_100314F38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E094(uint64_t a1)
{
  v2 = sub_100314F38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E0D0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10030E100(uint64_t a1)
{
  v2 = sub_100314F8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E13C(uint64_t a1)
{
  v2 = sub_100314F8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E178(uint64_t a1)
{
  v2 = sub_100315088();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E1B4(uint64_t a1)
{
  v2 = sub_100315088();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E1F0(uint64_t a1)
{
  v2 = sub_1003152D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E22C(uint64_t a1)
{
  v2 = sub_1003152D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E268(uint64_t a1)
{
  v2 = sub_100315130();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E2A4(uint64_t a1)
{
  v2 = sub_100315130();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E2E0(uint64_t a1)
{
  v2 = sub_10031522C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E31C(uint64_t a1)
{
  v2 = sub_10031522C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E358(uint64_t a1)
{
  v2 = sub_1003151D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E394(uint64_t a1)
{
  v2 = sub_1003151D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E3D0(uint64_t a1)
{
  v2 = sub_100315280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E40C(uint64_t a1)
{
  v2 = sub_100315280();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E448(uint64_t a1)
{
  v2 = sub_100315034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E484(uint64_t a1)
{
  v2 = sub_100315034();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004BD9C4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10030E558(uint64_t a1)
{
  v2 = sub_100315184();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E594(uint64_t a1)
{
  v2 = sub_100315184();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E5D0(uint64_t a1)
{
  v2 = sub_100314FE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E60C(uint64_t a1)
{
  v2 = sub_100314FE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E648(uint64_t a1)
{
  v2 = sub_1003150DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E684(uint64_t a1)
{
  v2 = sub_1003150DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = sub_100003ABC(&qword_10060C420);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v53 - v3;
  v4 = sub_100003ABC(&qword_10060C428);
  v81 = *(v4 - 8);
  v82 = v4;
  __chkstk_darwin(v4);
  v80 = &v53 - v5;
  v6 = sub_100003ABC(&qword_10060C430);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = &v53 - v7;
  v8 = sub_100003ABC(&qword_10060C438);
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v53 - v9;
  v10 = sub_100003ABC(&qword_10060C440);
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v71 = &v53 - v11;
  v70 = sub_100003ABC(&qword_10060C448);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v53 - v12;
  v65 = sub_100003ABC(&qword_10060C450);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v53 - v13;
  v68 = sub_100003ABC(&qword_10060C458);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v53 - v14;
  v15 = sub_100003ABC(&qword_10060A7B8);
  __chkstk_darwin(v15 - 8);
  v61 = &v53 - v16;
  v60 = sub_100003ABC(&qword_10060C460);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v53 - v17;
  v57 = sub_100003ABC(&qword_10060C468);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v19 = &v53 - v18;
  v55 = sub_100003ABC(&qword_10060C470);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v21 = &v53 - v20;
  v22 = sub_100003ABC(&qword_10060C478);
  v53 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100003ABC(&qword_10060C480);
  v29 = *(v28 - 8);
  v88 = v28;
  v89 = v29;
  __chkstk_darwin(v28);
  v31 = &v53 - v30;
  sub_100009178(a1, a1[3]);
  sub_100314EE4();
  v87 = v31;
  sub_1004BDC44();
  sub_100314E7C(v86, v27, type metadata accessor for ArtworkImage.Placeholder);
  v32 = sub_100003ABC(&unk_10060DD30);
  v33 = (*(*(v32 - 8) + 48))(v27, 11, v32);
  if (v33 <= 5)
  {
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v92 = 2;
        sub_10031522C();
        v39 = v87;
        v38 = v88;
        sub_1004BD824();
        v43 = *(v56 + 8);
        v44 = v19;
        v45 = &v89;
      }

      else if (v33 == 4)
      {
        v93 = 3;
        sub_1003151D8();
        v42 = v58;
        v39 = v87;
        v38 = v88;
        sub_1004BD824();
        v43 = *(v59 + 8);
        v44 = v42;
        v45 = v94;
      }

      else
      {
        v94[17] = 5;
        sub_100315130();
        v52 = v62;
        v39 = v87;
        v38 = v88;
        sub_1004BD824();
        v43 = *(v63 + 8);
        v44 = v52;
        v45 = &v95;
      }
    }

    else
    {
      if (!v33)
      {
        v46 = v61;
        sub_100025B04(v27, v61, &qword_10060A7B8);
        v94[16] = 4;
        sub_100315184();
        v47 = v64;
        v49 = v87;
        v48 = v88;
        sub_1004BD824();
        sub_1004BB914();
        sub_100315328(&qword_10060C4D0, &type metadata accessor for Playlist.Variant);
        v50 = v68;
        sub_1004BD844();
        (*(v67 + 8))(v47, v50);
        sub_100007214(v46, &qword_10060A7B8);
        return (*(v89 + 8))(v49, v48);
      }

      if (v33 == 1)
      {
        v90 = 0;
        sub_1003152D4();
        v34 = v87;
        v35 = v88;
        sub_1004BD824();
        (*(v53 + 8))(v24, v22);
        return (*(v89 + 8))(v34, v35);
      }

      v91 = 1;
      sub_100315280();
      v39 = v87;
      v38 = v88;
      sub_1004BD824();
      v43 = *(v54 + 8);
      v44 = v21;
      v45 = &v87;
    }

    goto LABEL_23;
  }

  if (v33 > 8)
  {
    if (v33 == 9)
    {
      v94[21] = 9;
      sub_100314FE0();
      v37 = v77;
      v39 = v87;
      v38 = v88;
      sub_1004BD824();
      v41 = v78;
      v40 = v79;
    }

    else if (v33 == 10)
    {
      v94[22] = 10;
      sub_100314F8C();
      v37 = v80;
      v39 = v87;
      v38 = v88;
      sub_1004BD824();
      v41 = v81;
      v40 = v82;
    }

    else
    {
      v94[23] = 11;
      sub_100314F38();
      v37 = v83;
      v39 = v87;
      v38 = v88;
      sub_1004BD824();
      v41 = v84;
      v40 = v85;
    }

    goto LABEL_25;
  }

  if (v33 != 6)
  {
    if (v33 == 7)
    {
      v94[19] = 7;
      sub_100315088();
      v37 = v71;
      v39 = v87;
      v38 = v88;
      sub_1004BD824();
      v41 = v72;
      v40 = v73;
    }

    else
    {
      v94[20] = 8;
      sub_100315034();
      v37 = v74;
      v39 = v87;
      v38 = v88;
      sub_1004BD824();
      v41 = v75;
      v40 = v76;
    }

LABEL_25:
    v43 = *(v41 + 8);
    v44 = v37;
    goto LABEL_26;
  }

  v94[18] = 6;
  sub_1003150DC();
  v51 = v66;
  v39 = v87;
  v38 = v88;
  sub_1004BD824();
  v43 = *(v69 + 8);
  v44 = v51;
  v45 = &v96;
LABEL_23:
  v40 = *(v45 - 32);
LABEL_26:
  v43(v44, v40);
  return (*(v89 + 8))(v39, v38);
}