uint64_t sub_1AAD6EFC0()
{
  sub_1AAD59360();

  return sub_1AAF8E144();
}

uint64_t sub_1AAD6F008()
{
  sub_1AAD592B8();
  sub_1AAF8E144();
  return v1;
}

float sub_1AAD6F048()
{
  sub_1AAD59264();
  sub_1AAF8E144();
  return v1;
}

void sub_1AAD6F084(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for BasicChart3DSymbolShape;
  *(a1 + 32) = &protocol witness table for BasicChart3DSymbolShape;
  *a1 = 0;
}

void sub_1AAD6F0A0(uint64_t a1@<X8>)
{
  *&v2 = sub_1AAD6F2BC();
  *a1 = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_1AAD6F0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD6F850();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t Chart3DContent.symbol<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12[3] = a3;
  v12[4] = a5;
  v10 = sub_1AACB2508(v12);
  (*(*(a3 - 8) + 16))(v10, a1, a3);
  sub_1AAD6184C(KeyPath, v12, a2);

  return sub_1AAD5930C(v12);
}

uint64_t Chart3DContent.orientation(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  if (a3)
  {
    v9 = xmmword_1AAF938C0;
  }

  else
  {
    v10.i64[0] = a1;
    v10.i64[1] = a2;
    *&v9 = sub_1AAD6F2C8(v10);
  }

  v12 = v9;
  v13 = 0;
  sub_1AAD6184C(KeyPath, &v12, a4);
}

double sub_1AAD6F2C8(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_1AAF93880);
  if ((v1.f32[2] + vaddv_f32(*v1.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, xmmword_1AAF93880);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmulq_f32(v37, xmmword_1AAF94A40);
    v39 = vmlaq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), xmmword_1AAF94A50, v37);
    *&result = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL).u64[0];
  }

  else
  {
    v2 = vrsqrte_f32(1065353216);
    v3 = vmul_f32(v2, vrsqrts_f32(1065353216, vmul_f32(v2, v2)));
    LODWORD(v4) = vmul_f32(v3, vrsqrts_f32(1065353216, vmul_f32(v3, v3))).u32[0];
    v6 = vmulq_f32(a1, a1);
    v5 = vaddv_f32(*v6.f32);
    v6.i32[1] = 0;
    *&v7 = v6.f32[2] + v5;
    v8 = vrsqrte_f32(COERCE_UNSIGNED_INT(v6.f32[2] + v5));
    v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
    v10 = vaddq_f32(vmulq_n_f32(xmmword_1AAF93880, v4), vmulq_n_f32(a1, vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]));
    v11 = vmulq_f32(v10, v10);
    v12 = v11.f32[2] + vaddv_f32(*v11.f32);
    if (v12 <= 1.4211e-14)
    {
      *&result = vmulq_n_f32(xmmword_1AAF938A0, v4).u64[0];
    }

    else
    {
      v13 = v12;
      v14 = vrsqrte_f32(LODWORD(v12));
      v15 = vmul_f32(v14, vrsqrts_f32(LODWORD(v13), vmul_f32(v14, v14)));
      v16 = vmulq_n_f32(v10, vmul_f32(v15, vrsqrts_f32(LODWORD(v13), vmul_f32(v15, v15))).f32[0]);
      v17 = vaddq_f32(v16, xmmword_1AAF93880);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v21 = vmulq_f32(v20, xmmword_1AAF94A40);
      v22 = vmlaq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), xmmword_1AAF94A50, v20);
      v23 = vmulq_f32(v20, xmmword_1AAF93880);
      v24 = vaddq_f32(a1, v16);
      v25 = vmulq_f32(v24, v24);
      v6.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v6.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v6.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v6.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v16)), v26, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v16, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      *&result = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return result;
}

uint64_t Chart3DContent.symbolRotation(_:)(uint64_t a1, __n128 a2)
{
  KeyPath = swift_getKeyPath();
  v6 = a2;
  v7 = 0;
  sub_1AAD6184C(KeyPath, &v6, a1);
}

uint64_t Chart3DContent.symbolRotation(_:)(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = vcvt_hight_f32_f64(vcvt_f32_f64(a2), a3);
  v9 = 0;
  sub_1AAD6184C(KeyPath, &v8, a1);
}

uint64_t Chart3DContent.symbolSize(_:)(uint64_t a1, float a2)
{
  KeyPath = swift_getKeyPath();
  v6 = a2;
  sub_1AAD6184C(KeyPath, &v6, a1);
}

uint64_t Chart3DContent.symbolSize(_:)(uint64_t a1, double a2)
{
  KeyPath = swift_getKeyPath();
  v5 = a2;
  v7 = v5;
  sub_1AAD6184C(KeyPath, &v7, a1);
}

void sub_1AAD6F770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAD6F7D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1AAD6F850()
{
  result = qword_1EB423BF8;
  if (!qword_1EB423BF8)
  {
    sub_1AAD6F73C(255);
    sub_1AAD6F8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423BF8);
  }

  return result;
}

unint64_t sub_1AAD6F8C8()
{
  result = qword_1EB423C00;
  if (!qword_1EB423C00)
  {
    type metadata accessor for simd_quatf(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423C00);
  }

  return result;
}

double sub_1AAD6F920@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1AACB6398(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 72 * v5;
    v15[0] = *v7;
    v9 = *(v7 + 32);
    v8 = *(v7 + 48);
    v10 = *(v7 + 16);
    v16 = *(v7 + 64);
    v15[2] = v9;
    v15[3] = v8;
    v15[1] = v10;
    v11 = *(v7 + 48);
    *(a3 + 32) = *(v7 + 32);
    *(a3 + 48) = v11;
    *(a3 + 64) = *(v7 + 64);
    v12 = *(v7 + 16);
    *a3 = *v7;
    *(a3 + 16) = v12;
    sub_1AACB1E30(v15, v14);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1AAF94BF0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0;
  }

  return result;
}

double sub_1AAD6F9C8@<D0>(uint64_t a1@<X8>)
{
  sub_1AAD651C0();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t Chart3D.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 24);
  *(v8 + 16) = *(a1 + 16);
  *(v8 + 24) = v9;
  (*(v4 + 32))(v8 + v7, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for Chart3DRenderer();
  sub_1AAD70150();
  sub_1AAF8DF74();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1AAD72A1C(qword_1EB423C10, sub_1AAD70150);
  v18 = WitnessTable;
  v19 = v11;
  swift_getWitnessTable();
  v16 = sub_1AAF8DC14();
  v17 = v12;
  v13 = sub_1AAF8DC24();
  swift_getWitnessTable();
  v14 = *(*(v13 - 8) + 16);
  v14(v20, &v16, v13);

  v16 = v20[0];
  v17 = v20[1];
  v14(a2, &v16, v13);
}

uint64_t sub_1AAD6FD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a2;
  v30 = a4;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Chart3DRenderer();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  sub_1AAD70150();
  v11 = sub_1AAF8DF74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  (*(v5 + 16))(v7, v28, a3, v16);
  (*(v5 + 32))(v10, v7, a3);
  swift_getKeyPath();
  sub_1AAF8DA64();
  v20 = v19;
  sub_1AAF8DA64();
  v33 = v20;
  v34 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_1AAF8EAE4();

  (*(v29 + 8))(v10, v8);
  v23 = sub_1AAD72A1C(qword_1EB423C10, sub_1AAD70150);
  v31 = WitnessTable;
  v32 = v23;
  swift_getWitnessTable();
  v24 = *(v12 + 16);
  v24(v18, v14, v11);
  v25 = *(v12 + 8);
  v25(v14, v11);
  v24(v30, v18, v11);
  return (v25)(v18, v11);
}

uint64_t sub_1AAD7009C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for Chart3D() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1AAD6FD20(a1, v7, v5, a2);
}

void sub_1AAD70150()
{
  if (!qword_1EB423C08)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1AAF8E724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423C08);
    }
  }
}

uint64_t sub_1AAD701AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a3;
  v106 = a4;
  v104 = a2;
  v107 = a1;
  v80 = a5;
  v113[67] = *MEMORY[0x1E69E9840];
  sub_1AAD72F48(0, &qword_1ED9ADB70, MEMORY[0x1E6981910], MEMORY[0x1E697DDB8]);
  v81 = *(v5 - 8);
  v82 = v5;
  v101 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v76 - v6;
  v7 = type metadata accessor for _Chart3DContentOutputs();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v103 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AAF8D954();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v76 - v10;
  v11 = sub_1AAF8D974();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AAF8F194();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  v22 = type metadata accessor for _Chart3DContentInputs();
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RenderTrigger();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v100 = v26;
  sub_1AAF8D0F4();
  (*(v12 + 16))(v14, v104, v11);
  sub_1AAF8F1B4();
  *&v25[*(v23 + 32)] = *MEMORY[0x1E698D3F8];
  v27 = *(v16 + 16);
  v27(v25, v21, v15);
  v27(v18, v21, v15);
  sub_1AAF8E3B4();
  (*(v16 + 8))(v21, v15);
  sub_1AAD57820();
  sub_1AAF8E3A4();
  sub_1AAD5B6B4();
  sub_1AAF8E3A4();
  sub_1AAD5F2B8();
  sub_1AAF8E3A4();
  sub_1AAD5D0D4();
  sub_1AAF8E3A4();
  sub_1AAD578D0();
  sub_1AAF8E3A4();
  sub_1AAD57980();
  sub_1AAF8E3A4();
  v29 = v105;
  v28 = v106;
  v109 = v105;
  v110 = v106;
  type metadata accessor for Chart3DRenderer();
  sub_1AAF8D954();
  v30 = v102;
  sub_1AAF007E4(sub_1AAD72768, v29, v102);
  (*(v28 + 32))(v30, v25, v29, v28);
  v76 = v25;
  v31 = sub_1AAF8F164();
  LODWORD(v107) = sub_1AAD74514();
  v99 = sub_1AAD74724();
  v98 = sub_1AAD74934();
  v97 = sub_1AAD74B3C();
  v96 = sub_1AAD74D44();
  v95 = sub_1AAD74F4C();
  KeyPath = swift_getKeyPath();
  LODWORD(v113[0]) = v31;
  v113[1] = sub_1AAD5F164;
  v113[2] = KeyPath;
  sub_1AACBC63C();
  sub_1AAD73024(0, &qword_1EB423D18, MEMORY[0x1E697F228]);
  sub_1AAD72910(&qword_1EB423D20, &qword_1EB423D18);

  sub_1AAF8D194();

  v33 = swift_getKeyPath();
  LODWORD(v113[0]) = v31;
  v113[1] = sub_1AAD72978;
  v113[2] = v33;
  sub_1AACBC63C();
  type metadata accessor for CGSize(0);
  sub_1AAD729B4();
  sub_1AAD72A1C(&qword_1EB423D30, sub_1AAD729B4);

  v34 = sub_1AAF8D194();

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v108 = 0;
  v36 = swift_getKeyPath();
  sub_1AAF8FF44();
  if (v37)
  {
    LODWORD(v113[0]) = OffsetAttribute2;
    v113[1] = sub_1AAD72A64;
    v113[2] = v36;
    sub_1AACBC63C();
    sub_1AAD72F48(0, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
    sub_1AAD72A94();
    sub_1AAD72A1C(&qword_1EB423D40, sub_1AAD72A94);

    v38 = sub_1AAF8D194();
  }

  else
  {
    v38 = AGGraphCreateOffsetAttribute2();
  }

  v39 = AGGraphCreateOffsetAttribute2();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v41 = swift_getKeyPath();
  sub_1AAF8FF44();
  if (v42)
  {
    LODWORD(v113[0]) = v40;
    v113[1] = sub_1AAD732D4;
    v113[2] = v41;
    sub_1AACBC63C();
    sub_1AAD72F48(0, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
    sub_1AAD72A94();
    sub_1AAD72A1C(&qword_1EB423D40, sub_1AAD72A94);

    v43 = sub_1AAF8D194();
  }

  else
  {
    v43 = AGGraphCreateOffsetAttribute2();
  }

  v44 = AGGraphCreateOffsetAttribute2();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v46 = swift_getKeyPath();
  sub_1AAF8FF44();
  if (v47)
  {
    LODWORD(v113[0]) = v45;
    v113[1] = sub_1AAD732D4;
    v113[2] = v46;
    sub_1AACBC63C();
    sub_1AAD72F48(0, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
    sub_1AAD72A94();
    sub_1AAD72A1C(&qword_1EB423D40, sub_1AAD72A94);

    v48 = sub_1AAF8D194();
  }

  else
  {
    v48 = AGGraphCreateOffsetAttribute2();
  }

  v113[0] = __PAIR64__(v43, v38);
  v113[1] = __PAIR64__(v107, v48);
  sub_1AACBC63C();
  sub_1AAD72B38();
  LODWORD(v107) = sub_1AAF8D194();
  LODWORD(v113[0]) = v107;
  sub_1AACBC63C();
  sub_1AAD58174();
  sub_1AAD72B8C();
  LODWORD(v94) = sub_1AAF8D194();
  LODWORD(v113[0]) = v34;
  sub_1AACBC63C();
  sub_1AAD72BE0();
  LODWORD(v106) = sub_1AAF8D194();
  if (qword_1EB422B80 != -1)
  {
    swift_once();
  }

  v113[0] = qword_1EB432088;
  v49 = sub_1AAF8D194();
  if (qword_1EB422BC0 != -1)
  {
    swift_once();
  }

  v113[0] = qword_1EB4320B8;
  v50 = sub_1AAF8D194();
  v113[0] = __PAIR64__(v31, v49);
  sub_1AACBC63C();
  sub_1AAD72C34();
  v51 = sub_1AAF8D194();
  v113[0] = __PAIR64__(v31, v50);
  v52 = sub_1AAF8D194();
  LODWORD(v113[0]) = v51;
  sub_1AACBC63C();
  sub_1AAD72C88();
  v93 = sub_1AAF8D194();
  LODWORD(v113[0]) = v52;
  v92 = sub_1AAF8D194();
  v53 = swift_getKeyPath();
  LODWORD(v113[0]) = v31;
  v113[1] = sub_1AAD5B498;
  v113[2] = v53;
  sub_1AACBC63C();
  v54 = MEMORY[0x1E697F228];
  v91 = MEMORY[0x1E697F228];
  sub_1AAD73024(0, &qword_1EB423D70, MEMORY[0x1E697F228]);
  sub_1AAD72910(&qword_1EB423D78, &qword_1EB423D70);

  sub_1AAF8D194();

  LODWORD(v113[0]) = AGGraphCreateOffsetAttribute2();
  v113[1] = sub_1AAD71B18;
  v113[2] = 0;
  sub_1AACBC63C();
  sub_1AAD73024(0, &qword_1EB423D80, type metadata accessor for SphericalCoordinates3D);
  sub_1AAD72CDC();
  v55 = sub_1AAF8D194();
  v56 = swift_getKeyPath();
  LODWORD(v113[0]) = v31;
  v113[1] = sub_1AAD5B498;
  v113[2] = v56;
  sub_1AACBC63C();
  sub_1AAD73024(0, &qword_1EB423D90, v54);
  sub_1AAD72910(&qword_1EB423D98, &qword_1EB423D90);

  v57 = sub_1AAF8D194();
  v86 = v57;

  sub_1AAF8D094();
  swift_allocObject();
  v58 = sub_1AAF8D084();
  v113[0] = v58;
  v113[1] = __PAIR64__(v55, v57);
  v90 = v55;
  sub_1AACBC63C();
  type metadata accessor for simd_quatf(0);
  sub_1AAD668FC();
  v87 = v58;

  v85 = sub_1AAF8D194();

  v59 = swift_getKeyPath();
  LODWORD(v113[0]) = v55;
  v113[1] = sub_1AAD72D58;
  v113[2] = v59;
  sub_1AACBC63C();
  sub_1AAD72E2C(0, &qword_1EB4235F0, sub_1AAD580CC);
  sub_1AAD72DA8();
  v105 = MEMORY[0x1E698D3A0];
  sub_1AAD72A1C(&qword_1EB423DA8, sub_1AAD72DA8);

  v60 = sub_1AAF8D194();

  LODWORD(v113[0]) = v60;
  sub_1AACBC63C();
  sub_1AAD57D98();
  sub_1AAD66954();
  v83 = sub_1AAF8D194();
  v61 = sub_1AADA0948(0);
  v62 = HIDWORD(v61);
  v89 = HIDWORD(v61);
  v63 = sub_1AADA0948(1u);
  v88 = HIDWORD(v63);
  v64 = sub_1AADA0948(2u) >> 32;
  v84 = v64;
  v65 = swift_getKeyPath();
  LODWORD(v113[0]) = v31;
  v113[1] = sub_1AAD5F164;
  v113[2] = v65;
  sub_1AACBC63C();
  sub_1AACB1A10(0, &qword_1ED9B2AB0);
  sub_1AAD72E8C();
  LODWORD(v54) = v31;
  sub_1AAD72A1C(&qword_1EB423DB8, sub_1AAD72E8C);

  v66 = sub_1AAF8D194();

  v67 = v107;
  v94 = sub_1AADA19E8(v107, v94, v85, v86, v83, v93, v92, v66, v62, (v63 & 0xFFFFFFFF00000000) >> 32, v64, v54, v106);
  v68 = swift_getKeyPath();
  LODWORD(v113[0]) = v54;
  v113[1] = sub_1AAD72F04;
  v113[2] = v68;
  sub_1AACBC63C();
  sub_1AAD72F48(0, &qword_1EB423578, &type metadata for Chart3DRay, MEMORY[0x1E69E6720]);
  sub_1AAD72F98();
  sub_1AAD72A1C(&qword_1EB423DC8, sub_1AAD72F98);
  v69 = v87;

  LODWORD(v64) = sub_1AAF8D194();

  v70 = swift_getKeyPath();
  LODWORD(v113[0]) = v54;
  v113[1] = sub_1AAD5B498;
  v113[2] = v70;
  sub_1AACBC63C();
  sub_1AAD73024(0, &qword_1EB423DD0, v91);
  sub_1AAD72910(&qword_1EB423DD8, &qword_1EB423DD0);

  v71 = sub_1AAF8D194();

  v113[0] = v69;
  v113[1] = __PAIR64__(v67, v64);
  LODWORD(v113[2]) = v71;
  sub_1AACBC63C();
  sub_1AAD73088();
  sub_1AAF8D194();

  AGGraphSetFlags();
  sub_1AAD730DC(v112);
  v113[0] = __PAIR64__(v97, v98);
  v113[1] = __PAIR64__(v95, v96);
  v113[2] = __PAIR64__(v99, v67);
  v113[3] = __PAIR64__(v89, v54);
  v113[4] = __PAIR64__(v84, v88);
  v113[5] = v69;
  v113[6] = __PAIR64__(v90, v106);
  v113[7] = v94;
  v113[8] = v100;
  memcpy(&v113[9], v112, 0x1C8uLL);
  LOWORD(v113[66]) = 0;
  memcpy(v111, v113, 0x212uLL);
  sub_1AACBC63C();
  sub_1AAD73120();

  swift_unknownObjectRetain();

  LODWORD(v64) = sub_1AAF8D194();
  sub_1AAD73174(v113);
  v111[0] = v64;
  if (v101 != 4)
  {
    __break(1u);
  }

  v73 = v81;
  v72 = v82;
  v74 = v79;
  (*(v81 + 16))(v79, v111, v82);
  sub_1AAF8EAA4();

  swift_unknownObjectRelease();
  (*(v73 + 8))(v74, v72);
  sub_1AAD4B4B0(v103, type metadata accessor for _Chart3DContentOutputs);
  (*(v77 + 8))(v102, v78);
  return sub_1AAD4B4B0(v76, type metadata accessor for _Chart3DContentInputs);
}

uint64_t sub_1AAD71974(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for Chart3DRenderer();
  v7[3] = a2;
  v4 = sub_1AAF8D1C4();
  sub_1AACBE580(a1, sub_1AAD728CC, v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t sub_1AAD71A08(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

unint64_t sub_1AAD71A50(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v6;
  v15 = *(a1 + 64);
  if (BYTE8(v14[0]) == 254)
  {
    sub_1AAD72770(v4, v12);
    return sub_1AAD731C8(v12);
  }

  else
  {
    v8 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v8;
    v13 = *(a1 + 64);
    v9 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v9;
    sub_1AAD73248(v14, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *a2;
    result = sub_1AACBE838(v12, v4, isUniquelyReferenced_nonNull_native);
    *a2 = v11[0];
  }

  return result;
}

__n128 sub_1AAD71B18@<Q0>(double *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[2];
  v4 = *a1 * 3.18;
  v5 = sub_1AAD630B8(a1[1]);
  v6 = sub_1AAD630D4(fmin(fmax(v5, -89.9), 89.9));
  sub_1AAD630F0(&v9, v4, v6, v3);
  result = v9;
  v8 = v11;
  a2[1].n128_u64[0] = v10;
  a2[1].n128_u64[1] = v8;
  *a2 = result;
  return result;
}

float sub_1AAD71BA0@<S0>(double *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1AAD65294(a1[2]);
  sub_1AAD630F0(&v11, v3, v4, v5);
  sub_1AAF8FCB4();
  *&v6 = v6;
  *&v7 = v7;
  *&v8 = __PAIR64__(LODWORD(v7), LODWORD(v6));
  result = v9;
  *(&v8 + 1) = LODWORD(result);
  *a2 = v8;
  return result;
}

uint64_t sub_1AAD71C1C()
{
  type metadata accessor for Chart3DRenderer();
  swift_getWitnessTable();

  return sub_1AAF8E074();
}

uint64_t Chart3D.init<A, B>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1AAF8EFE4();
  swift_getWitnessTable();
  sub_1AAD71EA0(a1, a2, a3, a4, a5, a6, a7, a8);

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_1AAD71EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a2;
  v33 = a7;
  v29 = a5;
  v30 = a1;
  v31 = a3;
  v34 = a8;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = a4;
  v37 = AssociatedTypeWitness;
  v38 = a5;
  v39 = a6;
  v40 = AssociatedConformanceWitness;
  v16 = sub_1AAF8EFE4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - v22;
  (*(v11 + 16))(v13, v30, a4, v21);
  v24 = v31;

  v25 = v33;
  ForEach<>.init<>(_:content:)(v13, v32, v24, a4);
  v35 = v25;
  WitnessTable = swift_getWitnessTable();
  sub_1AACE0800(v19, v16, WitnessTable);
  v27 = *(v17 + 8);
  v27(v19, v16);
  sub_1AACE0800(v23, v16, WitnessTable);
  return (v27)(v23, v16);
}

uint64_t Chart3D.init<A, B, C>(_:id:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAF8EFE4();
  swift_getWitnessTable();
  sub_1AAD722A4(a1, a2, a3, a4, a5);

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_1AAD722A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);

  return ForEach<>.init(_:id:content:)(v11, a2, a3, a4, a5);
}

uint64_t sub_1AAD72414(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1AAD72554(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

double sub_1AAD72770@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AACB6398(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AAD93F74();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 72 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_1AAD91C0C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1AAF94BF0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
  }

  return result;
}

double sub_1AAD72828@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1AADB05C0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AAD942C4();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 32 * v8);
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    sub_1AAD91DB8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1AAD728D8@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD72910(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD73024(255, a2, MEMORY[0x1E697F228]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1AAD72978@<D0>(_OWORD *a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1AAD729B4()
{
  if (!qword_1EB423D28)
  {
    sub_1AAF8E134();
    type metadata accessor for CGSize(255);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423D28);
    }
  }
}

uint64_t sub_1AAD72A1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AAD72A94()
{
  if (!qword_1EB423D38)
  {
    sub_1AACB1A10(255, &qword_1ED9B2AC0);
    sub_1AAD72F48(255, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423D38);
    }
  }
}

unint64_t sub_1AAD72B38()
{
  result = qword_1EB423D48;
  if (!qword_1EB423D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423D48);
  }

  return result;
}

unint64_t sub_1AAD72B8C()
{
  result = qword_1EB423D50;
  if (!qword_1EB423D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423D50);
  }

  return result;
}

unint64_t sub_1AAD72BE0()
{
  result = qword_1EB423D58;
  if (!qword_1EB423D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423D58);
  }

  return result;
}

unint64_t sub_1AAD72C34()
{
  result = qword_1EB423D60;
  if (!qword_1EB423D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423D60);
  }

  return result;
}

unint64_t sub_1AAD72C88()
{
  result = qword_1EB423D68;
  if (!qword_1EB423D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423D68);
  }

  return result;
}

unint64_t sub_1AAD72CDC()
{
  result = qword_1EB423D88;
  if (!qword_1EB423D88)
  {
    sub_1AAD73024(255, &qword_1EB423D80, type metadata accessor for SphericalCoordinates3D);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423D88);
  }

  return result;
}

double sub_1AAD72D58@<D0>(_OWORD *a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1AAD72DA8()
{
  if (!qword_1EB423DA0)
  {
    sub_1AAD72E2C(255, &qword_1EB4235F0, sub_1AAD580CC);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423DA0);
    }
  }
}

void sub_1AAD72E2C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AAF90634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD72E8C()
{
  if (!qword_1EB423DB0)
  {
    sub_1AAF8E134();
    sub_1AACB1A10(255, &qword_1ED9B2AB0);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423DB0);
    }
  }
}

double sub_1AAD72F04@<D0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void sub_1AAD72F48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAD72F98()
{
  if (!qword_1EB423DC0)
  {
    sub_1AAF8E134();
    sub_1AAD72F48(255, &qword_1EB423578, &type metadata for Chart3DRay, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8D1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423DC0);
    }
  }
}

void sub_1AAD73024(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8D1D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AAD73088()
{
  result = qword_1EB423DE0;
  if (!qword_1EB423DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423DE0);
  }

  return result;
}

double sub_1AAD730DC(uint64_t a1)
{
  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1AAD73120()
{
  result = qword_1EB423DE8[0];
  if (!qword_1EB423DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB423DE8);
  }

  return result;
}

uint64_t sub_1AAD731C8(uint64_t a1)
{
  sub_1AAD72F48(0, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD73248(uint64_t a1, uint64_t a2)
{
  sub_1AAD72F48(0, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Chart3DContent._chart3DContentCount(inputs:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return static Chart3DContent._chart3DContentCount(inputs:)(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static Chart3DContent._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a1;
  v31 = a3;
  sub_1AAD73840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v29 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AAF8D954();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for _Chart3DContentInputs();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AAF8E5B4();
  v32 = *(v17 - 8);
  v33 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v35 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E5C4();
  sub_1AAD738B0(a2, v16, type metadata accessor for _Chart3DContentInputs);
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    v29 = v11;
    v30 = v10;
    v20 = sub_1AAF8F184();
    type metadata accessor for Chart3DContentBodyAccessor();
    swift_getWitnessTable();
    v21 = v13;
    v22 = v36;
    v23 = v6;
    sub_1AAF8DCB4();
    v20(v37, 0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = *(AssociatedConformanceWitness + 32);
    v31 = v21;
    v25(v21, v16, AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_1AAD738B0(v22, v6, sub_1AAD73840);
    v26 = sub_1AAF8E5E4();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v23, 1, v26) == 1)
    {
      sub_1AAD73918(v36, sub_1AAD73840);
      (*(v29 + 8))(v31, v30);
      sub_1AAD73918(v16, type metadata accessor for _Chart3DContentInputs);
      (*(v32 + 8))(v35, v33);
      return sub_1AAD73918(v23, sub_1AAD73840);
    }

    else
    {
      v28 = v35;
      sub_1AAF8E5D4();
      sub_1AAD73918(v36, sub_1AAD73840);
      (*(v29 + 8))(v31, v30);
      sub_1AAD73918(v16, type metadata accessor for _Chart3DContentInputs);
      (*(v32 + 8))(v28, v33);
      return (*(v27 + 8))(v23, v26);
    }
  }

  return result;
}

void sub_1AAD73840()
{
  if (!qword_1ED9ADA40)
  {
    sub_1AAF8E5E4();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADA40);
    }
  }
}

uint64_t sub_1AAD738B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD73918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAD739A0(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for Chart3DContentBodyAccessor();
    swift_getWitnessTable();
    return sub_1AAF8DCA4();
  }

  return result;
}

unint64_t sub_1AAD73B08()
{
  result = qword_1EB423E70;
  if (!qword_1EB423E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423E70);
  }

  return result;
}

uint64_t sub_1AAD73B68@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ContainerWith3DChildID();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1AAD73BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 36));
  v5 = *MEMORY[0x1E698D3F8];
  v6 = sub_1AAF8DC74();
  v7 = v6;
  if (v4 == v5)
  {
    v8 = *(v6 - 8);
    v9 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v13 = *(v7 - 8);
    (*(v13 + 16))(a2, Value, v7);
    v8 = v13;
    v9 = 0;
  }

  v11 = *(v8 + 56);

  return v11(a2, v9, 1, v7);
}

uint64_t sub_1AAD73D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1AAF8E3C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for _Chart3DContentInputs()
{
  result = qword_1EB423E78;
  if (!qword_1EB423E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AAD73DF4()
{
  sub_1AAF8F194();
  if (v0 <= 0x3F)
  {
    sub_1AAF8E3C4();
    if (v1 <= 0x3F)
    {
      sub_1AAD7443C(319, &qword_1ED9B4430, MEMORY[0x1E698D378]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AAD73EC4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1AAD7443C(319, &qword_1ED9B4430, MEMORY[0x1E698D378]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAD73F68(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1AAD7406C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1AAD7420C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AAD7443C(0, &qword_1EB423568, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_1AAD73BE4(a1, &v14 - v7);
  v9 = sub_1AAF8DC74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    sub_1AAF8DC64();
    if (v11(v8, 1, v9) != 1)
    {
      sub_1AAD7449C(v8);
    }
  }

  else
  {
    (*(v10 + 32))(a2, v8, v9);
  }

  sub_1AAD57ACC();
  sub_1AAF8DC84();
  v12 = sub_1AAEDEF58(v3, v15, *(a1 + 16));

  v15 = v12;
  return sub_1AAF8DC94();
}

uint64_t sub_1AAD743CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AAF8DC74();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1AAD7443C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAF8DC74();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AAD7449C(uint64_t a1)
{
  sub_1AAD7443C(0, &qword_1EB423568, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD74514()
{
  sub_1AAD755E4(0, &qword_1EB423F48, &qword_1EB423F50);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  sub_1AAD7563C(0, &qword_1EB423F50);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1AAD578D0();
  sub_1AAF8E4C4();
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1AAD75688(v2, &qword_1EB423F48, &qword_1EB423F50);
    return *MEMORY[0x1E698D3F8];
  }

  v12 = *(v5 + 32);
  v12(v10, v2, v4);
  result = (v12)(v7, v10, v4);
  if (v6 == 4)
  {
    v11 = *v7;
    (*(v5 + 8))(v7, v4);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD74724()
{
  sub_1AAD755E4(0, &qword_1EB423F38, &qword_1EB423F40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  sub_1AAD7563C(0, &qword_1EB423F40);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1AAD57980();
  sub_1AAF8E4C4();
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1AAD75688(v2, &qword_1EB423F38, &qword_1EB423F40);
    return *MEMORY[0x1E698D3F8];
  }

  v12 = *(v5 + 32);
  v12(v10, v2, v4);
  result = (v12)(v7, v10, v4);
  if (v6 == 4)
  {
    v11 = *v7;
    (*(v5 + 8))(v7, v4);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD74934()
{
  sub_1AAD7551C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD75370(0, &qword_1EB423698, &qword_1EB423530);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1AAD57820();
  sub_1AAF8E4C4();
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1AAD75444(v2, sub_1AAD7551C);
    return *MEMORY[0x1E698D3F8];
  }

  v12 = *(v5 + 32);
  v12(v10, v2, v4);
  result = (v12)(v7, v10, v4);
  if (v6 == 4)
  {
    v11 = *v7;
    (*(v5 + 8))(v7, v4);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD74B3C()
{
  sub_1AAD754A4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD75370(0, &qword_1EB423688, &qword_1EB423690);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1AAD5B6B4();
  sub_1AAF8E4C4();
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1AAD75444(v2, sub_1AAD754A4);
    return *MEMORY[0x1E698D3F8];
  }

  v12 = *(v5 + 32);
  v12(v10, v2, v4);
  result = (v12)(v7, v10, v4);
  if (v6 == 4)
  {
    v11 = *v7;
    (*(v5 + 8))(v7, v4);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD74D44()
{
  sub_1AAD753CC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD75370(0, &qword_1EB423658, &qword_1EB423660);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1AAD5F2B8();
  sub_1AAF8E4C4();
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1AAD75444(v2, sub_1AAD753CC);
    return *MEMORY[0x1E698D3F8];
  }

  v12 = *(v5 + 32);
  v12(v10, v2, v4);
  result = (v12)(v7, v10, v4);
  if (v6 == 4)
  {
    v11 = *v7;
    (*(v5 + 8))(v7, v4);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD74F4C()
{
  sub_1AAD752F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD75370(0, &qword_1EB423678, &qword_1EB423680);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1AAD5D0D4();
  sub_1AAF8E4C4();
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1AAD75444(v2, sub_1AAD752F8);
    return *MEMORY[0x1E698D3F8];
  }

  v12 = *(v5 + 32);
  v12(v10, v2, v4);
  result = (v12)(v7, v10, v4);
  if (v6 == 4)
  {
    v11 = *v7;
    (*(v5 + 8))(v7, v4);
    return v11;
  }

  __break(1u);
  return result;
}

void sub_1AAD7517C(int a1@<W0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  sub_1AAD7563C(0, a2);
  if (*(*(v4 - 8) + 64) == 4)
  {
    (*(*(v4 - 8) + 16))(a3, &v5, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAD7521C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AAF8E4B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for _Chart3DContentOutputs()
{
  result = qword_1EB423F08;
  if (!qword_1EB423F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AAD752F8()
{
  if (!qword_1EB423F18)
  {
    sub_1AAD75370(255, &qword_1EB423678, &qword_1EB423680);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423F18);
    }
  }
}

void sub_1AAD75370(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AAD75594(255, a3);
    v4 = sub_1AAF8D954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD753CC()
{
  if (!qword_1EB423F20)
  {
    sub_1AAD75370(255, &qword_1EB423658, &qword_1EB423660);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423F20);
    }
  }
}

uint64_t sub_1AAD75444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAD754A4()
{
  if (!qword_1EB423F28)
  {
    sub_1AAD75370(255, &qword_1EB423688, &qword_1EB423690);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423F28);
    }
  }
}

void sub_1AAD7551C()
{
  if (!qword_1EB423F30)
  {
    sub_1AAD75370(255, &qword_1EB423698, &qword_1EB423530);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423F30);
    }
  }
}

void sub_1AAD75594(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Resolved3DContentList();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AAD755E4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AAD7563C(255, a3);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD7563C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AAF8D954();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1AAD75688(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1AAD755E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAD756E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AAD76014();
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(*Value + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v29 = MEMORY[0x1E69E7CC0];

  result = sub_1AAD410D0(0, v8, 0);
  v11 = 0;
  v9 = v29;
  v12 = 32;
  while (v11 < *(v7 + 16))
  {
    v13 = *(v7 + v12);
    v14 = *(v7 + v12 + 16);
    v15 = *(v7 + v12 + 48);
    v30[2] = *(v7 + v12 + 32);
    v30[3] = v15;
    v30[0] = v13;
    v30[1] = v14;
    v16 = *(v7 + v12 + 64);
    v17 = *(v7 + v12 + 80);
    v18 = *(v7 + v12 + 112);
    v30[6] = *(v7 + v12 + 96);
    v30[7] = v18;
    v30[4] = v16;
    v30[5] = v17;
    sub_1AAD57B20(v30, v27);
    sub_1AAD75874(v30, a1 & 0xFFFFFFFF000000FFLL, a2, a3 & 0xFFFFFFFFFFLL, v27);
    result = sub_1AAD57B7C(v30);
    v29 = v9;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1AAD410D0((v19 > 1), v20 + 1, 1);
      v9 = v29;
    }

    ++v11;
    *(v9 + 16) = v20 + 1;
    v21 = (v9 + 112 * v20);
    v22 = v27[0];
    v23 = v27[2];
    v21[3] = v27[1];
    v21[4] = v23;
    v21[2] = v22;
    v24 = v27[3];
    v25 = v27[4];
    v26 = v28[0];
    *(v21 + 122) = *(v28 + 10);
    v21[6] = v25;
    v21[7] = v26;
    v21[5] = v24;
    v12 += 128;
    if (v8 == v11)
    {

      return v9;
    }
  }

  __break(1u);
  return result;
}

double sub_1AAD75874@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a2;
  v11 = HIDWORD(a4);
  v12 = BYTE4(a4);
  v63 = *(AGGraphGetValue() + 32);
  v61 = *(AGGraphGetValue() + 72);
  Value = AGGraphGetValue();
  *&v14 = v63;
  *(&v14 + 1) = v61;
  v66 = v14;
  v67 = *(Value + 112);
  v15 = 0x20201u >> (8 * v11);
  if (qword_1AAF95248[(a4 << 24) >> 56] == a2 + 120)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v64 = a1;
    v16 = v12;
    v17 = 0x10000u >> (8 * v11);
    v18 = sub_1AAF904F4();
    swift_bridgeObjectRelease_n();
    if (v18)
    {
      v15 = v15;
    }

    else
    {
      v15 = v17;
    }

    v12 = v16;
    a1 = v64;
  }

  sub_1AAD75E20(v15, &v66, a2 & 0xFFFFFFFF000000FFLL, a3, a4 & 0xFFFFFFFFFFLL);
  v21 = v20;
  v22 = 120;
  if (v10)
  {
    v23 = 120;
  }

  else
  {
    v23 = 121;
  }

  v62 = v19;
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_15;
    }

    v22 = 121;
  }

  if (v23 == v22)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_16;
  }

LABEL_15:
  v24 = sub_1AAF904F4();
  swift_bridgeObjectRelease_n();
  if ((v24 & 1) == 0)
  {
    if (v10 == 2)
    {
      sub_1AAD75F40();
      v26 = v31;
      v27 = AGGraphGetValue();
LABEL_24:
      v29 = v27 + 11;
      v30 = v27 + 10;
      goto LABEL_25;
    }

    if (v10 == 1)
    {
      sub_1AAD75F40();
      v26 = v28;
      v27 = AGGraphGetValue();
      goto LABEL_22;
    }

    sub_1AAD75F40();
    v26 = v37;
    v27 = AGGraphGetValue();
LABEL_34:
    v39 = *v27;
    v38 = v27[1];
    v32 = *(a1 + 8);

    v40 = v38 + v39 * v32;
    v60 = v40;
    v65 = v40;
    goto LABEL_35;
  }

LABEL_16:
  sub_1AAD75F40();
  v26 = v25;
  v27 = AGGraphGetValue();
  if (!v10)
  {
    goto LABEL_34;
  }

  if (v10 != 1)
  {
    goto LABEL_24;
  }

LABEL_22:
  v29 = v27 + 6;
  v30 = v27 + 5;
LABEL_25:
  v32 = *(a1 + 8);
  v33 = *v29 + *v30 * v32;
  v65 = v33;
  v34 = sub_1AAF904F4();

  v35 = v65;
  v36 = v65;
  if ((v34 & 1) == 0)
  {
    v36 = v21;
    if (v15)
    {
      if (sub_1AAF904F4())
      {
        v36 = v21;
      }

      else
      {
        v36 = v26;
      }

      v35 = v65;
    }
  }

  v60 = v36;
  if (v10 != 2)
  {
    v58 = v35;
    goto LABEL_43;
  }

LABEL_35:
  v41 = sub_1AAF904F4();
  v42 = v65;
  if ((v41 & 1) == 0)
  {
    if (!v15 || (v42 = v21, v15 != 1))
    {
      if (sub_1AAF904F4())
      {
        v42 = v21;
      }

      else
      {
        v42 = v26;
      }
    }
  }

  if (!v10)
  {
    v58 = v42;
LABEL_43:
    if ((sub_1AAF904F4() & 1) == 0)
    {
      if (!v15 || (v65 = v21, v15 != 2))
      {
        if (sub_1AAF904F4())
        {
          v52 = v21;
        }

        else
        {
          v52 = v26;
        }

        v65 = v52;
      }
    }

    v43 = *AGGraphGetValue();
    v44 = *(a1 + 56);
    v45 = *(a1 + 80);
    v46 = *AGGraphGetValue();
    if (!v10)
    {
      v47 = 0uLL;
      v48 = v62;
      v49 = v65;
      v51 = v58;
      v50 = v60;
      if (v12 != 1)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    v50 = v60;
    v48 = v62;
    v51 = v58;
    if (v12)
    {
      v47 = 0uLL;
      v49 = v65;
      if (v12 == 1)
      {
        goto LABEL_61;
      }

LABEL_58:
      v47 = xmmword_1AAF95180;
      goto LABEL_61;
    }

    v49 = v65;
    goto LABEL_60;
  }

  v59 = v42;
  v43 = *AGGraphGetValue();
  v44 = *(a1 + 56);
  v45 = *(a1 + 80);
  v46 = *AGGraphGetValue();
  v47 = 0uLL;
  v48 = v62;
  v49 = v65;
  v51 = v59;
  v50 = v60;
  if (v12 == 1)
  {
LABEL_60:
    v47 = xmmword_1AAF95170;
  }

LABEL_61:
  v53 = v44;
  HIDWORD(v54) = 0;
  *&v54 = __PAIR64__(LODWORD(v51), LODWORD(v50));
  if (!v45)
  {
    v53 = 0.5;
  }

  *(&v54 + 2) = v49;
  *&v55 = v46 * v53;
  *&v56 = v43 * v53;
  DWORD1(v56) = v48;
  *(&v56 + 1) = v55;
  *(a5 + 96) = 0;
  result = 0.0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 104) = -256;
  *a5 = v32;
  *(a5 + 8) = 0;
  *(a5 + 16) = v56;
  *(a5 + 32) = v54;
  *(a5 + 48) = v47;
  return result;
}

uint64_t sub_1AAD75E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = BYTE4(a5);
  if (BYTE4(a5) >= 2u)
  {

LABEL_3:
    sub_1AAD57D98();
    return AGGraphGetValue();
  }

  v7 = sub_1AAF904F4();

  if (v7)
  {
    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_3;
  }

  result = sub_1AAF904F4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1AAD75FD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD756E4(*v1 | (*(v1 + 1) << 32), *(v1 + 1), *(v1 + 4) | (v1[20] << 32));
  *a1 = result;
  return result;
}

void sub_1AAD76014()
{
  if (!qword_1ED9AD948)
  {
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD948);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for AxisGrids(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisGrids(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[21])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisGrids(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AAD76118()
{
  result = qword_1EB423F58;
  if (!qword_1EB423F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423F58);
  }

  return result;
}

uint64_t sub_1AAD7616C(uint64_t a1, double a2)
{
  sub_1AAF90694();
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  MEMORY[0x1AC5992F0](*&v4);
  sub_1AAF906B4();
  if (a1)
  {
    sub_1AAF8E7D4();
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAD76200()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&v1);
  if (!v2)
  {
    return sub_1AAF906B4();
  }

  sub_1AAF906B4();

  return sub_1AAF8E7D4();
}

uint64_t sub_1AAD76278()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1AAF90694();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1AC5992F0](*&v3);
  sub_1AAF906B4();
  if (v2)
  {
    sub_1AAF8E7D4();
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAD762FC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {

      v3 = sub_1AAF8E7C4();

      if (v3)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AAD7637C(unint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, float a6)
{
  v10 = a2;
  v11 = a1;
  v12 = HIDWORD(a1);
  v13 = HIDWORD(a2);
  v14 = sub_1AAF8F914();
  v26 = *AGGraphGetValue();
  v19[2] = a4;
  v19[3] = a5;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v13;
  v24 = a3;
  v25 = a6;

  WitnessTable = swift_getWitnessTable();
  v17 = sub_1AACB00E0(sub_1AAD77AF0, v19, v14, &type metadata for TickViewModel, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  return v17;
}

void sub_1AAD7649C(unsigned __int8 a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>, float a5@<S0>)
{
  Value = AGGraphGetValue();
  v11 = *(Value + 80);
  v16[4] = *(Value + 64);
  v16[5] = v11;
  v16[6] = *(Value + 96);
  v17 = *(Value + 112);
  v12 = *(Value + 16);
  v16[0] = *Value;
  v16[1] = v12;
  v13 = *(Value + 48);
  v16[2] = *(Value + 32);
  v16[3] = v13;
  sub_1AAD57D98();
  v15 = *AGGraphGetValue();
  v14 = AGGraphGetValue();
  sub_1AAD765A4(v16, a1, a2, a3, a4, v15, *v14, a5);
}

__n128 sub_1AAD765A4@<Q0>(uint64_t a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, float a7@<S1>, float a8@<S2>)
{
  v15 = (*(a4 + 24))(a3, a4);
  v16 = sub_1AADA63D0(a3, a4);
  v17 = a8 + 0.015;
  if (!a2)
  {
    v18 = 116;
    v19 = 112;
    v20 = 76;
    v21 = 72;
    goto LABEL_6;
  }

  if (a2 != 1)
  {
    v18 = 76;
    v19 = 72;
    v20 = 36;
    v21 = 32;
LABEL_6:
    v59 = *(a1 + v20);
    v55 = *(a1 + v21);
    v49 = *(a1 + v18);
    v51 = *(a1 + v19);
    v22 = sub_1AAF904F4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v59 = *(a1 + 36);
  v55 = *(a1 + 32);
  v49 = *(a1 + 116);
  v51 = *(a1 + 112);

LABEL_7:
  v17 = v17 / 1.4142;
LABEL_8:
  if (a2)
  {
    if (a2 == 1)
    {
      v23 = v59 + v17;
      if (a6.i32[0] < 0)
      {
        v23 = v55 - v17;
      }

      v56 = v23;
      if (a6.i32[2] >= 0)
      {
        v24 = v51 - v17;
      }

      else
      {
        v24 = v49 + v17;
      }

      v25 = *(a1 + 48) + v15 * *(a1 + 40);
      v52 = v25;
      v26 = sub_1AAF904F4();
      *&v27 = v56;
      if (v26)
      {
        *&v27 = v52;
      }

      v50 = v27;
      v60 = v52;
      goto LABEL_27;
    }

    *v32.i32 = v59;
    *&v32.i32[1] = v51 - v17;
    *v33.i32 = v55;
    *&v33.i32[1] = v49 + v17;
    v57 = vbsl_s8(vcltz_s32(*a6.i8), v32, v33);
    v34 = *(a1 + 88) + v15 * *(a1 + 80);
    v61 = v34;
    v35 = sub_1AAF904F4();
    v36 = *v57.i32;
    v31 = LODWORD(v61);
    if (v35)
    {
      v36 = v61;
    }

    v50 = LODWORD(v36);
    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v29.i32 = v59 + v17;
    *v30.i32 = v55 - v17;
    *&v30.i32[1] = v49;
    *&v29.i32[1] = v51;
    v57 = vbsl_s8(vcltz_s32(*&vextq_s8(a6, a6, 4uLL)), v30, v29);
    *v29.i32 = *(a1 + 8) + v15 * *a1;
    v50 = v29.i32[0];
    v31 = v29.i32[0];
  }

  v60 = *&v31;
  v37 = sub_1AAF904F4() & 1;
  v39 = v57;
  v38 = v60;
  if (!v37)
  {
    v38 = *v57.i32;
    if (v28)
    {
      v40 = sub_1AAF904F4();
      v39 = v57;
      v38 = *&v57.i32[1];
      if (v40)
      {
        v38 = *v57.i32;
      }
    }
  }

  v24 = *&v39.i32[1];
  v56 = *v39.i32;
  v52 = v38;
  if (a2 > 1u)
  {
    v43 = (*(a4 + 64))(a3, a4);
    goto LABEL_34;
  }

LABEL_27:
  if ((sub_1AAF904F4() & 1) == 0)
  {
    v41 = sub_1AAF904F4();
    v42 = v56;
    if ((v41 & 1) == 0)
    {
      v42 = v24;
    }

    v60 = v42;
  }

  v43 = (*(a4 + 64))(a3, a4);
  if (a2)
  {
    goto LABEL_35;
  }

LABEL_34:
  v44 = sub_1AAF904F4();
  v45 = 0uLL;
  if (v44)
  {
LABEL_35:
    v45.n128_f64[0] = sub_1AAD76A78(a2, a6);
  }

  v58 = v45;
  *&v46 = __PAIR64__(LODWORD(v52), v50);
  *(&v46 + 1) = LODWORD(v60);
  v62 = v46;
  *&v47 = v16 * a7;
  DWORD1(v47) = 1022739087;
  *(&v47 + 2) = v16 * a7;
  HIDWORD(v47) = 0;
  v54 = v47;
  (*(a4 + 56))(a3, a4);
  *a5 = v15;
  *(a5 + 8) = v43;
  result = v58;
  *(a5 + 16) = v54;
  *(a5 + 32) = v62;
  *(a5 + 48) = v58;
  return result;
}

uint64_t sub_1AAD76A34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AAD7637C(*v2 | (*(v2 + 1) << 32), *(v2 + 1), *(v2 + 4), *(a1 + 16), *(a1 + 24), *(v2 + 5));
  *a2 = result;
  return result;
}

double sub_1AAD76A78(char a1, __n128 a2)
{
  if (a1)
  {
    v3 = sub_1AAF904F4();

    result = 0.0;
    if (a1 != 2 && (v3 & 1) == 0)
    {
      v5 = sub_1AAF904F4();
      result = 0.0;
      if ((v5 & 1) == 0)
      {
        v6 = 0.3927;
        if (((a2.n128_u32[0] ^ a2.n128_u32[2]) & 0x80000000) == 0)
        {
          v6 = -0.3927;
        }

        v7 = __sincosf_stret(v6);
        v8 = vmulq_n_f32(xmmword_1AAF93880, v7.__sinval);
        *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(xmmword_1AAF95180, v7.__cosval), xmmword_1AAF95280, v8, 2), vmlaq_n_f32(vmulq_lane_f32(xmmword_1AAF95260, *v8.f32, 1), xmmword_1AAF95270, v8.f32[0])).u64[0];
      }
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}

uint64_t sub_1AAD76B94(uint64_t a1, unint64_t a2)
{
  v88 = a1;
  v89 = a2;
  v2 = HIDWORD(a2);
  v86 = sub_1AAF8D554();
  v77 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1AAF8D5F4();
  v76 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AAF8CFB4();
  v75 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD77B28();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v91 = sub_1AAF8D014();
  *&v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = (&v74 - v15);
  sub_1AAD78304(0, &qword_1EB423580, &type metadata for TickViewModel, MEMORY[0x1E69E62F8]);
  v79 = v2;
  v78 = v16;
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = *(*Value + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v80 = v9;
  if (v19)
  {
    v95 = MEMORY[0x1E69E7CC0];

    sub_1AACEF664(0, v19, 0);
    v20 = v95;
    v21 = v18 + 32;
    do
    {
      sub_1AAD77BBC(v21, v97);
      v22 = v97[0];
      sub_1AAD77BF4(v97);
      v95 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AACEF664((v23 > 1), v24 + 1, 1);
        v20 = v95;
      }

      *(v20 + 16) = v24 + 1;
      *(v20 + 8 * v24 + 32) = v22;
      v21 += 112;
      --v19;
    }

    while (v19);
  }

  *&v92 = sub_1AAD80F6C(v20);

  v25 = sub_1AAF8D094();
  v26 = v81;
  v87 = v25;
  sub_1AAF8CC34();
  (*(v90 + 16))(v13, v26, v91);
  sub_1AAD77C24(&qword_1EB423F70, MEMORY[0x1E697A360]);
  sub_1AAF8F744();
  sub_1AAD77C24(&qword_1EB423F78, sub_1AAD77B28);
  sub_1AAF8FE94();
  v27 = v95;
  if (v95)
  {
    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v29 = sub_1AAF8D024();
      v31 = v30;
      v94 = 0;
      MEMORY[0x1EEE9AC00](v29);
      *(&v74 - 2) = &v94;
      if ((v31 & 0x1000000000000000) != 0)
      {
LABEL_30:
        sub_1AAF900C4();
        goto LABEL_21;
      }

      if ((v31 & 0x2000000000000000) != 0)
      {
        v97[0] = v32;
        *&v97[1] = v31 & 0xFFFFFFFFFFFFFFLL;
        if (LOBYTE(v32) < 0x21u && ((0x100003E01uLL >> SLOBYTE(v32)) & 1) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((*&v32 & 0x1000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v33 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v33 < 0x21 && ((0x100003E01uLL >> v33) & 1) != 0)
        {
LABEL_19:
          v35 = 0;
          goto LABEL_20;
        }
      }

      v34 = _swift_stdlib_strtod_clocale();
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = *v34 == 0;
LABEL_20:
      v93 = v35;
LABEL_21:

      if (v93)
      {
        v36 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1AAD680DC(0, v28[2] + 1, 1, v28);
        }

        v38 = v28[2];
        v37 = v28[3];
        v39 = v28;
        if (v38 >= v37 >> 1)
        {
          v39 = sub_1AAD680DC((v37 > 1), v38 + 1, 1, v28);
        }

        v28 = v39;
        v39[2] = v38 + 1;
        v40 = &v39[2 * v38];
        v40[4] = v36;
        v40[5] = v27;
      }

      else
      {
      }

      sub_1AAF8FE94();
      v27 = v95;
      if (!v95)
      {
        goto LABEL_32;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_32:
  (*(v80 + 8))(v11, v8);
  (*(v90 + 8))(v81, v91);
  if (v28[2])
  {
    sub_1AAD77C6C();
    v41 = sub_1AAF903A4();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC8];
  }

  v42 = v92;
  *&v97[0] = v41;
  sub_1AAD77CD4(v28, 1, v97);

  v43 = v97[0];
  v44 = *&v97[0] + 64;
  v45 = 1 << *(*&v97[0] + 32);
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(*&v97[0] + 64);
  v48 = (v45 + 63) >> 6;
  v49 = v42 + 56;

  v50 = 0;
  while (v47)
  {
LABEL_45:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = (v50 << 9) | (8 * v52);
    if (*(v42 + 16) && (v54 = *(*(*&v43 + 48) + v53), v55 = sub_1AAF90684(), v56 = -1 << *(v42 + 32), v57 = v55 & ~v56, ((*(v49 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0))
    {
      v58 = ~v56;
      while (*(*(v42 + 48) + 8 * v57) != v54)
      {
        v57 = (v57 + 1) & v58;
        if (((*(v49 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:

      sub_1AAF8CC14();
      v42 = v92;
    }
  }

  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v51 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v51);
    ++v50;
    if (v47)
    {
      v50 = v51;
      goto LABEL_45;
    }
  }

  v59 = *AGGraphGetValue();
  v60 = *(v59 + 16);
  if (!v60)
  {
  }

  v61 = v59 + 32;
  v81 = (v77 + 16);
  v62 = (v76 + 8);
  v63 = (v75 + 8);
  v80 = v59;

  do
  {
    sub_1AAD77BBC(v61, v97);
    if (*(*&v43 + 16) && (v66 = sub_1AADB0548(v97[0]), (v67 & 1) != 0))
    {
      v64 = *(*(*&v43 + 56) + 8 * v66);
      swift_retain_n();
    }

    else
    {
      sub_1AAF8CD24();
      sub_1AAF8CCA4();
      sub_1AAF8CC04();
      swift_allocObject();
      v64 = sub_1AAF8CBF4();
      sub_1AAF8CF44();
      v68 = v6;
      if (qword_1EB422B40 != -1)
      {
        swift_once();
      }

      v69 = v86;
      v70 = sub_1AAD0F5D8(v86, qword_1EB432060);
      (*v81)(v85, v70, v69);
      v71 = v83;
      sub_1AAF8D5E4();
      v72 = v84;
      sub_1AAF8CF94();
      (*v62)(v71, v72);
      (*v63)(v68, v82);
      v95 = 0;
      v96 = 0xE000000000000000;

      sub_1AAF8FA24();
      sub_1AAF8D034();
      sub_1AAF8CC24();
      v6 = v68;
    }

    v92 = v100;
    v90 = v98;
    v91 = v99;
    sub_1AAF8FCC4();
    sub_1AAF8CC84();
    v65 = *(AGGraphGetValue() + 16);

    sub_1AADAC7CC(v64, v65);

    sub_1AAD77BF4(v97);
    v61 += 112;
    --v60;
  }

  while (v60);
}

BOOL sub_1AAD7778C(uint64_t a1, double a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_1AAF90684();
  v5 = -1 << *(a1 + 32);
  v6 = v4 & ~v5;
  if (((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a1 + 48) + 8 * v6);
    result = v8 == a2;
    if (v8 == a2)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1AAD77848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1AAF90694();
  sub_1AAF8F6C4();
  v6 = sub_1AAF906F4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1AAF904F4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1AAD77948(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_18;
  }

  v2 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v2)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  if (v2)
  {
    v3 = a1;
    v4 = a2;

    v5 = sub_1AAF8E7C4();

    a1 = v3;
    a2 = v4;
    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_7:
    v6 = vmovn_s32(vceqq_f32(*(a1 + 16), *(a2 + 16)));
    if ((v6.i8[0] & 1) == 0)
    {
      goto LABEL_18;
    }

    if ((v6.i16[1] & v6.i16[2] & 1) == 0)
    {
      goto LABEL_18;
    }

    v7 = vmovn_s32(vceqq_f32(*(a1 + 32), *(a2 + 32)));
    if ((v7.i8[0] & 1) == 0 || (v7.i16[1] & v7.i16[2] & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(*(a1 + 48), *(a2 + 48)))) & 1) == 0)
    {
      goto LABEL_18;
    }

    v8 = a2;
    sub_1AAD7827C(a1 + 64, v13);
    sub_1AAD7827C(v8 + 64, &v14);
    if (v13[41] == 255)
    {
      if (v15[25] == 255)
      {
        sub_1AAD78438(v13);
        LOBYTE(v2) = 1;
        return v2 & 1;
      }
    }

    else
    {
      sub_1AAD7827C(v13, v12);
      if (v15[25] != 255)
      {
        v10 = v14;
        v11[0] = *v15;
        *(v11 + 10) = *&v15[10];
        LOBYTE(v2) = sub_1AADDD95C(v12, &v10);
        sub_1AAD784B8(&v10);
        sub_1AAD784B8(v12);
        sub_1AAD78438(v13);
        return v2 & 1;
      }

      sub_1AAD784B8(v12);
    }

    sub_1AAD78354(v13);
LABEL_18:
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

void sub_1AAD77B28()
{
  if (!qword_1EB423F60)
  {
    sub_1AAF8D014();
    sub_1AAD77C24(&qword_1EB423F68, MEMORY[0x1E697A360]);
    v0 = sub_1AAF8D004();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423F60);
    }
  }
}

uint64_t sub_1AAD77C24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AAD77C6C()
{
  if (!qword_1EB423F80[0])
  {
    sub_1AAF8D094();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB423F80);
    }
  }
}

double *sub_1AAD77CD4(double *result, char a2, void *a3)
{
  v3 = *(result + 2);
  if (v3)
  {
    v6 = result;
    v7 = result[4];
    v8 = *(result + 5);
    v9 = *a3;
    v10 = sub_1AADB0548(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      sub_1AAD88F18(v14, a2 & 1);
      result = sub_1AADB0548(v7);
      if ((v16 & 1) != (v18 & 1))
      {
LABEL_27:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }

      v15 = result;
      v19 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v20 = *(v19[7] + 8 * v15);

      *(v19[7] + 8 * v15) = v20;

      v21 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

LABEL_15:
      for (i = v6 + 7; ; i += 2)
      {
        v27 = *(i - 1);
        v28 = *i;
        v29 = *a3;
        v30 = sub_1AADB0548(v27);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          break;
        }

        v35 = v30;
        v36 = v31;
        v37 = v29[3];

        if (v37 < v34)
        {
          sub_1AAD88F18(v34, 1);
          result = sub_1AADB0548(v27);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_27;
          }

          v35 = result;
        }

        v39 = *a3;
        if (v36)
        {
          v26 = *(v39[7] + 8 * v35);

          *(v39[7] + 8 * v35) = v26;
        }

        else
        {
          v39[(v35 >> 6) + 8] |= 1 << v35;
          *(v39[6] + 8 * v35) = v27;
          *(v39[7] + 8 * v35) = v28;
          v40 = v39[2];
          v23 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v23)
          {
            goto LABEL_26;
          }

          v39[2] = v41;
        }

        if (!--v21)
        {
          return result;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v19 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_1AAD94148();
      v19 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v19[(v15 >> 6) + 8] |= 1 << v15;
    *(v19[6] + 8 * v15) = v7;
    *(v19[7] + 8 * v15) = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19[2] = v24;
    v21 = v3 - 1;
    if (v3 == 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

_BYTE *sub_1AAD77F60@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1AAD77FF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AAD7802C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AAD78040(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAD78084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AAD780EC(uint64_t a1)
{
  v1 = *(a1 + 41);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AAD78100(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AAD7812C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 106))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1AAD78188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AAD78228()
{
  result = qword_1EB424008;
  if (!qword_1EB424008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424008);
  }

  return result;
}

uint64_t sub_1AAD7827C(uint64_t a1, uint64_t a2)
{
  sub_1AAD78304(0, &qword_1EB4235D8, &type metadata for AnyPrimitiveFormat, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAD78304(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAD78354(uint64_t a1)
{
  sub_1AAD783B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAD783B0()
{
  if (!qword_1EB424010)
  {
    sub_1AAD78304(255, &qword_1EB4235D8, &type metadata for AnyPrimitiveFormat, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424010);
    }
  }
}

uint64_t sub_1AAD78438(uint64_t a1)
{
  sub_1AAD78304(0, &qword_1EB4235D8, &type metadata for AnyPrimitiveFormat, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD7850C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1AAD78568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AAD785CC()
{
  result = qword_1EB424018[0];
  if (!qword_1EB424018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB424018);
  }

  return result;
}

__n128 sub_1AAD78620(uint64_t a1)
{
  if (*a1 != *(v1 + 16) || *(a1 + 8) != *(v1 + 24) || *(a1 + 16) != *(v1 + 32) || *(a1 + 24) != *(v1 + 40) || *(a1 + 32) != *(v1 + 48) || *(a1 + 36) != *(v1 + 52) || *(a1 + 40) != *(v1 + 56) || *(a1 + 48) != *(v1 + 64) || *(a1 + 56) != *(v1 + 72) || *(a1 + 64) != *(v1 + 80) || *(a1 + 72) != *(v1 + 88) || *(a1 + 76) != *(v1 + 92) || *(a1 + 80) != *(v1 + 96) || *(a1 + 88) != *(v1 + 104) || *(a1 + 96) != *(v1 + 112) || (result.n128_u64[0] = *(v1 + 120), *(a1 + 104) != result.n128_f64[0]) || *(a1 + 112) != *(v1 + 128) || (result.n128_u32[0] = *(v1 + 132), *(a1 + 116) != result.n128_f32[0]))
  {
    v3 = *(a1 + 80);
    *(v1 + 80) = *(a1 + 64);
    *(v1 + 96) = v3;
    *(v1 + 112) = *(a1 + 96);
    *(v1 + 128) = *(a1 + 112);
    v4 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v4;
    result = *(a1 + 32);
    v5 = *(a1 + 48);
    *(v1 + 48) = result;
    *(v1 + 64) = v5;
  }

  return result;
}

uint64_t sub_1AAD78770(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAD78788(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAD787A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 456))
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

uint64_t sub_1AAD787F0(uint64_t result, int a2, int a3)
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAD788B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAD788F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AAD78938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAD789FC(uint64_t a1)
{
  result = sub_1AAD57820();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAD78A30(uint64_t a1)
{
  result = sub_1AAD5B6B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAD78A64(uint64_t a1)
{
  result = sub_1AAD5D0D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAD78A98(uint64_t a1)
{
  result = sub_1AAD5F2B8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAD78AC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AAD80D58();
  result = MEMORY[0x1AC598680](v2, &type metadata for ChartContentID, v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a1 + 48) + ((v10 << 9) | (8 * v11)));

    sub_1AAD7A964(&v13, v12);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD78C48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AACD6030(0, a2, a3, a4, type metadata accessor for Resolved3DContentList.Item);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AAD410B0(0, v12, 0);
    v13 = v23;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v21 = a1;
    v22 = v15;
    do
    {
      sub_1AAD81520(v14, v11, a2, a3, a4);
      v16 = *v11;

      sub_1AAD815A4(v11, a2, a3, a4);
      v23 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AAD410B0((v17 > 1), v18 + 1, 1);
        v13 = v23;
      }

      *(v13 + 16) = v18 + 1;
      *(v13 + 8 * v18 + 32) = v16;
      v14 += v22;
      --v12;
    }

    while (v12);
    a1 = v21;
  }

  sub_1AAD80CD0(v13);

  sub_1AAD80D58();
  sub_1AAF8FA94();

  return a1;
}

void sub_1AAD78E30(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = MEMORY[0x1E69E7CD0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = v2;
  *(a1 + 64) = 512;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = v1;
  *(a1 + 128) = v2;
  *(a1 + 136) = 512;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = v1;
  *(a1 + 200) = v2;
  *(a1 + 208) = 512;
}

void sub_1AAD78EBC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v1 = MEMORY[0x1E69E7CD0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = v1;
  *(a1 + 64) = 512;
}

uint64_t sub_1AAD78F00(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(v8);
  v2 = v10;
  v3 = v11;
  v4 = v12;
  sub_1AAD794A0(v8[0], v8[1], v9);
  sub_1AAD794A0(v2, v3, v4);

  sub_1AADC88CC(v5);

  sub_1AAD794EC(v6);
  return sub_1AAD59210(v8);
}

uint64_t sub_1AAD78FA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD78C48(MEMORY[0x1E69E7CC0], &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AAD79040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD78C48(MEMORY[0x1E69E7CC0], &unk_1EB424A70, &type metadata for RectangleMark, &off_1EE75C048);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AAD790D8(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), unint64_t *a7, uint64_t a8, uint64_t a9)
{
  a2(&v14);

  a6(v12);
  sub_1AAD792A4(a7, a8, a9);
}

uint64_t sub_1AAD79174@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD78C48(MEMORY[0x1E69E7CC0], &unk_1EB424A80, &type metadata for SurfacePlot, &off_1EE75C0C8);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AAD7920C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAD78C48(MEMORY[0x1E69E7CC0], &qword_1EB423728, &type metadata for RuleMark, &off_1EE75C088);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AAD792A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  sub_1AACD6030(0, a1, a2, a3, type metadata accessor for Resolved3DContentList.Item);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v20 - v8);
  v10 = *v3;
  v11 = *(*v3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v20 = v3;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AAD410B0(0, v11, 0);
    v12 = v23;
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    v14 = v21;
    do
    {
      sub_1AAD81520(v13, v9, a1, a2, v14);
      v15 = *v9;

      sub_1AAD815A4(v9, a1, a2, v14);
      v23 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AAD410B0((v16 > 1), v17 + 1, 1);
        v14 = v21;
        v12 = v23;
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + 8 * v17 + 32) = v15;
      v13 += v22;
      --v11;
    }

    while (v11);
    v3 = v20;
  }

  sub_1AAD80CD0(v12);

  sub_1AAD80D58();
  v18 = sub_1AAF8FA94();

  v3[1] = v18;
  return result;
}

uint64_t sub_1AAD794A0(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = *&result;
    v5 = *&a2;
    v6 = *&result;
    if ((*(v3 + 16) & 1) == 0)
    {
      v7 = *v3;
      v6 = *(v3 + 8);
      if (*v3 >= *&result)
      {
        v7 = *&result;
      }

      if (v6 < *&result)
      {
        v6 = *&result;
      }

      v4 = v7;
    }

    if (v4 >= *&a2)
    {
      v4 = *&a2;
    }

    if (v6 >= *&a2)
    {
      v5 = v6;
    }

    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AAD794EC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1AAD7AAA4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AAD795F0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1AAD7ABF4(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AAD796D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8CA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1AAD81D68(&qword_1EB424100, MEMORY[0x1E6969530]);
    v22 = sub_1AAF8F5F4();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD798E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 32);
      v6 = *(a1 + v3 + 72);
      v7 = *(a2 + v3 + 32);
      v8 = *(a2 + v3 + 72);
      if (v5 == 9)
      {
        if (v7 != 9)
        {
          return 0;
        }
      }

      else if (v7 == 9 || v5 != v7)
      {
        return 0;
      }

      if (*(a1 + v3 + 48))
      {
        if (!*(a2 + v3 + 48))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 40) == *(a2 + v3 + 40))
        {
          v10 = *(a2 + v3 + 48);
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 64))
      {
        if (v6 == v8)
        {
          v4 = *(a2 + v3 + 64);
        }

        else
        {
          v4 = 0;
        }

        if (v4 != 1)
        {
          return 0;
        }
      }

      else
      {
        v11 = 0;
        if ((*(a2 + v3 + 64) & 1) != 0 || *(a1 + v3 + 56) != *(a2 + v3 + 56) || v6 != v8)
        {
          return v11;
        }
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AAD799D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 80);
    v37 = *(a1 + 64);
    v38 = v3;
    v39 = *(a1 + 96);
    v4 = *(a1 + 48);
    v35 = *(a1 + 32);
    v36 = v4;
    v5 = *(a2 + 80);
    v42 = *(a2 + 64);
    v43 = v5;
    v44 = *(a2 + 96);
    v6 = *(a2 + 48);
    v40 = *(a2 + 32);
    v41 = v6;
    if (v35 != v40)
    {
      return 0;
    }

    v7 = (a1 + 112);
    v8 = (a2 + 112);
    while (1)
    {
      v9 = v37;
      v10 = v38;
      v11 = BYTE8(v39);
      v31 = v7;
      v32 = v8;
      v33 = *(&v37 + 1);
      if ((*(&v39 + 1) & 0x8000000000000000) != 0)
      {
        v15 = BYTE8(v44);
        if ((*(&v44 + 1) & 0x8000000000000000) == 0 || *(&v40 + 1) != *(&v35 + 1))
        {
          return 0;
        }

        v16 = *(&v38 + 1);
        v27 = v39;
        v25 = *(&v43 + 1);
        v26 = v44;
        v17 = *&v43;
        sub_1AAD81924(&v35, v34);
        sub_1AAD81924(&v40, v34);
        v34[0] = v9 & 1;
        if ((sub_1AAF8EA14() & 1) == 0)
        {
LABEL_56:
          sub_1AAD81980(&v40);
          sub_1AAD81980(&v35);
          return 0;
        }

        if ((v11 & 0x80) != 0)
        {
          if ((v15 & 0x80000000) == 0 || *&v10 != v17)
          {
            goto LABEL_56;
          }

          sub_1AAD81980(&v40);
          sub_1AAD81980(&v35);
          if (v16 != v25 || v26 != v27)
          {
            return 0;
          }
        }

        else
        {
          if (v15 < 0 || *&v10 != v17)
          {
            goto LABEL_56;
          }

          if (v27)
          {
            if (!v26 || (*&v16 != *&v25 || v27 != v26) && (sub_1AAF904F4() & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else if (v26)
          {
            goto LABEL_56;
          }

          sub_1AAD81980(&v40);
          sub_1AAD81980(&v35);
          if (((v15 ^ v11) & 0x7F) != 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if ((*(&v44 + 1) & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v29 = *&v38;
        v12 = BYTE8(v43);
        v28 = *&v43;
        v30 = *(&v42 + 1);
        v13 = BYTE8(v36);
        sub_1AAD81924(&v35, v34);
        sub_1AAD81924(&v40, v34);
        v34[0] = v13 & 1;
        if ((sub_1AAF8EA14() & 1) == 0)
        {
          goto LABEL_56;
        }

        if (SBYTE8(v10) < 0)
        {
          if ((v12 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          sub_1AAD81980(&v40);
          sub_1AAD81980(&v35);
          if (BYTE8(v10))
          {
            v18 = v30;
            if ((v12 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v18 = v30;
            if (v12)
            {
              return 0;
            }
          }

          if (v33 != v18 || v29 != v28)
          {
            return 0;
          }
        }

        else
        {
          if (v12 < 0)
          {
            goto LABEL_56;
          }

          if (!BYTE8(v10))
          {
            if (v12)
            {
              goto LABEL_56;
            }

            v14 = v33;
            goto LABEL_38;
          }

          if (BYTE8(v10) == 1)
          {
            if (v12 != 1)
            {
              goto LABEL_56;
            }

            v14 = v33;
LABEL_38:
            sub_1AAD81980(&v40);
            sub_1AAD81980(&v35);
            if (v14 != v30)
            {
              return 0;
            }

            goto LABEL_52;
          }

          if (v12 != 2)
          {
            goto LABEL_56;
          }

          if (*&v33 == *&v30 && *&v29 == *&v28)
          {
            sub_1AAD81980(&v40);
            sub_1AAD81980(&v35);
          }

          else
          {
            v19 = sub_1AAF904F4();
            sub_1AAD81980(&v40);
            sub_1AAD81980(&v35);
            if ((v19 & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

LABEL_52:
      if (!--v2)
      {
        return 1;
      }

      v20 = v31[3];
      v37 = v31[2];
      v38 = v20;
      v39 = v31[4];
      v21 = v31[1];
      v7 = v31 + 5;
      v35 = *v31;
      v36 = v21;
      v22 = v32[3];
      v42 = v32[2];
      v43 = v22;
      v44 = v32[4];
      v23 = v32[1];
      v8 = v32 + 5;
      v40 = *v32;
      v41 = v23;
      if (v35 != v40)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1AAD79E08(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD79E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1AAF904F4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AAD79EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 48)
  {
    sub_1AAD80DAC(v3, v17);
    sub_1AAD80DAC(i, v16);
    sub_1AAD80DAC(v17, v12);
    sub_1AAD80DAC(v16, v13);
    if (v12[40])
    {
      break;
    }

    sub_1AAD80E5C(v16);
    sub_1AAD80E5C(v17);
    sub_1AAD80DAC(v12, v11);
    if (v15)
    {
      goto LABEL_15;
    }

    v6 = v11[0];
    v7 = *&v13[0];
    sub_1AAD80E5C(v12);
    if (v6 != v7)
    {
      return 0;
    }

LABEL_5:
    v3 += 48;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1AAD80DAC(v12, v11);
  if (v15)
  {
    v9[0] = v13[0];
    v9[1] = v13[1];
    v10 = v14;
    v5 = MEMORY[0x1AC598C20](v11, v9);
    sub_1AAD80E08(v9);
    sub_1AAD80E5C(v16);
    sub_1AAD80E5C(v17);
    sub_1AAD80E08(v11);
    sub_1AAD80E5C(v12);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1AAD80E5C(v16);
  sub_1AAD80E5C(v17);
  sub_1AAD80E08(v11);
LABEL_15:
  sub_1AAD80EB0(v12, sub_1AAD80F10);
  return 0;
}

uint64_t sub_1AAD7A090(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16))
  {
    return 0;
  }

  if (!v8 || a1 == a2)
  {
    return 1;
  }

  v43[5] = v7;
  v43[6] = v6;
  v43[7] = v5;
  v43[8] = v4;
  v43[19] = v2;
  v43[20] = v3;
  v9 = a1 + 32;
  v10 = a2 + 32;
  for (i = v8 - 1; ; --i)
  {
    sub_1AAD6D370(v9, v24);
    sub_1AAD6D370(v10, v25);
    sub_1AAD6D370(v24, &v26);
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    sub_1AAD6D370(v25, &v34);
    v20 = v36;
    if (v14)
    {
      goto LABEL_8;
    }

    if (v36)
    {
      return 0;
    }

    v20 = v35;
    if (v13)
    {
LABEL_8:
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v35 & 1) != 0 || v12 != v34)
    {
      return 0;
    }

    if (v18)
    {
      if (!v40)
      {
        goto LABEL_21;
      }

      v42[4] = v19;
      v43[0] = v37;
      v43[1] = v38;
      v43[2] = v39;
      v43[3] = v40;
      v43[4] = v41;
      v42[0] = v15;
      v42[1] = v16;
      v42[2] = v17;
      v42[3] = v18;
      sub_1AAD81874(v24, v23);
      sub_1AAD81874(v25, v23);
      v21 = MEMORY[0x1AC596520](v42, v43);
      sub_1AAD818D0(v25);
      sub_1AAD818D0(v24);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v40)
    {
LABEL_21:
      sub_1AAD81874(v24, v23);
      sub_1AAD81874(v25, v23);

      return 0;
    }

    if (!i)
    {
      break;
    }

    v10 += 56;
    v9 += 56;
  }

  return 1;
}

uint64_t sub_1AAD7A270(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 16 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = (v5 + 16 * v3);
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v8)
    {
      if (v8 == 1)
      {
        if (v11 != 1)
        {
          return 0;
        }

        v12 = *(v7 + 16);
        if (v12 != *(v10 + 16))
        {
          return 0;
        }

        if (v12)
        {
          v13 = v7 == v10;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = (v7 + 32);
          v15 = (v10 + 32);
          while (v12)
          {
            if (*v14 != *v15)
            {
              return 0;
            }

            ++v14;
            ++v15;
            if (!--v12)
            {
              goto LABEL_5;
            }
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 != 2)
        {
          return 0;
        }

        v20 = *(v7 + 16);
        if (v20 != *(v10 + 16))
        {
          return 0;
        }

        if (v20)
        {
          v21 = v7 == v10;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = (v7 + 40);
          v23 = (v10 + 40);
          while (v20)
          {
            result = *(v22 - 1);
            if (result != *(v23 - 1) || *v22 != *v23)
            {
              result = sub_1AAF904F4();
              if ((result & 1) == 0)
              {
                return 0;
              }
            }

            v22 += 2;
            v23 += 2;
            if (!--v20)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          goto LABEL_49;
        }
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v16 = *(v7 + 16);
      if (v16 != *(v10 + 16))
      {
        return 0;
      }

      if (v16)
      {
        v17 = v7 == v10;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v7 + 32);
        v19 = (v10 + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            return 0;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_50;
      }
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD7A434(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5992C0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 40);
      v7 = *(v5 - 4);
      v8 = *(v5 - 24);
      v9 = *(v5 - 2);
      v10 = *(v5 - 8);
      v11 = *v5;
      if (v6 == 9)
      {
        sub_1AAF906B4();
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1AAF906B4();
        MEMORY[0x1AC5992C0](v6);
        if (v8)
        {
LABEL_7:
          sub_1AAF906B4();
          if (!v10)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_1AAF906B4();
      MEMORY[0x1AC5992C0](v7);
      if (!v10)
      {
LABEL_11:
        sub_1AAF906B4();
        MEMORY[0x1AC5992C0](v9);
        goto LABEL_4;
      }

LABEL_3:
      sub_1AAF906B4();
LABEL_4:
      v5 += 6;
      result = MEMORY[0x1AC5992C0](v11);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AAD7A524(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5992C0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v21 = *(v5 - 1);
      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = v5[16];
      v9 = *(v5 + 3);
      v10 = v5[32];
      v11 = *(v5 + 5);
      v12 = v5[48];
      if (*(v5 - 16) == 1)
      {
        sub_1AAF906B4();
        if (v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v20 = v5[16];
        v13 = *(v5 + 1);
        v14 = v5[32];
        v15 = *(v5 + 3);
        v16 = v5[48];
        v17 = *(v5 + 5);
        v18 = *(v5 - 3);
        sub_1AAF906B4();
        v19 = v18;
        v11 = v17;
        v12 = v16;
        v9 = v15;
        v10 = v14;
        v7 = v13;
        v8 = v20;
        MEMORY[0x1AC5992C0](v19);
        if (v6)
        {
LABEL_7:
          sub_1AAF906B4();
          if (v8)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      sub_1AAF906B4();
      MEMORY[0x1AC5992C0](v21);
      if (v8)
      {
LABEL_8:
        sub_1AAF906B4();
        if (v10)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      sub_1AAF906B4();
      MEMORY[0x1AC5992C0](v7);
      if (v10)
      {
LABEL_9:
        sub_1AAF906B4();
        if (!v12)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }

LABEL_14:
      sub_1AAF906B4();
      MEMORY[0x1AC5992C0](v9);
      if (!v12)
      {
LABEL_15:
        sub_1AAF906B4();
        result = MEMORY[0x1AC5992C0](v11);
        goto LABEL_4;
      }

LABEL_3:
      result = sub_1AAF906B4();
LABEL_4:
      v5 += 80;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AAD7A698(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5992C0](v3);
  if (v3)
  {
    for (i = (a2 + 32); ; i += 5)
    {
      v8 = i[1];
      v19[0] = *i;
      v19[1] = v8;
      v9 = i[3];
      v20 = i[2];
      v21 = v9;
      v22 = i[4];
      MEMORY[0x1AC5992C0](LOBYTE(v19[0]));
      v10 = *(&v21 + 1);
      v11 = v21;
      v12 = BYTE8(v22);
      if ((*(&v22 + 1) & 0x8000000000000000) != 0)
      {
        break;
      }

      v13 = *(&v20 + 1);
      MEMORY[0x1AC5992C0](0);
      if ((v10 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        if ((v13 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v13 = 0;
        }

        if ((v11 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v11 = 0;
        }

        MEMORY[0x1AC5992C0]((v10 & 1) != 0);
        MEMORY[0x1AC5992F0](v13);
        v7 = v11;
      }

      else
      {
        MEMORY[0x1AC5992C0](0);
        if (v10)
        {
          if (v10 != 1)
          {
            MEMORY[0x1AC5992C0](2);
            sub_1AAD81924(v19, v18);
            sub_1AAF8F6C4();
LABEL_33:
            result = sub_1AAD81980(v19);
            goto LABEL_8;
          }

          v6 = 1;
        }

        else
        {
          v6 = 0;
        }

        MEMORY[0x1AC5992C0](v6);
        if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = v13;
        }

        else
        {
          v7 = 0;
        }
      }

      result = MEMORY[0x1AC5992F0](v7);
LABEL_8:
      if (!--v3)
      {
        return result;
      }
    }

    v14 = v22;
    v15 = *(&v19[0] + 1);
    MEMORY[0x1AC5992C0](1);
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1AC5992F0](v16);
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v11 = 0;
    }

    if (v12 < 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](v11);
      if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v17 = v10;
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0x1AC5992F0](v17);
      result = MEMORY[0x1AC5992C0](v14);
      goto LABEL_8;
    }

    MEMORY[0x1AC5992C0](0);
    MEMORY[0x1AC5992F0](v11);
    sub_1AAF906B4();
    sub_1AAD81924(v19, v18);
    if (v14)
    {
      sub_1AAF8F6C4();
    }

    MEMORY[0x1AC5992C0](v12 & 0x7F);
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1AAD7A88C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5992C0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_1AAD80DAC(v5, v12);
      sub_1AAD80DAC(v12, v9);
      if (v11)
      {
        v7[0] = v9[0];
        v7[1] = v9[1];
        v8 = v10;
        MEMORY[0x1AC5992C0](1);
        sub_1AAF90014();
        sub_1AAD80E08(v7);
      }

      else
      {
        v6 = *&v9[0];
        MEMORY[0x1AC5992C0](0);
        MEMORY[0x1AC5992C0](v6);
      }

      result = sub_1AAD80E5C(v12);
      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AAD7A964(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AAF90694();
  sub_1AAD7A88C(v15, a2);
  v6 = sub_1AAF906F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_1AAD79EF4(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_1AAD7FB38(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1AAD7AAA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1AAF90694();
  sub_1AAF8F6C4();
  v8 = sub_1AAF906F4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1AAF904F4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1AAD7FCA8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1AAD7ABF4(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1AAF90684();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1AAD7FE28(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1AAD7ACE8(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a2);
  v6 = sub_1AAF906F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    *a1 = *(*(v5 + 48) + 8 * v8);
    swift_unknownObjectRetain();
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v11 = swift_unknownObjectRetain();
    sub_1AAD7FF54(v11, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1AAD7AE00(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1AAF8FFC4();

    if (v8)
    {

      sub_1AAF8D094();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1AAF8FFB4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1AAD7F718(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1AAD7E95C();
    }

    sub_1AAD7F93C(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1AAF8D094();
  sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);
  v10 = sub_1AAF8F474();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_1AAD800A0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1AAD81D68(&qword_1EB4240C0, MEMORY[0x1E697A3A8]);
  while ((sub_1AAF8F5F4() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1AAD7B0A0(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = sub_1AAF90684();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1AAD80288(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1AAD7B1A0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a2);
  v6 = sub_1AAF906F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AAD803D0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1AAD7B298(void *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1AAF90694();
  v5 = *(a2 + 16);
  MEMORY[0x1AC5992C0](v5);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a2 + 32;
    do
    {
      v8 = *(v7 + 112);
      v42[6] = *(v7 + 96);
      v42[7] = v8;
      v42[8] = *(v7 + 128);
      v43 = *(v7 + 144);
      v9 = *(v7 + 48);
      v42[2] = *(v7 + 32);
      v42[3] = v9;
      v10 = *(v7 + 80);
      v42[4] = *(v7 + 64);
      v42[5] = v10;
      v11 = *(v7 + 16);
      v42[0] = *v7;
      v42[1] = v11;
      sub_1AAD81BF4(v42, v40);
      sub_1AAF70EE0(v38);
      sub_1AAD81C50(v42);
      v7 += 152;
      --v6;
    }

    while (v6);
  }

  v12 = sub_1AAF906F4();
  v13 = -1 << *(v4 + 32);
  v14 = v12 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v34 = ~v13;
    while (1)
    {
      v16 = *(*(v4 + 48) + 8 * v14);
      if (*(v16 + 16) == v5)
      {
        break;
      }

LABEL_7:
      v14 = (v14 + 1) & v15;
      if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (!v5 || v16 == a2)
    {
LABEL_17:

      *a1 = *(*(v4 + 48) + 8 * v14);

      return 0;
    }

    else
    {

      v18 = 0;
      v19 = 32;
      while (v18 < *(v16 + 16))
      {
        v20 = *(v16 + v19 + 16);
        v38[0] = *(v16 + v19);
        v38[1] = v20;
        v21 = *(v16 + v19 + 32);
        v22 = *(v16 + v19 + 48);
        v23 = *(v16 + v19 + 80);
        v38[4] = *(v16 + v19 + 64);
        v38[5] = v23;
        v38[2] = v21;
        v38[3] = v22;
        v24 = *(v16 + v19 + 96);
        v25 = *(v16 + v19 + 112);
        v26 = *(v16 + v19 + 128);
        v39 = *(v16 + v19 + 144);
        v38[7] = v25;
        v38[8] = v26;
        v38[6] = v24;
        if (v18 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v27 = *(a2 + v19 + 112);
        v40[6] = *(a2 + v19 + 96);
        v40[7] = v27;
        v40[8] = *(a2 + v19 + 128);
        v41 = *(a2 + v19 + 144);
        v28 = *(a2 + v19 + 48);
        v40[2] = *(a2 + v19 + 32);
        v40[3] = v28;
        v29 = *(a2 + v19 + 80);
        v40[4] = *(a2 + v19 + 64);
        v40[5] = v29;
        v30 = *(a2 + v19 + 16);
        v40[0] = *(a2 + v19);
        v40[1] = v30;
        sub_1AAD81BF4(v38, v37);
        sub_1AAD81BF4(v40, v37);
        v31 = sub_1AAF72168(v38, v40);
        sub_1AAD81C50(v40);
        result = sub_1AAD81C50(v38);
        if ((v31 & 1) == 0)
        {

          v15 = v34;
          goto LABEL_7;
        }

        ++v18;
        v19 += 152;
        if (v5 == v18)
        {

          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }

  else
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = *v35;

    sub_1AAD8051C(v33, v14, isUniquelyReferenced_nonNull_native);
    *v35 = v37[0];
    *a1 = a2;
    return 1;
  }

  return result;
}

uint64_t sub_1AAD7B544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1AAF90694();
  sub_1AAF70EE0(v41);
  v7 = sub_1AAF906F4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 152 * v9;
      v12 = *(v11 + 16);
      v41[0] = *v11;
      v41[1] = v12;
      v13 = *(v11 + 80);
      v15 = *(v11 + 32);
      v14 = *(v11 + 48);
      v41[4] = *(v11 + 64);
      v41[5] = v13;
      v41[2] = v15;
      v41[3] = v14;
      v16 = *(v11 + 96);
      v17 = *(v11 + 112);
      v18 = *(v11 + 128);
      v42 = *(v11 + 144);
      v41[7] = v17;
      v41[8] = v18;
      v41[6] = v16;
      sub_1AAD81BF4(v41, v39);
      v19 = sub_1AAF72168(v41, a2);
      sub_1AAD81C50(v41);
      if (v19)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1AAD81C50(a2);
    v26 = *(v6 + 48) + 152 * v9;
    v27 = *(v26 + 96);
    v28 = *(v26 + 112);
    v29 = *(v26 + 128);
    v40 = *(v26 + 144);
    v39[7] = v28;
    v39[8] = v29;
    v39[6] = v27;
    v30 = *(v26 + 32);
    v31 = *(v26 + 48);
    v32 = *(v26 + 80);
    v39[4] = *(v26 + 64);
    v39[5] = v32;
    v39[3] = v31;
    v33 = *(v26 + 16);
    v39[0] = *v26;
    v39[1] = v33;
    v39[2] = v30;
    v34 = *(v26 + 112);
    *(a1 + 96) = *(v26 + 96);
    *(a1 + 112) = v34;
    *(a1 + 128) = *(v26 + 128);
    *(a1 + 144) = *(v26 + 144);
    v35 = *(v26 + 48);
    *(a1 + 32) = *(v26 + 32);
    *(a1 + 48) = v35;
    v36 = *(v26 + 80);
    *(a1 + 64) = *(v26 + 64);
    *(a1 + 80) = v36;
    v37 = *(v26 + 16);
    *a1 = *v26;
    *(a1 + 16) = v37;
    sub_1AAD81BF4(v39, v38);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *v3;
    sub_1AAD81BF4(a2, v39);
    sub_1AAD807F4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v38[0];
    v21 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v21;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    v22 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v22;
    v23 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v23;
    v24 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    *(a1 + 16) = v24;
  }

  return result;
}

uint64_t sub_1AAD7B764(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1AAF90694();
  v5 = sub_1AAF906F4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v30 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = v4;
    v29 = ~v6;
    do
    {
      v8 = (*(v4 + 48) + (v7 << 6));
      v10 = v8[2];
      v9 = v8[3];
      v11 = v8[1];
      v33[0] = *v8;
      v33[1] = v11;
      v34 = v10;
      v35 = v9;
      if ((((v9 >> 8) | (((DWORD1(v9) >> 8) | (SBYTE7(v9) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        if (((*(a2 + 49) | ((*(a2 + 53) | (*(a2 + 55) << 16)) << 32)) & 0x8000000000000000) != 0)
        {
          v13 = v34;
          v14 = v35;
          sub_1AACD7304(*&v33[0], *(&v33[0] + 1), v11 & 1);

          sub_1AACD7304(v13, *(&v13 + 1), v14 & 1);

          if (sub_1AAF8EA14())
          {
            v15 = sub_1AAF8EA14();
            sub_1AAD81A30(v33);
            v4 = v28;
            if (v15)
            {
              goto LABEL_15;
            }
          }

          else
          {
            sub_1AAD81A30(v33);
            v4 = v28;
          }
        }
      }

      else if ((*(a2 + 48) & 0x8000000000000000) == 0)
      {
        sub_1AACD7304(*&v33[0], *(&v33[0] + 1), v11 & 1);

        v4 = v28;
        v12 = sub_1AAF8EA14();
        sub_1AAD81A30(v33);
        if (v12)
        {
LABEL_15:
          sub_1AAD81A30(a2);
          v20 = (*(v4 + 48) + (v7 << 6));
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[3];
          v32[2] = v20[2];
          v32[3] = v23;
          v32[0] = v21;
          v32[1] = v22;
          v24 = v20[1];
          *a1 = *v20;
          a1[1] = v24;
          v25 = v20[3];
          a1[2] = v20[2];
          a1[3] = v25;
          sub_1AAD819D4(v32, v31);
          return 0;
        }
      }

      v7 = (v7 + 1) & v29;
    }

    while (((*(v30 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[0] = *v26;
  sub_1AAD819D4(a2, v33);
  sub_1AAD809E0(a2, v7, isUniquelyReferenced_nonNull_native);
  *v26 = *&v32[0];
  v17 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v17;
  v18 = *(a2 + 48);
  a1[2] = *(a2 + 32);
  a1[3] = v18;
  return 1;
}

void *sub_1AAD7BA6C()
{
  v1 = v0;
  sub_1AAD81D08(0, &qword_1EB4240A0, sub_1AAD80D58);
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7BBD4()
{
  v1 = v0;
  sub_1AACD6030(0, qword_1ED9AD7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7BD50()
{
  v1 = v0;
  sub_1AACD6030(0, &qword_1EB4240D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7BEB0()
{
  v1 = v0;
  sub_1AAD81D08(0, &qword_1EB4240B0, sub_1AAD57C40);
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7C018()
{
  v1 = v0;
  sub_1AAD81614();
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7C178(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AACD6030(0, a1, a2, a3, MEMORY[0x1E69E6A10]);
  v5 = *v3;
  v6 = sub_1AAF90074();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + 8 * v17) = *(*(v5 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1AAD7C2CC()
{
  v1 = v0;
  sub_1AAD81D08(0, &qword_1EB4240E0, sub_1AAD816A8);
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7C424()
{
  v1 = v0;
  sub_1AAD81CA4();
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7C568()
{
  v1 = v0;
  sub_1AAD81D08(0, &qword_1EB4240F8, sub_1AAD81BA0);
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1AAD81BF4(v26, v25))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 152 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[5];
      v26[4] = v17[4];
      v26[5] = v20;
      v26[3] = v19;
      v21 = v17[6];
      v22 = v17[7];
      v23 = v17[8];
      v27 = *(v17 + 18);
      v26[7] = v22;
      v26[8] = v23;
      v26[6] = v21;
      v24 = v17[1];
      v26[0] = *v17;
      v26[1] = v24;
      v26[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x98uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1AAD7C730()
{
  v1 = v0;
  sub_1AAD81D08(0, &qword_1ED9B0C68, sub_1AAD81A84);
  v2 = *v0;
  v3 = sub_1AAF90074();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1AAD819D4(v27, &v26);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7C8CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240A0, sub_1AAD80D58);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v16 + 16));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16 + 32;

        do
        {
          sub_1AAD80DAC(v18, v34);
          sub_1AAD80DAC(v34, v31);
          if (v33)
          {
            v29[0] = v31[0];
            v29[1] = v31[1];
            v30 = v32;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v29);
          }

          else
          {
            v19 = *&v31[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v19);
          }

          sub_1AAD80E5C(v34);
          v18 += 48;
          --v17;
        }

        while (v17);
      }

      else
      {
      }

      result = sub_1AAF906F4();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_35;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
      v9 = v28;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_33;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v28 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7CBB4()
{
  v1 = v0;
  v2 = *v0;
  sub_1AACD6030(0, qword_1ED9AD7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1AAF90694();

      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7CE0C()
{
  v1 = v0;
  v2 = *v0;
  sub_1AACD6030(0, &qword_1EB4240D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1AAF90684();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7D02C()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240B0, sub_1AAD57C40);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v15);
      result = sub_1AAF906F4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
      result = swift_unknownObjectRetain();
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7D26C()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81614();
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1AAF8D094();
      sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);

      result = sub_1AAF8F474();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7D4D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1AACD6030(0, a2, a3, a4, MEMORY[0x1E69E6A10]);
  result = sub_1AAF90084();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1AAF90684();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_24;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v5 = v8;
  }

  return result;
}

uint64_t sub_1AAD7D6D0()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240E0, sub_1AAD816A8);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v15);
      result = sub_1AAF906F4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1AAD7D908()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81CA4();
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_1AAD7FA24(v12, v4))
    {
      v8 &= v8 - 1;
LABEL_11:
    }

    v10 = v5;
    while (1)
    {
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v11 = *(v2 + 56 + 8 * v5);
      ++v10;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7DA28()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240F8, sub_1AAD81BA0);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v20 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v23 = *(v2 + 48) + 152 * (v20 | (v5 << 6));
      v24 = *(v23 + 80);
      v26 = *(v23 + 32);
      v25 = *(v23 + 48);
      v44 = *(v23 + 64);
      v45 = v24;
      v42 = v26;
      v43 = v25;
      v27 = *(v23 + 96);
      v28 = *(v23 + 112);
      v29 = *(v23 + 128);
      v49 = *(v23 + 144);
      v47 = v28;
      v48 = v29;
      v46 = v27;
      v30 = *(v23 + 16);
      v40 = *v23;
      v41 = v30;
      sub_1AAF90694();
      sub_1AAD81BF4(&v40, v38);
      sub_1AAF70EE0(v39);
      result = sub_1AAF906F4();
      v31 = -1 << *(v4 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v10 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v10 + 8 * v33);
          if (v37 != -1)
          {
            v11 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v32) & ~*(v10 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 152 * v11;
      v13 = v41;
      *v12 = v40;
      v14 = v42;
      v15 = v43;
      v16 = v45;
      *(v12 + 64) = v44;
      *(v12 + 80) = v16;
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      v17 = v46;
      v18 = v47;
      v19 = v48;
      *(v12 + 144) = v49;
      *(v12 + 112) = v18;
      *(v12 + 128) = v19;
      *(v12 + 96) = v17;
      *(v12 + 16) = v13;
      ++*(v4 + 16);
    }

    v21 = v5;
    while (1)
    {
      v5 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v22 = *(v2 + 56 + 8 * v5);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v8 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AAD7DCD4()
{
  v1 = *v0;
  sub_1AAD81D08(0, &qword_1ED9B0C68, sub_1AAD81A84);
  result = sub_1AAF90084();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_15:
      v18 = (*(v1 + 48) + ((v15 | (v4 << 6)) << 6));
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[3];
      v32 = v18[2];
      v33 = v21;
      v30 = v20;
      v31 = v19;
      sub_1AAF90694();
      result = sub_1AAF906F4();
      v22 = -1 << *(v3 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v9 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v9 + 8 * v24);
          if (v28 != -1)
          {
            v10 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v10 = __clz(__rbit64((-1 << v23) & ~*(v9 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v3 + 48) + (v10 << 6));
      v12 = v30;
      v13 = v31;
      v14 = v33;
      v11[2] = v32;
      v11[3] = v14;
      *v11 = v12;
      v11[1] = v13;
      ++*(v3 + 16);
      result = sub_1AAD819D4(&v30, v29);
    }

    v16 = v4;
    while (1)
    {
      v4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_24;
      }

      v17 = *(v1 + 56 + 8 * v4);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v7 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_1AAD7DF18()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240A0, sub_1AAD80D58);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v1;
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v30 = result;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + 8 * (v16 | (v5 << 6)));
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](*(v19 + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v19 + 32;
        do
        {
          sub_1AAD80DAC(v21, v36);
          sub_1AAD80DAC(v36, v33);
          if (v35)
          {
            v31[0] = v33[0];
            v31[1] = v33[1];
            v32 = v34;
            MEMORY[0x1AC5992C0](1);
            sub_1AAF90014();
            sub_1AAD80E08(v31);
          }

          else
          {
            v22 = *&v33[0];
            MEMORY[0x1AC5992C0](0);
            MEMORY[0x1AC5992C0](v22);
          }

          sub_1AAD80E5C(v36);
          v21 += 48;
          --v20;
        }

        while (v20);
      }

      result = sub_1AAF906F4();
      v4 = v30;
      v12 = -1 << *(v30 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v12) >> 6;
        while (++v14 != v24 || (v23 & 1) == 0)
        {
          v25 = v14 == v24;
          if (v14 == v24)
          {
            v14 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v14);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v30 + 48) + 8 * v15) = v19;
      ++*(v30 + 16);
      v2 = v29;
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero(v6, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v28;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AAD7E220()
{
  v1 = v0;
  v2 = *v0;
  sub_1AACD6030(0, qword_1ED9AD7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1AAF90694();
      sub_1AAF8F6C4();
      result = sub_1AAF906F4();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AAD7E4A0()
{
  v1 = v0;
  v2 = *v0;
  sub_1AACD6030(0, &qword_1EB4240D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1AAF90684();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AAD7E6F4()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240B0, sub_1AAD57C40);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v16);
      result = sub_1AAF906F4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AAD7E95C()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81614();
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1AAF8D094();
      sub_1AAD81D68(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);
      result = sub_1AAF8F474();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AAD7EBE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1AACD6030(0, a2, a3, a4, MEMORY[0x1E69E6A10]);
  result = sub_1AAF90084();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    v28 = v5;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + 8 * (v17 | (v9 << 6)));
      result = sub_1AAF90684();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v11 >= 64)
    {
      bzero((v6 + 56), 8 * v14);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v5 = v28;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_1AAD7EE10()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240E0, sub_1AAD816A8);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v16);
      result = sub_1AAF906F4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1AAD7F078()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81CA4();
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1AAD7FA24(*(*(v2 + 48) + 8 * (v11 | (v5 << 6))), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      ;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v2 + 32);
    if (v14 >= 64)
    {
      bzero((v2 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AAD7F1D0()
{
  v1 = v0;
  v2 = *v0;
  sub_1AAD81D08(0, &qword_1EB4240F8, sub_1AAD81BA0);
  result = sub_1AAF90084();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v21 = *(v2 + 48) + 152 * (v18 | (v5 << 6));
      v22 = *(v21 + 112);
      v41 = *(v21 + 96);
      v42 = v22;
      v43 = *(v21 + 128);
      v44 = *(v21 + 144);
      v23 = *(v21 + 48);
      v37 = *(v21 + 32);
      v38 = v23;
      v24 = *(v21 + 80);
      v39 = *(v21 + 64);
      v40 = v24;
      v25 = *(v21 + 16);
      v35 = *v21;
      v36 = v25;
      sub_1AAF90694();
      sub_1AAF70EE0(v34);
      result = sub_1AAF906F4();
      v26 = -1 << *(v4 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 152 * v12;
      v14 = v42;
      *(v13 + 96) = v41;
      *(v13 + 112) = v14;
      *(v13 + 128) = v43;
      *(v13 + 144) = v44;
      v15 = v38;
      *(v13 + 32) = v37;
      *(v13 + 48) = v15;
      v16 = v40;
      *(v13 + 64) = v39;
      *(v13 + 80) = v16;
      v17 = v36;
      *v13 = v35;
      *(v13 + 16) = v17;
      ++*(v4 + 16);
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v20 = v6[v5];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v9 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v2 + 32);
    if (v33 >= 64)
    {
      bzero((v2 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v33;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}